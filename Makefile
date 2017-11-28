# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: udelorme <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/01/14 11:43:18 by udelorme          #+#    #+#              #
#    Updated: 2017/11/28 18:13:35 by udelorme         ###   ########.fr        #
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

OBJ = $(SRC_COL:.c=.o) $(SRC_GRA:.c=.o) $(SRC_SUL:.c=.o)

SRCDIR = ./
OBJDIR = obj/
INCDIR = includes/
LIBDIR = libft/

#LIB = $(LIBDIR)libft.a

#SRCS = $(addprefix $(SRCDIR),$(SRC))
#OBJS = $(addprefix $(OBJDIR),$(OBJ))

all: $(COLLEEN) $(GRACE) $(SULLY)

#$(NAME): $(LIB) $(OBJS)
#	$(CC) $(LIBFLAGS) -o $(NAME) $^

$(COLLEEN):
	$(CC) $(FLAGS) -c Colleen.c
	$(CC) $(FLAGS) Colleen.o -o Colleen

$(GRACE):
	$(CC) $(FLAGS) -c Grace.c
	$(CC) $(FLAGS) Grace.o -o Grace

$(SULLY):
	$(CC) $(FLAGS) -c Sully.c
	$(CC) $(FLAGS) Sully.o -o Sully

%.o: %.c
	#@mkdir $(OBJDIR) 2> /dev/null || true
	$(CC) $(FLAGS) -o $@ -c $<

$(LIB):
	make re -C $(LIBDIR)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: all clean fclean re
