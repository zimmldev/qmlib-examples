import QtQuick
import QtQuick.Layouts

import Image 1.0
import Example 1.0

Window {
	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Column {
			anchors.centerIn: parent
			spacing: 5

			Avatar {
				text: "aa"
			}

			Avatar {
				source: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}

			Avatar {
				text: "aa"
				source: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}

			Avatar {
				text: "aa"
				source: "qrc:/qt/qml/Control/icons/add.png"
			}

			Avatar {
				text: "aa"
				height: 100
			}
		}
	}
}
