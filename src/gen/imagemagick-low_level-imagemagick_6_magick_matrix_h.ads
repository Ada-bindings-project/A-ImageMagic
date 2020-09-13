pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;



package ImageMagick.Low_Level.ImageMagick_6_magick_matrix_h is

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
  --  MagickCore matrix methods.
  -- 

   type u_MatrixInfo is null record;   -- incomplete struct

   subtype MatrixInfo is u_MatrixInfo;  -- /usr/include/ImageMagick-6/magick/matrix.h:26

   function AcquireMagickMatrix (arg1 : size_t; arg2 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/matrix.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireMagickMatrix";

   function RelinquishMagickMatrix (arg1 : System.Address; arg2 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/matrix.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "RelinquishMagickMatrix";

   function MatrixToImage (arg1 : access constant MatrixInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access ImageMagick.Low_Level.ImageMagick_6_magick_image_h.u_Image  -- /usr/include/ImageMagick-6/magick/matrix.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "MatrixToImage";

   function GaussJordanElimination
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : size_t;
      arg4 : size_t) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/matrix.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "GaussJordanElimination";

   function GetMatrixElement
     (arg1 : access constant MatrixInfo;
      arg2 : long;
      arg3 : long;
      arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/matrix.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "GetMatrixElement";

   function NullMatrix (arg1 : access MatrixInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/matrix.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "NullMatrix";

   function SetMatrixElement
     (arg1 : access constant MatrixInfo;
      arg2 : long;
      arg3 : long;
      arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/matrix.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "SetMatrixElement";

   function AcquireMatrixInfo
     (arg1 : size_t;
      arg2 : size_t;
      arg3 : size_t;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access MatrixInfo  -- /usr/include/ImageMagick-6/magick/matrix.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireMatrixInfo";

   function DestroyMatrixInfo (arg1 : access MatrixInfo) return access MatrixInfo  -- /usr/include/ImageMagick-6/magick/matrix.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyMatrixInfo";

   function GetMatrixColumns (arg1 : access constant MatrixInfo) return size_t  -- /usr/include/ImageMagick-6/magick/matrix.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "GetMatrixColumns";

   function GetMatrixRows (arg1 : access constant MatrixInfo) return size_t  -- /usr/include/ImageMagick-6/magick/matrix.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "GetMatrixRows";

   procedure LeastSquaresAddTerms
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : access double;
      arg4 : access double;
      arg5 : size_t;
      arg6 : size_t)  -- /usr/include/ImageMagick-6/magick/matrix.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "LeastSquaresAddTerms";

end ImageMagick.Low_Level.ImageMagick_6_magick_matrix_h;
