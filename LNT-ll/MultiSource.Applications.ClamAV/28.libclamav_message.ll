; ModuleID = './MultiSource.Applications.ClamAV/28.libclamav_message.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { %struct.tableEntry*, %struct.tableEntry*, i32 }
%struct.tableEntry = type { i8*, i32, %struct.tableEntry* }
%struct.mime_map = type { i8*, i32 }
%struct.encoding_map = type { i8*, i32 }
%struct.message = type { i32, i32*, i32, i8*, i32, i8**, i8*, %struct.text*, %struct.text*, %struct.cli_ctx*, i8, i8, i8, i32, i8, %struct.text*, %struct.text*, %struct.text*, %struct.text*, %struct.text* }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.text = type { i8*, %struct.text* }
%struct.pstr_list = type { i8*, %struct.pstr_list* }
%struct.fileblob = type { %struct._IO_FILE*, %struct.blob, i8*, i8, i64, %struct.cli_ctx* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.blob = type { i8*, i8*, i64, i64, i32 }

@messageSetMimeType.mime_table = internal global %struct.table* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Empty content-type field\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"messageSetMimeType: '%s'\0A\00", align 1
@mime_map = internal constant [8 x %struct.mime_map] [%struct.mime_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 6 }, %struct.mime_map { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 5 }, %struct.mime_map { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 1 }, %struct.mime_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i32 2 }, %struct.mime_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i32 3 }, %struct.mime_map { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 4 }, %struct.mime_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 7 }, %struct.mime_map { i8* null, i32 6 }], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"x-\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Incorrect MIME type: `plain', set to Text\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Unknown MIME type \22%s\22 - guessing as %s (%u%% certainty)\0A\00", align 1
@.str.6 = private unnamed_addr constant [118 x i8] c"Unknown MIME type: `%s', set to Application - if you believe this file contains a virus, submit it to www.clamav.net\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Empty content subtype\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"messageAddArgument, arg='%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"filename=\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"name=\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Force mime encoding to application\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Add arguments '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Can't parse header \22%s\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Unbalanced quote character in \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [98 x i8] c"Can't parse header \22%s\22 - if you believe this file contains a virus, submit it to www.clamav.net\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Ignoring empty field in \22%s\22\0A\00", align 1
@.str.20 = private unnamed_addr constant [65 x i8] c"messageFindArgument: no '=' sign found in MIME header '%s' (%s)\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"messageSetEncoding: '%s'\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"8 bit\00", align 1
@.str.26 = private unnamed_addr constant [61 x i8] c"Broken content-transfer-encoding: '8 bit' changed to '8bit'\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"8bit\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@encoding_map = internal constant [13 x %struct.encoding_map] [%struct.encoding_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0 }, %struct.encoding_map { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 0 }, %struct.encoding_map { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0), i32 1 }, %struct.encoding_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i32 2 }, %struct.encoding_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 3 }, %struct.encoding_map { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i32 4 }, %struct.encoding_map { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i32 5 }, %struct.encoding_map { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 6 }, %struct.encoding_map { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 8 }, %struct.encoding_map { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i32 0 }, %struct.encoding_map { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 5 }, %struct.encoding_map { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 5 }, %struct.encoding_map zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [9 x i8] c"uuencode\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"Ignoring duplicate encoding mechanism '%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Encoding type %d is \22%s\22\0A\00", align 1
@.str.32 = private unnamed_addr constant [62 x i8] c"Unknown encoding type \22%s\22 - guessing as %s (%u%% certainty)\0A\00", align 1
@.str.33 = private unnamed_addr constant [101 x i8] c"Unknown encoding type \22%s\22 - if you believe this file contains a virus, submit it to www.clamav.net\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"quoted-printable\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"messageAddStr: out of memory\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"messageAddStrAtTop: out of memory\0A\00", align 1
@.str.39 = private unnamed_addr constant [56 x i8] c"messageMoveText sanity check: t not within old_message\0A\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"%d trailing bytes to export\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"messageToFileblob\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"messageToBlob\0A\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"messageToText: export transfer method %d = %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [95 x i8] c"messageToText: Unexpected attempt to handle uuencoded file - report to http://bugs.clamav.net\0A\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"Binhex messages not supported yet.\0A\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.48 = private unnamed_addr constant [79 x i8] c"uudecode: buffer overflow stopped, attempting to ignore but decoding may fail\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"=yend \00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"begin \00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"multipart\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.57 = private unnamed_addr constant [67 x i8] c"messageArgumentExists: no '=' sign found in MIME header '%s' (%s)\0A\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"7bit\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"x-uuencode\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"x-yencode\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"x-binhex\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"us-ascii\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"x-uue\00", align 1
@messageIsEncoding.encoding = internal constant [26 x i8] c"Content-Transfer-Encoding\00", align 16
@messageIsEncoding.binhex = internal constant [46 x i8] c"(This file must be converted with BinHex 4.0)\00", align 16
@.str.66 = private unnamed_addr constant [11 x i8] c"Received: \00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"BinHex\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"=ybegin line=\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"messageExport: numberOfEncTypes == %d\0A\00", align 1
@messageExport.hqxtbl = internal constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\FF\FF\0D\0E\0F\10\11\12\13\FF\14\15\FF\FF\FF\FF\FF\FF\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$\FF%&'()*+\FF,-./\FF\FF\FF\FF0123456\FF789:;<\FF\FF=>?\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str.70 = private unnamed_addr constant [30 x i8] c"messageExport: decode binhex\0A\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"Couldn't start binhex parser\0A\00", align 1
@.str.72 = private unnamed_addr constant [65 x i8] c"Couldn't locate the binhex message that was claimed to be there\0A\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"decode HQX7 message (%lu bytes)\0A\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"Invalid HQX7 character '%c' (0x%02x)\0A\00", align 1
@.str.75 = private unnamed_addr constant [38 x i8] c"decoded HQX7 message (now %lu bytes)\0A\00", align 1
@.str.76 = private unnamed_addr constant [127 x i8] c"HQX8 messages not yet supported, extraction may fail - if you believe this file contains a virus, submit it to www.clamav.net\0A\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"Uncompressed %lu bytes to %lu\0A\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"HQX7 message (%lu bytes) is not compressed\0A\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"Discarding empty binHex attachment\0A\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@.str.81 = private unnamed_addr constant [75 x i8] c"Filename = '%s', data fork length = %lu, resource fork length = %lu bytes\0A\00", align 1
@.str.82 = private unnamed_addr constant [76 x i8] c"Corrupt BinHex file, claims it is %lu bytes long in a message of %lu bytes\0A\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"Finished exporting binhex file\0A\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"messageExport: Entering fast copy mode\0A\00", align 1
@.str.85 = private unnamed_addr constant [44 x i8] c"Unencoded attachment sent with no filename\0A\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"name=attachment\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"attachment\00", align 1
@.str.88 = private unnamed_addr constant [38 x i8] c"Not all decoding algorithms were run\0A\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"messageExport: enctype %d is %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"Set yEnc filename to \22%s\22\0A\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"messageExport: treat uuencode as text/plain\0A\00", align 1
@.str.93 = private unnamed_addr constant [34 x i8] c"Attachment sent with no filename\0A\00", align 1
@.str.94 = private unnamed_addr constant [28 x i8] c"Empty attachment not saved\0A\00", align 1
@.str.95 = private unnamed_addr constant [37 x i8] c"Exported %lu bytes using enctype %d\0A\00", align 1
@base64Table = internal constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\00\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@.str.96 = private unnamed_addr constant [29 x i8] c"base64chars = %d (%c %c %c)\0A\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"Illegal hex character '%c'\0A\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"boundary\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"Discarding unwanted argument '%s'\0A\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"messageDedup\0A\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"messageDedup: out of memory\0A\00", align 1
@.str.107 = private unnamed_addr constant [34 x i8] c"messageDedup reclaimed %lu bytes\0A\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"*0*=\00", align 1
@.str.109 = private unnamed_addr constant [53 x i8] c"RFC2231 parameter continuations are not yet handled\0A\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"*0=\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"rfc2231 '%s'\0A\00", align 1
@.str.113 = private unnamed_addr constant [30 x i8] c"Invalid RFC2231 header: '%s'\0A\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"rfc2231 returns '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.message* @messageCreate() #0 {
entry:
  %m = alloca %struct.message*, align 8
  %call = call i8* @cli_calloc(i64 1, i64 136)
  %0 = bitcast i8* %call to %struct.message*
  store %struct.message* %0, %struct.message** %m, align 8
  %1 = load %struct.message*, %struct.message** %m, align 8
  %tobool = icmp ne %struct.message* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m, align 8
  %mimeType = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 0
  store i32 0, i32* %mimeType, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.message*, %struct.message** %m, align 8
  ret %struct.message* %3
}

declare i8* @cli_calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @messageDestroy(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageReset(%struct.message* %0)
  %1 = load %struct.message*, %struct.message** %m.addr, align 8
  %2 = bitcast %struct.message* %1 to i8*
  call void @free(i8* %2) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @messageReset(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %i = alloca i32, align 4
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeSubtype = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 3
  %1 = load i8*, i8** %mimeSubtype, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeSubtype1 = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 3
  %3 = load i8*, i8** %mimeSubtype1, align 8
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType = getelementptr inbounds %struct.message, %struct.message* %4, i32 0, i32 6
  %5 = load i8*, i8** %mimeDispositionType, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType4 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 6
  %7 = load i8*, i8** %mimeDispositionType4, align 8
  call void @free(i8* %7) #3
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %8 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 5
  %9 = load i8**, i8*** %mimeArguments, align 8
  %tobool6 = icmp ne i8** %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfArguments = getelementptr inbounds %struct.message, %struct.message* %11, i32 0, i32 4
  %12 = load i32, i32* %numberOfArguments, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments8 = getelementptr inbounds %struct.message, %struct.message* %14, i32 0, i32 5
  %15 = load i8**, i8*** %mimeArguments8, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 %idxprom
  %16 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %16) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments9 = getelementptr inbounds %struct.message, %struct.message* %18, i32 0, i32 5
  %19 = load i8**, i8*** %mimeArguments9, align 8
  %20 = bitcast i8** %19 to i8*
  call void @free(i8* %20) #3
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.end.5
  %21 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first = getelementptr inbounds %struct.message, %struct.message* %21, i32 0, i32 7
  %22 = load %struct.text*, %struct.text** %body_first, align 8
  %tobool11 = icmp ne %struct.text* %22, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %23 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first13 = getelementptr inbounds %struct.message, %struct.message* %23, i32 0, i32 7
  %24 = load %struct.text*, %struct.text** %body_first13, align 8
  call void @textDestroy(%struct.text* %24)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %25 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes = getelementptr inbounds %struct.message, %struct.message* %25, i32 0, i32 1
  %26 = load i32*, i32** %encodingTypes, align 8
  %tobool15 = icmp ne i32* %26, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %27 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes17 = getelementptr inbounds %struct.message, %struct.message* %27, i32 0, i32 1
  %28 = load i32*, i32** %encodingTypes17, align 8
  %29 = bitcast i32* %28 to i8*
  call void @free(i8* %29) #3
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %30 = load %struct.message*, %struct.message** %m.addr, align 8
  %31 = bitcast %struct.message* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 136, i32 8, i1 false)
  %32 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeType = getelementptr inbounds %struct.message, %struct.message* %32, i32 0, i32 0
  store i32 0, i32* %mimeType, align 4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @textDestroy(%struct.text*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @messageSetMimeType(%struct.message* %mess, i8* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %mess.addr = alloca %struct.message*, align 8
  %type.addr = alloca i8*, align 8
  %m = alloca %struct.mime_map*, align 8
  %typeval = alloca i32, align 4
  %highestSimil = alloca i32, align 4
  %t = alloca i32, align 4
  %closest = alloca i8*, align 8
  %s = alloca i32, align 4
  store %struct.message* %mess, %struct.message** %mess.addr, align 8
  store i8* %type, i8** %type.addr, align 8
  %0 = load i8*, i8** %type.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %type.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %2 = load i8*, i8** %type.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %5 to i32
  %and = and i32 %conv1, 1024
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %type.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %type.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.table*, %struct.table** @messageSetMimeType.mime_table, align 8
  %cmp7 = icmp eq %struct.table* %8, null
  br i1 %cmp7, label %if.then.9, label %if.end.23

if.then.9:                                        ; preds = %while.end
  %call10 = call %struct.table* @tableCreate()
  store %struct.table* %call10, %struct.table** @messageSetMimeType.mime_table, align 8
  %9 = load %struct.table*, %struct.table** @messageSetMimeType.mime_table, align 8
  %cmp11 = icmp eq %struct.table* %9, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  store %struct.mime_map* getelementptr inbounds ([8 x %struct.mime_map], [8 x %struct.mime_map]* @mime_map, i32 0, i32 0), %struct.mime_map** %m, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %10 = load %struct.mime_map*, %struct.mime_map** %m, align 8
  %string = getelementptr inbounds %struct.mime_map, %struct.mime_map* %10, i32 0, i32 0
  %11 = load i8*, i8** %string, align 8
  %tobool15 = icmp ne i8* %11, null
  br i1 %tobool15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.table*, %struct.table** @messageSetMimeType.mime_table, align 8
  %13 = load %struct.mime_map*, %struct.mime_map** %m, align 8
  %string16 = getelementptr inbounds %struct.mime_map, %struct.mime_map* %13, i32 0, i32 0
  %14 = load i8*, i8** %string16, align 8
  %15 = load %struct.mime_map*, %struct.mime_map** %m, align 8
  %type17 = getelementptr inbounds %struct.mime_map, %struct.mime_map* %15, i32 0, i32 1
  %16 = load i32, i32* %type17, align 4
  %call18 = call i32 @tableInsert(%struct.table* %12, i8* %14, i32 %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %for.body
  %17 = load %struct.table*, %struct.table** @messageSetMimeType.mime_table, align 8
  call void @tableDestroy(%struct.table* %17)
  store %struct.table* null, %struct.table** @messageSetMimeType.mime_table, align 8
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %18 = load %struct.mime_map*, %struct.mime_map** %m, align 8
  %incdec.ptr22 = getelementptr inbounds %struct.mime_map, %struct.mime_map* %18, i32 1
  store %struct.mime_map* %incdec.ptr22, %struct.mime_map** %m, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.23

if.end.23:                                        ; preds = %for.end, %while.end
  %19 = load %struct.table*, %struct.table** @messageSetMimeType.mime_table, align 8
  %20 = load i8*, i8** %type.addr, align 8
  %call24 = call i32 @tableFind(%struct.table* %19, i8* %20)
  store i32 %call24, i32* %typeval, align 4
  %21 = load i32, i32* %typeval, align 4
  %cmp25 = icmp ne i32 %21, -1
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  %22 = load i32, i32* %typeval, align 4
  %23 = load %struct.message*, %struct.message** %mess.addr, align 8
  %mimeType = getelementptr inbounds %struct.message, %struct.message* %23, i32 0, i32 0
  store i32 %22, i32* %mimeType, align 4
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  %24 = load %struct.message*, %struct.message** %mess.addr, align 8
  %mimeType29 = getelementptr inbounds %struct.message, %struct.message* %24, i32 0, i32 0
  %25 = load i32, i32* %mimeType29, align 4
  %cmp30 = icmp eq i32 %25, 0
  br i1 %cmp30, label %if.then.32, label %if.end.68

if.then.32:                                       ; preds = %if.end.28
  %26 = load i8*, i8** %type.addr, align 8
  %call33 = call i32 @strncasecmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i64 2) #8
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.32
  %27 = load %struct.message*, %struct.message** %mess.addr, align 8
  %mimeType37 = getelementptr inbounds %struct.message, %struct.message* %27, i32 0, i32 0
  store i32 8, i32* %mimeType37, align 4
  br label %if.end.67

if.else:                                          ; preds = %if.then.32
  %28 = load i8*, i8** %type.addr, align 8
  %call38 = call i32 @strcasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #8
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then.41, label %if.else.43

if.then.41:                                       ; preds = %if.else
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
  %29 = load %struct.message*, %struct.message** %mess.addr, align 8
  %mimeType42 = getelementptr inbounds %struct.message, %struct.message* %29, i32 0, i32 0
  store i32 6, i32* %mimeType42, align 4
  br label %if.end.66

if.else.43:                                       ; preds = %if.else
  store i32 0, i32* %highestSimil, align 4
  store i32 -1, i32* %t, align 4
  store i8* null, i8** %closest, align 8
  store %struct.mime_map* getelementptr inbounds ([8 x %struct.mime_map], [8 x %struct.mime_map]* @mime_map, i32 0, i32 0), %struct.mime_map** %m, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.56, %if.else.43
  %30 = load %struct.mime_map*, %struct.mime_map** %m, align 8
  %string45 = getelementptr inbounds %struct.mime_map, %struct.mime_map* %30, i32 0, i32 0
  %31 = load i8*, i8** %string45, align 8
  %tobool46 = icmp ne i8* %31, null
  br i1 %tobool46, label %for.body.47, label %for.end.58

for.body.47:                                      ; preds = %for.cond.44
  %32 = load %struct.mime_map*, %struct.mime_map** %m, align 8
  %string48 = getelementptr inbounds %struct.mime_map, %struct.mime_map* %32, i32 0, i32 0
  %33 = load i8*, i8** %string48, align 8
  %34 = load i8*, i8** %type.addr, align 8
  %call49 = call i32 @simil(i8* %33, i8* %34)
  store i32 %call49, i32* %s, align 4
  %35 = load i32, i32* %s, align 4
  %36 = load i32, i32* %highestSimil, align 4
  %cmp50 = icmp sgt i32 %35, %36
  br i1 %cmp50, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %for.body.47
  %37 = load i32, i32* %s, align 4
  store i32 %37, i32* %highestSimil, align 4
  %38 = load %struct.mime_map*, %struct.mime_map** %m, align 8
  %string53 = getelementptr inbounds %struct.mime_map, %struct.mime_map* %38, i32 0, i32 0
  %39 = load i8*, i8** %string53, align 8
  store i8* %39, i8** %closest, align 8
  %40 = load %struct.mime_map*, %struct.mime_map** %m, align 8
  %type54 = getelementptr inbounds %struct.mime_map, %struct.mime_map* %40, i32 0, i32 1
  %41 = load i32, i32* %type54, align 4
  store i32 %41, i32* %t, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %for.body.47
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %42 = load %struct.mime_map*, %struct.mime_map** %m, align 8
  %incdec.ptr57 = getelementptr inbounds %struct.mime_map, %struct.mime_map* %42, i32 1
  store %struct.mime_map* %incdec.ptr57, %struct.mime_map** %m, align 8
  br label %for.cond.44

for.end.58:                                       ; preds = %for.cond.44
  %43 = load i32, i32* %highestSimil, align 4
  %cmp59 = icmp sge i32 %43, 50
  br i1 %cmp59, label %if.then.61, label %if.else.63

if.then.61:                                       ; preds = %for.end.58
  %44 = load i8*, i8** %type.addr, align 8
  %45 = load i8*, i8** %closest, align 8
  %46 = load i32, i32* %highestSimil, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i32 0, i32 0), i8* %44, i8* %45, i32 %46)
  %47 = load i32, i32* %t, align 4
  %48 = load %struct.message*, %struct.message** %mess.addr, align 8
  %mimeType62 = getelementptr inbounds %struct.message, %struct.message* %48, i32 0, i32 0
  store i32 %47, i32* %mimeType62, align 4
  br label %if.end.65

if.else.63:                                       ; preds = %for.end.58
  %49 = load i8*, i8** %type.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i32 0, i32 0), i8* %49)
  %50 = load %struct.message*, %struct.message** %mess.addr, align 8
  %mimeType64 = getelementptr inbounds %struct.message, %struct.message* %50, i32 0, i32 0
  store i32 1, i32* %mimeType64, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.41
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.36
  store i32 1, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.end.28
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.end.67, %if.then.27, %if.then.20, %if.then.13, %if.then.5, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare void @cli_warnmsg(i8*, ...) #1

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare %struct.table* @tableCreate() #1

declare i32 @tableInsert(%struct.table*, i8*, i32) #1

declare void @tableDestroy(%struct.table*) #1

declare i32 @tableFind(%struct.table*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @simil(i8* %str1, i8* %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %top = alloca %struct.pstr_list*, align 8
  %score = alloca i32, align 4
  %common = alloca i64, align 8
  %total = alloca i64, align 8
  %len1 = alloca i64, align 8
  %len2 = alloca i64, align 8
  %rs1 = alloca i8*, align 8
  %rs2 = alloca i8*, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %ls1 = alloca [50 x i8], align 16
  %ls2 = alloca [50 x i8], align 16
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  store %struct.pstr_list* null, %struct.pstr_list** %top, align 8
  store i32 0, i32* %score, align 4
  store i8* null, i8** %rs1, align 8
  store i8* null, i8** %rs2, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i8*, i8** %str2.addr, align 8
  %call = call i32 @strcasecmp(i8* %0, i8* %1) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 100, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str1.addr, align 8
  %call1 = call i8* @cli_strdup(i8* %2)
  store i8* %call1, i8** %s1, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i8*, i8** %str2.addr, align 8
  %call5 = call i8* @cli_strdup(i8* %3)
  store i8* %call5, i8** %s2, align 8
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %4 = load i8*, i8** %s1, align 8
  call void @free(i8* %4) #3
  store i32 -2, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %5 = load i8*, i8** %s1, align 8
  %call9 = call i64 @strstrip(i8* %5)
  store i64 %call9, i64* %total, align 8
  %cmp10 = icmp ugt i64 %call9, 49
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %6 = load i8*, i8** %s2, align 8
  %call11 = call i64 @strstrip(i8* %6)
  store i64 %call11, i64* %len2, align 8
  %cmp12 = icmp ugt i64 %call11, 49
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.8
  %7 = load i8*, i8** %s1, align 8
  call void @free(i8* %7) #3
  %8 = load i8*, i8** %s2, align 8
  call void @free(i8* %8) #3
  store i32 -5, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %9 = load i64, i64* %len2, align 8
  %10 = load i64, i64* %total, align 8
  %add = add i64 %10, %9
  store i64 %add, i64* %total, align 8
  %11 = load i8*, i8** %s1, align 8
  %call15 = call i32 @push(%struct.pstr_list** %top, i8* %11)
  %cmp16 = icmp eq i32 %call15, -2
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.end.14
  %12 = load i8*, i8** %s2, align 8
  %call18 = call i32 @push(%struct.pstr_list** %top, i8* %12)
  %cmp19 = icmp eq i32 %call18, -2
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.17, %if.end.14
  %13 = load i8*, i8** %s1, align 8
  call void @free(i8* %13) #3
  %14 = load i8*, i8** %s2, align 8
  call void @free(i8* %14) #3
  store i32 -2, i32* %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.17
  br label %while.cond

while.cond:                                       ; preds = %if.end.85, %if.end.21
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %ls2, i32 0, i32 0
  %call22 = call i32 @pop(%struct.pstr_list** %top, i8* %arraydecay)
  %cmp23 = icmp eq i32 %call22, -4
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay24 = getelementptr inbounds [50 x i8], [50 x i8]* %ls1, i32 0, i32 0
  %call25 = call i32 @pop(%struct.pstr_list** %top, i8* %arraydecay24)
  %arraydecay26 = getelementptr inbounds [50 x i8], [50 x i8]* %ls1, i32 0, i32 0
  %arraydecay27 = getelementptr inbounds [50 x i8], [50 x i8]* %ls2, i32 0, i32 0
  %call28 = call i32 @compare(i8* %arraydecay26, i8** %rs1, i8* %arraydecay27, i8** %rs2)
  %conv = zext i32 %call28 to i64
  store i64 %conv, i64* %common, align 8
  %15 = load i64, i64* %common, align 8
  %cmp29 = icmp ugt i64 %15, 0
  br i1 %cmp29, label %if.then.31, label %if.end.85

if.then.31:                                       ; preds = %while.body
  %16 = load i64, i64* %common, align 8
  %conv32 = trunc i64 %16 to i32
  %17 = load i32, i32* %score, align 4
  %add33 = add i32 %17, %conv32
  store i32 %add33, i32* %score, align 4
  %arraydecay34 = getelementptr inbounds [50 x i8], [50 x i8]* %ls1, i32 0, i32 0
  %call35 = call i64 @strlen(i8* %arraydecay34) #8
  store i64 %call35, i64* %len1, align 8
  %arraydecay36 = getelementptr inbounds [50 x i8], [50 x i8]* %ls2, i32 0, i32 0
  %call37 = call i64 @strlen(i8* %arraydecay36) #8
  store i64 %call37, i64* %len2, align 8
  %18 = load i64, i64* %len1, align 8
  %cmp38 = icmp ugt i64 %18, 1
  br i1 %cmp38, label %land.lhs.true, label %lor.lhs.false.42

land.lhs.true:                                    ; preds = %if.then.31
  %19 = load i64, i64* %len2, align 8
  %cmp40 = icmp uge i64 %19, 1
  br i1 %cmp40, label %if.then.48, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true, %if.then.31
  %20 = load i64, i64* %len2, align 8
  %cmp43 = icmp ugt i64 %20, 1
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.60

land.lhs.true.45:                                 ; preds = %lor.lhs.false.42
  %21 = load i64, i64* %len1, align 8
  %cmp46 = icmp uge i64 %21, 1
  br i1 %cmp46, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %land.lhs.true.45, %land.lhs.true
  %arraydecay49 = getelementptr inbounds [50 x i8], [50 x i8]* %ls1, i32 0, i32 0
  %call50 = call i32 @push(%struct.pstr_list** %top, i8* %arraydecay49)
  %cmp51 = icmp eq i32 %call50, -2
  br i1 %cmp51, label %if.then.58, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %if.then.48
  %arraydecay54 = getelementptr inbounds [50 x i8], [50 x i8]* %ls2, i32 0, i32 0
  %call55 = call i32 @push(%struct.pstr_list** %top, i8* %arraydecay54)
  %cmp56 = icmp eq i32 %call55, -2
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false.53, %if.then.48
  %22 = load i8*, i8** %s1, align 8
  call void @free(i8* %22) #3
  %23 = load i8*, i8** %s2, align 8
  call void @free(i8* %23) #3
  store i32 -2, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %land.lhs.true.45, %lor.lhs.false.42
  %24 = load i8*, i8** %rs1, align 8
  %call61 = call i64 @strlen(i8* %24) #8
  store i64 %call61, i64* %len1, align 8
  %25 = load i8*, i8** %rs2, align 8
  %call62 = call i64 @strlen(i8* %25) #8
  store i64 %call62, i64* %len2, align 8
  %26 = load i64, i64* %len1, align 8
  %cmp63 = icmp ugt i64 %26, 1
  br i1 %cmp63, label %land.lhs.true.65, label %lor.lhs.false.68

land.lhs.true.65:                                 ; preds = %if.end.60
  %27 = load i64, i64* %len2, align 8
  %cmp66 = icmp uge i64 %27, 1
  br i1 %cmp66, label %if.then.74, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %land.lhs.true.65, %if.end.60
  %28 = load i64, i64* %len2, align 8
  %cmp69 = icmp ugt i64 %28, 1
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.84

land.lhs.true.71:                                 ; preds = %lor.lhs.false.68
  %29 = load i64, i64* %len1, align 8
  %cmp72 = icmp uge i64 %29, 1
  br i1 %cmp72, label %if.then.74, label %if.end.84

if.then.74:                                       ; preds = %land.lhs.true.71, %land.lhs.true.65
  %30 = load i8*, i8** %rs1, align 8
  %call75 = call i32 @push(%struct.pstr_list** %top, i8* %30)
  %cmp76 = icmp eq i32 %call75, -2
  br i1 %cmp76, label %if.then.82, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %if.then.74
  %31 = load i8*, i8** %rs2, align 8
  %call79 = call i32 @push(%struct.pstr_list** %top, i8* %31)
  %cmp80 = icmp eq i32 %call79, -2
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %lor.lhs.false.78, %if.then.74
  %32 = load i8*, i8** %s1, align 8
  call void @free(i8* %32) #3
  %33 = load i8*, i8** %s2, align 8
  call void @free(i8* %33) #3
  store i32 -2, i32* %retval
  br label %return

if.end.83:                                        ; preds = %lor.lhs.false.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true.71, %lor.lhs.false.68
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load i8*, i8** %s1, align 8
  call void @free(i8* %34) #3
  %35 = load i8*, i8** %s2, align 8
  call void @free(i8* %35) #3
  %36 = load i64, i64* %total, align 8
  %cmp86 = icmp ugt i64 %36, 0
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %37 = load i32, i32* %score, align 4
  %mul = mul i32 %37, 200
  %conv88 = zext i32 %mul to i64
  %38 = load i64, i64* %total, align 8
  %div = udiv i64 %conv88, %38
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %div, %cond.true ], [ 0, %cond.false ]
  %conv89 = trunc i64 %cond to i32
  store i32 %conv89, i32* %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then.82, %if.then.58, %if.then.20, %if.then.13, %if.then.7, %if.then.3, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @messageGetMimeType(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeType = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 0
  %1 = load i32, i32* %mimeType, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @messageSetMimeSubtype(%struct.message* %m, i8* %subtype) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %subtype.addr = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %subtype, i8** %subtype.addr, align 8
  %0 = load i8*, i8** %subtype.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0))
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %subtype.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeSubtype = getelementptr inbounds %struct.message, %struct.message* %1, i32 0, i32 3
  %2 = load i8*, i8** %mimeSubtype, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %3 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeSubtype2 = getelementptr inbounds %struct.message, %struct.message* %3, i32 0, i32 3
  %4 = load i8*, i8** %mimeSubtype2, align 8
  call void @free(i8* %4) #3
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %5 = load i8*, i8** %subtype.addr, align 8
  %call = call i8* @cli_strdup(i8* %5)
  %6 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeSubtype4 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 3
  store i8* %call, i8** %mimeSubtype4, align 8
  ret void
}

declare i8* @cli_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @messageGetMimeSubtype(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeSubtype = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 3
  %1 = load i8*, i8** %mimeSubtype, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeSubtype1 = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 3
  %3 = load i8*, i8** %mimeSubtype1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define void @messageSetDispositionType(%struct.message* %m, i8* %disptype) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %disptype.addr = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %disptype, i8** %disptype.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 6
  %1 = load i8*, i8** %mimeDispositionType, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType1 = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 6
  %3 = load i8*, i8** %mimeDispositionType1, align 8
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %disptype.addr, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType3 = getelementptr inbounds %struct.message, %struct.message* %5, i32 0, i32 6
  store i8* null, i8** %mimeDispositionType3, align 8
  br label %if.end.20

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.4
  %6 = load i8*, i8** %disptype.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %disptype.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %idxprom = sext i32 %conv6 to i64
  %call = call i16** @__ctype_b_loc() #7
  %10 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv7 = zext i16 %11 to i32
  %and = and i32 %conv7, 8192
  %tobool8 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool8, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i8*, i8** %disptype.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %disptype.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i8*, i8** %disptype.addr, align 8
  %15 = load i8, i8* %14, align 1
  %tobool9 = icmp ne i8 %15, 0
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %while.end
  %16 = load i8*, i8** %disptype.addr, align 8
  %call11 = call i8* @cli_strdup(i8* %16)
  %17 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType12 = getelementptr inbounds %struct.message, %struct.message* %17, i32 0, i32 6
  store i8* %call11, i8** %mimeDispositionType12, align 8
  %18 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType13 = getelementptr inbounds %struct.message, %struct.message* %18, i32 0, i32 6
  %19 = load i8*, i8** %mimeDispositionType13, align 8
  %tobool14 = icmp ne i8* %19, null
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.then.10
  %20 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType16 = getelementptr inbounds %struct.message, %struct.message* %20, i32 0, i32 6
  %21 = load i8*, i8** %mimeDispositionType16, align 8
  %call17 = call i64 @strstrip(i8* %21)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.10
  br label %if.end.20

if.else:                                          ; preds = %while.end
  %22 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType19 = getelementptr inbounds %struct.message, %struct.message* %22, i32 0, i32 6
  store i8* null, i8** %mimeDispositionType19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.2, %if.else, %if.end.18
  ret void
}

