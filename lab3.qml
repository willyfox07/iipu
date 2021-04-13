import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
Item{
    property color color1: "lightgrey"
    property color color: "lightgrey"
    property int animationDuration: 500
    property bool work32: false
    property string led2: ""

    Loader{
        id:loader3
    }

    id: page3
    width: 480
    height: 640
    visible: true
    Rectangle{
        id:lab3
        Keys.onPressed:
        {

            //keyCode.text = event.key

            if(event.key === Qt.Key_1)
            {

                process.lab31slot()
                // timerLab31.running = true;

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
        Rectangle {
            id: rectLab3
            x: 0
            y: 0
            height: page3.height
            width: page3.width
            color: "green"




            Timer {
                id: timerLab31
                interval: 2000
                running: false
                repeat: false
                onTriggered: {
                process.lab31slot();
                }
            }

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

            Rectangle {
                id: rectangle
                x: 280
                y: 8
                width: 129
                height: 71
                color: "#ffffff"

                MouseArea {
                    id: mouseArea
                    x: 29
                    y: 34
                    width: 100
                    height: 100
                    anchors.fill: parent
                    onClicked: {
                        lab3.visible = false
                        loader3.source = "main.qml"

                    }
                }
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
                             text2.text = "jghj"

                            break;
                        case "0001":
                               text2.text = "jghj"

                            break;
                        case "1006":
                             text2.text = "sad"

                            break;
                        case "0002":

                             text2.text = "sad"

                            break;
                        case "1007":
                                 text2.text = "cb"
                            break;
                        case "0003":
                                 text2.text = "cb"
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
                id: text1
                x: 960
                y: 150
                text: "- Нажмите [1], чтобы включить и выключить все индикаторы на несколько секунд;\n- Нажмите [стрелка вверх], чтобы перейти к анализу индикаторов и [стрелка вниз], \nчтобы выйти из него;\n- Нажмите любую функциональную клавишу, чтобы инвертировать значение Caps Lock и Num Lock."
                color: "white"
            }



            Connections {
                target: process


                onLab32signal:
                {
                    codeOfIndicators.text =  led1;
                    led2 = led1;
                }

            }

    }




}
