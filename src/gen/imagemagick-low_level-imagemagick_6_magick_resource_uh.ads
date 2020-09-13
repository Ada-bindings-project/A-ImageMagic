pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with Interfaces.C.Extensions;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

limited with Interfaces.C_Streams;

package ImageMagick.Low_Level.ImageMagick_6_magick_resource_uh is

   --  unsupported macro: MagickResourceInfinity (MagickULLConstant(~0) >> 1)
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
  --  MagickCore resource methods.
  -- 

   type ResourceType is 
     (UndefinedResource,
      AreaResource,
      DiskResource,
      FileResource,
      MapResource,
      MemoryResource,
      ThreadResource,
      TimeResource,
      ThrottleResource,
      WidthResource,
      HeightResource,
      ListLengthResource)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/resource_.h:39

   function AcquireUniqueFileResource (arg1 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/ImageMagick-6/magick/resource_.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireUniqueFileResource";

   function AcquireMagickResource (arg1 : ResourceType; arg2 : Extensions.unsigned_long_long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/resource_.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireMagickResource";

   function GetPathTemplate (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/resource_.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GetPathTemplate";

   function ListMagickResourceInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/resource_.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "ListMagickResourceInfo";

   function RelinquishUniqueFileResource (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/resource_.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "RelinquishUniqueFileResource";

   function ResourceComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/resource_.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "ResourceComponentGenesis";

   function SetMagickResourceLimit (arg1 : ResourceType; arg2 : Extensions.unsigned_long_long) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/resource_.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "SetMagickResourceLimit";

   function GetMagickResource (arg1 : ResourceType) return Extensions.unsigned_long_long  -- /usr/include/ImageMagick-6/magick/resource_.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickResource";

   function GetMagickResourceLimit (arg1 : ResourceType) return Extensions.unsigned_long_long  -- /usr/include/ImageMagick-6/magick/resource_.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickResourceLimit";

   procedure AsynchronousResourceComponentTerminus  -- /usr/include/ImageMagick-6/magick/resource_.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "AsynchronousResourceComponentTerminus";

   procedure RelinquishMagickResource (arg1 : ResourceType; arg2 : Extensions.unsigned_long_long)  -- /usr/include/ImageMagick-6/magick/resource_.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "RelinquishMagickResource";

   procedure ResourceComponentTerminus  -- /usr/include/ImageMagick-6/magick/resource_.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "ResourceComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_resource_uh;