declare i64 @strstrip(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @messageGetDispositionType(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 6
  %1 = load i8*, i8** %mimeDispositionType, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeDispositionType1 = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 6
  %3 = load i8*, i8** %mimeDispositionType1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define void @messageAddArgument(%struct.message* %m, i8* %arg) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %arg.addr = alloca i8*, align 8
  %offset = alloca i32, align 4
  %ptr = alloca i8**, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.62

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %3 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %4 to i32
  %and = and i32 %conv1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %arg.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %arg.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %arg.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.end
  br label %if.end.62

if.end.6:                                         ; preds = %while.end
  %8 = load i8*, i8** %arg.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* %8)
  %9 = load i8*, i8** %arg.addr, align 8
  %call7 = call i32 @usefulArg(i8* %9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  br label %if.end.62

if.end.10:                                        ; preds = %if.end.6
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %10 = load i32, i32* %offset, align 4
  %11 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfArguments = getelementptr inbounds %struct.message, %struct.message* %11, i32 0, i32 4
  %12 = load i32, i32* %numberOfArguments, align 4
  %cmp11 = icmp slt i32 %10, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %offset, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments = getelementptr inbounds %struct.message, %struct.message* %14, i32 0, i32 5
  %15 = load i8**, i8*** %mimeArguments, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %15, i64 %idxprom13
  %16 = load i8*, i8** %arrayidx14, align 8
  %cmp15 = icmp eq i8* %16, null
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %17 = load i8*, i8** %arg.addr, align 8
  %18 = load i32, i32* %offset, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments19 = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 5
  %20 = load i8**, i8*** %mimeArguments19, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %20, i64 %idxprom18
  %21 = load i8*, i8** %arrayidx20, align 8
  %call21 = call i32 @strcasecmp(i8* %17, i8* %21) #8
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.else
  br label %if.end.62

if.end.25:                                        ; preds = %if.else
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %22 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.17, %for.cond
  %23 = load i32, i32* %offset, align 4
  %24 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfArguments27 = getelementptr inbounds %struct.message, %struct.message* %24, i32 0, i32 4
  %25 = load i32, i32* %numberOfArguments27, align 4
  %cmp28 = icmp eq i32 %23, %25
  br i1 %cmp28, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %for.end
  %26 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfArguments31 = getelementptr inbounds %struct.message, %struct.message* %26, i32 0, i32 4
  %27 = load i32, i32* %numberOfArguments31, align 4
  %inc32 = add nsw i32 %27, 1
  store i32 %inc32, i32* %numberOfArguments31, align 4
  %28 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments33 = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 5
  %29 = load i8**, i8*** %mimeArguments33, align 8
  %30 = bitcast i8** %29 to i8*
  %31 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfArguments34 = getelementptr inbounds %struct.message, %struct.message* %31, i32 0, i32 4
  %32 = load i32, i32* %numberOfArguments34, align 4
  %conv35 = sext i32 %32 to i64
  %mul = mul i64 %conv35, 8
  %call36 = call i8* @cli_realloc(i8* %30, i64 %mul)
  %33 = bitcast i8* %call36 to i8**
  store i8** %33, i8*** %ptr, align 8
  %34 = load i8**, i8*** %ptr, align 8
  %cmp37 = icmp eq i8** %34, null
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.then.30
  %35 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfArguments40 = getelementptr inbounds %struct.message, %struct.message* %35, i32 0, i32 4
  %36 = load i32, i32* %numberOfArguments40, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, i32* %numberOfArguments40, align 4
  br label %if.end.62

if.end.41:                                        ; preds = %if.then.30
  %37 = load i8**, i8*** %ptr, align 8
  %38 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments42 = getelementptr inbounds %struct.message, %struct.message* %38, i32 0, i32 5
  store i8** %37, i8*** %mimeArguments42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.41, %for.end
  %39 = load i8*, i8** %arg.addr, align 8
  %call44 = call i8* @rfc2231(i8* %39)
  %40 = load i32, i32* %offset, align 4
  %idxprom45 = sext i32 %40 to i64
  %41 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments46 = getelementptr inbounds %struct.message, %struct.message* %41, i32 0, i32 5
  %42 = load i8**, i8*** %mimeArguments46, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %42, i64 %idxprom45
  store i8* %call44, i8** %arrayidx47, align 8
  store i8* %call44, i8** %arg.addr, align 8
  %43 = load i8*, i8** %arg.addr, align 8
  %tobool48 = icmp ne i8* %43, null
  br i1 %tobool48, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %if.end.43
  %44 = load i8*, i8** %arg.addr, align 8
  %call49 = call i32 @strncasecmp(i8* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i64 9) #8
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %45 = load i8*, i8** %arg.addr, align 8
  %call52 = call i32 @strncasecmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i64 5) #8
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %46 = load %struct.message*, %struct.message** %m.addr, align 8
  %call56 = call i32 @messageGetMimeType(%struct.message* %46)
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.then.55
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0))
  %47 = load %struct.message*, %struct.message** %m.addr, align 8
  %call60 = call i32 @messageSetMimeType(%struct.message* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.then.55
  br label %if.end.62

if.end.62:                                        ; preds = %if.then, %if.then.5, %if.then.9, %if.then.24, %if.then.39, %if.end.61, %lor.lhs.false, %if.end.43
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @usefulArg(i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %call = call i32 @strncasecmp(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i64 4) #8
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %arg.addr, align 8
  %call1 = call i32 @strncasecmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i64 8) #8
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %2 = load i8*, i8** %arg.addr, align 8
  %call4 = call i32 @strncasecmp(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i64 8) #8
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.3
  %3 = load i8*, i8** %arg.addr, align 8
  %call7 = call i32 @strncasecmp(i8* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i64 8) #8
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.6
  %4 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 @strncasecmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i64 2) #8
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %5 = load i8*, i8** %arg.addr, align 8
  %call13 = call i32 @strncasecmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0), i64 6) #8
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %6 = load i8*, i8** %arg.addr, align 8
  %call16 = call i32 @strncasecmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0), i64 5) #8
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %7 = load i8*, i8** %arg.addr, align 8
  %call19 = call i32 @strncasecmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i64 4) #8
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.18
  %8 = load i8*, i8** %arg.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.104, i32 0, i32 0), i8* %8)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.18, %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true.6, %land.lhs.true.3, %land.lhs.true, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i8* @cli_realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @rfc2231(i8* %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  %out = alloca i8*, align 8
  %field = alloca i32, align 4
  %byte = alloca i8, align 1
  store i8* %in, i8** %in.addr, align 8
  %0 = load i8*, i8** %in.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0)) #8
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.109, i32 0, i32 0))
  %1 = load i8*, i8** %in.addr, align 8
  %call1 = call i8* @cli_strdup(i8* %1)
  store i8* %call1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %in.addr, align 8
  %call2 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0)) #8
  store i8* %call2, i8** %ptr, align 8
  %3 = load i8*, i8** %ptr, align 8
  %cmp3 = icmp ne i8* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  store i32 2, i32* %field, align 4
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %4 = load i8*, i8** %in.addr, align 8
  %call5 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0)) #8
  store i8* %call5, i8** %ptr, align 8
  store i32 0, i32* %field, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.4
  %5 = load i8*, i8** %ptr, align 8
  %cmp7 = icmp eq i8* %5, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %6 = load i8*, i8** %in.addr, align 8
  %call9 = call i8* @cli_strdup(i8* %6)
  store i8* %call9, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %7 = load i8*, i8** %in.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.112, i32 0, i32 0), i8* %7)
  %8 = load i8*, i8** %in.addr, align 8
  %call11 = call i64 @strlen(i8* %8) #8
  %add = add i64 %call11, 1
  %call12 = call i8* @cli_malloc(i64 %add)
  store i8* %call12, i8** %ret, align 8
  %9 = load i8*, i8** %ret, align 8
  %cmp13 = icmp eq i8* %9, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %10 = load i8*, i8** %ret, align 8
  store i8* %10, i8** %out, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.15
  %11 = load i8*, i8** %in.addr, align 8
  %12 = load i8*, i8** %ptr, align 8
  %cmp16 = icmp ne i8* %11, %12
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i8*, i8** %in.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 8
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** %out, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr17, i8** %out, align 8
  store i8 %14, i8* %15, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i8*, i8** %out, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %out, align 8
  store i8 61, i8* %16, align 1
  br label %while.cond.19

while.cond.19:                                    ; preds = %while.body.23, %while.end
  %17 = load i8*, i8** %ptr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr20, i8** %ptr, align 8
  %18 = load i8, i8* %17, align 1
  %conv = sext i8 %18 to i32
  %cmp21 = icmp ne i32 %conv, 61
  br i1 %cmp21, label %while.body.23, label %while.end.24

while.body.23:                                    ; preds = %while.cond.19
  br label %while.cond.19

while.end.24:                                     ; preds = %while.cond.19
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.80, %while.end.24
  %19 = load i8*, i8** %ptr, align 8
  %20 = load i8, i8* %19, align 1
  %tobool = icmp ne i8 %20, 0
  br i1 %tobool, label %while.body.26, label %while.end.81

while.body.26:                                    ; preds = %while.cond.25
  %21 = load i32, i32* %field, align 4
  switch i32 %21, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.32
    i32 2, label %sw.bb.38
  ]

sw.bb:                                            ; preds = %while.body.26
  %22 = load i8*, i8** %ptr, align 8
  %23 = load i8, i8* %22, align 1
  %conv27 = sext i8 %23 to i32
  %cmp28 = icmp eq i32 %conv27, 39
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %sw.bb
  store i32 1, i32* %field, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %sw.bb
  br label %sw.epilog

sw.bb.32:                                         ; preds = %while.body.26
  %24 = load i8*, i8** %ptr, align 8
  %25 = load i8, i8* %24, align 1
  %conv33 = sext i8 %25 to i32
  %cmp34 = icmp eq i32 %conv33, 39
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb.32
  store i32 2, i32* %field, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %sw.bb.32
  br label %sw.epilog

sw.bb.38:                                         ; preds = %while.body.26
  %26 = load i8*, i8** %ptr, align 8
  %27 = load i8, i8* %26, align 1
  %conv39 = sext i8 %27 to i32
  %cmp40 = icmp eq i32 %conv39, 37
  br i1 %cmp40, label %if.then.42, label %if.else.72

if.then.42:                                       ; preds = %sw.bb.38
  %28 = load i8*, i8** %ptr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr43, i8** %ptr, align 8
  %29 = load i8, i8* %incdec.ptr43, align 1
  %conv44 = sext i8 %29 to i32
  %cmp45 = icmp eq i32 %conv44, 0
  br i1 %cmp45, label %if.then.50, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.42
  %30 = load i8*, i8** %ptr, align 8
  %31 = load i8, i8* %30, align 1
  %conv47 = sext i8 %31 to i32
  %cmp48 = icmp eq i32 %conv47, 10
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %lor.lhs.false, %if.then.42
  br label %sw.epilog

if.end.51:                                        ; preds = %lor.lhs.false
  %32 = load i8*, i8** %ptr, align 8
  %33 = load i8, i8* %32, align 1
  %call52 = call zeroext i8 @hex(i8 signext %33) #7
  store i8 %call52, i8* %byte, align 1
  %34 = load i8*, i8** %ptr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr53, i8** %ptr, align 8
  %35 = load i8, i8* %incdec.ptr53, align 1
  %conv54 = sext i8 %35 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.end.51
  %36 = load i8*, i8** %ptr, align 8
  %37 = load i8, i8* %36, align 1
  %conv58 = sext i8 %37 to i32
  %cmp59 = icmp eq i32 %conv58, 10
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %lor.lhs.false.57, %if.end.51
  %38 = load i8, i8* %byte, align 1
  %39 = load i8*, i8** %out, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr62, i8** %out, align 8
  store i8 %38, i8* %39, align 1
  br label %sw.epilog

if.end.63:                                        ; preds = %lor.lhs.false.57
  %40 = load i8, i8* %byte, align 1
  %conv64 = zext i8 %40 to i32
  %shl = shl i32 %conv64, 4
  %conv65 = trunc i32 %shl to i8
  store i8 %conv65, i8* %byte, align 1
  %41 = load i8*, i8** %ptr, align 8
  %42 = load i8, i8* %41, align 1
  %call66 = call zeroext i8 @hex(i8 signext %42) #7
  %conv67 = zext i8 %call66 to i32
  %43 = load i8, i8* %byte, align 1
  %conv68 = zext i8 %43 to i32
  %add69 = add nsw i32 %conv68, %conv67
  %conv70 = trunc i32 %add69 to i8
  store i8 %conv70, i8* %byte, align 1
  %44 = load i8, i8* %byte, align 1
  %45 = load i8*, i8** %out, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr71, i8** %out, align 8
  store i8 %44, i8* %45, align 1
  br label %if.end.74

if.else.72:                                       ; preds = %sw.bb.38
  %46 = load i8*, i8** %ptr, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %out, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr73, i8** %out, align 8
  store i8 %47, i8* %48, align 1
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.end.63
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.74, %while.body.26, %if.then.61, %if.then.50, %if.end.37, %if.end.31
  %49 = load i8*, i8** %ptr, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr75, i8** %ptr, align 8
  %50 = load i8, i8* %49, align 1
  %conv76 = sext i8 %50 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %sw.epilog
  br label %while.end.81

if.end.80:                                        ; preds = %sw.epilog
  br label %while.cond.25

while.end.81:                                     ; preds = %if.then.79, %while.cond.25
  %51 = load i32, i32* %field, align 4
  %cmp82 = icmp ne i32 %51, 2
  br i1 %cmp82, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %while.end.81
  %52 = load i8*, i8** %ret, align 8
  call void @free(i8* %52) #3
  %53 = load i8*, i8** %in.addr, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.113, i32 0, i32 0), i8* %53)
  %call85 = call i8* @cli_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call85, i8** %retval
  br label %return

if.end.86:                                        ; preds = %while.end.81
  %54 = load i8*, i8** %out, align 8
  store i8 0, i8* %54, align 1
  %55 = load i8*, i8** %ret, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.114, i32 0, i32 0), i8* %55)
  %56 = load i8*, i8** %ret, align 8
  store i8* %56, i8** %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.then.84, %if.then.14, %if.then.8, %if.then
  %57 = load i8*, i8** %retval
  ret i8* %57
}

; Function Attrs: nounwind uwtable
define void @messageAddArguments(%struct.message* %m, i8* %s) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %s.addr = alloca i8*, align 8
  %string = alloca i8*, align 8
  %key = alloca i8*, align 8
  %cptr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %field = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %kcopy = alloca i8*, align 8
  %len = alloca i64, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %string, align 8
  %1 = load i8*, i8** %string, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.114, %if.then.59, %if.then.33, %if.then, %entry
  %2 = load i8*, i8** %string, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end.115

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %string, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %7 to i32
  %and = and i32 %conv1, 8192
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %8 = load i8*, i8** %string, align 8
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv3, 59
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %10 = load i8*, i8** %string, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %string, align 8
  br label %while.cond

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i8*, i8** %string, align 8
  store i8* %11, i8** %key, align 8
  %12 = load i8*, i8** %string, align 8
  %call5 = call i8* @strchr(i8* %12, i32 61) #8
  store i8* %call5, i8** %data, align 8
  %13 = load i8*, i8** %data, align 8
  %cmp6 = icmp eq i8* %13, null
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %14 = load i8*, i8** %string, align 8
  %call9 = call i8* @strchr(i8* %14, i32 58) #8
  store i8* %call9, i8** %data, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %15 = load i8*, i8** %data, align 8
  %cmp11 = icmp eq i8* %15, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %16 = load i8*, i8** %s.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i32 0, i32 0), i8* %16)
  br label %while.end.115

if.end.14:                                        ; preds = %if.end.10
  %17 = load i8*, i8** %data, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %arrayidx15, i8** %string, align 8
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.27, %if.end.14
  %18 = load i8*, i8** %string, align 8
  %19 = load i8, i8* %18, align 1
  %conv17 = sext i8 %19 to i32
  %idxprom18 = sext i32 %conv17 to i64
  %call19 = call i16** @__ctype_b_loc() #7
  %20 = load i16*, i16** %call19, align 8
  %arrayidx20 = getelementptr inbounds i16, i16* %20, i64 %idxprom18
  %21 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %21 to i32
  %and22 = and i32 %conv21, 8192
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.16
  %22 = load i8*, i8** %string, align 8
  %23 = load i8, i8* %22, align 1
  %conv24 = sext i8 %23 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.16
  %24 = phi i1 [ false, %while.cond.16 ], [ %cmp25, %land.rhs ]
  br i1 %24, label %while.body.27, label %while.end

while.body.27:                                    ; preds = %land.end
  %25 = load i8*, i8** %string, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr28, i8** %string, align 8
  br label %while.cond.16

while.end:                                        ; preds = %land.end
  %26 = load i8*, i8** %string, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr29, i8** %string, align 8
  store i8* %26, i8** %cptr, align 8
  %27 = load i8*, i8** %key, align 8
  %call30 = call i64 @strlen(i8* %27) #8
  %cmp31 = icmp eq i64 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %while.end
  br label %while.cond

if.end.34:                                        ; preds = %while.end
  %28 = load i8*, i8** %cptr, align 8
  %29 = load i8, i8* %28, align 1
  %conv35 = sext i8 %29 to i32
  %cmp36 = icmp eq i32 %conv35, 34
  br i1 %cmp36, label %if.then.38, label %if.else.81

if.then.38:                                       ; preds = %if.end.34
  %30 = load i8*, i8** %key, align 8
  %call39 = call i8* @cli_strdup(i8* %30)
  store i8* %call39, i8** %kcopy, align 8
  %31 = load i8*, i8** %kcopy, align 8
  %cmp40 = icmp eq i8* %31, null
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.38
  br label %while.end.115

if.end.43:                                        ; preds = %if.then.38
  %32 = load i8*, i8** %kcopy, align 8
  %call44 = call i8* @strchr(i8* %32, i32 61) #8
  store i8* %call44, i8** %ptr, align 8
  %33 = load i8*, i8** %ptr, align 8
  %cmp45 = icmp eq i8* %33, null
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.43
  %34 = load i8*, i8** %kcopy, align 8
  %call48 = call i8* @strchr(i8* %34, i32 58) #8
  store i8* %call48, i8** %ptr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.43
  %35 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %cptr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr50, i8** %cptr, align 8
  %call51 = call i8* @strchr(i8* %incdec.ptr50, i32 34) #8
  store i8* %call51, i8** %string, align 8
  %37 = load i8*, i8** %string, align 8
  %cmp52 = icmp eq i8* %37, null
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.end.49
  %38 = load i8*, i8** %s.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8* %38)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8** %string, align 8
  br label %if.end.56

if.else:                                          ; preds = %if.end.49
  %39 = load i8*, i8** %string, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr55, i8** %string, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.54
  %40 = load i8*, i8** %kcopy, align 8
  %call57 = call i32 @usefulArg(i8* %40)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.56
  %41 = load i8*, i8** %kcopy, align 8
  call void @free(i8* %41) #3
  br label %while.cond

if.end.60:                                        ; preds = %if.end.56
  %42 = load i8*, i8** %cptr, align 8
  %call61 = call i8* @cli_strdup(i8* %42)
  store i8* %call61, i8** %data, align 8
  %43 = load i8*, i8** %data, align 8
  %tobool62 = icmp ne i8* %43, null
  br i1 %tobool62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.60
  %44 = load i8*, i8** %data, align 8
  %call63 = call i8* @strchr(i8* %44, i32 34) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end.60
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call63, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %ptr, align 8
  %45 = load i8*, i8** %ptr, align 8
  %cmp64 = icmp eq i8* %45, null
  br i1 %cmp64, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %cond.end
  %46 = load i8*, i8** %s.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.17, i32 0, i32 0), i8* %46)
  %47 = load i8*, i8** %data, align 8
  %tobool67 = icmp ne i8* %47, null
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.66
  %48 = load i8*, i8** %data, align 8
  call void @free(i8* %48) #3
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.then.66
  %49 = load i8*, i8** %kcopy, align 8
  call void @free(i8* %49) #3
  br label %while.end.115

if.end.70:                                        ; preds = %cond.end
  %50 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %kcopy, align 8
  %52 = load i8*, i8** %kcopy, align 8
  %call71 = call i64 @strlen(i8* %52) #8
  %53 = load i8*, i8** %data, align 8
  %call72 = call i64 @strlen(i8* %53) #8
  %add = add i64 %call71, %call72
  %add73 = add i64 %add, 2
  %call74 = call i8* @cli_realloc(i8* %51, i64 %add73)
  store i8* %call74, i8** %field, align 8
  %54 = load i8*, i8** %field, align 8
  %tobool75 = icmp ne i8* %54, null
  br i1 %tobool75, label %if.then.76, label %if.else.79

if.then.76:                                       ; preds = %if.end.70
  %55 = load i8*, i8** %field, align 8
  %call77 = call i8* @strcat(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #3
  %56 = load i8*, i8** %field, align 8
  %57 = load i8*, i8** %data, align 8
  %call78 = call i8* @strcat(i8* %56, i8* %57) #3
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.70
  %58 = load i8*, i8** %kcopy, align 8
  call void @free(i8* %58) #3
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.76
  %59 = load i8*, i8** %data, align 8
  call void @free(i8* %59) #3
  br label %if.end.111

if.else.81:                                       ; preds = %if.end.34
  %60 = load i8*, i8** %cptr, align 8
  %61 = load i8, i8* %60, align 1
  %conv82 = sext i8 %61 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.else.81
  %62 = load i8*, i8** %s.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* %62)
  br label %while.end.115

if.end.86:                                        ; preds = %if.else.81
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.100, %if.end.86
  %63 = load i8*, i8** %string, align 8
  %64 = load i8, i8* %63, align 1
  %conv88 = sext i8 %64 to i32
  %cmp89 = icmp ne i32 %conv88, 0
  br i1 %cmp89, label %land.rhs.91, label %land.end.99

land.rhs.91:                                      ; preds = %while.cond.87
  %65 = load i8*, i8** %string, align 8
  %66 = load i8, i8* %65, align 1
  %conv92 = sext i8 %66 to i32
  %idxprom93 = sext i32 %conv92 to i64
  %call94 = call i16** @__ctype_b_loc() #7
  %67 = load i16*, i16** %call94, align 8
  %arrayidx95 = getelementptr inbounds i16, i16* %67, i64 %idxprom93
  %68 = load i16, i16* %arrayidx95, align 2
  %conv96 = zext i16 %68 to i32
  %and97 = and i32 %conv96, 8192
  %tobool98 = icmp ne i32 %and97, 0
  %lnot = xor i1 %tobool98, true
  br label %land.end.99

land.end.99:                                      ; preds = %land.rhs.91, %while.cond.87
  %69 = phi i1 [ false, %while.cond.87 ], [ %lnot, %land.rhs.91 ]
  br i1 %69, label %while.body.100, label %while.end.102

while.body.100:                                   ; preds = %land.end.99
  %70 = load i8*, i8** %string, align 8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr101, i8** %string, align 8
  br label %while.cond.87

while.end.102:                                    ; preds = %land.end.99
  %71 = load i8*, i8** %string, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load i8*, i8** %key, align 8
  %74 = ptrtoint i8* %73 to i64
  %sub = sub i64 %72, %74
  %add103 = add i64 %sub, 1
  store i64 %add103, i64* %len, align 8
  %75 = load i64, i64* %len, align 8
  %call104 = call i8* @cli_malloc(i64 %75)
  store i8* %call104, i8** %field, align 8
  %76 = load i8*, i8** %field, align 8
  %tobool105 = icmp ne i8* %76, null
  br i1 %tobool105, label %if.then.106, label %if.end.110

if.then.106:                                      ; preds = %while.end.102
  %77 = load i8*, i8** %field, align 8
  %78 = load i8*, i8** %key, align 8
  %79 = load i64, i64* %len, align 8
  %sub107 = sub i64 %79, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 %sub107, i32 1, i1 false)
  %80 = load i64, i64* %len, align 8
  %sub108 = sub i64 %80, 1
  %81 = load i8*, i8** %field, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %81, i64 %sub108
  store i8 0, i8* %arrayidx109, align 1
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.106, %while.end.102
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.80
  %82 = load i8*, i8** %field, align 8
  %tobool112 = icmp ne i8* %82, null
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.end.111
  %83 = load %struct.message*, %struct.message** %m.addr, align 8
  %84 = load i8*, i8** %field, align 8
  call void @messageAddArgument(%struct.message* %83, i8* %84)
  %85 = load i8*, i8** %field, align 8
  call void @free(i8* %85) #3
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %if.end.111
  br label %while.cond

while.end.115:                                    ; preds = %if.then.13, %if.then.42, %if.end.69, %if.then.85, %while.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i8* @messageFindArgument(%struct.message* %m, i8* %variable) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.message*, align 8
  %variable.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %variable, i8** %variable.addr, align 8
  %0 = load i8*, i8** %variable.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  store i64 %call, i64* %len, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfArguments = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 4
  %3 = load i32, i32* %numberOfArguments, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call1 = call i8* @messageGetArgument(%struct.message* %4, i32 %5)
  store i8* %call1, i8** %ptr, align 8
  %6 = load i8*, i8** %ptr, align 8
  %cmp2 = icmp eq i8* %6, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i8*, i8** %ptr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i8*, i8** %ptr, align 8
  %10 = load i8*, i8** %variable.addr, align 8
  %11 = load i64, i64* %len, align 8
  %call5 = call i32 @strncasecmp(i8* %9, i8* %10, i64 %11) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.43

if.then.8:                                        ; preds = %if.end
  %12 = load i64, i64* %len, align 8
  %13 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %12
  store i8* %arrayidx, i8** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.8
  %14 = load i8*, i8** %ptr, align 8
  %15 = load i8, i8* %14, align 1
  %conv9 = sext i8 %15 to i32
  %idxprom = sext i32 %conv9 to i64
  %call10 = call i16** @__ctype_b_loc() #7
  %16 = load i16*, i16** %call10, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %16, i64 %idxprom
  %17 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %17 to i32
  %and = and i32 %conv12, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i8*, i8** %ptr, align 8
  %20 = load i8, i8* %19, align 1
  %conv13 = sext i8 %20 to i32
  %cmp14 = icmp ne i32 %conv13, 61
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %while.end
  %21 = load i8*, i8** %variable.addr, align 8
  %22 = load %struct.message*, %struct.message** %m.addr, align 8
  %23 = load i32, i32* %i, align 4
  %call17 = call i8* @messageGetArgument(%struct.message* %22, i32 %23)
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.20, i32 0, i32 0), i8* %21, i8* %call17)
  store i8* null, i8** %retval
  br label %return

if.end.18:                                        ; preds = %while.end
  %24 = load i8*, i8** %ptr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr19, i8** %ptr, align 8
  %25 = load i8, i8* %incdec.ptr19, align 1
  %conv20 = sext i8 %25 to i32
  %cmp21 = icmp eq i32 %conv20, 34
  br i1 %cmp21, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.end.18
  %26 = load i8*, i8** %ptr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %26, i64 1
  %call24 = call i8* @strchr(i8* %arrayidx23, i32 34) #8
  %cmp25 = icmp ne i8* %call24, null
  br i1 %cmp25, label %if.then.27, label %if.end.41

if.then.27:                                       ; preds = %land.lhs.true
  %27 = load i8*, i8** %ptr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr28, i8** %ptr, align 8
  %call29 = call i8* @cli_strdup(i8* %incdec.ptr28)
  store i8* %call29, i8** %ret, align 8
  %28 = load i8*, i8** %ret, align 8
  %cmp30 = icmp eq i8* %28, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.27
  store i8* null, i8** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.27
  %29 = load i8*, i8** %ret, align 8
  %call34 = call i8* @strchr(i8* %29, i32 34) #8
  store i8* %call34, i8** %p, align 8
  %cmp35 = icmp ne i8* %call34, null
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.33
  %30 = load i8*, i8** %ret, align 8
  %call38 = call i64 @strlen(i8* %30) #8
  %sub = sub i64 %call38, 1
  %31 = load i8*, i8** %ret, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %31, i64 %sub
  store i8 0, i8* %arrayidx39, align 1
  %32 = load i8*, i8** %p, align 8
  store i8 0, i8* %32, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.33
  %33 = load i8*, i8** %ret, align 8
  store i8* %33, i8** %retval
  br label %return

if.end.41:                                        ; preds = %land.lhs.true, %if.end.18
  %34 = load i8*, i8** %ptr, align 8
  %call42 = call i8* @cli_strdup(i8* %34)
  store i8* %call42, i8** %retval
  br label %return

if.end.43:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.43, %if.then
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.41, %if.end.40, %if.then.32, %if.then.16
  %36 = load i8*, i8** %retval
  ret i8* %36
}

; Function Attrs: nounwind uwtable
define internal i8* @messageGetArgument(%struct.message* %m, i32 %arg) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %arg.addr = alloca i32, align 4
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i32 %arg, i32* %arg.addr, align 4
  %0 = load i32, i32* %arg.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments = getelementptr inbounds %struct.message, %struct.message* %1, i32 0, i32 5
  %2 = load i8**, i8*** %mimeArguments, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %arg.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.message*, %struct.message** %m.addr, align 8
  %mimeArguments2 = getelementptr inbounds %struct.message, %struct.message* %5, i32 0, i32 5
  %6 = load i8**, i8*** %mimeArguments2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx3, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define i8* @messageGetFilename(%struct.message* %m) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.message*, align 8
  %filename = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %call = call i8* @messageFindArgument(%struct.message* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  store i8* %call, i8** %filename, align 8
  %1 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %filename, align 8
  store i8* %2, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.message*, %struct.message** %m.addr, align 8
  %call1 = call i8* @messageFindArgument(%struct.message* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  store i8* %call1, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define i32 @messageHasFilename(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %call = call i32 @messageHasArgument(%struct.message* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load %struct.message*, %struct.message** %m.addr, align 8
  %call1 = call i32 @messageHasArgument(%struct.message* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @messageHasArgument(%struct.message* %m, i8* %variable) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %variable.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  %ptr = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %variable, i8** %variable.addr, align 8
  %0 = load i8*, i8** %variable.addr, align 8
  %call = call i64 @strlen(i8* %0) #8
  store i64 %call, i64* %len, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfArguments = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 4
  %3 = load i32, i32* %numberOfArguments, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call1 = call i8* @messageGetArgument(%struct.message* %4, i32 %5)
  store i8* %call1, i8** %ptr, align 8
  %6 = load i8*, i8** %ptr, align 8
  %cmp2 = icmp eq i8* %6, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i8*, i8** %ptr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i8*, i8** %ptr, align 8
  %10 = load i8*, i8** %variable.addr, align 8
  %11 = load i64, i64* %len, align 8
  %call5 = call i32 @strncasecmp(i8* %9, i8* %10, i64 %11) #8
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.end
  %12 = load i64, i64* %len, align 8
  %13 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %12
  store i8* %arrayidx, i8** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.8
  %14 = load i8*, i8** %ptr, align 8
  %15 = load i8, i8* %14, align 1
  %conv9 = sext i8 %15 to i32
  %idxprom = sext i32 %conv9 to i64
  %call10 = call i16** @__ctype_b_loc() #7
  %16 = load i16*, i16** %call10, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %16, i64 %idxprom
  %17 = load i16, i16* %arrayidx11, align 2
  %conv12 = zext i16 %17 to i32
  %and = and i32 %conv12, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i8*, i8** %ptr, align 8
  %20 = load i8, i8* %19, align 1
  %conv13 = sext i8 %20 to i32
  %cmp14 = icmp ne i32 %conv13, 61
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %while.end
  %21 = load i8*, i8** %variable.addr, align 8
  %22 = load %struct.message*, %struct.message** %m.addr, align 8
  %23 = load i32, i32* %i, align 4
  %call17 = call i8* @messageGetArgument(%struct.message* %22, i32 %23)
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.57, i32 0, i32 0), i8* %21, i8* %call17)
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.19, %if.then
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.18, %if.then.16
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define void @messageSetEncoding(%struct.message* %m, i8* %enctype) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %enctype.addr = alloca i8*, align 8
  %e = alloca %struct.encoding_map*, align 8
  %i = alloca i32, align 4
  %type = alloca i8*, align 8
  %highestSimil = alloca i32, align 4
  %closest = alloca i8*, align 8
  %sim = alloca i32, align 4
  %lowertype = alloca i8, align 1
  %j = alloca i32, align 4
  %et = alloca i32*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %enctype, i8** %enctype.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %enctype.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %enctype.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %enctype.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %enctype.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i32 0, i32 0), i8* %5)
  %6 = load i8*, i8** %enctype.addr, align 8
  %call2 = call i32 @strcasecmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #8
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.26, i32 0, i32 0))
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8** %enctype.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  store i32 0, i32* %i, align 4
  br label %while.cond.4

