CXX = clang
TYPUS = a

ifeq ($(OS),Windows_NT)
	TYPUS = dll
endif
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Darwin)
	TYPUS = dylib
endif

dll: revorb.c revorb.h
	$(CXX) -dynamiclib -std=gnu99 revorb.c -current_version 1.1 -compatibility_version 1.0 -fvisibility=hidden -o librevorb.$(TYPUS) -logg -lvorbis

all: dll
