; ModuleID = './src/unexelf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Elf64_Ehdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf64_Phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.Elf64_Shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Elf64_Sym = type { i32, i8, i8, i16, i64, i64 }
%struct.Elf64_Rel = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Can't open %s for reading: %s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't fstat (%s): %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"File size out of range\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Can't allocate buffer for %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Didn't read all of %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"no bss section found\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c".bss shrank when undumping\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Can't creat (%s): %s\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Can't ftruncate (%s): %s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c".sdata\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c".lit4\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c".lit8\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c".sdata1\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c".data1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"_end\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"_edata\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"edata\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Didn't write %lu bytes to %s: %s\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Can't close (%s): %s\00", align 1

; Function Attrs: nounwind uwtable
define void @unexec(i8* %new_name, i8* %old_name) #0 {
entry:
  %new_name.addr = alloca i8*, align 8
  %old_name.addr = alloca i8*, align 8
  %new_file = alloca i32, align 4
  %old_file = alloca i32, align 4
  %new_file_size = alloca i64, align 8
  %new_break = alloca i8*, align 8
  %old_base = alloca i8*, align 8
  %new_base = alloca i8*, align 8
  %old_file_h = alloca %struct.Elf64_Ehdr*, align 8
  %new_file_h = alloca %struct.Elf64_Ehdr*, align 8
  %old_program_h = alloca %struct.Elf64_Phdr*, align 8
  %new_program_h = alloca %struct.Elf64_Phdr*, align 8
  %old_section_h = alloca %struct.Elf64_Shdr*, align 8
  %new_section_h = alloca %struct.Elf64_Shdr*, align 8
  %old_section_names = alloca i8*, align 8
  %new_section_names = alloca i8*, align 8
  %old_bss_seg = alloca %struct.Elf64_Phdr*, align 8
  %new_bss_seg = alloca %struct.Elf64_Phdr*, align 8
  %old_bss_addr = alloca i64, align 8
  %new_bss_addr = alloca i64, align 8
  %old_bss_size = alloca i32, align 4
  %bss_size_growth = alloca i32, align 4
  %new_data2_size = alloca i32, align 4
  %old_bss_offset = alloca i64, align 8
  %new_data2_offset = alloca i64, align 8
  %n = alloca i64, align 8
  %old_bss_index = alloca i64, align 8
  %stat_buf = alloca %struct.stat, align 8
  %old_file_size = alloca i64, align 8
  %seg = alloca %struct.Elf64_Phdr*, align 8
  %shdr = alloca %struct.Elf64_Shdr*, align 8
  %src = alloca i8*, align 8
  %old_shdr = alloca %struct.Elf64_Shdr*, align 8
  %new_shdr = alloca %struct.Elf64_Shdr*, align 8
  %symnames = alloca i8*, align 8
  %symp = alloca %struct.Elf64_Sym*, align 8
  %symendp = alloca %struct.Elf64_Sym*, align 8
  %sym_shdr = alloca %struct.Elf64_Shdr*, align 8
  %old_shdr348 = alloca %struct.Elf64_Shdr*, align 8
  %new_shdr352 = alloca %struct.Elf64_Shdr*, align 8
  %rel_shdr = alloca %struct.Elf64_Shdr*, align 8
  %shdr379 = alloca %struct.Elf64_Shdr*, align 8
  %offset = alloca i64, align 8
  %reloc = alloca i8*, align 8
  %end = alloca i8*, align 8
  %addr = alloca i64, align 8
  store i8* %new_name, i8** %new_name.addr, align 8
  store i8* %old_name, i8** %old_name.addr, align 8
  %0 = load i8*, i8** %old_name.addr, align 8
  %call = call i32 @emacs_open(i8* %0, i32 0, i32 0)
  store i32 %call, i32* %old_file, align 4
  %1 = load i32, i32* %old_file, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %old_name.addr, align 8
  %call1 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call1, align 4
  %call2 = call i8* @strerror(i32 %3) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* %2, i8* %call2) #8
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %old_file, align 4
  %call3 = call i32 @fstat(i32 %4, %struct.stat* %stat_buf) #5
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %5 = load i8*, i8** %old_name.addr, align 8
  %call6 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call6, align 4
  %call7 = call i8* @strerror(i32 %6) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* %5, i8* %call7) #8
  unreachable

if.end.8:                                         ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %stat_buf, i32 0, i32 8
  %7 = load i64, i64* %st_size, align 8
  store i64 %7, i64* %old_file_size, align 8
  %8 = load i64, i64* %old_file_size, align 8
  %cmp9 = icmp sle i64 0, %8
  br i1 %cmp9, label %land.lhs.true, label %if.then.11

land.lhs.true:                                    ; preds = %if.end.8
  %9 = load i64, i64* %old_file_size, align 8
  %cmp10 = icmp ule i64 %9, -1
  br i1 %cmp10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true, %if.end.8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)) #8
  unreachable

if.end.12:                                        ; preds = %land.lhs.true
  %10 = load i64, i64* %old_file_size, align 8
  %call13 = call i8* @mmap(i8* null, i64 %10, i32 3, i32 34, i32 -1, i64 0) #5
  store i8* %call13, i8** %old_base, align 8
  %11 = load i8*, i8** %old_base, align 8
  %cmp14 = icmp eq i8* %11, inttoptr (i64 -1 to i8*)
  br i1 %cmp14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %12 = load i8*, i8** %old_name.addr, align 8
  %call16 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call16, align 4
  %call17 = call i8* @strerror(i32 %13) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* %12, i8* %call17) #8
  unreachable

if.end.18:                                        ; preds = %if.end.12
  %14 = load i32, i32* %old_file, align 4
  %15 = load i8*, i8** %old_base, align 8
  %16 = load i64, i64* %old_file_size, align 8
  %call19 = call i64 @read(i32 %14, i8* %15, i64 %16)
  %17 = load i64, i64* %old_file_size, align 8
  %cmp20 = icmp ne i64 %call19, %17
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.18
  %18 = load i8*, i8** %old_name.addr, align 8
  %call22 = call i32* @__errno_location() #7
  %19 = load i32, i32* %call22, align 4
  %call23 = call i8* @strerror(i32 %19) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0), i8* %18, i8* %call23) #8
  unreachable

if.end.24:                                        ; preds = %if.end.18
  %20 = load i8*, i8** %old_base, align 8
  %21 = bitcast i8* %20 to %struct.Elf64_Ehdr*
  store %struct.Elf64_Ehdr* %21, %struct.Elf64_Ehdr** %old_file_h, align 8
  %22 = load i8*, i8** %old_base, align 8
  %23 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_phoff = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %23, i32 0, i32 5
  %24 = load i64, i64* %e_phoff, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %24
  %25 = bitcast i8* %add.ptr to %struct.Elf64_Phdr*
  store %struct.Elf64_Phdr* %25, %struct.Elf64_Phdr** %old_program_h, align 8
  %26 = load i8*, i8** %old_base, align 8
  %27 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shoff = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %27, i32 0, i32 6
  %28 = load i64, i64* %e_shoff, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %26, i64 %28
  %29 = bitcast i8* %add.ptr25 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %29, %struct.Elf64_Shdr** %old_section_h, align 8
  %30 = load i8*, i8** %old_base, align 8
  %31 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %old_section_h, align 8
  %32 = bitcast %struct.Elf64_Shdr* %31 to i8*
  %33 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shstrndx = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %33, i32 0, i32 13
  %34 = load i16, i16* %e_shstrndx, align 2
  %conv = zext i16 %34 to i64
  %35 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shentsize = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %35, i32 0, i32 11
  %36 = load i16, i16* %e_shentsize, align 2
  %conv26 = zext i16 %36 to i64
  %call27 = call i8* @entry_address(i8* %32, i64 %conv, i64 %conv26)
  %37 = bitcast i8* %call27 to %struct.Elf64_Shdr*
  %sh_offset = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %37, i32 0, i32 4
  %38 = load i64, i64* %sh_offset, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %30, i64 %38
  store i8* %add.ptr28, i8** %old_section_names, align 8
  store %struct.Elf64_Phdr* null, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %39 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_phnum = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %39, i32 0, i32 10
  %40 = load i16, i16* %e_phnum, align 2
  %conv29 = zext i16 %40 to i64
  store i64 %conv29, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.43, %if.end.24
  %41 = load i64, i64* %n, align 8
  %dec = add nsw i64 %41, -1
  store i64 %dec, i64* %n, align 8
  %cmp30 = icmp sge i64 %dec, 0
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_program_h, align 8
  %43 = bitcast %struct.Elf64_Phdr* %42 to i8*
  %44 = load i64, i64* %n, align 8
  %45 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_phentsize = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %45, i32 0, i32 9
  %46 = load i16, i16* %e_phentsize, align 2
  %conv32 = zext i16 %46 to i64
  %call33 = call i8* @entry_address(i8* %43, i64 %44, i64 %conv32)
  %47 = bitcast i8* %call33 to %struct.Elf64_Phdr*
  store %struct.Elf64_Phdr* %47, %struct.Elf64_Phdr** %seg, align 8
  %48 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %seg, align 8
  %p_type = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %48, i32 0, i32 0
  %49 = load i32, i32* %p_type, align 4
  %cmp34 = icmp eq i32 %49, 1
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.43

