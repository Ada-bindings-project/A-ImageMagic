pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;


with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_composite_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_type_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_color_h;
with System;

package ImageMagick.Low_Level.ImageMagick_6_magick_draw_h is

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
  --  MagickCore drawing methods.
  -- 

   type AlignType is 
     (UndefinedAlign,
      LeftAlign,
      CenterAlign,
      RightAlign)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:37

   type ClipPathUnits is 
     (UndefinedPathUnits,
      UserSpace,
      UserSpaceOnUse,
      ObjectBoundingBox)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:45

   type DecorationType is 
     (UndefinedDecoration,
      NoDecoration,
      UnderlineDecoration,
      OverlineDecoration,
      LineThroughDecoration)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:54

   type DirectionType is 
     (UndefinedDirection,
      RightToLeftDirection,
      LeftToRightDirection)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:61

   type FillRule is 
     (UndefinedRule,
      EvenOddRule,
      NonZeroRule)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:69

   type GradientType is 
     (UndefinedGradient,
      LinearGradient,
      RadialGradient)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:76

   type LineCap is 
     (UndefinedCap,
      ButtCap,
      RoundCap,
      SquareCap)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:84

   type LineJoin is 
     (UndefinedJoin,
      MiterJoin,
      RoundJoin,
      BevelJoin)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:92

   type PaintMethod is 
     (UndefinedMethod,
      PointMethod,
      ReplaceMethod,
      FloodfillMethod,
      FillToBorderMethod,
      ResetMethod)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:102

   type PrimitiveType is 
     (UndefinedPrimitive,
      PointPrimitive,
      LinePrimitive,
      RectanglePrimitive,
      RoundRectanglePrimitive,
      ArcPrimitive,
      EllipsePrimitive,
      CirclePrimitive,
      PolylinePrimitive,
      PolygonPrimitive,
      BezierPrimitive,
      ColorPrimitive,
      MattePrimitive,
      TextPrimitive,
      ImagePrimitive,
      PathPrimitive)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:122

   type ReferenceType is 
     (UndefinedReference,
      GradientReference)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:128

   type SpreadMethod is 
     (UndefinedSpread,
      PadSpread,
      ReflectSpread,
      RepeatSpread)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/draw.h:136

   type u_PointInfo is record
      x : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:141
      y : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:142
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/draw.h:138

   subtype PointInfo is u_PointInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:143

   type u_StopInfo is record
      color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;  -- /usr/include/ImageMagick-6/magick/draw.h:148
      offset : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:151
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/draw.h:145

   subtype StopInfo is u_StopInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:152

   type u_GradientInfo is record
      c_type : aliased GradientType;  -- /usr/include/ImageMagick-6/magick/draw.h:157
      bounding_box : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:160
      gradient_vector : aliased ImageMagick.Low_Level.ImageMagick_6_magick_image_h.SegmentInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:163
      stops : access StopInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:166
      number_stops : aliased size_t;  -- /usr/include/ImageMagick-6/magick/draw.h:169
      spread : aliased SpreadMethod;  -- /usr/include/ImageMagick-6/magick/draw.h:172
      debug : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/draw.h:175
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/draw.h:178
      center : aliased PointInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:181
      radius : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:184
      angle : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:185
      radii : aliased PointInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:188
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/draw.h:154

   subtype GradientInfo is u_GradientInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:189

   type u_ElementReference;
   type u_ElementReference is record
      id : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:194
      c_type : aliased ReferenceType;  -- /usr/include/ImageMagick-6/magick/draw.h:197
      gradient : aliased GradientInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:200
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/draw.h:203
      previous : access u_ElementReference;  -- /usr/include/ImageMagick-6/magick/draw.h:206
      next : access u_ElementReference;  -- /usr/include/ImageMagick-6/magick/draw.h:207
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/draw.h:191

   subtype ElementReference is u_ElementReference;  -- /usr/include/ImageMagick-6/magick/draw.h:208

   type u_DrawInfo is record
      primitive : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:213
      geometry : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:214
      viewbox : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:217
      affine : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.AffineMatrix;  -- /usr/include/ImageMagick-6/magick/draw.h:220
      gravity : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType;  -- /usr/include/ImageMagick-6/magick/draw.h:223
      fill : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/draw.h:226
      stroke : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/draw.h:227
      stroke_width : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:230
      gradient : aliased GradientInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:233
      fill_pattern : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;  -- /usr/include/ImageMagick-6/magick/draw.h:236
      tile : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;  -- /usr/include/ImageMagick-6/magick/draw.h:237
      stroke_pattern : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;  -- /usr/include/ImageMagick-6/magick/draw.h:238
      stroke_antialias : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/draw.h:241
      text_antialias : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/draw.h:242
      fill_rule : aliased FillRule;  -- /usr/include/ImageMagick-6/magick/draw.h:245
      the_linecap : aliased LineCap;  -- /usr/include/ImageMagick-6/magick/draw.h:248
      the_linejoin : aliased LineJoin;  -- /usr/include/ImageMagick-6/magick/draw.h:251
      miterlimit : aliased size_t;  -- /usr/include/ImageMagick-6/magick/draw.h:254
      dash_offset : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:257
      decorate : aliased DecorationType;  -- /usr/include/ImageMagick-6/magick/draw.h:260
      compose : aliased ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator;  -- /usr/include/ImageMagick-6/magick/draw.h:263
      text : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:266
      face : aliased size_t;  -- /usr/include/ImageMagick-6/magick/draw.h:269
      font : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:272
      metrics : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:273
      family : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:274
      style : aliased ImageMagick.Low_Level.ImageMagick_6_magick_type_h.StyleType;  -- /usr/include/ImageMagick-6/magick/draw.h:277
      stretch : aliased ImageMagick.Low_Level.ImageMagick_6_magick_type_h.StretchType;  -- /usr/include/ImageMagick-6/magick/draw.h:280
      weight : aliased size_t;  -- /usr/include/ImageMagick-6/magick/draw.h:283
      encoding : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:286
      pointsize : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:289
      density : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:292
      align : aliased AlignType;  -- /usr/include/ImageMagick-6/magick/draw.h:295
      undercolor : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/draw.h:298
      border_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/draw.h:299
      server_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:302
      dash_pattern : access double;  -- /usr/include/ImageMagick-6/magick/draw.h:305
      clip_mask : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:308
      bounds : aliased ImageMagick.Low_Level.ImageMagick_6_magick_image_h.SegmentInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:311
      clip_units : aliased ClipPathUnits;  -- /usr/include/ImageMagick-6/magick/draw.h:314
      opacity : aliased unsigned_short;  -- /usr/include/ImageMagick-6/magick/draw.h:317
      render : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/draw.h:320
      element_reference : aliased ElementReference;  -- /usr/include/ImageMagick-6/magick/draw.h:323
      debug : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/draw.h:326
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/draw.h:329
      kerning : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:332
      interword_spacing : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:333
      interline_spacing : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:334
      direction : aliased DirectionType;  -- /usr/include/ImageMagick-6/magick/draw.h:337
      fill_opacity : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:340
      stroke_opacity : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:341
      clip_path : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/draw.h:344
      clipping_mask : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;  -- /usr/include/ImageMagick-6/magick/draw.h:347
      compliance : aliased ImageMagick.Low_Level.ImageMagick_6_magick_color_h.ComplianceType;  -- /usr/include/ImageMagick-6/magick/draw.h:350
      composite_mask : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;  -- /usr/include/ImageMagick-6/magick/draw.h:353
      id : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:356
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/draw.h:210

   subtype DrawInfo is u_DrawInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:357

   type u_PrimitiveInfo is record
      point : aliased PointInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:362
      coordinates : aliased size_t;  -- /usr/include/ImageMagick-6/magick/draw.h:365
      primitive : aliased PrimitiveType;  -- /usr/include/ImageMagick-6/magick/draw.h:368
      method : aliased PaintMethod;  -- /usr/include/ImageMagick-6/magick/draw.h:371
      text : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/draw.h:374
      closed_subpath : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/draw.h:377
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/draw.h:359

   subtype PrimitiveInfo is u_PrimitiveInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:378

   type u_TypeMetric is record
      pixels_per_em : aliased PointInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:383
      ascent : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:386
      descent : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:387
      width : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:388
      height : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:389
      max_advance : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:390
      underline_position : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:391
      underline_thickness : aliased double;  -- /usr/include/ImageMagick-6/magick/draw.h:392
      bounds : aliased ImageMagick.Low_Level.ImageMagick_6_magick_image_h.SegmentInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:395
      origin : aliased PointInfo;  -- /usr/include/ImageMagick-6/magick/draw.h:398
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/draw.h:380

   subtype TypeMetric is u_TypeMetric;  -- /usr/include/ImageMagick-6/magick/draw.h:399

   function AcquireDrawInfo return access DrawInfo  -- /usr/include/ImageMagick-6/magick/draw.h:402
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireDrawInfo";

   function CloneDrawInfo (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access constant DrawInfo) return access DrawInfo  -- /usr/include/ImageMagick-6/magick/draw.h:403
   with Import => True, 
        Convention => C, 
        External_Name => "CloneDrawInfo";

   function DestroyDrawInfo (arg1 : access DrawInfo) return access DrawInfo  -- /usr/include/ImageMagick-6/magick/draw.h:404
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyDrawInfo";

   function DrawAffineImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.AffineMatrix) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/draw.h:407
   with Import => True, 
        Convention => C, 
        External_Name => "DrawAffineImage";

   function DrawClipPath
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant DrawInfo;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/draw.h:408
   with Import => True, 
        Convention => C, 
        External_Name => "DrawClipPath";

   function DrawGradientImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant DrawInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/draw.h:409
   with Import => True, 
        Convention => C, 
        External_Name => "DrawGradientImage";

   function DrawImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant DrawInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/draw.h:410
   with Import => True, 
        Convention => C, 
        External_Name => "DrawImage";

   function DrawPatternPath
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant DrawInfo;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/draw.h:411
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPatternPath";

   function DrawPrimitive
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant DrawInfo;
      arg3 : access constant PrimitiveInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/draw.h:412
   with Import => True, 
        Convention => C, 
        External_Name => "DrawPrimitive";

   procedure GetAffineMatrix (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.AffineMatrix)  -- /usr/include/ImageMagick-6/magick/draw.h:415
   with Import => True, 
        Convention => C, 
        External_Name => "GetAffineMatrix";

   procedure GetDrawInfo (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access DrawInfo)  -- /usr/include/ImageMagick-6/magick/draw.h:416
   with Import => True, 
        Convention => C, 
        External_Name => "GetDrawInfo";

end ImageMagick.Low_Level.ImageMagick_6_magick_draw_h;
