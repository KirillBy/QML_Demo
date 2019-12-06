import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow  {
    visible: true
    width: 640
    height: 480
    title: qsTr("Application Window Demo")

    menuBar: MenuBar {
        Menu{
            title: qsTr("File")
            Action{
                id: newaction
                text: qsTr("New")
                icon.source: "image/1234.jpg"
                onTriggered: {console.log("Clicked on new") }
            }
            Action{
                id: openaction
                text: qsTr("Open")
                icon.source: "image/1234.jpg"
                onTriggered: {console.log("Clicked on open") }
            }
            Action{
                id: saveaction
                text: qsTr("Save")
                icon.source: "image/1234.jpg"
                onTriggered: {console.log("Clicked on save") }
            }
            Action{
                id: saveasaction
                text: qsTr("Save as")
                icon.source: "image/1234.jpg"
                onTriggered: {console.log("Clicked on save as") }
            }
            MenuSeparator{}
            Action{
                id: quitasaction
                text: qsTr("Quit")
                icon.source: "image/1234.jpg"
                onTriggered: Qt.quit()
            }
        }
        Menu
        {
            title: qsTr("Help")
            Action{
                id: helpaction
                text: qsTr("Help")
                icon.source: "image/1234.jpg"
                onTriggered: {console.log("Clicked on help") }
            }
        }
}

        header: ToolBar {
         Row{
             anchors.fill: parent
             ToolButton{
                 action: newaction
             }
             ToolButton{
                 action: saveaction
             }
             ToolButton{
                 action: saveasaction
             }
             ToolButton{
                 action: quitasaction
             }
         }
        }

        footer: TabBar {
            id: tabbarId
            width: parent.width
            TabButton{
                text: qsTr("Page 1")
                onClicked: {
                    stackviewId.pop()
                    stackviewId.push("qrc:/Page1.qml")
                }
            }
            TabButton{
                text: qsTr("Page 2")
                onClicked: {
                    stackviewId.pop()
                    stackviewId.push("qrc:/Page2.qml")
                }
            }
            TabButton{
                text: qsTr("Page 3")
                onClicked: {
                    stackviewId.pop()
                    stackviewId.push("qrc:/Page3.qml")
                }
            }
        }

        StackView {
            id:stackviewId
            anchors.fill: parent
            initialItem: Page1 {

            }
        }


}
