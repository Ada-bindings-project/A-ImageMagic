pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


with Interfaces.C.Strings;


package ImageMagick.Low_Level.ImageMagick_6_magick_timer_h is

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
  --  MagickCore timer methods.
  -- 

   type TimerState is 
     (UndefinedTimerState,
      StoppedTimerState,
      RunningTimerState)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/timer.h:30

   type u_Timer is record
      start : aliased double;  -- /usr/include/ImageMagick-6/magick/timer.h:35
      stop : aliased double;  -- /usr/include/ImageMagick-6/magick/timer.h:36
      total : aliased double;  -- /usr/include/ImageMagick-6/magick/timer.h:37
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/timer.h:32

   subtype Timer is u_Timer;  -- /usr/include/ImageMagick-6/magick/timer.h:38

   type u_TimerInfo is record
      user : aliased Timer;  -- /usr/include/ImageMagick-6/magick/timer.h:43
      elapsed : aliased Timer;  -- /usr/include/ImageMagick-6/magick/timer.h:44
      state : aliased TimerState;  -- /usr/include/ImageMagick-6/magick/timer.h:47
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/timer.h:50
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/timer.h:40

   subtype TimerInfo is u_TimerInfo;  -- /usr/include/ImageMagick-6/magick/timer.h:51

   function GetElapsedTime (arg1 : access TimerInfo) return double  -- /usr/include/ImageMagick-6/magick/timer.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "GetElapsedTime";

   function GetUserTime (arg1 : access TimerInfo) return double  -- /usr/include/ImageMagick-6/magick/timer.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "GetUserTime";

   function ContinueTimer (arg1 : access TimerInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/timer.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "ContinueTimer";

   function FormatMagickTime
     (arg1 : long;
      arg2 : size_t;
      arg3 : Interfaces.C.Strings.chars_ptr) return long  -- /usr/include/ImageMagick-6/magick/timer.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "FormatMagickTime";

   function AcquireTimerInfo return access TimerInfo  -- /usr/include/ImageMagick-6/magick/timer.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireTimerInfo";

   function DestroyTimerInfo (arg1 : access TimerInfo) return access TimerInfo  -- /usr/include/ImageMagick-6/magick/timer.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyTimerInfo";

   procedure GetTimerInfo (arg1 : access TimerInfo)  -- /usr/include/ImageMagick-6/magick/timer.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "GetTimerInfo";

   procedure ResetTimer (arg1 : access TimerInfo)  -- /usr/include/ImageMagick-6/magick/timer.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "ResetTimer";

   procedure StartTimer (arg1 : access TimerInfo; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType)  -- /usr/include/ImageMagick-6/magick/timer.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "StartTimer";

end ImageMagick.Low_Level.ImageMagick_6_magick_timer_h;
