pragma Ada_2012;
with ImageMagick.Low_Level.ImageMagick_6_Wand_MagickWand_H;
with ImageMagick.Low_Level.ImageMagick_6_wand_magick_image_h;
with Interfaces.C;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
with ImageMagick.Low_Level.ImageMagick_6_Magick_Exception_H;
with ImageMagick.Low_Level.Linker_Options;
with ImageMagick.Low_Level.ImageMagick_6_Wand_Pixel_Iterator_H;

package body ImageMagick.wands.Pixel_Iterators is
   use ImageMagick.Low_Level.ImageMagick_6_Wand_MagickWand_H;
   use ImageMagick.Low_Level.ImageMagick_6_Wand_Magick_Image_H;
   use ImageMagick.Low_Level.ImageMagick_6_Magick_Magick_Type_H;
   use ImageMagick.Low_Level.ImageMagick_6_Magick_Exception_H;
   use ImageMagick.Low_Level.ImageMagick_6_Wand_Pixel_Iterator_H;






   function New_Pixel_Iterator (From : ImageMagick.Wands.MagickWand'Class) return Pixel_Iterator is

   begin
      return ret : Pixel_Iterator do
         Ret.Impl := NewPixelIterator (From.Impl);
      end return;
   end;

   overriding procedure Initialize (Object : in out Pixel_Iterator) is
   begin
      null;
   end;

   overriding procedure Finalize   (Object : in out Pixel_Iterator) is
   begin
      Object.Impl := DestroyPixelIterator (Object.Impl);
   end;

   overriding procedure Adjust    (Object : in out Pixel_Iterator) is
   begin
      Object.Impl := ClonePixelIterator (Object.Impl);
   end;


   procedure Set_Row (Self : in out Pixel_Iterator; To : Long_Integer) is
   begin
      null;
   end;

   procedure Sync (Self : in out Pixel_Iterator) is
   begin
      null;
   end;

end ImageMagick.wands.Pixel_Iterators;
