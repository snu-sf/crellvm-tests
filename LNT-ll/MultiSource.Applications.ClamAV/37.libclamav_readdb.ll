; ModuleID = './MultiSource.Applications.ClamAV/37.libclamav_readdb.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_matcher = type { i16, i8, i8*, %struct.cli_bm_patt**, i32*, i32, i8, i8, %struct.cli_ac_node*, %struct.cli_ac_node**, %struct.cli_ac_patt**, i32, i32, i32 }
%struct.cli_bm_patt = type { i8*, i8*, i16, i16, i8*, i8*, i8, %struct.cli_bm_patt*, i16 }
%struct.cli_ac_node = type { i8, i8, %struct.cli_ac_patt*, %struct.cli_ac_node**, %struct.cli_ac_node* }
%struct.cli_ac_patt = type { i16*, i16*, i16, i16, i8, i32, i32, i8*, i8*, i32, i16, i16, i16, i16, %struct.cli_ac_alt**, i8, i16, %struct.cli_ac_patt*, %struct.cli_ac_patt* }
%struct.cli_ac_alt = type { i8, i8*, i16, i16, %struct.cli_ac_alt* }
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.cli_md5_node = type { i8*, i8*, i32, i16, %struct.cli_md5_node* }
%struct.cli_meta_node = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.cli_meta_node* }
%struct.cl_stat = type { i8*, i32, %struct.stat*, i8** }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.regex_matcher = type { %struct.cli_matcher*, %struct.tree_node*, %struct.tree_node*, i64, i32, i32, i32, %struct.node_stack, %struct.node_stack }
%struct.tree_node = type opaque
%struct.node_stack = type { %struct.tree_node**, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"cli_parse_add(): Problem adding signature (1).\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Can't extract part %d of partial signature.\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"cli_parse_add(): Problem adding signature (2).\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"?(\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"cli_parse_add(): Problem adding signature (3).\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"(Clam)\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"cli_parse_add(): Problem adding signature (4).\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Initializing the engine (devel-20071218)\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Can't allocate memory for the engine structure!\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Can't allocate memory for roots!\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Can't initialize dynamic configuration\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"cl_loaddbdir(): Can't get status of %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"cl_load(%s): Not supported database file type\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/clamav\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"cl_statdbdir(): Null argument passed.\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"cl_statdbdir(): Can't open directory %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Stat()ing files in %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c".db\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c".db2\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c".db3\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".hdb\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c".hdu\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c".fp\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c".mdb\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c".mdu\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c".ndb\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c".ndu\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c".sdb\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c".zmd\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c".rmd\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c".pdb\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c".wdb\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c".inc\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c".cvd\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"%s/%s/%s.info\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"daily\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"cl_statfree(): Null argument passed\0A\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"cl_free: engine == NULL\0A\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"cl_dup: engine == NULL\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.46 = private unnamed_addr constant [32 x i8] c"cli_load(): Can't open file %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"daily.cvd\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@.str.49 = private unnamed_addr constant [60 x i8] c"cli_load: unknown extension - assuming old database format\0A\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"Can't load %s: %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"%s skipped\0A\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"%s loaded\0A\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"Malformed pattern line %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"Problem parsing signature at line %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"Empty database file\0A\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"Problem parsing database at line %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"Initializing engine->root[%d]\0A\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"cli_initroots: Can't allocate memory for cli_matcher\0A\00", align 1
@.str.59 = private unnamed_addr constant [47 x i8] c"cli_initroots: Only using AC pattern matcher.\0A\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"Initialising AC pattern matcher of root[%d]\0A\00", align 1
@cli_ac_mindepth = external global i8, align 1
@cli_ac_maxdepth = external global i8, align 1
@.str.61 = private unnamed_addr constant [52 x i8] c"cli_initroots: Can't initialise AC pattern matcher\0A\00", align 1
@.str.62 = private unnamed_addr constant [51 x i8] c"cli_initroots: Initializing BM tables of root[%d]\0A\00", align 1
@.str.63 = private unnamed_addr constant [52 x i8] c"cli_initroots: Can't initialise BM pattern matcher\0A\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.65 = private unnamed_addr constant [46 x i8] c"cli_loadmd5: Malformed MD5 string at line %u\0A\00", align 1
@.str.66 = private unnamed_addr constant [50 x i8] c"cli_loadmd5: Can't initialise BM pattern matcher\0A\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"cli_loadmd5: Can't allocate memory for bm_new\0A\00", align 1
@.str.68 = private unnamed_addr constant [43 x i8] c"cli_loadmd5: Can't realloc md5_sect->soff\0A\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"cli_loadmd5: Error adding BM pattern\0A\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"cli_loadmd5: Initializing MD5 list structure\0A\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"cli_loadmd5: Empty database file\0A\00", align 1
@.str.72 = private unnamed_addr constant [50 x i8] c"cli_loadmd5: Problem parsing database at line %u\0A\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"Exploit.JPEG.Comment\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"HTML.Phishing\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"Email.Phishing\00", align 1
@.str.76 = private unnamed_addr constant [52 x i8] c"Signature for %s not loaded (required f-level: %d)\0A\00", align 1
@.str.77 = private unnamed_addr constant [47 x i8] c"Not supported target type in signature for %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"*** Self protection mechanism activated.\0A\00", align 1
@.str.79 = private unnamed_addr constant [37 x i8] c"cli_loaddbdir: Acquiring dbdir lock\0A\00", align 1
@.str.80 = private unnamed_addr constant [50 x i8] c"cl_load(): Unable to lock database directory: %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"Loading databases from %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"%s/daily.cfg\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"cli_loaddbdir(): Can't open directory %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [55 x i8] c"cli_loaddbdir(): Too many files, increase MAX_DIRENTS\0A\00", align 1
@.str.85 = private unnamed_addr constant [33 x i8] c"cli_loaddbdir(): dbfile == NULL\0A\00", align 1
@.str.86 = private unnamed_addr constant [44 x i8] c"cli_loaddbdir(): error loading database %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [55 x i8] c"cli_loaddb(): No supported database files found in %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_parse_add(%struct.cli_matcher* %root, i8* %virname, i8* %hexsig, i16 zeroext %type, i8* %offset, i16 zeroext %target) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.cli_matcher*, align 8
  %virname.addr = alloca i8*, align 8
  %hexsig.addr = alloca i8*, align 8
  %type.addr = alloca i16, align 2
  %offset.addr = alloca i8*, align 8
  %target.addr = alloca i16, align 2
  %bm_new = alloca %struct.cli_bm_patt*, align 8
  %pt = alloca i8*, align 8
  %hexcpy = alloca i8*, align 8
  %start = alloca i8*, align 8
  %n = alloca i8*, align 8
  %ret = alloca i32, align 4
  %virlen = alloca i32, align 4
  %asterisk = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %parts = alloca i32, align 4
  %mindist = alloca i32, align 4
  %maxdist = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.cli_matcher* %root, %struct.cli_matcher** %root.addr, align 8
  store i8* %virname, i8** %virname.addr, align 8
  store i8* %hexsig, i8** %hexsig.addr, align 8
  store i16 %type, i16* %type.addr, align 2
  store i8* %offset, i8** %offset.addr, align 8
  store i16 %target, i16* %target.addr, align 2
  store i32 0, i32* %asterisk, align 4
  store i32 0, i32* %parts, align 4
  store i32 0, i32* %mindist, align 4
  store i32 0, i32* %maxdist, align 4
  store i32 0, i32* %error, align 4
  %0 = load i8*, i8** %hexsig.addr, align 8
  %call = call i8* @strchr(i8* %0, i32 123) #6
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.then, label %if.else.111

if.then:                                          ; preds = %entry
  %1 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_partsigs = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %1, i32 0, i32 11
  %2 = load i32, i32* %ac_partsigs, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %ac_partsigs, align 4
  %3 = load i8*, i8** %hexsig.addr, align 8
  %call1 = call i8* @cli_strdup(i8* %3)
  store i8* %call1, i8** %hexcpy, align 8
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load i8*, i8** %hexsig.addr, align 8
  %call4 = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %len, align 4
  %cmp = icmp ult i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load i8*, i8** %hexsig.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 123
  br i1 %cmp7, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %10 to i64
  %11 = load i8*, i8** %hexsig.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %12 to i32
  %cmp12 = icmp eq i32 %conv11, 42
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %lor.lhs.false, %for.body
  %13 = load i32, i32* %parts, align 4
  %inc15 = add i32 %13, 1
  store i32 %inc15, i32* %parts, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %14 = load i32, i32* %i, align 4
  %inc17 = add i32 %14, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %parts, align 4
  %tobool18 = icmp ne i32 %15, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.end
  %16 = load i32, i32* %parts, align 4
  %inc20 = add i32 %16, 1
  store i32 %inc20, i32* %parts, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %for.end
  %17 = load i8*, i8** %hexcpy, align 8
  store i8* %17, i8** %pt, align 8
  store i8* %17, i8** %start, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.105, %if.end.21
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %parts, align 4
  %cmp23 = icmp ule i32 %18, %19
  br i1 %cmp23, label %for.body.25, label %for.end.107

for.body.25:                                      ; preds = %for.cond.22
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %parts, align 4
  %cmp26 = icmp ne i32 %20, %21
  br i1 %cmp26, label %if.then.28, label %if.end.54

if.then.28:                                       ; preds = %for.body.25
  store i32 0, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.51, %if.then.28
  %22 = load i32, i32* %j, align 4
  %conv30 = zext i32 %22 to i64
  %23 = load i8*, i8** %start, align 8
  %call31 = call i64 @strlen(i8* %23) #6
  %cmp32 = icmp ult i64 %conv30, %call31
  br i1 %cmp32, label %for.body.34, label %for.end.53

for.body.34:                                      ; preds = %for.cond.29
  %24 = load i32, i32* %j, align 4
  %idxprom35 = zext i32 %24 to i64
  %25 = load i8*, i8** %start, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %25, i64 %idxprom35
  %26 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %26 to i32
  %cmp38 = icmp eq i32 %conv37, 123
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body.34
  store i32 0, i32* %asterisk, align 4
  %27 = load i8*, i8** %start, align 8
  %28 = load i32, i32* %j, align 4
  %idx.ext = zext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %pt, align 8
  br label %for.end.53

if.end.41:                                        ; preds = %for.body.34
  %29 = load i32, i32* %j, align 4
  %idxprom42 = zext i32 %29 to i64
  %30 = load i8*, i8** %start, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %30, i64 %idxprom42
  %31 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %31 to i32
  %cmp45 = icmp eq i32 %conv44, 42
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.41
  store i32 1, i32* %asterisk, align 4
  %32 = load i8*, i8** %start, align 8
  %33 = load i32, i32* %j, align 4
  %idx.ext48 = zext i32 %33 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %32, i64 %idx.ext48
  store i8* %add.ptr49, i8** %pt, align 8
  br label %for.end.53

if.end.50:                                        ; preds = %if.end.41
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %34 = load i32, i32* %j, align 4
  %inc52 = add i32 %34, 1
  store i32 %inc52, i32* %j, align 4
  br label %for.cond.29

for.end.53:                                       ; preds = %if.then.47, %if.then.40, %for.cond.29
  %35 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  store i8 0, i8* %35, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %for.body.25
  %36 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %37 = load i8*, i8** %virname.addr, align 8
  %38 = load i8*, i8** %start, align 8
  %39 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_partsigs55 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %39, i32 0, i32 11
  %40 = load i32, i32* %ac_partsigs55, align 4
  %41 = load i32, i32* %parts, align 4
  %conv56 = trunc i32 %41 to i16
  %42 = load i32, i32* %i, align 4
  %conv57 = trunc i32 %42 to i16
  %43 = load i16, i16* %type.addr, align 2
  %44 = load i32, i32* %mindist, align 4
  %45 = load i32, i32* %maxdist, align 4
  %46 = load i8*, i8** %offset.addr, align 8
  %47 = load i16, i16* %target.addr, align 2
  %conv58 = trunc i16 %47 to i8
  %call59 = call i32 @cli_ac_addsig(%struct.cli_matcher* %36, i8* %37, i8* %38, i32 %40, i16 zeroext %conv56, i16 zeroext %conv57, i16 zeroext %43, i32 %44, i32 %45, i8* %46, i8 zeroext %conv58)
  store i32 %call59, i32* %ret, align 4
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.54
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0))
  store i32 1, i32* %error, align 4
  br label %for.end.107

if.end.62:                                        ; preds = %if.end.54
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %parts, align 4
  %cmp63 = icmp eq i32 %48, %49
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.end.62
  br label %for.end.107

if.end.66:                                        ; preds = %if.end.62
  store i32 0, i32* %maxdist, align 4
  store i32 0, i32* %mindist, align 4
  %50 = load i32, i32* %asterisk, align 4
  %tobool67 = icmp ne i32 %50, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.66
  %51 = load i8*, i8** %pt, align 8
  store i8* %51, i8** %start, align 8
  br label %for.inc.105

if.end.69:                                        ; preds = %if.end.66
  %52 = load i8*, i8** %pt, align 8
  %call70 = call i8* @strchr(i8* %52, i32 125) #6
  store i8* %call70, i8** %start, align 8
  %tobool71 = icmp ne i8* %call70, null
  br i1 %tobool71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %if.end.69
  store i32 1, i32* %error, align 4
  br label %for.end.107

if.end.73:                                        ; preds = %if.end.69
  %53 = load i8*, i8** %start, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr74, i8** %start, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %pt, align 8
  %tobool75 = icmp ne i8* %54, null
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %if.end.73
  store i32 1, i32* %error, align 4
  br label %for.end.107

if.end.77:                                        ; preds = %if.end.73
  %55 = load i8*, i8** %pt, align 8
  %call78 = call i8* @strchr(i8* %55, i32 45) #6
  %tobool79 = icmp ne i8* %call78, null
  br i1 %tobool79, label %if.else, label %if.then.80

if.then.80:                                       ; preds = %if.end.77
  %56 = load i8*, i8** %pt, align 8
  %call81 = call i32 @atoi(i8* %56) #6
  store i32 %call81, i32* %maxdist, align 4
  store i32 %call81, i32* %mindist, align 4
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.then.80
  store i32 1, i32* %error, align 4
  br label %for.end.107

if.end.85:                                        ; preds = %if.then.80
  br label %if.end.104

