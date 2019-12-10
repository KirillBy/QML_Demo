import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("MessageDialog Demo")
    Button{
        text: "Push me"
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
        messagedialogID.open()
        }

    }
    MessageDialog{
        id: messagedialogID
        title: "May I have your attention, please"
        text: "It's so cool that you using Qt Quick."
        standardButtons: StandardButton.Ok | StandardButton.Close
        onAccepted: {
            console.log("Agreed...")
    }
        onRejected: {
            console.log("Regected...")
        }
}
}
