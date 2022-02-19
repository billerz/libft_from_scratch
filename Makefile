# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/19 21:56:34 by ppetchda          #+#    #+#              #
#    Updated: 2022/02/19 22:00:05 by ppetchda         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SRCS = isdigit.c



NAME = libft.a
CC = -Wall -Wextra -Werror


%.o: %.c
	${CC} ${CC_FLAGS} -c $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)


norm:
	norminette *.c

all: $(NAME)

clean:
	rm -f *.c

fclean: clean
	rm -f $(NAME)

re: fclean all



.PHONY: norm all
