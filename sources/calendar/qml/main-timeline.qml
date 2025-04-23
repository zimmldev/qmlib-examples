import QtQuick
import QtQuick.Layouts
import Qt.labs.qmlmodels

import Container 1.0
import Calendar 1.0
import Example 1.0
import Panel 1.0 as P
import Control 1.0

Window {
	height: 400
	width: 450

	P.Switch {
		id: startEndItem
		text: "set start end"
	}
	P.Segments {
		id: layoutItem
		Layout.fillWidth: true
		text: "layout"
		current: def
		Segment {
			id: def
			text: "Fill width"
			value: Timeline.Layout.FillWidth
		}
		Segment {
			text: "Right"
			value: Timeline.Layout.Right
		}
	}
	Item {
		id: item
		Layout.fillWidth: true
		Layout.fillHeight: true

		Timeline {
			id: timeline
			anchors.fill: parent
			anchors.margins: 10
			minTime: startEndItem.checked ? 0 : timeline.minTimeData
			maxTime: startEndItem.checked ? 22 * 3600 : timeline.maxTimeData
			layout: layoutItem.current.value
			Component {
				id: typeA

				Card {
					id: item
					height: 20
					anchors.left: parent.left
					anchors.right: parent.right
					type: Card.Type.Elevated
					Rectangle {
						id: rectangle
						anchors.fill: parent
						color: model.color
					}
				}
			}
			Component {
				id: typeB

				Card {
					id: item
					height: 50
					anchors.left: parent.left
					anchors.right: parent.right

					Rectangle {
						id: rectangle
						anchors.fill: parent
						color: model.color
					}
				}
			}

			delegate: Component {
				Column {
					property var _model: model
					property var _index: index
					anchors.left: parent.left
					anchors.right: parent.right

					Loader {
						property var model: _model
						property var index: _index
						anchors.left: parent.left
						anchors.right: parent.right

						sourceComponent: model.type === "A" ?
											 typeA :
											 typeB
					}
				}
			}

			model: ListModel {
				ListElement {
					from: 8210
					to: 9000
					title: "event 2"
					color: "magenta"
					uid: "e2"
					detail: "detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail detail"
					type: "A"
				}
				ListElement {
					from: 8500
					to: 8600
					title: "event 3"
					color: "red"
					uid: "e3"
					type: "A"
				}
				ListElement {
					from: 8200
					to: -1
					title: "event 1"
					color: "cyan"
					uid: "e1"
					detail: "detail"
					type: "B"
				}
				ListElement {
					from: 13200
					to: 15800
					title: "event 4"
					color: "blue"
					uid: "e4"
					type: "A"
				}
				ListElement {
					from: 18000
					to: -1
					title: "event 5"
					color: "green"
					uid: "e5"
					type: "B"
				}
				ListElement {
					from: 54000
					to: 72000
					title: "event 6"
					color: "yellow"
					uid: "e6"
					type: "A"
				}
			}
		}
	}
}
