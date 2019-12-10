import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Main Window")


    Notifier{
     id: notifierId
     rectColor: "blue"
     counter: 0
     anchors.right: parent.right
     anchors.top: parent.top
     height: parent.height/2
     width: parent.width/2
     signalTarget: receiverId  //signal connect condition done
    }
    Receiver{
     id: receiverId
     rectColor: "green"
     anchors.left: parent.left
     anchors.bottom: parent.bottom
     height: parent.height/2
     width: parent.width/2
    }

}
