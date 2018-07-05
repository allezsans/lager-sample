%%%-------------------------------------------------------------------
%% @doc ls public API
%% @end
%%%-------------------------------------------------------------------

-module(ls_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    Str = "だめだー",
    lager:warning("エラー: ~tp", [Str]),
    ls_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
