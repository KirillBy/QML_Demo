import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Flicable and ScrollBar Demo")

    Flickable{
        width: parent.width
        height: parent.height
        contentHeight: mColumnId.implicitHeight
        ScrollBar.vertical: ScrollBar{}
        Column{
            id: mColumnId
            anchors.fill: parent
            Rectangle{
                color: "Red"
                width: parent.width
                height: 200
                Text{
                    anchors.centerIn: parent
                    text: "Element 1"
                    font.pointSize: 30
                    color: "white"
                }
            }
                Rectangle{
                    color: "Blue"
                    width: parent.width
                    height: 200
                    Text{
                        anchors.centerIn: parent
                        text: "Element 2"
                        font.pointSize: 30
                        color: "white"
                    }
                }
                 Rectangle{
                        color: "Yellow"
                        width: parent.width
                        height: 200
                        Text{
                            anchors.centerIn: parent
                            text: "Element 3"
                            font.pointSize: 30
                            color: "white"
                        }
                    }
                        Rectangle{
                            color: "Magenta"
                            width: parent.width
                            height: 200
                            Text{
                                anchors.centerIn: parent
                                text: "Element 4"
                                font.pointSize: 30
                                color: "white"
                            }
                        }
                            Rectangle{
                                color: "pink"
                                width: parent.width
                                height: 200
                                Text{
                                    anchors.centerIn: parent
                                    text: "Element 5"
                                    font.pointSize: 30
                                    color: "white"
                                }
                            }
                                Rectangle{
                                    color: "royal blue"
                                    width: parent.width
                                    height: 200
                                    Text{
                                        anchors.centerIn: parent
                                        text: "Element 6"
                                        font.pointSize: 30
                                        color: "white"
                                    }
                                }
                                    Rectangle{
                                        color: "green"
                                        width: parent.width
                                        height: 200
                                        Text{
                                            anchors.centerIn: parent
                                            text: "Element 1"
                                            font.pointSize: 30
                                            color: "white"
                                        }
                                    }

        }
    }
}
