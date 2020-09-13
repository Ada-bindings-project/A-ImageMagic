with ImageMagick.Low_Level.ImageMagick_6_Magick_Image_H;
with ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h;
with System;
with Interfaces.C;use Interfaces.C;
private
package ImageMagick.Pixels is

   type InterpolatePixelMethod is
     (UndefinedInterpolatePixel,
      AverageInterpolatePixel,
      BicubicInterpolatePixel,
      BilinearInterpolatePixel,
      FilterInterpolatePixel,
      IntegerInterpolatePixel,
      MeshInterpolatePixel,
      NearestNeighborInterpolatePixel,
      SplineInterpolatePixel,
      Average9InterpolatePixel,
      Average16InterpolatePixel,
      BlendInterpolatePixel,
      BackgroundInterpolatePixel,
      CatromInterpolatePixel)
   with Convention => C;

   type PixelComponent is range 0..8;
   PixelRed : constant PixelComponent := 0;
   PixelCyan : constant PixelComponent := 0;
   PixelGray : constant PixelComponent := 0;
   PixelY : constant PixelComponent := 0;
   PixelGreen : constant PixelComponent := 1;
   PixelMagenta : constant PixelComponent := 1;
   PixelCb : constant PixelComponent := 1;
   PixelBlue : constant PixelComponent := 2;
   PixelYellow : constant PixelComponent := 2;
   PixelCr : constant PixelComponent := 2;
   PixelAlpha : constant PixelComponent := 3;
   PixelBlack : constant PixelComponent := 4;
   PixelIndex : constant PixelComponent := 4;
   MaskPixelComponent : constant PixelComponent := 5;

   type PixelIntensityMethod is
     (UndefinedPixelIntensityMethod,
      AveragePixelIntensityMethod,
      BrightnessPixelIntensityMethod,
      LightnessPixelIntensityMethod,
      Rec601LumaPixelIntensityMethod,
      Rec601LuminancePixelIntensityMethod,
      Rec709LumaPixelIntensityMethod,
      Rec709LuminancePixelIntensityMethod,
      RMSPixelIntensityMethod,
      MSPixelIntensityMethod)
   with Convention => C;

  --  Pixel typedef declarations.
  --
   subtype Double is Long_Float;
   subtype Unsigned is Positive;
   subtype size_t is Positive;
   type Unsigned_Short is mod 2 ** 16;

   type DoublePixelPacket is private;

   --  subtype DoublePixelPacket is u_DoublePixelPacket;

   type LongPixelPacket is record
      Red     : aliased Unsigned;
      Green   : aliased Unsigned;
      Blue    : aliased Unsigned;
      Opacity : aliased Unsigned;
      Index   : aliased Unsigned;
   end record
     with Convention => C;

   --  subtype LongPixelPacket is u_LongPixelPacket;

   type MagickPixelPacket is private;

   type PixelPacket is private;

   --  subtype PixelPacket is u_PixelPacket;

   type QuantumPixelPacket is private;

   --  subtype QuantumPixelPacket is u_QuantumPixelPacket;

   type CacheView_u is null record;   -- incomplete struct

   --  Pixel method declarations.
  --

   procedure ExportImagePixels
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : String;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      Arg8 : System.Address);

   procedure ImportImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : long;
      arg3 : long;
      arg4 : size_t;
      arg5 : size_t;
      arg6 : String;
      arg7 : ImageMagick.Low_Level.ImageMagick_6_magick_constitute_h.StorageType;
      Arg8 : System.Address);

   procedure InterpolateMagickPixelPacket
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant CacheView_u;
      arg3 : InterpolatePixelMethod;
      arg4 : double;
      arg5 : double;
      arg6 : access MagickPixelPacket);

   function CloneMagickPixelPacket (Arg1 : access constant MagickPixelPacket) return access MagickPixelPacket;

   function DecodePixelGamma (arg1 : double) return double;

   function EncodePixelGamma (arg1 : double) return double;

   function GetMagickPixelIntensity
     (The_Image : access constant ImageMagick.Low_Level.ImageMagick_6_Magick_Image_H.U_Image;
                                     Arg2      : access constant MagickPixelPacket) return Double;
   function GetPixelIntensity
     (The_Image : access constant ImageMagick.Low_Level.ImageMagick_6_Magick_Image_H.U_Image;
                               Arg2      : access constant PixelPacket) return Double;

   procedure ConformMagickPixelPacket
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant MagickPixelPacket;
      arg3 : access MagickPixelPacket);

   procedure GetMagickPixelPacket (Arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_Magick_Image_H.U_Image;
                                   Arg2 : access MagickPixelPacket);
end ImageMagick.Pixels;
