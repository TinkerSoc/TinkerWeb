all:
	image-gen -c image-gen-config.json
	hugo

FORCE:


clean:
	rm static/gen/ -rf
