import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row{
        anchors.centerIn: parent
        Rectangle{
            id: redrectangle
            width: 100
            height: 100
            color: "red"
            focus: true
            border.color: "black"
            border.width: 3
            Keys.onDigit5Pressed:
            {
                console.log("Red rectangle")
            }
            KeyNavigation.right: greenrectangle
            onFocusChanged: {
                if(focus === true)
                    border.width = 10
                else
                    border.width = 3
            }
        }
        Rectangle{
            id: greenrectangle
            width: 100
            height: 100
            color: "green"
            border.color: "black"
            border.width: 3
            Keys.onDigit5Pressed:
            {
                console.log("Green rectangle")
            }
             KeyNavigation.left: redrectangle
             onFocusChanged: {
                 if(focus === true)
                     border.width = 10
                 else
                     border.width = 3
             }
        }
    }
}
