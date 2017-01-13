; ModuleID = './MultiSource.Applications.ClamAV/48.libclamav_upack.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzmastate = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Upack: EP: %08x original:  %08X || %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Upack: context bits out of bounds\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Upack: Context Bits parameter used with lzma: %02x, %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Upack: data initialized, before upack lzma call!\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Upack: EP: %08x original %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Upack: something's wrong, report back\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Upack: %08x %08x %08x %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Upack: EBX: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Upack: DEST: %08x, %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Upack: probably hand-crafted data, report back\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Upack: ecx counter: %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Upack: before_fixing\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Upack v 1.1/1.2\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Upack: alvalue out of bounds\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Upack: loops: %08x search value: %02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Upack: callfixerr %08x %08x = %08x, %08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Upack: callfixerr\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Upack: Rebuilding failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"\0A\09p0: %08x\0A\09p1: %08x\0A\09p2: %08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"state[%d] = %08x\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @unupack(i32 %upack, i8* %dest, i32 %dsize, i8* %buff, i32 %vma, i32 %ep, i32 %base, i32 %va, i32 %file) #0 {
entry:
  %retval = alloca i32, align 4
  %upack.addr = alloca i32, align 4
  %dest.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %buff.addr = alloca i8*, align 8
  %vma.addr = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %va.addr = alloca i32, align 4
  %file.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %searchval = alloca i32, align 4
  %loc_esi = alloca i8*, align 8
  %loc_edi = alloca i8*, align 8
  %loc_ebx = alloca i8*, align 8
  %end_edi = alloca i8*, align 8
  %save_edi = alloca i8*, align 8
  %rpeb = alloca i8*, align 8
  %alvalue = alloca i8*, align 8
  %paddr = alloca i8*, align 8
  %pushed_esi = alloca i8*, align 8
  %save2 = alloca i8*, align 8
  %save1 = alloca i32, align 4
  %save3 = alloca i32, align 4
  %loc_ecx = alloca i32, align 4
  %count = alloca i32, align 4
  %shlsize = alloca i32, align 4
  %original_ep = alloca i32, align 4
  %ret = alloca i32, align 4
  %loc_ebx_u = alloca i32, align 4
  %section = alloca %struct.cli_exe_section, align 4
  %upack_version = alloca i32, align 4
  %aljump = alloca i32, align 4
  %shroff = alloca i32, align 4
  %lngjmpoff = alloca i32, align 4
  %ep_jmp_offs = alloca i32, align 4
  %rep_stosd_count_offs = alloca i32, align 4
  %context_bits_offs = alloca i32, align 4
  %adr = alloca i8*, align 8
  store i32 %upack, i32* %upack.addr, align 4
  store i8* %dest, i8** %dest.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  store i8* %buff, i8** %buff.addr, align 8
  store i32 %vma, i32* %vma.addr, align 4
  store i32 %ep, i32* %ep.addr, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %va, i32* %va.addr, align 4
  store i32 %file, i32* %file.addr, align 4
  store i32 0, i32* %upack_version, align 4
  %0 = load i32, i32* %upack.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else.694

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %buff.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 5
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = load i8*, i8** %buff.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 6
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 54
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  store i32 3, i32* %upack_version, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true, %if.then
  %5 = load i8*, i8** %dest.addr, align 8
  %6 = load i8*, i8** %buff.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %7 = bitcast i8* %add.ptr to i32*
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %vma.addr, align 4
  %sub = sub i32 %8, %9
  %idx.ext = zext i32 %sub to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr7, i8** %loc_esi, align 8
  %10 = load i32, i32* %dsize.addr, align 4
  %cmp8 = icmp ugt i32 %10, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.then.26

land.lhs.true.10:                                 ; preds = %if.end
  %11 = load i32, i32* %dsize.addr, align 4
  %cmp11 = icmp ule i32 12, %11
  br i1 %cmp11, label %land.lhs.true.13, label %if.then.26

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %12 = load i8*, i8** %loc_esi, align 8
  %13 = load i8*, i8** %dest.addr, align 8
  %cmp14 = icmp uge i8* %12, %13
  br i1 %cmp14, label %land.lhs.true.16, label %if.then.26

land.lhs.true.16:                                 ; preds = %land.lhs.true.13
  %14 = load i8*, i8** %loc_esi, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %14, i64 12
  %15 = load i8*, i8** %dest.addr, align 8
  %16 = load i32, i32* %dsize.addr, align 4
  %idx.ext18 = zext i32 %16 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %15, i64 %idx.ext18
  %cmp20 = icmp ule i8* %add.ptr17, %add.ptr19
  br i1 %cmp20, label %land.lhs.true.22, label %if.then.26

land.lhs.true.22:                                 ; preds = %land.lhs.true.16
  %17 = load i8*, i8** %loc_esi, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %17, i64 12
  %18 = load i8*, i8** %dest.addr, align 8
  %cmp24 = icmp ugt i8* %add.ptr23, %18
  br i1 %cmp24, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.22, %land.lhs.true.16, %land.lhs.true.13, %land.lhs.true.10, %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.22
  %19 = load i8*, i8** %loc_esi, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %original_ep, align 4
  %22 = load i8*, i8** %loc_esi, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %add.ptr28, i8** %loc_esi, align 8
  %23 = load i8*, i8** %loc_esi, align 8
  %add.ptr29 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %add.ptr29, i8** %loc_esi, align 8
  %24 = load i32, i32* %vma.addr, align 4
  %25 = load i32, i32* %original_ep, align 4
  %sub30 = sub i32 %25, %24
  store i32 %sub30, i32* %original_ep, align 4
  %26 = load i32, i32* %ep.addr, align 4
  %27 = load i32, i32* %original_ep, align 4
  %28 = load i8*, i8** %loc_esi, align 8
  %add.ptr31 = getelementptr inbounds i8, i8* %28, i64 -8
  %29 = bitcast i8* %add.ptr31 to i32*
  %30 = load i32, i32* %29, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 %26, i32 %27, i32 %30)
  %31 = load i32, i32* %upack_version, align 4
  %cmp32 = icmp eq i32 %31, 0
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.27
  %32 = load i8*, i8** %dest.addr, align 8
  %33 = load i8*, i8** %loc_esi, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %vma.addr, align 4
  %sub35 = sub i32 %35, %36
  %idx.ext36 = zext i32 %sub35 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %32, i64 %idx.ext36
  store i8* %add.ptr37, i8** %loc_edi, align 8
  %37 = load i32, i32* %dsize.addr, align 4
  %cmp38 = icmp ugt i32 %37, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.then.69

land.lhs.true.40:                                 ; preds = %if.then.34
  %38 = load i32, i32* %dsize.addr, align 4
  %cmp41 = icmp ule i32 2, %38
  br i1 %cmp41, label %land.lhs.true.43, label %if.then.69

land.lhs.true.43:                                 ; preds = %land.lhs.true.40
  %39 = load i8*, i8** %dest.addr, align 8
  %40 = load i32, i32* %ep.addr, align 4
  %idx.ext44 = zext i32 %40 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %39, i64 %idx.ext44
  %add.ptr46 = getelementptr inbounds i8, i8* %add.ptr45, i64 10
  %41 = load i8*, i8** %dest.addr, align 8
  %cmp47 = icmp uge i8* %add.ptr46, %41
  br i1 %cmp47, label %land.lhs.true.49, label %if.then.69

land.lhs.true.49:                                 ; preds = %land.lhs.true.43
  %42 = load i8*, i8** %dest.addr, align 8
  %43 = load i32, i32* %ep.addr, align 4
  %idx.ext50 = zext i32 %43 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %42, i64 %idx.ext50
  %add.ptr52 = getelementptr inbounds i8, i8* %add.ptr51, i64 10
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr52, i64 2
  %44 = load i8*, i8** %dest.addr, align 8
  %45 = load i32, i32* %dsize.addr, align 4
  %idx.ext54 = zext i32 %45 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %44, i64 %idx.ext54
  %cmp56 = icmp ule i8* %add.ptr53, %add.ptr55
  br i1 %cmp56, label %land.lhs.true.58, label %if.then.69

land.lhs.true.58:                                 ; preds = %land.lhs.true.49
  %46 = load i8*, i8** %dest.addr, align 8
  %47 = load i32, i32* %ep.addr, align 4
  %idx.ext59 = zext i32 %47 to i64
  %add.ptr60 = getelementptr inbounds i8, i8* %46, i64 %idx.ext59
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr60, i64 10
  %add.ptr62 = getelementptr inbounds i8, i8* %add.ptr61, i64 2
  %48 = load i8*, i8** %dest.addr, align 8
  %cmp63 = icmp ugt i8* %add.ptr62, %48
  br i1 %cmp63, label %lor.lhs.false, label %if.then.69

lor.lhs.false:                                    ; preds = %land.lhs.true.58
  %49 = load i32, i32* %ep.addr, align 4
  %add = add i32 %49, 10
  %idxprom = zext i32 %add to i64
  %50 = load i8*, i8** %dest.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %50, i64 %idxprom
  %51 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %51 to i32
  %cmp67 = icmp ne i32 %conv66, -21
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %lor.lhs.false, %land.lhs.true.58, %land.lhs.true.49, %land.lhs.true.43, %land.lhs.true.40, %if.then.34
  store i32 -1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %lor.lhs.false
  %52 = load i8*, i8** %dest.addr, align 8
  %53 = load i8*, i8** %dest.addr, align 8
  %54 = load i32, i32* %ep.addr, align 4
  %idx.ext71 = zext i32 %54 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %53, i64 %idx.ext71
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr72, i64 11
  %55 = load i8, i8* %add.ptr73, align 1
  %conv74 = sext i8 %55 to i32
  %idx.ext75 = sext i32 %conv74 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %52, i64 %idx.ext75
  %56 = load i32, i32* %ep.addr, align 4
  %idx.ext77 = zext i32 %56 to i64
  %add.ptr78 = getelementptr inbounds i8, i8* %add.ptr76, i64 %idx.ext77
  %add.ptr79 = getelementptr inbounds i8, i8* %add.ptr78, i64 12
  store i8* %add.ptr79, i8** %loc_esi, align 8
  %57 = load i8*, i8** %loc_esi, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %57, i64 26
  store i8* %add.ptr80, i8** %alvalue, align 8
  %58 = load i32, i32* %dsize.addr, align 4
  %cmp81 = icmp ugt i32 %58, 0
  br i1 %cmp81, label %land.lhs.true.83, label %if.then.103

land.lhs.true.83:                                 ; preds = %if.end.70
  %59 = load i32, i32* %dsize.addr, align 4
  %cmp84 = icmp ule i32 2, %59
  br i1 %cmp84, label %land.lhs.true.86, label %if.then.103

land.lhs.true.86:                                 ; preds = %land.lhs.true.83
  %60 = load i8*, i8** %alvalue, align 8
  %61 = load i8*, i8** %dest.addr, align 8
  %cmp87 = icmp uge i8* %60, %61
  br i1 %cmp87, label %land.lhs.true.89, label %if.then.103

land.lhs.true.89:                                 ; preds = %land.lhs.true.86
  %62 = load i8*, i8** %alvalue, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8*, i8** %dest.addr, align 8
  %64 = load i32, i32* %dsize.addr, align 4
  %idx.ext91 = zext i32 %64 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %63, i64 %idx.ext91
  %cmp93 = icmp ule i8* %add.ptr90, %add.ptr92
  br i1 %cmp93, label %land.lhs.true.95, label %if.then.103

land.lhs.true.95:                                 ; preds = %land.lhs.true.89
  %65 = load i8*, i8** %alvalue, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %65, i64 2
  %66 = load i8*, i8** %dest.addr, align 8
  %cmp97 = icmp ugt i8* %add.ptr96, %66
  br i1 %cmp97, label %lor.lhs.false.99, label %if.then.103

lor.lhs.false.99:                                 ; preds = %land.lhs.true.95
  %67 = load i8*, i8** %alvalue, align 8
  %68 = load i8, i8* %67, align 1
  %conv100 = sext i8 %68 to i32
  %cmp101 = icmp ne i32 %conv100, -21
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %lor.lhs.false.99, %land.lhs.true.95, %land.lhs.true.89, %land.lhs.true.86, %land.lhs.true.83, %if.end.70
  store i32 -1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %lor.lhs.false.99
  %69 = load i8*, i8** %alvalue, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr, i8** %alvalue, align 8
  %70 = load i8*, i8** %alvalue, align 8
  %71 = load i8, i8* %70, align 1
  %conv105 = sext i8 %71 to i32
  %and = and i32 %conv105, 255
  %add106 = add nsw i32 %and, 1
  %add107 = add nsw i32 %add106, 10
  %72 = load i8*, i8** %alvalue, align 8
  %idx.ext108 = sext i32 %add107 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %72, i64 %idx.ext108
  store i8* %add.ptr109, i8** %alvalue, align 8
  store i32 8, i32* %lngjmpoff, align 4
  br label %if.end.155

if.else:                                          ; preds = %if.end.27
  %73 = load i32, i32* %dsize.addr, align 4
  %cmp110 = icmp ugt i32 %73, 0
  br i1 %cmp110, label %land.lhs.true.112, label %if.then.144

land.lhs.true.112:                                ; preds = %if.else
  %74 = load i32, i32* %dsize.addr, align 4
  %cmp113 = icmp ule i32 5, %74
  br i1 %cmp113, label %land.lhs.true.115, label %if.then.144

land.lhs.true.115:                                ; preds = %land.lhs.true.112
  %75 = load i8*, i8** %dest.addr, align 8
  %76 = load i32, i32* %ep.addr, align 4
  %idx.ext116 = zext i32 %76 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %75, i64 %idx.ext116
  %add.ptr118 = getelementptr inbounds i8, i8* %add.ptr117, i64 7
  %77 = load i8*, i8** %dest.addr, align 8
  %cmp119 = icmp uge i8* %add.ptr118, %77
  br i1 %cmp119, label %land.lhs.true.121, label %if.then.144

land.lhs.true.121:                                ; preds = %land.lhs.true.115
  %78 = load i8*, i8** %dest.addr, align 8
  %79 = load i32, i32* %ep.addr, align 4
  %idx.ext122 = zext i32 %79 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %78, i64 %idx.ext122
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr123, i64 7
  %add.ptr125 = getelementptr inbounds i8, i8* %add.ptr124, i64 5
  %80 = load i8*, i8** %dest.addr, align 8
  %81 = load i32, i32* %dsize.addr, align 4
  %idx.ext126 = zext i32 %81 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %80, i64 %idx.ext126
  %cmp128 = icmp ule i8* %add.ptr125, %add.ptr127
  br i1 %cmp128, label %land.lhs.true.130, label %if.then.144

land.lhs.true.130:                                ; preds = %land.lhs.true.121
  %82 = load i8*, i8** %dest.addr, align 8
  %83 = load i32, i32* %ep.addr, align 4
  %idx.ext131 = zext i32 %83 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %82, i64 %idx.ext131
  %add.ptr133 = getelementptr inbounds i8, i8* %add.ptr132, i64 7
  %add.ptr134 = getelementptr inbounds i8, i8* %add.ptr133, i64 5
  %84 = load i8*, i8** %dest.addr, align 8
  %cmp135 = icmp ugt i8* %add.ptr134, %84
  br i1 %cmp135, label %lor.lhs.false.137, label %if.then.144

lor.lhs.false.137:                                ; preds = %land.lhs.true.130
  %85 = load i32, i32* %ep.addr, align 4
  %add138 = add i32 %85, 7
  %idxprom139 = zext i32 %add138 to i64
  %86 = load i8*, i8** %dest.addr, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %86, i64 %idxprom139
  %87 = load i8, i8* %arrayidx140, align 1
  %conv141 = sext i8 %87 to i32
  %cmp142 = icmp ne i32 %conv141, -23
  br i1 %cmp142, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %lor.lhs.false.137, %land.lhs.true.130, %land.lhs.true.121, %land.lhs.true.115, %land.lhs.true.112, %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.145:                                       ; preds = %lor.lhs.false.137
  %88 = load i8*, i8** %dest.addr, align 8
  %89 = load i8*, i8** %dest.addr, align 8
  %90 = load i32, i32* %ep.addr, align 4
  %idx.ext146 = zext i32 %90 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %89, i64 %idx.ext146
  %add.ptr148 = getelementptr inbounds i8, i8* %add.ptr147, i64 8
  %91 = bitcast i8* %add.ptr148 to i32*
  %92 = load i32, i32* %91, align 4
  %idx.ext149 = sext i32 %92 to i64
  %add.ptr150 = getelementptr inbounds i8, i8* %88, i64 %idx.ext149
  %93 = load i32, i32* %ep.addr, align 4
  %idx.ext151 = zext i32 %93 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %add.ptr150, i64 %idx.ext151
  %add.ptr153 = getelementptr inbounds i8, i8* %add.ptr152, i64 12
  store i8* %add.ptr153, i8** %loc_esi, align 8
  %94 = load i8*, i8** %loc_esi, align 8
  %add.ptr154 = getelementptr inbounds i8, i8* %94, i64 37
  store i8* %add.ptr154, i8** %alvalue, align 8
  store i32 10, i32* %lngjmpoff, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.145, %if.end.104
  %95 = load i32, i32* %dsize.addr, align 4
  %cmp156 = icmp ugt i32 %95, 0
  br i1 %cmp156, label %land.lhs.true.158, label %if.then.178

land.lhs.true.158:                                ; preds = %if.end.155
  %96 = load i32, i32* %dsize.addr, align 4
  %cmp159 = icmp ule i32 2, %96
  br i1 %cmp159, label %land.lhs.true.161, label %if.then.178

land.lhs.true.161:                                ; preds = %land.lhs.true.158
  %97 = load i8*, i8** %alvalue, align 8
  %98 = load i8*, i8** %dest.addr, align 8
  %cmp162 = icmp uge i8* %97, %98
  br i1 %cmp162, label %land.lhs.true.164, label %if.then.178

land.lhs.true.164:                                ; preds = %land.lhs.true.161
  %99 = load i8*, i8** %alvalue, align 8
  %add.ptr165 = getelementptr inbounds i8, i8* %99, i64 2
  %100 = load i8*, i8** %dest.addr, align 8
  %101 = load i32, i32* %dsize.addr, align 4
  %idx.ext166 = zext i32 %101 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %100, i64 %idx.ext166
  %cmp168 = icmp ule i8* %add.ptr165, %add.ptr167
  br i1 %cmp168, label %land.lhs.true.170, label %if.then.178

land.lhs.true.170:                                ; preds = %land.lhs.true.164
  %102 = load i8*, i8** %alvalue, align 8
  %add.ptr171 = getelementptr inbounds i8, i8* %102, i64 2
  %103 = load i8*, i8** %dest.addr, align 8
  %cmp172 = icmp ugt i8* %add.ptr171, %103
  br i1 %cmp172, label %lor.lhs.false.174, label %if.then.178

lor.lhs.false.174:                                ; preds = %land.lhs.true.170
  %104 = load i8*, i8** %alvalue, align 8
  %105 = load i8, i8* %104, align 1
  %conv175 = sext i8 %105 to i32
  %cmp176 = icmp ne i32 %conv175, -75
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %lor.lhs.false.174, %land.lhs.true.170, %land.lhs.true.164, %land.lhs.true.161, %land.lhs.true.158, %if.end.155
  store i32 -1, i32* %retval
  br label %return

if.end.179:                                       ; preds = %lor.lhs.false.174
  %106 = load i8*, i8** %alvalue, align 8
  %incdec.ptr180 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr180, i8** %alvalue, align 8
  %107 = load i8*, i8** %alvalue, align 8
  %108 = load i8, i8* %107, align 1
  %conv181 = sext i8 %108 to i32
  %and182 = and i32 %conv181, 255
  store i32 %and182, i32* %count, align 4
  %109 = load i32, i32* %dsize.addr, align 4
  %cmp183 = icmp ugt i32 %109, 0
  br i1 %cmp183, label %land.lhs.true.185, label %if.then.216

land.lhs.true.185:                                ; preds = %if.end.179
  %110 = load i32, i32* %lngjmpoff, align 4
  %add186 = add i32 %110, 5
  %cmp187 = icmp ugt i32 %add186, 0
  br i1 %cmp187, label %land.lhs.true.189, label %if.then.216

land.lhs.true.189:                                ; preds = %land.lhs.true.185
  %111 = load i32, i32* %lngjmpoff, align 4
  %add190 = add i32 %111, 5
  %112 = load i32, i32* %dsize.addr, align 4
  %cmp191 = icmp ule i32 %add190, %112
  br i1 %cmp191, label %land.lhs.true.193, label %if.then.216

land.lhs.true.193:                                ; preds = %land.lhs.true.189
  %113 = load i8*, i8** %alvalue, align 8
  %114 = load i8*, i8** %dest.addr, align 8
  %cmp194 = icmp uge i8* %113, %114
  br i1 %cmp194, label %land.lhs.true.196, label %if.then.216

land.lhs.true.196:                                ; preds = %land.lhs.true.193
  %115 = load i8*, i8** %alvalue, align 8
  %116 = load i32, i32* %lngjmpoff, align 4
  %idx.ext197 = zext i32 %116 to i64
  %add.ptr198 = getelementptr inbounds i8, i8* %115, i64 %idx.ext197
  %add.ptr199 = getelementptr inbounds i8, i8* %add.ptr198, i64 5
  %117 = load i8*, i8** %dest.addr, align 8
  %118 = load i32, i32* %dsize.addr, align 4
  %idx.ext200 = zext i32 %118 to i64
  %add.ptr201 = getelementptr inbounds i8, i8* %117, i64 %idx.ext200
  %cmp202 = icmp ule i8* %add.ptr199, %add.ptr201
  br i1 %cmp202, label %land.lhs.true.204, label %if.then.216

land.lhs.true.204:                                ; preds = %land.lhs.true.196
  %119 = load i8*, i8** %alvalue, align 8
  %120 = load i32, i32* %lngjmpoff, align 4
  %idx.ext205 = zext i32 %120 to i64
  %add.ptr206 = getelementptr inbounds i8, i8* %119, i64 %idx.ext205
  %add.ptr207 = getelementptr inbounds i8, i8* %add.ptr206, i64 5
  %121 = load i8*, i8** %dest.addr, align 8
  %cmp208 = icmp ugt i8* %add.ptr207, %121
  br i1 %cmp208, label %lor.lhs.false.210, label %if.then.216

lor.lhs.false.210:                                ; preds = %land.lhs.true.204
  %122 = load i8*, i8** %alvalue, align 8
  %123 = load i32, i32* %lngjmpoff, align 4
  %idx.ext211 = zext i32 %123 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %122, i64 %idx.ext211
  %124 = load i8, i8* %add.ptr212, align 1
  %conv213 = sext i8 %124 to i32
  %cmp214 = icmp ne i32 %conv213, -23
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %lor.lhs.false.210, %land.lhs.true.204, %land.lhs.true.196, %land.lhs.true.193, %land.lhs.true.189, %land.lhs.true.185, %if.end.179
  store i32 -1, i32* %retval
  br label %return

if.end.217:                                       ; preds = %lor.lhs.false.210
  %125 = load i8*, i8** %alvalue, align 8
  %126 = load i32, i32* %lngjmpoff, align 4
  %idx.ext218 = zext i32 %126 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %125, i64 %idx.ext218
  %add.ptr220 = getelementptr inbounds i8, i8* %add.ptr219, i64 1
  %127 = bitcast i8* %add.ptr220 to i32*
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %shlsize, align 4
  %129 = load i32, i32* %upack_version, align 4
  %cmp221 = icmp eq i32 %129, 0
  br i1 %cmp221, label %if.then.223, label %if.else.232

if.then.223:                                      ; preds = %if.end.217
  %130 = load i32, i32* %shlsize, align 4
  %conv224 = zext i32 %130 to i64
  %131 = load i8*, i8** %loc_esi, align 8
  %132 = load i8*, i8** %dest.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %131 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %132 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add225 = add nsw i64 %conv224, %sub.ptr.sub
  %133 = load i8*, i8** %loc_esi, align 8
  %add.ptr226 = getelementptr inbounds i8, i8* %133, i64 27
  %134 = load i8, i8* %add.ptr226, align 1
  %conv227 = sext i8 %134 to i64
  %add228 = add nsw i64 %add225, %conv227
  %add229 = add nsw i64 %add228, 28
  %add230 = add nsw i64 %add229, 24
  %conv231 = trunc i64 %add230 to i32
  store i32 %conv231, i32* %shlsize, align 4
  br label %if.end.240

if.else.232:                                      ; preds = %if.end.217
  %135 = load i32, i32* %shlsize, align 4
  %conv233 = zext i32 %135 to i64
  %136 = load i8*, i8** %loc_esi, align 8
  %137 = load i8*, i8** %dest.addr, align 8
  %sub.ptr.lhs.cast234 = ptrtoint i8* %136 to i64
  %sub.ptr.rhs.cast235 = ptrtoint i8* %137 to i64
  %sub.ptr.sub236 = sub i64 %sub.ptr.lhs.cast234, %sub.ptr.rhs.cast235
  %add237 = add nsw i64 %conv233, %sub.ptr.sub236
  %add238 = add nsw i64 %add237, 53
  %conv239 = trunc i64 %add238 to i32
  store i32 %conv239, i32* %shlsize, align 4
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.232, %if.then.223
  %138 = load i8*, i8** %dest.addr, align 8
  %139 = load i32, i32* %shlsize, align 4
  %idx.ext241 = zext i32 %139 to i64
  %add.ptr242 = getelementptr inbounds i8, i8* %138, i64 %idx.ext241
  %add.ptr243 = getelementptr inbounds i8, i8* %add.ptr242, i64 43
  store i8* %add.ptr243, i8** %alvalue, align 8
  store i32 8, i32* %aljump, align 4
  store i32 24, i32* %shroff, align 4
  %140 = load i32, i32* %dsize.addr, align 4
  %cmp244 = icmp ugt i32 %140, 0
  br i1 %cmp244, label %land.lhs.true.246, label %if.then.270

land.lhs.true.246:                                ; preds = %if.end.240
  %141 = load i32, i32* %dsize.addr, align 4
  %cmp247 = icmp ule i32 2, %141
  br i1 %cmp247, label %land.lhs.true.249, label %if.then.270

