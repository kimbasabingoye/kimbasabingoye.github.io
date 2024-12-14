#! /bin/bash
set -e

bundle exec jekyll build

bundle exec jekyll  serve
