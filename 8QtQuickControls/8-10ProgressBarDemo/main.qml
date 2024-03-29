import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ProgressBarDemo")

    Column{
        width: parent.width
        spacing: 20

        Button{
            text: "Star"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: progressBarId.value = 78
        }
        Dial{
            id: dialId
            from: 1
            to : 100
            value: 40
            anchors.horizontalCenter: parent.horizontalCenter
            onValueChanged: {
                progressBarId.value = value
            }
        }
        ProgressBar{
            id: progressBarId
            from: 1
            to : 100
            value: 40
            anchors.horizontalCenter: parent.horizontalCenter
        }
        ProgressBar{
            id: progressBarId1
            indeterminate: true
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
