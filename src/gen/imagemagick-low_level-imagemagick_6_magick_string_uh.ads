pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with Interfaces.C.Strings;
with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


limited with Interfaces.C_Streams;
with Interfaces.C.Extensions;

package ImageMagick.Low_Level.ImageMagick_6_magick_string_uh is

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
  --  MagickCore string methods.
  -- 

   subtype u_StringInfo_array3537 is Interfaces.C.char_array (0 .. 4095);
   type StringInfo is record
      path : aliased u_StringInfo_array3537;  -- /usr/include/ImageMagick-6/magick/string_.h:32
      datum : access unsigned_char;  -- /usr/include/ImageMagick-6/magick/string_.h:35
      length : aliased size_t;  -- /usr/include/ImageMagick-6/magick/string_.h:38
      signature : aliased size_t;  -- /usr/include/ImageMagick-6/magick/string_.h:39
      name : Interfaces.C.Strings.chars_ptr;  -- /usr/include/ImageMagick-6/magick/string_.h:42
   end record
   with Convention => C_Pass_By_Copy;  -- /usr/include/ImageMagick-6/magick/string_.h:29

   --  subtype StringInfo is u_StringInfo;  -- /usr/include/ImageMagick-6/magick/string_.h:43

   function AcquireString (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireString";

   function CloneString (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "CloneString";

   function ConstantString (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "ConstantString";

   function DestroyString (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyString";

   function DestroyStringList (arg1 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/magick/string_.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyStringList";

   function EscapeString (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : char) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "EscapeString";

   function FileToString
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "FileToString";

   function GetEnvironmentValue (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "GetEnvironmentValue";

   function SanitizeString (arg1 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "SanitizeString";

   function StringInfoToHexString (arg1 : access constant StringInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "StringInfoToHexString";

   function StringInfoToString (arg1 : access constant StringInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "StringInfoToString";

   function StringToArgv (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access int) return System.Address  -- /usr/include/ImageMagick-6/magick/string_.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "StringToArgv";

   function StringToken (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "StringToken";

   function StringToList (arg1 : Interfaces.C.Strings.chars_ptr) return System.Address  -- /usr/include/ImageMagick-6/magick/string_.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "StringToList";

   function StringToStrings (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/string_.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "StringToStrings";

   function GetStringInfoName (arg1 : access constant StringInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "GetStringInfoName";

   function GetStringInfoPath (arg1 : access constant StringInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/string_.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "GetStringInfoPath";

   function InterpretSiPrefixValue (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : System.Address) return double  -- /usr/include/ImageMagick-6/magick/string_.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "InterpretSiPrefixValue";

   function StringToArrayOfDoubles
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : access long;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access double  -- /usr/include/ImageMagick-6/magick/string_.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "StringToArrayOfDoubles";

   function CompareStringInfo (arg1 : access constant StringInfo; arg2 : access constant StringInfo) return int  -- /usr/include/ImageMagick-6/magick/string_.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "CompareStringInfo";

   function ConcatenateString (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/string_.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "ConcatenateString";

   function IsStringTrue (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/string_.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "IsStringTrue";

   function IsStringNotFalse (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/string_.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "IsStringNotFalse";

   function SubstituteString
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/string_.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "SubstituteString";

   function ConcatenateMagickString
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : size_t) return size_t  -- /usr/include/ImageMagick-6/magick/string_.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "ConcatenateMagickString";

   function CopyMagickString
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : size_t) return size_t  -- /usr/include/ImageMagick-6/magick/string_.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "CopyMagickString";

   function GetStringInfoLength (arg1 : access constant StringInfo) return size_t  -- /usr/include/ImageMagick-6/magick/string_.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "GetStringInfoLength";

   function FormatMagickSize
     (arg1 : Extensions.unsigned_long_long;
      arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg3 : Interfaces.C.Strings.chars_ptr) return long  -- /usr/include/ImageMagick-6/magick/string_.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "FormatMagickSize";

   function AcquireStringInfo (arg1 : size_t) return access StringInfo  -- /usr/include/ImageMagick-6/magick/string_.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "AcquireStringInfo";

   function BlobToStringInfo (arg1 : System.Address; arg2 : size_t) return access StringInfo  -- /usr/include/ImageMagick-6/magick/string_.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "BlobToStringInfo";

   function CloneStringInfo (arg1 : access constant StringInfo) return access StringInfo  -- /usr/include/ImageMagick-6/magick/string_.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "CloneStringInfo";

   function ConfigureFileToStringInfo (arg1 : Interfaces.C.Strings.chars_ptr) return access StringInfo  -- /usr/include/ImageMagick-6/magick/string_.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "ConfigureFileToStringInfo";

   function DestroyStringInfo (arg1 : access StringInfo) return access StringInfo  -- /usr/include/ImageMagick-6/magick/string_.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyStringInfo";

   function FileToStringInfo
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : size_t;
      arg3 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access StringInfo  -- /usr/include/ImageMagick-6/magick/string_.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "FileToStringInfo";

   function SplitStringInfo (arg1 : access StringInfo; arg2 : size_t) return access StringInfo  -- /usr/include/ImageMagick-6/magick/string_.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "SplitStringInfo";

   function StringToStringInfo (arg1 : Interfaces.C.Strings.chars_ptr) return access StringInfo  -- /usr/include/ImageMagick-6/magick/string_.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "StringToStringInfo";

   function GetStringInfoDatum (arg1 : access constant StringInfo) return access unsigned_char  -- /usr/include/ImageMagick-6/magick/string_.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "GetStringInfoDatum";

   procedure ConcatenateStringInfo (arg1 : access StringInfo; arg2 : access constant StringInfo)  -- /usr/include/ImageMagick-6/magick/string_.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "ConcatenateStringInfo";

   procedure PrintStringInfo
     (the_file : access Interfaces.C_Streams.FILEs;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access constant StringInfo)  -- /usr/include/ImageMagick-6/magick/string_.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "PrintStringInfo";

   procedure ResetStringInfo (arg1 : access StringInfo)  -- /usr/include/ImageMagick-6/magick/string_.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "ResetStringInfo";

   procedure SetStringInfo (arg1 : access StringInfo; arg2 : access constant StringInfo)  -- /usr/include/ImageMagick-6/magick/string_.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "SetStringInfo";

   procedure SetStringInfoDatum (arg1 : access StringInfo; arg2 : access unsigned_char)  -- /usr/include/ImageMagick-6/magick/string_.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "SetStringInfoDatum";

   procedure SetStringInfoLength (arg1 : access StringInfo; arg2 : size_t)  -- /usr/include/ImageMagick-6/magick/string_.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "SetStringInfoLength";

   procedure SetStringInfoName (arg1 : access StringInfo; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/string_.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "SetStringInfoName";

   procedure SetStringInfoPath (arg1 : access StringInfo; arg2 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/string_.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "SetStringInfoPath";

   procedure StripString (arg1 : Interfaces.C.Strings.chars_ptr)  -- /usr/include/ImageMagick-6/magick/string_.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "StripString";

end ImageMagick.Low_Level.ImageMagick_6_magick_string_uh;
