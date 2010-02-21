-module(mb_cp874).
-export([encodings/0, codecs_config/0, init/0, decode/1, decode/2, encode/1, encode/2]).

encodings() ->
	[cp874, '874'].

codecs_config() ->
	{mb, mb_codecs_dbcs_cp874, "CP874.CONF", "CP874.BIN"}.

init() ->
	mb_sbcs:init(?MODULE).

encode(Unicode) when is_list(Unicode) ->
    mb_sbcs:encode(?MODULE, Unicode).

encode(Unicode, Options) when is_list(Unicode), is_list(Options) ->
	mb_sbcs:encode(?MODULE, Unicode, Options).

decode(Binary) when is_bitstring(Binary) ->
    mb_sbcs:decode(?MODULE, Binary).

decode(Binary, Options) when is_bitstring(Binary), is_list(Options) ->
	mb_sbcs:decode(?MODULE, Binary, Options).
	