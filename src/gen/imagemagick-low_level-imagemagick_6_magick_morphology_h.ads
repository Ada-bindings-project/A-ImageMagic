pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h is

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
  --  MagickCore morphology methods.
  -- 

  -- equivalent to UnityKernel  
  -- The no-op or 'original image' kernel  
  -- Convolution Kernels, Gaussian Based  
  -- Convolution Kernels, by Name  
  -- Shape Kernels  
  -- Hit And Miss Kernels  
  -- Distance Measuring Kernels  
  -- User Specified Kernel Array  
   type KernelInfoType is 
     (UndefinedKernel,
      UnityKernel,
      GaussianKernel,
      DoGKernel,
      LoGKernel,
      BlurKernel,
      CometKernel,
      LaplacianKernel,
      SobelKernel,
      FreiChenKernel,
      RobertsKernel,
      PrewittKernel,
      CompassKernel,
      KirschKernel,
      DiamondKernel,
      SquareKernel,
      RectangleKernel,
      OctagonKernel,
      DiskKernel,
      PlusKernel,
      CrossKernel,
      RingKernel,
      PeaksKernel,
      EdgesKernel,
      CornersKernel,
      DiagonalsKernel,
      LineEndsKernel,
      LineJunctionsKernel,
      RidgesKernel,
      ConvexHullKernel,
      ThinSEKernel,
      SkeletonKernel,
      ChebyshevKernel,
      ManhattanKernel,
      OctagonalKernel,
      EuclideanKernel,
      UserDefinedKernel,
      BinomialKernel)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/morphology.h:67

  -- Convolve / Correlate weighted sums  
  -- Weighted Sum with reflected kernel  
  -- Weighted Sum using a sliding window  
  -- Low-level Morphology methods  
  -- Minimum Value in Neighbourhood  
  -- Maximum Value in Neighbourhood  
  -- Pixel Pick using GreyScale Erode  
  -- Pixel Pick using GreyScale Dialate  
  -- Add Kernel Value, take Minimum  
  -- Second-level Morphology methods  
  -- Dilate then Erode  
  -- Erode then Dilate  
  -- Pixel Pick using GreyScale Open  
  -- Pixel Pick using GreyScale Close  
  -- Open then Close  
  -- Difference Morphology methods  
  -- Dilate difference from Original  
  -- Erode difference from Original  
  -- Dilate difference with Erode  
  -- Close difference from Original  
  -- Open difference from Original  
  -- Recursive Morphology methods  
  -- Foreground/Background pattern matching  
  -- Remove matching pixels from image  
  -- Add matching pixels from image  
  -- Experimental Morphology methods  
  -- distance matte channel copy nearest color  
  -- Add Kernel Value, take Minimum  
   type MorphologyMethod is 
     (UndefinedMorphology,
      ConvolveMorphology,
      CorrelateMorphology,
      ErodeMorphology,
      DilateMorphology,
      ErodeIntensityMorphology,
      DilateIntensityMorphology,
      DistanceMorphology,
      OpenMorphology,
      CloseMorphology,
      OpenIntensityMorphology,
      CloseIntensityMorphology,
      SmoothMorphology,
      EdgeInMorphology,
      EdgeOutMorphology,
      EdgeMorphology,
      TopHatMorphology,
      BottomHatMorphology,
      HitAndMissMorphology,
      ThinningMorphology,
      ThickenMorphology,
      VoronoiMorphology,
      IterativeDistanceMorphology)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/morphology.h:100

   type KernelInfo;
   type KernelInfo is record
      c_type : aliased KernelInfoType;  -- /usr/include/ImageMagick-6/magick/morphology.h:105
      width : aliased size_t;  -- /usr/include/ImageMagick-6/magick/morphology.h:108
      height : aliased size_t;  -- /usr/include/ImageMagick-6/magick/morphology.h:109
      x : aliased long;  -- /usr/include/ImageMagick-6/magick/morphology.h:112
      y : aliased long;  -- /usr/include/ImageMagick-6/magick/morphology.h:113
      values : access double;  -- /usr/include/ImageMagick-6/magick/morphology.h:116
      minimum : aliased double;  -- /usr/include/ImageMagick-6/magick/morphology.h:117
      maximum : aliased double;  -- /usr/include/ImageMagick-6/magick/morphology.h:118
      negative_range : aliased double;  -- /usr/include/ImageMagick-6/magick/morphology.h:119
      positive_range : aliased double;  -- /usr/include/ImageMagick-6/magick/morphology.h:120
      angle : aliased double;  -- /usr/include/ImageMagick-6/magick/morphology.h:121
      next : access KernelInfo;  -- /usr/include/ImageMagick-6/magick/morphology.h:124
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/morphology.h:127
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/morphology.h:102

   function AcquireKernelInfo (arg1 : Interfaces.C.Strings.chars_ptr) return access KernelInfo  -- /usr/include/ImageMagick-6/magick/morphology.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireKernelInfo";

   function AcquireKernelBuiltIn (arg1 : KernelInfoType; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GeometryInfo) return access KernelInfo  -- /usr/include/ImageMagick-6/magick/morphology.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireKernelBuiltIn";

   function CloneKernelInfo (arg1 : access constant KernelInfo) return access KernelInfo  -- /usr/include/ImageMagick-6/magick/morphology.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "CloneKernelInfo";

   function DestroyKernelInfo (arg1 : access KernelInfo) return access KernelInfo  -- /usr/include/ImageMagick-6/magick/morphology.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyKernelInfo";

   function MorphologyImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : MorphologyMethod;
      arg3 : long;
      arg4 : access constant KernelInfo;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/morphology.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "MorphologyImage";

   function MorphologyImageChannel
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : MorphologyMethod;
      arg4 : long;
      arg5 : access constant KernelInfo;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/morphology.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "MorphologyImageChannel";

   procedure ScaleGeometryKernelInfo (arg1 : access KernelInfo; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/morphology.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "ScaleGeometryKernelInfo";

   procedure ScaleKernelInfo
     (arg1 : access KernelInfo;
      arg2 : double;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GeometryFlags)  -- /usr/include/ImageMagick-6/magick/morphology.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "ScaleKernelInfo";

   procedure ShowKernelInfo (arg1 : access constant KernelInfo)  -- /usr/include/ImageMagick-6/magick/morphology.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "ShowKernelInfo";

   procedure UnityAddKernelInfo (arg1 : access KernelInfo; arg2 : double)  -- /usr/include/ImageMagick-6/magick/morphology.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "UnityAddKernelInfo";

end ImageMagick.Low_Level.ImageMagick_6_magick_morphology_h;
