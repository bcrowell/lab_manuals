all:
	cd lab_205 ; make book ; make post ; make clean ; cd -
	cd lab_206 ; make book ; make post ; make clean ; cd -
	cd lab_221 ; make book ; make post ; make clean ; cd -
	cd lab_222 ; make book ; make post ; make clean ; cd -
	cd lab_223 ; make book ; make post ; make clean ; cd -

clean:
	rm -f *.toc *.aux *~
	rm -f labsource/figs/*.pdf labsource/default/*.aux labsource/lab_221/*.aux labsource/default/*.log labsource/lab_221/*.log
	rm -f labsource/default/*.toc labsource/lab_221/*.toc labsource/default/*~ labsource/lab_221/*~
	rm -f labsource/default/*.pdf labsource/lab_221/*.pdf
	rm -f labsource/share/*~ labsource/figs/*~
