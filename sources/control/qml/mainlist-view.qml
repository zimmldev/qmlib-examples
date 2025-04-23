import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Control 1.0 as C
import Example 1.0

Window {
	ListModel {
		id: listmodel
		ListElement {
			foo: 1
		}
	}

	ListModel {
		id: listmodel2
		ListElement {
			foo: 1
		}
		ListElement {
			foo: 1
		}
		ListElement {
			foo: 1
		}
		ListElement {
			foo: 1
		}
		ListElement {
			foo: 1
		}
		ListElement {
			foo: 1
		}
		ListElement {
			foo: 1
		}
		ListElement {
			foo: 1
		}
	}

	Item {
		Layout.fillHeight: true
		Layout.fillWidth: true
		clip: true

		ListView {
			id: list
			anchors.fill: parent
			model: listmodel
			headerPositioning: ListView.PullBackHeader

			property bool overscrolling: false

			onVerticalOvershootChanged: {
				if (verticalOvershoot < 0)
					overscrolling = true
			}

			delegate: Item {
				id: contentDelegate
				anchors.left: parent.left
				anchors.right: parent.right
				height: contentColumn.implicitHeight

				Column {
					id: contentColumn
					anchors.fill: parent

					Rectangle {
						anchors.left: parent.left
						anchors.right: parent.right
						implicitHeight: list2.implicitHeight

						Column {
							id: list2
							anchors.fill: parent
							spacing: 1
							clip: true

							Rectangle {
								color: "magenta"
								height: 200
								anchors.left: parent.left
								anchors.right: parent.right
							}
							Repeater {
								model: listmodel2

								delegate: ItemDelegate {
									anchors.left: parent.left
									anchors.right: parent.right
									height: 100

									Rectangle {
										anchors.fill: parent
										color: "red"
										border.color: "green"
										border.width: 10
									}

									MouseArea {
										anchors.fill: parent
										onPressed: {
											mouse.accepted = false
										}
									}
								}
							}
						}
					}
				}
			}

			header: Rectangle {
				anchors.left: parent.left
				anchors.right: parent.right
				height: 200

				color: "blue"
				border.color: "red"
				border.width: 5
				z: 10

				Rectangle {
					id: marker
					color: "red"
					anchors.horizontalCenter: parent.horizontalCenter
					height: 20
					width: 20
				}

				MouseArea {
					anchors.fill: parent
					property var positionStart
					property real contentYStart
					onPressed: {
						positionStart =  mapToItem (parent, mouse.x, mouse.y)
						contentYStart = list.contentY
					}

					onPositionChanged: {
						var point =  mapToItem (parent, mouse.x, mouse.y)
						var diffY = point.y - positionStart.y
						list.contentY = Math.max(list.contentY - diffY, -200)//- 200
					}
				}
			}
		}
	}
}
