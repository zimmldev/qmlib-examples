import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
	id: item
	implicitHeight: 50
	implicitWidth: 250
	color: pal.surface
	property alias textColor: textItem.color
	property alias text: textItem.text

	ColumnLayout {
		anchors.fill: parent

		Text {
			id: textItem
			Layout.fillHeight: true
			Layout.fillWidth: true
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter
			elide: Text.ElideRight
		}

		TextEdit {
			color: textItem.color
			text: item.color.toString()
			Layout.fillHeight: true
			Layout.fillWidth: true
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter
			font.capitalization: Font.AllUppercase
			readOnly: true
		}
	}
}
