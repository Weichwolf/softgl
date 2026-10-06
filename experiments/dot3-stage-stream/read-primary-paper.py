"""Read the privately fetched primary paper; publish hashes, not the PDF/text."""
from pathlib import Path
import hashlib,json,sys
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
sys.path.insert(0,str(repo/'build/research-python'))
import pypdf
p=r/'fragment-merging-paper.pdf';assert p.read_bytes().startswith(b'%PDF')
reader=pypdf.PdfReader(p)
pages=[page.extract_text() for page in reader.pages]
(r/'fragment-merging-paper.txt').write_text('\n\n'.join(pages))
meta=r/'prior-review/external-review.json';d=json.loads(meta.read_text())
d['sources'].append(dict(url='https://graphics.stanford.edu/papers/fragmerging/shade_sig10.pdf',bytes=p.stat().st_size,
 sha256=hashlib.sha256(p.read_bytes()).hexdigest(),privateFile=p.name,fullPaperExcludedFromPublicArchive=True,
 pages=len(pages),parser=pypdf.__version__,privateExtractedTextSha256=hashlib.sha256((r/'fragment-merging-paper.txt').read_bytes()).hexdigest()))
d['initialPdfExtraction']=dict(browserPdfFetchFailed=True,privateDownloadSucceeded=True,
 pythonHelperRaised='FileNotFoundError for missing pdftotext',pythonHelperExitCode=1,
 shellPipelineExitCode=0,rendererBuildOrTestAffected=False)
meta.write_text(json.dumps(d,indent=2)+'\n')
print('Read actual primary paper:',len(pages),'pages; parser',pypdf.__version__)
for i,text in enumerate(pages):
 for marker in ['Conditions for Merging','coverage-weighted']:
  start=text.find(marker)
  if start>=0:print('Page',i+1,repr(text[start:start+1800]))
