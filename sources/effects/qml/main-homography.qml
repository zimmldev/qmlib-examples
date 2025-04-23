import QtQuick
import QtQuick.Layouts
import QtQuick.Shapes

import Example 1.0
import Effects 1.0
import Image 1.0 as I

Window {
	width: 800
	height: 1500

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Item {
			anchors.fill: parent
			anchors.margins: 20

			Image {
				anchors.fill: parent
				fillMode: Image.PreserveAspectCrop
				antialiasing: true
				smooth: true
				source: "qrc:/qt/qml/EffectsExample/images/sample.jpg"
				layer.enabled: true
				layer.effect: Homography {
					topLeft: handles.topLeft
					topRight: handles.topRight
					bottomRight: handles.bottomRight
					bottomLeft: handles.bottomLeft
				}
			}
		}
	}
	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Item {
			anchors.fill: parent
			anchors.margins: 20

			Image {
				id: image
				anchors.fill: parent
				fillMode: Image.PreserveAspectCrop
				antialiasing: true
				smooth: true
				source: "qrc:/qt/qml/EffectsExample/images/sample.jpg"
			}

			I.Handles {
				id: handles
				source: image
				bottomLeftInit: Qt.point(1 * image.width / 4,
										 3 * image.height / 4)
				bottomRightInit: Qt.point(3 * image.width / 4,
										  3 * image.height / 4)
				topRightInit: Qt.point(3 * image.width / 4,
									   1 * image.height / 4)
				topLeftInit: Qt.point(1 * image.width / 4,
									  1 * image.height / 4)
			}
		}
	}
}
