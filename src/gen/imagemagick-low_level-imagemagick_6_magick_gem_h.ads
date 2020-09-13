pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_random_uh;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_visual_effects_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_gem_h is

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
  --  MagickCore private graphic gems methods.
  -- 

   function ExpandAffine (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.AffineMatrix) return double  -- /usr/include/ImageMagick-6/magick/gem.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "ExpandAffine";

   function GenerateDifferentialNoise
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_random_uh.RandomInfo;
      arg2 : unsigned_short;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_visual_effects_h.NoiseType;
      arg4 : double) return double  -- /usr/include/ImageMagick-6/magick/gem.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "GenerateDifferentialNoise";

   function GetOptimalKernelWidth (arg1 : double; arg2 : double) return size_t  -- /usr/include/ImageMagick-6/magick/gem.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "GetOptimalKernelWidth";

   function GetOptimalKernelWidth1D (arg1 : double; arg2 : double) return size_t  -- /usr/include/ImageMagick-6/magick/gem.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "GetOptimalKernelWidth1D";

   function GetOptimalKernelWidth2D (arg1 : double; arg2 : double) return size_t  -- /usr/include/ImageMagick-6/magick/gem.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "GetOptimalKernelWidth2D";

   procedure ConvertHCLToRGB
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/gem.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertHCLToRGB";

   procedure ConvertHCLpToRGB
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/gem.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertHCLpToRGB";

   procedure ConvertHSBToRGB
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/gem.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertHSBToRGB";

   procedure ConvertHSIToRGB
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/gem.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertHSIToRGB";

   procedure ConvertHSLToRGB
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/gem.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertHSLToRGB";

   procedure ConvertHSVToRGB
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/gem.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertHSVToRGB";

   procedure ConvertHWBToRGB
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/gem.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertHWBToRGB";

   procedure ConvertLCHabToRGB
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/gem.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertLCHabToRGB";

   procedure ConvertLCHuvToRGB
     (arg1 : double;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_short;
      arg5 : access unsigned_short;
      arg6 : access unsigned_short)  -- /usr/include/ImageMagick-6/magick/gem.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertLCHuvToRGB";

   procedure ConvertRGBToHCL
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/gem.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertRGBToHCL";

   procedure ConvertRGBToHCLp
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/gem.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertRGBToHCLp";

   procedure ConvertRGBToHSB
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/gem.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertRGBToHSB";

   procedure ConvertRGBToHSI
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/gem.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertRGBToHSI";

   procedure ConvertRGBToHSL
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/gem.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertRGBToHSL";

   procedure ConvertRGBToHSV
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/gem.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertRGBToHSV";

   procedure ConvertRGBToHWB
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/gem.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertRGBToHWB";

   procedure ConvertRGBToLCHab
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/gem.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertRGBToLCHab";

   procedure ConvertRGBToLCHuv
     (arg1 : unsigned_short;
      arg2 : unsigned_short;
      arg3 : unsigned_short;
      arg4 : access double;
      arg5 : access double;
      arg6 : access double)  -- /usr/include/ImageMagick-6/magick/gem.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "ConvertRGBToLCHuv";

end ImageMagick.Low_Level.ImageMagick_6_magick_gem_h;
