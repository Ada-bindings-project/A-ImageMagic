pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_memory_uh is

  --  Copyright 1999-2020 ImageMagick Studio LLC, a non-profit organization
  --  dedicated to making software imaging solutions freely available.
  --  You may not use this file except in compliance with the License.  You may
  --  obtain a copy of the License at
  --    https://imagemagick.org/script/license.php
  --  Unless required by applicable law or agreed to in writing, software
  --  distributed under the License is distributed on an "AS IS" BASIS,
  --  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  --  See the License for the specific language governing permissions and
  --  limitations under the License.
  --  MagickCore memory methods.
  -- 

   type u_MemoryInfo is null record;   -- incomplete struct

   subtype MemoryInfo is u_MemoryInfo;  -- /usr/include/ImageMagick-6/magick/memory_.h:29

   type AcquireMemoryHandler is access function (arg1 : size_t) return System.Address
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/memory_.h:32

   type DestroyMemoryHandler is access procedure (arg1 : System.Address)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/memory_.h:33

   type ResizeMemoryHandler is access function (arg1 : System.Address; arg2 : size_t) return System.Address
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/memory_.h:34

   type AcquireAlignedMemoryHandler is access function (arg1 : size_t; arg2 : size_t) return System.Address
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/memory_.h:35

   type RelinquishAlignedMemoryHandler is access procedure (arg1 : System.Address)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/memory_.h:36

   function AcquireVirtualMemory (arg1 : size_t; arg2 : size_t) return access MemoryInfo  -- /usr/include/ImageMagick-6/magick/memory_.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireVirtualMemory";

   function RelinquishVirtualMemory (arg1 : access MemoryInfo) return access MemoryInfo  -- /usr/include/ImageMagick-6/magick/memory_.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "RelinquishVirtualMemory";

   function GetMaxMemoryRequest return size_t  -- /usr/include/ImageMagick-6/magick/memory_.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "GetMaxMemoryRequest";

   function AcquireAlignedMemory (arg1 : size_t; arg2 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireAlignedMemory";

   function AcquireMagickMemory (arg1 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireMagickMemory";

   function AcquireCriticalMemory (arg1 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireCriticalMemory";

   function AcquireQuantumMemory (arg1 : size_t; arg2 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireQuantumMemory";

   function CopyMagickMemory
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "CopyMagickMemory";

   procedure DestroyMagickMemory  -- /usr/include/ImageMagick-6/magick/memory_.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyMagickMemory";

   procedure GetMagickMemoryMethods
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : System.Address)  -- /usr/include/ImageMagick-6/magick/memory_.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickMemoryMethods";

   function GetVirtualMemoryBlob (arg1 : access constant MemoryInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "GetVirtualMemoryBlob";

   function RelinquishAlignedMemory (arg1 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "RelinquishAlignedMemory";

   function RelinquishMagickMemory (arg1 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "RelinquishMagickMemory";

   function ResetMagickMemory
     (arg1 : System.Address;
      arg2 : int;
      arg3 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "ResetMagickMemory";

   function ResizeMagickMemory (arg1 : System.Address; arg2 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "ResizeMagickMemory";

   function ResizeQuantumMemory
     (arg1 : System.Address;
      arg2 : size_t;
      arg3 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/memory_.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "ResizeQuantumMemory";

   procedure SetMagickAlignedMemoryMethods (arg1 : AcquireAlignedMemoryHandler; arg2 : RelinquishAlignedMemoryHandler)  -- /usr/include/ImageMagick-6/magick/memory_.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "SetMagickAlignedMemoryMethods";

   procedure SetMagickMemoryMethods
     (arg1 : AcquireMemoryHandler;
      arg2 : ResizeMemoryHandler;
      arg3 : DestroyMemoryHandler)  -- /usr/include/ImageMagick-6/magick/memory_.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "SetMagickMemoryMethods";

   function HeapOverflowSanityCheck (count : size_t; quantum : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/memory_.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "HeapOverflowSanityCheck";

   function HeapOverflowSanityCheckGetSize
     (count : size_t;
      quantum : size_t;
      extent : access size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/memory_.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "HeapOverflowSanityCheckGetSize";

end ImageMagick.Low_Level.ImageMagick_6_magick_memory_uh;
