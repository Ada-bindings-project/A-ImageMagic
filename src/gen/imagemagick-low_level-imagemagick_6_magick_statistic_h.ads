pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with ImageMagick.Low_Level.ImageMagick_6_magick_draw_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h is

   MaximumNumberOfImageMoments : constant := 8;  --  /usr/include/ImageMagick-6/magick/statistic.h:27
   MaximumNumberOfPerceptualHashes : constant := 7;  --  /usr/include/ImageMagick-6/magick/statistic.h:28

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
  --  MagickCore statistical methods.
  -- 

   type u_ChannelStatistics is record
      depth : aliased size_t;  -- /usr/include/ImageMagick-6/magick/statistic.h:33
      minima : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:36
      maxima : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:37
      sum : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:38
      sum_squared : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:39
      sum_cubed : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:40
      sum_fourth_power : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:41
      mean : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:42
      variance : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:43
      standard_deviation : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:44
      kurtosis : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:45
      skewness : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:46
      entropy : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:47
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/statistic.h:30

   subtype ChannelStatistics is u_ChannelStatistics;  -- /usr/include/ImageMagick-6/magick/statistic.h:48

   type u_ChannelMoments_array4918 is array (0 .. 31) of aliased double;
   type u_ChannelMoments is record
      I : aliased u_ChannelMoments_array4918;  -- /usr/include/ImageMagick-6/magick/statistic.h:55
      centroid : aliased ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PointInfo;  -- /usr/include/ImageMagick-6/magick/statistic.h:58
      ellipse_axis : aliased ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PointInfo;  -- /usr/include/ImageMagick-6/magick/statistic.h:59
      ellipse_angle : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:62
      ellipse_eccentricity : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:63
      ellipse_intensity : aliased double;  -- /usr/include/ImageMagick-6/magick/statistic.h:64
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/statistic.h:52

   subtype ChannelMoments is u_ChannelMoments;  -- /usr/include/ImageMagick-6/magick/statistic.h:65

   type u_ChannelPerceptualHash_array4918 is array (0 .. 31) of aliased double;
   type u_ChannelPerceptualHash is record
      P : aliased u_ChannelPerceptualHash_array4918;  -- /usr/include/ImageMagick-6/magick/statistic.h:70
      Q : aliased u_ChannelPerceptualHash_array4918;  -- /usr/include/ImageMagick-6/magick/statistic.h:71
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/statistic.h:67

   subtype ChannelPerceptualHash is u_ChannelPerceptualHash;  -- /usr/include/ImageMagick-6/magick/statistic.h:72

   type MagickEvaluateOperator is 
     (UndefinedEvaluateOperator,
      AddEvaluateOperator,
      AndEvaluateOperator,
      DivideEvaluateOperator,
      LeftShiftEvaluateOperator,
      MaxEvaluateOperator,
      MinEvaluateOperator,
      MultiplyEvaluateOperator,
      OrEvaluateOperator,
      RightShiftEvaluateOperator,
      SetEvaluateOperator,
      SubtractEvaluateOperator,
      XorEvaluateOperator,
      PowEvaluateOperator,
      LogEvaluateOperator,
      ThresholdEvaluateOperator,
      ThresholdBlackEvaluateOperator,
      ThresholdWhiteEvaluateOperator,
      GaussianNoiseEvaluateOperator,
      ImpulseNoiseEvaluateOperator,
      LaplacianNoiseEvaluateOperator,
      MultiplicativeNoiseEvaluateOperator,
      PoissonNoiseEvaluateOperator,
      UniformNoiseEvaluateOperator,
      CosineEvaluateOperator,
      SineEvaluateOperator,
      AddModulusEvaluateOperator,
      MeanEvaluateOperator,
      AbsEvaluateOperator,
      ExponentialEvaluateOperator,
      MedianEvaluateOperator,
      SumEvaluateOperator,
      RootMeanSquareEvaluateOperator)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/statistic.h:109

   type MagickFunction is 
     (UndefinedFunction,
      PolynomialFunction,
      SinusoidFunction,
      ArcsinFunction,
      ArctanFunction)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/statistic.h:118

   type StatisticType is 
     (UndefinedStatistic,
      GradientStatistic,
      MaximumStatistic,
      MeanStatistic,
      MedianStatistic,
      MinimumStatistic,
      ModeStatistic,
      NonpeakStatistic,
      StandardDeviationStatistic,
      RootMeanSquareStatistic)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/statistic.h:132

   function GetImageChannelStatistics (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ChannelStatistics  -- /usr/include/ImageMagick-6/magick/statistic.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelStatistics";

   function GetImageChannelMoments (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ChannelMoments  -- /usr/include/ImageMagick-6/magick/statistic.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelMoments";

   function GetImageChannelPerceptualHash (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ChannelPerceptualHash  -- /usr/include/ImageMagick-6/magick/statistic.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelPerceptualHash";

   function EvaluateImages
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : MagickEvaluateOperator;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/statistic.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "EvaluateImages";

   function PolynomialImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : access double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/statistic.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "PolynomialImage";

   function PolynomialImageChannel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : size_t;
      arg4 : access double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/statistic.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "PolynomialImageChannel";

   function StatisticImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : StatisticType;
      arg3 : size_t;
      arg4 : size_t;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/statistic.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "StatisticImage";

   function StatisticImageChannel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : StatisticType;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/statistic.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "StatisticImageChannel";

   function EvaluateImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : MagickEvaluateOperator;
      arg3 : double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "EvaluateImage";

   function EvaluateImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : MagickEvaluateOperator;
      arg4 : double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "EvaluateImageChannel";

   function FunctionImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : MagickFunction;
      arg3 : size_t;
      arg4 : access double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "FunctionImage";

   function FunctionImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : MagickFunction;
      arg4 : size_t;
      arg5 : access double;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "FunctionImageChannel";

   function GetImageChannelEntropy
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelEntropy";

   function GetImageChannelExtrema
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access size_t;
      arg4 : access size_t;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelExtrema";

   function GetImageChannelMean
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access double;
      arg4 : access double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelMean";

   function GetImageChannelKurtosis
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access double;
      arg4 : access double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelKurtosis";

   function GetImageChannelRange
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : access double;
      arg4 : access double;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannelRange";

   function GetImageEntropy
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access double;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageEntropy";

   function GetImageExtrema
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access size_t;
      arg3 : access size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageExtrema";

   function GetImageMean
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access double;
      arg3 : access double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageMean";

   function GetImageKurtosis
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access double;
      arg3 : access double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageKurtosis";

   function GetImageRange
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access double;
      arg3 : access double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/statistic.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageRange";

end ImageMagick.Low_Level.ImageMagick_6_magick_statistic_h;
