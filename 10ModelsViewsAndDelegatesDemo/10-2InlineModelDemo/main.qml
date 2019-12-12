import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("InlineModels Demo")
    ListView{
        id:mlistviewID
        anchors.fill: parent
        model: ["January" , "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        //delegate: delegateID
        delegate:         Rectangle{
            id: rectID
            width: parent.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 10

            Text {
                id: textID
                text: modelData
                anchors.centerIn: parent
                font.pointSize: 20
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log(modelData )
                }
            }
        }
    }
}
