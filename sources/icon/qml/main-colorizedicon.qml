import QtQuick
import QtQuick.Layouts

import Panel 1.0 as P
import Control 1.0
import Icon 1.0
import Example 1.0

Window {
	height: 300
	P.Switch {
		id: borderItem
		Layout.fillWidth: true
		text: "border"
	}
	P.Slider {
		id: borderWidthItem
		Layout.fillWidth: true
		text: "border width " + value
		from: 0
		to: 10
		value: 2
		enabled: borderItem.checked
	}
	P.Button {
		buttonText: "reset"
		Layout.fillWidth: true
		type: Button.Type.Outlined
		onClicked: {
			borderItem.checked = false
			borderWidthItem.value = 2
		}
	}

	RowLayout {
		Layout.fillWidth: true
		Layout.fillHeight: true

		Item {
			Layout.fillHeight: true
			Layout.fillWidth: true
			ColorizedIcon {
				anchors.centerIn: parent
				source: "qrc:/qt/qml/IconExample/icons/bug.png"
				color: pal.primary
				borderColor: pal.error
				borderWidth: borderWidthItem.value
				height: 80
				width: height
				border: borderItem.checked
			}
		}

		Item {
			Layout.fillHeight: true
			Layout.fillWidth: true
			ColorizedIcon {
				anchors.centerIn: parent
				source: "qrc:/qt/qml/IconExample/icons/bug.png"
				color: pal.primary
				borderColor: pal.error
				borderWidth: borderWidthItem.value
				border: borderItem.checked
			}
		}

		Item {
			Layout.fillHeight: true
			Layout.fillWidth: true
			ColorizedIcon {
				anchors.centerIn: parent
				source: "qrc:/qt/qml/IconExample/icons/bug.png"
				color: pal.primary
				borderColor: pal.error
				height: 20
				width: height
				border: borderItem.checked
				borderWidth: borderWidthItem.value
			}
		}
	}
}
