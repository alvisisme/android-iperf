all: iperf2 iperf3

iperf2:
	docker-compose build android-build-iperf2
	docker-compose run android-build-iperf2

iperf3:
	docker-compose build android-build-iperf3
	docker-compose run android-build-iperf3

dist: iperf2 iperf3
	cp v2/libs/arm64-v8a/iperf bin/iperf2
	cp v3/libs/arm64-v8a/iperf bin/iperf3

.PHONY: iperf2 iperf3 dist