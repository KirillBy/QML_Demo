import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Ancors Demo")
    Rectangle{
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
        anchors.centerIn: parent

        Rectangle{
            id: topLeftRectId
            width: 100
            height: width
            color: "magenta"

        }

        Rectangle{
            id: topCenterRectId
            width: 100
            height: width
            color: "yellowgreen"
            anchors.left: topLeftRectId.right

        }


        Rectangle{
            id: topRightRectId
            width: 100
            height: width
            color: "dodgerblue"
            anchors.left: topCenterRectId.right

        }

        Rectangle{
            id: centerLeftRectId
            width: 100
            height: width
            color: "red"
            anchors.top: topLeftRectId.bottom

        }
        Rectangle{
            id: centerCenterRectId
            width: 100
            height: width
            color: "green"
            //anchors.top: topCenterRectId.bottom
            //anchors.left: centerLeftRectId.right
            anchors.horizontalCenter:parent.horizontalCenter
            anchors.verticalCenter:parent.verticalCenter
            //anchors.topMargin: 10  //To have margin working you have to set the anchor property on this that anchor line
            anchors.horizontalCenterOffset: 10
            anchors.verticalCenterOffset: 10
        }
        Rectangle{
            id: centerRightRectId
            width: 100
            height: width
            color: "blue"
            anchors.top: topRightRectId.bottom
            anchors.left: centerCenterRectId.right

        }
        Rectangle{
            id: bottomLeftRectId
            width: 100
            height: width
            color: "royalblue"
            anchors.top: centerLeftRectId.bottom


        }

        Rectangle{
            id: bottomCenterRectId
            width: 100
            height: width
            color: "yellow"
            anchors.top: centerCenterRectId.bottom
            anchors.left: bottomLeftRectId.right

        }
        Rectangle{
            id: bottomRightRectId
            width: 100
            height: width
            color: "pink"
            anchors.top: centerRightRectId.bottom
            anchors.left: bottomCenterRectId.right

        }
    }
    Rectangle{
        id: siblingRect
        width:200
        height: 200
        color: "black"
        anchors.right: containerRectId.left

    }
}
