import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Qt Global Object Demo")
    property  var fonts: Qt.fontFamilies()
    Rectangle{
        width: 300
        height: 100
        color: "red"
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                //Quit the Application
                console.log("Qt quiting")
                Qt.quit()
                //List of avaliables fonts
                for(var i =0; i < fonts.length; i++){
                    console.log("[" + i + "] : " + fonts[i])
                }
                //Hash a string
                var mName = "Kirill Balanovich"
                var mNameHash = Qt.md5(mName)
                console.log("the hash of name " + mNameHash)

                //Open Url externally
                Qt.openUrlExternally("http://www.blikoontech.com")

                //Open local files on Component
                Qt.openUrlExternally("file:///home/kirill/Pictures/123.jpeg")

                //Capture platform info
                console.log("Current platform is:" + Qt.platform.os)
            }
        }
    }
}
