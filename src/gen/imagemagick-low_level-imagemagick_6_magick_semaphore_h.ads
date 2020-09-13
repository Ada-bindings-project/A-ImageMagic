pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;

package ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h is

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
  --  MagickCore methods to lock and unlock semaphores.
  -- 

   type SemaphoreInfo is null record;   -- incomplete struct

   function SemaphoreComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/semaphore.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "SemaphoreComponentGenesis";

   function AllocateSemaphoreInfo return access SemaphoreInfo  -- /usr/include/ImageMagick-6/magick/semaphore.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "AllocateSemaphoreInfo";

   procedure ActivateSemaphoreInfo (arg1 : System.Address)  -- /usr/include/ImageMagick-6/magick/semaphore.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "ActivateSemaphoreInfo";

   procedure DestroySemaphoreInfo (arg1 : System.Address)  -- /usr/include/ImageMagick-6/magick/semaphore.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "DestroySemaphoreInfo";

   procedure LockSemaphoreInfo (arg1 : access SemaphoreInfo)  -- /usr/include/ImageMagick-6/magick/semaphore.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "LockSemaphoreInfo";

   procedure SemaphoreComponentTerminus  -- /usr/include/ImageMagick-6/magick/semaphore.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "SemaphoreComponentTerminus";

   procedure UnlockSemaphoreInfo (arg1 : access SemaphoreInfo)  -- /usr/include/ImageMagick-6/magick/semaphore.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "UnlockSemaphoreInfo";

end ImageMagick.Low_Level.ImageMagick_6_magick_semaphore_h;
