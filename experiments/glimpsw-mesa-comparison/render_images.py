import json,os,subprocess
from pathlib import Path
from PIL import Image,ImageDraw,ImageFont
root=Path(__file__).resolve().parent;repo=root.parents[1];out=root/'images';out.mkdir(exist_ok=True)
models=json.loads((repo/'assets/models.json').read_text());receipts=[]
font=ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf',18)
for name,model in models.items():
 env=os.environ.copy();env.pop('SOFTGL_CAMERA',None)
 if 'camera'in model:env['SOFTGL_CAMERA']=','.join(map(str,model['camera']))
 for renderer in ['glimpsw','mesa','softgl']:
  binary={'glimpsw':'glimpsw_bmw','mesa':'mesa_bmw','softgl':'softgl_bmw'}[renderer]
  source=root/name/'scene.gltf'if renderer=='glimpsw'else repo/'build/assets'/f'{name}.pack'
  image=out/f'{name}-{renderer}.png';raw=image if renderer=='glimpsw'else image.with_suffix('.ppm')
  command=[str(root/'build-clang22'/binary),str(source),'640','360','4','0','0','1',str(raw)]
  r=subprocess.run(command,env=env,capture_output=True,text=True,check=True)
  receipts.append({'asset':name,'renderer':renderer,'command':command,'stdout':r.stdout,'stderr':r.stderr,'camera':model.get('camera'),'note':'Image render only; cold frame timing is excluded from benchmark evidence.'})
  if renderer!='glimpsw':Image.open(raw).save(image)
 figure=Image.new('RGB',(1920,400),(240,240,240));draw=ImageDraw.Draw(figure)
 for i,renderer in enumerate(['glimpsw','mesa','softgl']):
  title={'glimpsw':'GLimpSW','mesa':'Mesa / llvmpipe','softgl':'libsoftgl'}[renderer];draw.text((i*640+12,10),f'{model["title"]} | {title}',font=font,fill=(0,0,0));figure.paste(Image.open(out/f'{name}-{renderer}.png').convert('RGB'),(i*640,40))
 figure.save(out/f'{name}-comparison.png')
(out/'receipts.json').write_text(json.dumps(receipts,indent=2)+'\n')
