#!/bin/bash
make -C ../Libft/ fclean && make -C ../Libft/
clang -Wall -Wextra -Werror -I ../Libft/includes -o get_next_line.o -c get_next_line.c
clang -Wall -Wextra -Werror -I ../Libft/includes -o main.o -c main.c
clang -o test_gnl main.o get_next_line.o -I ../Libft/includes -L ../Libft/ -lft
rm *.o
make -C ../Libft/ fclean
