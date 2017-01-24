# gcc-makefile-template (NOT WORKING CURRENTLY)
##### Version: 17.01.23

### Made for BSD/Linux bash script environment
A generic gcc makefile which you add to your project folder and make changes to your script variables. :smile: Keeps your directory clean of object files by placing into a separate folder.  Edit the variables on the top of the makefile to your project settings before use!

> Use at your own risk - deletes and moves object files!

**CC** - *modify preferred compiler*

**CFLAGS** - *modify compiler flags*

**OBJECTS** - *add library files & main file used with .o extension.  Note: no file may be named clean.*

**NOHFILES** - *files that don't produce .h files, the program temporarily makes empty files for compilation purposes.  Typically, this would be main.*

**TARGET** - *modify final executable target name*

to execute:
* `make`

to clean
* `make clean`
