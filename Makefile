all: hello

CFLAGS=-Wall -Werror -g

hello: hello.c
	gcc $(CFLAGS) hello.c -o hello

update:
	git checkout main
	git pull https://github.com/comp530-f24/lab0.git main

clean:
	rm -f hello
