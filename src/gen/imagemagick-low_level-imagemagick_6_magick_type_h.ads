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

package ImageMagick.Low_Level.ImageMagick_6_magick_type_h is

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
  --  MagickCore image type methods.
  -- 

   type StretchType is 
     (UndefinedStretch,
      NormalStretch,
      UltraCondensedStretch,
      ExtraCondensedStretch,
      CondensedStretch,
      SemiCondensedStretch,
      SemiExpandedStretch,
      ExpandedStretch,
      ExtraExpandedStretch,
      UltraExpandedStretch,
      AnyStretch)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/type.h:38

  -- deprecated  
   type StyleType is 
     (UndefinedStyle,
      NormalStyle,
      ItalicStyle,
      ObliqueStyle,
      AnyStyle,
      BoldStyle)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/type.h:48

   type u_TypeInfo;
   type u_TypeInfo is record
      face : aliased size_t;  -- /usr/include/ImageMagick-6/magick/type.h:53
      path : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/type.h:56
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/type.h:57
      description : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/type.h:58
      family : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/type.h:59
      style : aliased StyleType;  -- /usr/include/ImageMagick-6/magick/type.h:62
      stretch : aliased StretchType;  -- /usr/include/ImageMagick-6/magick/type.h:65
      weight : aliased size_t;  -- /usr/include/ImageMagick-6/magick/type.h:68
      encoding : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/type.h:71
      foundry : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/type.h:72
      format : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/type.h:73
      metrics : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/type.h:74
      glyphs : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/type.h:75
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/type.h:78
      previous : access u_TypeInfo;  -- /usr/include/ImageMagick-6/magick/type.h:81
      next : access u_TypeInfo;  -- /usr/include/ImageMagick-6/magick/type.h:82
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/type.h:85
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/type.h:50

  -- deprecated, use GetTypeInfoList()  
   subtype TypeInfo is u_TypeInfo;  -- /usr/include/ImageMagick-6/magick/type.h:86

   function GetTypeList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/type.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "GetTypeList";

   function ListTypeInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/type.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "ListTypeInfo";

   function TypeComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/type.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "TypeComponentGenesis";

   function GetTypeInfo (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant TypeInfo  -- /usr/include/ImageMagick-6/magick/type.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "GetTypeInfo";

   function GetTypeInfoByFamily
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : StyleType;
      arg3 : StretchType;
      arg4 : size_t;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant TypeInfo  -- /usr/include/ImageMagick-6/magick/type.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "GetTypeInfoByFamily";

   function GetTypeInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/type.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "GetTypeInfoList";

   procedure TypeComponentTerminus  -- /usr/include/ImageMagick-6/magick/type.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "TypeComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_type_h;
