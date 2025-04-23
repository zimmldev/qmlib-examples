import QtQuick
import QtQuick.Layouts

import Example 1.0
import Effects 1.0
import Panel 1.0 as P

Window {
	visible: true
	width: 640
	height: 480
	property alias invertMask: invertSwitch.checked

	P.Switch {
		id: invertSwitch
		text: "Invert"
	}

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Item {
			id: maskItem
			anchors.fill: parent

			Rectangle {
				height: parent.height / 2
				width: height
				radius: height / 2
				anchors.centerIn: parent
				color: "red"
			}
		}

		Item {
			anchors.fill: parent

			Image {
				anchors.fill: parent
				fillMode: Image.PreserveAspectFit
				antialiasing: true
				smooth: true
				source: "qrc:/qt/qml/EffectsExample/images/sample.jpg"
				layer.enabled: true
				layer.effect: Mask {
					invert: invertMask
					maskSource: maskItem
				}
			}
		}
	}
}
