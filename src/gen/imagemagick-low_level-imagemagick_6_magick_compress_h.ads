pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;



package ImageMagick.Low_Level.ImageMagick_6_magick_compress_h is

  --  Copyright 1999-2020 ImageMagick Studio LLC, a non-profit organization
  --  dedicated to making software imaging solutions freely available.
  --  
  --  You may not use this file except in compliance with the License.  You may
  --  obtain a copy of the License at
  --  
  --    https://imagemagick.org/script/license.php
  --  
  --  Unless required by applicable law or agreed to in writing, software
  --  distributed under the License is distributed on an "AS IS" BASIS,
  --  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  --  See the License for the specific language governing permissions and
  --  limitations under the License.
  --  MagickCore image compression/decompression methods.
  -- 

  -- ISO/IEC std 15444-1  
  -- Lempel-Ziv-Markov chain algorithm  
  -- ISO/IEC std 11544 / ITU-T rec T.82  
  -- ISO/IEC std 14492 / ITU-T rec T.88  
   type CompressionType is 
     (UndefinedCompression,
      NoCompression,
      BZipCompression,
      DXT1Compression,
      DXT3Compression,
      DXT5Compression,
      FaxCompression,
      Group4Compression,
      JPEGCompression,
      JPEG2000Compression,
      LosslessJPEGCompression,
      LZWCompression,
      RLECompression,
      ZipCompression,
      ZipSCompression,
      PizCompression,
      Pxr24Compression,
      B44Compression,
      B44ACompression,
      LZMACompression,
      JBIG1Compression,
      JBIG2Compression,
      ZstdCompression,
      WebPCompression)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/compress.h:51

   type u_Ascii85Info is null record;   -- incomplete struct

   subtype Ascii85Info is u_Ascii85Info;  -- /usr/include/ImageMagick-6/magick/compress.h:54

   function HuffmanDecodeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/compress.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "HuffmanDecodeImage";

   function HuffmanEncodeImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/compress.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "HuffmanEncodeImage";

   function LZWEncodeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : access unsigned_char) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/compress.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "LZWEncodeImage";

   function PackbitsEncodeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : access unsigned_char) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/compress.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "PackbitsEncodeImage";

   function ZLIBEncodeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : access unsigned_char) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/compress.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "ZLIBEncodeImage";

   procedure Ascii85Encode (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : unsigned_char)  -- /usr/include/ImageMagick-6/magick/compress.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "Ascii85Encode";

   procedure Ascii85Flush (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/compress.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "Ascii85Flush";

   procedure Ascii85Initialize (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/compress.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "Ascii85Initialize";

end ImageMagick.Low_Level.ImageMagick_6_magick_compress_h;
