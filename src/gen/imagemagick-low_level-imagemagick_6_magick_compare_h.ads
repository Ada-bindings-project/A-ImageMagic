pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

limited with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_compare_h is

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
  --  MagickCore image compare methods.
  -- 

   subtype MetricType is unsigned;
   UndefinedMetric : constant unsigned := 0;
   AbsoluteErrorMetric : constant unsigned := 1;
   MeanAbsoluteErrorMetric : constant unsigned := 2;
   MeanErrorPerPixelMetric : constant unsigned := 3;
   MeanSquaredErrorMetric : constant unsigned := 4;
   PeakAbsoluteErrorMetric : constant unsigned := 5;
   PeakSignalToNoiseRatioMetric : constant unsigned := 6;
   RootMeanSquaredErrorMetric : constant unsigned := 7;
   NormalizedCrossCorrelationErrorMetric : constant unsigned := 8;
   FuzzErrorMetric : constant unsigned := 9;
   UndefinedErrorMetric : constant unsigned := 0;
   PerceptualHashErrorMetric : constant unsigned := 255;  -- /usr/include/ImageMagick-6/magick/compare.h:41

   function GetImageChannelDistortions
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : MetricType;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access double  -- /usr/include/ImageMagick-6/magick/compare.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelDistortions";

   function CompareImageChannels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : unsigned;
      arg4 : MetricType;
      arg5 : access double;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/compare.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "CompareImageChannels";

   function CompareImages
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : MetricType;
      arg4 : access double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/compare.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "CompareImages";

   function SimilarityImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;
      arg4 : access double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/compare.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "SimilarityImage";

   function SimilarityMetricImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : MetricType;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;
      arg5 : access double;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/compare.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "SimilarityMetricImage";

   function GetImageChannelDistortion
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : unsigned;
      arg4 : MetricType;
      arg5 : access double;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/compare.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelDistortion";

   function GetImageDistortion
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : MetricType;
      arg4 : access double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/compare.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageDistortion";

   function IsImagesEqual (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/compare.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "IsImagesEqual";

end ImageMagick.Low_Level.ImageMagick_6_magick_compare_h;
