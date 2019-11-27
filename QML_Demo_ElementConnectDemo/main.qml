import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Extras 1.4 as QQE
ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Controls")

    header: ToolBar{
        height: quitButton.height
        Button {
            id: quitButton
            height: 25
            text: "Quit"
            onClicked: Qt.quit()

        }
    }

    footer: ToolBar{
        id: statusBarId
        Label {

        id: statusLblId
        text: sliderID.value
        }
    }

    ProgressBar{
        x:0
        y:0
        width: parent.width
        height: parent.height
    }

    Dial{
        id: sliderID
        x:0
        y: parent.height/2
        width: parent.width
        height: parent.height/2
        value: 0.75
        stepSize: 0.1
     //   onValueChanged: statusLblId.text= sliderID.value
    }
   /* QQE.CircularGauge{
        id: circgaugeID
        width: parent.width
        height: parent.height/2


    }*/

    QQE.CircularGauge {
        value: accelerating ? maximumValue : 0

        width: parent.width
        height: parent.height/2

        property bool accelerating: false

        Keys.onSpacePressed: accelerating = true
        Keys.onReleased: {
            if (event.key === Qt.Key_Space) {
                accelerating = false;
                event.accepted = true;
            }
        }

        Component.onCompleted: forceActiveFocus()

        Behavior on value {
            NumberAnimation {
                duration: 1000
            }
        }
    }
}
