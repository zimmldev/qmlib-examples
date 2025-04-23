import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 300
	width: 200

	Item {
		Layout.fillWidth: true
	}

	MoreButton {
		Layout.alignment: Qt.AlignHCenter
		actions: [
			MenuAction {
				text: "action1"
			},
			MenuAction {
				text: "action2"
				visible: false
			},
			MenuAction {
				text: "action3"
				enabled: false
			}
		]
	}

	MoreButton {
		Layout.alignment: Qt.AlignHCenter
		type: Button.Type.Outlined
		actions: [
			MenuAction {
				text: "action1"
			},
			MenuAction {
				text: "action2"
				visible: false
			},
			MenuAction {
				text: "action3"
				enabled: false
			}
		]
	}

	MoreButton {
		Layout.alignment: Qt.AlignHCenter
		type: Button.Type.Filled
		actions: [
			MenuAction {
				text: "action1"
			},
			MenuAction {
				text: "action2"
				visible: false
			},
			MenuAction {
				text: "action3"
				enabled: false
			}
		]
	}
}
