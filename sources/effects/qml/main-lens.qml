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

		Item {
			id: image
			anchors.fill: parent

			Image {
				id: imageSource
				height: parent.height
				anchors.centerIn: parent
				fillMode: Image.PreserveAspectFit
				antialiasing: true
				smooth: true
				source: "qrc:/qt/qml/EffectsExample/images/sample.jpg"
			}
			visible: false
		}

		Item {
			anchors.fill: parent

			Lens {
				anchors.fill: parent
				source: image
			}
		}
	}
}
