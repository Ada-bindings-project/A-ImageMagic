pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;

limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_attribute_h is

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
  --  MagickCore methods to set or get image attributes.
  -- 

   function GetImageType (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ImageType  -- /usr/include/ImageMagick-6/magick/attribute.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageType";

   function IdentifyImageGray (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ImageType  -- /usr/include/ImageMagick-6/magick/attribute.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "IdentifyImageGray";

   function IdentifyImageType (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ImageType  -- /usr/include/ImageMagick-6/magick/attribute.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "IdentifyImageType";

   function IdentifyImageMonochrome (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/attribute.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "IdentifyImageMonochrome";

   function IsGrayImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/attribute.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "IsGrayImage";

   function IsMonochromeImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/attribute.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "IsMonochromeImage";

   function IsOpaqueImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/attribute.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "IsOpaqueImage";

   function SetImageChannelDepth
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/attribute.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageChannelDepth";

   function SetImageDepth (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/attribute.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageDepth";

   function SetImageType (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_image_h.ImageType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/attribute.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageType";

   function GetImageBoundingBox (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; c_exception : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo  -- /usr/include/ImageMagick-6/magick/attribute.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageBoundingBox";

   function GetImageChannelDepth
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return size_t  -- /usr/include/ImageMagick-6/magick/attribute.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelDepth";

   function GetImageDepth (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return size_t  -- /usr/include/ImageMagick-6/magick/attribute.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageDepth";

   function GetImageQuantumDepth (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return size_t  -- /usr/include/ImageMagick-6/magick/attribute.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageQuantumDepth";

end ImageMagick.Low_Level.ImageMagick_6_magick_attribute_h;
