pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_draw_h;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;


with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_composite_h;
with ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_type_h;
with ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h;


package ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h is

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
  --  MagickWand drawing wand methods.
  -- 

   type u_DrawingWand is null record;   -- incomplete struct

   subtype DrawingWand is u_DrawingWand;  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:28

   function DrawGetTextAlignment (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.AlignType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetTextAlignment";

   function DrawGetClipPath (arg1 : access constant DrawingWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetClipPath";

   function DrawGetDensity (arg1 : access constant DrawingWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetDensity";

   function DrawGetException (arg1 : access constant DrawingWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetException";

   function DrawGetFont (arg1 : access constant DrawingWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFont";

   function DrawGetFontFamily (arg1 : access constant DrawingWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFontFamily";

   function DrawGetTextEncoding (arg1 : access constant DrawingWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetTextEncoding";

   function DrawGetVectorGraphics (arg1 : access DrawingWand) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetVectorGraphics";

   function DrawGetClipUnits (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.ClipPathUnits  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetClipUnits";

   function DrawGetTextDecoration (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DecorationType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetTextDecoration";

   function DrawGetTextDirection (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DirectionType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetTextDirection";

   function DrawGetFillOpacity (arg1 : access constant DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFillOpacity";

   function DrawGetFontSize (arg1 : access constant DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFontSize";

   function DrawGetOpacity (arg1 : access constant DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetOpacity";

   function DrawGetStrokeDashArray (arg1 : access constant DrawingWand; arg2 : access size_t) return access double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeDashArray";

   function DrawGetStrokeDashOffset (arg1 : access constant DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeDashOffset";

   function DrawGetStrokeOpacity (arg1 : access constant DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeOpacity";

   function DrawGetStrokeWidth (arg1 : access constant DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeWidth";

   function DrawGetTextKerning (arg1 : access DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetTextKerning";

   function DrawGetTextInterlineSpacing (arg1 : access DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetTextInterlineSpacing";

   function DrawGetTextInterwordSpacing (arg1 : access DrawingWand) return double  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetTextInterwordSpacing";

   function PeekDrawingWand (arg1 : access constant DrawingWand) return access ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "PeekDrawingWand";

   function AcquireDrawingWand (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DrawInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access DrawingWand  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireDrawingWand";

   function CloneDrawingWand (arg1 : access constant DrawingWand) return access DrawingWand  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "CloneDrawingWand";

   function DestroyDrawingWand (arg1 : access DrawingWand) return access DrawingWand  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyDrawingWand";

   function NewDrawingWand return access DrawingWand  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "NewDrawingWand";

   function DrawGetExceptionType (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetExceptionType";

   function DrawGetClipRule (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.FillRule  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetClipRule";

   function DrawGetFillRule (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.FillRule  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFillRule";

   function DrawGetGravity (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetGravity";

   function DrawGetStrokeLineCap (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.LineCap  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeLineCap";

   function DrawGetStrokeLineJoin (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.LineJoin  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeLineJoin";

   function DrawClearException (arg1 : access DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "DrawClearException";

   function DrawComposite
     (arg1 : access DrawingWand;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double;
      arg7 : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "DrawComposite";

   function DrawGetFontResolution
     (arg1 : access constant DrawingWand;
      arg2 : access double;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFontResolution";

   function DrawGetStrokeAntialias (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeAntialias";

   function DrawGetTextAntialias (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetTextAntialias";

   function DrawPopPattern (arg1 : access DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPopPattern";

   function DrawPushPattern
     (arg1 : access DrawingWand;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPushPattern";

   function DrawRender (arg1 : access DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "DrawRender";

   function DrawSetClipPath (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetClipPath";

   function DrawSetDensity (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetDensity";

   function DrawSetFillPatternURL (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFillPatternURL";

   function DrawSetFont (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFont";

   function DrawSetFontFamily (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFontFamily";

   function DrawSetFontResolution
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFontResolution";

   function DrawSetStrokeDashArray
     (arg1 : access DrawingWand;
      arg2 : size_t;
      arg3 : access double) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeDashArray";

   function DrawSetStrokePatternURL (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokePatternURL";

   function DrawSetVectorGraphics (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetVectorGraphics";

   function IsDrawingWand (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "IsDrawingWand";

   function PopDrawingWand (arg1 : access DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "PopDrawingWand";

   function PushDrawingWand (arg1 : access DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "PushDrawingWand";

   function DrawGetFontStretch (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_type_h.StretchType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFontStretch";

   function DrawGetFontStyle (arg1 : access constant DrawingWand) return ImageMagick.Low_Level.ImageMagick_6_magick_type_h.StyleType  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFontStyle";

   function DrawGetFontWeight (arg1 : access constant DrawingWand) return size_t  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFontWeight";

   function DrawGetStrokeMiterLimit (arg1 : access constant DrawingWand) return size_t  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeMiterLimit";

   procedure ClearDrawingWand (arg1 : access DrawingWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "ClearDrawingWand";

   procedure DrawAffine (arg1 : access DrawingWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.AffineMatrix)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "DrawAffine";

   procedure DrawAnnotation
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : access unsigned_char)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "DrawAnnotation";

   procedure DrawArc
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double;
      arg7 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "DrawArc";

   procedure DrawBezier
     (arg1 : access DrawingWand;
      arg2 : size_t;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PointInfo)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "DrawBezier";

   procedure DrawGetBorderColor (arg1 : access constant DrawingWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetBorderColor";

   procedure DrawCircle
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "DrawCircle";

   procedure DrawColor
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PaintMethod)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "DrawColor";

   procedure DrawComment (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "DrawComment";

   procedure DrawEllipse
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double;
      arg7 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "DrawEllipse";

   procedure DrawGetFillColor (arg1 : access constant DrawingWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetFillColor";

   procedure DrawGetStrokeColor (arg1 : access constant DrawingWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetStrokeColor";

   procedure DrawSetTextKerning (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetTextKerning";

   procedure DrawSetTextInterlineSpacing (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetTextInterlineSpacing";

   procedure DrawSetTextInterwordSpacing (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetTextInterwordSpacing";

   procedure DrawGetTextUnderColor (arg1 : access constant DrawingWand; arg2 : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGetTextUnderColor";

   procedure DrawLine
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "DrawLine";

   procedure DrawMatte
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PaintMethod)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "DrawMatte";

   procedure DrawPathClose (arg1 : access DrawingWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathClose";

   procedure DrawPathCurveToAbsolute
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double;
      arg7 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathCurveToAbsolute";

   procedure DrawPathCurveToRelative
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double;
      arg7 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathCurveToRelative";

   procedure DrawPathCurveToQuadraticBezierAbsolute
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathCurveToQuadraticBezierAbsolute";

   procedure DrawPathCurveToQuadraticBezierRelative
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathCurveToQuadraticBezierRelative";

   procedure DrawPathCurveToQuadraticBezierSmoothAbsolute
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathCurveToQuadraticBezierSmoothAbsolute";

   procedure DrawPathCurveToQuadraticBezierSmoothRelative
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathCurveToQuadraticBezierSmoothRelative";

   procedure DrawPathCurveToSmoothAbsolute
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathCurveToSmoothAbsolute";

   procedure DrawPathCurveToSmoothRelative
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathCurveToSmoothRelative";

   procedure DrawPathEllipticArcAbsolute
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg6 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg7 : double;
      arg8 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathEllipticArcAbsolute";

   procedure DrawPathEllipticArcRelative
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg6 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg7 : double;
      arg8 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathEllipticArcRelative";

   procedure DrawPathFinish (arg1 : access DrawingWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathFinish";

   procedure DrawPathLineToAbsolute
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathLineToAbsolute";

   procedure DrawPathLineToRelative
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathLineToRelative";

   procedure DrawPathLineToHorizontalAbsolute (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathLineToHorizontalAbsolute";

   procedure DrawPathLineToHorizontalRelative (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathLineToHorizontalRelative";

   procedure DrawPathLineToVerticalAbsolute (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathLineToVerticalAbsolute";

   procedure DrawPathLineToVerticalRelative (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathLineToVerticalRelative";

   procedure DrawPathMoveToAbsolute
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathMoveToAbsolute";

   procedure DrawPathMoveToRelative
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathMoveToRelative";

   procedure DrawPathStart (arg1 : access DrawingWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPathStart";

   procedure DrawPoint
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPoint";

   procedure DrawPolygon
     (arg1 : access DrawingWand;
      arg2 : size_t;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PointInfo)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPolygon";

   procedure DrawPolyline
     (arg1 : access DrawingWand;
      arg2 : size_t;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.PointInfo)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPolyline";

   procedure DrawPopClipPath (arg1 : access DrawingWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPopClipPath";

   procedure DrawPopDefs (arg1 : access DrawingWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPopDefs";

   procedure DrawPushClipPath (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPushClipPath";

   procedure DrawPushDefs (arg1 : access DrawingWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPushDefs";

   procedure DrawRectangle
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "DrawRectangle";

   procedure DrawResetVectorGraphics (arg1 : access DrawingWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "DrawResetVectorGraphics";

   procedure DrawRotate (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "DrawRotate";

   procedure DrawRoundRectangle
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double;
      arg4 : double;
      arg5 : double;
      arg6 : double;
      arg7 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "DrawRoundRectangle";

   procedure DrawScale
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "DrawScale";

   procedure DrawSetBorderColor (arg1 : access DrawingWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetBorderColor";

   procedure DrawSetClipRule (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.FillRule)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetClipRule";

   procedure DrawSetClipUnits (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.ClipPathUnits)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetClipUnits";

   procedure DrawSetFillColor (arg1 : access DrawingWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFillColor";

   procedure DrawSetFillOpacity (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFillOpacity";

   procedure DrawSetFillRule (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.FillRule)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFillRule";

   procedure DrawSetFontSize (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:195
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFontSize";

   procedure DrawSetFontStretch (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_type_h.StretchType)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:196
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFontStretch";

   procedure DrawSetFontStyle (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_type_h.StyleType)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFontStyle";

   procedure DrawSetFontWeight (arg1 : access DrawingWand; arg2 : size_t)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetFontWeight";

   procedure DrawSetGravity (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetGravity";

   procedure DrawSetOpacity (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetOpacity";

   procedure DrawSetStrokeAntialias (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeAntialias";

   procedure DrawSetStrokeColor (arg1 : access DrawingWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeColor";

   procedure DrawSetStrokeDashOffset (arg1 : access DrawingWand; dashoffset : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeDashOffset";

   procedure DrawSetStrokeLineCap (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.LineCap)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeLineCap";

   procedure DrawSetStrokeLineJoin (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.LineJoin)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeLineJoin";

   procedure DrawSetStrokeMiterLimit (arg1 : access DrawingWand; arg2 : size_t)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeMiterLimit";

   procedure DrawSetStrokeOpacity (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeOpacity";

   procedure DrawSetStrokeWidth (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetStrokeWidth";

   procedure DrawSetTextAlignment (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.AlignType)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetTextAlignment";

   procedure DrawSetTextAntialias (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetTextAntialias";

   procedure DrawSetTextDecoration (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DecorationType)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetTextDecoration";

   procedure DrawSetTextDirection (arg1 : access DrawingWand; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_draw_h.DirectionType)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetTextDirection";

   procedure DrawSetTextEncoding (arg1 : access DrawingWand; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetTextEncoding";

   procedure DrawSetTextUnderColor (arg1 : access DrawingWand; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_wand_pixel_wand_h.PixelWand)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetTextUnderColor";

   procedure DrawSetViewbox
     (arg1 : access DrawingWand;
      arg2 : long;
      arg3 : long;
      arg4 : long;
      arg5 : long)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSetViewbox";

   procedure DrawSkewX (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSkewX";

   procedure DrawSkewY (arg1 : access DrawingWand; arg2 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "DrawSkewY";

   procedure DrawTranslate
     (arg1 : access DrawingWand;
      arg2 : double;
      arg3 : double)  -- /usr/include/ImageMagick-6/wand/drawing-wand.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "DrawTranslate";

end ImageMagick.Low_Level.ImageMagick_6_wand_drawing_wand_h;
