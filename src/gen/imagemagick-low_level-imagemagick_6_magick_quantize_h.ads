pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_quantize_h is

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
  --  MagickCore image quantization methods.
  -- 

   type DitherMethod is 
     (UndefinedDitherMethod,
      NoDitherMethod,
      RiemersmaDitherMethod,
      FloydSteinbergDitherMethod)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/quantize.h:33

   type u_QuantizeInfo is record
      number_colors : aliased size_t;  -- /usr/include/ImageMagick-6/magick/quantize.h:38
      tree_depth : aliased size_t;  -- /usr/include/ImageMagick-6/magick/quantize.h:41
      dither : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/quantize.h:44
      colorspace : aliased ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType;  -- /usr/include/ImageMagick-6/magick/quantize.h:47
      measure_error : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/quantize.h:50
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/quantize.h:53
      dither_method : aliased DitherMethod;  -- /usr/include/ImageMagick-6/magick/quantize.h:56
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/quantize.h:35

   subtype QuantizeInfo is u_QuantizeInfo;  -- /usr/include/ImageMagick-6/magick/quantize.h:57

   function CompressImageColormap (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantize.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "CompressImageColormap";

   function GetImageQuantizeError (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantize.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageQuantizeError";

   function PosterizeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantize.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "PosterizeImage";

   function PosterizeImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : size_t;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantize.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "PosterizeImageChannel";

   function QuantizeImage (arg1 : access constant QuantizeInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantize.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "QuantizeImage";

   function QuantizeImages (arg1 : access constant QuantizeInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantize.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "QuantizeImages";

   function RemapImage
     (arg1 : access constant QuantizeInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantize.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "RemapImage";

   function RemapImages
     (arg1 : access constant QuantizeInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantize.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "RemapImages";

   function AcquireQuantizeInfo (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo) return access QuantizeInfo  -- /usr/include/ImageMagick-6/magick/quantize.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireQuantizeInfo";

   function CloneQuantizeInfo (arg1 : access constant QuantizeInfo) return access QuantizeInfo  -- /usr/include/ImageMagick-6/magick/quantize.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "CloneQuantizeInfo";

   function DestroyQuantizeInfo (arg1 : access QuantizeInfo) return access QuantizeInfo  -- /usr/include/ImageMagick-6/magick/quantize.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyQuantizeInfo";

   procedure GetQuantizeInfo (arg1 : access QuantizeInfo)  -- /usr/include/ImageMagick-6/magick/quantize.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "GetQuantizeInfo";

end ImageMagick.Low_Level.ImageMagick_6_magick_quantize_h;
