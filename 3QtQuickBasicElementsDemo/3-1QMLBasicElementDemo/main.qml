import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Basic Elements Demo")
    Item {
        id: containerItemId
        x: 120; y:50
        width: 300
        height: 300
        Rectangle{
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle{
            x: 0
            y: 10
            width: 50
            height: 50
            color: "red"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x:60
            y:10
            width: 50
            height: 50
            color: "green"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle{
            x:120
            y:10
            width: 50
            height: 50
            color: "blue"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
            }
        }
        Rectangle{
            x:180
            y:10
            width: 50
            height: 50
            color: "yellowgreen"
            MouseArea{
                anchors.fill: parent
                onClicked: {

                }
             }
        }
        Text {
            x:100
            y:100
            id: mText

            text: qsTr("This our text")
           // font.family: "Helvetica";font.pointSize: 20; font.bold: true
            font{
                family: "Helvetica"
                pointSize: 20
                bold: true
            }
        }
        Image {
            x: 10
            y: 150
            width: 100
            height: 100
            source: "image/123.jpeg"
        }
    }
}
