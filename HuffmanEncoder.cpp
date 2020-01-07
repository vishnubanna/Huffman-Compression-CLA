#include "linkedlist.h"
#include "decoder.h"
#include "encoder.h"
#include <bitset>
#include <stdio.h>
#include <iostream>
#include <cstdlib>

using namespace std;

int main(int argc, char const **argv) {
  namespace fs = __fs::filesystem;
  cout << "\nENCODE ::\n";
  if(argc != 2){return EXIT_FAILURE;}

  write(argv[1], "byte");
  read("byte");
  return EXIT_SUCCESS;
}
