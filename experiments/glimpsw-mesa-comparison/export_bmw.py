import json, struct, hashlib, argparse
from pathlib import Path
import numpy as np
from PIL import Image
root=Path(__file__).resolve().parent
parser=argparse.ArgumentParser(); parser.add_argument('pack',type=Path); parser.add_argument('output',type=Path); args=parser.parse_args(); src=args.pack; data=src.read_bytes(); pos=0
def take(n):
 global pos
 b=data[pos:pos+n]; assert len(b)==n; pos+=n; return b
def u(n=1): return struct.unpack('<'+'I'*n,take(4*n))
assert take(4)==b'SGLM'
version,nv,ni,nt,nm,np_=u(6); assert version==2
vb=take(nv*48); ib=take(ni*4)
textures=[]
for _ in range(nt):
 w,h=u(2); textures.append(Image.frombytes('RGBA',(w,h),take(w*h*4)))
output=args.output; output.mkdir(parents=True,exist_ok=True)
g={'asset':{'version':'2.0','generator':'Exact SoftGL SGLM v2 geometry export'},'buffers':[{'uri':'geometry.bin','byteLength':len(vb)+len(ib)}], 'bufferViews':[{'buffer':0,'byteOffset':0,'byteLength':len(vb),'byteStride':48,'target':34962},{'buffer':0,'byteOffset':len(vb),'byteLength':len(ib),'target':34963}], 'accessors':[], 'images':[], 'textures':[], 'materials':[], 'meshes':[{'primitives':[]}], 'nodes':[{'mesh':0}], 'scenes':[{'nodes':[0]}], 'scene':0}
receipts=[]
def image(im,name):
 im.save(output/name); idx=len(g['textures']); g['images'].append({'uri':name}); g['textures'].append({'source':idx}); return {'index':idx}
for m in range(nm):
 raw=take(84); name=raw[:32].split(b'\0')[0].decode(errors='replace'); base=struct.unpack_from('<4f',raw,32); metal,rough,coat=struct.unpack_from('<3f',raw,48); tex=struct.unpack_from('<i',raw,60)[0]; mode=u0=struct.unpack_from('<I',raw,64)[0]; cutoff=struct.unpack_from('<f',raw,68)[0]; double=struct.unpack_from('<I',raw,72)[0]
 nw,nh=u(2); normal=Image.frombytes('RGBA',(nw,nh),take(nw*nh*4)); cs,=u(); take(cs*cs*4*6)
 color=textures[tex].copy() if tex>=0 else Image.new('RGBA',(4,4),'white')
 w,h=max(color.width,nw,4),max(color.height,nh,4)
 color=color.resize((w,h),Image.Resampling.NEAREST); normal=normal.resize((w,h),Image.Resampling.BILINEAR)
 pix=np.asarray(color,dtype=np.float32)*np.asarray(base,dtype=np.float32)
 if mode==0: pix[:,:,3]=255
 color=Image.fromarray(np.clip(pix+0.5,0,255).astype(np.uint8),'RGBA')
 mr=Image.new('RGBA',(w,h),(255,round(rough*255),round(metal*255),255))
 mat={'name':name,'pbrMetallicRoughness':{'baseColorTexture':image(color,f'{m}-base.png'),'metallicRoughnessTexture':image(mr,f'{m}-mr.png'),'metallicFactor':1,'roughnessFactor':1},'normalTexture':image(normal,f'{m}-normal.png'),'alphaMode':['OPAQUE','MASK','BLEND'][mode], 'alphaCutoff':cutoff,'doubleSided':bool(double)}
 g['materials'].append(mat); receipts.append({'name':name,'alphaMode':mat['alphaMode'],'sourceBaseDimensions':textures[tex].size if tex>=0 else [1,1],'sourceNormalDimensions':[nw,nh],'exportDimensions':[w,h],'clearcoatNotImported':coat})
verts=np.frombuffer(vb,dtype='<f4').reshape(nv,12); indices=np.frombuffer(ib,dtype='<u4')
def accessor(a):
 i=len(g['accessors']); g['accessors'].append(a); return i
for p in range(np_):
 material,vertex,first,count,cx,cy,cz=struct.unpack('<4I3f',take(28)); local=indices[first:first+count]; n=int(local.max())+1; attrs={}
 for key,offset,ty in [('POSITION',0,'VEC3'),('NORMAL',12,'VEC3'),('TEXCOORD_0',24,'VEC2'),('TANGENT',32,'VEC4')]:
  a={'bufferView':0,'byteOffset':vertex*48+offset,'componentType':5126,'count':n,'type':ty}
  if key=='POSITION': a.update(min=verts[vertex:vertex+n,:3].min(axis=0).tolist(),max=verts[vertex:vertex+n,:3].max(axis=0).tolist())
  attrs[key]=accessor(a)
 ind=accessor({'bufferView':1,'byteOffset':first*4,'componentType':5125,'count':count,'type':'SCALAR'})
 g['meshes'][0]['primitives'].append({'attributes':attrs,'indices':ind,'material':material,'mode':4})
assert pos==len(data)
(output/'geometry.bin').write_bytes(vb+ib)
(output/'scene.gltf').write_text(json.dumps(g,indent=2))
receipt={'source':str(src.resolve()),'sourceSha256':hashlib.sha256(data).hexdigest(),'vertices':nv,'triangles':ni//3,'parts':np_,'geometrySha256':hashlib.sha256(vb+ib).hexdigest(),'geometryByteExact':True,'materials':receipts,'limitations':['GLimpSW imports BLEND as alpha cutout','GLimpSW quantizes normals/tangents and UVs during meshlet construction','Normal maps resized to shared base/MR texture dimensions','SoftGL per-material prefiltered studio cubemaps and clearcoat are not imported']}
(output/'export-receipt.json').write_text(json.dumps(receipt,indent=2)); print(json.dumps({k:v for k,v in receipt.items() if k!='materials'},indent=2))
