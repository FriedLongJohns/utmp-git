#!/usr/bin/env sh
exec "${PYTHON:-python3}" -bb -Werror -Xdev "$(dirname $0)/yt_dlp/__main__.py" "$@"
