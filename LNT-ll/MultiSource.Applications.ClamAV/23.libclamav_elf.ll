; ModuleID = './MultiSource.Applications.ClamAV/23.libclamav_elf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.elf_file_hdr32 = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf_section_hdr32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf_program_hdr32 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_exe_info = type { i32, i16, i64, %struct.cli_exe_section* }
%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"in cli_scanelf\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ELF: Can't read file header\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ELF: Not an ELF file\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"ELF: 64-bit binaries are not supported (yet)\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"ELF: File is little-endian - conversion not required\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"ELF: File is big-endian - data conversion enabled\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"ELF: File type: None\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"ELF: File type: Relocatable\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"ELF: File type: Executable\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"ELF: File type: Core\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"ELF: File type: Unknown (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"ELF: Machine type: None\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"ELF: Machine type: SPARC\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"ELF: Machine type: Intel 80386\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"ELF: Machine type: Motorola 68000\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"ELF: Machine type: MIPS RS3000\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"ELF: Machine type: HPPA\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"ELF: Machine type: PowerPC\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"ELF: Machine type: PowerPC 64-bit\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"ELF: Machine type: IBM S390\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"ELF: Machine type: ARM\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"ELF: Machine type: Digital Alpha\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"ELF: Machine type: SPARC v9 64-bit\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"ELF: Machine type: IA64\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"ELF: Machine type: Unknown (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"ELF: Number of program headers: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"ELF: Suspicious number of program headers\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Broken.Executable\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"ELF: phentsize != sizeof(struct elf_program_hdr32)\0A\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"ELF: Program header table offset: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"ELF: Can't allocate memory for program headers\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"------------------------------------\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"ELF: Can't read segment #%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"ELF: Possibly broken ELF file\0A\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"ELF: Segment #%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"ELF: Segment type: 0x%x\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"ELF: Segment offset: 0x%x\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"ELF: Segment virtual address: 0x%x\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"ELF: Segment real size: 0x%x\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"ELF: Segment virtual size: 0x%x\0A\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"ELF: Can't calculate file offset of entry point\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"ELF: Entry point address: 0x%.8x\0A\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"ELF: Entry point offset: 0x%.8x (%d)\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"ELF: Number of sections: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"ELF: Suspicious number of sections\0A\00", align 1
@.str.46 = private unnamed_addr constant [52 x i8] c"ELF: shentsize != sizeof(struct elf_section_hdr32)\0A\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"ELF: Section header table offset: %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"ELF: Can't allocate memory for section headers\0A\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"ELF: Can't read section header\0A\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"ELF: Section %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"ELF: Section offset: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"ELF: Section size: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"ELF: Section type: Dynamic linking information\0A\00", align 1
@.str.54 = private unnamed_addr constant [48 x i8] c"ELF: Section type: Symbols for dynamic linking\0A\00", align 1
@.str.55 = private unnamed_addr constant [63 x i8] c"ELF: Section type: Array of pointers to termination functions\0A\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"ELF: Section type: Symbol hash table\0A\00", align 1
@.str.57 = private unnamed_addr constant [66 x i8] c"ELF: Section type: Array of pointers to initialization functions\0A\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"ELF: Section type: Empty section (NOBITS)\0A\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"ELF: Section type: Note section\0A\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"ELF: Section type: Null (no associated section)\0A\00", align 1
@.str.61 = private unnamed_addr constant [59 x i8] c"ELF: Section type: Array of pointers to preinit functions\0A\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"ELF: Section type: Program information\0A\00", align 1
@.str.63 = private unnamed_addr constant [60 x i8] c"ELF: Section type: Relocation entries w/o explicit addends\0A\00", align 1
@.str.64 = private unnamed_addr constant [61 x i8] c"ELF: Section type: Relocation entries with explicit addends\0A\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"ELF: Section type: String table\0A\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"ELF: Section type: Symbol table\0A\00", align 1
@.str.67 = private unnamed_addr constant [45 x i8] c"ELF: Section type: Provided symbol versions\0A\00", align 1
@.str.68 = private unnamed_addr constant [45 x i8] c"ELF: Section type: Required symbol versions\0A\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"ELF: Section type: Symbol Version Table\0A\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"ELF: Section type: Unknown\0A\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"ELF: Section contains writable data\0A\00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"ELF: Section occupies memory\0A\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"ELF: Section contains executable code\0A\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"in cli_elfheader\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_scanelf(i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %file_hdr = alloca %struct.elf_file_hdr32, align 4
  %section_hdr = alloca %struct.elf_section_hdr32*, align 8
  %program_hdr = alloca %struct.elf_program_hdr32*, align 8
  %shnum = alloca i16, align 2
  %phnum = alloca i16, align 2
  %shentsize = alloca i16, align 2
  %phentsize = alloca i16, align 2
  %entry1 = alloca i32, align 4
  %fentry = alloca i32, align 4
  %shoff = alloca i32, align 4
  %phoff = alloca i32, align 4
  %i = alloca i32, align 4
  %conv = alloca i8, align 1
  %err = alloca i8, align 1
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store i8 0, i8* %conv, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %0 = load i32, i32* %desc.addr, align 4
  %1 = bitcast %struct.elf_file_hdr32* %file_hdr to i8*
  %call = call i64 @read(i32 %0, i8* %1, i64 52)
  %cmp = icmp ne i64 %call, 52
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %e_ident = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %e_ident, i32 0, i32 0
  %call3 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #5
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %e_ident6 = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %e_ident6, i32 0, i64 4
  %2 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %2 to i32
  %cmp8 = icmp ne i32 %conv7, 1
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  %e_ident12 = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [16 x i8], [16 x i8]* %e_ident12, i32 0, i64 5
  %3 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %3 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.11
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.18

if.else:                                          ; preds = %if.end.11
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i32 0, i32 0))
  store i8 1, i8* %conv, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  %e_type = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 1
  %4 = load i16, i16* %e_type, align 2
  %5 = load i8, i8* %conv, align 1
  %call19 = call zeroext i16 @EC16(i16 zeroext %4, i8 zeroext %5)
  %conv20 = zext i16 %call19 to i32
  switch i32 %conv20, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.21
    i32 2, label %sw.bb.22
    i32 3, label %sw.bb.23
    i32 4, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %if.end.18
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.18
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end.18
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0))
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end.18
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end.18
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.18
  %e_type25 = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 1
  %6 = load i16, i16* %e_type25, align 2
  %7 = load i8, i8* %conv, align 1
  %call26 = call zeroext i16 @EC16(i16 zeroext %6, i8 zeroext %7)
  %conv27 = zext i16 %call26 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0), i32 %conv27)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb
  %e_machine = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 2
  %8 = load i16, i16* %e_machine, align 2
  %9 = load i8, i8* %conv, align 1
  %call28 = call zeroext i16 @EC16(i16 zeroext %8, i8 zeroext %9)
  %conv29 = zext i16 %call28 to i32
  switch i32 %conv29, label %sw.default.43 [
    i32 0, label %sw.bb.30
    i32 2, label %sw.bb.31
    i32 3, label %sw.bb.32
    i32 4, label %sw.bb.33
    i32 8, label %sw.bb.34
    i32 21, label %sw.bb.35
    i32 32, label %sw.bb.36
    i32 33, label %sw.bb.37
    i32 34, label %sw.bb.38
    i32 64, label %sw.bb.39
    i32 65, label %sw.bb.40
    i32 67, label %sw.bb.41
    i32 80, label %sw.bb.42
  ]

