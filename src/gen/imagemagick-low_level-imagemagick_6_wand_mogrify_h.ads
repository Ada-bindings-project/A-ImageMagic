pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;

package ImageMagick.Low_Level.ImageMagick_6_wand_mogrify_h is

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
  --  MagickWand mogrify command-line method.
  -- 

   type MagickCommand is access function
        (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
         arg2 : int;
         arg3 : System.Address;
         arg4 : System.Address;
         arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/mogrify.h:26

   function MagickCommandGenesis
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : MagickCommand;
      arg3 : int;
      arg4 : System.Address;
      arg5 : System.Address;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/mogrify.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCommandGenesis";

   function MogrifyImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : int;
      arg3 : System.Address;
      arg4 : System.Address;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/mogrify.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "MogrifyImage";

   function MogrifyImageCommand
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : int;
      arg3 : System.Address;
      arg4 : System.Address;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/mogrify.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "MogrifyImageCommand";

   function MogrifyImageInfo
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : int;
      arg3 : System.Address;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/mogrify.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "MogrifyImageInfo";

   function MogrifyImageList
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : int;
      arg3 : System.Address;
      arg4 : System.Address;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/mogrify.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "MogrifyImageList";

   function MogrifyImages
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : int;
      arg4 : System.Address;
      arg5 : System.Address;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/mogrify.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "MogrifyImages";

end ImageMagick.Low_Level.ImageMagick_6_wand_mogrify_h;
