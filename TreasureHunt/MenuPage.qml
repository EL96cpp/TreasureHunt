import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import Qt5Compat.GraphicalEffects


Page {

    id: menu_page

    Image {

        id: menu_background
        source: "qrc:/Images/menu_background.png"

        anchors.fill: parent

    }

    Text {

        id: main_title
        text: "Treasure Hunt"

        font.family: title_font.name
        font.pointSize: 130
        font.letterSpacing: 5
        font.bold: true
        color: "#000000"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 160

    }

}
