PHONY		=	all clean fclean re

CC			=	clang
NAME		=	Dr_Quine

# -------------------------------------#
# 		EXEC  					 	   #
# -------------------------------------#
GRACE		=	Grace

# -------------------------------------#
# 		PATH   					 	   #
# -------------------------------------#
OBJ_PATH	=	./build/

# -------------------------------------#
# 		SRC   					 	   #
# -------------------------------------#
SRC			=	Grace.s

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
all : $(GRACE)

$(NAME): $(OBJ_PATH) $(OBJ)

$(GRACE): $(OBJ_PATH) $(OBJ)
	@$(CC) $(CC_FLAGS) -nostartfiles -o $(GRACE) $(OBJ_PATH)$(GRACE).o
	@printf "\033[32mGrace   		[OK]\033[0m\n"

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
	@rm -f $(GRACE) Grace_kid.s
	@printf "\033[31mGrace			[DELETE]\033[0m\n"

re:	fclean all