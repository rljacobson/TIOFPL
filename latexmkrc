# The processing mode. Uncomment exactly one of these.
# $pdf_mode = 1;        # tex -> pdf
# $pdf_mode = 2;        # tex -> ps -> pdf
$postscript_mode = 1; # tex -> ps

# Put all output files in the `build` directory.
$out_dir = './build';
$aux_dir = './build';
$emulate_aux = 1;

# Which file(s) to compile.
@default_files = ('main.tex');
