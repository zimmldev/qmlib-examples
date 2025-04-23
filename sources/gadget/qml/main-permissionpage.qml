import QtQuick
import QtQuick.Layouts

import Gadget 1.0
import Control 1.0
import Example 1.0
import Icon 1.0

Window {
	width: 640
	height: 480

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true

		Column {
			anchors.centerIn: parent
			Button {
				type: Button.Type.Filled
				text: "open"
				anchors.horizontalCenter: parent.horizontalCenter

				onClicked: {
					dialog.open()
				}
			}
		}

		PermissionPage {
			id: dialog
			title: "the title of the permission"
			detail: "the content of the permission. This text can be short or very long. Let's try to make a long text to validate wrapping works as expected."

			ColorizedIcon {
				height: parent.width / 4
				source: "qrc:qt/qml/Gadget/icons/camera.png"
				anchors.horizontalCenter: parent.horizontalCenter
				color: pal.onSurface
			}

			ColorizedIcon {
				height: parent.width / 4
				source: "qrc:qt/qml/Gadget/icons/camera.png"
				anchors.horizontalCenter: parent.horizontalCenter
				color: pal.onSurface
			}
		}
	}
}

