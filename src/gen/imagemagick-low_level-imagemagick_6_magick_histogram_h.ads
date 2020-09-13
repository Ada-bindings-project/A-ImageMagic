pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


limited with Interfaces.C_Streams;
with Interfaces.C.Extensions;

package ImageMagick.Low_Level.ImageMagick_6_magick_histogram_h is

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
  --  MagickCore histogram methods.
  -- 

   type u_ColorPacket is record
      pixel : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/histogram.h:28
      index : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/histogram.h:31
      count : aliased Extensions.unsigned_long_long;  -- /usr/include/ImageMagick-6/magick/histogram.h:34
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/histogram.h:25

   subtype ColorPacket is u_ColorPacket;  -- /usr/include/ImageMagick-6/magick/histogram.h:35

   function GetImageHistogram
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ColorPacket  -- /usr/include/ImageMagick-6/magick/histogram.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageHistogram";

   function UniqueImageColors (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/histogram.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "UniqueImageColors";

   function IdentifyPaletteImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/histogram.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "IdentifyPaletteImage";

   function IsHistogramImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/histogram.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "IsHistogramImage";

   function IsPaletteImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/histogram.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "IsPaletteImage";

   function MinMaxStretchImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/histogram.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "MinMaxStretchImage";

   function GetNumberColors
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access Interfaces.C_Streams.FILEs;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return size_t  -- /usr/include/ImageMagick-6/magick/histogram.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "GetNumberColors";

end ImageMagick.Low_Level.ImageMagick_6_magick_histogram_h;
