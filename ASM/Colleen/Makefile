PHONY		=	all clean fclean re

CC			=	clang
NAME		=	Dr_Quine

# -------------------------------------#
# 		EXEC  					 	   #
# -------------------------------------#
COLLEEN 	=	Colleen

# -------------------------------------#
# 		PATH   					 	   #
# -------------------------------------#
OBJ_PATH	=	./build/

# -------------------------------------#
# 		SRC   					 	   #
# -------------------------------------#
SRC			=	Colleen.s

# -------------------------------------#
# 		VARS  					 	   #
# -------------------------------------#
OBJ_NAME	=	$(SRC:.s=.o)
OBJ			=	$(addprefix $(OBJ_PATH), $(OBJ_NAME))

# -------------------------------------#
# 		FLAG   					 	   #
# -------------------------------------#
CC_FLAGS	=	-Wall -Werror -Wextra -no-pie
NASM_FLAGS	=	-f elf64

# -------------------------------------#
# 		RULES  					 	   #
# -------------------------------------#
all : $(COLLEEN)

$(NAME): $(OBJ_PATH) $(OBJ)

$(COLLEEN): $(OBJ_PATH) $(OBJ)
	@$(CC) $(CC_FLAGS) -o $(COLLEEN) $(OBJ_PATH)$(COLLEEN).o
	@printf "\033[32mColleen 		[OK]\033[0m\n"

$(OBJ_PATH):
	@printf "\033[36mCreate directory	[OK]\033[0m\n"
	@mkdir $(OBJ_PATH)

$(OBJ_PATH)%.o:	%.s
	@nasm $(NASM_FLAGS) -D FIRST=1 $< -o $@
	@printf "\033[33m$@		[OK]\033[0m\n"

clean:
	@rm -rf $(OBJ_PATH)
	@printf "\033[31mObjects directory 	[DELETE]\033[0m\n"

fclean: clean
	@rm -f $(COLLEEN)
	@printf "\033[31mColleen			[DELETE]\033[0m\n"

re:	fclean all