sw.bb.30:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.31:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.32:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.33:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.34:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.35:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.36:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.37:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.38:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.39:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.40:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.41:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0))
  br label %sw.epilog.47

sw.bb.42:                                         ; preds = %sw.epilog
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
  br label %sw.epilog.47

sw.default.43:                                    ; preds = %sw.epilog
  %e_machine44 = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 2
  %10 = load i16, i16* %e_machine44, align 2
  %11 = load i8, i8* %conv, align 1
  %call45 = call zeroext i16 @EC16(i16 zeroext %10, i8 zeroext %11)
  %conv46 = zext i16 %call45 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i32 %conv46)
  br label %sw.epilog.47

sw.epilog.47:                                     ; preds = %sw.default.43, %sw.bb.42, %sw.bb.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30
  %e_entry = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 4
  %12 = load i32, i32* %e_entry, align 4
  %13 = load i8, i8* %conv, align 1
  %call48 = call i32 @EC32(i32 %12, i8 zeroext %13)
  store i32 %call48, i32* %entry1, align 4
  %e_phnum = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 10
  %14 = load i16, i16* %e_phnum, align 2
  %15 = load i8, i8* %conv, align 1
  %call49 = call zeroext i16 @EC16(i16 zeroext %14, i8 zeroext %15)
  store i16 %call49, i16* %phnum, align 2
  %16 = load i16, i16* %phnum, align 2
  %conv50 = zext i16 %16 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i32 0, i32 0), i32 %conv50)
  %17 = load i16, i16* %phnum, align 2
  %conv51 = zext i16 %17 to i32
  %cmp52 = icmp sgt i32 %conv51, 128
  br i1 %cmp52, label %if.then.54, label %if.end.62

if.then.54:                                       ; preds = %sw.epilog.47
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0))
  %18 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %18, i32 0, i32 5
  %19 = load i32, i32* %options, align 4
  %and = and i32 %19, 64
  %tobool55 = icmp ne i32 %and, 0
  br i1 %tobool55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %if.then.54
  %20 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %20, i32 0, i32 0
  %21 = load i8**, i8*** %virname, align 8
  %tobool57 = icmp ne i8** %21, null
  br i1 %tobool57, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.then.56
  %22 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname59 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %22, i32 0, i32 0
  %23 = load i8**, i8*** %virname59, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %23, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.then.56
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.54
  store i32 -124, i32* %retval
  br label %return

if.end.62:                                        ; preds = %sw.epilog.47
  %24 = load i16, i16* %phnum, align 2
  %conv63 = zext i16 %24 to i32
  %tobool64 = icmp ne i32 %conv63, 0
  br i1 %tobool64, label %land.lhs.true, label %if.end.155

land.lhs.true:                                    ; preds = %if.end.62
  %25 = load i32, i32* %entry1, align 4
  %tobool65 = icmp ne i32 %25, 0
  br i1 %tobool65, label %if.then.66, label %if.end.155

if.then.66:                                       ; preds = %land.lhs.true
  %e_phentsize = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 9
  %26 = load i16, i16* %e_phentsize, align 2
  %27 = load i8, i8* %conv, align 1
  %call67 = call zeroext i16 @EC16(i16 zeroext %26, i8 zeroext %27)
  store i16 %call67, i16* %phentsize, align 2
  %28 = load i16, i16* %phentsize, align 2
  %conv68 = zext i16 %28 to i64
  %cmp69 = icmp ne i64 %conv68, 32
  br i1 %cmp69, label %if.then.71, label %if.end.82

if.then.71:                                       ; preds = %if.then.66
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i32 0, i32 0))
  %29 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options72 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %29, i32 0, i32 5
  %30 = load i32, i32* %options72, align 4
  %and73 = and i32 %30, 64
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %if.then.71
  %31 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname76 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %31, i32 0, i32 0
  %32 = load i8**, i8*** %virname76, align 8
  %tobool77 = icmp ne i8** %32, null
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.75
  %33 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname79 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %33, i32 0, i32 0
  %34 = load i8**, i8*** %virname79, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %34, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.75
  store i32 1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.then.71
  store i32 -124, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.66
  %e_phoff = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 5
  %35 = load i32, i32* %e_phoff, align 4
  %36 = load i8, i8* %conv, align 1
  %call83 = call i32 @EC32(i32 %35, i8 zeroext %36)
  store i32 %call83, i32* %phoff, align 4
  %37 = load i32, i32* %phoff, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0), i32 %37)
  %38 = load i32, i32* %desc.addr, align 4
  %39 = load i32, i32* %phoff, align 4
  %conv84 = zext i32 %39 to i64
  %call85 = call i64 @lseek(i32 %38, i64 %conv84, i32 0) #6
  %conv86 = trunc i64 %call85 to i32
  %40 = load i32, i32* %phoff, align 4
  %cmp87 = icmp ne i32 %conv86, %40
  br i1 %cmp87, label %if.then.89, label %if.end.100

if.then.89:                                       ; preds = %if.end.82
  %41 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options90 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %41, i32 0, i32 5
  %42 = load i32, i32* %options90, align 4
  %and91 = and i32 %42, 64
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.99

