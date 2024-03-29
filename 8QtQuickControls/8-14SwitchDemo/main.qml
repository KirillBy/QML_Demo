import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Switch Demo")

    Column{
        width:parent.width
        spacing: 20

        Switch{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"WiFi"
            checked: true
            onCheckedChanged: {
                if(checked === true)
                    console.log("WiFi turn on")
                else
                     console.log("WiFi turn off")
            }
        }
        Switch{
            enabled: false
            anchors.horizontalCenter: parent.horizontalCenter
            text:"Bluetooth"
        }
        Switch{
            anchors.horizontalCenter: parent.horizontalCenter
            text:"NFC"
        }

    }
}
