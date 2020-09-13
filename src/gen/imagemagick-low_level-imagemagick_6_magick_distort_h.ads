pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

limited with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_distort_h is

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
  --  MagickCore image distortion methods.
  -- 

  --  These two enum are linked, with common enumerated values.  Both
  --  DistortImages() and SparseColor() often share code to determine functional
  --  coefficients for common methods.
  --  Caution should be taken to ensure that only the common methods contain the
  --  same enumerated value, while all others remain unique across both
  --  enumerations.
  -- 

   subtype DistortImageMethod is unsigned;
   UndefinedDistortion : constant unsigned := 0;
   AffineDistortion : constant unsigned := 1;
   AffineProjectionDistortion : constant unsigned := 2;
   ScaleRotateTranslateDistortion : constant unsigned := 3;
   PerspectiveDistortion : constant unsigned := 4;
   PerspectiveProjectionDistortion : constant unsigned := 5;
   BilinearForwardDistortion : constant unsigned := 6;
   BilinearDistortion : constant unsigned := 6;
   BilinearReverseDistortion : constant unsigned := 7;
   PolynomialDistortion : constant unsigned := 8;
   ArcDistortion : constant unsigned := 9;
   PolarDistortion : constant unsigned := 10;
   DePolarDistortion : constant unsigned := 11;
   Cylinder2PlaneDistortion : constant unsigned := 12;
   Plane2CylinderDistortion : constant unsigned := 13;
   BarrelDistortion : constant unsigned := 14;
   BarrelInverseDistortion : constant unsigned := 15;
   ShepardsDistortion : constant unsigned := 16;
   ResizeDistortion : constant unsigned := 17;
   SentinelDistortion : constant unsigned := 18;  -- /usr/include/ImageMagick-6/magick/distort.h:56

  --    Methods unique to SparseColor().
  --   

   subtype SparseColorMethod is unsigned;
   UndefinedColorInterpolate : constant unsigned := 0;
   BarycentricColorInterpolate : constant unsigned := 1;
   BilinearColorInterpolate : constant unsigned := 7;
   PolynomialColorInterpolate : constant unsigned := 8;
   ShepardsColorInterpolate : constant unsigned := 16;
   VoronoiColorInterpolate : constant unsigned := 18;
   InverseColorInterpolate : constant unsigned := 19;
   ManhattanColorInterpolate : constant unsigned := 20;  -- /usr/include/ImageMagick-6/magick/distort.h:71

   function AffineTransformImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.AffineMatrix;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/distort.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "AffineTransformImage";

   function DistortImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : DistortImageMethod;
      arg3 : size_t;
      arg4 : access double;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      c_exception : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/distort.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "DistortImage";

   function DistortResizeImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/distort.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "DistortResizeImage";

   function RotateImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/distort.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "RotateImage";

   function SparseColorImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : SparseColorMethod;
      arg4 : size_t;
      arg5 : access double;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/distort.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "SparseColorImage";

end ImageMagick.Low_Level.ImageMagick_6_magick_distort_h;