if.then.93:                                       ; preds = %if.then.89
  %43 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname94 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %43, i32 0, i32 0
  %44 = load i8**, i8*** %virname94, align 8
  %tobool95 = icmp ne i8** %44, null
  br i1 %tobool95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.then.93
  %45 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname97 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %45, i32 0, i32 0
  %46 = load i8**, i8*** %virname97, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %46, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.then.93
  store i32 1, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.then.89
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.82
  %47 = load i16, i16* %phnum, align 2
  %conv101 = zext i16 %47 to i64
  %48 = load i16, i16* %phentsize, align 2
  %conv102 = zext i16 %48 to i64
  %call103 = call i8* @cli_calloc(i64 %conv101, i64 %conv102)
  %49 = bitcast i8* %call103 to %struct.elf_program_hdr32*
  store %struct.elf_program_hdr32* %49, %struct.elf_program_hdr32** %program_hdr, align 8
  %50 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %tobool104 = icmp ne %struct.elf_program_hdr32* %50, null
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.end.100
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.106:                                       ; preds = %if.end.100
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.106
  %51 = load i32, i32* %i, align 4
  %52 = load i16, i16* %phnum, align 2
  %conv107 = zext i16 %52 to i32
  %cmp108 = icmp ult i32 %51, %conv107
  br i1 %cmp108, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i32, i32* %desc.addr, align 4
  %54 = load i32, i32* %i, align 4
  %idxprom = zext i32 %54 to i64
  %55 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %arrayidx110 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %55, i64 %idxprom
  %56 = bitcast %struct.elf_program_hdr32* %arrayidx110 to i8*
  %call111 = call i64 @read(i32 %53, i8* %56, i64 32)
  %cmp112 = icmp ne i64 %call111, 32
  br i1 %cmp112, label %if.then.114, label %if.end.125

if.then.114:                                      ; preds = %for.body
  %57 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i32 %57)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0))
  %58 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %59 = bitcast %struct.elf_program_hdr32* %58 to i8*
  call void @free(i8* %59) #6
  %60 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options115 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %60, i32 0, i32 5
  %61 = load i32, i32* %options115, align 4
  %and116 = and i32 %61, 64
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.124

if.then.118:                                      ; preds = %if.then.114
  %62 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname119 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %62, i32 0, i32 0
  %63 = load i8**, i8*** %virname119, align 8
  %tobool120 = icmp ne i8** %63, null
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.then.118
  %64 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname122 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %64, i32 0, i32 0
  %65 = load i8**, i8*** %virname122, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %65, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.then.118
  store i32 1, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.then.114
  store i32 0, i32* %retval
  br label %return

if.end.125:                                       ; preds = %for.body
  %66 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.35, i32 0, i32 0), i32 %66)
  %67 = load i32, i32* %i, align 4
  %idxprom126 = zext i32 %67 to i64
  %68 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %arrayidx127 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %68, i64 %idxprom126
  %p_type = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx127, i32 0, i32 0
  %69 = load i32, i32* %p_type, align 4
  %70 = load i8, i8* %conv, align 1
  %call128 = call i32 @EC32(i32 %69, i8 zeroext %70)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), i32 %call128)
  %71 = load i32, i32* %i, align 4
  %idxprom129 = zext i32 %71 to i64
  %72 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %arrayidx130 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %72, i64 %idxprom129
  %p_offset = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx130, i32 0, i32 1
  %73 = load i32, i32* %p_offset, align 4
  %74 = load i8, i8* %conv, align 1
  %call131 = call i32 @EC32(i32 %73, i8 zeroext %74)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.37, i32 0, i32 0), i32 %call131)
  %75 = load i32, i32* %i, align 4
  %idxprom132 = zext i32 %75 to i64
  %76 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %arrayidx133 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %76, i64 %idxprom132
  %p_vaddr = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx133, i32 0, i32 2
  %77 = load i32, i32* %p_vaddr, align 4
  %78 = load i8, i8* %conv, align 1
  %call134 = call i32 @EC32(i32 %77, i8 zeroext %78)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0), i32 %call134)
  %79 = load i32, i32* %i, align 4
  %idxprom135 = zext i32 %79 to i64
  %80 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %arrayidx136 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %80, i64 %idxprom135
  %p_filesz = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx136, i32 0, i32 4
  %81 = load i32, i32* %p_filesz, align 4
  %82 = load i8, i8* %conv, align 1
  %call137 = call i32 @EC32(i32 %81, i8 zeroext %82)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i32 0, i32 0), i32 %call137)
  %83 = load i32, i32* %i, align 4
  %idxprom138 = zext i32 %83 to i64
  %84 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %arrayidx139 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %84, i64 %idxprom138
  %p_memsz = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx139, i32 0, i32 5
  %85 = load i32, i32* %p_memsz, align 4
  %86 = load i8, i8* %conv, align 1
  %call140 = call i32 @EC32(i32 %85, i8 zeroext %86)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i32 0, i32 0), i32 %call140)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.125
  %87 = load i32, i32* %i, align 4
  %inc = add i32 %87, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %88 = load i32, i32* %entry1, align 4
  %89 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %90 = load i16, i16* %phnum, align 2
  %91 = load i8, i8* %conv, align 1
  %call141 = call i32 @cli_rawaddr(i32 %88, %struct.elf_program_hdr32* %89, i16 zeroext %90, i8 zeroext %91, i8* %err)
  store i32 %call141, i32* %fentry, align 4
  %92 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %93 = bitcast %struct.elf_program_hdr32* %92 to i8*
  call void @free(i8* %93) #6
  %94 = load i8, i8* %err, align 1
  %tobool142 = icmp ne i8 %94, 0
  br i1 %tobool142, label %if.then.143, label %if.end.154

if.then.143:                                      ; preds = %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.41, i32 0, i32 0))
  %95 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options144 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %95, i32 0, i32 5
  %96 = load i32, i32* %options144, align 4
  %and145 = and i32 %96, 64
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.153

if.then.147:                                      ; preds = %if.then.143
  %97 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname148 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %97, i32 0, i32 0
  %98 = load i8**, i8*** %virname148, align 8
  %tobool149 = icmp ne i8** %98, null
  br i1 %tobool149, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.then.147
  %99 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname151 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %99, i32 0, i32 0
  %100 = load i8**, i8*** %virname151, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %100, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %if.then.147
  store i32 1, i32* %retval
  br label %return

if.end.153:                                       ; preds = %if.then.143
  store i32 -124, i32* %retval
  br label %return

if.end.154:                                       ; preds = %for.end
  %101 = load i32, i32* %entry1, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0), i32 %101)
  %102 = load i32, i32* %fentry, align 4
  %103 = load i32, i32* %fentry, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0), i32 %102, i32 %103)
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %land.lhs.true, %if.end.62
  %e_shnum = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 12
  %104 = load i16, i16* %e_shnum, align 2
  %105 = load i8, i8* %conv, align 1
  %call156 = call zeroext i16 @EC16(i16 zeroext %104, i8 zeroext %105)
  store i16 %call156, i16* %shnum, align 2
  %106 = load i16, i16* %shnum, align 2
  %conv157 = zext i16 %106 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i32 0, i32 0), i32 %conv157)
  %107 = load i16, i16* %shnum, align 2
  %conv158 = zext i16 %107 to i32
  %cmp159 = icmp sgt i32 %conv158, 256
  br i1 %cmp159, label %if.then.161, label %if.end.172

if.then.161:                                      ; preds = %if.end.155
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0))
  %108 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options162 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %108, i32 0, i32 5
  %109 = load i32, i32* %options162, align 4
  %and163 = and i32 %109, 64
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.171

