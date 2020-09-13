with Ada.Finalization;
private with ImageMagick.Low_Level.ImageMagick_6_Wand_MagickWand_H;
private with ImageMagick.Low_Level.ImageMagick_6_Magick_Magick_Type_H;
private with ImageMagick.Low_Level.ImageMagick_6_Wand_Pixel_Iterator_H;
package ImageMagick.wands.Pixel_Iterators is

   type Pixel_Iterator  is tagged private;
   function New_Pixel_Iterator (From : MagickWand'Class) return Pixel_Iterator;
   procedure Set_Row (Self : in out Pixel_Iterator; To : Long_Integer);
   procedure Sync (Self : in out Pixel_Iterator);


private

   type Pixel_Iterator is new Ada.Finalization.Controlled with record
      Impl : access ImageMagick.Low_Level.ImageMagick_6_Wand_Pixel_Iterator_H.PixelIterator;
   end record;

   overriding procedure Initialize (Object : in out Pixel_Iterator);
   overriding procedure Finalize   (Object : in out Pixel_Iterator);
   overriding procedure Adjust    (Object : in out Pixel_Iterator);
end;
