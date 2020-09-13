pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;


with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;
with Interfaces.C.Strings;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_image_view_h is

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
  --  WITHOUT WARRANTIES OR CONDITTransferNS OF ANY KIND, either express or implied.
  --  See the License for the specific language governing permissions and
  --  limitations under the License.
  --  MagickCore image view methods.
  -- 

   type u_ImageView is null record;   -- incomplete struct

   subtype ImageView is u_ImageView;  -- /usr/include/ImageMagick-6/magick/image-view.h:26

   type DuplexTransferImageViewMethod is access function
        (arg1 : access constant ImageView;
         arg2 : access constant ImageView;
         arg3 : access ImageView;
         arg4 : long;
         arg5 : int;
         arg6 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image-view.h:29

   type GetImageViewMethod is access function
        (arg1 : access constant ImageView;
         arg2 : long;
         arg3 : int;
         arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image-view.h:31

   type SetImageViewMethod is access function
        (arg1 : access ImageView;
         arg2 : long;
         arg3 : int;
         arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image-view.h:32

   type TransferImageViewMethod is access function
        (arg1 : access constant ImageView;
         arg2 : access ImageView;
         arg3 : long;
         arg4 : int;
         arg5 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image-view.h:33

   type UpdateImageViewMethod is access function
        (arg1 : access ImageView;
         arg2 : long;
         arg3 : int;
         arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image-view.h:35

   function GetImageViewException (arg1 : access constant ImageView; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/image-view.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageViewException";

   function GetImageViewVirtualIndexes (arg1 : access constant ImageView) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/image-view.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageViewVirtualIndexes";

   function GetImageViewVirtualPixels (arg1 : access constant ImageView) return access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/image-view.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageViewVirtualPixels";

   function GetImageViewImage (arg1 : access constant ImageView) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image-view.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageViewImage";

   function CloneImageView (arg1 : access constant ImageView) return access ImageView  -- /usr/include/ImageMagick-6/magick/image-view.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImageView";

   function DestroyImageView (arg1 : access ImageView) return access ImageView  -- /usr/include/ImageMagick-6/magick/image-view.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImageView";

   function NewImageView (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageView  -- /usr/include/ImageMagick-6/magick/image-view.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "NewImageView";

   function NewImageViewRegion
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t) return access ImageView  -- /usr/include/ImageMagick-6/magick/image-view.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "NewImageViewRegion";

   function GetImageViewAuthenticIndexes (arg1 : access constant ImageView) return access unsigned_short  -- /usr/include/ImageMagick-6/magick/image-view.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageViewAuthenticIndexes";

   function DuplexTransferImageViewIterator
     (arg1 : access ImageView;
      arg2 : access ImageView;
      arg3 : access ImageView;
      arg4 : DuplexTransferImageViewMethod;
      arg5 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image-view.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "DuplexTransferImageViewIterator";

   function GetImageViewIterator
     (arg1 : access ImageView;
      arg2 : GetImageViewMethod;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image-view.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageViewIterator";

   function IsImageView (arg1 : access constant ImageView) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image-view.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "IsImageView";

   function SetImageViewIterator
     (arg1 : access ImageView;
      arg2 : SetImageViewMethod;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image-view.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageViewIterator";

   function TransferImageViewIterator
     (arg1 : access ImageView;
      arg2 : access ImageView;
      arg3 : TransferImageViewMethod;
      arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image-view.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "TransferImageViewIterator";

   function UpdateImageViewIterator
     (arg1 : access ImageView;
      arg2 : UpdateImageViewMethod;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image-view.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "UpdateImageViewIterator";

   function GetImageViewAuthenticPixels (arg1 : access constant ImageView) return access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket  -- /usr/include/ImageMagick-6/magick/image-view.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageViewAuthenticPixels";

   function GetImageViewExtent (arg1 : access constant ImageView) return ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo  -- /usr/include/ImageMagick-6/magick/image-view.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageViewExtent";

   procedure SetImageViewDescription (arg1 : access ImageView; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/image-view.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageViewDescription";

   procedure SetImageViewThreads (arg1 : access ImageView; arg2 : size_t)  -- /usr/include/ImageMagick-6/magick/image-view.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageViewThreads";

end ImageMagick.Low_Level.ImageMagick_6_magick_image_view_h;
