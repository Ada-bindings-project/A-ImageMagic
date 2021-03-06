pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_draw_h;
with System;


package ImageMagick.Low_Level.ImageMagick_6_magick_annotate_h is

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
  --  MagickCore image annotation methods.
  -- 

   function AnnotateComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/annotate.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "AnnotateComponentGenesis";

   function AnnotateImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/annotate.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "AnnotateImage";

   function GetMultilineTypeMetrics
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.TypeMetric) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/annotate.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "GetMultilineTypeMetrics";

   function GetTypeMetrics
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.TypeMetric) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/annotate.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "GetTypeMetrics";

   function FormatMagickCaption
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.TypeMetric;
      arg5 : System.Address) return long  -- /usr/include/ImageMagick-6/magick/annotate.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "FormatMagickCaption";

   procedure AnnotateComponentTerminus  -- /usr/include/ImageMagick-6/magick/annotate.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "AnnotateComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_annotate_h;
