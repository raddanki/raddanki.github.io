#!/bin/bash

echo "Starting simple HTML development server..."
echo "Site will be available at http://localhost:4000"
echo "Press Ctrl+C to stop the server"
echo ""

python3 -m http.server 4000