land.lhs.true.36:                                 ; preds = %for.body
  %50 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %cmp37 = icmp eq %struct.Elf64_Phdr* %50, null
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.36
  %51 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %seg, align 8
  %p_vaddr = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %51, i32 0, i32 3
  %52 = load i64, i64* %p_vaddr, align 8
  %53 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %p_vaddr39 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %53, i32 0, i32 3
  %54 = load i64, i64* %p_vaddr39, align 8
  %cmp40 = icmp ugt i64 %52, %54
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false, %land.lhs.true.36
  %55 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %seg, align 8
  store %struct.Elf64_Phdr* %55, %struct.Elf64_Phdr** %old_bss_seg, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %lor.lhs.false, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %56 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %p_vaddr44 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %56, i32 0, i32 3
  %57 = load i64, i64* %p_vaddr44, align 8
  %58 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %p_filesz = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %58, i32 0, i32 5
  %59 = load i64, i64* %p_filesz, align 8
  %add = add i64 %57, %59
  store i64 %add, i64* %old_bss_addr, align 8
  %60 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %p_offset = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %60, i32 0, i32 2
  %61 = load i64, i64* %p_offset, align 8
  %62 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %p_filesz45 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %62, i32 0, i32 5
  %63 = load i64, i64* %p_filesz45, align 8
  %add46 = add i64 %61, %63
  store i64 %add46, i64* %old_bss_offset, align 8
  %64 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %p_memsz = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %64, i32 0, i32 6
  %65 = load i64, i64* %p_memsz, align 8
  %66 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %p_filesz47 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %66, i32 0, i32 5
  %67 = load i64, i64* %p_filesz47, align 8
  %sub = sub i64 %65, %67
  %conv48 = trunc i64 %sub to i32
  store i32 %conv48, i32* %old_bss_size, align 4
  store i64 -1, i64* %old_bss_index, align 8
  %68 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shnum = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %68, i32 0, i32 12
  %69 = load i16, i16* %e_shnum, align 2
  %conv49 = zext i16 %69 to i64
  store i64 %conv49, i64* %n, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %if.end.82, %for.end
  %70 = load i64, i64* %n, align 8
  %dec51 = add nsw i64 %70, -1
  store i64 %dec51, i64* %n, align 8
  %cmp52 = icmp sgt i64 %dec51, 0
  br i1 %cmp52, label %for.body.54, label %for.end.83

for.body.54:                                      ; preds = %for.cond.50
  %71 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %old_section_h, align 8
  %72 = bitcast %struct.Elf64_Shdr* %71 to i8*
  %73 = load i64, i64* %n, align 8
  %74 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shentsize55 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %74, i32 0, i32 11
  %75 = load i16, i16* %e_shentsize55, align 2
  %conv56 = zext i16 %75 to i64
  %call57 = call i8* @entry_address(i8* %72, i64 %73, i64 %conv56)
  %76 = bitcast i8* %call57 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %76, %struct.Elf64_Shdr** %shdr, align 8
  %77 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr, align 8
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %77, i32 0, i32 1
  %78 = load i32, i32* %sh_type, align 4
  %cmp58 = icmp eq i32 %78, 8
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.82

land.lhs.true.60:                                 ; preds = %for.body.54
  %79 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr, align 8
  %sh_addr = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %79, i32 0, i32 3
  %80 = load i64, i64* %sh_addr, align 8
  %81 = load i64, i64* %old_bss_addr, align 8
  %cmp61 = icmp uge i64 %80, %81
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.82

land.lhs.true.63:                                 ; preds = %land.lhs.true.60
  %82 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr, align 8
  %sh_addr64 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %82, i32 0, i32 3
  %83 = load i64, i64* %sh_addr64, align 8
  %84 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr, align 8
  %sh_size = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %84, i32 0, i32 5
  %85 = load i64, i64* %sh_size, align 8
  %add65 = add i64 %83, %85
  %86 = load i64, i64* %old_bss_addr, align 8
  %87 = load i32, i32* %old_bss_size, align 4
  %conv66 = zext i32 %87 to i64
  %add67 = add i64 %86, %conv66
  %cmp68 = icmp ule i64 %add65, %add67
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.82

land.lhs.true.70:                                 ; preds = %land.lhs.true.63
  %88 = load i64, i64* %old_bss_index, align 8
  %cmp71 = icmp eq i64 %88, -1
  br i1 %cmp71, label %if.then.81, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %land.lhs.true.70
  %89 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %old_section_h, align 8
  %90 = bitcast %struct.Elf64_Shdr* %89 to i8*
  %91 = load i64, i64* %old_bss_index, align 8
  %92 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shentsize74 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %92, i32 0, i32 11
  %93 = load i16, i16* %e_shentsize74, align 2
  %conv75 = zext i16 %93 to i64
  %call76 = call i8* @entry_address(i8* %90, i64 %91, i64 %conv75)
  %94 = bitcast i8* %call76 to %struct.Elf64_Shdr*
  %sh_addr77 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %94, i32 0, i32 3
  %95 = load i64, i64* %sh_addr77, align 8
  %96 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr, align 8
  %sh_addr78 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %96, i32 0, i32 3
  %97 = load i64, i64* %sh_addr78, align 8
  %cmp79 = icmp ult i64 %95, %97
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %lor.lhs.false.73, %land.lhs.true.70
  %98 = load i64, i64* %n, align 8
  store i64 %98, i64* %old_bss_index, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.81, %lor.lhs.false.73, %land.lhs.true.63, %land.lhs.true.60, %for.body.54
  br label %for.cond.50

for.end.83:                                       ; preds = %for.cond.50
  %99 = load i64, i64* %old_bss_index, align 8
  %cmp84 = icmp eq i64 %99, -1
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %for.end.83
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #8
  unreachable