if.else:                                          ; preds = %if.end.77
  %57 = load i8*, i8** %pt, align 8
  %call86 = call i8* @cli_strtok(i8* %57, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call86, i8** %n, align 8
  %tobool87 = icmp ne i8* %call86, null
  br i1 %tobool87, label %if.then.88, label %if.end.94

if.then.88:                                       ; preds = %if.else
  %58 = load i8*, i8** %n, align 8
  %call89 = call i32 @atoi(i8* %58) #6
  store i32 %call89, i32* %mindist, align 4
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.88
  store i32 1, i32* %error, align 4
  %59 = load i8*, i8** %n, align 8
  call void @free(i8* %59) #5
  br label %for.end.107

if.end.93:                                        ; preds = %if.then.88
  %60 = load i8*, i8** %n, align 8
  call void @free(i8* %60) #5
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.else
  %61 = load i8*, i8** %pt, align 8
  %call95 = call i8* @cli_strtok(i8* %61, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call95, i8** %n, align 8
  %tobool96 = icmp ne i8* %call95, null
  br i1 %tobool96, label %if.then.97, label %if.end.103

if.then.97:                                       ; preds = %if.end.94
  %62 = load i8*, i8** %n, align 8
  %call98 = call i32 @atoi(i8* %62) #6
  store i32 %call98, i32* %maxdist, align 4
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.then.97
  store i32 1, i32* %error, align 4
  %63 = load i8*, i8** %n, align 8
  call void @free(i8* %63) #5
  br label %for.end.107

if.end.102:                                       ; preds = %if.then.97
  %64 = load i8*, i8** %n, align 8
  call void @free(i8* %64) #5
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.94
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.85
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104, %if.then.68
  %65 = load i32, i32* %i, align 4
  %inc106 = add i32 %65, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.22

for.end.107:                                      ; preds = %if.then.101, %if.then.92, %if.then.84, %if.then.76, %if.then.72, %if.then.65, %if.then.61, %for.cond.22
  %66 = load i8*, i8** %hexcpy, align 8
  call void @free(i8* %66) #5
  %67 = load i32, i32* %error, align 4
  %tobool108 = icmp ne i32 %67, 0
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %for.end.107
  store i32 -116, i32* %retval
  br label %return

if.end.110:                                       ; preds = %for.end.107
  br label %if.end.242

if.else.111:                                      ; preds = %entry
  %68 = load i8*, i8** %hexsig.addr, align 8
  %call112 = call i8* @strchr(i8* %68, i32 42) #6
  %tobool113 = icmp ne i8* %call112, null
  br i1 %tobool113, label %if.then.114, label %if.else.158

if.then.114:                                      ; preds = %if.else.111
  %69 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_partsigs115 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %69, i32 0, i32 11
  %70 = load i32, i32* %ac_partsigs115, align 4
  %inc116 = add i32 %70, 1
  store i32 %inc116, i32* %ac_partsigs115, align 4
  %71 = load i8*, i8** %hexsig.addr, align 8
  %call117 = call i64 @strlen(i8* %71) #6
  %conv118 = trunc i64 %call117 to i32
  store i32 %conv118, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.131, %if.then.114
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %len, align 4
  %cmp120 = icmp ult i32 %72, %73
  br i1 %cmp120, label %for.body.122, label %for.end.133

for.body.122:                                     ; preds = %for.cond.119
  %74 = load i32, i32* %i, align 4
  %idxprom123 = zext i32 %74 to i64
  %75 = load i8*, i8** %hexsig.addr, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %75, i64 %idxprom123
  %76 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %76 to i32
  %cmp126 = icmp eq i32 %conv125, 42
  br i1 %cmp126, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %for.body.122
  %77 = load i32, i32* %parts, align 4
  %inc129 = add i32 %77, 1
  store i32 %inc129, i32* %parts, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.128, %for.body.122
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %78 = load i32, i32* %i, align 4
  %inc132 = add i32 %78, 1
  store i32 %inc132, i32* %i, align 4
  br label %for.cond.119

for.end.133:                                      ; preds = %for.cond.119
  %79 = load i32, i32* %parts, align 4
  %tobool134 = icmp ne i32 %79, 0
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %for.end.133
  %80 = load i32, i32* %parts, align 4
  %inc136 = add i32 %80, 1
  store i32 %inc136, i32* %parts, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %for.end.133
  store i32 1, i32* %i, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.155, %if.end.137
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %parts, align 4
  %cmp139 = icmp ule i32 %81, %82
  br i1 %cmp139, label %for.body.141, label %for.end.157

for.body.141:                                     ; preds = %for.cond.138
  %83 = load i8*, i8** %hexsig.addr, align 8
  %84 = load i32, i32* %i, align 4
  %sub = sub i32 %84, 1
  %call142 = call i8* @cli_strtok(i8* %83, i32 %sub, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call142, i8** %pt, align 8
  %cmp143 = icmp eq i8* %call142, null
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %for.body.141
  %85 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i32 %85)
  store i32 -116, i32* %retval
  br label %return

if.end.146:                                       ; preds = %for.body.141
  %86 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %87 = load i8*, i8** %virname.addr, align 8
  %88 = load i8*, i8** %pt, align 8
  %89 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_partsigs147 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %89, i32 0, i32 11
  %90 = load i32, i32* %ac_partsigs147, align 4
  %91 = load i32, i32* %parts, align 4
  %conv148 = trunc i32 %91 to i16
  %92 = load i32, i32* %i, align 4
  %conv149 = trunc i32 %92 to i16
  %93 = load i16, i16* %type.addr, align 2
  %94 = load i8*, i8** %offset.addr, align 8
  %95 = load i16, i16* %target.addr, align 2
  %conv150 = trunc i16 %95 to i8
  %call151 = call i32 @cli_ac_addsig(%struct.cli_matcher* %86, i8* %87, i8* %88, i32 %90, i16 zeroext %conv148, i16 zeroext %conv149, i16 zeroext %93, i32 0, i32 0, i8* %94, i8 zeroext %conv150)
  store i32 %call151, i32* %ret, align 4
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.146
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  %96 = load i8*, i8** %pt, align 8
  call void @free(i8* %96) #5
  %97 = load i32, i32* %ret, align 4
  store i32 %97, i32* %retval
  br label %return

if.end.154:                                       ; preds = %if.end.146
  %98 = load i8*, i8** %pt, align 8
  call void @free(i8* %98) #5
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %99 = load i32, i32* %i, align 4
  %inc156 = add i32 %99, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond.138

for.end.157:                                      ; preds = %for.cond.138
  br label %if.end.241

if.else.158:                                      ; preds = %if.else.111
  %100 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %ac_only = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %100, i32 0, i32 1
  %101 = load i8, i8* %ac_only, align 1
  %conv159 = zext i8 %101 to i32
  %tobool160 = icmp ne i32 %conv159, 0
  br i1 %tobool160, label %if.then.167, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %if.else.158
  %102 = load i8*, i8** %hexsig.addr, align 8
  %call162 = call i8* @strpbrk(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #6
  %tobool163 = icmp ne i8* %call162, null
  br i1 %tobool163, label %if.then.167, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %lor.lhs.false.161
  %103 = load i16, i16* %type.addr, align 2
  %conv165 = zext i16 %103 to i32
  %tobool166 = icmp ne i32 %conv165, 0
  br i1 %tobool166, label %if.then.167, label %if.else.173

if.then.167:                                      ; preds = %lor.lhs.false.164, %lor.lhs.false.161, %if.else.158
  %104 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %105 = load i8*, i8** %virname.addr, align 8
  %106 = load i8*, i8** %hexsig.addr, align 8
  %107 = load i16, i16* %type.addr, align 2
  %108 = load i8*, i8** %offset.addr, align 8
  %109 = load i16, i16* %target.addr, align 2
  %conv168 = trunc i16 %109 to i8
  %call169 = call i32 @cli_ac_addsig(%struct.cli_matcher* %104, i8* %105, i8* %106, i32 0, i16 zeroext 0, i16 zeroext 0, i16 zeroext %107, i32 0, i32 0, i8* %108, i8 zeroext %conv168)
  store i32 %call169, i32* %ret, align 4
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.then.167
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0))
  %110 = load i32, i32* %ret, align 4
  store i32 %110, i32* %retval
  br label %return

if.end.172:                                       ; preds = %if.then.167
  br label %if.end.240

if.else.173:                                      ; preds = %lor.lhs.false.164
  %call174 = call i8* @cli_calloc(i64 1, i64 64)
  %111 = bitcast i8* %call174 to %struct.cli_bm_patt*
  store %struct.cli_bm_patt* %111, %struct.cli_bm_patt** %bm_new, align 8
  %112 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %tobool175 = icmp ne %struct.cli_bm_patt* %112, null
  br i1 %tobool175, label %if.end.177, label %if.then.176

if.then.176:                                      ; preds = %if.else.173
  store i32 -114, i32* %retval
  br label %return

if.end.177:                                       ; preds = %if.else.173
  %113 = load i8*, i8** %hexsig.addr, align 8
  %call178 = call i8* @cli_hex2str(i8* %113)
  %114 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %pattern = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %114, i32 0, i32 0
  store i8* %call178, i8** %pattern, align 8
  %tobool179 = icmp ne i8* %call178, null
  br i1 %tobool179, label %if.end.181, label %if.then.180

if.then.180:                                      ; preds = %if.end.177
  %115 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %116 = bitcast %struct.cli_bm_patt* %115 to i8*
  call void @free(i8* %116) #5
  store i32 -116, i32* %retval
  br label %return

if.end.181:                                       ; preds = %if.end.177
  %117 = load i8*, i8** %hexsig.addr, align 8
  %call182 = call i64 @strlen(i8* %117) #6
  %div = udiv i64 %call182, 2
  %conv183 = trunc i64 %div to i16
  %118 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %length = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %118, i32 0, i32 2
  store i16 %conv183, i16* %length, align 2
  %119 = load i8*, i8** %virname.addr, align 8
  %call184 = call i8* @strstr(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #6
  store i8* %call184, i8** %pt, align 8
  %tobool185 = icmp ne i8* %call184, null
  br i1 %tobool185, label %if.then.186, label %if.else.192

if.then.186:                                      ; preds = %if.end.181
  %120 = load i8*, i8** %virname.addr, align 8
  %call187 = call i64 @strlen(i8* %120) #6
  %121 = load i8*, i8** %pt, align 8
  %call188 = call i64 @strlen(i8* %121) #6
  %sub189 = sub i64 %call187, %call188
  %sub190 = sub i64 %sub189, 1
  %conv191 = trunc i64 %sub190 to i32
  store i32 %conv191, i32* %virlen, align 4
  br label %if.end.195

if.else.192:                                      ; preds = %if.end.181
  %122 = load i8*, i8** %virname.addr, align 8
  %call193 = call i64 @strlen(i8* %122) #6
  %conv194 = trunc i64 %call193 to i32
  store i32 %conv194, i32* %virlen, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.192, %if.then.186
  %123 = load i32, i32* %virlen, align 4
  %cmp196 = icmp sle i32 %123, 0
  br i1 %cmp196, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %if.end.195
  %124 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %pattern199 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %124, i32 0, i32 0
  %125 = load i8*, i8** %pattern199, align 8
  call void @free(i8* %125) #5
  %126 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %127 = bitcast %struct.cli_bm_patt* %126 to i8*
  call void @free(i8* %127) #5
  store i32 -116, i32* %retval
  br label %return

if.end.200:                                       ; preds = %if.end.195
  %128 = load i32, i32* %virlen, align 4
  %add = add nsw i32 %128, 1
  %conv201 = sext i32 %add to i64
  %call202 = call i8* @cli_calloc(i64 %conv201, i64 1)
  %129 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %virname203 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %129, i32 0, i32 4
  store i8* %call202, i8** %virname203, align 8
  %cmp204 = icmp eq i8* %call202, null
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.end.200
  %130 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %pattern207 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %130, i32 0, i32 0
  %131 = load i8*, i8** %pattern207, align 8
  call void @free(i8* %131) #5
  %132 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %133 = bitcast %struct.cli_bm_patt* %132 to i8*
  call void @free(i8* %133) #5
  store i32 -114, i32* %retval
  br label %return

if.end.208:                                       ; preds = %if.end.200
  %134 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %virname209 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %134, i32 0, i32 4
  %135 = load i8*, i8** %virname209, align 8
  %136 = load i8*, i8** %virname.addr, align 8
  %137 = load i32, i32* %virlen, align 4
  %conv210 = sext i32 %137 to i64
  %call211 = call i8* @strncpy(i8* %135, i8* %136, i64 %conv210) #5
  %138 = load i8*, i8** %offset.addr, align 8
  %tobool212 = icmp ne i8* %138, null
  br i1 %tobool212, label %if.then.213, label %if.end.222

if.then.213:                                      ; preds = %if.end.208
  %139 = load i8*, i8** %offset.addr, align 8
  %call214 = call i8* @cli_strdup(i8* %139)
  %140 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %offset215 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %140, i32 0, i32 5
  store i8* %call214, i8** %offset215, align 8
  %141 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %offset216 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %141, i32 0, i32 5
  %142 = load i8*, i8** %offset216, align 8
  %tobool217 = icmp ne i8* %142, null
  br i1 %tobool217, label %if.end.221, label %if.then.218

if.then.218:                                      ; preds = %if.then.213
  %143 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %pattern219 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %143, i32 0, i32 0
  %144 = load i8*, i8** %pattern219, align 8
  call void @free(i8* %144) #5
  %145 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %virname220 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %145, i32 0, i32 4
  %146 = load i8*, i8** %virname220, align 8
  call void @free(i8* %146) #5
  %147 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %148 = bitcast %struct.cli_bm_patt* %147 to i8*
  call void @free(i8* %148) #5
  store i32 -114, i32* %retval
  br label %return

if.end.221:                                       ; preds = %if.then.213
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.end.208
  %149 = load i16, i16* %target.addr, align 2
  %conv223 = trunc i16 %149 to i8
  %150 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %target224 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %150, i32 0, i32 6
  store i8 %conv223, i8* %target224, align 1
  %151 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %length225 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %151, i32 0, i32 2
  %152 = load i16, i16* %length225, align 2
  %conv226 = zext i16 %152 to i32
  %153 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %maxpatlen = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %153, i32 0, i32 0
  %154 = load i16, i16* %maxpatlen, align 2
  %conv227 = zext i16 %154 to i32
  %cmp228 = icmp sgt i32 %conv226, %conv227
  br i1 %cmp228, label %if.then.230, label %if.end.233

if.then.230:                                      ; preds = %if.end.222
  %155 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %length231 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %155, i32 0, i32 2
  %156 = load i16, i16* %length231, align 2
  %157 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %maxpatlen232 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %157, i32 0, i32 0
  store i16 %156, i16* %maxpatlen232, align 2
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.230, %if.end.222
  %158 = load %struct.cli_matcher*, %struct.cli_matcher** %root.addr, align 8
  %159 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %call234 = call i32 @cli_bm_addpatt(%struct.cli_matcher* %158, %struct.cli_bm_patt* %159)
  store i32 %call234, i32* %ret, align 4
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.then.236, label %if.end.239

if.then.236:                                      ; preds = %if.end.233
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0))
  %160 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %pattern237 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %160, i32 0, i32 0
  %161 = load i8*, i8** %pattern237, align 8
  call void @free(i8* %161) #5
  %162 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %virname238 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %162, i32 0, i32 4
  %163 = load i8*, i8** %virname238, align 8
  call void @free(i8* %163) #5
  %164 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %165 = bitcast %struct.cli_bm_patt* %164 to i8*
  call void @free(i8* %165) #5
  %166 = load i32, i32* %ret, align 4
  store i32 %166, i32* %retval
  br label %return

if.end.239:                                       ; preds = %if.end.233
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.172
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %for.end.157
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.110
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.242, %if.then.236, %if.then.218, %if.then.206, %if.then.198, %if.then.180, %if.then.176, %if.then.171, %if.then.153, %if.then.145, %if.then.109, %if.then.3
  %167 = load i32, i32* %retval
  ret i32 %167
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

declare i8* @cli_strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

declare i32 @cli_ac_addsig(%struct.cli_matcher*, i8*, i8*, i32, i16 zeroext, i16 zeroext, i16 zeroext, i32, i32, i8*, i8 zeroext) #2

declare void @cli_errmsg(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i8* @cli_strtok(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #1

declare i8* @cli_calloc(i64, i64) #2

declare i8* @cli_hex2str(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare i32 @cli_bm_addpatt(%struct.cli_matcher*, %struct.cli_bm_patt*) #2

; Function Attrs: nounwind uwtable
define i32 @cli_initengine(%struct.cl_engine** %engine, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine**, align 8
  %options.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  %0 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %1 = load %struct.cl_engine*, %struct.cl_engine** %0, align 8
  %tobool = icmp ne %struct.cl_engine* %1, null
  br i1 %tobool, label %if.end.13, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i32 0, i32 0))
  %call = call i8* @cli_calloc(i64 1, i64 88)
  %2 = bitcast i8* %call to %struct.cl_engine*
  %3 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  store %struct.cl_engine* %2, %struct.cl_engine** %3, align 8
  %4 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %5 = load %struct.cl_engine*, %struct.cl_engine** %4, align 8
  %tobool1 = icmp ne %struct.cl_engine* %5, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %7 = load %struct.cl_engine*, %struct.cl_engine** %6, align 8
  %refcount = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %7, i32 0, i32 0
  store i32 1, i32* %refcount, align 4
  %call3 = call i8* @cli_calloc(i64 7, i64 8)
  %8 = bitcast i8* %call3 to i8**
  %9 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %10 = load %struct.cl_engine*, %struct.cl_engine** %9, align 8
  %root = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %10, i32 0, i32 3
  store i8** %8, i8*** %root, align 8
  %11 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %12 = load %struct.cl_engine*, %struct.cl_engine** %11, align 8
  %root4 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %12, i32 0, i32 3
  %13 = load i8**, i8*** %root4, align 8
  %tobool5 = icmp ne i8** %13, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %call8 = call %struct.cli_dconf* @cli_dconf_init()
  %14 = bitcast %struct.cli_dconf* %call8 to i8*
  %15 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %16 = load %struct.cl_engine*, %struct.cl_engine** %15, align 8
  %dconf = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %16, i32 0, i32 11
  store i8* %14, i8** %dconf, align 8
  %17 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %18 = load %struct.cl_engine*, %struct.cl_engine** %17, align 8
  %dconf9 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %18, i32 0, i32 11
  %19 = load i8*, i8** %dconf9, align 8
  %tobool10 = icmp ne i8* %19, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %entry
  %20 = load i32, i32* %options.addr, align 4
  %and = and i32 %20, 8
  %tobool14 = icmp ne i32 %and, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.13
  %21 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %22 = load %struct.cl_engine*, %struct.cl_engine** %21, align 8
  %dconf15 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %22, i32 0, i32 11
  %23 = load i8*, i8** %dconf15, align 8
  %24 = bitcast i8* %23 to %struct.cli_dconf*
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %24, i32 0, i32 6
  %25 = load i32, i32* %phishing, align 4
  %and16 = and i32 %25, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %land.lhs.true
  %26 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %27 = load %struct.cl_engine*, %struct.cl_engine** %26, align 8
  %call19 = call i32 @phishing_init(%struct.cl_engine* %27)
  store i32 %call19, i32* %ret, align 4
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.18
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %land.lhs.true, %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.21, %if.then.11, %if.then.6, %if.then.2
  %29 = load i32, i32* %retval
  ret i32 %29
}

declare void @cli_dbgmsg(i8*, ...) #2

declare %struct.cli_dconf* @cli_dconf_init() #2

declare i32 @phishing_init(%struct.cl_engine*) #2

; Function Attrs: nounwind uwtable
define i32 @cl_loaddb(i8* %filename, %struct.cl_engine** %engine, i32* %signo) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %2 = load i32*, i32** %signo.addr, align 8
  %call = call i32 @cli_load(i8* %0, %struct.cl_engine** %1, i32* %2, i32 10)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_load(i8* %filename, %struct.cl_engine** %engine, i32* %signo, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  %options.addr = alloca i32, align 4
  %fd = alloca %struct._IO_FILE*, align 8
  %ret = alloca i32, align 4
  %skipped = alloca i8, align 1
  %warn = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %ret, align 4
  store i8 0, i8* %skipped, align 1
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fd, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.46, i32 0, i32 0), i8* %1)
  store i32 -115, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 @cli_strbcasestr(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %4 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %5 = load i32*, i32** %signo.addr, align 8
  %6 = load i32, i32* %options.addr, align 4
  %call3 = call i32 @cli_loaddb(%struct._IO_FILE* %3, %struct.cl_engine** %4, i32* %5, i32 %6)
  store i32 %call3, i32* %ret, align 4
  br label %if.end.117

if.else:                                          ; preds = %if.end
  %7 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32 @cli_strbcasestr(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %warn, align 4
  %8 = load i8*, i8** %filename.addr, align 8
  %call7 = call i8* @strstr(i8* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0)) #6
  %tobool8 = icmp ne i8* %call7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  store i32 1, i32* %warn, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %10 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %11 = load i32*, i32** %signo.addr, align 8
  %12 = load i32, i32* %warn, align 4
  %conv = trunc i32 %12 to i16
  %13 = load i32, i32* %options.addr, align 4
  %call11 = call i32 @cli_cvdload(%struct._IO_FILE* %9, %struct.cl_engine** %10, i32* %11, i16 signext %conv, i32 %13)
  store i32 %call11, i32* %ret, align 4
  br label %if.end.116

if.else.12:                                       ; preds = %if.else
  %14 = load i8*, i8** %filename.addr, align 8
  %call13 = call i32 @cli_strbcasestr(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else.12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %16 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %17 = load i32*, i32** %signo.addr, align 8
  %18 = load i32, i32* %options.addr, align 4
  %call16 = call i32 @cli_loadmd5(%struct._IO_FILE* %15, %struct.cl_engine** %16, i32* %17, i8 zeroext 0, i32 %18)
  store i32 %call16, i32* %ret, align 4
  br label %if.end.115

if.else.17:                                       ; preds = %if.else.12
  %19 = load i8*, i8** %filename.addr, align 8
  %call18 = call i32 @cli_strbcasestr(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0))
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.26

if.then.20:                                       ; preds = %if.else.17
  %20 = load i32, i32* %options.addr, align 4
  %and = and i32 %20, 16
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.then.20
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %22 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %23 = load i32*, i32** %signo.addr, align 8
  %24 = load i32, i32* %options.addr, align 4
  %call23 = call i32 @cli_loadmd5(%struct._IO_FILE* %21, %struct.cl_engine** %22, i32* %23, i8 zeroext 0, i32 %24)
  store i32 %call23, i32* %ret, align 4
  br label %if.end.25

if.else.24:                                       ; preds = %if.then.20
  store i8 1, i8* %skipped, align 1
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.114

if.else.26:                                       ; preds = %if.else.17
  %25 = load i8*, i8** %filename.addr, align 8
  %call27 = call i32 @cli_strbcasestr(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.else.26
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %27 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %28 = load i32*, i32** %signo.addr, align 8
  %29 = load i32, i32* %options.addr, align 4
  %call30 = call i32 @cli_loadmd5(%struct._IO_FILE* %26, %struct.cl_engine** %27, i32* %28, i8 zeroext 2, i32 %29)
  store i32 %call30, i32* %ret, align 4
  br label %if.end.113

if.else.31:                                       ; preds = %if.else.26
  %30 = load i8*, i8** %filename.addr, align 8
  %call32 = call i32 @cli_strbcasestr(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else.31
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %32 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %33 = load i32*, i32** %signo.addr, align 8
  %34 = load i32, i32* %options.addr, align 4
  %call35 = call i32 @cli_loadmd5(%struct._IO_FILE* %31, %struct.cl_engine** %32, i32* %33, i8 zeroext 1, i32 %34)
  store i32 %call35, i32* %ret, align 4
  br label %if.end.112

if.else.36:                                       ; preds = %if.else.31
  %35 = load i8*, i8** %filename.addr, align 8
  %call37 = call i32 @cli_strbcasestr(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.46

if.then.39:                                       ; preds = %if.else.36
  %36 = load i32, i32* %options.addr, align 4
  %and40 = and i32 %36, 16
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.then.39
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %38 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %39 = load i32*, i32** %signo.addr, align 8
  %40 = load i32, i32* %options.addr, align 4
  %call43 = call i32 @cli_loadmd5(%struct._IO_FILE* %37, %struct.cl_engine** %38, i32* %39, i8 zeroext 1, i32 %40)
  store i32 %call43, i32* %ret, align 4
  br label %if.end.45

if.else.44:                                       ; preds = %if.then.39
  store i8 1, i8* %skipped, align 1
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.44, %if.then.42
  br label %if.end.111

if.else.46:                                       ; preds = %if.else.36
  %41 = load i8*, i8** %filename.addr, align 8
  %call47 = call i32 @cli_strbcasestr(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else.46
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %43 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %44 = load i32*, i32** %signo.addr, align 8
  %45 = load i32, i32* %options.addr, align 4
  %call50 = call i32 @cli_loadndb(%struct._IO_FILE* %42, %struct.cl_engine** %43, i32* %44, i16 zeroext 0, i32 %45)
  store i32 %call50, i32* %ret, align 4
  br label %if.end.110

if.else.51:                                       ; preds = %if.else.46
  %46 = load i8*, i8** %filename.addr, align 8
  %call52 = call i32 @cli_strbcasestr(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.61

if.then.54:                                       ; preds = %if.else.51
  %47 = load i32, i32* %options.addr, align 4
  %and55 = and i32 %47, 16
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.else.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.54
  store i8 1, i8* %skipped, align 1
  br label %if.end.60

if.else.58:                                       ; preds = %if.then.54
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %49 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %50 = load i32*, i32** %signo.addr, align 8
  %51 = load i32, i32* %options.addr, align 4
  %call59 = call i32 @cli_loadndb(%struct._IO_FILE* %48, %struct.cl_engine** %49, i32* %50, i16 zeroext 0, i32 %51)
  store i32 %call59, i32* %ret, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.then.57
  br label %if.end.109

if.else.61:                                       ; preds = %if.else.51
  %52 = load i8*, i8** %filename.addr, align 8
  %call62 = call i32 @cli_strbcasestr(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.else.61
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %54 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %55 = load i32*, i32** %signo.addr, align 8
  %56 = load i32, i32* %options.addr, align 4
  %call65 = call i32 @cli_loadndb(%struct._IO_FILE* %53, %struct.cl_engine** %54, i32* %55, i16 zeroext 1, i32 %56)
  store i32 %call65, i32* %ret, align 4
  br label %if.end.108

if.else.66:                                       ; preds = %if.else.61
  %57 = load i8*, i8** %filename.addr, align 8
  %call67 = call i32 @cli_strbcasestr(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0))
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.69, label %if.else.71

if.then.69:                                       ; preds = %if.else.66
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %59 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %60 = load i32*, i32** %signo.addr, align 8
  %61 = load i32, i32* %options.addr, align 4
  %call70 = call i32 @cli_loadmd(%struct._IO_FILE* %58, %struct.cl_engine** %59, i32* %60, i32 1, i32 %61)
  store i32 %call70, i32* %ret, align 4
  br label %if.end.107

if.else.71:                                       ; preds = %if.else.66
  %62 = load i8*, i8** %filename.addr, align 8
  %call72 = call i32 @cli_strbcasestr(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.else.71
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %64 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %65 = load i32*, i32** %signo.addr, align 8
  %66 = load i32, i32* %options.addr, align 4
  %call75 = call i32 @cli_loadmd(%struct._IO_FILE* %63, %struct.cl_engine** %64, i32* %65, i32 2, i32 %66)
  store i32 %call75, i32* %ret, align 4
  br label %if.end.106

if.else.76:                                       ; preds = %if.else.71
  %67 = load i8*, i8** %filename.addr, align 8
  %call77 = call i32 @cli_strbcasestr(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0))
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %if.else.76
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %69 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %70 = load i32, i32* %options.addr, align 4
  %call80 = call i32 @cli_dconf_load(%struct._IO_FILE* %68, %struct.cl_engine** %69, i32 %70)
  store i32 %call80, i32* %ret, align 4
  br label %if.end.105

if.else.81:                                       ; preds = %if.else.76
  %71 = load i8*, i8** %filename.addr, align 8
  %call82 = call i32 @cli_strbcasestr(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0))
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.else.91

if.then.84:                                       ; preds = %if.else.81
  %72 = load i32, i32* %options.addr, align 4
  %and85 = and i32 %72, 8
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.then.84
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %74 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %75 = load i32, i32* %options.addr, align 4
  %call88 = call i32 @cli_loadwdb(%struct._IO_FILE* %73, %struct.cl_engine** %74, i32 %75)
  store i32 %call88, i32* %ret, align 4
  br label %if.end.90

if.else.89:                                       ; preds = %if.then.84
  store i8 1, i8* %skipped, align 1
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.89, %if.then.87
  br label %if.end.104

if.else.91:                                       ; preds = %if.else.81
  %76 = load i8*, i8** %filename.addr, align 8
  %call92 = call i32 @cli_strbcasestr(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.94, label %if.else.101

if.then.94:                                       ; preds = %if.else.91
  %77 = load i32, i32* %options.addr, align 4
  %and95 = and i32 %77, 8
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.then.94
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %79 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %80 = load i32, i32* %options.addr, align 4
  %call98 = call i32 @cli_loadpdb(%struct._IO_FILE* %78, %struct.cl_engine** %79, i32 %80)
  store i32 %call98, i32* %ret, align 4
  br label %if.end.100

if.else.99:                                       ; preds = %if.then.94
  store i8 1, i8* %skipped, align 1
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.99, %if.then.97
  br label %if.end.103

if.else.101:                                      ; preds = %if.else.91
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.49, i32 0, i32 0))
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %82 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %83 = load i32*, i32** %signo.addr, align 8
  %84 = load i32, i32* %options.addr, align 4
  %call102 = call i32 @cli_loaddb(%struct._IO_FILE* %81, %struct.cl_engine** %82, i32* %83, i32 %84)
  store i32 %call102, i32* %ret, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.end.100
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.90
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.79
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.74
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.69
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.64
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.60
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.49
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.45
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.34
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.29
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.25
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.15
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.10
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.then.2
  %85 = load i32, i32* %ret, align 4
  %tobool118 = icmp ne i32 %85, 0
  br i1 %tobool118, label %if.then.119, label %if.else.121

if.then.119:                                      ; preds = %if.end.117
  %86 = load i8*, i8** %filename.addr, align 8
  %87 = load i32, i32* %ret, align 4
  %call120 = call i8* @cl_strerror(i32 %87)
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), i8* %86, i8* %call120)
  br label %if.end.126

if.else.121:                                      ; preds = %if.end.117
  %88 = load i8, i8* %skipped, align 1
  %tobool122 = icmp ne i8 %88, 0
  br i1 %tobool122, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.else.121
  %89 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i8* %89)
  br label %if.end.125

if.else.124:                                      ; preds = %if.else.121
  %90 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* %90)
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.124, %if.then.123
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.119
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call127 = call i32 @fclose(%struct._IO_FILE* %91)
  %92 = load i32, i32* %ret, align 4
  store i32 %92, i32* %retval
  br label %return