if.then.165:                                      ; preds = %if.then.161
  %110 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname166 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %110, i32 0, i32 0
  %111 = load i8**, i8*** %virname166, align 8
  %tobool167 = icmp ne i8** %111, null
  br i1 %tobool167, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %if.then.165
  %112 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname169 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %112, i32 0, i32 0
  %113 = load i8**, i8*** %virname169, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %113, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %if.then.165
  store i32 1, i32* %retval
  br label %return

if.end.171:                                       ; preds = %if.then.161
  store i32 -124, i32* %retval
  br label %return

if.end.172:                                       ; preds = %if.end.155
  %e_shentsize = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 11
  %114 = load i16, i16* %e_shentsize, align 2
  %115 = load i8, i8* %conv, align 1
  %call173 = call zeroext i16 @EC16(i16 zeroext %114, i8 zeroext %115)
  store i16 %call173, i16* %shentsize, align 2
  %116 = load i16, i16* %shentsize, align 2
  %conv174 = zext i16 %116 to i64
  %cmp175 = icmp ne i64 %conv174, 40
  br i1 %cmp175, label %if.then.177, label %if.end.188

if.then.177:                                      ; preds = %if.end.172
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.46, i32 0, i32 0))
  %117 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options178 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %117, i32 0, i32 5
  %118 = load i32, i32* %options178, align 4
  %and179 = and i32 %118, 64
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then.181, label %if.end.187

if.then.181:                                      ; preds = %if.then.177
  %119 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname182 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %119, i32 0, i32 0
  %120 = load i8**, i8*** %virname182, align 8
  %tobool183 = icmp ne i8** %120, null
  br i1 %tobool183, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %if.then.181
  %121 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname185 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %121, i32 0, i32 0
  %122 = load i8**, i8*** %virname185, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %122, align 8
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %if.then.181
  store i32 1, i32* %retval
  br label %return

if.end.187:                                       ; preds = %if.then.177
  store i32 -124, i32* %retval
  br label %return

if.end.188:                                       ; preds = %if.end.172
  %e_shoff = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 6
  %123 = load i32, i32* %e_shoff, align 4
  %124 = load i8, i8* %conv, align 1
  %call189 = call i32 @EC32(i32 %123, i8 zeroext %124)
  store i32 %call189, i32* %shoff, align 4
  %125 = load i32, i32* %shoff, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.47, i32 0, i32 0), i32 %125)
  %126 = load i32, i32* %desc.addr, align 4
  %127 = load i32, i32* %shoff, align 4
  %conv190 = zext i32 %127 to i64
  %call191 = call i64 @lseek(i32 %126, i64 %conv190, i32 0) #6
  %conv192 = trunc i64 %call191 to i32
  %128 = load i32, i32* %shoff, align 4
  %cmp193 = icmp ne i32 %conv192, %128
  br i1 %cmp193, label %if.then.195, label %if.end.206

if.then.195:                                      ; preds = %if.end.188
  %129 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options196 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %129, i32 0, i32 5
  %130 = load i32, i32* %options196, align 4
  %and197 = and i32 %130, 64
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %if.then.199, label %if.end.205

if.then.199:                                      ; preds = %if.then.195
  %131 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname200 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %131, i32 0, i32 0
  %132 = load i8**, i8*** %virname200, align 8
  %tobool201 = icmp ne i8** %132, null
  br i1 %tobool201, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %if.then.199
  %133 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname203 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %133, i32 0, i32 0
  %134 = load i8**, i8*** %virname203, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %134, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %if.then.199
  store i32 1, i32* %retval
  br label %return

if.end.205:                                       ; preds = %if.then.195
  store i32 0, i32* %retval
  br label %return

if.end.206:                                       ; preds = %if.end.188
  %135 = load i16, i16* %shnum, align 2
  %conv207 = zext i16 %135 to i64
  %136 = load i16, i16* %shentsize, align 2
  %conv208 = zext i16 %136 to i64
  %call209 = call i8* @cli_calloc(i64 %conv207, i64 %conv208)
  %137 = bitcast i8* %call209 to %struct.elf_section_hdr32*
  store %struct.elf_section_hdr32* %137, %struct.elf_section_hdr32** %section_hdr, align 8
  %138 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %tobool210 = icmp ne %struct.elf_section_hdr32* %138, null
  br i1 %tobool210, label %if.end.212, label %if.then.211

if.then.211:                                      ; preds = %if.end.206
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.212:                                       ; preds = %if.end.206
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.286, %if.end.212
  %139 = load i32, i32* %i, align 4
  %140 = load i16, i16* %shnum, align 2
  %conv214 = zext i16 %140 to i32
  %cmp215 = icmp ult i32 %139, %conv214
  br i1 %cmp215, label %for.body.217, label %for.end.288

for.body.217:                                     ; preds = %for.cond.213
  %141 = load i32, i32* %desc.addr, align 4
  %142 = load i32, i32* %i, align 4
  %idxprom218 = zext i32 %142 to i64
  %143 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx219 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %143, i64 %idxprom218
  %144 = bitcast %struct.elf_section_hdr32* %arrayidx219 to i8*
  %call220 = call i64 @read(i32 %141, i8* %144, i64 40)
  %cmp221 = icmp ne i64 %call220, 40
  br i1 %cmp221, label %if.then.223, label %if.end.234

if.then.223:                                      ; preds = %for.body.217
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.49, i32 0, i32 0))
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0))
  %145 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %146 = bitcast %struct.elf_section_hdr32* %145 to i8*
  call void @free(i8* %146) #6
  %147 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options224 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %147, i32 0, i32 5
  %148 = load i32, i32* %options224, align 4
  %and225 = and i32 %148, 64
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %if.then.227, label %if.end.233

if.then.227:                                      ; preds = %if.then.223
  %149 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname228 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %149, i32 0, i32 0
  %150 = load i8**, i8*** %virname228, align 8
  %tobool229 = icmp ne i8** %150, null
  br i1 %tobool229, label %if.then.230, label %if.end.232

if.then.230:                                      ; preds = %if.then.227
  %151 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname231 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %151, i32 0, i32 0
  %152 = load i8**, i8*** %virname231, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8** %152, align 8
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.230, %if.then.227
  store i32 1, i32* %retval
  br label %return

if.end.233:                                       ; preds = %if.then.223
  store i32 0, i32* %retval
  br label %return

