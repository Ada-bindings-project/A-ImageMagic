pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with Interfaces.C.Strings;

package ImageMagick.Low_Level.ImageMagick_6_magick_property_h is

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
  --  MagickCore property methods.
  -- 

   function GetNextImageProperty (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/property.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextImageProperty";

   function InterpretImageProperties
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/property.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "InterpretImageProperties";

   function RemoveImageProperty (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/property.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveImageProperty";

   function GetImageProperty (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/property.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageProperty";

   function GetMagickProperty
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/property.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickProperty";

   function CloneImageProperties (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/property.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImageProperties";

   function DefineImageProperty (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/property.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "DefineImageProperty";

   function DeleteImageProperty (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/property.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteImageProperty";

   function FormatImageProperty
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/property.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "FormatImageProperty";

   function SetImageProperty
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/property.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageProperty";

   procedure DestroyImageProperties (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/property.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImageProperties";

   procedure ResetImagePropertyIterator (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/property.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "ResetImagePropertyIterator";

end ImageMagick.Low_Level.ImageMagick_6_magick_property_h;
