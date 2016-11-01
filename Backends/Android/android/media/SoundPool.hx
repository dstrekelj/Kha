package android.media;

import android.content.res.AssetFileDescriptor;

extern class SoundPool {
	public function new(maxStreams: Int, streamType: Int, srcQuality: Int): Void;
	public function autoPause(): Void;
	public function autoResume(): Void;
	public function load(fd: AssetFileDescriptor, priority: Int): Int;
	public function pause(streamID: Int): Void;
	public function play(soundID: Int, leftVolume: Float, rightVolume: Float, priority: Int, loop: Int, rate: Float): Void;
	public function release(): Void;
	public function resume(streamID: Int): Void;
	public function setLoop(streamID: Int, loop: Int): Void;
	public function setPriority(streamID: Int, priority: Int): Void;
	public function setRate(streamID: Int, rate: Float): Void;
	public function setVolume(streamID: Int, leftVolume: Float, rightVolume: Float): Void;
	public function stop(streamID: Int): Void;
	public function unload(soundID: Int): Bool;
}

@:native("android.media.SoundPool.Builder")
extern class SoundPoolBuilder {
	public function new(): Void;
	public function setMaxStreams(maxStreams: Int): SoundPoolBuilder;
	public function setAudioAttributes(attributes: AudioAttributes): SoundPoolBuilder;
	public function build(): SoundPool;
}
