pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_draw_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_paint_h is

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
  --  MagickCore image paint methods.
  -- 

   function OilPaintImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/paint.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "OilPaintImage";

   function FloodfillPaintImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg5 : long;
      arg6 : long;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/paint.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "FloodfillPaintImage";

   function GradientImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.GradientType;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.SpreadMethod;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg5 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/paint.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "GradientImage";

   function OpaquePaintImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/paint.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "OpaquePaintImage";

   function OpaquePaintImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/paint.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "OpaquePaintImageChannel";

   function TransparentPaintImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg3 : unsigned_short;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/paint.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "TransparentPaintImage";

   function TransparentPaintImageChroma
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg4 : unsigned_short;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/paint.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "TransparentPaintImageChroma";

end ImageMagick.Low_Level.ImageMagick_6_magick_paint_h;
