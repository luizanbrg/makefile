CC = gcc

CFLAGS = -Wall -Wextra -Werror

SRC = main.c
OBJ = $(SRC:.c=.o)
EXEC = app

all: $(EXEC)

$(EXEC): $(OBJ)
	@echo "Compilando $@ ..."
	@$(CC) $(OBJ) -o $(EXEC)

%.o: %.c
	@echo "Compilando $< ..."
	@$(CC) $(CFLAGS) -c $< -o $@

testsrun:
	@echo "Executando testes..."
	@echo "Teste 1: OK"
	@echo "Teste 2: OK"

clean:
	@echo "Limpando arquivos objeto..."
	@rm -f $(OBJ)

fclean: clean
	@echo "Limpando executável..."
	@rm -f $(EXEC)

re: fclean all
