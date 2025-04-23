import QtQuick

import Example 1.0

WindowList {
	title: "Gadget test"

	model: ListModel {
		ListElement {
			text: "Camera Permission"
			url: "qrc:/qt/qml/GadgetExample/qml/main-camerapermission.qml"
		}
		ListElement {
			text: "Contact Form"
			url: "qrc:/qt/qml/GadgetExample/qml/main-contactform.qml"
		}
		ListElement {
			text: "Developer Item"
			url: "qrc:/qt/qml/GadgetExample/qml/main-developeritem.qml"
		}
		ListElement {
			text: "Follow us"
			url: "qrc:/qt/qml/GadgetExample/qml/main-followus.qml"
		}
		ListElement {
			text: "Permission page"
			url: "qrc:/qt/qml/GadgetExample/qml/main-permissionpage.qml"
		}
		ListElement {
			text: "Server error"
			url: "qrc:/qt/qml/GadgetExample/qml/main-servererror.qml"
		}
		ListElement {
			text: "Update banner"
			url: "qrc:/qt/qml/GadgetExample/qml/main-updatebanner.qml"
		}
		ListElement {
			text: "Update Page"
			url: "qrc:/qt/qml/GadgetExample/qml/main-updatepage.qml"
		}
	}
}