return:                                           ; preds = %if.end.126, %if.then
  %93 = load i32, i32* %retval
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define i32 @cl_loaddbdir(i8* %dirname, %struct.cl_engine** %engine, i32* %signo) #0 {
entry:
  %dirname.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  %0 = load i8*, i8** %dirname.addr, align 8
  %1 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %2 = load i32*, i32** %signo.addr, align 8
  %call = call i32 @cli_loaddbdir(i8* %0, %struct.cl_engine** %1, i32* %2, i32 10)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_loaddbdir(i8* %dirname, %struct.cl_engine** %engine, i32* %signo, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  %options.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %try = alloca i32, align 4
  %lock = alloca i32, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %try, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.79, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %dirname.addr, align 8
  %call = call i32 @cli_readlockdb(i8* %0, i32 0)
  store i32 %call, i32* %lock, align 4
  %cmp = icmp eq i32 %call, -126
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @sleep(i32 5)
  %1 = load i32, i32* %try, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %try, align 4
  %cmp2 = icmp sgt i32 %1, 24
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load i8*, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.80, i32 0, i32 0), i8* %2)
  store i32 -126, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load i8*, i8** %dirname.addr, align 8
  %4 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %5 = load i32*, i32** %signo.addr, align 8
  %6 = load i32, i32* %options.addr, align 4
  %call3 = call i32 @cli_loaddbdir_l(i8* %3, %struct.cl_engine** %4, i32* %5, i32 %6)
  store i32 %call3, i32* %ret, align 4
  %7 = load i32, i32* %lock, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %while.end
  %8 = load i8*, i8** %dirname.addr, align 8
  %call6 = call i32 @cli_unlockdb(i8* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %while.end
  %9 = load i32, i32* %ret, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @cl_load(i8* %path, %struct.cl_engine** %engine, i32* %signo, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  %options.addr = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %ret = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 @stat(i8* %0, %struct.stat* %sb) #5
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %path.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i8* %1)
  store i32 -123, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %3 = load i32, i32* %options.addr, align 4
  %call1 = call i32 @cli_initengine(%struct.cl_engine** %2, i32 %3)
  store i32 %call1, i32* %ret, align 4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %5 = load %struct.cl_engine*, %struct.cl_engine** %4, align 8
  call void @cl_free(%struct.cl_engine* %5)
  %6 = load i32, i32* %ret, align 4
  store i32 %6, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load i32, i32* %options.addr, align 4
  %8 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %9 = load %struct.cl_engine*, %struct.cl_engine** %8, align 8
  %dboptions = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %9, i32 0, i32 2
  store i32 %7, i32* %dboptions, align 4
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 3
  %10 = load i32, i32* %st_mode, align 4
  %and = and i32 %10, 61440
  switch i32 %and, label %sw.default [
    i32 32768, label %sw.bb
    i32 16384, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.end.3
  %11 = load i8*, i8** %path.addr, align 8
  %12 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %13 = load i32*, i32** %signo.addr, align 8
  %14 = load i32, i32* %options.addr, align 4
  %call4 = call i32 @cli_load(i8* %11, %struct.cl_engine** %12, i32* %13, i32 %14)
  store i32 %call4, i32* %ret, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.end.3
  %15 = load i8*, i8** %path.addr, align 8
  %16 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %17 = load i32*, i32** %signo.addr, align 8
  %18 = load i32, i32* %options.addr, align 4
  %call6 = call i32 @cli_loaddbdir(i8* %15, %struct.cl_engine** %16, i32* %17, i32 %18)
  store i32 %call6, i32* %ret, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.3
  %19 = load i8*, i8** %path.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i32 0, i32 0), i8* %19)
  store i32 -115, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.5, %sw.bb
  %20 = load i32, i32* %ret, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default, %if.then.2, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define void @cl_free(%struct.cl_engine* %engine) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  %i = alloca i32, align 4
  %md5pt = alloca %struct.cli_md5_node*, align 8
  %md5h = alloca %struct.cli_md5_node*, align 8
  %metapt = alloca %struct.cli_meta_node*, align 8
  %metah = alloca %struct.cli_meta_node*, align 8
  %root = alloca %struct.cli_matcher*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %refcount = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 0
  %2 = load i32, i32* %refcount, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %refcount, align 4
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %refcount1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %3, i32 0, i32 0
  %4 = load i32, i32* %refcount1, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root5 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %5, i32 0, i32 3
  %6 = load i8**, i8*** %root5, align 8
  %tobool6 = icmp ne i8** %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %if.end.4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root8 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %9, i32 0, i32 3
  %10 = load i8**, i8*** %root8, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  %12 = bitcast i8* %11 to %struct.cli_matcher*
  store %struct.cli_matcher* %12, %struct.cli_matcher** %root, align 8
  %tobool9 = icmp ne %struct.cli_matcher* %12, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %for.body
  %13 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %ac_only = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %13, i32 0, i32 1
  %14 = load i8, i8* %ac_only, align 1
  %tobool11 = icmp ne i8 %14, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.then.10
  %15 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  call void @cli_bm_free(%struct.cli_matcher* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  %16 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  call void @cli_ac_free(%struct.cli_matcher* %16)
  %17 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %18 = bitcast %struct.cli_matcher* %17 to i8*
  call void @free(i8* %18) #5
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root15 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %20, i32 0, i32 3
  %21 = load i8**, i8*** %root15, align 8
  %22 = bitcast i8** %21 to i8*
  call void @free(i8* %22) #5
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end.4
  %23 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %md5_hlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %23, i32 0, i32 4
  %24 = load i8**, i8*** %md5_hlist, align 8
  %tobool17 = icmp ne i8** %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.16
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.26, %if.then.18
  %25 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %25, 256
  br i1 %cmp20, label %for.body.21, label %for.end.28

for.body.21:                                      ; preds = %for.cond.19
  %26 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %md5_hlist23 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %27, i32 0, i32 4
  %28 = load i8**, i8*** %md5_hlist23, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %28, i64 %idxprom22
  %29 = load i8*, i8** %arrayidx24, align 8
  %30 = bitcast i8* %29 to %struct.cli_md5_node*
  store %struct.cli_md5_node* %30, %struct.cli_md5_node** %md5pt, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.21
  %31 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5pt, align 8
  %tobool25 = icmp ne %struct.cli_md5_node* %31, null
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %32 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5pt, align 8
  store %struct.cli_md5_node* %32, %struct.cli_md5_node** %md5h, align 8
  %33 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5pt, align 8
  %next = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %33, i32 0, i32 4
  %34 = load %struct.cli_md5_node*, %struct.cli_md5_node** %next, align 8
  store %struct.cli_md5_node* %34, %struct.cli_md5_node** %md5pt, align 8
  %35 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5h, align 8
  %md5 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %35, i32 0, i32 1
  %36 = load i8*, i8** %md5, align 8
  call void @free(i8* %36) #5
  %37 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5h, align 8
  %virname = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %37, i32 0, i32 0
  %38 = load i8*, i8** %virname, align 8
  call void @free(i8* %38) #5
  %39 = load %struct.cli_md5_node*, %struct.cli_md5_node** %md5h, align 8
  %40 = bitcast %struct.cli_md5_node* %39 to i8*
  call void @free(i8* %40) #5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.26

for.inc.26:                                       ; preds = %while.end
  %41 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %41, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.19

for.end.28:                                       ; preds = %for.cond.19
  %42 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %md5_hlist29 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %42, i32 0, i32 4
  %43 = load i8**, i8*** %md5_hlist29, align 8
  %44 = bitcast i8** %43 to i8*
  call void @free(i8* %44) #5
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.28, %if.end.16
  %45 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %md5_sect = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %45, i32 0, i32 5
  %46 = load i8*, i8** %md5_sect, align 8
  %47 = bitcast i8* %46 to %struct.cli_matcher*
  store %struct.cli_matcher* %47, %struct.cli_matcher** %root, align 8
  %tobool31 = icmp ne %struct.cli_matcher* %47, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  %48 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  call void @cli_bm_free(%struct.cli_matcher* %48)
  %49 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %soff = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %49, i32 0, i32 4
  %50 = load i32*, i32** %soff, align 8
  %51 = bitcast i32* %50 to i8*
  call void @free(i8* %51) #5
  %52 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %53 = bitcast %struct.cli_matcher* %52 to i8*
  call void @free(i8* %53) #5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  %54 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %zip_mlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %54, i32 0, i32 6
  %55 = load i8*, i8** %zip_mlist, align 8
  %56 = bitcast i8* %55 to %struct.cli_meta_node*
  store %struct.cli_meta_node* %56, %struct.cli_meta_node** %metapt, align 8
  br label %while.cond.34

while.cond.34:                                    ; preds = %if.end.42, %if.end.33
  %57 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metapt, align 8
  %tobool35 = icmp ne %struct.cli_meta_node* %57, null
  br i1 %tobool35, label %while.body.36, label %while.end.43

while.body.36:                                    ; preds = %while.cond.34
  %58 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metapt, align 8
  store %struct.cli_meta_node* %58, %struct.cli_meta_node** %metah, align 8
  %59 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metapt, align 8
  %next37 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %59, i32 0, i32 9
  %60 = load %struct.cli_meta_node*, %struct.cli_meta_node** %next37, align 8
  store %struct.cli_meta_node* %60, %struct.cli_meta_node** %metapt, align 8
  %61 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metah, align 8
  %virname38 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %61, i32 0, i32 8
  %62 = load i8*, i8** %virname38, align 8
  call void @free(i8* %62) #5
  %63 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metah, align 8
  %filename = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %63, i32 0, i32 7
  %64 = load i8*, i8** %filename, align 8
  %tobool39 = icmp ne i8* %64, null
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %while.body.36
  %65 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metah, align 8
  %filename41 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %65, i32 0, i32 7
  %66 = load i8*, i8** %filename41, align 8
  call void @free(i8* %66) #5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %while.body.36
  %67 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metah, align 8
  %68 = bitcast %struct.cli_meta_node* %67 to i8*
  call void @free(i8* %68) #5
  br label %while.cond.34

while.end.43:                                     ; preds = %while.cond.34
  %69 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %rar_mlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %69, i32 0, i32 7
  %70 = load i8*, i8** %rar_mlist, align 8
  %71 = bitcast i8* %70 to %struct.cli_meta_node*
  store %struct.cli_meta_node* %71, %struct.cli_meta_node** %metapt, align 8
  br label %while.cond.44

while.cond.44:                                    ; preds = %if.end.53, %while.end.43
  %72 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metapt, align 8
  %tobool45 = icmp ne %struct.cli_meta_node* %72, null
  br i1 %tobool45, label %while.body.46, label %while.end.54

while.body.46:                                    ; preds = %while.cond.44
  %73 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metapt, align 8
  store %struct.cli_meta_node* %73, %struct.cli_meta_node** %metah, align 8
  %74 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metapt, align 8
  %next47 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %74, i32 0, i32 9
  %75 = load %struct.cli_meta_node*, %struct.cli_meta_node** %next47, align 8
  store %struct.cli_meta_node* %75, %struct.cli_meta_node** %metapt, align 8
  %76 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metah, align 8
  %virname48 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %76, i32 0, i32 8
  %77 = load i8*, i8** %virname48, align 8
  call void @free(i8* %77) #5
  %78 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metah, align 8
  %filename49 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %78, i32 0, i32 7
  %79 = load i8*, i8** %filename49, align 8
  %tobool50 = icmp ne i8* %79, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %while.body.46
  %80 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metah, align 8
  %filename52 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %80, i32 0, i32 7
  %81 = load i8*, i8** %filename52, align 8
  call void @free(i8* %81) #5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %while.body.46
  %82 = load %struct.cli_meta_node*, %struct.cli_meta_node** %metah, align 8
  %83 = bitcast %struct.cli_meta_node* %82 to i8*
  call void @free(i8* %83) #5
  br label %while.cond.44

while.end.54:                                     ; preds = %while.cond.44
  %84 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %dconf = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %84, i32 0, i32 11
  %85 = load i8*, i8** %dconf, align 8
  %86 = bitcast i8* %85 to %struct.cli_dconf*
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %86, i32 0, i32 6
  %87 = load i32, i32* %phishing, align 4
  %and = and i32 %87, 1
  %tobool55 = icmp ne i32 %and, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %while.end.54
  %88 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  call void @phishing_done(%struct.cl_engine* %88)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %while.end.54
  %89 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %dconf58 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %89, i32 0, i32 11
  %90 = load i8*, i8** %dconf58, align 8
  %tobool59 = icmp ne i8* %90, null
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.end.57
  %91 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %dconf61 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %91, i32 0, i32 11
  %92 = load i8*, i8** %dconf61, align 8
  call void @free(i8* %92) #5
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.end.57
  %call = call i32 @cli_freelocks()
  %93 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %94 = bitcast %struct.cl_engine* %93 to i8*
  call void @free(i8* %94) #5
  br label %return

return:                                           ; preds = %if.end.62, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @cl_retdbdir() #0 {
entry:
  ret i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32 @cl_statinidir(i8* %dirname, %struct.cl_stat* %dbstat) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %dbstat.addr = alloca %struct.cl_stat*, align 8
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %fname = alloca i8*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.cl_stat* %dbstat, %struct.cl_stat** %dbstat.addr, align 8
  %0 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %tobool = icmp ne %struct.cl_stat* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %entries = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %1, i32 0, i32 1
  store i32 0, i32* %entries, align 4
  %2 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %2, i32 0, i32 2
  store %struct.stat* null, %struct.stat** %stattab, align 8
  %3 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %statdname = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %3, i32 0, i32 3
  store i8** null, i8*** %statdname, align 8
  %4 = load i8*, i8** %dirname.addr, align 8
  %call = call i8* @cli_strdup(i8* %4)
  %5 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %5, i32 0, i32 0
  store i8* %call, i8** %dir, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i8*, i8** %dirname.addr, align 8
  %call1 = call %struct.__dirstream* @opendir(i8* %6)
  store %struct.__dirstream* %call1, %struct.__dirstream** %dd, align 8
  %cmp = icmp eq %struct.__dirstream* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load i8*, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* %7)
  %8 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %call3 = call i32 @cl_statfree(%struct.cl_stat* %8)
  store i32 -115, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load i8*, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* %9)
  br label %while.cond

while.cond:                                       ; preds = %if.end.143, %if.end.4
  %10 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call5 = call %struct.dirent* @readdir(%struct.__dirstream* %10)
  store %struct.dirent* %call5, %struct.dirent** %dent, align 8
  %tobool6 = icmp ne %struct.dirent* %call5, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %11, i32 0, i32 0
  %12 = load i64, i64* %d_ino, align 8
  %tobool7 = icmp ne i64 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.end.143

if.then.8:                                        ; preds = %while.body
  %13 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %13, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call9 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.142