while.cond.4:                                     ; preds = %if.end.88, %if.end
  %7 = load i8*, i8** %enctype.addr, align 8
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  %call5 = call i8* @cli_strtok(i8* %7, i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  store i8* %call5, i8** %type, align 8
  %cmp6 = icmp ne i8* %call5, null
  br i1 %cmp6, label %while.body.8, label %while.end.89

while.body.8:                                     ; preds = %while.cond.4
  store i32 0, i32* %highestSimil, align 4
  store i8* null, i8** %closest, align 8
  store %struct.encoding_map* getelementptr inbounds ([13 x %struct.encoding_map], [13 x %struct.encoding_map]* @encoding_map, i32 0, i32 0), %struct.encoding_map** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.76, %while.body.8
  %9 = load %struct.encoding_map*, %struct.encoding_map** %e, align 8
  %string = getelementptr inbounds %struct.encoding_map, %struct.encoding_map* %9, i32 0, i32 0
  %10 = load i8*, i8** %string, align 8
  %tobool9 = icmp ne i8* %10, null
  br i1 %tobool9, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %type, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %12 to i32
  %call12 = call i32 @tolower(i32 %conv11) #3
  %conv13 = trunc i32 %call12 to i8
  store i8 %conv13, i8* %lowertype, align 1
  %13 = load i8, i8* %lowertype, align 1
  %conv14 = sext i8 %13 to i32
  %14 = load %struct.encoding_map*, %struct.encoding_map** %e, align 8
  %string15 = getelementptr inbounds %struct.encoding_map, %struct.encoding_map* %14, i32 0, i32 0
  %15 = load i8*, i8** %string15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %16 to i32
  %call18 = call i32 @tolower(i32 %conv17) #3
  %cmp19 = icmp ne i32 %conv14, %call18
  br i1 %cmp19, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.body
  %17 = load i8, i8* %lowertype, align 1
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp ne i32 %conv21, 120
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true
  br label %for.inc.76

if.end.25:                                        ; preds = %land.lhs.true, %for.body
  %18 = load %struct.encoding_map*, %struct.encoding_map** %e, align 8
  %string26 = getelementptr inbounds %struct.encoding_map, %struct.encoding_map* %18, i32 0, i32 0
  %19 = load i8*, i8** %string26, align 8
  %call27 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #8
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  br label %for.inc.76

if.end.31:                                        ; preds = %if.end.25
  %20 = load i8*, i8** %type, align 8
  %21 = load %struct.encoding_map*, %struct.encoding_map** %e, align 8
  %string32 = getelementptr inbounds %struct.encoding_map, %struct.encoding_map* %21, i32 0, i32 0
  %22 = load i8*, i8** %string32, align 8
  %call33 = call i32 @simil(i8* %20, i8* %22)
  store i32 %call33, i32* %sim, align 4
  %23 = load i32, i32* %sim, align 4
  %cmp34 = icmp eq i32 %23, 100
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end.31
  store i32 0, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %if.then.36
  %24 = load i32, i32* %j, align 4
  %25 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes = getelementptr inbounds %struct.message, %struct.message* %25, i32 0, i32 2
  %26 = load i32, i32* %numberOfEncTypes, align 4
  %cmp38 = icmp slt i32 %24, %26
  br i1 %cmp38, label %for.body.40, label %for.end

for.body.40:                                      ; preds = %for.cond.37
  %27 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %27 to i64
  %28 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 1
  %29 = load i32*, i32** %encodingTypes, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %29, i64 %idxprom41
  %30 = load i32, i32* %arrayidx42, align 4
  %31 = load %struct.encoding_map*, %struct.encoding_map** %e, align 8
  %type43 = getelementptr inbounds %struct.encoding_map, %struct.encoding_map* %31, i32 0, i32 1
  %32 = load i32, i32* %type43, align 4
  %cmp44 = icmp eq i32 %30, %32
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.body.40
  br label %for.end

if.end.47:                                        ; preds = %for.body.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %33 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %33, 1
  store i32 %inc48, i32* %j, align 4
  br label %for.cond.37

for.end:                                          ; preds = %if.then.46, %for.cond.37
  %34 = load i32, i32* %j, align 4
  %35 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes49 = getelementptr inbounds %struct.message, %struct.message* %35, i32 0, i32 2
  %36 = load i32, i32* %numberOfEncTypes49, align 4
  %cmp50 = icmp slt i32 %34, %36
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %for.end
  %37 = load i8*, i8** %type, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.30, i32 0, i32 0), i8* %37)
  br label %for.end.78

if.end.53:                                        ; preds = %for.end
  %38 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes54 = getelementptr inbounds %struct.message, %struct.message* %38, i32 0, i32 1
  %39 = load i32*, i32** %encodingTypes54, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes55 = getelementptr inbounds %struct.message, %struct.message* %41, i32 0, i32 2
  %42 = load i32, i32* %numberOfEncTypes55, align 4
  %add = add nsw i32 %42, 1
  %conv56 = sext i32 %add to i64
  %mul = mul i64 %conv56, 4
  %call57 = call i8* @cli_realloc(i8* %40, i64 %mul)
  %43 = bitcast i8* %call57 to i32*
  store i32* %43, i32** %et, align 8
  %44 = load i32*, i32** %et, align 8
  %cmp58 = icmp eq i32* %44, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.53
  br label %for.end.78

if.end.61:                                        ; preds = %if.end.53
  %45 = load i32*, i32** %et, align 8
  %46 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes62 = getelementptr inbounds %struct.message, %struct.message* %46, i32 0, i32 1
  store i32* %45, i32** %encodingTypes62, align 8
  %47 = load %struct.encoding_map*, %struct.encoding_map** %e, align 8
  %type63 = getelementptr inbounds %struct.encoding_map, %struct.encoding_map* %47, i32 0, i32 1
  %48 = load i32, i32* %type63, align 4
  %49 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes64 = getelementptr inbounds %struct.message, %struct.message* %49, i32 0, i32 2
  %50 = load i32, i32* %numberOfEncTypes64, align 4
  %inc65 = add nsw i32 %50, 1
  store i32 %inc65, i32* %numberOfEncTypes64, align 4
  %idxprom66 = sext i32 %50 to i64
  %51 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes67 = getelementptr inbounds %struct.message, %struct.message* %51, i32 0, i32 1
  %52 = load i32*, i32** %encodingTypes67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %52, i64 %idxprom66
  store i32 %48, i32* %arrayidx68, align 4
  %53 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes69 = getelementptr inbounds %struct.message, %struct.message* %53, i32 0, i32 2
  %54 = load i32, i32* %numberOfEncTypes69, align 4
  %55 = load i8*, i8** %type, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), i32 %54, i8* %55)
  br label %for.end.78

if.else:                                          ; preds = %if.end.31
  %56 = load i32, i32* %sim, align 4
  %57 = load i32, i32* %highestSimil, align 4
  %cmp70 = icmp sgt i32 %56, %57
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.else
  %58 = load %struct.encoding_map*, %struct.encoding_map** %e, align 8
  %string73 = getelementptr inbounds %struct.encoding_map, %struct.encoding_map* %58, i32 0, i32 0
  %59 = load i8*, i8** %string73, align 8
  store i8* %59, i8** %closest, align 8
  %60 = load i32, i32* %sim, align 4
  store i32 %60, i32* %highestSimil, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.else
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75, %if.then.30, %if.then.24
  %61 = load %struct.encoding_map*, %struct.encoding_map** %e, align 8
  %incdec.ptr77 = getelementptr inbounds %struct.encoding_map, %struct.encoding_map* %61, i32 1
  store %struct.encoding_map* %incdec.ptr77, %struct.encoding_map** %e, align 8
  br label %for.cond

for.end.78:                                       ; preds = %if.end.61, %if.then.60, %if.then.52, %for.cond
  %62 = load %struct.encoding_map*, %struct.encoding_map** %e, align 8
  %string79 = getelementptr inbounds %struct.encoding_map, %struct.encoding_map* %62, i32 0, i32 0
  %63 = load i8*, i8** %string79, align 8
  %cmp80 = icmp eq i8* %63, null
  br i1 %cmp80, label %if.then.82, label %if.end.88

if.then.82:                                       ; preds = %for.end.78
  %64 = load i32, i32* %highestSimil, align 4
  %cmp83 = icmp sge i32 %64, 50
  br i1 %cmp83, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %if.then.82
  %65 = load i8*, i8** %type, align 8
  %66 = load i8*, i8** %closest, align 8
  %67 = load i32, i32* %highestSimil, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.32, i32 0, i32 0), i8* %65, i8* %66, i32 %67)
  %68 = load %struct.message*, %struct.message** %m.addr, align 8
  %69 = load i8*, i8** %closest, align 8
  call void @messageSetEncoding(%struct.message* %68, i8* %69)
  br label %if.end.87

if.else.86:                                       ; preds = %if.then.82
  %70 = load i8*, i8** %type, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.33, i32 0, i32 0), i8* %70)
  %71 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageSetEncoding(%struct.message* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0))
  %72 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageSetEncoding(%struct.message* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.86, %if.then.85
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %for.end.78
  %73 = load i8*, i8** %type, align 8
  call void @free(i8* %73) #3
  br label %while.cond.4

while.end.89:                                     ; preds = %while.cond.4
  ret void
}

declare i8* @cli_strtok(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i32 @tolower(i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @messageGetEncoding(%struct.message* %m) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 2
  %1 = load i32, i32* %numberOfEncTypes, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 1
  %3 = load i32*, i32** %encodingTypes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @messageAddLine(%struct.message* %m, i8* %line) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %line.addr = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 7
  %1 = load %struct.text*, %struct.text** %body_first, align 8
  %cmp = icmp eq %struct.text* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i8* @cli_malloc(i64 16)
  %2 = bitcast i8* %call to %struct.text*
  %3 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first1 = getelementptr inbounds %struct.message, %struct.message* %3, i32 0, i32 7
  store %struct.text* %2, %struct.text** %body_first1, align 8
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last = getelementptr inbounds %struct.message, %struct.message* %4, i32 0, i32 8
  store %struct.text* %2, %struct.text** %body_last, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i8* @cli_malloc(i64 16)
  %5 = bitcast i8* %call2 to %struct.text*
  %6 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last3 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 8
  %7 = load %struct.text*, %struct.text** %body_last3, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %7, i32 0, i32 1
  store %struct.text* %5, %struct.text** %t_next, align 8
  %8 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last4 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 8
  %9 = load %struct.text*, %struct.text** %body_last4, align 8
  %t_next5 = getelementptr inbounds %struct.text, %struct.text* %9, i32 0, i32 1
  %10 = load %struct.text*, %struct.text** %t_next5, align 8
  %11 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last6 = getelementptr inbounds %struct.message, %struct.message* %11, i32 0, i32 8
  store %struct.text* %10, %struct.text** %body_last6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last7 = getelementptr inbounds %struct.message, %struct.message* %12, i32 0, i32 8
  %13 = load %struct.text*, %struct.text** %body_last7, align 8
  %cmp8 = icmp eq %struct.text* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %14 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last11 = getelementptr inbounds %struct.message, %struct.message* %14, i32 0, i32 8
  %15 = load %struct.text*, %struct.text** %body_last11, align 8
  %t_next12 = getelementptr inbounds %struct.text, %struct.text* %15, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next12, align 8
  %16 = load i8*, i8** %line.addr, align 8
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %land.lhs.true, label %if.else.18

land.lhs.true:                                    ; preds = %if.end.10
  %17 = load i8*, i8** %line.addr, align 8
  %call13 = call i8* @lineGetData(i8* %17)
  %tobool14 = icmp ne i8* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %land.lhs.true
  %18 = load i8*, i8** %line.addr, align 8
  %call16 = call i8* @lineLink(i8* %18)
  %19 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last17 = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 8
  %20 = load %struct.text*, %struct.text** %body_last17, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %20, i32 0, i32 0
  store i8* %call16, i8** %t_line, align 8
  %21 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageIsEncoding(%struct.message* %21)
  br label %if.end.21

if.else.18:                                       ; preds = %land.lhs.true, %if.end.10
  %22 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last19 = getelementptr inbounds %struct.message, %struct.message* %22, i32 0, i32 8
  %23 = load %struct.text*, %struct.text** %body_last19, align 8
  %t_line20 = getelementptr inbounds %struct.text, %struct.text* %23, i32 0, i32 0
  store i8* null, i8** %t_line20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.15
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.9
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i8* @lineGetData(i8*) #1

declare i8* @lineLink(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @messageIsEncoding(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %line = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 8
  %1 = load %struct.text*, %struct.text** %body_last, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %1, i32 0, i32 0
  %2 = load i8*, i8** %t_line, align 8
  %call = call i8* @lineGetData(i8* %2)
  store i8* %call, i8** %line, align 8
  %3 = load %struct.message*, %struct.message** %m.addr, align 8
  %encoding = getelementptr inbounds %struct.message, %struct.message* %3, i32 0, i32 18
  %4 = load %struct.text*, %struct.text** %encoding, align 8
  %cmp = icmp eq %struct.text* %4, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %line, align 8
  %call1 = call i32 @strncasecmp(i8* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @messageIsEncoding.encoding, i32 0, i32 0), i64 25) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load i8*, i8** %line, align 8
  %call4 = call i8* @strstr(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0)) #8
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3
  %7 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last6 = getelementptr inbounds %struct.message, %struct.message* %7, i32 0, i32 8
  %8 = load %struct.text*, %struct.text** %body_last6, align 8
  %9 = load %struct.message*, %struct.message** %m.addr, align 8
  %encoding7 = getelementptr inbounds %struct.message, %struct.message* %9, i32 0, i32 18
  store %struct.text* %8, %struct.text** %encoding7, align 8
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %10 = load %struct.message*, %struct.message** %m.addr, align 8
  %bounce = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 15
  %11 = load %struct.text*, %struct.text** %bounce, align 8
  %cmp8 = icmp eq %struct.text* %11, null
  br i1 %cmp8, label %land.lhs.true.9, label %if.else.19

land.lhs.true.9:                                  ; preds = %if.else
  %12 = load i8*, i8** %line, align 8
  %call10 = call i32 @strncasecmp(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i32 0, i32 0), i64 10) #8
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.19

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %13 = load i8*, i8** %line, align 8
  %14 = load i8*, i8** %line, align 8
  %call13 = call i64 @strlen(i8* %14) #8
  %call14 = call i32 @cli_filetype(i8* %13, i64 %call13)
  %cmp15 = icmp eq i32 %call14, 529
  br i1 %cmp15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %land.lhs.true.12
  %15 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last17 = getelementptr inbounds %struct.message, %struct.message* %15, i32 0, i32 8
  %16 = load %struct.text*, %struct.text** %body_last17, align 8
  %17 = load %struct.message*, %struct.message** %m.addr, align 8
  %bounce18 = getelementptr inbounds %struct.message, %struct.message* %17, i32 0, i32 15
  store %struct.text* %16, %struct.text** %bounce18, align 8
  br label %if.end.38

if.else.19:                                       ; preds = %land.lhs.true.12, %land.lhs.true.9, %if.else
  %18 = load %struct.message*, %struct.message** %m.addr, align 8
  %binhex = getelementptr inbounds %struct.message, %struct.message* %18, i32 0, i32 16
  %19 = load %struct.text*, %struct.text** %binhex, align 8
  %cmp20 = icmp eq %struct.text* %19, null
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.29

land.lhs.true.21:                                 ; preds = %if.else.19
  %20 = load i8*, i8** %line, align 8
  %call22 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0)) #8
  %tobool = icmp ne i8* %call22, null
  br i1 %tobool, label %land.lhs.true.23, label %if.else.29

land.lhs.true.23:                                 ; preds = %land.lhs.true.21
  %21 = load i8*, i8** %line, align 8
  %call24 = call i32 @simil(i8* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @messageIsEncoding.binhex, i32 0, i32 0))
  %cmp25 = icmp sgt i32 %call24, 90
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %land.lhs.true.23
  %22 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last27 = getelementptr inbounds %struct.message, %struct.message* %22, i32 0, i32 8
  %23 = load %struct.text*, %struct.text** %body_last27, align 8
  %24 = load %struct.message*, %struct.message** %m.addr, align 8
  %binhex28 = getelementptr inbounds %struct.message, %struct.message* %24, i32 0, i32 16
  store %struct.text* %23, %struct.text** %binhex28, align 8
  br label %if.end.37

if.else.29:                                       ; preds = %land.lhs.true.23, %land.lhs.true.21, %if.else.19
  %25 = load %struct.message*, %struct.message** %m.addr, align 8
  %yenc = getelementptr inbounds %struct.message, %struct.message* %25, i32 0, i32 17
  %26 = load %struct.text*, %struct.text** %yenc, align 8
  %cmp30 = icmp eq %struct.text* %26, null
  br i1 %cmp30, label %land.lhs.true.31, label %if.end

land.lhs.true.31:                                 ; preds = %if.else.29
  %27 = load i8*, i8** %line, align 8
  %call32 = call i32 @strncmp(i8* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i32 0, i32 0), i64 13) #8
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %land.lhs.true.31
  %28 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last35 = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 8
  %29 = load %struct.text*, %struct.text** %body_last35, align 8
  %30 = load %struct.message*, %struct.message** %m.addr, align 8
  %yenc36 = getelementptr inbounds %struct.message, %struct.message* %30, i32 0, i32 17
  store %struct.text* %29, %struct.text** %yenc36, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.34, %land.lhs.true.31, %if.else.29
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.26
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.16
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @messageAddStr(%struct.message* %m, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %data.addr = alloca i8*, align 8
  %repeat = alloca i8*, align 8
  %iswhite = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* null, i8** %repeat, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i8* null, i8** %data.addr, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.then
  store i32 1, i32* %iswhite, align 4
  %3 = load i8*, i8** %data.addr, align 8
  store i8* %3, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %tobool3 = icmp ne i8 %5, 0
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %and = and i32 %conv4, 128
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv6 = sext i8 %9 to i32
  %idxprom = sext i32 %conv6 to i64
  %call = call i16** @__ctype_b_loc() #7
  %10 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv7 = zext i16 %11 to i32
  %and8 = and i32 %conv7, 8192
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %iswhite, align 4
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %13 = load i32, i32* %iswhite, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0), i8** %data.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.end
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.2
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %entry
  %14 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first = getelementptr inbounds %struct.message, %struct.message* %14, i32 0, i32 7
  %15 = load %struct.text*, %struct.text** %body_first, align 8
  %cmp16 = icmp eq %struct.text* %15, null
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.end.15
  %call19 = call i8* @cli_malloc(i64 16)
  %16 = bitcast i8* %call19 to %struct.text*
  %17 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first20 = getelementptr inbounds %struct.message, %struct.message* %17, i32 0, i32 7
  store %struct.text* %16, %struct.text** %body_first20, align 8
  %18 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last = getelementptr inbounds %struct.message, %struct.message* %18, i32 0, i32 8
  store %struct.text* %16, %struct.text** %body_last, align 8
  br label %if.end.70

if.else.21:                                       ; preds = %if.end.15
  %19 = load i8*, i8** %data.addr, align 8
  %cmp22 = icmp eq i8* %19, null
  br i1 %cmp22, label %land.lhs.true, label %if.end.33

land.lhs.true:                                    ; preds = %if.else.21
  %20 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last24 = getelementptr inbounds %struct.message, %struct.message* %20, i32 0, i32 8
  %21 = load %struct.text*, %struct.text** %body_last24, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %21, i32 0, i32 0
  %22 = load i8*, i8** %t_line, align 8
  %cmp25 = icmp eq i8* %22, null
  br i1 %cmp25, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %land.lhs.true
  %23 = load %struct.message*, %struct.message** %m.addr, align 8
  %call28 = call i32 @messageGetMimeType(%struct.message* %23)
  %cmp29 = icmp ne i32 %call28, 6
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.27
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %land.lhs.true, %if.else.21
  %call34 = call i8* @cli_malloc(i64 16)
  %24 = bitcast i8* %call34 to %struct.text*
  %25 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last35 = getelementptr inbounds %struct.message, %struct.message* %25, i32 0, i32 8
  %26 = load %struct.text*, %struct.text** %body_last35, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %26, i32 0, i32 1
  store %struct.text* %24, %struct.text** %t_next, align 8
  %27 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last36 = getelementptr inbounds %struct.message, %struct.message* %27, i32 0, i32 8
  %28 = load %struct.text*, %struct.text** %body_last36, align 8
  %t_next37 = getelementptr inbounds %struct.text, %struct.text* %28, i32 0, i32 1
  %29 = load %struct.text*, %struct.text** %t_next37, align 8
  %cmp38 = icmp eq %struct.text* %29, null
  br i1 %cmp38, label %if.then.40, label %if.end.50

if.then.40:                                       ; preds = %if.end.33
  %30 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageDedup(%struct.message* %30)
  %call41 = call i8* @cli_malloc(i64 16)
  %31 = bitcast i8* %call41 to %struct.text*
  %32 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last42 = getelementptr inbounds %struct.message, %struct.message* %32, i32 0, i32 8
  %33 = load %struct.text*, %struct.text** %body_last42, align 8
  %t_next43 = getelementptr inbounds %struct.text, %struct.text* %33, i32 0, i32 1
  store %struct.text* %31, %struct.text** %t_next43, align 8
  %34 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last44 = getelementptr inbounds %struct.message, %struct.message* %34, i32 0, i32 8
  %35 = load %struct.text*, %struct.text** %body_last44, align 8
  %t_next45 = getelementptr inbounds %struct.text, %struct.text* %35, i32 0, i32 1
  %36 = load %struct.text*, %struct.text** %t_next45, align 8
  %cmp46 = icmp eq %struct.text* %36, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.40
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.then.40
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.33
  %37 = load i8*, i8** %data.addr, align 8
  %tobool51 = icmp ne i8* %37, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.66

land.lhs.true.52:                                 ; preds = %if.end.50
  %38 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last53 = getelementptr inbounds %struct.message, %struct.message* %38, i32 0, i32 8
  %39 = load %struct.text*, %struct.text** %body_last53, align 8
  %t_line54 = getelementptr inbounds %struct.text, %struct.text* %39, i32 0, i32 0
  %40 = load i8*, i8** %t_line54, align 8
  %tobool55 = icmp ne i8* %40, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.66

land.lhs.true.56:                                 ; preds = %land.lhs.true.52
  %41 = load i8*, i8** %data.addr, align 8
  %42 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last57 = getelementptr inbounds %struct.message, %struct.message* %42, i32 0, i32 8
  %43 = load %struct.text*, %struct.text** %body_last57, align 8
  %t_line58 = getelementptr inbounds %struct.text, %struct.text* %43, i32 0, i32 0
  %44 = load i8*, i8** %t_line58, align 8
  %call59 = call i8* @lineGetData(i8* %44)
  %call60 = call i32 @strcmp(i8* %41, i8* %call59) #8
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %land.lhs.true.56
  %45 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last64 = getelementptr inbounds %struct.message, %struct.message* %45, i32 0, i32 8
  %46 = load %struct.text*, %struct.text** %body_last64, align 8
  %t_line65 = getelementptr inbounds %struct.text, %struct.text* %46, i32 0, i32 0
  %47 = load i8*, i8** %t_line65, align 8
  store i8* %47, i8** %repeat, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %land.lhs.true.56, %land.lhs.true.52, %if.end.50
  %48 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last67 = getelementptr inbounds %struct.message, %struct.message* %48, i32 0, i32 8
  %49 = load %struct.text*, %struct.text** %body_last67, align 8
  %t_next68 = getelementptr inbounds %struct.text, %struct.text* %49, i32 0, i32 1
  %50 = load %struct.text*, %struct.text** %t_next68, align 8
  %51 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last69 = getelementptr inbounds %struct.message, %struct.message* %51, i32 0, i32 8
  store %struct.text* %50, %struct.text** %body_last69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.66, %if.then.18
  %52 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last71 = getelementptr inbounds %struct.message, %struct.message* %52, i32 0, i32 8
  %53 = load %struct.text*, %struct.text** %body_last71, align 8
  %cmp72 = icmp eq %struct.text* %53, null
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.70
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.75:                                        ; preds = %if.end.70
  %54 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last76 = getelementptr inbounds %struct.message, %struct.message* %54, i32 0, i32 8
  %55 = load %struct.text*, %struct.text** %body_last76, align 8
  %t_next77 = getelementptr inbounds %struct.text, %struct.text* %55, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next77, align 8
  %56 = load i8*, i8** %data.addr, align 8
  %tobool78 = icmp ne i8* %56, null
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.108

land.lhs.true.79:                                 ; preds = %if.end.75
  %57 = load i8*, i8** %data.addr, align 8
  %58 = load i8, i8* %57, align 1
  %conv80 = sext i8 %58 to i32
  %tobool81 = icmp ne i32 %conv80, 0
  br i1 %tobool81, label %if.then.82, label %if.else.108

if.then.82:                                       ; preds = %land.lhs.true.79
  %59 = load i8*, i8** %repeat, align 8
  %tobool83 = icmp ne i8* %59, null
  br i1 %tobool83, label %if.then.84, label %if.else.88

if.then.84:                                       ; preds = %if.then.82
  %60 = load i8*, i8** %repeat, align 8
  %call85 = call i8* @lineLink(i8* %60)
  %61 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last86 = getelementptr inbounds %struct.message, %struct.message* %61, i32 0, i32 8
  %62 = load %struct.text*, %struct.text** %body_last86, align 8
  %t_line87 = getelementptr inbounds %struct.text, %struct.text* %62, i32 0, i32 0
  store i8* %call85, i8** %t_line87, align 8
  br label %if.end.107

if.else.88:                                       ; preds = %if.then.82
  %63 = load i8*, i8** %data.addr, align 8
  %call89 = call i8* @lineCreate(i8* %63)
  %64 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last90 = getelementptr inbounds %struct.message, %struct.message* %64, i32 0, i32 8
  %65 = load %struct.text*, %struct.text** %body_last90, align 8
  %t_line91 = getelementptr inbounds %struct.text, %struct.text* %65, i32 0, i32 0
  store i8* %call89, i8** %t_line91, align 8
  %66 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last92 = getelementptr inbounds %struct.message, %struct.message* %66, i32 0, i32 8
  %67 = load %struct.text*, %struct.text** %body_last92, align 8
  %t_line93 = getelementptr inbounds %struct.text, %struct.text* %67, i32 0, i32 0
  %68 = load i8*, i8** %t_line93, align 8
  %cmp94 = icmp eq i8* %68, null
  br i1 %cmp94, label %if.then.96, label %if.end.106

if.then.96:                                       ; preds = %if.else.88
  %69 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageDedup(%struct.message* %69)
  %70 = load i8*, i8** %data.addr, align 8
  %call97 = call i8* @lineCreate(i8* %70)
  %71 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last98 = getelementptr inbounds %struct.message, %struct.message* %71, i32 0, i32 8
  %72 = load %struct.text*, %struct.text** %body_last98, align 8
  %t_line99 = getelementptr inbounds %struct.text, %struct.text* %72, i32 0, i32 0
  store i8* %call97, i8** %t_line99, align 8
  %73 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last100 = getelementptr inbounds %struct.message, %struct.message* %73, i32 0, i32 8
  %74 = load %struct.text*, %struct.text** %body_last100, align 8
  %t_line101 = getelementptr inbounds %struct.text, %struct.text* %74, i32 0, i32 0
  %75 = load i8*, i8** %t_line101, align 8
  %cmp102 = icmp eq i8* %75, null
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.96
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.then.96
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.else.88
  %76 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageIsEncoding(%struct.message* %76)
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.84
  br label %if.end.111

if.else.108:                                      ; preds = %land.lhs.true.79, %if.end.75
  %77 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last109 = getelementptr inbounds %struct.message, %struct.message* %77, i32 0, i32 8
  %78 = load %struct.text*, %struct.text** %body_last109, align 8
  %t_line110 = getelementptr inbounds %struct.text, %struct.text* %78, i32 0, i32 0
  store i8* null, i8** %t_line110, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.end.107
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.111, %if.then.104, %if.then.74, %if.then.48, %if.then.31
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal void @messageDedup(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %t1 = alloca %struct.text*, align 8
  %saved = alloca i64, align 8
  %d1 = alloca i8*, align 8
  %t2 = alloca %struct.text*, align 8
  %l1 = alloca i8*, align 8
  %r1 = alloca i32, align 4
  %d2 = alloca i8*, align 8
  %l2 = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i64 0, i64* %saved, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.105, i32 0, i32 0))
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %dedupedThisFar = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 19
  %1 = load %struct.text*, %struct.text** %dedupedThisFar, align 8
  %tobool = icmp ne %struct.text* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %dedupedThisFar1 = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 19
  %3 = load %struct.text*, %struct.text** %dedupedThisFar1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first = getelementptr inbounds %struct.message, %struct.message* %4, i32 0, i32 7
  %5 = load %struct.text*, %struct.text** %body_first, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.text* [ %3, %cond.true ], [ %5, %cond.false ]
  store %struct.text* %cond, %struct.text** %t1, align 8
  %6 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first2 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 7
  %7 = load %struct.text*, %struct.text** %body_first2, align 8
  store %struct.text* %7, %struct.text** %t1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %cond.end
  %8 = load %struct.text*, %struct.text** %t1, align 8
  %tobool3 = icmp ne %struct.text* %8, null
  br i1 %tobool3, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %saved, align 8
  %cmp = icmp uge i64 %9, 100000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end.70

if.end:                                           ; preds = %for.body
  %10 = load %struct.text*, %struct.text** %t1, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %10, i32 0, i32 0
  %11 = load i8*, i8** %t_line, align 8
  store i8* %11, i8** %l1, align 8
  %12 = load i8*, i8** %l1, align 8
  %cmp4 = icmp eq i8* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %for.inc.68

if.end.6:                                         ; preds = %if.end
  %13 = load i8*, i8** %l1, align 8
  %call = call i8* @lineGetData(i8* %13)
  store i8* %call, i8** %d1, align 8
  %14 = load i8*, i8** %d1, align 8
  %call7 = call i64 @strlen(i8* %14) #8
  %cmp8 = icmp ult i64 %call7, 8
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %for.inc.68

if.end.10:                                        ; preds = %if.end.6
  %15 = load i8*, i8** %l1, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %r1, align 4
  %17 = load i32, i32* %r1, align 4
  %cmp11 = icmp eq i32 %17, 255
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  br label %for.inc.68

if.end.14:                                        ; preds = %if.end.10
  %18 = load %struct.text*, %struct.text** %t1, align 8
  %19 = load %struct.message*, %struct.message** %m.addr, align 8
  %encoding = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 18
  %20 = load %struct.text*, %struct.text** %encoding, align 8
  %cmp15 = icmp eq %struct.text* %18, %20
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  br label %for.inc.68

if.end.18:                                        ; preds = %if.end.14
  %21 = load %struct.text*, %struct.text** %t1, align 8
  %22 = load %struct.message*, %struct.message** %m.addr, align 8
  %bounce = getelementptr inbounds %struct.message, %struct.message* %22, i32 0, i32 15
  %23 = load %struct.text*, %struct.text** %bounce, align 8
  %cmp19 = icmp eq %struct.text* %21, %23
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  br label %for.inc.68

if.end.22:                                        ; preds = %if.end.18
  %24 = load %struct.text*, %struct.text** %t1, align 8
  %25 = load %struct.message*, %struct.message** %m.addr, align 8
  %binhex = getelementptr inbounds %struct.message, %struct.message* %25, i32 0, i32 16
  %26 = load %struct.text*, %struct.text** %binhex, align 8
  %cmp23 = icmp eq %struct.text* %24, %26
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  br label %for.inc.68