if.end.234:                                       ; preds = %for.body.217
  %153 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i32 %153)
  %154 = load i32, i32* %i, align 4
  %idxprom235 = zext i32 %154 to i64
  %155 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx236 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %155, i64 %idxprom235
  %sh_offset = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %arrayidx236, i32 0, i32 4
  %156 = load i32, i32* %sh_offset, align 4
  %157 = load i8, i8* %conv, align 1
  %call237 = call i32 @EC32(i32 %156, i8 zeroext %157)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), i32 %call237)
  %158 = load i32, i32* %i, align 4
  %idxprom238 = zext i32 %158 to i64
  %159 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx239 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %159, i64 %idxprom238
  %sh_size = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %arrayidx239, i32 0, i32 5
  %160 = load i32, i32* %sh_size, align 4
  %161 = load i8, i8* %conv, align 1
  %call240 = call i32 @EC32(i32 %160, i8 zeroext %161)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i32 %call240)
  %162 = load i32, i32* %i, align 4
  %idxprom241 = zext i32 %162 to i64
  %163 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx242 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %163, i64 %idxprom241
  %sh_type = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %arrayidx242, i32 0, i32 1
  %164 = load i32, i32* %sh_type, align 4
  %165 = load i8, i8* %conv, align 1
  %call243 = call i32 @EC32(i32 %164, i8 zeroext %165)
  switch i32 %call243, label %sw.default.261 [
    i32 6, label %sw.bb.244
    i32 11, label %sw.bb.245
    i32 15, label %sw.bb.246
    i32 5, label %sw.bb.247
    i32 14, label %sw.bb.248
    i32 8, label %sw.bb.249
    i32 7, label %sw.bb.250
    i32 0, label %sw.bb.251
    i32 16, label %sw.bb.252
    i32 1, label %sw.bb.253
    i32 9, label %sw.bb.254
    i32 4, label %sw.bb.255
    i32 3, label %sw.bb.256
    i32 2, label %sw.bb.257
    i32 1879048189, label %sw.bb.258
    i32 1879048190, label %sw.bb.259
    i32 1879048191, label %sw.bb.260
  ]

sw.bb.244:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.245:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.54, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.246:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.55, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.247:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.248:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.57, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.249:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.58, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.250:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.251:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.252:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.61, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.253:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.254:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.63, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.255:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.64, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.256:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.257:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.66, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.258:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.67, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.259:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.68, i32 0, i32 0))
  br label %sw.epilog.262

sw.bb.260:                                        ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.69, i32 0, i32 0))
  br label %sw.epilog.262

sw.default.261:                                   ; preds = %if.end.234
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.70, i32 0, i32 0))
  br label %sw.epilog.262

sw.epilog.262:                                    ; preds = %sw.default.261, %sw.bb.260, %sw.bb.259, %sw.bb.258, %sw.bb.257, %sw.bb.256, %sw.bb.255, %sw.bb.254, %sw.bb.253, %sw.bb.252, %sw.bb.251, %sw.bb.250, %sw.bb.249, %sw.bb.248, %sw.bb.247, %sw.bb.246, %sw.bb.245, %sw.bb.244
  %166 = load i32, i32* %i, align 4
  %idxprom263 = zext i32 %166 to i64
  %167 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx264 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %167, i64 %idxprom263
  %sh_flags = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %arrayidx264, i32 0, i32 2
  %168 = load i32, i32* %sh_flags, align 4
  %169 = load i8, i8* %conv, align 1
  %call265 = call i32 @EC32(i32 %168, i8 zeroext %169)
  %and266 = and i32 %call265, 1
  %tobool267 = icmp ne i32 %and266, 0
  br i1 %tobool267, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %sw.epilog.262
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.268, %sw.epilog.262
  %170 = load i32, i32* %i, align 4
  %idxprom270 = zext i32 %170 to i64
  %171 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx271 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %171, i64 %idxprom270
  %sh_flags272 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %arrayidx271, i32 0, i32 2
  %172 = load i32, i32* %sh_flags272, align 4
  %173 = load i8, i8* %conv, align 1
  %call273 = call i32 @EC32(i32 %172, i8 zeroext %173)
  %and274 = and i32 %call273, 2
  %tobool275 = icmp ne i32 %and274, 0
  br i1 %tobool275, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %if.end.269
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.276, %if.end.269
  %174 = load i32, i32* %i, align 4
  %idxprom278 = zext i32 %174 to i64
  %175 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx279 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %175, i64 %idxprom278
  %sh_flags280 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %arrayidx279, i32 0, i32 2
  %176 = load i32, i32* %sh_flags280, align 4
  %177 = load i8, i8* %conv, align 1
  %call281 = call i32 @EC32(i32 %176, i8 zeroext %177)
  %and282 = and i32 %call281, 4
  %tobool283 = icmp ne i32 %and282, 0
  br i1 %tobool283, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %if.end.277
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.73, i32 0, i32 0))
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.284, %if.end.277
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0))
  br label %for.inc.286

for.inc.286:                                      ; preds = %if.end.285
  %178 = load i32, i32* %i, align 4
  %inc287 = add i32 %178, 1
  store i32 %inc287, i32* %i, align 4
  br label %for.cond.213

for.end.288:                                      ; preds = %for.cond.213
  %179 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %180 = bitcast %struct.elf_section_hdr32* %179 to i8*
  call void @free(i8* %180) #6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.288, %if.end.233, %if.end.232, %if.then.211, %if.end.205, %if.end.204, %if.end.187, %if.end.186, %if.end.171, %if.end.170, %if.end.153, %if.end.152, %if.end.124, %if.end.123, %if.then.105, %if.end.99, %if.end.98, %if.end.81, %if.end.80, %if.end.61, %if.end.60, %if.then.10, %if.then.4, %if.then
  %181 = load i32, i32* %retval
  ret i32 %181
}

declare void @cli_dbgmsg(i8*, ...) #1

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @EC16(i16 zeroext %v, i8 zeroext %c) #3 {
entry:
  %retval = alloca i16, align 2
  %v.addr = alloca i16, align 2
  %c.addr = alloca i8, align 1
  store i16 %v, i16* %v.addr, align 2
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %v.addr, align 2
  store i16 %1, i16* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i16, i16* %v.addr, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 8
  %3 = load i16, i16* %v.addr, align 2
  %conv1 = zext i16 %3 to i32
  %shl = shl i32 %conv1, 8
  %add = add nsw i32 %shr, %shl
  %conv2 = trunc i32 %add to i16
  store i16 %conv2, i16* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @EC32(i32 %v, i8 zeroext %c) #3 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i32 %v, i32* %v.addr, align 4
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %v.addr, align 4
  store i32 %1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %v.addr, align 4
  %shr = lshr i32 %2, 24
  %3 = load i32, i32* %v.addr, align 4
  %and = and i32 %3, 16711680
  %shr1 = lshr i32 %and, 8
  %or = or i32 %shr, %shr1
  %4 = load i32, i32* %v.addr, align 4
  %and2 = and i32 %4, 65280
  %shl = shl i32 %and2, 8
  %or3 = or i32 %or, %shl
  %5 = load i32, i32* %v.addr, align 4
  %shl4 = shl i32 %5, 24
  %or5 = or i32 %or3, %shl4
  store i32 %or5, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #4

