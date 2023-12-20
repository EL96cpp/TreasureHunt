import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import Qt5Compat.GraphicalEffects


Page {

    id: menu_page

    property string text_hovered_color: "#F16100"

    Image {

        id: menu_background
        source: "qrc:/Images/menu_background.png"

        anchors.fill: parent

    }

    Rectangle {

        id: main_title_rectangle
        width: main_title.width*2
        height: main_title.height*1.2

        gradient: Gradient {

            GradientStop { position: 0.0; color: "#00ffffff" }
            GradientStop { position: 0.35; color: "#90ffffff" }
            GradientStop { position: 0.5; color: "#d0ffffff" }
            GradientStop { position: 0.85; color: "#90ffffff" }
            GradientStop { position: 1.0; color: "#00ffffff" }
            orientation: Gradient.Horizontal

        }


        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 160

        Text {

            id: main_title
            text: "Treasure Hunt"

            font.family: title_font.name
            font.pointSize: 140
            font.letterSpacing: 5
            font.bold: true
            color: "#000000"

            anchors.centerIn: parent

        }

    }


    Column {

        id: main_menu_column
        spacing: 40

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: main_title_rectangle.bottom
        anchors.topMargin: 100

        Text {

            id: login_text
            text: "Login"
            style: Text.Outline
            styleColor: login_mouse_area.containsMouse ? "#000000" : "#ffffff"
            font.family: menu_font.name
            font.pointSize: 120
            font.letterSpacing: 10
            font.bold: true
            color: login_mouse_area.containsMouse ? text_hovered_color : "#000000"

            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea {

                id: login_mouse_area
                hoverEnabled: true
                anchors.fill: parent

                onClicked: {

                    toLoginForm();

                }

            }

        }


        Text {

            id: register_text
            text: "Register"
            style: Text.Outline
            styleColor: register_mouse_area.containsMouse ? "#000000" : "#ffffff"
            font.family: menu_font.name
            font.pointSize: 120
            font.letterSpacing: 10
            font.bold: true
            color: register_mouse_area.containsMouse ? text_hovered_color : "#000000"

            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea {

                id: register_mouse_area
                hoverEnabled: true
                anchors.fill: parent

                onClicked: {

                    toRegisterForm();

                }

            }

        }


        Text {

            id: exit_text
            text: "Exit"
            style: Text.Outline
            styleColor: exit_mouse_area.containsMouse ? "#000000" : "#ffffff"
            font.family: menu_font.name
            font.pointSize: 120
            font.letterSpacing: 10
            font.bold: true
            color: exit_mouse_area.containsMouse ? text_hovered_color : "#000000"

            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea {

                id: exit_mouse_area
                hoverEnabled: true
                anchors.fill: parent

            }

        }


    }


}
