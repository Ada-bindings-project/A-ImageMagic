pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


with System;

limited with Interfaces.C_Streams;

package ImageMagick.Low_Level.ImageMagick_6_magick_color_h is

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
  --  MagickCore image color methods.
  -- 

   subtype ComplianceType is unsigned;
   UndefinedCompliance : constant unsigned := 0;
   NoCompliance : constant unsigned := 0;
   CSSCompliance : constant unsigned := 1;
   SVGCompliance : constant unsigned := 1;
   X11Compliance : constant unsigned := 2;
   XPMCompliance : constant unsigned := 4;
   MVGCompliance : constant unsigned := 8;
   AllCompliance : constant unsigned := 2147483647;  -- /usr/include/ImageMagick-6/magick/color.h:38

   type u_ColorInfo;
   type u_ColorInfo is record
      path : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/color.h:43
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/color.h:44
      compliance : aliased ComplianceType;  -- /usr/include/ImageMagick-6/magick/color.h:47
      color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;  -- /usr/include/ImageMagick-6/magick/color.h:50
      exempt : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/color.h:53
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/color.h:54
      previous : access u_ColorInfo;  -- /usr/include/ImageMagick-6/magick/color.h:57
      next : access u_ColorInfo;  -- /usr/include/ImageMagick-6/magick/color.h:58
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/color.h:61
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/color.h:40

  -- deprecated, use GetColorInfoList()  
   subtype ColorInfo is u_ColorInfo;  -- /usr/include/ImageMagick-6/magick/color.h:62

   type u_ErrorInfo is record
      mean_error_per_pixel : aliased double;  -- /usr/include/ImageMagick-6/magick/color.h:67
      normalized_mean_error : aliased double;  -- /usr/include/ImageMagick-6/magick/color.h:68
      normalized_maximum_error : aliased double;  -- /usr/include/ImageMagick-6/magick/color.h:69
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/color.h:64

   subtype ErrorInfo is u_ErrorInfo;  -- /usr/include/ImageMagick-6/magick/color.h:70

   function GetColorList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/color.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "GetColorList";

   function GetColorInfo (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant ColorInfo  -- /usr/include/ImageMagick-6/magick/color.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "GetColorInfo";

   function GetColorInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/color.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "GetColorInfoList";

   function ColorComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "ColorComponentGenesis";

   function IsColorSimilar
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "IsColorSimilar";

   function IsImageSimilar
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      x : access long;
      y : access long;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "IsImageSimilar";

   function IsMagickColorSimilar (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "IsMagickColorSimilar";

   function IsOpacitySimilar
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "IsOpacitySimilar";

   function ListColorInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "ListColorInfo";

   function QueryColorCompliance
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : ComplianceType;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "QueryColorCompliance";

   function QueryColorDatabase
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "QueryColorDatabase";

   function QueryColorname
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : ComplianceType;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "QueryColorname";

   function QueryMagickColorCompliance
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : ComplianceType;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "QueryMagickColorCompliance";

   function QueryMagickColor
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "QueryMagickColor";

   function QueryMagickColorname
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg3 : ComplianceType;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/color.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "QueryMagickColorname";

   procedure ColorComponentTerminus  -- /usr/include/ImageMagick-6/magick/color.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "ColorComponentTerminus";

   procedure ConcatenateColorComponent
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg2 : unsigned;
      arg3 : ComplianceType;
      arg4 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/color.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "ConcatenateColorComponent";

   procedure GetColorTuple
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/color.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "GetColorTuple";

end ImageMagick.Low_Level.ImageMagick_6_magick_color_h;
