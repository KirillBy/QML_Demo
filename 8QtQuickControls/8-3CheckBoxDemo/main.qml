import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("CheckBox Demo")

    Column{

        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        CheckBox{
            text: "Option1"
            checked: true
            onCheckStateChanged: {
                if(checked === true)
                {
                    console.log("Option 1 is checked")
                }else{
                    console.log("Option 1 is unchecked")
                }
            }
        }
        CheckBox{
            text: "Option2"
        }
        CheckBox{
            text: "Option3"
            checked: false
            enabled: false
        }
    }
}
