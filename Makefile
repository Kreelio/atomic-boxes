.PHONY: all coreos photon temp-clean clean-all clean-builds cache-clean 

all: coreos photon

coreos:
	cd coreos && mkdir -p temp

	cd coreos && TMPDIR=./temp PACKER_LOG=1 packer build -force \
		coreos.json

photon:
	cd photon && mkdir -p temp
	
	cd photon && TMPDIR=./temp PACKER_LOG=1 packer build -force \
		photon.json

clean-all: clean cache-clean temp-clean

clean-builds:
	rm -rf builds

cache-clean:
	rm -rf packer_cache

temp-clean:
	rm -rf temp