#!/bin/bash
TARGET="$1"
shift
../tools/create_android_build.py \
	--output-gradle android \
	--application-id net.themaister.granite.test \
	--granite-dir .. \
	--native-target "$TARGET" \
	--app-name "Granite Test" \
	--abis armeabi-v7a \
	--cmake-lists-toplevel ../CMakeLists.txt \
	--assets assets $@
