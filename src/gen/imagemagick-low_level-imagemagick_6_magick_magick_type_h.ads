pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Extensions;
with System;


limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h is

   --  unsupported macro: MagickPathExtent MaxTextExtent
   --  unsupported macro: MagickLLConstant(c) ((MagickOffsetType) (c ## LL))
   --  unsupported macro: MagickULLConstant(c) ((MagickSizeType) (c ## ULL))
   MaxColormapSize : constant := 65536;  --  /usr/include/ImageMagick-6/magick/magick-type.h:77
   MaxMap : constant := 65535;  --  /usr/include/ImageMagick-6/magick/magick-type.h:78
   --  unsupported macro: QuantumRange ((Quantum) 65535)

   QuantumFormat : aliased constant String := "%u" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/magick-type.h:87

   MagickEpsilon : constant := (1.0e-12);  --  /usr/include/ImageMagick-6/magick/magick-type.h:115
   MagickMaximumValue : constant := 1.79769313486231570E+308;  --  /usr/include/ImageMagick-6/magick/magick-type.h:116
   MagickMinimumValue : constant := 2.22507385850720140E-308;  --  /usr/include/ImageMagick-6/magick/magick-type.h:117
   --  arg-macro: procedure MagickStringify (macro_or_string)
   --    MagickStringifyArg(macro_or_string)
   --  unsupported macro: MagickStringifyArg(contents) #contents
   --  unsupported macro: QuantumScale ((double) 1.0/(double) QuantumRange)

   MagickOffsetFormat : aliased constant String := "lld" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/magick-type.h:132
   MagickSizeFormat : aliased constant String := "llu" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/magick-type.h:133
   --  arg-macro: procedure IsNaN (a)
   --    isnan(a)

  --  Copyright 1999-2020 ImageMagick Studio LLC, a non-profit organization
  --  dedicated to making software imaging solutions freely available.
  --  You may not use this file except in compliance with the License.  You may
  --  obtain a copy of the License at
  --    https://imagemagick.org/script/license.php
  --  Unless required by applicable law or agreed to in writing, software
  --  distributed under the License is distributed on an "AS IS" BASIS,
  --  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  --  See the License for the specific language governing permissions and
  --  limitations under the License.
  --  MagickCore types.
  -- 

   subtype MagickFloatType is float;  -- /usr/include/ImageMagick-6/magick/magick-type.h:45

   subtype MagickDoubleType is double;  -- /usr/include/ImageMagick-6/magick/magick-type.h:56

   subtype SignedQuantum is long;  -- /usr/include/ImageMagick-6/magick/magick-type.h:79

   subtype Quantum is unsigned_short;  -- /usr/include/ImageMagick-6/magick/magick-type.h:85

  --  Typedef declarations.
  -- 

   subtype MagickRealType is MagickDoubleType;  -- /usr/include/ImageMagick-6/magick/magick-type.h:125

   subtype MagickStatusType is unsigned;  -- /usr/include/ImageMagick-6/magick/magick-type.h:127

   subtype MagickOffsetType is Long_Long_Integer;  -- /usr/include/ImageMagick-6/magick/magick-type.h:130

   subtype MagickSizeType is Extensions.unsigned_long_long;  -- /usr/include/ImageMagick-6/magick/magick-type.h:131

   subtype MagickAddressType is System.Address;  -- /usr/include/ImageMagick-6/magick/magick-type.h:148

  -- Hope for the best, I guess.  
   subtype QuantumAny is MagickSizeType;  -- /usr/include/ImageMagick-6/magick/magick-type.h:157

  -- deprecated  
  --    Special purpose channel types.
  --   

  -- extract actual alpha channel from opacity  
  -- set alpha from  grayscale mask in RGB  
  -- channels should be modified equally  
   subtype ChannelType is unsigned;
   UndefinedChannel : constant unsigned := 0;
   RedChannel : constant unsigned := 1;
   GrayChannel : constant unsigned := 1;
   CyanChannel : constant unsigned := 1;
   GreenChannel : constant unsigned := 2;
   MagentaChannel : constant unsigned := 2;
   BlueChannel : constant unsigned := 4;
   YellowChannel : constant unsigned := 4;
   AlphaChannel : constant unsigned := 8;
   OpacityChannel : constant unsigned := 8;
   MatteChannel : constant unsigned := 8;
   BlackChannel : constant unsigned := 32;
   IndexChannel : constant unsigned := 32;
   CompositeChannels : constant unsigned := 47;
   AllChannels : constant unsigned := 134217727;
   TrueAlphaChannel : constant unsigned := 64;
   RGBChannels : constant unsigned := 128;
   GrayChannels : constant unsigned := 128;
   SyncChannels : constant unsigned := 256;
   DefaultChannels : constant unsigned := 134217719;  -- /usr/include/ImageMagick-6/magick/magick-type.h:189

   type ClassType is 
     (UndefinedClass,
      DirectClass,
      PseudoClass)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/magick-type.h:196

   type MagickBooleanType is 
     (MagickFalse,
      MagickTrue)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/magick-type.h:202

  --  The IsNaN test is for special floating point numbers of value Nan (not a
  --  number). NaN's are defined as part of the IEEE standard for floating point
  --  number representation, and need to be watched out for. Morphology Kernels
  --  often use these special numbers as neighbourhood masks.
  --  The special property that two NaN's are never equal, even if they are from
  --  the same variable allows you to test if a value is special NaN value.
  --  The macros are thus is only true if the value given is NaN.
  -- 

   type BlobInfo is null record;   -- incomplete struct

   --  subtype BlobInfo is u_BlobInfo;  -- /usr/include/ImageMagick-6/magick/magick-type.h:227

   --  subtype ExceptionInfo is ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.u_ExceptionInfo;  -- /usr/include/ImageMagick-6/magick/magick-type.h:229

   subtype Image is ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;  -- /usr/include/ImageMagick-6/magick/magick-type.h:231

   subtype ImageInfo is ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;  -- /usr/include/ImageMagick-6/magick/magick-type.h:233

end ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
