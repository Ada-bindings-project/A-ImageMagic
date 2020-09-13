pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;



with Interfaces.C.Strings;
limited with Interfaces.C_Streams;

package ImageMagick.Low_Level.ImageMagick_6_magick_threshold_h is

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
  --  MagickCore image threshold methods.
  -- 

   type AutoThresholdMethod is 
     (UndefinedThresholdMethod,
      KapurThresholdMethod,
      OTSUThresholdMethod,
      TriangleThresholdMethod)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/threshold.h:31

   type u_ThresholdMap is null record;   -- incomplete struct

   subtype ThresholdMap is u_ThresholdMap;  -- /usr/include/ImageMagick-6/magick/threshold.h:34

   function AdaptiveThresholdImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/threshold.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "AdaptiveThresholdImage";

   function DestroyThresholdMap (arg1 : access ThresholdMap) return access ThresholdMap  -- /usr/include/ImageMagick-6/magick/threshold.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyThresholdMap";

   function GetThresholdMap (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ThresholdMap  -- /usr/include/ImageMagick-6/magick/threshold.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "GetThresholdMap";

   function AutoThresholdImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : AutoThresholdMethod;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "AutoThresholdImage";

   function BilevelImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "BilevelImage";

   function BilevelImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "BilevelImageChannel";

   function BlackThresholdImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "BlackThresholdImage";

   function BlackThresholdImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "BlackThresholdImageChannel";

   function ClampImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "ClampImage";

   function ClampImageChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : unsigned) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "ClampImageChannel";

   function ListThresholdMaps (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "ListThresholdMaps";

  -- deprecated  
   function OrderedDitherImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "OrderedDitherImage";

   function OrderedDitherImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "OrderedDitherImageChannel";

   function OrderedPosterizeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "OrderedPosterizeImage";

   function OrderedPosterizeImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "OrderedPosterizeImageChannel";

   function PerceptibleImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "PerceptibleImage";

   function PerceptibleImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "PerceptibleImageChannel";

   function RandomThresholdImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "RandomThresholdImage";

   function RandomThresholdImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "RandomThresholdImageChannel";

   function WhiteThresholdImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "WhiteThresholdImage";

   function WhiteThresholdImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/threshold.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "WhiteThresholdImageChannel";

end ImageMagick.Low_Level.ImageMagick_6_magick_threshold_h;
