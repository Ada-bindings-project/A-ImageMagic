pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

limited with Interfaces.C_Streams;
with System;

with Interfaces.C.Strings;
with Interfaces.C.Extensions;
with ImageMagick.Low_Level.ImageMagick_6_magick_stream_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_blob_h is

   MagickMaxBufferExtent : constant := 81920;  --  /usr/include/ImageMagick-6/magick/blob.h:28
   MagickMinBufferExtent : constant := 16384;  --  /usr/include/ImageMagick-6/magick/blob.h:29

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
  --  MagickCore Binary Large OBjects methods.
  -- 

   type MapMode is 
     (ReadMode,
      WriteMode,
      IOMode,
      PersistMode)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/blob.h:37

   function GetBlobFileHandle (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access Interfaces.C_Streams.FILEs  -- /usr/include/ImageMagick-6/magick/blob.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "GetBlobFileHandle";

   function BlobToImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : System.Address;
      arg3 : size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/blob.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "BlobToImage";

   function PingBlob
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : System.Address;
      arg3 : size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/blob.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "PingBlob";

   function BlobToFile
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/blob.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "BlobToFile";

   function FileToImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/blob.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "FileToImage";

   function GetBlobError (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/blob.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "GetBlobError";

   function ImageToFile
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/blob.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "ImageToFile";

   function InjectImageBlob
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg4 : Interfaces.C.Strings.chars_ptr;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/blob.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "InjectImageBlob";

   function IsBlobExempt (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/blob.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "IsBlobExempt";

   function IsBlobSeekable (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/blob.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "IsBlobSeekable";

   function IsBlobTemporary (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/blob.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "IsBlobTemporary";

   function GetBlobSize (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return Extensions.unsigned_long_long  -- /usr/include/ImageMagick-6/magick/blob.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "GetBlobSize";

   function GetBlobStreamHandler (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_stream_h.StreamHandler  -- /usr/include/ImageMagick-6/magick/blob.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "GetBlobStreamHandler";

   function FileToBlob
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : size_t;
      arg3 : access size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access unsigned_char  -- /usr/include/ImageMagick-6/magick/blob.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "FileToBlob";

   function GetBlobStreamData (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access unsigned_char  -- /usr/include/ImageMagick-6/magick/blob.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "GetBlobStreamData";

   function ImageToBlob
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access unsigned_char  -- /usr/include/ImageMagick-6/magick/blob.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "ImageToBlob";

   function ImagesToBlob
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access unsigned_char  -- /usr/include/ImageMagick-6/magick/blob.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "ImagesToBlob";

   procedure DestroyBlob (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/blob.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyBlob";

   procedure DuplicateBlob (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/blob.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "DuplicateBlob";

   procedure SetBlobExempt (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType)  -- /usr/include/ImageMagick-6/magick/blob.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "SetBlobExempt";

end ImageMagick.Low_Level.ImageMagick_6_magick_blob_h;
