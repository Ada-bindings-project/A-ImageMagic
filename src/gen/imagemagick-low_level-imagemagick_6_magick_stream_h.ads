pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;


package ImageMagick.Low_Level.ImageMagick_6_magick_stream_h is

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
  --  MagickCore image stream methods.
  -- 

   type StreamHandler is access function
        (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
         arg2 : System.Address;
         arg3 : size_t) return size_t
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/stream.h:26

   function ReadStream
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : StreamHandler;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/stream.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "ReadStream";

   function WriteStream
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : StreamHandler) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/stream.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "WriteStream";

end ImageMagick.Low_Level.ImageMagick_6_magick_stream_h;
