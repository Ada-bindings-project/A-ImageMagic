pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;


with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;


package ImageMagick.Low_Level.ImageMagick_6_wand_wand_view_h is

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
  --  MagickWand wand view methods.
  -- 

   type u_WandView is null record;   -- incomplete struct

   subtype WandView is u_WandView;  -- /usr/include/ImageMagick-6/wand/wand-view.h:26

   type DuplexTransferWandViewMethod is access function
        (arg1 : access constant WandView;
         arg2 : access constant WandView;
         arg3 : access WandView;
         arg4 : long;
         arg5 : int;
         arg6 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/wand-view.h:29

   type GetWandViewMethod is access function
        (arg1 : access constant WandView;
         arg2 : long;
         arg3 : int;
         arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/wand-view.h:31

   type SetWandViewMethod is access function
        (arg1 : access WandView;
         arg2 : long;
         arg3 : int;
         arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/wand-view.h:32

   type TransferWandViewMethod is access function
        (arg1 : access constant WandView;
         arg2 : access WandView;
         arg3 : long;
         arg4 : int;
         arg5 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/wand-view.h:33

   type UpdateWandViewMethod is access function
        (arg1 : access WandView;
         arg2 : long;
         arg3 : int;
         arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/wand/wand-view.h:35

   function GetWandViewException (arg1 : access constant WandView; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/wand-view.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "GetWandViewException";

   function DuplexTransferWandViewIterator
     (arg1 : access WandView;
      arg2 : access WandView;
      arg3 : access WandView;
      arg4 : DuplexTransferWandViewMethod;
      arg5 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/wand-view.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "DuplexTransferWandViewIterator";

   function GetWandViewIterator
     (arg1 : access WandView;
      arg2 : GetWandViewMethod;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/wand-view.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "GetWandViewIterator";

   function IsWandView (arg1 : access constant WandView) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/wand-view.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "IsWandView";

   function SetWandViewIterator
     (arg1 : access WandView;
      arg2 : SetWandViewMethod;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/wand-view.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "SetWandViewIterator";

   function TransferWandViewIterator
     (arg1 : access WandView;
      arg2 : access WandView;
      arg3 : TransferWandViewMethod;
      arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/wand-view.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "TransferWandViewIterator";

   function UpdateWandViewIterator
     (arg1 : access WandView;
      arg2 : UpdateWandViewMethod;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/wand-view.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "UpdateWandViewIterator";

   function GetWandViewWand (arg1 : access constant WandView) return access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand  -- /usr/include/ImageMagick-6/wand/wand-view.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "GetWandViewWand";

   function GetWandViewPixels (arg1 : access constant WandView) return System.Address  -- /usr/include/ImageMagick-6/wand/wand-view.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "GetWandViewPixels";

   function GetWandViewExtent (arg1 : access constant WandView) return ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo  -- /usr/include/ImageMagick-6/wand/wand-view.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "GetWandViewExtent";

   procedure SetWandViewDescription (arg1 : access WandView; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/wand/wand-view.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "SetWandViewDescription";

   procedure SetWandViewThreads (arg1 : access WandView; arg2 : size_t)  -- /usr/include/ImageMagick-6/wand/wand-view.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "SetWandViewThreads";

   function CloneWandView (arg1 : access constant WandView) return access WandView  -- /usr/include/ImageMagick-6/wand/wand-view.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "CloneWandView";

   function DestroyWandView (arg1 : access WandView) return access WandView  -- /usr/include/ImageMagick-6/wand/wand-view.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyWandView";

   function NewWandView (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return access WandView  -- /usr/include/ImageMagick-6/wand/wand-view.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "NewWandView";

   function NewWandViewExtent
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t) return access WandView  -- /usr/include/ImageMagick-6/wand/wand-view.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "NewWandViewExtent";

end ImageMagick.Low_Level.ImageMagick_6_wand_wand_view_h;
