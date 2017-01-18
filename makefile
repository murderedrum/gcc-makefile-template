# gcc-makefile-template
# MIT License Copyright 2017 Ron Cotton
# v17.01.17
# Github: https://github.com/murderedrum/gcc-makefile-termplate
#
# Makefile - for BSD/Linux w/ Bash enviornment

CC = gcc
CFLAGS = -g -Wall -std=c99 -O2
OBJECTS = main.o xxx.o yyy.o zzz.o
TARGET = executable_name

main : $(OBJECTS)
	if [ -d ./objects ] ; then if [ -e ./objects/*.o ] ; then mv ./objects/*.o ; fi ; else mkdir ./objects ; fi ;
	$(CC) $(CFLAGS) $(OBJECTS) -o  $(TARGET)
	if [ -e $(TARGET).o ] ; then mv *.o ./objects/ ; fi ;

# makes .o files for each .c file
%.o : %.c
	$(CC) $(CFLAGS) -c $<

.PHONY : clean
clean :
	$(RM) $(TARGET)
	$(RM) -r ./objects
