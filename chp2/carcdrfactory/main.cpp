#include <iostream>
#include <string>

int main(int argc, char* argv[])
{
    if(argc == 2){
        std::string str = argv[1];
        std::cout << str << std::endl;
        for(int i = str.length() - 2; i > 1; i--)
        {
            std::cout << str.replace(i, 1, "") << std::endl;

        }
    }

    return 0;
}
