import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Page component and TabBar Demo")

    Page{
        id: pageId
        anchors.fill: parent
        header: Label{
            text:"Page and TabBar Demo"
            horizontalAlignment: Text.AlignHCenter
        }

        SwipeView{
            id: swipeViewId
            anchors.fill: parent
            currentIndex: tabBarId.currentIndex
            Image{
                id: image1
                source: "https://images.unsplash.com/photo-1520974735194-9e0ce82759fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
            }
            Image{
                id: image2
                source: "https://images.unsplash.com/photo-1474447976065-67d23accb1e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
            }
            Image{
                id: image3
                source: "https://images.unsplash.com/photo-1498814117408-e396f5507073?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
            }
        }
        footer: TabBar{
            id: tabBarId
            currentIndex: swipeViewId.currentIndex


        TabButton{
            text: "First"
        }
        TabButton{
            text: "Second"
        }
        TabButton{
            text: "Third"
        }
    }

}
}
