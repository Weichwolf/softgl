#include "Shading.h"
#include <glm/gtc/matrix_transform.hpp>
#include <stb_image_write.h>
#include <chrono>
#include <cstdio>
int main(int argc,char **argv) {
 if(argc!=9) return 2;
 uint32_t w=uint32_t(atoi(argv[2])),h=uint32_t(atoi(argv[3])),threads=uint32_t(atoi(argv[4])); int warm=atoi(argv[6]),frames=atoi(argv[7]); if(atoi(argv[5]))return 3;
 Scene scene; if(!scene.ImportGltf(argv[1]))return 4;
 auto depth=swr::CreateFramebuffer<swr::pixfmt::R32f>(w,h);
 auto vis=swr::CreateFramebuffer<swr::pixfmt::RGBA8u>(w,h);
 auto color=swr::CreateFramebuffer<swr::pixfmt::RGBA8u>(w,h);
 float camera[8]={}; const char *cameraEnv=getenv("SOFTGL_CAMERA"); bool cameraEnabled=cameraEnv && sscanf(cameraEnv,"%f,%f,%f,%f,%f,%f,%f,%f",camera,camera+1,camera+2,camera+3,camera+4,camera+5,camera+6,camera+7)==8;
 float aspect=float(w)/h; glm::mat4 proj(0); proj[0][0]=1/(.16f*aspect); proj[1][1]=-1/.16f; proj[2][2]=1.f/19; proj[2][3]=-1; proj[3][2]=20.f/19;
 glm::mat4 view=glm::rotate(glm::translate(glm::mat4(1),glm::vec3(0,-.035f,-2.3f)),glm::radians(14.f),glm::vec3(1,0,0));
 Light light={}; light.Type=Light::kTypeDirectional; light.Direction=glm::normalize(-float3(.589494,.684509,.428906)); light.Color=float3(1); light.Intensity=5;
 ShadingContext shader={}; shader.DepthBuffer=depth.get(); shader.ColorBuffer=color.get(); shader.Materials=scene.Materials.data(); shader.Lights=&light; shader.NumLights=1; shader.ViewPos=glm::vec3(glm::inverse(view)[3]); shader.ProjMat=proj; shader.ViewMat=view; shader.WorldToClipMat=proj*view;
 std::vector<InstanceData> instances(1); std::vector<DrawContext> draws; std::vector<glm::mat4> transforms;
 size_t triangles=0; for(auto &m:scene.Meshlets)triangles+=m.NumTriangles;
 for(auto &model:scene.Models)for(auto &node:model->Nodes)for(uint32_t i=0;i<node.MeshCount;i+=DrawContext::MaxMeshletsPerDraw) {
  DrawContext d={}; d.NumMeshlets=std::min(node.MeshCount-i,DrawContext::MaxMeshletsPerDraw); d.InstanceId=uint32_t(instances.size()); d.DepthBuffer=depth.get(); d.ColorBuffer=vis.get(); d.Meshlets=&scene.Meshlets[node.MeshOffset+i]; d.Materials=scene.Materials.data(); draws.push_back(d); transforms.push_back(glm::mat4(node.GlobalTransform)); instances.push_back({d.Meshlets,node.GlobalTransform});
 }
 shader.Instances=instances.data(); swr::Rasterizer raster(threads); raster.SetViewport(uint2(w,h)); auto pixels=simd::alloc_buffer<uint32_t>(w*h);
 double rasterMs=0,resolveMs=0,readbackMs=0; bool measured=false;
 auto render=[&](float angle) {
  if(cameraEnabled) {
   float tangent=tan(glm::radians(camera[5]*.5f)), near=camera[6], far=camera[7];
   proj=glm::mat4(0); proj[0][0]=1/(tangent*aspect); proj[1][1]=-1/tangent; proj[2][2]=near/(far-near); proj[2][3]=-1; proj[3][2]=far*near/(far-near);
   view=glm::rotate(glm::mat4(1),glm::radians(camera[4]),glm::vec3(1,0,0));
   view=glm::rotate(view,glm::radians(camera[3]+20.f*sinf(glm::radians(angle))),glm::vec3(0,1,0));
   view=glm::translate(view,-glm::vec3(camera[0],camera[1],camera[2]));
   shader.ProjMat=proj; shader.ViewMat=view; shader.WorldToClipMat=proj*view; shader.ViewPos=glm::vec3(glm::inverse(view)[3]);
   angle=0;
  }
  glm::mat4 rotation=glm::rotate(glm::mat4(1),glm::radians(angle),glm::vec3(0,1,0));
  for(size_t j=0;j<draws.size();j++){auto world=rotation*transforms[j]; draws[j].ObjectToClipMat=shader.WorldToClipMat*world; instances[j+1].Transform=glm::mat4x3(world);}
  auto t0=std::chrono::steady_clock::now();
  vis->Clear(0); depth->Clear(0); raster.MultiDrawMeshlets(DrawContext::VisBufferShader,uint32_t(draws.size()),draws.data(),sizeof(DrawContext)); auto t1=std::chrono::steady_clock::now(); memcpy(color->Data,vis->Data,vis->LayerStride*4); shader.Resolve(raster); auto t2=std::chrono::steady_clock::now(); color->GetPixels(pixels.get(),w); __asm__ __volatile__("" : : "r"(pixels.get()) : "memory"); auto t3=std::chrono::steady_clock::now();
  if(measured){rasterMs+=std::chrono::duration<double,std::milli>(t1-t0).count(); resolveMs+=std::chrono::duration<double,std::milli>(t2-t1).count();readbackMs+=std::chrono::duration<double,std::milli>(t3-t2).count();}
 };
 std::chrono::steady_clock::time_point start;
 for(int i=-warm;i<frames;i++){if(i==0){start=std::chrono::steady_clock::now();measured=true;} int j=i<0?i+warm:i; render((j%frames)*360.f/frames);}
 double ms=std::chrono::duration<double,std::milli>(std::chrono::steady_clock::now()-start).count()/frames;
 measured=false; render(160); if(strcmp(argv[8],"-"))stbi_write_png(argv[8],int(w),int(h),4,pixels.get(),int(w*4));
 printf("{\"renderer\":\"glimpsw-native\",\"width\":%d,\"height\":%d,\"threads\":%u,\"samples\":0,\"triangles\":%zu,\"meshlets\":%u,\"frames\":%d,\"ms\":%.9f,\"rasterMs\":%.9f,\"resolveMs\":%.9f,\"readbackMs\":%.9f}\n",w,h,raster.GetThreadCount(),triangles,scene.Meshlets.size(),frames,ms,rasterMs/frames,resolveMs/frames,readbackMs/frames);
}
