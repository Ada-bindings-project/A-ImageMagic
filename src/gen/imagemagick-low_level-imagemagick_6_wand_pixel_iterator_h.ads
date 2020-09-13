pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;



with ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h;

with System;

package ImageMagick.Low_Level.ImageMagick_6_wand_pixel_iterator_h is

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
  --  Pixel Iterator Methods.
  -- 

   type u_PixelIterator is null record;   -- incomplete struct

   subtype PixelIterator is u_PixelIterator;  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:29

   function PixelGetIteratorException (arg1 : access constant PixelIterator; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetIteratorException";

   function PixelGetIteratorExceptionType (arg1 : access constant PixelIterator) return ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetIteratorExceptionType";

   function IsPixelIterator (arg1 : access constant PixelIterator) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "IsPixelIterator";

   function PixelClearIteratorException (arg1 : access PixelIterator) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "PixelClearIteratorException";

   function PixelSetIteratorRow (arg1 : access PixelIterator; arg2 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetIteratorRow";

   function PixelSyncIterator (arg1 : access PixelIterator) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSyncIterator";

   function ClonePixelIterator (arg1 : access constant PixelIterator) return access PixelIterator  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ClonePixelIterator";

   function DestroyPixelIterator (arg1 : access PixelIterator) return access PixelIterator  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyPixelIterator";

   function NewPixelIterator (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access PixelIterator  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "NewPixelIterator";

   function NewPixelRegionIterator
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t) return access PixelIterator  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "NewPixelRegionIterator";

   function PixelGetCurrentIteratorRow (arg1 : access PixelIterator; arg2 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetCurrentIteratorRow";

   function PixelGetNextIteratorRow (arg1 : access PixelIterator; arg2 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetNextIteratorRow";

   function PixelGetPreviousIteratorRow (arg1 : access PixelIterator; arg2 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetPreviousIteratorRow";

   function PixelGetIteratorRow (arg1 : access PixelIterator) return long  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetIteratorRow";

   procedure ClearPixelIterator (arg1 : access PixelIterator)  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "ClearPixelIterator";

   procedure PixelResetIterator (arg1 : access PixelIterator)  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "PixelResetIterator";

   procedure PixelSetFirstIteratorRow (arg1 : access PixelIterator)  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetFirstIteratorRow";

   procedure PixelSetLastIteratorRow (arg1 : access PixelIterator)  -- /usr/include/ImageMagick-6/wand/pixel-iterator.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "PixelSetLastIteratorRow";

end ImageMagick.Low_Level.ImageMagick_6_wand_pixel_iterator_h;
