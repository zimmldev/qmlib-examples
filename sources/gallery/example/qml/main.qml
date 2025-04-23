import QtQuick

import Example 1.0

WindowList {
	title: "Gallery"

	model: ListModel {
		ListElement {
			text: "Animation"
			url: "qrc:/qt/qml/AnimationExample/qml/main.qml"
		}
		ListElement {
			text: "Calendar"
			url: "qrc:/qt/qml/CalendarExample/qml/main.qml"
		}
		ListElement {
			text: "Colors"
			url: "qrc:/qt/qml/ColorsExample/qml/main.qml"
		}
		ListElement {
			text: "Container"
			url: "qrc:/qt/qml/ContainerExample/qml/main.qml"
		}
		ListElement {
			text: "Control"
			url: "qrc:/qt/qml/ControlExample/qml/main.qml"
		}
		ListElement {
			text: "Dialog"
			url: "qrc:/qt/qml/DialogExample/qml/main.qml"
		}
		ListElement {
			text: "Effects"
			url: "qrc:/qt/qml/EffectsExample/qml/main.qml"
		}
		ListElement {
			text: "Font"
			url: "qrc:/qt/qml/FontExample/qml/main.qml"
		}
		ListElement {
			text: "Gadget"
			url: "qrc:/qt/qml/GadgetExample/qml/main.qml"
		}
		ListElement {
			text: "Help"
			url: "qrc:/qt/qml/HelpExample/qml/main.qml"
		}
		ListElement {
			text: "Icon"
			url: "qrc:/qt/qml/IconExample/qml/main.qml"
		}
		ListElement {
			text: "Image"
			url: "qrc:/qt/qml/ImageExample/qml/main.qml"
		}
		ListElement {
			text: "Indicator"
			url: "qrc:/qt/qml/IndicatorExample/qml/main.qml"
		}
		ListElement {
			text: "Panel"
			url: "qrc:/qt/qml/PanelExample/qml/main.qml"
		}
		ListElement {
			text: "Plots"
			url: "qrc:/qt/qml/PlotsExample/qml/main.qml"
		}
		ListElement {
			text: "Video"
			url: "qrc:/qt/qml/VideoExample/qml/main.qml"
		}
	}
}
