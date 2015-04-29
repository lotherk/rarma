all:
	gcc -shared -fPIC -I/usr/include/x86_64-linux-gnu/ruby-2.1.0 -I/usr/include/ruby-2.1.0 -lruby-2.1 -lpthread -lgmp -ldl -lcrypt -lm -o rarma-ext.so rarma-ext.c

test:
	ruby test.rb
