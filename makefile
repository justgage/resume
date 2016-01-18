source = draft/resume.md
dest_name = "resume-in-many-formats/GageKPetersonsResume"

build: cp md docx html

cp:
	cp $(source) README.md

md:
	cp $(source) $(dest_name).md

html:
	pandoc -c style.css -s $(source) -o $(dest_name).html
	 cp $(dest_name).html index.html

docx:
	 pandoc $(source) -o $(dest_name).docx

