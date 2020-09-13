with Ada.Finalization;
private with ImageMagick.Low_Level.ImageMagick_6_Wand_MagickWand_H;
private with ImageMagick.Low_Level.ImageMagick_6_Magick_Magick_Type_H;
private with ImageMagick.Low_Level.ImageMagick_6_Wand_Pixel_Iterator_H;

package ImageMagick.Wands is
   type MagickWand is tagged private;
   procedure Read_Image (Self : in out MagickWand; Path : String);
   procedure write_Image (Self : in out MagickWand; Path : String);



   function Get_Filename (Self : MagickWand) return String;
   function Get_Format (Self : MagickWand) return String;
   function Get_Font (Self : MagickWand) return String;
   function Get_Home_URL (Self : MagickWand) return String;
   function Get_Image_Artifact (Self : MagickWand; Arifact : String) return String;

   type Artifacts_Iterator (<>) is tagged private;
   function Get_Image_Artifacts (Self : MagickWand) return Artifacts_Iterator;

   Magic_Error : exception;

private
   type MagickWand is new Ada.Finalization.Controlled with record
      impl : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
   end record;

   overriding procedure Initialize (Object : in out MagickWand);
   overriding procedure Finalize   (Object : in out MagickWand);
   overriding procedure Adjust    (Object : in out MagickWand);


   type Pixel_Iterator is new Ada.Finalization.Controlled with record
      Impl : access ImageMagick.Low_Level.ImageMagick_6_wand_pixel_iterator_h.PixelIterator;
   end record;

   overriding procedure Initialize (Object : in out Pixel_Iterator);
   overriding procedure Finalize   (Object : in out Pixel_Iterator);
   overriding procedure Adjust    (Object : in out Pixel_Iterator);


   type Init_Contoler is new Ada.Finalization.Limited_Controlled with null record;

   overriding procedure Initialize (Object : in out Init_Contoler);
   overriding procedure Finalize   (Object : in out Init_Contoler);
   procedure CheckStatus (self     : MagickWand;
                          Status   : ImageMagick.Low_Level.ImageMagick_6_Magick_Magick_Type_H.MagickBooleanType);
end ImageMagick.Wands;
