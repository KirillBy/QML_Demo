import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

   Rectangle{
       id: containdRectId
       anchors.centerIn: parent
       width: 300
       height: 50
       color: "dodgerblue"
       focus: true

       Keys.onDigit1Pressed:{
           console.log("Key 1 specific pressed...")
           event.accepted = false // in that case both signals will fire
       }
       Keys.onDigit5Pressed: {
           event.accepted = false // in that case both signals will fire
           if(event.modifiers === Qt.ControlModifier)
               console.log("specific Ctrl + 5 pressed...")
           else
               console.log("Key 5 pressed...")
       }

       Keys.onPressed: {
           if(event.key === Qt.Key_1)
               console.log("Key 1 pressed...")
           if((event.key === Qt.Key_5) && (event.modifiers === Qt.ControlModifier))
               console.log("Ctrl + 5 pressed...")
       }


   }

}
