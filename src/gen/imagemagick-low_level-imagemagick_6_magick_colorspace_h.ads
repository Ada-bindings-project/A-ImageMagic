pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h is

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
  --  MagickCore image colorspace methods.
  -- 

  -- Linear RGB colorspace  
  -- greyscale (non-linear) image (faked 1 channel)  
  -- negated linear RGB with black separated  
  -- Default: non-linear sRGB colorspace  
  -- negated linear RGB colorspace  
  -- alias for LCHuv  
  -- Cylindrical (Polar) Lab  
  -- Cylindrical (Polar) Luv  
  -- alias for HSB  
  -- greyscale (linear) image (faked 1 channel)  
   type ColorspaceType is 
     (UndefinedColorspace,
      RGBColorspace,
      GRAYColorspace,
      TransparentColorspace,
      OHTAColorspace,
      LabColorspace,
      XYZColorspace,
      YCbCrColorspace,
      YCCColorspace,
      YIQColorspace,
      YPbPrColorspace,
      YUVColorspace,
      CMYKColorspace,
      sRGBColorspace,
      HSBColorspace,
      HSLColorspace,
      HWBColorspace,
      Rec601LumaColorspace,
      Rec601YCbCrColorspace,
      Rec709LumaColorspace,
      Rec709YCbCrColorspace,
      LogColorspace,
      CMYColorspace,
      LuvColorspace,
      HCLColorspace,
      LCHColorspace,
      LMSColorspace,
      LCHabColorspace,
      LCHuvColorspace,
      scRGBColorspace,
      HSIColorspace,
      HSVColorspace,
      HCLpColorspace,
      YDbDrColorspace,
      xyYColorspace,
      LinearGRAYColorspace)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/colorspace.h:63

   function GetImageColorspaceType (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ColorspaceType  -- /usr/include/ImageMagick-6/magick/colorspace.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageColorspaceType";

   function RGBTransformImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ColorspaceType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/colorspace.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "RGBTransformImage";

   function SetImageColorspace (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ColorspaceType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/colorspace.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageColorspace";

   function SetImageGray (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/colorspace.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageGray";

   function SetImageMonochrome (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/colorspace.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageMonochrome";

   function TransformImageColorspace (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ColorspaceType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/colorspace.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "TransformImageColorspace";

   function TransformRGBImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ColorspaceType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/colorspace.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "TransformRGBImage";

end ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h;
