pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_composite_h;

with System;

package ImageMagick.Low_Level.ImageMagick_6_magick_layer_h is

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
  --  MagickCore image layer methods.
  -- 

   subtype DisposeType is unsigned;
   UnrecognizedDispose : constant unsigned := 0;
   UndefinedDispose : constant unsigned := 0;
   NoneDispose : constant unsigned := 1;
   BackgroundDispose : constant unsigned := 2;
   PreviousDispose : constant unsigned := 3;  -- /usr/include/ImageMagick-6/magick/layer.h:32

   type ImageLayerMethod is 
     (UndefinedLayer,
      CoalesceLayer,
      CompareAnyLayer,
      CompareClearLayer,
      CompareOverlayLayer,
      DisposeLayer,
      OptimizeLayer,
      OptimizeImageLayer,
      OptimizePlusLayer,
      OptimizeTransLayer,
      RemoveDupsLayer,
      RemoveZeroLayer,
      CompositeLayer,
      MergeLayer,
      FlattenLayer,
      MosaicLayer,
      TrimBoundsLayer)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/layer.h:53

   function CoalesceImages (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/layer.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "CoalesceImages";

   function DisposeImages (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/layer.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "DisposeImages";

   function CompareImageLayers
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageLayerMethod;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/layer.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "CompareImageLayers";

   function DeconstructImages (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/layer.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "DeconstructImages";

   function MergeImageLayers
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageLayerMethod;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/layer.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "MergeImageLayers";

   function OptimizeImageLayers (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/layer.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "OptimizeImageLayers";

   function OptimizePlusImageLayers (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/layer.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "OptimizePlusImageLayers";

   procedure CompositeLayers
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg4 : long;
      arg5 : long;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/layer.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "CompositeLayers";

   procedure OptimizeImageTransparency (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/layer.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "OptimizeImageTransparency";

   procedure RemoveDuplicateLayers (arg1 : System.Address; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/layer.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveDuplicateLayers";

   procedure RemoveZeroDelayLayers (arg1 : System.Address; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/layer.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveZeroDelayLayers";

end ImageMagick.Low_Level.ImageMagick_6_magick_layer_h;
