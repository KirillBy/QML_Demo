import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.4
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("DynamicModel Demo")
    ListModel{
        id:listmodelID
        ListElement{
            name: "Kirill" ; surname: "Balanovich"
        }
        ListElement{
            name: "Donald" ; surname: "Trump"
        }
        ListElement{
            name: "Barak" ; surname: "Obama"
        }
        ListElement{
            name: "Bob"; surname: "Sponge"
        }
        ListElement{
            name: "Patrick" ; surname: "Star"
        }
    }

    ColumnLayout{
        anchors.fill: parent
        ListView{
            id: listviewID
            model: listmodelID
            delegate: delegateID
            Layout.fillWidth: true
            Layout.fillHeight: true

        }
        Button{
            text: "Add model"
            Layout.fillWidth: true
            onClicked: {
                listmodelID.append({"name": "Slava", "surname": "Boss" })
            }

        }
        Button{
            text: "Clear"
            Layout.fillWidth: true
            onClicked: {
                listmodelID.clear()
            }

        }
        Button{
            text: "Delete Item at index 2"
            Layout.fillWidth: true
            onClicked: {
                if(2 < listviewID.model.count){
                    listmodelID.remove(2,1)
                }else
                    console.log("index invalid")


            }

        }
        Button{
            text: "Set Item at index 2"
            Layout.fillWidth: true
            onClicked: {
             listmodelID.set(2, {"name": "John", "surname": "Doe" })
            }

        }
    }

    Component{
        id:delegateID
        Rectangle{
            id: rectID
            height: 50
            width: parent.width
            color: "yellowgreen"
            radius: 14
            border.width: 4
            border.color: black

            Text {
                id: textID
                text: name + " " + surname
                font.pointSize: 20
                anchors.centerIn: parent
            }
        }
    }
}
