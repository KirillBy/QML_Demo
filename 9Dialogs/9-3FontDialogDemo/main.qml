import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("FontDialog Demo")
    Column{
        spacing: 20
        anchors.centerIn: parent
        Button{
            text: "choose font"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
            fontdialogID.open()
            }

        }
        Text {
            id: textid
            text: qsTr("hello world")
            wrapMode: textid.Wrap
        }
        FontDialog{
            id:fontdialogID
            title: "choose font"
            font: Qt.font({family: "Arial", pointSize: 24, weight: Font.Normal})
            onAccepted: {
                textid.font = font
                console.log( font)
            }
            onRejected: {
                console.log("regected...")
            }
        }
    }
}
