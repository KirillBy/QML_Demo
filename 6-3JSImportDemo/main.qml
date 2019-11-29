import QtQuick 2.12
import QtQuick.Window 2.12
import "utilites1.js" as Utilities1
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("JS Import demo")

    Rectangle{
        width: 300
        height: 100
        color: "yellowgreen"
        anchors.centerIn: parent

        Text{
            text: "Click Me"
            anchors.centerIn: parent
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
            Utilities1.greeting()
                console.log("Our ages combined yield : " + Utilities1.combineAges(33, 17))
                console.log("Difference of 50 andd 33: " + Utilities1.substract(50, 33))
            }
        }




    }
}