land.lhs.true.249:                                ; preds = %land.lhs.true.246
  %142 = load i8*, i8** %alvalue, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %142, i64 -1
  %143 = load i8*, i8** %dest.addr, align 8
  %cmp251 = icmp uge i8* %add.ptr250, %143
  br i1 %cmp251, label %land.lhs.true.253, label %if.then.270

land.lhs.true.253:                                ; preds = %land.lhs.true.249
  %144 = load i8*, i8** %alvalue, align 8
  %add.ptr254 = getelementptr inbounds i8, i8* %144, i64 -1
  %add.ptr255 = getelementptr inbounds i8, i8* %add.ptr254, i64 2
  %145 = load i8*, i8** %dest.addr, align 8
  %146 = load i32, i32* %dsize.addr, align 4
  %idx.ext256 = zext i32 %146 to i64
  %add.ptr257 = getelementptr inbounds i8, i8* %145, i64 %idx.ext256
  %cmp258 = icmp ule i8* %add.ptr255, %add.ptr257
  br i1 %cmp258, label %land.lhs.true.260, label %if.then.270

land.lhs.true.260:                                ; preds = %land.lhs.true.253
  %147 = load i8*, i8** %alvalue, align 8
  %add.ptr261 = getelementptr inbounds i8, i8* %147, i64 -1
  %add.ptr262 = getelementptr inbounds i8, i8* %add.ptr261, i64 2
  %148 = load i8*, i8** %dest.addr, align 8
  %cmp263 = icmp ugt i8* %add.ptr262, %148
  br i1 %cmp263, label %lor.lhs.false.265, label %if.then.270

lor.lhs.false.265:                                ; preds = %land.lhs.true.260
  %149 = load i8*, i8** %alvalue, align 8
  %add.ptr266 = getelementptr inbounds i8, i8* %149, i64 -1
  %150 = load i8, i8* %add.ptr266, align 1
  %conv267 = sext i8 %150 to i32
  %cmp268 = icmp ne i32 %conv267, -29
  br i1 %cmp268, label %if.then.270, label %if.end.307

if.then.270:                                      ; preds = %lor.lhs.false.265, %land.lhs.true.260, %land.lhs.true.253, %land.lhs.true.249, %land.lhs.true.246, %if.end.240
  %151 = load i8*, i8** %dest.addr, align 8
  %152 = load i32, i32* %shlsize, align 4
  %idx.ext271 = zext i32 %152 to i64
  %add.ptr272 = getelementptr inbounds i8, i8* %151, i64 %idx.ext271
  %add.ptr273 = getelementptr inbounds i8, i8* %add.ptr272, i64 46
  store i8* %add.ptr273, i8** %alvalue, align 8
  %153 = load i32, i32* %dsize.addr, align 4
  %cmp274 = icmp ugt i32 %153, 0
  br i1 %cmp274, label %land.lhs.true.276, label %if.then.300

land.lhs.true.276:                                ; preds = %if.then.270
  %154 = load i32, i32* %dsize.addr, align 4
  %cmp277 = icmp ule i32 2, %154
  br i1 %cmp277, label %land.lhs.true.279, label %if.then.300

land.lhs.true.279:                                ; preds = %land.lhs.true.276
  %155 = load i8*, i8** %alvalue, align 8
  %add.ptr280 = getelementptr inbounds i8, i8* %155, i64 -1
  %156 = load i8*, i8** %dest.addr, align 8
  %cmp281 = icmp uge i8* %add.ptr280, %156
  br i1 %cmp281, label %land.lhs.true.283, label %if.then.300

land.lhs.true.283:                                ; preds = %land.lhs.true.279
  %157 = load i8*, i8** %alvalue, align 8
  %add.ptr284 = getelementptr inbounds i8, i8* %157, i64 -1
  %add.ptr285 = getelementptr inbounds i8, i8* %add.ptr284, i64 2
  %158 = load i8*, i8** %dest.addr, align 8
  %159 = load i32, i32* %dsize.addr, align 4
  %idx.ext286 = zext i32 %159 to i64
  %add.ptr287 = getelementptr inbounds i8, i8* %158, i64 %idx.ext286
  %cmp288 = icmp ule i8* %add.ptr285, %add.ptr287
  br i1 %cmp288, label %land.lhs.true.290, label %if.then.300

land.lhs.true.290:                                ; preds = %land.lhs.true.283
  %160 = load i8*, i8** %alvalue, align 8
  %add.ptr291 = getelementptr inbounds i8, i8* %160, i64 -1
  %add.ptr292 = getelementptr inbounds i8, i8* %add.ptr291, i64 2
  %161 = load i8*, i8** %dest.addr, align 8
  %cmp293 = icmp ugt i8* %add.ptr292, %161
  br i1 %cmp293, label %lor.lhs.false.295, label %if.then.300

lor.lhs.false.295:                                ; preds = %land.lhs.true.290
  %162 = load i8*, i8** %alvalue, align 8
  %add.ptr296 = getelementptr inbounds i8, i8* %162, i64 -1
  %163 = load i8, i8* %add.ptr296, align 1
  %conv297 = sext i8 %163 to i32
  %cmp298 = icmp ne i32 %conv297, -29
  br i1 %cmp298, label %if.then.300, label %if.else.301

if.then.300:                                      ; preds = %lor.lhs.false.295, %land.lhs.true.290, %land.lhs.true.283, %land.lhs.true.279, %land.lhs.true.276, %if.then.270
  store i32 -1, i32* %retval
  br label %return

if.else.301:                                      ; preds = %lor.lhs.false.295
  %164 = load i32, i32* %upack_version, align 4
  %cmp302 = icmp ne i32 %164, 3
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %if.else.301
  store i32 2, i32* %upack_version, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.304, %if.else.301
  store i32 7, i32* %aljump, align 4
  store i32 26, i32* %shroff, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.end.305
  br label %if.end.307

if.end.307:                                       ; preds = %if.end.306, %lor.lhs.false.265
  %165 = load i8*, i8** %alvalue, align 8
  %166 = load i8, i8* %165, align 1
  %conv308 = sext i8 %166 to i32
  %and309 = and i32 %conv308, 255
  %add310 = add nsw i32 %and309, 1
  %167 = load i8*, i8** %alvalue, align 8
  %idx.ext311 = sext i32 %add310 to i64
  %add.ptr312 = getelementptr inbounds i8, i8* %167, i64 %idx.ext311
  store i8* %add.ptr312, i8** %alvalue, align 8
  %168 = load i32, i32* %dsize.addr, align 4
  %cmp313 = icmp ugt i32 %168, 0
  br i1 %cmp313, label %land.lhs.true.315, label %if.then.346

land.lhs.true.315:                                ; preds = %if.end.307
  %169 = load i32, i32* %aljump, align 4
  %add316 = add i32 %169, 5
  %cmp317 = icmp ugt i32 %add316, 0
  br i1 %cmp317, label %land.lhs.true.319, label %if.then.346

land.lhs.true.319:                                ; preds = %land.lhs.true.315
  %170 = load i32, i32* %aljump, align 4
  %add320 = add i32 %170, 5
  %171 = load i32, i32* %dsize.addr, align 4
  %cmp321 = icmp ule i32 %add320, %171
  br i1 %cmp321, label %land.lhs.true.323, label %if.then.346

land.lhs.true.323:                                ; preds = %land.lhs.true.319
  %172 = load i8*, i8** %alvalue, align 8
  %173 = load i8*, i8** %dest.addr, align 8
  %cmp324 = icmp uge i8* %172, %173
  br i1 %cmp324, label %land.lhs.true.326, label %if.then.346

land.lhs.true.326:                                ; preds = %land.lhs.true.323
  %174 = load i8*, i8** %alvalue, align 8
  %175 = load i32, i32* %aljump, align 4
  %idx.ext327 = zext i32 %175 to i64
  %add.ptr328 = getelementptr inbounds i8, i8* %174, i64 %idx.ext327
  %add.ptr329 = getelementptr inbounds i8, i8* %add.ptr328, i64 5
  %176 = load i8*, i8** %dest.addr, align 8
  %177 = load i32, i32* %dsize.addr, align 4
  %idx.ext330 = zext i32 %177 to i64
  %add.ptr331 = getelementptr inbounds i8, i8* %176, i64 %idx.ext330
  %cmp332 = icmp ule i8* %add.ptr329, %add.ptr331
  br i1 %cmp332, label %land.lhs.true.334, label %if.then.346

land.lhs.true.334:                                ; preds = %land.lhs.true.326
  %178 = load i8*, i8** %alvalue, align 8
  %179 = load i32, i32* %aljump, align 4
  %idx.ext335 = zext i32 %179 to i64
  %add.ptr336 = getelementptr inbounds i8, i8* %178, i64 %idx.ext335
  %add.ptr337 = getelementptr inbounds i8, i8* %add.ptr336, i64 5
  %180 = load i8*, i8** %dest.addr, align 8
  %cmp338 = icmp ugt i8* %add.ptr337, %180
  br i1 %cmp338, label %lor.lhs.false.340, label %if.then.346

lor.lhs.false.340:                                ; preds = %land.lhs.true.334
  %181 = load i8*, i8** %alvalue, align 8
  %182 = load i32, i32* %aljump, align 4
  %idx.ext341 = zext i32 %182 to i64
  %add.ptr342 = getelementptr inbounds i8, i8* %181, i64 %idx.ext341
  %183 = load i8, i8* %add.ptr342, align 1
  %conv343 = sext i8 %183 to i32
  %cmp344 = icmp ne i32 %conv343, -23
  br i1 %cmp344, label %if.then.346, label %if.end.347

if.then.346:                                      ; preds = %lor.lhs.false.340, %land.lhs.true.334, %land.lhs.true.326, %land.lhs.true.323, %land.lhs.true.319, %land.lhs.true.315, %if.end.307
  store i32 -1, i32* %retval
  br label %return

if.end.347:                                       ; preds = %lor.lhs.false.340
  %184 = load i8*, i8** %alvalue, align 8
  %185 = load i32, i32* %aljump, align 4
  %idx.ext348 = zext i32 %185 to i64
  %add.ptr349 = getelementptr inbounds i8, i8* %184, i64 %idx.ext348
  %add.ptr350 = getelementptr inbounds i8, i8* %add.ptr349, i64 1
  %186 = bitcast i8* %add.ptr350 to i32*
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %ret, align 4
  %188 = load i32, i32* %ret, align 4
  %189 = load i32, i32* %aljump, align 4
  %add351 = add i32 %188, %189
  %add352 = add i32 %add351, 1
  %add353 = add i32 %add352, 4
  %add354 = add i32 %add353, 27
  %190 = load i8*, i8** %alvalue, align 8
  %idx.ext355 = zext i32 %add354 to i64
  %add.ptr356 = getelementptr inbounds i8, i8* %190, i64 %idx.ext355
  store i8* %add.ptr356, i8** %alvalue, align 8
  %191 = load i32, i32* %upack_version, align 4
  %cmp357 = icmp eq i32 %191, 3
  br i1 %cmp357, label %if.then.359, label %if.end.361

if.then.359:                                      ; preds = %if.end.347
  %192 = load i8*, i8** %alvalue, align 8
  %add.ptr360 = getelementptr inbounds i8, i8* %192, i64 2
  store i8* %add.ptr360, i8** %alvalue, align 8
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.359, %if.end.347
  %193 = load i32, i32* %dsize.addr, align 4
  %cmp362 = icmp ugt i32 %193, 0
  br i1 %cmp362, label %land.lhs.true.364, label %if.then.409

land.lhs.true.364:                                ; preds = %if.end.361
  %194 = load i32, i32* %dsize.addr, align 4
  %cmp365 = icmp ule i32 3, %194
  br i1 %cmp365, label %land.lhs.true.367, label %if.then.409

land.lhs.true.367:                                ; preds = %land.lhs.true.364
  %195 = load i8*, i8** %dest.addr, align 8
  %196 = load i32, i32* %shlsize, align 4
  %idx.ext368 = zext i32 %196 to i64
  %add.ptr369 = getelementptr inbounds i8, i8* %195, i64 %idx.ext368
  %197 = load i32, i32* %shroff, align 4
  %idx.ext370 = zext i32 %197 to i64
  %add.ptr371 = getelementptr inbounds i8, i8* %add.ptr369, i64 %idx.ext370
  %198 = load i8*, i8** %dest.addr, align 8
  %cmp372 = icmp uge i8* %add.ptr371, %198
  br i1 %cmp372, label %land.lhs.true.374, label %if.then.409

land.lhs.true.374:                                ; preds = %land.lhs.true.367
  %199 = load i8*, i8** %dest.addr, align 8
  %200 = load i32, i32* %shlsize, align 4
  %idx.ext375 = zext i32 %200 to i64
  %add.ptr376 = getelementptr inbounds i8, i8* %199, i64 %idx.ext375
  %201 = load i32, i32* %shroff, align 4
  %idx.ext377 = zext i32 %201 to i64
  %add.ptr378 = getelementptr inbounds i8, i8* %add.ptr376, i64 %idx.ext377
  %add.ptr379 = getelementptr inbounds i8, i8* %add.ptr378, i64 3
  %202 = load i8*, i8** %dest.addr, align 8
  %203 = load i32, i32* %dsize.addr, align 4
  %idx.ext380 = zext i32 %203 to i64
  %add.ptr381 = getelementptr inbounds i8, i8* %202, i64 %idx.ext380
  %cmp382 = icmp ule i8* %add.ptr379, %add.ptr381
  br i1 %cmp382, label %land.lhs.true.384, label %if.then.409

land.lhs.true.384:                                ; preds = %land.lhs.true.374
  %204 = load i8*, i8** %dest.addr, align 8
  %205 = load i32, i32* %shlsize, align 4
  %idx.ext385 = zext i32 %205 to i64
  %add.ptr386 = getelementptr inbounds i8, i8* %204, i64 %idx.ext385
  %206 = load i32, i32* %shroff, align 4
  %idx.ext387 = zext i32 %206 to i64
  %add.ptr388 = getelementptr inbounds i8, i8* %add.ptr386, i64 %idx.ext387
  %add.ptr389 = getelementptr inbounds i8, i8* %add.ptr388, i64 3
  %207 = load i8*, i8** %dest.addr, align 8
  %cmp390 = icmp ugt i8* %add.ptr389, %207
  br i1 %cmp390, label %lor.lhs.false.392, label %if.then.409

lor.lhs.false.392:                                ; preds = %land.lhs.true.384
  %208 = load i8*, i8** %dest.addr, align 8
  %209 = load i32, i32* %shlsize, align 4
  %idx.ext393 = zext i32 %209 to i64
  %add.ptr394 = getelementptr inbounds i8, i8* %208, i64 %idx.ext393
  %210 = load i32, i32* %shroff, align 4
  %idx.ext395 = zext i32 %210 to i64
  %add.ptr396 = getelementptr inbounds i8, i8* %add.ptr394, i64 %idx.ext395
  %211 = load i8, i8* %add.ptr396, align 1
  %conv397 = sext i8 %211 to i32
  %cmp398 = icmp ne i32 %conv397, -63
  br i1 %cmp398, label %if.then.409, label %lor.lhs.false.400

lor.lhs.false.400:                                ; preds = %lor.lhs.false.392
  %212 = load i8*, i8** %dest.addr, align 8
  %213 = load i32, i32* %shlsize, align 4
  %idx.ext401 = zext i32 %213 to i64
  %add.ptr402 = getelementptr inbounds i8, i8* %212, i64 %idx.ext401
  %214 = load i32, i32* %shroff, align 4
  %idx.ext403 = zext i32 %214 to i64
  %add.ptr404 = getelementptr inbounds i8, i8* %add.ptr402, i64 %idx.ext403
  %add.ptr405 = getelementptr inbounds i8, i8* %add.ptr404, i64 1
  %215 = load i8, i8* %add.ptr405, align 1
  %conv406 = sext i8 %215 to i32
  %cmp407 = icmp ne i32 %conv406, -19
  br i1 %cmp407, label %if.then.409, label %if.end.410

if.then.409:                                      ; preds = %lor.lhs.false.400, %lor.lhs.false.392, %land.lhs.true.384, %land.lhs.true.374, %land.lhs.true.367, %land.lhs.true.364, %if.end.361
  store i32 -1, i32* %retval
  br label %return

if.end.410:                                       ; preds = %lor.lhs.false.400
  %216 = load i8*, i8** %dest.addr, align 8
  %217 = load i32, i32* %shlsize, align 4
  %idx.ext411 = zext i32 %217 to i64
  %add.ptr412 = getelementptr inbounds i8, i8* %216, i64 %idx.ext411
  %218 = load i32, i32* %shroff, align 4
  %idx.ext413 = zext i32 %218 to i64
  %add.ptr414 = getelementptr inbounds i8, i8* %add.ptr412, i64 %idx.ext413
  %add.ptr415 = getelementptr inbounds i8, i8* %add.ptr414, i64 2
  %219 = load i8, i8* %add.ptr415, align 1
  %conv416 = sext i8 %219 to i32
  %and417 = and i32 %conv416, 255
  store i32 %and417, i32* %shlsize, align 4
  %220 = load i32, i32* %count, align 4
  %mul = mul i32 %220, 256
  store i32 %mul, i32* %count, align 4
  %221 = load i32, i32* %shlsize, align 4
  %cmp418 = icmp ult i32 %221, 2
  br i1 %cmp418, label %if.then.423, label %lor.lhs.false.420

lor.lhs.false.420:                                ; preds = %if.end.410
  %222 = load i32, i32* %shlsize, align 4
  %cmp421 = icmp ugt i32 %222, 8
  br i1 %cmp421, label %if.then.423, label %if.end.424

if.then.423:                                      ; preds = %lor.lhs.false.420, %if.end.410
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.424:                                       ; preds = %lor.lhs.false.420
  %223 = load i32, i32* %shlsize, align 4
  %224 = load i32, i32* %count, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0), i32 %223, i32 %224)
  %225 = load i32, i32* %upack_version, align 4
  %cmp425 = icmp eq i32 %225, 3
  br i1 %cmp425, label %if.then.427, label %if.else.478

if.then.427:                                      ; preds = %if.end.424
  %226 = load i32, i32* %dsize.addr, align 4
  %cmp428 = icmp ugt i32 %226, 0
  br i1 %cmp428, label %land.lhs.true.430, label %if.then.459

land.lhs.true.430:                                ; preds = %if.then.427
  %227 = load i32, i32* %dsize.addr, align 4
  %cmp431 = icmp ule i32 10, %227
  br i1 %cmp431, label %land.lhs.true.433, label %if.then.459

land.lhs.true.433:                                ; preds = %land.lhs.true.430
  %228 = load i8*, i8** %loc_esi, align 8
  %add.ptr434 = getelementptr inbounds i8, i8* %228, i64 6
  %229 = load i8*, i8** %dest.addr, align 8
  %cmp435 = icmp uge i8* %add.ptr434, %229
  br i1 %cmp435, label %land.lhs.true.437, label %if.then.459

land.lhs.true.437:                                ; preds = %land.lhs.true.433
  %230 = load i8*, i8** %loc_esi, align 8
  %add.ptr438 = getelementptr inbounds i8, i8* %230, i64 6
  %add.ptr439 = getelementptr inbounds i8, i8* %add.ptr438, i64 10
  %231 = load i8*, i8** %dest.addr, align 8
  %232 = load i32, i32* %dsize.addr, align 4
  %idx.ext440 = zext i32 %232 to i64
  %add.ptr441 = getelementptr inbounds i8, i8* %231, i64 %idx.ext440
  %cmp442 = icmp ule i8* %add.ptr439, %add.ptr441
  br i1 %cmp442, label %land.lhs.true.444, label %if.then.459

land.lhs.true.444:                                ; preds = %land.lhs.true.437
  %233 = load i8*, i8** %loc_esi, align 8
  %add.ptr445 = getelementptr inbounds i8, i8* %233, i64 6
  %add.ptr446 = getelementptr inbounds i8, i8* %add.ptr445, i64 10
  %234 = load i8*, i8** %dest.addr, align 8
  %cmp447 = icmp ugt i8* %add.ptr446, %234
  br i1 %cmp447, label %lor.lhs.false.449, label %if.then.459

lor.lhs.false.449:                                ; preds = %land.lhs.true.444
  %235 = load i8*, i8** %loc_esi, align 8
  %add.ptr450 = getelementptr inbounds i8, i8* %235, i64 6
  %236 = load i8, i8* %add.ptr450, align 1
  %conv451 = sext i8 %236 to i32
  %cmp452 = icmp ne i32 %conv451, -66
  br i1 %cmp452, label %if.then.459, label %lor.lhs.false.454

lor.lhs.false.454:                                ; preds = %lor.lhs.false.449
  %237 = load i8*, i8** %loc_esi, align 8
  %add.ptr455 = getelementptr inbounds i8, i8* %237, i64 11
  %238 = load i8, i8* %add.ptr455, align 1
  %conv456 = sext i8 %238 to i32
  %cmp457 = icmp ne i32 %conv456, -65
  br i1 %cmp457, label %if.then.459, label %if.end.460

if.then.459:                                      ; preds = %lor.lhs.false.454, %lor.lhs.false.449, %land.lhs.true.444, %land.lhs.true.437, %land.lhs.true.433, %land.lhs.true.430, %if.then.427
  store i32 -1, i32* %retval
  br label %return

if.end.460:                                       ; preds = %lor.lhs.false.454
  %239 = load i8*, i8** %loc_esi, align 8
  %add.ptr461 = getelementptr inbounds i8, i8* %239, i64 7
  %240 = bitcast i8* %add.ptr461 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %base.addr, align 4
  %cmp462 = icmp ult i32 %241, %242
  br i1 %cmp462, label %if.then.468, label %lor.lhs.false.464

lor.lhs.false.464:                                ; preds = %if.end.460
  %243 = load i8*, i8** %loc_esi, align 8
  %add.ptr465 = getelementptr inbounds i8, i8* %243, i64 7
  %244 = bitcast i8* %add.ptr465 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %vma.addr, align 4
  %cmp466 = icmp ugt i32 %245, %246
  br i1 %cmp466, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %lor.lhs.false.464, %if.end.460
  store i32 -1, i32* %retval
  br label %return

if.end.469:                                       ; preds = %lor.lhs.false.464
  %247 = load i8*, i8** %dest.addr, align 8
  %248 = load i8*, i8** %loc_esi, align 8
  %add.ptr470 = getelementptr inbounds i8, i8* %248, i64 12
  %249 = bitcast i8* %add.ptr470 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %vma.addr, align 4
  %sub471 = sub i32 %250, %251
  %idx.ext472 = zext i32 %sub471 to i64
  %add.ptr473 = getelementptr inbounds i8, i8* %247, i64 %idx.ext472
  store i8* %add.ptr473, i8** %loc_edi, align 8
  %252 = load i8*, i8** %dest.addr, align 8
  %253 = load i8*, i8** %loc_esi, align 8
  %add.ptr474 = getelementptr inbounds i8, i8* %253, i64 7
  %254 = bitcast i8* %add.ptr474 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %base.addr, align 4
  %sub475 = sub i32 %255, %256
  %idx.ext476 = zext i32 %sub475 to i64
  %add.ptr477 = getelementptr inbounds i8, i8* %252, i64 %idx.ext476
  store i8* %add.ptr477, i8** %loc_esi, align 8
  br label %if.end.511

if.else.478:                                      ; preds = %if.end.424
  %257 = load i32, i32* %dsize.addr, align 4
  %cmp479 = icmp ugt i32 %257, 0
  br i1 %cmp479, label %land.lhs.true.481, label %if.then.505

land.lhs.true.481:                                ; preds = %if.else.478
  %258 = load i32, i32* %dsize.addr, align 4
  %cmp482 = icmp ule i32 5, %258
  br i1 %cmp482, label %land.lhs.true.484, label %if.then.505

land.lhs.true.484:                                ; preds = %land.lhs.true.481
  %259 = load i8*, i8** %loc_esi, align 8
  %add.ptr485 = getelementptr inbounds i8, i8* %259, i64 7
  %260 = load i8*, i8** %dest.addr, align 8
  %cmp486 = icmp uge i8* %add.ptr485, %260
  br i1 %cmp486, label %land.lhs.true.488, label %if.then.505

land.lhs.true.488:                                ; preds = %land.lhs.true.484
  %261 = load i8*, i8** %loc_esi, align 8
  %add.ptr489 = getelementptr inbounds i8, i8* %261, i64 7
  %add.ptr490 = getelementptr inbounds i8, i8* %add.ptr489, i64 5
  %262 = load i8*, i8** %dest.addr, align 8
  %263 = load i32, i32* %dsize.addr, align 4
  %idx.ext491 = zext i32 %263 to i64
  %add.ptr492 = getelementptr inbounds i8, i8* %262, i64 %idx.ext491
  %cmp493 = icmp ule i8* %add.ptr490, %add.ptr492
  br i1 %cmp493, label %land.lhs.true.495, label %if.then.505

land.lhs.true.495:                                ; preds = %land.lhs.true.488
  %264 = load i8*, i8** %loc_esi, align 8
  %add.ptr496 = getelementptr inbounds i8, i8* %264, i64 7
  %add.ptr497 = getelementptr inbounds i8, i8* %add.ptr496, i64 5
  %265 = load i8*, i8** %dest.addr, align 8
  %cmp498 = icmp ugt i8* %add.ptr497, %265
  br i1 %cmp498, label %lor.lhs.false.500, label %if.then.505

lor.lhs.false.500:                                ; preds = %land.lhs.true.495
  %266 = load i8*, i8** %loc_esi, align 8
  %add.ptr501 = getelementptr inbounds i8, i8* %266, i64 7
  %267 = load i8, i8* %add.ptr501, align 1
  %conv502 = sext i8 %267 to i32
  %cmp503 = icmp ne i32 %conv502, -66
  br i1 %cmp503, label %if.then.505, label %if.end.506

if.then.505:                                      ; preds = %lor.lhs.false.500, %land.lhs.true.495, %land.lhs.true.488, %land.lhs.true.484, %land.lhs.true.481, %if.else.478
  store i32 -1, i32* %retval
  br label %return

