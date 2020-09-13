pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_draw_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;


with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
with ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h;
with ImageMagick.Low_Level.ImageMagick_6_wand_pixel_iterator_h;

with ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h;

package ImageMagick.Low_Level.ImageMagick_6_wand_deprecate_h is

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
  --  MagickCore deprecated methods.
  -- 

   type DrawContext is access all ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.u_DrawingWand;  -- /usr/include/ImageMagick-6/wand/deprecate.h:33

   type u_PixelView is null record;   -- incomplete struct

   subtype PixelView is u_PixelView;  -- /usr/include/ImageMagick-6/wand/deprecate.h:36

   function DrawAllocateWand (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand  -- /usr/include/ImageMagick-6/wand/deprecate.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "DrawAllocateWand";

   type DuplexTransferPixelViewMethod is access function
        (arg1 : access constant PixelView;
         arg2 : access constant PixelView;
         arg3 : access PixelView;
         arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/deprecate.h:42

   type GetPixelViewMethod is access function (arg1 : access constant PixelView; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/deprecate.h:44

   type SetPixelViewMethod is access function (arg1 : access PixelView; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/deprecate.h:45

   type TransferPixelViewMethod is access function
        (arg1 : access constant PixelView;
         arg2 : access PixelView;
         arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/deprecate.h:46

   type UpdatePixelViewMethod is access function (arg1 : access PixelView; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/deprecate.h:47

   function GetPixelViewException (arg1 : access constant PixelView; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/deprecate.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelViewException";

   function DrawGetFillAlpha (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/deprecate.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFillAlpha";

   function DrawGetStrokeAlpha (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/deprecate.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeAlpha";

   function DrawPeekGraphicWand (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand) return access ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo  -- /usr/include/ImageMagick-6/wand/deprecate.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPeekGraphicWand";

   function MagickDescribeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/deprecate.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDescribeImage";

   function MagickGetImageAttribute (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/deprecate.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageAttribute";

   function PixelIteratorGetException (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_iterator_h.PixelIterator; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/deprecate.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "PixelIteratorGetException";

   function MagickGetImageIndex (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return long  -- /usr/include/ImageMagick-6/wand/deprecate.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageIndex";

   function DuplexTransferPixelViewIterator
     (arg1 : access PixelView;
      arg2 : access PixelView;
      arg3 : access PixelView;
      arg4 : DuplexTransferPixelViewMethod;
      arg5 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "DuplexTransferPixelViewIterator";

   function GetPixelViewIterator
     (arg1 : access PixelView;
      arg2 : GetPixelViewMethod;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelViewIterator";

   function IsPixelView (arg1 : access constant PixelView) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "IsPixelView";

   function MagickClipPathImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "MagickClipPathImage";

   function MagickColorFloodfillImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : double;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg5 : long;
      arg6 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "MagickColorFloodfillImage";

   function MagickGetImageChannelExtrema
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access size_t;
      arg4 : access size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageChannelExtrema";

   function MagickGetImageExtrema
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access size_t;
      arg3 : access size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageExtrema";

   function MagickGetImageMatte (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageMatte";

   function MagickGetImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      arg8 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImagePixels";

   function MagickMapImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMapImage";

   function MagickMatteFloodfillImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : double;
      arg3 : double;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg5 : long;
      arg6 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMatteFloodfillImage";

   function MagickOpaqueImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "MagickOpaqueImage";

   function MagickPaintFloodfillImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg4 : double;
      arg5 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg6 : long;
      arg7 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPaintFloodfillImage";

   function MagickPaintOpaqueImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPaintOpaqueImage";

   function MagickPaintOpaqueImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg5 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPaintOpaqueImageChannel";

   function MagickPaintTransparentImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "MagickPaintTransparentImage";

   function MagickRadialBlurImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRadialBlurImage";

   function MagickRadialBlurImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : unsigned;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRadialBlurImageChannel";

   function MagickRecolorImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRecolorImage";

   function MagickSetImageAttribute
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageAttribute";

   function MagickSetImageIndex (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageIndex";

   function MagickSetImageOption
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImageOption";

   function MagickSetImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      arg8 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "MagickSetImagePixels";

   function MagickTransparentImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand;
      arg3 : double;
      arg4 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "MagickTransparentImage";

   function SetPixelViewIterator
     (arg1 : access PixelView;
      arg2 : SetPixelViewMethod;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "SetPixelViewIterator";

   function TransferPixelViewIterator
     (arg1 : access PixelView;
      arg2 : access PixelView;
      arg3 : TransferPixelViewMethod;
      arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "TransferPixelViewIterator";

   function UpdatePixelViewIterator
     (arg1 : access PixelView;
      arg2 : UpdatePixelViewMethod;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/deprecate.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "UpdatePixelViewIterator";

   function GetPixelViewWand (arg1 : access constant PixelView) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/deprecate.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelViewWand";

   function MagickAverageImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/deprecate.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "MagickAverageImages";

   function MagickFlattenImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/deprecate.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "MagickFlattenImages";

   function MagickMaximumImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/deprecate.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMaximumImages";

   function MagickMinimumImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/deprecate.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMinimumImages";

   function MagickMosaicImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/deprecate.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMosaicImages";

   function MagickRegionOfInterestImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : long;
      arg5 : long) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/deprecate.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "MagickRegionOfInterestImage";

   function MagickGetImageSize (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return Extensions.unsigned_long_long  -- /usr/include/ImageMagick-6/wand/deprecate.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "MagickGetImageSize";

   function ClonePixelView (arg1 : access constant PixelView) return access PixelView  -- /usr/include/ImageMagick-6/wand/deprecate.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "ClonePixelView";

   function DestroyPixelView (arg1 : access PixelView) return access PixelView  -- /usr/include/ImageMagick-6/wand/deprecate.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyPixelView";

   function NewPixelView (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access PixelView  -- /usr/include/ImageMagick-6/wand/deprecate.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "NewPixelView";

   function NewPixelViewRegion
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t) return access PixelView  -- /usr/include/ImageMagick-6/wand/deprecate.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "NewPixelViewRegion";

   function GetPixelViewPixels (arg1 : access constant PixelView) return System.Address  -- /usr/include/ImageMagick-6/wand/deprecate.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelViewPixels";

   function PixelGetNextRow (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_iterator_h.PixelIterator) return System.Address  -- /usr/include/ImageMagick-6/wand/deprecate.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "PixelGetNextRow";

   function GetPixelViewHeight (arg1 : access constant PixelView) return size_t  -- /usr/include/ImageMagick-6/wand/deprecate.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelViewHeight";

   function GetPixelViewWidth (arg1 : access constant PixelView) return size_t  -- /usr/include/ImageMagick-6/wand/deprecate.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelViewWidth";

   function GetPixelViewX (arg1 : access constant PixelView) return long  -- /usr/include/ImageMagick-6/wand/deprecate.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelViewX";

   function GetPixelViewY (arg1 : access constant PixelView) return long  -- /usr/include/ImageMagick-6/wand/deprecate.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelViewY";

   function MagickWriteImageBlob (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand; arg2 : access size_t) return access unsigned_char  -- /usr/include/ImageMagick-6/wand/deprecate.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "MagickWriteImageBlob";

   procedure DrawPopGraphicContext (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand)  -- /usr/include/ImageMagick-6/wand/deprecate.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPopGraphicContext";

   procedure DrawPushGraphicContext (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand)  -- /usr/include/ImageMagick-6/wand/deprecate.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPushGraphicContext";

   procedure DrawSetFillAlpha (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/deprecate.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFillAlpha";

   procedure DrawSetStrokeAlpha (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h.DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/deprecate.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeAlpha";

end ImageMagick.Low_Level.ImageMagick_6_wand_deprecate_h;
