import 'package:flutter/material.dart';
import 'chapterlist.dart';

class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[0]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "C is a procedural programming language. It was initially "
                "developed by Dennis Ritchie in the year 1972. It was mainly developed"
                " as a system programming language to write an operating system."
                " The main features of C language include low-level access to memory,"
                " a simple set of keywords, and clean style, these features make "
                "C language suitable for system programmings like an operating system"
                " or compiler development.",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Syntax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[1]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("1) Basic Sytax in C"),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "C language syntax specify rules for sequence of "
                    "characters to be written in C language. In simple language "
                    "it states how to form statements in a C language program -"
                    " How should the line of code start, how it should end, where "
                    "to use double quotes, where to use curly brackets etc.\n\n"
                    "The rule specify how the character sequence will be grouped "
                    "together, to form tokens. A smallest individual unit in C "
                    "program is known as C Token.Tokens are either keywords, "
                    "identifiers, constants, variables or any symbol which has "
                    "some meaning in C language. A C program can also be called "
                    "as a collection of various tokens.",
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("2) Structure of C"),
              ),
              Card(
                child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset("assets/Images/structureinc.png")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("a) Documentation:- "),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "The documentation section consists of a set of "
                    "comment lines giving the name of the program, the author "
                    "and other details, which the programmer would like to use later.",
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("b) Preprocessor & Defination:- "),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Preprocessor programs provide preprocessors directives "
                    "which tell the compiler to preprocess the source code before "
                    "compiling. All of these preprocessor directives begin with a "
                    "‘#’ (hash) symbol. This (‘#’) symbol at the beginning of a "
                    "statement in a C/C++ program indicates that it is a pre-processor "
                    "directive. We can place these preprocessor directives anywhere in "
                    "our program. Examples of some preprocessor directives are: "
                    "#include, #define, #ifndef etc.\n"
                    "There are 4 main types of preprocessor directives:\n\n"
                    " 1) Macros\n 2) File Inclusion\n 3) Conditional\n 4) Compilation Other directives",
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("c) Entry Point:- "),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Entry piont in C is main funtion, this is the line from where the execution of "
                    "the program starts. The main() function starts the execution of any C program.",
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("d) Variable Declaration:- "),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Variable declaration is refers to the variables that are to be "
                    "used in the function. Please note that in the C program, no "
                    "variable can be used without being declared. Also in a C "
                    "program, the variables are to be declared before any operation "
                    "in the function.",
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("e) Body:- "),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Body of a function in C program, refers to the operations that"
                    " are performed in the functions. It can be anything like "
                    "manipulations, searching, sorting, printing, etc.",
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("e) Retrun Statement:- "),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "The last part in any C program is the return statement. The "
                    "return statement refers to the returning of the values "
                    "from a function. This return statement and return value depend "
                    "upon the return type of the function. For example, if the return "
                    "type is void, then there will be no return statement. In any other "
                    "case, there will be a return statement and the return value will be "
                    "of the type of the specified return type.",
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Variables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[2]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Vaiables in C:- "),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "A variable in simple terms is a storage place which has some "
                    "memory allocated to it. Basically, a variable used to store "
                    "some form of data. Different types of variables require different "
                    "amounts of memory, and have some specific set of operations which can "
                    "be applied on them."
                    "Variable Declaration:\n"
                    "A typical variable declaration is of the form:\n"
                    "type variable_name;\n"
                    "     or for multiple variables:\n"
                    "type variable1_name, variable2_name, variable3_name;\n\n"
                    "A variable name can consist of alphabets (both upper and lower case), "
                    "numbers and the underscore ‘_’ character. However, the name must not start with a number.",
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Keywords in C:- "),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Keywords are specific reserved words in C each of which has"
                        " a specific feature associated with it. Almost all of the "
                        "words which help us use the functionality of the C language"
                        " are included in the list of keywords. So you can imagine that "
                        "the list of keywords is not going to be a small one!\n\n",
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "There are a total of 32 keywords in C:",
                        style: Theme.of(context).textTheme.headline2,
                        textAlign: TextAlign.start,
                      ),
                      Table(
                        border: TableBorder.all(
                            color: Colors
                                .black), //Border.all(color: Colors.black,width: 1.00),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(children: [
                            Text(
                              "auto",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "break",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "case",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "char",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "const",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "continue",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          TableRow(children: [
                            Text(
                              "default",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "do",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "double",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "else",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "enum",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "extern",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          TableRow(children: [
                            Text(
                              "float",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "for",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "goto",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "if",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "int",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "long",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          TableRow(children: [
                            Text(
                              "register",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "return",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "short",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "signed",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "sizeof",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "static",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          TableRow(children: [
                            Text(
                              "struct",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "switch",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "typedef",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "union",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "unsigned",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "void",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          TableRow(children: [
                            Text(
                              "volatile",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "while",
                              style: Theme.of(context).textTheme.headline2,
                              textAlign: TextAlign.center,
                            ),
                            Text(""),
                            Text(""),
                            Text(""),
                            Text(""),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Ifelsestatement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[3]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "The if statement alone tells us that if a condition is"
                      " true it will execute a block of statements and if the condition "
                      "is false it won’t. But what if we want to do something else if the "
                      "condition is false. Here comes the C/C++ else statement. We can use the else "
                      "statement with if statement to execute a block of code when the condition is false.\n"
                      '''
Syntax:

if (condition)
{
  // Executes this block if
  // condition is true
}
else
{
  // Executes this block if
  // condition is false
}
Working of if-else statements
1) Control falls into the if block.
2) The flow jumps to Condition.
3) Condition is tested.
      If Condition yields true, goto Step 4.
      If Condition yields false, goto Step 5.
4) The if-block or the body inside the if is executed.
5) The else block or the body inside the else is executed.
Flow exits the if-else block.''',
                      style: Theme.of(context).textTheme.headline2,
                      textAlign: TextAlign.start,
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

class switchcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[4]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "witch case statements are a substitute for long if statements that compare a variable to several integral values"
                "The switch statement is a multiway branch statement. It provides an easy way to dispatch execution to different parts of code based on the value of the expression."
                "Switch is a control statement that allows a value to change control of execution.\n"
                '''
Syntax:
switch (n)
{
  case 1: // code to be executed if n = 1;
  break;
  case 2: // code to be executed if n = 2;
  break;
  default: // code to be executed if n doesn't match any cases
}''',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Whiledowhileloop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[5]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text("While Loop :-"),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "A while loop is a control flow statement that allows "
                    "code to be executed repeatedly based on a given Boolean condition. "
                    "The while loop can be thought of as a repeating if statement.\n"
                    '''
Syntax :
while (boolean condition)
{
    //loop statements...
}
                    ''',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Text("Do While Loop :-"),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "do while loop is similar to while loop with the only"
                    " difference that it checks for the condition after executing "
                    "the statements, and therefore is an example of Exit Control Loop.\n"
                    '''
Syntax:
do
{
  statements..
}
while (condition);
                      ''',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    border: TableBorder.all(
                        color: Colors
                            .black), //Border.all(color: Colors.black,width: 1.00),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(children: [
                        Text(
                          "while",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "Do-while",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                      ]),
                      TableRow(children: [
                        Text(
                          "Condition is checked first then statement(s) is executed.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "Statement(s) is executed atleast once, thereafter condition is checked.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                      ]),
                      TableRow(children: [
                        Text(
                          "It might occur statement(s) is executed zero times, If condition is false.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "At least once the statement(s) is executed.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                      ]),
                      TableRow(children: [
                        Text(
                          "No semicolon at the end of while.\nwhile(condition)",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "Semicolon at the end of while. \nwhile(condition);",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                      ]),
                      TableRow(children: [
                        Text(
                          "If there is a single statement, brackets are not required.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "Brackets are always required.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                      ]),
                      TableRow(children: [
                        Text(
                          "If there is a single statement, brackets are not required.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "Brackets are always required.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                      ]),
                      TableRow(children: [
                        Text(
                          "Variable in condition is initialized before the execution of loop.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "variable may be initialized before or within the loop.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                      ]),
                      TableRow(children: [
                        Text(
                          "while loop is entry controlled loop.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "do-while loop is exit controlled loop.",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                      ]),
                      TableRow(children: [
                        Text(
                          "while(condition)\n{ statement(s); }",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          "do { statement(s); }\nwhile(condition);",
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.start,
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class forloop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[6]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "A for loop is a repetition control structure which allows us "
                "to write a loop that is executed a specific number of times. "
                "The loop enables us to perform n number of steps together in one line.\n"
                '''
Syntax:
for (initialization expr; test expr; update expr)
{
  // body of the loop
  // statements we want to execute
}
                    '''
                "In for loop, a loop variable is used to control the loop. First "
                "initialize this loop variable to some value, then check whether this "
                "variable is less than or greater than counter value. If statement is true,"
                " then loop body is executed and loop variable gets updated . Steps are repeated "
                "till exit condition comes. \n\n Initialization Expression: In this expression we "
                "have to initialize the loop counter to some value.\n "
                "for example: int i=1;\n Test Expression: In this expression we have to test the condition. "
                "If the condition evaluates to true then we will execute the body of loop and go to update"
                " expression otherwise we will exit from the for loop. For example: i <= 10;\n"
                " Update Expression: After executing loop body this expression increments/decrements "
                "the loop variable by some value. for example: i++;",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Array extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[7]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "An array in C or C++ is a collection of items stored at contiguous "
                "memory locations and elements can be accessed randomly using indices "
                "of an array. They are used to store similar type of elements as in the"
                " data type must be the same for all elements. They can be used to store"
                " collection of primitive data types such as int, float, double, char, etc"
                " of any particular type. To add to it, an array in C or C++ can store derived"
                " data types such as the structures, pointers etc\n"
                ''' 
There are various ways in which we can declare an array. It can be done by specifying its type and size, by initializing it or both.

Array declaration by specifying size 
   int arr1[10];
// With recent C/C++ versions, we can also 
// declare an array of user specified size 
   int n = 10;
   int arr2[n];
   
 Array declaration by initializing elements 
   int arr[] = { 10, 20, 30, 40 }
// Compiler creates an array of size 4. 
// above is same as  \"int arr[4] = {10, 20, 30, 40}\" 
             
Array declaration by specifying size and initializing elements 
    int arr[6] = { 10, 20, 30, 40 }
// Compiler creates an array of size 6, initializes first 
// 4 elements as specified by user and rest two elements as 0. 
// above is same as  \"int arr[] = {10, 20, 30, 40, 0, 0}\"
              ''',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Pointers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[8]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "A pointer is a variable whose value is the address of another"
                " variable, i.e., direct address of the memory location. Like "
                "any variable or constant, you must declare a pointer before using"
                " it to store any variable address. The general form of a pointer variable declaration is \n"
                "type *var-name;\nHere, type is the pointer's base type; it must be a valid C data type and "
                "var-name is the name of the pointer variable. The asterisk * used to declare a pointer is "
                "the same asterisk used for multiplication. However, in this statement the asterisk is being"
                " used to designate a variable as a pointer. Take a look at some of the valid pointer declarations −\n"
                '''
int    *ip;    /* pointer to an integer */
double *dp;    /* pointer to a double */
float  *fp;    /* pointer to a float */
char   *ch     /* pointer to a character */",
                  ''',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Strings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[9]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Strings are defined as an array of characters. The difference "
                "between a character array and a string is the string is terminated with a "
                "special character ‘\\0’."
                "Declaration of strings: Declaring a string is as simple as declaring a one"
                " dimensional array. Below is the basic syntax for declaring a string."
                "char str_name[size];\n In the above syntax str_name is any name given to "
                "the string variable and size is used define the length of the string, i.e"
                " the number of characters strings will store. Please keep in mind that there"
                " is an extra terminating character which is the Null character (‘\\0’) used to "
                "indicate termination of string which differs strings from normal character arrays."
                "Initializing a String: A string can be initialized in different ways. We will "
                "explain this with the help of an example. Below is an example to declare a string "
                "with name as str and initialize it with “GeeksforGeeks”.\n"
                ''' 
1. char str[] = "LearingC";
2. char str[50] = "LearingC";
3. char str[] = {'L','e','a','r','i','n','g','C','\\0'};
4. char str[8] = {'L','e','a','r','i','n','g','C','\\0'};
''',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class functions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[10]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "A function is a block of code that performs a particular task."
                "There are many situations where we might need to write same line of code "
                "for more than once in a program. This may lead to unnecessary repetition of"
                " code, bugs and even becomes boring for the programmer. So, C language provides"
                " an approach in which you can declare and define a group of statements once in "
                "the form of a function and it can be called and used whenever required."
                "These functions defined by the user are also know as User-defined Functions\n"
                "C functions can be classified into two categories,\n"
                " 1) Library functions\n 2) User-defined functions"
                "Library functions are those functions which are already defined in C library, "
                "example printf(), scanf(), strcat() etc. You just need to include appropriate "
                "header files to use these functions. These are already declared and defined in C libraries.\n"
                "A User-defined functions on the other hand, are those functions which are defined by the user"
                " at the time of writing program. These functions are made for code reusability and for saving time and space\n"
                '''
Syntax of a function
  return_type function_name (argument list)
  {
        Set of statements – Block of code
  }
                  
                  '''
                "return_type: Return type can be of any data type such as int, double, char, void, short etc. "
                "Don’t worry you will understand these terms better once you go through the examples below.\n"
                "function_name: It can be anything, however it is advised to have a meaningful name for the "
                "functions so that it would be easy to understand the purpose of function just by seeing it’s name.\n"
                "argument list: Argument list contains variables names along with their data types. These arguments are"
                " kind of inputs for the function. For example – A function which is used to add two integer variables, "
                "will be having two integer argument.\n"
                "Block of code: Set of C statements, which will be executed whenever a call will be made to the function.\n",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Structure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[11]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Structure is a user-defined datatype in C language which allows "
                "us to combine data of different types together. Structure helps to construct"
                " a complex data type which is more meaningful. It is somewhat similar to an"
                " Array, but an array holds data of similar type only. But structure on the "
                "other hand, can store data of any type, which is practical more useful.\n"
                "Defining a structure struct keyword is used to define a structure. struct defines a "
                "new data type which is a collection of primary and derived datatypes.\n"
                '''
Syntax:
struct [structure_tag]
{
    //member variable 1
    //member variable 2
    //member variable 3
...
}[structure_variables];
                  '''
                "As you can see in the syntax above, we start with the struct keyword, then "
                "it's optional to provide your structure a name, we suggest you to give it a "
                "name, then inside the curly braces, we have to mention all the member variables, "
                "which are nothing but normal C language variables of different types like int, float, array etc.",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Union extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[12]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Union is a data type in C programming that allows different data"
                " types to be stored in the same memory locations. Union provides an"
                " efficient way of reusing the memory location, as only one of its "
                "members can be accessed at a time. A union is used almost in the same way "
                "you would declare and use a structure. Let's see this as an example.\n\n"
                '''  
Here's how it works with syntax.
union Record{
  int i;
  float f;
  char str[10];
} record; 
                  '''
                "In this example, we initialized a union named Record which had three data members. "
                "A reference to this union is created, which is called as record."
                "In the earlier declared union, the memory occupied by the union will be the memory "
                "required for the largest member of the union. In this case the union will occupy "
                "10 bytes of memory space, as the character string occupies the maximum space. The "
                "following shows the total memory size. If you print sizeof(record), this will give "
                "you the size of the union, which in this case will be 10.",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Enum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[13]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Enumeration is a user defined datatype in C language. It is "
                "used to assign names to the integral constants which makes a program "
                "easy to read and maintain. The keyword “enum” is used to declare an enumeration."
                "Here is the syntax of enum in C language,\n"
                "enum enum_name{const1, const2,  ....... };"
                "The enum keyword is also used to define the variables of enum type. There "
                "are two ways to define the variables of enum type as follows.\n"
                '''\n 
enum week{sunday, monday, tuesday, wednesday, thursday, friday, saturday};
    enum week day;'''
                "Here is an example of enum in C language",
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FileHandling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(TutorialChapter[14]),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "In programming, we may require some specific input data to be "
                "generated several numbers of times. Sometimes, it is not enough "
                "to only display the data on the console. The data to be displayed may"
                " be very large, and only a limited amount of data can be displayed on "
                "the console, and since the memory is volatile, it is impossible to recover "
                "the programmatically generated data again and again. However, if we need "
                "to do so, we may store it onto the local file system which is volatile and "
                "can be accessed every time. Here, comes the need of file handling in C.\n"
                "File handling in C enables us to create, update, read, and delete the files"
                " stored on the local file system through our C program. The following operations"
                " can be performed on a file.\n\n"
                '''
Creation of the new file
Opening an existing file
Reading from the file
Writing to the file
Deleting the file\n
                  '''
                "Functions for file handling \n There are many functions in the "
                "C library to open, read, write, search and close the file. A list"
                " of file functions are given below:"
                '''
No.	Function	Description
  1	fopen()	    opens new or existing file
  2	fprintf()	  write data into the file
  3	fscanf()	  reads data from the file
  4	fputc()	    writes a character into the file
  5	fgetc()	    reads a character from file
  6	fclose()	  closes the file
  7	fseek()	    sets the file pointer to given position
  8	fputw()	    writes an integer to file
  9	fgetw()	    reads an integer from file
  10 ftell()	  returns current position
  11 rewind()	  sets the file pointer to the beginning of the file\n
                  '''
                "Opening File: fopen() \nWe must open a file before it can be read, write, or update."
                " The fopen() function is used to open a file. The syntax of the fopen() is given below."
                "FILE *fopen( const char * filename, const char * mode );The fopen() function accepts two parameters:"
                "The file name (string). If the file is stored at some specific location, then we must mention the path at which the file is stored. For example, a file name can be like \"c://some_folder/some_file.ext\"."
                "The mode in which the file is to be opened. It is a string.\n We can use one of the following modes in the fopen() function.\n\n"
                '''
Mode	Description
r	  opens a text file in read mode
w	  opens a text file in write mode
a	  opens a text file in append mode
r+	opens a text file in read and write mode
w+	opens a text file in read and write mode
a+	opens a text file in read and write mode
rb	opens a binary file in read mode
wb	opens a binary file in write mode
ab	opens a binary file in append mode
rb+	opens a binary file in read and write mode
wb+	opens a binary file in read and write mode
ab+	opens a binary file in read and write mode
                  ''',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.start,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
