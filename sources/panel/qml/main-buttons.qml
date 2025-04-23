import QtQuick
import QtQuick.Layouts

import Panel 1.0
import Example 1.0
import Control 1.0 as C

Window {
	height: 700
	width: 400

	Button {
		text: "Elevated"
		buttonText: "btn"
		type: C.Button.Elevated
	}
	Button {
		enabled: false
		text: "Elevated"
		buttonText: "btn"
		type: C.Button.Elevated
	}
	Button {
		text: "Filled"
		buttonText: "btn"
		type: C.Button.Filled
	}
	Button {
		enabled: false
		text: "Filled"
		buttonText: "btn"
		type: C.Button.Filled
	}
	Button {
		text: "Tonal"
		buttonText: "btn"
		type: C.Button.Tonal
	}
	Button {
		enabled: false
		text: "Tonal"
		buttonText: "btn"
		type: C.Button.Tonal
	}
	Button {
		text: "Outlined"
		buttonText: "btn"
		type: C.Button.Outlined
	}
	Button {
		enabled: false
		text: "Outlined"
		buttonText: "btn"
		type: C.Button.Outlined
	}
	Button {
		text: "Text"
		buttonText: "btn"
		type: C.Button.Text
	}
	Button {
		enabled: false
		text: "Text"
		buttonText: "btn"
		type: C.Button.Text
	}
	Button {
		text: "triangle-stroke"
		source: "qrc:/qt/qml/PanelExample/icons/triangle-stroke.png"
		type: C.Button.Filled
	}
	Button {
		text: "triangle-stroke"
		source: "qrc:/qt/qml/PanelExample/icons/triangle-stroke.png"
		type: C.Button.Text
	}
	Button {
		text: "triangle-stroke"
		source: "qrc:/qt/qml/PanelExample/icons/triangle-stroke.png"
		type: C.Button.Outlined
	}
	Button {
		text: "triangle-stroke"
		source: "qrc:/qt/qml/PanelExample/icons/triangle-stroke.png"
		type: C.Button.Tonal
	}
	Button {
		source: "qrc:/qt/qml/PanelExample/icons/triangle-stroke.png"
		text: "Filled"
		type: C.Button.Filled
	}
	Button {
		source: "qrc:/qt/qml/PanelExample/icons/triangle-stroke.png"
		text: "Outlined"
		type: C.Button.Outlined
	}
	Button {
		sourceUnchecked: "qrc:/qt/qml/PanelExample/icons/triangle-stroke.png"
		sourceChecked: "qrc:/qt/qml/PanelExample/icons/triangle-filled.png"
		text: "checkable"
		checkable: true
		type: C.Button.Text
	}
	Item {}
	Button {
		text: "big"
		height: 80
		checkable: true
		type: C.Button.Filled
	}
	Button {
		source: "qrc:/qt/qml/PanelExample/icons/triangle-stroke.png"
		height: 80
		checkable: true
		type: C.Button.Filled
	}
}
