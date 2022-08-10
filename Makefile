.ONESHELL:

build_container:
	docker build -t wt_linux:latest -f misc/docker/Dockerfile .
run_container: build_container
	docker run -d wt_linux:latest 

build:
	@mkdir build
	@cd build/
	@cmake ..
	@make -j8

clean:
	rm -r build
run: build
	@cd build/src
	@./hello.wt --docroot . --http-address 0.0.0.0 --http-port 8080