if.end.506:                                       ; preds = %lor.lhs.false.500
  %268 = load i8*, i8** %dest.addr, align 8
  %269 = load i8*, i8** %loc_esi, align 8
  %add.ptr507 = getelementptr inbounds i8, i8* %269, i64 8
  %270 = bitcast i8* %add.ptr507 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* %vma.addr, align 4
  %sub508 = sub i32 %271, %272
  %idx.ext509 = zext i32 %sub508 to i64
  %add.ptr510 = getelementptr inbounds i8, i8* %268, i64 %idx.ext509
  store i8* %add.ptr510, i8** %loc_esi, align 8
  br label %if.end.511

if.end.511:                                       ; preds = %if.end.506, %if.end.469
  %273 = load i32, i32* %upack_version, align 4
  %cmp512 = icmp eq i32 %273, 3
  br i1 %cmp512, label %if.then.514, label %if.else.571

if.then.514:                                      ; preds = %if.end.511
  %274 = load i32, i32* %dsize.addr, align 4
  %cmp515 = icmp ugt i32 %274, 0
  br i1 %cmp515, label %land.lhs.true.517, label %if.then.565

land.lhs.true.517:                                ; preds = %if.then.514
  %275 = load i32, i32* %count, align 4
  %mul518 = mul i32 4, %275
  %add519 = add i32 112, %mul518
  %cmp520 = icmp ugt i32 %add519, 0
  br i1 %cmp520, label %land.lhs.true.522, label %if.then.565

land.lhs.true.522:                                ; preds = %land.lhs.true.517
  %276 = load i32, i32* %count, align 4
  %mul523 = mul i32 4, %276
  %add524 = add i32 112, %mul523
  %277 = load i32, i32* %dsize.addr, align 4
  %cmp525 = icmp ule i32 %add524, %277
  br i1 %cmp525, label %land.lhs.true.527, label %if.then.565

land.lhs.true.527:                                ; preds = %land.lhs.true.522
  %278 = load i8*, i8** %loc_edi, align 8
  %279 = load i8*, i8** %dest.addr, align 8
  %cmp528 = icmp uge i8* %278, %279
  br i1 %cmp528, label %land.lhs.true.530, label %if.then.565

land.lhs.true.530:                                ; preds = %land.lhs.true.527
  %280 = load i8*, i8** %loc_edi, align 8
  %281 = load i32, i32* %count, align 4
  %mul531 = mul i32 4, %281
  %add532 = add i32 112, %mul531
  %idx.ext533 = zext i32 %add532 to i64
  %add.ptr534 = getelementptr inbounds i8, i8* %280, i64 %idx.ext533
  %282 = load i8*, i8** %dest.addr, align 8
  %283 = load i32, i32* %dsize.addr, align 4
  %idx.ext535 = zext i32 %283 to i64
  %add.ptr536 = getelementptr inbounds i8, i8* %282, i64 %idx.ext535
  %cmp537 = icmp ule i8* %add.ptr534, %add.ptr536
  br i1 %cmp537, label %land.lhs.true.539, label %if.then.565

land.lhs.true.539:                                ; preds = %land.lhs.true.530
  %284 = load i8*, i8** %loc_edi, align 8
  %285 = load i32, i32* %count, align 4
  %mul540 = mul i32 4, %285
  %add541 = add i32 112, %mul540
  %idx.ext542 = zext i32 %add541 to i64
  %add.ptr543 = getelementptr inbounds i8, i8* %284, i64 %idx.ext542
  %286 = load i8*, i8** %dest.addr, align 8
  %cmp544 = icmp ugt i8* %add.ptr543, %286
  br i1 %cmp544, label %lor.lhs.false.546, label %if.then.565

lor.lhs.false.546:                                ; preds = %land.lhs.true.539
  %287 = load i32, i32* %dsize.addr, align 4
  %cmp547 = icmp ugt i32 %287, 0
  br i1 %cmp547, label %land.lhs.true.549, label %if.then.565

land.lhs.true.549:                                ; preds = %lor.lhs.false.546
  %288 = load i32, i32* %dsize.addr, align 4
  %cmp550 = icmp ule i32 192, %288
  br i1 %cmp550, label %land.lhs.true.552, label %if.then.565

land.lhs.true.552:                                ; preds = %land.lhs.true.549
  %289 = load i8*, i8** %loc_esi, align 8
  %290 = load i8*, i8** %dest.addr, align 8
  %cmp553 = icmp uge i8* %289, %290
  br i1 %cmp553, label %land.lhs.true.555, label %if.then.565

land.lhs.true.555:                                ; preds = %land.lhs.true.552
  %291 = load i8*, i8** %loc_esi, align 8
  %add.ptr556 = getelementptr inbounds i8, i8* %291, i64 192
  %292 = load i8*, i8** %dest.addr, align 8
  %293 = load i32, i32* %dsize.addr, align 4
  %idx.ext557 = zext i32 %293 to i64
  %add.ptr558 = getelementptr inbounds i8, i8* %292, i64 %idx.ext557
  %cmp559 = icmp ule i8* %add.ptr556, %add.ptr558
  br i1 %cmp559, label %land.lhs.true.561, label %if.then.565

land.lhs.true.561:                                ; preds = %land.lhs.true.555
  %294 = load i8*, i8** %loc_esi, align 8
  %add.ptr562 = getelementptr inbounds i8, i8* %294, i64 192
  %295 = load i8*, i8** %dest.addr, align 8
  %cmp563 = icmp ugt i8* %add.ptr562, %295
  br i1 %cmp563, label %if.end.566, label %if.then.565

if.then.565:                                      ; preds = %land.lhs.true.561, %land.lhs.true.555, %land.lhs.true.552, %land.lhs.true.549, %lor.lhs.false.546, %land.lhs.true.539, %land.lhs.true.530, %land.lhs.true.527, %land.lhs.true.522, %land.lhs.true.517, %if.then.514
  store i32 -1, i32* %retval
  br label %return

if.end.566:                                       ; preds = %land.lhs.true.561
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.566
  %296 = load i32, i32* %j, align 4
  %cmp567 = icmp slt i32 %296, 22
  br i1 %cmp567, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %297 = load i8*, i8** %loc_esi, align 8
  %298 = bitcast i8* %297 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = load i8*, i8** %loc_edi, align 8
  %301 = bitcast i8* %300 to i32*
  store i32 %299, i32* %301, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %302 = load i32, i32* %j, align 4
  %inc = add nsw i32 %302, 1
  store i32 %inc, i32* %j, align 4
  %303 = load i8*, i8** %loc_esi, align 8
  %add.ptr569 = getelementptr inbounds i8, i8* %303, i64 4
  store i8* %add.ptr569, i8** %loc_esi, align 8
  %304 = load i8*, i8** %loc_edi, align 8
  %add.ptr570 = getelementptr inbounds i8, i8* %304, i64 4
  store i8* %add.ptr570, i8** %loc_edi, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.633

if.else.571:                                      ; preds = %if.end.511
  %305 = load i32, i32* %dsize.addr, align 4
  %cmp572 = icmp ugt i32 %305, 0
  br i1 %cmp572, label %land.lhs.true.574, label %if.then.622

land.lhs.true.574:                                ; preds = %if.else.571
  %306 = load i32, i32* %count, align 4
  %mul575 = mul i32 4, %306
  %add576 = add i32 180, %mul575
  %cmp577 = icmp ugt i32 %add576, 0
  br i1 %cmp577, label %land.lhs.true.579, label %if.then.622

land.lhs.true.579:                                ; preds = %land.lhs.true.574
  %307 = load i32, i32* %count, align 4
  %mul580 = mul i32 4, %307
  %add581 = add i32 180, %mul580
  %308 = load i32, i32* %dsize.addr, align 4
  %cmp582 = icmp ule i32 %add581, %308
  br i1 %cmp582, label %land.lhs.true.584, label %if.then.622

land.lhs.true.584:                                ; preds = %land.lhs.true.579
  %309 = load i8*, i8** %loc_edi, align 8
  %310 = load i8*, i8** %dest.addr, align 8
  %cmp585 = icmp uge i8* %309, %310
  br i1 %cmp585, label %land.lhs.true.587, label %if.then.622

land.lhs.true.587:                                ; preds = %land.lhs.true.584
  %311 = load i8*, i8** %loc_edi, align 8
  %312 = load i32, i32* %count, align 4
  %mul588 = mul i32 4, %312
  %add589 = add i32 180, %mul588
  %idx.ext590 = zext i32 %add589 to i64
  %add.ptr591 = getelementptr inbounds i8, i8* %311, i64 %idx.ext590
  %313 = load i8*, i8** %dest.addr, align 8
  %314 = load i32, i32* %dsize.addr, align 4
  %idx.ext592 = zext i32 %314 to i64
  %add.ptr593 = getelementptr inbounds i8, i8* %313, i64 %idx.ext592
  %cmp594 = icmp ule i8* %add.ptr591, %add.ptr593
  br i1 %cmp594, label %land.lhs.true.596, label %if.then.622

land.lhs.true.596:                                ; preds = %land.lhs.true.587
  %315 = load i8*, i8** %loc_edi, align 8
  %316 = load i32, i32* %count, align 4
  %mul597 = mul i32 4, %316
  %add598 = add i32 180, %mul597
  %idx.ext599 = zext i32 %add598 to i64
  %add.ptr600 = getelementptr inbounds i8, i8* %315, i64 %idx.ext599
  %317 = load i8*, i8** %dest.addr, align 8
  %cmp601 = icmp ugt i8* %add.ptr600, %317
  br i1 %cmp601, label %lor.lhs.false.603, label %if.then.622

lor.lhs.false.603:                                ; preds = %land.lhs.true.596
  %318 = load i32, i32* %dsize.addr, align 4
  %cmp604 = icmp ugt i32 %318, 0
  br i1 %cmp604, label %land.lhs.true.606, label %if.then.622

land.lhs.true.606:                                ; preds = %lor.lhs.false.603
  %319 = load i32, i32* %dsize.addr, align 4
  %cmp607 = icmp ule i32 212, %319
  br i1 %cmp607, label %land.lhs.true.609, label %if.then.622

land.lhs.true.609:                                ; preds = %land.lhs.true.606
  %320 = load i8*, i8** %loc_esi, align 8
  %321 = load i8*, i8** %dest.addr, align 8
  %cmp610 = icmp uge i8* %320, %321
  br i1 %cmp610, label %land.lhs.true.612, label %if.then.622

land.lhs.true.612:                                ; preds = %land.lhs.true.609
  %322 = load i8*, i8** %loc_esi, align 8
  %add.ptr613 = getelementptr inbounds i8, i8* %322, i64 212
  %323 = load i8*, i8** %dest.addr, align 8
  %324 = load i32, i32* %dsize.addr, align 4
  %idx.ext614 = zext i32 %324 to i64
  %add.ptr615 = getelementptr inbounds i8, i8* %323, i64 %idx.ext614
  %cmp616 = icmp ule i8* %add.ptr613, %add.ptr615
  br i1 %cmp616, label %land.lhs.true.618, label %if.then.622

land.lhs.true.618:                                ; preds = %land.lhs.true.612
  %325 = load i8*, i8** %loc_esi, align 8
  %add.ptr619 = getelementptr inbounds i8, i8* %325, i64 212
  %326 = load i8*, i8** %dest.addr, align 8
  %cmp620 = icmp ugt i8* %add.ptr619, %326
  br i1 %cmp620, label %if.end.623, label %if.then.622

if.then.622:                                      ; preds = %land.lhs.true.618, %land.lhs.true.612, %land.lhs.true.609, %land.lhs.true.606, %lor.lhs.false.603, %land.lhs.true.596, %land.lhs.true.587, %land.lhs.true.584, %land.lhs.true.579, %land.lhs.true.574, %if.else.571
  store i32 -1, i32* %retval
  br label %return

if.end.623:                                       ; preds = %land.lhs.true.618
  store i32 0, i32* %j, align 4
  br label %for.cond.624

for.cond.624:                                     ; preds = %for.inc.628, %if.end.623
  %327 = load i32, i32* %j, align 4
  %cmp625 = icmp slt i32 %327, 39
  br i1 %cmp625, label %for.body.627, label %for.end.632

for.body.627:                                     ; preds = %for.cond.624
  %328 = load i8*, i8** %loc_esi, align 8
  %329 = bitcast i8* %328 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = load i8*, i8** %loc_edi, align 8
  %332 = bitcast i8* %331 to i32*
  store i32 %330, i32* %332, align 4
  br label %for.inc.628

for.inc.628:                                      ; preds = %for.body.627
  %333 = load i32, i32* %j, align 4
  %inc629 = add nsw i32 %333, 1
  store i32 %inc629, i32* %j, align 4
  %334 = load i8*, i8** %loc_esi, align 8
  %add.ptr630 = getelementptr inbounds i8, i8* %334, i64 4
  store i8* %add.ptr630, i8** %loc_esi, align 8
  %335 = load i8*, i8** %loc_edi, align 8
  %add.ptr631 = getelementptr inbounds i8, i8* %335, i64 4
  store i8* %add.ptr631, i8** %loc_edi, align 8
  br label %for.cond.624

for.end.632:                                      ; preds = %for.cond.624
  br label %if.end.633

if.end.633:                                       ; preds = %for.end.632, %for.end
  %336 = load i8*, i8** %loc_esi, align 8
  %add.ptr634 = getelementptr inbounds i8, i8* %336, i64 4
  %337 = bitcast i8* %add.ptr634 to i32*
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %save3, align 4
  %339 = load i8*, i8** %dest.addr, align 8
  %340 = load i8*, i8** %loc_edi, align 8
  %add.ptr635 = getelementptr inbounds i8, i8* %340, i64 -4
  %341 = bitcast i8* %add.ptr635 to i32*
  %342 = load i32, i32* %341, align 4
  %idx.ext636 = zext i32 %342 to i64
  %add.ptr637 = getelementptr inbounds i8, i8* %339, i64 %idx.ext636
  %343 = load i32, i32* %vma.addr, align 4
  %idx.ext638 = zext i32 %343 to i64
  %idx.neg = sub i64 0, %idx.ext638
  %add.ptr639 = getelementptr inbounds i8, i8* %add.ptr637, i64 %idx.neg
  store i8* %add.ptr639, i8** %paddr, align 8
  %344 = load i8*, i8** %loc_edi, align 8
  store i8* %344, i8** %loc_ebx, align 8
  %345 = load i8*, i8** %loc_edi, align 8
  %346 = bitcast i8* %345 to i32*
  store i32 -1, i32* %346, align 4
  %347 = load i8*, i8** %loc_edi, align 8
  %add.ptr640 = getelementptr inbounds i8, i8* %347, i64 4
  store i8* %add.ptr640, i8** %loc_edi, align 8
  %348 = load i8*, i8** %loc_edi, align 8
  %349 = bitcast i8* %348 to i32*
  store i32 0, i32* %349, align 4
  %350 = load i8*, i8** %loc_edi, align 8
  %add.ptr641 = getelementptr inbounds i8, i8* %350, i64 4
  store i8* %add.ptr641, i8** %loc_edi, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.642

for.cond.642:                                     ; preds = %for.inc.646, %if.end.633
  %351 = load i32, i32* %j, align 4
  %cmp643 = icmp slt i32 %351, 4
  br i1 %cmp643, label %for.body.645, label %for.end.649

for.body.645:                                     ; preds = %for.cond.642
  %352 = load i8*, i8** %loc_edi, align 8
  %353 = bitcast i8* %352 to i32*
  store i32 1, i32* %353, align 4
  br label %for.inc.646

for.inc.646:                                      ; preds = %for.body.645
  %354 = load i32, i32* %j, align 4
  %inc647 = add nsw i32 %354, 1
  store i32 %inc647, i32* %j, align 4
  %355 = load i8*, i8** %loc_edi, align 8
  %add.ptr648 = getelementptr inbounds i8, i8* %355, i64 4
  store i8* %add.ptr648, i8** %loc_edi, align 8
  br label %for.cond.642

for.end.649:                                      ; preds = %for.cond.642
  store i32 0, i32* %j, align 4
  br label %for.cond.650

for.cond.650:                                     ; preds = %for.inc.654, %for.end.649
  %356 = load i32, i32* %j, align 4
  %357 = load i32, i32* %count, align 4
  %cmp651 = icmp ult i32 %356, %357
  br i1 %cmp651, label %for.body.653, label %for.end.657

for.body.653:                                     ; preds = %for.cond.650
  %358 = load i8*, i8** %loc_edi, align 8
  %359 = bitcast i8* %358 to i32*
  store i32 1024, i32* %359, align 4
  br label %for.inc.654

for.inc.654:                                      ; preds = %for.body.653
  %360 = load i32, i32* %j, align 4
  %inc655 = add nsw i32 %360, 1
  store i32 %inc655, i32* %j, align 4
  %361 = load i8*, i8** %loc_edi, align 8
  %add.ptr656 = getelementptr inbounds i8, i8* %361, i64 4
  store i8* %add.ptr656, i8** %loc_edi, align 8
  br label %for.cond.650

for.end.657:                                      ; preds = %for.cond.650
  %362 = load i8*, i8** %dest.addr, align 8
  %363 = load i8*, i8** %loc_esi, align 8
  %add.ptr658 = getelementptr inbounds i8, i8* %363, i64 12
  %364 = bitcast i8* %add.ptr658 to i32*
  %365 = load i32, i32* %364, align 4
  %idx.ext659 = sext i32 %365 to i64
  %add.ptr660 = getelementptr inbounds i8, i8* %362, i64 %idx.ext659
  %366 = load i32, i32* %vma.addr, align 4
  %idx.ext661 = zext i32 %366 to i64
  %idx.neg662 = sub i64 0, %idx.ext661
  %add.ptr663 = getelementptr inbounds i8, i8* %add.ptr660, i64 %idx.neg662
  store i8* %add.ptr663, i8** %loc_edi, align 8
  %367 = load i32, i32* %upack_version, align 4
  %cmp664 = icmp eq i32 %367, 3
  br i1 %cmp664, label %if.then.666, label %if.end.672

if.then.666:                                      ; preds = %for.end.657
  %368 = load i8*, i8** %dest.addr, align 8
  %369 = load i32, i32* %vma.addr, align 4
  %idx.ext667 = zext i32 %369 to i64
  %add.ptr668 = getelementptr inbounds i8, i8* %368, i64 %idx.ext667
  %370 = load i32, i32* %base.addr, align 4
  %idx.ext669 = zext i32 %370 to i64
  %idx.neg670 = sub i64 0, %idx.ext669
  %add.ptr671 = getelementptr inbounds i8, i8* %add.ptr668, i64 %idx.neg670
  store i8* %add.ptr671, i8** %loc_edi, align 8
  br label %if.end.672

if.end.672:                                       ; preds = %if.then.666, %for.end.657
  %371 = load i8*, i8** %loc_edi, align 8
  store i8* %371, i8** %pushed_esi, align 8
  %372 = load i8*, i8** %dest.addr, align 8
  %373 = load i8*, i8** %loc_esi, align 8
  %add.ptr673 = getelementptr inbounds i8, i8* %373, i64 52
  %374 = bitcast i8* %add.ptr673 to i32*
  %375 = load i32, i32* %374, align 4
  %idx.ext674 = sext i32 %375 to i64
  %add.ptr675 = getelementptr inbounds i8, i8* %372, i64 %idx.ext674
  %376 = load i32, i32* %vma.addr, align 4
  %idx.ext676 = zext i32 %376 to i64
  %idx.neg677 = sub i64 0, %idx.ext676
  %add.ptr678 = getelementptr inbounds i8, i8* %add.ptr675, i64 %idx.neg677
  store i8* %add.ptr678, i8** %end_edi, align 8
  %377 = load i32, i32* %upack_version, align 4
  %cmp679 = icmp eq i32 %377, 3
  br i1 %cmp679, label %if.then.681, label %if.end.689

if.then.681:                                      ; preds = %if.end.672
  %378 = load i8*, i8** %dest.addr, align 8
  %379 = load i8*, i8** %loc_esi, align 8
  %add.ptr682 = getelementptr inbounds i8, i8* %379, i64 100
  %380 = bitcast i8* %add.ptr682 to i32*
  %381 = load i32, i32* %380, align 4
  %idx.ext683 = sext i32 %381 to i64
  %add.ptr684 = getelementptr inbounds i8, i8* %378, i64 %idx.ext683
  %382 = load i32, i32* %vma.addr, align 4
  %idx.ext685 = zext i32 %382 to i64
  %idx.neg686 = sub i64 0, %idx.ext685
  %add.ptr687 = getelementptr inbounds i8, i8* %add.ptr684, i64 %idx.neg686
  store i8* %add.ptr687, i8** %end_edi, align 8
  %383 = load i8*, i8** %loc_esi, align 8
  %add.ptr688 = getelementptr inbounds i8, i8* %383, i64 64
  %384 = bitcast i8* %add.ptr688 to i32*
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %save3, align 4
  br label %if.end.689

if.end.689:                                       ; preds = %if.then.681, %if.end.672
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0))
  %386 = load i8*, i8** %dest.addr, align 8
  %387 = load i32, i32* %dsize.addr, align 4
  %388 = load i8*, i8** %loc_ebx, align 8
  %389 = load i8*, i8** %loc_edi, align 8
  %390 = load i8*, i8** %end_edi, align 8
  %391 = load i32, i32* %shlsize, align 4
  %392 = load i8*, i8** %paddr, align 8
  %call = call i32 @unupack399(i8* %386, i32 %387, i32 0, i8* %388, i32 0, i8* %389, i8* %390, i32 %391, i8* %392)
  store i32 %call, i32* %ret, align 4
  %cmp690 = icmp eq i32 %call, -1
  br i1 %cmp690, label %if.then.692, label %if.end.693

if.then.692:                                      ; preds = %if.end.689
  store i32 -1, i32* %retval
  br label %return

if.end.693:                                       ; preds = %if.end.689
  br label %if.end.1189

if.else.694:                                      ; preds = %entry
  %393 = load i8*, i8** %dest.addr, align 8
  %394 = load i32, i32* %vma.addr, align 4
  %idx.ext695 = zext i32 %394 to i64
  %add.ptr696 = getelementptr inbounds i8, i8* %393, i64 %idx.ext695
  %395 = load i32, i32* %ep.addr, align 4
  %idx.ext697 = zext i32 %395 to i64
  %add.ptr698 = getelementptr inbounds i8, i8* %add.ptr696, i64 %idx.ext697
  store i8* %add.ptr698, i8** %loc_esi, align 8
  %396 = load i8*, i8** %buff.addr, align 8
  %arrayidx699 = getelementptr inbounds i8, i8* %396, i64 0
  %397 = load i8, i8* %arrayidx699, align 1
  %conv700 = sext i8 %397 to i32
  %cmp701 = icmp eq i32 %conv700, -66
  br i1 %cmp701, label %land.lhs.true.703, label %if.end.719

land.lhs.true.703:                                ; preds = %if.else.694
  %398 = load i8*, i8** %buff.addr, align 8
  %arrayidx704 = getelementptr inbounds i8, i8* %398, i64 5
  %399 = load i8, i8* %arrayidx704, align 1
  %conv705 = sext i8 %399 to i32
  %cmp706 = icmp eq i32 %conv705, -83
  br i1 %cmp706, label %land.lhs.true.708, label %if.end.719

land.lhs.true.708:                                ; preds = %land.lhs.true.703
  %400 = load i8*, i8** %buff.addr, align 8
  %arrayidx709 = getelementptr inbounds i8, i8* %400, i64 6
  %401 = load i8, i8* %arrayidx709, align 1
  %conv710 = sext i8 %401 to i32
  %cmp711 = icmp eq i32 %conv710, -117
  br i1 %cmp711, label %land.lhs.true.713, label %if.end.719

land.lhs.true.713:                                ; preds = %land.lhs.true.708
  %402 = load i8*, i8** %buff.addr, align 8
  %arrayidx714 = getelementptr inbounds i8, i8* %402, i64 7
  %403 = load i8, i8* %arrayidx714, align 1
  %conv715 = sext i8 %403 to i32
  %cmp716 = icmp eq i32 %conv715, -8
  br i1 %cmp716, label %if.then.718, label %if.end.719

if.then.718:                                      ; preds = %land.lhs.true.713
  store i32 1, i32* %upack_version, align 4
  br label %if.end.719

if.end.719:                                       ; preds = %if.then.718, %land.lhs.true.713, %land.lhs.true.708, %land.lhs.true.703, %if.else.694
  %404 = load i32, i32* %upack_version, align 4
  %cmp720 = icmp eq i32 %404, 1
  br i1 %cmp720, label %if.then.722, label %if.else.724

if.then.722:                                      ; preds = %if.end.719
  store i32 420, i32* %ep_jmp_offs, align 4
  store i32 27, i32* %rep_stosd_count_offs, align 4
  store i32 65, i32* %context_bits_offs, align 4
  %405 = load i8*, i8** %loc_esi, align 8
  %add.ptr723 = getelementptr inbounds i8, i8* %405, i64 388
  store i8* %add.ptr723, i8** %alvalue, align 8
  br label %if.end.726

if.else.724:                                      ; preds = %if.end.719
  store i32 535, i32* %ep_jmp_offs, align 4
  store i32 58, i32* %rep_stosd_count_offs, align 4
  store i32 95, i32* %context_bits_offs, align 4
  %406 = load i8*, i8** %loc_esi, align 8
  %add.ptr725 = getelementptr inbounds i8, i8* %406, i64 449
  store i8* %add.ptr725, i8** %alvalue, align 8
  br label %if.end.726

if.end.726:                                       ; preds = %if.else.724, %if.then.722
  %407 = load i32, i32* %dsize.addr, align 4
  %cmp727 = icmp ugt i32 %407, 0
  br i1 %cmp727, label %land.lhs.true.729, label %if.then.754

land.lhs.true.729:                                ; preds = %if.end.726
  %408 = load i32, i32* %ep_jmp_offs, align 4
  %add730 = add nsw i32 %408, 4
  %cmp731 = icmp sgt i32 %add730, 0
  br i1 %cmp731, label %land.lhs.true.733, label %if.then.754

