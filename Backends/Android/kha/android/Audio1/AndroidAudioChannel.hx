package kha.android.audio1;

import android.media.MediaPlayer;
import kha.audio1.AudioChannel;

class AndroidAudioChannel implements AudioChannel {
	public var length(get, null): Float; // Seconds
	public var position(get, null): Float; // Seconds
	@:isVar public var volume(get, set): Float;
	public var finished(get, null): Bool;
	
	public var mediaPlayer : MediaPlayer;

	public function new(mediaPlayer: MediaPlayer): Void {
		this.mediaPlayer = mediaPlayer;
	}

	public function play(): Void {
		mediaPlayer.start();
	}

	public function pause(): Void {
		mediaPlayer.pause();
	}

	public function stop(): Void {
		mediaPlayer.stop();
		ChannelHandler.closeChannel(this);
	}

	/**
	 * `mediaPlayer.getDuration()` returns duration in milliseconds,
	 * or -1 if the media is streamed. 
	 */
	function get_length(): Float {
		var duration = mediaPlayer.getDuration();
		if (duration == -1) return duration;
		return duration / 1000;
	}

	/**
	 * `mediaPlayer.getCurrentPosition()` returns the current position
	 * in milliseconds.
	 */
	function get_position(): Float {
		return mediaPlayer.getCurrentPosition() / 1000;
	}

	function get_volume(): Float {
		return volume;
	}

	function set_volume(value: Float): Float {
		mediaPlayer.setVolume(value, value);
		return volume = value;
	}

	function get_finished(): Bool {
		return !mediaPlayer.isPlaying();
	}
}

class ChannelHandler {
	static var MAX_CHANNELS: Int = 16;
	static var NUM_CHANNELS: Int = 0;

	public static function openChannel(sound: kha.Sound): AndroidAudioChannel {
		if (NUM_CHANNELS >= MAX_CHANNELS) return null;
		
		var sound: kha.android.Sound = cast sound;
		
		var player = new MediaPlayer();
		player.setDataSource(sound.assetFileDescriptor.getFileDescriptor());
		player.prepare();
		
		var channel = new AndroidAudioChannel(player);
		NUM_CHANNELS += 1;

		return channel;
	} 

	public static function closeChannel(channel: AndroidAudioChannel): Void {
		channel.mediaPlayer.release();
		channel.mediaPlayer = null;
		channel = null;
		NUM_CHANNELS -= 1;
	}
}
