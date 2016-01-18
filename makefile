source = draft/resume.md
dest_name = "resume-in-many-formats/GageKPetersonsResume"

build: md docx html


md:
	pandoc $(source) -o $(dest_name).md
	cp $(dest_name).md README.md

html:
	pandoc -T "Resume of Gage K. Peterson" -s -c style.css -s $(source) -o $(dest_name).html
	 cp $(dest_name).html index.html

docx:
	 pandoc $(source) -o $(dest_name).docx

