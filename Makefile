# Compilador (simulado) by Luiza
CC = gcc

# Flags (exemplo)
CFLAGS = -Wall -Wextra -Werror

# Arquivos fictícios
SRC = main.c
OBJ = $(SRC:.c=.o)
EXEC = app

# Alvo padrão
all: $(EXEC)

$(EXEC): $(OBJ)
    @echo "Compilando $@ ..."
    @$(CC) $(OBJ) -o $(EXEC)

%.o: %.c
    @echo "Compilando $< ..."
    @$(CC) $(CFLAGS) -c $< -o $@

# Roda testes (simulação)
tests_run:
    @echo "Executando testes..."
    @echo "Teste 1: OK"
    @echo "Teste 2: OK"

# Limpeza dos objetos
clean:
    @echo "Limpando arquivos objeto..."
    @rm -f $(OBJ)

# Limpeza total
fclean: clean
    @echo "Limpando executável..."
    @rm -f $(EXEC)

# Recompila do zero
re: fclean all
