import QtQuick
import QtQuick.Layouts

import Image 1.0 as I
import Example 1.0

Window {
	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		I.Image {
			id: image
			anchors.fill: parent
			source: "qrc:/qt/qml/ImageExample/images/sample.jpg"

			I.Handle {
				position: Qt.point(parent.width - 20,
								   parent.height - 20)
				source: image
			}
		}
	}
}
