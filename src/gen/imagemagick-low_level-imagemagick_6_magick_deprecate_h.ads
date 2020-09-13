pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;


with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;


limited with Interfaces.C_Streams;
with System;
with Interfaces.C.Extensions;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_quantize_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_draw_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_registry_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_deprecate_h is

   --  arg-macro: procedure Downscale (quantum)
   --    ScaleQuantumToChar(quantum)
   --  unsupported macro: LABColorspace LabColorspace
   --  arg-macro: procedure CompressPixelGamma (pixel)
   --    DecodePixelGamma(pixel)
   --  arg-macro: procedure DecodesRGBGamma (pixel)
   --    DecodePixelGamma(pixel)
   --  arg-macro: procedure EncodesRGBGamma (pixel)
   --    EncodePixelGamma(pixel)
   --  arg-macro: procedure ExpandPixelGamma (pixel)
   --    EncodePixelGamma(pixel)
   --  arg-macro: procedure Intensity (color)
   --    PixelIntensityToQuantum(color)
   --  arg-macro: procedure LiberateUniqueFileResource (resource)
   --    RelinquishUniqueFileResource(resource)
   --  arg-macro: procedure LiberateMagickResource (resource)
   --    RelinquishMagickResource(resource)
   --  arg-macro: procedure LiberateSemaphore (semaphore)
   --    RelinquishSemaphore(semaphore)
   MagickHuge : constant := 3.4e+38;  --  /usr/include/ImageMagick-6/magick/deprecate.h:58
   --  unsupported macro: MaxRGB QuantumRange
   --  unsupported macro: QuantumDepth MAGICKCORE_QUANTUM_DEPTH
   --  unsupported macro: RunlengthEncodedCompression RLECompression
   --  arg-macro: procedure Upscale (value)
   --    ScaleCharToQuantum(value)
   --  arg-macro: procedure XDownscale (value)
   --    ScaleShortToQuantum(value)
   --  arg-macro: procedure XUpscale (quantum)
   --    ScaleQuantumToShort(quantum)

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

   type MagickLayerMethod is 
     (UndefinedMagickLayerMethod)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/deprecate.h:69

   subtype ExtendedSignedIntegralType is Long_Long_Integer;  -- /usr/include/ImageMagick-6/magick/deprecate.h:71

   subtype ExtendedUnsignedIntegralType is Extensions.unsigned_long_long;  -- /usr/include/ImageMagick-6/magick/deprecate.h:72

   subtype ExtendedRationalType is double;  -- /usr/include/ImageMagick-6/magick/deprecate.h:73

   type u_ViewInfo is null record;   -- incomplete struct

   subtype ViewInfo is u_ViewInfo;  -- /usr/include/ImageMagick-6/magick/deprecate.h:74

   type MonitorHandler is access function
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : Long_Long_Integer;
         arg3 : Extensions.unsigned_long_long;
         arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/deprecate.h:77

   type u_ImageAttribute;
   type u_ImageAttribute is record
      key : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/deprecate.h:83
      value : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/deprecate.h:84
      compression : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/deprecate.h:87
      previous : access u_ImageAttribute;  -- /usr/include/ImageMagick-6/magick/deprecate.h:90
      next : access u_ImageAttribute;  -- /usr/include/ImageMagick-6/magick/deprecate.h:91
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/deprecate.h:80

  -- deprecated  
   subtype ImageAttribute is u_ImageAttribute;  -- /usr/include/ImageMagick-6/magick/deprecate.h:92

   function CloseCacheView (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView) return access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView  -- /usr/include/ImageMagick-6/magick/deprecate.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "CloseCacheView";

   function OpenCacheView (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView  -- /usr/include/ImageMagick-6/magick/deprecate.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "OpenCacheView";

   function AllocateString (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/deprecate.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "AllocateString";

   function InterpretImageAttributes
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/deprecate.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "InterpretImageAttributes";

   function PostscriptGeometry (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/deprecate.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "PostscriptGeometry";

   function TranslateText
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/deprecate.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "TranslateText";

   function GetImageAttribute (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return access constant ImageAttribute  -- /usr/include/ImageMagick-6/magick/deprecate.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageAttribute";

   function GetImageClippingPathAttribute (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access constant ImageAttribute  -- /usr/include/ImageMagick-6/magick/deprecate.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageClippingPathAttribute";

   function GetNextImageAttribute (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access constant ImageAttribute  -- /usr/include/ImageMagick-6/magick/deprecate.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextImageAttribute";

   function AcquireCacheViewIndexes (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/deprecate.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireCacheViewIndexes";

   function AcquireIndexes (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/deprecate.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireIndexes";

   function AcquirePixels (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "AcquirePixels";

   function AcquireCacheViewPixels
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireCacheViewPixels";

   function AcquireImagePixels
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireImagePixels";

   function OpenMagickStream (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return access Interfaces.C_Streams.FILEs  -- /usr/include/ImageMagick-6/magick/deprecate.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "OpenMagickStream";

   function AllocateImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "AllocateImage";

   function AverageImages (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "AverageImages";

   function ExtractSubimageFromImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "ExtractSubimageFromImage";

   function GetImageFromMagickRegistry
     (arg1 : Interfaces.C.Strings.chars_ptr;
      id : access long;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageFromMagickRegistry";

   function GetImageList
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageList";

   function GetNextImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextImage";

   function GetPreviousImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "GetPreviousImage";

   function FlattenImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "FlattenImages";

   function MaximumImages (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "MaximumImages";

   function MedianFilterImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "MedianFilterImage";

   function ModeImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "ModeImage";

   function MinimumImages (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "MinimumImages";

   function MosaicImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "MosaicImages";

   function PopImageList (arg1 : System.Address) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "PopImageList";

   function RadialBlurImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "RadialBlurImage";

   function RadialBlurImageChannel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "RadialBlurImageChannel";

   function RecolorImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : access double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "RecolorImage";

   function ReduceNoiseImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "ReduceNoiseImage";

   function ShiftImageList (arg1 : System.Address) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "ShiftImageList";

   function SpliceImageList
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : size_t;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "SpliceImageList";

   function ZoomImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/deprecate.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "ZoomImage";

   function GetCacheViewIndexes (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/deprecate.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewIndexes";

   function GetIndexes (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/deprecate.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "GetIndexes";

   function ValidateColormapIndex (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : size_t) return unsigned_short  -- /usr/include/ImageMagick-6/magick/deprecate.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "ValidateColormapIndex";

   function GetImageGeometry
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : unsigned;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo) return int  -- /usr/include/ImageMagick-6/magick/deprecate.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageGeometry";

   function ParseImageGeometry
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access long;
      arg3 : access long;
      arg4 : access size_t;
      arg5 : access size_t) return int  -- /usr/include/ImageMagick-6/magick/deprecate.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "ParseImageGeometry";

   function SystemCommand
     (arg1 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return int  -- /usr/include/ImageMagick-6/magick/deprecate.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "SystemCommand";

   function AcquireOneCacheViewPixel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireOneCacheViewPixel";

   function AcquireOneCacheViewVirtualPixel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod;
      arg3 : long;
      arg4 : long;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireOneCacheViewVirtualPixel";

   function AffinityImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_quantize_h.QuantizeInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "AffinityImage";

   function AffinityImages
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_quantize_h.QuantizeInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "AffinityImages";

   function AllocateImageColormap (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "AllocateImageColormap";

   function ClipPathImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "ClipPathImage";

   function CloneImageAttributes (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImageAttributes";

   function ColorFloodfillImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg4 : long;
      arg5 : long;
      arg6 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PaintMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "ColorFloodfillImage";

   function ConstituteComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "ConstituteComponentGenesis";

   function DeleteImageAttribute (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteImageAttribute";

   function DeleteMagickRegistry (arg1 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteMagickRegistry";

   function DescribeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access Interfaces.C_Streams.FILEs;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "DescribeImage";

   function FormatImageAttribute
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "FormatImageAttribute";

   function FormatImageAttributeList
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "FormatImageAttributeList";

   function FormatImagePropertyList
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "FormatImagePropertyList";

   function FuzzyColorCompare
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "FuzzyColorCompare";

   function FuzzyOpacityCompare
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "FuzzyOpacityCompare";

   function InitializeModuleList (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "InitializeModuleList";

   function IsMagickInstantiated return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "IsMagickInstantiated";

   function LevelImageColors
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "LevelImageColors";

   function LoadMimeLists (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "LoadMimeLists";

   function MagickMonitor
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Long_Long_Integer;
      arg3 : Extensions.unsigned_long_long;
      arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "MagickMonitor";

   function MapImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "MapImage";

   function MapImages
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "MapImages";

   function MatteFloodfillImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : unsigned_short;
      arg4 : long;
      arg5 : long;
      arg6 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PaintMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "MatteFloodfillImage";

   function OpaqueImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "OpaqueImage";

   function PaintFloodfillImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg4 : long;
      arg5 : long;
      arg6 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PaintMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "PaintFloodfillImage";

   function PaintOpaqueImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "PaintOpaqueImage";

   function PaintOpaqueImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "PaintOpaqueImageChannel";

   function PaintTransparentImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg3 : unsigned_short) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "PaintTransparentImage";

   function SetExceptionInfo (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "SetExceptionInfo";

   function SetImageAttribute
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageAttribute";

   function SyncCacheViewPixels (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "SyncCacheViewPixels";

   function SyncImagePixels (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "SyncImagePixels";

   function TransparentImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : unsigned_short) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/deprecate.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "TransparentImage";

   function AcquireOneMagickPixel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireOneMagickPixel";

   function GetMonitorHandler return MonitorHandler  -- /usr/include/ImageMagick-6/magick/deprecate.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "GetMonitorHandler";

   function SetMonitorHandler (arg1 : MonitorHandler) return MonitorHandler  -- /usr/include/ImageMagick-6/magick/deprecate.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "SetMonitorHandler";

   function SizeBlob (the_image : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return Long_Long_Integer  -- /usr/include/ImageMagick-6/magick/deprecate.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "SizeBlob";

   function InterpolatePixelColor
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.InterpolatePixelMethod;
      arg4 : double;
      arg5 : double;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "InterpolatePixelColor";

   function ParseSizeGeometry
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "ParseSizeGeometry";

   function AcquireOnePixel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireOnePixel";

   function AcquireOneVirtualPixel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod;
      arg3 : long;
      arg4 : long;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireOneVirtualPixel";

   function GetCacheView
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheView";

   function GetCacheViewPixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewPixels";

   function GetImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "GetImagePixels";

   function GetOnePixel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "GetOnePixel";

   function GetPixels (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixels";

   function SetCacheViewPixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "SetCacheViewPixels";

   function SetImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/deprecate.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "SetImagePixels";

   function InversesRGBCompandor (arg1 : double) return double  -- /usr/include/ImageMagick-6/magick/deprecate.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "InversesRGBCompandor";

   function sRGBCompandor (arg1 : double) return double  -- /usr/include/ImageMagick-6/magick/deprecate.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "sRGBCompandor";

   function GetImageListSize (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return size_t  -- /usr/include/ImageMagick-6/magick/deprecate.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageListSize";

   function PopImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h.QuantumType;
      arg3 : access unsigned_char) return size_t  -- /usr/include/ImageMagick-6/magick/deprecate.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "PopImagePixels";

   function PushImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h.QuantumType;
      arg3 : access unsigned_char) return size_t  -- /usr/include/ImageMagick-6/magick/deprecate.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "PushImagePixels";

   function FormatMagickString
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : size_t;
      arg3 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return long  -- /usr/include/ImageMagick-6/magick/deprecate.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "FormatMagickString";

   function FormatMagickStringList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : size_t;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access System.Address) return long  -- /usr/include/ImageMagick-6/magick/deprecate.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "FormatMagickStringList";

   function GetImageListIndex (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return long  -- /usr/include/ImageMagick-6/magick/deprecate.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageListIndex";

   function SetMagickRegistry
     (arg1 : ImageMagick.Low_Level.ImageMagick_6_magick_registry_h.RegistryType;
      arg2 : System.Address;
      arg3 : size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return long  -- /usr/include/ImageMagick-6/magick/deprecate.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "SetMagickRegistry";

   function ChannelImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : unsigned) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "ChannelImage";

   function ChannelThresholdImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "ChannelThresholdImage";

   function DispatchImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      arg8 : System.Address;
      arg9 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "DispatchImage";

   function FuzzyColorMatch
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg3 : double) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "FuzzyColorMatch";

   function GetNumberScenes (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "GetNumberScenes";

   function GetMagickGeometry
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access long;
      arg3 : access long;
      arg4 : access size_t;
      arg5 : access size_t) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickGeometry";

   function IsSubimage (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : unsigned) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "IsSubimage";

   function PushImageList
     (arg1 : System.Address;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "PushImageList";

   function QuantizationError (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "QuantizationError";

   function RandomChannelThresholdImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:312
   with Import => True, 
        Convention => C, 
        External_Name => "RandomChannelThresholdImage";

   function SetImageList
     (arg1 : System.Address;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageList";

   function TransformColorspace (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "TransformColorspace";

   function ThresholdImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : double) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "ThresholdImage";

   function ThresholdImageChannel (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "ThresholdImageChannel";

   function UnshiftImageList
     (arg1 : System.Address;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/deprecate.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "UnshiftImageList";

   function AcquireMemory (arg1 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/deprecate.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireMemory";

   procedure AcquireSemaphoreInfo (arg1 : System.Address)  -- /usr/include/ImageMagick-6/magick/deprecate.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireSemaphoreInfo";

   procedure AllocateNextImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/deprecate.h:326
   with Import => True, 
        Convention => C, 
        External_Name => "AllocateNextImage";

   function CloneMemory
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/deprecate.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "CloneMemory";

   procedure ConstituteComponentTerminus  -- /usr/include/ImageMagick-6/magick/deprecate.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "ConstituteComponentTerminus";

   function CropImageToHBITMAP
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/deprecate.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "CropImageToHBITMAP";

   procedure DestroyConstitute  -- /usr/include/ImageMagick-6/magick/deprecate.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyConstitute";

   procedure DestroyImageAttributes (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/deprecate.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImageAttributes";

   procedure DestroyImages (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/deprecate.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImages";

   procedure DestroyMagick  -- /usr/include/ImageMagick-6/magick/deprecate.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyMagick";

   procedure DestroyMagickRegistry  -- /usr/include/ImageMagick-6/magick/deprecate.h:334
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyMagickRegistry";

   function GetConfigureBlob
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/deprecate.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "GetConfigureBlob";

   procedure GetExceptionInfo (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/deprecate.h:337
   with Import => True, 
        Convention => C, 
        External_Name => "GetExceptionInfo";

   function GetMagickRegistry
     (arg1 : long;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_registry_h.RegistryType;
      arg3 : access size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/deprecate.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickRegistry";

   procedure GetTokenToken
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/deprecate.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "GetTokenToken";

   procedure IdentityAffine (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.AffineMatrix)  -- /usr/include/ImageMagick-6/magick/deprecate.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "IdentityAffine";

   function ImageToHBITMAP (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/deprecate.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "ImageToHBITMAP";

   procedure LiberateMemory (arg1 : System.Address)  -- /usr/include/ImageMagick-6/magick/deprecate.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "LiberateMemory";

   procedure LiberateSemaphoreInfo (arg1 : System.Address)  -- /usr/include/ImageMagick-6/magick/deprecate.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "LiberateSemaphoreInfo";

   procedure FormatString (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      )  -- /usr/include/ImageMagick-6/magick/deprecate.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "FormatString";

   procedure FormatStringList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access System.Address)  -- /usr/include/ImageMagick-6/magick/deprecate.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "FormatStringList";

   procedure HSLTransform
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/deprecate.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "HSLTransform";

   procedure InitializeMagick (arg1 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/deprecate.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "InitializeMagick";

   procedure MagickIncarnate (arg1 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/deprecate.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "MagickIncarnate";

   procedure ReacquireMemory (arg1 : System.Address; arg2 : size_t)  -- /usr/include/ImageMagick-6/magick/deprecate.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "ReacquireMemory";

   procedure RelinquishSemaphoreInfo (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h.SemaphoreInfo)  -- /usr/include/ImageMagick-6/magick/deprecate.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "RelinquishSemaphoreInfo";

   procedure ResetImageAttributeIterator (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/deprecate.h:357
   with Import => True, 
        Convention => C, 
        External_Name => "ResetImageAttributeIterator";

   procedure SetCacheThreshold (arg1 : size_t)  -- /usr/include/ImageMagick-6/magick/deprecate.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "SetCacheThreshold";

   procedure SetImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : unsigned_short)  -- /usr/include/ImageMagick-6/magick/deprecate.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "SetImage";

   procedure Strip (arg1 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/deprecate.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "Strip";

   procedure TemporaryFilename (arg1 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/deprecate.h:361
   with Import => True, 
        Convention => C, 
        External_Name => "TemporaryFilename";

   procedure TransformHSL
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/deprecate.h:362
   with Import => True, 
        Convention => C, 
        External_Name => "TransformHSL";

  --  Inline methods.
  -- 

   function MagickEpsilonReciprocal (x : double) return double  -- /usr/include/ImageMagick-6/magick/deprecate.h:368
   with Import => True, 
        Convention => C, 
        External_Name => "MagickEpsilonReciprocal";

   function PixelIntensityToQuantum (the_image : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; pixel : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return unsigned_short  -- /usr/include/ImageMagick-6/magick/deprecate.h:379
   with Import => True, 
        Convention => C, 
        External_Name => "PixelIntensityToQuantum";

end ImageMagick.Low_Level.ImageMagick_6_magick_deprecate_h;