land.lhs.true.733:                                ; preds = %land.lhs.true.729
  %409 = load i32, i32* %ep_jmp_offs, align 4
  %add734 = add nsw i32 %409, 4
  %410 = load i32, i32* %dsize.addr, align 4
  %cmp735 = icmp ule i32 %add734, %410
  br i1 %cmp735, label %land.lhs.true.737, label %if.then.754

land.lhs.true.737:                                ; preds = %land.lhs.true.733
  %411 = load i8*, i8** %loc_esi, align 8
  %412 = load i8*, i8** %dest.addr, align 8
  %cmp738 = icmp uge i8* %411, %412
  br i1 %cmp738, label %land.lhs.true.740, label %if.then.754

land.lhs.true.740:                                ; preds = %land.lhs.true.737
  %413 = load i8*, i8** %loc_esi, align 8
  %414 = load i32, i32* %ep_jmp_offs, align 4
  %idx.ext741 = sext i32 %414 to i64
  %add.ptr742 = getelementptr inbounds i8, i8* %413, i64 %idx.ext741
  %add.ptr743 = getelementptr inbounds i8, i8* %add.ptr742, i64 4
  %415 = load i8*, i8** %dest.addr, align 8
  %416 = load i32, i32* %dsize.addr, align 4
  %idx.ext744 = zext i32 %416 to i64
  %add.ptr745 = getelementptr inbounds i8, i8* %415, i64 %idx.ext744
  %cmp746 = icmp ule i8* %add.ptr743, %add.ptr745
  br i1 %cmp746, label %land.lhs.true.748, label %if.then.754

land.lhs.true.748:                                ; preds = %land.lhs.true.740
  %417 = load i8*, i8** %loc_esi, align 8
  %418 = load i32, i32* %ep_jmp_offs, align 4
  %idx.ext749 = sext i32 %418 to i64
  %add.ptr750 = getelementptr inbounds i8, i8* %417, i64 %idx.ext749
  %add.ptr751 = getelementptr inbounds i8, i8* %add.ptr750, i64 4
  %419 = load i8*, i8** %dest.addr, align 8
  %cmp752 = icmp ugt i8* %add.ptr751, %419
  br i1 %cmp752, label %if.end.755, label %if.then.754

if.then.754:                                      ; preds = %land.lhs.true.748, %land.lhs.true.740, %land.lhs.true.737, %land.lhs.true.733, %land.lhs.true.729, %if.end.726
  store i32 -1, i32* %retval
  br label %return

if.end.755:                                       ; preds = %land.lhs.true.748
  %420 = load i8*, i8** %loc_esi, align 8
  %421 = load i32, i32* %ep_jmp_offs, align 4
  %idx.ext756 = sext i32 %421 to i64
  %add.ptr757 = getelementptr inbounds i8, i8* %420, i64 %idx.ext756
  %422 = bitcast i8* %add.ptr757 to i32*
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* %save1, align 4
  %424 = load i8*, i8** %loc_esi, align 8
  %425 = load i8*, i8** %dest.addr, align 8
  %sub.ptr.lhs.cast758 = ptrtoint i8* %424 to i64
  %sub.ptr.rhs.cast759 = ptrtoint i8* %425 to i64
  %sub.ptr.sub760 = sub i64 %sub.ptr.lhs.cast758, %sub.ptr.rhs.cast759
  %426 = load i32, i32* %ep_jmp_offs, align 4
  %conv761 = sext i32 %426 to i64
  %add762 = add nsw i64 %sub.ptr.sub760, %conv761
  %add763 = add nsw i64 %add762, 4
  %conv764 = trunc i64 %add763 to i32
  store i32 %conv764, i32* %original_ep, align 4
  %427 = load i32, i32* %save1, align 4
  %428 = load i32, i32* %original_ep, align 4
  %add765 = add i32 %428, %427
  store i32 %add765, i32* %original_ep, align 4
  %429 = load i32, i32* %ep.addr, align 4
  %430 = load i32, i32* %original_ep, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i32 %429, i32 %430)
  %431 = load i8*, i8** %loc_esi, align 8
  %432 = load i32, i32* %rep_stosd_count_offs, align 4
  %idx.ext766 = sext i32 %432 to i64
  %add.ptr767 = getelementptr inbounds i8, i8* %431, i64 %idx.ext766
  %433 = load i8, i8* %add.ptr767, align 1
  %conv768 = sext i8 %433 to i32
  %and769 = and i32 %conv768, 255
  store i32 %and769, i32* %count, align 4
  %434 = load i8*, i8** %loc_esi, align 8
  %435 = load i32, i32* %context_bits_offs, align 4
  %idx.ext770 = sext i32 %435 to i64
  %add.ptr771 = getelementptr inbounds i8, i8* %434, i64 %idx.ext770
  %436 = load i8, i8* %add.ptr771, align 1
  %conv772 = sext i8 %436 to i32
  %and773 = and i32 %conv772, 255
  store i32 %and773, i32* %shlsize, align 4
  %437 = load i32, i32* %shlsize, align 4
  %sub774 = sub i32 8, %437
  store i32 %sub774, i32* %shlsize, align 4
  %438 = load i32, i32* %shlsize, align 4
  %cmp775 = icmp ult i32 %438, 2
  br i1 %cmp775, label %if.then.780, label %lor.lhs.false.777

lor.lhs.false.777:                                ; preds = %if.end.755
  %439 = load i32, i32* %shlsize, align 4
  %cmp778 = icmp ugt i32 %439, 8
  br i1 %cmp778, label %if.then.780, label %if.end.781

if.then.780:                                      ; preds = %lor.lhs.false.777, %if.end.755
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.781:                                       ; preds = %lor.lhs.false.777
  %440 = load i32, i32* %count, align 4
  %mul782 = mul i32 %440, 256
  store i32 %mul782, i32* %count, align 4
  %441 = load i32, i32* %shlsize, align 4
  %442 = load i32, i32* %count, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0), i32 %441, i32 %442)
  %443 = load i32, i32* %upack_version, align 4
  %cmp783 = icmp eq i32 %443, 0
  br i1 %cmp783, label %if.then.785, label %if.else.1085

if.then.785:                                      ; preds = %if.end.781
  %444 = load i8*, i8** %loc_esi, align 8
  %add.ptr786 = getelementptr inbounds i8, i8* %444, i64 4
  store i8* %add.ptr786, i8** %loc_esi, align 8
  %445 = load i8*, i8** %loc_esi, align 8
  %add.ptr787 = getelementptr inbounds i8, i8* %445, i64 2
  %446 = bitcast i8* %add.ptr787 to i32*
  %447 = load i32, i32* %446, align 4
  store i32 %447, i32* %loc_ecx, align 4
  %448 = load i8*, i8** %loc_esi, align 8
  %add.ptr788 = getelementptr inbounds i8, i8* %448, i64 2
  %449 = bitcast i8* %add.ptr788 to i32*
  store i32 0, i32* %449, align 4
  %450 = load i32, i32* %loc_ecx, align 4
  %tobool789 = icmp ne i32 %450, 0
  br i1 %tobool789, label %if.end.791, label %if.then.790

if.then.790:                                      ; preds = %if.then.785
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.791:                                       ; preds = %if.then.785
  %451 = load i32, i32* %loc_ecx, align 4
  %sub792 = sub i32 %451, 2
  %452 = load i8*, i8** %loc_esi, align 8
  %idx.ext793 = zext i32 %sub792 to i64
  %idx.neg794 = sub i64 0, %idx.ext793
  %add.ptr795 = getelementptr inbounds i8, i8* %452, i64 %idx.neg794
  store i8* %add.ptr795, i8** %loc_esi, align 8
  %453 = load i32, i32* %dsize.addr, align 4
  %cmp796 = icmp ugt i32 %453, 0
  br i1 %cmp796, label %land.lhs.true.798, label %if.then.814

land.lhs.true.798:                                ; preds = %if.end.791
  %454 = load i32, i32* %dsize.addr, align 4
  %cmp799 = icmp ule i32 12, %454
  br i1 %cmp799, label %land.lhs.true.801, label %if.then.814

land.lhs.true.801:                                ; preds = %land.lhs.true.798
  %455 = load i8*, i8** %loc_esi, align 8
  %456 = load i8*, i8** %dest.addr, align 8
  %cmp802 = icmp uge i8* %455, %456
  br i1 %cmp802, label %land.lhs.true.804, label %if.then.814

land.lhs.true.804:                                ; preds = %land.lhs.true.801
  %457 = load i8*, i8** %loc_esi, align 8
  %add.ptr805 = getelementptr inbounds i8, i8* %457, i64 12
  %458 = load i8*, i8** %dest.addr, align 8
  %459 = load i32, i32* %dsize.addr, align 4
  %idx.ext806 = zext i32 %459 to i64
  %add.ptr807 = getelementptr inbounds i8, i8* %458, i64 %idx.ext806
  %cmp808 = icmp ule i8* %add.ptr805, %add.ptr807
  br i1 %cmp808, label %land.lhs.true.810, label %if.then.814

land.lhs.true.810:                                ; preds = %land.lhs.true.804
  %460 = load i8*, i8** %loc_esi, align 8
  %add.ptr811 = getelementptr inbounds i8, i8* %460, i64 12
  %461 = load i8*, i8** %dest.addr, align 8
  %cmp812 = icmp ugt i8* %add.ptr811, %461
  br i1 %cmp812, label %if.end.815, label %if.then.814

if.then.814:                                      ; preds = %land.lhs.true.810, %land.lhs.true.804, %land.lhs.true.801, %land.lhs.true.798, %if.end.791
  store i32 -1, i32* %retval
  br label %return

if.end.815:                                       ; preds = %land.lhs.true.810
  %462 = load i8*, i8** %loc_esi, align 8
  %463 = load i8*, i8** %dest.addr, align 8
  %464 = load i8*, i8** %loc_esi, align 8
  %465 = bitcast i8* %464 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %base.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0), i8* %462, i8* %463, i32 %466, i32 %467)
  %468 = load i8*, i8** %loc_esi, align 8
  %469 = load i8*, i8** %dest.addr, align 8
  %470 = load i8*, i8** %loc_esi, align 8
  %471 = bitcast i8* %470 to i32*
  %472 = load i32, i32* %471, align 4
  %idx.ext816 = sext i32 %472 to i64
  %add.ptr817 = getelementptr inbounds i8, i8* %469, i64 %idx.ext816
  %473 = load i32, i32* %base.addr, align 4
  %idx.ext818 = zext i32 %473 to i64
  %idx.neg819 = sub i64 0, %idx.ext818
  %add.ptr820 = getelementptr inbounds i8, i8* %add.ptr817, i64 %idx.neg819
  %sub.ptr.lhs.cast821 = ptrtoint i8* %468 to i64
  %sub.ptr.rhs.cast822 = ptrtoint i8* %add.ptr820 to i64
  %sub.ptr.sub823 = sub i64 %sub.ptr.lhs.cast821, %sub.ptr.rhs.cast822
  %conv824 = trunc i64 %sub.ptr.sub823 to i32
  store i32 %conv824, i32* %loc_ebx_u, align 4
  %474 = load i32, i32* %loc_ebx_u, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 %474)
  %475 = load i8*, i8** %loc_esi, align 8
  %add.ptr825 = getelementptr inbounds i8, i8* %475, i64 4
  store i8* %add.ptr825, i8** %loc_esi, align 8
  %476 = load i8*, i8** %dest.addr, align 8
  %477 = load i8*, i8** %loc_esi, align 8
  %478 = bitcast i8* %477 to i32*
  %479 = load i32, i32* %478, align 4
  %idx.ext826 = sext i32 %479 to i64
  %add.ptr827 = getelementptr inbounds i8, i8* %476, i64 %idx.ext826
  %480 = load i32, i32* %base.addr, align 4
  %idx.ext828 = zext i32 %480 to i64
  %idx.neg829 = sub i64 0, %idx.ext828
  %add.ptr830 = getelementptr inbounds i8, i8* %add.ptr827, i64 %idx.neg829
  store i8* %add.ptr830, i8** %loc_edi, align 8
  store i8* %add.ptr830, i8** %save2, align 8
  %481 = load i8*, i8** %loc_esi, align 8
  %482 = bitcast i8* %481 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = load i8*, i8** %loc_esi, align 8
  %485 = bitcast i8* %484 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = load i32, i32* %base.addr, align 4
  %sub831 = sub i32 %486, %487
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i32 %483, i32 %sub831)
  %488 = load i8*, i8** %loc_esi, align 8
  %add.ptr832 = getelementptr inbounds i8, i8* %488, i64 4
  store i8* %add.ptr832, i8** %loc_esi, align 8
  %489 = load i8*, i8** %loc_esi, align 8
  %490 = bitcast i8* %489 to i32*
  %491 = load i32, i32* %490, align 4
  store i32 %491, i32* %j, align 4
  %492 = load i32, i32* %j, align 4
  %cmp833 = icmp slt i32 %492, 0
  br i1 %cmp833, label %if.then.835, label %if.end.836

if.then.835:                                      ; preds = %if.end.815
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.836:                                       ; preds = %if.end.815
  %493 = load i8*, i8** %loc_esi, align 8
  %add.ptr837 = getelementptr inbounds i8, i8* %493, i64 4
  store i8* %add.ptr837, i8** %loc_esi, align 8
  %494 = load i32, i32* %j, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0), i32 %494)
  %495 = load i32, i32* %dsize.addr, align 4
  %cmp838 = icmp ugt i32 %495, 0
  br i1 %cmp838, label %land.lhs.true.840, label %if.then.897

land.lhs.true.840:                                ; preds = %if.end.836
  %496 = load i32, i32* %j, align 4
  %mul841 = mul nsw i32 %496, 4
  %cmp842 = icmp sgt i32 %mul841, 0
  br i1 %cmp842, label %land.lhs.true.844, label %if.then.897

land.lhs.true.844:                                ; preds = %land.lhs.true.840
  %497 = load i32, i32* %j, align 4
  %mul845 = mul nsw i32 %497, 4
  %498 = load i32, i32* %dsize.addr, align 4
  %cmp846 = icmp ule i32 %mul845, %498
  br i1 %cmp846, label %land.lhs.true.848, label %if.then.897

land.lhs.true.848:                                ; preds = %land.lhs.true.844
  %499 = load i8*, i8** %loc_esi, align 8
  %500 = load i8*, i8** %dest.addr, align 8
  %cmp849 = icmp uge i8* %499, %500
  br i1 %cmp849, label %land.lhs.true.851, label %if.then.897

land.lhs.true.851:                                ; preds = %land.lhs.true.848
  %501 = load i8*, i8** %loc_esi, align 8
  %502 = load i32, i32* %j, align 4
  %mul852 = mul nsw i32 %502, 4
  %idx.ext853 = sext i32 %mul852 to i64
  %add.ptr854 = getelementptr inbounds i8, i8* %501, i64 %idx.ext853
  %503 = load i8*, i8** %dest.addr, align 8
  %504 = load i32, i32* %dsize.addr, align 4
  %idx.ext855 = zext i32 %504 to i64
  %add.ptr856 = getelementptr inbounds i8, i8* %503, i64 %idx.ext855
  %cmp857 = icmp ule i8* %add.ptr854, %add.ptr856
  br i1 %cmp857, label %land.lhs.true.859, label %if.then.897

land.lhs.true.859:                                ; preds = %land.lhs.true.851
  %505 = load i8*, i8** %loc_esi, align 8
  %506 = load i32, i32* %j, align 4
  %mul860 = mul nsw i32 %506, 4
  %idx.ext861 = sext i32 %mul860 to i64
  %add.ptr862 = getelementptr inbounds i8, i8* %505, i64 %idx.ext861
  %507 = load i8*, i8** %dest.addr, align 8
  %cmp863 = icmp ugt i8* %add.ptr862, %507
  br i1 %cmp863, label %lor.lhs.false.865, label %if.then.897

lor.lhs.false.865:                                ; preds = %land.lhs.true.859
  %508 = load i32, i32* %dsize.addr, align 4
  %cmp866 = icmp ugt i32 %508, 0
  br i1 %cmp866, label %land.lhs.true.868, label %if.then.897

land.lhs.true.868:                                ; preds = %lor.lhs.false.865
  %509 = load i32, i32* %j, align 4
  %510 = load i32, i32* %count, align 4
  %add869 = add i32 %509, %510
  %mul870 = mul i32 %add869, 4
  %cmp871 = icmp ugt i32 %mul870, 0
  br i1 %cmp871, label %land.lhs.true.873, label %if.then.897

land.lhs.true.873:                                ; preds = %land.lhs.true.868
  %511 = load i32, i32* %j, align 4
  %512 = load i32, i32* %count, align 4
  %add874 = add i32 %511, %512
  %mul875 = mul i32 %add874, 4
  %513 = load i32, i32* %dsize.addr, align 4
  %cmp876 = icmp ule i32 %mul875, %513
  br i1 %cmp876, label %land.lhs.true.878, label %if.then.897

land.lhs.true.878:                                ; preds = %land.lhs.true.873
  %514 = load i8*, i8** %loc_edi, align 8
  %515 = load i8*, i8** %dest.addr, align 8
  %cmp879 = icmp uge i8* %514, %515
  br i1 %cmp879, label %land.lhs.true.881, label %if.then.897

land.lhs.true.881:                                ; preds = %land.lhs.true.878
  %516 = load i8*, i8** %loc_edi, align 8
  %517 = load i32, i32* %j, align 4
  %518 = load i32, i32* %count, align 4
  %add882 = add i32 %517, %518
  %mul883 = mul i32 %add882, 4
  %idx.ext884 = zext i32 %mul883 to i64
  %add.ptr885 = getelementptr inbounds i8, i8* %516, i64 %idx.ext884
  %519 = load i8*, i8** %dest.addr, align 8
  %520 = load i32, i32* %dsize.addr, align 4
  %idx.ext886 = zext i32 %520 to i64
  %add.ptr887 = getelementptr inbounds i8, i8* %519, i64 %idx.ext886
  %cmp888 = icmp ule i8* %add.ptr885, %add.ptr887
  br i1 %cmp888, label %land.lhs.true.890, label %if.then.897

land.lhs.true.890:                                ; preds = %land.lhs.true.881
  %521 = load i8*, i8** %loc_edi, align 8
  %522 = load i32, i32* %j, align 4
  %523 = load i32, i32* %count, align 4
  %add891 = add i32 %522, %523
  %mul892 = mul i32 %add891, 4
  %idx.ext893 = zext i32 %mul892 to i64
  %add.ptr894 = getelementptr inbounds i8, i8* %521, i64 %idx.ext893
  %524 = load i8*, i8** %dest.addr, align 8
  %cmp895 = icmp ugt i8* %add.ptr894, %524
  br i1 %cmp895, label %if.end.898, label %if.then.897

if.then.897:                                      ; preds = %land.lhs.true.890, %land.lhs.true.881, %land.lhs.true.878, %land.lhs.true.873, %land.lhs.true.868, %lor.lhs.false.865, %land.lhs.true.859, %land.lhs.true.851, %land.lhs.true.848, %land.lhs.true.844, %land.lhs.true.840, %if.end.836
  store i32 -1, i32* %retval
  br label %return

if.end.898:                                       ; preds = %land.lhs.true.890
  br label %for.cond.899

for.cond.899:                                     ; preds = %for.inc.902, %if.end.898
  %525 = load i32, i32* %j, align 4
  %dec = add nsw i32 %525, -1
  store i32 %dec, i32* %j, align 4
  %tobool900 = icmp ne i32 %525, 0
  br i1 %tobool900, label %for.body.901, label %for.end.905

for.body.901:                                     ; preds = %for.cond.899
  %526 = load i8*, i8** %loc_esi, align 8
  %527 = bitcast i8* %526 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = load i8*, i8** %loc_edi, align 8
  %530 = bitcast i8* %529 to i32*
  store i32 %528, i32* %530, align 4
  br label %for.inc.902

for.inc.902:                                      ; preds = %for.body.901
  %531 = load i8*, i8** %loc_edi, align 8
  %add.ptr903 = getelementptr inbounds i8, i8* %531, i64 4
  store i8* %add.ptr903, i8** %loc_edi, align 8
  %532 = load i8*, i8** %loc_esi, align 8
  %add.ptr904 = getelementptr inbounds i8, i8* %532, i64 4
  store i8* %add.ptr904, i8** %loc_esi, align 8
  br label %for.cond.899

for.end.905:                                      ; preds = %for.cond.899
  %533 = load i32, i32* %dsize.addr, align 4
  %cmp906 = icmp ugt i32 %533, 0
  br i1 %cmp906, label %land.lhs.true.908, label %if.then.924

land.lhs.true.908:                                ; preds = %for.end.905
  %534 = load i32, i32* %dsize.addr, align 4
  %cmp909 = icmp ule i32 8, %534
  br i1 %cmp909, label %land.lhs.true.911, label %if.then.924

land.lhs.true.911:                                ; preds = %land.lhs.true.908
  %535 = load i8*, i8** %save2, align 8
  %536 = load i8*, i8** %dest.addr, align 8
  %cmp912 = icmp uge i8* %535, %536
  br i1 %cmp912, label %land.lhs.true.914, label %if.then.924

land.lhs.true.914:                                ; preds = %land.lhs.true.911
  %537 = load i8*, i8** %save2, align 8
  %add.ptr915 = getelementptr inbounds i8, i8* %537, i64 8
  %538 = load i8*, i8** %dest.addr, align 8
  %539 = load i32, i32* %dsize.addr, align 4
  %idx.ext916 = zext i32 %539 to i64
  %add.ptr917 = getelementptr inbounds i8, i8* %538, i64 %idx.ext916
  %cmp918 = icmp ule i8* %add.ptr915, %add.ptr917
  br i1 %cmp918, label %land.lhs.true.920, label %if.then.924

land.lhs.true.920:                                ; preds = %land.lhs.true.914
  %540 = load i8*, i8** %save2, align 8
  %add.ptr921 = getelementptr inbounds i8, i8* %540, i64 8
  %541 = load i8*, i8** %dest.addr, align 8
  %cmp922 = icmp ugt i8* %add.ptr921, %541
  br i1 %cmp922, label %if.end.925, label %if.then.924

if.then.924:                                      ; preds = %land.lhs.true.920, %land.lhs.true.914, %land.lhs.true.911, %land.lhs.true.908, %for.end.905
  store i32 -1, i32* %retval
  br label %return

if.end.925:                                       ; preds = %land.lhs.true.920
  %542 = load i8*, i8** %save2, align 8
  %543 = bitcast i8* %542 to i32*
  %544 = load i32, i32* %543, align 4
  store i32 %544, i32* %loc_ecx, align 4
  %545 = load i8*, i8** %save2, align 8
  %add.ptr926 = getelementptr inbounds i8, i8* %545, i64 4
  store i8* %add.ptr926, i8** %save2, align 8
  %546 = load i8*, i8** %save2, align 8
  store i8* %546, i8** %loc_esi, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.925
  %547 = load i32, i32* %loc_ebx_u, align 4
  %548 = load i8*, i8** %loc_esi, align 8
  %idx.ext927 = zext i32 %547 to i64
  %add.ptr928 = getelementptr inbounds i8, i8* %548, i64 %idx.ext927
  store i8* %add.ptr928, i8** %loc_esi, align 8
  %549 = load i8*, i8** %loc_esi, align 8
  %add.ptr929 = getelementptr inbounds i8, i8* %549, i64 4
  store i8* %add.ptr929, i8** %loc_esi, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %550 = load i32, i32* %loc_ecx, align 4
  %dec930 = add i32 %550, -1
  store i32 %dec930, i32* %loc_ecx, align 4
  %tobool931 = icmp ne i32 %dec930, 0
  br i1 %tobool931, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %551 = load i32, i32* %dsize.addr, align 4
  %cmp932 = icmp ugt i32 %551, 0
  br i1 %cmp932, label %land.lhs.true.934, label %if.then.950

land.lhs.true.934:                                ; preds = %do.end
  %552 = load i32, i32* %dsize.addr, align 4
  %cmp935 = icmp ule i32 4, %552
  br i1 %cmp935, label %land.lhs.true.937, label %if.then.950

land.lhs.true.937:                                ; preds = %land.lhs.true.934
  %553 = load i8*, i8** %loc_esi, align 8
  %554 = load i8*, i8** %dest.addr, align 8
  %cmp938 = icmp uge i8* %553, %554
  br i1 %cmp938, label %land.lhs.true.940, label %if.then.950

land.lhs.true.940:                                ; preds = %land.lhs.true.937
  %555 = load i8*, i8** %loc_esi, align 8
  %add.ptr941 = getelementptr inbounds i8, i8* %555, i64 4
  %556 = load i8*, i8** %dest.addr, align 8
  %557 = load i32, i32* %dsize.addr, align 4
  %idx.ext942 = zext i32 %557 to i64
  %add.ptr943 = getelementptr inbounds i8, i8* %556, i64 %idx.ext942
  %cmp944 = icmp ule i8* %add.ptr941, %add.ptr943
  br i1 %cmp944, label %land.lhs.true.946, label %if.then.950

land.lhs.true.946:                                ; preds = %land.lhs.true.940
  %558 = load i8*, i8** %loc_esi, align 8
  %add.ptr947 = getelementptr inbounds i8, i8* %558, i64 4
  %559 = load i8*, i8** %dest.addr, align 8
  %cmp948 = icmp ugt i8* %add.ptr947, %559
  br i1 %cmp948, label %if.end.951, label %if.then.950

if.then.950:                                      ; preds = %land.lhs.true.946, %land.lhs.true.940, %land.lhs.true.937, %land.lhs.true.934, %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.951:                                       ; preds = %land.lhs.true.946
  %560 = load i8*, i8** %loc_esi, align 8
  %561 = bitcast i8* %560 to i32*
  %562 = load i32, i32* %561, align 4
  store i32 %562, i32* %save1, align 4
  %563 = load i8*, i8** %loc_esi, align 8
  %add.ptr952 = getelementptr inbounds i8, i8* %563, i64 4
  store i8* %add.ptr952, i8** %loc_esi, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.953

for.cond.953:                                     ; preds = %for.inc.957, %if.end.951
  %564 = load i32, i32* %j, align 4
  %565 = load i32, i32* %count, align 4
  %cmp954 = icmp ult i32 %564, %565
  br i1 %cmp954, label %for.body.956, label %for.end.960

