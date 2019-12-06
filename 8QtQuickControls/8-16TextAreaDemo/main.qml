import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("TextArea Demo")

    Column{
        spacing: 40
        width: parent.width

        Label{
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "TextArea is a multi-line text editor."
        }
        ScrollView{
            anchors.horizontalCenter: parent.horizontalCenter
            width: 600
            height: 150
            TextArea{
                id: textareaId
                background: Rectangle{
                    color: "#fff3f3"
                }


                color: "black"
                wrapMode: TextArea.Wrap
                placeholderText: "Type here"
                //text: "hsdjcqqxzxsdflkffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeesdfddddddddddddddddddddddddddddddddeeeppppppppppppppppppppppppppppppppppppppppppppppppppp"

            }
        }
        Button{
            text: "Submit"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                console.log(textareaId.text)
            }
        }


    }
}
