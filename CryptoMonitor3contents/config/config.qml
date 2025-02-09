// Importa o módulo QtQuick na versão 2.0, que fornece os componentes básicos para criar interfaces gráficas no QML.
import QtQuick 2.0

// Importa o módulo de configuração do Plasma na versão 2.0, que permite criar interfaces de configuração para applets do Plasma.
import org.kde.plasma.configuration 2.0

// Define um modelo de configuração para o applet. Este contém as categorias de configuração que serão exibidas na interface de configuração.
ConfigModel {

    // Define uma categoria de configuração. Cada categoria aparece como uma aba ou seção na interface de configuração do applet.
    ConfigCategory {
        // Define o nome da categoria. A função `i18n` é usada para internacionalização, permitindo traduzir o texto para diferentes idiomas.
        name: i18n("CATEGORIA 1")

        // Define o ícone que será exibido ao lado do nome da categoria. Neste caso, o ícone é "preferences-desktop-color", que é um ícone temático do KDE.
        icon: "preferences-desktop-color"

        // Especifica o arquivo QML que contém a interface de configuração para esta categoria. Neste caso, o arquivo é "config.qml".
        source: "config.qml"
    }
}