for.body.956:                                     ; preds = %for.cond.953
  %566 = load i32, i32* %save1, align 4
  %567 = load i8*, i8** %loc_edi, align 8
  %568 = bitcast i8* %567 to i32*
  store i32 %566, i32* %568, align 4
  br label %for.inc.957

for.inc.957:                                      ; preds = %for.body.956
  %569 = load i32, i32* %j, align 4
  %inc958 = add nsw i32 %569, 1
  store i32 %inc958, i32* %j, align 4
  %570 = load i8*, i8** %loc_edi, align 8
  %add.ptr959 = getelementptr inbounds i8, i8* %570, i64 4
  store i8* %add.ptr959, i8** %loc_edi, align 8
  br label %for.cond.953

for.end.960:                                      ; preds = %for.cond.953
  %571 = load i32, i32* %dsize.addr, align 4
  %cmp961 = icmp ugt i32 %571, 0
  br i1 %cmp961, label %land.lhs.true.963, label %if.then.982

land.lhs.true.963:                                ; preds = %for.end.960
  %572 = load i32, i32* %dsize.addr, align 4
  %cmp964 = icmp ule i32 4, %572
  br i1 %cmp964, label %land.lhs.true.966, label %if.then.982

land.lhs.true.966:                                ; preds = %land.lhs.true.963
  %573 = load i8*, i8** %loc_esi, align 8
  %add.ptr967 = getelementptr inbounds i8, i8* %573, i64 16
  %574 = load i8*, i8** %dest.addr, align 8
  %cmp968 = icmp uge i8* %add.ptr967, %574
  br i1 %cmp968, label %land.lhs.true.970, label %if.then.982

land.lhs.true.970:                                ; preds = %land.lhs.true.966
  %575 = load i8*, i8** %loc_esi, align 8
  %add.ptr971 = getelementptr inbounds i8, i8* %575, i64 16
  %add.ptr972 = getelementptr inbounds i8, i8* %add.ptr971, i64 4
  %576 = load i8*, i8** %dest.addr, align 8
  %577 = load i32, i32* %dsize.addr, align 4
  %idx.ext973 = zext i32 %577 to i64
  %add.ptr974 = getelementptr inbounds i8, i8* %576, i64 %idx.ext973
  %cmp975 = icmp ule i8* %add.ptr972, %add.ptr974
  br i1 %cmp975, label %land.lhs.true.977, label %if.then.982

land.lhs.true.977:                                ; preds = %land.lhs.true.970
  %578 = load i8*, i8** %loc_esi, align 8
  %add.ptr978 = getelementptr inbounds i8, i8* %578, i64 16
  %add.ptr979 = getelementptr inbounds i8, i8* %add.ptr978, i64 4
  %579 = load i8*, i8** %dest.addr, align 8
  %cmp980 = icmp ugt i8* %add.ptr979, %579
  br i1 %cmp980, label %if.end.983, label %if.then.982

if.then.982:                                      ; preds = %land.lhs.true.977, %land.lhs.true.970, %land.lhs.true.966, %land.lhs.true.963, %for.end.960
  store i32 -1, i32* %retval
  br label %return

if.end.983:                                       ; preds = %land.lhs.true.977
  %580 = load i8*, i8** %loc_esi, align 8
  %add.ptr984 = getelementptr inbounds i8, i8* %580, i64 16
  %581 = bitcast i8* %add.ptr984 to i32*
  %582 = load i32, i32* %581, align 4
  %583 = load i32, i32* %loc_ebx_u, align 4
  %add985 = add i32 %582, %583
  %584 = load i8*, i8** %loc_esi, align 8
  %add.ptr986 = getelementptr inbounds i8, i8* %584, i64 16
  %585 = bitcast i8* %add.ptr986 to i32*
  store i32 %add985, i32* %585, align 4
  %586 = load i8*, i8** %loc_esi, align 8
  %add.ptr987 = getelementptr inbounds i8, i8* %586, i64 20
  store i8* %add.ptr987, i8** %loc_ebx, align 8
  %587 = load i8*, i8** %save2, align 8
  store i8* %587, i8** %loc_esi, align 8
  %588 = load i8*, i8** %dest.addr, align 8
  %589 = load i8*, i8** %loc_esi, align 8
  %590 = bitcast i8* %589 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = load i32, i32* %base.addr, align 4
  %sub988 = sub i32 %591, %592
  %idx.ext989 = zext i32 %sub988 to i64
  %add.ptr990 = getelementptr inbounds i8, i8* %588, i64 %idx.ext989
  store i8* %add.ptr990, i8** %loc_edi, align 8
  store i8* %add.ptr990, i8** %save_edi, align 8
  %593 = load i8*, i8** %loc_esi, align 8
  %add.ptr991 = getelementptr inbounds i8, i8* %593, i64 4
  store i8* %add.ptr991, i8** %loc_esi, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  %594 = load i32, i32* %dsize.addr, align 4
  %cmp992 = icmp ugt i32 %594, 0
  br i1 %cmp992, label %land.lhs.true.994, label %if.then.1057

land.lhs.true.994:                                ; preds = %if.end.983
  %595 = load i32, i32* %dsize.addr, align 4
  %cmp995 = icmp ule i32 28, %595
  br i1 %cmp995, label %land.lhs.true.997, label %if.then.1057

land.lhs.true.997:                                ; preds = %land.lhs.true.994
  %596 = load i8*, i8** %loc_ebx, align 8
  %add.ptr998 = getelementptr inbounds i8, i8* %596, i64 -4
  %597 = load i8*, i8** %dest.addr, align 8
  %cmp999 = icmp uge i8* %add.ptr998, %597
  br i1 %cmp999, label %land.lhs.true.1001, label %if.then.1057

land.lhs.true.1001:                               ; preds = %land.lhs.true.997
  %598 = load i8*, i8** %loc_ebx, align 8
  %add.ptr1002 = getelementptr inbounds i8, i8* %598, i64 -4
  %add.ptr1003 = getelementptr inbounds i8, i8* %add.ptr1002, i64 28
  %599 = load i8*, i8** %dest.addr, align 8
  %600 = load i32, i32* %dsize.addr, align 4
  %idx.ext1004 = zext i32 %600 to i64
  %add.ptr1005 = getelementptr inbounds i8, i8* %599, i64 %idx.ext1004
  %cmp1006 = icmp ule i8* %add.ptr1003, %add.ptr1005
  br i1 %cmp1006, label %land.lhs.true.1008, label %if.then.1057

land.lhs.true.1008:                               ; preds = %land.lhs.true.1001
  %601 = load i8*, i8** %loc_ebx, align 8
  %add.ptr1009 = getelementptr inbounds i8, i8* %601, i64 -4
  %add.ptr1010 = getelementptr inbounds i8, i8* %add.ptr1009, i64 28
  %602 = load i8*, i8** %dest.addr, align 8
  %cmp1011 = icmp ugt i8* %add.ptr1010, %602
  br i1 %cmp1011, label %lor.lhs.false.1013, label %if.then.1057

lor.lhs.false.1013:                               ; preds = %land.lhs.true.1008
  %603 = load i32, i32* %dsize.addr, align 4
  %cmp1014 = icmp ugt i32 %603, 0
  br i1 %cmp1014, label %land.lhs.true.1016, label %if.then.1057

land.lhs.true.1016:                               ; preds = %lor.lhs.false.1013
  %604 = load i32, i32* %dsize.addr, align 4
  %cmp1017 = icmp ule i32 4, %604
  br i1 %cmp1017, label %land.lhs.true.1019, label %if.then.1057

land.lhs.true.1019:                               ; preds = %land.lhs.true.1016
  %605 = load i8*, i8** %loc_esi, align 8
  %add.ptr1020 = getelementptr inbounds i8, i8* %605, i64 36
  %606 = load i8*, i8** %dest.addr, align 8
  %cmp1021 = icmp uge i8* %add.ptr1020, %606
  br i1 %cmp1021, label %land.lhs.true.1023, label %if.then.1057

land.lhs.true.1023:                               ; preds = %land.lhs.true.1019
  %607 = load i8*, i8** %loc_esi, align 8
  %add.ptr1024 = getelementptr inbounds i8, i8* %607, i64 36
  %add.ptr1025 = getelementptr inbounds i8, i8* %add.ptr1024, i64 4
  %608 = load i8*, i8** %dest.addr, align 8
  %609 = load i32, i32* %dsize.addr, align 4
  %idx.ext1026 = zext i32 %609 to i64
  %add.ptr1027 = getelementptr inbounds i8, i8* %608, i64 %idx.ext1026
  %cmp1028 = icmp ule i8* %add.ptr1025, %add.ptr1027
  br i1 %cmp1028, label %land.lhs.true.1030, label %if.then.1057

land.lhs.true.1030:                               ; preds = %land.lhs.true.1023
  %610 = load i8*, i8** %loc_esi, align 8
  %add.ptr1031 = getelementptr inbounds i8, i8* %610, i64 36
  %add.ptr1032 = getelementptr inbounds i8, i8* %add.ptr1031, i64 4
  %611 = load i8*, i8** %dest.addr, align 8
  %cmp1033 = icmp ugt i8* %add.ptr1032, %611
  br i1 %cmp1033, label %lor.lhs.false.1035, label %if.then.1057

lor.lhs.false.1035:                               ; preds = %land.lhs.true.1030
  %612 = load i32, i32* %dsize.addr, align 4
  %cmp1036 = icmp ugt i32 %612, 0
  br i1 %cmp1036, label %land.lhs.true.1038, label %if.then.1057

land.lhs.true.1038:                               ; preds = %lor.lhs.false.1035
  %613 = load i32, i32* %dsize.addr, align 4
  %cmp1039 = icmp ule i32 4, %613
  br i1 %cmp1039, label %land.lhs.true.1041, label %if.then.1057

land.lhs.true.1041:                               ; preds = %land.lhs.true.1038
  %614 = load i8*, i8** %loc_esi, align 8
  %add.ptr1042 = getelementptr inbounds i8, i8* %614, i64 64
  %615 = load i8*, i8** %dest.addr, align 8
  %cmp1043 = icmp uge i8* %add.ptr1042, %615
  br i1 %cmp1043, label %land.lhs.true.1045, label %if.then.1057

land.lhs.true.1045:                               ; preds = %land.lhs.true.1041
  %616 = load i8*, i8** %loc_esi, align 8
  %add.ptr1046 = getelementptr inbounds i8, i8* %616, i64 64
  %add.ptr1047 = getelementptr inbounds i8, i8* %add.ptr1046, i64 4
  %617 = load i8*, i8** %dest.addr, align 8
  %618 = load i32, i32* %dsize.addr, align 4
  %idx.ext1048 = zext i32 %618 to i64
  %add.ptr1049 = getelementptr inbounds i8, i8* %617, i64 %idx.ext1048
  %cmp1050 = icmp ule i8* %add.ptr1047, %add.ptr1049
  br i1 %cmp1050, label %land.lhs.true.1052, label %if.then.1057

land.lhs.true.1052:                               ; preds = %land.lhs.true.1045
  %619 = load i8*, i8** %loc_esi, align 8
  %add.ptr1053 = getelementptr inbounds i8, i8* %619, i64 64
  %add.ptr1054 = getelementptr inbounds i8, i8* %add.ptr1053, i64 4
  %620 = load i8*, i8** %dest.addr, align 8
  %cmp1055 = icmp ugt i8* %add.ptr1054, %620
  br i1 %cmp1055, label %if.end.1058, label %if.then.1057

if.then.1057:                                     ; preds = %land.lhs.true.1052, %land.lhs.true.1045, %land.lhs.true.1041, %land.lhs.true.1038, %lor.lhs.false.1035, %land.lhs.true.1030, %land.lhs.true.1023, %land.lhs.true.1019, %land.lhs.true.1016, %lor.lhs.false.1013, %land.lhs.true.1008, %land.lhs.true.1001, %land.lhs.true.997, %land.lhs.true.994, %if.end.983
  store i32 -1, i32* %retval
  br label %return

if.end.1058:                                      ; preds = %land.lhs.true.1052
  store i32 2, i32* %j, align 4
  br label %for.cond.1059

for.cond.1059:                                    ; preds = %for.inc.1068, %if.end.1058
  %621 = load i32, i32* %j, align 4
  %cmp1060 = icmp slt i32 %621, 6
  br i1 %cmp1060, label %for.body.1062, label %for.end.1070

for.body.1062:                                    ; preds = %for.cond.1059
  %622 = load i8*, i8** %loc_ebx, align 8
  %623 = load i32, i32* %j, align 4
  %shl = shl i32 %623, 2
  %idx.ext1063 = sext i32 %shl to i64
  %add.ptr1064 = getelementptr inbounds i8, i8* %622, i64 %idx.ext1063
  %624 = bitcast i8* %add.ptr1064 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = load i8*, i8** %loc_ebx, align 8
  %627 = load i32, i32* %j, align 4
  %shl1065 = shl i32 %627, 2
  %idx.ext1066 = sext i32 %shl1065 to i64
  %add.ptr1067 = getelementptr inbounds i8, i8* %626, i64 %idx.ext1066
  %628 = bitcast i8* %add.ptr1067 to i32*
  store i32 %625, i32* %628, align 4
  br label %for.inc.1068

for.inc.1068:                                     ; preds = %for.body.1062
  %629 = load i32, i32* %j, align 4
  %inc1069 = add nsw i32 %629, 1
  store i32 %inc1069, i32* %j, align 4
  br label %for.cond.1059

for.end.1070:                                     ; preds = %for.cond.1059
  %630 = load i8*, i8** %dest.addr, align 8
  %631 = load i8*, i8** %loc_ebx, align 8
  %add.ptr1071 = getelementptr inbounds i8, i8* %631, i64 -4
  %632 = bitcast i8* %add.ptr1071 to i32*
  %633 = load i32, i32* %632, align 4
  %idx.ext1072 = sext i32 %633 to i64
  %add.ptr1073 = getelementptr inbounds i8, i8* %630, i64 %idx.ext1072
  %634 = load i32, i32* %base.addr, align 4
  %idx.ext1074 = zext i32 %634 to i64
  %idx.neg1075 = sub i64 0, %idx.ext1074
  %add.ptr1076 = getelementptr inbounds i8, i8* %add.ptr1073, i64 %idx.neg1075
  store i8* %add.ptr1076, i8** %paddr, align 8
  %635 = load i32, i32* %loc_ecx, align 4
  store i32 %635, i32* %save1, align 4
  %636 = load i8*, i8** %loc_edi, align 8
  store i8* %636, i8** %pushed_esi, align 8
  %637 = load i8*, i8** %dest.addr, align 8
  %638 = load i8*, i8** %loc_esi, align 8
  %add.ptr1077 = getelementptr inbounds i8, i8* %638, i64 36
  %639 = bitcast i8* %add.ptr1077 to i32*
  %640 = load i32, i32* %639, align 4
  %idx.ext1078 = sext i32 %640 to i64
  %add.ptr1079 = getelementptr inbounds i8, i8* %637, i64 %idx.ext1078
  %641 = load i32, i32* %base.addr, align 4
  %idx.ext1080 = zext i32 %641 to i64
  %idx.neg1081 = sub i64 0, %idx.ext1080
  %add.ptr1082 = getelementptr inbounds i8, i8* %add.ptr1079, i64 %idx.neg1081
  store i8* %add.ptr1082, i8** %end_edi, align 8
  %642 = load i8*, i8** %loc_ebx, align 8
  %643 = bitcast i8* %642 to i32*
  %644 = load i32, i32* %643, align 4
  store i32 %644, i32* %vma.addr, align 4
  %645 = load i8*, i8** %loc_ebx, align 8
  %add.ptr1083 = getelementptr inbounds i8, i8* %645, i64 4
  %646 = bitcast i8* %add.ptr1083 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = load i8*, i8** %loc_ebx, align 8
  %649 = bitcast i8* %648 to i32*
  store i32 %647, i32* %649, align 4
  %650 = load i32, i32* %vma.addr, align 4
  %651 = load i8*, i8** %loc_ebx, align 8
  %add.ptr1084 = getelementptr inbounds i8, i8* %651, i64 4
  %652 = bitcast i8* %add.ptr1084 to i32*
  store i32 %650, i32* %652, align 4
  br label %if.end.1168

if.else.1085:                                     ; preds = %if.end.781
  %653 = load i32, i32* %upack_version, align 4
  %cmp1086 = icmp eq i32 %653, 1
  br i1 %cmp1086, label %if.then.1088, label %if.end.1167

if.then.1088:                                     ; preds = %if.else.1085
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0))
  %654 = load i8*, i8** %dest.addr, align 8
  %add.ptr1089 = getelementptr inbounds i8, i8* %654, i64 328
  store i8* %add.ptr1089, i8** %loc_esi, align 8
  %655 = load i8*, i8** %dest.addr, align 8
  %656 = load i8*, i8** %loc_esi, align 8
  %657 = bitcast i8* %656 to i32*
  %658 = load i32, i32* %657, align 4
  %idx.ext1090 = sext i32 %658 to i64
  %add.ptr1091 = getelementptr inbounds i8, i8* %655, i64 %idx.ext1090
  %659 = load i32, i32* %base.addr, align 4
  %idx.ext1092 = zext i32 %659 to i64
  %idx.neg1093 = sub i64 0, %idx.ext1092
  %add.ptr1094 = getelementptr inbounds i8, i8* %add.ptr1091, i64 %idx.neg1093
  store i8* %add.ptr1094, i8** %loc_edi, align 8
  %660 = load i8*, i8** %loc_esi, align 8
  %add.ptr1095 = getelementptr inbounds i8, i8* %660, i64 4
  store i8* %add.ptr1095, i8** %loc_esi, align 8
  %661 = load i8*, i8** %loc_edi, align 8
  store i8* %661, i8** %save_edi, align 8
  %662 = load i8*, i8** %dest.addr, align 8
  %663 = load i8*, i8** %loc_esi, align 8
  %664 = bitcast i8* %663 to i32*
  %665 = load i32, i32* %664, align 4
  %idx.ext1096 = zext i32 %665 to i64
  %add.ptr1097 = getelementptr inbounds i8, i8* %662, i64 %idx.ext1096
  %666 = load i32, i32* %base.addr, align 4
  %idx.ext1098 = zext i32 %666 to i64
  %idx.neg1099 = sub i64 0, %idx.ext1098
  %add.ptr1100 = getelementptr inbounds i8, i8* %add.ptr1097, i64 %idx.neg1099
  store i8* %add.ptr1100, i8** %paddr, align 8
  %667 = load i8*, i8** %loc_esi, align 8
  %add.ptr1101 = getelementptr inbounds i8, i8* %667, i64 4
  store i8* %add.ptr1101, i8** %loc_esi, align 8
  %668 = load i8*, i8** %loc_edi, align 8
  %add.ptr1102 = getelementptr inbounds i8, i8* %668, i64 4
  store i8* %add.ptr1102, i8** %loc_edi, align 8
  %669 = load i8*, i8** %loc_edi, align 8
  store i8* %669, i8** %loc_ebx, align 8
  %670 = load i32, i32* %dsize.addr, align 4
  %cmp1103 = icmp ugt i32 %670, 0
  br i1 %cmp1103, label %land.lhs.true.1105, label %if.then.1134

land.lhs.true.1105:                               ; preds = %if.then.1088
  %671 = load i32, i32* %count, align 4
  %add1106 = add i32 6, %671
  %mul1107 = mul i32 %add1106, 4
  %cmp1108 = icmp ugt i32 %mul1107, 0
  br i1 %cmp1108, label %land.lhs.true.1110, label %if.then.1134

land.lhs.true.1110:                               ; preds = %land.lhs.true.1105
  %672 = load i32, i32* %count, align 4
  %add1111 = add i32 6, %672
  %mul1112 = mul i32 %add1111, 4
  %673 = load i32, i32* %dsize.addr, align 4
  %cmp1113 = icmp ule i32 %mul1112, %673
  br i1 %cmp1113, label %land.lhs.true.1115, label %if.then.1134

land.lhs.true.1115:                               ; preds = %land.lhs.true.1110
  %674 = load i8*, i8** %loc_edi, align 8
  %675 = load i8*, i8** %dest.addr, align 8
  %cmp1116 = icmp uge i8* %674, %675
  br i1 %cmp1116, label %land.lhs.true.1118, label %if.then.1134

land.lhs.true.1118:                               ; preds = %land.lhs.true.1115
  %676 = load i8*, i8** %loc_edi, align 8
  %677 = load i32, i32* %count, align 4
  %add1119 = add i32 6, %677
  %mul1120 = mul i32 %add1119, 4
  %idx.ext1121 = zext i32 %mul1120 to i64
  %add.ptr1122 = getelementptr inbounds i8, i8* %676, i64 %idx.ext1121
  %678 = load i8*, i8** %dest.addr, align 8
  %679 = load i32, i32* %dsize.addr, align 4
  %idx.ext1123 = zext i32 %679 to i64
  %add.ptr1124 = getelementptr inbounds i8, i8* %678, i64 %idx.ext1123
  %cmp1125 = icmp ule i8* %add.ptr1122, %add.ptr1124
  br i1 %cmp1125, label %land.lhs.true.1127, label %if.then.1134

land.lhs.true.1127:                               ; preds = %land.lhs.true.1118
  %680 = load i8*, i8** %loc_edi, align 8
  %681 = load i32, i32* %count, align 4
  %add1128 = add i32 6, %681
  %mul1129 = mul i32 %add1128, 4
  %idx.ext1130 = zext i32 %mul1129 to i64
  %add.ptr1131 = getelementptr inbounds i8, i8* %680, i64 %idx.ext1130
  %682 = load i8*, i8** %dest.addr, align 8
  %cmp1132 = icmp ugt i8* %add.ptr1131, %682
  br i1 %cmp1132, label %if.end.1135, label %if.then.1134

if.then.1134:                                     ; preds = %land.lhs.true.1127, %land.lhs.true.1118, %land.lhs.true.1115, %land.lhs.true.1110, %land.lhs.true.1105, %if.then.1088
  store i32 -1, i32* %retval
  br label %return

if.end.1135:                                      ; preds = %land.lhs.true.1127
  %683 = load i8*, i8** %loc_edi, align 8
  %684 = bitcast i8* %683 to i32*
  store i32 -1, i32* %684, align 4
  %685 = load i8*, i8** %loc_edi, align 8
  %add.ptr1136 = getelementptr inbounds i8, i8* %685, i64 4
  store i8* %add.ptr1136, i8** %loc_edi, align 8
  %686 = load i8*, i8** %loc_edi, align 8
  %687 = bitcast i8* %686 to i32*
  store i32 0, i32* %687, align 4
  %688 = load i8*, i8** %loc_edi, align 8
  %add.ptr1137 = getelementptr inbounds i8, i8* %688, i64 4
  store i8* %add.ptr1137, i8** %loc_edi, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1138

for.cond.1138:                                    ; preds = %for.inc.1142, %if.end.1135
  %689 = load i32, i32* %j, align 4
  %cmp1139 = icmp slt i32 %689, 4
  br i1 %cmp1139, label %for.body.1141, label %for.end.1145

for.body.1141:                                    ; preds = %for.cond.1138
  %690 = load i8*, i8** %loc_edi, align 8
  %691 = bitcast i8* %690 to i32*
  store i32 1, i32* %691, align 4
  br label %for.inc.1142

for.inc.1142:                                     ; preds = %for.body.1141
  %692 = load i32, i32* %j, align 4
  %inc1143 = add nsw i32 %692, 1
  store i32 %inc1143, i32* %j, align 4
  %693 = load i8*, i8** %loc_edi, align 8
  %add.ptr1144 = getelementptr inbounds i8, i8* %693, i64 4
  store i8* %add.ptr1144, i8** %loc_edi, align 8
  br label %for.cond.1138

for.end.1145:                                     ; preds = %for.cond.1138
  store i32 0, i32* %j, align 4
  br label %for.cond.1146

for.cond.1146:                                    ; preds = %for.inc.1150, %for.end.1145
  %694 = load i32, i32* %j, align 4
  %695 = load i32, i32* %count, align 4
  %cmp1147 = icmp ult i32 %694, %695
  br i1 %cmp1147, label %for.body.1149, label %for.end.1153

for.body.1149:                                    ; preds = %for.cond.1146
  %696 = load i8*, i8** %loc_edi, align 8
  %697 = bitcast i8* %696 to i32*
  store i32 1024, i32* %697, align 4
  br label %for.inc.1150

for.inc.1150:                                     ; preds = %for.body.1149
  %698 = load i32, i32* %j, align 4
  %inc1151 = add nsw i32 %698, 1
  store i32 %inc1151, i32* %j, align 4
  %699 = load i8*, i8** %loc_edi, align 8
  %add.ptr1152 = getelementptr inbounds i8, i8* %699, i64 4
  store i8* %add.ptr1152, i8** %loc_edi, align 8
  br label %for.cond.1146

for.end.1153:                                     ; preds = %for.cond.1146
  %700 = load i8*, i8** %dest.addr, align 8
  %701 = load i8*, i8** %loc_esi, align 8
  %702 = bitcast i8* %701 to i32*
  %703 = load i32, i32* %702, align 4
  %idx.ext1154 = sext i32 %703 to i64
  %add.ptr1155 = getelementptr inbounds i8, i8* %700, i64 %idx.ext1154
  %704 = load i32, i32* %base.addr, align 4
  %idx.ext1156 = zext i32 %704 to i64
  %idx.neg1157 = sub i64 0, %idx.ext1156
  %add.ptr1158 = getelementptr inbounds i8, i8* %add.ptr1155, i64 %idx.neg1157
  store i8* %add.ptr1158, i8** %loc_edi, align 8
  %705 = load i8*, i8** %loc_edi, align 8
  store i8* %705, i8** %pushed_esi, align 8
  %706 = load i8*, i8** %loc_esi, align 8
  %add.ptr1159 = getelementptr inbounds i8, i8* %706, i64 4
  store i8* %add.ptr1159, i8** %loc_esi, align 8
  store i32 0, i32* %loc_ecx, align 4
  %707 = load i8*, i8** %loc_esi, align 8
  %add.ptr1160 = getelementptr inbounds i8, i8* %707, i64 4
  store i8* %add.ptr1160, i8** %loc_esi, align 8
  %708 = load i8*, i8** %dest.addr, align 8
  %709 = load i8*, i8** %loc_esi, align 8
  %add.ptr1161 = getelementptr inbounds i8, i8* %709, i64 -40
  %710 = bitcast i8* %add.ptr1161 to i32*
  %711 = load i32, i32* %710, align 4
  %idx.ext1162 = sext i32 %711 to i64
  %add.ptr1163 = getelementptr inbounds i8, i8* %708, i64 %idx.ext1162
  %712 = load i32, i32* %base.addr, align 4
  %idx.ext1164 = zext i32 %712 to i64
  %idx.neg1165 = sub i64 0, %idx.ext1164
  %add.ptr1166 = getelementptr inbounds i8, i8* %add.ptr1163, i64 %idx.neg1165
  store i8* %add.ptr1166, i8** %end_edi, align 8
  %713 = load i8*, i8** %save_edi, align 8
  store i8* %713, i8** %loc_esi, align 8
  br label %if.end.1167

