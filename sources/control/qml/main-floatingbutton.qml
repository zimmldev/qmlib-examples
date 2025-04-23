import QtQuick
import QtQuick.Layouts

import Control 1.0
import Example 1.0

Window {
	height: 700
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		FloatingButton {
			source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
		}
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		FloatingButton {
			type: FloatingButton.Type.Surface
			source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
		}
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		FloatingButton {
			type: FloatingButton.Type.Secondary
			source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
		}
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		FloatingButton {
			type: FloatingButton.Type.Tertiary
			source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
		}
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		FloatingButton {
			source: "qrc:/qt/qml/ControlExample/icons/triangle-stroke.png"
			text: "triangle"
		}
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		FloatingButton {
			text: "triangle"
		}
	}
	Item {
		Layout.fillWidth: true
		Layout.fillHeight: true

		FloatingButton {
			text: "l"
		}
	}
}
