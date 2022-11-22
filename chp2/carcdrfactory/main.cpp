#include <iostream>
#include <string>
#include <fstream>
#include <sstream>

int main(int argc, char* argv[])
{
    std::cout << "########################################" << std::endl;
    std::cout << "In C++..." << std::endl;
    std::cout << "argv[1]: " << argv[1] << std::endl;
    std::cout << "argv[2]: " << argv[2] << std::endl;
    std::cout << '\n';

    std::string input_str; //retreive code in .lisp then mofify to rewrite to .lisp
    std::string lisp_function;
    std::string file_name = "./input.lisp";

    std::fstream file(file_name);

    if(!file.is_open())
    {
        std::cout << "File not found" << std::endl;
        return -1;
    }

    //Assign the variables to the passing arguments
    lisp_function = argv[2];
    input_str = argv[1];

    std::string command = "clisp " + file_name;

    //write to the file
    file << input_str;

    do{

        std::cout << "Result: " << std::endl;
        //compile the lisp code
        std::system(command.c_str());
        std::cout << "lisp_function: " << lisp_function << std::endl;
        std::cout << "input_str: " << input_str << std::endl;
        std::cout << '\n';


        int index = input_str.find(lisp_function, 0);
        if(index == std::string::npos) break;

        //Example
        //cadr -> car
        lisp_function.replace(lisp_function.length()-2,1,"");

        input_str.replace(index, lisp_function.length()+1, lisp_function);

        std::ofstream overwriteFile(file_name, std::fstream::out | std::fstream::trunc);
        //overwrite the file
        overwriteFile << input_str;
        overwriteFile.close();

        /* std::cout << '\n'; */
        /* std::cout << "********************************" << std::endl; */
        /* std::cout << "AFTER lisp_function : " << lisp_function << std::endl; */
        /* std::cout << "AFTER input_str AFTER: " << input_str << std::endl; */
        /* std::cout << "********************************" << std::endl; */
        /* std::cout << '\n'; */

        std::cout << '\n';

    }while(lisp_function != "cr");

    std::cout << "Result lisp command?: ";
    std::cout << lisp_function << std::endl;

    file.close();
    return 0;
}
