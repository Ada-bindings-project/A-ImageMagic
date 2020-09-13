pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_montage_h is

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
  --  MagickCore montage methods.
  -- 

   type MontageMode is 
     (UndefinedMode,
      FrameMode,
      UnframeMode,
      ConcatenateMode)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/montage.h:31

   subtype u_MontageInfo_array3537 is Interfaces.C.char_array (0 .. 4095);
   type u_MontageInfo is record
      geometry : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/montage.h:36
      tile : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/montage.h:37
      title : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/montage.h:38
      frame : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/montage.h:39
      texture : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/montage.h:40
      font : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/montage.h:41
      pointsize : aliased double;  -- /usr/include/ImageMagick-6/magick/montage.h:44
      border_width : aliased size_t;  -- /usr/include/ImageMagick-6/magick/montage.h:47
      shadow : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/montage.h:50
      fill : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/montage.h:53
      stroke : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/montage.h:54
      background_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/montage.h:55
      border_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/montage.h:56
      matte_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/montage.h:57
      gravity : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType;  -- /usr/include/ImageMagick-6/magick/montage.h:60
      filename : aliased u_MontageInfo_array3537;  -- /usr/include/ImageMagick-6/magick/montage.h:63
      debug : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/montage.h:66
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/montage.h:69
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/montage.h:33

   subtype MontageInfo is u_MontageInfo;  -- /usr/include/ImageMagick-6/magick/montage.h:70

   function MontageImages
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant MontageInfo;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/montage.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "MontageImages";

   function MontageImageList
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access constant MontageInfo;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/montage.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "MontageImageList";

   function CloneMontageInfo (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access constant MontageInfo) return access MontageInfo  -- /usr/include/ImageMagick-6/magick/montage.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "CloneMontageInfo";

   function DestroyMontageInfo (arg1 : access MontageInfo) return access MontageInfo  -- /usr/include/ImageMagick-6/magick/montage.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyMontageInfo";

   procedure GetMontageInfo (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access MontageInfo)  -- /usr/include/ImageMagick-6/magick/montage.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "GetMontageInfo";

end ImageMagick.Low_Level.ImageMagick_6_magick_montage_h;
