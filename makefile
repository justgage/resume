##################################################
# Author: GAGE K. PETERSON
# 
# This is a makefile that will build my resume.
#
##################################################
source = draft/resume.md
comment = draft/comment.md
dest_name = resume-in-many-formats/GageKPetersonsResume

build: md html

md:
	pandoc $(source) -o $(dest_name).md
	cat $(comment) $(source) >  README.md

html: md
	pandoc -s -S -T "Gage K. Peterson - Resume" -c style.css -s $(source) -o $(dest_name).html
	cp $(dest_name).html index.html

pdf:
	# Manually print to pdf in chrome.
	# TODO: make this be able to happend from he commandline

ghpages:
	git checkout gh-pages
	git cherry-pick master
	git push
	git checkout master
	git push
