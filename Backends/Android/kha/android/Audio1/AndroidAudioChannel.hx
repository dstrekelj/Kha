package kha.android.audio1;

import kha.android.Sound;
import kha.audio1.AudioChannel;

class AndroidAudioChannel implements AudioChannel {
	static var LOOP_NEVER : Int = 0;
	static var LOOP_FOREVER : Int = -1;
	static var PRIORITY : Int = 1;
	static var RATE : Float = 1.0;
	static var VOLUME_LEFT : Float = 1.0;
	static var VOLUME_RIGHT : Float = 1.0;

	public var length(get, null): Float; // Seconds
	public var position(get, null): Float; // Seconds
	public var volume(get, set): Float;
	public var finished(get, null): Bool;

	var soundId : Int;
	var streamId : Int;
	var loop : Int;

	public function new(soundId : Int, loop : Bool): Void {
		this.soundId = soundId;
		this.loop = loop ? LOOP_FOREVER : LOOP_NEVER;
	}

	public function play(): Void {
		streamId = Sound.soundPool.play(soundId, VOLUME_LEFT, VOLUME_RIGHT, PRIORITY, loop, RATE);
	}

	public function pause(): Void {
		Sound.soundPool.pause(streamId);
	}

	public function stop(): Void {
		Sound.soundPool.stop(streamId);
	}

	function get_length(): Float {
		return -1;
	}

	function get_position(): Float {
		return -1;
	}

	function get_volume(): Float {
		
	}

	function set_volume(value: Float): Float {
		Sound.soundPool.setVolume(streamId, value, value);
	}

	function get_finished(): Bool {
		return false;
	}
}
