#include <iostream>
#include <string>
#include <fstream>
#include <sstream>

int main(int argc, char* argv[])
{
    /* if(argc == 2){ */
    /*     std::string str = argv[1]; */
    /*     std::cout << str << std::endl; */
    /*     for(int i = str.length() - 2; i > 1; i--) */
    /*     { */
    /*         std::cout << str.replace(i, 1, "") << std::endl; */

    /*     } */
    /* } */

    /* std::cout << argv[1] << std::endl; */
    /* std::cout << argv[2] << std::endl; */

    std::cout << "########################################" << std::endl;
    std::cout << "In C++..." << std::endl;
    std::cout << "argv[1]: " << argv[1] << std::endl;
    std::cout << "argv[2]: " << argv[2] << std::endl;
    std::cout << '\n';

    std::string input_str; //retreive code in .lisp then mofify to rewrite to .lisp

    std::string file_name = "./input.lisp";
    std::fstream file(file_name);

    if(!file.is_open())
    {
        std::cout << "File not found" << std::endl;
        return -1;
    }

    std::string command = "clisp ";
    command += file_name; 
    std::string lisp_function = argv[2];
    std::getline(file,input_str); //input_str has lisp code
                                  //
    do{
        //compile the lisp code
        std::system(command.c_str());

        std::cout << "lisp_function before: " << lisp_function << std::endl;
        std::cout << "input_str before: " << input_str << std::endl;

        int index = input_str.find(lisp_function, 0);
        if(index == std::string::npos) break;

        //Example
        //cadr -> car
        /* std::cout << "lisp_function: " << lisp_function << std::endl; */
        lisp_function.replace(lisp_function.length()-2,1,"");

        input_str.replace(index, lisp_function.length()+1, lisp_function);

        //overwrite the file
        /* file << input_str; */
        std::cout << input_str << std::endl;
        std::string overwrite = "echo \""+input_str+"\" > " + file_name;
        system(overwrite.c_str());


        std::cout << "lisp_function after: " << lisp_function << std::endl;
        std::cout << "input_str after: " << input_str << std::endl;
        std::cout << '\n';


    }while(lisp_function == "car" || lisp_function == "cdr");

    std::cout << "Result lisp command?: ";
    std::cout << lisp_function << std::endl;

    file.close();
    return 0;
}
