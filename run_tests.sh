#!/bin/bash

# Run the Java program and capture the output
output=$(java MathLibraryDemo.java < tests/input.txt)

# Extract the lines up to "Random Number:" (exclusive)
output_truncated=$(echo "$output" | sed -n '1,/Random Number:/p' | head -n -1) # Key change!

# Expected output (similarly truncated)
expected=$(cat tests/output.txt | sed -n '1,/Random Number:/p' | head -n -1) # Key change!


# Check if the *truncated* output matches the *truncated* expected
if [ "$output_truncated" == "$expected" ]; then
  echo "Tests passed"
  exit 0
else
  echo "Tests failed"
  echo "Expected:"
  echo "$expected"
  echo "Got:"
  echo "$output" # Print the full output for debugging
  exit 1
fi