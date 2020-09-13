pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h is

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

   type StorageType is 
     (UndefinedPixel,
      CharPixel,
      DoublePixel,
      FloatPixel,
      IntegerPixel,
      LongPixel,
      QuantumPixel,
      ShortPixel)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/constitute.h:35

   function ConstituteImage
     (arg1 : size_t;
      arg2 : size_t;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : StorageType;
      arg5 : System.Address;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/constitute.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ConstituteImage";

   function PingImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/constitute.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "PingImage";

   function PingImages (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/constitute.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "PingImages";

   function ReadImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/constitute.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ReadImage";

   function ReadImages (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/constitute.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "ReadImages";

   function ReadInlineImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/constitute.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ReadInlineImage";

   function WriteImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/constitute.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "WriteImage";

   function WriteImages
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/constitute.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "WriteImages";

end ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h;
