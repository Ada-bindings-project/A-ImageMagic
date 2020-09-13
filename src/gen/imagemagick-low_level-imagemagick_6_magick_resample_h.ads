pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_resample_h is

   --  unsupported macro: BesselFilter JincFilter
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
  --  MagickCore graphic resample methods.
  -- 

  --  WARNING:  The order of this table must also match the order of a table
  --  located in AcquireResizeFilter() in "resize.c" otherwise the users filter
  --  will not match the actual filter that is setup.
  -- 

  -- a count of all the filters, not a real filter  
   type FilterTypes is 
     (UndefinedFilter,
      PointFilter,
      BoxFilter,
      TriangleFilter,
      HermiteFilter,
      HanningFilter,
      HammingFilter,
      BlackmanFilter,
      GaussianFilter,
      QuadraticFilter,
      CubicFilter,
      CatromFilter,
      MitchellFilter,
      JincFilter,
      SincFilter,
      SincFastFilter,
      KaiserFilter,
      WelshFilter,
      ParzenFilter,
      BohmanFilter,
      BartlettFilter,
      LagrangeFilter,
      LanczosFilter,
      LanczosSharpFilter,
      Lanczos2Filter,
      Lanczos2SharpFilter,
      RobidouxFilter,
      RobidouxSharpFilter,
      CosineFilter,
      SplineFilter,
      LanczosRadiusFilter,
      SentinelFilter)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/resample.h:66

  --  Backward compatibility for the more correctly named Jinc Filter.  Original
  --  source of this filter is from "zoom" but it refers to a reference by Pratt,
  --  who does not actualy name the filter.
  -- 

   type u_ResampleFilter is null record;   -- incomplete struct

   subtype ResampleFilter is u_ResampleFilter;  -- /usr/include/ImageMagick-6/magick/resample.h:76

   function ResamplePixelColor
     (arg1 : access ResampleFilter;
      arg2 : double;
      arg3 : double;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/resample.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "ResamplePixelColor";

   function SetResampleFilterInterpolateMethod (arg1 : access ResampleFilter; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.InterpolatePixelMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/resample.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "SetResampleFilterInterpolateMethod";

   function SetResampleFilterVirtualPixelMethod (arg1 : access ResampleFilter; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/resample.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "SetResampleFilterVirtualPixelMethod";

   function AcquireResampleFilter (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ResampleFilter  -- /usr/include/ImageMagick-6/magick/resample.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireResampleFilter";

   function DestroyResampleFilter (arg1 : access ResampleFilter) return access ResampleFilter  -- /usr/include/ImageMagick-6/magick/resample.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyResampleFilter";

   procedure ScaleResampleFilter
     (arg1 : access ResampleFilter;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- /usr/include/ImageMagick-6/magick/resample.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "ScaleResampleFilter";

   procedure SetResampleFilter
     (arg1 : access ResampleFilter;
      arg2 : FilterTypes;
      arg3 : double)  -- /usr/include/ImageMagick-6/magick/resample.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "SetResampleFilter";

end ImageMagick.Low_Level.ImageMagick_6_magick_resample_h;
