import QtQuick
import QtQuick.Layouts

import Image 1.0 as I
import Example 1.0

Window {
	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		I.AvatarSelector {
			id: image1
			property string newImage: ""

			anchors.centerIn: parent
			height: 100
			width: 100

			Timer {
				id: timer1
				interval: 2000
				onTriggered: {
					image1.source = image1.newImage
				}
			}

			onSelected: function(url) {
				image1.newImage = url
				timer1.start()
			}
		}
	}

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		I.AvatarSelector {
			id: image2
			property string newImage: ""
			anchors.centerIn: parent
			height: 100
			width: 100
			source: "qrc:/qt/qml/ImageExample/images/sample.jpg"

			Timer {
				id: timer2
				interval: 2000
				onTriggered: {
					image2.source = image2.newImage
				}
			}

			onSelected: function(url) {
				image2.newImage = url
				timer2.start()
			}
		}
	}
}
