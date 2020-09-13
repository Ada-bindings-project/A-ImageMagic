pragma Ada_2012;
with ImageMagick.Low_Level.ImageMagick_6_Wand_MagickWand_H;
with ImageMagick.Low_Level.ImageMagick_6_wand_magick_image_h;
with Interfaces.C;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
with ImageMagick.Low_Level.ImageMagick_6_Magick_Exception_H;
with ImageMagick.Low_Level.Linker_Options;
with ImageMagick.Low_Level.ImageMagick_6_wand_pixel_iterator_h;
package body ImageMagick.Wands is
   use ImageMagick.Low_Level.ImageMagick_6_Wand_MagickWand_H;
   use ImageMagick.Low_Level.ImageMagick_6_Wand_Magick_Image_H;
   use ImageMagick.Low_Level.ImageMagick_6_Magick_Magick_Type_H;
   use ImageMagick.Low_Level.ImageMagick_6_Magick_Exception_H;
   use ImageMagick.Low_Level.ImageMagick_6_Wand_Pixel_Iterator_H;
      ----------------
   -- Initialize --
   ----------------
   procedure CheckStatus (self                    : MagickWand;
                          Status                  : ImageMagick.Low_Level.ImageMagick_6_Magick_Magick_Type_H.MagickBooleanType) is
      Severity : aliased ExceptionType;
      description : Interfaces.C.Strings.chars_ptr;
   begin
      if Status = MagickFalse then
         Description := MagickGetException (Self.Impl, Severity'Access);
         raise Magic_Error with Interfaces.C.Strings.Value (Description);
      end if;
   end;

   procedure Initialize (Object : in out MagickWand) is
   begin
      Object.Impl := NewMagickWand;
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Object : in out MagickWand) is
   begin
      if Object.Impl /= null then
         Object.Impl := DestroyMagickWand (Arg1 => Object.Impl);
      end if;
   end Finalize;
   overriding procedure Adjust    (Object : in out MagickWand) is
      New_impl : access ImageMagick.Low_Level.ImageMagick_6_wand_MagickWand_h.MagickWand;
   begin
      New_Impl := CloneMagickWand (Object.Impl);
      Object.Impl := New_Impl;
   end;



   procedure Read_Image (Self : in out MagickWand; Path : String) is
      Status : MagickBooleanType;
      L_Path : aliased Interfaces.C.Char_Array := Interfaces.C.To_C (Path);
   begin
      Status := MagickReadImage (Self.Impl, Interfaces.C.Strings.To_Chars_Ptr (L_Path'Unrestricted_Access));
      Self.CheckStatus (Status);
   end Read_Image;

   procedure Write_Image (Self : in out MagickWand; Path : String) is
      Status : MagickBooleanType;
      L_Path : aliased Interfaces.C.Char_Array := Interfaces.C.To_C (Path);
   begin
      Status := MagickWriteImage (Self.Impl, Interfaces.C.Strings.To_Chars_Ptr (L_Path'Unrestricted_Access));
      Self.CheckStatus (Status);
   end Write_Image;




   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Object : in out Init_Contoler) is
   begin
      MagickWandGenesis;
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Object : in out Init_Contoler) is
   begin
      MagickWandTerminus;
   end Finalize;

   Controler : Init_Contoler;

end ImageMagick.Wands;
