.PHONY:
	all

all: 
	hugo

clean:
	rm -R public

start:
	hugo server

start-no-watch:
	hugo server --watch=false