if.end.26:                                        ; preds = %if.end.22
  %27 = load %struct.text*, %struct.text** %t1, align 8
  %28 = load %struct.message*, %struct.message** %m.addr, align 8
  %yenc = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 17
  %29 = load %struct.text*, %struct.text** %yenc, align 8
  %cmp27 = icmp eq %struct.text* %27, %29
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.26
  br label %for.inc.68

if.end.30:                                        ; preds = %if.end.26
  %30 = load %struct.text*, %struct.text** %t1, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %30, i32 0, i32 1
  %31 = load %struct.text*, %struct.text** %t_next, align 8
  store %struct.text* %31, %struct.text** %t2, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.end.30
  %32 = load %struct.text*, %struct.text** %t2, align 8
  %tobool32 = icmp ne %struct.text* %32, null
  br i1 %tobool32, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.31
  %33 = load %struct.text*, %struct.text** %t2, align 8
  %t_line34 = getelementptr inbounds %struct.text, %struct.text* %33, i32 0, i32 0
  %34 = load i8*, i8** %t_line34, align 8
  store i8* %34, i8** %l2, align 8
  %35 = load i8*, i8** %l2, align 8
  %cmp35 = icmp eq i8* %35, null
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.33
  br label %for.inc

if.end.38:                                        ; preds = %for.body.33
  %36 = load i8*, i8** %l2, align 8
  %call39 = call i8* @lineGetData(i8* %36)
  store i8* %call39, i8** %d2, align 8
  %37 = load i8*, i8** %d1, align 8
  %38 = load i8*, i8** %d2, align 8
  %cmp40 = icmp eq i8* %37, %38
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  br label %for.inc

if.end.43:                                        ; preds = %if.end.38
  %39 = load i8*, i8** %d1, align 8
  %40 = load i8*, i8** %d2, align 8
  %call44 = call i32 @strcmp(i8* %39, i8* %40) #8
  %cmp45 = icmp eq i32 %call44, 0
  br i1 %cmp45, label %if.then.47, label %if.end.66

if.then.47:                                       ; preds = %if.end.43
  %41 = load i8*, i8** %l2, align 8
  %call48 = call i8* @lineUnlink(i8* %41)
  %cmp49 = icmp eq i8* %call48, null
  br i1 %cmp49, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.then.47
  %42 = load i8*, i8** %d1, align 8
  %call52 = call i64 @strlen(i8* %42) #8
  %add = add i64 %call52, 1
  %43 = load i64, i64* %saved, align 8
  %add53 = add i64 %43, %add
  store i64 %add53, i64* %saved, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.then.47
  %44 = load i8*, i8** %l1, align 8
  %call55 = call i8* @lineLink(i8* %44)
  %45 = load %struct.text*, %struct.text** %t2, align 8
  %t_line56 = getelementptr inbounds %struct.text, %struct.text* %45, i32 0, i32 0
  store i8* %call55, i8** %t_line56, align 8
  %46 = load %struct.text*, %struct.text** %t2, align 8
  %t_line57 = getelementptr inbounds %struct.text, %struct.text* %46, i32 0, i32 0
  %47 = load i8*, i8** %t_line57, align 8
  %cmp58 = icmp eq i8* %47, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.54
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i32 0, i32 0))
  br label %return

if.end.61:                                        ; preds = %if.end.54
  %48 = load i32, i32* %r1, align 4
  %inc = add i32 %48, 1
  store i32 %inc, i32* %r1, align 4
  %cmp62 = icmp eq i32 %inc, 255
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.61
  br label %for.end

if.end.65:                                        ; preds = %if.end.61
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.43
  br label %for.inc

for.inc:                                          ; preds = %if.end.66, %if.then.42, %if.then.37
  %49 = load %struct.text*, %struct.text** %t2, align 8
  %t_next67 = getelementptr inbounds %struct.text, %struct.text* %49, i32 0, i32 1
  %50 = load %struct.text*, %struct.text** %t_next67, align 8
  store %struct.text* %50, %struct.text** %t2, align 8
  br label %for.cond.31

for.end:                                          ; preds = %if.then.64, %for.cond.31
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end, %if.then.29, %if.then.25, %if.then.21, %if.then.17, %if.then.13, %if.then.9, %if.then.5
  %51 = load %struct.text*, %struct.text** %t1, align 8
  %t_next69 = getelementptr inbounds %struct.text, %struct.text* %51, i32 0, i32 1
  %52 = load %struct.text*, %struct.text** %t_next69, align 8
  store %struct.text* %52, %struct.text** %t1, align 8
  br label %for.cond

for.end.70:                                       ; preds = %if.then, %for.cond
  %53 = load i64, i64* %saved, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.107, i32 0, i32 0), i64 %53)
  %54 = load %struct.text*, %struct.text** %t1, align 8
  %55 = load %struct.message*, %struct.message** %m.addr, align 8
  %dedupedThisFar71 = getelementptr inbounds %struct.message, %struct.message* %55, i32 0, i32 19
  store %struct.text* %54, %struct.text** %dedupedThisFar71, align 8
  br label %return

return:                                           ; preds = %for.end.70, %if.then.60
  ret void
}

declare void @cli_errmsg(i8*, ...) #1

declare i8* @lineCreate(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @messageAddStrAtTop(%struct.message* %m, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %data.addr = alloca i8*, align 8
  %oldfirst = alloca %struct.text*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 7
  %1 = load %struct.text*, %struct.text** %body_first, align 8
  %cmp = icmp eq %struct.text* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %call = call i8* @lineCreate(i8* %3)
  %call1 = call i32 @messageAddLine(%struct.message* %2, i8* %call)
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first2 = getelementptr inbounds %struct.message, %struct.message* %4, i32 0, i32 7
  %5 = load %struct.text*, %struct.text** %body_first2, align 8
  store %struct.text* %5, %struct.text** %oldfirst, align 8
  %call3 = call i8* @cli_malloc(i64 16)
  %6 = bitcast i8* %call3 to %struct.text*
  %7 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first4 = getelementptr inbounds %struct.message, %struct.message* %7, i32 0, i32 7
  store %struct.text* %6, %struct.text** %body_first4, align 8
  %8 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first5 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 7
  %9 = load %struct.text*, %struct.text** %body_first5, align 8
  %cmp6 = icmp eq %struct.text* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %10 = load %struct.text*, %struct.text** %oldfirst, align 8
  %11 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first8 = getelementptr inbounds %struct.message, %struct.message* %11, i32 0, i32 7
  store %struct.text* %10, %struct.text** %body_first8, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %12 = load %struct.text*, %struct.text** %oldfirst, align 8
  %13 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first10 = getelementptr inbounds %struct.message, %struct.message* %13, i32 0, i32 7
  %14 = load %struct.text*, %struct.text** %body_first10, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %14, i32 0, i32 1
  store %struct.text* %12, %struct.text** %t_next, align 8
  %15 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %15, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %16 = load i8*, i8** %data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), %cond.false ]
  %call11 = call i8* @lineCreate(i8* %cond)
  %17 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first12 = getelementptr inbounds %struct.message, %struct.message* %17, i32 0, i32 7
  %18 = load %struct.text*, %struct.text** %body_first12, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %18, i32 0, i32 0
  store i8* %call11, i8** %t_line, align 8
  %19 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first13 = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 7
  %20 = load %struct.text*, %struct.text** %body_first13, align 8
  %t_line14 = getelementptr inbounds %struct.text, %struct.text* %20, i32 0, i32 0
  %21 = load i8*, i8** %t_line14, align 8
  %cmp15 = icmp eq i8* %21, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %cond.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.7, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @messageMoveText(%struct.message* %m, %struct.text* %t, %struct.message* %old_message) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %t.addr = alloca %struct.text*, align 8
  %old_message.addr = alloca %struct.message*, align 8
  %rc = alloca i32, align 4
  %u = alloca %struct.text*, align 8
  %next = alloca %struct.text*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store %struct.text* %t, %struct.text** %t.addr, align 8
  store %struct.message* %old_message, %struct.message** %old_message.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 7
  %1 = load %struct.text*, %struct.text** %body_first, align 8
  %cmp = icmp eq %struct.text* %1, null
  br i1 %cmp, label %if.then, label %if.else.33

if.then:                                          ; preds = %entry
  %2 = load %struct.message*, %struct.message** %old_message.addr, align 8
  %tobool = icmp ne %struct.message* %2, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %3 = load %struct.text*, %struct.text** %t.addr, align 8
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first2 = getelementptr inbounds %struct.message, %struct.message* %4, i32 0, i32 7
  store %struct.text* %3, %struct.text** %body_first2, align 8
  %5 = load %struct.message*, %struct.message** %old_message.addr, align 8
  %body_first3 = getelementptr inbounds %struct.message, %struct.message* %5, i32 0, i32 7
  %6 = load %struct.text*, %struct.text** %body_first3, align 8
  store %struct.text* %6, %struct.text** %u, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.10, %if.then.1
  %7 = load %struct.text*, %struct.text** %u, align 8
  %8 = load %struct.text*, %struct.text** %t.addr, align 8
  %cmp4 = icmp ne %struct.text* %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.text*, %struct.text** %u, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %9, i32 0, i32 0
  %10 = load i8*, i8** %t_line, align 8
  %tobool5 = icmp ne i8* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %11 = load %struct.text*, %struct.text** %u, align 8
  %t_line7 = getelementptr inbounds %struct.text, %struct.text* %11, i32 0, i32 0
  %12 = load i8*, i8** %t_line7, align 8
  %call = call i8* @lineUnlink(i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %for.body
  %13 = load %struct.text*, %struct.text** %u, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %13, i32 0, i32 1
  %14 = load %struct.text*, %struct.text** %t_next, align 8
  store %struct.text* %14, %struct.text** %next, align 8
  %15 = load %struct.text*, %struct.text** %u, align 8
  %16 = bitcast %struct.text* %15 to i8*
  call void @free(i8* %16) #3
  %17 = load %struct.text*, %struct.text** %next, align 8
  store %struct.text* %17, %struct.text** %u, align 8
  %18 = load %struct.text*, %struct.text** %u, align 8
  %cmp8 = icmp eq %struct.text* %18, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.39, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.message*, %struct.message** %old_message.addr, align 8
  %body_last = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 8
  %20 = load %struct.text*, %struct.text** %body_last, align 8
  %21 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last11 = getelementptr inbounds %struct.message, %struct.message* %21, i32 0, i32 8
  store %struct.text* %20, %struct.text** %body_last11, align 8
  %22 = load %struct.message*, %struct.message** %old_message.addr, align 8
  %body_last12 = getelementptr inbounds %struct.message, %struct.message* %22, i32 0, i32 8
  store %struct.text* null, %struct.text** %body_last12, align 8
  %23 = load %struct.message*, %struct.message** %old_message.addr, align 8
  %body_first13 = getelementptr inbounds %struct.message, %struct.message* %23, i32 0, i32 7
  store %struct.text* null, %struct.text** %body_first13, align 8
  %24 = load %struct.message*, %struct.message** %old_message.addr, align 8
  %bounce = getelementptr inbounds %struct.message, %struct.message* %24, i32 0, i32 15
  %25 = load %struct.text*, %struct.text** %bounce, align 8
  %cmp14 = icmp eq %struct.text* %25, null
  br i1 %cmp14, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %for.end
  %26 = load %struct.message*, %struct.message** %old_message.addr, align 8
  %encoding = getelementptr inbounds %struct.message, %struct.message* %26, i32 0, i32 18
  %27 = load %struct.text*, %struct.text** %encoding, align 8
  %cmp15 = icmp eq %struct.text* %27, null
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.21

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %28 = load %struct.message*, %struct.message** %old_message.addr, align 8
  %binhex = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 16
  %29 = load %struct.text*, %struct.text** %binhex, align 8
  %cmp17 = icmp eq %struct.text* %29, null
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.21

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %30 = load %struct.message*, %struct.message** %old_message.addr, align 8
  %yenc = getelementptr inbounds %struct.message, %struct.message* %30, i32 0, i32 17
  %31 = load %struct.text*, %struct.text** %yenc, align 8
  %cmp19 = icmp eq %struct.text* %31, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.18
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true, %for.end
  %32 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first22 = getelementptr inbounds %struct.message, %struct.message* %32, i32 0, i32 7
  %33 = load %struct.text*, %struct.text** %body_first22, align 8
  %34 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last23 = getelementptr inbounds %struct.message, %struct.message* %34, i32 0, i32 8
  store %struct.text* %33, %struct.text** %body_last23, align 8
  store i32 0, i32* %rc, align 4
  br label %if.end.32

if.else:                                          ; preds = %if.then
  %35 = load %struct.text*, %struct.text** %t.addr, align 8
  %call24 = call %struct.text* @textMove(%struct.text* null, %struct.text* %35)
  %36 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first25 = getelementptr inbounds %struct.message, %struct.message* %36, i32 0, i32 7
  store %struct.text* %call24, %struct.text** %body_first25, align 8
  %37 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last26 = getelementptr inbounds %struct.message, %struct.message* %37, i32 0, i32 8
  store %struct.text* %call24, %struct.text** %body_last26, align 8
  %38 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first27 = getelementptr inbounds %struct.message, %struct.message* %38, i32 0, i32 7
  %39 = load %struct.text*, %struct.text** %body_first27, align 8
  %cmp28 = icmp eq %struct.text* %39, null
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else
  store i32 -1, i32* %rc, align 4
  br label %if.end.31

if.else.30:                                       ; preds = %if.else
  store i32 0, i32* %rc, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.21
  br label %if.end.44

if.else.33:                                       ; preds = %entry
  %40 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last34 = getelementptr inbounds %struct.message, %struct.message* %40, i32 0, i32 8
  %41 = load %struct.text*, %struct.text** %body_last34, align 8
  %42 = load %struct.text*, %struct.text** %t.addr, align 8
  %call35 = call %struct.text* @textMove(%struct.text* %41, %struct.text* %42)
  %43 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last36 = getelementptr inbounds %struct.message, %struct.message* %43, i32 0, i32 8
  store %struct.text* %call35, %struct.text** %body_last36, align 8
  %44 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last37 = getelementptr inbounds %struct.message, %struct.message* %44, i32 0, i32 8
  %45 = load %struct.text*, %struct.text** %body_last37, align 8
  %cmp38 = icmp eq %struct.text* %45, null
  br i1 %cmp38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.else.33
  store i32 -1, i32* %rc, align 4
  %46 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first40 = getelementptr inbounds %struct.message, %struct.message* %46, i32 0, i32 7
  %47 = load %struct.text*, %struct.text** %body_first40, align 8
  %48 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last41 = getelementptr inbounds %struct.message, %struct.message* %48, i32 0, i32 8
  store %struct.text* %47, %struct.text** %body_last41, align 8
  br label %if.end.43

if.else.42:                                       ; preds = %if.else.33
  store i32 0, i32* %rc, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.39
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.32
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %if.end.44
  %49 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last45 = getelementptr inbounds %struct.message, %struct.message* %49, i32 0, i32 8
  %50 = load %struct.text*, %struct.text** %body_last45, align 8
  %t_next46 = getelementptr inbounds %struct.text, %struct.text* %50, i32 0, i32 1
  %51 = load %struct.text*, %struct.text** %t_next46, align 8
  %tobool47 = icmp ne %struct.text* %51, null
  br i1 %tobool47, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last48 = getelementptr inbounds %struct.message, %struct.message* %52, i32 0, i32 8
  %53 = load %struct.text*, %struct.text** %body_last48, align 8
  %t_next49 = getelementptr inbounds %struct.text, %struct.text* %53, i32 0, i32 1
  %54 = load %struct.text*, %struct.text** %t_next49, align 8
  %55 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last50 = getelementptr inbounds %struct.message, %struct.message* %55, i32 0, i32 8
  store %struct.text* %54, %struct.text** %body_last50, align 8
  %56 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last51 = getelementptr inbounds %struct.message, %struct.message* %56, i32 0, i32 8
  %57 = load %struct.text*, %struct.text** %body_last51, align 8
  %t_line52 = getelementptr inbounds %struct.text, %struct.text* %57, i32 0, i32 0
  %58 = load i8*, i8** %t_line52, align 8
  %tobool53 = icmp ne i8* %58, null
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %while.body
  %59 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageIsEncoding(%struct.message* %59)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %60 = load i32, i32* %rc, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.20, %if.then.9
  %61 = load i32, i32* %retval
  ret i32 %61
}

declare i8* @lineUnlink(i8*) #1

declare %struct.text* @textMove(%struct.text*, %struct.text*) #1

; Function Attrs: nounwind uwtable
define %struct.text* @messageGetBody(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 7
  %1 = load %struct.text*, %struct.text** %body_first, align 8
  ret %struct.text* %1
}

; Function Attrs: nounwind uwtable
define i8* @base64Flush(%struct.message* %m, i8* %buf) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.message*, align 8
  %buf.addr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 13
  %1 = load i32, i32* %base64chars, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i32 %1)
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars1 = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 13
  %3 = load i32, i32* %base64chars1, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %5 = load i8*, i8** %buf.addr, align 8
  %call = call i8* @decode(%struct.message* %4, i8* null, i8* %5, i8 (i8)* @base64, i1 zeroext false)
  store i8* %call, i8** %ret, align 8
  %6 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars2 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 13
  store i32 0, i32* %base64chars2, align 4
  %7 = load i8*, i8** %ret, align 8
  store i8* %7, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal i8* @decode(%struct.message* %m, i8* %in, i8* %out, i8 (i8)* %decoder, i1 zeroext %isFast) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.message*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %decoder.addr = alloca i8 (i8)*, align 8
  %isFast.addr = alloca i8, align 1
  %b1 = alloca i8, align 1
  %b2 = alloca i8, align 1
  %b3 = alloca i8, align 1
  %b4 = alloca i8, align 1
  %cb1 = alloca i8, align 1
  %cb2 = alloca i8, align 1
  %cb3 = alloca i8, align 1
  %nbytes = alloca i32, align 4
  %nbytes143 = alloca i32, align 4
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  store i8 (i8)* %decoder, i8 (i8)** %decoder.addr, align 8
  %frombool = zext i1 %isFast to i8
  store i8 %frombool, i8* %isFast.addr, align 1
  store i8 0, i8* %cb3, align 1
  store i8 0, i8* %cb2, align 1
  store i8 0, i8* %cb1, align 1
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 13
  %1 = load i32, i32* %base64chars, align 4
  switch i32 %1, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64_3 = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 12
  %3 = load i8, i8* %base64_3, align 1
  store i8 %3, i8* %cb3, align 1
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64_2 = getelementptr inbounds %struct.message, %struct.message* %4, i32 0, i32 11
  %5 = load i8, i8* %base64_2, align 1
  store i8 %5, i8* %cb2, align 1
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %entry, %sw.bb.1
  %6 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64_1 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 10
  %7 = load i8, i8* %base64_1, align 1
  store i8 %7, i8* %cb1, align 1
  store i8 0, i8* %isFast.addr, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2
  %8 = load i8, i8* %isFast.addr, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load i8*, i8** %in.addr, align 8
  %10 = load i8, i8* %9, align 1
  %tobool3 = icmp ne i8 %10, 0
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8 (i8)*, i8 (i8)** %decoder.addr, align 8
  %12 = load i8*, i8** %in.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 8
  %13 = load i8, i8* %12, align 1
  %call = call zeroext i8 %11(i8 signext %13)
  store i8 %call, i8* %b1, align 1
  %14 = load i8 (i8)*, i8 (i8)** %decoder.addr, align 8
  %15 = load i8*, i8** %in.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr4, i8** %in.addr, align 8
  %16 = load i8, i8* %15, align 1
  %call5 = call zeroext i8 %14(i8 signext %16)
  store i8 %call5, i8* %b2, align 1
  %17 = load i8 (i8)*, i8 (i8)** %decoder.addr, align 8
  %18 = load i8*, i8** %in.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr6, i8** %in.addr, align 8
  %19 = load i8, i8* %18, align 1
  %call7 = call zeroext i8 %17(i8 signext %19)
  store i8 %call7, i8* %b3, align 1
  %20 = load i8, i8* %b1, align 1
  %conv = zext i8 %20 to i32
  %shl = shl i32 %conv, 2
  %21 = load i8, i8* %b2, align 1
  %conv8 = zext i8 %21 to i32
  %shr = ashr i32 %conv8, 4
  %and = and i32 %shr, 3
  %or = or i32 %shl, %and
  %conv9 = trunc i32 %or to i8
  %22 = load i8*, i8** %out.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr10, i8** %out.addr, align 8
  store i8 %conv9, i8* %22, align 1
  %23 = load i8 (i8)*, i8 (i8)** %decoder.addr, align 8
  %24 = load i8*, i8** %in.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr11, i8** %in.addr, align 8
  %25 = load i8, i8* %24, align 1
  %call12 = call zeroext i8 %23(i8 signext %25)
  store i8 %call12, i8* %b4, align 1
  %26 = load i8, i8* %b2, align 1
  %conv13 = zext i8 %26 to i32
  %shl14 = shl i32 %conv13, 4
  %27 = load i8, i8* %b3, align 1
  %conv15 = zext i8 %27 to i32
  %shr16 = ashr i32 %conv15, 2
  %and17 = and i32 %shr16, 15
  %or18 = or i32 %shl14, %and17
  %conv19 = trunc i32 %or18 to i8
  %28 = load i8*, i8** %out.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr20, i8** %out.addr, align 8
  store i8 %conv19, i8* %28, align 1
  %29 = load i8, i8* %b3, align 1
  %conv21 = zext i8 %29 to i32
  %shl22 = shl i32 %conv21, 6
  %30 = load i8, i8* %b4, align 1
  %conv23 = zext i8 %30 to i32
  %and24 = and i32 %conv23, 63
  %or25 = or i32 %shl22, %and24
  %conv26 = trunc i32 %or25 to i8
  %31 = load i8*, i8** %out.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr27, i8** %out.addr, align 8
  store i8 %conv26, i8* %31, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.226

if.else:                                          ; preds = %sw.epilog
  %32 = load i8*, i8** %in.addr, align 8
  %cmp = icmp eq i8* %32, null
  br i1 %cmp, label %if.then.29, label %if.else.139

if.then.29:                                       ; preds = %if.else
  %33 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars30 = getelementptr inbounds %struct.message, %struct.message* %33, i32 0, i32 13
  %34 = load i32, i32* %base64chars30, align 4
  %cmp31 = icmp eq i32 %34, 0
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %if.then.29
  %35 = load i8*, i8** %out.addr, align 8
  store i8* %35, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then.29
  %36 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars34 = getelementptr inbounds %struct.message, %struct.message* %36, i32 0, i32 13
  %37 = load i32, i32* %base64chars34, align 4
  %38 = load i8, i8* %cb1, align 1
  %conv35 = zext i8 %38 to i32
  %idxprom = sext i32 %conv35 to i64
  %call36 = call i16** @__ctype_b_loc() #7
  %39 = load i16*, i16** %call36, align 8
  %arrayidx = getelementptr inbounds i16, i16* %39, i64 %idxprom
  %40 = load i16, i16* %arrayidx, align 2
  %conv37 = zext i16 %40 to i32
  %and38 = and i32 %conv37, 8
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %41 = load i8, i8* %cb1, align 1
  %conv40 = zext i8 %41 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv40, %cond.true ], [ 64, %cond.false ]
  %42 = load i8, i8* %cb2, align 1
  %conv41 = zext i8 %42 to i32
  %idxprom42 = sext i32 %conv41 to i64
  %call43 = call i16** @__ctype_b_loc() #7
  %43 = load i16*, i16** %call43, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %43, i64 %idxprom42
  %44 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %44 to i32
  %and46 = and i32 %conv45, 8
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %cond.end
  %45 = load i8, i8* %cb2, align 1
  %conv49 = zext i8 %45 to i32
  br label %cond.end.51

cond.false.50:                                    ; preds = %cond.end
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.48
  %cond52 = phi i32 [ %conv49, %cond.true.48 ], [ 64, %cond.false.50 ]
  %46 = load i8, i8* %cb3, align 1
  %conv53 = zext i8 %46 to i32
  %idxprom54 = sext i32 %conv53 to i64
  %call55 = call i16** @__ctype_b_loc() #7
  %47 = load i16*, i16** %call55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %47, i64 %idxprom54
  %48 = load i16, i16* %arrayidx56, align 2
  %conv57 = zext i16 %48 to i32
  %and58 = and i32 %conv57, 8
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %cond.true.60, label %cond.false.62

cond.true.60:                                     ; preds = %cond.end.51
  %49 = load i8, i8* %cb3, align 1
  %conv61 = zext i8 %49 to i32
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end.51
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.60
  %cond64 = phi i32 [ %conv61, %cond.true.60 ], [ 64, %cond.false.62 ]
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.96, i32 0, i32 0), i32 %37, i32 %cond, i32 %cond52, i32 %cond64)
  %50 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars65 = getelementptr inbounds %struct.message, %struct.message* %50, i32 0, i32 13
  %51 = load i32, i32* %base64chars65, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %base64chars65, align 4
  %52 = load i8, i8* %cb1, align 1
  store i8 %52, i8* %b1, align 1
  store i32 1, i32* %nbytes, align 4
  %53 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars66 = getelementptr inbounds %struct.message, %struct.message* %53, i32 0, i32 13
  %54 = load i32, i32* %base64chars66, align 4
  %tobool67 = icmp ne i32 %54, 0
  br i1 %tobool67, label %if.then.68, label %if.end.81

if.then.68:                                       ; preds = %cond.end.63
  %55 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars69 = getelementptr inbounds %struct.message, %struct.message* %55, i32 0, i32 13
  %56 = load i32, i32* %base64chars69, align 4
  %dec70 = add nsw i32 %56, -1
  store i32 %dec70, i32* %base64chars69, align 4
  %57 = load i8, i8* %cb2, align 1
  store i8 %57, i8* %b2, align 1
  %58 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars71 = getelementptr inbounds %struct.message, %struct.message* %58, i32 0, i32 13
  %59 = load i32, i32* %base64chars71, align 4
  %tobool72 = icmp ne i32 %59, 0
  br i1 %tobool72, label %if.then.73, label %if.else.76

if.then.73:                                       ; preds = %if.then.68
  store i32 2, i32* %nbytes, align 4
  %60 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars74 = getelementptr inbounds %struct.message, %struct.message* %60, i32 0, i32 13
  %61 = load i32, i32* %base64chars74, align 4
  %dec75 = add nsw i32 %61, -1
  store i32 %dec75, i32* %base64chars74, align 4
  %62 = load i8, i8* %cb3, align 1
  store i8 %62, i8* %b3, align 1
  store i32 3, i32* %nbytes, align 4
  br label %if.end.80

if.else.76:                                       ; preds = %if.then.68
  %63 = load i8, i8* %b2, align 1
  %tobool77 = icmp ne i8 %63, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.else.76
  store i32 2, i32* %nbytes, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.else.76
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.73
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %cond.end.63
  %64 = load i32, i32* %nbytes, align 4
  switch i32 %64, label %sw.default.137 [
    i32 3, label %sw.bb.82
    i32 4, label %sw.bb.83
    i32 2, label %sw.bb.113
    i32 1, label %sw.bb.132
  ]

sw.bb.82:                                         ; preds = %if.end.81
  store i8 0, i8* %b4, align 1
  br label %sw.bb.83

sw.bb.83:                                         ; preds = %if.end.81, %sw.bb.82
  %65 = load i8, i8* %b1, align 1
  %conv84 = zext i8 %65 to i32
  %shl85 = shl i32 %conv84, 2
  %66 = load i8, i8* %b2, align 1
  %conv86 = zext i8 %66 to i32
  %shr87 = ashr i32 %conv86, 4
  %and88 = and i32 %shr87, 3
  %or89 = or i32 %shl85, %and88
  %conv90 = trunc i32 %or89 to i8
  %67 = load i8*, i8** %out.addr, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr91, i8** %out.addr, align 8
  store i8 %conv90, i8* %67, align 1
  %68 = load i8, i8* %b2, align 1
  %conv92 = zext i8 %68 to i32
  %shl93 = shl i32 %conv92, 4
  %69 = load i8, i8* %b3, align 1
  %conv94 = zext i8 %69 to i32
  %shr95 = ashr i32 %conv94, 2
  %and96 = and i32 %shr95, 15
  %or97 = or i32 %shl93, %and96
  %conv98 = trunc i32 %or97 to i8
  %70 = load i8*, i8** %out.addr, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr99, i8** %out.addr, align 8
  store i8 %conv98, i8* %70, align 1
  %71 = load i32, i32* %nbytes, align 4
  %cmp100 = icmp eq i32 %71, 4
  br i1 %cmp100, label %if.then.104, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.83
  %72 = load i8, i8* %b3, align 1
  %conv102 = zext i8 %72 to i32
  %tobool103 = icmp ne i32 %conv102, 0
  br i1 %tobool103, label %if.then.104, label %if.end.112

if.then.104:                                      ; preds = %lor.lhs.false, %sw.bb.83
  %73 = load i8, i8* %b3, align 1
  %conv105 = zext i8 %73 to i32
  %shl106 = shl i32 %conv105, 6
  %74 = load i8, i8* %b4, align 1
  %conv107 = zext i8 %74 to i32
  %and108 = and i32 %conv107, 63
  %or109 = or i32 %shl106, %and108
  %conv110 = trunc i32 %or109 to i8
  %75 = load i8*, i8** %out.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr111, i8** %out.addr, align 8
  store i8 %conv110, i8* %75, align 1
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.104, %lor.lhs.false
  br label %sw.epilog.138

sw.bb.113:                                        ; preds = %if.end.81
  %76 = load i8, i8* %b1, align 1
  %conv114 = zext i8 %76 to i32
  %shl115 = shl i32 %conv114, 2
  %77 = load i8, i8* %b2, align 1
  %conv116 = zext i8 %77 to i32
  %shr117 = ashr i32 %conv116, 4
  %and118 = and i32 %shr117, 3
  %or119 = or i32 %shl115, %and118
  %conv120 = trunc i32 %or119 to i8
  %78 = load i8*, i8** %out.addr, align 8
  %incdec.ptr121 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr121, i8** %out.addr, align 8
  store i8 %conv120, i8* %78, align 1
  %79 = load i8, i8* %b2, align 1
  %conv122 = zext i8 %79 to i32
  %shl123 = shl i32 %conv122, 4
  %and124 = and i32 %shl123, 255
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.131

if.then.126:                                      ; preds = %sw.bb.113
  %80 = load i8, i8* %b2, align 1
  %conv127 = zext i8 %80 to i32
  %shl128 = shl i32 %conv127, 4
  %conv129 = trunc i32 %shl128 to i8
  %81 = load i8*, i8** %out.addr, align 8
  %incdec.ptr130 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr130, i8** %out.addr, align 8
  store i8 %conv129, i8* %81, align 1
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.126, %sw.bb.113
  br label %sw.epilog.138

sw.bb.132:                                        ; preds = %if.end.81
  %82 = load i8, i8* %b1, align 1
  %conv133 = zext i8 %82 to i32
  %shl134 = shl i32 %conv133, 2
  %conv135 = trunc i32 %shl134 to i8
  %83 = load i8*, i8** %out.addr, align 8
  %incdec.ptr136 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr136, i8** %out.addr, align 8
  store i8 %conv135, i8* %83, align 1
  br label %sw.epilog.138

sw.default.137:                                   ; preds = %if.end.81
  br label %sw.epilog.138

sw.epilog.138:                                    ; preds = %sw.default.137, %sw.bb.132, %if.end.131, %if.end.112
  br label %if.end.225

if.else.139:                                      ; preds = %if.else
  br label %while.cond.140

while.cond.140:                                   ; preds = %sw.bb.191, %if.else.139
  %84 = load i8*, i8** %in.addr, align 8
  %85 = load i8, i8* %84, align 1
  %tobool141 = icmp ne i8 %85, 0
  br i1 %tobool141, label %while.body.142, label %while.end.224

while.body.142:                                   ; preds = %while.cond.140
  %86 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars144 = getelementptr inbounds %struct.message, %struct.message* %86, i32 0, i32 13
  %87 = load i32, i32* %base64chars144, align 4
  %tobool145 = icmp ne i32 %87, 0
  br i1 %tobool145, label %if.then.146, label %if.else.149

