# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tlucille <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/09 14:32:03 by tlucille          #+#    #+#              #
#    Updated: 2019/11/06 09:07:00 by tchardat         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_strndup.c ft_strlen.c ft_memdel.c ft_strclr.c ft_striteri.c ft_bzero.c ft_memmove.c ft_strcpy.c ft_strjoin.c ft_memalloc.c ft_memset.c ft_strdel.c ft_strmap.c ft_memchr.c ft_putchar.c ft_strdup.c ft_strmapi.c ft_memcmp.c ft_putnbr.c ft_strequ.c ft_strnequ.c ft_memcpy.c ft_putstr.c ft_striter.c ft_strnew.c ft_strsub.c ft_strtrim.c ft_putendl.c ft_stabmaker.c ft_freetab.c ft_wordcounter.c ft_strextract.c ft_strsplit.c ft_putstr_fd.c ft_putchar_fd.c ft_putnbr_fd.c ft_atoi.c ft_putnbrnl.c ft_strncpy.c ft_strstr.c ft_strcat.c ft_strlcat.c ft_memccpy.c ft_strchr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_itoa.c ft_strncat.c ft_strrchr.c ft_putendl_fd.c ft_lstnew.c ft_lstdelone.c ft_lstadd.c ft_lstiter.c ft_lstdel.c ft_lstmap.c ft_join_free.c ft_lstreader.c ft_printtab.c ft_tablen.c ft_abs.c ft_isnextempty.c

INCLUDES = includes/libft.h

OBJ = $(SRC:.c=.o)

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME) : $(OBJ)
	ar rc $(NAME) $(OBJ) 
	ranlib $(NAME)

clean: 
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
