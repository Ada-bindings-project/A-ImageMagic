pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

with Interfaces.C; use Interfaces.C;

with System;
with ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_image_h;
limited with ImageMagick.Low_Level.ImageMagick_6_magick_exception_h;


package ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h is

   SmallHashmapSize : constant := 17;  --  /usr/include/ImageMagick-6/magick/hashmap.h:25
   MediumHashmapSize : constant := 509;  --  /usr/include/ImageMagick-6/magick/hashmap.h:26
   LargeHashmapSize : constant := 8191;  --  /usr/include/ImageMagick-6/magick/hashmap.h:27
   HugeHashmapSize : constant := 131071;  --  /usr/include/ImageMagick-6/magick/hashmap.h:28

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
  --  MagickCore hash methods.
  -- 

   type u_HashmapInfo is null record;   -- incomplete struct

   subtype HashmapInfo is u_HashmapInfo;  -- /usr/include/ImageMagick-6/magick/hashmap.h:31

   type u_LinkedListInfo is null record;   -- incomplete struct

   subtype LinkedListInfo is u_LinkedListInfo;  -- /usr/include/ImageMagick-6/magick/hashmap.h:34

   function DestroyHashmap (arg1 : access HashmapInfo) return access HashmapInfo  -- /usr/include/ImageMagick-6/magick/hashmap.h:37
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyHashmap";

   function NewHashmap
     (arg1 : size_t;
      arg2 : access function (arg1 : System.Address) return size_t;
      arg3 : access function (arg1 : System.Address; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType;
      arg4 : access function (arg1 : System.Address) return System.Address;
      arg5 : access function (arg1 : System.Address) return System.Address) return access HashmapInfo  -- /usr/include/ImageMagick-6/magick/hashmap.h:38
   with Import => True, 
        Convention => C, 
        External_Name => "NewHashmap";

   function DestroyLinkedList (arg1 : access LinkedListInfo; arg2 : access function (arg1 : System.Address) return System.Address) return access LinkedListInfo  -- /usr/include/ImageMagick-6/magick/hashmap.h:42
   with Import => True, 
        Convention => C, 
        External_Name => "DestroyLinkedList";

   function NewLinkedList (arg1 : size_t) return access LinkedListInfo  -- /usr/include/ImageMagick-6/magick/hashmap.h:43
   with Import => True, 
        Convention => C, 
        External_Name => "NewLinkedList";

   function AppendValueToLinkedList (arg1 : access LinkedListInfo; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/hashmap.h:46
   with Import => True, 
        Convention => C, 
        External_Name => "AppendValueToLinkedList";

   function CompareHashmapString (arg1 : System.Address; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/hashmap.h:47
   with Import => True, 
        Convention => C, 
        External_Name => "CompareHashmapString";

   function CompareHashmapStringInfo (arg1 : System.Address; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/hashmap.h:48
   with Import => True, 
        Convention => C, 
        External_Name => "CompareHashmapStringInfo";

   function InsertValueInLinkedList
     (arg1 : access LinkedListInfo;
      arg2 : size_t;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/hashmap.h:49
   with Import => True, 
        Convention => C, 
        External_Name => "InsertValueInLinkedList";

   function InsertValueInSortedLinkedList
     (arg1 : access LinkedListInfo;
      arg2 : access function (arg1 : System.Address; arg2 : System.Address) return int;
      arg3 : System.Address;
      arg4 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/hashmap.h:50
   with Import => True, 
        Convention => C, 
        External_Name => "InsertValueInSortedLinkedList";

   function IsHashmapEmpty (arg1 : access constant HashmapInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/hashmap.h:52
   with Import => True, 
        Convention => C, 
        External_Name => "IsHashmapEmpty";

   function IsLinkedListEmpty (arg1 : access constant LinkedListInfo) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/hashmap.h:53
   with Import => True, 
        Convention => C, 
        External_Name => "IsLinkedListEmpty";

   function LinkedListToArray (arg1 : access LinkedListInfo; arg2 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/hashmap.h:54
   with Import => True, 
        Convention => C, 
        External_Name => "LinkedListToArray";

   function PutEntryInHashmap
     (arg1 : access HashmapInfo;
      arg2 : System.Address;
      arg3 : System.Address) return ImageMagick.Low_Level.ImageMagick_6_magick_magick_type_h.MagickBooleanType  -- /usr/include/ImageMagick-6/magick/hashmap.h:55
   with Import => True, 
        Convention => C, 
        External_Name => "PutEntryInHashmap";

   function GetNumberOfElementsInLinkedList (arg1 : access constant LinkedListInfo) return size_t  -- /usr/include/ImageMagick-6/magick/hashmap.h:58
   with Import => True, 
        Convention => C, 
        External_Name => "GetNumberOfElementsInLinkedList";

   function GetNumberOfEntriesInHashmap (arg1 : access constant HashmapInfo) return size_t  -- /usr/include/ImageMagick-6/magick/hashmap.h:59
   with Import => True, 
        Convention => C, 
        External_Name => "GetNumberOfEntriesInHashmap";

   function HashPointerType (arg1 : System.Address) return size_t  -- /usr/include/ImageMagick-6/magick/hashmap.h:60
   with Import => True, 
        Convention => C, 
        External_Name => "HashPointerType";

   function HashStringType (arg1 : System.Address) return size_t  -- /usr/include/ImageMagick-6/magick/hashmap.h:61
   with Import => True, 
        Convention => C, 
        External_Name => "HashStringType";

   function HashStringInfoType (arg1 : System.Address) return size_t  -- /usr/include/ImageMagick-6/magick/hashmap.h:62
   with Import => True, 
        Convention => C, 
        External_Name => "HashStringInfoType";

   procedure ClearLinkedList (arg1 : access LinkedListInfo; arg2 : access function (arg1 : System.Address) return System.Address)  -- /usr/include/ImageMagick-6/magick/hashmap.h:65
   with Import => True, 
        Convention => C, 
        External_Name => "ClearLinkedList";

   function GetLastValueInLinkedList (arg1 : access LinkedListInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:66
   with Import => True, 
        Convention => C, 
        External_Name => "GetLastValueInLinkedList";

   function GetNextKeyInHashmap (arg1 : access HashmapInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:67
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextKeyInHashmap";

   function GetNextValueInHashmap (arg1 : access HashmapInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:68
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextValueInHashmap";

   function GetNextValueInLinkedList (arg1 : access LinkedListInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:69
   with Import => True, 
        Convention => C, 
        External_Name => "GetNextValueInLinkedList";

   function GetValueFromHashmap (arg1 : access HashmapInfo; arg2 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:70
   with Import => True, 
        Convention => C, 
        External_Name => "GetValueFromHashmap";

   function GetValueFromLinkedList (arg1 : access LinkedListInfo; arg2 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:71
   with Import => True, 
        Convention => C, 
        External_Name => "GetValueFromLinkedList";

   function RemoveElementByValueFromLinkedList (arg1 : access LinkedListInfo; arg2 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:72
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveElementByValueFromLinkedList";

   function RemoveElementFromLinkedList (arg1 : access LinkedListInfo; arg2 : size_t) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:73
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveElementFromLinkedList";

   function RemoveEntryFromHashmap (arg1 : access HashmapInfo; arg2 : System.Address) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:74
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveEntryFromHashmap";

   function RemoveLastElementFromLinkedList (arg1 : access LinkedListInfo) return System.Address  -- /usr/include/ImageMagick-6/magick/hashmap.h:75
   with Import => True, 
        Convention => C, 
        External_Name => "RemoveLastElementFromLinkedList";

   procedure ResetHashmapIterator (arg1 : access HashmapInfo)  -- /usr/include/ImageMagick-6/magick/hashmap.h:76
   with Import => True, 
        Convention => C, 
        External_Name => "ResetHashmapIterator";

   procedure ResetLinkedListIterator (arg1 : access LinkedListInfo)  -- /usr/include/ImageMagick-6/magick/hashmap.h:77
   with Import => True, 
        Convention => C, 
        External_Name => "ResetLinkedListIterator";

end ImageMagick.Low_Level.ImageMagick_6_magick_hashmap_h;