if.then.146:                                      ; preds = %while.body.142
  %88 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars147 = getelementptr inbounds %struct.message, %struct.message* %88, i32 0, i32 13
  %89 = load i32, i32* %base64chars147, align 4
  %dec148 = add nsw i32 %89, -1
  store i32 %dec148, i32* %base64chars147, align 4
  %90 = load i8, i8* %cb1, align 1
  store i8 %90, i8* %b1, align 1
  br label %if.end.152

if.else.149:                                      ; preds = %while.body.142
  %91 = load i8 (i8)*, i8 (i8)** %decoder.addr, align 8
  %92 = load i8*, i8** %in.addr, align 8
  %incdec.ptr150 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr150, i8** %in.addr, align 8
  %93 = load i8, i8* %92, align 1
  %call151 = call zeroext i8 %91(i8 signext %93)
  store i8 %call151, i8* %b1, align 1
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.146
  %94 = load i8*, i8** %in.addr, align 8
  %95 = load i8, i8* %94, align 1
  %conv153 = sext i8 %95 to i32
  %cmp154 = icmp eq i32 %conv153, 0
  br i1 %cmp154, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %if.end.152
  store i8 0, i8* %b2, align 1
  store i32 1, i32* %nbytes143, align 4
  br label %if.end.190

if.else.157:                                      ; preds = %if.end.152
  %96 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars158 = getelementptr inbounds %struct.message, %struct.message* %96, i32 0, i32 13
  %97 = load i32, i32* %base64chars158, align 4
  %tobool159 = icmp ne i32 %97, 0
  br i1 %tobool159, label %if.then.160, label %if.else.163

if.then.160:                                      ; preds = %if.else.157
  %98 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars161 = getelementptr inbounds %struct.message, %struct.message* %98, i32 0, i32 13
  %99 = load i32, i32* %base64chars161, align 4
  %dec162 = add nsw i32 %99, -1
  store i32 %dec162, i32* %base64chars161, align 4
  %100 = load i8, i8* %cb2, align 1
  store i8 %100, i8* %b2, align 1
  br label %if.end.166

if.else.163:                                      ; preds = %if.else.157
  %101 = load i8 (i8)*, i8 (i8)** %decoder.addr, align 8
  %102 = load i8*, i8** %in.addr, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr164, i8** %in.addr, align 8
  %103 = load i8, i8* %102, align 1
  %call165 = call zeroext i8 %101(i8 signext %103)
  store i8 %call165, i8* %b2, align 1
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.163, %if.then.160
  %104 = load i8*, i8** %in.addr, align 8
  %105 = load i8, i8* %104, align 1
  %conv167 = sext i8 %105 to i32
  %cmp168 = icmp eq i32 %conv167, 0
  br i1 %cmp168, label %if.then.170, label %if.else.171

if.then.170:                                      ; preds = %if.end.166
  store i8 0, i8* %b3, align 1
  store i32 2, i32* %nbytes143, align 4
  br label %if.end.189

if.else.171:                                      ; preds = %if.end.166
  %106 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars172 = getelementptr inbounds %struct.message, %struct.message* %106, i32 0, i32 13
  %107 = load i32, i32* %base64chars172, align 4
  %tobool173 = icmp ne i32 %107, 0
  br i1 %tobool173, label %if.then.174, label %if.else.177

if.then.174:                                      ; preds = %if.else.171
  %108 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars175 = getelementptr inbounds %struct.message, %struct.message* %108, i32 0, i32 13
  %109 = load i32, i32* %base64chars175, align 4
  %dec176 = add nsw i32 %109, -1
  store i32 %dec176, i32* %base64chars175, align 4
  %110 = load i8, i8* %cb3, align 1
  store i8 %110, i8* %b3, align 1
  br label %if.end.180

if.else.177:                                      ; preds = %if.else.171
  %111 = load i8 (i8)*, i8 (i8)** %decoder.addr, align 8
  %112 = load i8*, i8** %in.addr, align 8
  %incdec.ptr178 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr178, i8** %in.addr, align 8
  %113 = load i8, i8* %112, align 1
  %call179 = call zeroext i8 %111(i8 signext %113)
  store i8 %call179, i8* %b3, align 1
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.177, %if.then.174
  %114 = load i8*, i8** %in.addr, align 8
  %115 = load i8, i8* %114, align 1
  %conv181 = sext i8 %115 to i32
  %cmp182 = icmp eq i32 %conv181, 0
  br i1 %cmp182, label %if.then.184, label %if.else.185

if.then.184:                                      ; preds = %if.end.180
  store i8 0, i8* %b4, align 1
  store i32 3, i32* %nbytes143, align 4
  br label %if.end.188

if.else.185:                                      ; preds = %if.end.180
  %116 = load i8 (i8)*, i8 (i8)** %decoder.addr, align 8
  %117 = load i8*, i8** %in.addr, align 8
  %incdec.ptr186 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr186, i8** %in.addr, align 8
  %118 = load i8, i8* %117, align 1
  %call187 = call zeroext i8 %116(i8 signext %118)
  store i8 %call187, i8* %b4, align 1
  store i32 4, i32* %nbytes143, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.185, %if.then.184
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.then.170
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.156
  %119 = load i32, i32* %nbytes143, align 4
  switch i32 %119, label %sw.default.222 [
    i32 4, label %sw.bb.191
    i32 3, label %sw.bb.215
    i32 2, label %sw.bb.217
    i32 1, label %sw.bb.219
  ]

sw.bb.191:                                        ; preds = %if.end.190
  %120 = load i8, i8* %b1, align 1
  %conv192 = zext i8 %120 to i32
  %shl193 = shl i32 %conv192, 2
  %121 = load i8, i8* %b2, align 1
  %conv194 = zext i8 %121 to i32
  %shr195 = ashr i32 %conv194, 4
  %and196 = and i32 %shr195, 3
  %or197 = or i32 %shl193, %and196
  %conv198 = trunc i32 %or197 to i8
  %122 = load i8*, i8** %out.addr, align 8
  %incdec.ptr199 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr199, i8** %out.addr, align 8
  store i8 %conv198, i8* %122, align 1
  %123 = load i8, i8* %b2, align 1
  %conv200 = zext i8 %123 to i32
  %shl201 = shl i32 %conv200, 4
  %124 = load i8, i8* %b3, align 1
  %conv202 = zext i8 %124 to i32
  %shr203 = ashr i32 %conv202, 2
  %and204 = and i32 %shr203, 15
  %or205 = or i32 %shl201, %and204
  %conv206 = trunc i32 %or205 to i8
  %125 = load i8*, i8** %out.addr, align 8
  %incdec.ptr207 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr207, i8** %out.addr, align 8
  store i8 %conv206, i8* %125, align 1
  %126 = load i8, i8* %b3, align 1
  %conv208 = zext i8 %126 to i32
  %shl209 = shl i32 %conv208, 6
  %127 = load i8, i8* %b4, align 1
  %conv210 = zext i8 %127 to i32
  %and211 = and i32 %conv210, 63
  %or212 = or i32 %shl209, %and211
  %conv213 = trunc i32 %or212 to i8
  %128 = load i8*, i8** %out.addr, align 8
  %incdec.ptr214 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr214, i8** %out.addr, align 8
  store i8 %conv213, i8* %128, align 1
  br label %while.cond.140

sw.bb.215:                                        ; preds = %if.end.190
  %129 = load i8, i8* %b3, align 1
  %130 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64_3216 = getelementptr inbounds %struct.message, %struct.message* %130, i32 0, i32 12
  store i8 %129, i8* %base64_3216, align 1
  br label %sw.bb.217

sw.bb.217:                                        ; preds = %if.end.190, %sw.bb.215
  %131 = load i8, i8* %b2, align 1
  %132 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64_2218 = getelementptr inbounds %struct.message, %struct.message* %132, i32 0, i32 11
  store i8 %131, i8* %base64_2218, align 1
  br label %sw.bb.219

sw.bb.219:                                        ; preds = %if.end.190, %sw.bb.217
  %133 = load i8, i8* %b1, align 1
  %134 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64_1220 = getelementptr inbounds %struct.message, %struct.message* %134, i32 0, i32 10
  store i8 %133, i8* %base64_1220, align 1
  %135 = load i32, i32* %nbytes143, align 4
  %136 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars221 = getelementptr inbounds %struct.message, %struct.message* %136, i32 0, i32 13
  store i32 %135, i32* %base64chars221, align 4
  br label %sw.epilog.223

sw.default.222:                                   ; preds = %if.end.190
  br label %sw.epilog.223

sw.epilog.223:                                    ; preds = %sw.default.222, %sw.bb.219
  br label %while.end.224

while.end.224:                                    ; preds = %sw.epilog.223, %while.cond.140
  br label %if.end.225

if.end.225:                                       ; preds = %while.end.224, %sw.epilog.138
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.225, %while.end
  %137 = load i8*, i8** %out.addr, align 8
  store i8* %137, i8** %retval
  br label %return

return:                                           ; preds = %if.end.226, %if.then.33
  %138 = load i8*, i8** %retval
  ret i8* %138
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i8 @base64(i8 signext %c) #6 {
entry:
  %retval = alloca i8, align 1
  %c.addr = alloca i8, align 1
  %ret = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %and = and i32 %conv, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @base64Table, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %ret, align 1
  %2 = load i8, i8* %ret, align 1
  %conv1 = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv1, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 63, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %ret, align 1
  store i8 %3, i8* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, i8* %retval
  ret i8 %4
}

; Function Attrs: nounwind uwtable
define %struct.fileblob* @messageToFileblob(%struct.message* %m, i8* %dir, i32 %destroy) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %dir.addr = alloca i8*, align 8
  %destroy.addr = alloca i32, align 4
  %fb = alloca %struct.fileblob*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %destroy, i32* %destroy.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i32 0, i32 0))
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %1 = load i8*, i8** %dir.addr, align 8
  %2 = load i32, i32* %destroy.addr, align 4
  %call = call i8* @messageExport(%struct.message* %0, i8* %1, i8* ()* bitcast (%struct.fileblob* ()* @fileblobCreate to i8* ()*), void (i8*)* bitcast (void (%struct.fileblob*)* @fileblobDestroy to void (i8*)*), void (i8*, i8*, i8*)* bitcast (void (%struct.fileblob*, i8*, i8*)* @fileblobSetFilename to void (i8*, i8*, i8*)*), void (i8*, i8*, i64)* bitcast (i32 (%struct.fileblob*, i8*, i64)* @fileblobAddData to void (i8*, i8*, i64)*), i8* (%struct.text*, i8*, i32)* bitcast (%struct.fileblob* (%struct.text*, %struct.fileblob*, i32)* @textToFileblob to i8* (%struct.text*, i8*, i32)*), void (i8*, %struct.cli_ctx*)* bitcast (void (%struct.fileblob*, %struct.cli_ctx*)* @fileblobSetCTX to void (i8*, %struct.cli_ctx*)*), i32 %2)
  %3 = bitcast i8* %call to %struct.fileblob*
  store %struct.fileblob* %3, %struct.fileblob** %fb, align 8
  %4 = load i32, i32* %destroy.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first = getelementptr inbounds %struct.message, %struct.message* %5, i32 0, i32 7
  %6 = load %struct.text*, %struct.text** %body_first, align 8
  %tobool1 = icmp ne %struct.text* %6, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first2 = getelementptr inbounds %struct.message, %struct.message* %7, i32 0, i32 7
  %8 = load %struct.text*, %struct.text** %body_first2, align 8
  call void @textDestroy(%struct.text* %8)
  %9 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last = getelementptr inbounds %struct.message, %struct.message* %9, i32 0, i32 8
  store %struct.text* null, %struct.text** %body_last, align 8
  %10 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first3 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 7
  store %struct.text* null, %struct.text** %body_first3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  ret %struct.fileblob* %11
}

; Function Attrs: nounwind uwtable
define internal i8* @messageExport(%struct.message* %m, i8* %dir, i8* ()* %create, void (i8*)* %destroy, void (i8*, i8*, i8*)* %setFilename, void (i8*, i8*, i64)* %addData, i8* (%struct.text*, i8*, i32)* %exportText, void (i8*, %struct.cli_ctx*)* %setCTX, i32 %destroy_text) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.message*, align 8
  %dir.addr = alloca i8*, align 8
  %create.addr = alloca i8* ()*, align 8
  %destroy.addr = alloca void (i8*)*, align 8
  %setFilename.addr = alloca void (i8*, i8*, i8*)*, align 8
  %addData.addr = alloca void (i8*, i8*, i64)*, align 8
  %exportText.addr = alloca i8* (%struct.text*, i8*, i32)*, align 8
  %setCTX.addr = alloca void (i8*, %struct.cli_ctx*)*, align 8
  %destroy_text.addr = alloca i32, align 4
  %ret = alloca i8*, align 8
  %t_line = alloca %struct.text*, align 8
  %filename = alloca i8*, align 8
  %i = alloca i32, align 4
  %byte = alloca i8, align 1
  %newlen = alloca i64, align 8
  %len = alloca i64, align 8
  %dataforklen = alloca i64, align 8
  %resourceforklen = alloca i64, align 8
  %l = alloca i64, align 8
  %data = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %bytenumber = alloca i32, align 4
  %tmp = alloca %struct.blob*, align 8
  %uptr = alloca i8*, align 8
  %c = alloca i8, align 1
  %u = alloca %struct.blob*, align 8
  %c119 = alloca i8, align 1
  %count = alloca i32, align 4
  %enctype = alloca i32, align 4
  %size = alloca i64, align 8
  %newret = alloca i8*, align 8
  %f = alloca i8*, align 8
  %smallbuf = alloca [1024 x i8], align 16
  %uptr436 = alloca i8*, align 8
  %data438 = alloca i8*, align 8
  %line = alloca i8*, align 8
  %bigbuf = alloca i8*, align 8
  %datasize = alloca i64, align 8
  %data510 = alloca [4 x i8], align 1
  %ptr512 = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* ()* %create, i8* ()** %create.addr, align 8
  store void (i8*)* %destroy, void (i8*)** %destroy.addr, align 8
  store void (i8*, i8*, i8*)* %setFilename, void (i8*, i8*, i8*)** %setFilename.addr, align 8
  store void (i8*, i8*, i64)* %addData, void (i8*, i8*, i64)** %addData.addr, align 8
  store i8* (%struct.text*, i8*, i32)* %exportText, i8* (%struct.text*, i8*, i32)** %exportText.addr, align 8
  store void (i8*, %struct.cli_ctx*)* %setCTX, void (i8*, %struct.cli_ctx*)** %setCTX.addr, align 8
  store i32 %destroy_text, i32* %destroy_text.addr, align 4
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %call = call %struct.text* @messageGetBody(%struct.message* %0)
  %cmp = icmp eq %struct.text* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8* ()*, i8* ()** %create.addr, align 8
  %call1 = call i8* %1()
  store i8* %call1, i8** %ret, align 8
  %2 = load i8*, i8** %ret, align 8
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes = getelementptr inbounds %struct.message, %struct.message* %3, i32 0, i32 2
  %4 = load i32, i32* %numberOfEncTypes, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.69, i32 0, i32 0), i32 %4)
  %5 = load %struct.message*, %struct.message** %m.addr, align 8
  %call5 = call %struct.text* @binhexBegin(%struct.message* %5)
  store %struct.text* %call5, %struct.text** %t_line, align 8
  %cmp6 = icmp ne %struct.text* %call5, null
  br i1 %cmp6, label %if.then.7, label %if.end.288

if.then.7:                                        ; preds = %if.end.4
  store i64 0, i64* %newlen, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.70, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %6 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %6, i32 0, i32 1
  %7 = load %struct.text*, %struct.text** %t_next, align 8
  store %struct.text* %7, %struct.text** %t_line, align 8
  %cmp8 = icmp ne %struct.text* %7, null
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line9 = getelementptr inbounds %struct.text, %struct.text* %8, i32 0, i32 0
  %9 = load i8*, i8** %t_line9, align 8
  %cmp10 = icmp eq i8* %9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load %struct.text*, %struct.text** %t_line, align 8
  %12 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes11 = getelementptr inbounds %struct.message, %struct.message* %12, i32 0, i32 2
  %13 = load i32, i32* %numberOfEncTypes11, align 4
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %while.end
  %14 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes = getelementptr inbounds %struct.message, %struct.message* %14, i32 0, i32 1
  %15 = load i32*, i32** %encodingTypes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 0
  %16 = load i32, i32* %arrayidx, align 4
  %cmp13 = icmp eq i32 %16, 8
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* %destroy_text.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ]
  %call14 = call %struct.blob* @textToBlob(%struct.text* %11, %struct.blob* null, i32 %cond)
  store %struct.blob* %call14, %struct.blob** %tmp, align 8
  %18 = load %struct.blob*, %struct.blob** %tmp, align 8
  %cmp15 = icmp eq %struct.blob* %18, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %cond.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i32 0, i32 0))
  %19 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %20 = load i8*, i8** %ret, align 8
  call void %19(i8* %20)
  store i8* null, i8** %retval
  br label %return

if.end.17:                                        ; preds = %cond.end
  %21 = load %struct.blob*, %struct.blob** %tmp, align 8
  %call18 = call i8* @blobGetData(%struct.blob* %21)
  store i8* %call18, i8** %data, align 8
  %22 = load i8*, i8** %data, align 8
  %cmp19 = icmp eq i8* %22, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.72, i32 0, i32 0))
  %23 = load %struct.blob*, %struct.blob** %tmp, align 8
  call void @blobDestroy(%struct.blob* %23)
  %24 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %25 = load i8*, i8** %ret, align 8
  call void %24(i8* %25)
  store i8* null, i8** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %26 = load %struct.blob*, %struct.blob** %tmp, align 8
  %call22 = call i64 @blobGetDataSize(%struct.blob* %26)
  store i64 %call22, i64* %len, align 8
  %27 = load i8*, i8** %data, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx23, align 1
  %conv = zext i8 %28 to i32
  %cmp24 = icmp eq i32 %conv, 58
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end.21
  %29 = load i64, i64* %len, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0), i64 %29)
  %30 = load i64, i64* %len, align 8
  %call28 = call i8* @cli_malloc(i64 %30)
  store i8* %call28, i8** %uptr, align 8
  %31 = load i8*, i8** %uptr, align 8
  %cmp29 = icmp eq i8* %31, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.26
  %32 = load %struct.blob*, %struct.blob** %tmp, align 8
  call void @blobDestroy(%struct.blob* %32)
  %33 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %34 = load i8*, i8** %ret, align 8
  call void %33(i8* %34)
  store i8* null, i8** %retval
  br label %return

if.end.32:                                        ; preds = %if.then.26
  %35 = load i8*, i8** %uptr, align 8
  %36 = load i8*, i8** %data, align 8
  %37 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 %37, i32 1, i1 false)
  store i32 0, i32* %bytenumber, align 4
  store i64 1, i64* %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.32
  %38 = load i64, i64* %l, align 8
  %39 = load i64, i64* %len, align 8
  %cmp33 = icmp ult i64 %38, %39
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i64, i64* %l, align 8
  %41 = load i8*, i8** %uptr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %41, i64 %40
  %42 = load i8, i8* %arrayidx36, align 1
  store i8 %42, i8* %c, align 1
  %43 = load i8, i8* %c, align 1
  %conv37 = zext i8 %43 to i32
  %cmp38 = icmp eq i32 %conv37, 58
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.body
  br label %for.end

if.end.41:                                        ; preds = %for.body
  %44 = load i8, i8* %c, align 1
  %conv42 = zext i8 %44 to i32
  %cmp43 = icmp eq i32 %conv42, 10
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.41
  %45 = load i8, i8* %c, align 1
  %conv45 = zext i8 %45 to i32
  %cmp46 = icmp eq i32 %conv45, 13
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false, %if.end.41
  br label %for.inc

if.end.49:                                        ; preds = %lor.lhs.false
  %46 = load i8, i8* %c, align 1
  %conv50 = zext i8 %46 to i32
  %cmp51 = icmp slt i32 %conv50, 32
  br i1 %cmp51, label %if.then.62, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %if.end.49
  %47 = load i8, i8* %c, align 1
  %conv54 = zext i8 %47 to i32
  %cmp55 = icmp sgt i32 %conv54, 127
  br i1 %cmp55, label %if.then.62, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false.53
  %48 = load i8, i8* %c, align 1
  %idxprom = zext i8 %48 to i64
  %arrayidx58 = getelementptr inbounds [128 x i8], [128 x i8]* @messageExport.hqxtbl, i32 0, i64 %idxprom
  %49 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %49 to i32
  %cmp60 = icmp eq i32 %conv59, 255
  br i1 %cmp60, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %lor.lhs.false.57, %lor.lhs.false.53, %if.end.49
  %50 = load i8, i8* %c, align 1
  %conv63 = zext i8 %50 to i32
  %51 = load i8, i8* %c, align 1
  %conv64 = zext i8 %51 to i32
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.74, i32 0, i32 0), i32 %conv63, i32 %conv64)
  br label %for.end

if.end.65:                                        ; preds = %lor.lhs.false.57
  %52 = load i8, i8* %c, align 1
  %idxprom66 = zext i8 %52 to i64
  %arrayidx67 = getelementptr inbounds [128 x i8], [128 x i8]* @messageExport.hqxtbl, i32 0, i64 %idxprom66
  %53 = load i8, i8* %arrayidx67, align 1
  store i8 %53, i8* %c, align 1
  %54 = load i32, i32* %bytenumber, align 4
  switch i32 %54, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.71
    i32 2, label %sw.bb.82
    i32 3, label %sw.bb.96
  ]

sw.bb:                                            ; preds = %if.end.65
  %55 = load i8, i8* %c, align 1
  %conv68 = zext i8 %55 to i32
  %shl = shl i32 %conv68, 2
  %and = and i32 %shl, 252
  %conv69 = trunc i32 %and to i8
  %56 = load i64, i64* %newlen, align 8
  %57 = load i8*, i8** %data, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8 %conv69, i8* %arrayidx70, align 1
  store i32 1, i32* %bytenumber, align 4
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.65
  %58 = load i8, i8* %c, align 1
  %conv72 = zext i8 %58 to i32
  %shr = ashr i32 %conv72, 4
  %and73 = and i32 %shr, 3
  %59 = load i64, i64* %newlen, align 8
  %inc = add i64 %59, 1
  store i64 %inc, i64* %newlen, align 8
  %60 = load i8*, i8** %data, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %60, i64 %59
  %61 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %61 to i32
  %or = or i32 %conv75, %and73
  %conv76 = trunc i32 %or to i8
  store i8 %conv76, i8* %arrayidx74, align 1
  %62 = load i8, i8* %c, align 1
  %conv77 = zext i8 %62 to i32
  %shl78 = shl i32 %conv77, 4
  %and79 = and i32 %shl78, 240
  %conv80 = trunc i32 %and79 to i8
  %63 = load i64, i64* %newlen, align 8
  %64 = load i8*, i8** %data, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %64, i64 %63
  store i8 %conv80, i8* %arrayidx81, align 1
  store i32 2, i32* %bytenumber, align 4
  br label %sw.epilog

sw.bb.82:                                         ; preds = %if.end.65
  %65 = load i8, i8* %c, align 1
  %conv83 = zext i8 %65 to i32
  %shr84 = ashr i32 %conv83, 2
  %and85 = and i32 %shr84, 15
  %66 = load i64, i64* %newlen, align 8
  %inc86 = add i64 %66, 1
  store i64 %inc86, i64* %newlen, align 8
  %67 = load i8*, i8** %data, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %67, i64 %66
  %68 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %68 to i32
  %or89 = or i32 %conv88, %and85
  %conv90 = trunc i32 %or89 to i8
  store i8 %conv90, i8* %arrayidx87, align 1
  %69 = load i8, i8* %c, align 1
  %conv91 = zext i8 %69 to i32
  %shl92 = shl i32 %conv91, 6
  %and93 = and i32 %shl92, 192
  %conv94 = trunc i32 %and93 to i8
  %70 = load i64, i64* %newlen, align 8
  %71 = load i8*, i8** %data, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8 %conv94, i8* %arrayidx95, align 1
  store i32 3, i32* %bytenumber, align 4
  br label %sw.epilog

sw.bb.96:                                         ; preds = %if.end.65
  %72 = load i8, i8* %c, align 1
  %conv97 = zext i8 %72 to i32
  %and98 = and i32 %conv97, 63
  %73 = load i64, i64* %newlen, align 8
  %inc99 = add i64 %73, 1
  store i64 %inc99, i64* %newlen, align 8
  %74 = load i8*, i8** %data, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %74, i64 %73
  %75 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %75 to i32
  %or102 = or i32 %conv101, %and98
  %conv103 = trunc i32 %or102 to i8
  store i8 %conv103, i8* %arrayidx100, align 1
  store i32 0, i32* %bytenumber, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.65, %sw.bb.96, %sw.bb.82, %sw.bb.71, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then.48
  %76 = load i64, i64* %l, align 8
  %inc104 = add i64 %76, 1
  store i64 %inc104, i64* %l, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.62, %if.then.40, %for.cond
  %77 = load i64, i64* %newlen, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.75, i32 0, i32 0), i64 %77)
  %78 = load i8*, i8** %uptr, align 8
  call void @free(i8* %78) #3
  br label %if.end.105

if.else:                                          ; preds = %if.end.21
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.76, i32 0, i32 0))
  %79 = load i64, i64* %len, align 8
  store i64 %79, i64* %newlen, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.else, %for.end
  %80 = load i8*, i8** %data, align 8
  %81 = load i64, i64* %newlen, align 8
  %call106 = call i8* @memchr(i8* %80, i32 144, i64 %81) #8
  %tobool = icmp ne i8* %call106, null
  br i1 %tobool, label %if.then.107, label %if.else.154

if.then.107:                                      ; preds = %if.end.105
  %call109 = call %struct.blob* @blobCreate()
  store %struct.blob* %call109, %struct.blob** %u, align 8
  %82 = load %struct.blob*, %struct.blob** %u, align 8
  %cmp110 = icmp eq %struct.blob* %82, null
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.then.107
  %83 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %84 = load i8*, i8** %ret, align 8
  call void %83(i8* %84)
  %85 = load %struct.blob*, %struct.blob** %tmp, align 8
  call void @blobDestroy(%struct.blob* %85)
  store i8* null, i8** %retval
  br label %return

if.end.113:                                       ; preds = %if.then.107
  store i64 0, i64* %l, align 8
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.149, %if.end.113
  %86 = load i64, i64* %l, align 8
  %87 = load i64, i64* %newlen, align 8
  %cmp115 = icmp ult i64 %86, %87
  br i1 %cmp115, label %for.body.117, label %for.end.151

for.body.117:                                     ; preds = %for.cond.114
  %88 = load i64, i64* %l, align 8
  %89 = load i8*, i8** %data, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %89, i64 %88
  %90 = load i8, i8* %arrayidx120, align 1
  store i8 %90, i8* %c119, align 1
  %91 = load %struct.blob*, %struct.blob** %u, align 8
  %call121 = call i32 @blobAddData(%struct.blob* %91, i8* %c119, i64 1)
  %92 = load i64, i64* %l, align 8
  %93 = load i64, i64* %newlen, align 8
  %sub = sub i64 %93, 1
  %cmp122 = icmp ult i64 %92, %sub
  br i1 %cmp122, label %land.lhs.true.124, label %if.end.148

land.lhs.true.124:                                ; preds = %for.body.117
  %94 = load i64, i64* %l, align 8
  %add = add i64 %94, 1
  %95 = load i8*, i8** %data, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %95, i64 %add
  %96 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %96 to i32
  %cmp127 = icmp eq i32 %conv126, 144
  br i1 %cmp127, label %if.then.129, label %if.end.148

if.then.129:                                      ; preds = %land.lhs.true.124
  %97 = load i64, i64* %l, align 8
  %add131 = add i64 %97, 2
  store i64 %add131, i64* %l, align 8
  %98 = load i64, i64* %l, align 8
  %99 = load i8*, i8** %data, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %99, i64 %98
  %100 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %100 to i32
  store i32 %conv133, i32* %count, align 4
  %101 = load i32, i32* %count, align 4
  %cmp134 = icmp eq i32 %101, 0
  br i1 %cmp134, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %if.then.129
  store i8 -112, i8* %c119, align 1
  %102 = load %struct.blob*, %struct.blob** %u, align 8
  %call137 = call i32 @blobAddData(%struct.blob* %102, i8* %c119, i64 1)
  br label %if.end.147

if.else.138:                                      ; preds = %if.then.129
  %103 = load %struct.blob*, %struct.blob** %u, align 8
  %104 = load i32, i32* %count, align 4
  %conv139 = sext i32 %104 to i64
  %call140 = call i32 @blobGrow(%struct.blob* %103, i64 %conv139)
  br label %while.cond.141

while.cond.141:                                   ; preds = %while.body.144, %if.else.138
  %105 = load i32, i32* %count, align 4
  %dec = add nsw i32 %105, -1
  store i32 %dec, i32* %count, align 4
  %cmp142 = icmp sgt i32 %dec, 0
  br i1 %cmp142, label %while.body.144, label %while.end.146

while.body.144:                                   ; preds = %while.cond.141
  %106 = load %struct.blob*, %struct.blob** %u, align 8
  %call145 = call i32 @blobAddData(%struct.blob* %106, i8* %c119, i64 1)
  br label %while.cond.141

while.end.146:                                    ; preds = %while.cond.141
  br label %if.end.147

if.end.147:                                       ; preds = %while.end.146, %if.then.136
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %land.lhs.true.124, %for.body.117
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148
  %107 = load i64, i64* %l, align 8
  %inc150 = add i64 %107, 1
  store i64 %inc150, i64* %l, align 8
  br label %for.cond.114

for.end.151:                                      ; preds = %for.cond.114
  %108 = load %struct.blob*, %struct.blob** %tmp, align 8
  call void @blobDestroy(%struct.blob* %108)
  %109 = load %struct.blob*, %struct.blob** %u, align 8
  store %struct.blob* %109, %struct.blob** %tmp, align 8
  %110 = load %struct.blob*, %struct.blob** %tmp, align 8
  %call152 = call i8* @blobGetData(%struct.blob* %110)
  store i8* %call152, i8** %data, align 8
  %111 = load %struct.blob*, %struct.blob** %tmp, align 8
  %call153 = call i64 @blobGetDataSize(%struct.blob* %111)
  store i64 %call153, i64* %len, align 8
  %112 = load i64, i64* %newlen, align 8
  %113 = load i64, i64* %len, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i32 0, i32 0), i64 %112, i64 %113)
  br label %if.end.155

if.else.154:                                      ; preds = %if.end.105
  %114 = load i64, i64* %newlen, align 8
  store i64 %114, i64* %len, align 8
  %115 = load i64, i64* %len, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.78, i32 0, i32 0), i64 %115)
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.154, %for.end.151
  %116 = load i64, i64* %len, align 8
  %cmp156 = icmp eq i64 %116, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.155
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i32 0, i32 0))
  %117 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %118 = load i8*, i8** %ret, align 8
  call void %117(i8* %118)
  %119 = load %struct.blob*, %struct.blob** %tmp, align 8
  call void @blobDestroy(%struct.blob* %119)
  store i8* null, i8** %retval
  br label %return

if.end.159:                                       ; preds = %if.end.155
  %120 = load i8*, i8** %data, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx160, align 1
  store i8 %121, i8* %byte, align 1
  %122 = load i8, i8* %byte, align 1
  %conv161 = zext i8 %122 to i64
  %123 = load i64, i64* %len, align 8
  %cmp162 = icmp uge i64 %conv161, %123
  br i1 %cmp162, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.159
  %124 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %125 = load i8*, i8** %ret, align 8
  call void %124(i8* %125)
  %126 = load %struct.blob*, %struct.blob** %tmp, align 8
  call void @blobDestroy(%struct.blob* %126)
  store i8* null, i8** %retval
  br label %return

