JsOsaDAS1.001.00bplist00?Vscript_|const Photos = Application("Photos");

function get_all_photos_with_album() {
	var arr = [];
	for (const album of Photos.albums()) {
		for (const mediaItem of album.mediaItems()) {
			arr.push(mediaItem.id());
		}
	}
	return arr;
}

function save_to_delete_photos_to_tmp_album(to_clean_list, whitelist) {
	var to_delete = [];
	for (const mediaItem of to_clean_list) {
		if (!whitelist.includes(mediaItem.id())) {
			to_delete.push(mediaItem);
		}
	}
	Photos.add(to_delete, {to: Photos.albums.byId("6B3837D3-34C6-42DB-A1B0-F823DC0EB5C5/L0/040")});
}

save_to_delete_photos_to_tmp_album(Photos.mediaItems(), get_all_photos_with_album());
                              ?jscr  ??ޭ