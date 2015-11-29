theme=tinkersoc

start:
	hugo server theme=$(theme)

start-no-watch:
	hugo server theme=$(theme) --watch=false