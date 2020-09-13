pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


limited with ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h;
with System;
limited with Interfaces.C_Streams;

package ImageMagick.Low_Level.ImageMagick_6_magick_delegate_h is

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
  --  MagickCore delegates methods.
  -- 

   type u_DelegateInfo;
   type u_DelegateInfo is record
      path : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/delegate.h:31
      decode : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/delegate.h:32
      encode : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/delegate.h:33
      commands : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/delegate.h:34
      mode : aliased long;  -- /usr/include/ImageMagick-6/magick/delegate.h:37
      thread_support : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/delegate.h:40
      spawn : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/delegate.h:41
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/delegate.h:42
      previous : access u_DelegateInfo;  -- /usr/include/ImageMagick-6/magick/delegate.h:45
      next : access u_DelegateInfo;  -- /usr/include/ImageMagick-6/magick/delegate.h:46
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/delegate.h:49
      semaphore : access ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h.SemaphoreInfo;  -- /usr/include/ImageMagick-6/magick/delegate.h:52
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/delegate.h:28

  -- deprecated, use GetDelegateInfoList()  
   subtype DelegateInfo is u_DelegateInfo;  -- /usr/include/ImageMagick-6/magick/delegate.h:53

   function GetDelegateCommand
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/delegate.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "GetDelegateCommand";

   function GetDelegateList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/delegate.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "GetDelegateList";

   function GetDelegateCommands (arg1 : access constant DelegateInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/delegate.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "GetDelegateCommands";

   function GetDelegateInfo
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      c_exception : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant DelegateInfo  -- /usr/include/ImageMagick-6/magick/delegate.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "GetDelegateInfo";

   function GetDelegateInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/delegate.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "GetDelegateInfoList";

   function ExternalDelegateCommand
     (arg1 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return int  -- /usr/include/ImageMagick-6/magick/delegate.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "ExternalDelegateCommand";

   function GetDelegateMode (arg1 : access constant DelegateInfo) return long  -- /usr/include/ImageMagick-6/magick/delegate.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "GetDelegateMode";

   function DelegateComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/delegate.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "DelegateComponentGenesis";

   function GetDelegateThreadSupport (arg1 : access constant DelegateInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/delegate.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "GetDelegateThreadSupport";

   function InvokeDelegate
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/delegate.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "InvokeDelegate";

   function ListDelegateInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/delegate.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "ListDelegateInfo";

   procedure DelegateComponentTerminus  -- /usr/include/ImageMagick-6/magick/delegate.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "DelegateComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_delegate_h;
