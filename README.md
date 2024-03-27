# gomobile-apk-builder

Simple gomobile apk builder with docker images.

## Build

```bash
$ make
>
cd hello && docker run --rm -v "$$PWD":/module makeworld/gomobile-android bind -target=android -androidapi 21
mv -f hello/hello.aar android/libs/hello.aar
docker run --rm -v `pwd`:/project mingc/android-build-box bash -c 'cd ./android; ./gradlew build'
```

The result APK `app-debug.apk` file is located in the `./android/app/build/outputs/apk/debug` directory.

## Dependencies

Used two docker images: `makeworld/gomobile-android` and `mingc/android-build-box`.
