import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Text Input Demo")
    Row{
        x: 10; y:10; spacing: 30
        Rectangle{
            color:"yellowgreen"
            border.color: "black"
            width: firstRectText.implicitWidth + 20
            height: firstRectText.implicitHeight +20
            Text {
                anchors.centerIn: parent
                id: firstRectText
                text: qsTr("Enter a name: ")
            }

        }
        Rectangle{
            color:"yellowgreen"
            width: nameInputText.implicitWidth + 20
            height: nameInputText.implicitHeight +20
            radius: 50
            TextInput{
                id: nameInputText
                focus: true
                anchors.centerIn: parent
                text: "Enter your name..."
                onEditingFinished: {
                    console.log("Your name is " + nameInputText.text)
                }
            }

        }

    }



    Row{
        x: 10; y:70; spacing: 30
        Rectangle{
            color:"yellowgreen"
            border.color: "black"
            width: secondRectText.implicitWidth + 20
            height: secondRectText.implicitHeight +20
            Text {
                anchors.centerIn: parent
                id: secondRectText
                text: qsTr("Enter a surname: ")
            }

        }
        Rectangle{
            color:"yellowgreen"
            width: surnameInputText.implicitWidth + 20
            height: surnameInputText.implicitHeight +20
            radius: 50
            TextInput{
                id: surnameInputText
                focus: true
                anchors.centerIn: parent
                text: "Enter your surname..."
                onEditingFinished: {
                    console.log("Your surname is " + surnameInputText.text)
                }
            }

        }

    }
}
