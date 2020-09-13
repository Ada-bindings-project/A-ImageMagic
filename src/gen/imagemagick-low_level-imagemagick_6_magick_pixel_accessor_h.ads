pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Extensions;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

limited with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_pixel_accessor_h is

   --  arg-macro: procedure ClampPixelRed (pixel)
   --    ClampToQuantum((pixel).red)
   --  arg-macro: procedure ClampPixelGreen (pixel)
   --    ClampToQuantum((pixel).green)
   --  arg-macro: procedure ClampPixelBlue (pixel)
   --    ClampToQuantum((pixel).blue)
   --  arg-macro: procedure ClampPixelIndex (indexes)
   --    ClampToQuantum(*(indexes))
   --  arg-macro: procedure ClampPixelOpacity (pixel)
   --    ClampToQuantum((pixel).opacity)
   --  arg-macro: function GetPixela (pixel)
   --    return (pixel).green;
   --  arg-macro: function GetPixelb (pixel)
   --    return (pixel).blue;
   --  arg-macro: function GetPixelAlpha (pixel)
   --    return QuantumRange-(pixel).opacity;
   --  arg-macro: function GetPixelBlack (indexes)
   --    return *(indexes);
   --  arg-macro: function GetPixelBlue (pixel)
   --    return (pixel).blue;
   --  arg-macro: function GetPixelCb (pixel)
   --    return (pixel).green;
   --  arg-macro: function GetPixelCr (pixel)
   --    return (pixel).blue;
   --  arg-macro: function GetPixelCyan (pixel)
   --    return (pixel).red;
   --  arg-macro: function GetPixelGray (pixel)
   --    return (pixel).red;
   --  arg-macro: function GetPixelGreen (pixel)
   --    return (pixel).green;
   --  arg-macro: function GetPixelIndex (indexes)
   --    return *(indexes);
   --  arg-macro: function GetPixelL (pixel)
   --    return (pixel).red;
   --  arg-macro: function GetPixelLabel (pixel)
   --    return (ssize_t) (pixel).red;
   --  arg-macro: function GetPixelMagenta (pixel)
   --    return (pixel).green;
   --  arg-macro: function GetPixelNext (pixel)
   --    return (pixel)+1;
   --  arg-macro: function GetPixelOpacity (pixel)
   --    return (pixel).opacity;
   --  arg-macro: function GetPixelRed (pixel)
   --    return (pixel).red;
   --  arg-macro: procedure GetPixelRGB (pixel, packet)
   --    { (packet).red:=GetPixelRed((pixel)); (packet).green:=GetPixelGreen((pixel)); (packet).blue:=GetPixelBlue((pixel)); }
   --  arg-macro: procedure GetPixelRGBO (pixel, packet)
   --    { (packet).red:=GetPixelRed((pixel)); (packet).green:=GetPixelGreen((pixel)); (packet).blue:=GetPixelBlue((pixel)); (packet).opacity:=GetPixelOpacity((pixel)); }
   --  arg-macro: function GetPixelY (pixel)
   --    return (pixel).red;
   --  arg-macro: function GetPixelYellow (pixel)
   --    return (pixel).blue;
   --  arg-macro: function SetPixela (pixel, value)
   --    return (pixel).green:=(Quantum) (value);
   --  arg-macro: function SetPixelAlpha (pixel, value)
   --    return (pixel).opacity:=(Quantum) (QuantumRange-(value));
   --  arg-macro: function SetPixelb (pixel, value)
   --    return (pixel).blue:=(Quantum) (value);
   --  arg-macro: function SetPixelBlack (indexes, value)
   --    return *(indexes):=(Quantum) (value);
   --  arg-macro: function SetPixelBlue (pixel, value)
   --    return (pixel).blue:=(Quantum) (value);
   --  arg-macro: function SetPixelCb (pixel, value)
   --    return (pixel).green:=(Quantum) (value);
   --  arg-macro: function SetPixelCr (pixel, value)
   --    return (pixel).blue:=(Quantum) (value);
   --  arg-macro: function SetPixelCyan (pixel, value)
   --    return (pixel).red:=(Quantum) (value);
   --  arg-macro: function SetPixelGray (pixel, value)
   --    return (pixel).red:=(pixel).green:=(pixel).blue:=(Quantum) (value);
   --  arg-macro: function SetPixelGreen (pixel, value)
   --    return (pixel).green:=(Quantum) (value);
   --  arg-macro: function SetPixelIndex (indexes, value)
   --    return *(indexes):=(IndexPacket) (value);
   --  arg-macro: function SetPixelL (pixel, value)
   --    return (pixel).red:=(Quantum) (value);
   --  arg-macro: function SetPixelMagenta (pixel, value)
   --    return (pixel).green:=(Quantum) (value);
   --  arg-macro: function SetPixelOpacity (pixel, value)
   --    return (pixel).opacity:=(Quantum) (value);
   --  arg-macro: function SetPixelRed (pixel, value)
   --    return (pixel).red:=(Quantum) (value);
   --  arg-macro: procedure SetPixelRgb (pixel, packet)
   --    { SetPixelRed(pixel,(packet).red); SetPixelGreen(pixel,(packet).green); SetPixelBlue(pixel,(packet).blue); }
   --  arg-macro: procedure SetPixelRGBA (pixel, packet)
   --    { SetPixelRed(pixel,(packet).red); SetPixelGreen(pixel,(packet).green); SetPixelBlue(pixel,(packet).blue); SetPixelAlpha(pixel,(QuantumRange-(packet).opacity)); }
   --  arg-macro: procedure SetPixelRGBO (pixel, packet)
   --    { SetPixelRed(pixel,(packet).red); SetPixelGreen(pixel,(packet).green); SetPixelBlue(pixel,(packet).blue); SetPixelOpacity(pixel,(packet).opacity); }
   --  arg-macro: function SetPixelYellow (pixel, value)
   --    return (pixel).blue:=(Quantum) (value);
   --  arg-macro: function SetPixelY (pixel, value)
   --    return (pixel).red:=(Quantum) (value);
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
  --  MagickCore pixel accessor methods.
  -- 

   function AbsolutePixelValue (x : double) return double  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "AbsolutePixelValue";

   function ClampPixel (value : double) return unsigned_short  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "ClampPixel";

   function PerceptibleReciprocal (x : double) return double  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "PerceptibleReciprocal";

  --    Return 1/x where x is perceptible (not unlimited or infinitesimal).
  --   

   function GetPixelLuma (the_image : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; pixel : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return double  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelLuma";

   function GetPixelLuminance (the_image : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; pixel : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return double  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "GetPixelLuminance";

   function IsPixelAtDepth (pixel : unsigned_short; c_range : Extensions.unsigned_long_long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "IsPixelAtDepth";

   function IsPixelGray (pixel : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "IsPixelGray";

   function IsPixelMonochrome (pixel : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "IsPixelMonochrome";

   function PixelPacketIntensity (pixel : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket) return unsigned_short  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "PixelPacketIntensity";

   procedure SetPixelViaMagickPixel
     (the_image : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      magick_pixel : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket;
      pixel : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket)  -- /usr/include/ImageMagick-6/magick/pixel-accessor.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "SetPixelViaMagickPixel";

end ImageMagick.Low_Level.ImageMagick_6_magick_pixel_accessor_h;
