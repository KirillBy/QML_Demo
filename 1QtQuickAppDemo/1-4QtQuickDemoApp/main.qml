import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Text {
        id: name
        anchors.centerIn: parent;
        text: "Hello QML";
        color: "red";
        font.pointSize: 20
    }
    Component.onCompleted: {
        console.log("Component loaded");
    }
}
