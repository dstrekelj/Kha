package kha.android;

import android.content.res.AssetFileDescriptor;

class Sound extends kha.Sound {
	public var assetFileDescriptor: AssetFileDescriptor;

	public function new(file : AssetFileDescriptor): Void {
		super();
		
		assetFileDescriptor = file;
	}

	override public function uncompress(done: Void->Void): Void {
		(uncompressedData != null) ? done() : super.uncompress(done);
	}

	override public function unload(): Void {
		super.unload();
	}
}
