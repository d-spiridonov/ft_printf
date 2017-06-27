# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dspyrydo <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/06/15 20:13:38 by dspyrydo          #+#    #+#              #
#    Updated: 2017/06/19 15:11:09 by dspyrydo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FLAGS = -Wextra -Wall -Werror
INCLUDES = -I . -I ./libft
OBJECTS = 							    \
			pf_ft_printf.o 				\
			pf_flags_1.o 				\
			pf_ft_itoa_base.o 			\
			pf_flags_2.o 				\
			pf_functions_2.o 			\
			pf_functions_1.o 			\
			pf_modifiers.o 				\
			pf_types_1.o 				\
			pf_types_2.o 				\
			pf_functions_3.o 			\
			pf_functions_4.o 			\
			pf_functions_5.o            \
			pf_functions_p.o 			\
			pf_ft_putchar_pf.o          \
			pf_ft_putstr_pf.o           \
			pf_wchar_functions.o        \
										\
			./libft/ft_putnbr.o 		\
			./libft/ft_countdigits.o 	\
			./libft/ft_strchr.o 		\
			./libft/ft_isalpha.o		\
			./libft/ft_isdigit.o		\
			./libft/ft_strlen.o			\
			./libft/ft_isalnum.o 		\
			./libft/ft_strdup.o         \
			./libft/ft_strcpy.o         \
			./libft/ft_strnew.o         \
			./libft/ft_bzero.o          \
			./libft/ft_strdel.o         \
			./libft/ft_strcmp.o         \

all : $(NAME)
$(NAME) : $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)
%.o : %.c
	gcc $(FLAGS) -o $@ -c $< $(INCLUDES)
clean :
	rm -f $(OBJECTS)
	rm -f *.c~
fclean : clean
	rm -f $(NAME)
re : fclean all
