import QtQuick
import QtQuick.Layouts

import Image 1.0
import Example 1.0
import Control 1.0

Window {
	height: 1200
	width: 1200
	Carousel {
		Layout.fillHeight: true
		Layout.fillWidth: true
		onPressAndHold: function(index) {
			console.log("PRESS AND HOLD " + index)
		}
		model: [ "qrc:/qt/qml/ImageExample/images/sample.jpg",
					"qrc:/qt/qml/ImageExample/images/sample.jpg",
					"qrc:/qt/qml/ImageExample/images/sample.jpg",
					"qrc:/qt/qml/ImageExample/images/sample.jpg"]
	}
	Carousel {
		Layout.fillHeight: true
		Layout.fillWidth: true
		onPressAndHold: function(index) {
			console.log("PRESS AND HOLD " + index)
		}
		model: [ "qrc:/qt/qml/ImageExample/images/sample.jpg",
				"qrc:/qt/qml/ImageExample/images/sample.jpg",
				"qrc:/qt/qml/ImageExample/images/sample.jpg",
				"qrc:/qt/qml/ImageExample/images/sample.jpg"]
		footer: Button {
			text: "+"
			type: Button.Type.Text
			anchors.fill: parent
			onClicked: {
				console.log("CLICKED !!")
			}
		}
	}
	Carousel {
		Layout.fillHeight: true
		Layout.fillWidth: true
		model: ListModel {
			ListElement {
				image: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}
			ListElement {
				image: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}
			ListElement {
				image: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}
			ListElement {
				image: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}
		}
	}
	Carousel {
		Layout.fillHeight: true
		Layout.fillWidth: true
		sourceName: "foo"
		model: ListModel {
			ListElement {
				foo: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}
			ListElement {
				foo: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}
			ListElement {
				foo: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}
			ListElement {
				foo: "qrc:/qt/qml/ImageExample/images/sample.jpg"
			}
		}
	}
}