if.end.1167:                                      ; preds = %for.end.1153, %if.else.1085
  br label %if.end.1168

if.end.1168:                                      ; preds = %if.end.1167, %for.end.1070
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i32 0, i32 0))
  %714 = load i8*, i8** %dest.addr, align 8
  %715 = load i32, i32* %dsize.addr, align 4
  %716 = load i32, i32* %loc_ecx, align 4
  %717 = load i8*, i8** %loc_ebx, align 8
  %718 = load i32, i32* %loc_ecx, align 4
  %719 = load i8*, i8** %loc_edi, align 8
  %720 = load i8*, i8** %end_edi, align 8
  %721 = load i32, i32* %shlsize, align 4
  %722 = load i8*, i8** %paddr, align 8
  %call1169 = call i32 @unupack399(i8* %714, i32 %715, i32 %716, i8* %717, i32 %718, i8* %719, i8* %720, i32 %721, i8* %722)
  store i32 %call1169, i32* %ret, align 4
  %cmp1170 = icmp eq i32 %call1169, -1
  br i1 %cmp1170, label %if.then.1172, label %if.end.1173

if.then.1172:                                     ; preds = %if.end.1168
  store i32 -1, i32* %retval
  br label %return

if.end.1173:                                      ; preds = %if.end.1168
  %723 = load i32, i32* %upack_version, align 4
  %cmp1174 = icmp eq i32 %723, 0
  br i1 %cmp1174, label %if.then.1176, label %if.else.1178

if.then.1176:                                     ; preds = %if.end.1173
  %724 = load i8*, i8** %loc_esi, align 8
  %add.ptr1177 = getelementptr inbounds i8, i8* %724, i64 64
  %725 = bitcast i8* %add.ptr1177 to i32*
  %726 = load i32, i32* %725, align 4
  store i32 %726, i32* %save3, align 4
  br label %if.end.1188

if.else.1178:                                     ; preds = %if.end.1173
  %727 = load i32, i32* %upack_version, align 4
  %cmp1179 = icmp eq i32 %727, 1
  br i1 %cmp1179, label %if.then.1181, label %if.end.1187

if.then.1181:                                     ; preds = %if.else.1178
  %728 = load i8*, i8** %dest.addr, align 8
  %729 = load i32, i32* %vma.addr, align 4
  %idx.ext1182 = zext i32 %729 to i64
  %add.ptr1183 = getelementptr inbounds i8, i8* %728, i64 %idx.ext1182
  %730 = load i32, i32* %ep.addr, align 4
  %idx.ext1184 = zext i32 %730 to i64
  %add.ptr1185 = getelementptr inbounds i8, i8* %add.ptr1183, i64 %idx.ext1184
  %add.ptr1186 = getelementptr inbounds i8, i8* %add.ptr1185, i64 372
  %731 = bitcast i8* %add.ptr1186 to i32*
  %732 = load i32, i32* %731, align 4
  store i32 %732, i32* %save3, align 4
  br label %if.end.1187

if.end.1187:                                      ; preds = %if.then.1181, %if.else.1178
  br label %if.end.1188

if.end.1188:                                      ; preds = %if.end.1187, %if.then.1176
  br label %if.end.1189

if.end.1189:                                      ; preds = %if.end.1188, %if.end.693
  store i32 0, i32* %loc_ecx, align 4
  %733 = load i32, i32* %dsize.addr, align 4
  %cmp1190 = icmp ugt i32 %733, 0
  br i1 %cmp1190, label %land.lhs.true.1192, label %if.then.1208

land.lhs.true.1192:                               ; preds = %if.end.1189
  %734 = load i32, i32* %dsize.addr, align 4
  %cmp1193 = icmp ule i32 1, %734
  br i1 %cmp1193, label %land.lhs.true.1195, label %if.then.1208

land.lhs.true.1195:                               ; preds = %land.lhs.true.1192
  %735 = load i8*, i8** %alvalue, align 8
  %736 = load i8*, i8** %dest.addr, align 8
  %cmp1196 = icmp uge i8* %735, %736
  br i1 %cmp1196, label %land.lhs.true.1198, label %if.then.1208

land.lhs.true.1198:                               ; preds = %land.lhs.true.1195
  %737 = load i8*, i8** %alvalue, align 8
  %add.ptr1199 = getelementptr inbounds i8, i8* %737, i64 1
  %738 = load i8*, i8** %dest.addr, align 8
  %739 = load i32, i32* %dsize.addr, align 4
  %idx.ext1200 = zext i32 %739 to i64
  %add.ptr1201 = getelementptr inbounds i8, i8* %738, i64 %idx.ext1200
  %cmp1202 = icmp ule i8* %add.ptr1199, %add.ptr1201
  br i1 %cmp1202, label %land.lhs.true.1204, label %if.then.1208

land.lhs.true.1204:                               ; preds = %land.lhs.true.1198
  %740 = load i8*, i8** %alvalue, align 8
  %add.ptr1205 = getelementptr inbounds i8, i8* %740, i64 1
  %741 = load i8*, i8** %dest.addr, align 8
  %cmp1206 = icmp ugt i8* %add.ptr1205, %741
  br i1 %cmp1206, label %if.end.1209, label %if.then.1208

if.then.1208:                                     ; preds = %land.lhs.true.1204, %land.lhs.true.1198, %land.lhs.true.1195, %land.lhs.true.1192, %if.end.1189
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.1209:                                      ; preds = %land.lhs.true.1204
  %742 = load i8*, i8** %alvalue, align 8
  %743 = load i8, i8* %742, align 1
  %conv1210 = sext i8 %743 to i32
  %and1211 = and i32 %conv1210, 255
  store i32 %and1211, i32* %searchval, align 4
  %744 = load i32, i32* %save3, align 4
  %745 = load i32, i32* %searchval, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), i32 %744, i32 %745)
  br label %while.cond

while.cond:                                       ; preds = %if.end.1301, %if.then.1282, %if.end.1209
  %746 = load i32, i32* %save3, align 4
  %tobool1212 = icmp ne i32 %746, 0
  br i1 %tobool1212, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %747 = load i32, i32* %dsize.addr, align 4
  %cmp1213 = icmp ugt i32 %747, 0
  br i1 %cmp1213, label %land.lhs.true.1215, label %if.then.1237

land.lhs.true.1215:                               ; preds = %while.body
  %748 = load i32, i32* %dsize.addr, align 4
  %cmp1216 = icmp ule i32 1, %748
  br i1 %cmp1216, label %land.lhs.true.1218, label %if.then.1237

land.lhs.true.1218:                               ; preds = %land.lhs.true.1215
  %749 = load i8*, i8** %pushed_esi, align 8
  %750 = load i32, i32* %loc_ecx, align 4
  %idx.ext1219 = zext i32 %750 to i64
  %add.ptr1220 = getelementptr inbounds i8, i8* %749, i64 %idx.ext1219
  %751 = load i8*, i8** %dest.addr, align 8
  %cmp1221 = icmp uge i8* %add.ptr1220, %751
  br i1 %cmp1221, label %land.lhs.true.1223, label %if.then.1237

land.lhs.true.1223:                               ; preds = %land.lhs.true.1218
  %752 = load i8*, i8** %pushed_esi, align 8
  %753 = load i32, i32* %loc_ecx, align 4
  %idx.ext1224 = zext i32 %753 to i64
  %add.ptr1225 = getelementptr inbounds i8, i8* %752, i64 %idx.ext1224
  %add.ptr1226 = getelementptr inbounds i8, i8* %add.ptr1225, i64 1
  %754 = load i8*, i8** %dest.addr, align 8
  %755 = load i32, i32* %dsize.addr, align 4
  %idx.ext1227 = zext i32 %755 to i64
  %add.ptr1228 = getelementptr inbounds i8, i8* %754, i64 %idx.ext1227
  %cmp1229 = icmp ule i8* %add.ptr1226, %add.ptr1228
  br i1 %cmp1229, label %land.lhs.true.1231, label %if.then.1237

land.lhs.true.1231:                               ; preds = %land.lhs.true.1223
  %756 = load i8*, i8** %pushed_esi, align 8
  %757 = load i32, i32* %loc_ecx, align 4
  %idx.ext1232 = zext i32 %757 to i64
  %add.ptr1233 = getelementptr inbounds i8, i8* %756, i64 %idx.ext1232
  %add.ptr1234 = getelementptr inbounds i8, i8* %add.ptr1233, i64 1
  %758 = load i8*, i8** %dest.addr, align 8
  %cmp1235 = icmp ugt i8* %add.ptr1234, %758
  br i1 %cmp1235, label %if.end.1242, label %if.then.1237

if.then.1237:                                     ; preds = %land.lhs.true.1231, %land.lhs.true.1223, %land.lhs.true.1218, %land.lhs.true.1215, %while.body
  %759 = load i8*, i8** %dest.addr, align 8
  %760 = load i32, i32* %dsize.addr, align 4
  %761 = load i8*, i8** %dest.addr, align 8
  %762 = load i32, i32* %dsize.addr, align 4
  %idx.ext1238 = zext i32 %762 to i64
  %add.ptr1239 = getelementptr inbounds i8, i8* %761, i64 %idx.ext1238
  %763 = load i8*, i8** %pushed_esi, align 8
  %764 = load i32, i32* %loc_ecx, align 4
  %idx.ext1240 = zext i32 %764 to i64
  %add.ptr1241 = getelementptr inbounds i8, i8* %763, i64 %idx.ext1240
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i8* %759, i32 %760, i8* %add.ptr1239, i8* %add.ptr1241)
  store i32 -1, i32* %retval
  br label %return

if.end.1242:                                      ; preds = %land.lhs.true.1231
  %765 = load i32, i32* %loc_ecx, align 4
  %idxprom1243 = zext i32 %765 to i64
  %766 = load i8*, i8** %pushed_esi, align 8
  %arrayidx1244 = getelementptr inbounds i8, i8* %766, i64 %idxprom1243
  %767 = load i8, i8* %arrayidx1244, align 1
  %conv1245 = sext i8 %767 to i32
  %cmp1246 = icmp eq i32 %conv1245, -24
  br i1 %cmp1246, label %if.then.1254, label %lor.lhs.false.1248

lor.lhs.false.1248:                               ; preds = %if.end.1242
  %768 = load i32, i32* %loc_ecx, align 4
  %idxprom1249 = zext i32 %768 to i64
  %769 = load i8*, i8** %pushed_esi, align 8
  %arrayidx1250 = getelementptr inbounds i8, i8* %769, i64 %idxprom1249
  %770 = load i8, i8* %arrayidx1250, align 1
  %conv1251 = sext i8 %770 to i32
  %cmp1252 = icmp eq i32 %conv1251, -23
  br i1 %cmp1252, label %if.then.1254, label %if.else.1299

if.then.1254:                                     ; preds = %lor.lhs.false.1248, %if.end.1242
  %771 = load i8*, i8** %pushed_esi, align 8
  %772 = load i32, i32* %loc_ecx, align 4
  %idx.ext1255 = zext i32 %772 to i64
  %add.ptr1256 = getelementptr inbounds i8, i8* %771, i64 %idx.ext1255
  %add.ptr1257 = getelementptr inbounds i8, i8* %add.ptr1256, i64 1
  store i8* %add.ptr1257, i8** %adr, align 8
  %773 = load i32, i32* %loc_ecx, align 4
  %inc1258 = add i32 %773, 1
  store i32 %inc1258, i32* %loc_ecx, align 4
  %774 = load i32, i32* %dsize.addr, align 4
  %cmp1259 = icmp ugt i32 %774, 0
  br i1 %cmp1259, label %land.lhs.true.1261, label %if.then.1277

land.lhs.true.1261:                               ; preds = %if.then.1254
  %775 = load i32, i32* %dsize.addr, align 4
  %cmp1262 = icmp ule i32 4, %775
  br i1 %cmp1262, label %land.lhs.true.1264, label %if.then.1277

land.lhs.true.1264:                               ; preds = %land.lhs.true.1261
  %776 = load i8*, i8** %adr, align 8
  %777 = load i8*, i8** %dest.addr, align 8
  %cmp1265 = icmp uge i8* %776, %777
  br i1 %cmp1265, label %land.lhs.true.1267, label %if.then.1277

land.lhs.true.1267:                               ; preds = %land.lhs.true.1264
  %778 = load i8*, i8** %adr, align 8
  %add.ptr1268 = getelementptr inbounds i8, i8* %778, i64 4
  %779 = load i8*, i8** %dest.addr, align 8
  %780 = load i32, i32* %dsize.addr, align 4
  %idx.ext1269 = zext i32 %780 to i64
  %add.ptr1270 = getelementptr inbounds i8, i8* %779, i64 %idx.ext1269
  %cmp1271 = icmp ule i8* %add.ptr1268, %add.ptr1270
  br i1 %cmp1271, label %land.lhs.true.1273, label %if.then.1277

land.lhs.true.1273:                               ; preds = %land.lhs.true.1267
  %781 = load i8*, i8** %adr, align 8
  %add.ptr1274 = getelementptr inbounds i8, i8* %781, i64 4
  %782 = load i8*, i8** %dest.addr, align 8
  %cmp1275 = icmp ugt i8* %add.ptr1274, %782
  br i1 %cmp1275, label %if.end.1278, label %if.then.1277

if.then.1277:                                     ; preds = %land.lhs.true.1273, %land.lhs.true.1267, %land.lhs.true.1264, %land.lhs.true.1261, %if.then.1254
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.1278:                                      ; preds = %land.lhs.true.1273
  %783 = load i8*, i8** %adr, align 8
  %784 = bitcast i8* %783 to i32*
  %785 = load i32, i32* %784, align 4
  %and1279 = and i32 %785, 255
  %786 = load i32, i32* %searchval, align 4
  %cmp1280 = icmp ne i32 %and1279, %786
  br i1 %cmp1280, label %if.then.1282, label %if.end.1283

if.then.1282:                                     ; preds = %if.end.1278
  br label %while.cond

if.end.1283:                                      ; preds = %if.end.1278
  %787 = load i8*, i8** %adr, align 8
  %788 = bitcast i8* %787 to i32*
  %789 = load i32, i32* %788, align 4
  %and1284 = and i32 %789, -256
  %shr = lshr i32 %and1284, 24
  %790 = load i8*, i8** %adr, align 8
  %791 = bitcast i8* %790 to i32*
  %792 = load i32, i32* %791, align 4
  %and1285 = and i32 %792, -256
  %and1286 = and i32 %and1285, 16711680
  %shr1287 = lshr i32 %and1286, 8
  %or = or i32 %shr, %shr1287
  %793 = load i8*, i8** %adr, align 8
  %794 = bitcast i8* %793 to i32*
  %795 = load i32, i32* %794, align 4
  %and1288 = and i32 %795, -256
  %and1289 = and i32 %and1288, 65280
  %shl1290 = shl i32 %and1289, 8
  %or1291 = or i32 %or, %shl1290
  %796 = load i8*, i8** %adr, align 8
  %797 = bitcast i8* %796 to i32*
  %798 = load i32, i32* %797, align 4
  %and1292 = and i32 %798, -256
  %shl1293 = shl i32 %and1292, 24
  %or1294 = or i32 %or1291, %shl1293
  %799 = load i32, i32* %loc_ecx, align 4
  %sub1295 = sub i32 %or1294, %799
  %sub1296 = sub i32 %sub1295, 4
  %800 = load i8*, i8** %adr, align 8
  %801 = bitcast i8* %800 to i32*
  store i32 %sub1296, i32* %801, align 4
  %802 = load i32, i32* %loc_ecx, align 4
  %add1297 = add i32 %802, 4
  store i32 %add1297, i32* %loc_ecx, align 4
  %803 = load i32, i32* %save3, align 4
  %dec1298 = add i32 %803, -1
  store i32 %dec1298, i32* %save3, align 4
  br label %if.end.1301

if.else.1299:                                     ; preds = %lor.lhs.false.1248
  %804 = load i32, i32* %loc_ecx, align 4
  %inc1300 = add i32 %804, 1
  store i32 %inc1300, i32* %loc_ecx, align 4
  br label %if.end.1301

if.end.1301:                                      ; preds = %if.else.1299, %if.end.1283
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 2
  store i32 0, i32* %raw, align 4
  %805 = load i32, i32* %va.addr, align 4
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 0
  store i32 %805, i32* %rva, align 4
  %806 = load i8*, i8** %end_edi, align 8
  %807 = load i8*, i8** %loc_edi, align 8
  %sub.ptr.lhs.cast1302 = ptrtoint i8* %806 to i64
  %sub.ptr.rhs.cast1303 = ptrtoint i8* %807 to i64
  %sub.ptr.sub1304 = sub i64 %sub.ptr.lhs.cast1302, %sub.ptr.rhs.cast1303
  %conv1305 = trunc i64 %sub.ptr.sub1304 to i32
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 3
  store i32 %conv1305, i32* %rsz, align 4
  %808 = load i8*, i8** %end_edi, align 8
  %809 = load i8*, i8** %loc_edi, align 8
  %sub.ptr.lhs.cast1306 = ptrtoint i8* %808 to i64
  %sub.ptr.rhs.cast1307 = ptrtoint i8* %809 to i64
  %sub.ptr.sub1308 = sub i64 %sub.ptr.lhs.cast1306, %sub.ptr.rhs.cast1307
  %conv1309 = trunc i64 %sub.ptr.sub1308 to i32
  %vsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %section, i32 0, i32 1
  store i32 %conv1309, i32* %vsz, align 4
  %810 = load i8*, i8** %dest.addr, align 8
  %811 = load i32, i32* %upack.addr, align 4
  %tobool1310 = icmp ne i32 %811, 0
  br i1 %tobool1310, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %812 = load i32, i32* %va.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %812, %cond.false ]
  %idx.ext1311 = zext i32 %cond to i64
  %add.ptr1312 = getelementptr inbounds i8, i8* %810, i64 %idx.ext1311
  %813 = load i32, i32* %base.addr, align 4
  %814 = load i32, i32* %original_ep, align 4
  %815 = load i32, i32* %file.addr, align 4
  %call1313 = call i32 @cli_rebuildpe(i8* %add.ptr1312, %struct.cli_exe_section* %section, i32 1, i32 %813, i32 %814, i32 0, i32 0, i32 %815)
  %tobool1314 = icmp ne i32 %call1313, 0
  br i1 %tobool1314, label %if.end.1316, label %if.then.1315

if.then.1315:                                     ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.1316:                                      ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1316, %if.then.1315, %if.then.1277, %if.then.1237, %if.then.1208, %if.then.1172, %if.then.1134, %if.then.1057, %if.then.982, %if.then.950, %if.then.924, %if.then.897, %if.then.835, %if.then.814, %if.then.790, %if.then.780, %if.then.754, %if.then.692, %if.then.622, %if.then.565, %if.then.505, %if.then.468, %if.then.459, %if.then.423, %if.then.409, %if.then.346, %if.then.300, %if.then.216, %if.then.178, %if.then.144, %if.then.103, %if.then.69, %if.then.26
  %816 = load i32, i32* %retval
  ret i32 %816
}

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @unupack399(i8* %bs, i32 %bl, i32 %init_eax, i8* %init_ebx, i32 %init_ecx, i8* %init_edi, i8* %end_edi, i32 %shlsize, i8* %paddr) #0 {
entry:
  %retval = alloca i32, align 4
  %bs.addr = alloca i8*, align 8
  %bl.addr = alloca i32, align 4
  %init_eax.addr = alloca i32, align 4
  %init_ebx.addr = alloca i8*, align 8
  %init_ecx.addr = alloca i32, align 4
  %init_edi.addr = alloca i8*, align 8
  %end_edi.addr = alloca i8*, align 8
  %shlsize.addr = alloca i32, align 4
  %paddr.addr = alloca i8*, align 8
  %p = alloca %struct.lzmastate, align 8
  %loc_eax = alloca i32, align 4
  %ret = alloca i32, align 4
  %loc_al = alloca i32, align 4
  %loc_ecx = alloca i32, align 4
  %loc_ebp = alloca i32, align 4
  %eax_copy = alloca i32, align 4
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %jakas_kopia = alloca i32, align 4
  %state = alloca [6 x i32], align 16
  %temp_ebp = alloca i32, align 4
  %loc_edx = alloca i8*, align 8
  %loc_ebx = alloca i8*, align 8
  %loc_edi = alloca i8*, align 8
  %loc_ebp8 = alloca i8*, align 8
  %edi_copy = alloca i8*, align 8
  %temp_edx = alloca i32, align 4
  %loc_cl = alloca i8, align 1
  %loc_ah = alloca i8, align 1
  store i8* %bs, i8** %bs.addr, align 8
  store i32 %bl, i32* %bl.addr, align 4
  store i32 %init_eax, i32* %init_eax.addr, align 4
  store i8* %init_ebx, i8** %init_ebx.addr, align 8
  store i32 %init_ecx, i32* %init_ecx.addr, align 4
  store i8* %init_edi, i8** %init_edi.addr, align 8
  store i8* %end_edi, i8** %end_edi.addr, align 8
  store i32 %shlsize, i32* %shlsize.addr, align 4
  store i8* %paddr, i8** %paddr.addr, align 8
  %0 = load i32, i32* %init_ecx.addr, align 4
  store i32 %0, i32* %loc_ecx, align 4
  %1 = load i32, i32* %init_eax.addr, align 4
  store i32 %1, i32* %eax_copy, align 4
  %2 = load i8*, i8** %init_ebx.addr, align 8
  store i8* %2, i8** %loc_ebx, align 8
  %3 = load i8*, i8** %init_edi.addr, align 8
  store i8* %3, i8** %loc_edi, align 8
  %4 = load i8*, i8** %paddr.addr, align 8
  %p0 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 0
  store i8* %4, i8** %p0, align 8
  %5 = load i8*, i8** %init_ebx.addr, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %p1 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 1
  store i32 %7, i32* %p1, align 4
  %8 = load i8*, i8** %init_ebx.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 4
  %9 = bitcast i8* %add.ptr to i32*
  %10 = load i32, i32* %9, align 4
  %p2 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 2
  store i32 %10, i32* %p2, align 4
  %p01 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 0
  %11 = load i8*, i8** %p01, align 8
  %p12 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 1
  %12 = load i32, i32* %p12, align 4
  %p23 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 2
  %13 = load i32, i32* %p23, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0), i8* %11, i32 %12, i32 %13)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %14, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %loc_ebx, align 8
  %16 = load i32, i32* %i, align 4
  %shl = shl i32 %16, 2
  %idx.ext = zext i32 %shl to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  %17 = bitcast i8* %add.ptr4 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 %idxprom
  store i32 %18, i32* %arrayidx, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %21 to i64
  %arrayidx6 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 %idxprom5
  %22 = load i32, i32* %arrayidx6, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i32 %20, i32 %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond.444, %for.end
  %24 = load i32, i32* %eax_copy, align 4
  store i32 %24, i32* %loc_eax, align 4
  %25 = load i8*, i8** %loc_ebx, align 8
  %26 = load i32, i32* %loc_eax, align 4
  %shl7 = shl i32 %26, 2
  %idx.ext8 = zext i32 %shl7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %25, i64 %idx.ext8
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 88
  store i8* %add.ptr10, i8** %loc_edx, align 8
  %27 = load i8*, i8** %loc_edx, align 8
  %28 = load i8*, i8** %bs.addr, align 8
  %29 = load i32, i32* %bl.addr, align 4
  %call = call i32 @lzma_upack_esi_00(%struct.lzmastate* %p, i8* %27, i8* %28, i32 %29)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.299

