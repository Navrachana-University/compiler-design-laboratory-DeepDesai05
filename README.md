[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/bPoO8GTw)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=19532268&assignment_repo_type=AssignmentRepo)
Project Title: Gujarati Compiler Design Project

Description:
This project is a simple compiler for a custom programming language using Gujarati keywords. It is implemented using Flex (Lex), Bison (Yacc), and C. The compiler supports basic language constructs like variable declarations, conditional statements, and loops.

Files included:
- lexer.l            : Lexical analyzer written in Flex.
- parser.y           : Syntax parser written in Bison.
- guj_compiler_gui.py: Python GUI to interact with the compiler.
- test.guj           : Sample input program written in the custom Gujarati-based syntax.

Author:
Name: Saniya Gupta  
Roll Number: 22000888
How to Run:
1. Make sure Flex, Bison, and GCC are installed on your system.
2. Open terminal and navigate to the project directory.
3. Run the following commands:

   flex lexer.l  
   bison -d parser.y  
   gcc lex.yy.c parser.tab.c -o compiler

4. Run the executable:
   ./compiler < test.guj

Optional:  
To use the GUI version, run the Python file:
   python guj_compiler_gui.py

Note:
- Ensure all files are in the same directory.
- Python 3 and Tkinter must be installed to run the GUI.


