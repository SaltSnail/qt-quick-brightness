import QtQuick 2.12
import QtQuick.Controls 2.2

ApplicationWindow {
    width: controls.width
    height: controls.height
    visible: true
    title: qsTr("Quick Brightness")

    Column{
        id: controls
        Image {
            id: img
            source: "image://brightness/8lzcsg12z.jpg;"+sld.brightnessValue
        }
        Slider {
            id: sld
            width: img.width
            value: 0.95
            stepSize: 0.01
            property int brightnessValue: (value * 255 -127)
        }Text {
            width: img.width
            text: "<h1>Brightness:"+ sld.brightnessValue+"</h1>"
        }
    }
}
