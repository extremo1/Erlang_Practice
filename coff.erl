-module(coff).
-export([unpack_image_resource_directory/1]).

-define(DWORD, 32/unsigned-little-integer).
-define(LONG, 32/unsigned-little-integer).
-define(WORD, 16/unsigned-little-integer).
-define(BYTE, 8/unsigned-little-integer).

unpack_image_resource_directory(Dir) ->
	<<_Characteristics		: ?DWORD,
	  _TimeDateStamp			: ?DWORD,
	  _MajorVersion			: ?WORD,
	  _MinorVersion			: ?WORD,
	  _NumberOfNamedEntries	: ?WORD,
	  _NumberOfIdEntries		: ?WORD, _/binary>> = Dir.
