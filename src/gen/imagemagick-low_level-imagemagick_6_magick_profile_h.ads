pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

limited with ImageMagick.Low_Level.ImageMagick_6_magick_string_uh;
with System;

package ImageMagick.Low_Level.ImageMagick_6_magick_profile_h is

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
  --  MagickCore image profile methods.
  -- 

   type u_ProfileInfo is record
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/profile.h:30
      length : aliased size_t;  -- /usr/include/ImageMagick-6/magick/profile.h:33
      info : access unsigned_char;  -- /usr/include/ImageMagick-6/magick/profile.h:36
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/profile.h:39
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/profile.h:27

   subtype ProfileInfo is u_ProfileInfo;  -- /usr/include/ImageMagick-6/magick/profile.h:40

   type RenderingIntent is 
     (UndefinedIntent,
      SaturationIntent,
      PerceptualIntent,
      AbsoluteIntent,
      RelativeIntent)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/profile.h:49

   function GetNextImageProfile (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/profile.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextImageProfile";

   function GetImageProfile (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return access constant ImageMagick.Low_Level.ImageMagick_6_magick_string_uh.StringInfo  -- /usr/include/ImageMagick-6/magick/profile.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageProfile";

   function CloneImageProfiles (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/profile.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImageProfiles";

   function DeleteImageProfile (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/profile.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteImageProfile";

   function ProfileImage
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : System.Address;
      arg4 : size_t;
      arg5 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/profile.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "ProfileImage";

   function SetImageProfile
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_string_uh.StringInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/profile.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageProfile";

   function SyncImageProfiles (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/profile.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "SyncImageProfiles";

   function RemoveImageProfile (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return access ImageMagick.Low_Level.ImageMagick_6_magick_string_uh.StringInfo  -- /usr/include/ImageMagick-6/magick/profile.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveImageProfile";

   procedure DestroyImageProfiles (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/profile.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImageProfiles";

   procedure ResetImageProfileIterator (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/profile.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "ResetImageProfileIterator";

end ImageMagick.Low_Level.ImageMagick_6_magick_profile_h;
