pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C.Extensions;
with Interfaces.C; use Interfaces.C;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h;



package ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h is

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
  --  MagickCore cache view methods.
  -- 

  -- deprecated  
   type VirtualPixelMethod is 
     (UndefinedVirtualPixelMethod,
      BackgroundVirtualPixelMethod,
      ConstantVirtualPixelMethod,
      DitherVirtualPixelMethod,
      EdgeVirtualPixelMethod,
      MirrorVirtualPixelMethod,
      RandomVirtualPixelMethod,
      TileVirtualPixelMethod,
      TransparentVirtualPixelMethod,
      MaskVirtualPixelMethod,
      BlackVirtualPixelMethod,
      GrayVirtualPixelMethod,
      WhiteVirtualPixelMethod,
      HorizontalTileVirtualPixelMethod,
      VerticalTileVirtualPixelMethod,
      HorizontalTileEdgeVirtualPixelMethod,
      VerticalTileEdgeVirtualPixelMethod,
      CheckerTileVirtualPixelMethod)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/cache-view.h:47

   subtype CacheView is ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.u_CacheView;  -- /usr/include/ImageMagick-6/magick/cache-view.h:50

   function AcquireAuthenticCacheView (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access CacheView  -- /usr/include/ImageMagick-6/magick/cache-view.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireAuthenticCacheView";

   function AcquireCacheView (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access CacheView  -- /usr/include/ImageMagick-6/magick/cache-view.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireCacheView";

   function AcquireVirtualCacheView (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access CacheView  -- /usr/include/ImageMagick-6/magick/cache-view.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireVirtualCacheView";

   function CloneCacheView (arg1 : access constant CacheView) return access CacheView  -- /usr/include/ImageMagick-6/magick/cache-view.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "CloneCacheView";

   function DestroyCacheView (arg1 : access CacheView) return access CacheView  -- /usr/include/ImageMagick-6/magick/cache-view.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyCacheView";

   function GetCacheViewStorageClass (arg1 : access constant CacheView) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.ClassType  -- /usr/include/ImageMagick-6/magick/cache-view.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewStorageClass";

   function GetCacheViewColorspace (arg1 : access constant CacheView) return ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType  -- /usr/include/ImageMagick-6/magick/cache-view.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewColorspace";

   function GetCacheViewVirtualIndexQueue (arg1 : access constant CacheView) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/cache-view.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewVirtualIndexQueue";

   function GetCacheViewVirtualPixels
     (arg1 : access constant CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache-view.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewVirtualPixels";

   function GetCacheViewVirtualPixelQueue (arg1 : access constant CacheView) return access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache-view.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewVirtualPixelQueue";

   function GetCacheViewException (arg1 : access constant CacheView) return access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo  -- /usr/include/ImageMagick-6/magick/cache-view.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewException";

   function GetCacheViewAuthenticIndexQueue (arg1 : access CacheView) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/cache-view.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewAuthenticIndexQueue";

   function GetOneCacheViewAuthenticPixel
     (arg1 : access constant CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache-view.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "GetOneCacheViewAuthenticPixel";

   function GetOneCacheViewVirtualMethodPixel
     (arg1 : access constant CacheView;
      arg2 : VirtualPixelMethod;
      arg3 : long;
      arg4 : long;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache-view.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "GetOneCacheViewVirtualMethodPixel";

   function GetOneCacheViewVirtualPixel
     (arg1 : access constant CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache-view.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "GetOneCacheViewVirtualPixel";

   function SetCacheViewStorageClass (arg1 : access CacheView; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.ClassType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache-view.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "SetCacheViewStorageClass";

   function SetCacheViewVirtualPixelMethod (arg1 : access CacheView; arg2 : VirtualPixelMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache-view.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "SetCacheViewVirtualPixelMethod";

   function SyncCacheViewAuthenticPixels (arg1 : access CacheView; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache-view.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "SyncCacheViewAuthenticPixels";

   function GetCacheViewExtent (arg1 : access constant CacheView) return Extensions.unsigned_long_long  -- /usr/include/ImageMagick-6/magick/cache-view.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewExtent";

   function GetCacheViewChannels (arg1 : access constant CacheView) return size_t  -- /usr/include/ImageMagick-6/magick/cache-view.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewChannels";

   function GetCacheViewAuthenticPixelQueue (arg1 : access CacheView) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache-view.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewAuthenticPixelQueue";

   function GetCacheViewAuthenticPixels
     (arg1 : access CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache-view.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "GetCacheViewAuthenticPixels";

   function QueueCacheViewAuthenticPixels
     (arg1 : access CacheView;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache-view.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "QueueCacheViewAuthenticPixels";

end ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h;
