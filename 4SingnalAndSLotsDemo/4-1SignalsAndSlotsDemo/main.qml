import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Signals and slots demo")
    property int increment: 50
    Rectangle{
        id: rectangleId
        width: 200 + increment
        height: 300
        color: "red"
        signal greet(string message) //Declare Signal

        onGreet: {
            console.log("On Greet: greet signal emited")

        }

        function muGreeting(mMessage)
        {
            console.log("my Greeting slot called. The parametr " + mMessage)
            increment +=50
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
               rectangleId.greet("Hello there") //Fire the signal
        }
    }
        Component.onCompleted: {
            rectangleId.greet.connect(muGreeting)
        }
    }
}
