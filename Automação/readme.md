# Automação com Bash e Git

Este projeto contém scripts Bash para automatizar tarefas comuns relacionadas ao Git, como commit, push, pull e outras operações frequentes.

## Pré-requisitos

- Bash (disponível na maioria dos sistemas Unix/Linux e no Windows via WSL ou Git Bash)
- Git instalado e configurado

## Scripts Disponíveis

### `git_auto_commit.sh`

Este script automatiza o processo de commit. Ele adiciona todas as alterações, faz o commit com uma mensagem padrão ou personalizada e faz push para o repositório remoto.

**Uso:**
```bash
./git_auto_commit.sh "Mensagem do commit"