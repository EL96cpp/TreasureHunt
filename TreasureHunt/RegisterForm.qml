import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import Qt5Compat.GraphicalEffects

Item {

    id: register_form

    Rectangle {

        id: register_rectangle
        width: 500
        height: 700
        radius: 10
        color: "#90436565"
        border.width: 2
        border.color: "#1e3e1e"

        anchors.centerIn: parent

    }

    Text {

        id: return_text
        text: "Return"

        font.family: menu_font.name
        font.pointSize: 50
        font.letterSpacing: 5
        font.bold: true
        style: Text.Outline
        styleColor: return_mouse_area.containsMouse ? "#000000" : "#ffffff"
        color: return_mouse_area.containsMouse ? menu_page.text_hovered_color : "#000000"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: register_rectangle.bottom
        anchors.topMargin: 10

        MouseArea {

            id: return_mouse_area
            anchors.fill: parent
            hoverEnabled: true

            onClicked: {

                stack_view.pop(menu_page);

            }

        }

    }

}
