import QtQuick
import QtQuick.Layouts

import Image 1.0
import Container 1.0 as C
import Control 1.0
import Example 1.0
import Panel 1.0 as P

Window {
	height: 400
	width: 800

	P.Switch {
		id: emptySwitch
		text: "empty"
	}
	P.Switch {
		id: backgroundSwitch
		text: "background"
	}
	Rectangle {
		Layout.fillWidth: true
		Layout.fillHeight: true
		gradient: Gradient {
			orientation: Gradient.Horizontal
			GradientStop {
				position: 1
				color: pal.success
			}
			GradientStop {
				position: 0
				color: pal.progress
			}
		}
		ColumnLayout {
			anchors.fill: parent
			anchors.margins: 10

			C.ListView {
				Layout.fillWidth: true
				Layout.fillHeight: true
				hasBackground: backgroundSwitch.checked
				model: emptySwitch.checked ? 0 : 10
				empty: Text {
					text: "this is a custom empty element"
					color: pal.error
					font.bold: true
				}

				delegate: Rectangle {
					width: ListView.view.width
					height: 20
					color: pal.surfaceContainer
				}
			}
			C.ListView {
				Layout.fillWidth: true
				Layout.fillHeight: true
				hasBackground: backgroundSwitch.checked
				model: emptySwitch.checked ? 0 : 10
				emptyText: "this is the empty text"

				delegate: Rectangle {
					width: ListView.view.width
					height: 20
					color: pal.surfaceContainer
				}
			}
		}
	}
}

