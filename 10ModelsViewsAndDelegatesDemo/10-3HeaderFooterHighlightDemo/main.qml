import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Header Footer Highlight Demo")
    ListView{
        id:mlistviewID
        anchors.fill: parent
        header: headerID
        footer: Rectangle{
            width: parent.width
            height: 50
            color: "dodgerblue"
        }
        highlight: Rectangle{
            width: parent.width
            border.color: "yellowgreen"
            radius: 14
            color: "blue"
            z:3
            opacity: 0.1
        }

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
                    console.log(modelData + "is the " + (index+1)+ " month")
                    mlistviewID.currentIndex = index
                }
            }
        }
    }

    Component{
        id: headerID
        Rectangle{
            id: headerrectID
            width: parent.width
            height: 50
            color: "yellowgreen"
            border.color: "#9EDDF2"
            border.width: 2


            Text {
                id: textID
                text: "Months"
                anchors.centerIn: parent
                font.pointSize: 20
            }
        }
    }
}
