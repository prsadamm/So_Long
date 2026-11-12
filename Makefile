SRCS = aff_image.c aff_map.c error.c hook.c parsing.c get_next_line.c \
			get_next_line_utils.c so_long.c 
OBJS 		= ${SRCS:.c=.o}

CC 			= clang
CFLAGS		= -Wall -Wextra -Werror
RM			= rm -f
NAME		= so_long
FLAGS		= -Imlx -Lmlx -lmlx -lXext -lX11

all: 		${NAME}

.c.o:
			${CC} ${CFLAGS} -Imlx -c $< -o ${<:.c=.o}

$(NAME): 	$(OBJS)
				make -C "mlx/"
			${CC} $(CFLAGS) -o $(NAME) $(OBJS) $(FLAGS)

clean:
			${RM} ${OBJS}

fclean: 	clean
			${RM} ${NAME}

re: 		fclean all
