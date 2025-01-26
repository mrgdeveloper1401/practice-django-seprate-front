#!/bin/sh

vm.overcommit_memory 1

exec "$@"