if.then:                                          ; preds = %do.body
  %30 = load i32, i32* %loc_eax, align 4
  %and = and i32 %30, 255
  store i32 %and, i32* %loc_al, align 4
  %31 = load i32, i32* %loc_al, align 4
  %add = add i32 %31, 249
  %cmp11 = icmp ugt i32 %add, 255
  %cond = select i1 %cmp11, i32 11, i32 8
  store i32 %cond, i32* %loc_al, align 4
  %32 = load i32, i32* %loc_eax, align 4
  %and12 = and i32 %32, -256
  %33 = load i32, i32* %loc_al, align 4
  %and13 = and i32 %33, 255
  %or = or i32 %and12, %and13
  store i32 %or, i32* %loc_eax, align 4
  %arrayidx14 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 2
  %34 = load i32, i32* %arrayidx14, align 4
  store i32 %34, i32* %loc_ebp, align 4
  %35 = load i32, i32* %loc_ecx, align 4
  %and15 = and i32 %35, -256
  %or16 = or i32 %and15, 48
  store i32 %or16, i32* %loc_ecx, align 4
  %36 = load i32, i32* %loc_ecx, align 4
  %37 = load i8*, i8** %loc_edx, align 8
  %idx.ext17 = zext i32 %36 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %37, i64 %idx.ext17
  store i8* %add.ptr18, i8** %loc_edx, align 8
  %38 = load i8*, i8** %loc_edx, align 8
  %39 = load i8*, i8** %bs.addr, align 8
  %40 = load i32, i32* %bl.addr, align 4
  %call19 = call i32 @lzma_upack_esi_00(%struct.lzmastate* %p, i8* %38, i8* %39, i32 %40)
  store i32 %call19, i32* %ret, align 4
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %if.then
  %41 = load i32, i32* %loc_eax, align 4
  %dec = add i32 %41, -1
  store i32 %dec, i32* %loc_eax, align 4
  %42 = load i32, i32* %loc_ebp, align 4
  store i32 %42, i32* %temp_ebp, align 4
  %arrayidx22 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 4
  %43 = load i32, i32* %arrayidx22, align 4
  store i32 %43, i32* %loc_ebp, align 4
  %arrayidx23 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 3
  %44 = load i32, i32* %arrayidx23, align 4
  %arrayidx24 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 4
  store i32 %44, i32* %arrayidx24, align 4
  %45 = load i32, i32* %temp_ebp, align 4
  %arrayidx25 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 3
  store i32 %45, i32* %arrayidx25, align 4
  %46 = load i32, i32* %loc_eax, align 4
  store i32 %46, i32* %eax_copy, align 4
  %47 = load i8*, i8** %loc_ebx, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %47, i64 3008
  store i8* %add.ptr26, i8** %loc_edx, align 8
  %48 = load i32, i32* %loc_ebp, align 4
  %arrayidx27 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 5
  store i32 %48, i32* %arrayidx27, align 4
  %49 = load i32, i32* %loc_eax, align 4
  %50 = load i8*, i8** %bs.addr, align 8
  %51 = load i32, i32* %bl.addr, align 4
  %call28 = call i32 @lzma_upack_esi_54(%struct.lzmastate* %p, i32 %49, i32* %loc_ecx, i8** %loc_edx, i32* %temp, i8* %50, i32 %51)
  %cmp29 = icmp eq i32 %call28, -1
  br i1 %cmp29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.21
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.21
  store i32 3, i32* %loc_ecx, align 4
  %52 = load i32, i32* %temp, align 4
  store i32 %52, i32* %jakas_kopia, align 4
  %53 = load i32, i32* %temp, align 4
  %sub = sub i32 %53, 1
  store i32 %sub, i32* %loc_eax, align 4
  %54 = load i32, i32* %loc_eax, align 4
  %55 = load i32, i32* %loc_ecx, align 4
  %cmp31 = icmp uge i32 %54, %55
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end
  %56 = load i32, i32* %loc_ecx, align 4
  store i32 %56, i32* %loc_eax, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end
  store i32 64, i32* %loc_ecx, align 4
  %57 = load i32, i32* %loc_eax, align 4
  %shl34 = shl i32 %57, 6
  store i32 %shl34, i32* %loc_eax, align 4
  %58 = load i8*, i8** %loc_ebx, align 8
  %59 = load i32, i32* %loc_eax, align 4
  %shl35 = shl i32 %59, 2
  %add36 = add i32 %shl35, 888
  %idx.ext37 = zext i32 %add36 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %58, i64 %idx.ext37
  store i8* %add.ptr38, i8** %loc_ebp8, align 8
  %60 = load i32, i32* %loc_ecx, align 4
  %61 = load i8*, i8** %loc_ebp8, align 8
  %62 = load i8*, i8** %bs.addr, align 8
  %63 = load i32, i32* %bl.addr, align 4
  %call39 = call i32 @lzma_upack_esi_50(%struct.lzmastate* %p, i32 1, i32 %60, i8** %loc_edx, i8* %61, i32* %loc_eax, i8* %62, i32 %63)
  %cmp40 = icmp eq i32 %call39, -1
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.33
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.33
  %64 = load i32, i32* %loc_eax, align 4
  store i32 %64, i32* %loc_ebp, align 4
  %65 = load i32, i32* %loc_eax, align 4
  %and43 = and i32 %65, 255
  %cmp44 = icmp uge i32 %and43, 4
  br i1 %cmp44, label %if.then.45, label %if.end.139

if.then.45:                                       ; preds = %if.end.42
  %66 = load i32, i32* %loc_eax, align 4
  %and46 = and i32 %66, 1
  %add47 = add i32 2, %and46
  store i32 %add47, i32* %loc_ebp, align 4
  %67 = load i32, i32* %loc_eax, align 4
  %shr = lshr i32 %67, 1
  store i32 %shr, i32* %loc_eax, align 4
  %68 = load i32, i32* %loc_eax, align 4
  %dec48 = add i32 %68, -1
  store i32 %dec48, i32* %loc_eax, align 4
  %69 = load i32, i32* %loc_eax, align 4
  store i32 %69, i32* %temp_ebp, align 4
  %70 = load i32, i32* %loc_ecx, align 4
  store i32 %70, i32* %loc_eax, align 4
  %71 = load i32, i32* %temp_ebp, align 4
  store i32 %71, i32* %loc_ecx, align 4
  %72 = load i32, i32* %loc_ecx, align 4
  %and49 = and i32 %72, 255
  %73 = load i32, i32* %loc_ebp, align 4
  %shl50 = shl i32 %73, %and49
  store i32 %shl50, i32* %loc_ebp, align 4
  %74 = load i8*, i8** %loc_ebx, align 8
  %75 = load i32, i32* %loc_ebp, align 4
  %shl51 = shl i32 %75, 2
  %idx.ext52 = zext i32 %shl51 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %74, i64 %idx.ext52
  %add.ptr54 = getelementptr inbounds i8, i8* %add.ptr53, i64 376
  store i8* %add.ptr54, i8** %loc_edx, align 8
  %76 = load i32, i32* %loc_ecx, align 4
  %and55 = and i32 %76, 255
  %cmp56 = icmp ugt i32 %and55, 5
  br i1 %cmp56, label %if.then.57, label %if.end.121

if.then.57:                                       ; preds = %if.then.45
  %77 = load i32, i32* %loc_ecx, align 4
  %and58 = and i32 %77, -256
  %78 = load i32, i32* %loc_ecx, align 4
  %and59 = and i32 %78, 255
  %sub60 = sub i32 %and59, 4
  %and61 = and i32 %sub60, 255
  %or62 = or i32 %and58, %and61
  store i32 %or62, i32* %loc_ecx, align 4
  store i32 0, i32* %loc_eax, align 4
  br label %do.body.63

do.body.63:                                       ; preds = %do.cond, %if.then.57
  %79 = load i32, i32* %bl.addr, align 4
  %cmp64 = icmp ugt i32 %79, 0
  br i1 %cmp64, label %land.lhs.true, label %if.then.79

land.lhs.true:                                    ; preds = %do.body.63
  %80 = load i32, i32* %bl.addr, align 4
  %cmp65 = icmp ule i32 4, %80
  br i1 %cmp65, label %land.lhs.true.66, label %if.then.79

land.lhs.true.66:                                 ; preds = %land.lhs.true
  %p067 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 0
  %81 = load i8*, i8** %p067, align 8
  %82 = load i8*, i8** %bs.addr, align 8
  %cmp68 = icmp uge i8* %81, %82
  br i1 %cmp68, label %land.lhs.true.69, label %if.then.79

land.lhs.true.69:                                 ; preds = %land.lhs.true.66
  %p070 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 0
  %83 = load i8*, i8** %p070, align 8
  %add.ptr71 = getelementptr inbounds i8, i8* %83, i64 4
  %84 = load i8*, i8** %bs.addr, align 8
  %85 = load i32, i32* %bl.addr, align 4
  %idx.ext72 = zext i32 %85 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %84, i64 %idx.ext72
  %cmp74 = icmp ule i8* %add.ptr71, %add.ptr73
  br i1 %cmp74, label %land.lhs.true.75, label %if.then.79

land.lhs.true.75:                                 ; preds = %land.lhs.true.69
  %p076 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 0
  %86 = load i8*, i8** %p076, align 8
  %add.ptr77 = getelementptr inbounds i8, i8* %86, i64 4
  %87 = load i8*, i8** %bs.addr, align 8
  %cmp78 = icmp ugt i8* %add.ptr77, %87
  br i1 %cmp78, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %land.lhs.true.75, %land.lhs.true.69, %land.lhs.true.66, %land.lhs.true, %do.body.63
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %land.lhs.true.75
  %p081 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 0
  %88 = load i8*, i8** %p081, align 8
  %89 = bitcast i8* %88 to i32*
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %temp_edx, align 4
  %91 = load i32, i32* %temp_edx, align 4
  %shr82 = lshr i32 %91, 24
  %92 = load i32, i32* %temp_edx, align 4
  %and83 = and i32 %92, 16711680
  %shr84 = lshr i32 %and83, 8
  %or85 = or i32 %shr82, %shr84
  %93 = load i32, i32* %temp_edx, align 4
  %and86 = and i32 %93, 65280
  %shl87 = shl i32 %and86, 8
  %or88 = or i32 %or85, %shl87
  %94 = load i32, i32* %temp_edx, align 4
  %shl89 = shl i32 %94, 24
  %or90 = or i32 %or88, %shl89
  store i32 %or90, i32* %temp_edx, align 4
  %p191 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 1
  %95 = load i32, i32* %p191, align 4
  %shr92 = lshr i32 %95, 1
  store i32 %shr92, i32* %p191, align 4
  %p293 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 2
  %96 = load i32, i32* %p293, align 4
  %97 = load i32, i32* %temp_edx, align 4
  %sub94 = sub i32 %97, %96
  store i32 %sub94, i32* %temp_edx, align 4
  %98 = load i32, i32* %loc_eax, align 4
  %shl95 = shl i32 %98, 1
  store i32 %shl95, i32* %loc_eax, align 4
  %99 = load i32, i32* %temp_edx, align 4
  %p196 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 1
  %100 = load i32, i32* %p196, align 4
  %cmp97 = icmp uge i32 %99, %100
  br i1 %cmp97, label %if.then.98, label %if.end.103

if.then.98:                                       ; preds = %if.end.80
  %p199 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 1
  %101 = load i32, i32* %p199, align 4
  store i32 %101, i32* %temp_edx, align 4
  %102 = load i32, i32* %loc_eax, align 4
  %inc100 = add i32 %102, 1
  store i32 %inc100, i32* %loc_eax, align 4
  %103 = load i32, i32* %temp_edx, align 4
  %p2101 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 2
  %104 = load i32, i32* %p2101, align 4
  %add102 = add i32 %104, %103
  store i32 %add102, i32* %p2101, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.98, %if.end.80
  %p1104 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 1
  %105 = load i32, i32* %p1104, align 4
  %and105 = and i32 %105, -16777216
  %cmp106 = icmp eq i32 %and105, 0
  br i1 %cmp106, label %if.then.107, label %if.end.113

if.then.107:                                      ; preds = %if.end.103
  %p2108 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 2
  %106 = load i32, i32* %p2108, align 4
  %shl109 = shl i32 %106, 8
  store i32 %shl109, i32* %p2108, align 4
  %p1110 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 1
  %107 = load i32, i32* %p1110, align 4
  %shl111 = shl i32 %107, 8
  store i32 %shl111, i32* %p1110, align 4
  %p0112 = getelementptr inbounds %struct.lzmastate, %struct.lzmastate* %p, i32 0, i32 0
  %108 = load i8*, i8** %p0112, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr, i8** %p0112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.107, %if.end.103
  br label %do.cond

do.cond:                                          ; preds = %if.end.113
  %109 = load i32, i32* %loc_ecx, align 4
  %dec114 = add i32 %109, -1
  store i32 %dec114, i32* %loc_ecx, align 4
  %tobool115 = icmp ne i32 %dec114, 0
  br i1 %tobool115, label %do.body.63, label %do.end

do.end:                                           ; preds = %do.cond
  %110 = load i32, i32* %loc_ecx, align 4
  %and116 = and i32 %110, -256
  %or117 = or i32 %and116, 4
  store i32 %or117, i32* %loc_ecx, align 4
  %111 = load i32, i32* %loc_eax, align 4
  %shl118 = shl i32 %111, 4
  store i32 %shl118, i32* %loc_eax, align 4
  %112 = load i32, i32* %loc_eax, align 4
  %113 = load i32, i32* %loc_ebp, align 4
  %add119 = add i32 %113, %112
  store i32 %add119, i32* %loc_ebp, align 4
  %114 = load i8*, i8** %loc_ebx, align 8
  %add.ptr120 = getelementptr inbounds i8, i8* %114, i64 24
  store i8* %add.ptr120, i8** %loc_edx, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %do.end, %if.then.45
  store i32 1, i32* %loc_eax, align 4
  %115 = load i32, i32* %loc_ecx, align 4
  %and122 = and i32 %115, 255
  %116 = load i32, i32* %loc_eax, align 4
  %shl123 = shl i32 %116, %and122
  store i32 %shl123, i32* %loc_eax, align 4
  %117 = load i8*, i8** %loc_edx, align 8
  store i8* %117, i8** %loc_ebp8, align 8
  %118 = load i32, i32* %loc_ecx, align 4
  store i32 %118, i32* %temp_ebp, align 4
  %119 = load i32, i32* %loc_eax, align 4
  store i32 %119, i32* %loc_ecx, align 4
  %120 = load i32, i32* %temp_ebp, align 4
  store i32 %120, i32* %loc_eax, align 4
  %121 = load i32, i32* %loc_ecx, align 4
  %122 = load i8*, i8** %loc_ebp8, align 8
  %123 = load i8*, i8** %bs.addr, align 8
  %124 = load i32, i32* %bl.addr, align 4
  %call124 = call i32 @lzma_upack_esi_50(%struct.lzmastate* %p, i32 1, i32 %121, i8** %loc_edx, i8* %122, i32* %loc_eax, i8* %123, i32 %124)
  %cmp125 = icmp eq i32 %call124, -1
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.121
  store i32 -1, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.end.121
  %125 = load i32, i32* %temp_ebp, align 4
  store i32 %125, i32* %loc_ecx, align 4
  %126 = load i32, i32* %loc_eax, align 4
  %shr128 = ashr i32 %126, 31
  store i32 %shr128, i32* %temp_ebp, align 4
  br label %do.body.129

do.body.129:                                      ; preds = %do.cond.134, %if.end.127
  %127 = load i32, i32* %temp_ebp, align 4
  %128 = load i32, i32* %temp_ebp, align 4
  %add130 = add i32 %128, %127
  store i32 %add130, i32* %temp_ebp, align 4
  %129 = load i32, i32* %loc_eax, align 4
  %and131 = and i32 %129, 1
  %130 = load i32, i32* %temp_ebp, align 4
  %add132 = add i32 %130, %and131
  store i32 %add132, i32* %temp_ebp, align 4
  %131 = load i32, i32* %loc_eax, align 4
  %shr133 = lshr i32 %131, 1
  store i32 %shr133, i32* %loc_eax, align 4
  br label %do.cond.134

do.cond.134:                                      ; preds = %do.body.129
  %132 = load i32, i32* %loc_ecx, align 4
  %dec135 = add i32 %132, -1
  store i32 %dec135, i32* %loc_ecx, align 4
  %tobool136 = icmp ne i32 %dec135, 0
  br i1 %tobool136, label %do.body.129, label %do.end.137

do.end.137:                                       ; preds = %do.cond.134
  %133 = load i32, i32* %temp_ebp, align 4
  %134 = load i32, i32* %loc_ebp, align 4
  %add138 = add i32 %134, %133
  store i32 %add138, i32* %loc_ebp, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %do.end.137, %if.end.42
  %135 = load i32, i32* %loc_ebp, align 4
  %inc140 = add i32 %135, 1
  store i32 %inc140, i32* %loc_ebp, align 4
  %136 = load i32, i32* %jakas_kopia, align 4
  store i32 %136, i32* %loc_ecx, align 4
  br label %if.end.218

if.else:                                          ; preds = %if.then
  %137 = load i32, i32* %loc_ecx, align 4
  %138 = load i8*, i8** %loc_edx, align 8
  %idx.ext141 = zext i32 %137 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %138, i64 %idx.ext141
  store i8* %add.ptr142, i8** %loc_edx, align 8
  %139 = load i8*, i8** %loc_edx, align 8
  %140 = load i8*, i8** %bs.addr, align 8
  %141 = load i32, i32* %bl.addr, align 4
  %call143 = call i32 @lzma_upack_esi_00(%struct.lzmastate* %p, i8* %139, i8* %140, i32 %141)
  store i32 %call143, i32* %ret, align 4
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then.145, label %if.else.166

if.then.145:                                      ; preds = %if.else
  %142 = load i8*, i8** %loc_edx, align 8
  %add.ptr146 = getelementptr inbounds i8, i8* %142, i64 96
  store i8* %add.ptr146, i8** %loc_edx, align 8
  %143 = load i8*, i8** %loc_edx, align 8
  %144 = load i8*, i8** %bs.addr, align 8
  %145 = load i32, i32* %bl.addr, align 4
  %call147 = call i32 @lzma_upack_esi_00(%struct.lzmastate* %p, i8* %143, i8* %144, i32 %145)
  store i32 %call147, i32* %ret, align 4
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then.149, label %if.else.162

if.then.149:                                      ; preds = %if.then.145
  %146 = load i32, i32* %loc_ecx, align 4
  %147 = load i8*, i8** %loc_edx, align 8
  %idx.ext150 = zext i32 %146 to i64
  %add.ptr151 = getelementptr inbounds i8, i8* %147, i64 %idx.ext150
  store i8* %add.ptr151, i8** %loc_edx, align 8
  %148 = load i8*, i8** %loc_edx, align 8
  %149 = load i8*, i8** %bs.addr, align 8
  %150 = load i32, i32* %bl.addr, align 4
  %call152 = call i32 @lzma_upack_esi_00(%struct.lzmastate* %p, i8* %148, i8* %149, i32 %150)
  store i32 %call152, i32* %ret, align 4
  %151 = load i32, i32* %loc_ebp, align 4
  store i32 %151, i32* %temp_ebp, align 4
  %arrayidx153 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 4
  %152 = load i32, i32* %arrayidx153, align 4
  store i32 %152, i32* %loc_ebp, align 4
  %arrayidx154 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 3
  %153 = load i32, i32* %arrayidx154, align 4
  %arrayidx155 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 4
  store i32 %153, i32* %arrayidx155, align 4
  %154 = load i32, i32* %temp_ebp, align 4
  %arrayidx156 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 3
  store i32 %154, i32* %arrayidx156, align 4
  %155 = load i32, i32* %ret, align 4
  %tobool157 = icmp ne i32 %155, 0
  br i1 %tobool157, label %if.then.158, label %if.end.161

if.then.158:                                      ; preds = %if.then.149
  %156 = load i32, i32* %loc_ebp, align 4
  store i32 %156, i32* %temp_ebp, align 4
  %arrayidx159 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 5
  %157 = load i32, i32* %arrayidx159, align 4
  store i32 %157, i32* %loc_ebp, align 4
  %158 = load i32, i32* %temp_ebp, align 4
  %arrayidx160 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 5
  store i32 %158, i32* %arrayidx160, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %if.then.149
  br label %if.end.165

if.else.162:                                      ; preds = %if.then.145
  %159 = load i32, i32* %loc_ebp, align 4
  store i32 %159, i32* %temp_ebp, align 4
  %arrayidx163 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 3
  %160 = load i32, i32* %arrayidx163, align 4
  store i32 %160, i32* %loc_ebp, align 4
  %161 = load i32, i32* %temp_ebp, align 4
  %arrayidx164 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 3
  store i32 %161, i32* %arrayidx164, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.162, %if.end.161
  br label %if.end.211

if.else.166:                                      ; preds = %if.else
  %162 = load i32, i32* %loc_ecx, align 4
  %163 = load i8*, i8** %loc_edx, align 8
  %idx.ext167 = zext i32 %162 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %163, i64 %idx.ext167
  store i8* %add.ptr168, i8** %loc_edx, align 8
  %164 = load i8*, i8** %loc_edx, align 8
  %165 = load i8*, i8** %bs.addr, align 8
  %166 = load i32, i32* %bl.addr, align 4
  %call169 = call i32 @lzma_upack_esi_00(%struct.lzmastate* %p, i8* %164, i8* %165, i32 %166)
  store i32 %call169, i32* %ret, align 4
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %if.else.166
  br label %if.end.210

if.else.172:                                      ; preds = %if.else.166
  %167 = load i32, i32* %loc_eax, align 4
  %or173 = or i32 %167, 1
  store i32 %or173, i32* %loc_eax, align 4
  %168 = load i32, i32* %loc_eax, align 4
  store i32 %168, i32* %eax_copy, align 4
  %169 = load i8*, i8** %loc_edi, align 8
  store i8* %169, i8** %edi_copy, align 8
  %arrayidx174 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 2
  %170 = load i32, i32* %arrayidx174, align 4
  %171 = load i8*, i8** %edi_copy, align 8
  %idx.ext175 = zext i32 %170 to i64
  %idx.neg = sub i64 0, %idx.ext175
  %add.ptr176 = getelementptr inbounds i8, i8* %171, i64 %idx.neg
  store i8* %add.ptr176, i8** %edi_copy, align 8
  %172 = load i32, i32* %loc_ecx, align 4
  %and177 = and i32 %172, -256
  %or178 = or i32 %and177, 128
  store i32 %or178, i32* %loc_ecx, align 4
  %173 = load i32, i32* %bl.addr, align 4
  %cmp179 = icmp ugt i32 %173, 0
  br i1 %cmp179, label %land.lhs.true.180, label %if.then.205

land.lhs.true.180:                                ; preds = %if.else.172
  %174 = load i32, i32* %bl.addr, align 4
  %cmp181 = icmp ule i32 1, %174
  br i1 %cmp181, label %land.lhs.true.182, label %if.then.205

land.lhs.true.182:                                ; preds = %land.lhs.true.180
  %175 = load i8*, i8** %edi_copy, align 8
  %176 = load i8*, i8** %bs.addr, align 8
  %cmp183 = icmp uge i8* %175, %176
  br i1 %cmp183, label %land.lhs.true.184, label %if.then.205

land.lhs.true.184:                                ; preds = %land.lhs.true.182
  %177 = load i8*, i8** %edi_copy, align 8
  %add.ptr185 = getelementptr inbounds i8, i8* %177, i64 1
  %178 = load i8*, i8** %bs.addr, align 8
  %179 = load i32, i32* %bl.addr, align 4
  %idx.ext186 = zext i32 %179 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %178, i64 %idx.ext186
  %cmp188 = icmp ule i8* %add.ptr185, %add.ptr187
  br i1 %cmp188, label %land.lhs.true.189, label %if.then.205

land.lhs.true.189:                                ; preds = %land.lhs.true.184
  %180 = load i8*, i8** %edi_copy, align 8
  %add.ptr190 = getelementptr inbounds i8, i8* %180, i64 1
  %181 = load i8*, i8** %bs.addr, align 8
  %cmp191 = icmp ugt i8* %add.ptr190, %181
  br i1 %cmp191, label %lor.lhs.false, label %if.then.205

lor.lhs.false:                                    ; preds = %land.lhs.true.189
  %182 = load i32, i32* %bl.addr, align 4
  %cmp192 = icmp ugt i32 %182, 0
  br i1 %cmp192, label %land.lhs.true.193, label %if.then.205

land.lhs.true.193:                                ; preds = %lor.lhs.false
  %183 = load i32, i32* %bl.addr, align 4
  %cmp194 = icmp ule i32 1, %183
  br i1 %cmp194, label %land.lhs.true.195, label %if.then.205

land.lhs.true.195:                                ; preds = %land.lhs.true.193
  %184 = load i8*, i8** %loc_edi, align 8
  %185 = load i8*, i8** %bs.addr, align 8
  %cmp196 = icmp uge i8* %184, %185
  br i1 %cmp196, label %land.lhs.true.197, label %if.then.205

land.lhs.true.197:                                ; preds = %land.lhs.true.195
  %186 = load i8*, i8** %loc_edi, align 8
  %add.ptr198 = getelementptr inbounds i8, i8* %186, i64 1
  %187 = load i8*, i8** %bs.addr, align 8
  %188 = load i32, i32* %bl.addr, align 4
  %idx.ext199 = zext i32 %188 to i64
  %add.ptr200 = getelementptr inbounds i8, i8* %187, i64 %idx.ext199
  %cmp201 = icmp ule i8* %add.ptr198, %add.ptr200
  br i1 %cmp201, label %land.lhs.true.202, label %if.then.205

land.lhs.true.202:                                ; preds = %land.lhs.true.197
  %189 = load i8*, i8** %loc_edi, align 8
  %add.ptr203 = getelementptr inbounds i8, i8* %189, i64 1
  %190 = load i8*, i8** %bs.addr, align 8
  %cmp204 = icmp ugt i8* %add.ptr203, %190
  br i1 %cmp204, label %if.end.206, label %if.then.205

if.then.205:                                      ; preds = %land.lhs.true.202, %land.lhs.true.197, %land.lhs.true.195, %land.lhs.true.193, %lor.lhs.false, %land.lhs.true.189, %land.lhs.true.184, %land.lhs.true.182, %land.lhs.true.180, %if.else.172
  store i32 -1, i32* %retval
  br label %return

if.end.206:                                       ; preds = %land.lhs.true.202
  %191 = load i8*, i8** %edi_copy, align 8
  %192 = load i8, i8* %191, align 1
  %conv = zext i8 %192 to i32
  %and207 = and i32 %conv, 255
  store i32 %and207, i32* %loc_al, align 4
  %193 = load i32, i32* %loc_al, align 4
  %conv208 = trunc i32 %193 to i8
  %194 = load i8*, i8** %loc_edi, align 8
  %incdec.ptr209 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %incdec.ptr209, i8** %loc_edi, align 8
  store i8 %conv208, i8* %194, align 1
  br label %do.cond.444

if.end.210:                                       ; preds = %if.then.171
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.165
  %195 = load i32, i32* %loc_eax, align 4
  store i32 %195, i32* %eax_copy, align 4
  %196 = load i8*, i8** %loc_ebx, align 8
  %add.ptr212 = getelementptr inbounds i8, i8* %196, i64 1912
  store i8* %add.ptr212, i8** %loc_edx, align 8
  %197 = load i32, i32* %loc_eax, align 4
  %198 = load i8*, i8** %bs.addr, align 8
  %199 = load i32, i32* %bl.addr, align 4
  %call213 = call i32 @lzma_upack_esi_54(%struct.lzmastate* %p, i32 %197, i32* %loc_ecx, i8** %loc_edx, i32* %temp, i8* %198, i32 %199)
  %cmp214 = icmp eq i32 %call213, -1
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.end.211
  store i32 -1, i32* %retval
  br label %return

