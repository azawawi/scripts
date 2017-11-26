#!/bin/bash
go build -o test.so -buildmode=c-shared test.go
echo "Built test.so"
