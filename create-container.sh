#!/bin/bash
docker run -d -p 8080:8080 -v ~/Documents/docker-workspace/docker-latex/Projects:/home/coder/project --name code-server-latex code-server-latex
