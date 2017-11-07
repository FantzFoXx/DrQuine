# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: udelorme <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/14 11:43:18 by udelorme          #+#    #+#              #
#    Updated: 2017/07/27 18:43:40 by udelorme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = clang
FLAGS = -Wall -Werror -Wextra
NAME = Colleen
SRC = Colleen.c

OBJ = $(SRC:.c=.o)

SRCDIR = ./
OBJDIR = obj/
INCDIR = includes/
LIBDIR = libft/

LIB = $(LIBDIR)libft.a

SRCS = $(addprefix $(SRCDIR),$(SRC))
OBJS = $(addprefix $(OBJDIR),$(OBJ))

all: $(NAME)

$(NAME): $(LIB) $(OBJS)
	$(CC) $(LIBFLAGS) -o $(NAME) $^

$(OBJDIR)%.o: $(SRCDIR)%.c
	@mkdir $(OBJDIR) 2> /dev/null || true
	$(CC) $(FLAGS) -I $(INCDIR) -I $(LIBDIR)includes -o $@ -c $<

$(LIB):
	make re -C $(LIBDIR)

clean:
	rm -rf $(OBJS)
	@rmdir $(OBJDIR) 2> /dev/null || true

fclean: clean
	rm -rf $(NAME)

re: fclean all

lftclean:
	$(MAKE) -C $(LIBDIR) clean

lftfclean:
	$(MAKE) -C $(LIBDIR) fclean

.PHONY: all clean fclean re
