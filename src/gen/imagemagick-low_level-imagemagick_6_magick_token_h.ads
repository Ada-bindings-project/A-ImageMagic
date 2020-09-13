pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;

package ImageMagick.Low_Level.ImageMagick_6_magick_token_h is

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
  --  MagickCore token methods.
  -- 

  --  Typedef declarations.
  -- 

   type u_TokenInfo is null record;   -- incomplete struct

   subtype TokenInfo is u_TokenInfo;  -- /usr/include/ImageMagick-6/magick/token.h:29

   function Tokenizer
     (arg1 : access TokenInfo;
      arg2 : unsigned;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : size_t;
      arg5 : Interfaces.C.Strings.chars_ptr;
      arg6 : Interfaces.C.Strings.chars_ptr;
      arg7 : Interfaces.C.Strings.chars_ptr;
      arg8 : Interfaces.C.Strings.chars_ptr;
      arg9 : char;
      arg10 : Interfaces.C.Strings.chars_ptr;
      arg11 : access int;
      arg12 : Interfaces.C.Strings.chars_ptr) return int  -- /usr/include/ImageMagick-6/magick/token.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "Tokenizer";

   function GlobExpression
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/token.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "GlobExpression";

   function IsGlob (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/token.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "IsGlob";

   function IsMagickTrue (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/token.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "IsMagickTrue";

   function GetNextToken
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : size_t;
      arg4 : Interfaces.C.Strings.chars_ptr) return size_t  -- /usr/include/ImageMagick-6/magick/token.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextToken";

   function AcquireTokenInfo return access TokenInfo  -- /usr/include/ImageMagick-6/magick/token.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireTokenInfo";

   function DestroyTokenInfo (arg1 : access TokenInfo) return access TokenInfo  -- /usr/include/ImageMagick-6/magick/token.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyTokenInfo";

end ImageMagick.Low_Level.ImageMagick_6_magick_token_h;
