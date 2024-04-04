
curl curl -L -O code.html $1

pandoc -f html -t markdown code.html -o bar.markdown

