#!/bin/bash
unicorn_rails -c config/unicorn_production.rb -p 5001 -E production -D
