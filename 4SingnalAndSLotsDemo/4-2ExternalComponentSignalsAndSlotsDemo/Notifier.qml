import QtQuick 2.12

Item {
    property alias  rectColor: notifierRectId.color
    property int counter: 0
    signal notify(string message)         // signal declare
    property Receiver signalTarget: null  // property for signal connection
    onSignalTargetChanged: {              // condition for sending signal
            notifierId.notify.connect(receiverId.recsig)
    }

    Rectangle{
        id:notifierRectId
        width: parent.width
        height: parent.height


        Text {
            id: textId
            text: counter
            anchors.centerIn: parent
            font.pointSize: 25
            font.bold: true

            }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                counter ++
                notify(counter) //signal fire
            }

        }
    }

}
