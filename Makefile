.PHONY: clean
clean: 
	rm -rf public

.PHONY: build
build:
	hugo

.PHONY: server
server:
	hugo server -D
