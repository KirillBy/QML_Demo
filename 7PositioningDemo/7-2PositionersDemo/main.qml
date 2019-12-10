import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Positioners")
    Rectangle{
        id: conteinerRectId
        width: 300
        height: width
        border.color: "black"
        anchors.centerIn: parent

        Grid{
            horizontalItemAlignment: Grid.AlignRight
            verticalItemAlignment: Grid.AlignCenter
           columns: 3
           //spacing: 10
           //rowSpacing: 10
           //columnSpacing: 10

           LayoutMirroring.enabled: true
           LayoutMirroring.childrenInherit: true

            Rectangle{
                id: topLeftRectId
                width: 100
                height: width
                color: "magenta"

            }

            Rectangle{
                id: topCenterRectId
                width: 60
                height: width
                color: "yellowgreen"

                Image{
                    anchors.centerIn: parent
                    width: 100
                    height: width
                    source: "images/123.jpeg"
                }


            }


            Rectangle{
                id: topRightRectId
                width: 100
                height: width
                color: "dodgerblue"


            }

            Rectangle{
                id: centerLeftRectId
                width: 100
                height: width
                color: "red"


            }
            Rectangle{
                id: centerCenterRectId
                width: 100
                height: width
                color: "green"



            }
            Rectangle{
                id: centerRightRectId
                width: 100
                height: width
                color: "blue"


            }
            Rectangle{
                id: bottomLeftRectId
                width: 100
                height: width
                color: "royalblue"



            }

            Rectangle{
                id: bottomCenterRectId
                width: 100
                height: width
                color: "yellow"

            }
            Rectangle{
                id: bottomRightRectId
                width: 100
                height: width
                color: "pink"


            }
        }
    }
}
