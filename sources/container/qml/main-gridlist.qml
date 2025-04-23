import QtQuick
import QtQuick.Layouts

import Example 1.0
import Container 1.0
import Panel 1.0 as P
import Control 1.0

Window {
	id: window
	height: 1000
	width: 800

	P.Slider {
		id: cellHeightItem
		Layout.fillWidth: true
		text: "cell height " + value.toFixed(1)
		from: 0
		to: 300
		value: 200
	}
	P.Slider {
		id: minWidthItem
		Layout.fillWidth: true
		text: "min width " + value.toFixed(1)
		from: 0
		to: window.width
		value: 300
	}
	P.Slider {
		id: spacingItem
		Layout.fillWidth: true
		text: "spacing " + value.toFixed(1)
		from: 0
		to: 100
		value: 8
	}
	P.Button {
		buttonText: "reset"
		type: Button.Type.Outlined
		onClicked: {
			cellHeightItem.value = 200
			minWidthItem.value = 300
			spacingItem.value = 8
		}
	}

	GridList {
		Layout.fillWidth: true
		Layout.fillHeight: true

		minWidth: minWidthItem.value
		cellHeight: cellHeightItem.value
		spacing: spacingItem.value

		model: ListModel {
			ListElement {
				color: "red"
			}
			ListElement {
				color: "blue"
			}
			ListElement {
				color: "green"
			}
			ListElement {
				color: "magenta"
			}
		}

		delegate: Component {
			Card {
				id: item
				Rectangle {
					id: rectangle
					anchors.fill: parent
					color: model.color
				}
			}
		}
	}
}
