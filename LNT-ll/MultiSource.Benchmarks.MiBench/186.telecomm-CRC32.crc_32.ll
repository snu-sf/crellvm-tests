; ModuleID = './MultiSource.Benchmarks.MiBench/186.telecomm-CRC32.crc_32.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@crc_32_tab = internal global [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%08X %7ld %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i64 @updateCRC32(i8 zeroext %ch, i64 %crc) #0 {
entry:
  %ch.addr = alloca i8, align 1
  %crc.addr = alloca i64, align 8
  store i8 %ch, i8* %ch.addr, align 1
  store i64 %crc, i64* %crc.addr, align 8
  %0 = load i64, i64* %crc.addr, align 8
  %1 = load i8, i8* %ch.addr, align 1
  %conv = zext i8 %1 to i64
  %xor = xor i64 %0, %conv
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i32 0, i64 %and
  %2 = load i64, i64* %arrayidx, align 8
  %3 = load i64, i64* %crc.addr, align 8
  %shr = lshr i64 %3, 8
  %xor1 = xor i64 %2, %shr
  ret i64 %xor1
}

; Function Attrs: nounwind uwtable
define i32 @crc32file(i8* %name, i64* %crc, i64* %charcnt) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %crc.addr = alloca i64*, align 8
  %charcnt.addr = alloca i64*, align 8
  %fin = alloca %struct._IO_FILE*, align 8
  %oldcrc32 = alloca i64, align 8
  %c = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i64* %crc, i64** %crc.addr, align 8
  store i64* %charcnt, i64** %charcnt.addr, align 8
  store i64 4294967295, i64* %oldcrc32, align 8
  %0 = load i64*, i64** %charcnt.addr, align 8
  store i64 0, i64* %0, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fin, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8
  call void @perror(i8* %2)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call1, i32* %c, align 4
  %cmp2 = icmp ne i32 %call1, -1
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64*, i64** %charcnt.addr, align 8
  %5 = load i64, i64* %4, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* %4, align 8
  %6 = load i64, i64* %oldcrc32, align 8
  %7 = load i32, i32* %c, align 4
  %conv = trunc i32 %7 to i8
  %conv3 = zext i8 %conv to i64
  %xor = xor i64 %6, %conv3
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i32 0, i64 %and
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load i64, i64* %oldcrc32, align 8
  %shr = lshr i64 %9, 8
  %xor4 = xor i64 %8, %shr
  store i64 %xor4, i64* %oldcrc32, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call5 = call i32 @ferror(%struct._IO_FILE* %10) #4
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.end
  %11 = load i8*, i8** %name.addr, align 8
  call void @perror(i8* %11)
  %12 = load i64*, i64** %charcnt.addr, align 8
  store i64 -1, i64* %12, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %while.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %13)
  %14 = load i64, i64* %oldcrc32, align 8
  %neg = xor i64 %14, -1
  store i64 %neg, i64* %oldcrc32, align 8
  %15 = load i64*, i64** %crc.addr, align 8
  store i64 %neg, i64* %15, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @perror(i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i64 @crc32buf(i8* %buf, i64 %len) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %oldcrc32 = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 4294967295, i64* %oldcrc32, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %oldcrc32, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i64
  %xor = xor i64 %1, %conv
  %and = and i64 %xor, 255
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i32 0, i64 %and
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i64, i64* %oldcrc32, align 8
  %shr = lshr i64 %5, 8
  %xor1 = xor i64 %4, %shr
  store i64 %xor1, i64* %oldcrc32, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %len.addr, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %len.addr, align 8
  %7 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %oldcrc32, align 8
  %neg = xor i64 %8, -1
  ret i64 %neg
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %crc = alloca i64, align 8
  %charcnt = alloca i64, align 8
  %errors = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %errors, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %2 = load i8*, i8** %incdec.ptr, align 8
  %call = call i32 @crc32file(i8* %2, i64* %crc, i64* %charcnt)
  %3 = load i32, i32* %errors, align 4
  %or = or i32 %3, %call
  store i32 %or, i32* %errors, align 4
  %4 = load i64, i64* %crc, align 8
  %conv = trunc i64 %4 to i32
  %5 = load i64, i64* %charcnt, align 8
  %6 = load i8**, i8*** %argv.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %call1 = call i8* @mybasename(i8* %7)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %conv, i64 %5, i8* %call1)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %errors, align 4
  %cmp3 = icmp ne i32 %8, 0
  %conv4 = zext i1 %cmp3 to i32
  ret i32 %conv4
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #5
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
