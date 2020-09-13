package ImageMagick.Low_Level.Linker_Options is
   pragma Linker_Options ("-lMagickWand-6.Q16");
   pragma Linker_Options ("-lMagickCore-6.Q16");
   pragma Linker_Options ("-l" & "harfbuzz");
end ImageMagick.Low_Level.Linker_Options;
