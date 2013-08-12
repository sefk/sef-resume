My Resume in [HTML][h] and [PDF][p] formats.
=============================

  [h]: http://sef.kloninger.com/f/sk-resume.html
  [p]: http://sef.kloninger.com/f/sk-resume.pdf


Setup
----

    sudo gem install wkpdf
    cd ~/.bash_startup
    cat >>EOF > local
    export RESUME_ADDRESS="Street<br>City/zip<br>Phone<br>"
    <ctrl-d>

It seems that wkpdf doesn't play well with rvm or rbenv.  If you're
getting a "Cocoa" problem, that might be it.  In that case:

    sudo gem uninstall wkpdf
    rm ~/.rbenv/shims/wkpdf
    sudo /usr/bin/gem install wkpdf

See this issue: <https://github.com/plessl/wkpdf/issues/36>


Publishing
----------

1. Update
2. make
3. git commit; git push
4. make install