if.end.87:                                        ; preds = %for.end.83
  %call88 = call i8* @sbrk(i64 0) #5
  store i8* %call88, i8** %new_break, align 8
  %100 = load i8*, i8** %new_break, align 8
  %101 = ptrtoint i8* %100 to i64
  store i64 %101, i64* %new_bss_addr, align 8
  %102 = load i64, i64* %new_bss_addr, align 8
  %103 = load i64, i64* %old_bss_addr, align 8
  %sub89 = sub i64 %102, %103
  %conv90 = trunc i64 %sub89 to i32
  store i32 %conv90, i32* %bss_size_growth, align 4
  %104 = load i32, i32* %bss_size_growth, align 4
  store i32 %104, i32* %new_data2_size, align 4
  %105 = load i32, i32* %new_data2_size, align 4
  %conv91 = zext i32 %105 to i64
  %add92 = add i64 %conv91, 7
  %conv93 = trunc i64 %add92 to i32
  store i32 %conv93, i32* %new_data2_size, align 4
  %106 = load i32, i32* %new_data2_size, align 4
  %conv94 = zext i32 %106 to i64
  %rem = urem i64 %conv94, 8
  %107 = load i32, i32* %new_data2_size, align 4
  %conv95 = zext i32 %107 to i64
  %sub96 = sub i64 %conv95, %rem
  %conv97 = trunc i64 %sub96 to i32
  store i32 %conv97, i32* %new_data2_size, align 4
  %108 = load i64, i64* %old_bss_offset, align 8
  store i64 %108, i64* %new_data2_offset, align 8
  %109 = load i64, i64* %new_bss_addr, align 8
  %110 = load i64, i64* %old_bss_addr, align 8
  %111 = load i32, i32* %old_bss_size, align 4
  %conv98 = zext i32 %111 to i64
  %add99 = add i64 %110, %conv98
  %cmp100 = icmp ult i64 %109, %add99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.87
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0)) #8
  unreachable

if.end.103:                                       ; preds = %if.end.87
  %112 = load i8*, i8** %new_name.addr, align 8
  %call104 = call i32 @emacs_open(i8* %112, i32 66, i32 511)
  store i32 %call104, i32* %new_file, align 4
  %113 = load i32, i32* %new_file, align 4
  %cmp105 = icmp slt i32 %113, 0
  br i1 %cmp105, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %if.end.103
  %114 = load i8*, i8** %new_name.addr, align 8
  %call108 = call i32* @__errno_location() #7
  %115 = load i32, i32* %call108, align 4
  %call109 = call i8* @strerror(i32 %115) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* %114, i8* %call109) #8
  unreachable

if.end.110:                                       ; preds = %if.end.103
  %116 = load i64, i64* %old_file_size, align 8
  %117 = load i32, i32* %new_data2_size, align 4
  %conv111 = zext i32 %117 to i64
  %add112 = add nsw i64 %116, %conv111
  store i64 %add112, i64* %new_file_size, align 8
  %118 = load i32, i32* %new_file, align 4
  %119 = load i64, i64* %new_file_size, align 8
  %call113 = call i32 @ftruncate(i32 %118, i64 %119) #5
  %tobool = icmp ne i32 %call113, 0
  br i1 %tobool, label %if.then.114, label %if.end.117

if.then.114:                                      ; preds = %if.end.110
  %120 = load i8*, i8** %new_name.addr, align 8
  %call115 = call i32* @__errno_location() #7
  %121 = load i32, i32* %call115, align 4
  %call116 = call i8* @strerror(i32 %121) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0), i8* %120, i8* %call116) #8
  unreachable

if.end.117:                                       ; preds = %if.end.110
  %122 = load i64, i64* %new_file_size, align 8
  %call118 = call i8* @mmap(i8* null, i64 %122, i32 3, i32 34, i32 -1, i64 0) #5
  store i8* %call118, i8** %new_base, align 8
  %123 = load i8*, i8** %new_base, align 8
  %cmp119 = icmp eq i8* %123, inttoptr (i64 -1 to i8*)
  br i1 %cmp119, label %if.then.121, label %if.end.124

if.then.121:                                      ; preds = %if.end.117
  %124 = load i8*, i8** %old_name.addr, align 8
  %call122 = call i32* @__errno_location() #7
  %125 = load i32, i32* %call122, align 4
  %call123 = call i8* @strerror(i32 %125) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8* %124, i8* %call123) #8
  unreachable

if.end.124:                                       ; preds = %if.end.117
  %126 = load i8*, i8** %new_base, align 8
  %127 = bitcast i8* %126 to %struct.Elf64_Ehdr*
  store %struct.Elf64_Ehdr* %127, %struct.Elf64_Ehdr** %new_file_h, align 8
  %128 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %129 = bitcast %struct.Elf64_Ehdr* %128 to i8*
  %130 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %131 = bitcast %struct.Elf64_Ehdr* %130 to i8*
  %132 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_ehsize = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %132, i32 0, i32 8
  %133 = load i16, i16* %e_ehsize, align 2
  %conv125 = zext i16 %133 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %131, i64 %conv125, i32 8, i1 false)
  %134 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shoff126 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %134, i32 0, i32 6
  %135 = load i64, i64* %e_shoff126, align 8
  %136 = load i64, i64* %old_bss_offset, align 8
  %cmp127 = icmp uge i64 %135, %136
  br i1 %cmp127, label %if.then.129, label %if.end.133

if.then.129:                                      ; preds = %if.end.124
  %137 = load i32, i32* %new_data2_size, align 4
  %conv130 = zext i32 %137 to i64
  %138 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shoff131 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %138, i32 0, i32 6
  %139 = load i64, i64* %e_shoff131, align 8
  %add132 = add i64 %139, %conv130
  store i64 %add132, i64* %e_shoff131, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.129, %if.end.124
  %140 = load i8*, i8** %new_base, align 8
  %141 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_phoff134 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %141, i32 0, i32 5
  %142 = load i64, i64* %e_phoff134, align 8
  %add.ptr135 = getelementptr inbounds i8, i8* %140, i64 %142
  %143 = bitcast i8* %add.ptr135 to %struct.Elf64_Phdr*
  store %struct.Elf64_Phdr* %143, %struct.Elf64_Phdr** %new_program_h, align 8
  %144 = load i8*, i8** %new_base, align 8
  %145 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shoff136 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %145, i32 0, i32 6
  %146 = load i64, i64* %e_shoff136, align 8
  %add.ptr137 = getelementptr inbounds i8, i8* %144, i64 %146
  %147 = bitcast i8* %add.ptr137 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %147, %struct.Elf64_Shdr** %new_section_h, align 8
  %148 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %new_program_h, align 8
  %149 = bitcast %struct.Elf64_Phdr* %148 to i8*
  %150 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_program_h, align 8
  %151 = bitcast %struct.Elf64_Phdr* %150 to i8*
  %152 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_phnum138 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %152, i32 0, i32 10
  %153 = load i16, i16* %e_phnum138, align 2
  %conv139 = zext i16 %153 to i32
  %154 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_phentsize140 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %154, i32 0, i32 9
  %155 = load i16, i16* %e_phentsize140, align 2
  %conv141 = zext i16 %155 to i32
  %mul = mul nsw i32 %conv139, %conv141
  %conv142 = sext i32 %mul to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* %151, i64 %conv142, i32 8, i1 false)
  %156 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_section_h, align 8
  %157 = bitcast %struct.Elf64_Shdr* %156 to i8*
  %158 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %old_section_h, align 8
  %159 = bitcast %struct.Elf64_Shdr* %158 to i8*
  %160 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shnum143 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %160, i32 0, i32 12
  %161 = load i16, i16* %e_shnum143, align 2
  %conv144 = zext i16 %161 to i32
  %162 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shentsize145 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %162, i32 0, i32 11
  %163 = load i16, i16* %e_shentsize145, align 2
  %conv146 = zext i16 %163 to i32
  %mul147 = mul nsw i32 %conv144, %conv146
  %conv148 = sext i32 %mul147 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %159, i64 %conv148, i32 8, i1 false)
  %164 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %new_program_h, align 8
  %165 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_bss_seg, align 8
  %166 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %old_program_h, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Elf64_Phdr* %165 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Elf64_Phdr* %166 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56
  %add.ptr149 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %164, i64 %sub.ptr.div
  store %struct.Elf64_Phdr* %add.ptr149, %struct.Elf64_Phdr** %new_bss_seg, align 8
  %167 = load i64, i64* %new_bss_addr, align 8
  %168 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %new_bss_seg, align 8
  %p_vaddr150 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %168, i32 0, i32 3
  %169 = load i64, i64* %p_vaddr150, align 8
  %sub151 = sub i64 %167, %169
  %170 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %new_bss_seg, align 8
  %p_filesz152 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %170, i32 0, i32 5
  store i64 %sub151, i64* %p_filesz152, align 8
  %171 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %new_bss_seg, align 8
  %p_filesz153 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %171, i32 0, i32 5
  %172 = load i64, i64* %p_filesz153, align 8
  %173 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %new_bss_seg, align 8
  %p_memsz154 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %173, i32 0, i32 6
  store i64 %172, i64* %p_memsz154, align 8
  %174 = load i8*, i8** %new_base, align 8
  %175 = load i64, i64* %new_data2_offset, align 8
  %add.ptr155 = getelementptr inbounds i8, i8* %174, i64 %175
  %176 = load i64, i64* %old_bss_addr, align 8
  %177 = inttoptr i64 %176 to i8*
  %178 = load i32, i32* %bss_size_growth, align 4
  %conv156 = zext i32 %178 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr155, i8* %177, i64 %conv156, i32 1, i1 false)
  store i64 1, i64* %n, align 8
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc, %if.end.133
  %179 = load i64, i64* %n, align 8
  %180 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shnum158 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %180, i32 0, i32 12
  %181 = load i16, i16* %e_shnum158, align 2
  %conv159 = zext i16 %181 to i64
  %cmp160 = icmp slt i64 %179, %conv159
  br i1 %cmp160, label %for.body.162, label %for.end.269