if.end.165:                                       ; preds = %if.end.159
  %127 = load i8, i8* %byte, align 1
  %conv166 = zext i8 %127 to i32
  %add167 = add nsw i32 %conv166, 1
  %conv168 = sext i32 %add167 to i64
  %call169 = call i8* @cli_malloc(i64 %conv168)
  store i8* %call169, i8** %filename, align 8
  %128 = load i8*, i8** %filename, align 8
  %cmp170 = icmp eq i8* %128, null
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.165
  %129 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %130 = load i8*, i8** %ret, align 8
  call void %129(i8* %130)
  %131 = load %struct.blob*, %struct.blob** %tmp, align 8
  call void @blobDestroy(%struct.blob* %131)
  store i8* null, i8** %retval
  br label %return

if.end.173:                                       ; preds = %if.end.165
  %132 = load i8*, i8** %filename, align 8
  %133 = load i8*, i8** %data, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %133, i64 1
  %134 = load i8, i8* %byte, align 1
  %conv175 = zext i8 %134 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %132, i8* %arrayidx174, i64 %conv175, i32 1, i1 false)
  %135 = load i8, i8* %byte, align 1
  %idxprom176 = zext i8 %135 to i64
  %136 = load i8*, i8** %filename, align 8
  %arrayidx177 = getelementptr inbounds i8, i8* %136, i64 %idxprom176
  store i8 0, i8* %arrayidx177, align 1
  %137 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %setFilename.addr, align 8
  %138 = load i8*, i8** %ret, align 8
  %139 = load i8*, i8** %dir.addr, align 8
  %140 = load i8*, i8** %filename, align 8
  call void %137(i8* %138, i8* %139, i8* %140)
  %141 = load i8, i8* %byte, align 1
  %conv178 = zext i8 %141 to i32
  %add179 = add nsw i32 %conv178, 6
  %conv180 = sext i32 %add179 to i64
  %call181 = call i8* @cli_malloc(i64 %conv180)
  store i8* %call181, i8** %ptr, align 8
  %142 = load i8*, i8** %ptr, align 8
  %tobool182 = icmp ne i8* %142, null
  br i1 %tobool182, label %if.then.183, label %if.end.185

if.then.183:                                      ; preds = %if.end.173
  %143 = load i8*, i8** %ptr, align 8
  %144 = load i8*, i8** %filename, align 8
  %call184 = call i32 (i8*, i8*, ...) @sprintf(i8* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* %144) #3
  %145 = load %struct.message*, %struct.message** %m.addr, align 8
  %146 = load i8*, i8** %ptr, align 8
  call void @messageAddArgument(%struct.message* %145, i8* %146)
  %147 = load i8*, i8** %ptr, align 8
  call void @free(i8* %147) #3
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.183, %if.end.173
  %148 = load i8, i8* %byte, align 1
  %conv186 = zext i8 %148 to i32
  %add187 = add nsw i32 1, %conv186
  %add188 = add nsw i32 %add187, 1
  %add189 = add nsw i32 %add188, 4
  %add190 = add nsw i32 %add189, 4
  %add191 = add nsw i32 %add190, 2
  %conv192 = trunc i32 %add191 to i8
  store i8 %conv192, i8* %byte, align 1
  %149 = load i8, i8* %byte, align 1
  %idxprom193 = zext i8 %149 to i64
  %150 = load i8*, i8** %data, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %150, i64 %idxprom193
  %151 = load i8, i8* %arrayidx194, align 1
  %conv195 = zext i8 %151 to i32
  %shl196 = shl i32 %conv195, 24
  %and197 = and i32 %shl196, -16777216
  %152 = load i8, i8* %byte, align 1
  %conv198 = zext i8 %152 to i32
  %add199 = add nsw i32 %conv198, 1
  %idxprom200 = sext i32 %add199 to i64
  %153 = load i8*, i8** %data, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %153, i64 %idxprom200
  %154 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %154 to i32
  %shl203 = shl i32 %conv202, 16
  %and204 = and i32 %shl203, 16711680
  %or205 = or i32 %and197, %and204
  %155 = load i8, i8* %byte, align 1
  %conv206 = zext i8 %155 to i32
  %add207 = add nsw i32 %conv206, 2
  %idxprom208 = sext i32 %add207 to i64
  %156 = load i8*, i8** %data, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %156, i64 %idxprom208
  %157 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %157 to i32
  %shl211 = shl i32 %conv210, 8
  %and212 = and i32 %shl211, 65280
  %or213 = or i32 %or205, %and212
  %158 = load i8, i8* %byte, align 1
  %conv214 = zext i8 %158 to i32
  %add215 = add nsw i32 %conv214, 3
  %idxprom216 = sext i32 %add215 to i64
  %159 = load i8*, i8** %data, align 8
  %arrayidx217 = getelementptr inbounds i8, i8* %159, i64 %idxprom216
  %160 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %160 to i32
  %and219 = and i32 %conv218, 255
  %or220 = or i32 %or213, %and219
  %conv221 = zext i32 %or220 to i64
  store i64 %conv221, i64* %dataforklen, align 8
  %161 = load i8, i8* %byte, align 1
  %conv222 = zext i8 %161 to i32
  %add223 = add nsw i32 %conv222, 4
  %idxprom224 = sext i32 %add223 to i64
  %162 = load i8*, i8** %data, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %162, i64 %idxprom224
  %163 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %163 to i32
  %shl227 = shl i32 %conv226, 24
  %and228 = and i32 %shl227, -16777216
  %164 = load i8, i8* %byte, align 1
  %conv229 = zext i8 %164 to i32
  %add230 = add nsw i32 %conv229, 5
  %idxprom231 = sext i32 %add230 to i64
  %165 = load i8*, i8** %data, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %165, i64 %idxprom231
  %166 = load i8, i8* %arrayidx232, align 1
  %conv233 = zext i8 %166 to i32
  %shl234 = shl i32 %conv233, 16
  %and235 = and i32 %shl234, 16711680
  %or236 = or i32 %and228, %and235
  %167 = load i8, i8* %byte, align 1
  %conv237 = zext i8 %167 to i32
  %add238 = add nsw i32 %conv237, 6
  %idxprom239 = sext i32 %add238 to i64
  %168 = load i8*, i8** %data, align 8
  %arrayidx240 = getelementptr inbounds i8, i8* %168, i64 %idxprom239
  %169 = load i8, i8* %arrayidx240, align 1
  %conv241 = zext i8 %169 to i32
  %shl242 = shl i32 %conv241, 8
  %and243 = and i32 %shl242, 65280
  %or244 = or i32 %or236, %and243
  %170 = load i8, i8* %byte, align 1
  %conv245 = zext i8 %170 to i32
  %add246 = add nsw i32 %conv245, 7
  %idxprom247 = sext i32 %add246 to i64
  %171 = load i8*, i8** %data, align 8
  %arrayidx248 = getelementptr inbounds i8, i8* %171, i64 %idxprom247
  %172 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %172 to i32
  %and250 = and i32 %conv249, 255
  %or251 = or i32 %or244, %and250
  %conv252 = zext i32 %or251 to i64
  store i64 %conv252, i64* %resourceforklen, align 8
  %173 = load i8*, i8** %filename, align 8
  %174 = load i64, i64* %dataforklen, align 8
  %175 = load i64, i64* %resourceforklen, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.81, i32 0, i32 0), i8* %173, i64 %174, i64 %175)
  %176 = load i8*, i8** %filename, align 8
  call void @free(i8* %176) #3
  %177 = load i8, i8* %byte, align 1
  %conv253 = zext i8 %177 to i32
  %add254 = add nsw i32 %conv253, 10
  %conv255 = trunc i32 %add254 to i8
  store i8 %conv255, i8* %byte, align 1
  %178 = load %struct.blob*, %struct.blob** %tmp, align 8
  %call256 = call i64 @blobGetDataSize(%struct.blob* %178)
  %179 = load i8, i8* %byte, align 1
  %conv257 = zext i8 %179 to i64
  %sub258 = sub i64 %call256, %conv257
  store i64 %sub258, i64* %l, align 8
  %180 = load i64, i64* %l, align 8
  %181 = load i64, i64* %dataforklen, align 8
  %cmp259 = icmp ult i64 %180, %181
  br i1 %cmp259, label %if.then.261, label %if.end.262

if.then.261:                                      ; preds = %if.end.185
  %182 = load i64, i64* %dataforklen, align 8
  %183 = load i64, i64* %l, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.82, i32 0, i32 0), i64 %182, i64 %183)
  %184 = load i64, i64* %l, align 8
  store i64 %184, i64* %dataforklen, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.261, %if.end.185
  %185 = load void (i8*, %struct.cli_ctx*)*, void (i8*, %struct.cli_ctx*)** %setCTX.addr, align 8
  %tobool263 = icmp ne void (i8*, %struct.cli_ctx*)* %185, null
  br i1 %tobool263, label %land.lhs.true.264, label %if.end.268

land.lhs.true.264:                                ; preds = %if.end.262
  %186 = load %struct.message*, %struct.message** %m.addr, align 8
  %ctx = getelementptr inbounds %struct.message, %struct.message* %186, i32 0, i32 9
  %187 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %tobool265 = icmp ne %struct.cli_ctx* %187, null
  br i1 %tobool265, label %if.then.266, label %if.end.268

if.then.266:                                      ; preds = %land.lhs.true.264
  %188 = load void (i8*, %struct.cli_ctx*)*, void (i8*, %struct.cli_ctx*)** %setCTX.addr, align 8
  %189 = load i8*, i8** %ret, align 8
  %190 = load %struct.message*, %struct.message** %m.addr, align 8
  %ctx267 = getelementptr inbounds %struct.message, %struct.message* %190, i32 0, i32 9
  %191 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx267, align 8
  call void %188(i8* %189, %struct.cli_ctx* %191)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.266, %land.lhs.true.264, %if.end.262
  %192 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %addData.addr, align 8
  %193 = load i8*, i8** %ret, align 8
  %194 = load i8, i8* %byte, align 1
  %idxprom269 = zext i8 %194 to i64
  %195 = load i8*, i8** %data, align 8
  %arrayidx270 = getelementptr inbounds i8, i8* %195, i64 %idxprom269
  %196 = load i64, i64* %dataforklen, align 8
  call void %192(i8* %193, i8* %arrayidx270, i64 %196)
  %197 = load %struct.blob*, %struct.blob** %tmp, align 8
  call void @blobDestroy(%struct.blob* %197)
  %198 = load i32, i32* %destroy_text.addr, align 4
  %tobool271 = icmp ne i32 %198, 0
  br i1 %tobool271, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %if.end.268
  %199 = load %struct.message*, %struct.message** %m.addr, align 8
  %binhex = getelementptr inbounds %struct.message, %struct.message* %199, i32 0, i32 16
  store %struct.text* null, %struct.text** %binhex, align 8
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.272, %if.end.268
  %200 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes274 = getelementptr inbounds %struct.message, %struct.message* %200, i32 0, i32 2
  %201 = load i32, i32* %numberOfEncTypes274, align 4
  %cmp275 = icmp eq i32 %201, 0
  br i1 %cmp275, label %if.then.286, label %lor.lhs.false.277

lor.lhs.false.277:                                ; preds = %if.end.273
  %202 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes278 = getelementptr inbounds %struct.message, %struct.message* %202, i32 0, i32 2
  %203 = load i32, i32* %numberOfEncTypes278, align 4
  %cmp279 = icmp eq i32 %203, 1
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.287

land.lhs.true.281:                                ; preds = %lor.lhs.false.277
  %204 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes282 = getelementptr inbounds %struct.message, %struct.message* %204, i32 0, i32 1
  %205 = load i32*, i32** %encodingTypes282, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %205, i64 0
  %206 = load i32, i32* %arrayidx283, align 4
  %cmp284 = icmp eq i32 %206, 8
  br i1 %cmp284, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %land.lhs.true.281, %if.end.273
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.83, i32 0, i32 0))
  %207 = load i8*, i8** %ret, align 8
  store i8* %207, i8** %retval
  br label %return

if.end.287:                                       ; preds = %land.lhs.true.281, %lor.lhs.false.277
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %if.end.4
  %208 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes289 = getelementptr inbounds %struct.message, %struct.message* %208, i32 0, i32 2
  %209 = load i32, i32* %numberOfEncTypes289, align 4
  %cmp290 = icmp eq i32 %209, 0
  br i1 %cmp290, label %if.then.292, label %if.end.322

if.then.292:                                      ; preds = %if.end.288
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.84, i32 0, i32 0))
  %210 = load %struct.message*, %struct.message** %m.addr, align 8
  %call293 = call i8* @messageFindArgument(%struct.message* %210, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  store i8* %call293, i8** %filename, align 8
  %211 = load i8*, i8** %filename, align 8
  %cmp294 = icmp eq i8* %211, null
  br i1 %cmp294, label %if.then.296, label %if.end.303

if.then.296:                                      ; preds = %if.then.292
  %212 = load %struct.message*, %struct.message** %m.addr, align 8
  %call297 = call i8* @messageFindArgument(%struct.message* %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  store i8* %call297, i8** %filename, align 8
  %213 = load i8*, i8** %filename, align 8
  %cmp298 = icmp eq i8* %213, null
  br i1 %cmp298, label %if.then.300, label %if.else.301

if.then.300:                                      ; preds = %if.then.296
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.85, i32 0, i32 0))
  %214 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageAddArgument(%struct.message* %214, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0))
  br label %if.end.302

if.else.301:                                      ; preds = %if.then.296
  %215 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageSetEncoding(%struct.message* %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.302

if.end.302:                                       ; preds = %if.else.301, %if.then.300
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.then.292
  %216 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %setFilename.addr, align 8
  %217 = load i8*, i8** %ret, align 8
  %218 = load i8*, i8** %dir.addr, align 8
  %219 = load i8*, i8** %filename, align 8
  %tobool304 = icmp ne i8* %219, null
  br i1 %tobool304, label %land.lhs.true.305, label %cond.false.309

land.lhs.true.305:                                ; preds = %if.end.303
  %220 = load i8*, i8** %filename, align 8
  %221 = load i8, i8* %220, align 1
  %conv306 = sext i8 %221 to i32
  %tobool307 = icmp ne i32 %conv306, 0
  br i1 %tobool307, label %cond.true.308, label %cond.false.309

cond.true.308:                                    ; preds = %land.lhs.true.305
  %222 = load i8*, i8** %filename, align 8
  br label %cond.end.310

cond.false.309:                                   ; preds = %land.lhs.true.305, %if.end.303
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.309, %cond.true.308
  %cond311 = phi i8* [ %222, %cond.true.308 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), %cond.false.309 ]
  call void %216(i8* %217, i8* %218, i8* %cond311)
  %223 = load i8*, i8** %filename, align 8
  %tobool312 = icmp ne i8* %223, null
  br i1 %tobool312, label %if.then.313, label %if.end.314

if.then.313:                                      ; preds = %cond.end.310
  %224 = load i8*, i8** %filename, align 8
  call void @free(i8* %224) #3
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.313, %cond.end.310
  %225 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes315 = getelementptr inbounds %struct.message, %struct.message* %225, i32 0, i32 2
  %226 = load i32, i32* %numberOfEncTypes315, align 4
  %cmp316 = icmp eq i32 %226, 0
  br i1 %cmp316, label %if.then.318, label %if.end.321

if.then.318:                                      ; preds = %if.end.314
  %227 = load i8* (%struct.text*, i8*, i32)*, i8* (%struct.text*, i8*, i32)** %exportText.addr, align 8
  %228 = load %struct.message*, %struct.message** %m.addr, align 8
  %call319 = call %struct.text* @messageGetBody(%struct.message* %228)
  %229 = load i8*, i8** %ret, align 8
  %230 = load i32, i32* %destroy_text.addr, align 4
  %call320 = call i8* %227(%struct.text* %call319, i8* %229, i32 %230)
  store i8* %call320, i8** %retval
  br label %return

if.end.321:                                       ; preds = %if.end.314
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.321, %if.end.288
  %231 = load void (i8*, %struct.cli_ctx*)*, void (i8*, %struct.cli_ctx*)** %setCTX.addr, align 8
  %tobool323 = icmp ne void (i8*, %struct.cli_ctx*)* %231, null
  br i1 %tobool323, label %land.lhs.true.324, label %if.end.329

land.lhs.true.324:                                ; preds = %if.end.322
  %232 = load %struct.message*, %struct.message** %m.addr, align 8
  %ctx325 = getelementptr inbounds %struct.message, %struct.message* %232, i32 0, i32 9
  %233 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx325, align 8
  %tobool326 = icmp ne %struct.cli_ctx* %233, null
  br i1 %tobool326, label %if.then.327, label %if.end.329

if.then.327:                                      ; preds = %land.lhs.true.324
  %234 = load void (i8*, %struct.cli_ctx*)*, void (i8*, %struct.cli_ctx*)** %setCTX.addr, align 8
  %235 = load i8*, i8** %ret, align 8
  %236 = load %struct.message*, %struct.message** %m.addr, align 8
  %ctx328 = getelementptr inbounds %struct.message, %struct.message* %236, i32 0, i32 9
  %237 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx328, align 8
  call void %234(i8* %235, %struct.cli_ctx* %237)
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.327, %land.lhs.true.324, %if.end.322
  store i32 0, i32* %i, align 4
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.524, %if.end.329
  %238 = load i32, i32* %i, align 4
  %239 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes331 = getelementptr inbounds %struct.message, %struct.message* %239, i32 0, i32 2
  %240 = load i32, i32* %numberOfEncTypes331, align 4
  %cmp332 = icmp slt i32 %238, %240
  br i1 %cmp332, label %for.body.334, label %for.end.526

for.body.334:                                     ; preds = %for.cond.330
  %241 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %241 to i64
  %242 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes337 = getelementptr inbounds %struct.message, %struct.message* %242, i32 0, i32 1
  %243 = load i32*, i32** %encodingTypes337, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %243, i64 %idxprom336
  %244 = load i32, i32* %arrayidx338, align 4
  store i32 %244, i32* %enctype, align 4
  %245 = load i32, i32* %i, align 4
  %cmp340 = icmp sgt i32 %245, 0
  br i1 %cmp340, label %if.then.342, label %if.end.349

if.then.342:                                      ; preds = %for.body.334
  %246 = load i8* ()*, i8* ()** %create.addr, align 8
  %call344 = call i8* %246()
  store i8* %call344, i8** %newret, align 8
  %247 = load i8*, i8** %newret, align 8
  %cmp345 = icmp eq i8* %247, null
  br i1 %cmp345, label %if.then.347, label %if.end.348

if.then.347:                                      ; preds = %if.then.342
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.88, i32 0, i32 0))
  %248 = load i8*, i8** %ret, align 8
  store i8* %248, i8** %retval
  br label %return

if.end.348:                                       ; preds = %if.then.342
  %249 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %250 = load i8*, i8** %ret, align 8
  call void %249(i8* %250)
  %251 = load i8*, i8** %newret, align 8
  store i8* %251, i8** %ret, align 8
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %for.body.334
  %252 = load i32, i32* %i, align 4
  %253 = load i32, i32* %enctype, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.89, i32 0, i32 0), i32 %252, i32 %253)
  %254 = load i32, i32* %enctype, align 4
  %cmp350 = icmp eq i32 %254, 6
  br i1 %cmp350, label %land.lhs.true.355, label %lor.lhs.false.352

lor.lhs.false.352:                                ; preds = %if.end.349
  %255 = load i32, i32* %i, align 4
  %cmp353 = icmp eq i32 %255, 0
  br i1 %cmp353, label %land.lhs.true.355, label %if.else.387

land.lhs.true.355:                                ; preds = %lor.lhs.false.352, %if.end.349
  %256 = load %struct.message*, %struct.message** %m.addr, align 8
  %call356 = call %struct.text* @yEncBegin(%struct.message* %256)
  %tobool357 = icmp ne %struct.text* %call356, null
  br i1 %tobool357, label %if.then.358, label %if.else.387

if.then.358:                                      ; preds = %land.lhs.true.355
  %257 = load %struct.message*, %struct.message** %m.addr, align 8
  %call360 = call %struct.text* @yEncBegin(%struct.message* %257)
  store %struct.text* %call360, %struct.text** %t_line, align 8
  %258 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line361 = getelementptr inbounds %struct.text, %struct.text* %258, i32 0, i32 0
  %259 = load i8*, i8** %t_line361, align 8
  %call362 = call i8* @lineGetData(i8* %259)
  store i8* %call362, i8** %f, align 8
  %260 = load i8*, i8** %f, align 8
  %call363 = call i8* @strstr(i8* %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0)) #8
  store i8* %call363, i8** %filename, align 8
  %cmp364 = icmp ne i8* %call363, null
  br i1 %cmp364, label %if.then.366, label %if.end.374

if.then.366:                                      ; preds = %if.then.358
  %261 = load i8*, i8** %filename, align 8
  %arrayidx367 = getelementptr inbounds i8, i8* %261, i64 6
  %call368 = call i8* @cli_strdup(i8* %arrayidx367)
  store i8* %call368, i8** %filename, align 8
  %262 = load i8*, i8** %filename, align 8
  %tobool369 = icmp ne i8* %262, null
  br i1 %tobool369, label %if.then.370, label %if.end.373

if.then.370:                                      ; preds = %if.then.366
  %263 = load i8*, i8** %filename, align 8
  %call371 = call i32 @cli_chomp(i8* %263)
  %264 = load i8*, i8** %filename, align 8
  %call372 = call i64 @strstrip(i8* %264)
  %265 = load i8*, i8** %filename, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.91, i32 0, i32 0), i8* %265)
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.370, %if.then.366
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.then.358
  %266 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %setFilename.addr, align 8
  %267 = load i8*, i8** %ret, align 8
  %268 = load i8*, i8** %dir.addr, align 8
  %269 = load i8*, i8** %filename, align 8
  %tobool375 = icmp ne i8* %269, null
  br i1 %tobool375, label %land.lhs.true.376, label %cond.false.380

land.lhs.true.376:                                ; preds = %if.end.374
  %270 = load i8*, i8** %filename, align 8
  %271 = load i8, i8* %270, align 1
  %conv377 = sext i8 %271 to i32
  %tobool378 = icmp ne i32 %conv377, 0
  br i1 %tobool378, label %cond.true.379, label %cond.false.380

cond.true.379:                                    ; preds = %land.lhs.true.376
  %272 = load i8*, i8** %filename, align 8
  br label %cond.end.381

cond.false.380:                                   ; preds = %land.lhs.true.376, %if.end.374
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.false.380, %cond.true.379
  %cond382 = phi i8* [ %272, %cond.true.379 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), %cond.false.380 ]
  call void %266(i8* %267, i8* %268, i8* %cond382)
  %273 = load i8*, i8** %filename, align 8
  %tobool383 = icmp ne i8* %273, null
  br i1 %tobool383, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %cond.end.381
  %274 = load i8*, i8** %filename, align 8
  call void @free(i8* %274) #3
  store i8* null, i8** %filename, align 8
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.384, %cond.end.381
  %275 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next386 = getelementptr inbounds %struct.text, %struct.text* %275, i32 0, i32 1
  %276 = load %struct.text*, %struct.text** %t_next386, align 8
  store %struct.text* %276, %struct.text** %t_line, align 8
  store i32 6, i32* %enctype, align 4
  %277 = load %struct.message*, %struct.message** %m.addr, align 8
  %yenc = getelementptr inbounds %struct.message, %struct.message* %277, i32 0, i32 17
  store %struct.text* null, %struct.text** %yenc, align 8
  br label %if.end.414

if.else.387:                                      ; preds = %land.lhs.true.355, %lor.lhs.false.352
  %278 = load i32, i32* %enctype, align 4
  %cmp388 = icmp eq i32 %278, 5
  br i1 %cmp388, label %if.then.390, label %if.end.394

if.then.390:                                      ; preds = %if.else.387
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.92, i32 0, i32 0))
  %279 = load i32, i32* %i, align 4
  %idxprom391 = sext i32 %279 to i64
  %280 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes392 = getelementptr inbounds %struct.message, %struct.message* %280, i32 0, i32 1
  %281 = load i32*, i32** %encodingTypes392, align 8
  %arrayidx393 = getelementptr inbounds i32, i32* %281, i64 %idxprom391
  store i32 0, i32* %arrayidx393, align 4
  store i32 0, i32* %enctype, align 4
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.390, %if.else.387
  %282 = load %struct.message*, %struct.message** %m.addr, align 8
  %call395 = call i8* @messageGetFilename(%struct.message* %282)
  store i8* %call395, i8** %filename, align 8
  %283 = load i8*, i8** %filename, align 8
  %cmp396 = icmp eq i8* %283, null
  br i1 %cmp396, label %if.then.398, label %if.else.399

if.then.398:                                      ; preds = %if.end.394
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.93, i32 0, i32 0))
  %284 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageAddArgument(%struct.message* %284, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.86, i32 0, i32 0))
  br label %if.end.404

if.else.399:                                      ; preds = %if.end.394
  %285 = load i32, i32* %enctype, align 4
  %cmp400 = icmp eq i32 %285, 0
  br i1 %cmp400, label %if.then.402, label %if.end.403

if.then.402:                                      ; preds = %if.else.399
  %286 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageSetEncoding(%struct.message* %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.402, %if.else.399
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %if.then.398
  %287 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %setFilename.addr, align 8
  %288 = load i8*, i8** %ret, align 8
  %289 = load i8*, i8** %dir.addr, align 8
  %290 = load i8*, i8** %filename, align 8
  %tobool405 = icmp ne i8* %290, null
  br i1 %tobool405, label %land.lhs.true.406, label %cond.false.410

land.lhs.true.406:                                ; preds = %if.end.404
  %291 = load i8*, i8** %filename, align 8
  %292 = load i8, i8* %291, align 1
  %conv407 = sext i8 %292 to i32
  %tobool408 = icmp ne i32 %conv407, 0
  br i1 %tobool408, label %cond.true.409, label %cond.false.410

cond.true.409:                                    ; preds = %land.lhs.true.406
  %293 = load i8*, i8** %filename, align 8
  br label %cond.end.411

cond.false.410:                                   ; preds = %land.lhs.true.406, %if.end.404
  br label %cond.end.411

cond.end.411:                                     ; preds = %cond.false.410, %cond.true.409
  %cond412 = phi i8* [ %293, %cond.true.409 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), %cond.false.410 ]
  call void %287(i8* %288, i8* %289, i8* %cond412)
  %294 = load %struct.message*, %struct.message** %m.addr, align 8
  %call413 = call %struct.text* @messageGetBody(%struct.message* %294)
  store %struct.text* %call413, %struct.text** %t_line, align 8
  br label %if.end.414

if.end.414:                                       ; preds = %cond.end.411, %if.end.385
  %295 = load i8*, i8** %filename, align 8
  %tobool415 = icmp ne i8* %295, null
  br i1 %tobool415, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %if.end.414
  %296 = load i8*, i8** %filename, align 8
  call void @free(i8* %296) #3
  br label %if.end.417

if.end.417:                                       ; preds = %if.then.416, %if.end.414
  %297 = load %struct.text*, %struct.text** %t_line, align 8
  %cmp418 = icmp eq %struct.text* %297, null
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %if.end.417
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.94, i32 0, i32 0))
  %298 = load void (i8*)*, void (i8*)** %destroy.addr, align 8
  %299 = load i8*, i8** %ret, align 8
  call void %298(i8* %299)
  store i8* null, i8** %retval
  br label %return

if.end.421:                                       ; preds = %if.end.417
  %300 = load i32, i32* %enctype, align 4
  %cmp422 = icmp eq i32 %300, 0
  br i1 %cmp422, label %if.then.424, label %if.end.433

if.then.424:                                      ; preds = %if.end.421
  %301 = load i32, i32* %i, align 4
  %302 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes425 = getelementptr inbounds %struct.message, %struct.message* %302, i32 0, i32 2
  %303 = load i32, i32* %numberOfEncTypes425, align 4
  %sub426 = sub nsw i32 %303, 1
  %cmp427 = icmp eq i32 %301, %sub426
  br i1 %cmp427, label %if.then.429, label %if.end.431

if.then.429:                                      ; preds = %if.then.424
  %304 = load i8* (%struct.text*, i8*, i32)*, i8* (%struct.text*, i8*, i32)** %exportText.addr, align 8
  %305 = load %struct.text*, %struct.text** %t_line, align 8
  %306 = load i8*, i8** %ret, align 8
  %307 = load i32, i32* %destroy_text.addr, align 4
  %call430 = call i8* %304(%struct.text* %305, i8* %306, i32 %307)
  br label %for.end.526

if.end.431:                                       ; preds = %if.then.424
  %308 = load i8* (%struct.text*, i8*, i32)*, i8* (%struct.text*, i8*, i32)** %exportText.addr, align 8
  %309 = load %struct.text*, %struct.text** %t_line, align 8
  %310 = load i8*, i8** %ret, align 8
  %call432 = call i8* %308(%struct.text* %309, i8* %310, i32 0)
  br label %for.inc.524

if.end.433:                                       ; preds = %if.end.421
  store i64 0, i64* %size, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.433
  %311 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line440 = getelementptr inbounds %struct.text, %struct.text* %311, i32 0, i32 0
  %312 = load i8*, i8** %t_line440, align 8
  %call441 = call i8* @lineGetData(i8* %312)
  store i8* %call441, i8** %line, align 8
  %313 = load i32, i32* %enctype, align 4
  %cmp444 = icmp eq i32 %313, 6
  br i1 %cmp444, label %if.then.446, label %if.end.456

if.then.446:                                      ; preds = %do.body
  %314 = load i8*, i8** %line, align 8
  %cmp447 = icmp eq i8* %314, null
  br i1 %cmp447, label %if.then.449, label %if.end.450

if.then.449:                                      ; preds = %if.then.446
  br label %do.cond

if.end.450:                                       ; preds = %if.then.446
  %315 = load i8*, i8** %line, align 8
  %call451 = call i32 @strncmp(i8* %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i64 6) #8
  %cmp452 = icmp eq i32 %call451, 0
  br i1 %cmp452, label %if.then.454, label %if.end.455

if.then.454:                                      ; preds = %if.end.450
  br label %do.end

if.end.455:                                       ; preds = %if.end.450
  br label %if.end.456

if.end.456:                                       ; preds = %if.end.455, %do.body
  %316 = load i8*, i8** %line, align 8
  %tobool457 = icmp ne i8* %316, null
  br i1 %tobool457, label %cond.true.458, label %cond.false.461

cond.true.458:                                    ; preds = %if.end.456
  %317 = load i8*, i8** %line, align 8
  %call459 = call i64 @strlen(i8* %317) #8
  %add460 = add i64 %call459, 2
  br label %cond.end.462

cond.false.461:                                   ; preds = %if.end.456
  br label %cond.end.462

cond.end.462:                                     ; preds = %cond.false.461, %cond.true.458
  %cond463 = phi i64 [ %add460, %cond.true.458 ], [ 0, %cond.false.461 ]
  store i64 %cond463, i64* %datasize, align 8
  %318 = load i64, i64* %datasize, align 8
  %cmp464 = icmp uge i64 %318, 1024
  br i1 %cmp464, label %if.then.466, label %if.else.468

if.then.466:                                      ; preds = %cond.end.462
  %319 = load i64, i64* %datasize, align 8
  %call467 = call i8* @cli_malloc(i64 %319)
  store i8* %call467, i8** %bigbuf, align 8
  store i8* %call467, i8** %data438, align 8
  br label %if.end.469

if.else.468:                                      ; preds = %cond.end.462
  store i8* null, i8** %bigbuf, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %smallbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %data438, align 8
  store i64 1024, i64* %datasize, align 8
  br label %if.end.469

if.end.469:                                       ; preds = %if.else.468, %if.then.466
  %320 = load %struct.message*, %struct.message** %m.addr, align 8
  %321 = load i32, i32* %enctype, align 4
  %322 = load i8*, i8** %line, align 8
  %323 = load i8*, i8** %data438, align 8
  %324 = load i64, i64* %datasize, align 8
  %call470 = call i8* @decodeLine(%struct.message* %320, i32 %321, i8* %322, i8* %323, i64 %324)
  store i8* %call470, i8** %uptr436, align 8
  %325 = load i8*, i8** %uptr436, align 8
  %cmp471 = icmp eq i8* %325, null
  br i1 %cmp471, label %if.then.473, label %if.end.478

