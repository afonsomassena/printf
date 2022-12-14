# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afgoncal <massenaafonso1@gmail.com>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/05 11:33:10 by afgoncal          #+#    #+#              #
#    Updated: 2022/12/22 14:51:16 by afgoncal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Werror -Wextra -I .

SRC	=	ft_printf.c \
		ft_extras.c \

OBJ	= $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
		ar rcs $(NAME) $(OBJ)

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all