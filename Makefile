.ONESHELL:


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
