# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: spalmaro <spalmaro@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/04 14:17:48 by spalmaro          #+#    #+#              #
#    Updated: 2016/11/07 19:06:18 by spalmaro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

C_FILES = $(shell find . -type f -print | grep "\.c")

OBJ_NAME = $(C_FILES:.c=.o)

HEADER_FLAG = -I libft.h

CC = gcc

CFLAGS = -Wall -Wextra -Werror

.PHONY : all clean fclean re

all: $(NAME)

$(NAME):
	$(CC) -c $(CFLAGS) $(C_FILES) $(HEADER_FLAG)
	ar rc $(NAME) $(OBJ_NAME)
	ranlib $(NAME)

clean:
	rm -fv $(OBJ_NAME)

fclean: clean
	rm -fv $(NAME)

re: fclean all
