pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_feature_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
with ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_composite_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_compress_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_layer_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_compare_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;

limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_visual_effects_h;
with ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h;
with ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h;
with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_distort_h;
limited with Interfaces.C_Streams;
with ImageMagick.Low_Level.ImageMagick_6_magick_quantize_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_resample_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_profile_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_montage_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_effect_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h;

package ImageMagick.Low_Level.ImageMagick_6_wand_magick_image_h is

  --  Copyright 1999-2020 ImageMagick Studio LLC, a non-profit organization
  --  dedicated to making software imaging solutions freely available.
  --  You may not use this file except in compliance with the License.  You may
  --  obtain a copy of the License at
  --    https://imagemagick.org/script/license.php
  --  Unless required by applicable law or agreed to in writing, software
  --  distributed under the License is distributed on an "AS IS" BASIS,
  --  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  --  See the License for the specific language governing permissions and
  --  limitations under the License.
  --  MagickWand image Methods.
  -- 

   function MagickGetImageChannelFeatures (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : size_t) return access ImageMagick.Low_Level.ImageMagick_6_magick_feature_h.ChannelFeatures  -- /usr/include/ImageMagick-6/wand/magick-image.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageChannelFeatures";

   function MagickGetImageChannelStatistics (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h.ChannelStatistics  -- /usr/include/ImageMagick-6/wand/magick-image.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageChannelStatistics";

   function MagickGetImageFilename (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-image.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageFilename";

   function MagickGetImageFormat (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-image.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageFormat";

   function MagickGetImageSignature (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-image.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageSignature";

   function MagickIdentifyImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/magick-image.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "MagickIdentifyImage";

   function MagickGetImageColorspace (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType  -- /usr/include/ImageMagick-6/wand/magick-image.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageColorspace";

   function MagickGetImageCompose (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator  -- /usr/include/ImageMagick-6/wand/magick-image.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageCompose";

   function MagickGetImageCompression (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_compress_h.CompressionType  -- /usr/include/ImageMagick-6/wand/magick-image.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageCompression";

   function MagickGetImageDispose (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_layer_h.DisposeType  -- /usr/include/ImageMagick-6/wand/magick-image.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageDispose";

   function MagickGetImageChannelDistortions
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_compare_h.MetricType) return access double  -- /usr/include/ImageMagick-6/wand/magick-image.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageChannelDistortions";

   function MagickGetImageFuzz (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return double  -- /usr/include/ImageMagick-6/wand/magick-image.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageFuzz";

   function MagickGetImageGamma (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return double  -- /usr/include/ImageMagick-6/wand/magick-image.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageGamma";

   function MagickGetImageTotalInkDensity (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return double  -- /usr/include/ImageMagick-6/wand/magick-image.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageTotalInkDensity";

   function MagickGetImageEndian (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h.EndianType  -- /usr/include/ImageMagick-6/wand/magick-image.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageEndian";

   function MagickGetImageGravity (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType  -- /usr/include/ImageMagick-6/wand/magick-image.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageGravity";

   function MagickDestroyImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/wand/magick-image.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDestroyImage";

   function GetImageFromMagickWand (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/wand/magick-image.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageFromMagickWand";

   function MagickGetImageType (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ImageType  -- /usr/include/ImageMagick-6/wand/magick-image.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageType";

   function MagickGetImageInterlaceScheme (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.InterlaceType  -- /usr/include/ImageMagick-6/wand/magick-image.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageInterlaceScheme";

   function MagickGetImageInterpolateMethod (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.InterpolatePixelMethod  -- /usr/include/ImageMagick-6/wand/magick-image.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageInterpolateMethod";

   function MagickAdaptiveBlurImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAdaptiveBlurImage";

   function MagickAdaptiveBlurImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAdaptiveBlurImageChannel";

   function MagickAdaptiveResizeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAdaptiveResizeImage";

   function MagickAdaptiveSharpenImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAdaptiveSharpenImage";

   function MagickAdaptiveSharpenImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAdaptiveSharpenImageChannel";

   function MagickAdaptiveThresholdImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAdaptiveThresholdImage";

   function MagickAddImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAddImage";

   function MagickAddNoiseImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_visual_effects_h.NoiseType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAddNoiseImage";

   function MagickAddNoiseImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_visual_effects_h.NoiseType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAddNoiseImageChannel";

   function MagickAffineTransformImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAffineTransformImage";

   function MagickAnnotateImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAnnotateImage";

   function MagickAnimateImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAnimateImages";

   function MagickAutoGammaImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAutoGammaImage";

   function MagickAutoGammaImageChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : unsigned) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAutoGammaImageChannel";

   function MagickAutoLevelImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAutoLevelImage";

   function MagickAutoLevelImageChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : unsigned) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAutoLevelImageChannel";

   function MagickAutoOrientImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAutoOrientImage";

   function MagickBlackThresholdImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "MagickBlackThresholdImage";

   function MagickBlueShiftImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "MagickBlueShiftImage";

   function MagickBlurImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "MagickBlurImage";

   function MagickBlurImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "MagickBlurImageChannel";

   function MagickBorderImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : size_t;
      arg4 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "MagickBorderImage";

   function MagickBrightnessContrastImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "MagickBrightnessContrastImage";

   function MagickBrightnessContrastImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "MagickBrightnessContrastImageChannel";

   function MagickCharcoalImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCharcoalImage";

   function MagickChopImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "MagickChopImage";

   function MagickClampImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "MagickClampImage";

   function MagickClampImageChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : unsigned) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "MagickClampImageChannel";

   function MagickClipImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "MagickClipImage";

   function MagickClipImagePath
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "MagickClipImagePath";

   function MagickClutImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "MagickClutImage";

   function MagickClutImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "MagickClutImageChannel";

   function MagickColorDecisionListImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "MagickColorDecisionListImage";

   function MagickColorizeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "MagickColorizeImage";

   function MagickColorMatrixImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h.KernelInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "MagickColorMatrixImage";

   function MagickCommentImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCommentImage";

   function MagickCompositeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCompositeImage";

   function MagickCompositeImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator;
      arg5 : long;
      arg6 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCompositeImageChannel";

   function MagickCompositeImageGravity
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCompositeImageGravity";

   function MagickCompositeLayers
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCompositeLayers";

   function MagickConstituteImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      arg6 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "MagickConstituteImage";

   function MagickContrastImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "MagickContrastImage";

   function MagickContrastStretchImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "MagickContrastStretchImage";

   function MagickContrastStretchImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "MagickContrastStretchImageChannel";

   function MagickConvolveImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "MagickConvolveImage";

   function MagickConvolveImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : size_t;
      arg4 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "MagickConvolveImageChannel";

   function MagickCropImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCropImage";

   function MagickCycleColormapImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCycleColormapImage";

   function MagickDecipherImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDecipherImage";

   function MagickDeskewImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDeskewImage";

   function MagickDespeckleImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDespeckleImage";

   function MagickDisplayImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDisplayImage";

   function MagickDisplayImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDisplayImages";

   function MagickDistortImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_distort_h.DistortImageMethod;
      arg3 : size_t;
      arg4 : access double;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDistortImage";

   function MagickDrawImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDrawImage";

   function MagickEdgeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEdgeImage";

   function MagickEmbossImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEmbossImage";

   function MagickEncipherImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEncipherImage";

   function MagickEnhanceImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEnhanceImage";

   function MagickEqualizeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEqualizeImage";

   function MagickEqualizeImageChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : unsigned) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEqualizeImageChannel";

   function MagickEvaluateImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h.MagickEvaluateOperator;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEvaluateImage";

   function MagickEvaluateImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h.MagickEvaluateOperator;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEvaluateImageChannel";

   function MagickExportImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      arg8 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "MagickExportImagePixels";

   function MagickExtentImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "MagickExtentImage";

   function MagickFilterImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h.KernelInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFilterImage";

   function MagickFilterImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h.KernelInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFilterImageChannel";

   function MagickFlipImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFlipImage";

   function MagickFloodfillPaintImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg4 : double;
      arg5 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg6 : long;
      arg7 : long;
      arg8 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFloodfillPaintImage";

   function MagickFlopImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFlopImage";

   function MagickForwardFourierTransformImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "MagickForwardFourierTransformImage";

   function MagickFrameImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : long;
      arg6 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFrameImage";

   function MagickFunctionImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h.MagickFunction;
      arg3 : size_t;
      arg4 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFunctionImage";

   function MagickFunctionImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h.MagickFunction;
      arg4 : size_t;
      arg5 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFunctionImageChannel";

   function MagickGammaImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGammaImage";

   function MagickGammaImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGammaImageChannel";

   function MagickGaussianBlurImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGaussianBlurImage";

   function MagickGaussianBlurImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGaussianBlurImageChannel";

   function MagickGetImageAlphaChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageAlphaChannel";

   function MagickGetImageBackgroundColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageBackgroundColor";

   function MagickGetImageBluePrimary
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access double;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageBluePrimary";

   function MagickGetImageBorderColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageBorderColor";

   function MagickGetImageChannelDistortion
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : unsigned;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_compare_h.MetricType;
      arg5 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageChannelDistortion";

   function MagickGetImageChannelKurtosis
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access double;
      arg4 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageChannelKurtosis";

   function MagickGetImageChannelMean
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access double;
      arg4 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageChannelMean";

   function MagickGetImageChannelRange
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access double;
      arg4 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageChannelRange";

   function MagickGetImageColormapColor
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageColormapColor";

   function MagickGetImageDistortion
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_compare_h.MetricType;
      arg4 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageDistortion";

   function MagickGetImageGreenPrimary
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access double;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageGreenPrimary";

   function MagickGetImageMatteColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageMatteColor";

   function MagickGetImageLength (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access Extensions.unsigned_long_long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageLength";

   function MagickGetImagePage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access size_t;
      arg3 : access size_t;
      arg4 : access long;
      arg5 : access long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImagePage";

   function MagickGetImagePixelColor
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImagePixelColor";

   function MagickGetImageRange
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access double;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageRange";

   function MagickGetImageRedPrimary
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access double;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageRedPrimary";

   function MagickGetImageResolution
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access double;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageResolution";

   function MagickGetImageWhitePoint
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access double;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageWhitePoint";

   function MagickHaldClutImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "MagickHaldClutImage";

   function MagickHaldClutImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "MagickHaldClutImageChannel";

   function MagickHasNextImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "MagickHasNextImage";

   function MagickHasPreviousImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "MagickHasPreviousImage";

   function MagickImplodeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "MagickImplodeImage";

   function MagickImportImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      arg8 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "MagickImportImagePixels";

   function MagickInverseFourierTransformImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "MagickInverseFourierTransformImage";

   function MagickLabelImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLabelImage";

   function MagickLevelImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLevelImage";

   function MagickLevelImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLevelImageChannel";

   function MagickLevelImageColors
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLevelImageColors";

   function MagickLevelImageColorsChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLevelImageColorsChannel";

   function MagickLevelizeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLevelizeImage";

   function MagickLevelizeImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLevelizeImageChannel";

   function MagickLinearStretchImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLinearStretchImage";

   function MagickLiquidRescaleImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : double;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLiquidRescaleImage";

   function MagickLocalContrastImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "MagickLocalContrastImage";

   function MagickMagnifyImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMagnifyImage";

   function MagickMedianFilterImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMedianFilterImage";

   function MagickMinifyImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMinifyImage";

   function MagickModeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "MagickModeImage";

   function MagickModulateImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "MagickModulateImage";

   function MagickMorphologyImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h.MorphologyMethod;
      arg3 : long;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h.KernelInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMorphologyImage";

   function MagickMorphologyImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h.MorphologyMethod;
      arg4 : long;
      arg5 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h.KernelInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMorphologyImageChannel";

   function MagickMotionBlurImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMotionBlurImage";

   function MagickMotionBlurImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMotionBlurImageChannel";

   function MagickNegateImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "MagickNegateImage";

   function MagickNegateImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "MagickNegateImageChannel";

   function MagickNewImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "MagickNewImage";

   function MagickNextImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "MagickNextImage";

   function MagickNormalizeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "MagickNormalizeImage";

   function MagickNormalizeImageChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : unsigned) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "MagickNormalizeImageChannel";

   function MagickOilPaintImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "MagickOilPaintImage";

   function MagickOpaquePaintImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg4 : double;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "MagickOpaquePaintImage";

   function MagickOpaquePaintImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg5 : double;
      arg6 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "MagickOpaquePaintImageChannel";

   function MagickOrderedPosterizeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "MagickOrderedPosterizeImage";

   function MagickOrderedPosterizeImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "MagickOrderedPosterizeImageChannel";

   function MagickOptimizeImageTransparency (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "MagickOptimizeImageTransparency";

   function MagickTransparentPaintImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : double;
      arg4 : double;
      invert : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "MagickTransparentPaintImage";

   function MagickPingImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPingImage";

   function MagickPingImageBlob
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : System.Address;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPingImageBlob";

   function MagickPingImageFile (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access Interfaces.C_Streams.FILEs) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPingImageFile";

   function MagickPolaroidImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPolaroidImage";

   function MagickPosterizeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPosterizeImage";

   function MagickPreviousImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPreviousImage";

   function MagickQuantizeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType;
      arg4 : size_t;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg6 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "MagickQuantizeImage";

   function MagickQuantizeImages
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType;
      arg4 : size_t;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg6 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "MagickQuantizeImages";

   function MagickRaiseImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : long;
      arg6 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRaiseImage";

   function MagickRandomThresholdImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRandomThresholdImage";

   function MagickRandomThresholdImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRandomThresholdImageChannel";

   function MagickReadImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "MagickReadImage";

   function MagickReadImageBlob
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : System.Address;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "MagickReadImageBlob";

   function MagickReadImageFile (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access Interfaces.C_Streams.FILEs) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "MagickReadImageFile";

   function MagickReduceNoiseImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "MagickReduceNoiseImage";

   function MagickRemapImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_quantize_h.DitherMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRemapImage";

   function MagickRemoveImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRemoveImage";

   function MagickResampleImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_resample_h.FilterTypes;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "MagickResampleImage";

   function MagickResetImagePage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "MagickResetImagePage";

   function MagickResizeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_resample_h.FilterTypes;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "MagickResizeImage";

   function MagickRollImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRollImage";

   function MagickRotateImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRotateImage";

   function MagickRotationalBlurImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRotationalBlurImage";

   function MagickRotationalBlurImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRotationalBlurImageChannel";

   function MagickSampleImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSampleImage";

   function MagickScaleImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "MagickScaleImage";

   function MagickSegmentImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg4 : double;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSegmentImage";

   function MagickSelectiveBlurImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSelectiveBlurImage";

   function MagickSelectiveBlurImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSelectiveBlurImageChannel";

   function MagickSeparateImageChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : unsigned) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSeparateImageChannel";

   function MagickSepiaToneImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSepiaToneImage";

   function MagickSetImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImage";

   function MagickSetImageAlphaChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_image_h.AlphaChannelType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageAlphaChannel";

   function MagickSetImageBackgroundColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageBackgroundColor";

   function MagickSetImageBias (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageBias";

   function MagickSetImageBluePrimary
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageBluePrimary";

   function MagickSetImageBorderColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageBorderColor";

   function MagickSetImageChannelDepth
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageChannelDepth";

   function MagickSetImageClipMask (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageClipMask";

   function MagickSetImageColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageColor";

   function MagickSetImageColormapColor
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageColormapColor";

   function MagickSetImageColorspace (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageColorspace";

   function MagickSetImageCompose (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageCompose";

   function MagickSetImageCompression (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_compress_h.CompressionType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageCompression";

   function MagickSetImageDelay (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:312
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageDelay";

   function MagickSetImageDepth (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageDepth";

   function MagickSetImageDispose (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_layer_h.DisposeType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageDispose";

   function MagickSetImageCompressionQuality (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageCompressionQuality";

   function MagickSetImageEndian (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h.EndianType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageEndian";

   function MagickSetImageExtent
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageExtent";

   function MagickSetImageFilename (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageFilename";

   function MagickSetImageFormat (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageFormat";

   function MagickSetImageFuzz (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageFuzz";

   function MagickSetImageGamma (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:321
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageGamma";

   function MagickSetImageGravity (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageGravity";

   function MagickSetImageGreenPrimary
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageGreenPrimary";

   function MagickSetImageInterlaceScheme (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_image_h.InterlaceType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageInterlaceScheme";

   function MagickSetImageInterpolateMethod (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.InterpolatePixelMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageInterpolateMethod";

   function MagickSetImageIterations (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:326
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageIterations";

   function MagickSetImageMatte (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageMatte";

   function MagickSetImageMatteColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageMatteColor";

   function MagickSetImageOpacity (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageOpacity";

   function MagickSetImageOrientation (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_image_h.OrientationType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageOrientation";

   function MagickSetImagePage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImagePage";

   function MagickSetImageRedPrimary
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageRedPrimary";

   function MagickSetImageRenderingIntent (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_profile_h.RenderingIntent) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:334
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageRenderingIntent";

   function MagickSetImageResolution
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageResolution";

   function MagickSetImageScene (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageScene";

   function MagickSetImagePixelColor
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:337
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImagePixelColor";

   function MagickSetImageTicksPerSecond (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageTicksPerSecond";

   function MagickSetImageType (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ImageType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageType";

   function MagickSetImageUnits (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ResolutionType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageUnits";

   function MagickSetImageWhitePoint
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageWhitePoint";

   function MagickShadeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "MagickShadeImage";

   function MagickShadowImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "MagickShadowImage";

   function MagickSharpenImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSharpenImage";

   function MagickSharpenImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSharpenImageChannel";

   function MagickShaveImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "MagickShaveImage";

   function MagickShearImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "MagickShearImage";

   function MagickSigmoidalContrastImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSigmoidalContrastImage";

   function MagickSigmoidalContrastImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg4 : double;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSigmoidalContrastImageChannel";

   function MagickSketchImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSketchImage";

   function MagickSolarizeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:357
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSolarizeImage";

   function MagickSolarizeImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSolarizeImageChannel";

   function MagickSparseColorImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_distort_h.SparseColorMethod;
      arg4 : size_t;
      arg5 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSparseColorImage";

   function MagickSpliceImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSpliceImage";

   function MagickSpreadImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSpreadImage";

   function MagickStatisticImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h.StatisticType;
      arg3 : size_t;
      arg4 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "MagickStatisticImage";

   function MagickStatisticImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h.StatisticType;
      arg4 : size_t;
      arg5 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:366
   with Import => True, 
        Convention => C, 
        External_Name => "MagickStatisticImageChannel";

   function MagickStripImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "MagickStripImage";

   function MagickSwirlImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:369
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSwirlImage";

   function MagickTintImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:370
   with Import => True, 
        Convention => C, 
        External_Name => "MagickTintImage";

   function MagickTransformImageColorspace (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:371
   with Import => True, 
        Convention => C, 
        External_Name => "MagickTransformImageColorspace";

   function MagickTransposeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:372
   with Import => True, 
        Convention => C, 
        External_Name => "MagickTransposeImage";

   function MagickTransverseImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:373
   with Import => True, 
        Convention => C, 
        External_Name => "MagickTransverseImage";

   function MagickThresholdImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:374
   with Import => True, 
        Convention => C, 
        External_Name => "MagickThresholdImage";

   function MagickThresholdImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:375
   with Import => True, 
        Convention => C, 
        External_Name => "MagickThresholdImageChannel";

   function MagickThumbnailImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:376
   with Import => True, 
        Convention => C, 
        External_Name => "MagickThumbnailImage";

   function MagickTrimImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:377
   with Import => True, 
        Convention => C, 
        External_Name => "MagickTrimImage";

   function MagickUniqueImageColors (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:378
   with Import => True, 
        Convention => C, 
        External_Name => "MagickUniqueImageColors";

   function MagickUnsharpMaskImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "MagickUnsharpMaskImage";

   function MagickUnsharpMaskImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:381
   with Import => True, 
        Convention => C, 
        External_Name => "MagickUnsharpMaskImageChannel";

   function MagickVignetteImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:383
   with Import => True, 
        Convention => C, 
        External_Name => "MagickVignetteImage";

   function MagickWaveImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:385
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWaveImage";

   function MagickWhiteThresholdImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:386
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWhiteThresholdImage";

   function MagickWriteImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:387
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWriteImage";

   function MagickWriteImageFile (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access Interfaces.C_Streams.FILEs) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:388
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWriteImageFile";

   function MagickWriteImages
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:389
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWriteImages";

   function MagickWriteImagesFile (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access Interfaces.C_Streams.FILEs) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/magick-image.h:390
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWriteImagesFile";

   function MagickSetImageProgressMonitor
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h.MagickProgressMonitor;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h.MagickProgressMonitor  -- /usr/include/ImageMagick-6/wand/magick-image.h:393
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageProgressMonitor";

   function MagickAppendImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:397
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAppendImages";

   function MagickCoalesceImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:398
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCoalesceImages";

   function MagickCombineImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : unsigned) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:399
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCombineImages";

   function MagickCompareImageChannels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : unsigned;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_compare_h.MetricType;
      arg5 : access double) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:400
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCompareImageChannels";

   function MagickCompareImages
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_compare_h.MetricType;
      arg4 : access double) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCompareImages";

   function MagickCompareImageLayers (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_layer_h.ImageLayerMethod) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:404
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCompareImageLayers";

   function MagickDeconstructImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:405
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDeconstructImages";

   function MagickEvaluateImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h.MagickEvaluateOperator) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:406
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEvaluateImages";

   function MagickFxImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFxImage";

   function MagickFxImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFxImageChannel";

   function MagickGetImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:409
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImage";

   function MagickGetImageClipMask (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageClipMask";

   function MagickGetImageRegion
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : long) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageRegion";

   function MagickMergeImageLayers (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_layer_h.ImageLayerMethod) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:413
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMergeImageLayers";

   function MagickMorphImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : size_t) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:414
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMorphImages";

   function MagickMontageImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_montage_h.MontageMode;
      arg6 : Interfaces.C.Strings.chars_ptr) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMontageImage";

   function MagickOptimizeImageLayers (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:417
   with Import => True, 
        Convention => C, 
        External_Name => "MagickOptimizeImageLayers";

   function MagickPreviewImages (wand : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_effect_h.PreviewType) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:418
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPreviewImages";

   function MagickSimilarityImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;
      arg4 : access double) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:419
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSimilarityImage";

   function MagickSmushImages
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : long) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:421
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSmushImages";

   function MagickSteganoImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : long) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:422
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSteganoImage";

   function MagickStereoImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:423
   with Import => True, 
        Convention => C, 
        External_Name => "MagickStereoImage";

   function MagickTextureImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:424
   with Import => True, 
        Convention => C, 
        External_Name => "MagickTextureImage";

   function MagickTransformImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/magick-image.h:425
   with Import => True, 
        Convention => C, 
        External_Name => "MagickTransformImage";

   function MagickGetImageOrientation (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.OrientationType  -- /usr/include/ImageMagick-6/wand/magick-image.h:428
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageOrientation";

   function MagickGetImageHistogram (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/magick-image.h:431
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageHistogram";

   function MagickGetImageRenderingIntent (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_profile_h.RenderingIntent  -- /usr/include/ImageMagick-6/wand/magick-image.h:434
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageRenderingIntent";

   function MagickGetImageUnits (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ResolutionType  -- /usr/include/ImageMagick-6/wand/magick-image.h:437
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageUnits";

   function MagickGetImageColors (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:440
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageColors";

   function MagickGetImageCompressionQuality (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:441
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageCompressionQuality";

   function MagickGetImageDelay (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:442
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageDelay";

   function MagickGetImageChannelDepth (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : unsigned) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:443
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageChannelDepth";

   function MagickGetImageDepth (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:444
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageDepth";

   function MagickGetImageHeight (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:445
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageHeight";

   function MagickGetImageIterations (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:446
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageIterations";

   function MagickGetImageScene (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:447
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageScene";

   function MagickGetImageTicksPerSecond (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:448
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageTicksPerSecond";

   function MagickGetImageWidth (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:449
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageWidth";

   function MagickGetNumberImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return size_t  -- /usr/include/ImageMagick-6/wand/magick-image.h:450
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetNumberImages";

   function MagickGetImageBlob (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access size_t) return access unsigned_char  -- /usr/include/ImageMagick-6/wand/magick-image.h:453
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageBlob";

   function MagickGetImagesBlob (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access size_t) return access unsigned_char  -- /usr/include/ImageMagick-6/wand/magick-image.h:454
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImagesBlob";

   function MagickGetImageVirtualPixelMethod (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod  -- /usr/include/ImageMagick-6/wand/magick-image.h:457
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageVirtualPixelMethod";

   function MagickSetImageVirtualPixelMethod (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod  -- /usr/include/ImageMagick-6/wand/magick-image.h:458
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageVirtualPixelMethod";

end ImageMagick.Low_Level.ImageMagick_6_wand_magick_image_h;
