#!/bin/sh

echo "Downloading dependencies"
gleam deps download

echo "\n[Erlang] Running tests"
gleam test --target erl

echo "\n[Node] Running tests"
gleam test --target js --runtime node

echo "\n[Deno] Running tests"
gleam test --target js --runtime deno

echo "\n[Bun] Running tests"
gleam test --target js --runtime bun
