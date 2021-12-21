$entry = dir -af

for ($i=0; $i -lt $entry.count; $i++) {
	$name = $entry[$i].name
	$ext = $entry[$i].extension
	if([string]::IsNullOrEmpty($ext)) {
		md -force EXTENSIONLESS
		dir -LiteralPath $name | mv -Destination EXTENSIONLESS\
	}
	else {
		md -force $ext
		dir -LiteralPath $name | mv -Destination $ext\
	}
}

exit