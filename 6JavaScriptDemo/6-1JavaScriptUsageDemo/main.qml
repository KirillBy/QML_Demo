import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{
        id: containtRect
        width: getHeight()
        height: 100
        color: x > 300 ? "red" : "green"   //JS in property binding

        function getHeight()  //Custom JS function
        {
            return height*2
        }

        //anchors.centerIn: parent
    }

    MouseArea{
        anchors.fill: parent
        drag.target: containtRect
        drag.axis: Drag.XAxis
        drag.minimumX: 0
        drag.maximumX:parent.width - containtRect.width
    }
}