for.body.162:                                     ; preds = %for.cond.157
  %182 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %old_section_h, align 8
  %183 = bitcast %struct.Elf64_Shdr* %182 to i8*
  %184 = load i64, i64* %n, align 8
  %185 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shentsize163 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %185, i32 0, i32 11
  %186 = load i16, i16* %e_shentsize163, align 2
  %conv164 = zext i16 %186 to i64
  %call165 = call i8* @entry_address(i8* %183, i64 %184, i64 %conv164)
  %187 = bitcast i8* %call165 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %187, %struct.Elf64_Shdr** %old_shdr, align 8
  %188 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_section_h, align 8
  %189 = bitcast %struct.Elf64_Shdr* %188 to i8*
  %190 = load i64, i64* %n, align 8
  %191 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shentsize166 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %191, i32 0, i32 11
  %192 = load i16, i16* %e_shentsize166, align 2
  %conv167 = zext i16 %192 to i64
  %call168 = call i8* @entry_address(i8* %189, i64 %190, i64 %conv167)
  %193 = bitcast i8* %call168 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %193, %struct.Elf64_Shdr** %new_shdr, align 8
  %194 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_type169 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %194, i32 0, i32 1
  %195 = load i32, i32* %sh_type169, align 4
  %cmp170 = icmp eq i32 %195, 8
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.208

land.lhs.true.172:                                ; preds = %for.body.162
  %196 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_addr173 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %196, i32 0, i32 3
  %197 = load i64, i64* %sh_addr173, align 8
  %198 = load i64, i64* %old_bss_addr, align 8
  %cmp174 = icmp uge i64 %197, %198
  br i1 %cmp174, label %land.lhs.true.176, label %if.end.208

land.lhs.true.176:                                ; preds = %land.lhs.true.172
  %199 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_addr177 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %199, i32 0, i32 3
  %200 = load i64, i64* %sh_addr177, align 8
  %201 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_size178 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %201, i32 0, i32 5
  %202 = load i64, i64* %sh_size178, align 8
  %add179 = add i64 %200, %202
  %203 = load i64, i64* %old_bss_addr, align 8
  %204 = load i32, i32* %old_bss_size, align 4
  %conv180 = zext i32 %204 to i64
  %add181 = add i64 %203, %conv180
  %cmp182 = icmp ule i64 %add179, %add181
  br i1 %cmp182, label %if.then.184, label %if.end.208

