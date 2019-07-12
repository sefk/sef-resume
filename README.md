# My Resume in [HTML][h] and [PDF][p] formats

  [h]: https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.html
  [p]: https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.pdf

## Setup

Steps to use this repo:

    # store my address locally, don't want public in GitHub
    cd ~/.bash_startup
    cat >>EOF > local
    export RESUME_ADDRESS="Street<br>City/zip<br>Phone<br>"
    <ctrl-d>

    # imagemagick is used for thumbnails
    brew install imagemagick
    brew cask install wkhtmltpdf

## Publish

1. Update
2. make
3. git commit; git push

Then you can use these links to serve directly from GitHub.
<https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.html> and
<https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.pdf>.

Simple as pie.
