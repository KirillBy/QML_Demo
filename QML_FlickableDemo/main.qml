import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Flickable Demo")

    Flickable{
        id: view
        width: parent.width
        height: parent.height
        contentHeight: parent.height
        contentWidth: parent.width


        Repeater
        {
            model: ["red", "yellow", "green","blue", "black"]
            Rectangle{
                color: modelData
                width: view.contentWidth - index*100
                height: view.contentHeight - index*100
                x: view.contentWidth / 2 - width/2
                y: view.contentHeight / 2 - height/2
            }
        }

    }
}
