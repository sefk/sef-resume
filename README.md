# My Resume in [HTML][] and [PDF][] formats

[HTML]: https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.html
[PDF]: https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.pdf

## Setup

Steps to use this repo:

    # store my address locally, don't want it public in GitHub
    cd ~/.bash_startup
    cat >>EOF > local
    export RESUME_ADDRESS="Street<br>City/zip<br>Phone<br>"
    <ctrl-d>

    # imagemagick is used for thumbnails
    brew install imagemagick
    brew install tidy-html5
    brew install --cask wkhtmltopdf

    # enable the pre-commit hook
    git config core.hooksPath hooks

## Publish

1. Edit `sef-kloninger-resume.html`
2. `git commit` — the pre-commit hook automatically regenerates and stages the PDF
3. `git push`

The PDF stays in sync automatically. If `RESUME_ADDRESS` is not set, the hook will
warn but still commit the main PDF.

## Makefile targets

- `make` — regenerates all PDFs and the address-injected full HTML variant
- `make clean` — removes generated files
- `make tidy` — runs `tidy` on HTML files
- `make thumbs` — resizes PNG images to thumbnails

Then you can use these links to serve directly from GitHub:
<https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.html> and
<https://rawgithub.com/sefk/sef-resume/master/sef-kloninger-resume.pdf>.
