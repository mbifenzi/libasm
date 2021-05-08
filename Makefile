NAME = libasm.a

FLAGS = -fmacho64 

SRC = ft_read.s\
	   ft_write.s\
	   ft_strcmp.s\
	   ft_strdup.s\
	   ft_strlen.s\
	   ft_strcpy.s

OBG = $(SRC:.s=.o)

all : $(NAME)

$(NAME) :
	@nasm $(FLAGS) ft_read.s
	@nasm $(FLAGS) ft_write.s
	@nasm $(FLAGS) ft_strcmp.s
	@nasm $(FLAGS) ft_strdup.s
	@nasm $(FLAGS) ft_strlen.s
	@nasm $(FLAGS) ft_strcpy.s
	@ar -rc $(NAME) $(OBG)
	@ranlib $(NAME)

clean :
	rm -rf  $(OBG)

fclean : clean
	rm -rf $(NAME)

re : fclean all