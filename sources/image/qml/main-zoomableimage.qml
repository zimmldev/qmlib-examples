import QtQuick
import QtQuick.Layouts

import Image 1.0 as I
import Example 1.0

Window {
	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		I.ZoomableImage {
			anchors.fill: parent
			anchors.margins: 20
			source: "qrc:/qt/qml/ImageExample/images/sample.jpg"
		}
	}
}
