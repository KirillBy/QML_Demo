import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("BusyIndicator Demo")


    ColumnLayout{
        width: parent.width
        //height: parent.height
        BusyIndicator{
            id: busyIndicatorId
        Layout.alignment: Qt.AlignCenter
        running: false
        visible: false
        }


        ColumnLayout{
            Button{
                id: button1
                text: "Running"
                Layout.fillWidth: true
                onClicked: {
                    busyIndicatorId.running = true
                    busyIndicatorId.visible = true
                }
            }
            Button{
                id: button2
                text: "Not Running"
                Layout.fillWidth: true
                onClicked: {
                    busyIndicatorId.running = false
                    busyIndicatorId.visible = false
                }
            }
        }

 /*       Item{
            Layout.fillHeight: true
            Layout.fillWidth: true

        }*/
    }
}
