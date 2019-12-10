import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Flow Demo")

    Flow{
        id:containerFlowId
        width: parent.width
        height: parent.height
         flow: Flow.TopToBottom
         layoutDirection: Qt.RightToLeft
         spacing: 20
        Rectangle{
            id:topLeftRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: qsTr("1")
            }
        }
        Rectangle{
            id:topCentrRectId
            width: 100
            height: 100
            color: "beige"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: qsTr("2")
            }
        }
        Rectangle{
            id:topRightRectId
            width: 100
            height: 100
            color: "dodgerblue"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: qsTr("3")
            }
        }
        Rectangle{
            id:centerLeftRectId
            width: 100
            height: 100
            color: "magenta"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: qsTr("4")
            }
        }

        Rectangle{
            id:centertRectId
            width: 100
            height: 100
            color: "red"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: qsTr("5")
            }
        }

        Rectangle{
            id:centerRightRectId
            width: 100
            height: 100
            color: "yellow"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: qsTr("6")
            }
        }
        Rectangle{
            id:bottomRightRectId
            width: 100
            height: 100
            color: "royalblue"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: qsTr("7")
            }
        }
        Rectangle{
            id:bottomCentrRectId
            width: 100
            height: 100
            color: "yellowgreen"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: qsTr("8")
            }
        }
        Rectangle{
            id:bottomLeftRectId
            width: 100
            height: 100
            color: "dodgerblue"
            Text {
                anchors.centerIn: parent
                color: "blue"
                font.pointSize: 30
                text: qsTr("9")
            }
        }
    }
}
