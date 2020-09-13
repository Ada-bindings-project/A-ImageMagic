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

package ImageMagick.Low_Level.ImageMagick_6_magick_configure_h is

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
  --  MagickCore configure methods.
  -- 

   type u_ConfigureInfo;
   type u_ConfigureInfo is record
      path : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/configure.h:30
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/configure.h:31
      value : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/configure.h:32
      exempt : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/configure.h:35
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/configure.h:36
      previous : access u_ConfigureInfo;  -- /usr/include/ImageMagick-6/magick/configure.h:39
      next : access u_ConfigureInfo;  -- /usr/include/ImageMagick-6/magick/configure.h:40
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/configure.h:43
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/configure.h:27

  -- deprecated, use GetConfigureInfoList()  
   subtype ConfigureInfo is u_ConfigureInfo;  -- /usr/include/ImageMagick-6/magick/configure.h:44

   function GetConfigureList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/configure.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "GetConfigureList";

   function GetConfigureOption (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/configure.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GetConfigureOption";

   function GetConfigureValue (arg1 : access constant ConfigureInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/configure.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "GetConfigureValue";

   function GetConfigureInfo (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant ConfigureInfo  -- /usr/include/ImageMagick-6/magick/configure.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "GetConfigureInfo";

   function GetConfigureInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/configure.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "GetConfigureInfoList";

   function DestroyConfigureOptions (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h.LinkedListInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h.LinkedListInfo  -- /usr/include/ImageMagick-6/magick/configure.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyConfigureOptions";

   function GetConfigurePaths (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h.LinkedListInfo  -- /usr/include/ImageMagick-6/magick/configure.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "GetConfigurePaths";

   function GetConfigureOptions (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h.LinkedListInfo  -- /usr/include/ImageMagick-6/magick/configure.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "GetConfigureOptions";

   function ConfigureComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/configure.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ConfigureComponentGenesis";

   function ListConfigureInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/configure.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "ListConfigureInfo";

   procedure ConfigureComponentTerminus  -- /usr/include/ImageMagick-6/magick/configure.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "ConfigureComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_configure_h;
