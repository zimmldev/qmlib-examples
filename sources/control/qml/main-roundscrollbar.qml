import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import Control 1.0
import Example 1.0 as E

E.Window {
	id: window
	height: 500
	width: 3 * height

	RowLayout {
		Layout.fillWidth: true
		Layout.fillHeight: true
		spacing: 10

		Item {
			Layout.fillWidth: true
			Layout.fillHeight: true

			ScrollView {
				anchors.fill: parent
				ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
				ScrollBar.vertical: RoundScrollBar {
					policy: ScrollBar.AlwaysOn
					anchors.top: parent.top
					anchors.right: parent.right
					anchors.bottom: parent.bottom
					orientation: Qt.Vertical
				}

				Column {
					anchors.left: parent.left
					anchors.right: parent.right
					Rectangle {
						anchors.left: parent.left
						anchors.right: parent.right
						height: width
						color: "red"
					}
					Rectangle {
						anchors.left: parent.left
						anchors.right: parent.right
						height: width
						color: "green"
					}
					Rectangle {
						anchors.left: parent.left
						anchors.right: parent.right
						height: width
						color: "blue"
					}
				}
			}
		}

		ListView {
			Layout.fillWidth: true
			Layout.fillHeight: true

			ScrollBar.vertical: RoundScrollBar {
				policy: ScrollBar.AlwaysOn
				anchors.top: parent.top
				anchors.right: parent.right
				anchors.bottom: parent.bottom
				orientation: Qt.Vertical
			}

			model: ListModel {
				ListElement {
					c: "red"
				}
				ListElement {
					c: "green"
				}
				ListElement {
					c: "blue"
				}
			}

			delegate: Rectangle {
				anchors.left: parent.left
				anchors.right: parent.right
				height: width
				color: c
			}
		}

		Item {
			Layout.fillWidth: true
			Layout.fillHeight: true
			PathView {
				id: pathView
				anchors.fill: parent
				snapMode: PathView.SnapOneItem
				highlightRangeMode: PathView.StrictlyEnforceRange

				model: ListModel {
					ListElement {
						c: "red"
					}
					ListElement {
						c: "green"
					}
					ListElement {
						c: "blue"
					}
				}
				currentIndex: -1

				path: Path {
					startX: width / 2		// let the first item in left
					startY: -height / 2		// item's vertical center is the same as line's
					PathLine {
						relativeX: 0
						relativeY: window.height * pathView.count
					}
				}

				delegate: Rectangle {
					anchors.left: parent.left
					anchors.right: parent.right
					height: width
					color: c
				}
			}
			RoundScrollBar {
				policy: ScrollBar.AlwaysOn
				anchors.top: parent.top
				anchors.right: parent.right
				anchors.bottom: parent.bottom
				orientation: Qt.Vertical
				handleHeight: pathView.height / pathView.count
				position: pathView.offset / pathView.count

				Timer {
					id: timer
					interval: 500
					repeat: false
					running: false

					onTriggered: {
						var index = pathView.currentIndex
						pathView.currentIndex = index + 1
						pathView.currentIndex = index
					}
				}

				onPositionIncremented: {
					timer.stop()
					pathView.offset += 0.2
					timer.start()
				}
				onPositionDecremented: {
					timer.stop()
					pathView.offset -= 0.2
					timer.start()
				}
			}
		}
	}
}
