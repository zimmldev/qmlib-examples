import QtQuick
import QtQuick.Layouts

import Example 1.0
import Effects 1.0

Window {
	width: 640
	height: 480

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Image {
			height: parent.height
			anchors.centerIn: parent
			fillMode: Image.PreserveAspectFit
			antialiasing: true
			smooth: true
			source: "qrc:/qt/qml/EffectsExample/images/sample.jpg"
			layer.enabled: true
			layer.effect: GreyScale {}
		}
	}
}
