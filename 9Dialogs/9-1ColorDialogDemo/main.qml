import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ColorDialog Demo")
    Column{
        spacing: 20
        anchors.centerIn: parent
        Button{
            text: "choose color"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                colordialogId.open()
            }

        }
    }
    Rectangle{
        width: 200
        height: 200
        anchors.horizontalCenter: parent.horizontalCenter
        id: rectId
        border.color: "black"
        border.width: 8
    }

    ColorDialog{
        id: colordialogId
        title: "please choose the color"
        onAccepted: {
            console.log("your color now is " + color)
            rectId.color = color
        }
        onCurrentColorChanged: {
            console.log("your current color is " + currentColor)
        }

        onRejected: {
            console.log("regected...")
        }


    }
}
