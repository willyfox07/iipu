import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3


Rectangle
{

    id:button
    width: 127
    height: 77
    color: "#C0C0C0"
    border.width: 5
    border.color: "black"
    signal buttonclick()
    MouseArea
    {
        onClicked: buttonclick()
        anchors.fill:parent
        anchors.right: parent.right
        acceptedButtons: Qt.LeftButton
    }

    Connections {

 }
}
