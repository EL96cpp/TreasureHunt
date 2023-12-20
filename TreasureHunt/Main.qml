import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import Qt5Compat.GraphicalEffects


Window {

    width: 640
    height: 480
    visibility: "FullScreen"
    visible: true
    title: qsTr("Hello World")

    function toLoginForm() {

        authorization_page.state = "login_state"
        stack_view.push(authorization_page);

    }

    function toRegisterForm() {

        authorization_page.state = "register_state"
        stack_view.push(authorization_page);

    }

    StackView {

        id: stack_view
        initialItem: menu_page
        anchors.fill: parent

        pushEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 1
            }
        }
        pushExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 1
            }
        }
        popEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 1
            }
        }
        popExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 1
            }
        }

    }

    MenuPage {
        id: menu_page
    }

    AuthorizationPage {
        id: authorization_page
        visible: false
    }

    FontLoader {

        id: title_font
        source: "qrc:/Fonts/Title_font.ttf"

    }

    FontLoader {

        id: menu_font
        source: "qrc:/Fonts/Menu_font.ttf"

    }


}
