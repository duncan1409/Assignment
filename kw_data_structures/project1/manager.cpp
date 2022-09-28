#include "manager.h"
#include <cstring>

Manager::~Manager()
{
  if (fout.is_open()){
    fout.close();
  }
}