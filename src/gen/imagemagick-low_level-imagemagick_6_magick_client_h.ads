pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

package ImageMagick.Low_Level.ImageMagick_6_magick_client_h is

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
  --  MagickCore client methods.
  -- 

   function GetClientPath return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/client.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "GetClientPath";

   function GetClientName return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/client.h:27
   with Import => True, 
        Convention => C, 
        External_Name => "GetClientName";

   function SetClientName (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/client.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "SetClientName";

   function SetClientPath (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/client.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "SetClientPath";

end ImageMagick.Low_Level.ImageMagick_6_magick_client_h;
