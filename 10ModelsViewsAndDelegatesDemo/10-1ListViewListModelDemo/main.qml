import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ListView and ListModel Demo")
    ListView{
        id:mlistviewID
        anchors.fill: parent
        model: listmodelID
        //delegate: delegateID
        delegate:         Rectangle{
            id: rectID
            width: parent.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 10

            Text {
                id: textID
                text: country + ": " + capital
                anchors.centerIn: parent
                font.pointSize: 20
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log(capital + " is the capital of " + country)
                }
            }
        }
    }

    ListModel{
        id: listmodelID
        ListElement{
            country: "Rwanda"; capital: "Kigali"
        }
        ListElement{
            country: "China"; capital: "Beiging"
        }
        ListElement{
            country: "Japan"; capital: "Tokio"
        }
        ListElement{
            country: "Nigeria"; capital: "Dakar"
        }
        ListElement{
            country: "Ghana"; capital: "Accra"
        }
        ListElement{
            country: "France"; capital: "Paris"
        }
        ListElement{
            country: "India"; capital: "New Delhi"
        }
        ListElement{
            country: "Uganda"; capital: "Kampala"
        }
    }

   /* Component{
        id: delegateID
        Rectangle{
            id: rectID
            width: parent.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 10

            Text {
                id: textID
                text: country + ": " + capital
                anchors.centerIn: parent
                font.pointSize: 20
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log(capital + " is the capital of " + country)
                }
            }
        }
    }*/
}