land.lhs.true:                                    ; preds = %if.then.8
  %14 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name11 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 4
  %arraydecay12 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name11, i32 0, i32 0
  %call13 = call i32 @strcmp(i8* %arraydecay12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #6
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.142

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %15 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name16 = getelementptr inbounds %struct.dirent, %struct.dirent* %15, i32 0, i32 4
  %arraydecay17 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name16, i32 0, i32 0
  %call18 = call i32 @cli_strbcasestr(i8* %arraydecay17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.99, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.15
  %16 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name20 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 4
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name20, i32 0, i32 0
  %call22 = call i32 @cli_strbcasestr(i8* %arraydecay21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.99, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %17 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name25 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 4
  %arraydecay26 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name25, i32 0, i32 0
  %call27 = call i32 @cli_strbcasestr(i8* %arraydecay26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.99, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.24
  %18 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name30 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  %arraydecay31 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name30, i32 0, i32 0
  %call32 = call i32 @cli_strbcasestr(i8* %arraydecay31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.99, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.29
  %19 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name35 = getelementptr inbounds %struct.dirent, %struct.dirent* %19, i32 0, i32 4
  %arraydecay36 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name35, i32 0, i32 0
  %call37 = call i32 @cli_strbcasestr(i8* %arraydecay36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0))
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.99, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.34
  %20 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name40 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i32 0, i32 4
  %arraydecay41 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name40, i32 0, i32 0
  %call42 = call i32 @cli_strbcasestr(i8* %arraydecay41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.99, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.39
  %21 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name45 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 4
  %arraydecay46 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name45, i32 0, i32 0
  %call47 = call i32 @cli_strbcasestr(i8* %arraydecay46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.99, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.44
  %22 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name50 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 4
  %arraydecay51 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name50, i32 0, i32 0
  %call52 = call i32 @cli_strbcasestr(i8* %arraydecay51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.99, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.49
  %23 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name55 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 4
  %arraydecay56 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name55, i32 0, i32 0
  %call57 = call i32 @cli_strbcasestr(i8* %arraydecay56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0))
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.99, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.54
  %24 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name60 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 4
  %arraydecay61 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name60, i32 0, i32 0
  %call62 = call i32 @cli_strbcasestr(i8* %arraydecay61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.99, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.59
  %25 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name65 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 4
  %arraydecay66 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name65, i32 0, i32 0
  %call67 = call i32 @cli_strbcasestr(i8* %arraydecay66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then.99, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.64
  %26 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name70 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 4
  %arraydecay71 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name70, i32 0, i32 0
  %call72 = call i32 @cli_strbcasestr(i8* %arraydecay71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0))
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.99, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.69
  %27 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name75 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 4
  %arraydecay76 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name75, i32 0, i32 0
  %call77 = call i32 @cli_strbcasestr(i8* %arraydecay76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.99, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %lor.lhs.false.74
  %28 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name80 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 4
  %arraydecay81 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name80, i32 0, i32 0
  %call82 = call i32 @cli_strbcasestr(i8* %arraydecay81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.99, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.79
  %29 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name85 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 4
  %arraydecay86 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name85, i32 0, i32 0
  %call87 = call i32 @cli_strbcasestr(i8* %arraydecay86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0))
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.99, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %lor.lhs.false.84
  %30 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name90 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 4
  %arraydecay91 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name90, i32 0, i32 0
  %call92 = call i32 @cli_strbcasestr(i8* %arraydecay91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then.99, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %lor.lhs.false.89
  %31 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name95 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 4
  %arraydecay96 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name95, i32 0, i32 0
  %call97 = call i32 @cli_strbcasestr(i8* %arraydecay96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0))
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.142

if.then.99:                                       ; preds = %lor.lhs.false.94, %lor.lhs.false.89, %lor.lhs.false.84, %lor.lhs.false.79, %lor.lhs.false.74, %lor.lhs.false.69, %lor.lhs.false.64, %lor.lhs.false.59, %lor.lhs.false.54, %lor.lhs.false.49, %lor.lhs.false.44, %lor.lhs.false.39, %lor.lhs.false.34, %lor.lhs.false.29, %lor.lhs.false.24, %lor.lhs.false, %land.lhs.true.15
  %32 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %entries100 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %32, i32 0, i32 1
  %33 = load i32, i32* %entries100, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %entries100, align 4
  %34 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab101 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %34, i32 0, i32 2
  %35 = load %struct.stat*, %struct.stat** %stattab101, align 8
  %36 = bitcast %struct.stat* %35 to i8*
  %37 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %entries102 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %37, i32 0, i32 1
  %38 = load i32, i32* %entries102, align 4
  %conv = zext i32 %38 to i64
  %mul = mul i64 %conv, 144
  %call103 = call i8* @cli_realloc2(i8* %36, i64 %mul)
  %39 = bitcast i8* %call103 to %struct.stat*
  %40 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab104 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %40, i32 0, i32 2
  store %struct.stat* %39, %struct.stat** %stattab104, align 8
  %41 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab105 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %41, i32 0, i32 2
  %42 = load %struct.stat*, %struct.stat** %stattab105, align 8
  %tobool106 = icmp ne %struct.stat* %42, null
  br i1 %tobool106, label %if.end.110, label %if.then.107

if.then.107:                                      ; preds = %if.then.99
  %43 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %call108 = call i32 @cl_statfree(%struct.cl_stat* %43)
  %44 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call109 = call i32 @closedir(%struct.__dirstream* %44)
  store i32 -114, i32* %retval
  br label %return

if.end.110:                                       ; preds = %if.then.99
  %45 = load i8*, i8** %dirname.addr, align 8
  %call111 = call i64 @strlen(i8* %45) #6
  %46 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name112 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 4
  %arraydecay113 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name112, i32 0, i32 0
  %call114 = call i64 @strlen(i8* %arraydecay113) #6
  %add = add i64 %call111, %call114
  %add115 = add i64 %add, 32
  %call116 = call i8* @cli_malloc(i64 %add115)
  store i8* %call116, i8** %fname, align 8
  %47 = load i8*, i8** %fname, align 8
  %tobool117 = icmp ne i8* %47, null
  br i1 %tobool117, label %if.end.121, label %if.then.118

if.then.118:                                      ; preds = %if.end.110
  %48 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %call119 = call i32 @cl_statfree(%struct.cl_stat* %48)
  %49 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call120 = call i32 @closedir(%struct.__dirstream* %49)
  store i32 -114, i32* %retval
  br label %return

if.end.121:                                       ; preds = %if.end.110
  %50 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name122 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 4
  %arraydecay123 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name122, i32 0, i32 0
  %call124 = call i32 @cli_strbcasestr(i8* %arraydecay123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.else.134

if.then.126:                                      ; preds = %if.end.121
  %51 = load i8*, i8** %fname, align 8
  %52 = load i8*, i8** %dirname.addr, align 8
  %53 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name127 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 4
  %arraydecay128 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name127, i32 0, i32 0
  %54 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name129 = getelementptr inbounds %struct.dirent, %struct.dirent* %54, i32 0, i32 4
  %arraydecay130 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name129, i32 0, i32 0
  %call131 = call i8* @strstr(i8* %arraydecay130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #6
  %tobool132 = icmp ne i8* %call131, null
  %cond = select i1 %tobool132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)
  %call133 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* %52, i8* %arraydecay128, i8* %cond) #5
  br label %if.end.138

if.else.134:                                      ; preds = %if.end.121
  %55 = load i8*, i8** %fname, align 8
  %56 = load i8*, i8** %dirname.addr, align 8
  %57 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name135 = getelementptr inbounds %struct.dirent, %struct.dirent* %57, i32 0, i32 4
  %arraydecay136 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name135, i32 0, i32 0
  %call137 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* %56, i8* %arraydecay136) #5
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.134, %if.then.126
  %58 = load i8*, i8** %fname, align 8
  %59 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %entries139 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %59, i32 0, i32 1
  %60 = load i32, i32* %entries139, align 4
  %sub = sub i32 %60, 1
  %idxprom = zext i32 %sub to i64
  %61 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab140 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %61, i32 0, i32 2
  %62 = load %struct.stat*, %struct.stat** %stattab140, align 8
  %arrayidx = getelementptr inbounds %struct.stat, %struct.stat* %62, i64 %idxprom
  %call141 = call i32 @stat(i8* %58, %struct.stat* %arrayidx) #5
  %63 = load i8*, i8** %fname, align 8
  call void @free(i8* %63) #5
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.138, %lor.lhs.false.94, %land.lhs.true, %if.then.8
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %64 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call144 = call i32 @closedir(%struct.__dirstream* %64)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.118, %if.then.107, %if.then.2, %if.else
  %65 = load i32, i32* %retval
  ret i32 %65
}

declare %struct.__dirstream* @opendir(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @cl_statfree(%struct.cl_stat* %dbstat) #0 {
entry:
  %retval = alloca i32, align 4
  %dbstat.addr = alloca %struct.cl_stat*, align 8
  store %struct.cl_stat* %dbstat, %struct.cl_stat** %dbstat.addr, align 8
  %0 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %tobool = icmp ne %struct.cl_stat* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %1, i32 0, i32 2
  %2 = load %struct.stat*, %struct.stat** %stattab, align 8
  %tobool1 = icmp ne %struct.stat* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab3 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %3, i32 0, i32 2
  %4 = load %struct.stat*, %struct.stat** %stattab3, align 8
  %5 = bitcast %struct.stat* %4 to i8*
  call void @free(i8* %5) #5
  %6 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab4 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %6, i32 0, i32 2
  store %struct.stat* null, %struct.stat** %stattab4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %entries = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %7, i32 0, i32 1
  store i32 0, i32* %entries, align 4
  %8 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %8, i32 0, i32 0
  %9 = load i8*, i8** %dir, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir7 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %10, i32 0, i32 0
  %11 = load i8*, i8** %dir7, align 8
  call void @free(i8* %11) #5
  %12 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir8 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %12, i32 0, i32 0
  store i8* null, i8** %dir8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end
  br label %if.end.10

if.else:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.else
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct.dirent* @readdir(%struct.__dirstream*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare i32 @cli_strbcasestr(i8*, i8*) #2

declare i8* @cli_realloc2(i8*, i64) #2

declare i32 @closedir(%struct.__dirstream*) #2

declare i8* @cli_malloc(i64) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @cl_statchkdir(%struct.cl_stat* %dbstat) #0 {
entry:
  %retval = alloca i32, align 4
  %dbstat.addr = alloca %struct.cl_stat*, align 8
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %sb = alloca %struct.stat, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %fname = alloca i8*, align 8
  store %struct.cl_stat* %dbstat, %struct.cl_stat** %dbstat.addr, align 8
  %0 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %tobool = icmp ne %struct.cl_stat* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %1, i32 0, i32 0
  %2 = load i8*, i8** %dir, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir2 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %3, i32 0, i32 0
  %4 = load i8*, i8** %dir2, align 8
  %call = call %struct.__dirstream* @opendir(i8* %4)
  store %struct.__dirstream* %call, %struct.__dirstream** %dd, align 8
  %cmp = icmp eq %struct.__dirstream* %call, null
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir4 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %5, i32 0, i32 0
  %6 = load i8*, i8** %dir4, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i8* %6)
  store i32 -115, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir6 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %7, i32 0, i32 0
  %8 = load i8*, i8** %dir6, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* %8)
  br label %while.cond

while.cond:                                       ; preds = %if.end.152, %if.end.5
  %9 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call7 = call %struct.dirent* @readdir(%struct.__dirstream* %9)
  store %struct.dirent* %call7, %struct.dirent** %dent, align 8
  %tobool8 = icmp ne %struct.dirent* %call7, null
  br i1 %tobool8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 0
  %11 = load i64, i64* %d_ino, align 8
  %tobool9 = icmp ne i64 %11, 0
  br i1 %tobool9, label %if.then.10, label %if.end.152

if.then.10:                                       ; preds = %while.body
  %12 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call11 = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.151

land.lhs.true:                                    ; preds = %if.then.10
  %13 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name13 = getelementptr inbounds %struct.dirent, %struct.dirent* %13, i32 0, i32 4
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name13, i32 0, i32 0
  %call15 = call i32 @strcmp(i8* %arraydecay14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #6
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.151

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %14 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name18 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 4
  %arraydecay19 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name18, i32 0, i32 0
  %call20 = call i32 @cli_strbcasestr(i8* %arraydecay19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.102, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %land.lhs.true.17
  %15 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name23 = getelementptr inbounds %struct.dirent, %struct.dirent* %15, i32 0, i32 4
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name23, i32 0, i32 0
  %call25 = call i32 @cli_strbcasestr(i8* %arraydecay24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.102, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.22
  %16 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name28 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 4
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name28, i32 0, i32 0
  %call30 = call i32 @cli_strbcasestr(i8* %arraydecay29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.102, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.27
  %17 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name33 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 4
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name33, i32 0, i32 0
  %call35 = call i32 @cli_strbcasestr(i8* %arraydecay34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.102, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.32
  %18 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name38 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  %arraydecay39 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name38, i32 0, i32 0
  %call40 = call i32 @cli_strbcasestr(i8* %arraydecay39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0))
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.102, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.37
  %19 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name43 = getelementptr inbounds %struct.dirent, %struct.dirent* %19, i32 0, i32 4
  %arraydecay44 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name43, i32 0, i32 0
  %call45 = call i32 @cli_strbcasestr(i8* %arraydecay44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.102, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.42
  %20 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name48 = getelementptr inbounds %struct.dirent, %struct.dirent* %20, i32 0, i32 4
  %arraydecay49 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name48, i32 0, i32 0
  %call50 = call i32 @cli_strbcasestr(i8* %arraydecay49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.102, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.47
  %21 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name53 = getelementptr inbounds %struct.dirent, %struct.dirent* %21, i32 0, i32 4
  %arraydecay54 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name53, i32 0, i32 0
  %call55 = call i32 @cli_strbcasestr(i8* %arraydecay54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.102, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.52
  %22 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name58 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i32 0, i32 4
  %arraydecay59 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name58, i32 0, i32 0
  %call60 = call i32 @cli_strbcasestr(i8* %arraydecay59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0))
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.102, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.57
  %23 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name63 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 4
  %arraydecay64 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name63, i32 0, i32 0
  %call65 = call i32 @cli_strbcasestr(i8* %arraydecay64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.102, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.62
  %24 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name68 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 4
  %arraydecay69 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name68, i32 0, i32 0
  %call70 = call i32 @cli_strbcasestr(i8* %arraydecay69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.102, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.67
  %25 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name73 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 4
  %arraydecay74 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name73, i32 0, i32 0
  %call75 = call i32 @cli_strbcasestr(i8* %arraydecay74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0))
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.102, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false.72
  %26 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name78 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 4
  %arraydecay79 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name78, i32 0, i32 0
  %call80 = call i32 @cli_strbcasestr(i8* %arraydecay79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.102, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %lor.lhs.false.77
  %27 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name83 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 4
  %arraydecay84 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name83, i32 0, i32 0
  %call85 = call i32 @cli_strbcasestr(i8* %arraydecay84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.102, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false.82
  %28 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name88 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 4
  %arraydecay89 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name88, i32 0, i32 0
  %call90 = call i32 @cli_strbcasestr(i8* %arraydecay89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0))
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.102, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false.87
  %29 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name93 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 4
  %arraydecay94 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name93, i32 0, i32 0
  %call95 = call i32 @cli_strbcasestr(i8* %arraydecay94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.102, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.92
  %30 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name98 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 4
  %arraydecay99 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name98, i32 0, i32 0
  %call100 = call i32 @cli_strbcasestr(i8* %arraydecay99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0))
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.151

if.then.102:                                      ; preds = %lor.lhs.false.97, %lor.lhs.false.92, %lor.lhs.false.87, %lor.lhs.false.82, %lor.lhs.false.77, %lor.lhs.false.72, %lor.lhs.false.67, %lor.lhs.false.62, %lor.lhs.false.57, %lor.lhs.false.52, %lor.lhs.false.47, %lor.lhs.false.42, %lor.lhs.false.37, %lor.lhs.false.32, %lor.lhs.false.27, %lor.lhs.false.22, %land.lhs.true.17
  %31 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir103 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %31, i32 0, i32 0
  %32 = load i8*, i8** %dir103, align 8
  %call104 = call i64 @strlen(i8* %32) #6
  %33 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name105 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 4
  %arraydecay106 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name105, i32 0, i32 0
  %call107 = call i64 @strlen(i8* %arraydecay106) #6
  %add = add i64 %call104, %call107
  %add108 = add i64 %add, 32
  %call109 = call i8* @cli_malloc(i64 %add108)
  store i8* %call109, i8** %fname, align 8
  %34 = load i8*, i8** %fname, align 8
  %tobool110 = icmp ne i8* %34, null
  br i1 %tobool110, label %if.end.113, label %if.then.111

if.then.111:                                      ; preds = %if.then.102
  %35 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call112 = call i32 @closedir(%struct.__dirstream* %35)
  store i32 -114, i32* %retval
  br label %return

if.end.113:                                       ; preds = %if.then.102
  %36 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name114 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 4
  %arraydecay115 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name114, i32 0, i32 0
  %call116 = call i32 @cli_strbcasestr(i8* %arraydecay115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.else

if.then.118:                                      ; preds = %if.end.113
  %37 = load i8*, i8** %fname, align 8
  %38 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir119 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %38, i32 0, i32 0
  %39 = load i8*, i8** %dir119, align 8
  %40 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name120 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 4
  %arraydecay121 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name120, i32 0, i32 0
  %41 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name122 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 4
  %arraydecay123 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name122, i32 0, i32 0
  %call124 = call i8* @strstr(i8* %arraydecay123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #6
  %tobool125 = icmp ne i8* %call124, null
  %cond = select i1 %tobool125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)
  %call126 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i8* %39, i8* %arraydecay121, i8* %cond) #5
  br label %if.end.131

if.else:                                          ; preds = %if.end.113
  %42 = load i8*, i8** %fname, align 8
  %43 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %dir127 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %43, i32 0, i32 0
  %44 = load i8*, i8** %dir127, align 8
  %45 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name128 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 4
  %arraydecay129 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name128, i32 0, i32 0
  %call130 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* %44, i8* %arraydecay129) #5
  br label %if.end.131

if.end.131:                                       ; preds = %if.else, %if.then.118
  %46 = load i8*, i8** %fname, align 8
  %call132 = call i32 @stat(i8* %46, %struct.stat* %sb) #5
  %47 = load i8*, i8** %fname, align 8
  call void @free(i8* %47) #5
  store i32 0, i32* %found, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.131
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %entries = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %49, i32 0, i32 1
  %50 = load i32, i32* %entries, align 4
  %cmp133 = icmp ult i32 %48, %50
  br i1 %cmp133, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %i, align 4
  %idxprom = zext i32 %51 to i64
  %52 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %52, i32 0, i32 2
  %53 = load %struct.stat*, %struct.stat** %stattab, align 8
  %arrayidx = getelementptr inbounds %struct.stat, %struct.stat* %53, i64 %idxprom
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %arrayidx, i32 0, i32 1
  %54 = load i64, i64* %st_ino, align 8
  %st_ino134 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 1
  %55 = load i64, i64* %st_ino134, align 8
  %cmp135 = icmp eq i64 %54, %55
  br i1 %cmp135, label %if.then.136, label %if.end.146

if.then.136:                                      ; preds = %for.body
  store i32 1, i32* %found, align 4
  %56 = load i32, i32* %i, align 4
  %idxprom137 = zext i32 %56 to i64
  %57 = load %struct.cl_stat*, %struct.cl_stat** %dbstat.addr, align 8
  %stattab138 = getelementptr inbounds %struct.cl_stat, %struct.cl_stat* %57, i32 0, i32 2
  %58 = load %struct.stat*, %struct.stat** %stattab138, align 8
  %arrayidx139 = getelementptr inbounds %struct.stat, %struct.stat* %58, i64 %idxprom137
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %arrayidx139, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %59 = load i64, i64* %tv_sec, align 8
  %st_mtim140 = getelementptr inbounds %struct.stat, %struct.stat* %sb, i32 0, i32 12
  %tv_sec141 = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim140, i32 0, i32 0
  %60 = load i64, i64* %tv_sec141, align 8
  %cmp142 = icmp ne i64 %59, %60
  br i1 %cmp142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %if.then.136
  %61 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call144 = call i32 @closedir(%struct.__dirstream* %61)
  store i32 1, i32* %retval
  br label %return

if.end.145:                                       ; preds = %if.then.136
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.146
  %62 = load i32, i32* %i, align 4
  %inc = add i32 %62, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load i32, i32* %found, align 4
  %tobool147 = icmp ne i32 %63, 0
  br i1 %tobool147, label %if.end.150, label %if.then.148

if.then.148:                                      ; preds = %for.end
  %64 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call149 = call i32 @closedir(%struct.__dirstream* %64)
  store i32 1, i32* %retval
  br label %return

if.end.150:                                       ; preds = %for.end
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %lor.lhs.false.97, %land.lhs.true, %if.then.10
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %65 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call153 = call i32 @closedir(%struct.__dirstream* %65)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.148, %if.then.143, %if.then.111, %if.then.3, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare void @cli_bm_free(%struct.cli_matcher*) #2

declare void @cli_ac_free(%struct.cli_matcher*) #2

declare void @phishing_done(%struct.cl_engine*) #2

declare i32 @cli_freelocks() #2

; Function Attrs: nounwind uwtable
define i32 @cl_build(%struct.cl_engine* %engine) #0 {
entry:
  %retval = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %root = alloca %struct.cli_matcher*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %call = call i32 @cli_addtypesigs(%struct.cl_engine* %0)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ret, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %4, i32 0, i32 3
  %5 = load i8**, i8*** %root1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = bitcast i8* %6 to %struct.cli_matcher*
  store %struct.cli_matcher* %7, %struct.cli_matcher** %root, align 8
  %tobool2 = icmp ne %struct.cli_matcher* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %for.body
  %8 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %call4 = call i32 @cli_ac_buildtrie(%struct.cli_matcher* %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %dconf = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %10, i32 0, i32 11
  %11 = load i8*, i8** %dconf, align 8
  %12 = bitcast i8* %11 to %struct.cli_dconf*
  call void @cli_dconf_print(%struct.cli_dconf* %12)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i32 @cli_addtypesigs(%struct.cl_engine*) #2

declare i32 @cli_ac_buildtrie(%struct.cli_matcher*) #2

declare void @cli_dconf_print(%struct.cli_dconf*) #2

; Function Attrs: nounwind uwtable
define %struct.cl_engine* @cl_dup(%struct.cl_engine* %engine) #0 {
entry:
  %retval = alloca %struct.cl_engine*, align 8
  %engine.addr = alloca %struct.cl_engine*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %tobool = icmp ne %struct.cl_engine* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0))
  store %struct.cl_engine* null, %struct.cl_engine** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %refcount = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 0
  %2 = load i32, i32* %refcount, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %refcount, align 4
  %3 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  store %struct.cl_engine* %3, %struct.cl_engine** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.cl_engine*, %struct.cl_engine** %retval
  ret %struct.cl_engine* %4
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cli_loaddb(%struct._IO_FILE* %fd, %struct.cl_engine** %engine, i32* %signo, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  %options.addr = alloca i32, align 4
  %buffer = alloca [8192 x i8], align 16
  %pt = alloca i8*, align 8
  %start = alloca i8*, align 8
  %line = alloca i32, align 4
  %ret = alloca i32, align 4
  %root = alloca %struct.cli_matcher*, align 8
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %line, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %1 = load i32, i32* %options.addr, align 4
  %call = call i32 @cli_initengine(%struct.cl_engine** %0, i32 %1)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %3 = load %struct.cl_engine*, %struct.cl_engine** %2, align 8
  call void @cl_free(%struct.cl_engine* %3)
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %6 = load %struct.cl_engine*, %struct.cl_engine** %5, align 8
  %7 = load i32, i32* %options.addr, align 4
  %call1 = call i32 @cli_initroots(%struct.cl_engine* %6, i32 %7)
  store i32 %call1, i32* %ret, align 4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %9 = load %struct.cl_engine*, %struct.cl_engine** %8, align 8
  call void @cl_free(%struct.cl_engine* %9)
  %10 = load i32, i32* %ret, align 4
  store i32 %10, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %12 = load %struct.cl_engine*, %struct.cl_engine** %11, align 8
  %root5 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %12, i32 0, i32 3
  %13 = load i8**, i8*** %root5, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx, align 8
  %15 = bitcast i8* %14 to %struct.cli_matcher*
  store %struct.cli_matcher* %15, %struct.cli_matcher** %root, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.then.17, %if.end.4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call6 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %16)
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %line, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %line, align 4
  %arraydecay8 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call9 = call i32 @cli_chomp(i8* %arraydecay8)
  %arraydecay10 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call11 = call i8* @strchr(i8* %arraydecay10, i32 61) #6
  store i8* %call11, i8** %pt, align 8
  %18 = load i8*, i8** %pt, align 8
  %tobool12 = icmp ne i8* %18, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %while.body
  %19 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0), i32 %19)
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.14:                                        ; preds = %while.body
  %arraydecay15 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay15, i8** %start, align 8
  %20 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %pt, align 8
  %22 = load i8, i8* %21, align 1
  %conv = sext i8 %22 to i32
  %cmp = icmp eq i32 %conv, 61
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  br label %while.cond

if.end.18:                                        ; preds = %if.end.14
  %23 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %24 = load i8*, i8** %start, align 8
  %25 = load i8*, i8** %pt, align 8
  %call19 = call i32 @cli_parse_add(%struct.cli_matcher* %23, i8* %24, i8* %25, i16 zeroext 0, i8* null, i16 zeroext 0)
  store i32 %call19, i32* %ret, align 4
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  %26 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i32 0, i32 0), i32 %26)
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.22:                                        ; preds = %if.end.18
  br label %while.cond

while.end:                                        ; preds = %if.then.21, %if.then.13, %while.cond
  %27 = load i32, i32* %line, align 4
  %tobool23 = icmp ne i32 %27, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %while.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0))
  %28 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %29 = load %struct.cl_engine*, %struct.cl_engine** %28, align 8
  call void @cl_free(%struct.cl_engine* %29)
  store i32 -116, i32* %retval
  br label %return

if.end.25:                                        ; preds = %while.end
  %30 = load i32, i32* %ret, align 4
  %tobool26 = icmp ne i32 %30, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %31 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i32 0, i32 0), i32 %31)
  %32 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %33 = load %struct.cl_engine*, %struct.cl_engine** %32, align 8
  call void @cl_free(%struct.cl_engine* %33)
  %34 = load i32, i32* %ret, align 4
  store i32 %34, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.25
  %35 = load i32*, i32** %signo.addr, align 8
  %tobool29 = icmp ne i32* %35, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %36 = load i32, i32* %line, align 4
  %37 = load i32*, i32** %signo.addr, align 8
  %38 = load i32, i32* %37, align 4
  %add = add i32 %38, %36
  store i32 %add, i32* %37, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.27, %if.then.24, %if.then.3, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i32 @cli_cvdload(%struct._IO_FILE*, %struct.cl_engine**, i32*, i16 signext, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @cli_loadmd5(%struct._IO_FILE* %fd, %struct.cl_engine** %engine, i32* %signo, i8 zeroext %mode, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  %mode.addr = alloca i8, align 1
  %options.addr = alloca i32, align 4
  %buffer = alloca [8192 x i8], align 16
  %pt = alloca i8*, align 8
  %ret = alloca i32, align 4
  %size_field = alloca i8, align 1
  %md5_field = alloca i8, align 1
  %found = alloca i8, align 1
  %line = alloca i32, align 4
  %i = alloca i32, align 4
  %new = alloca %struct.cli_md5_node*, align 8
  %bm_new = alloca %struct.cli_bm_patt*, align 8
  %md5_sect = alloca %struct.cli_matcher*, align 8
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  store i8 %mode, i8* %mode.addr, align 1
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %ret, align 4
  store i8 1, i8* %size_field, align 1
  store i8 0, i8* %md5_field, align 1
  store i32 0, i32* %line, align 4
  store %struct.cli_matcher* null, %struct.cli_matcher** %md5_sect, align 8
  %0 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %1 = load i32, i32* %options.addr, align 4
  %call = call i32 @cli_initengine(%struct.cl_engine** %0, i32 %1)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %3 = load %struct.cl_engine*, %struct.cl_engine** %2, align 8
  call void @cl_free(%struct.cl_engine* %3)
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8, i8* %mode.addr, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8 0, i8* %size_field, align 1
  store i8 1, i8* %md5_field, align 1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.133, %if.end.3
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call4 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %6)
  %tobool5 = icmp ne i8* %call4, null
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %line, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %line, align 4
  %arraydecay6 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call7 = call i32 @cli_chomp(i8* %arraydecay6)
  %call8 = call i8* @cli_calloc(i64 1, i64 32)
  %8 = bitcast i8* %call8 to %struct.cli_md5_node*
  store %struct.cli_md5_node* %8, %struct.cli_md5_node** %new, align 8
  %9 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %tobool9 = icmp ne %struct.cli_md5_node* %9, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %while.body
  store i32 -114, i32* %ret, align 4
  br label %while.end

if.end.11:                                        ; preds = %while.body
  %10 = load i8, i8* %mode.addr, align 1
  %conv12 = zext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 2
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %11 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %fp = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %11, i32 0, i32 3
  store i16 1, i16* %fp, align 2
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.11
  %arraydecay17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %12 = load i8, i8* %md5_field, align 1
  %conv18 = zext i8 %12 to i32
  %call19 = call i8* @cli_strtok(i8* %arraydecay17, i32 %conv18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call19, i8** %pt, align 8
  %tobool20 = icmp ne i8* %call19, null
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.end.16
  %13 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %14 = bitcast %struct.cli_md5_node* %13 to i8*
  call void @free(i8* %14) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.22:                                        ; preds = %if.end.16
  %15 = load i8*, i8** %pt, align 8
  %call23 = call i8* @cli_hex2str(i8* %15)
  %16 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md5 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %16, i32 0, i32 1
  store i8* %call23, i8** %md5, align 8
  %tobool24 = icmp ne i8* %call23, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %17 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.65, i32 0, i32 0), i32 %17)
  %18 = load i8*, i8** %pt, align 8
  call void @free(i8* %18) #5
  %19 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %20 = bitcast %struct.cli_md5_node* %19 to i8*
  call void @free(i8* %20) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.26:                                        ; preds = %if.end.22
  %21 = load i8*, i8** %pt, align 8
  call void @free(i8* %21) #5
  %arraydecay27 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %22 = load i8, i8* %size_field, align 1
  %conv28 = zext i8 %22 to i32
  %call29 = call i8* @cli_strtok(i8* %arraydecay27, i32 %conv28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call29, i8** %pt, align 8
  %tobool30 = icmp ne i8* %call29, null
  br i1 %tobool30, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %if.end.26
  %23 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md532 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %23, i32 0, i32 1
  %24 = load i8*, i8** %md532, align 8
  call void @free(i8* %24) #5
  %25 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %26 = bitcast %struct.cli_md5_node* %25 to i8*
  call void @free(i8* %26) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.33:                                        ; preds = %if.end.26
  %27 = load i8*, i8** %pt, align 8
  %call34 = call i32 @atoi(i8* %27) #6
  %28 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %size = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %28, i32 0, i32 2
  store i32 %call34, i32* %size, align 4
  %29 = load i8*, i8** %pt, align 8
  call void @free(i8* %29) #5
  %arraydecay35 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call36 = call i8* @cli_strtok(i8* %arraydecay35, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  %30 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %virname = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %30, i32 0, i32 0
  store i8* %call36, i8** %virname, align 8
  %tobool37 = icmp ne i8* %call36, null
  br i1 %tobool37, label %if.end.40, label %if.then.38

if.then.38:                                       ; preds = %if.end.33
  %31 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md539 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %31, i32 0, i32 1
  %32 = load i8*, i8** %md539, align 8
  call void @free(i8* %32) #5
  %33 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %34 = bitcast %struct.cli_md5_node* %33 to i8*
  call void @free(i8* %34) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.40:                                        ; preds = %if.end.33
  %35 = load i8, i8* %mode.addr, align 1
  %conv41 = zext i8 %35 to i32
  %cmp42 = icmp eq i32 %conv41, 1
  br i1 %cmp42, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %if.end.40
  %36 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %37 = load %struct.cl_engine*, %struct.cl_engine** %36, align 8
  %md5_sect45 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %37, i32 0, i32 5
  %38 = load i8*, i8** %md5_sect45, align 8
  %tobool46 = icmp ne i8* %38, null
  br i1 %tobool46, label %if.end.63, label %if.then.47

if.then.47:                                       ; preds = %if.then.44
  %call48 = call i8* @cli_calloc(i64 80, i64 1)
  %39 = bitcast i8* %call48 to %struct.cli_matcher*
  %40 = bitcast %struct.cli_matcher* %39 to i8*
  %41 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %42 = load %struct.cl_engine*, %struct.cl_engine** %41, align 8
  %md5_sect49 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %42, i32 0, i32 5
  store i8* %40, i8** %md5_sect49, align 8
  %43 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %44 = load %struct.cl_engine*, %struct.cl_engine** %43, align 8
  %md5_sect50 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %44, i32 0, i32 5
  %45 = load i8*, i8** %md5_sect50, align 8
  %tobool51 = icmp ne i8* %45, null
  br i1 %tobool51, label %if.end.55, label %if.then.52

if.then.52:                                       ; preds = %if.then.47
  %46 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %virname53 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %46, i32 0, i32 0
  %47 = load i8*, i8** %virname53, align 8
  call void @free(i8* %47) #5
  %48 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md554 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %48, i32 0, i32 1
  %49 = load i8*, i8** %md554, align 8
  call void @free(i8* %49) #5
  %50 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %51 = bitcast %struct.cli_md5_node* %50 to i8*
  call void @free(i8* %51) #5
  store i32 -114, i32* %ret, align 4
  br label %while.end

if.end.55:                                        ; preds = %if.then.47
  %52 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %53 = load %struct.cl_engine*, %struct.cl_engine** %52, align 8
  %md5_sect56 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %53, i32 0, i32 5
  %54 = load i8*, i8** %md5_sect56, align 8
  %55 = bitcast i8* %54 to %struct.cli_matcher*
  %call57 = call i32 @cli_bm_init(%struct.cli_matcher* %55)
  store i32 %call57, i32* %ret, align 4
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.55
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.66, i32 0, i32 0))
  %56 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %virname60 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %56, i32 0, i32 0
  %57 = load i8*, i8** %virname60, align 8
  call void @free(i8* %57) #5
  %58 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md561 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %58, i32 0, i32 1
  %59 = load i8*, i8** %md561, align 8
  call void @free(i8* %59) #5
  %60 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %61 = bitcast %struct.cli_md5_node* %60 to i8*
  call void @free(i8* %61) #5
  br label %while.end

if.end.62:                                        ; preds = %if.end.55
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.44
  %62 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %63 = load %struct.cl_engine*, %struct.cl_engine** %62, align 8
  %md5_sect64 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %63, i32 0, i32 5
  %64 = load i8*, i8** %md5_sect64, align 8
  %65 = bitcast i8* %64 to %struct.cli_matcher*
  store %struct.cli_matcher* %65, %struct.cli_matcher** %md5_sect, align 8
  %call65 = call i8* @cli_calloc(i64 1, i64 64)
  %66 = bitcast i8* %call65 to %struct.cli_bm_patt*
  store %struct.cli_bm_patt* %66, %struct.cli_bm_patt** %bm_new, align 8
  %67 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %tobool66 = icmp ne %struct.cli_bm_patt* %67, null
  br i1 %tobool66, label %if.end.70, label %if.then.67

if.then.67:                                       ; preds = %if.end.63
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.67, i32 0, i32 0))
  %68 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %virname68 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %68, i32 0, i32 0
  %69 = load i8*, i8** %virname68, align 8
  call void @free(i8* %69) #5
  %70 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md569 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %70, i32 0, i32 1
  %71 = load i8*, i8** %md569, align 8
  call void @free(i8* %71) #5
  %72 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %73 = bitcast %struct.cli_md5_node* %72 to i8*
  call void @free(i8* %73) #5
  store i32 -114, i32* %ret, align 4
  br label %while.end

if.end.70:                                        ; preds = %if.end.63
  %74 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md571 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %74, i32 0, i32 1
  %75 = load i8*, i8** %md571, align 8
  %76 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %pattern = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %76, i32 0, i32 0
  store i8* %75, i8** %pattern, align 8
  %77 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %length = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %77, i32 0, i32 2
  store i16 16, i16* %length, align 2
  %78 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %virname72 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %78, i32 0, i32 0
  %79 = load i8*, i8** %virname72, align 8
  %80 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %virname73 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %80, i32 0, i32 4
  store i8* %79, i8** %virname73, align 8
  store i8 0, i8* %found, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.70
  %81 = load i32, i32* %i, align 4
  %82 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff_len = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %82, i32 0, i32 5
  %83 = load i32, i32* %soff_len, align 4
  %cmp74 = icmp ult i32 %81, %83
  br i1 %cmp74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %84 = load i32, i32* %i, align 4
  %idxprom = zext i32 %84 to i64
  %85 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %85, i32 0, i32 4
  %86 = load i32*, i32** %soff, align 8
  %arrayidx = getelementptr inbounds i32, i32* %86, i64 %idxprom
  %87 = load i32, i32* %arrayidx, align 4
  %88 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %size76 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %88, i32 0, i32 2
  %89 = load i32, i32* %size76, align 4
  %cmp77 = icmp eq i32 %87, %89
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body
  store i8 1, i8* %found, align 1
  br label %for.end

if.end.80:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %90 = load i32, i32* %i, align 4
  %inc81 = add i32 %90, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.79, %for.cond
  %91 = load i8, i8* %found, align 1
  %tobool82 = icmp ne i8 %91, 0
  br i1 %tobool82, label %if.end.102, label %if.then.83

if.then.83:                                       ; preds = %for.end
  %92 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff_len84 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %92, i32 0, i32 5
  %93 = load i32, i32* %soff_len84, align 4
  %inc85 = add i32 %93, 1
  store i32 %inc85, i32* %soff_len84, align 4
  %94 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff86 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %94, i32 0, i32 4
  %95 = load i32*, i32** %soff86, align 8
  %96 = bitcast i32* %95 to i8*
  %97 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff_len87 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %97, i32 0, i32 5
  %98 = load i32, i32* %soff_len87, align 4
  %conv88 = zext i32 %98 to i64
  %mul = mul i64 %conv88, 4
  %call89 = call i8* @cli_realloc2(i8* %96, i64 %mul)
  %99 = bitcast i8* %call89 to i32*
  %100 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff90 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %100, i32 0, i32 4
  store i32* %99, i32** %soff90, align 8
  %101 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff91 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %101, i32 0, i32 4
  %102 = load i32*, i32** %soff91, align 8
  %tobool92 = icmp ne i32* %102, null
  br i1 %tobool92, label %if.end.96, label %if.then.93

if.then.93:                                       ; preds = %if.then.83
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.68, i32 0, i32 0))
  %103 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %pattern94 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %103, i32 0, i32 0
  %104 = load i8*, i8** %pattern94, align 8
  call void @free(i8* %104) #5
  %105 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %virname95 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %105, i32 0, i32 4
  %106 = load i8*, i8** %virname95, align 8
  call void @free(i8* %106) #5
  %107 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %108 = bitcast %struct.cli_bm_patt* %107 to i8*
  call void @free(i8* %108) #5
  %109 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %110 = bitcast %struct.cli_md5_node* %109 to i8*
  call void @free(i8* %110) #5
  store i32 -114, i32* %ret, align 4
  br label %while.end

