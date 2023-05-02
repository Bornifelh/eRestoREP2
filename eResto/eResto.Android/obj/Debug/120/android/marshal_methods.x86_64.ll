; ModuleID = 'obj\Debug\120\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\120\android\marshal_methods.x86_64.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [250 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 67
	i64 45886493525149769, ; 1: Xamarin.Forms.Material => 0xa30585d28e0849 => 103
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 20
	i64 187651954110998034, ; 3: Xamarin.Forms.ComboBox.dll => 0x29aac754231a612 => 101
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 57
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 89
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 90
	i64 329496744680355431, ; 7: LibVLCSharp.Forms.dll => 0x4929b8b2551f667 => 18
	i64 464346026994987652, ; 8: System.Reactive.dll => 0x671b04057e67284 => 38
	i64 595053104451889001, ; 9: MySql.Data => 0x8420da551592769 => 22
	i64 634308326490598313, ; 10: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 76
	i64 702024105029695270, ; 11: System.Drawing.Common => 0x9be17343c0e7726 => 114
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 70
	i64 870603111519317375, ; 13: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 28
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 66
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 112
	i64 996343623809489702, ; 16: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 106
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 122
	i64 1033362597737307432, ; 18: LibVLCSharp.dll => 0xe573dcec24e9d28 => 17
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 108
	i64 1301485588176585670, ; 20: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 27
	i64 1315114680217950157, ; 21: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 52
	i64 1425944114962822056, ; 22: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 6
	i64 1518315023656898250, ; 23: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 29
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 50
	i64 1628611045998245443, ; 25: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 78
	i64 1636321030536304333, ; 26: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 71
	i64 1731380447121279447, ; 27: Newtonsoft.Json => 0x18071957e9b889d7 => 24
	i64 1743969030606105336, ; 28: System.Memory.dll => 0x1833d297e88f2af8 => 35
	i64 1769105627832031750, ; 29: Google.Protobuf => 0x188d203205129a06 => 11
	i64 1795316252682057001, ; 30: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 51
	i64 1836611346387731153, ; 31: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 89
	i64 1875917498431009007, ; 32: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 48
	i64 1981742497975770890, ; 33: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 77
	i64 1986553961460820075, ; 34: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 99
	i64 2133195048986300728, ; 35: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 24
	i64 2136356949452311481, ; 36: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 82
	i64 2165725771938924357, ; 37: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 55
	i64 2179797141823972461, ; 38: LibVLCSharp.Forms.resources.dll => 0x1e4031f390d4646d => 0
	i64 2262844636196693701, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 66
	i64 2284400282711631002, ; 40: System.Web.Services => 0x1fb3d1f42fd4249a => 118
	i64 2329709569556905518, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 74
	i64 2337758774805907496, ; 42: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 39
	i64 2470498323731680442, ; 43: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 61
	i64 2479423007379663237, ; 44: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 94
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 40
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 47
	i64 2592350477072141967, ; 47: System.Xml.dll => 0x23f9e10627330e8f => 45
	i64 2624866290265602282, ; 48: mscorlib.dll => 0x246d65fbde2db8ea => 21
	i64 2694427813909235223, ; 49: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 86
	i64 2718512783523916468, ; 50: Xamarin.Forms.ComboBox => 0x25ba18f92b4d2ab4 => 101
	i64 2783046991838674048, ; 51: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 39
	i64 2815524396660695947, ; 52: System.Security.AccessControl => 0x2712c0857f68238b => 42
	i64 2851879596360956261, ; 53: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 31
	i64 2960931600190307745, ; 54: Xamarin.Forms.Core => 0x2917579a49927da1 => 102
	i64 3017704767998173186, ; 55: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 108
	i64 3289520064315143713, ; 56: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 73
	i64 3303437397778967116, ; 57: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 49
	i64 3311221304742556517, ; 58: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 37
	i64 3415571142686892312, ; 59: LibVLCSharp.Android.AWindow.dll => 0x2f668bdb98ed6118 => 16
	i64 3493805808809882663, ; 60: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 92
	i64 3522470458906976663, ; 61: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 91
	i64 3531994851595924923, ; 62: System.Numerics => 0x31042a9aade235bb => 36
	i64 3571415421602489686, ; 63: System.Runtime.dll => 0x319037675df7e556 => 40
	i64 3716579019761409177, ; 64: netstandard.dll => 0x3393f0ed5c8c5c99 => 2
	i64 3727469159507183293, ; 65: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 88
	i64 3772598417116884899, ; 66: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 67
	i64 3966267475168208030, ; 67: System.Memory => 0x370b03412596249e => 35
	i64 4337444564132831293, ; 68: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 26
	i64 4525561845656915374, ; 69: System.ServiceModel.Internals => 0x3ece06856b710dae => 119
	i64 4636684751163556186, ; 70: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 96
	i64 4782108999019072045, ; 71: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 54
	i64 4794310189461587505, ; 72: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 47
	i64 4795410492532947900, ; 73: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 91
	i64 4832997361000890286, ; 74: eRestoREP2.dll => 0x4312417e56dbbfae => 8
	i64 4853321196694829351, ; 75: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 41
	i64 5023290012328585804, ; 76: eResto.Android.dll => 0x45b64fa6d49cea4c => 1
	i64 5032256205035195147, ; 77: MySql.Data.dll => 0x45d62a5b3fe0cb0b => 22
	i64 5142919913060024034, ; 78: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 105
	i64 5203618020066742981, ; 79: Xamarin.Essentials => 0x4836f704f0e652c5 => 100
	i64 5205316157927637098, ; 80: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 80
	i64 5290786973231294105, ; 81: System.Runtime.Loader => 0x496ca6b869b72699 => 41
	i64 5348796042099802469, ; 82: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 81
	i64 5375264076663995773, ; 83: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 104
	i64 5376510917114486089, ; 84: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 94
	i64 5407669491340641765, ; 85: LibVLCSharp.Android.AWindow => 0x4b0be6c0561385e5 => 16
	i64 5408338804355907810, ; 86: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 93
	i64 5451019430259338467, ; 87: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 60
	i64 5507995362134886206, ; 88: System.Core.dll => 0x4c705499688c873e => 32
	i64 5625184805588031307, ; 89: ZstdNet => 0x4e10abc6f4ffd74b => 110
	i64 5692067934154308417, ; 90: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 98
	i64 5757522595884336624, ; 91: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 58
	i64 5812387745074149618, ; 92: K4os.Compression.LZ4.dll => 0x50a9bfdbd9fa78f2 => 13
	i64 5814345312393086621, ; 93: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 86
	i64 5896680224035167651, ; 94: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 75
	i64 6085203216496545422, ; 95: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 106
	i64 6086316965293125504, ; 96: FormsViewGroup.dll => 0x5476f10882baef80 => 10
	i64 6183170893902868313, ; 97: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 26
	i64 6319713645133255417, ; 98: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 76
	i64 6401687960814735282, ; 99: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 74
	i64 6504860066809920875, ; 100: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 55
	i64 6508023222691401344, ; 101: LibVLCSharp => 0x5a5124a3da838e80 => 17
	i64 6548213210057960872, ; 102: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 64
	i64 6591024623626361694, ; 103: System.Web.Services.dll => 0x5b7805f9751a1b5e => 118
	i64 6617685658146568858, ; 104: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 3
	i64 6659513131007730089, ; 105: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 70
	i64 6876862101832370452, ; 106: System.Xml.Linq => 0x5f6f85a57d108914 => 46
	i64 6894844156784520562, ; 107: System.Numerics.Vectors => 0x5faf683aead1ad72 => 37
	i64 7036436454368433159, ; 108: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 72
	i64 7103753931438454322, ; 109: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 69
	i64 7141577505875122296, ; 110: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 4
	i64 7338192458477945005, ; 111: System.Reflection => 0x65d67f295d0740ad => 123
	i64 7451202609009583483, ; 112: K4os.Hash.xxHash => 0x6767fd4b737ae57b => 15
	i64 7488575175965059935, ; 113: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 46
	i64 7602111570124318452, ; 114: System.Reactive => 0x698020320025a6f4 => 38
	i64 7635363394907363464, ; 115: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 102
	i64 7637365915383206639, ; 116: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 100
	i64 7654504624184590948, ; 117: System.Net.Http => 0x6a3a4366801b8264 => 5
	i64 7702918024138448955, ; 118: MySqlConnector => 0x6ae6432192b9e03b => 23
	i64 7820441508502274321, ; 119: System.Data => 0x6c87ca1e14ff8111 => 111
	i64 7836164640616011524, ; 120: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 50
	i64 8044118961405839122, ; 121: System.ComponentModel.Composition => 0x6fa2739369944712 => 117
	i64 8083354569033831015, ; 122: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 73
	i64 8087206902342787202, ; 123: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 33
	i64 8103644804370223335, ; 124: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 113
	i64 8167236081217502503, ; 125: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 12
	i64 8398329775253868912, ; 126: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 59
	i64 8400357532724379117, ; 127: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 85
	i64 8476857680833348370, ; 128: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 43
	i64 8601935802264776013, ; 129: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 93
	i64 8626175481042262068, ; 130: Java.Interop => 0x77b654e585b55834 => 12
	i64 8639588376636138208, ; 131: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 84
	i64 8684531736582871431, ; 132: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 116
	i64 8702320156596882678, ; 133: Firebase.dll => 0x78c4da1357adccf6 => 9
	i64 8725526185868997716, ; 134: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 33
	i64 8895825146446987799, ; 135: LibVLCSharp.Forms.resources => 0x7b7451d6adf5c217 => 0
	i64 9041985878101337471, ; 136: BouncyCastle.Crypto => 0x7d7b963fe854257f => 7
	i64 9057635389615298436, ; 137: LiteDB => 0x7db32f65bf06d784 => 19
	i64 9290408134796603763, ; 138: Xamarin.Forms.Material.dll => 0x80ee28f9d4f37173 => 103
	i64 9296667808972889535, ; 139: LiteDB.dll => 0x8104661dcca35dbf => 19
	i64 9312692141327339315, ; 140: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 98
	i64 9324707631942237306, ; 141: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 51
	i64 9584643793929893533, ; 142: System.IO.dll => 0x85037ebfbbd7f69d => 124
	i64 9662334977499516867, ; 143: System.Numerics.dll => 0x8617827802b0cfc3 => 36
	i64 9678050649315576968, ; 144: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 61
	i64 9711637524876806384, ; 145: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 81
	i64 9808709177481450983, ; 146: Mono.Android.dll => 0x881f890734e555e7 => 20
	i64 9825649861376906464, ; 147: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 58
	i64 9834056768316610435, ; 148: System.Transactions.dll => 0x8879968718899783 => 112
	i64 9998632235833408227, ; 149: Mono.Security => 0x8ac2470b209ebae3 => 122
	i64 9998685624638532270, ; 150: K4os.Hash.xxHash.dll => 0x8ac27799ad626aae => 15
	i64 10038780035334861115, ; 151: System.Net.Http.dll => 0x8b50e941206af13b => 5
	i64 10144742755892837524, ; 152: Firebase => 0x8cc95dc98eb5bc94 => 9
	i64 10229024438826829339, ; 153: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 64
	i64 10376576884623852283, ; 154: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 92
	i64 10430153318873392755, ; 155: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 62
	i64 10847732767863316357, ; 156: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 52
	i64 10885087467875303060, ; 157: K4os.Compression.LZ4.Streams => 0x970f99615fc37e94 => 14
	i64 10956285090514655176, ; 158: LibVLCSharp.Forms => 0x980c8b3dae08d7c8 => 18
	i64 11023048688141570732, ; 159: System.Core => 0x98f9bc61168392ac => 32
	i64 11037814507248023548, ; 160: System.Xml => 0x992e31d0412bf7fc => 45
	i64 11122995063473561350, ; 161: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 99
	i64 11162124722117608902, ; 162: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 97
	i64 11340910727871153756, ; 163: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 63
	i64 11341245327015630248, ; 164: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 31
	i64 11392833485892708388, ; 165: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 87
	i64 11529969570048099689, ; 166: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 97
	i64 11578238080964724296, ; 167: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 72
	i64 11580057168383206117, ; 168: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 48
	i64 11597940890313164233, ; 169: netstandard => 0xa0f429ca8d1805c9 => 2
	i64 11672361001936329215, ; 170: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 69
	i64 11739066727115742305, ; 171: SQLite-net.dll => 0xa2e98afdf8575c61 => 25
	i64 11806260347154423189, ; 172: SQLite-net => 0xa3d8433bc5eb5d95 => 25
	i64 12011556116648931059, ; 173: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 120
	i64 12063623837170009990, ; 174: System.Security => 0xa76a99f6ce740786 => 121
	i64 12102847907131387746, ; 175: System.Buffers => 0xa7f5f40c43256f62 => 30
	i64 12137774235383566651, ; 176: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 95
	i64 12279246230491828964, ; 177: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 29
	i64 12451044538927396471, ; 178: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 68
	i64 12466513435562512481, ; 179: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 79
	i64 12487638416075308985, ; 180: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 65
	i64 12538491095302438457, ; 181: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 56
	i64 12550732019250633519, ; 182: System.IO.Compression => 0xae2d28465e8e1b2f => 115
	i64 12551451704392164662, ; 183: MySqlConnector.dll => 0xae2fb6d31fc42536 => 23
	i64 12700543734426720211, ; 184: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 57
	i64 12708238894395270091, ; 185: System.IO => 0xb05cbbf17d3ba3cb => 124
	i64 12963446364377008305, ; 186: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 114
	i64 13081516019875753442, ; 187: BouncyCastle.Crypto.dll => 0xb58ae182e046ade2 => 7
	i64 13162471042547327635, ; 188: System.Security.Permissions => 0xb6aa7dace9662293 => 43
	i64 13239908449246023275, ; 189: eResto.Android => 0xb7bd9a9628008e6b => 1
	i64 13312948366887790261, ; 190: eRestoREP2 => 0xb8c118013176a6b5 => 8
	i64 13370592475155966277, ; 191: System.Runtime.Serialization => 0xb98de304062ea945 => 6
	i64 13401370062847626945, ; 192: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 95
	i64 13404347523447273790, ; 193: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 59
	i64 13454009404024712428, ; 194: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 109
	i64 13491513212026656886, ; 195: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 53
	i64 13572454107664307259, ; 196: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 88
	i64 13647894001087880694, ; 197: System.Data.dll => 0xbd670f48cb071df6 => 111
	i64 13710614125866346983, ; 198: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 42
	i64 13959074834287824816, ; 199: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 68
	i64 13967638549803255703, ; 200: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 105
	i64 14124974489674258913, ; 201: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 56
	i64 14172845254133543601, ; 202: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 82
	i64 14261073672896646636, ; 203: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 87
	i64 14327695147300244862, ; 204: System.Reflection.dll => 0xc6d632d338eb4d7e => 123
	i64 14486659737292545672, ; 205: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 75
	i64 14490100983606416275, ; 206: ZstdNet.dll => 0xc9172e129f661393 => 110
	i64 14644440854989303794, ; 207: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 80
	i64 14792063746108907174, ; 208: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 109
	i64 14852515768018889994, ; 209: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 63
	i64 14912225920358050525, ; 210: System.Security.Principal.Windows => 0xcef2de7759506add => 44
	i64 14935719434541007538, ; 211: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 3
	i64 14987728460634540364, ; 212: System.IO.Compression.dll => 0xcfff1ba06622494c => 115
	i64 14988210264188246988, ; 213: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 65
	i64 15370334346939861994, ; 214: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 62
	i64 15582737692548360875, ; 215: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 78
	i64 15609085926864131306, ; 216: System.dll => 0xd89e9cf3334914ea => 34
	i64 15777549416145007739, ; 217: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 90
	i64 15810740023422282496, ; 218: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 107
	i64 16154507427712707110, ; 219: System => 0xe03056ea4e39aa26 => 34
	i64 16337011941688632206, ; 220: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 44
	i64 16565028646146589191, ; 221: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 117
	i64 16621146507174665210, ; 222: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 60
	i64 16637862623548895820, ; 223: K4os.Compression.LZ4 => 0xe6e58fe7aa61724c => 13
	i64 16677317093839702854, ; 224: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 85
	i64 16755018182064898362, ; 225: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 27
	i64 16822611501064131242, ; 226: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 113
	i64 16833383113903931215, ; 227: mscorlib => 0xe99c30c1484d7f4f => 21
	i64 16866861824412579935, ; 228: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 4
	i64 16873478996345296124, ; 229: K4os.Compression.LZ4.Streams.dll => 0xea2aa3bf662d14fc => 14
	i64 17024911836938395553, ; 230: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 49
	i64 17031351772568316411, ; 231: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 83
	i64 17037200463775726619, ; 232: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 71
	i64 17523946658117960076, ; 233: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 120
	i64 17544493274320527064, ; 234: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 54
	i64 17553799493972570483, ; 235: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 11
	i64 17704177640604968747, ; 236: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 79
	i64 17710060891934109755, ; 237: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 77
	i64 17827832363535584534, ; 238: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 104
	i64 17838668724098252521, ; 239: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 30
	i64 17882897186074144999, ; 240: FormsViewGroup => 0xf82cd03e3ac830e7 => 10
	i64 17892495832318972303, ; 241: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 107
	i64 17928294245072900555, ; 242: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 116
	i64 18116111925905154859, ; 243: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 53
	i64 18121036031235206392, ; 244: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 83
	i64 18129453464017766560, ; 245: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 119
	i64 18305135509493619199, ; 246: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 84
	i64 18318849532986632368, ; 247: System.Security.dll => 0xfe39a097c37fa8b0 => 121
	i64 18370042311372477656, ; 248: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 28
	i64 18380184030268848184 ; 249: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 96
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [250 x i32] [
	i32 67, i32 103, i32 20, i32 101, i32 57, i32 89, i32 90, i32 18, ; 0..7
	i32 38, i32 22, i32 76, i32 114, i32 70, i32 28, i32 66, i32 112, ; 8..15
	i32 106, i32 122, i32 17, i32 108, i32 27, i32 52, i32 6, i32 29, ; 16..23
	i32 50, i32 78, i32 71, i32 24, i32 35, i32 11, i32 51, i32 89, ; 24..31
	i32 48, i32 77, i32 99, i32 24, i32 82, i32 55, i32 0, i32 66, ; 32..39
	i32 118, i32 74, i32 39, i32 61, i32 94, i32 40, i32 47, i32 45, ; 40..47
	i32 21, i32 86, i32 101, i32 39, i32 42, i32 31, i32 102, i32 108, ; 48..55
	i32 73, i32 49, i32 37, i32 16, i32 92, i32 91, i32 36, i32 40, ; 56..63
	i32 2, i32 88, i32 67, i32 35, i32 26, i32 119, i32 96, i32 54, ; 64..71
	i32 47, i32 91, i32 8, i32 41, i32 1, i32 22, i32 105, i32 100, ; 72..79
	i32 80, i32 41, i32 81, i32 104, i32 94, i32 16, i32 93, i32 60, ; 80..87
	i32 32, i32 110, i32 98, i32 58, i32 13, i32 86, i32 75, i32 106, ; 88..95
	i32 10, i32 26, i32 76, i32 74, i32 55, i32 17, i32 64, i32 118, ; 96..103
	i32 3, i32 70, i32 46, i32 37, i32 72, i32 69, i32 4, i32 123, ; 104..111
	i32 15, i32 46, i32 38, i32 102, i32 100, i32 5, i32 23, i32 111, ; 112..119
	i32 50, i32 117, i32 73, i32 33, i32 113, i32 12, i32 59, i32 85, ; 120..127
	i32 43, i32 93, i32 12, i32 84, i32 116, i32 9, i32 33, i32 0, ; 128..135
	i32 7, i32 19, i32 103, i32 19, i32 98, i32 51, i32 124, i32 36, ; 136..143
	i32 61, i32 81, i32 20, i32 58, i32 112, i32 122, i32 15, i32 5, ; 144..151
	i32 9, i32 64, i32 92, i32 62, i32 52, i32 14, i32 18, i32 32, ; 152..159
	i32 45, i32 99, i32 97, i32 63, i32 31, i32 87, i32 97, i32 72, ; 160..167
	i32 48, i32 2, i32 69, i32 25, i32 25, i32 120, i32 121, i32 30, ; 168..175
	i32 95, i32 29, i32 68, i32 79, i32 65, i32 56, i32 115, i32 23, ; 176..183
	i32 57, i32 124, i32 114, i32 7, i32 43, i32 1, i32 8, i32 6, ; 184..191
	i32 95, i32 59, i32 109, i32 53, i32 88, i32 111, i32 42, i32 68, ; 192..199
	i32 105, i32 56, i32 82, i32 87, i32 123, i32 75, i32 110, i32 80, ; 200..207
	i32 109, i32 63, i32 44, i32 3, i32 115, i32 65, i32 62, i32 78, ; 208..215
	i32 34, i32 90, i32 107, i32 34, i32 44, i32 117, i32 60, i32 13, ; 216..223
	i32 85, i32 27, i32 113, i32 21, i32 4, i32 14, i32 49, i32 83, ; 224..231
	i32 71, i32 120, i32 54, i32 11, i32 79, i32 77, i32 104, i32 30, ; 232..239
	i32 10, i32 107, i32 116, i32 53, i32 83, i32 119, i32 84, i32 121, ; 240..247
	i32 28, i32 96 ; 248..249
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
