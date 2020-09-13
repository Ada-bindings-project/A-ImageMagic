pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with Interfaces.C.Strings;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_draw_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_visual_effects_h is

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
  --  MagickCore image visual effects methods.
  -- 

   type NoiseType is 
     (UndefinedNoise,
      UniformNoise,
      GaussianNoise,
      MultiplicativeGaussianNoise,
      ImpulseNoise,
      LaplacianNoise,
      PoissonNoise,
      RandomNoise)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/visual-effects.h:37

   function AddNoiseImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : NoiseType;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "AddNoiseImage";

   function AddNoiseImageChannel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : NoiseType;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "AddNoiseImageChannel";

   function BlueShiftImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "BlueShiftImage";

   function CharcoalImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "CharcoalImage";

   function ColorizeImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "ColorizeImage";

   function ColorMatrixImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      kernel : access constant ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h.KernelInfo;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "ColorMatrixImage";

   function ImplodeImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "ImplodeImage";

   function MorphImages
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "MorphImages";

   function PolaroidImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo;
      arg3 : double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "PolaroidImage";

   function SepiaToneImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "SepiaToneImage";

   function ShadowImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : double;
      arg4 : long;
      arg5 : long;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "ShadowImage";

   function SketchImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "SketchImage";

   function SteganoImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "SteganoImage";

   function StereoImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "StereoImage";

   function StereoAnaglyphImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : long;
      arg4 : long;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "StereoAnaglyphImage";

   function SwirlImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "SwirlImage";

   function TintImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "TintImage";

   function VignetteImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : double;
      arg4 : long;
      arg5 : long;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "VignetteImage";

   function WaveImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "WaveImage";

   function WaveletDenoiseImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/visual-effects.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "WaveletDenoiseImage";

   function PlasmaImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.SegmentInfo;
      arg3 : size_t;
      arg4 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/visual-effects.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "PlasmaImage";

   function SolarizeImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/visual-effects.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "SolarizeImage";

   function SolarizeImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/visual-effects.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "SolarizeImageChannel";

end ImageMagick.Low_Level.ImageMagick_6_magick_visual_effects_h;
