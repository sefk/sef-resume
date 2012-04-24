# Convert resume from HTML to PDF using a super helpful little utility.  
# Only works on a Mac
#
# Relies on the wkpdf tool to drive webkit to render the html file.  see http://plessl.github.com/wkpdf/.  First do this:
# 	sudo gem install wkpdf
#

HTML = sef-kloninger-resume.html
PDF = sef-kloninger-resume.pdf

$(PDF): $(HTML)
	wkpdf -m 40 \
		--source ./$< \
		--output ./$@  

clean:
	[ -r $(PDF) ] && rm $(PDF)
