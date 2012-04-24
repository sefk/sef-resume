# see http://plessl.github.com/wkpdf/


sef-kloninger-resume.pdf: sef-kloninger-resume.html
	wkpdf --source ./sef-kloninger-resume.html \
		  --output ./sef-kloninger-resume.pdf \
		  -m 40

clean:
	rm sef-kloninger-resume.pdf
