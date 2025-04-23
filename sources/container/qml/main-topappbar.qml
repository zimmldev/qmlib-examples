import QtQuick
import QtQuick.Layouts

import Control
import Example
import Icon
import Container
import Panel as P

Window {
	height: 1200
	P.Switch {
		text: "fullscreen"
		onCheckedChanged: {
			fullscreen = checked
		}
	}

	Rectangle {
		Layout.fillHeight: true
		Layout.fillWidth: true
		color: pal.surfaceContainer

		ColumnLayout {
			anchors.fill: parent
			spacing: 4

			TopAppBar {
				Layout.fillWidth: true
				text: "centered"
			}
			TopAppBar {
				Layout.fillWidth: true
				text: "very long centered that will be elided"
				leadingIcon: "qrc:/qt/qml/ContainerExample/icons/triangle-stroke.png"
				trailingIcon: "qrc:/qt/qml/ContainerExample/icons/square-stroke.png"
			}
			TopAppBar {
				Layout.fillWidth: true
				text: "centered"
				leadingIcon: "qrc:/qt/qml/ContainerExample/icons/triangle-stroke.png"
				leadingItem: Rectangle {
					height: 20
					width: height
					radius: height / 2
					color: pal.error
					anchors.verticalCenter: parent.verticalCenter
				}
				trailingItem: Rectangle {
					height: 20
					width: height
					radius: height / 2
					color: pal.success
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			TopAppBar {
				Layout.fillWidth: true
				text: "small"
				type: TopAppBar.Type.Small
			}
			TopAppBar {
				Layout.fillWidth: true
				text: "small"
				type: TopAppBar.Type.Small
				trailingItem: Rectangle {
					height: 20
					width: height
					radius: height / 2
					color: pal.success
					anchors.verticalCenter: parent.verticalCenter
				}
			}
			TopAppBar {
				Layout.fillWidth: true
				text: "medium"
				type: TopAppBar.Type.Medium
			}
			TopAppBar {
				Layout.fillWidth: true
				text: "medium"
				type: TopAppBar.Type.Medium
				trailingItem: [
					Rectangle {
						height: 20
						width: height
						radius: height / 2
						color: pal.success
						anchors.verticalCenter: parent.verticalCenter
					},
					Rectangle {
						height: 20
						width: height
						radius: height / 2
						color: pal.error
						anchors.verticalCenter: parent.verticalCenter
					},
					Rectangle {
						height: 20
						width: height
						radius: height / 2
						color: pal.progress
						anchors.verticalCenter: parent.verticalCenter
					}
				]
			}
			TopAppBar {
				Layout.fillWidth: true
				text: "large"
				type: TopAppBar.Type.Large
			}

			Page {
				Layout.fillHeight: true
				Layout.fillWidth: true
				header: TopAppBar {
					text: "large"
					type: TopAppBar.Type.Large
					contentY: scroll.ScrollBar.vertical.position * scroll.contentHeight
					positionBehavior: behaviorSwitch.checked ?
										  TopAppBar.PositionBehavior.Compress :
										  TopAppBar.PositionBehavior.Fixed
					trailingItem: Switch {
						id: behaviorSwitch
					}
				}

				ScrollView {
					id: scroll
					ScrollBar.horizontal.interactive: false
					ScrollBar.vertical.interactive: true
					anchors.fill: parent
					Column {
						anchors.left: parent.left
						anchors.right: parent.right
						spacing: 10

						Repeater {
							model: 20
							delegate: Rectangle {
								width: scroll.width
								color: pal.onSurface
								height: 50
							}
						}
					}
				}
			}
		}
	}
}
