pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;
limited with Interfaces.C_Streams;

package ImageMagick.Low_Level.ImageMagick_6_magick_option_h is

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
  --  MagickCore option methods.
  -- 

   subtype CommandOption is int;
   MagickUndefinedOptions : constant int := -1;
   MagickAlignOptions : constant int := 0;
   MagickAlphaOptions : constant int := 1;
   MagickBooleanOptions : constant int := 2;
   MagickCacheOptions : constant int := 3;
   MagickChannelOptions : constant int := 4;
   MagickClassOptions : constant int := 5;
   MagickClipPathOptions : constant int := 6;
   MagickCoderOptions : constant int := 7;
   MagickColorOptions : constant int := 8;
   MagickColorspaceOptions : constant int := 9;
   MagickCommandOptions : constant int := 10;
   MagickComposeOptions : constant int := 11;
   MagickCompressOptions : constant int := 12;
   MagickConfigureOptions : constant int := 13;
   MagickDataTypeOptions : constant int := 14;
   MagickDebugOptions : constant int := 15;
   MagickDecorateOptions : constant int := 16;
   MagickDelegateOptions : constant int := 17;
   MagickDirectionOptions : constant int := 18;
   MagickDisposeOptions : constant int := 19;
   MagickDistortOptions : constant int := 20;
   MagickDitherOptions : constant int := 21;
   MagickEndianOptions : constant int := 22;
   MagickEvaluateOptions : constant int := 23;
   MagickFillRuleOptions : constant int := 24;
   MagickFilterOptions : constant int := 25;
   MagickFontOptions : constant int := 26;
   MagickFontsOptions : constant int := 27;
   MagickFormatOptions : constant int := 28;
   MagickFunctionOptions : constant int := 29;
   MagickGravityOptions : constant int := 30;
   MagickIntentOptions : constant int := 31;
   MagickInterlaceOptions : constant int := 32;
   MagickInterpolateOptions : constant int := 33;
   MagickKernelOptions : constant int := 34;
   MagickLayerOptions : constant int := 35;
   MagickLineCapOptions : constant int := 36;
   MagickLineJoinOptions : constant int := 37;
   MagickListOptions : constant int := 38;
   MagickLocaleOptions : constant int := 39;
   MagickLogEventOptions : constant int := 40;
   MagickLogOptions : constant int := 41;
   MagickMagicOptions : constant int := 42;
   MagickMethodOptions : constant int := 43;
   MagickMetricOptions : constant int := 44;
   MagickMimeOptions : constant int := 45;
   MagickModeOptions : constant int := 46;
   MagickModuleOptions : constant int := 47;
   MagickMorphologyOptions : constant int := 48;
   MagickNoiseOptions : constant int := 49;
   MagickOrientationOptions : constant int := 50;
   MagickPixelIntensityOptions : constant int := 51;
   MagickPolicyOptions : constant int := 52;
   MagickPolicyDomainOptions : constant int := 53;
   MagickPolicyRightsOptions : constant int := 54;
   MagickPreviewOptions : constant int := 55;
   MagickPrimitiveOptions : constant int := 56;
   MagickQuantumFormatOptions : constant int := 57;
   MagickResolutionOptions : constant int := 58;
   MagickResourceOptions : constant int := 59;
   MagickSparseColorOptions : constant int := 60;
   MagickStatisticOptions : constant int := 61;
   MagickStorageOptions : constant int := 62;
   MagickStretchOptions : constant int := 63;
   MagickStyleOptions : constant int := 64;
   MagickThresholdOptions : constant int := 65;
   MagickTypeOptions : constant int := 66;
   MagickValidateOptions : constant int := 67;
   MagickVirtualPixelOptions : constant int := 68;
   MagickComplexOptions : constant int := 69;
   MagickIntensityOptions : constant int := 70;
   MagickGradientOptions : constant int := 71;
   MagickWeightOptions : constant int := 72;
   MagickComplianceOptions : constant int := 73;
   MagickAutoThresholdOptions : constant int := 74;  -- /usr/include/ImageMagick-6/magick/option.h:103

   subtype ValidateType is unsigned;
   UndefinedValidate : constant unsigned := 0;
   NoValidate : constant unsigned := 0;
   ColorspaceValidate : constant unsigned := 1;
   CompareValidate : constant unsigned := 2;
   CompositeValidate : constant unsigned := 4;
   ConvertValidate : constant unsigned := 8;
   FormatsDiskValidate : constant unsigned := 16;
   FormatsMapValidate : constant unsigned := 32;
   FormatsMemoryValidate : constant unsigned := 64;
   IdentifyValidate : constant unsigned := 128;
   ImportExportValidate : constant unsigned := 256;
   MontageValidate : constant unsigned := 512;
   StreamValidate : constant unsigned := 1024;
   AllValidate : constant unsigned := 2147483647;  -- /usr/include/ImageMagick-6/magick/option.h:121

   type u_OptionInfo is record
      mnemonic : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/option.h:126
      c_type : aliased long;  -- /usr/include/ImageMagick-6/magick/option.h:129
      flags : aliased long;  -- /usr/include/ImageMagick-6/magick/option.h:130
      stealth : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/option.h:133
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/option.h:123

   subtype OptionInfo is u_OptionInfo;  -- /usr/include/ImageMagick-6/magick/option.h:134

  --  Flags to describe classes of image processing options.
  -- 

  -- Option sequence firing point  
  -- Sets ImageInfo, no image needed  
  -- Sets DrawInfo, no image needed  
  -- Sets QuantizeInfo, no image needed  
  -- Sets Global Option, no image needed  
  -- Simple Image processing operator  
  -- Multi-Image List processing operator  
  -- Specially handled Operator Option  
  -- Genesis Command Wrapper Option   
  -- Option not used by Convert  
  -- Deprecate option, give warning  
   subtype CommandOptionFlags is unsigned;
   UndefinedOptionFlag : constant unsigned := 0;
   FireOptionFlag : constant unsigned := 1;
   ImageInfoOptionFlag : constant unsigned := 2;
   DrawInfoOptionFlag : constant unsigned := 4;
   QuantizeInfoOptionFlag : constant unsigned := 8;
   GlobalOptionFlag : constant unsigned := 16;
   SimpleOperatorOptionFlag : constant unsigned := 256;
   ListOperatorOptionFlag : constant unsigned := 512;
   SpecialOperatorOptionFlag : constant unsigned := 1024;
   GenesisOptionFlag : constant unsigned := 1024;
   NonConvertOptionFlag : constant unsigned := 16384;
   DeprecateOptionFlag : constant unsigned := 32768;  -- /usr/include/ImageMagick-6/magick/option.h:153

   function GetCommandOptions (arg1 : CommandOption) return System.Address  -- /usr/include/ImageMagick-6/magick/option.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "GetCommandOptions";

   function GetNextImageOption (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/option.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextImageOption";

   function RemoveImageOption (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/option.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveImageOption";

   function CommandOptionToMnemonic (arg1 : CommandOption; arg2 : long) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/option.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "CommandOptionToMnemonic";

   function GetImageOption (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/option.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageOption";

   function CloneImageOptions (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/option.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImageOptions";

   function DefineImageOption (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/option.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "DefineImageOption";

   function DeleteImageOption (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/option.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteImageOption";

   function IsCommandOption (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/option.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "IsCommandOption";

   function IsOptionMember (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/option.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "IsOptionMember";

   function ListCommandOptions
     (arg1 : access Interfaces.C_Streams.FILEs;
      arg2 : CommandOption;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/option.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "ListCommandOptions";

   function SetImageOption
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/option.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageOption";

   function GetCommandOptionFlags
     (arg1 : CommandOption;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : Interfaces.C.Strings.chars_ptr) return long  -- /usr/include/ImageMagick-6/magick/option.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "GetCommandOptionFlags";

   function ParseChannelOption (arg1 : Interfaces.C.Strings.chars_ptr) return long  -- /usr/include/ImageMagick-6/magick/option.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "ParseChannelOption";

   function ParseCommandOption
     (arg1 : CommandOption;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : Interfaces.C.Strings.chars_ptr) return long  -- /usr/include/ImageMagick-6/magick/option.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "ParseCommandOption";

   procedure DestroyImageOptions (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo)  -- /usr/include/ImageMagick-6/magick/option.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImageOptions";

   procedure ResetImageOptions (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo)  -- /usr/include/ImageMagick-6/magick/option.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "ResetImageOptions";

   procedure ResetImageOptionIterator (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo)  -- /usr/include/ImageMagick-6/magick/option.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "ResetImageOptionIterator";

end ImageMagick.Low_Level.ImageMagick_6_magick_option_h;
