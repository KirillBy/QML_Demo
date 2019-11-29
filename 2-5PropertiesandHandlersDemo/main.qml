import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("properties and handlers demo")

    property  string mFirstname: "Daniel"

    onMFirstnameChanged: {
        console.log("The first name changed to " +mFirstname)
    }

    Rectangle
    {
        width: 300
        height:100
        color: "greenyellow"
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
            mFirstname = "Kirill"
            }
        }
      Component.onCompleted: {
          console.log("The firstname is: " + mFirstname)
      }
    }
}
