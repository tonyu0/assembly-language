build:
	docker build . -t assembly-language

run:
	docker run --rm -v ${CURDIR}/src:/src -w /src assembly-language sh -c "nasm -f elf64 hello.asm && ld hello.o"
	docker run --rm -v ${CURDIR}/src:/src -w /src assembly-language sh -c "./a.out"