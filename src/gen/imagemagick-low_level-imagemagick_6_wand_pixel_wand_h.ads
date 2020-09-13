pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;


package ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h is

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
  --  MagickWand pixel wand methods.
  -- 

   type u_PixelWand is null record;   -- incomplete struct

   subtype PixelWand is u_PixelWand;  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:26

   function PixelGetColorAsNormalizedString (arg1 : access constant PixelWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetColorAsNormalizedString";

   function PixelGetColorAsString (arg1 : access constant PixelWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetColorAsString";

   function PixelGetException (arg1 : access constant PixelWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetException";

   function PixelGetAlpha (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetAlpha";

   function PixelGetBlack (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetBlack";

   function PixelGetBlue (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetBlue";

   function PixelGetCyan (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetCyan";

   function PixelGetFuzz (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetFuzz";

   function PixelGetGreen (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetGreen";

   function PixelGetMagenta (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetMagenta";

   function PixelGetOpacity (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetOpacity";

   function PixelGetRed (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetRed";

   function PixelGetYellow (arg1 : access constant PixelWand) return double  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetYellow";

   function PixelGetExceptionType (arg1 : access constant PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetExceptionType";

   function PixelGetIndex (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetIndex";

   function IsPixelWand (arg1 : access constant PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "IsPixelWand";

   function IsPixelWandSimilar
     (arg1 : access PixelWand;
      arg2 : access PixelWand;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "IsPixelWandSimilar";

   function PixelClearException (arg1 : access PixelWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "PixelClearException";

   function PixelSetColor (arg1 : access PixelWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetColor";

   function ClonePixelWand (arg1 : access constant PixelWand) return access PixelWand  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "ClonePixelWand";

   function ClonePixelWands (arg1 : System.Address; arg2 : size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "ClonePixelWands";

   function DestroyPixelWand (arg1 : access PixelWand) return access PixelWand  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyPixelWand";

   function DestroyPixelWands (arg1 : System.Address; arg2 : size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyPixelWands";

   function NewPixelWand return access PixelWand  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "NewPixelWand";

   function NewPixelWands (arg1 : size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "NewPixelWands";

   function PixelGetAlphaQuantum (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetAlphaQuantum";

   function PixelGetBlackQuantum (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetBlackQuantum";

   function PixelGetBlueQuantum (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetBlueQuantum";

   function PixelGetCyanQuantum (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetCyanQuantum";

   function PixelGetGreenQuantum (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetGreenQuantum";

   function PixelGetMagentaQuantum (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetMagentaQuantum";

   function PixelGetOpacityQuantum (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetOpacityQuantum";

   function PixelGetRedQuantum (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetRedQuantum";

   function PixelGetYellowQuantum (arg1 : access constant PixelWand) return unsigned_short  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetYellowQuantum";

   function PixelGetColorCount (arg1 : access constant PixelWand) return size_t  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetColorCount";

   procedure ClearPixelWand (arg1 : access PixelWand)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "ClearPixelWand";

   procedure PixelGetHSL
     (arg1 : access constant PixelWand;
      arg2 : access double;
      arg3 : access double;
      arg4 : access double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetHSL";

   procedure PixelGetMagickColor (arg1 : access constant PixelWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetMagickColor";

   procedure PixelGetQuantumColor (arg1 : access constant PixelWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetQuantumColor";

   procedure PixelSetAlpha (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetAlpha";

   procedure PixelSetAlphaQuantum (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetAlphaQuantum";

   procedure PixelSetBlack (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetBlack";

   procedure PixelSetBlackQuantum (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetBlackQuantum";

   procedure PixelSetBlue (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetBlue";

   procedure PixelSetBlueQuantum (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetBlueQuantum";

   procedure PixelSetColorFromWand (arg1 : access PixelWand; arg2 : access constant PixelWand)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetColorFromWand";

   procedure PixelSetColorCount (arg1 : access PixelWand; arg2 : size_t)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetColorCount";

   procedure PixelSetCyan (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetCyan";

   procedure PixelSetCyanQuantum (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetCyanQuantum";

   procedure PixelSetFuzz (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetFuzz";

   procedure PixelSetGreen (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetGreen";

   procedure PixelSetGreenQuantum (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetGreenQuantum";

   procedure PixelSetHSL
     (arg1 : access PixelWand;
      arg2 : double;
      arg3 : double;
      arg4 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetHSL";

   procedure PixelSetIndex (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetIndex";

   procedure PixelSetMagenta (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetMagenta";

   procedure PixelSetMagentaQuantum (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetMagentaQuantum";

   procedure PixelSetMagickColor (arg1 : access PixelWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetMagickColor";

   procedure PixelSetOpacity (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetOpacity";

   procedure PixelSetOpacityQuantum (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetOpacityQuantum";

   procedure PixelSetQuantumColor (arg1 : access PixelWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetQuantumColor";

   procedure PixelSetRed (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetRed";

   procedure PixelSetRedQuantum (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetRedQuantum";

   procedure PixelSetYellow (arg1 : access PixelWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetYellow";

   procedure PixelSetYellowQuantum (arg1 : access PixelWand; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/wand/pixel-wand.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetYellowQuantum";

end ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h;
