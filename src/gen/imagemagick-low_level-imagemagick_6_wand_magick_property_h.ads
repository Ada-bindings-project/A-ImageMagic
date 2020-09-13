pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;

with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_compress_h;
with ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;

limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


with ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_resource_uh;
with ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h;

package ImageMagick.Low_Level.ImageMagick_6_wand_magick_property_h is

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
  --  MagickWand property, options, and profile  methods.
  -- 

   function MagickGetFilename (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetFilename";

   function MagickGetFormat (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetFormat";

   function MagickGetFont (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetFont";

   function MagickGetHomeURL return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetHomeURL";

   function MagickGetImageArtifact (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageArtifact";

   function MagickGetImageArtifacts
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/magick-property.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageArtifacts";

   function MagickGetImageProfiles
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/magick-property.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageProfiles";

   function MagickGetImageProperty (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageProperty";

   function MagickGetImageProperties
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/magick-property.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageProperties";

   function MagickGetOption (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetOption";

   function MagickGetOptions
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/magick-property.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetOptions";

   function MagickQueryConfigureOption (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "MagickQueryConfigureOption";

   function MagickQueryConfigureOptions (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/magick-property.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "MagickQueryConfigureOptions";

   function MagickQueryFonts (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/magick-property.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "MagickQueryFonts";

   function MagickQueryFormats (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/magick-property.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "MagickQueryFormats";

   function MagickGetColorspace (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType  -- /usr/include/ImageMagick-6/wand/magick-property.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetColorspace";

   function MagickGetCompression (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_compress_h.CompressionType  -- /usr/include/ImageMagick-6/wand/magick-property.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetCompression";

   function MagickGetCopyright return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetCopyright";

   function MagickGetPackageName return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetPackageName";

   function MagickGetQuantumDepth (arg1 : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetQuantumDepth";

   function MagickGetQuantumRange (arg1 : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetQuantumRange";

   function MagickGetReleaseDate return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetReleaseDate";

   function MagickGetVersion (arg1 : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-property.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetVersion";

   function MagickGetPointsize (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return double  -- /usr/include/ImageMagick-6/wand/magick-property.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetPointsize";

   function MagickGetSamplingFactors (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access size_t) return access double  -- /usr/include/ImageMagick-6/wand/magick-property.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetSamplingFactors";

   function MagickQueryFontMetrics
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand;
      arg3 : Interfaces.C.Strings.chars_ptr) return access double  -- /usr/include/ImageMagick-6/wand/magick-property.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "MagickQueryFontMetrics";

   function MagickQueryMultilineFontMetrics
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand;
      arg3 : Interfaces.C.Strings.chars_ptr) return access double  -- /usr/include/ImageMagick-6/wand/magick-property.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "MagickQueryMultilineFontMetrics";

   function MagickGetGravity (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType  -- /usr/include/ImageMagick-6/wand/magick-property.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetGravity";

   function MagickGetType (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ImageType  -- /usr/include/ImageMagick-6/wand/magick-property.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetType";

   function MagickGetInterlaceScheme (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.InterlaceType  -- /usr/include/ImageMagick-6/wand/magick-property.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetInterlaceScheme";

   function MagickGetInterpolateMethod (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.InterpolatePixelMethod  -- /usr/include/ImageMagick-6/wand/magick-property.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetInterpolateMethod";

   function MagickGetOrientation (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.OrientationType  -- /usr/include/ImageMagick-6/wand/magick-property.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetOrientation";

   function MagickDeleteImageArtifact (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDeleteImageArtifact";

   function MagickDeleteImageProperty (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDeleteImageProperty";

   function MagickDeleteOption (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDeleteOption";

   function MagickGetAntialias (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetAntialias";

   function MagickGetPage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access size_t;
      arg3 : access size_t;
      arg4 : access long;
      arg5 : access long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetPage";

   function MagickGetResolution
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access double;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetResolution";

   function MagickGetSize
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access size_t;
      arg3 : access size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetSize";

   function MagickGetSizeOffset (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetSizeOffset";

   function MagickProfileImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address;
      arg4 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "MagickProfileImage";

   function MagickSetAntialias (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetAntialias";

   function MagickSetBackgroundColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetBackgroundColor";

   function MagickSetColorspace (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetColorspace";

   function MagickSetCompression (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_compress_h.CompressionType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetCompression";

   function MagickSetCompressionQuality (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetCompressionQuality";

   function MagickSetDepth (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetDepth";

   function MagickSetExtract (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetExtract";

   function MagickSetFilename (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetFilename";

   function MagickSetFormat (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetFormat";

   function MagickSetFont (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetFont";

   function MagickSetGravity (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetGravity";

   function MagickSetImageArtifact
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageArtifact";

   function MagickSetImageProfile
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address;
      arg4 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageProfile";

   function MagickSetImageProperty
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageProperty";

   function MagickSetInterlaceScheme (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_image_h.InterlaceType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetInterlaceScheme";

   function MagickSetInterpolateMethod (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.InterpolatePixelMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetInterpolateMethod";

   function MagickSetOption
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetOption";

   function MagickSetOrientation (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_image_h.OrientationType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetOrientation";

   function MagickSetPage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetPage";

   function MagickSetPassphrase (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetPassphrase";

   function MagickSetPointsize (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetPointsize";

   function MagickSetResolution
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetResolution";

   function MagickSetResourceLimit (c_type : ImageMagick.Low_Level.ImageMagick_6_magick_resource_uh.ResourceType; limit : Extensions.unsigned_long_long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetResourceLimit";

   function MagickSetSamplingFactors
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetSamplingFactors";

   function MagickSetSecurityPolicy (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetSecurityPolicy";

   function MagickSetSize
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetSize";

   function MagickSetSizeOffset
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetSizeOffset";

   function MagickSetType (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ImageType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-property.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetType";

   function MagickSetProgressMonitor
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h.MagickProgressMonitor;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h.MagickProgressMonitor  -- /usr/include/ImageMagick-6/wand/magick-property.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetProgressMonitor";

   function MagickGetResource (arg1 : ImageMagick.Low_Level.ImageMagick_6_magick_resource_uh.ResourceType) return Extensions.unsigned_long_long  -- /usr/include/ImageMagick-6/wand/magick-property.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetResource";

   function MagickGetResourceLimit (arg1 : ImageMagick.Low_Level.ImageMagick_6_magick_resource_uh.ResourceType) return Extensions.unsigned_long_long  -- /usr/include/ImageMagick-6/wand/magick-property.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetResourceLimit";

   function MagickGetBackgroundColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand  -- /usr/include/ImageMagick-6/wand/magick-property.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetBackgroundColor";

   function MagickGetOrientationType (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.OrientationType  -- /usr/include/ImageMagick-6/wand/magick-property.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetOrientationType";

   function MagickGetCompressionQuality (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-property.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetCompressionQuality";

   function MagickGetImageProfile
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access size_t) return access unsigned_char  -- /usr/include/ImageMagick-6/wand/magick-property.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageProfile";

   function MagickRemoveImageProfile
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access size_t) return access unsigned_char  -- /usr/include/ImageMagick-6/wand/magick-property.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRemoveImageProfile";

end ImageMagick.Low_Level.ImageMagick_6_wand_magick_property_h;
