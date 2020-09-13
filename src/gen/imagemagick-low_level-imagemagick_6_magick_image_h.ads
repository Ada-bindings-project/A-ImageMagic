pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C.Extensions;
with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;



with ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_compress_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_profile_h;
with System;
with Interfaces.C.Strings;

with ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_resample_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_composite_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_layer_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_color_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_timer_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h;

with ImageMagick.Low_Level.ImageMagick_6_magick_effect_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_stream_h;
limited with Interfaces.C_Streams;
with ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h;
with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

package ImageMagick.Low_Level.ImageMagick_6_magick_image_h is

   --  unsupported macro: OpaqueOpacity ((Quantum) 0UL)
   --  unsupported macro: TransparentOpacity (QuantumRange)
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
  --  MagickCore image methods.
  -- 

  -- deprecated  
   type AlphaChannelType is 
     (UndefinedAlphaChannel,
      ActivateAlphaChannel,
      BackgroundAlphaChannel,
      CopyAlphaChannel,
      DeactivateAlphaChannel,
      ExtractAlphaChannel,
      OpaqueAlphaChannel,
      ResetAlphaChannel,
      SetAlphaChannel,
      ShapeAlphaChannel,
      TransparentAlphaChannel,
      FlattenAlphaChannel,
      RemoveAlphaChannel,
      AssociateAlphaChannel,
      DisassociateAlphaChannel)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image.h:47

   type ImageType is 
     (UndefinedType,
      BilevelType,
      GrayscaleType,
      GrayscaleMatteType,
      PaletteType,
      PaletteMatteType,
      TrueColorType,
      TrueColorMatteType,
      ColorSeparationType,
      ColorSeparationMatteType,
      OptimizeType,
      PaletteBilevelMatteType)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image.h:63

   type InterlaceType is 
     (UndefinedInterlace,
      NoInterlace,
      LineInterlace,
      PlaneInterlace,
      PartitionInterlace,
      GIFInterlace,
      JPEGInterlace,
      PNGInterlace)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image.h:75

   type OrientationType is 
     (UndefinedOrientation,
      TopLeftOrientation,
      TopRightOrientation,
      BottomRightOrientation,
      BottomLeftOrientation,
      LeftTopOrientation,
      RightTopOrientation,
      RightBottomOrientation,
      LeftBottomOrientation)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image.h:88

   type ResolutionType is 
     (UndefinedResolution,
      PixelsPerInchResolution,
      PixelsPerCentimeterResolution)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image.h:95

   type u_PrimaryInfo is record
      x : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:100
      y : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:101
      z : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:102
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/image.h:97

   subtype PrimaryInfo is u_PrimaryInfo;  -- /usr/include/ImageMagick-6/magick/image.h:103

   type u_SegmentInfo is record
      x1 : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:108
      y1 : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:109
      x2 : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:110
      y2 : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:111
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/image.h:105

   subtype SegmentInfo is u_SegmentInfo;  -- /usr/include/ImageMagick-6/magick/image.h:112

   type TransmitType is 
     (UndefinedTransmitType,
      FileTransmitType,
      BlobTransmitType,
      StreamTransmitType,
      ImageTransmitType)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/image.h:121

   type u_ChromaticityInfo is record
      red_primary : aliased PrimaryInfo;  -- /usr/include/ImageMagick-6/magick/image.h:126
      green_primary : aliased PrimaryInfo;  -- /usr/include/ImageMagick-6/magick/image.h:127
      blue_primary : aliased PrimaryInfo;  -- /usr/include/ImageMagick-6/magick/image.h:128
      white_point : aliased PrimaryInfo;  -- /usr/include/ImageMagick-6/magick/image.h:129
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/image.h:123

   subtype ChromaticityInfo is u_ChromaticityInfo;  -- /usr/include/ImageMagick-6/magick/image.h:130

   type u_Image;
   subtype u_Image_array3537 is Interfaces.C.char_array (0 .. 4095);
   type u_Image is record
      storage_class : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.ClassType;  -- /usr/include/ImageMagick-6/magick/image.h:155
      colorspace : aliased ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType;  -- /usr/include/ImageMagick-6/magick/image.h:158
      compression : aliased ImageMagick.Low_Level.ImageMagick_6_magick_compress_h.CompressionType;  -- /usr/include/ImageMagick-6/magick/image.h:161
      quality : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:164
      orientation : aliased OrientationType;  -- /usr/include/ImageMagick-6/magick/image.h:167
      taint : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:170
      matte : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:171
      columns : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:174
      rows : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:175
      depth : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:176
      colors : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:177
      colormap : access ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:180
      background_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:181
      border_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:182
      matte_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:183
      gamma : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:186
      chromaticity : aliased ChromaticityInfo;  -- /usr/include/ImageMagick-6/magick/image.h:189
      rendering_intent : aliased ImageMagick.Low_Level.ImageMagick_6_magick_profile_h.RenderingIntent;  -- /usr/include/ImageMagick-6/magick/image.h:192
      profiles : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:195
      units : aliased ResolutionType;  -- /usr/include/ImageMagick-6/magick/image.h:198
      montage : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:201
      directory : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:202
      geometry : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:203
      offset : aliased long;  -- /usr/include/ImageMagick-6/magick/image.h:206
      x_resolution : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:209
      y_resolution : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:210
      page : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;  -- /usr/include/ImageMagick-6/magick/image.h:213
      extract_info : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;  -- /usr/include/ImageMagick-6/magick/image.h:214
      tile_info : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;  -- /usr/include/ImageMagick-6/magick/image.h:215
      bias : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:218
      blur : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:219
      fuzz : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:220
      filter : aliased ImageMagick.Low_Level.ImageMagick_6_magick_resample_h.FilterTypes;  -- /usr/include/ImageMagick-6/magick/image.h:223
      interlace : aliased InterlaceType;  -- /usr/include/ImageMagick-6/magick/image.h:226
      endian : aliased ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h.EndianType;  -- /usr/include/ImageMagick-6/magick/image.h:229
      gravity : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.GravityType;  -- /usr/include/ImageMagick-6/magick/image.h:232
      compose : aliased ImageMagick.Low_Level.ImageMagick_6_magick_composite_h.CompositeOperator;  -- /usr/include/ImageMagick-6/magick/image.h:235
      dispose : aliased ImageMagick.Low_Level.ImageMagick_6_magick_layer_h.DisposeType;  -- /usr/include/ImageMagick-6/magick/image.h:238
      clip_mask : access u_Image;  -- /usr/include/ImageMagick-6/magick/image.h:241
      scene : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:244
      c_delay : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:245
      ticks_per_second : aliased long;  -- /usr/include/ImageMagick-6/magick/image.h:248
      iterations : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:251
      total_colors : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:252
      start_loop : aliased long;  -- /usr/include/ImageMagick-6/magick/image.h:255
      error : aliased ImageMagick.Low_Level.ImageMagick_6_magick_color_h.ErrorInfo;  -- /usr/include/ImageMagick-6/magick/image.h:258
      timer : aliased ImageMagick.Low_Level.ImageMagick_6_magick_timer_h.TimerInfo;  -- /usr/include/ImageMagick-6/magick/image.h:261
      progress_monitor : ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h.MagickProgressMonitor;  -- /usr/include/ImageMagick-6/magick/image.h:264
      client_data : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:267
      cache : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:268
      attributes : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:269
      ascii85 : access ImageMagick.Low_Level.ImageMagick_6_magick_compress_h.Ascii85Info;  -- /usr/include/ImageMagick-6/magick/image.h:272
      blob : access ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.BlobInfo;  -- /usr/include/ImageMagick-6/magick/image.h:275
      filename : aliased u_Image_array3537;  -- /usr/include/ImageMagick-6/magick/image.h:278
      magick_filename : aliased u_Image_array3537;  -- /usr/include/ImageMagick-6/magick/image.h:279
      magick : aliased u_Image_array3537;  -- /usr/include/ImageMagick-6/magick/image.h:280
      magick_columns : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:283
      magick_rows : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:284
      c_exception : aliased ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo;  -- /usr/include/ImageMagick-6/magick/image.h:287
      debug : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:290
      reference_count : aliased long;  -- /usr/include/ImageMagick-6/magick/image.h:293
      semaphore : access ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h.SemaphoreInfo;  -- /usr/include/ImageMagick-6/magick/image.h:296
      color_profile : aliased ImageMagick.Low_Level.ImageMagick_6_magick_profile_h.ProfileInfo;  -- /usr/include/ImageMagick-6/magick/image.h:299
      iptc_profile : aliased ImageMagick.Low_Level.ImageMagick_6_magick_profile_h.ProfileInfo;  -- /usr/include/ImageMagick-6/magick/image.h:300
      generic_profile : access ImageMagick.Low_Level.ImageMagick_6_magick_profile_h.ProfileInfo;  -- /usr/include/ImageMagick-6/magick/image.h:301
      generic_profiles : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:304
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:307
      previous : access u_Image;  -- /usr/include/ImageMagick-6/magick/image.h:310
      list : access u_Image;  -- /usr/include/ImageMagick-6/magick/image.h:311
      next : access u_Image;  -- /usr/include/ImageMagick-6/magick/image.h:312
      interpolate : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.InterpolatePixelMethod;  -- /usr/include/ImageMagick-6/magick/image.h:315
      black_point_compensation : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:318
      transparent_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:321
      mask : access u_Image;  -- /usr/include/ImageMagick-6/magick/image.h:324
      tile_offset : aliased ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;  -- /usr/include/ImageMagick-6/magick/image.h:327
      properties : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:330
      artifacts : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:331
      c_type : aliased ImageType;  -- /usr/include/ImageMagick-6/magick/image.h:334
      dither : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:337
      extent : aliased Extensions.unsigned_long_long;  -- /usr/include/ImageMagick-6/magick/image.h:340
      ping : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:343
      channels : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:346
      timestamp : aliased long;  -- /usr/include/ImageMagick-6/magick/image.h:349
      intensity : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelIntensityMethod;  -- /usr/include/ImageMagick-6/magick/image.h:352
      duration : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:355
      tietz_offset : aliased long;  -- /usr/include/ImageMagick-6/magick/image.h:358
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/image.h:152

  -- colorspace of image data  
  -- compression of image when read/write  
  -- compression quality setting, meaning varies  
  -- photo orientation of image  
  -- has image been modified since reading  
  -- is transparency channel defined and active  
  -- physical size of image  
  -- depth of image on read/write  
  -- size of color table on read  
  -- current background color attribute  
  -- current bordercolor attribute  
  -- current mattecolor attribute  
  -- resolution/density  ppi or ppc  
  -- image resolution/density  
  -- virtual canvas size and offset of image  
  -- deprecated  
  -- deprecated  
  -- current color fuzz attribute  
  -- resize/distort filter to apply  
  -- raw data integer ordering on read/write  
  -- Gravity attribute for positioning in image  
  -- alpha composition method for layered images  
  -- GIF animation disposal method  
  -- index of image in multi-image file  
  -- Animation delay time  
  -- units for delay time, default 100 for GIF  
  -- deprecated  
  -- images input filename  
  -- ditto with coders, and read_mods  
  -- Coder used to decode image  
  -- Error handling report  
  -- debug output attribute  
  -- this & ProfileInfo is deprecated  
  -- Image list links  
  -- Undo/Redo image processing list (for display)  
  -- Image list links  
  -- Interpolation of color for between pixel lookups  
  -- color for 'transparent' color index in GIF  
  -- per image properities  
  -- per image sequence image artifacts  
  -- dithering method during color reduction  
  -- method to generate an intensity value from a pixel  
  -- Total animation duration sum(delay*iterations)  
   subtype u_ImageInfo_array3537 is Interfaces.C.char_array (0 .. 4095);
   type u_ImageInfo is record
      compression : aliased ImageMagick.Low_Level.ImageMagick_6_magick_compress_h.CompressionType;  -- /usr/include/ImageMagick-6/magick/image.h:364
      orientation : aliased OrientationType;  -- /usr/include/ImageMagick-6/magick/image.h:367
      temporary : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:370
      adjoin : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:371
      affirm : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:372
      antialias : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:373
      size : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:376
      extract : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:377
      page : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:378
      scenes : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:379
      scene : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:382
      number_scenes : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:383
      depth : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:384
      interlace : aliased InterlaceType;  -- /usr/include/ImageMagick-6/magick/image.h:387
      endian : aliased ImageMagick.Low_Level.ImageMagick_6_magick_quantum_h.EndianType;  -- /usr/include/ImageMagick-6/magick/image.h:390
      units : aliased ResolutionType;  -- /usr/include/ImageMagick-6/magick/image.h:393
      quality : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:396
      sampling_factor : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:399
      server_name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:400
      font : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:401
      texture : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:402
      density : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:403
      pointsize : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:406
      fuzz : aliased double;  -- /usr/include/ImageMagick-6/magick/image.h:407
      background_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:410
      border_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:411
      matte_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:412
      dither : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:415
      monochrome : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:416
      colors : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:419
      colorspace : aliased ImageMagick.Low_Level.ImageMagick_6_magick_colorspace_h.ColorspaceType;  -- /usr/include/ImageMagick-6/magick/image.h:422
      c_type : aliased ImageType;  -- /usr/include/ImageMagick-6/magick/image.h:425
      preview_type : aliased ImageMagick.Low_Level.ImageMagick_6_magick_effect_h.PreviewType;  -- /usr/include/ImageMagick-6/magick/image.h:428
      group : aliased long;  -- /usr/include/ImageMagick-6/magick/image.h:431
      ping : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:434
      verbose : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:435
      view : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:438
      authenticate : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:439
      channel : aliased unsigned;  -- /usr/include/ImageMagick-6/magick/image.h:442
      attributes : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;  -- /usr/include/ImageMagick-6/magick/image.h:445
      options : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:448
      progress_monitor : ImageMagick.Low_Level.ImageMagick_6_magick_monitor_h.MagickProgressMonitor;  -- /usr/include/ImageMagick-6/magick/image.h:451
      client_data : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:454
      cache : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:455
      stream : ImageMagick.Low_Level.ImageMagick_6_magick_stream_h.StreamHandler;  -- /usr/include/ImageMagick-6/magick/image.h:458
      the_file : access Interfaces.C_Streams.FILEs;  -- /usr/include/ImageMagick-6/magick/image.h:461
      blob : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:464
      length : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:467
      magick : aliased u_ImageInfo_array3537;  -- /usr/include/ImageMagick-6/magick/image.h:470
      unique : aliased u_ImageInfo_array3537;  -- /usr/include/ImageMagick-6/magick/image.h:471
      zero : aliased u_ImageInfo_array3537;  -- /usr/include/ImageMagick-6/magick/image.h:472
      filename : aliased u_ImageInfo_array3537;  -- /usr/include/ImageMagick-6/magick/image.h:473
      debug : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:476
      tile : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/image.h:479
      subimage : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:482
      subrange : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:483
      pen : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:486
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/image.h:489
      virtual_pixel_method : aliased ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod;  -- /usr/include/ImageMagick-6/magick/image.h:492
      transparent_color : aliased ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.PixelPacket;  -- /usr/include/ImageMagick-6/magick/image.h:495
      profile : System.Address;  -- /usr/include/ImageMagick-6/magick/image.h:498
      synchronize : aliased ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;  -- /usr/include/ImageMagick-6/magick/image.h:501
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/image.h:361

  -- deprecated  
  -- deprecated  
  -- deprecated  
  -- deprecated  
  -- deprecated  
   function CatchImageException (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType  -- /usr/include/ImageMagick-6/magick/image.h:505
   with Import => True, 
        Convention => C, 
        External_Name => "CatchImageException";

   function GetImageInfoFile (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo) return access Interfaces.C_Streams.FILEs  -- /usr/include/ImageMagick-6/magick/image.h:508
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageInfoFile";

   function AcquireImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image.h:511
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireImage";

   function AppendImages
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image.h:512
   with Import => True, 
        Convention => C, 
        External_Name => "AppendImages";

   function CloneImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image.h:513
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImage";

   function DestroyImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image.h:515
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImage";

   function GetImageClipMask (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image.h:516
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageClipMask";

   function GetImageMask (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image.h:517
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageMask";

   function NewMagickImage
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image.h:518
   with Import => True, 
        Convention => C, 
        External_Name => "NewMagickImage";

   function ReferenceImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image.h:520
   with Import => True, 
        Convention => C, 
        External_Name => "ReferenceImage";

   function SmushImages
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/image.h:521
   with Import => True, 
        Convention => C, 
        External_Name => "SmushImages";

   function AcquireImageInfo return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo  -- /usr/include/ImageMagick-6/magick/image.h:525
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireImageInfo";

   function CloneImageInfo (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo  -- /usr/include/ImageMagick-6/magick/image.h:526
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImageInfo";

   function DestroyImageInfo (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo  -- /usr/include/ImageMagick-6/magick/image.h:527
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImageInfo";

   function ClipImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:530
   with Import => True, 
        Convention => C, 
        External_Name => "ClipImage";

   function ClipImagePath
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:531
   with Import => True, 
        Convention => C, 
        External_Name => "ClipImagePath";

   function CopyImagePixels
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.OffsetInfo;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:532
   with Import => True, 
        Convention => C, 
        External_Name => "CopyImagePixels";

   function IsTaintImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:534
   with Import => True, 
        Convention => C, 
        External_Name => "IsTaintImage";

   function IsMagickConflict (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:535
   with Import => True, 
        Convention => C, 
        External_Name => "IsMagickConflict";

   function IsHighDynamicRangeImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:536
   with Import => True, 
        Convention => C, 
        External_Name => "IsHighDynamicRangeImage";

   function IsImageObject (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:537
   with Import => True, 
        Convention => C, 
        External_Name => "IsImageObject";

   function ListMagickInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:538
   with Import => True, 
        Convention => C, 
        External_Name => "ListMagickInfo";

   function ModifyImage (arg1 : System.Address; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:539
   with Import => True, 
        Convention => C, 
        External_Name => "ModifyImage";

   function ResetImagePage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:540
   with Import => True, 
        Convention => C, 
        External_Name => "ResetImagePage";

   function ResetImagePixels (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:541
   with Import => True, 
        Convention => C, 
        External_Name => "ResetImagePixels";

   function SetImageBackgroundColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:542
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageBackgroundColor";

   function SetImageClipMask (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:543
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageClipMask";

   function SetImageColor (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:544
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageColor";

   function SetImageExtent
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : size_t;
      arg3 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:545
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageExtent";

   function SetImageInfo
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : unsigned;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:546
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageInfo";

   function SetImageMask (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:547
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageMask";

   function SetImageOpacity (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : unsigned_short) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:548
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageOpacity";

   function SetImageChannels (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:549
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageChannels";

   function SetImageStorageClass (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.ClassType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:550
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageStorageClass";

   function StripImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:551
   with Import => True, 
        Convention => C, 
        External_Name => "StripImage";

   function SyncImage (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:552
   with Import => True, 
        Convention => C, 
        External_Name => "SyncImage";

   function SyncImageSettings (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:553
   with Import => True, 
        Convention => C, 
        External_Name => "SyncImageSettings";

   function SyncImagesSettings (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/image.h:554
   with Import => True, 
        Convention => C, 
        External_Name => "SyncImagesSettings";

   function InterpretImageFilename
     (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int;
      arg5 : Interfaces.C.Strings.chars_ptr) return size_t  -- /usr/include/ImageMagick-6/magick/image.h:557
   with Import => True, 
        Convention => C, 
        External_Name => "InterpretImageFilename";

   function GetImageReferenceCount (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return long  -- /usr/include/ImageMagick-6/magick/image.h:560
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageReferenceCount";

   function GetImageChannels (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return size_t  -- /usr/include/ImageMagick-6/magick/image.h:563
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageChannels";

   function GetImageVirtualPixelMethod (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod  -- /usr/include/ImageMagick-6/magick/image.h:566
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageVirtualPixelMethod";

   function SetImageVirtualPixelMethod (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod  -- /usr/include/ImageMagick-6/magick/image.h:567
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageVirtualPixelMethod";

   procedure AcquireNextImage (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/image.h:570
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireNextImage";

   procedure DestroyImagePixels (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/image.h:571
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImagePixels";

   procedure DisassociateImageStream (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/image.h:572
   with Import => True, 
        Convention => C, 
        External_Name => "DisassociateImageStream";

   procedure GetImageException (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo)  -- /usr/include/ImageMagick-6/magick/image.h:573
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageException";

   procedure GetImageInfo (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo)  -- /usr/include/ImageMagick-6/magick/image.h:574
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageInfo";

   procedure SetImageInfoBlob
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo;
      arg2 : System.Address;
      arg3 : size_t)  -- /usr/include/ImageMagick-6/magick/image.h:575
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageInfoBlob";

   procedure SetImageInfoFile (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_ImageInfo; arg2 : access Interfaces.C_Streams.FILEs)  -- /usr/include/ImageMagick-6/magick/image.h:576
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageInfoFile";

end ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
