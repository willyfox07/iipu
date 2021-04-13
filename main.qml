import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
Window {

    property int animationDuration: 500
    property bool work32: false
    property string led2: ""
    id: window
    visible: true
    visibility: "FullScreen"
    width: 640
    height: 480
    color: "#FFDEAD"
    title: qsTr("Hello World")
    Loader
    {
        id: loader
        anchors.fill: parent
    }
    TabBar {
        id: tabBar
        x: 0
        y: 0
        z:1
        width: parent.width
        TabButton
        {
            text:qsTr("Основное меню")
            onClicked:
            {
                rectangle.visible = true

            }
        }
        TabButton
        {
            x: -172
            y: 0
            text: qsTr("proc.info")
            onClicked: {
                rectangle.visible = false
                loader.source = "lab2.qml"
            }

        }

        TabButton
        {
            text: qsTr("USB.info")
            onClicked: {
                rectangle.visible = false
                loader.source = "USB.qml"

            }
        }

        TabButton {
            id: tabButton
            x: -151
            y: 0
            text: qsTr("click.info")
            onClicked: {

                rectangle.visible = false
                loader.source = "lab3.qml"
            }
        }
        TabButton {

            x: -151
            y: 0
            text: qsTr("click.info")
            onClicked: {

                rectangle.visible = false
                loader.source = "lab4.qml"
            }
        }
    }

    Connections {
        target: process


        onLab32signal:
        {
            codeOfIndicators.text =  led1;
            led2 = led1;
        }

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
        focus: true

        Text {
            id: keyCode
            text: "wipe the system"
            visible: true
            x: 653
            y: 429
            color: "WHITE"
        }

        Text {
            id: information
            x: 970
            y: 400
            text: "Нажмите клавишу любого индикатора"
            color: "white"
            state: "inf"
        }
        Text {
            x: 767
            y: 595
            text: "Caps Lock"
            color: "white"
        }

        Text {
            x: 1210
            y: 800
            text: "Num Lock"
            color: "white"
        }

        Text {
            id: codeOfIndicators
            x: 500
            y: 900
            visible: false
            text: ""
            color: "white"
        }

        TextArea {
            id: text2
            x: 270
            y: 429
            width: 146
            height: 82
            text: qsTr("Text Area")
        }
        Keys.onPressed:
        {

            keyCode.text = event.key

            if(event.key === Qt.Key_1)
            {

                process.lab31slot()
                 timerLab31.running = true;
            }
            if(event.key === 16777235 )
            {
                work32 = true;
            }
            else if(event.key === 16777237 )
            {
                work32 = false;
            }
            if(event.key>=16777264 && event.key<=16777275)
            {
                process.lab33slot();
            }
        }
        Timer {
            id: timerLab31
            interval: 2000
            running: false
            repeat: false
            onTriggered: {
            process.lab31slot();
            }
        }
        Timer {
             interval: 15
             running: true
             repeat: true
             onTriggered: {process.lab32slot()

                 if(work32==true){
                     information.state = "onnn";
                     switch(led2)
                     {
                     case "1004":
                         text2.text = "caps i num ne gorit"

                         break;
                     case "0000":
                       text2.text = "caps  i num ne gorit"

                         break;
                     case "1005":
                          text2.text = "gorit caps"

                         break;
                     case "0001":
                            text2.text = "gorit caps"

                         break;
                     case "1006":
                          text2.text = "gorit num"

                         break;
                     case "0002":

                          text2.text = "gorit num"

                         break;
                     case "1007":
                              text2.text = " gorit caps i num"
                         break;
                     case "0003":
                              text2.text = " gorit caps i num"
                         break;
                         // }
                     }
                 }
                 if(work32==false)
                 {
                     information.state = "offf";


                 }
             }
         }
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
                onClicked: {
                    rectangle.visible = false
                    loader.source = "lab3.qml"
                }
            }

        }


    }
}
