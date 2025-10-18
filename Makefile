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
SRCS    := lib_functions/ft_isalnum.c \
           lib_functions/ft_isalpha.c \
           lib_functions/ft_isdigit.c \
		   lib_functions/ft_isascii.c \
		   lib_functions/ft_isprint.c \
		   lib_functions/ft_strlen.c \
		   lib_functions/ft_memset.c \
		   lib_functions/ft_bzero.c \
		   lib_functions/ft_memcpy.c \
		   lib_functions/ft_memmove.c \
		   lib_functions/ft_strlcpy.c \
		   lib_functions/strlcat.c \
		   lib_functions/ft_toupper.c \
		   lib_functions/ft_tolower.c \
		   lib_functions/ft_strchr.c \
		   lib_functions/ft_strrchr.c \
		   lib_functions/ft_strncmp.c \
		   lib_functions/ft_memcmp.c \
		   lib_functions/ft_strnstr.c \
		   lib_functions/ft_atoi.c \
		   lib_functions/ft_calloc.c \
		   lib_functions\ft_strdup.c \
		   lib_add_functions\ft_substr.c
		   
OBJS    := $(SRCS:.c=.o)

# Test program
TEST    := test.exe
TEST_SRCS := lib_functions/ft_isalnum.c \
             lib_functions/ft_isalpha.c \
             lib_functions/ft_isdigit.c \
			 lib_functions/ft_isascii.c \
			 lib_functions/ft_isprint.c \
			 lib_functions/ft_strlen.c \
			 lib_functions/ft_memset.c \
			 lib_functions/ft_bzero.c \
			 lib_functions/ft_memcpy.c \
			 lib_functions/ft_memmove.c \
			 lib_functions/ft_strlcpy.c \
			 lib_functions/strlcat.c \
			 lib_functions/ft_toupper.c \
			 lib_functions/ft_tolower.c \
			 lib_functions/ft_strchr.c \
			 lib_functions/ft_strrchr.c \
			 lib_functions/ft_strncmp.c \
			 lib_functions/ft_memchr.c \
			 lib_functions/ft_memcmp.c \
			 lib_functions/ft_strnstr.c \
			 lib_functions/ft_atoi.c \
			 lib_functions/ft_calloc.c \
			 lib_functions\ft_strdup.c \
			 lib_add_functions\ft_substr.c

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
