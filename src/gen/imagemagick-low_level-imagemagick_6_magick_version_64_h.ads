pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

limited with Interfaces.C_Streams;

package ImageMagick.Low_Level.ImageMagick_6_magick_version_64_h is

   MagickPackageName : aliased constant String := "ImageMagick" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:28
   MagickCopyright : aliased constant String := "© 1999-2020 ImageMagick Studio LLC" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:29
   MagickLibVersion : constant := 16#69B#;  --  /usr/include/ImageMagick-6/magick/version-64.h:30
   MagickLibVersionText : aliased constant String := "6.9.11" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:31
   --  MagickLibVersionNumber : constant := 6,0,0;  --  /usr/include/ImageMagick-6/magick/version-64.h:32
   MagickLibAddendum : aliased constant String := "-27" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:33
   MagickLibInterface : constant := 6;  --  /usr/include/ImageMagick-6/magick/version-64.h:34
   MagickLibMinInterface : constant := 6;  --  /usr/include/ImageMagick-6/magick/version-64.h:35

   MagickPlatform : aliased constant String := "x86_64" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:43

   MagickppLibVersionText : aliased constant String := "6.9.11" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:45
   --  unsupported macro: MagickppLibVersionNumber 8:0:0

   MagickppLibAddendum : aliased constant String := "-27" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:47
   MagickppLibInterface : constant := 8;  --  /usr/include/ImageMagick-6/magick/version-64.h:48
   MagickppLibMinInterface : constant := 8;  --  /usr/include/ImageMagick-6/magick/version-64.h:49
   MagickReleaseDate : aliased constant String := "2020-08-11" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:50
   MagickHomeURL : aliased constant String := "file:///usr/share/doc/ImageMagick-6/index.html" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:51
   MagickAuthoritativeLicense : aliased constant String := "https://imagemagick.org/script/license.php" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:52

   MagickAuthoritativeURL : aliased constant String := "https://imagemagick.org" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:54

   MagickQuantumDepth : aliased constant String := "Q16" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:59
   MagickQuantumRange : aliased constant String := "65535" & ASCII.NUL;  --  /usr/include/ImageMagick-6/magick/version-64.h:60
   --  unsupported macro: MagickVersion MagickPackageName " " MagickLibVersionText MagickLibAddendum " " MagickQuantumDepth " " MagickPlatform " " MagickReleaseDate " " MagickAuthoritativeURL

  --  Copyright 1999-2020 ImageMagick Studio LLC, a non-profit organization
  --  dedicated to making software imaging solutions freely available.
  --  
  --  You may not use this file except in compliance with the License.
  --  obtain a copy of the License at
  --  
  --    https://imagemagick.org/script/license.php
  --  
  --  Unless required by applicable law or agreed to in writing, software
  --  distributed under the License is distributed on an "AS IS" BASIS,
  --  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  --  See the License for the specific language governing permissions and
  --  limitations under the License.
  --  MagickCore version methods.
  -- 

  --  Define declarations.
  -- 

   function GetMagickHomeURL return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickHomeURL";

   function GetMagickCopyright return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickCopyright";

   function GetMagickDelegates return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickDelegates";

   function GetMagickFeatures return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickFeatures";

   function GetMagickLicense return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickLicense";

   function GetMagickPackageName return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickPackageName";

   function GetMagickQuantumDepth (arg1 : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickQuantumDepth";

   function GetMagickQuantumRange (arg1 : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickQuantumRange";

   function GetMagickReleaseDate return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickReleaseDate";

   function GetMagickVersion (arg1 : access size_t) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/version-64.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickVersion";

   procedure ListMagickVersion (arg1 : access Interfaces.C_Streams.FILEs)  -- /usr/include/ImageMagick-6/magick/version-64.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "ListMagickVersion";

end ImageMagick.Low_Level.ImageMagick_6_magick_version_64_h;