if.end.96:                                        ; preds = %if.then.83
  %111 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %size97 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %111, i32 0, i32 2
  %112 = load i32, i32* %size97, align 4
  %113 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff_len98 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %113, i32 0, i32 5
  %114 = load i32, i32* %soff_len98, align 4
  %sub = sub i32 %114, 1
  %idxprom99 = zext i32 %sub to i64
  %115 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff100 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %115, i32 0, i32 4
  %116 = load i32*, i32** %soff100, align 8
  %arrayidx101 = getelementptr inbounds i32, i32* %116, i64 %idxprom99
  store i32 %112, i32* %arrayidx101, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.96, %for.end
  %117 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %118 = bitcast %struct.cli_md5_node* %117 to i8*
  call void @free(i8* %118) #5
  %119 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %120 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %call103 = call i32 @cli_bm_addpatt(%struct.cli_matcher* %119, %struct.cli_bm_patt* %120)
  store i32 %call103, i32* %ret, align 4
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.end.102
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i32 0, i32 0))
  %121 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %pattern106 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %121, i32 0, i32 0
  %122 = load i8*, i8** %pattern106, align 8
  call void @free(i8* %122) #5
  %123 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %virname107 = getelementptr inbounds %struct.cli_bm_patt, %struct.cli_bm_patt* %123, i32 0, i32 4
  %124 = load i8*, i8** %virname107, align 8
  call void @free(i8* %124) #5
  %125 = load %struct.cli_bm_patt*, %struct.cli_bm_patt** %bm_new, align 8
  %126 = bitcast %struct.cli_bm_patt* %125 to i8*
  call void @free(i8* %126) #5
  br label %while.end

