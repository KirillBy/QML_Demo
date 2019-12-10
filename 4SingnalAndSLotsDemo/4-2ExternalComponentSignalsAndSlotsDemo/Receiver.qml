import QtQuick 2.12

Item {
    property alias  rectColor: receiverRectId.color

    function recsig(message)  //signal receiver
    {
        console.log("received signal with number " +message)
        textId.text = message

    }

    Rectangle{
        id:receiverRectId
        width: parent.width
        height: parent.height


        Text {
            id: textId
            text: "0"
            anchors.centerIn: parent
            font.pointSize: 25
            font.bold: true

            }

    }

}
