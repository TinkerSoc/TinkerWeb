all: images
	hugo

images:
	image-gen -c image-gen-config.json

FORCE:


clean:
	rm static/gen/ -rf
