PHONY		=	all clean fclean re

CC			=	clang
NAME		=	Dr_Quine

# -------------------------------------#
# 		EXEC  					 	   #
# -------------------------------------#
COLLEEN 	=	Colleen
O_COLLEEN 	=	./output/Colleen
GRACE		=	Grace
O_GRACE		=	./output/Grace
SULLY		=	Sully
O_SULLY		=	./output/Sully

# -------------------------------------#
# 		PATH   					 	   #
# -------------------------------------#
SRC_PATH	=	./src/
OBJ_PATH	=	./build/
OUTPUT_PATH	=	./output/

# -------------------------------------#
# 		SRC   					 	   #
# -------------------------------------#
SRC	=	Colleen.c Grace.c Sully.c

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
all : $(O_COLLEEN) $(O_GRACE) $(O_SULLY)

$(NAME): $(OBJ_PATH) $(OBJ)

$(O_COLLEEN): $(OBJ_PATH) $(OBJ)
	@$(CC) $(FLAGS) -o $(OUTPUT_PATH)$(COLLEEN) $(OBJ_PATH)$(COLLEEN).o
	@printf "\033[32mColleen 		[OK]\033[0m\n"

$(O_GRACE): $(OBJ_PATH) $(OBJ)
	@$(CC) $(FLAGS) -o $(OUTPUT_PATH)$(GRACE) $(OBJ_PATH)$(GRACE).o
	@printf "\033[32mGrace   		[OK]\033[0m\n"

$(O_SULLY): $(OBJ_PATH) $(OBJ)	
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
	@printf "\033[31mColleen			[DELETE]\033[0m\n"
	@printf "\033[31mGrace			[DELETE]\033[0m\n"
	@printf "\033[31mSully			[DELETE]\033[0m\n"

re:	fclean all