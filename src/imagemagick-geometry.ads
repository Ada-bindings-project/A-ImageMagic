pragma Ada_2012;

limited with ImageMagick.Image;
private package ImageMagick.Geometry is


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
   type GeometryFlags is mod 2 ** 32;
   NoValue : constant GeometryFlags := 2#0000_0000_0000_0000#;
   XValue : constant GeometryFlags := 2#0000_0000_0000_0001#;
   XiValue : constant GeometryFlags := 2#0000_0000_0000_0001#;
   YValue : constant GeometryFlags := 2#0000_0000_0000_0010#;
   PsiValue : constant GeometryFlags := 2#0000_0000_0000_0010#;
   WidthValue : constant GeometryFlags := 2#0000_0000_0000_0100#;
   RhoValue : constant GeometryFlags := 2#0000_0000_0000_0100#;
   HeightValue : constant GeometryFlags := 2#0000_0000_0000_1000#;
   SigmaValue : constant GeometryFlags := 2#0000_0000_0000_1000#;
   ChiValue : constant GeometryFlags := 2#0000_0000_0001_0000#;
   XiNegative : constant GeometryFlags := 2#0000_0000_0010_0000#;
   XNegative : constant GeometryFlags := 2#0000_0000_0010_0000#;
   PsiNegative : constant GeometryFlags := 2#0000_0000_0100_0000#;
   YNegative : constant GeometryFlags := 2#0000_0000_0100_0000#;
   ChiNegative : constant GeometryFlags := 2#0000_0000_1000_0000#;
   PercentValue : constant GeometryFlags := 4096;
   AspectValue : constant GeometryFlags := 8192;
   NormalizeValue : constant GeometryFlags := 8192;
   LessValue : constant GeometryFlags := 16384;
   GreaterValue : constant GeometryFlags := 32768;
   MinimumValue : constant GeometryFlags := 65536;
   CorrelateNormalizeValue : constant GeometryFlags := 65536;
   AreaValue : constant GeometryFlags := 131072;
   DecimalValue : constant GeometryFlags := 262144;
   SeparatorValue : constant GeometryFlags := 524288;
   AspectRatioValue : constant GeometryFlags := 1048576;
   AllValues : constant GeometryFlags := 2147483647;

   type GravityType is (ForgetGravity    ,
                        NorthWestGravity ,
                        NorthGravity     ,
                        NorthEastGravity ,
                        WestGravity      ,
                        CenterGravity    ,
                        EastGravity      ,
                        SouthWestGravity ,
                        SouthGravity     ,
                        SouthEastGravity ,
                        StaticGravity    );

   UndefinedGravity : constant GravityType := ForgetGravity;

   type AffineMatrix is record
      Sx : aliased Long_Float;
      Rx : aliased Long_Float;
      Ry : aliased Long_Float;
      Sy : aliased Long_Float;
      Tx : aliased Long_Float;
      Ty : aliased Long_Float;
   end record
     with Convention => C;


   type GeometryInfo is record
      Rho   : aliased Long_Float;
      Sigma : aliased Long_Float;
      Xi    : aliased Long_Float;
      Psi   : aliased Long_Float;
      Chi   : aliased Long_Float;
   end record
     with Convention => C;


   type OffsetInfo is record
      X : aliased Long_Integer;
      Y : aliased Long_Integer;
   end record
     with Convention => C;


   type RectangleInfo is record
      Width  : aliased Long_Integer;
      Height : aliased Long_Integer;
      X      : aliased Long_Integer;
      Y      : aliased Long_Integer;
   end record
     with Convention => C;


   function GetPageGeometry (Arg1 : String) return String;

   function IsGeometry (Arg1 : String) return Boolean;

   function IsSceneGeometry (Arg1 : String; Arg2 : Boolean) return Boolean;

   procedure GetGeometry
     (Arg1 : String;
      Arg2 : access Long_Integer;
      Arg3 : access Long_Integer;
      Arg4 : access Long_Integer;
      Arg5 : access Long_Integer);

   procedure ParseAbsoluteGeometry (Arg1 : String; Arg2 : access RectangleInfo);

   procedure ParseAffineGeometry
     (Arg1 : String;
      Arg2 : access AffineMatrix);

   procedure ParseGeometry (Arg1 : String; Arg2 : access GeometryInfo);

   procedure ParseGravityGeometry
     (Arg1 : access constant ImageMagick.image.ImageType;
      Arg2 : String;
      Arg3 : access RectangleInfo);

   procedure ParseMetaGeometry
     (Arg1 : String;
      Arg2 : access Long_Integer;
      Arg3 : access Long_Integer;
      Arg4 : access Long_Integer;
      Arg5 : access Long_Integer);

   procedure ParsePageGeometry
     (Arg1 : access constant ImageMagick.image.ImageType;
      Arg2 : String;
      Arg3 : access RectangleInfo);

   procedure ParseRegionGeometry
     (Arg1 : access constant ImageMagick.image.ImageType;
      Arg2 : String;
      Arg3 : access RectangleInfo);

   procedure GravityAdjustGeometry
     (Arg1 : Long_Integer;
      Arg2 : Long_Integer;
      Arg3 : GravityType;
      Arg4 : access RectangleInfo);

   procedure SetGeometry (Arg1 : access constant ImageMagick.image.ImageType; Arg2 : access RectangleInfo);

   procedure SetGeometryInfo (Arg1 : access GeometryInfo);

end ImageMagick.Geometry;
