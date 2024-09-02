#!/bin/bash
string="Hello, World!"
position=7
char_at_position=${string:$position:1}
echo "Character at position $position: $char_at_position"

