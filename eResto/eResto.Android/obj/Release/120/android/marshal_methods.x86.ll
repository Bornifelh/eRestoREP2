; ModuleID = 'obj\Release\120\android\marshal_methods.x86.ll'
source_filename = "obj\Release\120\android\marshal_methods.x86.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [158 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 71
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 22
	i32 57145110, ; 2: ZstdNet => 0x367f716 => 72
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 64
	i32 182336117, ; 4: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 59
	i32 225506522, ; 5: Xamarin.Forms.ComboBox => 0xd70f4da => 63
	i32 236795011, ; 6: Xamarin.Forms.ComboBox.dll => 0xe1d3483 => 63
	i32 318968648, ; 7: Xamarin.AndroidX.Activity.dll => 0x13031348 => 42
	i32 321597661, ; 8: System.Numerics => 0x132b30dd => 33
	i32 342366114, ; 9: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 53
	i32 347068432, ; 10: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 26
	i32 377582315, ; 11: eRestoREP2 => 0x168172eb => 6
	i32 381494705, ; 12: Xamarin.Forms.Material => 0x16bd25b1 => 65
	i32 393699800, ; 13: Firebase => 0x177761d8 => 7
	i32 442521989, ; 14: Xamarin.Essentials => 0x1a605985 => 62
	i32 450948140, ; 15: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 51
	i32 465846621, ; 16: mscorlib => 0x1bc4415d => 19
	i32 469710990, ; 17: System.dll => 0x1bff388e => 32
	i32 526420162, ; 18: System.Transactions.dll => 0x1f6088c2 => 74
	i32 610194910, ; 19: System.Reactive.dll => 0x245ed5de => 34
	i32 618636221, ; 20: K4os.Compression.LZ4.Streams => 0x24dfa3bd => 12
	i32 627609679, ; 21: Xamarin.AndroidX.CustomView => 0x2568904f => 49
	i32 690569205, ; 22: System.Xml.Linq.dll => 0x29293ff5 => 41
	i32 722857257, ; 23: System.Runtime.Loader.dll => 0x2b15ed29 => 36
	i32 724449417, ; 24: eResto.Android.dll => 0x2b2e3889 => 1
	i32 748832960, ; 25: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 24
	i32 782754170, ; 26: eRestoREP2.dll => 0x2ea7e17a => 6
	i32 809851609, ; 27: System.Drawing.Common.dll => 0x30455ad9 => 75
	i32 928116545, ; 28: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 71
	i32 955402788, ; 29: Newtonsoft.Json => 0x38f24a24 => 22
	i32 967690846, ; 30: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 53
	i32 974778368, ; 31: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 983077409, ; 32: MySql.Data.dll => 0x3a989221 => 20
	i32 1012816738, ; 33: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 58
	i32 1035644815, ; 34: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 44
	i32 1042160112, ; 35: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 68
	i32 1052210849, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 55
	i32 1098259244, ; 37: System => 0x41761b2c => 32
	i32 1248760427, ; 38: LibVLCSharp.Forms.resources.dll => 0x4a6e926b => 0
	i32 1269851834, ; 39: BouncyCastle.Crypto => 0x4bb066ba => 5
	i32 1292207520, ; 40: SQLitePCLRaw.core.dll => 0x4d0585a0 => 25
	i32 1293217323, ; 41: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 50
	i32 1365406463, ; 42: System.ServiceModel.Internals.dll => 0x516272ff => 76
	i32 1376866003, ; 43: Xamarin.AndroidX.SavedState => 0x52114ed3 => 58
	i32 1406073936, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 46
	i32 1411638395, ; 45: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 35
	i32 1460219004, ; 46: Xamarin.Forms.Xaml => 0x57092c7c => 69
	i32 1469204771, ; 47: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 43
	i32 1487250139, ; 48: K4os.Hash.xxHash => 0x58a5a2db => 13
	i32 1511525525, ; 49: MySqlConnector => 0x5a180c95 => 21
	i32 1592978981, ; 50: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1596753216, ; 51: BouncyCastle.Crypto.dll => 0x5f2c8540 => 5
	i32 1622152042, ; 52: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 56
	i32 1636350590, ; 53: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 48
	i32 1639515021, ; 54: System.Net.Http.dll => 0x61b9038d => 3
	i32 1658251792, ; 55: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 70
	i32 1711441057, ; 56: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 26
	i32 1729485958, ; 57: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 45
	i32 1766324549, ; 58: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 59
	i32 1776026572, ; 59: System.Core.dll => 0x69dc03cc => 30
	i32 1788241197, ; 60: Xamarin.AndroidX.Fragment => 0x6a96652d => 51
	i32 1808609942, ; 61: Xamarin.AndroidX.Loader => 0x6bcd3296 => 56
	i32 1813201214, ; 62: Xamarin.Google.Android.Material => 0x6c13413e => 70
	i32 1867746548, ; 63: Xamarin.Essentials.dll => 0x6f538cf4 => 62
	i32 1878053835, ; 64: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 69
	i32 1925302748, ; 65: K4os.Compression.LZ4.dll => 0x72c1c9dc => 11
	i32 2011961780, ; 66: System.Buffers.dll => 0x77ec19b4 => 28
	i32 2019465201, ; 67: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 55
	i32 2055257422, ; 68: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 54
	i32 2060907597, ; 69: LibVLCSharp.Android.AWindow.dll => 0x7ad6f44d => 14
	i32 2097448633, ; 70: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 52
	i32 2103459038, ; 71: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 27
	i32 2113902067, ; 72: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 66
	i32 2126786730, ; 73: Xamarin.Forms.Platform.Android => 0x7ec430aa => 67
	i32 2201231467, ; 74: System.Net.Http => 0x8334206b => 3
	i32 2265110946, ; 75: System.Security.AccessControl.dll => 0x8702d9a2 => 37
	i32 2279755925, ; 76: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 57
	i32 2311876590, ; 77: LibVLCSharp => 0x89cc6fee => 15
	i32 2383496789, ; 78: System.Security.Principal.Windows.dll => 0x8e114655 => 39
	i32 2397082276, ; 79: Xamarin.Forms.PancakeView => 0x8ee092a4 => 66
	i32 2454886875, ; 80: LibVLCSharp.Forms.dll => 0x925299db => 16
	i32 2456452212, ; 81: LibVLCSharp.Android.AWindow => 0x926a7c74 => 14
	i32 2465273461, ; 82: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 24
	i32 2475788418, ; 83: Java.Interop.dll => 0x93918882 => 10
	i32 2486824558, ; 84: K4os.Hash.xxHash.dll => 0x9439ee6e => 13
	i32 2620871830, ; 85: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 48
	i32 2663698177, ; 86: System.Runtime.Loader => 0x9ec4cf01 => 36
	i32 2732626843, ; 87: Xamarin.AndroidX.Activity => 0xa2e0939b => 42
	i32 2737747696, ; 88: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 43
	i32 2765824710, ; 89: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 2
	i32 2766581644, ; 90: Xamarin.Forms.Core => 0xa4e6af8c => 64
	i32 2778768386, ; 91: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 60
	i32 2790396576, ; 92: LibVLCSharp.Forms.resources => 0xa65212a0 => 0
	i32 2810250172, ; 93: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 46
	i32 2819470561, ; 94: System.Xml.dll => 0xa80db4e1 => 40
	i32 2841355853, ; 95: System.Security.Permissions => 0xa95ba64d => 38
	i32 2853208004, ; 96: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 60
	i32 2905242038, ; 97: mscorlib.dll => 0xad2a79b6 => 19
	i32 2944313911, ; 98: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 29
	i32 2968338931, ; 99: System.Security.Principal.Windows => 0xb0ed41f3 => 39
	i32 2978675010, ; 100: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 50
	i32 3012788804, ; 101: System.Configuration.ConfigurationManager => 0xb3938244 => 29
	i32 3025069135, ; 102: K4os.Compression.LZ4.Streams.dll => 0xb44ee44f => 12
	i32 3044182254, ; 103: FormsViewGroup => 0xb57288ee => 8
	i32 3111772706, ; 104: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3132293585, ; 105: System.Security.AccessControl => 0xbab301d1 => 37
	i32 3204380047, ; 106: System.Data.dll => 0xbefef58f => 73
	i32 3213246214, ; 107: System.Security.Permissions.dll => 0xbf863f06 => 38
	i32 3225784146, ; 108: ZstdNet.dll => 0xc0458f52 => 72
	i32 3247949154, ; 109: Mono.Security => 0xc197c562 => 78
	i32 3258312781, ; 110: Xamarin.AndroidX.CardView => 0xc235e84d => 45
	i32 3286872994, ; 111: SQLite-net.dll => 0xc3e9b3a2 => 23
	i32 3317135071, ; 112: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 49
	i32 3317144872, ; 113: System.Data => 0xc5b79d28 => 73
	i32 3322403133, ; 114: Firebase.dll => 0xc607d93d => 7
	i32 3353484488, ; 115: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 52
	i32 3353544232, ; 116: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 61
	i32 3360279109, ; 117: SQLitePCLRaw.core => 0xc849ca45 => 25
	i32 3362522851, ; 118: Xamarin.AndroidX.Core => 0xc86c06e3 => 47
	i32 3366347497, ; 119: Java.Interop => 0xc8a662e9 => 10
	i32 3374999561, ; 120: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 57
	i32 3381033598, ; 121: K4os.Compression.LZ4 => 0xc9867a7e => 11
	i32 3395150330, ; 122: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 35
	i32 3404865022, ; 123: System.ServiceModel.Internals => 0xcaf21dfe => 76
	i32 3407215217, ; 124: Xamarin.CommunityToolkit => 0xcb15fa71 => 61
	i32 3429136800, ; 125: System.Xml => 0xcc6479a0 => 40
	i32 3440417946, ; 126: eResto.Android => 0xcd109c9a => 1
	i32 3467345667, ; 127: MySql.Data => 0xceab7f03 => 20
	i32 3476120550, ; 128: Mono.Android => 0xcf3163e6 => 18
	i32 3486566296, ; 129: System.Transactions => 0xcfd0c798 => 74
	i32 3499097210, ; 130: Google.Protobuf.dll => 0xd08ffc7a => 9
	i32 3509114376, ; 131: System.Xml.Linq => 0xd128d608 => 41
	i32 3515174580, ; 132: System.Security.dll => 0xd1854eb4 => 77
	i32 3536029504, ; 133: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 67
	i32 3596207933, ; 134: LiteDB.dll => 0xd659c73d => 17
	i32 3629588173, ; 135: LiteDB => 0xd8571ecd => 17
	i32 3632359727, ; 136: Xamarin.Forms.Platform => 0xd881692f => 68
	i32 3641597786, ; 137: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 54
	i32 3645630983, ; 138: Google.Protobuf => 0xd94bea07 => 9
	i32 3672681054, ; 139: Mono.Android.dll => 0xdae8aa5e => 18
	i32 3685813676, ; 140: Xamarin.Forms.Material.dll => 0xdbb10dac => 65
	i32 3689375977, ; 141: System.Drawing.Common => 0xdbe768e9 => 75
	i32 3697863005, ; 142: LibVLCSharp.Forms => 0xdc68e95d => 16
	i32 3731644420, ; 143: System.Reactive => 0xde6c6004 => 34
	i32 3748608112, ; 144: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 31
	i32 3754567612, ; 145: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 27
	i32 3777754709, ; 146: LibVLCSharp.dll => 0xe12bf655 => 15
	i32 3829621856, ; 147: System.Numerics.dll => 0xe4436460 => 33
	i32 3876362041, ; 148: SQLite-net => 0xe70c9739 => 23
	i32 3896760992, ; 149: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 47
	i32 3953953790, ; 150: System.Text.Encoding.CodePages => 0xebac8bfe => 2
	i32 3955647286, ; 151: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 44
	i32 4079385022, ; 152: MySqlConnector.dll => 0xf32679be => 21
	i32 4105002889, ; 153: Mono.Security.dll => 0xf4ad5f89 => 78
	i32 4151237749, ; 154: System.Core => 0xf76edc75 => 30
	i32 4185676441, ; 155: System.Security => 0xf97c5a99 => 77
	i32 4213026141, ; 156: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 31
	i32 4260525087 ; 157: System.Buffers => 0xfdf2741f => 28
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [158 x i32] [
	i32 71, i32 22, i32 72, i32 64, i32 59, i32 63, i32 63, i32 42, ; 0..7
	i32 33, i32 53, i32 26, i32 6, i32 65, i32 7, i32 62, i32 51, ; 8..15
	i32 19, i32 32, i32 74, i32 34, i32 12, i32 49, i32 41, i32 36, ; 16..23
	i32 1, i32 24, i32 6, i32 75, i32 71, i32 22, i32 53, i32 8, ; 24..31
	i32 20, i32 58, i32 44, i32 68, i32 55, i32 32, i32 0, i32 5, ; 32..39
	i32 25, i32 50, i32 76, i32 58, i32 46, i32 35, i32 69, i32 43, ; 40..47
	i32 13, i32 21, i32 4, i32 5, i32 56, i32 48, i32 3, i32 70, ; 48..55
	i32 26, i32 45, i32 59, i32 30, i32 51, i32 56, i32 70, i32 62, ; 56..63
	i32 69, i32 11, i32 28, i32 55, i32 54, i32 14, i32 52, i32 27, ; 64..71
	i32 66, i32 67, i32 3, i32 37, i32 57, i32 15, i32 39, i32 66, ; 72..79
	i32 16, i32 14, i32 24, i32 10, i32 13, i32 48, i32 36, i32 42, ; 80..87
	i32 43, i32 2, i32 64, i32 60, i32 0, i32 46, i32 40, i32 38, ; 88..95
	i32 60, i32 19, i32 29, i32 39, i32 50, i32 29, i32 12, i32 8, ; 96..103
	i32 4, i32 37, i32 73, i32 38, i32 72, i32 78, i32 45, i32 23, ; 104..111
	i32 49, i32 73, i32 7, i32 52, i32 61, i32 25, i32 47, i32 10, ; 112..119
	i32 57, i32 11, i32 35, i32 76, i32 61, i32 40, i32 1, i32 20, ; 120..127
	i32 18, i32 74, i32 9, i32 41, i32 77, i32 67, i32 17, i32 17, ; 128..135
	i32 68, i32 54, i32 9, i32 18, i32 65, i32 75, i32 16, i32 34, ; 136..143
	i32 31, i32 27, i32 15, i32 33, i32 23, i32 47, i32 2, i32 44, ; 144..151
	i32 21, i32 78, i32 30, i32 77, i32 31, i32 28 ; 152..157
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
