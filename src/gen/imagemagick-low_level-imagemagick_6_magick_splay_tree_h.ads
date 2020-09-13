pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;
with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;



package ImageMagick.Low_Level.ImageMagick_6_magick_splay_tree_h is

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
  --  MagickCore splay-tree methods.
  -- 

   type SplayTreeInfo is null record;   -- incomplete struct

   --  subtype SplayTreeInfo is u_SplayTreeInfo;  -- /usr/include/ImageMagick-6/magick/splay-tree.h:26

   function AddValueToSplayTree
     (arg1 : access SplayTreeInfo;
      arg2 : System.Address;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/splay-tree.h:29
   with Import => True, 
        Convention => C, 
        External_Name => "AddValueToSplayTree";

   function DeleteNodeByValueFromSplayTree (arg1 : access SplayTreeInfo; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/splay-tree.h:30
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteNodeByValueFromSplayTree";

   function DeleteNodeFromSplayTree (arg1 : access SplayTreeInfo; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/splay-tree.h:31
   with Import => True, 
        Convention => C, 
        External_Name => "DeleteNodeFromSplayTree";

   function GetNextKeyInSplayTree (arg1 : access SplayTreeInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/splay-tree.h:34
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextKeyInSplayTree";

   function GetNextValueInSplayTree (arg1 : access SplayTreeInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/splay-tree.h:35
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextValueInSplayTree";

   function GetRootValueFromSplayTree (arg1 : access SplayTreeInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/splay-tree.h:36
   with Import => True, 
        Convention => C, 
        External_Name => "GetRootValueFromSplayTree";

   function GetValueFromSplayTree (arg1 : access SplayTreeInfo; arg2 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/magick/splay-tree.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "GetValueFromSplayTree";

   function CompareSplayTreeString (arg1 : System.Address; arg2 : System.Address) return int  -- /usr/include/ImageMagick-6/magick/splay-tree.h:40
   with Import => True, 
        Convention => C, 
        External_Name => "CompareSplayTreeString";

   function CompareSplayTreeStringInfo (arg1 : System.Address; arg2 : System.Address) return int  -- /usr/include/ImageMagick-6/magick/splay-tree.h:41
   with Import => True, 
        Convention => C, 
        External_Name => "CompareSplayTreeStringInfo";

   function CloneSplayTree
     (arg1 : access SplayTreeInfo;
      arg2 : access function (arg1 : System.Address) return System.Address;
      arg3 : access function (arg1 : System.Address) return System.Address) return access SplayTreeInfo  -- /usr/include/ImageMagick-6/magick/splay-tree.h:44
   with Import => True, 
        Convention => C, 
        External_Name => "CloneSplayTree";

   function DestroySplayTree (arg1 : access SplayTreeInfo) return access SplayTreeInfo  -- /usr/include/ImageMagick-6/magick/splay-tree.h:45
   with Import => True, 
        Convention => C, 
        External_Name => "DestroySplayTree";

   function NewSplayTree
     (arg1 : access function (arg1 : System.Address; arg2 : System.Address) return int;
      arg2 : access function (arg1 : System.Address) return System.Address;
      arg3 : access function (arg1 : System.Address) return System.Address) return access SplayTreeInfo  -- /usr/include/ImageMagick-6/magick/splay-tree.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "NewSplayTree";

   function GetNumberOfNodesInSplayTree (arg1 : access constant SplayTreeInfo) return size_t  -- /usr/include/ImageMagick-6/magick/splay-tree.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "GetNumberOfNodesInSplayTree";

   function RemoveNodeByValueFromSplayTree (arg1 : access SplayTreeInfo; arg2 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/magick/splay-tree.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveNodeByValueFromSplayTree";

   function RemoveNodeFromSplayTree (arg1 : access SplayTreeInfo; arg2 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/magick/splay-tree.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveNodeFromSplayTree";

   procedure ResetSplayTree (arg1 : access SplayTreeInfo)  -- /usr/include/ImageMagick-6/magick/splay-tree.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "ResetSplayTree";

   procedure ResetSplayTreeIterator (arg1 : access SplayTreeInfo)  -- /usr/include/ImageMagick-6/magick/splay-tree.h:56
   with Import => True, 
        Convention => C, 
        External_Name => "ResetSplayTreeIterator";

end ImageMagick.Low_Level.ImageMagick_6_magick_splay_tree_h;
