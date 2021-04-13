import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
Item {
    Loader
    {
        id: loader
        anchors.fill: parent


    }
    Rectangle {
        id: rectangle
        x: 0
        y: 8
        z:2
        width: 640
        height: 472
        color: "#FFDEAD"
         anchors.fill: parent
        PageButton{
            x:1700
            y:92
            color:"red"
            onButtonclick:
            {
                Qt.quit()
            }
        }

        ToolButton {
            id: toolButton
            x: 195
            y: 140
            width: 119
            height: 180
            Button {
                id: button
                x: 1
                y: 61
                width: 118
                height: 58
                text: qsTr("USB")
                onClicked: {
                    rectangle.visible = false
                    loader.source = "USB.qml"
                }

            }

            Button {
                id: button1
                width: 119
                height: 62
                text: qsTr("PROC")
                onClicked: {
                    rectangle.visible = false
                    loader.source = "lab2.qml"
                }
            }

            Button {
                id: button2
                x: 0
                y: 119
                width: 119
                height: 61
                text: qsTr("Button")
            }
        }
    }
}