if.end.108:                                       ; preds = %if.end.102
  br label %if.end.133

if.else:                                          ; preds = %if.end.40
  %127 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %128 = load %struct.cl_engine*, %struct.cl_engine** %127, align 8
  %md5_hlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %128, i32 0, i32 4
  %129 = load i8**, i8*** %md5_hlist, align 8
  %tobool109 = icmp ne i8** %129, null
  br i1 %tobool109, label %if.end.119, label %if.then.110

if.then.110:                                      ; preds = %if.else
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i32 0, i32 0))
  %call111 = call i8* @cli_calloc(i64 256, i64 8)
  %130 = bitcast i8* %call111 to i8**
  %131 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %132 = load %struct.cl_engine*, %struct.cl_engine** %131, align 8
  %md5_hlist112 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %132, i32 0, i32 4
  store i8** %130, i8*** %md5_hlist112, align 8
  %133 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %134 = load %struct.cl_engine*, %struct.cl_engine** %133, align 8
  %md5_hlist113 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %134, i32 0, i32 4
  %135 = load i8**, i8*** %md5_hlist113, align 8
  %tobool114 = icmp ne i8** %135, null
  br i1 %tobool114, label %if.end.118, label %if.then.115

if.then.115:                                      ; preds = %if.then.110
  %136 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %virname116 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %136, i32 0, i32 0
  %137 = load i8*, i8** %virname116, align 8
  call void @free(i8* %137) #5
  %138 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md5117 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %138, i32 0, i32 1
  %139 = load i8*, i8** %md5117, align 8
  call void @free(i8* %139) #5
  %140 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %141 = bitcast %struct.cli_md5_node* %140 to i8*
  call void @free(i8* %141) #5
  store i32 -114, i32* %ret, align 4
  br label %while.end

if.end.118:                                       ; preds = %if.then.110
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.else
  %142 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md5120 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %142, i32 0, i32 1
  %143 = load i8*, i8** %md5120, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %143, i64 0
  %144 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %144 to i32
  %and = and i32 %conv122, 255
  %idxprom123 = sext i32 %and to i64
  %145 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %146 = load %struct.cl_engine*, %struct.cl_engine** %145, align 8
  %md5_hlist124 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %146, i32 0, i32 4
  %147 = load i8**, i8*** %md5_hlist124, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %147, i64 %idxprom123
  %148 = load i8*, i8** %arrayidx125, align 8
  %149 = bitcast i8* %148 to %struct.cli_md5_node*
  %150 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %next = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %150, i32 0, i32 4
  store %struct.cli_md5_node* %149, %struct.cli_md5_node** %next, align 8
  %151 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %152 = bitcast %struct.cli_md5_node* %151 to i8*
  %153 = load %struct.cli_md5_node*, %struct.cli_md5_node** %new, align 8
  %md5126 = getelementptr inbounds %struct.cli_md5_node, %struct.cli_md5_node* %153, i32 0, i32 1
  %154 = load i8*, i8** %md5126, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %154, i64 0
  %155 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %155 to i32
  %and129 = and i32 %conv128, 255
  %idxprom130 = sext i32 %and129 to i64
  %156 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %157 = load %struct.cl_engine*, %struct.cl_engine** %156, align 8
  %md5_hlist131 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %157, i32 0, i32 4
  %158 = load i8**, i8*** %md5_hlist131, align 8
  %arrayidx132 = getelementptr inbounds i8*, i8** %158, i64 %idxprom130
  store i8* %152, i8** %arrayidx132, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.119, %if.end.108
  br label %while.cond

while.end:                                        ; preds = %if.then.115, %if.then.105, %if.then.93, %if.then.67, %if.then.59, %if.then.52, %if.then.38, %if.then.31, %if.then.25, %if.then.21, %if.then.10, %while.cond
  %159 = load i32, i32* %line, align 4
  %tobool134 = icmp ne i32 %159, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %while.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.71, i32 0, i32 0))
  %160 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %161 = load %struct.cl_engine*, %struct.cl_engine** %160, align 8
  call void @cl_free(%struct.cl_engine* %161)
  store i32 -116, i32* %retval
  br label %return

if.end.136:                                       ; preds = %while.end
  %162 = load i32, i32* %ret, align 4
  %tobool137 = icmp ne i32 %162, 0
  br i1 %tobool137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.end.136
  %163 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.72, i32 0, i32 0), i32 %163)
  %164 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %165 = load %struct.cl_engine*, %struct.cl_engine** %164, align 8
  call void @cl_free(%struct.cl_engine* %165)
  %166 = load i32, i32* %ret, align 4
  store i32 %166, i32* %retval
  br label %return

if.end.139:                                       ; preds = %if.end.136
  %167 = load i32*, i32** %signo.addr, align 8
  %tobool140 = icmp ne i32* %167, null
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.139
  %168 = load i32, i32* %line, align 4
  %169 = load i32*, i32** %signo.addr, align 8
  %170 = load i32, i32* %169, align 4
  %add = add i32 %170, %168
  store i32 %add, i32* %169, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %if.end.139
  %171 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %tobool143 = icmp ne %struct.cli_matcher* %171, null
  br i1 %tobool143, label %if.then.144, label %if.end.148

if.then.144:                                      ; preds = %if.end.142
  %172 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff145 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %172, i32 0, i32 4
  %173 = load i32*, i32** %soff145, align 8
  %174 = bitcast i32* %173 to i8*
  %175 = load %struct.cli_matcher*, %struct.cli_matcher** %md5_sect, align 8
  %soff_len146 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %175, i32 0, i32 5
  %176 = load i32, i32* %soff_len146, align 4
  %conv147 = zext i32 %176 to i64
  call void @qsort(i8* %174, i64 %conv147, i64 4, i32 (i8*, i8*)* @scomp)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.144, %if.end.142
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.148, %if.then.138, %if.then.135, %if.then
  %177 = load i32, i32* %retval
  ret i32 %177
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_loadndb(%struct._IO_FILE* %fd, %struct.cl_engine** %engine, i32* %signo, i16 zeroext %sdb, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  %sdb.addr = alloca i16, align 2
  %options.addr = alloca i32, align 4
  %tokens = alloca [6 x i8*], align 16
  %buffer = alloca [8192 x i8], align 16
  %sig = alloca i8*, align 8
  %virname = alloca i8*, align 8
  %offset = alloca i8*, align 8
  %pt = alloca i8*, align 8
  %root = alloca %struct.cli_matcher*, align 8
  %line = alloca i32, align 4
  %sigs = alloca i32, align 4
  %ret = alloca i32, align 4
  %target = alloca i16, align 2
  %phish = alloca i32, align 4
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  store i16 %sdb, i16* %sdb.addr, align 2
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %line, align 4
  store i32 0, i32* %sigs, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* %options.addr, align 4
  %and = and i32 %0, 2
  store i32 %and, i32* %phish, align 4
  %1 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %2 = load i32, i32* %options.addr, align 4
  %call = call i32 @cli_initengine(%struct.cl_engine** %1, i32 %2)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %4 = load %struct.cl_engine*, %struct.cl_engine** %3, align 8
  call void @cl_free(%struct.cl_engine* %4)
  %5 = load i32, i32* %ret, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %7 = load %struct.cl_engine*, %struct.cl_engine** %6, align 8
  %8 = load i32, i32* %options.addr, align 4
  %call1 = call i32 @cli_initroots(%struct.cl_engine* %7, i32 %8)
  store i32 %call1, i32* %ret, align 4
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %10 = load %struct.cl_engine*, %struct.cl_engine** %9, align 8
  call void @cl_free(%struct.cl_engine* %10)
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.106, %if.then.85, %if.then.63, %if.then.44, %if.then.20, %if.then.10, %if.end.4
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call5 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %12)
  %tobool6 = icmp ne i8* %call5, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %line, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %line, align 4
  %arraydecay7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call8 = call i32 @strncmp(i8* %arraydecay7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i64 20) #6
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %while.body
  br label %while.cond

if.end.11:                                        ; preds = %while.body
  %14 = load i32, i32* %phish, align 4
  %tobool12 = icmp ne i32 %14, 0
  br i1 %tobool12, label %if.end.22, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  %arraydecay14 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call15 = call i32 @strncmp(i8* %arraydecay14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i32 0, i32 0), i64 13) #6
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false, label %if.then.20

lor.lhs.false:                                    ; preds = %if.then.13
  %arraydecay17 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call18 = call i32 @strncmp(i8* %arraydecay17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i32 0, i32 0), i64 14) #6
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %lor.lhs.false, %if.then.13
  br label %while.cond

if.end.21:                                        ; preds = %lor.lhs.false
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.11
  %15 = load i32, i32* %sigs, align 4
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, i32* %sigs, align 4
  %arraydecay24 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call25 = call i32 @cli_chomp(i8* %arraydecay24)
  %arraydecay26 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [6 x i8*], [6 x i8*]* %tokens, i32 0, i32 0
  call void @cli_strtokenize(i8* %arraydecay26, i8 signext 58, i64 6, i8** %arraydecay27)
  %arrayidx = getelementptr inbounds [6 x i8*], [6 x i8*]* %tokens, i32 0, i64 0
  %16 = load i8*, i8** %arrayidx, align 8
  store i8* %16, i8** %virname, align 8
  %tobool28 = icmp ne i8* %16, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.22
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.30:                                        ; preds = %if.end.22
  %arrayidx31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %tokens, i32 0, i64 4
  %17 = load i8*, i8** %arrayidx31, align 8
  store i8* %17, i8** %pt, align 8
  %tobool32 = icmp ne i8* %17, null
  br i1 %tobool32, label %if.then.33, label %if.end.67

if.then.33:                                       ; preds = %if.end.30
  %18 = load i8*, i8** %pt, align 8
  %19 = load i8, i8* %18, align 1
  %conv = sext i8 %19 to i32
  %idxprom = sext i32 %conv to i64
  %call34 = call i16** @__ctype_b_loc() #7
  %20 = load i16*, i16** %call34, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %20, i64 %idxprom
  %21 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %21 to i32
  %and37 = and i32 %conv36, 2048
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.33
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.40:                                        ; preds = %if.then.33
  %22 = load i8*, i8** %pt, align 8
  %call41 = call i32 @atoi(i8* %22) #6
  %call42 = call i32 @cl_retflevel()
  %cmp = icmp ugt i32 %call41, %call42
  br i1 %cmp, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.40
  %23 = load i8*, i8** %virname, align 8
  %24 = load i8*, i8** %pt, align 8
  %call45 = call i32 @atoi(i8* %24) #6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.76, i32 0, i32 0), i8* %23, i32 %call45)
  %25 = load i32, i32* %sigs, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %sigs, align 4
  br label %while.cond

if.end.46:                                        ; preds = %if.end.40
  %arrayidx47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %tokens, i32 0, i64 5
  %26 = load i8*, i8** %arrayidx47, align 8
  store i8* %26, i8** %pt, align 8
  %tobool48 = icmp ne i8* %26, null
  br i1 %tobool48, label %if.then.49, label %if.end.66

if.then.49:                                       ; preds = %if.end.46
  %27 = load i8*, i8** %pt, align 8
  %28 = load i8, i8* %27, align 1
  %conv50 = sext i8 %28 to i32
  %idxprom51 = sext i32 %conv50 to i64
  %call52 = call i16** @__ctype_b_loc() #7
  %29 = load i16*, i16** %call52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %29, i64 %idxprom51
  %30 = load i16, i16* %arrayidx53, align 2
  %conv54 = zext i16 %30 to i32
  %and55 = and i32 %conv54, 2048
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.end.58, label %if.then.57

if.then.57:                                       ; preds = %if.then.49
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.58:                                        ; preds = %if.then.49
  %31 = load i8*, i8** %pt, align 8
  %call59 = call i32 @atoi(i8* %31) #6
  %call60 = call i32 @cl_retflevel()
  %cmp61 = icmp ult i32 %call59, %call60
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.58
  %32 = load i32, i32* %sigs, align 4
  %dec64 = add nsw i32 %32, -1
  store i32 %dec64, i32* %sigs, align 4
  br label %while.cond

if.end.65:                                        ; preds = %if.end.58
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.46
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.30
  %arrayidx68 = getelementptr inbounds [6 x i8*], [6 x i8*]* %tokens, i32 0, i64 1
  %33 = load i8*, i8** %arrayidx68, align 8
  store i8* %33, i8** %pt, align 8
  %tobool69 = icmp ne i8* %33, null
  br i1 %tobool69, label %lor.lhs.false.70, label %if.then.78

lor.lhs.false.70:                                 ; preds = %if.end.67
  %34 = load i8*, i8** %pt, align 8
  %35 = load i8, i8* %34, align 1
  %conv71 = sext i8 %35 to i32
  %idxprom72 = sext i32 %conv71 to i64
  %call73 = call i16** @__ctype_b_loc() #7
  %36 = load i16*, i16** %call73, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %36, i64 %idxprom72
  %37 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %37 to i32
  %and76 = and i32 %conv75, 2048
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.end.79, label %if.then.78

if.then.78:                                       ; preds = %lor.lhs.false.70, %if.end.67
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.79:                                        ; preds = %lor.lhs.false.70
  %38 = load i8*, i8** %pt, align 8
  %call80 = call i32 @atoi(i8* %38) #6
  %conv81 = trunc i32 %call80 to i16
  store i16 %conv81, i16* %target, align 2
  %39 = load i16, i16* %target, align 2
  %conv82 = zext i16 %39 to i32
  %cmp83 = icmp sge i32 %conv82, 7
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.79
  %40 = load i8*, i8** %virname, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.77, i32 0, i32 0), i8* %40)
  %41 = load i32, i32* %sigs, align 4
  %dec86 = add nsw i32 %41, -1
  store i32 %dec86, i32* %sigs, align 4
  br label %while.cond

if.end.87:                                        ; preds = %if.end.79
  %42 = load i16, i16* %target, align 2
  %idxprom88 = zext i16 %42 to i64
  %43 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %44 = load %struct.cl_engine*, %struct.cl_engine** %43, align 8
  %root89 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %44, i32 0, i32 3
  %45 = load i8**, i8*** %root89, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %45, i64 %idxprom88
  %46 = load i8*, i8** %arrayidx90, align 8
  %47 = bitcast i8* %46 to %struct.cli_matcher*
  store %struct.cli_matcher* %47, %struct.cli_matcher** %root, align 8
  %arrayidx91 = getelementptr inbounds [6 x i8*], [6 x i8*]* %tokens, i32 0, i64 2
  %48 = load i8*, i8** %arrayidx91, align 8
  store i8* %48, i8** %offset, align 8
  %tobool92 = icmp ne i8* %48, null
  br i1 %tobool92, label %if.else, label %if.then.93

if.then.93:                                       ; preds = %if.end.87
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.else:                                          ; preds = %if.end.87
  %49 = load i8*, i8** %offset, align 8
  %call94 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.end.97, label %if.then.96

if.then.96:                                       ; preds = %if.else
  store i8* null, i8** %offset, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.else
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97
  %arrayidx99 = getelementptr inbounds [6 x i8*], [6 x i8*]* %tokens, i32 0, i64 3
  %50 = load i8*, i8** %arrayidx99, align 8
  store i8* %50, i8** %sig, align 8
  %tobool100 = icmp ne i8* %50, null
  br i1 %tobool100, label %if.end.102, label %if.then.101

if.then.101:                                      ; preds = %if.end.98
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.102:                                       ; preds = %if.end.98
  %51 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %52 = load i8*, i8** %virname, align 8
  %53 = load i8*, i8** %sig, align 8
  %54 = load i8*, i8** %offset, align 8
  %55 = load i16, i16* %target, align 2
  %call103 = call i32 @cli_parse_add(%struct.cli_matcher* %51, i8* %52, i8* %53, i16 zeroext 0, i8* %54, i16 zeroext %55)
  store i32 %call103, i32* %ret, align 4
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.102
  %56 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i32 0, i32 0), i32 %56)
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.106:                                       ; preds = %if.end.102
  br label %while.cond

while.end:                                        ; preds = %if.then.105, %if.then.101, %if.then.93, %if.then.78, %if.then.57, %if.then.39, %if.then.29, %while.cond
  %57 = load i32, i32* %line, align 4
  %tobool107 = icmp ne i32 %57, 0
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %while.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0))
  %58 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %59 = load %struct.cl_engine*, %struct.cl_engine** %58, align 8
  call void @cl_free(%struct.cl_engine* %59)
  store i32 -116, i32* %retval
  br label %return

if.end.109:                                       ; preds = %while.end
  %60 = load i32, i32* %ret, align 4
  %tobool110 = icmp ne i32 %60, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.109
  %61 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i32 0, i32 0), i32 %61)
  %62 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %63 = load %struct.cl_engine*, %struct.cl_engine** %62, align 8
  call void @cl_free(%struct.cl_engine* %63)
  %64 = load i32, i32* %ret, align 4
  store i32 %64, i32* %retval
  br label %return

if.end.112:                                       ; preds = %if.end.109
  %65 = load i32*, i32** %signo.addr, align 8
  %tobool113 = icmp ne i32* %65, null
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.end.112
  %66 = load i32, i32* %sigs, align 4
  %67 = load i32*, i32** %signo.addr, align 8
  %68 = load i32, i32* %67, align 4
  %add = add i32 %68, %66
  store i32 %add, i32* %67, align 4
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.end.112
  %69 = load i16, i16* %sdb.addr, align 2
  %conv116 = zext i16 %69 to i32
  %tobool117 = icmp ne i32 %conv116, 0
  br i1 %tobool117, label %land.lhs.true, label %if.end.124

land.lhs.true:                                    ; preds = %if.end.115
  %70 = load i32, i32* %sigs, align 4
  %tobool118 = icmp ne i32 %70, 0
  br i1 %tobool118, label %land.lhs.true.119, label %if.end.124

land.lhs.true.119:                                ; preds = %land.lhs.true
  %71 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %72 = load %struct.cl_engine*, %struct.cl_engine** %71, align 8
  %sdb120 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %72, i32 0, i32 1
  %73 = load i16, i16* %sdb120, align 2
  %tobool121 = icmp ne i16 %73, 0
  br i1 %tobool121, label %if.end.124, label %if.then.122

if.then.122:                                      ; preds = %land.lhs.true.119
  %74 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %75 = load %struct.cl_engine*, %struct.cl_engine** %74, align 8
  %sdb123 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %75, i32 0, i32 1
  store i16 1, i16* %sdb123, align 2
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i32 0, i32 0))
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %land.lhs.true.119, %land.lhs.true, %if.end.115
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.124, %if.then.111, %if.then.108, %if.then.3, %if.then
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_loadmd(%struct._IO_FILE* %fd, %struct.cl_engine** %engine, i32* %signo, i32 %type, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  %options.addr = alloca i32, align 4
  %buffer = alloca [8192 x i8], align 16
  %pt = alloca i8*, align 8
  %line = alloca i32, align 4
  %comments = alloca i32, align 4
  %ret = alloca i32, align 4
  %crc32 = alloca i32, align 4
  %new = alloca %struct.cli_meta_node*, align 8
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %line, align 4
  store i32 0, i32* %comments, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %1 = load i32, i32* %options.addr, align 4
  %call = call i32 @cli_initengine(%struct.cl_engine** %0, i32 %1)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %3 = load %struct.cl_engine*, %struct.cl_engine** %2, align 8
  call void @cl_free(%struct.cl_engine* %3)
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.141, %if.then.4, %if.end
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %call1 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %5)
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %line, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %line, align 4
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 35
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %while.body
  %8 = load i32, i32* %comments, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, i32* %comments, align 4
  br label %while.cond

