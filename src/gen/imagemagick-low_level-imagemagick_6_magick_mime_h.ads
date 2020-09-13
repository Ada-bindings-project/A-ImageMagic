pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;
limited with Interfaces.C_Streams;

package ImageMagick.Low_Level.ImageMagick_6_magick_mime_h is

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
  --  The ImageMagick mime methods.
  -- 

   type u_MimeInfo is null record;   -- incomplete struct

   subtype MimeInfo is u_MimeInfo;  -- /usr/include/ImageMagick-6/magick/mime.h:26

   function GetMimeList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/mime.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "GetMimeList";

   function MagickToMime (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/mime.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "MagickToMime";

   function GetMimeDescription (arg1 : access constant MimeInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/mime.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "GetMimeDescription";

   function GetMimeType (arg1 : access constant MimeInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/mime.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "GetMimeType";

   function ListMimeInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/mime.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "ListMimeInfo";

   function MimeComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/mime.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "MimeComponentGenesis";

   function GetMimeInfo
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access unsigned_char;
      arg3 : size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant MimeInfo  -- /usr/include/ImageMagick-6/magick/mime.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "GetMimeInfo";

   function GetMimeInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/mime.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "GetMimeInfoList";

   procedure MimeComponentTerminus  -- /usr/include/ImageMagick-6/magick/mime.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "MimeComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_mime_h;
