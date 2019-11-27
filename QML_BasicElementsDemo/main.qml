import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
Window {
    visible: true
    width: buttoms.width*3
    height: buttoms.height
    title: qsTr("Basic Elements Demo")

    Column{
        id:buttoms
        CheckBox{text: "Check box"}
        DelayButton{text: "Delay button"}
        RadioButton{text: "Radio button 1"}
        RadioButton{text: "Radio button 2"}
        RadioButton{text: "Radio button 3"}
        RoundButton{text: "Round button"}
        Switch{text: "switch"}
        ToolButton{text: "Tool button"}
        Button{text: "Quit"; onClicked: Qt.quit()}

    }
}
