#!/bin/sh

python -m notifico www --host 0.0.0.0 & > /notifico/notifico-www.txt
python -m notifico bots & > /notifico/notifico-bots.txt
