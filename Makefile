CC = cc

FLAGS = -Wall -Wextra -Werror

SRC = ./ft_atoi.c ./ft_bzero.c ./ft_calloc.c ./ft_isalnum.c ./ft_isalpha.c ./ft_isascii.c ./ft_isdigit.c ./ft_isprint.c ./ft_memchr.c ./ft_memcmp.c ./ft_memcpy.c ./ft_memmove.c ./ft_memset.c ./ft_strchr.c ./ft_strdup.c ./ft_strlcat.c ./ft_strlcpy.c ./ft_strlen.c ./ft_strncmp.c ./ft_strnstr.c ./ft_strrchr.c ./ft_tolower.c ./ft_toupper.c ./ft_substr.c ./ft_strjoin.c ./ft_strtrim.c ./ft_split.c  ./ft_putchar_fd.c ./ft_putendl_fd.c ./ft_putstr_fd.c ./ft_putnbr_fd.c ./ft_itoa.c ./ft_strmapi.c ./ft_striteri.c

BONUS = ./ft_lstnew_bonus.c ./ft_lstadd_front_bonus.c ./ft_lstsize_bonus.c ./ft_lstlast_bonus.c ./ft_lstadd_back_bonus.c ./ft_lstdelone_bonus.c ./ft_lstclear_bonus.c ./ft_lstiter_bonus.c ./ft_lstmap_bonus.c

NAME = libft.a

AR = ar -rcs
ifdef BONUS_FLAG
	SRC += $(BONUS)
endif
OBJ = $(SRC:.c=.o)
BONUS_OBJ = $(BONUS:.c=.o)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)



all: $(NAME)

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

bonus:
	$(MAKE) BONUS_FLAG=1

clean: 
	rm -rf $(OBJ) $(BONUS:.c=.o)

fclean: clean
	rm -rf $(NAME)

re: fclean all
