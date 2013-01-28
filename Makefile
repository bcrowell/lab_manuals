all:
	cd lab_205 ; make book ; make post ; make clean ; cd -
	cd lab_206 ; make book ; make post ; make clean ; cd -
	cd lab_221 ; make book ; make post ; make clean ; cd -
	cd lab_222 ; make book ; make post ; make clean ; cd -
	cd lab_223 ; make book ; make post ; make clean ; cd -

interior_figures:
	# The following requires Inkscape 0.47 or later.
	perl -e 'foreach my $$f(<figs/*.svg>) {system("scripts/render_one_figure.pl $$f")}'
