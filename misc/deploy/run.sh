#!/bin/sh

python -m notifico www --host 0.0.0.0 > /notifico/config/notifico-www.txt 2>&1 &
python -m notifico bots > /notifico/config/notifico-bots.txt 2>&1 &

tail -f /dev/null
