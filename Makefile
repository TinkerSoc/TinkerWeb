all: images
	hugo

images: FORCE
	find images/ -name *.jpg -printf "static/gen/%h\n" | xargs mkdir -p
	find images/ -name *.png -printf "static/gen/%h\n" | xargs mkdir -p
	find images -name *.jpg -printf "File=\"%f\"\\nconvert \"%h/%f\" -resize 960x960\\\\> \"static/gen/%h/%f.large\" \\n" | bash -
	find images -name *.jpg -printf "File=\"%f\"\\nconvert \"%h/%f\" -resize 460x460\\\\> \"static/gen/%h/%f.medium\" \\n" | bash -
	find images -name *.jpg -printf "File=\"%f\"\\nconvert \"%h/%f\" -resize 280x280\\\\> \"static/gen/%h/%f.small\" \\n" | bash -
	find images -name *.png -printf "File=\"%f\"\\nconvert \"%h/%f\" -resize 960x960\\\\> \"static/gen/%h/%f.large\" \\n" | bash -
	find images -name *.png -printf "File=\"%f\"\\nconvert \"%h/%f\" -resize 460x460\\\\> \"static/gen/%h/%f.medium\" \\n" | bash -
	find images -name *.png -printf "File=\"%f\"\\nconvert \"%h/%f\" -resize 280x280\\\\> \"static/gen/%h/%f.small\" \\n" | bash -


FORCE:


clean:
	rm static/gen/ -rf
