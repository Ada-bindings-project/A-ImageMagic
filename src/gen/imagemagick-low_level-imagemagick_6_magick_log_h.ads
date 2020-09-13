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

package ImageMagick.Low_Level.ImageMagick_6_magick_log_h is

   --  arg-macro: procedure GetMagickModule ()
   --    __FILE__,__func__,(unsigned long) __LINE__
   MagickLogFilename : aliased constant String := "log.xml" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/log.h:32

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
  --  MagickCore log methods.
  -- 

   subtype LogEventType is unsigned;
   UndefinedEvents : constant unsigned := 0;
   NoEvents : constant unsigned := 0;
   TraceEvent : constant unsigned := 1;
   AnnotateEvent : constant unsigned := 2;
   BlobEvent : constant unsigned := 4;
   CacheEvent : constant unsigned := 8;
   CoderEvent : constant unsigned := 16;
   ConfigureEvent : constant unsigned := 32;
   DeprecateEvent : constant unsigned := 64;
   DrawEvent : constant unsigned := 128;
   ExceptionEvent : constant unsigned := 256;
   ImageEvent : constant unsigned := 512;
   LocaleEvent : constant unsigned := 1024;
   ModuleEvent : constant unsigned := 2048;
   PolicyEvent : constant unsigned := 4096;
   ResourceEvent : constant unsigned := 8192;
   TransformEvent : constant unsigned := 16384;
   UserEvent : constant unsigned := 36864;
   WandEvent : constant unsigned := 65536;
   X11Event : constant unsigned := 131072;
   AccelerateEvent : constant unsigned := 262144;
   AllEvents : constant unsigned := 2147483647;  -- /usr/include/ImageMagick-6/magick/log.h:58

   type u_LogInfo is null record;   -- incomplete struct

   subtype LogInfo is u_LogInfo;  -- /usr/include/ImageMagick-6/magick/log.h:61

   type MagickLogMethod is access procedure (arg1 : LogEventType; arg2 : Interfaces.C.Strings.chars_ptr)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/log.h:64

   function GetLogList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/log.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "GetLogList";

   function GetLogName return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/log.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "GetLogName";

   function SetLogName (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/log.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "SetLogName";

   function GetLogInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/log.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "GetLogInfoList";

   function SetLogEventMask (arg1 : Interfaces.C.Strings.chars_ptr) return LogEventType  -- /usr/include/ImageMagick-6/magick/log.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "SetLogEventMask";

   function IsEventLogging return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/log.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "IsEventLogging";

   function ListLogInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/log.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "ListLogInfo";

   function LogComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/log.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "LogComponentGenesis";

   function LogMagickEvent
     (arg1 : LogEventType;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : size_t;
      arg5 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/log.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "LogMagickEvent";

   function LogMagickEventList
     (arg1 : LogEventType;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : size_t;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : access System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/log.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "LogMagickEventList";

   procedure CloseMagickLog  -- /usr/include/ImageMagick-6/magick/log.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "CloseMagickLog";

   procedure LogComponentTerminus  -- /usr/include/ImageMagick-6/magick/log.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "LogComponentTerminus";

   procedure SetLogFormat (arg1 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/log.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "SetLogFormat";

   procedure SetLogMethod (arg1 : MagickLogMethod)  -- /usr/include/ImageMagick-6/magick/log.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "SetLogMethod";

end ImageMagick.Low_Level.ImageMagick_6_magick_log_h;
