all: hello

CFLAGS=-Wall -Werror -g

hello: hello.c
	gcc $(CFLAGS) hello.c -o hello

check-format: hello.c
	clang-format --style=llvm --dry-run -Werror hello.c

update:
	git checkout main
	git pull https://github.com/comp530-f24/lab0.git main

clean:
	rm -f hello
