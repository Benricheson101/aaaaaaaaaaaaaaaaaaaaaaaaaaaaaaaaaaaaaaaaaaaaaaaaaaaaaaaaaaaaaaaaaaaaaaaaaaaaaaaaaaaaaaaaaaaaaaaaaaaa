#!/usr/bin/env escript
main(_) ->
    aaa().

aaa() ->
    io:format("a"),
    aaa().
