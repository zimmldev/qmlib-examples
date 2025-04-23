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
		
		CameraPermission {
			id: dialog
		}
	}
}

