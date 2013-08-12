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


Publishing
----------

1. Update
2. make
3. git commit; git push
4. make install
