CC                  := gcc
CXX                 := g++
 
CFLGAS              = -D DEBUG -Wall -Wextra -O2 -pthread
CXXFLAGS            = $(CFLAGS) -std=c++11
LDFLGAS             = -static -pthread

SRCS				:= main.c test.cpp
OBJS				:= $(SRCS:.c=.o)
OBJS				:= $(OBJS:.cpp=.o)
TARGET				:= main
 
$(TARGET): $(OBJS)
	@echo [Link] $@ FROM: $^
	@$(CXX) -o $@ $^ $(LDFLGAS)
 
.c.o:
	@echo [Compile C] $<
	@$(CC) -o $@ $< -c $(CFLGAS)
 
.cpp.o:
	@echo [Compile C++] $<
	@$(CXX) -o $@ $< -c $(CXXFLAGS)