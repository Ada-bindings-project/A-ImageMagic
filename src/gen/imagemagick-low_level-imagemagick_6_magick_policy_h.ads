pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;

with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;
limited with Interfaces.C_Streams;

package ImageMagick.Low_Level.ImageMagick_6_magick_policy_h is

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
  --  MagickCore security policy methods.
  -- 

   type PolicyDomain is 
     (UndefinedPolicyDomain,
      CoderPolicyDomain,
      DelegatePolicyDomain,
      FilterPolicyDomain,
      PathPolicyDomain,
      ResourcePolicyDomain,
      SystemPolicyDomain,
      CachePolicyDomain,
      ModulePolicyDomain)
   with Convention => C;  -- /usr/include/ImageMagick-6/magick/policy.h:39

   subtype PolicyRights is unsigned;
   UndefinedPolicyRights : constant unsigned := 0;
   NoPolicyRights : constant unsigned := 0;
   ReadPolicyRights : constant unsigned := 1;
   WritePolicyRights : constant unsigned := 2;
   ExecutePolicyRights : constant unsigned := 4;
   AllPolicyRights : constant unsigned := 255;  -- /usr/include/ImageMagick-6/magick/policy.h:49

   type u_PolicyInfo is null record;   -- incomplete struct

   subtype PolicyInfo is u_PolicyInfo;  -- /usr/include/ImageMagick-6/magick/policy.h:52

   function GetPolicyValue (name : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/policy.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "GetPolicyValue";

   function GetPolicyList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/policy.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "GetPolicyList";

   function GetPolicyInfoList
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/policy.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "GetPolicyInfoList";

   function IsRightsAuthorized
     (arg1 : PolicyDomain;
      arg2 : PolicyRights;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/policy.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "IsRightsAuthorized";

   function ListPolicyInfo (arg1 : access Interfaces.C_Streams.FILEs; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/policy.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "ListPolicyInfo";

   function PolicyComponentGenesis return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/policy.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "PolicyComponentGenesis";

   function SetMagickSecurityPolicy (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/policy.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "SetMagickSecurityPolicy";

   procedure PolicyComponentTerminus  -- /usr/include/ImageMagick-6/magick/policy.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "PolicyComponentTerminus";

end ImageMagick.Low_Level.ImageMagick_6_magick_policy_h;
