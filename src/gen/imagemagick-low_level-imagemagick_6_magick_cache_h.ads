pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with Interfaces.C.Strings;
with Interfaces.C.Extensions;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;


with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_cache_h is

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
  --  MagickCore cache methods.
  -- 

   type CacheType is 
     (UndefinedCache,
      MemoryCache,
      MapCache,
      DiskCache,
      PingCache,
      DistributedCache)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/cache.h:35

   function GetImagePixelCacheType (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return CacheType  -- /usr/include/ImageMagick-6/magick/cache.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "GetImagePixelCacheType";

   function GetPixelCacheFilename (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/cache.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelCacheFilename";

   function GetVirtualIndexQueue (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/cache.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "GetVirtualIndexQueue";

   function GetVirtualPixels
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "GetVirtualPixels";

   function GetVirtualPixelQueue (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "GetVirtualPixelQueue";

   function AcquirePixelCachePixels
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access Extensions.unsigned_long_long;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/cache.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "AcquirePixelCachePixels";

   function GetAuthenticIndexQueue (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/cache.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "GetAuthenticIndexQueue";

   function CacheComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "CacheComponentGenesis";

   function GetOneVirtualMagickPixel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "GetOneVirtualMagickPixel";

   function GetOneVirtualPixel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "GetOneVirtualPixel";

   function GetOneVirtualMethodPixel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod;
      arg3 : long;
      arg4 : long;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "GetOneVirtualMethodPixel";

   function GetOneAuthenticPixel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "GetOneAuthenticPixel";

   function PersistPixelCache
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg4 : access Long_Long_Integer;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "PersistPixelCache";

   function SyncAuthenticPixels (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/cache.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "SyncAuthenticPixels";

   function GetImageExtent (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return Extensions.unsigned_long_long  -- /usr/include/ImageMagick-6/magick/cache.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageExtent";

   function GetAuthenticPixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "GetAuthenticPixels";

   function GetAuthenticPixelQueue (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "GetAuthenticPixelQueue";

   function QueueAuthenticPixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/cache.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "QueueAuthenticPixels";

   function GetPixelCacheVirtualMethod (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod  -- /usr/include/ImageMagick-6/magick/cache.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelCacheVirtualMethod";

   function SetPixelCacheVirtualMethod (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod  -- /usr/include/ImageMagick-6/magick/cache.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "SetPixelCacheVirtualMethod";

   procedure CacheComponentTerminus  -- /usr/include/ImageMagick-6/magick/cache.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "CacheComponentTerminus";

   function GetPixelCachePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access Extensions.unsigned_long_long;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/cache.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelCachePixels";

end ImageMagick.Low_Level.ImageMagick_6_magick_cache_h;
