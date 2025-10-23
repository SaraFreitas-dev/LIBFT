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
		   ft_putstr_fd.c \
		   ft_split.c \
		   ft_itoa.c \
		   ft_strmapi.c \
		   ft_striteri.c \
		   ft_putnbr_fd.c

OBJS    := $(SRCS:.c=.o)

# Default target -> build library
all: $(NAME)

# Build the library
$(NAME): $(OBJS)
	ar rcs $@ $^

# Bonus files
BONUS_SRCS := ft_lstnew_bonus.c \
			  ft_lstadd_front_bonus.c \
			  ft_lstsize_bonus.c \
			  ft_lstlast_bonus.c \
			  ft_lstadd_back_bonus.c \
			  ft_lstdelone_bonus.c

BONUS_OBJS := $(BONUS_SRCS:.c=.o)

bonus: $(BONUS_OBJS)
	ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

# Test program
TEST    := test.exe
TEST_SRCS := ft_lstdelone_bonus.c

# Build the test executable (links directly with .c files, or with libft.a)
$(TEST): $(TEST_SRCS) $(NAME)
	$(CC) $(CFLAGS) $(TEST_SRCS) -L . -lft -o $@

# Run the test executable
run: $(TEST)
	./$(TEST)

# Cleaning rules
clean:
	rm -f $(OBJS) $(BONUS_OBJS) $(TEST)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re run bonus
