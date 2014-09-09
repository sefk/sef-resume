# Convert resume from HTML to PDF using a super helpful little utility.
# Only works on a Mac
#

PDF-TARGETS = sef-kloninger-resume.pdf sef-kloninger-resume-full.pdf
HTML-TARGETS = sef-kloninger-resume-full.html

all: $(HTML-TARGETS) $(PDF-TARGETS)
	
%.pdf: %.html
#	pandoc -t latex ./$< -o ./$@
	wkhtmltopdf --print-media-type ./$< ./$@

%-full.html: %.html
ifeq (z$(RESUME_ADDRESS),z)
	# Can't generate full resume without $$RESUME_ADDRESS environment variable (for example "street<br>city<br>phone<br>")
	exit 1
else
	#
	# ----- Make With Address, using $$RESUME_ADDRESS from environment
	cat $< | sed 's/<!-- addr -->/$(RESUME_ADDRESS)/g' > $@
endif

thumbs:
	for i in *.png; do convert $$i -resize 25% $${i%%.png}-thumb.png; done

clean: 
	-rm $(PDF-TARGETS) $(HTML-TARGETS)
	-rm *-thumb.png

