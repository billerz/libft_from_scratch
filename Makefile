# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/19 21:56:34 by ppetchda          #+#    #+#              #
#    Updated: 2022/02/19 22:20:45 by ppetchda         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_isdigit.c

OBJS = $(SRCS:.c=.o)

NAME = libft.a

CC = gcc
CC_FLAGS = -Wall -Wextra -Werror

%.o: %.c
	${CC} ${CC_FLAGS} -c $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

norm:
	norminette *.c

all: $(NAME)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: norm all clean fclean re
