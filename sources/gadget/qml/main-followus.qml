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

		FollowUs {
			id: followUs
			model: ListModel {
				ListElement {
					name: "Instagram"
					url: "https://www.instagram.com/"
					icon: "qrc:/qt/qml/Gadget/icons/instagram.png"
				}
				ListElement {
					name: "FB"
					url: "https://www.facebook.com"
					icon: "qrc:/qt/qml/Gadget/icons/facebook.png"
				}
				ListElement {
					name: "LLiinnkkeeddIInn"
					url: "https://www.linkedin.com"
					icon: "qrc:/qt/qml/Gadget/icons/linkedin.png"
				}
			}
		}

		Button {
			type: Button.Type.Filled
			text: "open"

			anchors.centerIn: parent
			onClicked: {
				followUs.open()
			}
		}
	}
}

