pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;


limited with ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_exception_h is

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
  --  MagickCore exception methods.
  -- 

   subtype ExceptionType is unsigned;
   UndefinedException : constant unsigned := 0;
   WarningException : constant unsigned := 300;
   ResourceLimitWarning : constant unsigned := 300;
   TypeWarning : constant unsigned := 305;
   OptionWarning : constant unsigned := 310;
   DelegateWarning : constant unsigned := 315;
   MissingDelegateWarning : constant unsigned := 320;
   CorruptImageWarning : constant unsigned := 325;
   FileOpenWarning : constant unsigned := 330;
   BlobWarning : constant unsigned := 335;
   StreamWarning : constant unsigned := 340;
   CacheWarning : constant unsigned := 345;
   CoderWarning : constant unsigned := 350;
   FilterWarning : constant unsigned := 352;
   ModuleWarning : constant unsigned := 355;
   DrawWarning : constant unsigned := 360;
   ImageWarning : constant unsigned := 365;
   WandWarning : constant unsigned := 370;
   RandomWarning : constant unsigned := 375;
   XServerWarning : constant unsigned := 380;
   MonitorWarning : constant unsigned := 385;
   RegistryWarning : constant unsigned := 390;
   ConfigureWarning : constant unsigned := 395;
   PolicyWarning : constant unsigned := 399;
   ErrorException : constant unsigned := 400;
   ResourceLimitError : constant unsigned := 400;
   TypeError : constant unsigned := 405;
   OptionError : constant unsigned := 410;
   DelegateError : constant unsigned := 415;
   MissingDelegateError : constant unsigned := 420;
   CorruptImageError : constant unsigned := 425;
   FileOpenError : constant unsigned := 430;
   BlobError : constant unsigned := 435;
   StreamError : constant unsigned := 440;
   CacheError : constant unsigned := 445;
   CoderError : constant unsigned := 450;
   FilterError : constant unsigned := 452;
   ModuleError : constant unsigned := 455;
   DrawError : constant unsigned := 460;
   ImageError : constant unsigned := 465;
   WandError : constant unsigned := 470;
   RandomError : constant unsigned := 475;
   XServerError : constant unsigned := 480;
   MonitorError : constant unsigned := 485;
   RegistryError : constant unsigned := 490;
   ConfigureError : constant unsigned := 495;
   PolicyError : constant unsigned := 499;
   FatalErrorException : constant unsigned := 700;
   ResourceLimitFatalError : constant unsigned := 700;
   TypeFatalError : constant unsigned := 705;
   OptionFatalError : constant unsigned := 710;
   DelegateFatalError : constant unsigned := 715;
   MissingDelegateFatalError : constant unsigned := 720;
   CorruptImageFatalError : constant unsigned := 725;
   FileOpenFatalError : constant unsigned := 730;
   BlobFatalError : constant unsigned := 735;
   StreamFatalError : constant unsigned := 740;
   CacheFatalError : constant unsigned := 745;
   CoderFatalError : constant unsigned := 750;
   FilterFatalError : constant unsigned := 752;
   ModuleFatalError : constant unsigned := 755;
   DrawFatalError : constant unsigned := 760;
   ImageFatalError : constant unsigned := 765;
   WandFatalError : constant unsigned := 770;
   RandomFatalError : constant unsigned := 775;
   XServerFatalError : constant unsigned := 780;
   MonitorFatalError : constant unsigned := 785;
   RegistryFatalError : constant unsigned := 790;
   ConfigureFatalError : constant unsigned := 795;
   PolicyFatalError : constant unsigned := 799;  -- /usr/include/ImageMagick-6/magick/exception.h:100

   type ExceptionInfo is record
      severity : aliased ExceptionType;  -- /usr/include/ImageMagick-6/magick/exception.h:105
      error_number : aliased int;  -- /usr/include/ImageMagick-6/magick/exception.h:108
      reason : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/exception.h:111
      description : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/exception.h:112
      exceptions : System.Address;  -- /usr/include/ImageMagick-6/magick/exception.h:115
      relinquish : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/exception.h:118
      semaphore : access ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h.SemaphoreInfo;  -- /usr/include/ImageMagick-6/magick/exception.h:121
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/exception.h:124
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/exception.h:102

   type ErrorHandler is access procedure
        (arg1 : ExceptionType;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : Interfaces.C.Strings.chars_ptr)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/exception.h:128

   type FatalErrorHandler is access procedure
        (arg1 : ExceptionType;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : Interfaces.C.Strings.chars_ptr)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/exception.h:131

   type WarningHandler is access procedure
        (arg1 : ExceptionType;
         arg2 : Interfaces.C.Strings.chars_ptr;
         arg3 : Interfaces.C.Strings.chars_ptr)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/exception.h:134

   function GetExceptionMessage (arg1 : int) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/exception.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "GetExceptionMessage";

   function GetLocaleExceptionMessage (arg1 : ExceptionType; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/exception.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "GetLocaleExceptionMessage";

   function SetErrorHandler (arg1 : ErrorHandler) return ErrorHandler  -- /usr/include/ImageMagick-6/magick/exception.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "SetErrorHandler";

   function AcquireExceptionInfo return access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo  -- /usr/include/ImageMagick-6/magick/exception.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireExceptionInfo";

   function CloneExceptionInfo (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo  -- /usr/include/ImageMagick-6/magick/exception.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "CloneExceptionInfo";

   function DestroyExceptionInfo (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo  -- /usr/include/ImageMagick-6/magick/exception.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyExceptionInfo";

   function SetFatalErrorHandler (arg1 : FatalErrorHandler) return FatalErrorHandler  -- /usr/include/ImageMagick-6/magick/exception.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "SetFatalErrorHandler";

   function ThrowException
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo;
      arg2 : ExceptionType;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/exception.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "ThrowException";

   function ThrowMagickException
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : size_t;
      arg5 : ExceptionType;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/exception.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "ThrowMagickException";

   function ThrowMagickExceptionList
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : size_t;
      arg5 : ExceptionType;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : access System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/exception.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "ThrowMagickExceptionList";

   procedure CatchException (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/exception.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "CatchException";

   procedure ClearMagickException (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/exception.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "ClearMagickException";

   procedure InheritException (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/exception.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "InheritException";

   procedure MagickError
     (arg1 : ExceptionType;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/exception.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "MagickError";

   procedure MagickFatalError
     (arg1 : ExceptionType;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/exception.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFatalError";

   procedure MagickWarning
     (arg1 : ExceptionType;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/exception.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWarning";

   function SetWarningHandler (arg1 : WarningHandler) return WarningHandler  -- /usr/include/ImageMagick-6/magick/exception.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "SetWarningHandler";

end ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;
