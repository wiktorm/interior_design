<?php

if (!buildHtml($argv[1])) {
	echo "[ERR]\t{$argv[1]}\n";
	exit(1);
}
echo "[OK]\t{$argv[1]}\n";

/**
 * dummy search and replace
 * search: <!-- Development ONLY --> ...  <!-- END: Development ONLY -->
 * replace: proper css tag
 */
function buildHtml($inputFile) {
	if (!is_file($inputFile) || !is_readable($inputFile)) {
		return false;
	}

	$html = file_get_contents($inputFile);
	$pattern = '/<!-- Development ONLY.*Development ONLY -->/sim';
	$css = '<link rel="stylesheet" type="text/css" href="/static/styles/css/main.css" />';

	$html = preg_replace($pattern, $css, $html, 1);

	// save new HTML.
	return false !== file_put_contents($inputFile, $html);
}