if.then.473:                                      ; preds = %if.end.469
  %326 = load i8*, i8** %data438, align 8
  %327 = load i8*, i8** %bigbuf, align 8
  %cmp474 = icmp eq i8* %326, %327
  br i1 %cmp474, label %if.then.476, label %if.end.477

if.then.476:                                      ; preds = %if.then.473
  %328 = load i8*, i8** %data438, align 8
  call void @free(i8* %328) #3
  br label %if.end.477

if.end.477:                                       ; preds = %if.then.476, %if.then.473
  br label %do.end

if.end.478:                                       ; preds = %if.end.469
  %329 = load i8*, i8** %uptr436, align 8
  %330 = load i8*, i8** %data438, align 8
  %cmp479 = icmp ne i8* %329, %330
  br i1 %cmp479, label %if.then.481, label %if.end.486

if.then.481:                                      ; preds = %if.end.478
  %331 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %addData.addr, align 8
  %332 = load i8*, i8** %ret, align 8
  %333 = load i8*, i8** %data438, align 8
  %334 = load i8*, i8** %uptr436, align 8
  %335 = load i8*, i8** %data438, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %334 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %335 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void %331(i8* %332, i8* %333, i64 %sub.ptr.sub)
  %336 = load i8*, i8** %uptr436, align 8
  %337 = load i8*, i8** %data438, align 8
  %sub.ptr.lhs.cast482 = ptrtoint i8* %336 to i64
  %sub.ptr.rhs.cast483 = ptrtoint i8* %337 to i64
  %sub.ptr.sub484 = sub i64 %sub.ptr.lhs.cast482, %sub.ptr.rhs.cast483
  %338 = load i64, i64* %size, align 8
  %add485 = add i64 %338, %sub.ptr.sub484
  store i64 %add485, i64* %size, align 8
  br label %if.end.486

if.end.486:                                       ; preds = %if.then.481, %if.end.478
  %339 = load i8*, i8** %data438, align 8
  %340 = load i8*, i8** %bigbuf, align 8
  %cmp487 = icmp eq i8* %339, %340
  br i1 %cmp487, label %if.then.489, label %if.end.490

if.then.489:                                      ; preds = %if.end.486
  %341 = load i8*, i8** %data438, align 8
  call void @free(i8* %341) #3
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.489, %if.end.486
  %342 = load i8*, i8** %line, align 8
  %tobool491 = icmp ne i8* %342, null
  br i1 %tobool491, label %land.lhs.true.492, label %if.end.503

land.lhs.true.492:                                ; preds = %if.end.490
  %343 = load i32, i32* %destroy_text.addr, align 4
  %tobool493 = icmp ne i32 %343, 0
  br i1 %tobool493, label %land.lhs.true.494, label %if.end.503

land.lhs.true.494:                                ; preds = %land.lhs.true.492
  %344 = load i32, i32* %i, align 4
  %345 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes495 = getelementptr inbounds %struct.message, %struct.message* %345, i32 0, i32 2
  %346 = load i32, i32* %numberOfEncTypes495, align 4
  %sub496 = sub nsw i32 %346, 1
  %cmp497 = icmp eq i32 %344, %sub496
  br i1 %cmp497, label %if.then.499, label %if.end.503

if.then.499:                                      ; preds = %land.lhs.true.494
  %347 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line500 = getelementptr inbounds %struct.text, %struct.text* %347, i32 0, i32 0
  %348 = load i8*, i8** %t_line500, align 8
  %call501 = call i8* @lineUnlink(i8* %348)
  %349 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line502 = getelementptr inbounds %struct.text, %struct.text* %349, i32 0, i32 0
  store i8* null, i8** %t_line502, align 8
  br label %if.end.503

if.end.503:                                       ; preds = %if.then.499, %land.lhs.true.494, %land.lhs.true.492, %if.end.490
  br label %do.cond

do.cond:                                          ; preds = %if.end.503, %if.then.449
  %350 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next504 = getelementptr inbounds %struct.text, %struct.text* %350, i32 0, i32 1
  %351 = load %struct.text*, %struct.text** %t_next504, align 8
  store %struct.text* %351, %struct.text** %t_line, align 8
  %cmp505 = icmp ne %struct.text* %351, null
  br i1 %cmp505, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end.477, %if.then.454
  %352 = load i64, i64* %size, align 8
  %353 = load i32, i32* %enctype, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.95, i32 0, i32 0), i64 %352, i32 %353)
  %354 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars = getelementptr inbounds %struct.message, %struct.message* %354, i32 0, i32 13
  %355 = load i32, i32* %base64chars, align 4
  %tobool507 = icmp ne i32 %355, 0
  br i1 %tobool507, label %if.then.508, label %if.end.523

if.then.508:                                      ; preds = %do.end
  %356 = load %struct.message*, %struct.message** %m.addr, align 8
  %arraydecay513 = getelementptr inbounds [4 x i8], [4 x i8]* %data510, i32 0, i32 0
  %call514 = call i8* @base64Flush(%struct.message* %356, i8* %arraydecay513)
  store i8* %call514, i8** %ptr512, align 8
  %357 = load i8*, i8** %ptr512, align 8
  %tobool515 = icmp ne i8* %357, null
  br i1 %tobool515, label %if.then.516, label %if.end.522

if.then.516:                                      ; preds = %if.then.508
  %358 = load void (i8*, i8*, i64)*, void (i8*, i8*, i64)** %addData.addr, align 8
  %359 = load i8*, i8** %ret, align 8
  %arraydecay517 = getelementptr inbounds [4 x i8], [4 x i8]* %data510, i32 0, i32 0
  %360 = load i8*, i8** %ptr512, align 8
  %arraydecay518 = getelementptr inbounds [4 x i8], [4 x i8]* %data510, i32 0, i32 0
  %sub.ptr.lhs.cast519 = ptrtoint i8* %360 to i64
  %sub.ptr.rhs.cast520 = ptrtoint i8* %arraydecay518 to i64
  %sub.ptr.sub521 = sub i64 %sub.ptr.lhs.cast519, %sub.ptr.rhs.cast520
  call void %358(i8* %359, i8* %arraydecay517, i64 %sub.ptr.sub521)
  br label %if.end.522

if.end.522:                                       ; preds = %if.then.516, %if.then.508
  br label %if.end.523

if.end.523:                                       ; preds = %if.end.522, %do.end
  br label %for.inc.524

for.inc.524:                                      ; preds = %if.end.523, %if.end.431
  %361 = load i32, i32* %i, align 4
  %inc525 = add nsw i32 %361, 1
  store i32 %inc525, i32* %i, align 4
  br label %for.cond.330

for.end.526:                                      ; preds = %if.then.429, %for.cond.330
  %362 = load i8*, i8** %ret, align 8
  store i8* %362, i8** %retval
  br label %return

return:                                           ; preds = %for.end.526, %if.then.420, %if.then.347, %if.then.318, %if.then.286, %if.then.172, %if.then.164, %if.then.158, %if.then.112, %if.then.31, %if.then.20, %if.then.16, %if.then.3, %if.then
  %363 = load i8*, i8** %retval
  ret i8* %363
}

declare %struct.fileblob* @fileblobCreate() #1

declare void @fileblobDestroy(%struct.fileblob*) #1

declare void @fileblobSetFilename(%struct.fileblob*, i8*, i8*) #1

declare i32 @fileblobAddData(%struct.fileblob*, i8*, i64) #1

declare %struct.fileblob* @textToFileblob(%struct.text*, %struct.fileblob*, i32) #1

declare void @fileblobSetCTX(%struct.fileblob*, %struct.cli_ctx*) #1

; Function Attrs: nounwind uwtable
define %struct.blob* @messageToBlob(%struct.message* %m, i32 %destroy) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %destroy.addr = alloca i32, align 4
  %b = alloca %struct.blob*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i32 %destroy, i32* %destroy.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0))
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %1 = load i32, i32* %destroy.addr, align 4
  %call = call i8* @messageExport(%struct.message* %0, i8* null, i8* ()* bitcast (%struct.blob* ()* @blobCreate to i8* ()*), void (i8*)* bitcast (void (%struct.blob*)* @blobDestroy to void (i8*)*), void (i8*, i8*, i8*)* bitcast (void (%struct.blob*, i8*, i8*)* @blobSetFilename to void (i8*, i8*, i8*)*), void (i8*, i8*, i64)* bitcast (i32 (%struct.blob*, i8*, i64)* @blobAddData to void (i8*, i8*, i64)*), i8* (%struct.text*, i8*, i32)* bitcast (%struct.blob* (%struct.text*, %struct.blob*, i32)* @textToBlob to i8* (%struct.text*, i8*, i32)*), void (i8*, %struct.cli_ctx*)* null, i32 %1)
  %2 = bitcast i8* %call to %struct.blob*
  store %struct.blob* %2, %struct.blob** %b, align 8
  %3 = load i32, i32* %destroy.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first = getelementptr inbounds %struct.message, %struct.message* %4, i32 0, i32 7
  %5 = load %struct.text*, %struct.text** %body_first, align 8
  %tobool1 = icmp ne %struct.text* %5, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first2 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 7
  %7 = load %struct.text*, %struct.text** %body_first2, align 8
  call void @textDestroy(%struct.text* %7)
  %8 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_last = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 8
  store %struct.text* null, %struct.text** %body_last, align 8
  %9 = load %struct.message*, %struct.message** %m.addr, align 8
  %body_first3 = getelementptr inbounds %struct.message, %struct.message* %9, i32 0, i32 7
  store %struct.text* null, %struct.text** %body_first3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.blob*, %struct.blob** %b, align 8
  ret %struct.blob* %10
}

declare %struct.blob* @blobCreate() #1

declare void @blobDestroy(%struct.blob*) #1

declare void @blobSetFilename(%struct.blob*, i8*, i8*) #1

declare i32 @blobAddData(%struct.blob*, i8*, i64) #1

declare %struct.blob* @textToBlob(%struct.text*, %struct.blob*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.text* @messageToText(%struct.message* %m) #0 {
entry:
  %retval = alloca %struct.text*, align 8
  %m.addr = alloca %struct.message*, align 8
  %i = alloca i32, align 4
  %first = alloca %struct.text*, align 8
  %last = alloca %struct.text*, align 8
  %t_line = alloca %struct.text*, align 8
  %enctype = alloca i32, align 4
  %data = alloca [1024 x i8], align 16
  %uptr = alloca i8*, align 8
  %line = alloca i8*, align 8
  %data151 = alloca [4 x i8], align 1
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store %struct.text* null, %struct.text** %first, align 8
  store %struct.text* null, %struct.text** %last, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 2
  %1 = load i32, i32* %numberOfEncTypes, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %call = call %struct.text* @messageGetBody(%struct.message* %2)
  store %struct.text* %call, %struct.text** %t_line, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load %struct.text*, %struct.text** %t_line, align 8
  %tobool = icmp ne %struct.text* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.text*, %struct.text** %first, align 8
  %cmp1 = icmp eq %struct.text* %4, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %for.body
  %call3 = call i8* @cli_malloc(i64 16)
  %5 = bitcast i8* %call3 to %struct.text*
  store %struct.text* %5, %struct.text** %last, align 8
  store %struct.text* %5, %struct.text** %first, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %call4 = call i8* @cli_malloc(i64 16)
  %6 = bitcast i8* %call4 to %struct.text*
  %7 = load %struct.text*, %struct.text** %last, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %7, i32 0, i32 1
  store %struct.text* %6, %struct.text** %t_next, align 8
  %8 = load %struct.text*, %struct.text** %last, align 8
  %t_next5 = getelementptr inbounds %struct.text, %struct.text* %8, i32 0, i32 1
  %9 = load %struct.text*, %struct.text** %t_next5, align 8
  store %struct.text* %9, %struct.text** %last, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  %10 = load %struct.text*, %struct.text** %last, align 8
  %cmp6 = icmp eq %struct.text* %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.text*, %struct.text** %first, align 8
  %tobool8 = icmp ne %struct.text* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  %12 = load %struct.text*, %struct.text** %first, align 8
  call void @textDestroy(%struct.text* %12)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.7
  store %struct.text* null, %struct.text** %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %13 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line12 = getelementptr inbounds %struct.text, %struct.text* %13, i32 0, i32 0
  %14 = load i8*, i8** %t_line12, align 8
  %tobool13 = icmp ne i8* %14, null
  br i1 %tobool13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.end.11
  %15 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line15 = getelementptr inbounds %struct.text, %struct.text* %15, i32 0, i32 0
  %16 = load i8*, i8** %t_line15, align 8
  %call16 = call i8* @lineLink(i8* %16)
  %17 = load %struct.text*, %struct.text** %last, align 8
  %t_line17 = getelementptr inbounds %struct.text, %struct.text* %17, i32 0, i32 0
  store i8* %call16, i8** %t_line17, align 8
  br label %if.end.20

if.else.18:                                       ; preds = %if.end.11
  %18 = load %struct.text*, %struct.text** %last, align 8
  %t_line19 = getelementptr inbounds %struct.text, %struct.text* %18, i32 0, i32 0
  store i8* null, i8** %t_line19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %19 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next21 = getelementptr inbounds %struct.text, %struct.text* %19, i32 0, i32 1
  %20 = load %struct.text*, %struct.text** %t_next21, align 8
  store %struct.text* %20, %struct.text** %t_line, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.text*, %struct.text** %last, align 8
  %tobool22 = icmp ne %struct.text* %21, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %for.end
  %22 = load %struct.text*, %struct.text** %last, align 8
  %t_next24 = getelementptr inbounds %struct.text, %struct.text* %22, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %for.end
  %23 = load %struct.text*, %struct.text** %first, align 8
  store %struct.text* %23, %struct.text** %retval
  br label %return

if.end.26:                                        ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.179, %if.end.26
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.message*, %struct.message** %m.addr, align 8
  %numberOfEncTypes28 = getelementptr inbounds %struct.message, %struct.message* %25, i32 0, i32 2
  %26 = load i32, i32* %numberOfEncTypes28, align 4
  %cmp29 = icmp slt i32 %24, %26
  br i1 %cmp29, label %for.body.30, label %for.end.180

for.body.30:                                      ; preds = %for.cond.27
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.message*, %struct.message** %m.addr, align 8
  %encodingTypes = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 1
  %29 = load i32*, i32** %encodingTypes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %29, i64 %idxprom
  %30 = load i32, i32* %arrayidx, align 4
  store i32 %30, i32* %enctype, align 4
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %enctype, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i32 0, i32 0), i32 %31, i32 %32)
  %33 = load i32, i32* %enctype, align 4
  switch i32 %33, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb.62
    i32 6, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %for.body.30, %for.body.30, %for.body.30
  %34 = load %struct.message*, %struct.message** %m.addr, align 8
  %call31 = call %struct.text* @messageGetBody(%struct.message* %34)
  store %struct.text* %call31, %struct.text** %t_line, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.59, %sw.bb
  %35 = load %struct.text*, %struct.text** %t_line, align 8
  %tobool33 = icmp ne %struct.text* %35, null
  br i1 %tobool33, label %for.body.34, label %for.end.61

for.body.34:                                      ; preds = %for.cond.32
  %36 = load %struct.text*, %struct.text** %first, align 8
  %cmp35 = icmp eq %struct.text* %36, null
  br i1 %cmp35, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %for.body.34
  %call37 = call i8* @cli_malloc(i64 16)
  %37 = bitcast i8* %call37 to %struct.text*
  store %struct.text* %37, %struct.text** %last, align 8
  store %struct.text* %37, %struct.text** %first, align 8
  br label %if.end.42

if.else.38:                                       ; preds = %for.body.34
  %call39 = call i8* @cli_malloc(i64 16)
  %38 = bitcast i8* %call39 to %struct.text*
  %39 = load %struct.text*, %struct.text** %last, align 8
  %t_next40 = getelementptr inbounds %struct.text, %struct.text* %39, i32 0, i32 1
  store %struct.text* %38, %struct.text** %t_next40, align 8
  %40 = load %struct.text*, %struct.text** %last, align 8
  %t_next41 = getelementptr inbounds %struct.text, %struct.text* %40, i32 0, i32 1
  %41 = load %struct.text*, %struct.text** %t_next41, align 8
  store %struct.text* %41, %struct.text** %last, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.then.36
  %42 = load %struct.text*, %struct.text** %last, align 8
  %cmp43 = icmp eq %struct.text* %42, null
  br i1 %cmp43, label %if.then.44, label %if.end.49

if.then.44:                                       ; preds = %if.end.42
  %43 = load %struct.text*, %struct.text** %first, align 8
  %tobool45 = icmp ne %struct.text* %43, null
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.44
  %44 = load %struct.text*, %struct.text** %last, align 8
  %t_next47 = getelementptr inbounds %struct.text, %struct.text* %44, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next47, align 8
  %45 = load %struct.text*, %struct.text** %first, align 8
  call void @textDestroy(%struct.text* %45)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.then.44
  store %struct.text* null, %struct.text** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.42
  %46 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line50 = getelementptr inbounds %struct.text, %struct.text* %46, i32 0, i32 0
  %47 = load i8*, i8** %t_line50, align 8
  %tobool51 = icmp ne i8* %47, null
  br i1 %tobool51, label %if.then.52, label %if.else.56

if.then.52:                                       ; preds = %if.end.49
  %48 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line53 = getelementptr inbounds %struct.text, %struct.text* %48, i32 0, i32 0
  %49 = load i8*, i8** %t_line53, align 8
  %call54 = call i8* @lineLink(i8* %49)
  %50 = load %struct.text*, %struct.text** %last, align 8
  %t_line55 = getelementptr inbounds %struct.text, %struct.text* %50, i32 0, i32 0
  store i8* %call54, i8** %t_line55, align 8
  br label %if.end.58

if.else.56:                                       ; preds = %if.end.49
  %51 = load %struct.text*, %struct.text** %last, align 8
  %t_line57 = getelementptr inbounds %struct.text, %struct.text* %51, i32 0, i32 0
  store i8* null, i8** %t_line57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.52
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %52 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next60 = getelementptr inbounds %struct.text, %struct.text* %52, i32 0, i32 1
  %53 = load %struct.text*, %struct.text** %t_next60, align 8
  store %struct.text* %53, %struct.text** %t_line, align 8
  br label %for.cond.32

for.end.61:                                       ; preds = %for.cond.32
  br label %for.inc.179

sw.bb.62:                                         ; preds = %for.body.30
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.44, i32 0, i32 0))
  %54 = load %struct.text*, %struct.text** %first, align 8
  %tobool63 = icmp ne %struct.text* %54, null
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %sw.bb.62
  %55 = load %struct.text*, %struct.text** %last, align 8
  %t_next65 = getelementptr inbounds %struct.text, %struct.text* %55, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next65, align 8
  %56 = load %struct.text*, %struct.text** %first, align 8
  call void @textDestroy(%struct.text* %56)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %sw.bb.62
  store %struct.text* null, %struct.text** %retval
  br label %return

sw.bb.67:                                         ; preds = %for.body.30
  %57 = load %struct.message*, %struct.message** %m.addr, align 8
  %call68 = call %struct.text* @yEncBegin(%struct.message* %57)
  store %struct.text* %call68, %struct.text** %t_line, align 8
  %58 = load %struct.text*, %struct.text** %t_line, align 8
  %cmp69 = icmp eq %struct.text* %58, null
  br i1 %cmp69, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %sw.bb.67
  %59 = load %struct.text*, %struct.text** %first, align 8
  %tobool71 = icmp ne %struct.text* %59, null
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.then.70
  %60 = load %struct.text*, %struct.text** %last, align 8
  %t_next73 = getelementptr inbounds %struct.text, %struct.text* %60, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next73, align 8
  %61 = load %struct.text*, %struct.text** %first, align 8
  call void @textDestroy(%struct.text* %61)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.then.70
  store %struct.text* null, %struct.text** %retval
  br label %return

if.end.75:                                        ; preds = %sw.bb.67
  %62 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next76 = getelementptr inbounds %struct.text, %struct.text* %62, i32 0, i32 1
  %63 = load %struct.text*, %struct.text** %t_next76, align 8
  store %struct.text* %63, %struct.text** %t_line, align 8
  br label %sw.default

sw.default:                                       ; preds = %for.body.30, %if.end.75
  %64 = load i32, i32* %i, align 4
  %cmp77 = icmp eq i32 %64, 0
  br i1 %cmp77, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %sw.default
  %65 = load %struct.message*, %struct.message** %m.addr, align 8
  %call78 = call %struct.text* @binhexBegin(%struct.message* %65)
  %tobool79 = icmp ne %struct.text* %call78, null
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %land.lhs.true, %sw.default
  %66 = load %struct.message*, %struct.message** %m.addr, align 8
  %call82 = call %struct.text* @messageGetBody(%struct.message* %66)
  store %struct.text* %call82, %struct.text** %t_line, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.81
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.146, %sw.epilog
  %67 = load %struct.text*, %struct.text** %t_line, align 8
  %tobool84 = icmp ne %struct.text* %67, null
  br i1 %tobool84, label %for.body.85, label %for.end.148

for.body.85:                                      ; preds = %for.cond.83
  %68 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line86 = getelementptr inbounds %struct.text, %struct.text* %68, i32 0, i32 0
  %69 = load i8*, i8** %t_line86, align 8
  %call87 = call i8* @lineGetData(i8* %69)
  store i8* %call87, i8** %line, align 8
  %70 = load i32, i32* %enctype, align 4
  %cmp88 = icmp eq i32 %70, 2
  br i1 %cmp88, label %if.then.89, label %if.end.93

if.then.89:                                       ; preds = %for.body.85
  %71 = load i8*, i8** %line, align 8
  %cmp90 = icmp eq i8* %71, null
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.89
  br label %for.inc.146

if.end.92:                                        ; preds = %if.then.89
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %for.body.85
  %72 = load %struct.message*, %struct.message** %m.addr, align 8
  %73 = load i32, i32* %enctype, align 4
  %74 = load i8*, i8** %line, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %data, i32 0, i32 0
  %call94 = call i8* @decodeLine(%struct.message* %72, i32 %73, i8* %74, i8* %arraydecay, i64 1024)
  store i8* %call94, i8** %uptr, align 8
  %75 = load i8*, i8** %uptr, align 8
  %cmp95 = icmp eq i8* %75, null
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  br label %for.end.148

if.end.97:                                        ; preds = %if.end.93
  %76 = load %struct.text*, %struct.text** %first, align 8
  %cmp98 = icmp eq %struct.text* %76, null
  br i1 %cmp98, label %if.then.99, label %if.else.101

if.then.99:                                       ; preds = %if.end.97
  %call100 = call i8* @cli_malloc(i64 16)
  %77 = bitcast i8* %call100 to %struct.text*
  store %struct.text* %77, %struct.text** %last, align 8
  store %struct.text* %77, %struct.text** %first, align 8
  br label %if.end.105

if.else.101:                                      ; preds = %if.end.97
  %call102 = call i8* @cli_malloc(i64 16)
  %78 = bitcast i8* %call102 to %struct.text*
  %79 = load %struct.text*, %struct.text** %last, align 8
  %t_next103 = getelementptr inbounds %struct.text, %struct.text* %79, i32 0, i32 1
  store %struct.text* %78, %struct.text** %t_next103, align 8
  %80 = load %struct.text*, %struct.text** %last, align 8
  %t_next104 = getelementptr inbounds %struct.text, %struct.text* %80, i32 0, i32 1
  %81 = load %struct.text*, %struct.text** %t_next104, align 8
  store %struct.text* %81, %struct.text** %last, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.101, %if.then.99
  %82 = load %struct.text*, %struct.text** %last, align 8
  %cmp106 = icmp eq %struct.text* %82, null
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.105
  br label %for.end.148

if.end.108:                                       ; preds = %if.end.105
  %arrayidx109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %data, i32 0, i64 0
  %83 = load i8, i8* %arrayidx109, align 1
  %conv = zext i8 %83 to i32
  %cmp110 = icmp eq i32 %conv, 10
  br i1 %cmp110, label %if.then.116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.108
  %arrayidx112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %data, i32 0, i64 0
  %84 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %84 to i32
  %cmp114 = icmp eq i32 %conv113, 0
  br i1 %cmp114, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %lor.lhs.false, %if.end.108
  %85 = load %struct.text*, %struct.text** %last, align 8
  %t_line117 = getelementptr inbounds %struct.text, %struct.text* %85, i32 0, i32 0
  store i8* null, i8** %t_line117, align 8
  br label %if.end.135

if.else.118:                                      ; preds = %lor.lhs.false
  %86 = load i8*, i8** %line, align 8
  %tobool119 = icmp ne i8* %86, null
  br i1 %tobool119, label %land.lhs.true.120, label %if.else.130

land.lhs.true.120:                                ; preds = %if.else.118
  %arraydecay121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %data, i32 0, i32 0
  %87 = load i8*, i8** %line, align 8
  %88 = load i8*, i8** %line, align 8
  %call122 = call i64 @strlen(i8* %88) #8
  %call123 = call i32 @strncmp(i8* %arraydecay121, i8* %87, i64 %call122) #8
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %if.then.126, label %if.else.130

if.then.126:                                      ; preds = %land.lhs.true.120
  %89 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line127 = getelementptr inbounds %struct.text, %struct.text* %89, i32 0, i32 0
  %90 = load i8*, i8** %t_line127, align 8
  %call128 = call i8* @lineLink(i8* %90)
  %91 = load %struct.text*, %struct.text** %last, align 8
  %t_line129 = getelementptr inbounds %struct.text, %struct.text* %91, i32 0, i32 0
  store i8* %call128, i8** %t_line129, align 8
  br label %if.end.134

if.else.130:                                      ; preds = %land.lhs.true.120, %if.else.118
  %arraydecay131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %data, i32 0, i32 0
  %call132 = call i8* @lineCreate(i8* %arraydecay131)
  %92 = load %struct.text*, %struct.text** %last, align 8
  %t_line133 = getelementptr inbounds %struct.text, %struct.text* %92, i32 0, i32 0
  store i8* %call132, i8** %t_line133, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.130, %if.then.126
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.116
  %93 = load i8*, i8** %line, align 8
  %tobool136 = icmp ne i8* %93, null
  br i1 %tobool136, label %land.lhs.true.137, label %if.end.145

land.lhs.true.137:                                ; preds = %if.end.135
  %94 = load i32, i32* %enctype, align 4
  %cmp138 = icmp eq i32 %94, 2
  br i1 %cmp138, label %if.then.140, label %if.end.145

if.then.140:                                      ; preds = %land.lhs.true.137
  %95 = load i8*, i8** %line, align 8
  %call141 = call i8* @strchr(i8* %95, i32 61) #8
  %tobool142 = icmp ne i8* %call141, null
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.then.140
  br label %for.end.148

if.end.144:                                       ; preds = %if.then.140
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %land.lhs.true.137, %if.end.135
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145, %if.then.91
  %96 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next147 = getelementptr inbounds %struct.text, %struct.text* %96, i32 0, i32 1
  %97 = load %struct.text*, %struct.text** %t_next147, align 8
  store %struct.text* %97, %struct.text** %t_line, align 8
  br label %for.cond.83

for.end.148:                                      ; preds = %if.then.143, %if.then.107, %if.then.96, %for.cond.83
  %98 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars = getelementptr inbounds %struct.message, %struct.message* %98, i32 0, i32 13
  %99 = load i32, i32* %base64chars, align 4
  %tobool149 = icmp ne i32 %99, 0
  br i1 %tobool149, label %if.then.150, label %if.end.178

if.then.150:                                      ; preds = %for.end.148
  %100 = bitcast [4 x i8]* %data151 to i8*
  call void @llvm.memset.p0i8.i64(i8* %100, i8 0, i64 4, i32 1, i1 false)
  %101 = load %struct.message*, %struct.message** %m.addr, align 8
  %arraydecay152 = getelementptr inbounds [4 x i8], [4 x i8]* %data151, i32 0, i32 0
  %call153 = call i8* @decode(%struct.message* %101, i8* null, i8* %arraydecay152, i8 (i8)* @base64, i1 zeroext false)
  %tobool154 = icmp ne i8* %call153, null
  br i1 %tobool154, label %land.lhs.true.155, label %if.end.176

land.lhs.true.155:                                ; preds = %if.then.150
  %arrayidx156 = getelementptr inbounds [4 x i8], [4 x i8]* %data151, i32 0, i64 0
  %102 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %102 to i32
  %tobool158 = icmp ne i32 %conv157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.176

if.then.159:                                      ; preds = %land.lhs.true.155
  %103 = load %struct.text*, %struct.text** %first, align 8
  %cmp160 = icmp eq %struct.text* %103, null
  br i1 %cmp160, label %if.then.162, label %if.else.164

if.then.162:                                      ; preds = %if.then.159
  %call163 = call i8* @cli_malloc(i64 16)
  %104 = bitcast i8* %call163 to %struct.text*
  store %struct.text* %104, %struct.text** %last, align 8
  store %struct.text* %104, %struct.text** %first, align 8
  br label %if.end.168

if.else.164:                                      ; preds = %if.then.159
  %call165 = call i8* @cli_malloc(i64 16)
  %105 = bitcast i8* %call165 to %struct.text*
  %106 = load %struct.text*, %struct.text** %last, align 8
  %t_next166 = getelementptr inbounds %struct.text, %struct.text* %106, i32 0, i32 1
  store %struct.text* %105, %struct.text** %t_next166, align 8
  %107 = load %struct.text*, %struct.text** %last, align 8
  %t_next167 = getelementptr inbounds %struct.text, %struct.text* %107, i32 0, i32 1
  %108 = load %struct.text*, %struct.text** %t_next167, align 8
  store %struct.text* %108, %struct.text** %last, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.164, %if.then.162
  %109 = load %struct.text*, %struct.text** %last, align 8
  %cmp169 = icmp ne %struct.text* %109, null
  br i1 %cmp169, label %if.then.171, label %if.end.175

if.then.171:                                      ; preds = %if.end.168
  %arraydecay172 = getelementptr inbounds [4 x i8], [4 x i8]* %data151, i32 0, i32 0
  %call173 = call i8* @lineCreate(i8* %arraydecay172)
  %110 = load %struct.text*, %struct.text** %last, align 8
  %t_line174 = getelementptr inbounds %struct.text, %struct.text* %110, i32 0, i32 0
  store i8* %call173, i8** %t_line174, align 8
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.171, %if.end.168
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %land.lhs.true.155, %if.then.150
  %111 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars177 = getelementptr inbounds %struct.message, %struct.message* %111, i32 0, i32 13
  store i32 0, i32* %base64chars177, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.176, %for.end.148
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178, %for.end.61
  %112 = load i32, i32* %i, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.27

for.end.180:                                      ; preds = %for.cond.27
  %113 = load %struct.text*, %struct.text** %last, align 8
  %tobool181 = icmp ne %struct.text* %113, null
  br i1 %tobool181, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %for.end.180
  %114 = load %struct.text*, %struct.text** %last, align 8
  %t_next183 = getelementptr inbounds %struct.text, %struct.text* %114, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next183, align 8
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %for.end.180
  %115 = load %struct.text*, %struct.text** %first, align 8
  store %struct.text* %115, %struct.text** %retval
  br label %return

return:                                           ; preds = %if.end.184, %if.end.74, %if.end.66, %if.end.48, %if.end.25, %if.end.10
  %116 = load %struct.text*, %struct.text** %retval
  ret %struct.text* %116
}

; Function Attrs: nounwind uwtable
define %struct.text* @yEncBegin(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %yenc = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 17
  %1 = load %struct.text*, %struct.text** %yenc, align 8
  ret %struct.text* %1
}

; Function Attrs: nounwind uwtable
define %struct.text* @binhexBegin(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %binhex = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 16
  %1 = load %struct.text*, %struct.text** %binhex, align 8
  ret %struct.text* %1
}

