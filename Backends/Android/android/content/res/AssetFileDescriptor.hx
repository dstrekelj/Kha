package android.content.res;

import java.io.FileDescriptor;

extern class AssetFileDescriptor {
	public function getFileDescriptor() : FileDescriptor;
	public function getStartOffset() : Int;
	public function getLength() : Int;
}
