import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Data types demo")
    property string mString: "Hello QML"
    property  int  mInt: 45
    property bool isFemale: true
    property double mDouble : 77.5
    property url mUrl: "http://www.blikoontech.com"

        property var aNumber: 100
        property var aBool: false
        property var aString: "Hello world!"
        property var anotherString: String("#FF008800")
        property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
        property var aRect: Qt.rect(17, 56, 46, 10)
        property var aPoint: Qt.point(10, 10)
        property var aSize: Qt.size(10, 10)
        property var aVector3d: Qt.vector3d(100, 100, 100)
        property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
        property var anObject: { "foo": 10, "bar": 20 }
        property var aFunction: (function() { return "one"; })


    Rectangle{
        width: 200
        height: 100 + mInt
        anchors.centerIn :   parent
        color: aColor

        Text {
            id: mTextId
            color: "#ec4949"
            anchors.centerIn: parent
            text: mString
            font.bold: isFemale?true:false
        }
    }
    Component.onCompleted: {
        console.log("The value of Mstring is: " + mString)
        console.log("The value of MInt is: " + mInt)
        if(isFemale)
            console.log("You may wear a dress")
        else
            console.log("You may wear a suit")
        console.log("The value of MDpuble is: " + mDouble)
        console.log("The value of MUrl is: " + mUrl)
        console.log("anouther string" + anotherString)
        console.log("rect" + aRect)
        console.log("array " + anArray)
    }

}
