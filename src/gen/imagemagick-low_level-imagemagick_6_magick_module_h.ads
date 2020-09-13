pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;


with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

limited with Interfaces.C_Streams;

package ImageMagick.Low_Level.ImageMagick_6_magick_module_h is

   --  unsupported macro: MagickImageCoderSignature ((size_t) (((MagickLibInterface) << 8) | MAGICKCORE_QUANTUM_DEPTH))
   --  unsupported macro: MagickImageFilterSignature ((size_t) (((MagickLibInterface) << 8) | MAGICKCORE_QUANTUM_DEPTH))
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
  --  MagickCore module methods.
  -- 

   type MagickModuleType is 
     (MagickImageCoderModule,
      MagickImageFilterModule)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/module.h:37

   type u_ModuleInfo;
   type u_ModuleInfo is record
      path : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/module.h:42
      tag : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/module.h:43
      handle : System.Address;  -- /usr/include/ImageMagick-6/magick/module.h:46
      unregister_module : access procedure;  -- /usr/include/ImageMagick-6/magick/module.h:47
      register_module : access function return size_t;  -- /usr/include/ImageMagick-6/magick/module.h:50
      timestamp : aliased long;  -- /usr/include/ImageMagick-6/magick/module.h:53
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/module.h:56
      previous : access u_ModuleInfo;  -- /usr/include/ImageMagick-6/magick/module.h:59
      next : access u_ModuleInfo;  -- /usr/include/ImageMagick-6/magick/module.h:60
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/module.h:63
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/module.h:39

  -- deprecated, use GetModuleInfoList()  
   subtype ModuleInfo is u_ModuleInfo;  -- /usr/include/ImageMagick-6/magick/module.h:64

   --  skipped function type ImageFilterHandler

   function GetModuleList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : MagickModuleType;
      arg3 : access size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/module.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "GetModuleList";

   function GetModuleInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/module.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "GetModuleInfoList";

   function InvokeDynamicImageFilter
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int;
      arg4 : System.Address;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/module.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "InvokeDynamicImageFilter";

   function ListModuleInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/module.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "ListModuleInfo";

   function ModuleComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/module.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "ModuleComponentGenesis";

   function OpenModule (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/module.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "OpenModule";

   function OpenModules (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/module.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "OpenModules";

   function GetModuleInfo (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ModuleInfo  -- /usr/include/ImageMagick-6/magick/module.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "GetModuleInfo";

   procedure DestroyModuleList  -- /usr/include/ImageMagick-6/magick/module.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyModuleList";

   procedure ModuleComponentTerminus  -- /usr/include/ImageMagick-6/magick/module.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "ModuleComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_module_h;
