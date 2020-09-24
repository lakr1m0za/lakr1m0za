#!/bin/bash
{ printf 'HTTP/1.0 200 OK\r\nContent-Length: %d\r\n\r\n' "$(wc -c < text.txt)"; cat text.txt; } | nc -l 8080
