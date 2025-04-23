import QtQuick
import QtQuick.Layouts

import Image 1.0 as I
import Example 1.0

Window {
	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		I.Image {
			anchors.centerIn: parent
			height: 100
			width: 100
			source: "qrc:/qt/qml/ImageExample/images/sample.jpg"
		}
	}
}
