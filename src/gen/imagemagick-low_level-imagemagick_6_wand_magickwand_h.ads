pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;



with System;

package ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h is

   --  unsupported macro: magick_restrict _magickcore_restrict
   --  arg-macro: function MAGICKWAND_CHECK_VERSION (major, minor, micro)
   --    return (MAGICKWAND_MAJOR_VERSION > (major))  or else  ((MAGICKWAND_MAJOR_VERSION = (major))  and then  (MAGICKWAND_MINOR_VERSION > (minor)))  or else  ((MAGICKWAND_MAJOR_VERSION = (major))  and then  (MAGICKWAND_MINOR_VERSION = (minor))  and then  (MAGICKWAND_MICRO_VERSION >= (micro)));
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
  --  MagickWand Application Programming Interface declarations.
  -- 

   type u_MagickWand is null record;   -- incomplete struct

   subtype MagickWand is u_MagickWand;  -- /usr/include/ImageMagick-6/wand/MagickWand.h:74

   function MagickGetException (arg1 : access constant MagickWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/MagickWand.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetException";

   function MagickGetExceptionType (arg1 : access constant MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType  -- /usr/include/ImageMagick-6/wand/MagickWand.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetExceptionType";

   function IsMagickWand (arg1 : access constant MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/MagickWand.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "IsMagickWand";

   function IsMagickWandInstantiated return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/MagickWand.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "IsMagickWandInstantiated";

   function MagickClearException (arg1 : access MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/MagickWand.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "MagickClearException";

   function MagickSetIteratorIndex (arg1 : access MagickWand; arg2 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/MagickWand.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetIteratorIndex";

   function CloneMagickWand (arg1 : access constant MagickWand) return access MagickWand  -- /usr/include/ImageMagick-6/wand/MagickWand.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "CloneMagickWand";

   function DestroyMagickWand (arg1 : access MagickWand) return access MagickWand  -- /usr/include/ImageMagick-6/wand/MagickWand.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyMagickWand";

   function NewMagickWand return access MagickWand  -- /usr/include/ImageMagick-6/wand/MagickWand.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "NewMagickWand";

   function NewMagickWandFromImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access MagickWand  -- /usr/include/ImageMagick-6/wand/MagickWand.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "NewMagickWandFromImage";

   function MagickGetIteratorIndex (arg1 : access MagickWand) return long  -- /usr/include/ImageMagick-6/wand/MagickWand.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetIteratorIndex";

   procedure ClearMagickWand (arg1 : access MagickWand)  -- /usr/include/ImageMagick-6/wand/MagickWand.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "ClearMagickWand";

   procedure MagickWandGenesis  -- /usr/include/ImageMagick-6/wand/MagickWand.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWandGenesis";

   procedure MagickWandTerminus  -- /usr/include/ImageMagick-6/wand/MagickWand.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWandTerminus";

   function MagickRelinquishMemory (arg1 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/wand/MagickWand.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRelinquishMemory";

   procedure MagickResetIterator (arg1 : access MagickWand)  -- /usr/include/ImageMagick-6/wand/MagickWand.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "MagickResetIterator";

   procedure MagickSetFirstIterator (arg1 : access MagickWand)  -- /usr/include/ImageMagick-6/wand/MagickWand.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetFirstIterator";

   procedure MagickSetLastIterator (arg1 : access MagickWand)  -- /usr/include/ImageMagick-6/wand/MagickWand.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetLastIterator";

end ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h;
