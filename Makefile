html: index.mkd
	pandoc -s index.mkd -o html/index.html -c style.css -t html5 --smart

github: html
	ghp-import -p -n html
