#!/bin/sh
cd `dirname $0`
exec erl -pa $PWD/apps/cbskeletor/ebin \
     -pa deps/*/ebin \
     -boot start_sasl -config boss -s reloader -s boss \
     -sname cbskeletor
