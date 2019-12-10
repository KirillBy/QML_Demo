import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    function min(a, b)
    {
        return Math.min(a,b)
    }

    Rectangle{
        id:mRectId
        width: min(500, 400)
        height: 100
        anchors.centerIn: parent
        color: "blue"
    }
    MouseArea{
        id: mMouseAreaId
        anchors.fill: parent
        function sayMessage()
        {
            console.log("hello there")
        }

        onClicked: {
            sayMessage()
        }
    }

    Component.onCompleted: {
        console.log("width of rect is" + min(500, 400))
        mMouseAreaId.sayMessage() //using outside function only with name of element
    }
}
