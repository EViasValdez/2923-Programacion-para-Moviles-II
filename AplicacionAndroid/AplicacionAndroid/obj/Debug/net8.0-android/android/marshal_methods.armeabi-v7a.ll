; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [180 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [354 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 34839235, ; 3: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 4: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 5: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 6: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 7: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 82292897, ; 8: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 117431740, ; 9: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 122350210, ; 10: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 142721839, ; 11: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 12: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 13: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 176265551, ; 14: System.ServiceProcess => 0xa81994f => 132
	i32 184328833, ; 15: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 16: System.ComponentModel => 0xc38ff48 => 18
	i32 220171995, ; 17: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230752869, ; 18: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 19: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 20: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 21: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 276479776, ; 22: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 291076382, ; 23: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 24: System.Net.Ping.dll => 0x11d123fd => 69
	i32 321597661, ; 25: System.Numerics => 0x132b30dd => 83
	i32 360082299, ; 26: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 27: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 28: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 29: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 30: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 31: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 32: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 33: _Microsoft.Android.Resource.Designer => 0x17969339 => 176
	i32 403441872, ; 34: WindowsBase => 0x180c08d0 => 165
	i32 442565967, ; 35: System.Collections => 0x1a61054f => 12
	i32 451504562, ; 36: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 37: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 38: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 39: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 40: System.dll => 0x1bff388e => 164
	i32 498788369, ; 41: System.ObjectModel => 0x1dbae811 => 84
	i32 526420162, ; 42: System.Transactions.dll => 0x1f6088c2 => 150
	i32 530272170, ; 43: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 540030774, ; 44: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 45: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 46: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 47: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 577335427, ; 48: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 49: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 50: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 51: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 643868501, ; 52: System.Net => 0x2660a755 => 81
	i32 662205335, ; 53: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 672442732, ; 54: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 55: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 56: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 693804605, ; 57: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 58: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700358131, ; 59: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 722857257, ; 60: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 61: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 62: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 759454413, ; 63: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 64: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 65: System.IO.Compression => 0x2e394f87 => 46
	i32 804715423, ; 66: System.Data.Common => 0x2ff6fb9f => 22
	i32 823281589, ; 67: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 68: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 69: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 70: System.Net.Quic => 0x31b69d60 => 71
	i32 873119928, ; 71: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 72: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 73: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 74: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 75: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 952186615, ; 76: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 975236339, ; 77: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 78: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 79: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 80: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 81: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 82: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 83: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1019214401, ; 84: System.Drawing => 0x3cbffa41 => 36
	i32 1036536393, ; 85: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 86: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1082857460, ; 87: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1098259244, ; 88: System => 0x41761b2c => 164
	i32 1170634674, ; 89: System.Web.dll => 0x45c677b2 => 153
	i32 1208641965, ; 90: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 91: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1253011324, ; 92: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1309188875, ; 93: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1324164729, ; 94: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 95: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 96: System.IO => 0x514d38cd => 57
	i32 1379779777, ; 97: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 98: System.Configuration.dll => 0x53936ab4 => 19
	i32 1408764838, ; 99: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 100: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 101: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 102: System.Runtime.Handles => 0x557b5293 => 104
	i32 1439761251, ; 103: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 104: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 105: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 106: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 107: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 108: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 109: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 110: System.IO.Compression.dll => 0x57261233 => 46
	i32 1479771757, ; 111: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 112: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 113: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1536373174, ; 114: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 115: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 116: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 117: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 118: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 119: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 120: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 121: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1592978981, ; 122: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1601112923, ; 123: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1603525486, ; 124: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 173
	i32 1604827217, ; 125: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 126: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622358360, ; 127: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1639515021, ; 128: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 129: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 130: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 131: System.Runtime => 0x62c6282e => 116
	i32 1675553242, ; 132: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 133: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 134: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 135: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 136: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 137: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 138: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1726116996, ; 139: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 140: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1744735666, ; 141: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 142: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 143: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 144: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 145: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 146: System.Reflection.Extensions => 0x6942234e => 93
	i32 1776026572, ; 147: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 148: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 149: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1818787751, ; 150: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 151: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 152: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827303595, ; 153: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 175
	i32 1858542181, ; 154: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 155: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 156: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885918049, ; 157: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 175
	i32 1888955245, ; 158: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 159: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 160: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 161: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 162: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 163: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 164: System.Resources.Writer => 0x74a1c5bb => 100
	i32 2011961780, ; 165: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2045470958, ; 166: System.Private.Xml => 0x79eb68ee => 88
	i32 2060060697, ; 167: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 168: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 169: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 170: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 171: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 172: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 173: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 174: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2193016926, ; 175: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201231467, ; 176: System.Net.Http => 0x8334206b => 64
	i32 2222056684, ; 177: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2252106437, ; 178: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 179: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 180: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2293034957, ; 181: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 182: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 183: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 184: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2320631194, ; 185: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 186: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 187: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 188: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 189: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2378619854, ; 190: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 191: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 192: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2409983638, ; 193: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 174
	i32 2421380589, ; 194: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2435356389, ; 195: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 196: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 197: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 198: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 199: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2471841756, ; 200: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 201: Java.Interop.dll => 0x93918882 => 168
	i32 2483903535, ; 202: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 203: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 204: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 205: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2538310050, ; 206: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 207: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 208: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2585220780, ; 209: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 210: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 211: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2617129537, ; 212: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 213: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2627185994, ; 214: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 215: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2663698177, ; 216: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 217: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 218: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 219: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 220: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 221: System.IO.dll => 0xa090e36a => 57
	i32 2715334215, ; 222: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 223: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 224: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 225: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2735172069, ; 226: System.Threading.Channels => 0xa30769e5 => 139
	i32 2740948882, ; 227: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 228: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2765824710, ; 229: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2803228030, ; 230: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2819470561, ; 231: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 232: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2824502124, ; 233: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2849599387, ; 234: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2861098320, ; 235: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2875220617, ; 236: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2887636118, ; 237: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 238: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 239: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 240: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 241: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 242: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2919462931, ; 243: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2936416060, ; 244: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 245: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 246: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 247: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 248: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 249: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 3023353419, ; 250: WindowsBase.dll => 0xb434b64b => 165
	i32 3038032645, ; 251: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 176
	i32 3057715253, ; 252: AplicacionAndroid.dll => 0xb6410835 => 0
	i32 3059408633, ; 253: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 254: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 255: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 256: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 257: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 258: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 259: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 260: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 261: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 262: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 263: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3159123045, ; 264: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 265: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3192346100, ; 266: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 267: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 268: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 269: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3220365878, ; 270: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 271: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 272: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3265493905, ; 273: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 274: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 275: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 276: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 277: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 278: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 279: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 280: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 281: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317144872, ; 282: System.Data => 0xc5b79d28 => 24
	i32 3357679235, ; 283: AplicacionAndroid => 0xc8221e83 => 0
	i32 3358260929, ; 284: System.Text.Json => 0xc82afec1 => 137
	i32 3366347497, ; 285: Java.Interop => 0xc8a662e9 => 168
	i32 3395150330, ; 286: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 287: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3429136800, ; 288: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 289: netstandard => 0xcc7d82b4 => 167
	i32 3445260447, ; 290: System.Formats.Tar => 0xcd5a809f => 39
	i32 3471940407, ; 291: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 292: Mono.Android => 0xcf3163e6 => 171
	i32 3485117614, ; 293: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 294: System.Transactions => 0xcfd0c798 => 150
	i32 3509114376, ; 295: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 296: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 297: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 298: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 299: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 300: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3598340787, ; 301: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 302: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 303: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3638274909, ; 304: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3645089577, ; 305: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3660523487, ; 306: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 307: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3676670898, ; 308: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 173
	i32 3700866549, ; 309: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3716563718, ; 310: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3732100267, ; 311: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 312: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 313: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 314: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3792276235, ; 315: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3802395368, ; 316: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 317: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 318: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 319: System.Numerics.dll => 0xe4436460 => 83
	i32 3844307129, ; 320: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 321: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 322: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 323: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 324: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 325: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3896106733, ; 326: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3901907137, ; 327: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 328: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3928044579, ; 329: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 330: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3945713374, ; 331: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 332: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 4003436829, ; 333: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4025784931, ; 334: System.Memory => 0xeff49a63 => 62
	i32 4054681211, ; 335: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 336: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 337: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4099507663, ; 338: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 339: System.Private.Uri => 0xf462c30d => 86
	i32 4127667938, ; 340: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 341: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 342: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 343: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 344: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 345: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 346: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 347: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182880526, ; 348: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 174
	i32 4185676441, ; 349: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 350: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 351: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4260525087, ; 352: System.Buffers => 0xfdf2741f => 7
	i32 4274976490 ; 353: System.Runtime.Numerics => 0xfecef6ea => 110
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [354 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 48, ; 3
	i32 80, ; 4
	i32 145, ; 5
	i32 30, ; 6
	i32 124, ; 7
	i32 102, ; 8
	i32 107, ; 9
	i32 139, ; 10
	i32 77, ; 11
	i32 124, ; 12
	i32 13, ; 13
	i32 132, ; 14
	i32 151, ; 15
	i32 18, ; 16
	i32 26, ; 17
	i32 1, ; 18
	i32 59, ; 19
	i32 42, ; 20
	i32 91, ; 21
	i32 147, ; 22
	i32 54, ; 23
	i32 69, ; 24
	i32 83, ; 25
	i32 131, ; 26
	i32 55, ; 27
	i32 149, ; 28
	i32 74, ; 29
	i32 145, ; 30
	i32 62, ; 31
	i32 146, ; 32
	i32 176, ; 33
	i32 165, ; 34
	i32 12, ; 35
	i32 125, ; 36
	i32 152, ; 37
	i32 113, ; 38
	i32 166, ; 39
	i32 164, ; 40
	i32 84, ; 41
	i32 150, ; 42
	i32 60, ; 43
	i32 51, ; 44
	i32 103, ; 45
	i32 114, ; 46
	i32 40, ; 47
	i32 120, ; 48
	i32 52, ; 49
	i32 44, ; 50
	i32 119, ; 51
	i32 81, ; 52
	i32 136, ; 53
	i32 8, ; 54
	i32 73, ; 55
	i32 155, ; 56
	i32 154, ; 57
	i32 92, ; 58
	i32 45, ; 59
	i32 109, ; 60
	i32 129, ; 61
	i32 25, ; 62
	i32 72, ; 63
	i32 55, ; 64
	i32 46, ; 65
	i32 22, ; 66
	i32 86, ; 67
	i32 43, ; 68
	i32 160, ; 69
	i32 71, ; 70
	i32 3, ; 71
	i32 42, ; 72
	i32 63, ; 73
	i32 16, ; 74
	i32 53, ; 75
	i32 105, ; 76
	i32 34, ; 77
	i32 158, ; 78
	i32 85, ; 79
	i32 32, ; 80
	i32 12, ; 81
	i32 51, ; 82
	i32 56, ; 83
	i32 36, ; 84
	i32 35, ; 85
	i32 58, ; 86
	i32 17, ; 87
	i32 164, ; 88
	i32 153, ; 89
	i32 29, ; 90
	i32 52, ; 91
	i32 5, ; 92
	i32 85, ; 93
	i32 61, ; 94
	i32 112, ; 95
	i32 57, ; 96
	i32 99, ; 97
	i32 19, ; 98
	i32 111, ; 99
	i32 101, ; 100
	i32 102, ; 101
	i32 104, ; 102
	i32 71, ; 103
	i32 38, ; 104
	i32 32, ; 105
	i32 103, ; 106
	i32 73, ; 107
	i32 9, ; 108
	i32 123, ; 109
	i32 46, ; 110
	i32 9, ; 111
	i32 43, ; 112
	i32 4, ; 113
	i32 31, ; 114
	i32 138, ; 115
	i32 92, ; 116
	i32 93, ; 117
	i32 49, ; 118
	i32 141, ; 119
	i32 112, ; 120
	i32 140, ; 121
	i32 115, ; 122
	i32 157, ; 123
	i32 173, ; 124
	i32 76, ; 125
	i32 79, ; 126
	i32 37, ; 127
	i32 64, ; 128
	i32 138, ; 129
	i32 15, ; 130
	i32 116, ; 131
	i32 48, ; 132
	i32 70, ; 133
	i32 80, ; 134
	i32 126, ; 135
	i32 94, ; 136
	i32 121, ; 137
	i32 26, ; 138
	i32 97, ; 139
	i32 28, ; 140
	i32 149, ; 141
	i32 169, ; 142
	i32 4, ; 143
	i32 98, ; 144
	i32 33, ; 145
	i32 93, ; 146
	i32 21, ; 147
	i32 41, ; 148
	i32 170, ; 149
	i32 2, ; 150
	i32 134, ; 151
	i32 111, ; 152
	i32 175, ; 153
	i32 58, ; 154
	i32 95, ; 155
	i32 39, ; 156
	i32 175, ; 157
	i32 25, ; 158
	i32 94, ; 159
	i32 89, ; 160
	i32 99, ; 161
	i32 10, ; 162
	i32 87, ; 163
	i32 100, ; 164
	i32 7, ; 165
	i32 88, ; 166
	i32 154, ; 167
	i32 33, ; 168
	i32 116, ; 169
	i32 82, ; 170
	i32 20, ; 171
	i32 11, ; 172
	i32 162, ; 173
	i32 3, ; 174
	i32 84, ; 175
	i32 64, ; 176
	i32 143, ; 177
	i32 157, ; 178
	i32 41, ; 179
	i32 117, ; 180
	i32 131, ; 181
	i32 75, ; 182
	i32 66, ; 183
	i32 172, ; 184
	i32 143, ; 185
	i32 106, ; 186
	i32 151, ; 187
	i32 70, ; 188
	i32 156, ; 189
	i32 121, ; 190
	i32 127, ; 191
	i32 152, ; 192
	i32 174, ; 193
	i32 141, ; 194
	i32 20, ; 195
	i32 14, ; 196
	i32 135, ; 197
	i32 75, ; 198
	i32 59, ; 199
	i32 167, ; 200
	i32 168, ; 201
	i32 15, ; 202
	i32 74, ; 203
	i32 6, ; 204
	i32 23, ; 205
	i32 91, ; 206
	i32 1, ; 207
	i32 136, ; 208
	i32 134, ; 209
	i32 69, ; 210
	i32 146, ; 211
	i32 88, ; 212
	i32 96, ; 213
	i32 31, ; 214
	i32 45, ; 215
	i32 109, ; 216
	i32 158, ; 217
	i32 35, ; 218
	i32 22, ; 219
	i32 114, ; 220
	i32 57, ; 221
	i32 144, ; 222
	i32 118, ; 223
	i32 120, ; 224
	i32 110, ; 225
	i32 139, ; 226
	i32 54, ; 227
	i32 105, ; 228
	i32 133, ; 229
	i32 159, ; 230
	i32 163, ; 231
	i32 132, ; 232
	i32 161, ; 233
	i32 140, ; 234
	i32 169, ; 235
	i32 40, ; 236
	i32 81, ; 237
	i32 56, ; 238
	i32 37, ; 239
	i32 97, ; 240
	i32 166, ; 241
	i32 172, ; 242
	i32 82, ; 243
	i32 98, ; 244
	i32 30, ; 245
	i32 159, ; 246
	i32 18, ; 247
	i32 127, ; 248
	i32 119, ; 249
	i32 165, ; 250
	i32 176, ; 251
	i32 0, ; 252
	i32 170, ; 253
	i32 16, ; 254
	i32 144, ; 255
	i32 125, ; 256
	i32 118, ; 257
	i32 38, ; 258
	i32 115, ; 259
	i32 47, ; 260
	i32 142, ; 261
	i32 117, ; 262
	i32 34, ; 263
	i32 95, ; 264
	i32 53, ; 265
	i32 129, ; 266
	i32 153, ; 267
	i32 24, ; 268
	i32 161, ; 269
	i32 148, ; 270
	i32 104, ; 271
	i32 89, ; 272
	i32 60, ; 273
	i32 142, ; 274
	i32 100, ; 275
	i32 5, ; 276
	i32 13, ; 277
	i32 122, ; 278
	i32 135, ; 279
	i32 28, ; 280
	i32 72, ; 281
	i32 24, ; 282
	i32 0, ; 283
	i32 137, ; 284
	i32 168, ; 285
	i32 101, ; 286
	i32 123, ; 287
	i32 163, ; 288
	i32 167, ; 289
	i32 39, ; 290
	i32 17, ; 291
	i32 171, ; 292
	i32 137, ; 293
	i32 150, ; 294
	i32 155, ; 295
	i32 130, ; 296
	i32 19, ; 297
	i32 65, ; 298
	i32 147, ; 299
	i32 47, ; 300
	i32 79, ; 301
	i32 61, ; 302
	i32 106, ; 303
	i32 49, ; 304
	i32 14, ; 305
	i32 68, ; 306
	i32 171, ; 307
	i32 173, ; 308
	i32 78, ; 309
	i32 108, ; 310
	i32 67, ; 311
	i32 63, ; 312
	i32 27, ; 313
	i32 160, ; 314
	i32 10, ; 315
	i32 11, ; 316
	i32 78, ; 317
	i32 126, ; 318
	i32 83, ; 319
	i32 66, ; 320
	i32 107, ; 321
	i32 65, ; 322
	i32 128, ; 323
	i32 122, ; 324
	i32 77, ; 325
	i32 8, ; 326
	i32 2, ; 327
	i32 44, ; 328
	i32 156, ; 329
	i32 128, ; 330
	i32 23, ; 331
	i32 133, ; 332
	i32 29, ; 333
	i32 62, ; 334
	i32 90, ; 335
	i32 87, ; 336
	i32 148, ; 337
	i32 36, ; 338
	i32 86, ; 339
	i32 50, ; 340
	i32 6, ; 341
	i32 90, ; 342
	i32 21, ; 343
	i32 162, ; 344
	i32 96, ; 345
	i32 50, ; 346
	i32 113, ; 347
	i32 174, ; 348
	i32 130, ; 349
	i32 76, ; 350
	i32 27, ; 351
	i32 7, ; 352
	i32 110 ; 353
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
