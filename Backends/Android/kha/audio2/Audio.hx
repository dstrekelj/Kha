package kha.audio2;

import kha.android.audio1.AndroidAudioChannel;
import kha.audio1.AudioChannel;
import kha.Sound;

class Audio {
	public static var audioCallback: Int->Buffer->Void;

	public static function stream(sound: kha.Sound, loop: Bool = false): AudioChannel {
		var sound : kha.android.Sound = cast sound;
		var channel = new AndroidAudioChannel(sound.soundId, loop);
		channel.play();
		return channel;
	}
}
