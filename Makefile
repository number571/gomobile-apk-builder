.PHONY: default build-all build-go build-app
default: build-all
build-all: build-go build-app
build-go:
	cd hello && docker run --rm -v "$$PWD":/module makeworld/gomobile-android bind -target=android -androidapi 21
	mv -f hello/hello.aar android/libs/hello.aar
build-app:
	docker run --rm -v `pwd`:/project mingc/android-build-box bash -c 'cd ./android; ./gradlew build'
