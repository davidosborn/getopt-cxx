SHELL := /bin/bash

AR := ar

CXX := g++
CPPFLAGS := -iquote .
CXXFLAGS := -std=gnu++1y -pedantic-errors -pipe -Werror -O3 -fomit-frame-pointer -ffast-math -fno-finite-math-only -funsafe-math-optimizations -m64

LIBPREFIX := lib
LIBEXT := .a
OBJEXT := .o

PACKAGE := getopt
VER_MAJOR := 0
VER_MINOR := 0
VER_PATCH := 0
VERSION := $(VER_MAJOR).$(VER_MINOR)

SRCS := $(shell find \( -name '*.cc' -o -name '*.cpp' \) | sed 's/^\.\///')
OBJS := $(SRCS:%.cpp=%$(OBJEXT))
LIBS :=
