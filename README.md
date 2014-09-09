My Resume in [HTML][h] and [PDF][p] formats.
=============================

  [h]: http://sef.kloninger.com/f/sk-resume.html
  [p]: http://sef.kloninger.com/f/sk-resume.pdf


## Requirements

Needs a helper utility to convert the HTML to PDF: [wkhtmltopdf](http://sourceforge.net/projects/wkhtmltopdf/).  


    

## Setup

Steps to use this repo:

    # wkpdf, "webkit pdf", creates PDF's HTML
    sudo gem install wkpdf

    # store my address locally, don't want public in GitHub
    cd ~/.bash_startup
    cat >>EOF > local
    export RESUME_ADDRESS="Street<br>City/zip<br>Phone<br>"
    <ctrl-d>

    # imagemagick is used for thumbnails
    brew install imagemagick

It seems that wkpdf doesn't play well with rvm or rbenv.  If you're
getting a "Cocoa" problem, that might be it.  In that case:

    sudo gem uninstall wkpdf
    rm ~/.rbenv/shims/wkpdf
    sudo /usr/bin/gem install wkpdf

See this issue: <https://github.com/plessl/wkpdf/issues/36>


## Publish

1. Update
2. make
3. git commit; git push

Then you can use these links to serve directly from GitHub.
<https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.html> and 
<https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.pdf>.

Simple as pie.

