; ModuleID = 'obj\Debug\120\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\120\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [250 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 76
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 109
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 24
	i32 57145110, ; 3: ZstdNet => 0x367f716 => 110
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 102
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 90
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 90
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 57
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 91
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 55
	i32 225506522, ; 10: Xamarin.Forms.ComboBox => 0xd70f4da => 101
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 71
	i32 232815796, ; 12: System.Web.Services => 0xde07cb4 => 118
	i32 236795011, ; 13: Xamarin.Forms.ComboBox.dll => 0xe1d3483 => 101
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 60
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 75
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 69
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 47
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 36
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 73
	i32 347068432, ; 20: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 28
	i32 377582315, ; 21: eRestoREP2 => 0x168172eb => 8
	i32 381494705, ; 22: Xamarin.Forms.Material => 0x16bd25b1 => 103
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 35
	i32 393699800, ; 24: Firebase => 0x177761d8 => 9
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 59
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 100
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 68
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 21
	i32 469710990, ; 29: System.dll => 0x1bff388e => 34
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 69
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 80
	i32 526420162, ; 32: System.Transactions.dll => 0x1f6088c2 => 112
	i32 605376203, ; 33: System.IO.Compression.FileSystem => 0x24154ecb => 116
	i32 610194910, ; 34: System.Reactive.dll => 0x245ed5de => 38
	i32 618636221, ; 35: K4os.Compression.LZ4.Streams => 0x24dfa3bd => 14
	i32 627609679, ; 36: Xamarin.AndroidX.CustomView => 0x2568904f => 64
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 96
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 52
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 46
	i32 722857257, ; 40: System.Runtime.Loader.dll => 0x2b15ed29 => 41
	i32 724449417, ; 41: eResto.Android.dll => 0x2b2e3889 => 1
	i32 748832960, ; 42: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 26
	i32 775507847, ; 43: System.IO.Compression => 0x2e394f87 => 115
	i32 782754170, ; 44: eRestoREP2.dll => 0x2ea7e17a => 8
	i32 809851609, ; 45: System.Drawing.Common.dll => 0x30455ad9 => 114
	i32 843511501, ; 46: Xamarin.AndroidX.Print => 0x3246f6cd => 87
	i32 928116545, ; 47: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 109
	i32 955402788, ; 48: Newtonsoft.Json => 0x38f24a24 => 24
	i32 967690846, ; 49: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 73
	i32 974778368, ; 50: FormsViewGroup.dll => 0x3a19f000 => 10
	i32 983077409, ; 51: MySql.Data.dll => 0x3a989221 => 22
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 89
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 51
	i32 1042160112, ; 54: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 106
	i32 1052210849, ; 55: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 77
	i32 1098259244, ; 56: System => 0x41761b2c => 34
	i32 1175144683, ; 57: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 94
	i32 1178241025, ; 58: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 84
	i32 1204270330, ; 59: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 52
	i32 1248760427, ; 60: LibVLCSharp.Forms.resources.dll => 0x4a6e926b => 0
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 95
	i32 1269851834, ; 62: BouncyCastle.Crypto => 0x4bb066ba => 7
	i32 1292207520, ; 63: SQLitePCLRaw.core.dll => 0x4d0585a0 => 27
	i32 1293217323, ; 64: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 66
	i32 1364015309, ; 65: System.IO => 0x514d38cd => 124
	i32 1365406463, ; 66: System.ServiceModel.Internals.dll => 0x516272ff => 119
	i32 1376866003, ; 67: Xamarin.AndroidX.SavedState => 0x52114ed3 => 89
	i32 1395857551, ; 68: Xamarin.AndroidX.Media.dll => 0x5333188f => 81
	i32 1406073936, ; 69: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 61
	i32 1411638395, ; 70: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 39
	i32 1460219004, ; 71: Xamarin.Forms.Xaml => 0x57092c7c => 107
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 115
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 50
	i32 1487250139, ; 74: K4os.Hash.xxHash => 0x58a5a2db => 15
	i32 1511525525, ; 75: MySqlConnector => 0x5a180c95 => 23
	i32 1582372066, ; 76: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 65
	i32 1592978981, ; 77: System.Runtime.Serialization.dll => 0x5ef2ee25 => 6
	i32 1596753216, ; 78: BouncyCastle.Crypto.dll => 0x5f2c8540 => 7
	i32 1622152042, ; 79: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 79
	i32 1624863272, ; 80: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 98
	i32 1636350590, ; 81: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 63
	i32 1639515021, ; 82: System.Net.Http.dll => 0x61b9038d => 5
	i32 1657153582, ; 83: System.Runtime => 0x62c6282e => 40
	i32 1658241508, ; 84: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 92
	i32 1658251792, ; 85: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 108
	i32 1670060433, ; 86: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 60
	i32 1711441057, ; 87: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 28
	i32 1726116996, ; 88: System.Reflection.dll => 0x66e27484 => 123
	i32 1729485958, ; 89: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 56
	i32 1766324549, ; 90: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 91
	i32 1776026572, ; 91: System.Core.dll => 0x69dc03cc => 32
	i32 1788241197, ; 92: Xamarin.AndroidX.Fragment => 0x6a96652d => 68
	i32 1808609942, ; 93: Xamarin.AndroidX.Loader => 0x6bcd3296 => 79
	i32 1813201214, ; 94: Xamarin.Google.Android.Material => 0x6c13413e => 108
	i32 1818569960, ; 95: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 85
	i32 1867746548, ; 96: Xamarin.Essentials.dll => 0x6f538cf4 => 100
	i32 1878053835, ; 97: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 107
	i32 1885316902, ; 98: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 53
	i32 1904755420, ; 99: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 4
	i32 1919157823, ; 100: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 82
	i32 1925302748, ; 101: K4os.Compression.LZ4.dll => 0x72c1c9dc => 13
	i32 2011961780, ; 102: System.Buffers.dll => 0x77ec19b4 => 30
	i32 2019465201, ; 103: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 77
	i32 2055257422, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 74
	i32 2060907597, ; 105: LibVLCSharp.Android.AWindow.dll => 0x7ad6f44d => 16
	i32 2079903147, ; 106: System.Runtime.dll => 0x7bf8cdab => 40
	i32 2090596640, ; 107: System.Numerics.Vectors => 0x7c9bf920 => 37
	i32 2097448633, ; 108: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 70
	i32 2103459038, ; 109: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 29
	i32 2113902067, ; 110: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 104
	i32 2126786730, ; 111: Xamarin.Forms.Platform.Android => 0x7ec430aa => 105
	i32 2201231467, ; 112: System.Net.Http => 0x8334206b => 5
	i32 2217644978, ; 113: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 94
	i32 2244775296, ; 114: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 80
	i32 2256548716, ; 115: Xamarin.AndroidX.MultiDex => 0x8680336c => 82
	i32 2261435625, ; 116: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 72
	i32 2265110946, ; 117: System.Security.AccessControl.dll => 0x8702d9a2 => 42
	i32 2279755925, ; 118: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 88
	i32 2311876590, ; 119: LibVLCSharp => 0x89cc6fee => 17
	i32 2315684594, ; 120: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 48
	i32 2383496789, ; 121: System.Security.Principal.Windows.dll => 0x8e114655 => 44
	i32 2397082276, ; 122: Xamarin.Forms.PancakeView => 0x8ee092a4 => 104
	i32 2409053734, ; 123: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 86
	i32 2454886875, ; 124: LibVLCSharp.Forms.dll => 0x925299db => 18
	i32 2456452212, ; 125: LibVLCSharp.Android.AWindow => 0x926a7c74 => 16
	i32 2465273461, ; 126: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 26
	i32 2465532216, ; 127: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 59
	i32 2471841756, ; 128: netstandard.dll => 0x93554fdc => 2
	i32 2475788418, ; 129: Java.Interop.dll => 0x93918882 => 12
	i32 2486824558, ; 130: K4os.Hash.xxHash.dll => 0x9439ee6e => 15
	i32 2501346920, ; 131: System.Data.DataSetExtensions => 0x95178668 => 113
	i32 2505896520, ; 132: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 76
	i32 2581819634, ; 133: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 95
	i32 2620871830, ; 134: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 63
	i32 2624644809, ; 135: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 67
	i32 2633051222, ; 136: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 75
	i32 2660759594, ; 137: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 120
	i32 2663698177, ; 138: System.Runtime.Loader => 0x9ec4cf01 => 41
	i32 2693849962, ; 139: System.IO.dll => 0xa090e36a => 124
	i32 2701096212, ; 140: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 92
	i32 2732626843, ; 141: Xamarin.AndroidX.Activity => 0xa2e0939b => 47
	i32 2737747696, ; 142: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 50
	i32 2765824710, ; 143: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 3
	i32 2766581644, ; 144: Xamarin.Forms.Core => 0xa4e6af8c => 102
	i32 2778768386, ; 145: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 97
	i32 2790396576, ; 146: LibVLCSharp.Forms.resources => 0xa65212a0 => 0
	i32 2810250172, ; 147: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 61
	i32 2819470561, ; 148: System.Xml.dll => 0xa80db4e1 => 45
	i32 2841355853, ; 149: System.Security.Permissions => 0xa95ba64d => 43
	i32 2853208004, ; 150: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 97
	i32 2855708567, ; 151: Xamarin.AndroidX.Transition => 0xaa36a797 => 93
	i32 2867946736, ; 152: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 120
	i32 2901442782, ; 153: System.Reflection => 0xacf080de => 123
	i32 2903344695, ; 154: System.ComponentModel.Composition => 0xad0d8637 => 117
	i32 2905242038, ; 155: mscorlib.dll => 0xad2a79b6 => 21
	i32 2916838712, ; 156: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 98
	i32 2919462931, ; 157: System.Numerics.Vectors.dll => 0xae037813 => 37
	i32 2921128767, ; 158: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 49
	i32 2944313911, ; 159: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 31
	i32 2968338931, ; 160: System.Security.Principal.Windows => 0xb0ed41f3 => 44
	i32 2978675010, ; 161: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 66
	i32 3012788804, ; 162: System.Configuration.ConfigurationManager => 0xb3938244 => 31
	i32 3024354802, ; 163: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 71
	i32 3025069135, ; 164: K4os.Compression.LZ4.Streams.dll => 0xb44ee44f => 14
	i32 3044182254, ; 165: FormsViewGroup => 0xb57288ee => 10
	i32 3057625584, ; 166: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 83
	i32 3111772706, ; 167: System.Runtime.Serialization => 0xb979e222 => 6
	i32 3132293585, ; 168: System.Security.AccessControl => 0xbab301d1 => 42
	i32 3204380047, ; 169: System.Data.dll => 0xbefef58f => 111
	i32 3211777861, ; 170: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 65
	i32 3213246214, ; 171: System.Security.Permissions.dll => 0xbf863f06 => 43
	i32 3225784146, ; 172: ZstdNet.dll => 0xc0458f52 => 110
	i32 3247949154, ; 173: Mono.Security => 0xc197c562 => 122
	i32 3258312781, ; 174: Xamarin.AndroidX.CardView => 0xc235e84d => 56
	i32 3267021929, ; 175: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 54
	i32 3286872994, ; 176: SQLite-net.dll => 0xc3e9b3a2 => 25
	i32 3317135071, ; 177: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 64
	i32 3317144872, ; 178: System.Data => 0xc5b79d28 => 111
	i32 3322403133, ; 179: Firebase.dll => 0xc607d93d => 9
	i32 3340431453, ; 180: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 53
	i32 3346324047, ; 181: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 84
	i32 3353484488, ; 182: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 70
	i32 3353544232, ; 183: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 99
	i32 3360279109, ; 184: SQLitePCLRaw.core => 0xc849ca45 => 27
	i32 3362522851, ; 185: Xamarin.AndroidX.Core => 0xc86c06e3 => 62
	i32 3366347497, ; 186: Java.Interop => 0xc8a662e9 => 12
	i32 3374999561, ; 187: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 88
	i32 3381033598, ; 188: K4os.Compression.LZ4 => 0xc9867a7e => 13
	i32 3395150330, ; 189: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 39
	i32 3404865022, ; 190: System.ServiceModel.Internals => 0xcaf21dfe => 119
	i32 3407215217, ; 191: Xamarin.CommunityToolkit => 0xcb15fa71 => 99
	i32 3429136800, ; 192: System.Xml => 0xcc6479a0 => 45
	i32 3430777524, ; 193: netstandard => 0xcc7d82b4 => 2
	i32 3440417946, ; 194: eResto.Android => 0xcd109c9a => 1
	i32 3441283291, ; 195: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 67
	i32 3467345667, ; 196: MySql.Data => 0xceab7f03 => 22
	i32 3476120550, ; 197: Mono.Android => 0xcf3163e6 => 20
	i32 3486566296, ; 198: System.Transactions => 0xcfd0c798 => 112
	i32 3493954962, ; 199: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 58
	i32 3499097210, ; 200: Google.Protobuf.dll => 0xd08ffc7a => 11
	i32 3501239056, ; 201: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 54
	i32 3509114376, ; 202: System.Xml.Linq => 0xd128d608 => 46
	i32 3515174580, ; 203: System.Security.dll => 0xd1854eb4 => 121
	i32 3536029504, ; 204: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 105
	i32 3567349600, ; 205: System.ComponentModel.Composition.dll => 0xd4a16f60 => 117
	i32 3596207933, ; 206: LiteDB.dll => 0xd659c73d => 19
	i32 3618140916, ; 207: Xamarin.AndroidX.Preference => 0xd7a872f4 => 86
	i32 3627220390, ; 208: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 87
	i32 3629588173, ; 209: LiteDB => 0xd8571ecd => 19
	i32 3632359727, ; 210: Xamarin.Forms.Platform => 0xd881692f => 106
	i32 3633644679, ; 211: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 49
	i32 3641597786, ; 212: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 74
	i32 3645630983, ; 213: Google.Protobuf => 0xd94bea07 => 11
	i32 3672681054, ; 214: Mono.Android.dll => 0xdae8aa5e => 20
	i32 3676310014, ; 215: System.Web.Services.dll => 0xdb2009fe => 118
	i32 3682565725, ; 216: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 55
	i32 3684561358, ; 217: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 58
	i32 3684933406, ; 218: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 4
	i32 3685813676, ; 219: Xamarin.Forms.Material.dll => 0xdbb10dac => 103
	i32 3689375977, ; 220: System.Drawing.Common => 0xdbe768e9 => 114
	i32 3697863005, ; 221: LibVLCSharp.Forms => 0xdc68e95d => 18
	i32 3718780102, ; 222: Xamarin.AndroidX.Annotation => 0xdda814c6 => 48
	i32 3724971120, ; 223: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 83
	i32 3731644420, ; 224: System.Reactive => 0xde6c6004 => 38
	i32 3748608112, ; 225: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 33
	i32 3754567612, ; 226: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 29
	i32 3758932259, ; 227: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 72
	i32 3777754709, ; 228: LibVLCSharp.dll => 0xe12bf655 => 17
	i32 3786282454, ; 229: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 57
	i32 3822602673, ; 230: Xamarin.AndroidX.Media => 0xe3d849b1 => 81
	i32 3829621856, ; 231: System.Numerics.dll => 0xe4436460 => 36
	i32 3876362041, ; 232: SQLite-net => 0xe70c9739 => 25
	i32 3885922214, ; 233: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 93
	i32 3896760992, ; 234: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 62
	i32 3920810846, ; 235: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 116
	i32 3921031405, ; 236: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 96
	i32 3931092270, ; 237: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 85
	i32 3945713374, ; 238: System.Data.DataSetExtensions.dll => 0xeb2ecede => 113
	i32 3953953790, ; 239: System.Text.Encoding.CodePages => 0xebac8bfe => 3
	i32 3955647286, ; 240: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 51
	i32 4025784931, ; 241: System.Memory => 0xeff49a63 => 35
	i32 4079385022, ; 242: MySqlConnector.dll => 0xf32679be => 23
	i32 4105002889, ; 243: Mono.Security.dll => 0xf4ad5f89 => 122
	i32 4151237749, ; 244: System.Core => 0xf76edc75 => 32
	i32 4182413190, ; 245: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 78
	i32 4185676441, ; 246: System.Security => 0xf97c5a99 => 121
	i32 4213026141, ; 247: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 33
	i32 4260525087, ; 248: System.Buffers => 0xfdf2741f => 30
	i32 4292120959 ; 249: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 78
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [250 x i32] [
	i32 76, i32 109, i32 24, i32 110, i32 102, i32 90, i32 90, i32 57, ; 0..7
	i32 91, i32 55, i32 101, i32 71, i32 118, i32 101, i32 60, i32 75, ; 8..15
	i32 69, i32 47, i32 36, i32 73, i32 28, i32 8, i32 103, i32 35, ; 16..23
	i32 9, i32 59, i32 100, i32 68, i32 21, i32 34, i32 69, i32 80, ; 24..31
	i32 112, i32 116, i32 38, i32 14, i32 64, i32 96, i32 52, i32 46, ; 32..39
	i32 41, i32 1, i32 26, i32 115, i32 8, i32 114, i32 87, i32 109, ; 40..47
	i32 24, i32 73, i32 10, i32 22, i32 89, i32 51, i32 106, i32 77, ; 48..55
	i32 34, i32 94, i32 84, i32 52, i32 0, i32 95, i32 7, i32 27, ; 56..63
	i32 66, i32 124, i32 119, i32 89, i32 81, i32 61, i32 39, i32 107, ; 64..71
	i32 115, i32 50, i32 15, i32 23, i32 65, i32 6, i32 7, i32 79, ; 72..79
	i32 98, i32 63, i32 5, i32 40, i32 92, i32 108, i32 60, i32 28, ; 80..87
	i32 123, i32 56, i32 91, i32 32, i32 68, i32 79, i32 108, i32 85, ; 88..95
	i32 100, i32 107, i32 53, i32 4, i32 82, i32 13, i32 30, i32 77, ; 96..103
	i32 74, i32 16, i32 40, i32 37, i32 70, i32 29, i32 104, i32 105, ; 104..111
	i32 5, i32 94, i32 80, i32 82, i32 72, i32 42, i32 88, i32 17, ; 112..119
	i32 48, i32 44, i32 104, i32 86, i32 18, i32 16, i32 26, i32 59, ; 120..127
	i32 2, i32 12, i32 15, i32 113, i32 76, i32 95, i32 63, i32 67, ; 128..135
	i32 75, i32 120, i32 41, i32 124, i32 92, i32 47, i32 50, i32 3, ; 136..143
	i32 102, i32 97, i32 0, i32 61, i32 45, i32 43, i32 97, i32 93, ; 144..151
	i32 120, i32 123, i32 117, i32 21, i32 98, i32 37, i32 49, i32 31, ; 152..159
	i32 44, i32 66, i32 31, i32 71, i32 14, i32 10, i32 83, i32 6, ; 160..167
	i32 42, i32 111, i32 65, i32 43, i32 110, i32 122, i32 56, i32 54, ; 168..175
	i32 25, i32 64, i32 111, i32 9, i32 53, i32 84, i32 70, i32 99, ; 176..183
	i32 27, i32 62, i32 12, i32 88, i32 13, i32 39, i32 119, i32 99, ; 184..191
	i32 45, i32 2, i32 1, i32 67, i32 22, i32 20, i32 112, i32 58, ; 192..199
	i32 11, i32 54, i32 46, i32 121, i32 105, i32 117, i32 19, i32 86, ; 200..207
	i32 87, i32 19, i32 106, i32 49, i32 74, i32 11, i32 20, i32 118, ; 208..215
	i32 55, i32 58, i32 4, i32 103, i32 114, i32 18, i32 48, i32 83, ; 216..223
	i32 38, i32 33, i32 29, i32 72, i32 17, i32 57, i32 81, i32 36, ; 224..231
	i32 25, i32 93, i32 62, i32 116, i32 96, i32 85, i32 113, i32 3, ; 232..239
	i32 51, i32 35, i32 23, i32 122, i32 32, i32 78, i32 121, i32 33, ; 240..247
	i32 30, i32 78 ; 248..249
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
