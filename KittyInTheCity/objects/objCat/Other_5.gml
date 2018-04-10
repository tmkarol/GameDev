/// @description Save number of lives

if (file_exists("lives.sav")) {
	file_delete("lives.sav");
}
var SaveFile = file_text_open_write("lives.sav");
file_text_write_real(SaveFile, hearts);
file_text_close(SaveFile);