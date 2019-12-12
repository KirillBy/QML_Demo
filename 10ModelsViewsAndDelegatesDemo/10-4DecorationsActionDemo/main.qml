import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("DecorationsActionDemo")

    ListModel{
        id: mlistmodelID
        ListElement{
            names: "Seth Moris"; company: "GOOGLE"
        }
        ListElement{
            names: "Miriam Katv"; company: "GOOGLE"
        }
        ListElement{
            names: "Eugene Fitzgerald"; company: "GOOGLE"
        }
        ListElement{
            names: "Kantkl Vikney"; company: "GOOGLE"
        }
        ListElement{
            names: "Mary Beige"; company: "TENCENT"
        }
        ListElement{
            names: "Bamba Pikt"; company: "TENCENT"
        }
        ListElement{
            names: "Jack May"; company: "APPLE"
        }
        ListElement{
            names: "Brad Mend"; company: "APPLE"
        }
        ListElement{
            names: "Jeffery Mor"; company: "BAIDU"
        }
        ListElement{
            names: "Pick Mo"; company: "BAIDU"
        }
    }
    ListView{
        id: mlistviewID
        anchors.fill: parent
        model: mlistmodelID
        delegate: delegateID
        section {
            property: "company"
            criteria: ViewSection.FullString
            delegate: Rectangle{
                id: sectionrectID
                width: parent.width
                height: 50
                color: "red"
                border.color: "yellowgreen"
                radius: 14

                Text {
                    id: sectiontextID
                    text: section
                    anchors.centerIn: parent
                    font.pointSize: 20
                }

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        console.log(section)
                    }
                }
            }
        }
    }
    Component{
        id: delegateID
        Rectangle{
            id: rectID
            width: parent.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 14

            Text {
                id: textID
                text: names
                anchors.centerIn: parent
                font.pointSize: 20
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log(names )
                }
            }
        }
    }

}
