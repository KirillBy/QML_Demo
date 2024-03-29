import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("RangeSlider Demo")
    Row{
        spacing: 40
        width: parent.width

        RangeSlider{
            from: 1
            to: 100
            first.value: 25
            second.value: 75
            orientation: Qt.Vertical
            first.onValueChanged: {
                console.log("First value changed to " + first.value)
            }
            second.onValueChanged: {
                console.log("Second value changed to " + second.value)
            }
        }
    }


}
