#define _CRT_SECURE_NO_WARNINGS
//src파일에 pragma warning(disable:4996)입력과 비슷한 효과
#ifndef SOLUTION_H //=solution.h
#define SOLUTION_H

#include "result.h"
#include <fstream>

class Manager
{
  private: 
    //the filepath for the result log
    const char* RESULT_LOG_PATH="log.txt";

    std::ofstream fout;

  public:
    ~Manager();
    void Run(const char* filepath);
    void PrintError(const char* filepath);

  private:
    Result Load(const char* filepath);
};
#endif