$entry = dir -Recurse

for ($i=0; $i -lt $entry.count; $i++) {
	dir -LiteralPath $entry[$i] | Move-Item -Destination .
}

$entry = dir -ad
for ($i=0; $i -lt $entry.count; $i++) {
	rmdir $entry[$i]
}

exit