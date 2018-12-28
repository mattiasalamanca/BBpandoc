#!/bin/bash
PATH=$PATH:/usr/local/bin

cd "$(dirname "$BB_DOC_PATH")"
pandoc "${BB_DOC_PATH}" -o "${BB_DOC_PATH%%.*}".html -s -f markdown+smart --mathjax --email-obfuscation=references --metadata pagetitle="${BB_DOC_PATH%%.*}"
