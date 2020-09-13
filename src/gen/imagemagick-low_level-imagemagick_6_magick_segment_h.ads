pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_segment_h is

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
  --  MagickCore image segment methods.
  -- 

   function GetImageDynamicThreshold
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/segment.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageDynamicThreshold";

   function SegmentImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg4 : double;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/segment.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "SegmentImage";

end ImageMagick.Low_Level.ImageMagick_6_magick_segment_h;
