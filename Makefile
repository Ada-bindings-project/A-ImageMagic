CFLAGS:=$(shell /usr/bin/pkg-config --cflags MagickWand)
CFLAGS+=-fdump-ada-spec -C
CFLAGS+=-fada-spec-parent=ImageMagick.Low_Level
CLIBS=$(shell /usr/bin/pkg-config --libs MagickWand)

all:


gen:.generate

.generate:Makefile $(wildcard sed/*.sed)
	rm -rf  .gen src/gen
	mkdir -p .gen src/gen

	echo "extern \"C\" {" >.gen/gen.cpp
	echo "#include <wand/MagickWand.h>">>.gen/gen.cpp
	echo "#include <magick/MagickCore.h>">>.gen/gen.cpp
	echo "}">>.gen/gen.cpp
	cd .gen; gcc -c ${CFLAGS} -C  gen.cpp
	cp .gen/imagemagick-low_level-imagemagick* src/gen
	make src/gen/imagemagick-low_level-linker_options.ads
	./patch_generated
	gprbuild -P imagemagick.gpr
	chmod -w src/gen/*.ads
	touch $@
src/gen/imagemagick-low_level-linker_options.ads:
	echo "package ImageMagick.Low_Level.Linker_Options is">$@
	echo ${CLIBS} | sed "s- -\n-g" | grep "^-l" |  sed -e "s/-l/   pragma Linker_Options (\"-l/"  -e "s/$$/\");/" >>${@}
	echo "   pragma Linker_Options (\"-l\" & \"harfbuzz\");">>$@
	echo "end ImageMagick.Low_Level.Linker_Options;">>$@

