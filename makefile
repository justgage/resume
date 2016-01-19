source = draft/resume.md
dest_name = "resume-in-many-formats/GageKPetersonsResume"

build: md html

md:
	pandoc $(source) -o $(dest_name).md
	cp $(dest_name).md README.md

html:
	pandoc -T "Resume of Gage K. Peterson" -s -c style.css -s $(source) -o $(dest_name).html
	cp $(dest_name).html index.html

docx:
	echo "This looks pretty ugly right now"
	pandoc $(source) -o $(dest_name).docx

