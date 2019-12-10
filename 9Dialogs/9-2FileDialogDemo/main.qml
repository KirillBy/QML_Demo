import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("FileDialog Demo")
    Column{
        spacing: 20
        anchors.centerIn: parent
        Button{
            text: "choose file or folder"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
            filedialogId.open()
            }

        }
        Text {
            id: textid
            text: qsTr("user has't chosen yet")
            wrapMode: textid.Wrap
        }
        FileDialog{
            id: filedialogId
            title: "choose file or folder"
           // selectFolder: true  //only folder can be choisen
            selectMultiple: true //to choise a few files
            onAccepted: {
                textid.text = fileUrls[1] // will show second file name
                for(var i = 0; i < fileUrls.length; i++)
                console.log( fileUrls[i])
            }
            onRejected: {
                console.log("regected...")
            }
        }
    }
}
