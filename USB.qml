import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
Item{
    id:usbwindow
    property alias item1: item1
    property string   str: " "
    visible: true

    Rectangle{
        id:usbpage
        width:640
        height:640
        visible: true
        anchors.fill: parent
        color:"PaleGreen"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        Loader{
            id:loader1
            anchors.fill: parent
        }
        SwipeView {
            id: swipeView
            anchors.fill:parent;
            x: 318
            y: 203
            width: 200
            height: 200
            currentIndex: 0

            Item {
                Rectangle{
                    id:rect
                    x: 0
                    y: 0
                    visible:true
                    width:640
                    height:480
                    color:"#ffe4e1"
                    anchors.fill:parent;
                    SequentialAnimation {
                        id: anim

                        PropertyAnimation {
                            target: rect
                            property: "color"
                            to: "Cornsilk"
                            duration: 400

                        }
                    }

                    Connections
                    {
                        target: process
                        onSendToQml:
                        {
                            str = cmd1

                        }

                    }

                    MouseArea {
                        id: mouseArea
                        anchors.right: parent.right
                        acceptedButtons: Qt.LeftButton
                        onClicked: {
                            anim.running = true;

                        }
                        x: 513
                        y: 101
                        width: 127
                        height: 77
                        z: 2
                        anchors.rightMargin: 0
                        anchors.topMargin: 74
                        clip: false
                        anchors.bottomMargin: 329
                        anchors.leftMargin: 513
                        visible: true
                    }

                    Rectangle {
                        id: rectangle
                        x: 513
                        y: 101
                        width: 127
                        height: 77
                        color: "Cornsilk"
                        anchors.rightMargin: 0
                        border.color:"black"
                        border.width: 5
                        anchors.right:parent.right
                        z: 1
                    }
                    MouseArea {
                        id: mouseArea1
                        anchors.right:parent.right
                        acceptedButtons: Qt.LeftButton
                        onClicked: {
                            anim1.running = true;
                        }
                        x: 513
                        y: 202
                        width: 127
                        height: 77
                        anchors.rightMargin: 1
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0

                        Rectangle {
                            id: rectangle1
                            x: 0
                            y: 0
                            width: 127
                            height: 77
                            border.width: 5
                            color: "#C0C0C0"
                            anchors.right:parent.right
                            SequentialAnimation {
                                id: anim1
                                PropertyAnimation {
                                    target: rect
                                    property: "color"
                                    to: "#C0C0C0"
                                    duration: 400

                                }
                            }
                        }
                    }

                    MouseArea {
                        id: mouseArea2
                        x: 8
                        y: 37
                        width: 127
                        height: 77
                        Rectangle {
                            id: rectangle2
                            x: 0
                            y: 0
                            width: 127
                            height: 77
                            color: "#ffffff"
                            border.width: 5
                        }
                        onClicked: {
                            process.receiveFromQml()
                        }
                        Connections {

                            target: process
                            onSendToQml:
                            {
                                textArea.text = cmd1
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle3
                        x: 51
                        y: 113
                        width: parent.width/1.5
                        height: parent.height/1.5
                        color: "#fffafa"
                        anchors.onBaselineChanged: parent
                        ScrollView{
                            anchors.rightMargin: 0
                            anchors.bottomMargin: 0
                            anchors.leftMargin: 0
                            anchors.topMargin: 8
                            anchors.fill: parent
                            TextArea {
                                id: textArea
                                x: -10
                                y: -13
                                width: 408
                                height: 309
                                text: str
                                wrapMode: Text.WordWrap
                                font.family: "Courier"
                            }
                        }
                    }


                        Text {
                            id: text2
                            x: -9
                            y: 40
                            width: 127
                            height: 50
                            anchors.right:parent.right
                            text: "Изменить цвет   фона"
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Times New Roman"
                            wrapMode: Text.WordWrap
                            font.pixelSize: 20
                        }


                }
                Text {
                    id: text1
                    x: 8
                    y: 38
                    width: 128
                    height: 76
                    text: qsTr("Вывести данные")
                    font.family: "Times New Roman"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 16
                }
            }

            Item {
                Rectangle{
                    color:"Orchid";
                    anchors.fill:parent;
                }
                Image {
                    id:image
                    anchors.fill:parent;
                    source: "qrc:/300px-Безмятежность.png"

                }
            }

            Item {
                id: item1
                Rectangle{
                    color:"#FF1493";
                    anchors.fill:parent;
                }



            }
        }
       /* PageButton{
            onButtonclick: {
                rectangle.visible = true
                loader.source = "main.qml"
            }
        }*/
    }
}
