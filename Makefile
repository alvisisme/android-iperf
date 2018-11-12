all: env build

env:
	docker build -t android-iperf-build .

build:
	docker run --rm -v `pwd`:/home/out android-iperf-build