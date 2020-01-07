WARNING = -Wall -Wshadow --pedantic
ERROR = -Wvla -Werror
GCC = g++ -g --std=c++17 $(WARNING) $(ERROR)

TESTFLAGS = #-DENCODE -DWRITEBYTE -DBITOUT -DREADBYTE

SRCS = HuffmanEncoder.cpp #HuffmanDecoder.cpp
OBJS = $(SRCS:*.cpp=*.o)

main: $(OBJS)
	$(GCC) $(TESTFLAGS) $(OBJS) -o huffman

.c.o:
	$(GCC) $(TESTFLAGS) -c $*.

testall: test1 test2 test3 test4 test5 test6

test1:
	./huffman inputs/2
	#xxd -b byte

test2:
	./huffman inputs/2016
	#xxd -b byte

test3:
	./huffman inputs/2017
	#xxd -b byte

test4:
	./huffman inputs/2018
	#xxd -b byte

test5:
	./huffman inputs/2019
	#xxd -b byte

test6:
	#edge case that needs to be fixed, all the same character
	./huffman inputs/test
	#xxd -b byte

clean:
	rm -f huffman *.o output?? *.txt
	rm -R *.dSYM


#g++ -g --std=c++11 -Wvla -Werror -Wall -Wshadow --pedantic -DENCODE HuffmanEncoder.cpp -o huffman