declare i8* @cli_calloc(i64, i64) #1

declare void @cli_errmsg(i8*, ...) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @cli_rawaddr(i32 %vaddr, %struct.elf_program_hdr32* %ph, i16 zeroext %phnum, i8 zeroext %conv, i8* %err) #0 {
entry:
  %retval = alloca i32, align 4
  %vaddr.addr = alloca i32, align 4
  %ph.addr = alloca %struct.elf_program_hdr32*, align 8
  %phnum.addr = alloca i16, align 2
  %conv.addr = alloca i8, align 1
  %err.addr = alloca i8*, align 8
  %i = alloca i16, align 2
  %found = alloca i16, align 2
  store i32 %vaddr, i32* %vaddr.addr, align 4
  store %struct.elf_program_hdr32* %ph, %struct.elf_program_hdr32** %ph.addr, align 8
  store i16 %phnum, i16* %phnum.addr, align 2
  store i8 %conv, i8* %conv.addr, align 1
  store i8* %err, i8** %err.addr, align 8
  store i16 0, i16* %found, align 2
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %i, align 2
  %conv1 = zext i16 %0 to i32
  %1 = load i16, i16* %phnum.addr, align 2
  %conv2 = zext i16 %1 to i32
  %cmp = icmp slt i32 %conv1, %conv2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16, i16* %i, align 2
  %idxprom = zext i16 %2 to i64
  %3 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %ph.addr, align 8
  %arrayidx = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %3, i64 %idxprom
  %p_vaddr = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx, i32 0, i32 2
  %4 = load i32, i32* %p_vaddr, align 4
  %5 = load i8, i8* %conv.addr, align 1
  %call = call i32 @EC32(i32 %4, i8 zeroext %5)
  %6 = load i32, i32* %vaddr.addr, align 4
  %cmp4 = icmp ule i32 %call, %6
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load i16, i16* %i, align 2
  %idxprom6 = zext i16 %7 to i64
  %8 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %ph.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %8, i64 %idxprom6
  %p_vaddr8 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx7, i32 0, i32 2
  %9 = load i32, i32* %p_vaddr8, align 4
  %10 = load i8, i8* %conv.addr, align 1
  %call9 = call i32 @EC32(i32 %9, i8 zeroext %10)
  %11 = load i16, i16* %i, align 2
  %idxprom10 = zext i16 %11 to i64
  %12 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %ph.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %12, i64 %idxprom10
  %p_memsz = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx11, i32 0, i32 5
  %13 = load i32, i32* %p_memsz, align 4
  %14 = load i8, i8* %conv.addr, align 1
  %call12 = call i32 @EC32(i32 %13, i8 zeroext %14)
  %add = add i32 %call9, %call12
  %15 = load i32, i32* %vaddr.addr, align 4
  %cmp13 = icmp ugt i32 %add, %15
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i16 1, i16* %found, align 2
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i16, i16* %i, align 2
  %inc = add i16 %16, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %17 = load i16, i16* %found, align 2
  %tobool = icmp ne i16 %17, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %for.end
  %18 = load i8*, i8** %err.addr, align 8
  store i8 1, i8* %18, align 1
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %for.end
  %19 = load i8*, i8** %err.addr, align 8
  store i8 0, i8* %19, align 1
  %20 = load i32, i32* %vaddr.addr, align 4
  %21 = load i16, i16* %i, align 2
  %idxprom17 = zext i16 %21 to i64
  %22 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %ph.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %22, i64 %idxprom17
  %p_vaddr19 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx18, i32 0, i32 2
  %23 = load i32, i32* %p_vaddr19, align 4
  %24 = load i8, i8* %conv.addr, align 1
  %call20 = call i32 @EC32(i32 %23, i8 zeroext %24)
  %sub = sub i32 %20, %call20
  %25 = load i16, i16* %i, align 2
  %idxprom21 = zext i16 %25 to i64
  %26 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %ph.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %26, i64 %idxprom21
  %p_offset = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %arrayidx22, i32 0, i32 1
  %27 = load i32, i32* %p_offset, align 4
  %28 = load i8, i8* %conv.addr, align 1
  %call23 = call i32 @EC32(i32 %27, i8 zeroext %28)
  %add24 = add i32 %sub, %call23
  store i32 %add24, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define i32 @cli_elfheader(i32 %desc, %struct.cli_exe_info* %elfinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca i32, align 4
  %elfinfo.addr = alloca %struct.cli_exe_info*, align 8
  %file_hdr = alloca %struct.elf_file_hdr32, align 4
  %section_hdr = alloca %struct.elf_section_hdr32*, align 8
  %program_hdr = alloca %struct.elf_program_hdr32*, align 8
  %shnum = alloca i16, align 2
  %phnum = alloca i16, align 2
  %shentsize = alloca i16, align 2
  %phentsize = alloca i16, align 2
  %i = alloca i16, align 2
  %entry1 = alloca i32, align 4
  %fentry = alloca i32, align 4
  %shoff = alloca i32, align 4
  %phoff = alloca i32, align 4
  %conv = alloca i8, align 1
  %err = alloca i8, align 1
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_exe_info* %elfinfo, %struct.cli_exe_info** %elfinfo.addr, align 8
  store i32 0, i32* %fentry, align 4
  store i8 0, i8* %conv, align 1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.74, i32 0, i32 0))
  %0 = load i32, i32* %desc.addr, align 4
  %1 = bitcast %struct.elf_file_hdr32* %file_hdr to i8*
  %call = call i64 @read(i32 %0, i8* %1, i64 52)
  %cmp = icmp ne i64 %call, 52
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %e_ident = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %e_ident, i32 0, i32 0
  %call3 = call i32 @memcmp(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 4) #5
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %e_ident6 = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %e_ident6, i32 0, i64 4
  %2 = load i8, i8* %arrayidx, align 1
  %conv7 = zext i8 %2 to i32
  %cmp8 = icmp ne i32 %conv7, 1
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.5
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.5
  %e_ident12 = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [16 x i8], [16 x i8]* %e_ident12, i32 0, i64 5
  %3 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %3 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.11
  br label %if.end.18

