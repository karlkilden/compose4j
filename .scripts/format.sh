#!/bin/bash

echo "Formatting code..."
mvn -T 1C spotless:apply -pl "."