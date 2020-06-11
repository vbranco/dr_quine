PHONY		=	all clean fclean re

CC			=	clang
NAME		=	Dr_Quine

# -------------------------------------#
# 		EXEC  					 	   #
# -------------------------------------#
SULLY		=	Sully

# -------------------------------------#
# 		PATH   					 	   #
# -------------------------------------#
OBJ_PATH	=	./build/
OUTPUT_PATH	=	./output/

# -------------------------------------#
# 		SRC   					 	   #
# -------------------------------------#
SRC			=	Sully.c

# -------------------------------------#
# 		VARS  					 	   #
# -------------------------------------#
OBJ_NAME	=	$(SRC:.c=.o)
OBJ			=	$(addprefix $(OBJ_PATH), $(OBJ_NAME))

# -------------------------------------#
# 		FLAG   					 	   #
# -------------------------------------#
FLAGS		=	-Wall -Werror -Wextra

# -------------------------------------#
# 		RULES  					 	   #
# -------------------------------------#
all : $(SULLY)

$(NAME): $(OBJ_PATH) $(OBJ)

$(SULLY): $(OBJ_PATH) $(OBJ)	
	@$(CC) $(FLAGS) -o $(OUTPUT_PATH)$(SULLY) $(OBJ_PATH)$(SULLY).o
	@printf "\033[32mSully   		[OK]\033[0m\n"

$(OBJ_PATH):
	@printf "\033[36mCreate directory	[OK]\033[0m\n"
	@mkdir $(OBJ_PATH)
	@mkdir $(OUTPUT_PATH)

$(OBJ_PATH)%.o:	$(SRC_PATH)%.c
	@$(CC) $(FLAGS) -D FIRST=1 -c $< -o $@
	@printf "\033[33m$@		[OK]\033[0m\n"

clean:
	@rm -rf $(OBJ_PATH)
	@printf "\033[31mObjects directory 	[DELETE]\033[0m\n"

fclean: clean
	@rm -rf $(OUTPUT_PATH)
	@printf "\033[31mSully			[DELETE]\033[0m\n"

re:	fclean all