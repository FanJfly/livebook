#!/bin/bash
#
# Usage:
#
#     $ sh .github/scripts/app/build_windows.sh
#     $ start _build/app_prod/rel/Livebook.app
#     $ open livebook://github.com/livebook-dev/livebook/blob/main/test/support/notebooks/basic.livemd
#     $ open ./test/support/notebooks/basic.livemd
set -e

MIX_ENV=prod MIX_TARGET=app mix release windows_installer --overwrite
