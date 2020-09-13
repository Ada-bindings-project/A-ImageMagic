pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h;
limited with Interfaces.C_Streams;


package ImageMagick.Low_Level.ImageMagick_6_magick_locale_uh is

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
  --  MagickCore locale methods.
  -- 

   type u_LocaleInfo;
   type u_LocaleInfo is record
      path : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/locale_.h:30
      tag : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/locale_.h:31
      message : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/locale_.h:32
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/locale_.h:35
      previous : access u_LocaleInfo;  -- /usr/include/ImageMagick-6/magick/locale_.h:38
      next : access u_LocaleInfo;  -- /usr/include/ImageMagick-6/magick/locale_.h:39
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/locale_.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/locale_.h:27

  -- deprecated, use GetLocaleInfoList()  
   subtype LocaleInfo is u_LocaleInfo;  -- /usr/include/ImageMagick-6/magick/locale_.h:43

   function GetLocaleList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/locale_.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "GetLocaleList";

   function GetLocaleMessage (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/locale_.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "GetLocaleMessage";

   function GetLocaleInfo_u (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant LocaleInfo  -- /usr/include/ImageMagick-6/magick/locale_.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "GetLocaleInfo_";

   function GetLocaleInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/locale_.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "GetLocaleInfoList";

   function InterpretLocaleValue (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return double  -- /usr/include/ImageMagick-6/magick/locale_.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "InterpretLocaleValue";

   function LocaleCompare (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/ImageMagick-6/magick/locale_.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "LocaleCompare";

   function LocaleLowercase (arg1 : int) return int  -- /usr/include/ImageMagick-6/magick/locale_.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "LocaleLowercase";

   function LocaleNCompare
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : size_t) return int  -- /usr/include/ImageMagick-6/magick/locale_.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "LocaleNCompare";

   function LocaleUppercase (arg1 : int) return int  -- /usr/include/ImageMagick-6/magick/locale_.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "LocaleUppercase";

   function DestroyLocaleOptions (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h.LinkedListInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h.LinkedListInfo  -- /usr/include/ImageMagick-6/magick/locale_.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyLocaleOptions";

   function GetLocaleOptions (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h.LinkedListInfo  -- /usr/include/ImageMagick-6/magick/locale_.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "GetLocaleOptions";

   function ListLocaleInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/locale_.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "ListLocaleInfo";

   function LocaleComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/locale_.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "LocaleComponentGenesis";

   function FormatLocaleFile (arg1 : access Interfaces.C_Streams.FILEs; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return long  -- /usr/include/ImageMagick-6/magick/locale_.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "FormatLocaleFile";

   function FormatLocaleFileList
     (arg1 : access Interfaces.C_Streams.FILEs;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access System.Address) return long  -- /usr/include/ImageMagick-6/magick/locale_.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "FormatLocaleFileList";

   function FormatLocaleString
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : size_t;
      arg3 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return long  -- /usr/include/ImageMagick-6/magick/locale_.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "FormatLocaleString";

   function FormatLocaleStringList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : size_t;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access System.Address) return long  -- /usr/include/ImageMagick-6/magick/locale_.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "FormatLocaleStringList";

   procedure LocaleComponentTerminus  -- /usr/include/ImageMagick-6/magick/locale_.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "LocaleComponentTerminus";

   procedure LocaleLower (arg1 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/locale_.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "LocaleLower";

   procedure LocaleUpper (arg1 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/locale_.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "LocaleUpper";

end ImageMagick.Low_Level.ImageMagick_6_magick_locale_uh;
