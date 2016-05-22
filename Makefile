all:
	cd lab_205 ; make book ; make post ; make clean ; cd -
	cd lab_206 ; make book ; make post ; make clean ; cd -
	cd lab_221 ; make book ; make post ; make clean ; cd -
	cd lab_222 ; make book ; make post ; make clean ; cd -
	cd lab_223 ; make book ; make post ; make clean ; cd -

interior_figures:
	# The following requires Inkscape 0.47 or later.
	perl -e 'foreach my $$f(<figs/*.svg>) {system("scripts/render_one_figure.pl $$f")}'

preflight_figures:
	perl -e 'foreach my $$f(<figs/*.svg>) {system("scripts/preflight_one_fig.pl $$f")}'

clean:
	cd lab_205 ; make clean ; cd -
	cd lab_206 ; make clean ; cd -
	cd lab_221 ; make clean ; cd -
	cd lab_222 ; make clean ; cd -
	cd lab_223 ; make clean ; cd -
