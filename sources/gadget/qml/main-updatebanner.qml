import QtQuick
import QtQuick.Layouts

import Gadget 1.0
import Example 1.0

Window {
	width: 640
	height: 480

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Column {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.verticalCenter: parent.verticalCenter
			spacing: 10

			UpdateBanner {
				visible: true
			}

			UpdateBanner {
				visible: true
				text: "Inject a custom text <br> which is on two or <br> more lines"
			}

			UpdateBanner {
				visible: false
			}
		}
	}
}

