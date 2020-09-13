pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


with ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h is

   --  arg-macro: procedure RoundToQuantum (quantum)
   --    ClampToQuantum(quantum)
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
  --  MagickCore quantum inline methods.
  -- 

   type EndianType is 
     (UndefinedEndian,
      LSBEndian,
      MSBEndian)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/quantum.h:36

   type QuantumAlphaType is 
     (UndefinedQuantumAlpha,
      AssociatedQuantumAlpha,
      DisassociatedQuantumAlpha)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/quantum.h:43

   type QuantumFormatType is 
     (UndefinedQuantumFormat,
      FloatingPointQuantumFormat,
      SignedQuantumFormat,
      UnsignedQuantumFormat)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/quantum.h:51

  -- deprecated  
   type QuantumType is 
     (UndefinedQuantum,
      AlphaQuantum,
      BlackQuantum,
      BlueQuantum,
      CMYKAQuantum,
      CMYKQuantum,
      CyanQuantum,
      GrayAlphaQuantum,
      GrayQuantum,
      GreenQuantum,
      IndexAlphaQuantum,
      IndexQuantum,
      MagentaQuantum,
      OpacityQuantum,
      RedQuantum,
      RGBAQuantum,
      BGRAQuantum,
      RGBOQuantum,
      RGBQuantum,
      YellowQuantum,
      GrayPadQuantum,
      RGBPadQuantum,
      CbYCrYQuantum,
      CbYCrQuantum,
      CbYCrAQuantum,
      CMYKOQuantum,
      BGRQuantum,
      BGROQuantum)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/quantum.h:83

   type u_QuantumInfo is null record;   -- incomplete struct

   subtype QuantumInfo is u_QuantumInfo;  -- /usr/include/ImageMagick-6/magick/quantum.h:86

   function ClampToQuantum (quantum : double) return unsigned_short  -- /usr/include/ImageMagick-6/magick/quantum.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "ClampToQuantum";

   function ScaleQuantumToChar (the_quantum : unsigned_short) return unsigned_char  -- /usr/include/ImageMagick-6/magick/quantum.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "ScaleQuantumToChar";

   function GetQuantumEndian (arg1 : access constant QuantumInfo) return EndianType  -- /usr/include/ImageMagick-6/magick/quantum.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "GetQuantumEndian";

   function SetQuantumDepth
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access QuantumInfo;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantum.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumDepth";

   function SetQuantumEndian
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access QuantumInfo;
      arg3 : EndianType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantum.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumEndian";

   function SetQuantumFormat
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access QuantumInfo;
      arg3 : QuantumFormatType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantum.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumFormat";

   function SetQuantumPad
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access QuantumInfo;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/quantum.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumPad";

   function GetQuantumFormat (arg1 : access constant QuantumInfo) return QuantumFormatType  -- /usr/include/ImageMagick-6/magick/quantum.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "GetQuantumFormat";

   function AcquireQuantumInfo (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access QuantumInfo  -- /usr/include/ImageMagick-6/magick/quantum.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireQuantumInfo";

   function DestroyQuantumInfo (arg1 : access QuantumInfo) return access QuantumInfo  -- /usr/include/ImageMagick-6/magick/quantum.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyQuantumInfo";

   function GetQuantumType (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return QuantumType  -- /usr/include/ImageMagick-6/magick/quantum.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "GetQuantumType";

   function ExportQuantumPixels
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView;
      arg3 : access constant QuantumInfo;
      arg4 : QuantumType;
      arg5 : access unsigned_char;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return size_t  -- /usr/include/ImageMagick-6/magick/quantum.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "ExportQuantumPixels";

   function GetQuantumExtent
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant QuantumInfo;
      arg3 : QuantumType) return size_t  -- /usr/include/ImageMagick-6/magick/quantum.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "GetQuantumExtent";

   function ImportQuantumPixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.CacheView;
      arg3 : access constant QuantumInfo;
      arg4 : QuantumType;
      arg5 : access unsigned_char;
      arg6 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return size_t  -- /usr/include/ImageMagick-6/magick/quantum.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "ImportQuantumPixels";

   function GetQuantumPixels (arg1 : access constant QuantumInfo) return access unsigned_char  -- /usr/include/ImageMagick-6/magick/quantum.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "GetQuantumPixels";

   procedure GetQuantumInfo (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access QuantumInfo)  -- /usr/include/ImageMagick-6/magick/quantum.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "GetQuantumInfo";

   procedure SetQuantumAlphaType (arg1 : access QuantumInfo; arg2 : QuantumAlphaType)  -- /usr/include/ImageMagick-6/magick/quantum.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumAlphaType";

   procedure SetQuantumImageType (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : QuantumType)  -- /usr/include/ImageMagick-6/magick/quantum.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumImageType";

   procedure SetQuantumMinIsWhite (arg1 : access QuantumInfo; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType)  -- /usr/include/ImageMagick-6/magick/quantum.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumMinIsWhite";

   procedure SetQuantumPack (arg1 : access QuantumInfo; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType)  -- /usr/include/ImageMagick-6/magick/quantum.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumPack";

   procedure SetQuantumQuantum (arg1 : access QuantumInfo; arg2 : size_t)  -- /usr/include/ImageMagick-6/magick/quantum.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumQuantum";

   procedure SetQuantumScale (arg1 : access QuantumInfo; arg2 : double)  -- /usr/include/ImageMagick-6/magick/quantum.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "SetQuantumScale";

end ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h;
