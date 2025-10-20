# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sarfreit <sarfreit@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/08/31 03:56:38 by sarfreit          #+#    #+#              #
#    Updated: 2025/08/31 03:56:38 by sarfreit         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Compiler + flags
CC      := gcc
CFLAGS  := -Wall -Wextra -Werror -I .

# Detectar o sistema operativo
ifeq ($(OS),Windows_NT)
    SEP = \\
else
    SEP = /
endif

# Library settings
NAME    := libft.a
SRCS    := ft_isalnum.c \
           ft_isalpha.c \
           ft_isdigit.c \
		   ft_isascii.c \
		   ft_isprint.c \
		   ft_strlen.c \
		   ft_memset.c \
		   ft_bzero.c \
		   ft_memcpy.c \
		   ft_memmove.c \
		   ft_strlcpy.c \
		   ft_strlcat.c \
		   ft_toupper.c \
		   ft_tolower.c \
		   ft_strchr.c \
		   ft_strrchr.c \
		   ft_strncmp.c \
		   ft_memcmp.c \
		   ft_strnstr.c \
		   ft_atoi.c \
		   ft_calloc.c \
		   ft_strdup.c \
		   ft_substr.c \
		   ft_strjoin.c \
		   ft_strtrim.c \
		   ft_putchar_fd.c \
		   ft_putendl_fd.c \
		   ft_putstr_fd.c
		   
OBJS    := $(SRCS:.c=.o)

# Test program
TEST    := test.exe
TEST_SRCS := ft_putstr_fd.c

# Default target -> build library
all: $(NAME)

# Build the library
$(NAME): $(OBJS)
	ar rcs $@ $^

# Build the test executable (links directly with .c files, or with libft.a if you prefer)
$(TEST): $(TEST_SRCS) $(NAME)
	$(CC) $(CFLAGS) $(TEST_SRCS) -L . -lft -o $@

# Run the test executable
run: $(TEST)
	./$(TEST)

# Cleaning rules
clean:
	rm -f $(OBJS) $(TEST)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re run
