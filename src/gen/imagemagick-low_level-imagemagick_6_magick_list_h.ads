pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with Interfaces.C.Strings;


with System;

package ImageMagick.Low_Level.ImageMagick_6_magick_list_h is

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
  --  MagickCore image list methods.
  -- 

   function CloneImageList (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImageList";

   function CloneImages
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImages";

   function DestroyImageList (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImageList";

   function DuplicateImages
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "DuplicateImages";

   function GetFirstImageInList (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "GetFirstImageInList";

   function GetImageFromList (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : long) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageFromList";

   function GetLastImageInList (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "GetLastImageInList";

   function GetNextImageInList (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextImageInList";

   function GetPreviousImageInList (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "GetPreviousImageInList";

   function ImageListToArray (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/list.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "ImageListToArray";

   function NewImageList return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "NewImageList";

   function RemoveImageFromList (arg1 : System.Address) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveImageFromList";

   function RemoveLastImageFromList (arg1 : System.Address) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveLastImageFromList";

   function RemoveFirstImageFromList (arg1 : System.Address) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveFirstImageFromList";

   function SpliceImageIntoList
     (arg1 : System.Address;
      arg2 : size_t;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "SpliceImageIntoList";

   function SplitImageList (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "SplitImageList";

   function SyncNextImageInList (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/list.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "SyncNextImageInList";

   function GetImageListLength (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return size_t  -- /usr/include/ImageMagick-6/magick/list.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageListLength";

   function GetImageIndexInList (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return long  -- /usr/include/ImageMagick-6/magick/list.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageIndexInList";

   procedure AppendImageToList (arg1 : System.Address; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/list.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "AppendImageToList";

   procedure DeleteImageFromList (arg1 : System.Address)  -- /usr/include/ImageMagick-6/magick/list.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteImageFromList";

   procedure DeleteImages
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/list.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteImages";

   procedure InsertImageInList (arg1 : System.Address; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/list.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "InsertImageInList";

   procedure PrependImageToList (arg1 : System.Address; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/list.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "PrependImageToList";

   procedure ReplaceImageInList (arg1 : System.Address; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/list.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "ReplaceImageInList";

   procedure ReplaceImageInListReturnLast (arg1 : System.Address; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/list.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "ReplaceImageInListReturnLast";

   procedure ReverseImageList (arg1 : System.Address)  -- /usr/include/ImageMagick-6/magick/list.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "ReverseImageList";

   procedure SyncImageList (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/list.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "SyncImageList";

end ImageMagick.Low_Level.ImageMagick_6_magick_list_h;
