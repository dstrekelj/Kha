package android.media;

import android.content.Context;
import android.media.AudioAttributes;
import android.net.Uri;
import android.view.SurfaceHolder;
import java.io.FileDescriptor;
import java.lang.Long;

extern class MediaPlayer {
	public static var MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK: Int;
	public static var MEDIA_ERROR_SERVER_DIED: Int;
	public static var MEDIA_ERROR_UNKNOWN: Int;
	public static var MEDIA_INFO_BAD_INTERLEAVING: Int;
	public static var MEDIA_INFO_BUFFERING_END: Int;
	public static var MEDIA_INFO_BUFFERING_START: Int;
	public static var MEDIA_INFO_METADATA_UPDATE: Int;
	public static var MEDIA_INFO_NOT_SEEKABLE: Int;
	public static var MEDIA_INFO_UNKNOWN: Int;
	public static var MEDIA_INFO_VIDEO_TRACK_LAGGING: Int;

	@:protected var mAttributes: AudioAttributes;
	@:protected var mAuxEffectSendLevel: Float;
	@:protected var mLeftVolume: Float;
	@:protected var mRightVolume: Float;

	public function new(): Void;
	public function attachAuxEffect(effectId: Int): Void;
	@:overload(function(context: Context, resid: Int): MediaPlayer {})
	@:overload(function(context: Context, uri: Uri): MediaPlayer {})
	public static function create(context: Context, uri: Uri, holder: SurfaceHolder): MediaPlayer;
	public function getAudioSessionId(): Int;
	public function getCurrentPosition(): Int;
	public function getDuration(): Int;
	public function getVideoHeight(): Int;
	public function getVideoWidth(): Int;
	public function isLooping(): Bool;
	public function isPlaying(): Bool;
	public function pause(): Void;
	public function prepare(): Void;
	public function prepareAsync(): Void;
	public function release(): Void;
	public function reset(): Void;
	public function seekTo(msec: Int): Void;
	public function setAudioSessionId(sessionId : Int): Void;
	public function setAudioStreamType(streamtype: Int): Void;
	public function setAuxEffectSendLevel(level: Float): Void;
	@:overload(function(fd: FileDescriptor, offset: Long, length: Long): Void {})
	@:overload(function(path: String): Void {})
	@:overload(function(context: Context, uri: Uri): Void {})
	public function setDataSource(fd: FileDescriptor): Void;
	public function setDisplay(sh: SurfaceHolder): Void;
	public function setLooping(looping: Bool): Void;
	public function setScreenOnWhilePlaying(screenOn: Bool): Void;
	public function setVolume(leftVolume: Float, rightVolume: Float): Void;
	public function setWakeMode(context: Context, mode: Int): Void;
	public function start(): Void;
	public function stop(): Void;
}
