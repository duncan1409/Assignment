#include <iostream>
#include <cstring>
#include <fstream>
#define MAX_COUNT 100

using namespace std;

int main(int argc, char **argv)
{

    string csvfiles;
    string str_buf;
    fstream fs;

    fs.open("./filesnumbers.csv", ios::in);

    while (!fs.eof())
    {
        getline(fs, str_buf, '\n');
        cout << str_buf << endl;
    }
    fs.close();

    cout << csvfiles << endl;


    return 0;
}