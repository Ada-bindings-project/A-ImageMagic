pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;



package ImageMagick.Low_Level.ImageMagick_6_magick_composite_h is

   --  unsupported macro: AddCompositeOp ModulusAddCompositeOp
   --  unsupported macro: SubtractCompositeOp ModulusSubtractCompositeOp
   --  unsupported macro: MinusCompositeOp MinusDstCompositeOp
   --  unsupported macro: DivideCompositeOp DivideDstCompositeOp
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
  --  MagickCore image composite methods.
  -- 

  -- These are new operators, added after the above was last sorted.
  --   * The list should be re-sorted only when a new library version is
  --   * created.
  --    

   type CompositeOperator is 
     (UndefinedCompositeOp,
      NoCompositeOp,
      ModulusAddCompositeOp,
      AtopCompositeOp,
      BlendCompositeOp,
      BumpmapCompositeOp,
      ChangeMaskCompositeOp,
      ClearCompositeOp,
      ColorBurnCompositeOp,
      ColorDodgeCompositeOp,
      ColorizeCompositeOp,
      CopyBlackCompositeOp,
      CopyBlueCompositeOp,
      CopyCompositeOp,
      CopyCyanCompositeOp,
      CopyGreenCompositeOp,
      CopyMagentaCompositeOp,
      CopyOpacityCompositeOp,
      CopyRedCompositeOp,
      CopyYellowCompositeOp,
      DarkenCompositeOp,
      DstAtopCompositeOp,
      DstCompositeOp,
      DstInCompositeOp,
      DstOutCompositeOp,
      DstOverCompositeOp,
      DifferenceCompositeOp,
      DisplaceCompositeOp,
      DissolveCompositeOp,
      ExclusionCompositeOp,
      HardLightCompositeOp,
      HueCompositeOp,
      InCompositeOp,
      LightenCompositeOp,
      LinearLightCompositeOp,
      LuminizeCompositeOp,
      MinusDstCompositeOp,
      ModulateCompositeOp,
      MultiplyCompositeOp,
      OutCompositeOp,
      OverCompositeOp,
      OverlayCompositeOp,
      PlusCompositeOp,
      ReplaceCompositeOp,
      SaturateCompositeOp,
      ScreenCompositeOp,
      SoftLightCompositeOp,
      SrcAtopCompositeOp,
      SrcCompositeOp,
      SrcInCompositeOp,
      SrcOutCompositeOp,
      SrcOverCompositeOp,
      ModulusSubtractCompositeOp,
      ThresholdCompositeOp,
      XorCompositeOp,
      DivideDstCompositeOp,
      DistortCompositeOp,
      BlurCompositeOp,
      PegtopLightCompositeOp,
      VividLightCompositeOp,
      PinLightCompositeOp,
      LinearDodgeCompositeOp,
      LinearBurnCompositeOp,
      MathematicsCompositeOp,
      DivideSrcCompositeOp,
      MinusSrcCompositeOp,
      DarkenIntensityCompositeOp,
      LightenIntensityCompositeOp,
      HardMixCompositeOp,
      StereoCompositeOp)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/composite.h:101

  -- Deprecated (renamed) Method Names for backward compatibility
  -- * However the CompositeOp value has not changed, just renamed.
  --  

   function CompositeImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : CompositeOperator;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg4 : long;
      arg5 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/composite.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "CompositeImage";

   function CompositeImageChannel
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : unsigned;
      arg3 : CompositeOperator;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg5 : long;
      arg6 : long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/composite.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "CompositeImageChannel";

   function TextureImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/composite.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "TextureImage";

end ImageMagick.Low_Level.ImageMagick_6_magick_composite_h;
