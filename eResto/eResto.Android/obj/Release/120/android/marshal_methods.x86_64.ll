; ModuleID = 'obj\Release\120\android\marshal_methods.x86_64.ll'
source_filename = "obj\Release\120\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [158 x i64] [
	i64 45886493525149769, ; 0: Xamarin.Forms.Material => 0xa30585d28e0849 => 65
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 18
	i64 187651954110998034, ; 2: Xamarin.Forms.ComboBox.dll => 0x29aac754231a612 => 63
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 58
	i64 329496744680355431, ; 4: LibVLCSharp.Forms.dll => 0x4929b8b2551f667 => 16
	i64 464346026994987652, ; 5: System.Reactive.dll => 0x671b04057e67284 => 34
	i64 595053104451889001, ; 6: MySql.Data => 0x8420da551592769 => 20
	i64 702024105029695270, ; 7: System.Drawing.Common => 0x9be17343c0e7726 => 75
	i64 720058930071658100, ; 8: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 52
	i64 870603111519317375, ; 9: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 26
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 50
	i64 940822596282819491, ; 11: System.Transactions => 0xd0e792aa81923a3 => 74
	i64 996343623809489702, ; 12: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 68
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 78
	i64 1033362597737307432, ; 14: LibVLCSharp.dll => 0xe573dcec24e9d28 => 15
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 70
	i64 1301485588176585670, ; 16: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 25
	i64 1425944114962822056, ; 17: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1518315023656898250, ; 18: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 27
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 43
	i64 1731380447121279447, ; 20: Newtonsoft.Json => 0x18071957e9b889d7 => 22
	i64 1769105627832031750, ; 21: Google.Protobuf => 0x188d203205129a06 => 9
	i64 1795316252682057001, ; 22: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 44
	i64 1836611346387731153, ; 23: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 58
	i64 1981742497975770890, ; 24: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 55
	i64 1986553961460820075, ; 25: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 61
	i64 2133195048986300728, ; 26: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 22
	i64 2179797141823972461, ; 27: LibVLCSharp.Forms.resources.dll => 0x1e4031f390d4646d => 0
	i64 2262844636196693701, ; 28: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 50
	i64 2329709569556905518, ; 29: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 54
	i64 2337758774805907496, ; 30: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 35
	i64 2470498323731680442, ; 31: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 46
	i64 2547086958574651984, ; 32: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 42
	i64 2592350477072141967, ; 33: System.Xml.dll => 0x23f9e10627330e8f => 40
	i64 2624866290265602282, ; 34: mscorlib.dll => 0x246d65fbde2db8ea => 19
	i64 2718512783523916468, ; 35: Xamarin.Forms.ComboBox => 0x25ba18f92b4d2ab4 => 63
	i64 2783046991838674048, ; 36: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 35
	i64 2815524396660695947, ; 37: System.Security.AccessControl => 0x2712c0857f68238b => 37
	i64 2851879596360956261, ; 38: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 29
	i64 2960931600190307745, ; 39: Xamarin.Forms.Core => 0x2917579a49927da1 => 64
	i64 3017704767998173186, ; 40: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 70
	i64 3289520064315143713, ; 41: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 53
	i64 3415571142686892312, ; 42: LibVLCSharp.Android.AWindow.dll => 0x2f668bdb98ed6118 => 14
	i64 3522470458906976663, ; 43: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 59
	i64 3531994851595924923, ; 44: System.Numerics => 0x31042a9aade235bb => 33
	i64 3727469159507183293, ; 45: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 57
	i64 4337444564132831293, ; 46: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 24
	i64 4525561845656915374, ; 47: System.ServiceModel.Internals => 0x3ece06856b710dae => 76
	i64 4794310189461587505, ; 48: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 42
	i64 4795410492532947900, ; 49: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 59
	i64 4832997361000890286, ; 50: eRestoREP2.dll => 0x4312417e56dbbfae => 6
	i64 4853321196694829351, ; 51: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 36
	i64 5023290012328585804, ; 52: eResto.Android.dll => 0x45b64fa6d49cea4c => 1
	i64 5032256205035195147, ; 53: MySql.Data.dll => 0x45d62a5b3fe0cb0b => 20
	i64 5142919913060024034, ; 54: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 67
	i64 5203618020066742981, ; 55: Xamarin.Essentials => 0x4836f704f0e652c5 => 62
	i64 5290786973231294105, ; 56: System.Runtime.Loader => 0x496ca6b869b72699 => 36
	i64 5375264076663995773, ; 57: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 66
	i64 5407669491340641765, ; 58: LibVLCSharp.Android.AWindow => 0x4b0be6c0561385e5 => 14
	i64 5507995362134886206, ; 59: System.Core.dll => 0x4c705499688c873e => 30
	i64 5625184805588031307, ; 60: ZstdNet => 0x4e10abc6f4ffd74b => 72
	i64 5812387745074149618, ; 61: K4os.Compression.LZ4.dll => 0x50a9bfdbd9fa78f2 => 11
	i64 6085203216496545422, ; 62: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 68
	i64 6086316965293125504, ; 63: FormsViewGroup.dll => 0x5476f10882baef80 => 8
	i64 6183170893902868313, ; 64: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 24
	i64 6401687960814735282, ; 65: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 54
	i64 6508023222691401344, ; 66: LibVLCSharp => 0x5a5124a3da838e80 => 15
	i64 6548213210057960872, ; 67: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 49
	i64 6617685658146568858, ; 68: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 2
	i64 6659513131007730089, ; 69: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 52
	i64 6876862101832370452, ; 70: System.Xml.Linq => 0x5f6f85a57d108914 => 41
	i64 7451202609009583483, ; 71: K4os.Hash.xxHash => 0x6767fd4b737ae57b => 13
	i64 7488575175965059935, ; 72: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 41
	i64 7602111570124318452, ; 73: System.Reactive => 0x698020320025a6f4 => 34
	i64 7635363394907363464, ; 74: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 64
	i64 7637365915383206639, ; 75: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 62
	i64 7654504624184590948, ; 76: System.Net.Http => 0x6a3a4366801b8264 => 3
	i64 7702918024138448955, ; 77: MySqlConnector => 0x6ae6432192b9e03b => 21
	i64 7820441508502274321, ; 78: System.Data => 0x6c87ca1e14ff8111 => 73
	i64 7836164640616011524, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 43
	i64 8083354569033831015, ; 80: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 53
	i64 8087206902342787202, ; 81: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 31
	i64 8167236081217502503, ; 82: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 10
	i64 8476857680833348370, ; 83: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 38
	i64 8626175481042262068, ; 84: Java.Interop => 0x77b654e585b55834 => 10
	i64 8702320156596882678, ; 85: Firebase.dll => 0x78c4da1357adccf6 => 7
	i64 8725526185868997716, ; 86: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 31
	i64 8895825146446987799, ; 87: LibVLCSharp.Forms.resources => 0x7b7451d6adf5c217 => 0
	i64 9041985878101337471, ; 88: BouncyCastle.Crypto => 0x7d7b963fe854257f => 5
	i64 9057635389615298436, ; 89: LiteDB => 0x7db32f65bf06d784 => 17
	i64 9290408134796603763, ; 90: Xamarin.Forms.Material.dll => 0x80ee28f9d4f37173 => 65
	i64 9296667808972889535, ; 91: LiteDB.dll => 0x8104661dcca35dbf => 17
	i64 9324707631942237306, ; 92: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 44
	i64 9662334977499516867, ; 93: System.Numerics.dll => 0x8617827802b0cfc3 => 33
	i64 9678050649315576968, ; 94: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 46
	i64 9808709177481450983, ; 95: Mono.Android.dll => 0x881f890734e555e7 => 18
	i64 9834056768316610435, ; 96: System.Transactions.dll => 0x8879968718899783 => 74
	i64 9998632235833408227, ; 97: Mono.Security => 0x8ac2470b209ebae3 => 78
	i64 9998685624638532270, ; 98: K4os.Hash.xxHash.dll => 0x8ac27799ad626aae => 13
	i64 10038780035334861115, ; 99: System.Net.Http.dll => 0x8b50e941206af13b => 3
	i64 10144742755892837524, ; 100: Firebase => 0x8cc95dc98eb5bc94 => 7
	i64 10229024438826829339, ; 101: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 49
	i64 10430153318873392755, ; 102: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 47
	i64 10885087467875303060, ; 103: K4os.Compression.LZ4.Streams => 0x970f99615fc37e94 => 12
	i64 10956285090514655176, ; 104: LibVLCSharp.Forms => 0x980c8b3dae08d7c8 => 16
	i64 11023048688141570732, ; 105: System.Core => 0x98f9bc61168392ac => 30
	i64 11037814507248023548, ; 106: System.Xml => 0x992e31d0412bf7fc => 40
	i64 11122995063473561350, ; 107: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 61
	i64 11162124722117608902, ; 108: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 60
	i64 11340910727871153756, ; 109: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 48
	i64 11341245327015630248, ; 110: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 29
	i64 11529969570048099689, ; 111: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 60
	i64 11739066727115742305, ; 112: SQLite-net.dll => 0xa2e98afdf8575c61 => 23
	i64 11806260347154423189, ; 113: SQLite-net => 0xa3d8433bc5eb5d95 => 23
	i64 12063623837170009990, ; 114: System.Security => 0xa76a99f6ce740786 => 77
	i64 12102847907131387746, ; 115: System.Buffers => 0xa7f5f40c43256f62 => 28
	i64 12279246230491828964, ; 116: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 27
	i64 12451044538927396471, ; 117: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 51
	i64 12466513435562512481, ; 118: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 56
	i64 12538491095302438457, ; 119: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 45
	i64 12551451704392164662, ; 120: MySqlConnector.dll => 0xae2fb6d31fc42536 => 21
	i64 12963446364377008305, ; 121: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 75
	i64 13081516019875753442, ; 122: BouncyCastle.Crypto.dll => 0xb58ae182e046ade2 => 5
	i64 13162471042547327635, ; 123: System.Security.Permissions => 0xb6aa7dace9662293 => 38
	i64 13239908449246023275, ; 124: eResto.Android => 0xb7bd9a9628008e6b => 1
	i64 13312948366887790261, ; 125: eRestoREP2 => 0xb8c118013176a6b5 => 6
	i64 13370592475155966277, ; 126: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13454009404024712428, ; 127: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 71
	i64 13572454107664307259, ; 128: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 57
	i64 13647894001087880694, ; 129: System.Data.dll => 0xbd670f48cb071df6 => 73
	i64 13710614125866346983, ; 130: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 37
	i64 13959074834287824816, ; 131: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 51
	i64 13967638549803255703, ; 132: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 67
	i64 14124974489674258913, ; 133: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 45
	i64 14490100983606416275, ; 134: ZstdNet.dll => 0xc9172e129f661393 => 72
	i64 14792063746108907174, ; 135: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 71
	i64 14852515768018889994, ; 136: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 48
	i64 14912225920358050525, ; 137: System.Security.Principal.Windows => 0xcef2de7759506add => 39
	i64 14935719434541007538, ; 138: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 2
	i64 15370334346939861994, ; 139: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 47
	i64 15609085926864131306, ; 140: System.dll => 0xd89e9cf3334914ea => 32
	i64 15810740023422282496, ; 141: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 69
	i64 16154507427712707110, ; 142: System => 0xe03056ea4e39aa26 => 32
	i64 16337011941688632206, ; 143: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 39
	i64 16637862623548895820, ; 144: K4os.Compression.LZ4 => 0xe6e58fe7aa61724c => 11
	i64 16755018182064898362, ; 145: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 25
	i64 16833383113903931215, ; 146: mscorlib => 0xe99c30c1484d7f4f => 19
	i64 16873478996345296124, ; 147: K4os.Compression.LZ4.Streams.dll => 0xea2aa3bf662d14fc => 12
	i64 17553799493972570483, ; 148: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 9
	i64 17704177640604968747, ; 149: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 56
	i64 17710060891934109755, ; 150: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 55
	i64 17827832363535584534, ; 151: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 66
	i64 17838668724098252521, ; 152: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 28
	i64 17882897186074144999, ; 153: FormsViewGroup => 0xf82cd03e3ac830e7 => 8
	i64 17892495832318972303, ; 154: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 69
	i64 18129453464017766560, ; 155: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 76
	i64 18318849532986632368, ; 156: System.Security.dll => 0xfe39a097c37fa8b0 => 77
	i64 18370042311372477656 ; 157: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 26
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [158 x i32] [
	i32 65, i32 18, i32 63, i32 58, i32 16, i32 34, i32 20, i32 75, ; 0..7
	i32 52, i32 26, i32 50, i32 74, i32 68, i32 78, i32 15, i32 70, ; 8..15
	i32 25, i32 4, i32 27, i32 43, i32 22, i32 9, i32 44, i32 58, ; 16..23
	i32 55, i32 61, i32 22, i32 0, i32 50, i32 54, i32 35, i32 46, ; 24..31
	i32 42, i32 40, i32 19, i32 63, i32 35, i32 37, i32 29, i32 64, ; 32..39
	i32 70, i32 53, i32 14, i32 59, i32 33, i32 57, i32 24, i32 76, ; 40..47
	i32 42, i32 59, i32 6, i32 36, i32 1, i32 20, i32 67, i32 62, ; 48..55
	i32 36, i32 66, i32 14, i32 30, i32 72, i32 11, i32 68, i32 8, ; 56..63
	i32 24, i32 54, i32 15, i32 49, i32 2, i32 52, i32 41, i32 13, ; 64..71
	i32 41, i32 34, i32 64, i32 62, i32 3, i32 21, i32 73, i32 43, ; 72..79
	i32 53, i32 31, i32 10, i32 38, i32 10, i32 7, i32 31, i32 0, ; 80..87
	i32 5, i32 17, i32 65, i32 17, i32 44, i32 33, i32 46, i32 18, ; 88..95
	i32 74, i32 78, i32 13, i32 3, i32 7, i32 49, i32 47, i32 12, ; 96..103
	i32 16, i32 30, i32 40, i32 61, i32 60, i32 48, i32 29, i32 60, ; 104..111
	i32 23, i32 23, i32 77, i32 28, i32 27, i32 51, i32 56, i32 45, ; 112..119
	i32 21, i32 75, i32 5, i32 38, i32 1, i32 6, i32 4, i32 71, ; 120..127
	i32 57, i32 73, i32 37, i32 51, i32 67, i32 45, i32 72, i32 71, ; 128..135
	i32 48, i32 39, i32 2, i32 47, i32 32, i32 69, i32 32, i32 39, ; 136..143
	i32 11, i32 25, i32 19, i32 12, i32 9, i32 56, i32 55, i32 66, ; 144..151
	i32 28, i32 8, i32 69, i32 76, i32 77, i32 26 ; 152..157
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
