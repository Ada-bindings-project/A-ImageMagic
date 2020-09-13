pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;


with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h is

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
  --  MagickCore image geometry methods.
  -- 

  -- '%'  percentage of something  
  -- '!'  resize no-aspect - special use flag  
  -- '!'  ScaleKernelValue() in morphology.c  
  -- '<'  resize smaller - special use flag  
  -- '>'  resize larger - spacial use flag  
  -- '^'  special handling needed  
  -- '^' see ScaleKernelValue()  
  -- '@'  resize to area - special use flag  
  -- '.'  floating point numbers found  
  -- 'x'  separator found   
  -- '~'  special handling needed   
   subtype GeometryFlags is unsigned;
   NoValue : constant unsigned := 0;
   XValue : constant unsigned := 1;
   XiValue : constant unsigned := 1;
   YValue : constant unsigned := 2;
   PsiValue : constant unsigned := 2;
   WidthValue : constant unsigned := 4;
   RhoValue : constant unsigned := 4;
   HeightValue : constant unsigned := 8;
   SigmaValue : constant unsigned := 8;
   ChiValue : constant unsigned := 16;
   XiNegative : constant unsigned := 32;
   XNegative : constant unsigned := 32;
   PsiNegative : constant unsigned := 64;
   YNegative : constant unsigned := 64;
   ChiNegative : constant unsigned := 128;
   PercentValue : constant unsigned := 4096;
   AspectValue : constant unsigned := 8192;
   NormalizeValue : constant unsigned := 8192;
   LessValue : constant unsigned := 16384;
   GreaterValue : constant unsigned := 32768;
   MinimumValue : constant unsigned := 65536;
   CorrelateNormalizeValue : constant unsigned := 65536;
   AreaValue : constant unsigned := 131072;
   DecimalValue : constant unsigned := 262144;
   SeparatorValue : constant unsigned := 524288;
   AspectRatioValue : constant unsigned := 1048576;
   AllValues : constant unsigned := 2147483647;  -- /usr/include/ImageMagick-6/magick/geometry.h:62

   subtype GravityType is unsigned;
   UndefinedGravity : constant unsigned := 0;
   ForgetGravity : constant unsigned := 0;
   NorthWestGravity : constant unsigned := 1;
   NorthGravity : constant unsigned := 2;
   NorthEastGravity : constant unsigned := 3;
   WestGravity : constant unsigned := 4;
   CenterGravity : constant unsigned := 5;
   EastGravity : constant unsigned := 6;
   SouthWestGravity : constant unsigned := 7;
   SouthGravity : constant unsigned := 8;
   SouthEastGravity : constant unsigned := 9;
   StaticGravity : constant unsigned := 10;  -- /usr/include/ImageMagick-6/magick/geometry.h:92

   type AffineMatrix is record
      sx : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:97
      rx : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:98
      ry : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:99
      sy : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:100
      tx : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:101
      ty : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:102
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/geometry.h:94

   -- subtype AffineMatrix is u_AffineMatrix;  -- /usr/include/ImageMagick-6/magick/geometry.h:103

   type GeometryInfo is record
      rho : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:108
      sigma : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:109
      xi : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:110
      psi : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:111
      chi : aliased double;  -- /usr/include/ImageMagick-6/magick/geometry.h:112
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/geometry.h:105

   --  subtype GeometryInfo is u_GeometryInfo;  -- /usr/include/ImageMagick-6/magick/geometry.h:113

   type OffsetInfo is record
      x : aliased long;  -- /usr/include/ImageMagick-6/magick/geometry.h:118
      y : aliased long;  -- /usr/include/ImageMagick-6/magick/geometry.h:119
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/geometry.h:115

   -- subtype OffsetInfo is u_OffsetInfo;  -- /usr/include/ImageMagick-6/magick/geometry.h:120

   type RectangleInfo is record
      width : aliased size_t;  -- /usr/include/ImageMagick-6/magick/geometry.h:125
      height : aliased size_t;  -- /usr/include/ImageMagick-6/magick/geometry.h:126
      x : aliased long;  -- /usr/include/ImageMagick-6/magick/geometry.h:129
      y : aliased long;  -- /usr/include/ImageMagick-6/magick/geometry.h:130
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/geometry.h:122

   --  subtype RectangleInfo is u_RectangleInfo;  -- /usr/include/ImageMagick-6/magick/geometry.h:131

   function GetPageGeometry (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/geometry.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "GetPageGeometry";

   function IsGeometry (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/geometry.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "IsGeometry";

   function IsSceneGeometry (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/geometry.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "IsSceneGeometry";

   function GetGeometry
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access long;
      arg3 : access long;
      arg4 : access size_t;
      arg5 : access size_t) return unsigned  -- /usr/include/ImageMagick-6/magick/geometry.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "GetGeometry";

   function ParseAbsoluteGeometry (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access RectangleInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/geometry.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "ParseAbsoluteGeometry";

   function ParseAffineGeometry
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access AffineMatrix;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/geometry.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "ParseAffineGeometry";

   function ParseGeometry (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access GeometryInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/geometry.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "ParseGeometry";

   function ParseGravityGeometry
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access RectangleInfo;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/geometry.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "ParseGravityGeometry";

   function ParseMetaGeometry
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access long;
      arg3 : access long;
      arg4 : access size_t;
      arg5 : access size_t) return unsigned  -- /usr/include/ImageMagick-6/magick/geometry.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "ParseMetaGeometry";

   function ParsePageGeometry
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access RectangleInfo;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/geometry.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "ParsePageGeometry";

   function ParseRegionGeometry
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access RectangleInfo;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return unsigned  -- /usr/include/ImageMagick-6/magick/geometry.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "ParseRegionGeometry";

   procedure GravityAdjustGeometry
     (arg1 : size_t;
      arg2 : size_t;
      arg3 : GravityType;
      arg4 : access RectangleInfo)  -- /usr/include/ImageMagick-6/magick/geometry.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "GravityAdjustGeometry";

   procedure SetGeometry (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access RectangleInfo)  -- /usr/include/ImageMagick-6/magick/geometry.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "SetGeometry";

   procedure SetGeometryInfo (arg1 : access GeometryInfo)  -- /usr/include/ImageMagick-6/magick/geometry.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "SetGeometryInfo";

end ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;
