import QtQuick 2.0

FocusScope {
    width: containerRectID.width
    height: containerRectID.height
    property alias color: containerRectID.color
    Rectangle{
        id: containerRectID
        anchors.centerIn: parent
        width: 300
        height: 100
        color: "yellowgreen"
        focus: true
        Text {
            id: rectText
            anchors.centerIn: parent
            text: qsTr("default")
        }
      Keys.onPressed: {
          if(event.key === Qt.Key_1)
              rectText.text = "key 1 pressed..."
          else if(event.key === Qt.Key_2)
              rectText.text = "key 2 pressed..."
          else
              rectText.text = "anouther key pressed " + event.key

      }
    }
}
