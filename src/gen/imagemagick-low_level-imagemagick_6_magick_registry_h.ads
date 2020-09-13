pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;

package ImageMagick.Low_Level.ImageMagick_6_magick_registry_h is

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
  --  MagickCore registry methods.
  -- 

   type RegistryType is 
     (UndefinedRegistryType,
      ImageRegistryType,
      ImageInfoRegistryType,
      StringRegistryType)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/registry.h:31

   function GetNextImageRegistry return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/registry.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextImageRegistry";

   function DefineImageRegistry
     (arg1 : RegistryType;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/registry.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "DefineImageRegistry";

   function DeleteImageRegistry (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/registry.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteImageRegistry";

   function RegistryComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/registry.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "RegistryComponentGenesis";

   function SetImageRegistry
     (arg1 : RegistryType;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/registry.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageRegistry";

   function GetImageRegistry
     (arg1 : RegistryType;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/registry.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageRegistry";

   procedure RegistryComponentTerminus  -- /usr/include/ImageMagick-6/magick/registry.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "RegistryComponentTerminus";

   function RemoveImageRegistry (arg1 : Interfaces.C.Strings.chars_ptr) return System.Address  -- /usr/include/ImageMagick-6/magick/registry.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveImageRegistry";

   procedure ResetImageRegistryIterator  -- /usr/include/ImageMagick-6/magick/registry.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "ResetImageRegistryIterator";

end ImageMagick.Low_Level.ImageMagick_6_magick_registry_h;
