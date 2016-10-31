package android.os;

import java.lang.Long;

extern class Build {
	public static var UNKNOWN: String;
	public static var BOARD: String;
	public static var BOOTLOADER: String;
	public static var BRAND: String;
	public static var CPU_ABI: String;
	public static var CPU_ABI2: String;
	public static var DEVICE: String;
	public static var DISPLAY: String;
	public static var FINGERPRINT: String;
	public static var HARDWARE: String;
	public static var HOST: String;
	public static var ID: String;
	public static var MANUFACTURER: String;
	public static var MODEL: String;
	public static var PRODUCT: String;
	public static var RADIO: String;
	public static var SERIAL: String;
	public static var SUPPORTED_32_BIT_ABIS: Array<String>;
	public static var SUPPORTED_64_BIT_ABIS: Array<String>;
	public static var SUPPORTED_ABIS: Array<String>;
	public static var TAGS: String;
	public static var TIME: Long;
	public static var TYPE: String;
	public static var USER: String;

	public static function getRadioVersion(): String;
}

@:native("android.os.Build.VERSION")
extern class VERSION {
	public static var BASE_OS: String;
	public static var CODENAME: String;
	public static var INCREMENTAL: String;
	public static var PREVIEW_SDK_INT: Int;
	public static var RELEASE: String;
	public static var SDK: String;
	public static var SDK_INT: Int;
	public static var SECURITY_PATCH: String;
}

@:native("android.os.Build.VERSION_CODES")
extern class VERSION_CODES {
	public static var BASE: Int;
	public static var BASE_1_1: Int;
	public static var CUPCAKE: Int;
	public static var CUR_DEVELOPMENT: Int;
	public static var DONUT: Int;
	public static var ECLAIR: Int;
	public static var ECLAIR_0_1: Int;
	public static var ECLAIR_MR1: Int;
	public static var FROYO: Int;
	public static var GINGERBREAD: Int;
	public static var GINGERBREAD_MR1: Int;
	public static var HONEYCOMB: Int;
	public static var HONEYCOMB_MR1: Int;
	public static var HONEYCOMB_MR2: Int;
	public static var ICE_CREAM_SANDWICH: Int;
	public static var ICE_CREAM_SANDWICH_MR1: Int;
	public static var JELLY_BEAN: Int;
	public static var JELLY_BEAN_MR1: Int;
	public static var JELLY_BEAN_MR2: Int;
	public static var KITKAT: Int;
	public static var KITKAT_WATCH: Int;
	public static var LOLLIPOP: Int;
	public static var LOLLIPOP_MR1: Int;
	public static var M: Int;
	public static var N: Int;
	public static var N_MR1: Int;
}
