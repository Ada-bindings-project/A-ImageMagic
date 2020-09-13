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

package ImageMagick.Low_Level.ImageMagick_6_magick_magic_h is

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
  --  MagickCore magic methods.
  -- 

   type u_MagicInfo;
   type u_MagicInfo is record
      path : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/magic.h:28
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/magic.h:29
      target : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/magic.h:30
      magic : access unsigned_char;  -- /usr/include/ImageMagick-6/magick/magic.h:33
      length : aliased size_t;  -- /usr/include/ImageMagick-6/magick/magic.h:36
      offset : aliased Long_Long_Integer;  -- /usr/include/ImageMagick-6/magick/magic.h:39
      exempt : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magic.h:42
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magic.h:43
      previous : access u_MagicInfo;  -- /usr/include/ImageMagick-6/magick/magic.h:46
      next : access u_MagicInfo;  -- /usr/include/ImageMagick-6/magick/magic.h:47
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/magic.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/magic.h:25

  -- deprecated, use GetMagicInfoList()  
   subtype MagicInfo is u_MagicInfo;  -- /usr/include/ImageMagick-6/magick/magic.h:51

   function GetMagicList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/magic.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagicList";

   function GetMagicName (arg1 : access constant MagicInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/magic.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagicName";

   function ListMagicInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magic.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "ListMagicInfo";

   function MagicComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magic.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "MagicComponentGenesis";

   function GetMagicInfo
     (arg1 : access unsigned_char;
      arg2 : size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant MagicInfo  -- /usr/include/ImageMagick-6/magick/magic.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagicInfo";

   function GetMagicInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/magic.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagicInfoList";

   procedure MagicComponentTerminus  -- /usr/include/ImageMagick-6/magick/magic.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "MagicComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_magic_h;