if.then.184:                                      ; preds = %land.lhs.true.176
  %205 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_type185 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %205, i32 0, i32 1
  store i32 1, i32* %sh_type185, align 4
  %206 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_addr186 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %206, i32 0, i32 3
  %207 = load i64, i64* %sh_addr186, align 8
  %208 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %new_bss_seg, align 8
  %p_vaddr187 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %208, i32 0, i32 3
  %209 = load i64, i64* %p_vaddr187, align 8
  %sub188 = sub i64 %207, %209
  %210 = load %struct.Elf64_Phdr*, %struct.Elf64_Phdr** %new_bss_seg, align 8
  %p_offset189 = getelementptr inbounds %struct.Elf64_Phdr, %struct.Elf64_Phdr* %210, i32 0, i32 2
  %211 = load i64, i64* %p_offset189, align 8
  %add190 = add i64 %sub188, %211
  %212 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_offset191 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %212, i32 0, i32 4
  store i64 %add190, i64* %sh_offset191, align 8
  %213 = load i8*, i8** %old_section_names, align 8
  %214 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_name = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %214, i32 0, i32 0
  %215 = load i32, i32* %sh_name, align 4
  %idx.ext = zext i32 %215 to i64
  %add.ptr192 = getelementptr inbounds i8, i8* %213, i64 %idx.ext
  %call193 = call i32 @strcmp(i8* %add.ptr192, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #9
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %if.then.196, label %if.end.200

if.then.196:                                      ; preds = %if.then.184
  %216 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_offset197 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %216, i32 0, i32 4
  %217 = load i64, i64* %sh_offset197, align 8
  %218 = load i8*, i8** %new_base, align 8
  %add.ptr198 = getelementptr inbounds i8, i8* %218, i64 %217
  %219 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_size199 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %219, i32 0, i32 5
  %220 = load i64, i64* %sh_size199, align 8
  call void @llvm.memset.p0i8.i64(i8* %add.ptr198, i8 0, i64 %220, i32 1, i1 false)
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.196, %if.then.184
  %221 = load i64, i64* %n, align 8
  %222 = load i64, i64* %old_bss_index, align 8
  %cmp201 = icmp eq i64 %221, %222
  br i1 %cmp201, label %if.then.203, label %if.end.207

if.then.203:                                      ; preds = %if.end.200
  %223 = load i64, i64* %new_bss_addr, align 8
  %224 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_addr204 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %224, i32 0, i32 3
  %225 = load i64, i64* %sh_addr204, align 8
  %sub205 = sub i64 %223, %225
  %226 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_size206 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %226, i32 0, i32 5
  store i64 %sub205, i64* %sh_size206, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.203, %if.end.200
  br label %for.inc

if.end.208:                                       ; preds = %land.lhs.true.176, %land.lhs.true.172, %for.body.162
  %227 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_offset209 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %227, i32 0, i32 4
  %228 = load i64, i64* %sh_offset209, align 8
  %229 = load i64, i64* %old_bss_offset, align 8
  %cmp210 = icmp uge i64 %228, %229
  br i1 %cmp210, label %if.then.212, label %if.end.216

if.then.212:                                      ; preds = %if.end.208
  %230 = load i32, i32* %new_data2_size, align 4
  %conv213 = zext i32 %230 to i64
  %231 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_offset214 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %231, i32 0, i32 4
  %232 = load i64, i64* %sh_offset214, align 8
  %add215 = add i64 %232, %conv213
  store i64 %add215, i64* %sh_offset214, align 8
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.212, %if.end.208
  %233 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_type217 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %233, i32 0, i32 1
  %234 = load i32, i32* %sh_type217, align 4
  %cmp218 = icmp eq i32 %234, 0
  br i1 %cmp218, label %if.then.224, label %lor.lhs.false.220

lor.lhs.false.220:                                ; preds = %if.end.216
  %235 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_type221 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %235, i32 0, i32 1
  %236 = load i32, i32* %sh_type221, align 4
  %cmp222 = icmp eq i32 %236, 8
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %lor.lhs.false.220, %if.end.216
  br label %for.inc

if.end.225:                                       ; preds = %lor.lhs.false.220
  %237 = load i8*, i8** %old_section_names, align 8
  %238 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_name226 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %238, i32 0, i32 0
  %239 = load i32, i32* %sh_name226, align 4
  %idx.ext227 = zext i32 %239 to i64
  %add.ptr228 = getelementptr inbounds i8, i8* %237, i64 %idx.ext227
  %call229 = call i32 @strcmp(i8* %add.ptr228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #9
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %lor.lhs.false.231, label %if.then.261

lor.lhs.false.231:                                ; preds = %if.end.225
  %240 = load i8*, i8** %old_section_names, align 8
  %241 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_name232 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %241, i32 0, i32 0
  %242 = load i32, i32* %sh_name232, align 4
  %idx.ext233 = zext i32 %242 to i64
  %add.ptr234 = getelementptr inbounds i8, i8* %240, i64 %idx.ext233
  %call235 = call i32 @strcmp(i8* %add.ptr234, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #9
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %lor.lhs.false.237, label %if.then.261

lor.lhs.false.237:                                ; preds = %lor.lhs.false.231
  %243 = load i8*, i8** %old_section_names, align 8
  %244 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_name238 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %244, i32 0, i32 0
  %245 = load i32, i32* %sh_name238, align 4
  %idx.ext239 = zext i32 %245 to i64
  %add.ptr240 = getelementptr inbounds i8, i8* %243, i64 %idx.ext239
  %call241 = call i32 @strcmp(i8* %add.ptr240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #9
  %tobool242 = icmp ne i32 %call241, 0
  br i1 %tobool242, label %lor.lhs.false.243, label %if.then.261

lor.lhs.false.243:                                ; preds = %lor.lhs.false.237
  %246 = load i8*, i8** %old_section_names, align 8
  %247 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_name244 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %247, i32 0, i32 0
  %248 = load i32, i32* %sh_name244, align 4
  %idx.ext245 = zext i32 %248 to i64
  %add.ptr246 = getelementptr inbounds i8, i8* %246, i64 %idx.ext245
  %call247 = call i32 @strcmp(i8* %add.ptr246, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #9
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %lor.lhs.false.249, label %if.then.261

lor.lhs.false.249:                                ; preds = %lor.lhs.false.243
  %249 = load i8*, i8** %old_section_names, align 8
  %250 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_name250 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %250, i32 0, i32 0
  %251 = load i32, i32* %sh_name250, align 4
  %idx.ext251 = zext i32 %251 to i64
  %add.ptr252 = getelementptr inbounds i8, i8* %249, i64 %idx.ext251
  %call253 = call i32 @strcmp(i8* %add.ptr252, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #9
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %lor.lhs.false.255, label %if.then.261

lor.lhs.false.255:                                ; preds = %lor.lhs.false.249
  %252 = load i8*, i8** %old_section_names, align 8
  %253 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_name256 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %253, i32 0, i32 0
  %254 = load i32, i32* %sh_name256, align 4
  %idx.ext257 = zext i32 %254 to i64
  %add.ptr258 = getelementptr inbounds i8, i8* %252, i64 %idx.ext257
  %call259 = call i32 @strcmp(i8* %add.ptr258, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #9
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.else, label %if.then.261

if.then.261:                                      ; preds = %lor.lhs.false.255, %lor.lhs.false.249, %lor.lhs.false.243, %lor.lhs.false.237, %lor.lhs.false.231, %if.end.225
  %255 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %old_shdr, align 8
  %sh_addr262 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %255, i32 0, i32 3
  %256 = load i64, i64* %sh_addr262, align 8
  %257 = inttoptr i64 %256 to i8*
  store i8* %257, i8** %src, align 8
  br label %if.end.265

if.else:                                          ; preds = %lor.lhs.false.255
  %258 = load i8*, i8** %old_base, align 8
  %259 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %old_shdr, align 8
  %sh_offset263 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %259, i32 0, i32 4
  %260 = load i64, i64* %sh_offset263, align 8
  %add.ptr264 = getelementptr inbounds i8, i8* %258, i64 %260
  store i8* %add.ptr264, i8** %src, align 8
  br label %if.end.265

if.end.265:                                       ; preds = %if.else, %if.then.261
  %261 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_offset266 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %261, i32 0, i32 4
  %262 = load i64, i64* %sh_offset266, align 8
  %263 = load i8*, i8** %new_base, align 8
  %add.ptr267 = getelementptr inbounds i8, i8* %263, i64 %262
  %264 = load i8*, i8** %src, align 8
  %265 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr, align 8
  %sh_size268 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %265, i32 0, i32 5
  %266 = load i64, i64* %sh_size268, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr267, i8* %264, i64 %266, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end.265, %if.then.224, %if.end.207
  %267 = load i64, i64* %n, align 8
  %inc = add nsw i64 %267, 1
  store i64 %inc, i64* %n, align 8
  br label %for.cond.157

for.end.269:                                      ; preds = %for.cond.157
  %268 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shnum270 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %268, i32 0, i32 12
  %269 = load i16, i16* %e_shnum270, align 2
  %conv271 = zext i16 %269 to i64
  store i64 %conv271, i64* %n, align 8
  br label %for.cond.272

for.cond.272:                                     ; preds = %for.end.332, %if.then.287, %for.end.269
  %270 = load i64, i64* %n, align 8
  %dec273 = add nsw i64 %270, -1
  store i64 %dec273, i64* %n, align 8
  %cmp274 = icmp slt i64 0, %dec273
  br i1 %cmp274, label %for.body.276, label %for.end.333

for.body.276:                                     ; preds = %for.cond.272
  %271 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_section_h, align 8
  %272 = bitcast %struct.Elf64_Shdr* %271 to i8*
  %273 = load i64, i64* %n, align 8
  %274 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shentsize277 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %274, i32 0, i32 11
  %275 = load i16, i16* %e_shentsize277, align 2
  %conv278 = zext i16 %275 to i64
  %call279 = call i8* @entry_address(i8* %272, i64 %273, i64 %conv278)
  %276 = bitcast i8* %call279 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %276, %struct.Elf64_Shdr** %sym_shdr, align 8
  %277 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %sym_shdr, align 8
  %sh_type280 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %277, i32 0, i32 1
  %278 = load i32, i32* %sh_type280, align 4
  %cmp281 = icmp ne i32 %278, 11
  br i1 %cmp281, label %land.lhs.true.283, label %if.end.288

land.lhs.true.283:                                ; preds = %for.body.276
  %279 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %sym_shdr, align 8
  %sh_type284 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %279, i32 0, i32 1
  %280 = load i32, i32* %sh_type284, align 4
  %cmp285 = icmp ne i32 %280, 2
  br i1 %cmp285, label %if.then.287, label %if.end.288

if.then.287:                                      ; preds = %land.lhs.true.283
  br label %for.cond.272

if.end.288:                                       ; preds = %land.lhs.true.283, %for.body.276
  %281 = load i8*, i8** %new_base, align 8
  %282 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_section_h, align 8
  %283 = bitcast %struct.Elf64_Shdr* %282 to i8*
  %284 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %sym_shdr, align 8
  %sh_link = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %284, i32 0, i32 6
  %285 = load i32, i32* %sh_link, align 4
  %conv289 = zext i32 %285 to i64
  %286 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shentsize290 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %286, i32 0, i32 11
  %287 = load i16, i16* %e_shentsize290, align 2
  %conv291 = zext i16 %287 to i64
  %call292 = call i8* @entry_address(i8* %283, i64 %conv289, i64 %conv291)
  %288 = bitcast i8* %call292 to %struct.Elf64_Shdr*
  %sh_offset293 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %288, i32 0, i32 4
  %289 = load i64, i64* %sh_offset293, align 8
  %add.ptr294 = getelementptr inbounds i8, i8* %281, i64 %289
  store i8* %add.ptr294, i8** %symnames, align 8
  %290 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %sym_shdr, align 8
  %sh_offset295 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %290, i32 0, i32 4
  %291 = load i64, i64* %sh_offset295, align 8
  %292 = load i8*, i8** %new_base, align 8
  %add.ptr296 = getelementptr inbounds i8, i8* %292, i64 %291
  %293 = bitcast i8* %add.ptr296 to %struct.Elf64_Sym*
  store %struct.Elf64_Sym* %293, %struct.Elf64_Sym** %symp, align 8
  %294 = load %struct.Elf64_Sym*, %struct.Elf64_Sym** %symp, align 8
  %295 = bitcast %struct.Elf64_Sym* %294 to i8*
  %296 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %sym_shdr, align 8
  %sh_size297 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %296, i32 0, i32 5
  %297 = load i64, i64* %sh_size297, align 8
  %add.ptr298 = getelementptr inbounds i8, i8* %295, i64 %297
  %298 = bitcast i8* %add.ptr298 to %struct.Elf64_Sym*
  store %struct.Elf64_Sym* %298, %struct.Elf64_Sym** %symendp, align 8
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.331, %if.end.288
  %299 = load %struct.Elf64_Sym*, %struct.Elf64_Sym** %symp, align 8
  %300 = load %struct.Elf64_Sym*, %struct.Elf64_Sym** %symendp, align 8
  %cmp300 = icmp ult %struct.Elf64_Sym* %299, %300
  br i1 %cmp300, label %for.body.302, label %for.end.332

for.body.302:                                     ; preds = %for.cond.299
  %301 = load i8*, i8** %symnames, align 8
  %302 = load %struct.Elf64_Sym*, %struct.Elf64_Sym** %symp, align 8
  %st_name = getelementptr inbounds %struct.Elf64_Sym, %struct.Elf64_Sym* %302, i32 0, i32 0
  %303 = load i32, i32* %st_name, align 4
  %idx.ext303 = zext i32 %303 to i64
  %add.ptr304 = getelementptr inbounds i8, i8* %301, i64 %idx.ext303
  %call305 = call i32 @strcmp(i8* %add.ptr304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #9
  %cmp306 = icmp eq i32 %call305, 0
  br i1 %cmp306, label %if.then.329, label %lor.lhs.false.308

lor.lhs.false.308:                                ; preds = %for.body.302
  %304 = load i8*, i8** %symnames, align 8
  %305 = load %struct.Elf64_Sym*, %struct.Elf64_Sym** %symp, align 8
  %st_name309 = getelementptr inbounds %struct.Elf64_Sym, %struct.Elf64_Sym* %305, i32 0, i32 0
  %306 = load i32, i32* %st_name309, align 4
  %idx.ext310 = zext i32 %306 to i64
  %add.ptr311 = getelementptr inbounds i8, i8* %304, i64 %idx.ext310
  %call312 = call i32 @strcmp(i8* %add.ptr311, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #9
  %cmp313 = icmp eq i32 %call312, 0
  br i1 %cmp313, label %if.then.329, label %lor.lhs.false.315

lor.lhs.false.315:                                ; preds = %lor.lhs.false.308
  %307 = load i8*, i8** %symnames, align 8
  %308 = load %struct.Elf64_Sym*, %struct.Elf64_Sym** %symp, align 8
  %st_name316 = getelementptr inbounds %struct.Elf64_Sym, %struct.Elf64_Sym* %308, i32 0, i32 0
  %309 = load i32, i32* %st_name316, align 4
  %idx.ext317 = zext i32 %309 to i64
  %add.ptr318 = getelementptr inbounds i8, i8* %307, i64 %idx.ext317
  %call319 = call i32 @strcmp(i8* %add.ptr318, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #9
  %cmp320 = icmp eq i32 %call319, 0
  br i1 %cmp320, label %if.then.329, label %lor.lhs.false.322

lor.lhs.false.322:                                ; preds = %lor.lhs.false.315
  %310 = load i8*, i8** %symnames, align 8
  %311 = load %struct.Elf64_Sym*, %struct.Elf64_Sym** %symp, align 8
  %st_name323 = getelementptr inbounds %struct.Elf64_Sym, %struct.Elf64_Sym* %311, i32 0, i32 0
  %312 = load i32, i32* %st_name323, align 4
  %idx.ext324 = zext i32 %312 to i64
  %add.ptr325 = getelementptr inbounds i8, i8* %310, i64 %idx.ext324
  %call326 = call i32 @strcmp(i8* %add.ptr325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #9
  %cmp327 = icmp eq i32 %call326, 0
  br i1 %cmp327, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %lor.lhs.false.322, %lor.lhs.false.315, %lor.lhs.false.308, %for.body.302
  %313 = load %struct.Elf64_Sym*, %struct.Elf64_Sym** %symp, align 8
  %st_value = getelementptr inbounds %struct.Elf64_Sym, %struct.Elf64_Sym* %313, i32 0, i32 4
  %314 = bitcast i64* %st_value to i8*
  %315 = bitcast i64* %new_bss_addr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %314, i8* %315, i64 8, i32 8, i1 false)
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.329, %lor.lhs.false.322
  br label %for.inc.331

for.inc.331:                                      ; preds = %if.end.330
  %316 = load %struct.Elf64_Sym*, %struct.Elf64_Sym** %symp, align 8
  %incdec.ptr = getelementptr inbounds %struct.Elf64_Sym, %struct.Elf64_Sym* %316, i32 1
  store %struct.Elf64_Sym* %incdec.ptr, %struct.Elf64_Sym** %symp, align 8
  br label %for.cond.299

for.end.332:                                      ; preds = %for.cond.299
  br label %for.cond.272

for.end.333:                                      ; preds = %for.cond.272
  %317 = load i8*, i8** %new_base, align 8
  %318 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_section_h, align 8
  %319 = bitcast %struct.Elf64_Shdr* %318 to i8*
  %320 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shstrndx334 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %320, i32 0, i32 13
  %321 = load i16, i16* %e_shstrndx334, align 2
  %conv335 = zext i16 %321 to i64
  %322 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shentsize336 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %322, i32 0, i32 11
  %323 = load i16, i16* %e_shentsize336, align 2
  %conv337 = zext i16 %323 to i64
  %call338 = call i8* @entry_address(i8* %319, i64 %conv335, i64 %conv337)
  %324 = bitcast i8* %call338 to %struct.Elf64_Shdr*
  %sh_offset339 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %324, i32 0, i32 4
  %325 = load i64, i64* %sh_offset339, align 8
  %add.ptr340 = getelementptr inbounds i8, i8* %317, i64 %325
  store i8* %add.ptr340, i8** %new_section_names, align 8
  %326 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shnum341 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %326, i32 0, i32 12
  %327 = load i16, i16* %e_shnum341, align 2
  %conv342 = zext i16 %327 to i64
  store i64 %conv342, i64* %n, align 8
  br label %for.cond.343

for.cond.343:                                     ; preds = %if.end.367, %for.end.333
  %328 = load i64, i64* %n, align 8
  %dec344 = add nsw i64 %328, -1
  store i64 %dec344, i64* %n, align 8
  %cmp345 = icmp slt i64 0, %dec344
  br i1 %cmp345, label %for.body.347, label %for.end.368

for.body.347:                                     ; preds = %for.cond.343
  %329 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %old_section_h, align 8
  %330 = bitcast %struct.Elf64_Shdr* %329 to i8*
  %331 = load i64, i64* %n, align 8
  %332 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %old_file_h, align 8
  %e_shentsize349 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %332, i32 0, i32 11
  %333 = load i16, i16* %e_shentsize349, align 2
  %conv350 = zext i16 %333 to i64
  %call351 = call i8* @entry_address(i8* %330, i64 %331, i64 %conv350)
  %334 = bitcast i8* %call351 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %334, %struct.Elf64_Shdr** %old_shdr348, align 8
  %335 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_section_h, align 8
  %336 = bitcast %struct.Elf64_Shdr* %335 to i8*
  %337 = load i64, i64* %n, align 8
  %338 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shentsize353 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %338, i32 0, i32 11
  %339 = load i16, i16* %e_shentsize353, align 2
  %conv354 = zext i16 %339 to i64
  %call355 = call i8* @entry_address(i8* %336, i64 %337, i64 %conv354)
  %340 = bitcast i8* %call355 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %340, %struct.Elf64_Shdr** %new_shdr352, align 8
  %341 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %old_shdr348, align 8
  %sh_type356 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %341, i32 0, i32 1
  %342 = load i32, i32* %sh_type356, align 4
  %cmp357 = icmp eq i32 %342, 8
  br i1 %cmp357, label %land.lhs.true.359, label %if.end.367

land.lhs.true.359:                                ; preds = %for.body.347
  %343 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr352, align 8
  %sh_type360 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %343, i32 0, i32 1
  %344 = load i32, i32* %sh_type360, align 4
  %cmp361 = icmp eq i32 %344, 1
  br i1 %cmp361, label %if.then.363, label %if.end.367

if.then.363:                                      ; preds = %land.lhs.true.359
  %345 = load i8*, i8** %new_section_names, align 8
  %346 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_shdr352, align 8
  %sh_name364 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %346, i32 0, i32 0
  %347 = load i32, i32* %sh_name364, align 4
  %idx.ext365 = zext i32 %347 to i64
  %add.ptr366 = getelementptr inbounds i8, i8* %345, i64 %idx.ext365
  store i8 44, i8* %add.ptr366, align 1
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.363, %land.lhs.true.359, %for.body.347
  br label %for.cond.343

for.end.368:                                      ; preds = %for.cond.343
  %348 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shnum369 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %348, i32 0, i32 12
  %349 = load i16, i16* %e_shnum369, align 2
  %conv370 = zext i16 %349 to i64
  store i64 %conv370, i64* %n, align 8
  br label %for.cond.371

for.cond.371:                                     ; preds = %sw.epilog, %for.end.368
  %350 = load i64, i64* %n, align 8
  %dec372 = add nsw i64 %350, -1
  store i64 %dec372, i64* %n, align 8
  %cmp373 = icmp slt i64 0, %dec372
  br i1 %cmp373, label %for.body.375, label %for.end.444

for.body.375:                                     ; preds = %for.cond.371
  %351 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_section_h, align 8
  %352 = bitcast %struct.Elf64_Shdr* %351 to i8*
  %353 = load i64, i64* %n, align 8
  %354 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shentsize376 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %354, i32 0, i32 11
  %355 = load i16, i16* %e_shentsize376, align 2
  %conv377 = zext i16 %355 to i64
  %call378 = call i8* @entry_address(i8* %352, i64 %353, i64 %conv377)
  %356 = bitcast i8* %call378 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %356, %struct.Elf64_Shdr** %rel_shdr, align 8
  %357 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %rel_shdr, align 8
  %sh_type380 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %357, i32 0, i32 1
  %358 = load i32, i32* %sh_type380, align 4
  switch i32 %358, label %sw.default [
    i32 9, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.default:                                       ; preds = %for.body.375
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.375, %for.body.375
  %359 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %new_section_h, align 8
  %360 = bitcast %struct.Elf64_Shdr* %359 to i8*
  %361 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %rel_shdr, align 8
  %sh_info = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %361, i32 0, i32 7
  %362 = load i32, i32* %sh_info, align 4
  %conv381 = zext i32 %362 to i64
  %363 = load %struct.Elf64_Ehdr*, %struct.Elf64_Ehdr** %new_file_h, align 8
  %e_shentsize382 = getelementptr inbounds %struct.Elf64_Ehdr, %struct.Elf64_Ehdr* %363, i32 0, i32 11
  %364 = load i16, i16* %e_shentsize382, align 2
  %conv383 = zext i16 %364 to i64
  %call384 = call i8* @entry_address(i8* %360, i64 %conv381, i64 %conv383)
  %365 = bitcast i8* %call384 to %struct.Elf64_Shdr*
  store %struct.Elf64_Shdr* %365, %struct.Elf64_Shdr** %shdr379, align 8
  %366 = load i8*, i8** %old_section_names, align 8
  %367 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr379, align 8
  %sh_name385 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %367, i32 0, i32 0
  %368 = load i32, i32* %sh_name385, align 4
  %idx.ext386 = zext i32 %368 to i64
  %add.ptr387 = getelementptr inbounds i8, i8* %366, i64 %idx.ext386
  %call388 = call i32 @strcmp(i8* %add.ptr387, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #9
  %tobool389 = icmp ne i32 %call388, 0
  br i1 %tobool389, label %lor.lhs.false.390, label %if.then.420

lor.lhs.false.390:                                ; preds = %sw.bb
  %369 = load i8*, i8** %old_section_names, align 8
  %370 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr379, align 8
  %sh_name391 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %370, i32 0, i32 0
  %371 = load i32, i32* %sh_name391, align 4
  %idx.ext392 = zext i32 %371 to i64
  %add.ptr393 = getelementptr inbounds i8, i8* %369, i64 %idx.ext392
  %call394 = call i32 @strcmp(i8* %add.ptr393, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)) #9
  %tobool395 = icmp ne i32 %call394, 0
  br i1 %tobool395, label %lor.lhs.false.396, label %if.then.420

lor.lhs.false.396:                                ; preds = %lor.lhs.false.390
  %372 = load i8*, i8** %old_section_names, align 8
  %373 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr379, align 8
  %sh_name397 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %373, i32 0, i32 0
  %374 = load i32, i32* %sh_name397, align 4
  %idx.ext398 = zext i32 %374 to i64
  %add.ptr399 = getelementptr inbounds i8, i8* %372, i64 %idx.ext398
  %call400 = call i32 @strcmp(i8* %add.ptr399, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #9
  %tobool401 = icmp ne i32 %call400, 0
  br i1 %tobool401, label %lor.lhs.false.402, label %if.then.420

lor.lhs.false.402:                                ; preds = %lor.lhs.false.396
  %375 = load i8*, i8** %old_section_names, align 8
  %376 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr379, align 8
  %sh_name403 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %376, i32 0, i32 0
  %377 = load i32, i32* %sh_name403, align 4
  %idx.ext404 = zext i32 %377 to i64
  %add.ptr405 = getelementptr inbounds i8, i8* %375, i64 %idx.ext404
  %call406 = call i32 @strcmp(i8* %add.ptr405, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #9
  %tobool407 = icmp ne i32 %call406, 0
  br i1 %tobool407, label %lor.lhs.false.408, label %if.then.420

lor.lhs.false.408:                                ; preds = %lor.lhs.false.402
  %378 = load i8*, i8** %old_section_names, align 8
  %379 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr379, align 8
  %sh_name409 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %379, i32 0, i32 0
  %380 = load i32, i32* %sh_name409, align 4
  %idx.ext410 = zext i32 %380 to i64
  %add.ptr411 = getelementptr inbounds i8, i8* %378, i64 %idx.ext410
  %call412 = call i32 @strcmp(i8* %add.ptr411, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #9
  %tobool413 = icmp ne i32 %call412, 0
  br i1 %tobool413, label %lor.lhs.false.414, label %if.then.420

lor.lhs.false.414:                                ; preds = %lor.lhs.false.408
  %381 = load i8*, i8** %old_section_names, align 8
  %382 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr379, align 8
  %sh_name415 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %382, i32 0, i32 0
  %383 = load i32, i32* %sh_name415, align 4
  %idx.ext416 = zext i32 %383 to i64
  %add.ptr417 = getelementptr inbounds i8, i8* %381, i64 %idx.ext416
  %call418 = call i32 @strcmp(i8* %add.ptr417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #9
  %tobool419 = icmp ne i32 %call418, 0
  br i1 %tobool419, label %if.end.443, label %if.then.420

if.then.420:                                      ; preds = %lor.lhs.false.414, %lor.lhs.false.408, %lor.lhs.false.402, %lor.lhs.false.396, %lor.lhs.false.390, %sw.bb
  %384 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr379, align 8
  %sh_addr421 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %384, i32 0, i32 3
  %385 = load i64, i64* %sh_addr421, align 8
  %386 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %shdr379, align 8
  %sh_offset422 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %386, i32 0, i32 4
  %387 = load i64, i64* %sh_offset422, align 8
  %sub423 = sub i64 %385, %387
  store i64 %sub423, i64* %offset, align 8
  %388 = load i8*, i8** %old_base, align 8
  %389 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %rel_shdr, align 8
  %sh_offset424 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %389, i32 0, i32 4
  %390 = load i64, i64* %sh_offset424, align 8
  %add.ptr425 = getelementptr inbounds i8, i8* %388, i64 %390
  store i8* %add.ptr425, i8** %reloc, align 8
  %391 = load i8*, i8** %reloc, align 8
  %392 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %rel_shdr, align 8
  %sh_size426 = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %392, i32 0, i32 5
  %393 = load i64, i64* %sh_size426, align 8
  %add.ptr427 = getelementptr inbounds i8, i8* %391, i64 %393
  store i8* %add.ptr427, i8** %end, align 8
  br label %for.cond.428

for.cond.428:                                     ; preds = %for.inc.440, %if.then.420
  %394 = load i8*, i8** %reloc, align 8
  %395 = load i8*, i8** %end, align 8
  %cmp429 = icmp ult i8* %394, %395
  br i1 %cmp429, label %for.body.431, label %for.end.442

for.body.431:                                     ; preds = %for.cond.428
  %396 = load i8*, i8** %reloc, align 8
  %397 = bitcast i8* %396 to %struct.Elf64_Rel*
  %r_offset = getelementptr inbounds %struct.Elf64_Rel, %struct.Elf64_Rel* %397, i32 0, i32 0
  %398 = load i64, i64* %r_offset, align 8
  %399 = load i64, i64* %offset, align 8
  %sub432 = sub i64 %398, %399
  store i64 %sub432, i64* %addr, align 8
  %400 = load i8*, i8** %reloc, align 8
  %401 = bitcast i8* %400 to %struct.Elf64_Rel*
  %r_offset433 = getelementptr inbounds %struct.Elf64_Rel, %struct.Elf64_Rel* %401, i32 0, i32 0
  %402 = load i64, i64* %r_offset433, align 8
  %cmp434 = icmp eq i64 %402, 0
  br i1 %cmp434, label %if.then.436, label %if.end.437

if.then.436:                                      ; preds = %for.body.431
  br label %for.inc.440

if.end.437:                                       ; preds = %for.body.431
  %403 = load i8*, i8** %new_base, align 8
  %404 = load i64, i64* %addr, align 8
  %add.ptr438 = getelementptr inbounds i8, i8* %403, i64 %404
  %405 = load i8*, i8** %old_base, align 8
  %406 = load i64, i64* %addr, align 8
  %add.ptr439 = getelementptr inbounds i8, i8* %405, i64 %406
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr438, i8* %add.ptr439, i64 8, i32 1, i1 false)
  br label %for.inc.440

for.inc.440:                                      ; preds = %if.end.437, %if.then.436
  %407 = load %struct.Elf64_Shdr*, %struct.Elf64_Shdr** %rel_shdr, align 8
  %sh_entsize = getelementptr inbounds %struct.Elf64_Shdr, %struct.Elf64_Shdr* %407, i32 0, i32 9
  %408 = load i64, i64* %sh_entsize, align 8
  %409 = load i8*, i8** %reloc, align 8
  %add.ptr441 = getelementptr inbounds i8, i8* %409, i64 %408
  store i8* %add.ptr441, i8** %reloc, align 8
  br label %for.cond.428

for.end.442:                                      ; preds = %for.cond.428
  br label %if.end.443

if.end.443:                                       ; preds = %for.end.442, %lor.lhs.false.414
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.443, %sw.default
  br label %for.cond.371

for.end.444:                                      ; preds = %for.cond.371
  %410 = load i32, i32* %new_file, align 4
  %411 = load i8*, i8** %new_base, align 8
  %412 = load i64, i64* %new_file_size, align 8
  %call445 = call i64 @write(i32 %410, i8* %411, i64 %412)
  %413 = load i64, i64* %new_file_size, align 8
  %cmp446 = icmp ne i64 %call445, %413
  br i1 %cmp446, label %if.then.448, label %if.end.451

if.then.448:                                      ; preds = %for.end.444
  %414 = load i64, i64* %new_file_size, align 8
  %415 = load i8*, i8** %new_name.addr, align 8
  %call449 = call i32* @__errno_location() #7
  %416 = load i32, i32* %call449, align 4
  %call450 = call i8* @strerror(i32 %416) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i64 %414, i8* %415, i8* %call450) #8
  unreachable

if.end.451:                                       ; preds = %for.end.444
  %417 = load i8*, i8** %old_base, align 8
  %418 = load i64, i64* %old_file_size, align 8
  %call452 = call i32 @munmap(i8* %417, i64 %418) #5
  %419 = load i8*, i8** %new_base, align 8
  %420 = load i64, i64* %new_file_size, align 8
  %call453 = call i32 @munmap(i8* %419, i64 %420) #5
  %421 = load i32, i32* %old_file, align 4
  %call454 = call i32 @emacs_close(i32 %421)
  %cmp455 = icmp ne i32 %call454, 0
  br i1 %cmp455, label %if.then.457, label %if.end.460

if.then.457:                                      ; preds = %if.end.451
  %422 = load i8*, i8** %old_name.addr, align 8
  %call458 = call i32* @__errno_location() #7
  %423 = load i32, i32* %call458, align 4
  %call459 = call i8* @strerror(i32 %423) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* %422, i8* %call459) #8
  unreachable

if.end.460:                                       ; preds = %if.end.451
  %424 = load i32, i32* %new_file, align 4
  %call461 = call i32 @emacs_close(i32 %424)
  %cmp462 = icmp ne i32 %call461, 0
  br i1 %cmp462, label %if.then.464, label %if.end.467

if.then.464:                                      ; preds = %if.end.460
  %425 = load i8*, i8** %new_name.addr, align 8
  %call465 = call i32* @__errno_location() #7
  %426 = load i32, i32* %call465, align 4
  %call466 = call i8* @strerror(i32 %426) #5
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* %425, i8* %call466) #8
  unreachable

if.end.467:                                       ; preds = %if.end.460
  ret void
}

declare i32 @emacs_open(i8*, i32, i32) #1

; Function Attrs: noreturn
declare void @fatal(i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind
declare i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare i8* @mmap(i8*, i64, i32, i32, i32, i64) #3

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @entry_address(i8* %section_h, i64 %idx, i64 %entsize) #0 {
entry:
  %section_h.addr = alloca i8*, align 8
  %idx.addr = alloca i64, align 8
  %entsize.addr = alloca i64, align 8
  %h = alloca i8*, align 8
  store i8* %section_h, i8** %section_h.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64 %entsize, i64* %entsize.addr, align 8
  %0 = load i8*, i8** %section_h.addr, align 8
  store i8* %0, i8** %h, align 8
  %1 = load i8*, i8** %h, align 8
  %2 = load i64, i64* %idx.addr, align 8
  %3 = load i64, i64* %entsize.addr, align 8
  %mul = mul nsw i64 %2, %3
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %mul
  ret i8* %add.ptr
}

; Function Attrs: nounwind
declare i8* @sbrk(i64) #3

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @munmap(i8*, i64) #3

declare i32 @emacs_close(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
