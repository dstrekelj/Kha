package kha.audio2;

import kha.android.audio1.AndroidAudioChannel.ChannelHandler;
import kha.audio1.AudioChannel;
import kha.Sound;

class Audio {
	public static var audioCallback: Int->Buffer->Void;

	public static function stream(sound: kha.Sound, loop: Bool = false): AudioChannel {
		var channel = ChannelHandler.openChannel(sound);
		if (channel != null) {
			channel.mediaPlayer.setLooping(loop);
			channel.play();
		}
		return channel;
	}
} 