if.end.6:                                         ; preds = %while.body
  %arraydecay7 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call8 = call i32 @cli_chomp(i8* %arraydecay7)
  %call9 = call i8* @cli_calloc(i64 1, i64 56)
  %9 = bitcast i8* %call9 to %struct.cli_meta_node*
  store %struct.cli_meta_node* %9, %struct.cli_meta_node** %new, align 8
  %10 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %tobool10 = icmp ne %struct.cli_meta_node* %10, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  store i32 -114, i32* %ret, align 4
  br label %while.end

if.end.12:                                        ; preds = %if.end.6
  %arraydecay13 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call14 = call i8* @cli_strtok(i8* %arraydecay13, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  %11 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %virname = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %11, i32 0, i32 8
  store i8* %call14, i8** %virname, align 8
  %tobool15 = icmp ne i8* %call14, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.12
  %12 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %13 = bitcast %struct.cli_meta_node* %12 to i8*
  call void @free(i8* %13) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.17:                                        ; preds = %if.end.12
  %arraydecay18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call19 = call i8* @cli_strtok(i8* %arraydecay18, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call19, i8** %pt, align 8
  %tobool20 = icmp ne i8* %call19, null
  br i1 %tobool20, label %if.else, label %if.then.21

if.then.21:                                       ; preds = %if.end.17
  %14 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %virname22 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %14, i32 0, i32 8
  %15 = load i8*, i8** %virname22, align 8
  call void @free(i8* %15) #5
  %16 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %17 = bitcast %struct.cli_meta_node* %16 to i8*
  call void @free(i8* %17) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.else:                                          ; preds = %if.end.17
  %18 = load i8*, i8** %pt, align 8
  %call23 = call i32 @atoi(i8* %18) #6
  %19 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %encrypted = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %19, i32 0, i32 5
  store i32 %call23, i32* %encrypted, align 4
  %20 = load i8*, i8** %pt, align 8
  call void @free(i8* %20) #5
  br label %if.end.24

if.end.24:                                        ; preds = %if.else
  %arraydecay25 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call26 = call i8* @cli_strtok(i8* %arraydecay25, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  %21 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %21, i32 0, i32 7
  store i8* %call26, i8** %filename, align 8
  %tobool27 = icmp ne i8* %call26, null
  br i1 %tobool27, label %if.else.30, label %if.then.28

if.then.28:                                       ; preds = %if.end.24
  %22 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %virname29 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %22, i32 0, i32 8
  %23 = load i8*, i8** %virname29, align 8
  call void @free(i8* %23) #5
  %24 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %25 = bitcast %struct.cli_meta_node* %24 to i8*
  call void @free(i8* %25) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.else.30:                                       ; preds = %if.end.24
  %26 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename31 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %26, i32 0, i32 7
  %27 = load i8*, i8** %filename31, align 8
  %call32 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %if.else.30
  %28 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename35 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %28, i32 0, i32 7
  %29 = load i8*, i8** %filename35, align 8
  call void @free(i8* %29) #5
  %30 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename36 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %30, i32 0, i32 7
  store i8* null, i8** %filename36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.else.30
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %arraydecay39 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call40 = call i8* @cli_strtok(i8* %arraydecay39, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call40, i8** %pt, align 8
  %tobool41 = icmp ne i8* %call40, null
  br i1 %tobool41, label %if.else.45, label %if.then.42

if.then.42:                                       ; preds = %if.end.38
  %31 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename43 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %31, i32 0, i32 7
  %32 = load i8*, i8** %filename43, align 8
  call void @free(i8* %32) #5
  %33 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %virname44 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %33, i32 0, i32 8
  %34 = load i8*, i8** %virname44, align 8
  call void @free(i8* %34) #5
  %35 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %36 = bitcast %struct.cli_meta_node* %35 to i8*
  call void @free(i8* %36) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.else.45:                                       ; preds = %if.end.38
  %37 = load i8*, i8** %pt, align 8
  %call46 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.else.49, label %if.then.48

if.then.48:                                       ; preds = %if.else.45
  %38 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %size = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %38, i32 0, i32 1
  store i32 -1, i32* %size, align 4
  br label %if.end.52

if.else.49:                                       ; preds = %if.else.45
  %39 = load i8*, i8** %pt, align 8
  %call50 = call i32 @atoi(i8* %39) #6
  %40 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %size51 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %40, i32 0, i32 1
  store i32 %call50, i32* %size51, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  %41 = load i8*, i8** %pt, align 8
  call void @free(i8* %41) #5
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  %arraydecay54 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call55 = call i8* @cli_strtok(i8* %arraydecay54, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call55, i8** %pt, align 8
  %tobool56 = icmp ne i8* %call55, null
  br i1 %tobool56, label %if.else.60, label %if.then.57

if.then.57:                                       ; preds = %if.end.53
  %42 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename58 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %42, i32 0, i32 7
  %43 = load i8*, i8** %filename58, align 8
  call void @free(i8* %43) #5
  %44 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %virname59 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %44, i32 0, i32 8
  %45 = load i8*, i8** %virname59, align 8
  call void @free(i8* %45) #5
  %46 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %47 = bitcast %struct.cli_meta_node* %46 to i8*
  call void @free(i8* %47) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.else.60:                                       ; preds = %if.end.53
  %48 = load i8*, i8** %pt, align 8
  %call61 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.else.64, label %if.then.63

if.then.63:                                       ; preds = %if.else.60
  %49 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %csize = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %49, i32 0, i32 0
  store i32 -1, i32* %csize, align 4
  br label %if.end.67

if.else.64:                                       ; preds = %if.else.60
  %50 = load i8*, i8** %pt, align 8
  %call65 = call i32 @atoi(i8* %50) #6
  %51 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %csize66 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %51, i32 0, i32 0
  store i32 %call65, i32* %csize66, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  %52 = load i8*, i8** %pt, align 8
  call void @free(i8* %52) #5
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67
  %arraydecay69 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call70 = call i8* @cli_strtok(i8* %arraydecay69, i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call70, i8** %pt, align 8
  %tobool71 = icmp ne i8* %call70, null
  br i1 %tobool71, label %if.else.75, label %if.then.72

if.then.72:                                       ; preds = %if.end.68
  %53 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename73 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %53, i32 0, i32 7
  %54 = load i8*, i8** %filename73, align 8
  call void @free(i8* %54) #5
  %55 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %virname74 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %55, i32 0, i32 8
  %56 = load i8*, i8** %virname74, align 8
  call void @free(i8* %56) #5
  %57 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %58 = bitcast %struct.cli_meta_node* %57 to i8*
  call void @free(i8* %58) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.else.75:                                       ; preds = %if.end.68
  %59 = load i8*, i8** %pt, align 8
  %call76 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.else.80, label %if.then.78

if.then.78:                                       ; preds = %if.else.75
  %60 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %crc3279 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %60, i32 0, i32 3
  store i32 0, i32* %crc3279, align 4
  br label %if.end.87

if.else.80:                                       ; preds = %if.else.75
  %61 = load i8*, i8** %pt, align 8
  %call81 = call i32 @cli_hex2num(i8* %61)
  store i32 %call81, i32* %crc32, align 4
  %62 = load i32, i32* %crc32, align 4
  %cmp82 = icmp eq i32 %62, -1
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else.80
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.end.85:                                        ; preds = %if.else.80
  %63 = load i32, i32* %crc32, align 4
  %64 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %crc3286 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %64, i32 0, i32 3
  store i32 %63, i32* %crc3286, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.85, %if.then.78
  %65 = load i8*, i8** %pt, align 8
  call void @free(i8* %65) #5
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87
  %arraydecay89 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call90 = call i8* @cli_strtok(i8* %arraydecay89, i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call90, i8** %pt, align 8
  %tobool91 = icmp ne i8* %call90, null
  br i1 %tobool91, label %if.else.95, label %if.then.92

if.then.92:                                       ; preds = %if.end.88
  %66 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename93 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %66, i32 0, i32 7
  %67 = load i8*, i8** %filename93, align 8
  call void @free(i8* %67) #5
  %68 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %virname94 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %68, i32 0, i32 8
  %69 = load i8*, i8** %virname94, align 8
  call void @free(i8* %69) #5
  %70 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %71 = bitcast %struct.cli_meta_node* %70 to i8*
  call void @free(i8* %71) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.else.95:                                       ; preds = %if.end.88
  %72 = load i8*, i8** %pt, align 8
  %call96 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.else.99, label %if.then.98

if.then.98:                                       ; preds = %if.else.95
  %73 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %method = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %73, i32 0, i32 2
  store i32 -1, i32* %method, align 4
  br label %if.end.102

if.else.99:                                       ; preds = %if.else.95
  %74 = load i8*, i8** %pt, align 8
  %call100 = call i32 @atoi(i8* %74) #6
  %75 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %method101 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %75, i32 0, i32 2
  store i32 %call100, i32* %method101, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  %76 = load i8*, i8** %pt, align 8
  call void @free(i8* %76) #5
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102
  %arraydecay104 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call105 = call i8* @cli_strtok(i8* %arraydecay104, i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call105, i8** %pt, align 8
  %tobool106 = icmp ne i8* %call105, null
  br i1 %tobool106, label %if.else.110, label %if.then.107

if.then.107:                                      ; preds = %if.end.103
  %77 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename108 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %77, i32 0, i32 7
  %78 = load i8*, i8** %filename108, align 8
  call void @free(i8* %78) #5
  %79 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %virname109 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %79, i32 0, i32 8
  %80 = load i8*, i8** %virname109, align 8
  call void @free(i8* %80) #5
  %81 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %82 = bitcast %struct.cli_meta_node* %81 to i8*
  call void @free(i8* %82) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.else.110:                                      ; preds = %if.end.103
  %83 = load i8*, i8** %pt, align 8
  %call111 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.else.114, label %if.then.113

if.then.113:                                      ; preds = %if.else.110
  %84 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %fileno = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %84, i32 0, i32 4
  store i32 0, i32* %fileno, align 4
  br label %if.end.117

if.else.114:                                      ; preds = %if.else.110
  %85 = load i8*, i8** %pt, align 8
  %call115 = call i32 @atoi(i8* %85) #6
  %86 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %fileno116 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %86, i32 0, i32 4
  store i32 %call115, i32* %fileno116, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  %87 = load i8*, i8** %pt, align 8
  call void @free(i8* %87) #5
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117
  %arraydecay119 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %call120 = call i8* @cli_strtok(i8* %arraydecay119, i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i32 0, i32 0))
  store i8* %call120, i8** %pt, align 8
  %tobool121 = icmp ne i8* %call120, null
  br i1 %tobool121, label %if.else.125, label %if.then.122

if.then.122:                                      ; preds = %if.end.118
  %88 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %filename123 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %88, i32 0, i32 7
  %89 = load i8*, i8** %filename123, align 8
  call void @free(i8* %89) #5
  %90 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %virname124 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %90, i32 0, i32 8
  %91 = load i8*, i8** %virname124, align 8
  call void @free(i8* %91) #5
  %92 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %93 = bitcast %struct.cli_meta_node* %92 to i8*
  call void @free(i8* %93) #5
  store i32 -116, i32* %ret, align 4
  br label %while.end

if.else.125:                                      ; preds = %if.end.118
  %94 = load i8*, i8** %pt, align 8
  %call126 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #6
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.else.129, label %if.then.128

if.then.128:                                      ; preds = %if.else.125
  %95 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %maxdepth = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %95, i32 0, i32 6
  store i32 0, i32* %maxdepth, align 4
  br label %if.end.132

if.else.129:                                      ; preds = %if.else.125
  %96 = load i8*, i8** %pt, align 8
  %call130 = call i32 @atoi(i8* %96) #6
  %97 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %maxdepth131 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %97, i32 0, i32 6
  store i32 %call130, i32* %maxdepth131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.129, %if.then.128
  %98 = load i8*, i8** %pt, align 8
  call void @free(i8* %98) #5
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132
  %99 = load i32, i32* %type.addr, align 4
  %cmp134 = icmp eq i32 %99, 1
  br i1 %cmp134, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %if.end.133
  %100 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %101 = load %struct.cl_engine*, %struct.cl_engine** %100, align 8
  %zip_mlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %101, i32 0, i32 6
  %102 = load i8*, i8** %zip_mlist, align 8
  %103 = bitcast i8* %102 to %struct.cli_meta_node*
  %104 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %next = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %104, i32 0, i32 9
  store %struct.cli_meta_node* %103, %struct.cli_meta_node** %next, align 8
  %105 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %106 = bitcast %struct.cli_meta_node* %105 to i8*
  %107 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %108 = load %struct.cl_engine*, %struct.cl_engine** %107, align 8
  %zip_mlist137 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %108, i32 0, i32 6
  store i8* %106, i8** %zip_mlist137, align 8
  br label %if.end.141

if.else.138:                                      ; preds = %if.end.133
  %109 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %110 = load %struct.cl_engine*, %struct.cl_engine** %109, align 8
  %rar_mlist = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %110, i32 0, i32 7
  %111 = load i8*, i8** %rar_mlist, align 8
  %112 = bitcast i8* %111 to %struct.cli_meta_node*
  %113 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %next139 = getelementptr inbounds %struct.cli_meta_node, %struct.cli_meta_node* %113, i32 0, i32 9
  store %struct.cli_meta_node* %112, %struct.cli_meta_node** %next139, align 8
  %114 = load %struct.cli_meta_node*, %struct.cli_meta_node** %new, align 8
  %115 = bitcast %struct.cli_meta_node* %114 to i8*
  %116 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %117 = load %struct.cl_engine*, %struct.cl_engine** %116, align 8
  %rar_mlist140 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %117, i32 0, i32 7
  store i8* %115, i8** %rar_mlist140, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.136
  br label %while.cond

while.end:                                        ; preds = %if.then.122, %if.then.107, %if.then.92, %if.then.84, %if.then.72, %if.then.57, %if.then.42, %if.then.28, %if.then.21, %if.then.16, %if.then.11, %while.cond
  %118 = load i32, i32* %line, align 4
  %tobool142 = icmp ne i32 %118, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %while.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0))
  %119 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %120 = load %struct.cl_engine*, %struct.cl_engine** %119, align 8
  call void @cl_free(%struct.cl_engine* %120)
  store i32 -116, i32* %retval
  br label %return

if.end.144:                                       ; preds = %while.end
  %121 = load i32, i32* %ret, align 4
  %tobool145 = icmp ne i32 %121, 0
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.144
  %122 = load i32, i32* %line, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i32 0, i32 0), i32 %122)
  %123 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %124 = load %struct.cl_engine*, %struct.cl_engine** %123, align 8
  call void @cl_free(%struct.cl_engine* %124)
  %125 = load i32, i32* %ret, align 4
  store i32 %125, i32* %retval
  br label %return

if.end.147:                                       ; preds = %if.end.144
  %126 = load i32*, i32** %signo.addr, align 8
  %tobool148 = icmp ne i32* %126, null
  br i1 %tobool148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.147
  %127 = load i32, i32* %line, align 4
  %128 = load i32, i32* %comments, align 4
  %sub = sub nsw i32 %127, %128
  %129 = load i32*, i32** %signo.addr, align 8
  %130 = load i32, i32* %129, align 4
  %add = add i32 %130, %sub
  store i32 %add, i32* %129, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %if.end.147
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.150, %if.then.146, %if.then.143, %if.then
  %131 = load i32, i32* %retval
  ret i32 %131
}

declare i32 @cli_dconf_load(%struct._IO_FILE*, %struct.cl_engine**, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @cli_loadwdb(%struct._IO_FILE* %fd, %struct.cl_engine** %engine, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %options.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %1 = load i32, i32* %options.addr, align 4
  %call = call i32 @cli_initengine(%struct.cl_engine** %0, i32 %1)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %3 = load %struct.cl_engine*, %struct.cl_engine** %2, align 8
  call void @cl_free(%struct.cl_engine* %3)
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %6 = load %struct.cl_engine*, %struct.cl_engine** %5, align 8
  %dconf = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %6, i32 0, i32 11
  %7 = load i8*, i8** %dconf, align 8
  %8 = bitcast i8* %7 to %struct.cli_dconf*
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %8, i32 0, i32 6
  %9 = load i32, i32* %phishing, align 4
  %and = and i32 %9, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %10 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %11 = load %struct.cl_engine*, %struct.cl_engine** %10, align 8
  %whitelist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %11, i32 0, i32 8
  %12 = load i8*, i8** %whitelist_matcher, align 8
  %tobool4 = icmp ne i8* %12, null
  br i1 %tobool4, label %if.end.10, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %13 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %14 = load %struct.cl_engine*, %struct.cl_engine** %13, align 8
  %call6 = call i32 @init_whitelist(%struct.cl_engine* %14)
  store i32 %call6, i32* %ret, align 4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %15 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %16 = load %struct.cl_engine*, %struct.cl_engine** %15, align 8
  call void @phishing_done(%struct.cl_engine* %16)
  %17 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %18 = load %struct.cl_engine*, %struct.cl_engine** %17, align 8
  call void @cl_free(%struct.cl_engine* %18)
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.3
  %20 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %21 = load %struct.cl_engine*, %struct.cl_engine** %20, align 8
  %whitelist_matcher11 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %21, i32 0, i32 8
  %22 = load i8*, i8** %whitelist_matcher11, align 8
  %23 = bitcast i8* %22 to %struct.regex_matcher*
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %25 = load i32, i32* %options.addr, align 4
  %call12 = call i32 @load_regex_matcher(%struct.regex_matcher* %23, %struct._IO_FILE* %24, i32 %25, i32 1)
  store i32 %call12, i32* %ret, align 4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %26 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %27 = load %struct.cl_engine*, %struct.cl_engine** %26, align 8
  call void @phishing_done(%struct.cl_engine* %27)
  %28 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %29 = load %struct.cl_engine*, %struct.cl_engine** %28, align 8
  call void @cl_free(%struct.cl_engine* %29)
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.8, %if.then.2, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @cli_loadpdb(%struct._IO_FILE* %fd, %struct.cl_engine** %engine, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca %struct._IO_FILE*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %options.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct._IO_FILE* %fd, %struct._IO_FILE** %fd.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %ret, align 4
  %0 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %1 = load i32, i32* %options.addr, align 4
  %call = call i32 @cli_initengine(%struct.cl_engine** %0, i32 %1)
  store i32 %call, i32* %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %3 = load %struct.cl_engine*, %struct.cl_engine** %2, align 8
  call void @cl_free(%struct.cl_engine* %3)
  %4 = load i32, i32* %ret, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %6 = load %struct.cl_engine*, %struct.cl_engine** %5, align 8
  %dconf = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %6, i32 0, i32 11
  %7 = load i8*, i8** %dconf, align 8
  %8 = bitcast i8* %7 to %struct.cli_dconf*
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %8, i32 0, i32 6
  %9 = load i32, i32* %phishing, align 4
  %and = and i32 %9, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %10 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %11 = load %struct.cl_engine*, %struct.cl_engine** %10, align 8
  %domainlist_matcher = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %11, i32 0, i32 9
  %12 = load i8*, i8** %domainlist_matcher, align 8
  %tobool4 = icmp ne i8* %12, null
  br i1 %tobool4, label %if.end.10, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %13 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %14 = load %struct.cl_engine*, %struct.cl_engine** %13, align 8
  %call6 = call i32 @init_domainlist(%struct.cl_engine* %14)
  store i32 %call6, i32* %ret, align 4
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %15 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %16 = load %struct.cl_engine*, %struct.cl_engine** %15, align 8
  call void @phishing_done(%struct.cl_engine* %16)
  %17 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %18 = load %struct.cl_engine*, %struct.cl_engine** %17, align 8
  call void @cl_free(%struct.cl_engine* %18)
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.3
  %20 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %21 = load %struct.cl_engine*, %struct.cl_engine** %20, align 8
  %domainlist_matcher11 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %21, i32 0, i32 9
  %22 = load i8*, i8** %domainlist_matcher11, align 8
  %23 = bitcast i8* %22 to %struct.regex_matcher*
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fd.addr, align 8
  %25 = load i32, i32* %options.addr, align 4
  %call12 = call i32 @load_regex_matcher(%struct.regex_matcher* %23, %struct._IO_FILE* %24, i32 %25, i32 0)
  store i32 %call12, i32* %ret, align 4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  %26 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %27 = load %struct.cl_engine*, %struct.cl_engine** %26, align 8
  call void @phishing_done(%struct.cl_engine* %27)
  %28 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %29 = load %struct.cl_engine*, %struct.cl_engine** %28, align 8
  call void @cl_free(%struct.cl_engine* %29)
  %30 = load i32, i32* %ret, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.8, %if.then.2, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i8* @cl_strerror(i32) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cli_initroots(%struct.cl_engine* %engine, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine*, align 8
  %options.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %root = alloca %struct.cli_matcher*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %2, i32 0, i32 3
  %3 = load i8**, i8*** %root1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end.22, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.57, i32 0, i32 0), i32 %5)
  %call = call i8* @cli_calloc(i64 1, i64 80)
  %6 = bitcast i8* %call to %struct.cli_matcher*
  %7 = bitcast %struct.cli_matcher* %6 to i8*
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %root3 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %9, i32 0, i32 3
  %10 = load i8**, i8*** %root3, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %10, i64 %idxprom2
  store i8* %7, i8** %arrayidx4, align 8
  %11 = bitcast i8* %7 to %struct.cli_matcher*
  store %struct.cli_matcher* %11, %struct.cli_matcher** %root, align 8
  %12 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %tobool5 = icmp ne %struct.cli_matcher* %12, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.58, i32 0, i32 0))
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %13 = load i32, i32* %options.addr, align 4
  %and = and i32 %13, 4
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.59, i32 0, i32 0))
  %14 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %ac_only = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %14, i32 0, i32 1
  store i8 1, i8* %ac_only, align 1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %15 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.60, i32 0, i32 0), i32 %15)
  %16 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %17 = load i8, i8* @cli_ac_mindepth, align 1
  %18 = load i8, i8* @cli_ac_maxdepth, align 1
  %call10 = call i32 @cli_ac_init(%struct.cli_matcher* %16, i8 zeroext %17, i8 zeroext %18)
  store i32 %call10, i32* %ret, align 4
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.61, i32 0, i32 0))
  %19 = load i32, i32* %ret, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %20 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %ac_only14 = getelementptr inbounds %struct.cli_matcher, %struct.cli_matcher* %20, i32 0, i32 1
  %21 = load i8, i8* %ac_only14, align 1
  %tobool15 = icmp ne i8 %21, 0
  br i1 %tobool15, label %if.end.21, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  %22 = load i32, i32* %i, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.62, i32 0, i32 0), i32 %22)
  %23 = load %struct.cli_matcher*, %struct.cli_matcher** %root, align 8
  %call17 = call i32 @cli_bm_init(%struct.cli_matcher* %23)
  store i32 %call17, i32* %ret, align 4
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.63, i32 0, i32 0))
  %24 = load i32, i32* %ret, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.13
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.19, %if.then.12, %if.then.6
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i32 @cli_chomp(i8*) #2

