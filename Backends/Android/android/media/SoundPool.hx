package android.media;

import android.content.res.AssetFileDescriptor;

extern class SoundPool {
	public function new(channels : Int, type : Int, unknown : Int) : Void;
	public function load(file : AssetFileDescriptor, unknown : Int) : Int;
	public function play(id : Int, unknown0 : Int, unknown1 : Int, unknown2 : Int, unknown3 : Int, unknown4 : Int) : Void;
	public function stop(id : Int) : Void;
}

@:native("android.media.SoundPool.Builder")
extern class SoundPoolBuilder {
	public function new() : Void;
	public function setMaxStreams(maxStreams : Int) : SoundPoolBuilder;
	public function setAudioAttributes(attributes : AudioAttributes) : SoundPoolBuilder;
	public function build() : SoundPool;
}