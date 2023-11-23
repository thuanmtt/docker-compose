all:
	cd kafka && make
	cd mongo && make
	cd postgres && make
	cd redis && make