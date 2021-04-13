import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
Item {

    id:lab2
    visible: true
    SwipeView {
        id: swipeView
        x: 0
        y: 0
        width: 640
        height: 480
        currentIndex: 0
        anchors.fill:parent

        Item {
            Rectangle {
                id: rectangle
                color:"PaleGreen"
                width: 640
                height: 480
                anchors.fill:parent


                PageButton{
                    x:0
                    y:40
                    anchors.right: parent.right

                        onButtonclick:  {
                            process.receiveFromQml2()

                        }
                }

                Connections {

                    target: process


                    onSendToQml2:
                    {
                       textArea2.text = cmd2
                    }
                    onSendToQml3:
                    {
                        textArea3.text = cmd3
                    }
                    onSendToQml4:
                    {
                        textArea4.text = cmd4
                    }
                }
                Rectangle {
                    id: rectangle1
                    x: 193
                    y: 179
                    width: parent.width/2
                    height: parent.height/2
                    color: "#ffffff"
                    ScrollView{
                        width: 192
                        height: 320
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 8
                        anchors.fill:parent
                        TextArea {
                            id: textArea2
                            font.capitalization: Font.AllLowercase
                            clip: false
                            font.pointSize: 15
                            horizontalAlignment: Text.AlignLeft
                            anchors.fill:parent
                            placeholderText: qsTr("")
                            wrapMode: Text.WordWrap
                            font.family: "Courier"
                        }
                    }
                }


            }
        }

        Item {
            Rectangle{
                id: rectangle2
                color:"Cornsilk"
                width: 640
                height: 480
                anchors.fill:parent
                PageButton{
                    x:513
                    y:40
                    anchors.rightMargin: 0
                    anchors.right: parent.right
                    onButtonclick:  {
                        process.receiveFromQml3()
                    }
                }

                Rectangle {
                    id: rectangle4
                    x: 126
                    y: 150
                    width: parent.width/2
                    height: parent.height/2
                    color: "#ffffff"
                    ScrollView{
                        width: 192
                        height: 320
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 8
                        anchors.fill:parent
                        TextArea {
                            id: textArea3
                            font.capitalization: Font.AllLowercase
                            clip: false
                            font.pointSize: 15
                            horizontalAlignment: Text.AlignLeft
                            anchors.fill:parent
                            placeholderText: qsTr("")
                            wrapMode: Text.WordWrap
                            font.family: "Courier"
                        }
                    }

                }
            }
        }

        Item {
            Rectangle{
                id: rectangle3
                color:"Orchid"
                width: 640
                height: 480
                anchors.fill:parent
                PageButton{
                    x:0
                    y:40
                    anchors.right: parent.right
                    onButtonclick:  {
                        process.receiveFromQml4()
                    }
                }
                Rectangle {
                    id: rectangle5
                    x: 126
                    y: 150
                    width: parent.width/2
                    height: parent.height/2
                    color: "#ffffff"
                    ScrollView{
                        width: 192
                        height: 320
                        leftPadding: 0
                        rightPadding: 0
                        bottomPadding: 0
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 8
                        anchors.fill:parent
                        TextArea {
                            id: textArea4
                            font.capitalization: Font.AllLowercase
                            clip: false
                            font.pointSize: 15
                            horizontalAlignment: Text.AlignLeft
                            anchors.fill:parent
                            placeholderText: qsTr("")
                            wrapMode: Text.WordWrap
                            font.family: "Courier"
                        }
                    }
                }
            }
        }
    }
}
