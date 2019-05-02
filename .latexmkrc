#!/usr/bin/env perl
$latex = 'platex -kanji=utf8 -synctex=1 -halt-on-error';
$latex_silent = 'platex -kanji=utf8 -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex = 'pbibtex';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars';
$makeindex = 'mendex %O -o %D %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$max_repeat = 10;
$pdf_mode = 3; # generates pdf via dvipdfmx

# Prevent latexmk from removing PDF after typeset.
# This enables Evince to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# Use Evince as a previewer
$pdf_previewer = 'evince';

