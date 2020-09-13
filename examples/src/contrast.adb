with ImageMagick.Wands;
with ImageMagick.Wands.Pixel_Iterators;
procedure Contrast is
   Pixel             : MagickPixelPacket;
   Image_Wand        : ImageMagick.Wands.MagickWand;
   Contrast_Wand     : ImageMagick.Wands.MagickWand;   
   Iterator          : ImageMagick.Wands.Pixel_Iterators.Pixel_Iterator;
   Contrast_Iterator : ImageMagick.Wands.Pixel_Iterators.Pixel_Iterator;
   
   Contrast_Pixels   : PixelWand;
   Pixels            : PixelWand;
   
begin
   Image_Wand.Read_Image ("data/test.jpg");
   Contrast_Wand := Image_Wand;


   Iterator := ImageMagick.Wands.Pixel_Iterators.New_Pixel_Iterator (Image_Wand);
   Contrast_Iterator := ImageMagick.Wands.Pixel_Iterators.New_Pixel_Iterator (Image_Wand);

   for Y in 0 .. Image_Wand.ImageHeight loop
      
      --    pixels=PixelGetNextIteratorRow(iterator,&width);
      --    contrast_pixels=PixelGetNextIteratorRow(contrast_iterator,&width);
      exit when Pixels = null or Contrast_Pixels = null;

      
      --    for (x=0; x < (ssize_t) width; x++)
      --    {
      --      PixelGetMagickColor(pixels[x],&pixel);
      --      pixel.red=SigmoidalContrast(pixel.red);
      --      pixel.green=SigmoidalContrast(pixel.green);
      --      pixel.blue=SigmoidalContrast(pixel.blue);
      --      pixel.index=SigmoidalContrast(pixel.index);
      --      PixelSetMagickColor(contrast_pixels[x],&pixel);
      --    }
      --    (void) PixelSyncIterator(contrast_iterator);
      --  }
      --  if (y < (ssize_t) MagickGetImageHeight(image_wand))
      --    ThrowWandException(image_wand);
   end loop;
   Contrast_Wand.Write_Image ("data/out.jpg");
end Contrast;
