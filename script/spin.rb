#!/bin/sh

http://clavat.railsplayground.net/realty/script/process/spawner \
  mongrel \
  --environment=production \
  --instances=1 \
  --address=127.0.0.1 \
  --port=8000