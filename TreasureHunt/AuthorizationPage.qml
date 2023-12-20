import QtQuick
import QtQuick.Window
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import Qt5Compat.GraphicalEffects


Page {

    id: authorization_page
    states: [

        State {

            name: "login_state"

            PropertyChanges {
                target: login_form
                visible: true
            }

            PropertyChanges {
                target: register_form
                visible: false
            }

        },

        State {

            name: "register_state"

            PropertyChanges {
                target: login_form
                visible: true
            }

            PropertyChanges {
                target: register_form
                visible: false
            }

        }
    ]

    Image {

        id: authorization_background
        source: "qrc:/Images/menu_background.png"

        anchors.fill: parent

    }


    LoginForm {
        id: login_form

    }

    RegisterForm {
        id: register_form
        visible: false
    }

}
