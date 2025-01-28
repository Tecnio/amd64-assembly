ASM_FILES := $(wildcard *.asm)
OBJ_FILES := $(patsubst %.asm, build/%.o, $(ASM_FILES))

build: $(OBJ_FILES)
	ld -o build/program $(OBJ_FILES)

build/%.o: %.asm
	mkdir -p build
	nasm -f elf64 -o $@ $<

run: build
	./build/program

clean:
	rm -rf build/
