git init /home/thiago/Documents/_Projetos/GITHUB/TMP/teste
git -C /home/thiago/Documents/_Projetos/GITHUB/TMP/teste remote add origin https://github.com/Condiolov/teste.git
# 			git -C /home/thiago/Documents/_Projetos/GITHUB/TMP/teste remote add origin git@github.com:Condiolov/teste.git
# Altera a URL do repositório remoto para SSH
git -C /home/thiago/Documents/_Projetos/GITHUB/TMP/teste remote set-url origin git@github.com:Condiolov/teste.git

git -C /home/thiago/Documents/_Projetos/GITHUB/TMP/teste fetch origin
git -C /home/thiago/Documents/_Projetos/GITHUB/TMP/teste branch -r
# git -C /home/thiago/Documents/_Projetos/GITHUB/TMP/teste checkout -b main origin/main
