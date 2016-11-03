package kha.android;

import android.content.res.AssetFileDescriptor;
import android.media.SoundPool;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Build.VERSION_CODES;

class Sound extends kha.Sound {
	static inline var MAX_STREAMS : Int = 4;
	static inline var SRC_QUALITY : Int = 0;
	static inline var PRIORITY : Int = 1;

	public static var soundPool : SoundPool;
	
	public var soundId : Int;

	@:noCompletion public static function _init(): Void {
		if (VERSION.SDK_INT >= VERSION_CODES.LOLLIPOP) {
			var audioAttributes : AudioAttributes = new AudioAttributesBuilder()
				.setUsage(AudioAttributes.USAGE_GAME)
				.setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
				.build();
			
			soundPool = new SoundPoolBuilder()
				.setMaxStreams(MAX_STREAMS)
				.setAudioAttributes(audioAttributes)
				.build();
		} else {
			soundPool = new SoundPool(MAX_STREAMS, AudioManager.STREAM_MUSIC, SRC_QUALITY);
		}
	}

	public function new(file : AssetFileDescriptor): Void {
		super();
		
		soundId = soundPool.load(file, PRIORITY);
	}

	override public function uncompress(done: Void->Void): Void {
		(uncompressedData != null) ? done() : super.uncompress(done);
	}

	override public function unload(): Void {
		soundPool.unload(soundId);
		super.unload();
	}
}