if.else:                                          ; preds = %if.end.11
  store i8 1, i8* %conv, align 1
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  %e_phnum = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 10
  %4 = load i16, i16* %e_phnum, align 2
  %5 = load i8, i8* %conv, align 1
  %call19 = call zeroext i16 @EC16(i16 zeroext %4, i8 zeroext %5)
  store i16 %call19, i16* %phnum, align 2
  %6 = load i16, i16* %phnum, align 2
  %conv20 = zext i16 %6 to i32
  %cmp21 = icmp sgt i32 %conv20, 128
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %e_entry = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 4
  %7 = load i32, i32* %e_entry, align 4
  %8 = load i8, i8* %conv, align 1
  %call25 = call i32 @EC32(i32 %7, i8 zeroext %8)
  store i32 %call25, i32* %entry1, align 4
  %9 = load i16, i16* %phnum, align 2
  %conv26 = zext i16 %9 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %if.end.24
  %10 = load i32, i32* %entry1, align 4
  %tobool28 = icmp ne i32 %10, 0
  br i1 %tobool28, label %if.then.29, label %if.end.65

if.then.29:                                       ; preds = %land.lhs.true
  %e_phentsize = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 9
  %11 = load i16, i16* %e_phentsize, align 2
  %12 = load i8, i8* %conv, align 1
  %call30 = call zeroext i16 @EC16(i16 zeroext %11, i8 zeroext %12)
  store i16 %call30, i16* %phentsize, align 2
  %13 = load i16, i16* %phentsize, align 2
  %conv31 = zext i16 %13 to i64
  %cmp32 = icmp ne i64 %conv31, 32
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  %e_phoff = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 5
  %14 = load i32, i32* %e_phoff, align 4
  %15 = load i8, i8* %conv, align 1
  %call36 = call i32 @EC32(i32 %14, i8 zeroext %15)
  store i32 %call36, i32* %phoff, align 4
  %16 = load i32, i32* %desc.addr, align 4
  %17 = load i32, i32* %phoff, align 4
  %conv37 = zext i32 %17 to i64
  %call38 = call i64 @lseek(i32 %16, i64 %conv37, i32 0) #6
  %conv39 = trunc i64 %call38 to i32
  %18 = load i32, i32* %phoff, align 4
  %cmp40 = icmp ne i32 %conv39, %18
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.35
  store i32 -1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.35
  %19 = load i16, i16* %phnum, align 2
  %conv44 = zext i16 %19 to i64
  %20 = load i16, i16* %phentsize, align 2
  %conv45 = zext i16 %20 to i64
  %call46 = call i8* @cli_calloc(i64 %conv44, i64 %conv45)
  %21 = bitcast i8* %call46 to %struct.elf_program_hdr32*
  store %struct.elf_program_hdr32* %21, %struct.elf_program_hdr32** %program_hdr, align 8
  %22 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %tobool47 = icmp ne %struct.elf_program_hdr32* %22, null
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.43
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.43
  store i16 0, i16* %i, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.49
  %23 = load i16, i16* %i, align 2
  %conv50 = zext i16 %23 to i32
  %24 = load i16, i16* %phnum, align 2
  %conv51 = zext i16 %24 to i32
  %cmp52 = icmp slt i32 %conv50, %conv51
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %desc.addr, align 4
  %26 = load i16, i16* %i, align 2
  %idxprom = zext i16 %26 to i64
  %27 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %arrayidx54 = getelementptr inbounds %struct.elf_program_hdr32, %struct.elf_program_hdr32* %27, i64 %idxprom
  %28 = bitcast %struct.elf_program_hdr32* %arrayidx54 to i8*
  %call55 = call i64 @read(i32 %25, i8* %28, i64 32)
  %cmp56 = icmp ne i64 %call55, 32
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %for.body
  %29 = load i16, i16* %i, align 2
  %conv59 = zext i16 %29 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0), i32 %conv59)
  %30 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %31 = bitcast %struct.elf_program_hdr32* %30 to i8*
  call void @free(i8* %31) #6
  store i32 -1, i32* %retval
  br label %return

if.end.60:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %32 = load i16, i16* %i, align 2
  %inc = add i16 %32, 1
  store i16 %inc, i16* %i, align 2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %entry1, align 4
  %34 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %35 = load i16, i16* %phnum, align 2
  %36 = load i8, i8* %conv, align 1
  %call61 = call i32 @cli_rawaddr(i32 %33, %struct.elf_program_hdr32* %34, i16 zeroext %35, i8 zeroext %36, i8* %err)
  store i32 %call61, i32* %fentry, align 4
  %37 = load %struct.elf_program_hdr32*, %struct.elf_program_hdr32** %program_hdr, align 8
  %38 = bitcast %struct.elf_program_hdr32* %37 to i8*
  call void @free(i8* %38) #6
  %39 = load i8, i8* %err, align 1
  %tobool62 = icmp ne i8 %39, 0
  br i1 %tobool62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.41, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.64:                                        ; preds = %for.end
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %land.lhs.true, %if.end.24
  %40 = load i32, i32* %fentry, align 4
  %41 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %ep = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %41, i32 0, i32 0
  store i32 %40, i32* %ep, align 4
  %e_shnum = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 12
  %42 = load i16, i16* %e_shnum, align 2
  %43 = load i8, i8* %conv, align 1
  %call66 = call zeroext i16 @EC16(i16 zeroext %42, i8 zeroext %43)
  store i16 %call66, i16* %shnum, align 2
  %44 = load i16, i16* %shnum, align 2
  %conv67 = zext i16 %44 to i32
  %cmp68 = icmp sgt i32 %conv67, 256
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.65
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.end.65
  %45 = load i16, i16* %shnum, align 2
  %46 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %nsections = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %46, i32 0, i32 1
  store i16 %45, i16* %nsections, align 2
  %e_shentsize = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 11
  %47 = load i16, i16* %e_shentsize, align 2
  %48 = load i8, i8* %conv, align 1
  %call72 = call zeroext i16 @EC16(i16 zeroext %47, i8 zeroext %48)
  store i16 %call72, i16* %shentsize, align 2
  %49 = load i16, i16* %shentsize, align 2
  %conv73 = zext i16 %49 to i64
  %cmp74 = icmp ne i64 %conv73, 40
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.71
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.46, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.71
  %e_shoff = getelementptr inbounds %struct.elf_file_hdr32, %struct.elf_file_hdr32* %file_hdr, i32 0, i32 6
  %50 = load i32, i32* %e_shoff, align 4
  %51 = load i8, i8* %conv, align 1
  %call78 = call i32 @EC32(i32 %50, i8 zeroext %51)
  store i32 %call78, i32* %shoff, align 4
  %52 = load i32, i32* %desc.addr, align 4
  %53 = load i32, i32* %shoff, align 4
  %conv79 = zext i32 %53 to i64
  %call80 = call i64 @lseek(i32 %52, i64 %conv79, i32 0) #6
  %conv81 = trunc i64 %call80 to i32
  %54 = load i32, i32* %shoff, align 4
  %cmp82 = icmp ne i32 %conv81, %54
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.77
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.77
  %55 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %nsections86 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %55, i32 0, i32 1
  %56 = load i16, i16* %nsections86, align 2
  %conv87 = zext i16 %56 to i64
  %call88 = call i8* @cli_calloc(i64 %conv87, i64 36)
  %57 = bitcast i8* %call88 to %struct.cli_exe_section*
  %58 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %section = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %58, i32 0, i32 3
  store %struct.cli_exe_section* %57, %struct.cli_exe_section** %section, align 8
  %59 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %section89 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %59, i32 0, i32 3
  %60 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section89, align 8
  %tobool90 = icmp ne %struct.cli_exe_section* %60, null
  br i1 %tobool90, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %if.end.85
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.92:                                        ; preds = %if.end.85
  %61 = load i16, i16* %shnum, align 2
  %conv93 = zext i16 %61 to i64
  %62 = load i16, i16* %shentsize, align 2
  %conv94 = zext i16 %62 to i64
  %call95 = call i8* @cli_calloc(i64 %conv93, i64 %conv94)
  %63 = bitcast i8* %call95 to %struct.elf_section_hdr32*
  store %struct.elf_section_hdr32* %63, %struct.elf_section_hdr32** %section_hdr, align 8
  %64 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %tobool96 = icmp ne %struct.elf_section_hdr32* %64, null
  br i1 %tobool96, label %if.end.100, label %if.then.97

