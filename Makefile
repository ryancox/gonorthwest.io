.PHONY: clean
clean: 
	rm -rf public

.PHONY: build
build:
	hugo

.PHONY: server
server:
	hugo server -D

.PHONY: rsync
rsync:
	gsutil rsync -R -d public gs://gonorthwest.io

.PHONY: publish
publish: clean build rsync
