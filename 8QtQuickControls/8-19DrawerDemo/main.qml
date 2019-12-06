import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: rootId
    visible: true
    width: 360
    height: 520
    title: qsTr("Drawer Demo")
    header: ToolBar{
        height: 50
        background: Rectangle{
            color: "mintcream"
        }
        RowLayout{
            spacing: 20
            anchors.fill: parent

            ToolButton{
                background: Rectangle{
                    color: "mintcream"
                }
                icon.source: "image/icon3.png"
                onClicked: {
                    console.log("Tool Button clicked")//open drawer
                    drawerId.open()
                }
            }

            Label{
                text: "drawer demo"
                font.pixelSize: 20
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                Layout.fillWidth: true
            }
        }
    }

    Drawer{
        id: drawerId
        width: Math.min(rootId.width, rootId.height) * 2/3
        height: rootId.width
        interactive: true
        ColumnLayout{
            spacing: 0
            width: parent.width

            Button{
                width: parent.width
                height: 50
                text: "Item1"
                font.pointSize: 20
                background: Rectangle{
                    color: "beige"
                }
                Layout.fillWidth: true
                onClicked: {
                    console.log("Clicked on Item1")
                    contentRectId.color = "blue"
                    drawerId.close()
                }
            }
            Button{
                width: parent.width
                height: 50
                text: "Item2"
                font.pointSize: 20
                background: Rectangle{
                    color: "yellowgreen"
                }
                Layout.fillWidth: true
                onClicked: {
                    console.log("Clicked on Item2")
                    contentRectId.color = "green"
                    drawerId.close()
                }
            }
            Button{
                width: parent.width
                height: 50
                text: "Item3"
                font.pointSize: 20
                background: Rectangle{
                    color: "dodgerblue"
                }
                Layout.fillWidth: true
                onClicked: {
                    console.log("Clicked on Item3")
                    contentRectId.color = "yellow"
                    drawerId.close()
                }
            }
        }
    }
    Rectangle{
        id:contentRectId
        anchors.fill: parent
        color: "lightsteelblue"
    }
}