if.end.217:                                       ; preds = %if.end.211
  %200 = load i32, i32* %loc_ecx, align 4
  store i32 %200, i32* %loc_eax, align 4
  %201 = load i32, i32* %temp, align 4
  store i32 %201, i32* %loc_ecx, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.end.139
  %202 = load i32, i32* %bl.addr, align 4
  %cmp219 = icmp ugt i32 %202, 0
  br i1 %cmp219, label %land.lhs.true.221, label %if.then.279

land.lhs.true.221:                                ; preds = %if.end.218
  %203 = load i32, i32* %loc_ecx, align 4
  %cmp222 = icmp ugt i32 %203, 0
  br i1 %cmp222, label %land.lhs.true.224, label %if.then.279

land.lhs.true.224:                                ; preds = %land.lhs.true.221
  %204 = load i32, i32* %loc_ecx, align 4
  %205 = load i32, i32* %bl.addr, align 4
  %cmp225 = icmp ule i32 %204, %205
  br i1 %cmp225, label %land.lhs.true.227, label %if.then.279

land.lhs.true.227:                                ; preds = %land.lhs.true.224
  %206 = load i8*, i8** %loc_edi, align 8
  %207 = load i8*, i8** %bs.addr, align 8
  %cmp228 = icmp uge i8* %206, %207
  br i1 %cmp228, label %land.lhs.true.230, label %if.then.279

land.lhs.true.230:                                ; preds = %land.lhs.true.227
  %208 = load i8*, i8** %loc_edi, align 8
  %209 = load i32, i32* %loc_ecx, align 4
  %idx.ext231 = zext i32 %209 to i64
  %add.ptr232 = getelementptr inbounds i8, i8* %208, i64 %idx.ext231
  %210 = load i8*, i8** %bs.addr, align 8
  %211 = load i32, i32* %bl.addr, align 4
  %idx.ext233 = zext i32 %211 to i64
  %add.ptr234 = getelementptr inbounds i8, i8* %210, i64 %idx.ext233
  %cmp235 = icmp ule i8* %add.ptr232, %add.ptr234
  br i1 %cmp235, label %land.lhs.true.237, label %if.then.279

land.lhs.true.237:                                ; preds = %land.lhs.true.230
  %212 = load i8*, i8** %loc_edi, align 8
  %213 = load i32, i32* %loc_ecx, align 4
  %idx.ext238 = zext i32 %213 to i64
  %add.ptr239 = getelementptr inbounds i8, i8* %212, i64 %idx.ext238
  %214 = load i8*, i8** %bs.addr, align 8
  %cmp240 = icmp ugt i8* %add.ptr239, %214
  br i1 %cmp240, label %lor.lhs.false.242, label %if.then.279

lor.lhs.false.242:                                ; preds = %land.lhs.true.237
  %215 = load i32, i32* %bl.addr, align 4
  %cmp243 = icmp ugt i32 %215, 0
  br i1 %cmp243, label %land.lhs.true.245, label %if.then.279

land.lhs.true.245:                                ; preds = %lor.lhs.false.242
  %216 = load i32, i32* %loc_ecx, align 4
  %add246 = add i32 %216, 1
  %cmp247 = icmp ugt i32 %add246, 0
  br i1 %cmp247, label %land.lhs.true.249, label %if.then.279

land.lhs.true.249:                                ; preds = %land.lhs.true.245
  %217 = load i32, i32* %loc_ecx, align 4
  %add250 = add i32 %217, 1
  %218 = load i32, i32* %bl.addr, align 4
  %cmp251 = icmp ule i32 %add250, %218
  br i1 %cmp251, label %land.lhs.true.253, label %if.then.279

land.lhs.true.253:                                ; preds = %land.lhs.true.249
  %219 = load i8*, i8** %loc_edi, align 8
  %220 = load i32, i32* %loc_ebp, align 4
  %idx.ext254 = zext i32 %220 to i64
  %idx.neg255 = sub i64 0, %idx.ext254
  %add.ptr256 = getelementptr inbounds i8, i8* %219, i64 %idx.neg255
  %221 = load i8*, i8** %bs.addr, align 8
  %cmp257 = icmp uge i8* %add.ptr256, %221
  br i1 %cmp257, label %land.lhs.true.259, label %if.then.279

land.lhs.true.259:                                ; preds = %land.lhs.true.253
  %222 = load i8*, i8** %loc_edi, align 8
  %223 = load i32, i32* %loc_ebp, align 4
  %idx.ext260 = zext i32 %223 to i64
  %idx.neg261 = sub i64 0, %idx.ext260
  %add.ptr262 = getelementptr inbounds i8, i8* %222, i64 %idx.neg261
  %224 = load i32, i32* %loc_ecx, align 4
  %idx.ext263 = zext i32 %224 to i64
  %add.ptr264 = getelementptr inbounds i8, i8* %add.ptr262, i64 %idx.ext263
  %add.ptr265 = getelementptr inbounds i8, i8* %add.ptr264, i64 1
  %225 = load i8*, i8** %bs.addr, align 8
  %226 = load i32, i32* %bl.addr, align 4
  %idx.ext266 = zext i32 %226 to i64
  %add.ptr267 = getelementptr inbounds i8, i8* %225, i64 %idx.ext266
  %cmp268 = icmp ule i8* %add.ptr265, %add.ptr267
  br i1 %cmp268, label %land.lhs.true.270, label %if.then.279

land.lhs.true.270:                                ; preds = %land.lhs.true.259
  %227 = load i8*, i8** %loc_edi, align 8
  %228 = load i32, i32* %loc_ebp, align 4
  %idx.ext271 = zext i32 %228 to i64
  %idx.neg272 = sub i64 0, %idx.ext271
  %add.ptr273 = getelementptr inbounds i8, i8* %227, i64 %idx.neg272
  %229 = load i32, i32* %loc_ecx, align 4
  %idx.ext274 = zext i32 %229 to i64
  %add.ptr275 = getelementptr inbounds i8, i8* %add.ptr273, i64 %idx.ext274
  %add.ptr276 = getelementptr inbounds i8, i8* %add.ptr275, i64 1
  %230 = load i8*, i8** %bs.addr, align 8
  %cmp277 = icmp ugt i8* %add.ptr276, %230
  br i1 %cmp277, label %if.end.280, label %if.then.279

if.then.279:                                      ; preds = %land.lhs.true.270, %land.lhs.true.259, %land.lhs.true.253, %land.lhs.true.249, %land.lhs.true.245, %lor.lhs.false.242, %land.lhs.true.237, %land.lhs.true.230, %land.lhs.true.227, %land.lhs.true.224, %land.lhs.true.221, %if.end.218
  store i32 -1, i32* %retval
  br label %return

if.end.280:                                       ; preds = %land.lhs.true.270
  %231 = load i32, i32* %loc_ebp, align 4
  %arrayidx281 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 2
  store i32 %231, i32* %arrayidx281, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.289, %if.end.280
  %232 = load i32, i32* %i, align 4
  %233 = load i32, i32* %loc_ecx, align 4
  %cmp283 = icmp ult i32 %232, %233
  br i1 %cmp283, label %for.body.285, label %for.end.292

for.body.285:                                     ; preds = %for.cond.282
  %234 = load i8*, i8** %loc_edi, align 8
  %235 = load i32, i32* %loc_ebp, align 4
  %idx.ext286 = zext i32 %235 to i64
  %idx.neg287 = sub i64 0, %idx.ext286
  %add.ptr288 = getelementptr inbounds i8, i8* %234, i64 %idx.neg287
  %236 = load i8, i8* %add.ptr288, align 1
  %237 = load i8*, i8** %loc_edi, align 8
  store i8 %236, i8* %237, align 1
  br label %for.inc.289

for.inc.289:                                      ; preds = %for.body.285
  %238 = load i32, i32* %i, align 4
  %inc290 = add i32 %238, 1
  store i32 %inc290, i32* %i, align 4
  %239 = load i8*, i8** %loc_edi, align 8
  %incdec.ptr291 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %incdec.ptr291, i8** %loc_edi, align 8
  br label %for.cond.282

for.end.292:                                      ; preds = %for.cond.282
  %240 = load i32, i32* %loc_eax, align 4
  %and293 = and i32 %240, -256
  %241 = load i8*, i8** %loc_edi, align 8
  %242 = load i32, i32* %loc_ebp, align 4
  %idx.ext294 = zext i32 %242 to i64
  %idx.neg295 = sub i64 0, %idx.ext294
  %add.ptr296 = getelementptr inbounds i8, i8* %241, i64 %idx.neg295
  %243 = load i8, i8* %add.ptr296, align 1
  %conv297 = zext i8 %243 to i32
  %or298 = or i32 %and293, %conv297
  store i32 %or298, i32* %loc_eax, align 4
  store i32 128, i32* %loc_ecx, align 4
  br label %if.end.420

if.else.299:                                      ; preds = %do.body
  br label %do.body.300

do.body.300:                                      ; preds = %do.cond.311, %if.else.299
  %244 = load i32, i32* %loc_eax, align 4
  %and301 = and i32 %244, 255
  store i32 %and301, i32* %loc_al, align 4
  %add302 = add i32 %and301, 253
  %cmp303 = icmp ugt i32 %add302, 255
  br i1 %cmp303, label %if.then.305, label %if.else.307

if.then.305:                                      ; preds = %do.body.300
  %245 = load i32, i32* %loc_al, align 4
  %sub306 = sub i32 %245, 3
  store i32 %sub306, i32* %loc_al, align 4
  br label %if.end.308

if.else.307:                                      ; preds = %do.body.300
  store i32 0, i32* %loc_al, align 4
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.307, %if.then.305
  %246 = load i32, i32* %loc_eax, align 4
  %and309 = and i32 %246, -256
  %247 = load i32, i32* %loc_al, align 4
  %or310 = or i32 %and309, %247
  store i32 %or310, i32* %loc_eax, align 4
  br label %do.cond.311

do.cond.311:                                      ; preds = %if.end.308
  %248 = load i32, i32* %loc_al, align 4
  %cmp312 = icmp uge i32 %248, 7
  br i1 %cmp312, label %do.body.300, label %do.end.314

do.end.314:                                       ; preds = %do.cond.311
  %249 = load i32, i32* %loc_eax, align 4
  store i32 %249, i32* %eax_copy, align 4
  %250 = load i8*, i8** %loc_edi, align 8
  %251 = load i8*, i8** %init_edi.addr, align 8
  %cmp315 = icmp ugt i8* %250, %251
  br i1 %cmp315, label %land.lhs.true.317, label %if.else.326

land.lhs.true.317:                                ; preds = %do.end.314
  %252 = load i8*, i8** %loc_edi, align 8
  %253 = load i32, i32* %bl.addr, align 4
  %254 = load i8*, i8** %bs.addr, align 8
  %idx.ext318 = zext i32 %253 to i64
  %add.ptr319 = getelementptr inbounds i8, i8* %254, i64 %idx.ext318
  %cmp320 = icmp ult i8* %252, %add.ptr319
  br i1 %cmp320, label %if.then.322, label %if.else.326

if.then.322:                                      ; preds = %land.lhs.true.317
  %255 = load i8*, i8** %loc_edi, align 8
  %add.ptr323 = getelementptr inbounds i8, i8* %255, i64 -1
  %256 = load i8, i8* %add.ptr323, align 1
  %conv324 = zext i8 %256 to i32
  %257 = load i32, i32* %shlsize.addr, align 4
  %shr325 = ashr i32 %conv324, %257
  store i32 %shr325, i32* %loc_ebp, align 4
  br label %if.end.327

if.else.326:                                      ; preds = %land.lhs.true.317, %do.end.314
  store i32 0, i32* %loc_ebp, align 4
  br label %if.end.327

if.end.327:                                       ; preds = %if.else.326, %if.then.322
  %258 = load i32, i32* %loc_ebp, align 4
  %mul = mul i32 %258, 768
  store i32 %mul, i32* %loc_ebp, align 4
  %259 = load i8*, i8** %loc_ebx, align 8
  %260 = load i32, i32* %loc_ebp, align 4
  %shl328 = shl i32 %260, 2
  %add329 = add i32 %shl328, 4104
  %idx.ext330 = zext i32 %add329 to i64
  %add.ptr331 = getelementptr inbounds i8, i8* %259, i64 %idx.ext330
  store i8* %add.ptr331, i8** %loc_ebp8, align 8
  %261 = load i8*, i8** %loc_edi, align 8
  store i8* %261, i8** %edi_copy, align 8
  %262 = load i32, i32* %loc_eax, align 4
  %and332 = and i32 %262, -256
  %or333 = or i32 %and332, 1
  store i32 %or333, i32* %loc_eax, align 4
  %263 = load i32, i32* %loc_ecx, align 4
  %tobool334 = icmp ne i32 %263, 0
  br i1 %tobool334, label %if.then.335, label %if.else.411

if.then.335:                                      ; preds = %if.end.327
  %264 = load i32, i32* %loc_ecx, align 4
  %and336 = and i32 %264, 255
  %conv337 = trunc i32 %and336 to i8
  store i8 %conv337, i8* %loc_cl, align 1
  %arrayidx338 = getelementptr inbounds [6 x i32], [6 x i32]* %state, i32 0, i64 2
  %265 = load i32, i32* %arrayidx338, align 4
  %266 = load i8*, i8** %loc_edi, align 8
  %idx.ext339 = zext i32 %265 to i64
  %idx.neg340 = sub i64 0, %idx.ext339
  %add.ptr341 = getelementptr inbounds i8, i8* %266, i64 %idx.neg340
  store i8* %add.ptr341, i8** %loc_edi, align 8
  %267 = load i32, i32* %bl.addr, align 4
  %cmp342 = icmp ugt i32 %267, 0
  br i1 %cmp342, label %land.lhs.true.344, label %if.then.360

land.lhs.true.344:                                ; preds = %if.then.335
  %268 = load i32, i32* %bl.addr, align 4
  %cmp345 = icmp ule i32 1, %268
  br i1 %cmp345, label %land.lhs.true.347, label %if.then.360

land.lhs.true.347:                                ; preds = %land.lhs.true.344
  %269 = load i8*, i8** %loc_edi, align 8
  %270 = load i8*, i8** %bs.addr, align 8
  %cmp348 = icmp uge i8* %269, %270
  br i1 %cmp348, label %land.lhs.true.350, label %if.then.360

land.lhs.true.350:                                ; preds = %land.lhs.true.347
  %271 = load i8*, i8** %loc_edi, align 8
  %add.ptr351 = getelementptr inbounds i8, i8* %271, i64 1
  %272 = load i8*, i8** %bs.addr, align 8
  %273 = load i32, i32* %bl.addr, align 4
  %idx.ext352 = zext i32 %273 to i64
  %add.ptr353 = getelementptr inbounds i8, i8* %272, i64 %idx.ext352
  %cmp354 = icmp ule i8* %add.ptr351, %add.ptr353
  br i1 %cmp354, label %land.lhs.true.356, label %if.then.360

land.lhs.true.356:                                ; preds = %land.lhs.true.350
  %274 = load i8*, i8** %loc_edi, align 8
  %add.ptr357 = getelementptr inbounds i8, i8* %274, i64 1
  %275 = load i8*, i8** %bs.addr, align 8
  %cmp358 = icmp ugt i8* %add.ptr357, %275
  br i1 %cmp358, label %if.end.361, label %if.then.360

if.then.360:                                      ; preds = %land.lhs.true.356, %land.lhs.true.350, %land.lhs.true.347, %land.lhs.true.344, %if.then.335
  store i32 -1, i32* %retval
  br label %return

if.end.361:                                       ; preds = %land.lhs.true.356
  br label %do.body.362

do.body.362:                                      ; preds = %do.cond.409, %if.end.361
  %276 = load i32, i32* %loc_eax, align 4
  %and363 = and i32 %276, -65281
  %277 = load i8*, i8** %loc_edi, align 8
  %278 = load i8, i8* %277, align 1
  %conv364 = sext i8 %278 to i32
  %279 = load i8, i8* %loc_cl, align 1
  %conv365 = zext i8 %279 to i32
  %and366 = and i32 %conv364, %conv365
  %tobool367 = icmp ne i32 %and366, 0
  %cond368 = select i1 %tobool367, i32 512, i32 256
  %or369 = or i32 %and363, %cond368
  store i32 %or369, i32* %loc_eax, align 4
  %280 = load i8*, i8** %loc_ebp8, align 8
  %281 = load i32, i32* %loc_eax, align 4
  %shl370 = shl i32 %281, 2
  %idx.ext371 = zext i32 %shl370 to i64
  %add.ptr372 = getelementptr inbounds i8, i8* %280, i64 %idx.ext371
  store i8* %add.ptr372, i8** %loc_edx, align 8
  %282 = load i8*, i8** %loc_edx, align 8
  %283 = load i8*, i8** %bs.addr, align 8
  %284 = load i32, i32* %bl.addr, align 4
  %call373 = call i32 @lzma_upack_esi_00(%struct.lzmastate* %p, i8* %282, i8* %283, i32 %284)
  store i32 %call373, i32* %ret, align 4
  %285 = load i32, i32* %loc_eax, align 4
  %and374 = and i32 %285, 255
  store i32 %and374, i32* %loc_al, align 4
  %286 = load i32, i32* %loc_al, align 4
  %287 = load i32, i32* %loc_al, align 4
  %add375 = add i32 %287, %286
  store i32 %add375, i32* %loc_al, align 4
  %288 = load i32, i32* %ret, align 4
  %289 = load i32, i32* %loc_al, align 4
  %add376 = add i32 %289, %288
  store i32 %add376, i32* %loc_al, align 4
  %290 = load i32, i32* %loc_al, align 4
  %and377 = and i32 %290, 255
  store i32 %and377, i32* %loc_al, align 4
  %291 = load i32, i32* %loc_eax, align 4
  %and378 = and i32 %291, -256
  %292 = load i32, i32* %loc_al, align 4
  %or379 = or i32 %and378, %292
  store i32 %or379, i32* %loc_eax, align 4
  %293 = load i8, i8* %loc_cl, align 1
  %conv380 = zext i8 %293 to i32
  %shr381 = ashr i32 %conv380, 1
  %conv382 = trunc i32 %shr381 to i8
  store i8 %conv382, i8* %loc_cl, align 1
  %294 = load i8, i8* %loc_cl, align 1
  %tobool383 = icmp ne i8 %294, 0
  br i1 %tobool383, label %if.then.384, label %if.else.407

if.then.384:                                      ; preds = %do.body.362
  %295 = load i32, i32* %loc_eax, align 4
  %shr385 = lshr i32 %295, 8
  %and386 = and i32 %shr385, 255
  %conv387 = trunc i32 %and386 to i8
  store i8 %conv387, i8* %loc_ah, align 1
  %296 = load i32, i32* %loc_al, align 4
  %297 = load i8, i8* %loc_ah, align 1
  %conv388 = zext i8 %297 to i32
  %sub389 = sub i32 %conv388, %296
  %conv390 = trunc i32 %sub389 to i8
  store i8 %conv390, i8* %loc_ah, align 1
  %298 = load i8, i8* %loc_ah, align 1
  %conv391 = zext i8 %298 to i32
  %and392 = and i32 %conv391, 1
  %conv393 = trunc i32 %and392 to i8
  store i8 %conv393, i8* %loc_ah, align 1
  %299 = load i8, i8* %loc_ah, align 1
  %tobool394 = icmp ne i8 %299, 0
  br i1 %tobool394, label %if.end.406, label %if.then.395

if.then.395:                                      ; preds = %if.then.384
  %300 = load i32, i32* %loc_eax, align 4
  %and396 = and i32 %300, -65536
  %301 = load i8, i8* %loc_ah, align 1
  %conv397 = zext i8 %301 to i32
  %shl398 = shl i32 %conv397, 8
  %or399 = or i32 %and396, %shl398
  %302 = load i32, i32* %loc_al, align 4
  %or400 = or i32 %or399, %302
  store i32 %or400, i32* %loc_eax, align 4
  %303 = load i32, i32* %loc_eax, align 4
  %304 = load i8*, i8** %loc_ebp8, align 8
  %305 = load i8*, i8** %bs.addr, align 8
  %306 = load i32, i32* %bl.addr, align 4
  %call401 = call i32 @lzma_upack_esi_50(%struct.lzmastate* %p, i32 %303, i32 256, i8** %loc_edx, i8* %304, i32* %loc_eax, i8* %305, i32 %306)
  %cmp402 = icmp eq i32 %call401, -1
  br i1 %cmp402, label %if.then.404, label %if.end.405

if.then.404:                                      ; preds = %if.then.395
  store i32 -1, i32* %retval
  br label %return

if.end.405:                                       ; preds = %if.then.395
  br label %do.end.410

if.end.406:                                       ; preds = %if.then.384
  br label %if.end.408

if.else.407:                                      ; preds = %do.body.362
  br label %do.end.410

if.end.408:                                       ; preds = %if.end.406
  br label %do.cond.409

do.cond.409:                                      ; preds = %if.end.408
  br i1 true, label %do.body.362, label %do.end.410

do.end.410:                                       ; preds = %do.cond.409, %if.else.407, %if.end.405
  br label %if.end.419

if.else.411:                                      ; preds = %if.end.327
  %307 = load i32, i32* %loc_ecx, align 4
  %and412 = and i32 %307, -65281
  %or413 = or i32 %and412, 256
  store i32 %or413, i32* %loc_ecx, align 4
  %308 = load i32, i32* %loc_eax, align 4
  %309 = load i32, i32* %loc_ecx, align 4
  %310 = load i8*, i8** %loc_ebp8, align 8
  %311 = load i8*, i8** %bs.addr, align 8
  %312 = load i32, i32* %bl.addr, align 4
  %call414 = call i32 @lzma_upack_esi_50(%struct.lzmastate* %p, i32 %308, i32 %309, i8** %loc_edx, i8* %310, i32* %loc_eax, i8* %311, i32 %312)
  %cmp415 = icmp eq i32 %call414, -1
  br i1 %cmp415, label %if.then.417, label %if.end.418

if.then.417:                                      ; preds = %if.else.411
  store i32 -1, i32* %retval
  br label %return

if.end.418:                                       ; preds = %if.else.411
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.418, %do.end.410
  store i32 0, i32* %loc_ecx, align 4
  %313 = load i8*, i8** %edi_copy, align 8
  store i8* %313, i8** %loc_edi, align 8
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %for.end.292
  %314 = load i32, i32* %bl.addr, align 4
  %cmp421 = icmp ugt i32 %314, 0
  br i1 %cmp421, label %land.lhs.true.423, label %if.then.439

land.lhs.true.423:                                ; preds = %if.end.420
  %315 = load i32, i32* %bl.addr, align 4
  %cmp424 = icmp ule i32 1, %315
  br i1 %cmp424, label %land.lhs.true.426, label %if.then.439

land.lhs.true.426:                                ; preds = %land.lhs.true.423
  %316 = load i8*, i8** %loc_edi, align 8
  %317 = load i8*, i8** %bs.addr, align 8
  %cmp427 = icmp uge i8* %316, %317
  br i1 %cmp427, label %land.lhs.true.429, label %if.then.439

land.lhs.true.429:                                ; preds = %land.lhs.true.426
  %318 = load i8*, i8** %loc_edi, align 8
  %add.ptr430 = getelementptr inbounds i8, i8* %318, i64 1
  %319 = load i8*, i8** %bs.addr, align 8
  %320 = load i32, i32* %bl.addr, align 4
  %idx.ext431 = zext i32 %320 to i64
  %add.ptr432 = getelementptr inbounds i8, i8* %319, i64 %idx.ext431
  %cmp433 = icmp ule i8* %add.ptr430, %add.ptr432
  br i1 %cmp433, label %land.lhs.true.435, label %if.then.439

land.lhs.true.435:                                ; preds = %land.lhs.true.429
  %321 = load i8*, i8** %loc_edi, align 8
  %add.ptr436 = getelementptr inbounds i8, i8* %321, i64 1
  %322 = load i8*, i8** %bs.addr, align 8
  %cmp437 = icmp ugt i8* %add.ptr436, %322
  br i1 %cmp437, label %if.end.440, label %if.then.439

if.then.439:                                      ; preds = %land.lhs.true.435, %land.lhs.true.429, %land.lhs.true.426, %land.lhs.true.423, %if.end.420
  store i32 -1, i32* %retval
  br label %return

if.end.440:                                       ; preds = %land.lhs.true.435
  %323 = load i32, i32* %loc_eax, align 4
  %and441 = and i32 %323, 255
  %conv442 = trunc i32 %and441 to i8
  %324 = load i8*, i8** %loc_edi, align 8
  %incdec.ptr443 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %incdec.ptr443, i8** %loc_edi, align 8
  store i8 %conv442, i8* %324, align 1
  br label %do.cond.444

do.cond.444:                                      ; preds = %if.end.440, %if.end.206
  %325 = load i8*, i8** %loc_edi, align 8
  %326 = load i8*, i8** %end_edi.addr, align 8
  %cmp445 = icmp ult i8* %325, %326
  br i1 %cmp445, label %do.body, label %do.end.447

do.end.447:                                       ; preds = %do.cond.444
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.447, %if.then.439, %if.then.417, %if.then.404, %if.then.360, %if.then.279, %if.then.216, %if.then.205, %if.then.126, %if.then.79, %if.then.41, %if.then.30
  %327 = load i32, i32* %retval
  ret i32 %327
}

declare i32 @cli_rebuildpe(i8*, %struct.cli_exe_section*, i32, i32, i32, i32, i32, i32) #1

declare i32 @lzma_upack_esi_00(%struct.lzmastate*, i8*, i8*, i32) #1

declare i32 @lzma_upack_esi_54(%struct.lzmastate*, i32, i32*, i8**, i32*, i8*, i32) #1

declare i32 @lzma_upack_esi_50(%struct.lzmastate*, i32, i32, i8**, i8*, i32*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
