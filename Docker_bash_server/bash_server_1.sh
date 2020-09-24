#!/bin/bash
{ printf 'HTTP/1.0 200 OK\r\nContent-Length: %d\r\n\r\n' "15"; echo "Test_web_server"; } | nc -l 8080
