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

package ImageMagick.Low_Level.ImageMagick_6_magick_coder_h is

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
  --  MagickCore image coder methods.
  -- 

   type u_CoderInfo;
   type u_CoderInfo is record
      path : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/coder.h:28
      magick : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/coder.h:29
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/coder.h:30
      exempt : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/coder.h:33
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/coder.h:34
      previous : access u_CoderInfo;  -- /usr/include/ImageMagick-6/magick/coder.h:37
      next : access u_CoderInfo;  -- /usr/include/ImageMagick-6/magick/coder.h:38
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/coder.h:41
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/coder.h:25

  -- deprecated, use GetCoderInfoList()  
   subtype CoderInfo is u_CoderInfo;  -- /usr/include/ImageMagick-6/magick/coder.h:42

   function GetCoderList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/coder.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "GetCoderList";

   function GetCoderInfo (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant CoderInfo  -- /usr/include/ImageMagick-6/magick/coder.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GetCoderInfo";

   function GetCoderInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/coder.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "GetCoderInfoList";

   function CoderComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/coder.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "CoderComponentGenesis";

   function ListCoderInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/coder.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "ListCoderInfo";

   procedure CoderComponentTerminus  -- /usr/include/ImageMagick-6/magick/coder.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "CoderComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_coder_h;
