theme=tinkersoc

.PHONY: all

all:
	hugo

start:
	hugo server theme=$(theme)

start-no-watch:
	hugo server theme=$(theme) --watch=false
