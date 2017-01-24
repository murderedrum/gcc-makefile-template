# gcc-makefile-template
# MIT License Copyright 2017 Ron Cotton
# v17.01.23
# Github: https://github.com/murderedrum/gcc-makefile-termplate
#
# Makefile - for BSD/Linux w/ Bash enviornment

CC = gcc
CFLAGS = -g -Wall -std=c99 -O2
OBJECTS = main.o xxx.o yyy.o zzz.o
NOHFILES = main
TARGET = executable_name

touch $(NOHFILES).h

main : $(OBJECTS)
	if [ -d ./objects ] ; then if [ -e ./objects/*.o ] ; then mv ./objects/*.o ; fi ; else mkdir ./objects ; fi ;
	$(CC) $(CFLAGS) $(OBJECTS) -o  $(TARGET)
	if [ -e $(TARGET).o ] ; then mv *.o ./objects/ ; fi ;
	rm -f $(NOHFILES).h

# makes .o files for each .c file
# note: takes into account the .h files (
%.o : %.c %.h
	$(CC) $(CFLAGS) -c $<

.PHONY : clean
clean :
	$(RM) $(TARGET)
	$(RM) -r ./objects
