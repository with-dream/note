import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.3


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property int menuHeight: 30

    Column {
        anchors.fill:parent;

        Rectangle {
            width: parent.width
            height: menuHeight
            color: "#303134"
        }

        Rectangle {
            width: parent.width
            height: 1
            color: "#707070"
        }

        SplitView{
            anchors.fill:parent;
            anchors.topMargin: menuHeight + 1;
            orientation: Qt.Horizontal;
            Rectangle{
                id:rect1;
                width:100;
                color:"#303134";
            }
            Rectangle{
                id:rect2;
                width:100;
                Layout.minimumWidth: 50;
                color:"#1E1F22";
            }
            Rectangle{
                id:rect3;
                Layout.fillWidth: true;
                color:"#303134";
            }
        }
    }


}
