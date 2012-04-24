# Convert resume from HTML to PDF using a super helpful little utility.  
# Only works on a Mac
#
# Relies on the wkpdf tool to drive webkit to render the html file.  see http://plessl.github.com/wkpdf/.  First do this:
# 	sudo gem install wkpdf
#


sef-kloninger-resume.pdf: sef-kloninger-resume.html
	wkpdf --source ./sef-kloninger-resume.html \
		  --output ./sef-kloninger-resume.pdf \
		  -m 40

clean:
	rm sef-kloninger-resume.pdf
