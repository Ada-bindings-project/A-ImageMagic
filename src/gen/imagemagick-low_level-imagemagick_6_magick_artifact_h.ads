pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with Interfaces.C.Strings;

package ImageMagick.Low_Level.ImageMagick_6_magick_artifact_h is

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
  --  MagickCore artifact methods.
  -- 

   function GetNextImageArtifact (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/artifact.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextImageArtifact";

   function RemoveImageArtifact (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/artifact.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveImageArtifact";

   function GetImageArtifact (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/artifact.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "GetImageArtifact";

   function CloneImageArtifacts (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/artifact.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "CloneImageArtifacts";

   function DefineImageArtifact (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/artifact.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "DefineImageArtifact";

   function DeleteImageArtifact (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/artifact.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteImageArtifact";

   function SetImageArtifact
     (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/artifact.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "SetImageArtifact";

   procedure DestroyImageArtifacts (arg1 : access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/artifact.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyImageArtifacts";

   procedure ResetImageArtifactIterator (arg1 : access constant ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image)  -- /usr/include/ImageMagick-6/magick/artifact.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "ResetImageArtifactIterator";

end ImageMagick.Low_Level.ImageMagick_6_magick_artifact_h;
