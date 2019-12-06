import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Frame Demo")
    Frame{
        anchors.centerIn: parent
        ColumnLayout{
            Button{
                text: "Buttom 1"
            }
            Button{
                text: "Buttom 2"
            }
            Button{
                text: "Buttom 3"
            }
        }
    }
}