; Function Attrs: nounwind uwtable
define i8* @decodeLine(%struct.message* %m, i32 %et, i8* %line, i8* %buf, i64 %buflen) #0 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.message*, align 8
  %et.addr = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %reallen = alloca i64, align 8
  %softbreak = alloca i8, align 1
  %p2 = alloca i8*, align 8
  %copy = alloca i8*, align 8
  %base64buf = alloca [77 x i8], align 16
  %byte = alloca i8, align 1
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i32 %et, i32* %et.addr, align 4
  store i8* %line, i8** %line.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  %0 = load i32, i32* %et.addr, align 4
  switch i32 %0, label %sw.default [
    i32 4, label %sw.bb
    i32 0, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.52
    i32 5, label %sw.bb.87
    i32 6, label %sw.bb.136
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb
  %1 = load i8*, i8** %line.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %2 = load i8*, i8** %buf.addr, align 8
  %3 = load i8*, i8** %line.addr, align 8
  %call = call i8* @cli_strrcpy(i8* %2, i8* %3)
  store i8* %call, i8** %buf.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  %4 = load i8*, i8** %buf.addr, align 8
  %call1 = call i8* @cli_strrcpy(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0))
  store i8* %call1, i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %5 = load i8*, i8** %line.addr, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.bb.2
  %6 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  store i8 10, i8* %6, align 1
  br label %sw.epilog

if.end.4:                                         ; preds = %sw.bb.2
  store i8 0, i8* %softbreak, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.end.4
  %7 = load i64, i64* %buflen.addr, align 8
  %tobool5 = icmp ne i64 %7, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i8*, i8** %line.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv = sext i8 %9 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i8*, i8** %line.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 61
  br i1 %cmp8, label %if.then.10, label %if.else.44

if.then.10:                                       ; preds = %while.body
  %13 = load i8*, i8** %line.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr11, i8** %line.addr, align 8
  %14 = load i8, i8* %incdec.ptr11, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.10
  %15 = load i8*, i8** %line.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv15 = sext i8 %16 to i32
  %cmp16 = icmp eq i32 %conv15, 10
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.then.10
  store i8 1, i8* %softbreak, align 1
  br label %while.end

if.end.19:                                        ; preds = %lor.lhs.false
  %17 = load i8*, i8** %line.addr, align 8
  %18 = load i8, i8* %17, align 1
  %call20 = call zeroext i8 @hex(i8 signext %18) #7
  store i8 %call20, i8* %byte, align 1
  %19 = load i8*, i8** %line.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr21, i8** %line.addr, align 8
  %20 = load i8, i8* %incdec.ptr21, align 1
  %conv22 = sext i8 %20 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then.29, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %if.end.19
  %21 = load i8*, i8** %line.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv26 = sext i8 %22 to i32
  %cmp27 = icmp eq i32 %conv26, 10
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %lor.lhs.false.25, %if.end.19
  %23 = load i8, i8* %byte, align 1
  %24 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr30, i8** %buf.addr, align 8
  store i8 %23, i8* %24, align 1
  br label %while.end

if.end.31:                                        ; preds = %lor.lhs.false.25
  %25 = load i8, i8* %byte, align 1
  %conv32 = zext i8 %25 to i32
  %cmp33 = icmp ne i32 %conv32, 61
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.31
  %26 = load i8, i8* %byte, align 1
  %conv36 = zext i8 %26 to i32
  %shl = shl i32 %conv36, 4
  %conv37 = trunc i32 %shl to i8
  store i8 %conv37, i8* %byte, align 1
  %27 = load i8*, i8** %line.addr, align 8
  %28 = load i8, i8* %27, align 1
  %call38 = call zeroext i8 @hex(i8 signext %28) #7
  %conv39 = zext i8 %call38 to i32
  %29 = load i8, i8* %byte, align 1
  %conv40 = zext i8 %29 to i32
  %add = add nsw i32 %conv40, %conv39
  %conv41 = trunc i32 %add to i8
  store i8 %conv41, i8* %byte, align 1
  br label %if.end.42

if.else:                                          ; preds = %if.end.31
  %30 = load i8*, i8** %line.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 -2
  store i8* %add.ptr, i8** %line.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.35
  %31 = load i8, i8* %byte, align 1
  %32 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr43, i8** %buf.addr, align 8
  store i8 %31, i8* %32, align 1
  br label %if.end.46

if.else.44:                                       ; preds = %while.body
  %33 = load i8*, i8** %line.addr, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr45, i8** %buf.addr, align 8
  store i8 %34, i8* %35, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.end.42
  %36 = load i8*, i8** %line.addr, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr47, i8** %line.addr, align 8
  %37 = load i64, i64* %buflen.addr, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %buflen.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.29, %if.then.18, %land.end
  %38 = load i8, i8* %softbreak, align 1
  %tobool48 = trunc i8 %38 to i1
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %while.end
  %39 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr50, i8** %buf.addr, align 8
  store i8 10, i8* %39, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %while.end
  br label %sw.epilog

sw.bb.52:                                         ; preds = %entry
  %40 = load i8*, i8** %line.addr, align 8
  %cmp53 = icmp eq i8* %40, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %sw.bb.52
  br label %sw.epilog

if.end.56:                                        ; preds = %sw.bb.52
  %41 = load i8*, i8** %line.addr, align 8
  %call57 = call i64 @strlen(i8* %41) #8
  %cmp58 = icmp ult i64 %call57, 77
  br i1 %cmp58, label %if.then.60, label %if.else.63

if.then.60:                                       ; preds = %if.end.56
  %arraydecay = getelementptr inbounds [77 x i8], [77 x i8]* %base64buf, i32 0, i32 0
  %42 = load i8*, i8** %line.addr, align 8
  %call61 = call i8* @strcpy(i8* %arraydecay, i8* %42) #3
  %arraydecay62 = getelementptr inbounds [77 x i8], [77 x i8]* %base64buf, i32 0, i32 0
  store i8* %arraydecay62, i8** %copy, align 8
  br label %if.end.69

if.else.63:                                       ; preds = %if.end.56
  %43 = load i8*, i8** %line.addr, align 8
  %call64 = call i8* @cli_strdup(i8* %43)
  store i8* %call64, i8** %copy, align 8
  %44 = load i8*, i8** %copy, align 8
  %cmp65 = icmp eq i8* %44, null
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.else.63
  br label %sw.epilog

if.end.68:                                        ; preds = %if.else.63
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.60
  %45 = load i8*, i8** %copy, align 8
  %call70 = call i8* @strchr(i8* %45, i32 61) #8
  store i8* %call70, i8** %p2, align 8
  %46 = load i8*, i8** %p2, align 8
  %tobool71 = icmp ne i8* %46, null
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.69
  %47 = load i8*, i8** %p2, align 8
  store i8 0, i8* %47, align 1
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.69
  %48 = load i8*, i8** %copy, align 8
  call void @sanitiseBase64(i8* %48)
  %49 = load %struct.message*, %struct.message** %m.addr, align 8
  %50 = load i8*, i8** %copy, align 8
  %51 = load i8*, i8** %buf.addr, align 8
  %52 = load i8*, i8** %p2, align 8
  %cmp74 = icmp eq i8* %52, null
  br i1 %cmp74, label %land.rhs.76, label %land.end.80

land.rhs.76:                                      ; preds = %if.end.73
  %53 = load i8*, i8** %copy, align 8
  %call77 = call i64 @strlen(i8* %53) #8
  %and = and i64 %call77, 3
  %cmp78 = icmp eq i64 %and, 0
  br label %land.end.80

land.end.80:                                      ; preds = %land.rhs.76, %if.end.73
  %54 = phi i1 [ false, %if.end.73 ], [ %cmp78, %land.rhs.76 ]
  %call81 = call i8* @decode(%struct.message* %49, i8* %50, i8* %51, i8 (i8)* @base64, i1 zeroext %54)
  store i8* %call81, i8** %buf.addr, align 8
  %55 = load i8*, i8** %copy, align 8
  %arraydecay82 = getelementptr inbounds [77 x i8], [77 x i8]* %base64buf, i32 0, i32 0
  %cmp83 = icmp ne i8* %55, %arraydecay82
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.end.80
  %56 = load i8*, i8** %copy, align 8
  call void @free(i8* %56) #3
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %land.end.80
  br label %sw.epilog

sw.bb.87:                                         ; preds = %entry
  %57 = load i8*, i8** %line.addr, align 8
  %cmp88 = icmp eq i8* %57, null
  br i1 %cmp88, label %if.then.94, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %sw.bb.87
  %58 = load i8*, i8** %line.addr, align 8
  %59 = load i8, i8* %58, align 1
  %conv91 = sext i8 %59 to i32
  %cmp92 = icmp eq i32 %conv91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %lor.lhs.false.90, %sw.bb.87
  br label %sw.epilog

if.end.95:                                        ; preds = %lor.lhs.false.90
  %60 = load i8*, i8** %line.addr, align 8
  %call96 = call i32 @strcasecmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0)) #8
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.95
  br label %sw.epilog

if.end.100:                                       ; preds = %if.end.95
  %61 = load i8*, i8** %line.addr, align 8
  %call101 = call i32 @isuuencodebegin(i8* %61)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.100
  br label %sw.epilog

if.end.104:                                       ; preds = %if.end.100
  %62 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %62, i64 0
  %63 = load i8, i8* %arrayidx, align 1
  %conv105 = sext i8 %63 to i32
  %and106 = and i32 %conv105, 63
  %cmp107 = icmp eq i32 %and106, 32
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.104
  br label %sw.epilog

if.end.110:                                       ; preds = %if.end.104
  %64 = load i8*, i8** %line.addr, align 8
  %incdec.ptr111 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr111, i8** %line.addr, align 8
  %65 = load i8, i8* %64, align 1
  %call112 = call zeroext i8 @uudecode(i8 signext %65) #7
  %conv113 = zext i8 %call112 to i64
  store i64 %conv113, i64* %reallen, align 8
  %66 = load i64, i64* %reallen, align 8
  %cmp114 = icmp ule i64 %66, 0
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %if.end.110
  br label %sw.epilog

if.end.117:                                       ; preds = %if.end.110
  %67 = load i64, i64* %reallen, align 8
  %cmp118 = icmp ugt i64 %67, 62
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.117
  br label %sw.epilog

if.end.121:                                       ; preds = %if.end.117
  %68 = load i8*, i8** %line.addr, align 8
  %call122 = call i64 @strlen(i8* %68) #8
  store i64 %call122, i64* %len, align 8
  %69 = load i64, i64* %len, align 8
  %70 = load i64, i64* %buflen.addr, align 8
  %cmp123 = icmp ugt i64 %69, %70
  br i1 %cmp123, label %if.then.128, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.end.121
  %71 = load i64, i64* %reallen, align 8
  %72 = load i64, i64* %len, align 8
  %cmp126 = icmp ugt i64 %71, %72
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %lor.lhs.false.125, %if.end.121
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.135

if.else.129:                                      ; preds = %lor.lhs.false.125
  %73 = load %struct.message*, %struct.message** %m.addr, align 8
  %74 = load i8*, i8** %line.addr, align 8
  %75 = load i8*, i8** %buf.addr, align 8
  %76 = load i64, i64* %len, align 8
  %and130 = and i64 %76, 3
  %cmp131 = icmp eq i64 %and130, 0
  %call133 = call i8* @decode(%struct.message* %73, i8* %74, i8* %75, i8 (i8)* @uudecode, i1 zeroext %cmp131)
  %77 = load i64, i64* %reallen, align 8
  %78 = load i8*, i8** %buf.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %arrayidx134, i8** %buf.addr, align 8
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.129, %if.then.128
  %79 = load %struct.message*, %struct.message** %m.addr, align 8
  %base64chars = getelementptr inbounds %struct.message, %struct.message* %79, i32 0, i32 13
  store i32 0, i32* %base64chars, align 4
  br label %sw.epilog

sw.bb.136:                                        ; preds = %entry
  %80 = load i8*, i8** %line.addr, align 8
  %cmp137 = icmp eq i8* %80, null
  br i1 %cmp137, label %if.then.143, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %sw.bb.136
  %81 = load i8*, i8** %line.addr, align 8
  %82 = load i8, i8* %81, align 1
  %conv140 = sext i8 %82 to i32
  %cmp141 = icmp eq i32 %conv140, 0
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %lor.lhs.false.139, %sw.bb.136
  br label %sw.epilog

if.end.144:                                       ; preds = %lor.lhs.false.139
  %83 = load i8*, i8** %line.addr, align 8
  %call145 = call i32 @strncmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i64 6) #8
  %cmp146 = icmp eq i32 %call145, 0
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.end.144
  br label %sw.epilog

if.end.149:                                       ; preds = %if.end.144
  br label %while.cond.150

while.cond.150:                                   ; preds = %if.end.175, %if.end.149
  %84 = load i8*, i8** %line.addr, align 8
  %85 = load i8, i8* %84, align 1
  %tobool151 = icmp ne i8 %85, 0
  br i1 %tobool151, label %while.body.152, label %while.end.176

while.body.152:                                   ; preds = %while.cond.150
  %86 = load i8*, i8** %line.addr, align 8
  %87 = load i8, i8* %86, align 1
  %conv153 = sext i8 %87 to i32
  %cmp154 = icmp eq i32 %conv153, 61
  br i1 %cmp154, label %if.then.156, label %if.else.168

if.then.156:                                      ; preds = %while.body.152
  %88 = load i8*, i8** %line.addr, align 8
  %incdec.ptr157 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr157, i8** %line.addr, align 8
  %89 = load i8, i8* %incdec.ptr157, align 1
  %conv158 = sext i8 %89 to i32
  %cmp159 = icmp eq i32 %conv158, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.then.156
  br label %while.end.176

if.end.162:                                       ; preds = %if.then.156
  %90 = load i8*, i8** %line.addr, align 8
  %incdec.ptr163 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr163, i8** %line.addr, align 8
  %91 = load i8, i8* %90, align 1
  %conv164 = sext i8 %91 to i32
  %sub = sub nsw i32 %conv164, 64
  %and165 = and i32 %sub, 255
  %conv166 = trunc i32 %and165 to i8
  %92 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr167 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr167, i8** %buf.addr, align 8
  store i8 %conv166, i8* %92, align 1
  br label %if.end.175

if.else.168:                                      ; preds = %while.body.152
  %93 = load i8*, i8** %line.addr, align 8
  %incdec.ptr169 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr169, i8** %line.addr, align 8
  %94 = load i8, i8* %93, align 1
  %conv170 = sext i8 %94 to i32
  %sub171 = sub nsw i32 %conv170, 42
  %and172 = and i32 %sub171, 255
  %conv173 = trunc i32 %and172 to i8
  %95 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr174 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr174, i8** %buf.addr, align 8
  store i8 %conv173, i8* %95, align 1
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.168, %if.end.162
  br label %while.cond.150

while.end.176:                                    ; preds = %if.then.161, %while.cond.150
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end.176, %if.then.148, %if.then.143, %if.end.135, %if.then.120, %if.then.116, %if.then.109, %if.then.103, %if.then.99, %if.then.94, %if.end.86, %if.then.67, %if.then.55, %if.end.51, %if.then.3
  %96 = load i8*, i8** %buf.addr, align 8
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %buf.addr, align 8
  store i8* %97, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end
  %98 = load i8*, i8** %retval
  ret i8* %98
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define %struct.text* @bounceBegin(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %bounce = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 15
  %1 = load %struct.text*, %struct.text** %bounce, align 8
  ret %struct.text* %1
}

; Function Attrs: nounwind uwtable
define %struct.text* @encodingLine(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %encoding = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 18
  %1 = load %struct.text*, %struct.text** %encoding, align 8
  ret %struct.text* %1
}

; Function Attrs: nounwind uwtable
define void @messageClearMarkers(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %binhex = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 16
  store %struct.text* null, %struct.text** %binhex, align 8
  %1 = load %struct.message*, %struct.message** %m.addr, align 8
  %bounce = getelementptr inbounds %struct.message, %struct.message* %1, i32 0, i32 15
  store %struct.text* null, %struct.text** %bounce, align 8
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %encoding = getelementptr inbounds %struct.message, %struct.message* %2, i32 0, i32 18
  store %struct.text* null, %struct.text** %encoding, align 8
  ret void
}

declare i8* @cli_strrcpy(i8*, i8*) #1

; Function Attrs: nounwind readnone uwtable
define internal zeroext i8 @hex(i8 signext %c) #6 {
entry:
  %retval = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %1 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %3 to i32
  %sub = sub nsw i32 %conv2, 48
  %conv3 = trunc i32 %sub to i8
  store i8 %conv3, i8* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %conv4 = sext i8 %4 to i32
  %cmp = icmp sge i32 %conv4, 65
  br i1 %cmp, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8, i8* %c.addr, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp sle i32 %conv6, 70
  br i1 %cmp7, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %land.lhs.true
  %6 = load i8, i8* %c.addr, align 1
  %conv10 = sext i8 %6 to i32
  %sub11 = sub nsw i32 %conv10, 65
  %add = add nsw i32 %sub11, 10
  %conv12 = trunc i32 %add to i8
  store i8 %conv12, i8* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end
  %7 = load i8, i8* %c.addr, align 1
  %conv14 = sext i8 %7 to i32
  %cmp15 = icmp sge i32 %conv14, 97
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.26

land.lhs.true.17:                                 ; preds = %if.end.13
  %8 = load i8, i8* %c.addr, align 1
  %conv18 = sext i8 %8 to i32
  %cmp19 = icmp sle i32 %conv18, 102
  br i1 %cmp19, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %land.lhs.true.17
  %9 = load i8, i8* %c.addr, align 1
  %conv22 = sext i8 %9 to i32
  %sub23 = sub nsw i32 %conv22, 97
  %add24 = add nsw i32 %sub23, 10
  %conv25 = trunc i32 %add24 to i8
  store i8 %conv25, i8* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.17, %if.end.13
  %10 = load i8, i8* %c.addr, align 1
  %conv27 = sext i8 %10 to i32
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.97, i32 0, i32 0), i32 %conv27)
  store i8 61, i8* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.21, %if.then.9, %if.then
  %11 = load i8, i8* %retval
  ret i8 %11
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sanitiseBase64(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 255
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @base64Table, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv1, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %s.addr, align 8
  store i8* %5, i8** %p1, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then
  %6 = load i8*, i8** %p1, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp ne i32 %conv5, 0
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.3
  %8 = load i8*, i8** %p1, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx9, align 1
  %10 = load i8*, i8** %p1, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %9, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %11 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %12 = load i8*, i8** %s.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr11, i8** %s.addr, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end
  %13 = load i8*, i8** %s.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr13, i8** %s.addr, align 8
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @isuuencodebegin(i8* %line) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 98
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8
  %call = call i64 @strlen(i8* %2) #8
  %cmp2 = icmp ult i64 %call, 10
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %3 = load i8*, i8** %line.addr, align 8
  %call6 = call i32 @strncasecmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i64 6) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.5
  %4 = load i8*, i8** %line.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %4, i64 6
  %5 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %5 to i32
  %idxprom = sext i32 %conv10 to i64
  %call11 = call i16** @__ctype_b_loc() #7
  %6 = load i16*, i16** %call11, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %7 = load i16, i16* %arrayidx12, align 2
  %conv13 = zext i16 %7 to i32
  %and = and i32 %conv13, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true.14, label %land.end

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %8 = load i8*, i8** %line.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %8, i64 7
  %9 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %9 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %call18 = call i16** @__ctype_b_loc() #7
  %10 = load i16*, i16** %call18, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %10, i64 %idxprom17
  %11 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %11 to i32
  %and21 = and i32 %conv20, 2048
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %land.end

land.lhs.true.23:                                 ; preds = %land.lhs.true.14
  %12 = load i8*, i8** %line.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %12, i64 8
  %13 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %13 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %call27 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %call27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %14, i64 %idxprom26
  %15 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %15 to i32
  %and30 = and i32 %conv29, 2048
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.23
  %16 = load i8*, i8** %line.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %16, i64 9
  %17 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %17 to i32
  %cmp34 = icmp eq i32 %conv33, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.23, %land.lhs.true.14, %land.lhs.true, %if.end.5
  %18 = phi i1 [ false, %land.lhs.true.23 ], [ false, %land.lhs.true.14 ], [ false, %land.lhs.true ], [ false, %if.end.5 ], [ %cmp34, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.4, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i8 @uudecode(i8 signext %c) #6 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  %sub = sub nsw i32 %conv, 32
  %conv1 = trunc i32 %sub to i8
  ret i8 %conv1
}

; Function Attrs: nounwind uwtable
define void @messageSetCTX(%struct.message* %m, %struct.cli_ctx* %ctx) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %1 = load %struct.message*, %struct.message** %m.addr, align 8
  %ctx1 = getelementptr inbounds %struct.message, %struct.message* %1, i32 0, i32 9
  store %struct.cli_ctx* %0, %struct.cli_ctx** %ctx1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @messageContainsVirus(%struct.message* %m) #0 {
entry:
  %m.addr = alloca %struct.message*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %isInfected = getelementptr inbounds %struct.message, %struct.message* %0, i32 0, i32 14
  %bf.load = load i8, i8* %isInfected, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  %cond = select i1 %tobool, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

declare i32 @cli_filetype(i8*, i64) #1

declare i8* @blobGetData(%struct.blob*) #1

declare i64 @blobGetDataSize(%struct.blob*) #1

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) #5

declare i32 @blobGrow(%struct.blob*, i64) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i32 @cli_chomp(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @push(%struct.pstr_list** %top, i8* %string) #0 {
entry:
  %retval = alloca i32, align 4
  %top.addr = alloca %struct.pstr_list**, align 8
  %string.addr = alloca i8*, align 8
  %element = alloca %struct.pstr_list*, align 8
  store %struct.pstr_list** %top, %struct.pstr_list*** %top.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %call = call i8* @cli_malloc(i64 16)
  %0 = bitcast i8* %call to %struct.pstr_list*
  store %struct.pstr_list* %0, %struct.pstr_list** %element, align 8
  %cmp = icmp eq %struct.pstr_list* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  %call1 = call i8* @cli_strdup(i8* %1)
  %2 = load %struct.pstr_list*, %struct.pstr_list** %element, align 8
  %d1 = getelementptr inbounds %struct.pstr_list, %struct.pstr_list* %2, i32 0, i32 0
  store i8* %call1, i8** %d1, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct.pstr_list**, %struct.pstr_list*** %top.addr, align 8
  %4 = load %struct.pstr_list*, %struct.pstr_list** %3, align 8
  %5 = load %struct.pstr_list*, %struct.pstr_list** %element, align 8
  %next = getelementptr inbounds %struct.pstr_list, %struct.pstr_list* %5, i32 0, i32 1
  store %struct.pstr_list* %4, %struct.pstr_list** %next, align 8
  %6 = load %struct.pstr_list*, %struct.pstr_list** %element, align 8
  %7 = load %struct.pstr_list**, %struct.pstr_list*** %top.addr, align 8
  store %struct.pstr_list* %6, %struct.pstr_list** %7, align 8
  store i32 -4, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @pop(%struct.pstr_list** %top, i8* %buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %top.addr = alloca %struct.pstr_list**, align 8
  %buffer.addr = alloca i8*, align 8
  %t1 = alloca %struct.pstr_list*, align 8
  store %struct.pstr_list** %top, %struct.pstr_list*** %top.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load %struct.pstr_list**, %struct.pstr_list*** %top.addr, align 8
  %1 = load %struct.pstr_list*, %struct.pstr_list** %0, align 8
  store %struct.pstr_list* %1, %struct.pstr_list** %t1, align 8
  %cmp = icmp ne %struct.pstr_list* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load %struct.pstr_list*, %struct.pstr_list** %t1, align 8
  %d1 = getelementptr inbounds %struct.pstr_list, %struct.pstr_list* %3, i32 0, i32 0
  %4 = load i8*, i8** %d1, align 8
  %call = call i8* @strcpy(i8* %2, i8* %4) #3
  %5 = load %struct.pstr_list*, %struct.pstr_list** %t1, align 8
  %next = getelementptr inbounds %struct.pstr_list, %struct.pstr_list* %5, i32 0, i32 1
  %6 = load %struct.pstr_list*, %struct.pstr_list** %next, align 8
  %7 = load %struct.pstr_list**, %struct.pstr_list*** %top.addr, align 8
  store %struct.pstr_list* %6, %struct.pstr_list** %7, align 8
  %8 = load %struct.pstr_list*, %struct.pstr_list** %t1, align 8
  %d11 = getelementptr inbounds %struct.pstr_list, %struct.pstr_list* %8, i32 0, i32 0
  %9 = load i8*, i8** %d11, align 8
  call void @free(i8* %9) #3
  %10 = load %struct.pstr_list*, %struct.pstr_list** %t1, align 8
  %11 = bitcast %struct.pstr_list* %10 to i8*
  call void @free(i8* %11) #3
  store i32 -4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 -3, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @compare(i8* %ls1, i8** %rs1, i8* %ls2, i8** %rs2) #0 {
entry:
  %ls1.addr = alloca i8*, align 8
  %rs1.addr = alloca i8**, align 8
  %ls2.addr = alloca i8*, align 8
  %rs2.addr = alloca i8**, align 8
  %common = alloca i32, align 4
  %maxchars = alloca i32, align 4
  %some_similarity = alloca i8, align 1
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %maxs1 = alloca i8*, align 8
  %maxs2 = alloca i8*, align 8
  %maxe1 = alloca i8*, align 8
  %maxe2 = alloca i8*, align 8
  %cs1 = alloca i8*, align 8
  %cs2 = alloca i8*, align 8
  %start1 = alloca i8*, align 8
  %end1 = alloca i8*, align 8
  %end2 = alloca i8*, align 8
  %diff = alloca i32, align 4
  store i8* %ls1, i8** %ls1.addr, align 8
  store i8** %rs1, i8*** %rs1.addr, align 8
  store i8* %ls2, i8** %ls2.addr, align 8
  store i8** %rs2, i8*** %rs2.addr, align 8
  store i32 0, i32* %maxchars, align 4
  store i8 0, i8* %some_similarity, align 1
  store i8* null, i8** %maxs1, align 8
  store i8* null, i8** %maxs2, align 8
  store i8* null, i8** %maxe1, align 8
  store i8* null, i8** %maxe2, align 8
  %0 = load i8*, i8** %ls1.addr, align 8
  %1 = load i8*, i8** %ls1.addr, align 8
  %call = call i64 @strlen(i8* %1) #8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %call
  store i8* %add.ptr, i8** %end1, align 8
  %2 = load i8*, i8** %ls2.addr, align 8
  %3 = load i8*, i8** %ls2.addr, align 8
  %call1 = call i64 @strlen(i8* %3) #8
  %add.ptr2 = getelementptr inbounds i8, i8* %2, i64 %call1
  store i8* %add.ptr2, i8** %end2, align 8
  %4 = load i8*, i8** %ls1.addr, align 8
  store i8* %4, i8** %start1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.40, %entry
  %5 = load i8*, i8** %start1, align 8
  store i8* %5, i8** %s1, align 8
  %6 = load i8*, i8** %ls2.addr, align 8
  store i8* %6, i8** %s2, align 8
  %7 = load i8*, i8** %s1, align 8
  %8 = load i8*, i8** %end1, align 8
  %cmp = icmp ult i8* %7, %8
  br i1 %cmp, label %if.then, label %if.else.39

if.then:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end.37, %if.then
  %9 = load i8*, i8** %s1, align 8
  %10 = load i8*, i8** %end1, align 8
  %cmp3 = icmp ult i8* %9, %10
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i8*, i8** %s2, align 8
  %12 = load i8*, i8** %end2, align 8
  %cmp4 = icmp ult i8* %11, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load i8*, i8** %s1, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %call5 = call i32 @tolower(i32 %conv) #3
  %16 = load i8*, i8** %s2, align 8
  %17 = load i8, i8* %16, align 1
  %conv6 = sext i8 %17 to i32
  %call7 = call i32 @tolower(i32 %conv6) #3
  %cmp8 = icmp eq i32 %call5, %call7
  br i1 %cmp8, label %if.then.10, label %if.else.35

if.then.10:                                       ; preds = %while.body
  store i8 1, i8* %some_similarity, align 1
  %18 = load i8*, i8** %s1, align 8
  store i8* %18, i8** %cs1, align 8
  %19 = load i8*, i8** %s2, align 8
  store i8* %19, i8** %cs2, align 8
  store i32 0, i32* %common, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.10
  %20 = load i8*, i8** %s1, align 8
  %21 = load i8*, i8** %end1, align 8
  %cmp11 = icmp eq i8* %20, %21
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %22 = load i8*, i8** %s2, align 8
  %23 = load i8*, i8** %end2, align 8
  %cmp13 = icmp eq i8* %22, %23
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false, %do.body
  br label %do.end

if.else:                                          ; preds = %lor.lhs.false
  %24 = load i8*, i8** %s1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %s1, align 8
  %25 = load i8*, i8** %s2, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr16, i8** %s2, align 8
  %26 = load i32, i32* %common, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %common, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %27 = load i8*, i8** %s1, align 8
  %28 = load i8, i8* %27, align 1
  %conv17 = sext i8 %28 to i32
  %call18 = call i32 @tolower(i32 %conv17) #3
  %29 = load i8*, i8** %s2, align 8
  %30 = load i8, i8* %29, align 1
  %conv19 = sext i8 %30 to i32
  %call20 = call i32 @tolower(i32 %conv19) #3
  %cmp21 = icmp eq i32 %call18, %call20
  br i1 %cmp21, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.15
  %31 = load i32, i32* %common, align 4
  %32 = load i32, i32* %maxchars, align 4
  %cmp23 = icmp ugt i32 %31, %32
  br i1 %cmp23, label %if.then.25, label %if.else.30

if.then.25:                                       ; preds = %do.end
  %33 = load i32, i32* %common, align 4
  %34 = load i32, i32* %maxchars, align 4
  %sub = sub i32 %33, %34
  store i32 %sub, i32* %diff, align 4
  %35 = load i32, i32* %common, align 4
  store i32 %35, i32* %maxchars, align 4
  %36 = load i8*, i8** %cs1, align 8
  store i8* %36, i8** %maxs1, align 8
  %37 = load i8*, i8** %cs2, align 8
  store i8* %37, i8** %maxs2, align 8
  %38 = load i8*, i8** %s1, align 8
  store i8* %38, i8** %maxe1, align 8
  %39 = load i8*, i8** %s2, align 8
  store i8* %39, i8** %maxe2, align 8
  %40 = load i32, i32* %diff, align 4
  %41 = load i8*, i8** %end1, align 8
  %idx.ext = zext i32 %40 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr26 = getelementptr inbounds i8, i8* %41, i64 %idx.neg
  store i8* %add.ptr26, i8** %end1, align 8
  %42 = load i32, i32* %diff, align 4
  %43 = load i8*, i8** %end2, align 8
  %idx.ext27 = zext i32 %42 to i64
  %idx.neg28 = sub i64 0, %idx.ext27
  %add.ptr29 = getelementptr inbounds i8, i8* %43, i64 %idx.neg28
  store i8* %add.ptr29, i8** %end2, align 8
  br label %if.end.34

if.else.30:                                       ; preds = %do.end
  %44 = load i32, i32* %common, align 4
  %45 = load i8*, i8** %s1, align 8
  %idx.ext31 = zext i32 %44 to i64
  %idx.neg32 = sub i64 0, %idx.ext31
  %add.ptr33 = getelementptr inbounds i8, i8* %45, i64 %idx.neg32
  store i8* %add.ptr33, i8** %s1, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.30, %if.then.25
  br label %if.end.37

if.else.35:                                       ; preds = %while.body
  %46 = load i8*, i8** %s2, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr36, i8** %s2, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.end.34
  br label %while.cond

while.end:                                        ; preds = %land.end
  %47 = load i8*, i8** %start1, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr38, i8** %start1, align 8
  br label %if.end.40

if.else.39:                                       ; preds = %for.cond
  br label %for.end

if.end.40:                                        ; preds = %while.end
  br label %for.cond

for.end:                                          ; preds = %if.else.39
  %48 = load i8, i8* %some_similarity, align 1
  %tobool = trunc i8 %48 to i1
  br i1 %tobool, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end
  %49 = load i8*, i8** %maxs1, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %maxs2, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %maxe1, align 8
  %52 = load i8**, i8*** %rs1.addr, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8*, i8** %maxe2, align 8
  %54 = load i8**, i8*** %rs2.addr, align 8
  store i8* %53, i8** %54, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.end
  %55 = load i32, i32* %maxchars, align 4
  ret i32 %55
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
