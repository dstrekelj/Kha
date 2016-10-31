package android.media;

import android.os.Parcelable;
import android.os.Parcel;
import java.lang.Object;

extern class AudioAttributes extends Object implements Parcelable {
	public static var CONTENT_TYPE_MOVIE : Int;
	public static var CONTENT_TYPE_MUSIC : Int;
	public static var CONTENT_TYPE_SONIFICATION : Int;
	public static var CONTENT_TYPE_SPEECH : Int;
	public static var CONTENT_TYPE_UNKNOWN : Int;
	public static var FLAG_AUDIBILITY_ENFORCED : Int;
	public static var FLAG_HW_AV_SYNC : Int;
	public static var FLAG_LOW_LATENCY : Int;
	public static var USAGE_ALARM : Int;
	public static var USAGE_ASSISTANCE_ACCESSIBILITY : Int;
	public static var USAGE_ASSISTANCE_NAVIGATION_GUIDANCE : Int;
	public static var USAGE_ASSISTANCE_SONIFICATION : Int;
	public static var USAGE_GAME : Int;
	public static var USAGE_MEDIA : Int;
	public static var USAGE_NOTIFICATION : Int;
	public static var USAGE_NOTIFICATION_COMMUNICATION_DELAYED : Int;
	public static var USAGE_NOTIFICATION_COMMUNICATION_INSTANT : Int;
	public static var USAGE_NOTIFICATION_COMMUNICATION_REQUEST : Int;
	public static var USAGE_NOTIFICATION_EVENT : Int;
	public static var USAGE_NOTIFICATION_RINGTONE : Int;
	public static var USAGE_UNKNOWN : Int;
	public static var USAGE_VOICE_COMMUNICATION : Int;
	public static var USAGE_VOICE_COMMUNICATION_SIGNALLING : Int;

	public function describeContents() : Int;
	public function equals(o : Object) : Bool;
	public function getContentType() : Int;
	public function getFlags() : Int;
	public function getUsage() : Int;
	public function hashCode() : Int;
	public function toString() : String;
	public function writeToParcel(dest : Parcel, flags : Int) : Void;
}

@:native("android.media.AudioAttributes.Builder")
extern class AudioAttributesBuilder {
	@:overload(function(aa : AudioAttributes) : Void {})
	public function new() : Void;
	public function build() : AudioAttributes;
	public function setContentType(contentType : Int) : AudioAttributesBuilder;
	public function setFlags(flags : Int) : AudioAttributesBuilder;
	public function setLegacyStreamType(streamType : Int) : AudioAttributesBuilder;
	public function setUsage(usage : Int) : AudioAttributesBuilder;
}