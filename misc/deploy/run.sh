#!/bin/sh

if [ ! -f /notifico/config/config.py ]; then
    cp /notifico/app/notifico/config.py /notifico/config/config.py
fi

if [ ! -f /notifico/config/database.db ]; then
    python -m notifico init
fi

python -m notifico www --host 0.0.0.0 > /notifico/config/notifico-www.txt 2>&1 &
python -m notifico bots > /notifico/config/notifico-bots.txt 2>&1 &

tail -f /dev/null
