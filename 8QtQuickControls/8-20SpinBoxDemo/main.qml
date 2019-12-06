import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Spin Box Demo")

    Column{
        spacing: 20
        width: parent.width

        SpinBox{
            id: spinboxId
            from:1
            to: 100
            value: 1
            stepSize: 5
            editable: true

           anchors.horizontalCenter: parent.horizontalCenter
            onValueChanged: {
                console.log("current value changed to: " + value)
            }
        }
            Button{
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Button"
                onClicked: {
                    console.log("Current value is : " + spinboxId.value)
                }
            }
        }
    }

