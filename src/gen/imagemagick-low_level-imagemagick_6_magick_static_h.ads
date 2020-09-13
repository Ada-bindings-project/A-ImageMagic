pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;



package ImageMagick.Low_Level.ImageMagick_6_magick_static_h is

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
  --  MagickCore static coder registration methods.
  -- 

   function InvokeStaticImageFilter
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : System.Address;
      arg3 : int;
      arg4 : System.Address;
      arg5 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/static.h:26
   with Import => True, 
        Convention => C, 
        External_Name => "InvokeStaticImageFilter";

   function RegisterStaticModule (arg1 : Interfaces.C.Strings.chars_ptr; c_exception : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/static.h:28
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterStaticModule";

   function UnregisterStaticModule (arg1 : Interfaces.C.Strings.chars_ptr) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/static.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterStaticModule";

   function RegisterAAIImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterAAIImage";

   function RegisterARTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterARTImage";

   function RegisterAVIImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterAVIImage";

   function RegisterAVSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterAVSImage";

   function RegisterBIEImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterBIEImage";

   function RegisterBGRImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterBGRImage";

   function RegisterBMPImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterBMPImage";

   function RegisterBRAILLEImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterBRAILLEImage";

   function RegisterCALSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterCALSImage";

   function RegisterCAPTIONImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterCAPTIONImage";

   function RegisterCINImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterCINImage";

   function RegisterCIPImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterCIPImage";

   function RegisterCLIPImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterCLIPImage";

   function RegisterCLIPBOARDImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterCLIPBOARDImage";

   function RegisterCMYKImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterCMYKImage";

   function RegisterCUTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterCUTImage";

   function RegisterDCMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDCMImage";

   function RegisterDCXImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDCXImage";

   function RegisterDDSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDDSImage";

   function RegisterDEBUGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDEBUGImage";

   function RegisterDIBImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDIBImage";

   function RegisterDJVUImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDJVUImage";

   function RegisterDNGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDNGImage";

   function RegisterDOTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDOTImage";

   function RegisterDPSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDPSImage";

   function RegisterDPXImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterDPXImage";

   function RegisterEMFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterEMFImage";

   function RegisterEPDFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterEPDFImage";

   function RegisterEPIImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterEPIImage";

   function RegisterEPSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterEPSImage";

   function RegisterEPS2Image return size_t  -- /usr/include/ImageMagick-6/magick/static.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterEPS2Image";

   function RegisterEPSFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:63
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterEPSFImage";

   function RegisterEPSIImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:64
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterEPSIImage";

   function RegisterEPTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterEPTImage";

   function RegisterEXRImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterEXRImage";

   function RegisterFAXImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterFAXImage";

   function RegisterFITSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterFITSImage";

   function RegisterFLIFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterFLIFImage";

   function RegisterFPXImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterFPXImage";

   function RegisterG3Image return size_t  -- /usr/include/ImageMagick-6/magick/static.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterG3Image";

   function RegisterGIFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterGIFImage";

   function RegisterGIF87Image return size_t  -- /usr/include/ImageMagick-6/magick/static.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterGIF87Image";

   function RegisterGRADIENTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterGRADIENTImage";

   function RegisterGRANITEImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterGRANITEImage";

   function RegisterGRAYImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterGRAYImage";

   function RegisterHALDImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterHALDImage";

   function RegisterHDRImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:78
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterHDRImage";

   function RegisterHEICImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:79
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterHEICImage";

   function RegisterHImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:80
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterHImage";

   function RegisterHISTOGRAMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:81
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterHISTOGRAMImage";

   function RegisterHRZImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:82
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterHRZImage";

   function RegisterHTMLImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:83
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterHTMLImage";

   function RegisterICBImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:84
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterICBImage";

   function RegisterICONImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:85
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterICONImage";

   function RegisterINFOImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:86
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterINFOImage";

   function RegisterINLINEImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:87
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterINLINEImage";

   function RegisterIPLImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:88
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterIPLImage";

   function RegisterJBGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:89
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterJBGImage";

   function RegisterJBIGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:90
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterJBIGImage";

   function RegisterJNXImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:91
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterJNXImage";

   function RegisterJPEGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:92
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterJPEGImage";

   function RegisterJP2Image return size_t  -- /usr/include/ImageMagick-6/magick/static.h:93
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterJP2Image";

   function RegisterJSONImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:94
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterJSONImage";

   function RegisterLABELImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:95
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterLABELImage";

   function RegisterMACImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:96
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMACImage";

   function RegisterMAGICKImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:97
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMAGICKImage";

   function RegisterMAPImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:98
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMAPImage";

   function RegisterMASKImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:99
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMASKImage";

   function RegisterMATImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:100
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMATImage";

   function RegisterMATTEImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:101
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMATTEImage";

   function RegisterMETAImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:102
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMETAImage";

   function RegisterMIFFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:103
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMIFFImage";

   function RegisterMNGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:104
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMNGImage";

   function RegisterMONOImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:105
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMONOImage";

   function RegisterMPCImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:106
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMPCImage";

   function RegisterMPEGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:107
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMPEGImage";

   function RegisterMPRImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:108
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMPRImage";

   function RegisterMSLImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:109
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMSLImage";

   function RegisterMTVImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:110
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMTVImage";

   function RegisterMVGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:111
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterMVGImage";

   function RegisterNETSCAPEImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:112
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterNETSCAPEImage";

   function RegisterNULLImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:113
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterNULLImage";

   function RegisterP7Image return size_t  -- /usr/include/ImageMagick-6/magick/static.h:114
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterP7Image";

   function RegisterPBMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:115
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPBMImage";

   function RegisterOTBImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:116
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterOTBImage";

   function RegisterPALMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:117
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPALMImage";

   function RegisterPANGOImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:118
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPANGOImage";

   function RegisterPATTERNImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:119
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPATTERNImage";

   function RegisterPCDImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:120
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPCDImage";

   function RegisterPCDSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:121
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPCDSImage";

   function RegisterPCLImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:122
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPCLImage";

   function RegisterPCTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:123
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPCTImage";

   function RegisterPCXImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:124
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPCXImage";

   function RegisterPDBImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:125
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPDBImage";

   function RegisterPDFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:126
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPDFImage";

   function RegisterPESImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:127
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPESImage";

   function RegisterPGXImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:128
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPGXImage";

   function RegisterPICImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:129
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPICImage";

   function RegisterPICTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:130
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPICTImage";

   function RegisterPIXImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:131
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPIXImage";

   function RegisterPGMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:132
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPGMImage";

   function RegisterPLASMAImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:133
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPLASMAImage";

   function RegisterPMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:134
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPMImage";

   function RegisterPNGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:135
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPNGImage";

   function RegisterPNMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:136
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPNMImage";

   function RegisterPPMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:137
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPPMImage";

   function RegisterPREVIEWImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:138
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPREVIEWImage";

   function RegisterPSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:139
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPSImage";

   function RegisterPS2Image return size_t  -- /usr/include/ImageMagick-6/magick/static.h:140
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPS2Image";

   function RegisterPS3Image return size_t  -- /usr/include/ImageMagick-6/magick/static.h:141
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPS3Image";

   function RegisterPSDImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:142
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPSDImage";

   function RegisterPTIFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:143
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPTIFImage";

   function RegisterPWPImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:144
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterPWPImage";

   function RegisterRASImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:145
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterRASImage";

   function RegisterRAWImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:146
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterRAWImage";

   function RegisterRGBImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:147
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterRGBImage";

   function RegisterRGBAImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:148
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterRGBAImage";

   function RegisterRGFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:149
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterRGFImage";

   function RegisterRLAImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:150
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterRLAImage";

   function RegisterRLEImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:151
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterRLEImage";

   function RegisterSCRImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:152
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSCRImage";

   function RegisterSCREENSHOTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:153
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSCREENSHOTImage";

   function RegisterSCTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:154
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSCTImage";

   function RegisterSFWImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:155
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSFWImage";

   function RegisterSGIImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:156
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSGIImage";

   function RegisterSHTMLImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:157
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSHTMLImage";

   function RegisterSIXELImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:158
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSIXELImage";

   function RegisterSTEGANOImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:159
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSTEGANOImage";

   function RegisterSUNImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:160
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSUNImage";

   function RegisterSVGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:161
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterSVGImage";

   function RegisterTEXTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:162
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterTEXTImage";

   function RegisterTGAImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:163
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterTGAImage";

   function RegisterTHUMBNAILImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:164
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterTHUMBNAILImage";

   function RegisterTIFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:165
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterTIFImage";

   function RegisterTIFFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:166
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterTIFFImage";

   function RegisterTILEImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:167
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterTILEImage";

   function RegisterTIMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:168
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterTIMImage";

   function RegisterTTFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:169
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterTTFImage";

   function RegisterTXTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:170
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterTXTImage";

   function RegisterUILImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:171
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterUILImage";

   function RegisterURLImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:172
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterURLImage";

   function RegisterUYVYImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:173
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterUYVYImage";

   function RegisterVDAImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:174
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterVDAImage";

   function RegisterVICARImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:175
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterVICARImage";

   function RegisterVIDImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:176
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterVIDImage";

   function RegisterVIFFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:177
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterVIFFImage";

   function RegisterVIPSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:178
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterVIPSImage";

   function RegisterVSTImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:179
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterVSTImage";

   function RegisterWBMPImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:180
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterWBMPImage";

   function RegisterWEBPImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:181
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterWEBPImage";

   function RegisterWMFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:182
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterWMFImage";

   function RegisterWPGImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:183
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterWPGImage";

   function RegisterXImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:184
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterXImage";

   function RegisterXBMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:185
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterXBMImage";

   function RegisterXCImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:186
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterXCImage";

   function RegisterXCFImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:187
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterXCFImage";

   function RegisterXPMImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:188
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterXPMImage";

   function RegisterXPSImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:189
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterXPSImage";

   function RegisterXTRNImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:190
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterXTRNImage";

   function RegisterXVImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:191
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterXVImage";

   function RegisterXWDImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:192
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterXWDImage";

   function RegisterYCBCRImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:193
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterYCBCRImage";

   function RegisterYUVImage return size_t  -- /usr/include/ImageMagick-6/magick/static.h:194
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterYUVImage";

   procedure UnregisterAAIImage  -- /usr/include/ImageMagick-6/magick/static.h:197
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterAAIImage";

   procedure UnregisterARTImage  -- /usr/include/ImageMagick-6/magick/static.h:198
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterARTImage";

   procedure UnregisterAVIImage  -- /usr/include/ImageMagick-6/magick/static.h:199
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterAVIImage";

   procedure UnregisterAVSImage  -- /usr/include/ImageMagick-6/magick/static.h:200
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterAVSImage";

   procedure UnregisterBIEImage  -- /usr/include/ImageMagick-6/magick/static.h:201
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterBIEImage";

   procedure UnregisterBGRImage  -- /usr/include/ImageMagick-6/magick/static.h:202
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterBGRImage";

   procedure UnregisterBMPImage  -- /usr/include/ImageMagick-6/magick/static.h:203
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterBMPImage";

   procedure UnregisterBRAILLEImage  -- /usr/include/ImageMagick-6/magick/static.h:204
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterBRAILLEImage";

   procedure UnregisterCALSImage  -- /usr/include/ImageMagick-6/magick/static.h:205
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterCALSImage";

   procedure UnregisterCAPTIONImage  -- /usr/include/ImageMagick-6/magick/static.h:206
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterCAPTIONImage";

   procedure UnregisterCINImage  -- /usr/include/ImageMagick-6/magick/static.h:207
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterCINImage";

   procedure UnregisterCIPImage  -- /usr/include/ImageMagick-6/magick/static.h:208
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterCIPImage";

   procedure UnregisterCLIPImage  -- /usr/include/ImageMagick-6/magick/static.h:209
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterCLIPImage";

   procedure UnregisterCLIPBOARDImage  -- /usr/include/ImageMagick-6/magick/static.h:210
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterCLIPBOARDImage";

   procedure UnregisterCMYKImage  -- /usr/include/ImageMagick-6/magick/static.h:211
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterCMYKImage";

   procedure UnregisterCUTImage  -- /usr/include/ImageMagick-6/magick/static.h:212
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterCUTImage";

   procedure UnregisterDCMImage  -- /usr/include/ImageMagick-6/magick/static.h:213
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDCMImage";

   procedure UnregisterDCXImage  -- /usr/include/ImageMagick-6/magick/static.h:214
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDCXImage";

   procedure UnregisterDDSImage  -- /usr/include/ImageMagick-6/magick/static.h:215
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDDSImage";

   procedure UnregisterDEBUGImage  -- /usr/include/ImageMagick-6/magick/static.h:216
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDEBUGImage";

   procedure UnregisterDIBImage  -- /usr/include/ImageMagick-6/magick/static.h:217
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDIBImage";

   procedure UnregisterDJVUImage  -- /usr/include/ImageMagick-6/magick/static.h:218
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDJVUImage";

   procedure UnregisterDNGImage  -- /usr/include/ImageMagick-6/magick/static.h:219
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDNGImage";

   procedure UnregisterDOTImage  -- /usr/include/ImageMagick-6/magick/static.h:220
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDOTImage";

   procedure UnregisterDPSImage  -- /usr/include/ImageMagick-6/magick/static.h:221
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDPSImage";

   procedure UnregisterDPXImage  -- /usr/include/ImageMagick-6/magick/static.h:222
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterDPXImage";

   procedure UnregisterEMFImage  -- /usr/include/ImageMagick-6/magick/static.h:223
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterEMFImage";

   procedure UnregisterEPDFImage  -- /usr/include/ImageMagick-6/magick/static.h:224
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterEPDFImage";

   procedure UnregisterEPIImage  -- /usr/include/ImageMagick-6/magick/static.h:225
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterEPIImage";

   procedure UnregisterEPSImage  -- /usr/include/ImageMagick-6/magick/static.h:226
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterEPSImage";

   procedure UnregisterEPS2Image  -- /usr/include/ImageMagick-6/magick/static.h:227
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterEPS2Image";

   procedure UnregisterEPSFImage  -- /usr/include/ImageMagick-6/magick/static.h:228
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterEPSFImage";

   procedure UnregisterEPSIImage  -- /usr/include/ImageMagick-6/magick/static.h:229
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterEPSIImage";

   procedure UnregisterEPTImage  -- /usr/include/ImageMagick-6/magick/static.h:230
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterEPTImage";

   procedure UnregisterEXRImage  -- /usr/include/ImageMagick-6/magick/static.h:231
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterEXRImage";

   procedure UnregisterFAXImage  -- /usr/include/ImageMagick-6/magick/static.h:232
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterFAXImage";

   procedure UnregisterFITSImage  -- /usr/include/ImageMagick-6/magick/static.h:233
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterFITSImage";

   procedure UnregisterFLIFImage  -- /usr/include/ImageMagick-6/magick/static.h:234
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterFLIFImage";

   procedure UnregisterFPXImage  -- /usr/include/ImageMagick-6/magick/static.h:235
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterFPXImage";

   procedure UnregisterG3Image  -- /usr/include/ImageMagick-6/magick/static.h:236
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterG3Image";

   procedure UnregisterGIFImage  -- /usr/include/ImageMagick-6/magick/static.h:237
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterGIFImage";

   procedure UnregisterGIF87Image  -- /usr/include/ImageMagick-6/magick/static.h:238
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterGIF87Image";

   procedure UnregisterGRADIENTImage  -- /usr/include/ImageMagick-6/magick/static.h:239
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterGRADIENTImage";

   procedure UnregisterGRANITEImage  -- /usr/include/ImageMagick-6/magick/static.h:240
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterGRANITEImage";

   procedure UnregisterGRAYImage  -- /usr/include/ImageMagick-6/magick/static.h:241
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterGRAYImage";

   procedure UnregisterHALDImage  -- /usr/include/ImageMagick-6/magick/static.h:242
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterHALDImage";

   procedure UnregisterHDRImage  -- /usr/include/ImageMagick-6/magick/static.h:243
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterHDRImage";

   procedure UnregisterHEICImage  -- /usr/include/ImageMagick-6/magick/static.h:244
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterHEICImage";

   procedure UnregisterHImage  -- /usr/include/ImageMagick-6/magick/static.h:245
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterHImage";

   procedure UnregisterHISTOGRAMImage  -- /usr/include/ImageMagick-6/magick/static.h:246
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterHISTOGRAMImage";

   procedure UnregisterHRZImage  -- /usr/include/ImageMagick-6/magick/static.h:247
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterHRZImage";

   procedure UnregisterHTMLImage  -- /usr/include/ImageMagick-6/magick/static.h:248
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterHTMLImage";

   procedure UnregisterICBImage  -- /usr/include/ImageMagick-6/magick/static.h:249
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterICBImage";

   procedure UnregisterICONImage  -- /usr/include/ImageMagick-6/magick/static.h:250
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterICONImage";

   procedure UnregisterINFOImage  -- /usr/include/ImageMagick-6/magick/static.h:251
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterINFOImage";

   procedure UnregisterINLINEImage  -- /usr/include/ImageMagick-6/magick/static.h:252
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterINLINEImage";

   procedure UnregisterIPLImage  -- /usr/include/ImageMagick-6/magick/static.h:253
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterIPLImage";

   procedure UnregisterJBGImage  -- /usr/include/ImageMagick-6/magick/static.h:254
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterJBGImage";

   procedure UnregisterJBIGImage  -- /usr/include/ImageMagick-6/magick/static.h:255
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterJBIGImage";

   procedure UnregisterJNXImage  -- /usr/include/ImageMagick-6/magick/static.h:256
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterJNXImage";

   procedure UnregisterJPEGImage  -- /usr/include/ImageMagick-6/magick/static.h:257
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterJPEGImage";

   procedure UnregisterJP2Image  -- /usr/include/ImageMagick-6/magick/static.h:258
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterJP2Image";

   procedure UnregisterJSONImage  -- /usr/include/ImageMagick-6/magick/static.h:259
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterJSONImage";

   procedure UnregisterLABELImage  -- /usr/include/ImageMagick-6/magick/static.h:260
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterLABELImage";

   procedure UnregisterLOCALEImage  -- /usr/include/ImageMagick-6/magick/static.h:261
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterLOCALEImage";

   procedure UnregisterMACImage  -- /usr/include/ImageMagick-6/magick/static.h:262
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMACImage";

   procedure UnregisterMAGICKImage  -- /usr/include/ImageMagick-6/magick/static.h:263
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMAGICKImage";

   procedure UnregisterMAPImage  -- /usr/include/ImageMagick-6/magick/static.h:264
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMAPImage";

   procedure UnregisterMASKImage  -- /usr/include/ImageMagick-6/magick/static.h:265
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMASKImage";

   procedure UnregisterMATImage  -- /usr/include/ImageMagick-6/magick/static.h:266
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMATImage";

   procedure UnregisterMATTEImage  -- /usr/include/ImageMagick-6/magick/static.h:267
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMATTEImage";

   procedure UnregisterMETAImage  -- /usr/include/ImageMagick-6/magick/static.h:268
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMETAImage";

   procedure UnregisterMIFFImage  -- /usr/include/ImageMagick-6/magick/static.h:269
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMIFFImage";

   procedure UnregisterMNGImage  -- /usr/include/ImageMagick-6/magick/static.h:270
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMNGImage";

   procedure UnregisterMONOImage  -- /usr/include/ImageMagick-6/magick/static.h:271
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMONOImage";

   procedure UnregisterMPCImage  -- /usr/include/ImageMagick-6/magick/static.h:272
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMPCImage";

   procedure UnregisterMPEGImage  -- /usr/include/ImageMagick-6/magick/static.h:273
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMPEGImage";

   procedure UnregisterMPRImage  -- /usr/include/ImageMagick-6/magick/static.h:274
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMPRImage";

   procedure UnregisterMSLImage  -- /usr/include/ImageMagick-6/magick/static.h:275
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMSLImage";

   procedure UnregisterMTVImage  -- /usr/include/ImageMagick-6/magick/static.h:276
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMTVImage";

   procedure UnregisterMVGImage  -- /usr/include/ImageMagick-6/magick/static.h:277
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterMVGImage";

   procedure UnregisterNETSCAPEImage  -- /usr/include/ImageMagick-6/magick/static.h:278
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterNETSCAPEImage";

   procedure UnregisterNULLImage  -- /usr/include/ImageMagick-6/magick/static.h:279
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterNULLImage";

   procedure UnregisterP7Image  -- /usr/include/ImageMagick-6/magick/static.h:280
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterP7Image";

   procedure UnregisterPBMImage  -- /usr/include/ImageMagick-6/magick/static.h:281
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPBMImage";

   procedure UnregisterOTBImage  -- /usr/include/ImageMagick-6/magick/static.h:282
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterOTBImage";

   procedure UnregisterPALMImage  -- /usr/include/ImageMagick-6/magick/static.h:283
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPALMImage";

   procedure UnregisterPANGOImage  -- /usr/include/ImageMagick-6/magick/static.h:284
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPANGOImage";

   procedure UnregisterPATTERNImage  -- /usr/include/ImageMagick-6/magick/static.h:285
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPATTERNImage";

   procedure UnregisterPCDImage  -- /usr/include/ImageMagick-6/magick/static.h:286
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPCDImage";

   procedure UnregisterPCDSImage  -- /usr/include/ImageMagick-6/magick/static.h:287
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPCDSImage";

   procedure UnregisterPCLImage  -- /usr/include/ImageMagick-6/magick/static.h:288
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPCLImage";

   procedure UnregisterPCTImage  -- /usr/include/ImageMagick-6/magick/static.h:289
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPCTImage";

   procedure UnregisterPCXImage  -- /usr/include/ImageMagick-6/magick/static.h:290
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPCXImage";

   procedure UnregisterPDBImage  -- /usr/include/ImageMagick-6/magick/static.h:291
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPDBImage";

   procedure UnregisterPDFImage  -- /usr/include/ImageMagick-6/magick/static.h:292
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPDFImage";

   procedure UnregisterPESImage  -- /usr/include/ImageMagick-6/magick/static.h:293
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPESImage";

   procedure UnregisterPGXImage  -- /usr/include/ImageMagick-6/magick/static.h:294
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPGXImage";

   procedure UnregisterPICImage  -- /usr/include/ImageMagick-6/magick/static.h:295
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPICImage";

   procedure UnregisterPICTImage  -- /usr/include/ImageMagick-6/magick/static.h:296
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPICTImage";

   procedure UnregisterPIXImage  -- /usr/include/ImageMagick-6/magick/static.h:297
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPIXImage";

   procedure UnregisterPLASMAImage  -- /usr/include/ImageMagick-6/magick/static.h:298
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPLASMAImage";

   procedure UnregisterPGMImage  -- /usr/include/ImageMagick-6/magick/static.h:299
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPGMImage";

   procedure UnregisterPMImage  -- /usr/include/ImageMagick-6/magick/static.h:300
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPMImage";

   procedure UnregisterPNGImage  -- /usr/include/ImageMagick-6/magick/static.h:301
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPNGImage";

   procedure UnregisterPNMImage  -- /usr/include/ImageMagick-6/magick/static.h:302
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPNMImage";

   procedure UnregisterPPMImage  -- /usr/include/ImageMagick-6/magick/static.h:303
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPPMImage";

   procedure UnregisterPREVIEWImage  -- /usr/include/ImageMagick-6/magick/static.h:304
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPREVIEWImage";

   procedure UnregisterPSImage  -- /usr/include/ImageMagick-6/magick/static.h:305
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPSImage";

   procedure UnregisterPS2Image  -- /usr/include/ImageMagick-6/magick/static.h:306
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPS2Image";

   procedure UnregisterPS3Image  -- /usr/include/ImageMagick-6/magick/static.h:307
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPS3Image";

   procedure UnregisterPSDImage  -- /usr/include/ImageMagick-6/magick/static.h:308
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPSDImage";

   procedure UnregisterPTIFImage  -- /usr/include/ImageMagick-6/magick/static.h:309
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPTIFImage";

   procedure UnregisterPWPImage  -- /usr/include/ImageMagick-6/magick/static.h:310
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterPWPImage";

   procedure UnregisterRASImage  -- /usr/include/ImageMagick-6/magick/static.h:311
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterRASImage";

   procedure UnregisterRAWImage  -- /usr/include/ImageMagick-6/magick/static.h:312
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterRAWImage";

   procedure UnregisterRGBImage  -- /usr/include/ImageMagick-6/magick/static.h:313
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterRGBImage";

   procedure UnregisterRGBAImage  -- /usr/include/ImageMagick-6/magick/static.h:314
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterRGBAImage";

   procedure UnregisterRGFImage  -- /usr/include/ImageMagick-6/magick/static.h:315
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterRGFImage";

   procedure UnregisterRLAImage  -- /usr/include/ImageMagick-6/magick/static.h:316
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterRLAImage";

   procedure UnregisterRLEImage  -- /usr/include/ImageMagick-6/magick/static.h:317
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterRLEImage";

   procedure UnregisterSCRImage  -- /usr/include/ImageMagick-6/magick/static.h:318
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSCRImage";

   procedure UnregisterSCREENSHOTImage  -- /usr/include/ImageMagick-6/magick/static.h:319
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSCREENSHOTImage";

   procedure UnregisterSCTImage  -- /usr/include/ImageMagick-6/magick/static.h:320
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSCTImage";

   procedure UnregisterSFWImage  -- /usr/include/ImageMagick-6/magick/static.h:321
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSFWImage";

   procedure UnregisterSGIImage  -- /usr/include/ImageMagick-6/magick/static.h:322
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSGIImage";

   procedure UnregisterSHTMLImage  -- /usr/include/ImageMagick-6/magick/static.h:323
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSHTMLImage";

   procedure UnregisterSIXELImage  -- /usr/include/ImageMagick-6/magick/static.h:324
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSIXELImage";

   procedure UnregisterSTEGANOImage  -- /usr/include/ImageMagick-6/magick/static.h:325
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSTEGANOImage";

   procedure UnregisterSUNImage  -- /usr/include/ImageMagick-6/magick/static.h:326
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSUNImage";

   procedure UnregisterSVGImage  -- /usr/include/ImageMagick-6/magick/static.h:327
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterSVGImage";

   procedure UnregisterTEXTImage  -- /usr/include/ImageMagick-6/magick/static.h:328
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterTEXTImage";

   procedure UnregisterTGAImage  -- /usr/include/ImageMagick-6/magick/static.h:329
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterTGAImage";

   procedure UnregisterTHUMBNAILImage  -- /usr/include/ImageMagick-6/magick/static.h:330
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterTHUMBNAILImage";

   procedure UnregisterTIFImage  -- /usr/include/ImageMagick-6/magick/static.h:331
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterTIFImage";

   procedure UnregisterTIFFImage  -- /usr/include/ImageMagick-6/magick/static.h:332
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterTIFFImage";

   procedure UnregisterTILEImage  -- /usr/include/ImageMagick-6/magick/static.h:333
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterTILEImage";

   procedure UnregisterTIMImage  -- /usr/include/ImageMagick-6/magick/static.h:334
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterTIMImage";

   procedure UnregisterTTFImage  -- /usr/include/ImageMagick-6/magick/static.h:335
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterTTFImage";

   procedure UnregisterTXTImage  -- /usr/include/ImageMagick-6/magick/static.h:336
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterTXTImage";

   procedure UnregisterUILImage  -- /usr/include/ImageMagick-6/magick/static.h:337
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterUILImage";

   procedure UnregisterURLImage  -- /usr/include/ImageMagick-6/magick/static.h:338
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterURLImage";

   procedure UnregisterUYVYImage  -- /usr/include/ImageMagick-6/magick/static.h:339
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterUYVYImage";

   procedure UnregisterVDAImage  -- /usr/include/ImageMagick-6/magick/static.h:340
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterVDAImage";

   procedure UnregisterVICARImage  -- /usr/include/ImageMagick-6/magick/static.h:341
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterVICARImage";

   procedure UnregisterVIDImage  -- /usr/include/ImageMagick-6/magick/static.h:342
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterVIDImage";

   procedure UnregisterVIFFImage  -- /usr/include/ImageMagick-6/magick/static.h:343
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterVIFFImage";

   procedure UnregisterVIPSImage  -- /usr/include/ImageMagick-6/magick/static.h:344
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterVIPSImage";

   procedure UnregisterVSTImage  -- /usr/include/ImageMagick-6/magick/static.h:345
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterVSTImage";

   procedure UnregisterWBMPImage  -- /usr/include/ImageMagick-6/magick/static.h:346
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterWBMPImage";

   procedure UnregisterWEBPImage  -- /usr/include/ImageMagick-6/magick/static.h:347
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterWEBPImage";

   procedure UnregisterWMFImage  -- /usr/include/ImageMagick-6/magick/static.h:348
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterWMFImage";

   procedure UnregisterWPGImage  -- /usr/include/ImageMagick-6/magick/static.h:349
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterWPGImage";

   procedure UnregisterXImage  -- /usr/include/ImageMagick-6/magick/static.h:350
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterXImage";

   procedure UnregisterXBMImage  -- /usr/include/ImageMagick-6/magick/static.h:351
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterXBMImage";

   procedure UnregisterXCImage  -- /usr/include/ImageMagick-6/magick/static.h:352
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterXCImage";

   procedure UnregisterXCFImage  -- /usr/include/ImageMagick-6/magick/static.h:353
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterXCFImage";

   procedure UnregisterXPMImage  -- /usr/include/ImageMagick-6/magick/static.h:354
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterXPMImage";

   procedure UnregisterXPSImage  -- /usr/include/ImageMagick-6/magick/static.h:355
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterXPSImage";

   procedure UnregisterXTRNImage  -- /usr/include/ImageMagick-6/magick/static.h:356
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterXTRNImage";

   procedure UnregisterXVImage  -- /usr/include/ImageMagick-6/magick/static.h:357
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterXVImage";

   procedure UnregisterXWDImage  -- /usr/include/ImageMagick-6/magick/static.h:358
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterXWDImage";

   procedure UnregisterYCBCRImage  -- /usr/include/ImageMagick-6/magick/static.h:359
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterYCBCRImage";

   procedure UnregisterYUVImage  -- /usr/include/ImageMagick-6/magick/static.h:360
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterYUVImage";

   procedure RegisterStaticModules  -- /usr/include/ImageMagick-6/magick/static.h:363
   with Import => True, 
        Convention => C, 
        External_Name => "RegisterStaticModules";

   procedure UnregisterStaticModules  -- /usr/include/ImageMagick-6/magick/static.h:364
   with Import => True, 
        Convention => C, 
        External_Name => "UnregisterStaticModules";

end ImageMagick.Low_Level.ImageMagick_6_magick_static_h;
