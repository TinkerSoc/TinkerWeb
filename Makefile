all: images
	hugo

images: FORCE
	image-gen --verbose -c image-gen-config.json

FORCE:

clean:
	rm static/gen/ -rf
