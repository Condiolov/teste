# Como Compilar um Plasmoid no KDE

Este guia explica como empacotar e compilar um Plasmoid no KDE.

## 📌 Requisitos
Certifique-se de ter os seguintes pacotes instalados:
- KDE Plasma
- `plasma-framework`
- `zip`

## 📂 Estrutura do Plasmoid
Seu plasmoid deve ter a seguinte estrutura:
```
NOME_WIDGET/
├── metadata.json
├── contents/
│   ├── ui/
│   │   ├── main.qml
│   ├── config/
│   │   ├── Config.qml
```

## 🚀 Como Compilar o Plasmoid
Para empacotar seu Plasmoid, execute o seguinte comando no terminal:
```sh
zip -r NOME_WIDGET.plasmoid metadata.json contents/
```
Isso criará um arquivo `NOME_WIDGET.plasmoid`, que pode ser instalado no KDE.

## 🔧 Instalando o Plasmoid
Após compilar o widget, instale-o com o seguinte comando:
```sh
plasmapkg2 -i NOME_WIDGET.plasmoid
```
Se precisar atualizar um Plasmoid já instalado:
```sh
plasmapkg2 -u NOME_WIDGET.plasmoid
```
Para remover:
```sh
plasmapkg2 -r NOME_WIDGET
```

## ✅ Testando o Plasmoid
Após a instalação, adicione o widget à área de trabalho do KDE:
1. Clique com o botão direito na área de trabalho.
2. Selecione **"Adicionar Widgets"**.
3. Procure pelo nome do seu widget.
4. Arraste para a área de trabalho ou painel.

Agora seu Plasmoid está pronto para uso! 🎉

