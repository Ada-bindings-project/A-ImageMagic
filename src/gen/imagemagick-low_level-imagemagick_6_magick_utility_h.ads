pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with Interfaces.C.Extensions;
with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;



package ImageMagick.Low_Level.ImageMagick_6_magick_utility_h is

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
  --  MagickCore utility methods.
  -- 

   type PathType is 
     (UndefinedPath,
      MagickPath,
      RootPath,
      HeadPath,
      TailPath,
      BasePath,
      ExtensionPath,
      SubimagePath,
      CanonicalPath,
      SubcanonicalPath)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/utility.h:37

   function Base64Encode
     (arg1 : access unsigned_char;
      arg2 : size_t;
      arg3 : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/utility.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "Base64Encode";

   function GetPathComponents (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/utility.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "GetPathComponents";

   function ListFiles
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/utility.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "ListFiles";

   function AcquireUniqueFilename (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/utility.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireUniqueFilename";

   function AcquireUniqueSymbolicLink (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/utility.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireUniqueSymbolicLink";

   function ExpandFilenames (arg1 : access int; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/utility.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "ExpandFilenames";

   function GetPathAttributes (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/utility.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GetPathAttributes";

   function GetExecutionPath (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/utility.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "GetExecutionPath";

   function IsPathAccessible (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/utility.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "IsPathAccessible";

   function MultilineCensus (arg1 : Interfaces.C.Strings.chars_ptr) return size_t  -- /usr/include/ImageMagick-6/magick/utility.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "MultilineCensus";

   function GetMagickPageSize return long  -- /usr/include/ImageMagick-6/magick/utility.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickPageSize";

   function Base64Decode (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access size_t) return access unsigned_char  -- /usr/include/ImageMagick-6/magick/utility.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "Base64Decode";

   procedure AppendImageFormat (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/utility.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "AppendImageFormat";

   procedure ChopPathComponents (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : size_t)  -- /usr/include/ImageMagick-6/magick/utility.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ChopPathComponents";

   procedure ExpandFilename (arg1 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/utility.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "ExpandFilename";

   procedure GetPathComponent
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : PathType;
      arg3 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/utility.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "GetPathComponent";

   procedure MagickDelay (arg1 : Extensions.unsigned_long_long)  -- /usr/include/ImageMagick-6/magick/utility.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "MagickDelay";

end ImageMagick.Low_Level.ImageMagick_6_magick_utility_h;
