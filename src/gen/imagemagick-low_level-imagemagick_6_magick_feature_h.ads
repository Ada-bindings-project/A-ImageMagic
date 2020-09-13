pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;



package ImageMagick.Low_Level.ImageMagick_6_magick_feature_h is

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
  --  MagickCore feature methods.
  -- 

  --  Haralick texture features.
  -- 

   type u_ChannelFeatures_array4348 is array (0 .. 3) of aliased double;
   type u_ChannelFeatures is record
      angular_second_moment : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:31
      contrast : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:32
      correlation : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:33
      variance_sum_of_squares : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:34
      inverse_difference_moment : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:35
      sum_average : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:36
      sum_variance : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:37
      sum_entropy : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:38
      entropy : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:39
      difference_variance : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:40
      difference_entropy : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:41
      measure_of_correlation_1 : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:42
      measure_of_correlation_2 : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:43
      maximum_correlation_coefficient : aliased u_ChannelFeatures_array4348;  -- /usr/include/ImageMagick-6/magick/feature.h:44
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/feature.h:28

   subtype ChannelFeatures is u_ChannelFeatures;  -- /usr/include/ImageMagick-6/magick/feature.h:45

   function GetImageChannelFeatures
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ChannelFeatures  -- /usr/include/ImageMagick-6/magick/feature.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelFeatures";

   function CannyEdgeImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/feature.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "CannyEdgeImage";

   function HoughLineImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/feature.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "HoughLineImage";

   function MeanShiftImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/feature.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "MeanShiftImage";

end ImageMagick.Low_Level.ImageMagick_6_magick_feature_h;
