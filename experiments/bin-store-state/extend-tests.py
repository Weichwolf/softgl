from pathlib import Path
import hashlib,subprocess
r=Path(__file__).resolve().parent
p=r/'source-root/tests/msaa_store.c'
assert hashlib.sha256(p.read_bytes()).hexdigest()=='72385dc6034608defc7d56e2366cd60635851b7e37741328f788299e24ed79f2'
subprocess.run(['git','apply','--unsafe-paths','--directory='+str(r/'source-root'),str(r/'fixture.patch')],check=True)
assert hashlib.sha256(p.read_bytes()).hexdigest()=='1950f3d818b659b15f3200711118e7103186f98ed3f3a924b49091c09963bf8f'
