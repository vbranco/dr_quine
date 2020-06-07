PHONY		=	all clean fclean re

CC			=	clang
NAME		=	Dr_Quine

# -------------------------------------#
# 		EXEC  					 	   #
# -------------------------------------#
COLLEEN 	=	Colleen
GRACE		=	Grace
SULLY		=	Sully

# -------------------------------------#
# 		PATH   					 	   #
# -------------------------------------#
SRC_PATH	=	./src/
OBJ_PATH	=	./build/
OUTPUT_PATH	=	./output/

# -------------------------------------#
# 		SRC   					 	   #
# -------------------------------------#
SRC	=	Colleen.s Grace.s Sully.s

# -------------------------------------#
# 		VARS  					 	   #
# -------------------------------------#
OBJ_NAME	=	$(SRC:.s=.o)
OBJ			=	$(addprefix $(OBJ_PATH), $(OBJ_NAME))

# -------------------------------------#
# 		FLAG   					 	   #
# -------------------------------------#
CC_FLAGS		=	-Wall -Werror -Wextra -no-pie
NASM_FLAGS		=	-f elf64

# -------------------------------------#
# 		RULES  					 	   #
# -------------------------------------#
all : $(NAME) $(COLLEEN) $(GRACE) $(SULLY)

$(NAME): $(OBJ_PATH) $(OBJ)

$(COLLEEN):
	@$(CC) $(CC_FLAGS) -o $(OUTPUT_PATH)$@ $(OBJ_PATH)$(COLLEEN).o
	@printf "\033[32mColleen 		[OK]\033[0m\n"

$(GRACE):
	@$(CC) $(CC_FLAGS) -nostartfiles -o $(OUTPUT_PATH)$@ $(OBJ_PATH)$(GRACE).o
	@printf "\033[32mGrace   		[OK]\033[0m\n"

$(SULLY):		
	@$(CC) $(CC_FLAGS) -o $(OUTPUT_PATH)$@ $(OBJ_PATH)$(SULLY).o
	@printf "\033[32mSully   		[OK]\033[0m\n"

$(OBJ_PATH):
	@printf "\033[36mCreate directory	[OK]\033[0m\n"
	@mkdir $(OBJ_PATH)
	@mkdir $(OUTPUT_PATH)

$(OBJ_PATH)%.o:	$(SRC_PATH)%.s
	@nasm $(NASM_FLAGS) -D FIRST=1 $< -o $@
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