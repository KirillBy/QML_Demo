import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Text Edit demo")
Flickable{
        id: flickID
        height: 300
        anchors.centerIn: parent
        width: texteditID.width
        contentHeight: texteditID.implicitHeight
        clip: true
    TextEdit{
        id: texteditID
        width: 240
        focus: true
        textFormat: TextEdit.RichText
        wrapMode: TextEdit.Wrap

        font.pointSize: 24
        color: "black"
        font.family: "TimesNewRoman"
        text: "<strong>Because</strong> we want to use our server locally, we set "+
              "our domain name \r to be <font color = 'red' >localhost </font>. If we had set it up "+
              " to\n be something  else, we would have to go mess with"+
              " the host files to resolve whatever we put in here to"+
              " a recognizable network address. "+
              "ustleaveinlocalhostitisgoodenoughforourlocalusepurposes."+
              " Leave the rest to defaults and hit continue. You are then"+
              " given a choice for the database you want to use"
    }

}
}
