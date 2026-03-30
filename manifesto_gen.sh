#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph
echo "--- My Open Source Manifesto ---" > $OUTPUT
echo "Created on: $DATE" >> $OUTPUT
echo "In a world of closed systems, I choose $TOOL because it represents $FREEDOM." >> $OUTPUT
echo "I believe in the power of sharing, which is why I would build $BUILD for the community." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
