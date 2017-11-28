# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: udelorme <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/14 11:43:18 by udelorme          #+#    #+#              #
#    Updated: 2017/11/28 18:03:43 by udelorme         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = clang
FLAGS = -Wall -Werror -Wextra
COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
SRC_COL = Colleen.c
SRC_GRA = Grace.c
SRC_SUL = Sully.c

OBJ = $(SRC_COL:.c=.o)$(SRC_GRA:.c=.o)$(SRC_SUL:.c=.o)

SRCDIR = ./
OBJDIR = obj/
INCDIR = includes/
LIBDIR = libft/

#LIB = $(LIBDIR)libft.a

#SRCS = $(addprefix $(SRCDIR),$(SRC))
#OBJS = $(addprefix $(OBJDIR),$(OBJ))

all: $(NAME)

$(NAME): $(LIB) $(OBJS)
	$(CC) $(LIBFLAGS) -o $(NAME) $^

$(COLLEEN):
	$(CC) $(LIBFLAGS) -c Colleen.c
	$(CC) $(LIBFLAGS) Colleen.o -o Colleen

$(GRACE):
	$(CC) $(LIBFLAGS) -c Grace.c
	$(CC) $(LIBFLAGS) Grace.o -o Grace

$(SULLY):
	$(CC) $(LIBFLAGS) -c Sully.c
	$(CC) $(LIBFLAGS) Sully.o -o Sully

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