declare i32 @cli_ac_init(%struct.cli_matcher*, i8 zeroext, i8 zeroext) #2

declare i32 @cli_bm_init(%struct.cli_matcher*) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @scomp(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %sub = sub i32 %2, %5
  ret i32 %sub
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

declare void @cli_strtokenize(i8*, i8 signext, i64, i8**) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @cl_retflevel() #2

declare i32 @cli_hex2num(i8*) #2

declare i32 @init_whitelist(%struct.cl_engine*) #2

declare i32 @load_regex_matcher(%struct.regex_matcher*, %struct._IO_FILE*, i32, i32) #2

declare i32 @init_domainlist(%struct.cl_engine*) #2

declare i32 @cli_readlockdb(i8*, i32) #2

declare i32 @sleep(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @cli_loaddbdir_l(i8* %dirname, %struct.cl_engine** %engine, i32* %signo, i32 %options) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %engine.addr = alloca %struct.cl_engine**, align 8
  %signo.addr = alloca i32*, align 8
  %options.addr = alloca i32, align 4
  %dd = alloca %struct.__dirstream*, align 8
  %dent = alloca %struct.dirent*, align 8
  %MAX_DIRENTS = alloca i32, align 4
  %dents = alloca [20 x %struct.dirent], align 16
  %ndents = alloca i32, align 4
  %sb = alloca %struct.stat, align 8
  %dbfile = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store %struct.cl_engine** %engine, %struct.cl_engine*** %engine.addr, align 8
  store i32* %signo, i32** %signo.addr, align 8
  store i32 %options, i32* %options.addr, align 4
  store i32 20, i32* %MAX_DIRENTS, align 4
  store i32 -125, i32* %ret, align 4
  %0 = load i8*, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.81, i32 0, i32 0), i8* %0)
  %1 = load i8*, i8** %dirname.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %add = add i64 %call, 11
  %call1 = call i8* @cli_malloc(i64 %add)
  store i8* %call1, i8** %dbfile, align 8
  %2 = load i8*, i8** %dbfile, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %dbfile, align 8
  %4 = load i8*, i8** %dirname.addr, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.82, i32 0, i32 0), i8* %4) #5
  %5 = load i8*, i8** %dbfile, align 8
  %call3 = call i32 @stat(i8* %5, %struct.stat* %sb) #5
  %cmp = icmp ne i32 %call3, -1
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %6 = load i8*, i8** %dbfile, align 8
  %7 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %8 = load i32*, i32** %signo.addr, align 8
  %9 = load i32, i32* %options.addr, align 4
  %call5 = call i32 @cli_load(i8* %6, %struct.cl_engine** %7, i32* %8, i32 %9)
  store i32 %call5, i32* %ret, align 4
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  %10 = load i8*, i8** %dbfile, align 8
  call void @free(i8* %10) #5
  %11 = load i32, i32* %ret, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %12 = load i8*, i8** %dbfile, align 8
  call void @free(i8* %12) #5
  %13 = load i8*, i8** %dirname.addr, align 8
  %call10 = call %struct.__dirstream* @opendir(i8* %13)
  store %struct.__dirstream* %call10, %struct.__dirstream** %dd, align 8
  %cmp11 = icmp eq %struct.__dirstream* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %14 = load i8*, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.83, i32 0, i32 0), i8* %14)
  store i32 -115, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  store i32 0, i32* %ndents, align 4
  %15 = bitcast [20 x %struct.dirent]* %dents to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 5600, i32 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end.13
  %16 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call14 = call %struct.dirent* @readdir(%struct.__dirstream* %16)
  store %struct.dirent* %call14, %struct.dirent** %dent, align 8
  %tobool15 = icmp ne %struct.dirent* %call14, null
  br i1 %tobool15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i32, i32* %ndents, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.dirent], [20 x %struct.dirent]* %dents, i32 0, i64 %idxprom
  %18 = bitcast %struct.dirent* %arrayidx to i8*
  %19 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %20 = bitcast %struct.dirent* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 280, i32 8, i1 false)
  %21 = load i32, i32* %ndents, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %ndents, align 4
  %22 = load i32, i32* %ndents, align 4
  %cmp16 = icmp eq i32 %22, 20
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.84, i32 0, i32 0))
  store i32 -115, i32* %retval
  br label %return

if.end.18:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [20 x %struct.dirent], [20 x %struct.dirent]* %dents, i32 0, i32 0
  %23 = bitcast %struct.dirent* %arraydecay to i8*
  %24 = load i32, i32* %ndents, align 4
  %conv = zext i32 %24 to i64
  call void @qsort(i8* %23, i64 %conv, i64 280, i32 (i8*, i8*)* bitcast (i32 (%struct.dirent*, %struct.dirent*)* @dirent_compare to i32 (i8*, i8*)*))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %ndents, align 4
  %cmp19 = icmp ult i32 %25, %26
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [20 x %struct.dirent], [20 x %struct.dirent]* %dents, i32 0, i64 %idxprom21
  store %struct.dirent* %arrayidx22, %struct.dirent** %dent, align 8
  %28 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %29 = load i64, i64* %d_ino, align 8
  %tobool23 = icmp ne i64 %29, 0
  br i1 %tobool23, label %if.then.24, label %if.end.142

if.then.24:                                       ; preds = %for.body
  %30 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 4
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call26 = call i32 @strcmp(i8* %arraydecay25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true, label %if.end.141

land.lhs.true:                                    ; preds = %if.then.24
  %31 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name28 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 4
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name28, i32 0, i32 0
  %call30 = call i32 @strcmp(i8* %arraydecay29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #6
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.141

land.lhs.true.32:                                 ; preds = %land.lhs.true
  %32 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name33 = getelementptr inbounds %struct.dirent, %struct.dirent* %32, i32 0, i32 4
  %arraydecay34 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name33, i32 0, i32 0
  %call35 = call i32 @cli_strbcasestr(i8* %arraydecay34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.32
  %33 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name37 = getelementptr inbounds %struct.dirent, %struct.dirent* %33, i32 0, i32 4
  %arraydecay38 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name37, i32 0, i32 0
  %call39 = call i32 @cli_strbcasestr(i8* %arraydecay38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.116, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %34 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name42 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 4
  %arraydecay43 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name42, i32 0, i32 0
  %call44 = call i32 @cli_strbcasestr(i8* %arraydecay43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.116, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.41
  %35 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name47 = getelementptr inbounds %struct.dirent, %struct.dirent* %35, i32 0, i32 4
  %arraydecay48 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name47, i32 0, i32 0
  %call49 = call i32 @cli_strbcasestr(i8* %arraydecay48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.116, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.46
  %36 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name52 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 4
  %arraydecay53 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name52, i32 0, i32 0
  %call54 = call i32 @cli_strbcasestr(i8* %arraydecay53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0))
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.116, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.51
  %37 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name57 = getelementptr inbounds %struct.dirent, %struct.dirent* %37, i32 0, i32 4
  %arraydecay58 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name57, i32 0, i32 0
  %call59 = call i32 @cli_strbcasestr(i8* %arraydecay58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.116, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.56
  %38 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name62 = getelementptr inbounds %struct.dirent, %struct.dirent* %38, i32 0, i32 4
  %arraydecay63 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name62, i32 0, i32 0
  %call64 = call i32 @cli_strbcasestr(i8* %arraydecay63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.116, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.61
  %39 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name67 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 4
  %arraydecay68 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name67, i32 0, i32 0
  %call69 = call i32 @cli_strbcasestr(i8* %arraydecay68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.116, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.66
  %40 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name72 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 4
  %arraydecay73 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name72, i32 0, i32 0
  %call74 = call i32 @cli_strbcasestr(i8* %arraydecay73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0))
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.116, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.71
  %41 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name77 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 4
  %arraydecay78 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name77, i32 0, i32 0
  %call79 = call i32 @cli_strbcasestr(i8* %arraydecay78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.116, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.76
  %42 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name82 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 4
  %arraydecay83 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name82, i32 0, i32 0
  %call84 = call i32 @cli_strbcasestr(i8* %arraydecay83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.116, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.81
  %43 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name87 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 4
  %arraydecay88 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name87, i32 0, i32 0
  %call89 = call i32 @cli_strbcasestr(i8* %arraydecay88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0))
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.116, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.86
  %44 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name92 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 4
  %arraydecay93 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name92, i32 0, i32 0
  %call94 = call i32 @cli_strbcasestr(i8* %arraydecay93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0))
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.then.116, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false.91
  %45 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name97 = getelementptr inbounds %struct.dirent, %struct.dirent* %45, i32 0, i32 4
  %arraydecay98 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name97, i32 0, i32 0
  %call99 = call i32 @cli_strbcasestr(i8* %arraydecay98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.116, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.96
  %46 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name102 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i32 0, i32 4
  %arraydecay103 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name102, i32 0, i32 0
  %call104 = call i32 @cli_strbcasestr(i8* %arraydecay103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0))
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.116, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.101
  %47 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name107 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 4
  %arraydecay108 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name107, i32 0, i32 0
  %call109 = call i32 @cli_strbcasestr(i8* %arraydecay108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.116, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %lor.lhs.false.106
  %48 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name112 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 4
  %arraydecay113 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name112, i32 0, i32 0
  %call114 = call i32 @cli_strbcasestr(i8* %arraydecay113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0))
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.141

if.then.116:                                      ; preds = %lor.lhs.false.111, %lor.lhs.false.106, %lor.lhs.false.101, %lor.lhs.false.96, %lor.lhs.false.91, %lor.lhs.false.86, %lor.lhs.false.81, %lor.lhs.false.76, %lor.lhs.false.71, %lor.lhs.false.66, %lor.lhs.false.61, %lor.lhs.false.56, %lor.lhs.false.51, %lor.lhs.false.46, %lor.lhs.false.41, %lor.lhs.false, %land.lhs.true.32
  %49 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name117 = getelementptr inbounds %struct.dirent, %struct.dirent* %49, i32 0, i32 4
  %arraydecay118 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name117, i32 0, i32 0
  %call119 = call i64 @strlen(i8* %arraydecay118) #6
  %50 = load i8*, i8** %dirname.addr, align 8
  %call120 = call i64 @strlen(i8* %50) #6
  %add121 = add i64 %call119, %call120
  %add122 = add i64 %add121, 2
  %call123 = call i8* @cli_malloc(i64 %add122)
  store i8* %call123, i8** %dbfile, align 8
  %51 = load i8*, i8** %dbfile, align 8
  %tobool124 = icmp ne i8* %51, null
  br i1 %tobool124, label %if.end.127, label %if.then.125

if.then.125:                                      ; preds = %if.then.116
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.85, i32 0, i32 0))
  %52 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call126 = call i32 @closedir(%struct.__dirstream* %52)
  store i32 -114, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.then.116
  %53 = load i8*, i8** %dbfile, align 8
  %54 = load i8*, i8** %dirname.addr, align 8
  %55 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name128 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 4
  %arraydecay129 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name128, i32 0, i32 0
  %call130 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i8* %54, i8* %arraydecay129) #5
  %56 = load i8*, i8** %dbfile, align 8
  %call131 = call i32 @cli_strbcasestr(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0))
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then.133, label %if.else

if.then.133:                                      ; preds = %if.end.127
  %57 = load i8*, i8** %dbfile, align 8
  %58 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %59 = load i32*, i32** %signo.addr, align 8
  %60 = load i32, i32* %options.addr, align 4
  %call134 = call i32 @cli_loaddbdir(i8* %57, %struct.cl_engine** %58, i32* %59, i32 %60)
  store i32 %call134, i32* %ret, align 4
  br label %if.end.136

if.else:                                          ; preds = %if.end.127
  %61 = load i8*, i8** %dbfile, align 8
  %62 = load %struct.cl_engine**, %struct.cl_engine*** %engine.addr, align 8
  %63 = load i32*, i32** %signo.addr, align 8
  %64 = load i32, i32* %options.addr, align 4
  %call135 = call i32 @cli_load(i8* %61, %struct.cl_engine** %62, i32* %63, i32 %64)
  store i32 %call135, i32* %ret, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else, %if.then.133
  %65 = load i32, i32* %ret, align 4
  %tobool137 = icmp ne i32 %65, 0
  br i1 %tobool137, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.end.136
  %66 = load i8*, i8** %dbfile, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.86, i32 0, i32 0), i8* %66)
  %67 = load i8*, i8** %dbfile, align 8
  call void @free(i8* %67) #5
  %68 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call139 = call i32 @closedir(%struct.__dirstream* %68)
  %69 = load i32, i32* %ret, align 4
  store i32 %69, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.end.136
  %70 = load i8*, i8** %dbfile, align 8
  call void @free(i8* %70) #5
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %lor.lhs.false.111, %land.lhs.true, %if.then.24
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.142
  %71 = load i32, i32* %i, align 4
  %inc143 = add i32 %71, 1
  store i32 %inc143, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %72 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call144 = call i32 @closedir(%struct.__dirstream* %72)
  %73 = load i32, i32* %ret, align 4
  %cmp145 = icmp eq i32 %73, -125
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %for.end
  %74 = load i8*, i8** %dirname.addr, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.87, i32 0, i32 0), i8* %74)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %for.end
  %75 = load i32, i32* %ret, align 4
  store i32 %75, i32* %retval
  br label %return

return:                                           ; preds = %if.end.148, %if.then.138, %if.then.125, %if.then.17, %if.then.12, %if.then.7, %if.then
  %76 = load i32, i32* %retval
  ret i32 %76
}

declare i32 @cli_unlockdb(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define internal i32 @dirent_compare(%struct.dirent* %a, %struct.dirent* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.dirent*, align 8
  %b.addr = alloca %struct.dirent*, align 8
  %ret = alloca i32, align 4
  store %struct.dirent* %a, %struct.dirent** %a.addr, align 8
  store %struct.dirent* %b, %struct.dirent** %b.addr, align 8
  %0 = load %struct.dirent*, %struct.dirent** %a.addr, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %0, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %1 = load %struct.dirent*, %struct.dirent** %b.addr, align 8
  %d_name1 = getelementptr inbounds %struct.dirent, %struct.dirent* %1, i32 0, i32 4
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name1, i32 0, i32 0
  %call = call i32 @strcmp(i8* %arraydecay, i8* %arraydecay2) #6
  store i32 %call, i32* %ret, align 4
  %2 = load i32, i32* %ret, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.dirent*, %struct.dirent** %a.addr, align 8
  %d_type = getelementptr inbounds %struct.dirent, %struct.dirent* %4, i32 0, i32 3
  %5 = load i8, i8* %d_type, align 1
  %conv = zext i8 %5 to i32
  %6 = load %struct.dirent*, %struct.dirent** %b.addr, align 8
  %d_type3 = getelementptr inbounds %struct.dirent, %struct.dirent* %6, i32 0, i32 3
  %7 = load i8, i8* %d_type3, align 1
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp slt i32 %conv, %conv4
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %8 = load %struct.dirent*, %struct.dirent** %a.addr, align 8
  %d_type9 = getelementptr inbounds %struct.dirent, %struct.dirent* %8, i32 0, i32 3
  %9 = load i8, i8* %d_type9, align 1
  %conv10 = zext i8 %9 to i32
  %10 = load %struct.dirent*, %struct.dirent** %b.addr, align 8
  %d_type11 = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 3
  %11 = load i8, i8* %d_type11, align 1
  %conv12 = zext i8 %11 to i32
  %cmp13 = icmp sgt i32 %conv10, %conv12
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.8
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.8
  %12 = load %struct.dirent*, %struct.dirent** %a.addr, align 8
  %d_reclen = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 2
  %13 = load i16, i16* %d_reclen, align 2
  %conv17 = zext i16 %13 to i32
  %14 = load %struct.dirent*, %struct.dirent** %b.addr, align 8
  %d_reclen18 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 2
  %15 = load i16, i16* %d_reclen18, align 2
  %conv19 = zext i16 %15 to i32
  %cmp20 = icmp slt i32 %conv17, %conv19
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.16
  %16 = load %struct.dirent*, %struct.dirent** %a.addr, align 8
  %d_reclen24 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 2
  %17 = load i16, i16* %d_reclen24, align 2
  %conv25 = zext i16 %17 to i32
  %18 = load %struct.dirent*, %struct.dirent** %b.addr, align 8
  %d_reclen26 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 2
  %19 = load i16, i16* %d_reclen26, align 2
  %conv27 = zext i16 %19 to i32
  %cmp28 = icmp sgt i32 %conv25, %conv27
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.23
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30, %if.then.22, %if.then.15, %if.then.7, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
