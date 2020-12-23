package main

/*
#cgo pkg-config: python-37
#include <Python.h>
*/
import "C"

import "fmt"

var version string
var commit string

func main() {
  if C.Py_IsInitialized() == 0 {
    fmt.Println("Python not initialized")
  }
  fmt.Println("CircleCI: ", version, commit)
}
