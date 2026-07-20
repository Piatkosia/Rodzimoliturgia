@ECHO OFF
pdflatex.exe -shell-escape "%2" %3 && bibtex.exe "%1"
if exist "%1.idx" (
makeindex.exe "%1.idx"
)