source:
	rm -Rf labsource
	mkdir labsource
	cp -R lab_205 labsource/lab_205
	cp -R lab_221 labsource/lab_221
	cp -R lab_206 labsource/lab_206
	cp -R lab_222 labsource/lab_222
	cp -R share   labsource/share
	cp -R figs    labsource/figs
	cp lab.cls    labsource
	cp mixmath.sty    labsource
	cp lmmath.sty labsource
	rm -f labsource/figs/*.pdf labsource/default/*.aux labsource/lab_221/*.aux labsource/default/*.log labsource/lab_221/*.log
	rm -f labsource/default/*.toc labsource/lab_221/*.toc labsource/default/*~ labsource/lab_221/*~
	rm -f labsource/default/*.pdf labsource/lab_221/*.pdf
	rm -f labsource/share/*~ labsource/figs/*~
	tar -zcvf labsource.tar.gz labsource
	rm -Rf labsource
	cp labsource.tar.gz $(HOME)/Lightandmatter

clean:
	rm -f *.toc *.aux *~
