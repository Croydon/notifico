#!/bin/sh

python -m notifico www --host 0.0.0.0 & > /notifico/config/notifico-www.txt
python -m notifico bots & > /notifico/config/notifico-bots.txt

tail -f /dev/null
