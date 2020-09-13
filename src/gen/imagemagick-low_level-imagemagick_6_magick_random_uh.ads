pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


limited with ImageMagick.Low_Level.ImageMagick_6_magick_string_uh;

package ImageMagick.Low_Level.ImageMagick_6_magick_random_uh is

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
  --  MagickCore random methods.
  -- 

  --  Typedef declarations.
  -- 

   type u_RandomInfo is null record;   -- incomplete struct

   subtype RandomInfo is u_RandomInfo;  -- /usr/include/ImageMagick-6/magick/random_.h:31

  --  Method declarations.
  -- 

   function GetRandomValue (arg1 : access RandomInfo) return double  -- /usr/include/ImageMagick-6/magick/random_.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "GetRandomValue";

   function GetPseudoRandomValue (arg1 : access RandomInfo) return double  -- /usr/include/ImageMagick-6/magick/random_.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "GetPseudoRandomValue";

   function RandomComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/random_.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "RandomComponentGenesis";

   function AcquireRandomInfo return access RandomInfo  -- /usr/include/ImageMagick-6/magick/random_.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireRandomInfo";

   function DestroyRandomInfo (arg1 : access RandomInfo) return access RandomInfo  -- /usr/include/ImageMagick-6/magick/random_.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyRandomInfo";

   function GetRandomKey (arg1 : access RandomInfo; arg2 : size_t) return access ImageMagick.Low_Level.ImageMagick_6_magick_string_uh.StringInfo  -- /usr/include/ImageMagick-6/magick/random_.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GetRandomKey";

   function GetRandomSecretKey (arg1 : access constant RandomInfo) return unsigned_long  -- /usr/include/ImageMagick-6/magick/random_.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "GetRandomSecretKey";

   procedure RandomComponentTerminus  -- /usr/include/ImageMagick-6/magick/random_.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "RandomComponentTerminus";

   procedure SeedPseudoRandomGenerator (arg1 : unsigned_long)  -- /usr/include/ImageMagick-6/magick/random_.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "SeedPseudoRandomGenerator";

   procedure SetRandomKey
     (arg1 : access RandomInfo;
      arg2 : size_t;
      arg3 : access unsigned_char)  -- /usr/include/ImageMagick-6/magick/random_.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "SetRandomKey";

   procedure SetRandomSecretKey (arg1 : unsigned_long)  -- /usr/include/ImageMagick-6/magick/random_.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "SetRandomSecretKey";

   procedure SetRandomTrueRandom (arg1 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType)  -- /usr/include/ImageMagick-6/magick/random_.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "SetRandomTrueRandom";

end ImageMagick.Low_Level.ImageMagick_6_magick_random_uh;
