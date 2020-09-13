pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_opencl_h is

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
  --  MagickCore OpenCL public methods.
  -- 

  -- OpenCL program modules  
  -- !!! This has to be the last entry !!!  
   type MagickOpenCLProgram is 
     (MAGICK_OPENCL_ACCELERATE,
      MAGICK_OPENCL_NUM_PROGRAMS)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/opencl.h:30

   type ImageMagickOpenCLMode is 
     (MAGICK_OPENCL_OFF,
      MAGICK_OPENCL_DEVICE_SELECT_AUTO,
      MAGICK_OPENCL_DEVICE_SELECT_USER,
      MAGICK_OPENCL_DEVICE_SELECT_AUTO_CLEAR_CACHE)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/opencl.h:37

  -- Parameter type accepted by SetMagickOpenCLEnvParm and GetMagickOpenCLEnvParm  
  -- cl_device_id (from OpenCL)  
  -- MagickBooleanType  
  -- MagickBooleanType  
  -- MagickBooleanType  
  -- if true, disable the kernel binary cache  
  -- MagickBooleanType  
  -- if true, rerun microbenchmark in auto device selection  
  -- char*  
  -- char*  
   type MagickOpenCLEnvParam is 
     (MAGICK_OPENCL_ENV_PARAM_DEVICE,
      MAGICK_OPENCL_ENV_PARAM_OPENCL_DISABLED,
      MAGICK_OPENCL_ENV_PARAM_OPENCL_INITIALIZED,
      MAGICK_OPENCL_ENV_PARAM_PROGRAM_CACHE_DISABLED,
      MAGICK_OPENCL_ENV_PARAM_REGENERATE_PROFILE,
      MAGICK_OPENCL_ENV_PARAM_PLATFORM_VENDOR,
      MAGICK_OPENCL_ENV_PARAM_DEVICE_NAME)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/opencl.h:50

   type u_MagickCLEnv is null record;   -- incomplete struct

   type MagickCLEnv is access all u_MagickCLEnv;  -- /usr/include/ImageMagick-6/magick/opencl.h:52

   function GetMagickOpenCLEnvParam
     (arg1 : MagickCLEnv;
      arg2 : MagickOpenCLEnvParam;
      arg3 : size_t;
      arg4 : System.Address;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/opencl.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "GetMagickOpenCLEnvParam";

   function InitImageMagickOpenCL
     (arg1 : ImageMagickOpenCLMode;
      arg2 : System.Address;
      arg3 : System.Address;
      arg4 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/opencl.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "InitImageMagickOpenCL";

   function InitOpenCLEnv (arg1 : MagickCLEnv; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/opencl.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "InitOpenCLEnv";

   function SetMagickOpenCLEnvParam
     (arg1 : MagickCLEnv;
      arg2 : MagickOpenCLEnvParam;
      arg3 : size_t;
      arg4 : System.Address;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/opencl.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "SetMagickOpenCLEnvParam";

   function GetDefaultOpenCLEnv return MagickCLEnv  -- /usr/include/ImageMagick-6/magick/opencl.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "GetDefaultOpenCLEnv";

end ImageMagick.Low_Level.ImageMagick_6_magick_opencl_h;
