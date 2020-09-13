pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C.Extensions;
with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;

package ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h is

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
  --  MagickCore progress monitor methods.
  -- 

   type MagickProgressMonitor is access function
        (arg1 : Interfaces.C.Strings.chars_ptr;
         arg2 : Long_Long_Integer;
         arg3 : Extensions.unsigned_long_long;
         arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/monitor.h:26

   function SetImageProgress
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Long_Long_Integer;
      arg4 : Extensions.unsigned_long_long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/monitor.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageProgress";

   function SetImageProgressMonitor
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : MagickProgressMonitor;
      arg3 : System.Address) return MagickProgressMonitor  -- /usr/include/ImageMagick-6/magick/monitor.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageProgressMonitor";

   function SetImageInfoProgressMonitor
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : MagickProgressMonitor;
      arg3 : System.Address) return MagickProgressMonitor  -- /usr/include/ImageMagick-6/magick/monitor.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageInfoProgressMonitor";

   function QuantumTick (offset : Long_Long_Integer; span : Extensions.unsigned_long_long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/monitor.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "QuantumTick";

end ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h;