if.then.97:                                       ; preds = %if.end.92
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i32 0, i32 0))
  %65 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %section98 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %65, i32 0, i32 3
  %66 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section98, align 8
  %67 = bitcast %struct.cli_exe_section* %66 to i8*
  call void @free(i8* %67) #6
  %68 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %section99 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %68, i32 0, i32 3
  store %struct.cli_exe_section* null, %struct.cli_exe_section** %section99, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.92
  store i16 0, i16* %i, align 2
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.134, %if.end.100
  %69 = load i16, i16* %i, align 2
  %conv102 = zext i16 %69 to i32
  %70 = load i16, i16* %shnum, align 2
  %conv103 = zext i16 %70 to i32
  %cmp104 = icmp slt i32 %conv102, %conv103
  br i1 %cmp104, label %for.body.106, label %for.end.136

for.body.106:                                     ; preds = %for.cond.101
  %71 = load i32, i32* %desc.addr, align 4
  %72 = load i16, i16* %i, align 2
  %idxprom107 = zext i16 %72 to i64
  %73 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx108 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %73, i64 %idxprom107
  %74 = bitcast %struct.elf_section_hdr32* %arrayidx108 to i8*
  %call109 = call i64 @read(i32 %71, i8* %74, i64 40)
  %cmp110 = icmp ne i64 %call109, 40
  br i1 %cmp110, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %for.body.106
  %75 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %76 = bitcast %struct.elf_section_hdr32* %75 to i8*
  call void @free(i8* %76) #6
  %77 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %section113 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %77, i32 0, i32 3
  %78 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section113, align 8
  %79 = bitcast %struct.cli_exe_section* %78 to i8*
  call void @free(i8* %79) #6
  %80 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %section114 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %80, i32 0, i32 3
  store %struct.cli_exe_section* null, %struct.cli_exe_section** %section114, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.115:                                       ; preds = %for.body.106
  %81 = load i16, i16* %i, align 2
  %idxprom116 = zext i16 %81 to i64
  %82 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx117 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %82, i64 %idxprom116
  %sh_addr = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %arrayidx117, i32 0, i32 3
  %83 = load i32, i32* %sh_addr, align 4
  %84 = load i8, i8* %conv, align 1
  %call118 = call i32 @EC32(i32 %83, i8 zeroext %84)
  %85 = load i16, i16* %i, align 2
  %idxprom119 = zext i16 %85 to i64
  %86 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %section120 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %86, i32 0, i32 3
  %87 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section120, align 8
  %arrayidx121 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %87, i64 %idxprom119
  %rva = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx121, i32 0, i32 0
  store i32 %call118, i32* %rva, align 4
  %88 = load i16, i16* %i, align 2
  %idxprom122 = zext i16 %88 to i64
  %89 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx123 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %89, i64 %idxprom122
  %sh_offset = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %arrayidx123, i32 0, i32 4
  %90 = load i32, i32* %sh_offset, align 4
  %91 = load i8, i8* %conv, align 1
  %call124 = call i32 @EC32(i32 %90, i8 zeroext %91)
  %92 = load i16, i16* %i, align 2
  %idxprom125 = zext i16 %92 to i64
  %93 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %section126 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %93, i32 0, i32 3
  %94 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section126, align 8
  %arrayidx127 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %94, i64 %idxprom125
  %raw = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx127, i32 0, i32 2
  store i32 %call124, i32* %raw, align 4
  %95 = load i16, i16* %i, align 2
  %idxprom128 = zext i16 %95 to i64
  %96 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %arrayidx129 = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %96, i64 %idxprom128
  %sh_size = getelementptr inbounds %struct.elf_section_hdr32, %struct.elf_section_hdr32* %arrayidx129, i32 0, i32 5
  %97 = load i32, i32* %sh_size, align 4
  %98 = load i8, i8* %conv, align 1
  %call130 = call i32 @EC32(i32 %97, i8 zeroext %98)
  %99 = load i16, i16* %i, align 2
  %idxprom131 = zext i16 %99 to i64
  %100 = load %struct.cli_exe_info*, %struct.cli_exe_info** %elfinfo.addr, align 8
  %section132 = getelementptr inbounds %struct.cli_exe_info, %struct.cli_exe_info* %100, i32 0, i32 3
  %101 = load %struct.cli_exe_section*, %struct.cli_exe_section** %section132, align 8
  %arrayidx133 = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %101, i64 %idxprom131
  %rsz = getelementptr inbounds %struct.cli_exe_section, %struct.cli_exe_section* %arrayidx133, i32 0, i32 3
  store i32 %call130, i32* %rsz, align 4
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.115
  %102 = load i16, i16* %i, align 2
  %inc135 = add i16 %102, 1
  store i16 %inc135, i16* %i, align 2
  br label %for.cond.101

for.end.136:                                      ; preds = %for.cond.101
  %103 = load %struct.elf_section_hdr32*, %struct.elf_section_hdr32** %section_hdr, align 8
  %104 = bitcast %struct.elf_section_hdr32* %103 to i8*
  call void @free(i8* %104) #6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.136, %if.then.112, %if.then.97, %if.then.91, %if.then.84, %if.then.76, %if.then.70, %if.then.63, %if.then.58, %if.then.48, %if.then.42, %if.then.34, %if.then.23, %if.then.10, %if.then.4, %if.then
  %105 = load i32, i32* %retval
  ret i32 %105
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
