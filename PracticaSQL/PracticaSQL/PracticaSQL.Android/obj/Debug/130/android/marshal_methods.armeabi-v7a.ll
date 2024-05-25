; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [130 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 16
	i32 57263871, ; 1: Xamarin.Forms.Core.dll => 0x369c6ff => 54
	i32 182336117, ; 2: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 51
	i32 318968648, ; 3: Xamarin.AndroidX.Activity.dll => 0x13031348 => 35
	i32 321597661, ; 4: System.Numerics => 0x132b30dd => 31
	i32 342366114, ; 5: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 45
	i32 442521989, ; 6: Xamarin.Essentials => 0x1a605985 => 53
	i32 450948140, ; 7: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 43
	i32 465846621, ; 8: mscorlib => 0x1bc4415d => 22
	i32 469710990, ; 9: System.dll => 0x1bff388e => 30
	i32 513247710, ; 10: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 20
	i32 526420162, ; 11: System.Transactions.dll => 0x1f6088c2 => 60
	i32 539058512, ; 12: Microsoft.Extensions.Logging => 0x20216150 => 18
	i32 627609679, ; 13: Xamarin.AndroidX.CustomView => 0x2568904f => 41
	i32 748832960, ; 14: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 24
	i32 777370772, ; 15: PracticaSQL.Android.dll => 0x2e55bc94 => 0
	i32 789151979, ; 16: Microsoft.Extensions.Options => 0x2f0980eb => 19
	i32 809851609, ; 17: System.Drawing.Common.dll => 0x30455ad9 => 61
	i32 932439027, ; 18: PracticaSQL.Android => 0x3793e3f3 => 0
	i32 967690846, ; 19: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 45
	i32 974778368, ; 20: FormsViewGroup.dll => 0x3a19f000 => 3
	i32 1012816738, ; 21: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 50
	i32 1028951442, ; 22: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 14
	i32 1035644815, ; 23: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 37
	i32 1042160112, ; 24: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 56
	i32 1052210849, ; 25: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 47
	i32 1098259244, ; 26: System => 0x41761b2c => 30
	i32 1099692271, ; 27: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 6
	i32 1157931901, ; 28: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 7
	i32 1202000627, ; 29: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 7
	i32 1204575371, ; 30: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 12
	i32 1292207520, ; 31: SQLitePCLRaw.core.dll => 0x4d0585a0 => 25
	i32 1293217323, ; 32: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 42
	i32 1343481065, ; 33: PracticaSQL.dll => 0x5013e4e9 => 23
	i32 1365406463, ; 34: System.ServiceModel.Internals.dll => 0x516272ff => 62
	i32 1376866003, ; 35: Xamarin.AndroidX.SavedState => 0x52114ed3 => 50
	i32 1406073936, ; 36: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 39
	i32 1411638395, ; 37: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 32
	i32 1460219004, ; 38: Xamarin.Forms.Xaml => 0x57092c7c => 57
	i32 1461234159, ; 39: System.Collections.Immutable.dll => 0x5718a9ef => 27
	i32 1469204771, ; 40: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 36
	i32 1470490898, ; 41: Microsoft.Extensions.Primitives => 0x57a5e912 => 20
	i32 1479771757, ; 42: System.Collections.Immutable => 0x5833866d => 27
	i32 1490351284, ; 43: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 5
	i32 1592978981, ; 44: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 45: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 48
	i32 1639515021, ; 46: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 47: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 58
	i32 1688112883, ; 48: Microsoft.Data.Sqlite => 0x649e8ef3 => 5
	i32 1689493916, ; 49: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 8
	i32 1729485958, ; 50: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 38
	i32 1766324549, ; 51: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 51
	i32 1770582343, ; 52: Microsoft.Extensions.Logging.dll => 0x6988f147 => 18
	i32 1776026572, ; 53: System.Core.dll => 0x69dc03cc => 28
	i32 1788241197, ; 54: Xamarin.AndroidX.Fragment => 0x6a96652d => 43
	i32 1808609942, ; 55: Xamarin.AndroidX.Loader => 0x6bcd3296 => 48
	i32 1813201214, ; 56: Xamarin.Google.Android.Material => 0x6c13413e => 58
	i32 1828688058, ; 57: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 17
	i32 1867746548, ; 58: Xamarin.Essentials.dll => 0x6f538cf4 => 53
	i32 1878053835, ; 59: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 57
	i32 1886040351, ; 60: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 10
	i32 1894524299, ; 61: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 6
	i32 2014489277, ; 62: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 10
	i32 2019465201, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 47
	i32 2055257422, ; 64: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 46
	i32 2097448633, ; 65: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 44
	i32 2103459038, ; 66: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 26
	i32 2126786730, ; 67: Xamarin.Forms.Platform.Android => 0x7ec430aa => 55
	i32 2181898931, ; 68: Microsoft.Extensions.Options.dll => 0x820d22b3 => 19
	i32 2192057212, ; 69: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 17
	i32 2197979891, ; 70: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 16
	i32 2201231467, ; 71: System.Net.Http => 0x8334206b => 1
	i32 2252897993, ; 72: Microsoft.EntityFrameworkCore => 0x86487ec9 => 8
	i32 2266799131, ; 73: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 13
	i32 2279755925, ; 74: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 49
	i32 2435904999, ; 75: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 63
	i32 2465273461, ; 76: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 24
	i32 2475788418, ; 77: Java.Interop.dll => 0x93918882 => 4
	i32 2634653062, ; 78: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 9
	i32 2732626843, ; 79: Xamarin.AndroidX.Activity => 0xa2e0939b => 35
	i32 2737747696, ; 80: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 36
	i32 2766581644, ; 81: Xamarin.Forms.Core => 0xa4e6af8c => 54
	i32 2778768386, ; 82: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 52
	i32 2810250172, ; 83: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 39
	i32 2819470561, ; 84: System.Xml.dll => 0xa80db4e1 => 34
	i32 2847789619, ; 85: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 9
	i32 2853208004, ; 86: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 52
	i32 2905242038, ; 87: mscorlib.dll => 0xad2a79b6 => 22
	i32 2978675010, ; 88: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 42
	i32 3044182254, ; 89: FormsViewGroup => 0xb57288ee => 3
	i32 3069363400, ; 90: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 11
	i32 3111772706, ; 91: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3195844289, ; 92: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 11
	i32 3204380047, ; 93: System.Data.dll => 0xbefef58f => 59
	i32 3247949154, ; 94: Mono.Security => 0xc197c562 => 64
	i32 3258312781, ; 95: Xamarin.AndroidX.CardView => 0xc235e84d => 38
	i32 3317135071, ; 96: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 41
	i32 3317144872, ; 97: System.Data => 0xc5b79d28 => 59
	i32 3353484488, ; 98: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 44
	i32 3358260929, ; 99: System.Text.Json => 0xc82afec1 => 33
	i32 3360279109, ; 100: SQLitePCLRaw.core => 0xc849ca45 => 25
	i32 3362522851, ; 101: Xamarin.AndroidX.Core => 0xc86c06e3 => 40
	i32 3366347497, ; 102: Java.Interop => 0xc8a662e9 => 4
	i32 3370173911, ; 103: PracticaSQL => 0xc8e0c5d7 => 23
	i32 3374999561, ; 104: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 49
	i32 3395150330, ; 105: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 32
	i32 3404865022, ; 106: System.ServiceModel.Internals => 0xcaf21dfe => 62
	i32 3428513518, ; 107: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 15
	i32 3429136800, ; 108: System.Xml => 0xcc6479a0 => 34
	i32 3476120550, ; 109: Mono.Android => 0xcf3163e6 => 21
	i32 3485117614, ; 110: System.Text.Json.dll => 0xcfbaacae => 33
	i32 3486566296, ; 111: System.Transactions => 0xcfd0c798 => 60
	i32 3536029504, ; 112: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 55
	i32 3632359727, ; 113: Xamarin.Forms.Platform => 0xd881692f => 56
	i32 3641597786, ; 114: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 46
	i32 3645089577, ; 115: System.ComponentModel.DataAnnotations => 0xd943a729 => 63
	i32 3657292374, ; 116: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 13
	i32 3672681054, ; 117: Mono.Android.dll => 0xdae8aa5e => 21
	i32 3689375977, ; 118: System.Drawing.Common => 0xdbe768e9 => 61
	i32 3748608112, ; 119: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 29
	i32 3754567612, ; 120: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 26
	i32 3829621856, ; 121: System.Numerics.dll => 0xe4436460 => 31
	i32 3841636137, ; 122: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 14
	i32 3896760992, ; 123: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 40
	i32 3955647286, ; 124: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 37
	i32 4101842092, ; 125: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 12
	i32 4105002889, ; 126: Mono.Security.dll => 0xf4ad5f89 => 64
	i32 4126470640, ; 127: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 15
	i32 4151237749, ; 128: System.Core => 0xf76edc75 => 28
	i32 4213026141 ; 129: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 29
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [130 x i32] [
	i32 16, i32 54, i32 51, i32 35, i32 31, i32 45, i32 53, i32 43, ; 0..7
	i32 22, i32 30, i32 20, i32 60, i32 18, i32 41, i32 24, i32 0, ; 8..15
	i32 19, i32 61, i32 0, i32 45, i32 3, i32 50, i32 14, i32 37, ; 16..23
	i32 56, i32 47, i32 30, i32 6, i32 7, i32 7, i32 12, i32 25, ; 24..31
	i32 42, i32 23, i32 62, i32 50, i32 39, i32 32, i32 57, i32 27, ; 32..39
	i32 36, i32 20, i32 27, i32 5, i32 2, i32 48, i32 1, i32 58, ; 40..47
	i32 5, i32 8, i32 38, i32 51, i32 18, i32 28, i32 43, i32 48, ; 48..55
	i32 58, i32 17, i32 53, i32 57, i32 10, i32 6, i32 10, i32 47, ; 56..63
	i32 46, i32 44, i32 26, i32 55, i32 19, i32 17, i32 16, i32 1, ; 64..71
	i32 8, i32 13, i32 49, i32 63, i32 24, i32 4, i32 9, i32 35, ; 72..79
	i32 36, i32 54, i32 52, i32 39, i32 34, i32 9, i32 52, i32 22, ; 80..87
	i32 42, i32 3, i32 11, i32 2, i32 11, i32 59, i32 64, i32 38, ; 88..95
	i32 41, i32 59, i32 44, i32 33, i32 25, i32 40, i32 4, i32 23, ; 96..103
	i32 49, i32 32, i32 62, i32 15, i32 34, i32 21, i32 33, i32 60, ; 104..111
	i32 55, i32 56, i32 46, i32 63, i32 13, i32 21, i32 61, i32 29, ; 112..119
	i32 26, i32 31, i32 14, i32 40, i32 37, i32 12, i32 64, i32 15, ; 120..127
	i32 28, i32 29 ; 128..129
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
