pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;

with System;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_splay_tree_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_xml_tree_h is

  --  Copyright 1999-2020 ImageMagick Studio LLC, a non-profit organization
  --  dedicated to making software imaging solutions freely available.
  --  You may not use this file except in compliance with the License.  You may
  --  obtain a copy of the License at
  --    https://imagemagick.org/script/license.php
  --  Unless required by applicable law or agreed to in writing, software
  --  distributed under the License is distributed on an "AS IS" BASIS,
  --  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  --  See the License for the specific language governing permissions and
  --  limitations under the License.
  --  Magick's toolkit xml-tree methods.
  -- 

   type u_XMLTreeInfo is null record;   -- incomplete struct

   subtype XMLTreeInfo is u_XMLTreeInfo;  -- /usr/include/ImageMagick-6/magick/xml-tree.h:29

   function CanonicalXMLContent (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/xml-tree.h:32
   with Import => True, 
        Convention => C, 
        External_Name => "CanonicalXMLContent";

   function XMLTreeInfoToXML (arg1 : access XMLTreeInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/xml-tree.h:33
   with Import => True, 
        Convention => C, 
        External_Name => "XMLTreeInfoToXML";

   function GetXMLTreeAttribute (arg1 : access XMLTreeInfo; arg2 : Interfaces.C.Strings.chars_ptr) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/xml-tree.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "GetXMLTreeAttribute";

   function GetXMLTreeContent (arg1 : access XMLTreeInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/xml-tree.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "GetXMLTreeContent";

   function GetXMLTreeProcessingInstructions (arg1 : access XMLTreeInfo; arg2 : Interfaces.C.Strings.chars_ptr) return System.Address  -- /usr/include/ImageMagick-6/magick/xml-tree.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "GetXMLTreeProcessingInstructions";

   function GetXMLTreeTag (arg1 : access XMLTreeInfo) return Interfaces.C.Strings.chars_ptr  -- /usr/include/ImageMagick-6/magick/xml-tree.h:39
   with Import => True, 
        Convention => C, 
        External_Name => "GetXMLTreeTag";

   function GetXMLTreeAttributes (arg1 : access constant XMLTreeInfo; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_splay_tree_h.SplayTreeInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/xml-tree.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "GetXMLTreeAttributes";

   function AddChildToXMLTree
     (arg1 : access XMLTreeInfo;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : size_t) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "AddChildToXMLTree";

   function AddPathToXMLTree
     (arg1 : access XMLTreeInfo;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : size_t) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "AddPathToXMLTree";

   function DestroyXMLTree (arg1 : access XMLTreeInfo) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyXMLTree";

   function GetNextXMLTreeTag (arg1 : access XMLTreeInfo) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextXMLTreeTag";

   function GetXMLTreeChild (arg1 : access XMLTreeInfo; arg2 : Interfaces.C.Strings.chars_ptr) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "GetXMLTreeChild";

   function GetXMLTreeOrdered (arg1 : access XMLTreeInfo) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "GetXMLTreeOrdered";

   function GetXMLTreePath (arg1 : access XMLTreeInfo; arg2 : Interfaces.C.Strings.chars_ptr) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:51
   with Import => True, 
        Convention => C, 
        External_Name => "GetXMLTreePath";

   function GetXMLTreeSibling (arg1 : access XMLTreeInfo) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "GetXMLTreeSibling";

   function InsertTagIntoXMLTree
     (arg1 : access XMLTreeInfo;
      arg2 : access XMLTreeInfo;
      arg3 : size_t) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "InsertTagIntoXMLTree";

   function NewXMLTree (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : access ImageMagick.Low_Level.ImageMagick_6_magick_exception_h.ExceptionInfo) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "NewXMLTree";

   function NewXMLTreeTag (arg1 : Interfaces.C.Strings.chars_ptr) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "NewXMLTreeTag";

   function ParseTagFromXMLTree (arg1 : access XMLTreeInfo) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "ParseTagFromXMLTree";

   function PruneTagFromXMLTree (arg1 : access XMLTreeInfo) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:57
   with Import => True, 
        Convention => C, 
        External_Name => "PruneTagFromXMLTree";

   function SetXMLTreeAttribute
     (arg1 : access XMLTreeInfo;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "SetXMLTreeAttribute";

   function SetXMLTreeContent (arg1 : access XMLTreeInfo; arg2 : Interfaces.C.Strings.chars_ptr) return access XMLTreeInfo  -- /usr/include/ImageMagick-6/magick/xml-tree.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "SetXMLTreeContent";

end ImageMagick.Low_Level.ImageMagick_6_magick_xml_tree_h;
