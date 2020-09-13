pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


with System;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_magick_h is

   --  unsupported macro: magick_module _module
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
  --  MagickCore magick methods.
  -- 

   type MagickFormatType is 
     (UndefinedFormatType,
      ImplicitFormatType,
      ExplicitFormatType)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/magick.h:39

   type MagickThreadSupport is 
     (NoThreadSupport,
      DecoderThreadSupport,
      EncoderThreadSupport)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/magick.h:46

   --  skipped function type DecodeImageHandler

   --  skipped function type EncodeImageHandler

   --  skipped function type IsImageFormatHandler

   type u_MagickInfo;
   type u_MagickInfo is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/magick.h:60
      description : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/magick.h:61
      version : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/magick.h:62
      note : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/magick.h:63
      u_module : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/magick.h:64
      image_info : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;  -- /usr/include/ImageMagick-6/magick/magick.h:67
      decoder : access function (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;  -- /usr/include/ImageMagick-6/magick/magick.h:70
      encoder : access function (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magick.h:73
      magick : access function (arg1 : access unsigned_char; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magick.h:76
      client_data : System.Address;  -- /usr/include/ImageMagick-6/magick/magick.h:79
      adjoin : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magick.h:82
      raw : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magick.h:83
      endian_support : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magick.h:84
      blob_support : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magick.h:85
      seekable_stream : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magick.h:86
      format_type : aliased MagickFormatType;  -- /usr/include/ImageMagick-6/magick/magick.h:89
      thread_support : aliased unsigned;  -- /usr/include/ImageMagick-6/magick/magick.h:92
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/magick.h:95
      previous : access u_MagickInfo;  -- /usr/include/ImageMagick-6/magick/magick.h:98
      next : access u_MagickInfo;  -- /usr/include/ImageMagick-6/magick/magick.h:99
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/magick.h:102
      mime_type : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/magick.h:105
      semaphore : access ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h.SemaphoreInfo;  -- /usr/include/ImageMagick-6/magick/magick.h:108
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/magick.h:57

  -- deprecated, use GetMagickInfoList()  
   subtype MagickInfo is u_MagickInfo;  -- /usr/include/ImageMagick-6/magick/magick.h:109

   function GetMagickList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/magick.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickList";

   function GetMagickDescription (arg1 : access constant MagickInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/magick.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickDescription";

   function GetMagickMimeType (arg1 : access constant MagickInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/magick.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickMimeType";

   function GetImageDecoder (arg1 : access constant MagickInfo) return access function (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/magick.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageDecoder";

   function GetImageEncoder (arg1 : access constant MagickInfo) return access function (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageEncoder";

   function GetMagickPrecision return int  -- /usr/include/ImageMagick-6/magick/magick.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickPrecision";

   function SetMagickPrecision (arg1 : int) return int  -- /usr/include/ImageMagick-6/magick/magick.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "SetMagickPrecision";

   function GetImageMagick
     (arg1 : access unsigned_char;
      arg2 : size_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageMagick";

   function GetMagickAdjoin (arg1 : access constant MagickInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickAdjoin";

   function GetMagickBlobSupport (arg1 : access constant MagickInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickBlobSupport";

   function GetMagickEndianSupport (arg1 : access constant MagickInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickEndianSupport";

   function GetMagickRawSupport (arg1 : access constant MagickInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickRawSupport";

   function GetMagickSeekableStream (arg1 : access constant MagickInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickSeekableStream";

   function IsMagickCoreInstantiated return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "IsMagickCoreInstantiated";

   function MagickComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "MagickComponentGenesis";

   function UnregisterMagickInfo (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/magick.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMagickInfo";

   function GetMagickInfo (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant MagickInfo  -- /usr/include/ImageMagick-6/magick/magick.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickInfo";

   function GetMagickInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/magick.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickInfoList";

   function RegisterMagickInfo (arg1 : access MagickInfo) return access MagickInfo  -- /usr/include/ImageMagick-6/magick/magick.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMagickInfo";

   function SetMagickInfo (arg1 : Interfaces.C.Strings.chars_ptr) return access MagickInfo  -- /usr/include/ImageMagick-6/magick/magick.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "SetMagickInfo";

   function GetMagickThreadSupport (arg1 : access constant MagickInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/magick.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickThreadSupport";

   procedure MagickComponentTerminus  -- /usr/include/ImageMagick-6/magick/magick.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "MagickComponentTerminus";

   procedure MagickCoreGenesis (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType)  -- /usr/include/ImageMagick-6/magick/magick.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCoreGenesis";

   procedure MagickCoreTerminus  -- /usr/include/ImageMagick-6/magick/magick.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "MagickCoreTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_magick_h;
