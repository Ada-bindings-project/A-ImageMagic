pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h;


with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h;
with System;

package ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h is

   MAGICK_PIXEL_BGRA : constant := 1;  --  /usr/include/ImageMagick-6/magick/pixel.h:141

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
  --  MagickCore image constitute methods.
  -- 

  --  Pixel enum declarations.
  -- 

  -- Average 4 nearest neighbours  
  -- Catmull-Rom interpolation  
  -- Triangular filter interpolation  
  -- Use resize filter - (very slow)  
  -- Integer (floor) interpolation  
  -- Triangular mesh interpolation  
  -- Nearest neighbour only  
  -- Cubic Spline (blurred) interpolation  
  -- Average 9 nearest neighbours  
  -- Average 16 nearest neighbours  
  -- blend of nearest 1, 2 or 4 pixels  
  -- just return background color  
  -- Catmull-Rom interpolation  
   type InterpolatePixelMethod is 
     (UndefinedInterpolatePixel,
      AverageInterpolatePixel,
      BicubicInterpolatePixel,
      BilinearInterpolatePixel,
      FilterInterpolatePixel,
      IntegerInterpolatePixel,
      MeshInterpolatePixel,
      NearestNeighborInterpolatePixel,
      SplineInterpolatePixel,
      Average9InterpolatePixel,
      Average16InterpolatePixel,
      BlendInterpolatePixel,
      BackgroundInterpolatePixel,
      CatromInterpolatePixel)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/pixel.h:47

   subtype PixelComponent is unsigned;
   PixelRed : constant unsigned := 0;
   PixelCyan : constant unsigned := 0;
   PixelGray : constant unsigned := 0;
   PixelY : constant unsigned := 0;
   PixelGreen : constant unsigned := 1;
   PixelMagenta : constant unsigned := 1;
   PixelCb : constant unsigned := 1;
   PixelBlue : constant unsigned := 2;
   PixelYellow : constant unsigned := 2;
   PixelCr : constant unsigned := 2;
   PixelAlpha : constant unsigned := 3;
   PixelBlack : constant unsigned := 4;
   PixelIndex : constant unsigned := 4;
   MaskPixelComponent : constant unsigned := 5;  -- /usr/include/ImageMagick-6/magick/pixel.h:65

   type PixelIntensityMethod is 
     (UndefinedPixelIntensityMethod,
      AveragePixelIntensityMethod,
      BrightnessPixelIntensityMethod,
      LightnessPixelIntensityMethod,
      Rec601LumaPixelIntensityMethod,
      Rec601LuminancePixelIntensityMethod,
      Rec709LumaPixelIntensityMethod,
      Rec709LuminancePixelIntensityMethod,
      RMSPixelIntensityMethod,
      MSPixelIntensityMethod)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/pixel.h:79

  --  Pixel typedef declarations.
  -- 

   type DoublePixelPacket is record
      red : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:87
      green : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:88
      blue : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:89
      opacity : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:90
      index : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:91
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/pixel.h:84

   --  subtype DoublePixelPacket is u_DoublePixelPacket;  -- /usr/include/ImageMagick-6/magick/pixel.h:92

   type LongPixelPacket is record
      red : aliased unsigned;  -- /usr/include/ImageMagick-6/magick/pixel.h:97
      green : aliased unsigned;  -- /usr/include/ImageMagick-6/magick/pixel.h:98
      blue : aliased unsigned;  -- /usr/include/ImageMagick-6/magick/pixel.h:99
      opacity : aliased unsigned;  -- /usr/include/ImageMagick-6/magick/pixel.h:100
      index : aliased unsigned;  -- /usr/include/ImageMagick-6/magick/pixel.h:101
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/pixel.h:94

   --  subtype LongPixelPacket is u_LongPixelPacket;  -- /usr/include/ImageMagick-6/magick/pixel.h:102

   type MagickPixelPacket is record
      storage_class : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.ClassType;  -- /usr/include/ImageMagick-6/magick/pixel.h:107
      colorspace : aliased ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType;  -- /usr/include/ImageMagick-6/magick/pixel.h:110
      matte : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/pixel.h:113
      fuzz : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:116
      depth : aliased size_t;  -- /usr/include/ImageMagick-6/magick/pixel.h:119
      red : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:122
      green : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:123
      blue : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:124
      opacity : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:125
      index : aliased double;  -- /usr/include/ImageMagick-6/magick/pixel.h:126
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/pixel.h:104

   --  subtype MagickPixelPacket is u_MagickPixelPacket;  -- /usr/include/ImageMagick-6/magick/pixel.h:127

   subtype IndexPacket is unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:129

   type PixelPacket is record
      blue : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:143
      green : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:144
      red : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:145
      opacity : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:146
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/pixel.h:131

   --  subtype PixelPacket is u_PixelPacket;  -- /usr/include/ImageMagick-6/magick/pixel.h:148

   type QuantumPixelPacket is record
      red : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:153
      green : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:154
      blue : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:155
      opacity : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:156
      index : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/pixel.h:157
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/pixel.h:150

   --  subtype QuantumPixelPacket is u_QuantumPixelPacket;  -- /usr/include/ImageMagick-6/magick/pixel.h:158

   type u_CacheView is null record;   -- incomplete struct

   subtype CacheView_u is u_CacheView;  -- /usr/include/ImageMagick-6/magick/pixel.h:161

  --  Pixel method declarations.
  -- 

   function ExportImagePixels
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      arg8 : System.Address;
      arg9 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/pixel.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "ExportImagePixels";

   function ImportImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      arg8 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/pixel.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "ImportImagePixels";

   function InterpolateMagickPixelPacket
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant CacheView_u;
      arg3 : InterpolatePixelMethod;
      arg4 : double;
      arg5 : double;
      arg6 : access MagickPixelPacket;
      arg7 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/pixel.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "InterpolateMagickPixelPacket";

   function CloneMagickPixelPacket (arg1 : access constant MagickPixelPacket) return access MagickPixelPacket  -- /usr/include/ImageMagick-6/magick/pixel.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "CloneMagickPixelPacket";

   function DecodePixelGamma (arg1 : double) return double  -- /usr/include/ImageMagick-6/magick/pixel.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "DecodePixelGamma";

   function EncodePixelGamma (arg1 : double) return double  -- /usr/include/ImageMagick-6/magick/pixel.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "EncodePixelGamma";

   function GetMagickPixelIntensity (the_image : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant MagickPixelPacket) return double  -- /usr/include/ImageMagick-6/magick/pixel.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickPixelIntensity";

   function GetPixelIntensity (the_image : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant PixelPacket) return double  -- /usr/include/ImageMagick-6/magick/pixel.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelIntensity";

   procedure ConformMagickPixelPacket
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant MagickPixelPacket;
      arg3 : access MagickPixelPacket;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/pixel.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "ConformMagickPixelPacket";

   procedure GetMagickPixelPacket (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access MagickPixelPacket)  -- /usr/include/ImageMagick-6/magick/pixel.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickPixelPacket";

end ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
