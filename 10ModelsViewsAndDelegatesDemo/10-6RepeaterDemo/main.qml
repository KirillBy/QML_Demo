import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Repeater Demo")

    Flickable{
        contentHeight: columnID.height
        anchors.fill: parent
        Column{
            id: columnID
            width: parent.width
            spacing: 2
            Repeater{
                model: 10
                delegate: Rectangle{
                    color: "blue"
                    width: parent.width
                    height: 50
                    Text {
                        id: textID
                        text: modelData
                        anchors.centerIn: parent
                    }
                    MouseArea{
                        anchors.fill:parent
                        onClicked: {
                            console.log(modelData)
                        }
                    }
                }
            }

        }
    }
}
