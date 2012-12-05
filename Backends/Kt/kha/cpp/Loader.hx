package kha.cpp;

import kha.Blob;
import cpp.io.File;
import haxe.io.Bytes;

class Loader extends kha.Loader {
	public function new() {
		super();
	}
	
	override function loadXml(filename: String) {
		xmls.set(filename, Xml.parse(File.getContent(filename)));
		--numberOfFiles;
		checkComplete();
	}
	
	override function loadMusic(filename: String) {
		musics.set(filename, new Music(filename));
		--numberOfFiles;
		checkComplete();
	}
	
	override function loadSound(filename: String) {
		sounds.set(filename, new Sound(filename));
		--numberOfFiles;
		checkComplete();
	}
	
	override function loadImage(filename: String) {
		images.set(filename, new kha.cpp.Image(filename));
		--numberOfFiles;
		checkComplete();
	}
	
	override function loadBlob(filename: String) {
		blobs.set(filename, new Blob(File.getBytes(filename)));
		--numberOfFiles;
		checkComplete();
	}
	
	override function loadFont(name: String, style: FontStyle, size: Int): kha.Font {
		return new kha.cpp.Font(name, style, size);
	}
}