#!/bin/sh

vm.overcommit_memory 1 && redis-server

exec "$@"