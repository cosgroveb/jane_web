%% @doc jane_control webmachine_resource.

-module(jane_control_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(ReqData, State) ->
  {ok, Content} = index_dtl:render(),
  {Content, ReqData, State}.
