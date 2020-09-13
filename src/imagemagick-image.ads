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

private package ImageMagick.image is

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
   with Convention => C;

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
   with Convention => C;

   type InterlaceType is
     (UndefinedInterlace,
      NoInterlace,
      LineInterlace,
      PlaneInterlace,
      PartitionInterlace,
      GIFInterlace,
      JPEGInterlace,
      PNGInterlace)
   with Convention => C;

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
   with Convention => C;

   type ResolutionType is
     (UndefinedResolution,
      PixelsPerInchResolution,
      PixelsPerCentimeterResolution)
   with Convention => C;

   type u_PrimaryInfo is record
      x : aliased double;
      y : aliased double;
      z : aliased double;
   end record
   with Convention => C_Pass_By_Copy;

   subtype PrimaryInfo is u_PrimaryInfo;

   type u_SegmentInfo is record
      x1 : aliased double;
      y1 : aliased double;
      x2 : aliased double;
      y2 : aliased double;
   end record
   with Convention => C_Pass_By_Copy;

   subtype SegmentInfo is u_SegmentInfo;

   type TransmitType is
     (UndefinedTransmitType,
      FileTransmitType,
      BlobTransmitType,
      StreamTransmitType,
      ImageTransmitType)
   with Convention => C;

   type u_ChromaticityInfo is record
      red_primary : aliased PrimaryInfo;
      green_primary : aliased PrimaryInfo;
      blue_primary : aliased PrimaryInfo;
      white_point : aliased PrimaryInfo;
   end record
   with Convention => C_Pass_By_Copy;

   subtype ChromaticityInfo is u_ChromaticityInfo;

   type Image is tagged private;

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
   type ImageInfo is tagged private;

   function CatchImageException (arg1 : access Image) return ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionType;
   function GetImageInfoFile (Arg1 : access constant ImageInfo) return access Interfaces.C_Streams.FILEs ;
   function AcquireImage (arg1 : access constant ImageInfo'Class) return access Image;

   function AppendImages
     (arg1 : access constant Image;
      arg2 : Boolean;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access Image;

   function CloneImage
     (arg1 : access constant Image;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : Boolean;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access Image;

   function DestroyImage (arg1 : access Image) return access Image;

   function GetImageClipMask (arg1 : access constant Image) return access Image;

   function GetImageMask (arg1 : access constant Image) return access Image;

   function NewMagickImage
     (arg1 : access constant ImageInfo'Class;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket) return access Image;

   function ReferenceImage (arg1 : access Image) return access Image;

   function SmushImages
     (arg1 : access constant Image;
      arg2 : Boolean;
      arg3 : long;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access Image;

   function AcquireImageInfo return access ImageInfo;

   function CloneImageInfo (arg1 : access constant ImageInfo) return access ImageInfo;

   function DestroyImageInfo (arg1 : access ImageInfo) return access ImageInfo;

   function ClipImage (arg1 : access Image) return Boolean;

   function ClipImagePath
     (arg1 : access Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Boolean) return Boolean;

   function CopyImagePixels
     (arg1 : access Image;
      arg2 : access constant Image;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.RectangleInfo;
      arg4 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_geometry_h.OffsetInfo;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return Boolean;

   function IsTaintImage (arg1 : access constant Image) return Boolean;

   function IsMagickConflict (arg1 : Interfaces.C.Strings.chars_ptr) return Boolean;

   function IsHighDynamicRangeImage (arg1 : access constant Image) return Boolean;

   function IsImageObject (arg1 : access constant Image) return Boolean;

   function ListMagickInfo (arg1 : access Interfaces.C_Streams.FILEs) return Boolean;

   function ModifyImage (arg1 : System.Address) return Boolean;

   function ResetImagePixels (arg1 : access Image) return Boolean;

   function SetImageBackgroundColor (arg1 : access Image) return Boolean;

   function SetImageClipMask (arg1 : access Image; arg2 : access constant Image) return Boolean;

   function SetImageColor (arg1 : access Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_pixel_h.MagickPixelPacket) return Boolean;

   function SetImageExtent
     (arg1 : access Image;
      arg2 : size_t;
      arg3 : size_t) return Boolean;

   function SetImageInfo
     (arg1 : access ImageInfo;
      arg2 : unsigned;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return Boolean;

   function SetImageMask (arg1 : access Image; arg2 : access constant Image) return Boolean;

   function SetImageOpacity (arg1 : access Image; arg2 : unsigned_short) return Boolean;

   function SetImageChannels (arg1 : access Image; arg2 : size_t) return Boolean;

   function SetImageStorageClass (arg1 : access Image; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.ClassType) return Boolean;

   function StripImage (arg1 : access Image) return Boolean;

   function SyncImage (arg1 : access Image) return Boolean;

   function SyncImageSettings (arg1 : access constant ImageInfo'class; arg2 : access Image) return Boolean;

   function SyncImagesSettings (arg1 : access ImageInfo'Class; arg2 : access Image) return Boolean;

   function InterpretImageFilename
     (arg1 : access constant ImageInfo'Class;
      arg2 : access Image;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : int;
      arg5 : Interfaces.C.Strings.chars_ptr) return size_t;

   function GetImageReferenceCount (arg1 : access Image) return long;

   function GetImageChannels (arg1 : access Image) return size_t;

   function GetImageVirtualPixelMethod (arg1 : access constant Image) return ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod;

   function SetImageVirtualPixelMethod (arg1 : access constant Image; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod) return ImageMagick.Low_Level.ImageMagick_6_magick_cache_view_h.VirtualPixelMethod;

   procedure AcquireNextImage (arg1 : access constant ImageInfo'Class; arg2 : access Image);

   procedure DestroyImagePixels (arg1 : access Image);

   procedure DisassociateImageStream (arg1 : access Image);

   procedure GetImageException (arg1 : access Image);

   procedure GetImageInfo (arg1 : access ImageInfo);

   procedure SetImageInfoBlob
     (arg1 : access ImageInfo;
      arg2 : System.Address;
      arg3 : size_t);

   procedure SetImageInfoFile (arg1 : access ImageInfo; arg2 : access Interfaces.C_Streams.FILEs);
private
   type ImageInfo is tagged null record;
   type Image  is tagged null record;
end ImageMagick.image;
