%% @doc Callbacks for the jane_web application.

-module(jane_web_app).

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for jane_web.
start(_Type, _StartArgs) ->
    application:start(mochiweb),
    application:start(webmachine),
    jane_web_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for jane_web.
stop(_State) ->
    application:stop(mochiweb),
    application:stop(webmachine),
    ok.
