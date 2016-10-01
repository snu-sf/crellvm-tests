; ModuleID = './MultiSource.Applications.ClamAV/13.libclamav_mbox.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { %struct.tableEntry*, %struct.tableEntry*, i32 }
%struct.tableEntry = type { i8*, i32, %struct.tableEntry* }
%struct.tableinit = type { i8*, i32 }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.message = type { i32, i32*, i32, i8*, i32, i8**, i8*, %struct.text*, %struct.text*, %struct.cli_ctx*, i8, i8, i8, i32, i8, %struct.text*, %struct.text*, %struct.text*, %struct.text*, %struct.text* }
%struct.text = type { i8*, %struct.text* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mbox_ctx = type { i8*, i32, %struct.table*, %struct.table*, %struct.cli_ctx* }
%struct.fileblob = type { %struct._IO_FILE*, %struct.blob, i8*, i8, i64, %struct.cli_ctx* }
%struct.blob = type { i8*, i8*, i64, i64, i32 }
%struct.tag_arguments_tag = type { i32, i32, i8**, i8**, %struct.blob** }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.arg = type { i8*, i8*, i8*, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.protoent = type { i8*, i8**, i32 }
%struct.servent = type { i8*, i8**, i32, i8* }
%struct.hostent = type { i8*, i8**, i32, i32, i8** }
%struct.fd_set = type { [16 x i64] }
%struct.timeval = type { i64, i64 }
%struct.sockaddr = type { i16, [14 x i8] }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"cli_mbox called with NULL dir\0A\00", align 1
@cli_parse_mbox.rfc821 = internal global %struct.table* null, align 8
@cli_parse_mbox.subtype = internal global %struct.table* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"in mbox()\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't open descriptor %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Deal with message number %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Message number %d is infected\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Finished processing message\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Extract attachments from email %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"P I \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Phishing.Heuristics.Email\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"cli_mbox returning %d\0A\00", align 1
@rfc821headers = internal constant [4 x %struct.tableinit] [%struct.tableinit { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 1 }, %struct.tableinit { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), i32 2 }, %struct.tableinit { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 3 }, %struct.tableinit zeroinitializer], align 16
@mimeSubtypes = internal constant [20 x %struct.tableinit] [%struct.tableinit { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 1 }, %struct.tableinit { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 2 }, %struct.tableinit { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 3 }, %struct.tableinit { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 4 }, %struct.tableinit { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 5 }, %struct.tableinit { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i32 6 }, %struct.tableinit { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i32 7 }, %struct.tableinit { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 8 }, %struct.tableinit { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 9 }, %struct.tableinit { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i32 10 }, %struct.tableinit { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 11 }, %struct.tableinit { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i32 12 }, %struct.tableinit { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 5 }, %struct.tableinit { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 13 }, %struct.tableinit { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 10 }, %struct.tableinit { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 14 }, %struct.tableinit { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32 14 }, %struct.tableinit { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 14 }, %struct.tableinit { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0), i32 14 }, %struct.tableinit zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Content-Transfer-Encoding\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Content-Disposition\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"enriched\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"richtext\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"alternative\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"related\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"appledouble\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"fax-message\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"x-bfile\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"knowbot\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"knowbot-metadata\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"knowbot-code\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"knowbot-state\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"parseEmailHeaders\0A\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"parseEmailHeaders: check '%s'\0A\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"End of header information\0A\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"Nothing interesting in the header\0A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"parseEmailHeaders: inished with headers, moving body\0A\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"parseEmailHeaders: Fullline unparsed '%s'\0A\00", align 1
@.str.43 = private unnamed_addr constant [65 x i8] c"parseEmailHeaders: no headers found, assuming it isn't an email\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"parseEmailHeaders: return\0A\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"rfc822comments: contains a comment\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"rfc822comments '%s'=>'%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Received\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"De\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"parseEmailHeader '%s'\0A\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c":= \00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"?=\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"rfc2047 '%s'\0A\00", align 1
@.str.55 = private unnamed_addr constant [113 x i8] c"Unsupported RFC2047 encoding type '%c' - if you believe this file contains a virus, submit it to www.clamav.net\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"quoted-printable\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"Decoded as '%*.*s'\0A\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"rfc2047 returns '%s'\0A\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"parseMimeHeader: cmd='%s', arg='%s'\0A\00", align 1
@.str.61 = private unnamed_addr constant [90 x i8] c"Empty content-type received, no subtype specified, assuming text/plain; charset=us-ascii\0A\00", align 1
@.str.62 = private unnamed_addr constant [97 x i8] c"Invalid content-type '%s' received, no subtype specified, assuming text/plain; charset=us-ascii\0A\00", align 1
@.str.63 = private unnamed_addr constant [62 x i8] c"Content-type '/' received, assuming application/octet-stream\0A\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"application\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"octet-stream\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"mimeArgs = '%s'\0A\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"filename=unknown\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"newline_in_header, check \22%s\22\0A\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"Message-Id: \00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"Date: \00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"in parseEmailBody, %u files saved so far\0A\00", align 1
@.str.75 = private unnamed_addr constant [50 x i8] c"parseEmailBody: hit maximum recursion level (%u)\0A\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"MIME.RecursionLimit\00", align 1
@.str.77 = private unnamed_addr constant [45 x i8] c"parseEmailBody: number of files exceeded %u\0A\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"Parsing mail file\0A\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"text/plain: Assume no attachements\0A\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"rfc822-headers\00", align 1
@.str.81 = private unnamed_addr constant [56 x i8] c"Changing message/rfc822-headers to text/rfc822-headers\0A\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"mimeType = %d\0A\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"Not a mime encoded message\0A\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"Content-type 'multipart' handler\0A\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"boundary\00", align 1
@.str.86 = private unnamed_addr constant [55 x i8] c"Multipart/%s MIME message contains no boundary header\0A\00", align 1
@.str.87 = private unnamed_addr constant [47 x i8] c"Multipart has no subtype assuming alternative\0A\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"Multipart MIME message has no body\0A\00", align 1
@.str.89 = private unnamed_addr constant [58 x i8] c"Found MIME attachment before the first MIME section \22%s\22\0A\00", align 1
@.str.90 = private unnamed_addr constant [56 x i8] c"Multipart MIME message contains no boundary lines (%s)\0A\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"Now read in part %d\0A\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"Empty part\0A\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"Multipart %d: About to add mime Argument '%s'\0A\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"Ignoring fake end of headers\0A\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"Content\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"filename=\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"Multipart %d: End of header information\0A\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"Part %d starts with a continuation line\0A\00", align 1
@.str.99 = private unnamed_addr constant [52 x i8] c"Multipart %d: headers not terminated by blank line\0A\00", align 1
@.str.100 = private unnamed_addr constant [49 x i8] c"Multipart %d: About to parse folded header '%s'\0A\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"Part %d has %d lines, rc = %d\0A\00", align 1
@.str.102 = private unnamed_addr constant [53 x i8] c"multipart/knowbot parsed as multipart/mixed for now\0A\00", align 1
@.str.103 = private unnamed_addr constant [52 x i8] c"Unsupported multipart format `%s', parsed as mixed\0A\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"The message has %d parts\0A\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"Find out the multipart type (%s)\0A\00", align 1
@.str.106 = private unnamed_addr constant [27 x i8] c"Multipart related handler\0A\00", align 1
@.str.107 = private unnamed_addr constant [34 x i8] c"No HTML code found to be scanned\0A\00", align 1
@.str.108 = private unnamed_addr constant [31 x i8] c"Multipart alternative handler\0A\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"Mixed message with %d parts\0A\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"application/pgp-encrypted\00", align 1
@.str.112 = private unnamed_addr constant [36 x i8] c"PGP encoded attachment not scanned\0A\00", align 1
@.str.113 = private unnamed_addr constant [107 x i8] c"Unknown encryption protocol '%s' - if you believe this file contains a virus, submit it to www.clamav.net\0A\00", align 1
@.str.114 = private unnamed_addr constant [41 x i8] c"Encryption method missing protocol name\0A\00", align 1
@.str.115 = private unnamed_addr constant [38 x i8] c"Save non mime and/or text/plain part\0A\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"textpart\00", align 1
@.str.117 = private unnamed_addr constant [39 x i8] c"MIME type 'message' cannot be decoded\0A\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"rfc822\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"delivery-status\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"Decode rfc822\0A\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"disposition-notification\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"external-body\00", align 1
@.str.124 = private unnamed_addr constant [59 x i8] c"Attempt to send Content-type message/external-body trapped\00", align 1
@.str.125 = private unnamed_addr constant [106 x i8] c"Unsupported message format `%s' - if you believe this file contains a virus, submit it to www.clamav.net\0A\00", align 1
@.str.126 = private unnamed_addr constant [65 x i8] c"Message received with unknown mime encoding - assume application\00", align 1
@.str.127 = private unnamed_addr constant [35 x i8] c"Saving main message as attachment\0A\00", align 1
@.str.128 = private unnamed_addr constant [52 x i8] c"messages != NULL, report to http://bugs.clamav.net\0A\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"Content-Type:\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str.132 = private unnamed_addr constant [77 x i8] c"Non mime part bounce message is not mime encoded, so it will not be scanned\0A\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"multipart/\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"message/rfc822\00", align 1
@.str.135 = private unnamed_addr constant [57 x i8] c"cli_mbox: I believe it's plain text which must be clean\0A\00", align 1
@.str.136 = private unnamed_addr constant [35 x i8] c"Save non mime part bounce message\0A\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"bounce\00", align 1
@.str.138 = private unnamed_addr constant [29 x i8] c"Received: by clamd (bounce)\0A\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.140 = private unnamed_addr constant [50 x i8] c"Found the start of another bounce candidate (%s)\0A\00", align 1
@.str.141 = private unnamed_addr constant [47 x i8] c"Found a bounce message with no header at '%s'\0A\00", align 1
@.str.142 = private unnamed_addr constant [35 x i8] c"Saving text part to scan, rc = %d\0A\00", align 1
@.str.143 = private unnamed_addr constant [31 x i8] c"parseEmailBody() returning %d\0A\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"PH:Phishing found\0A\00", align 1
@.str.145 = private unnamed_addr constant [57 x i8] c"Viruses pointed to by URLs not scanned in large message\0A\00", align 1
@.str.146 = private unnamed_addr constant [38 x i8] c"getHrefs: calling html_normalise_mem\0A\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"getHrefs: html_normalise_mem returned\0A\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c".exe\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"swap %s %s\0A\00", align 1
@.str.151 = private unnamed_addr constant [27 x i8] c"URL %s already downloaded\0A\00", align 1
@.str.152 = private unnamed_addr constant [65 x i8] c"Possible URL spoofing attempt noticed, but not yet handled (%s)\0A\00", align 1
@.str.153 = private unnamed_addr constant [62 x i8] c"URL %s will not be scanned (FOLLOWURLS limit %d was reached)\0A\00", align 1
@.str.154 = private unnamed_addr constant [34 x i8] c"Downloading URL %s to be scanned\0A\00", align 1
@getURL.default_port = internal global i16 0, align 2
@getURL.tcp = internal global i32 0, align 4
@.str.155 = private unnamed_addr constant [24 x i8] c"Ignoring long URL \22%s\22\0A\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.158 = private unnamed_addr constant [29 x i8] c"Can't open '%s' for writing\0A\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"Saving %s to %s\0A\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.161 = private unnamed_addr constant [44 x i8] c"Unknown prototol tcp, check /etc/protocols\0A\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.164 = private unnamed_addr constant [41 x i8] c"Unsupported proxy protocol (proxy = %s)\0A\00", align 1
@.str.165 = private unnamed_addr constant [19 x i8] c"Getting %s via %s\0A\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"Getting %s\0A\00", align 1
@.str.167 = private unnamed_addr constant [22 x i8] c"Unsupported protocol\0A\00", align 1
@.str.168 = private unnamed_addr constant [17 x i8] c"Unknown host %s\0A\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"getfl: %s\0A\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"setfl: %s\0A\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"f_setfl: %s\0A\00", align 1
@.str.172 = private unnamed_addr constant [43 x i8] c"GET %s HTTP/1.0\0D\0AUser-Agent: ClamAV %s\0D\0A\0D\0A\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"devel-20071218\00", align 1
@.str.174 = private unnamed_addr constant [44 x i8] c"GET /%s HTTP/1.0\0D\0AUser-Agent: ClamAV %s\0D\0A\0D\0A\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"HTTP status %d\0A\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"\0ALocation: \00", align 1
@.str.177 = private unnamed_addr constant [69 x i8] c"URL %s will not be followed to %s (FOLLOWURLS limit %d was reached)\0A\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"Redirecting to %s\0A\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.181 = private unnamed_addr constant [30 x i8] c"Error writing %d bytes to %s\0A\00", align 1
@.str.182 = private unnamed_addr constant [17 x i8] c"%s: connect: %s\0A\00", align 1
@.str.183 = private unnamed_addr constant [31 x i8] c"%s: connect timeout (%d secs)\0A\00", align 1
@.str.184 = private unnamed_addr constant [26 x i8] c"%s: select attempt %d %s\0A\00", align 1
@.str.185 = private unnamed_addr constant [17 x i8] c"%s: select = %d\0A\00", align 1
@.str.186 = private unnamed_addr constant [26 x i8] c"timeout connecting to %s\0A\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.188 = private unnamed_addr constant [31 x i8] c"boundaryStart: found %s in %s\0A\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"x-binhex\00", align 1
@.str.190 = private unnamed_addr constant [27 x i8] c"Binhex file decoded to %s\0A\00", align 1
@.str.191 = private unnamed_addr constant [35 x i8] c"Couldn't decode binhex file to %s\0A\00", align 1
@.str.192 = private unnamed_addr constant [29 x i8] c"boundaryEnd: found %s in %s\0A\00", align 1
@.str.193 = private unnamed_addr constant [37 x i8] c"Mixed message part %d is of type %d\0A\00", align 1
@.str.194 = private unnamed_addr constant [44 x i8] c"No mime headers found in multipart part %d\0A\00", align 1
@.str.195 = private unnamed_addr constant [53 x i8] c"Found binhex message in multipart/mixed mainMessage\0A\00", align 1
@.str.196 = private unnamed_addr constant [55 x i8] c"Found binhex message in multipart/mixed non mime part\0A\00", align 1
@.str.197 = private unnamed_addr constant [27 x i8] c"No plain text alternative\0A\00", align 1
@.str.198 = private unnamed_addr constant [42 x i8] c"Mixed message text part disposition \22%s\22\0A\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"attachment\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.201 = private unnamed_addr constant [19 x i8] c"Mime subtype \22%s\22\0A\00", align 1
@.str.202 = private unnamed_addr constant [29 x i8] c"Adding part to main message\0A\00", align 1
@.str.203 = private unnamed_addr constant [31 x i8] c"Treating inline as attachment\0A\00", align 1
@.str.204 = private unnamed_addr constant [26 x i8] c"filename=mixedtextportion\00", align 1
@.str.205 = private unnamed_addr constant [31 x i8] c"Text type %s is not supported\0A\00", align 1
@.str.206 = private unnamed_addr constant [51 x i8] c"Found message inside multipart (encoding type %d)\0A\00", align 1
@.str.207 = private unnamed_addr constant [49 x i8] c"Unencoded multipart/message will not be scanned\0A\00", align 1
@.str.208 = private unnamed_addr constant [43 x i8] c"Encoded multipart/message will be scanned\0A\00", align 1
@.str.209 = private unnamed_addr constant [34 x i8] c"Found multipart inside multipart\0A\00", align 1
@.str.210 = private unnamed_addr constant [29 x i8] c"Finished recursion, rc = %d\0A\00", align 1
@.str.211 = private unnamed_addr constant [70 x i8] c"Only text and application attachments are fully supported, type = %d\0A\00", align 1
@.str.212 = private unnamed_addr constant [25 x i8] c"Adding to non mime-part\0A\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.214 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"%s/clamav-partial\00", align 1
@.str.219 = private unnamed_addr constant [33 x i8] c"Can't create the directory '%s'\0A\00", align 1
@.str.220 = private unnamed_addr constant [26 x i8] c"Partial directory %s: %s\0A\00", align 1
@.str.221 = private unnamed_addr constant [42 x i8] c"Insecure partial directory %s (mode 0%o)\0A\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"filename=%s%s\00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"Must reset to %s\0A\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.226 = private unnamed_addr constant [23 x i8] c"rfc1341: %s, %s of %s\0A\00", align 1
@.str.227 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"outname: %s\0A\00", align 1
@.str.229 = private unnamed_addr constant [28 x i8] c"Can't open '%s' for writing\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@cli_leavetemps_flag = external global i8, align 1
@.str.231 = private unnamed_addr constant [29 x i8] c"removed old RFC1341 file %s\0A\00", align 1
@.str.232 = private unnamed_addr constant [28 x i8] c"Can't open '%s' for reading\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c">From \00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"7bit\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"8bit\00", align 1
@.str.236 = private unnamed_addr constant [24 x i8] c"Found a bounce message\0A\00", align 1
@.str.237 = private unnamed_addr constant [43 x i8] c"Nothing new to save in the bounce message\0A\00", align 1
@.str.238 = private unnamed_addr constant [28 x i8] c"Not found a bounce message\0A\00", align 1
@.str.239 = private unnamed_addr constant [21 x i8] c"filename=textportion\00", align 1
@.str.240 = private unnamed_addr constant [21 x i8] c"Saving main message\0A\00", align 1
@.str.241 = private unnamed_addr constant [74 x i8] c"Invalid call to getline_from_mbox(). Refer to http://www.clamav.net/bugs\0A\00", align 1
@.str.242 = private unnamed_addr constant [55 x i8] c"getline_from_mbox: buffer overflow stopped, line lost\0A\00", align 1
@.str.243 = private unnamed_addr constant [60 x i8] c"getline_from_mbox: buffer overflow stopped, line recovered\0A\00", align 1
@.str.244 = private unnamed_addr constant [16 x i8] c"parseEmailFile\0A\00", align 1
@.str.245 = private unnamed_addr constant [53 x i8] c"Found a header line with space that should be blank\0A\00", align 1
@.str.246 = private unnamed_addr constant [40 x i8] c"parseEmailFile: check '%s' fullline %p\0A\00", align 1
@.str.247 = private unnamed_addr constant [46 x i8] c"Ignoring consecutive blank lines in the body\0A\00", align 1
@.str.248 = private unnamed_addr constant [40 x i8] c"parseEmailFile: Fullline unparsed '%s'\0A\00", align 1
@.str.249 = private unnamed_addr constant [62 x i8] c"parseEmailFile: no headers found, assuming it isn't an email\0A\00", align 1
@.str.250 = private unnamed_addr constant [24 x i8] c"parseEmailFile: return\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_mbox(i8* %dir, i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  store i32 -111, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %dir.addr, align 8
  %2 = load i32, i32* %desc.addr, align 4
  %3 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call = call i32 @cli_parse_mbox(i8* %1, i32 %2, %struct.cli_ctx* %3)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare void @cli_warnmsg(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @cli_parse_mbox(i8* %dir, i32 %desc, %struct.cli_ctx* %ctx) #0 {
entry:
  %retval = alloca i32, align 4
  %dir.addr = alloca i8*, align 8
  %desc.addr = alloca i32, align 4
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %retcode = alloca i32, align 4
  %i = alloca i32, align 4
  %body = alloca %struct.message*, align 8
  %fd = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [1001 x i8], align 16
  %mctx = alloca %struct.mbox_ctx, align 8
  %lastLineWasEmpty = alloca i8, align 1
  %messagenumber = alloca i32, align 4
  %m = alloca %struct.message*, align 8
  %rc = alloca i32, align 4
  store i8* %dir, i8** %dir.addr, align 8
  store i32 %desc, i32* %desc.addr, align 4
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  %0 = load i32, i32* %desc.addr, align 4
  %call = call i32 @dup(i32 %0) #5
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %call1 = call %struct._IO_FILE* @fdopen(i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fd, align 8
  %cmp = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %desc.addr, align 4
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %i, align 4
  %call2 = call i32 @close(i32 %3)
  store i32 -115, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  call void @rewind(%struct._IO_FILE* %4)
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call3 = call i8* @fgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %5)
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call6 = call i32 @fclose(%struct._IO_FILE* %6)
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load %struct.table*, %struct.table** @cli_parse_mbox.rfc821, align 8
  %cmp8 = icmp eq %struct.table* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i32 @initialiseTables(%struct.table** @cli_parse_mbox.rfc821, %struct.table** @cli_parse_mbox.subtype)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.then.9
  store %struct.table* null, %struct.table** @cli_parse_mbox.rfc821, align 8
  store %struct.table* null, %struct.table** @cli_parse_mbox.subtype, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call13 = call i32 @fclose(%struct._IO_FILE* %8)
  store i32 -114, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.7
  store i32 0, i32* %retcode, align 4
  store %struct.message* null, %struct.message** %body, align 8
  %9 = load i8*, i8** %dir.addr, align 8
  %dir16 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %mctx, i32 0, i32 0
  store i8* %9, i8** %dir16, align 8
  %10 = load %struct.table*, %struct.table** @cli_parse_mbox.rfc821, align 8
  %rfc821Table = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %mctx, i32 0, i32 2
  store %struct.table* %10, %struct.table** %rfc821Table, align 8
  %11 = load %struct.table*, %struct.table** @cli_parse_mbox.subtype, align 8
  %subtypeTable = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %mctx, i32 0, i32 3
  store %struct.table* %11, %struct.table** %subtypeTable, align 8
  %12 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %ctx17 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %mctx, i32 0, i32 4
  store %struct.cli_ctx* %12, %struct.cli_ctx** %ctx17, align 8
  %files = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %mctx, i32 0, i32 1
  store i32 0, i32* %files, align 4
  %arraydecay18 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call19 = call i32 @strncmp(i8* %arraydecay18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 5) #6
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.else.89

if.then.21:                                       ; preds = %if.end.15
  %call22 = call %struct.message* @messageCreate()
  store %struct.message* %call22, %struct.message** %m, align 8
  %13 = load %struct.message*, %struct.message** %m, align 8
  %cmp23 = icmp eq %struct.message* %13, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.21
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call25 = call i32 @fclose(%struct._IO_FILE* %14)
  store i32 -114, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.21
  store i8 0, i8* %lastLineWasEmpty, align 1
  store i32 1, i32* %messagenumber, align 4
  %15 = load %struct.message*, %struct.message** %m, align 8
  %16 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @messageSetCTX(%struct.message* %15, %struct.cli_ctx* %16)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.26
  %arraydecay27 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call28 = call i32 @cli_chomp(i8* %arraydecay27)
  %17 = load i8, i8* %lastLineWasEmpty, align 1
  %tobool = trunc i8 %17 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else.48

land.lhs.true:                                    ; preds = %do.body
  %arraydecay29 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call30 = call i32 @strncmp(i8* %arraydecay29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 5) #6
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.48

if.then.32:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %messagenumber, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %messagenumber, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 %18)
  %19 = load %struct.message*, %struct.message** %m, align 8
  %20 = load %struct.table*, %struct.table** @cli_parse_mbox.rfc821, align 8
  %call33 = call %struct.message* @parseEmailHeaders(%struct.message* %19, %struct.table* %20)
  store %struct.message* %call33, %struct.message** %body, align 8
  %21 = load %struct.message*, %struct.message** %body, align 8
  %cmp34 = icmp eq %struct.message* %21, null
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  %22 = load %struct.message*, %struct.message** %m, align 8
  call void @messageReset(%struct.message* %22)
  br label %do.cond

if.end.36:                                        ; preds = %if.then.32
  %23 = load %struct.message*, %struct.message** %body, align 8
  %24 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @messageSetCTX(%struct.message* %23, %struct.cli_ctx* %24)
  %25 = load %struct.message*, %struct.message** %m, align 8
  call void @messageDestroy(%struct.message* %25)
  %26 = load %struct.message*, %struct.message** %body, align 8
  %call37 = call %struct.text* @messageGetBody(%struct.message* %26)
  %tobool38 = icmp ne %struct.text* %call37, null
  br i1 %tobool38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %if.end.36
  %27 = load %struct.message*, %struct.message** %body, align 8
  %call40 = call i32 @parseEmailBody(%struct.message* %27, %struct.text* null, %struct.mbox_ctx* %mctx, i32 0)
  store i32 %call40, i32* %rc, align 4
  %28 = load i32, i32* %rc, align 4
  %cmp41 = icmp eq i32 %28, 0
  br i1 %cmp41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.then.39
  %29 = load %struct.message*, %struct.message** %body, align 8
  call void @messageReset(%struct.message* %29)
  %30 = load %struct.message*, %struct.message** %body, align 8
  store %struct.message* %30, %struct.message** %m, align 8
  br label %do.cond

if.else:                                          ; preds = %if.then.39
  %31 = load i32, i32* %rc, align 4
  %cmp43 = icmp eq i32 %31, 3
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else
  %32 = load i32, i32* %messagenumber, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i32 %32)
  store i32 1, i32* %retcode, align 4
  store %struct.message* null, %struct.message** %m, align 8
  br label %do.end

if.end.45:                                        ; preds = %if.else
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.36
  %33 = load %struct.message*, %struct.message** %body, align 8
  store %struct.message* %33, %struct.message** %m, align 8
  %34 = load %struct.message*, %struct.message** %body, align 8
  call void @messageReset(%struct.message* %34)
  %35 = load %struct.message*, %struct.message** %body, align 8
  %36 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @messageSetCTX(%struct.message* %35, %struct.cli_ctx* %36)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.51

if.else.48:                                       ; preds = %land.lhs.true, %do.body
  %arrayidx = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i64 0
  %37 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %37 to i32
  %cmp49 = icmp eq i32 %conv, 0
  %frombool = zext i1 %cmp49 to i8
  store i8 %frombool, i8* %lastLineWasEmpty, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.end.47
  %arraydecay52 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call53 = call i32 @isuuencodebegin(i8* %arraydecay52)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.68

if.then.55:                                       ; preds = %if.end.51
  %38 = load %struct.message*, %struct.message** %m, align 8
  %arraydecay56 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %39 = load i8*, i8** %dir.addr, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call57 = call i32 @uudecodeFile(%struct.message* %38, i8* %arraydecay56, i8* %39, %struct._IO_FILE* %40)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %if.then.55
  %41 = load %struct.message*, %struct.message** %m, align 8
  %arraydecay61 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call62 = call i32 @messageAddStr(%struct.message* %41, i8* %arraydecay61)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.60
  br label %do.end

if.end.66:                                        ; preds = %if.then.60
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.55
  br label %if.end.75

if.else.68:                                       ; preds = %if.end.51
  %42 = load %struct.message*, %struct.message** %m, align 8
  %arraydecay69 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call70 = call i32 @messageAddStr(%struct.message* %42, i8* %arraydecay69)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.68
  br label %do.end

if.end.74:                                        ; preds = %if.else.68
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.67
  br label %do.cond

do.cond:                                          ; preds = %if.end.75, %if.then.42, %if.then.35
  %arraydecay76 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call77 = call i8* @fgets(i8* %arraydecay76, i32 1000, %struct._IO_FILE* %43)
  %cmp78 = icmp ne i8* %call77, null
  br i1 %cmp78, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.73, %if.then.65, %if.then.44
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call80 = call i32 @fclose(%struct._IO_FILE* %44)
  %45 = load i32, i32* %retcode, align 4
  %cmp81 = icmp eq i32 %45, 0
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %do.end
  %46 = load i32, i32* %messagenumber, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0), i32 %46)
  %47 = load %struct.message*, %struct.message** %m, align 8
  %48 = load %struct.table*, %struct.table** @cli_parse_mbox.rfc821, align 8
  %call84 = call %struct.message* @parseEmailHeaders(%struct.message* %47, %struct.table* %48)
  store %struct.message* %call84, %struct.message** %body, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %do.end
  %49 = load %struct.message*, %struct.message** %m, align 8
  %tobool86 = icmp ne %struct.message* %49, null
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.85
  %50 = load %struct.message*, %struct.message** %m, align 8
  call void @messageDestroy(%struct.message* %50)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.85
  br label %if.end.122

if.else.89:                                       ; preds = %if.end.15
  %arraydecay90 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call91 = call i32 @strncmp(i8* %arraydecay90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 4) #6
  %cmp92 = icmp eq i32 %call91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.104

if.then.94:                                       ; preds = %if.else.89
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.94
  %arraydecay95 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call96 = call i8* @fgets(i8* %arraydecay95, i32 1000, %struct._IO_FILE* %51)
  %cmp97 = icmp ne i8* %call96, null
  br i1 %cmp97, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx99 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i64 0
  %52 = load i8, i8* %arrayidx99, align 1
  %conv100 = sext i8 %52 to i32
  %call101 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv100) #6
  %cmp102 = icmp eq i8* %call101, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %53 = phi i1 [ false, %while.cond ], [ %cmp102, %land.rhs ]
  br i1 %53, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.104

if.end.104:                                       ; preds = %while.end, %if.else.89
  br label %while.cond.105

while.cond.105:                                   ; preds = %while.body.116, %if.end.104
  %arrayidx106 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i64 0
  %54 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %54 to i32
  %call108 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 %conv107) #6
  %tobool109 = icmp ne i8* %call108, null
  br i1 %tobool109, label %land.rhs.110, label %land.end.115

land.rhs.110:                                     ; preds = %while.cond.105
  %arraydecay111 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call112 = call i8* @getline_from_mbox(i8* %arraydecay111, i64 1000, %struct._IO_FILE* %55)
  %cmp113 = icmp ne i8* %call112, null
  br label %land.end.115

land.end.115:                                     ; preds = %land.rhs.110, %while.cond.105
  %56 = phi i1 [ false, %while.cond.105 ], [ %cmp113, %land.rhs.110 ]
  br i1 %56, label %while.body.116, label %while.end.117

while.body.116:                                   ; preds = %land.end.115
  br label %while.cond.105

while.end.117:                                    ; preds = %land.end.115
  %arrayidx118 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i64 1000
  store i8 0, i8* %arrayidx118, align 1
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %58 = load %struct.table*, %struct.table** @cli_parse_mbox.rfc821, align 8
  %arraydecay119 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %59 = load i8*, i8** %dir.addr, align 8
  %call120 = call %struct.message* @parseEmailFile(%struct._IO_FILE* %57, %struct.table* %58, i8* %arraydecay119, i8* %59)
  store %struct.message* %call120, %struct.message** %body, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fd, align 8
  %call121 = call i32 @fclose(%struct._IO_FILE* %60)
  br label %if.end.122

if.end.122:                                       ; preds = %while.end.117, %if.end.88
  %61 = load %struct.message*, %struct.message** %body, align 8
  %tobool123 = icmp ne %struct.message* %61, null
  br i1 %tobool123, label %if.then.124, label %if.end.136

if.then.124:                                      ; preds = %if.end.122
  %62 = load i32, i32* %retcode, align 4
  %cmp125 = icmp eq i32 %62, 0
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.135

land.lhs.true.127:                                ; preds = %if.then.124
  %63 = load %struct.message*, %struct.message** %body, align 8
  %call128 = call %struct.text* @messageGetBody(%struct.message* %63)
  %tobool129 = icmp ne %struct.text* %call128, null
  br i1 %tobool129, label %if.then.130, label %if.end.135

if.then.130:                                      ; preds = %land.lhs.true.127
  %64 = load %struct.message*, %struct.message** %body, align 8
  %65 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  call void @messageSetCTX(%struct.message* %64, %struct.cli_ctx* %65)
  %66 = load %struct.message*, %struct.message** %body, align 8
  %call131 = call i32 @parseEmailBody(%struct.message* %66, %struct.text* null, %struct.mbox_ctx* %mctx, i32 0)
  switch i32 %call131, label %sw.epilog [
    i32 0, label %sw.bb
    i32 4, label %sw.bb.132
    i32 5, label %sw.bb.133
    i32 3, label %sw.bb.134
  ]

sw.bb:                                            ; preds = %if.then.130
  store i32 -124, i32* %retcode, align 4
  br label %sw.epilog

sw.bb.132:                                        ; preds = %if.then.130
  store i32 -100, i32* %retcode, align 4
  br label %sw.epilog

sw.bb.133:                                        ; preds = %if.then.130
  store i32 -102, i32* %retcode, align 4
  br label %sw.epilog

sw.bb.134:                                        ; preds = %if.then.130
  store i32 1, i32* %retcode, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.130, %sw.bb.134, %sw.bb.133, %sw.bb.132, %sw.bb
  br label %if.end.135

if.end.135:                                       ; preds = %sw.epilog, %land.lhs.true.127, %if.then.124
  %67 = load %struct.message*, %struct.message** %body, align 8
  call void @messageDestroy(%struct.message* %67)
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.122
  %68 = load i32, i32* %retcode, align 4
  %cmp137 = icmp eq i32 %68, 0
  br i1 %cmp137, label %land.lhs.true.139, label %if.end.147

land.lhs.true.139:                                ; preds = %if.end.136
  %69 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %found_possibly_unwanted = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %69, i32 0, i32 8
  %70 = load i32, i32* %found_possibly_unwanted, align 4
  %tobool140 = icmp ne i32 %70, 0
  br i1 %tobool140, label %land.lhs.true.141, label %if.end.147

land.lhs.true.141:                                ; preds = %land.lhs.true.139
  %71 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %71, i32 0, i32 0
  %72 = load i8**, i8*** %virname, align 8
  %73 = load i8*, i8** %72, align 8
  %cmp142 = icmp eq i8* %73, null
  br i1 %cmp142, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %land.lhs.true.141
  %74 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname145 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %74, i32 0, i32 0
  %75 = load i8**, i8*** %virname145, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i8** %75, align 8
  %76 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %found_possibly_unwanted146 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %76, i32 0, i32 8
  store i32 0, i32* %found_possibly_unwanted146, align 4
  store i32 1, i32* %retcode, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %land.lhs.true.141, %land.lhs.true.139, %if.end.136
  %77 = load i32, i32* %retcode, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i32 %77)
  %78 = load i32, i32* %retcode, align 4
  store i32 %78, i32* %retval
  br label %return

return:                                           ; preds = %if.end.147, %if.then.24, %if.then.12, %if.then.5, %if.then
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define i64 @strstrip(i8* %s) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  %add = add nsw i32 %conv, 1
  %call1 = call i64 @strip(i8* %1, i32 %add)
  store i64 %call1, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal i64 @strip(i8* %buf, i32 %len) #0 {
entry:
  %retval = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %buf.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  store i64 %call, i64* %i, align 8
  %3 = load i32, i32* %len.addr, align 4
  %4 = load i64, i64* %i, align 8
  %add = add i64 %4, 1
  %conv = trunc i64 %add to i32
  %cmp2 = icmp sgt i32 %3, %conv
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %5 = load i64, i64* %i, align 8
  store i64 %5, i64* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %len.addr, align 4
  %idxprom = sext i32 %dec to i64
  %7 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8* %arrayidx, i8** %ptr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.5
  %8 = load i8*, i8** %ptr, align 8
  %9 = load i8, i8* %8, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.body
  %10 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %10, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.7
  %11 = load i32, i32* %len.addr, align 4
  %dec8 = add nsw i32 %11, -1
  store i32 %dec8, i32* %len.addr, align 4
  %cmp9 = icmp sge i32 %dec8, 0
  br i1 %cmp9, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %12 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %13 = load i8, i8* %incdec.ptr, align 1
  %conv11 = sext i8 %13 to i32
  %idxprom12 = sext i32 %conv11 to i64
  %call13 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %call13, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %14, i64 %idxprom12
  %15 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %15 to i32
  %and = and i32 %conv15, 32768
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %land.end, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %16 = load i8*, i8** %ptr, align 8
  %17 = load i8, i8* %16, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp ne i32 %conv18, 10
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.17
  %18 = load i8*, i8** %ptr, align 8
  %19 = load i8, i8* %18, align 1
  %conv21 = sext i8 %19 to i32
  %cmp22 = icmp ne i32 %conv21, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.17, %land.lhs.true, %do.cond
  %20 = phi i1 [ false, %land.lhs.true.17 ], [ false, %land.lhs.true ], [ false, %do.cond ], [ %cmp22, %land.rhs ]
  br i1 %20, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %21 = load i32, i32* %len.addr, align 4
  %add24 = add nsw i32 %21, 1
  %conv25 = sext i32 %add24 to i64
  store i64 %conv25, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %22 = load i64, i64* %retval
  ret i64 %22
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @cli_dbgmsg(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @dup(i32) #3

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #3

declare void @cli_errmsg(i8*, ...) #1

declare i32 @close(i32) #1

declare void @rewind(%struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @initialiseTables(%struct.table** %rfc821Table, %struct.table** %subtypeTable) #0 {
entry:
  %retval = alloca i32, align 4
  %rfc821Table.addr = alloca %struct.table**, align 8
  %subtypeTable.addr = alloca %struct.table**, align 8
  %tableinit = alloca %struct.tableinit*, align 8
  store %struct.table** %rfc821Table, %struct.table*** %rfc821Table.addr, align 8
  store %struct.table** %subtypeTable, %struct.table*** %subtypeTable.addr, align 8
  %call = call %struct.table* @tableCreate()
  %0 = load %struct.table**, %struct.table*** %rfc821Table.addr, align 8
  store %struct.table* %call, %struct.table** %0, align 8
  store %struct.tableinit* getelementptr inbounds ([4 x %struct.tableinit], [4 x %struct.tableinit]* @rfc821headers, i32 0, i32 0), %struct.tableinit** %tableinit, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.tableinit*, %struct.tableinit** %tableinit, align 8
  %key = getelementptr inbounds %struct.tableinit, %struct.tableinit* %1, i32 0, i32 0
  %2 = load i8*, i8** %key, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.table**, %struct.table*** %rfc821Table.addr, align 8
  %4 = load %struct.table*, %struct.table** %3, align 8
  %5 = load %struct.tableinit*, %struct.tableinit** %tableinit, align 8
  %key1 = getelementptr inbounds %struct.tableinit, %struct.tableinit* %5, i32 0, i32 0
  %6 = load i8*, i8** %key1, align 8
  %7 = load %struct.tableinit*, %struct.tableinit** %tableinit, align 8
  %value = getelementptr inbounds %struct.tableinit, %struct.tableinit* %7, i32 0, i32 1
  %8 = load i32, i32* %value, align 4
  %call2 = call i32 @tableInsert(%struct.table* %4, i8* %6, i32 %8)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.table**, %struct.table*** %rfc821Table.addr, align 8
  %10 = load %struct.table*, %struct.table** %9, align 8
  call void @tableDestroy(%struct.table* %10)
  %11 = load %struct.table**, %struct.table*** %rfc821Table.addr, align 8
  store %struct.table* null, %struct.table** %11, align 8
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.tableinit*, %struct.tableinit** %tableinit, align 8
  %incdec.ptr = getelementptr inbounds %struct.tableinit, %struct.tableinit* %12, i32 1
  store %struct.tableinit* %incdec.ptr, %struct.tableinit** %tableinit, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call3 = call %struct.table* @tableCreate()
  %13 = load %struct.table**, %struct.table*** %subtypeTable.addr, align 8
  store %struct.table* %call3, %struct.table** %13, align 8
  store %struct.tableinit* getelementptr inbounds ([20 x %struct.tableinit], [20 x %struct.tableinit]* @mimeSubtypes, i32 0, i32 0), %struct.tableinit** %tableinit, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %for.end
  %14 = load %struct.tableinit*, %struct.tableinit** %tableinit, align 8
  %key5 = getelementptr inbounds %struct.tableinit, %struct.tableinit* %14, i32 0, i32 0
  %15 = load i8*, i8** %key5, align 8
  %tobool6 = icmp ne i8* %15, null
  br i1 %tobool6, label %for.body.7, label %for.end.16

for.body.7:                                       ; preds = %for.cond.4
  %16 = load %struct.table**, %struct.table*** %subtypeTable.addr, align 8
  %17 = load %struct.table*, %struct.table** %16, align 8
  %18 = load %struct.tableinit*, %struct.tableinit** %tableinit, align 8
  %key8 = getelementptr inbounds %struct.tableinit, %struct.tableinit* %18, i32 0, i32 0
  %19 = load i8*, i8** %key8, align 8
  %20 = load %struct.tableinit*, %struct.tableinit** %tableinit, align 8
  %value9 = getelementptr inbounds %struct.tableinit, %struct.tableinit* %20, i32 0, i32 1
  %21 = load i32, i32* %value9, align 4
  %call10 = call i32 @tableInsert(%struct.table* %17, i8* %19, i32 %21)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.7
  %22 = load %struct.table**, %struct.table*** %rfc821Table.addr, align 8
  %23 = load %struct.table*, %struct.table** %22, align 8
  call void @tableDestroy(%struct.table* %23)
  %24 = load %struct.table**, %struct.table*** %subtypeTable.addr, align 8
  %25 = load %struct.table*, %struct.table** %24, align 8
  call void @tableDestroy(%struct.table* %25)
  %26 = load %struct.table**, %struct.table*** %rfc821Table.addr, align 8
  store %struct.table* null, %struct.table** %26, align 8
  %27 = load %struct.table**, %struct.table*** %subtypeTable.addr, align 8
  store %struct.table* null, %struct.table** %27, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.body.7
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.13
  %28 = load %struct.tableinit*, %struct.tableinit** %tableinit, align 8
  %incdec.ptr15 = getelementptr inbounds %struct.tableinit, %struct.tableinit* %28, i32 1
  store %struct.tableinit* %incdec.ptr15, %struct.tableinit** %tableinit, align 8
  br label %for.cond.4

for.end.16:                                       ; preds = %for.cond.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.16, %if.then.12, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare %struct.message* @messageCreate() #1

declare void @messageSetCTX(%struct.message*, %struct.cli_ctx*) #1

declare i32 @cli_chomp(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.message* @parseEmailHeaders(%struct.message* %m, %struct.table* %rfc821) #0 {
entry:
  %retval = alloca %struct.message*, align 8
  %m.addr = alloca %struct.message*, align 8
  %rfc821.addr = alloca %struct.table*, align 8
  %inHeader = alloca i8, align 1
  %bodyIsEmpty = alloca i8, align 1
  %t = alloca %struct.text*, align 8
  %ret = alloca %struct.message*, align 8
  %anyHeadersFound = alloca i8, align 1
  %commandNumber = alloca i32, align 4
  %fullline = alloca i8*, align 8
  %fulllinelength = alloca i64, align 8
  %line = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %cmd = alloca [1001 x i8], align 16
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store %struct.table* %rfc821, %struct.table** %rfc821.addr, align 8
  store i8 1, i8* %inHeader, align 1
  store i8 1, i8* %bodyIsEmpty, align 1
  store i8 0, i8* %anyHeadersFound, align 1
  store i32 -1, i32* %commandNumber, align 4
  store i8* null, i8** %fullline, align 8
  store i64 0, i64* %fulllinelength, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0))
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %cmp = icmp eq %struct.message* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.message* null, %struct.message** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.message* @messageCreate()
  store %struct.message* %call, %struct.message** %ret, align 8
  %1 = load %struct.message*, %struct.message** %m.addr, align 8
  %call1 = call %struct.text* @messageGetBody(%struct.message* %1)
  store %struct.text* %call1, %struct.text** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.text*, %struct.text** %t, align 8
  %tobool = icmp ne %struct.text* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.text*, %struct.text** %t, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %3, i32 0, i32 0
  %4 = load i8*, i8** %t_line, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %5 = load %struct.text*, %struct.text** %t, align 8
  %t_line4 = getelementptr inbounds %struct.text, %struct.text* %5, i32 0, i32 0
  %6 = load i8*, i8** %t_line4, align 8
  %call5 = call i8* @lineGetData(i8* %6)
  store i8* %call5, i8** %line, align 8
  br label %if.end.6

if.else:                                          ; preds = %for.body
  store i8* null, i8** %line, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  %7 = load i8, i8* %inHeader, align 1
  %tobool7 = trunc i8 %7 to i1
  br i1 %tobool7, label %if.then.8, label %if.else.90

if.then.8:                                        ; preds = %if.end.6
  %8 = load i8*, i8** %line, align 8
  %tobool9 = icmp ne i8* %8, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %9 = load i8*, i8** %line, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0), %cond.false ]
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i8* %cond)
  %10 = load i8*, i8** %line, align 8
  %cmp10 = icmp eq i8* %10, null
  br i1 %cmp10, label %if.then.11, label %if.else.15

if.then.11:                                       ; preds = %cond.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0))
  %11 = load i8, i8* %anyHeadersFound, align 1
  %tobool12 = trunc i8 %11 to i1
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.11
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i32 0, i32 0))
  br label %for.end

if.end.14:                                        ; preds = %if.then.11
  store i8 0, i8* %inHeader, align 1
  store i8 1, i8* %bodyIsEmpty, align 1
  br label %if.end.89

if.else.15:                                       ; preds = %cond.end
  %12 = load i8*, i8** %fullline, align 8
  %cmp16 = icmp eq i8* %12, null
  br i1 %cmp16, label %if.then.17, label %if.else.56

if.then.17:                                       ; preds = %if.else.15
  %13 = load i8*, i8** %line, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %idxprom = sext i32 %conv to i64
  %call18 = call i16** @__ctype_b_loc() #7
  %15 = load i16*, i16** %call18, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %16 to i32
  %and = and i32 %conv20, 1
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.17
  br label %for.inc

if.end.23:                                        ; preds = %if.then.17
  %17 = load i8*, i8** %line, align 8
  %call24 = call i8* @strchr(i8* %17, i32 58) #6
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %18 = load i8*, i8** %line, align 8
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %call27 = call i8* @cli_strtokbuf(i8* %18, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay)
  %cmp28 = icmp eq i8* %call27, null
  br i1 %cmp28, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %lor.lhs.false, %if.end.23
  %19 = load i8*, i8** %line, align 8
  %call31 = call i32 @strncmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 5) #6
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  store i8 1, i8* %anyHeadersFound, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.then.30
  br label %for.inc

if.end.36:                                        ; preds = %lor.lhs.false
  %arraydecay37 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %call38 = call i8* @rfc822comments(i8* %arraydecay37, i8* null)
  store i8* %call38, i8** %ptr, align 8
  %20 = load %struct.table*, %struct.table** %rfc821.addr, align 8
  %21 = load i8*, i8** %ptr, align 8
  %tobool39 = icmp ne i8* %21, null
  br i1 %tobool39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %if.end.36
  %22 = load i8*, i8** %ptr, align 8
  br label %cond.end.43

cond.false.41:                                    ; preds = %if.end.36
  %arraydecay42 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.41, %cond.true.40
  %cond44 = phi i8* [ %22, %cond.true.40 ], [ %arraydecay42, %cond.false.41 ]
  %call45 = call i32 @tableFind(%struct.table* %20, i8* %cond44)
  store i32 %call45, i32* %commandNumber, align 4
  %23 = load i8*, i8** %ptr, align 8
  %tobool46 = icmp ne i8* %23, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %cond.end.43
  %24 = load i8*, i8** %ptr, align 8
  call void @free(i8* %24) #5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %cond.end.43
  %25 = load i32, i32* %commandNumber, align 4
  switch i32 %25, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.48, %if.end.48, %if.end.48
  store i8 1, i8* %anyHeadersFound, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.48
  %26 = load i8, i8* %anyHeadersFound, align 1
  %tobool49 = trunc i8 %26 to i1
  br i1 %tobool49, label %if.end.53, label %if.then.50

if.then.50:                                       ; preds = %sw.default
  %27 = load i32, i32* %commandNumber, align 4
  %arraydecay51 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %call52 = call zeroext i1 @usefulHeader(i32 %27, i8* %arraydecay51)
  %frombool = zext i1 %call52 to i8
  store i8 %frombool, i8* %anyHeadersFound, align 1
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %sw.default
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb
  %28 = load i8*, i8** %line, align 8
  %call54 = call i8* @cli_strdup(i8* %28)
  store i8* %call54, i8** %fullline, align 8
  %29 = load i8*, i8** %line, align 8
  %call55 = call i64 @strlen(i8* %29) #6
  %add = add i64 %call55, 1
  store i64 %add, i64* %fulllinelength, align 8
  br label %if.end.68

if.else.56:                                       ; preds = %if.else.15
  %30 = load i8*, i8** %line, align 8
  %tobool57 = icmp ne i8* %30, null
  br i1 %tobool57, label %if.then.58, label %if.end.67

if.then.58:                                       ; preds = %if.else.56
  %31 = load i8*, i8** %line, align 8
  %call59 = call i64 @strlen(i8* %31) #6
  %32 = load i64, i64* %fulllinelength, align 8
  %add60 = add i64 %32, %call59
  store i64 %add60, i64* %fulllinelength, align 8
  %33 = load i8*, i8** %fullline, align 8
  %34 = load i64, i64* %fulllinelength, align 8
  %call61 = call i8* @cli_realloc(i8* %33, i64 %34)
  store i8* %call61, i8** %ptr, align 8
  %35 = load i8*, i8** %ptr, align 8
  %cmp62 = icmp eq i8* %35, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.58
  br label %for.inc

if.end.65:                                        ; preds = %if.then.58
  %36 = load i8*, i8** %ptr, align 8
  store i8* %36, i8** %fullline, align 8
  %37 = load i8*, i8** %fullline, align 8
  %38 = load i8*, i8** %line, align 8
  %call66 = call i8* @strcat(i8* %37, i8* %38) #5
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.65, %if.else.56
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %sw.epilog
  %39 = load %struct.text*, %struct.text** %t, align 8
  %call69 = call zeroext i1 @next_is_folded_header(%struct.text* %39)
  br i1 %call69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  br label %for.inc

if.end.71:                                        ; preds = %if.end.68
  %40 = load %struct.text*, %struct.text** %t, align 8
  %t_line72 = getelementptr inbounds %struct.text, %struct.text* %40, i32 0, i32 0
  %41 = load i8*, i8** %t_line72, align 8
  %call73 = call i8* @lineUnlink(i8* %41)
  %42 = load %struct.text*, %struct.text** %t, align 8
  %t_line74 = getelementptr inbounds %struct.text, %struct.text* %42, i32 0, i32 0
  store i8* null, i8** %t_line74, align 8
  %43 = load i8*, i8** %fullline, align 8
  %call75 = call i32 @count_quotes(i8* %43)
  %and76 = and i32 %call75, 1
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.end.71
  br label %for.inc

if.end.79:                                        ; preds = %if.end.71
  %44 = load i8*, i8** %fullline, align 8
  %call80 = call i8* @rfc822comments(i8* %44, i8* null)
  store i8* %call80, i8** %ptr, align 8
  %45 = load i8*, i8** %ptr, align 8
  %tobool81 = icmp ne i8* %45, null
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.79
  %46 = load i8*, i8** %fullline, align 8
  call void @free(i8* %46) #5
  %47 = load i8*, i8** %ptr, align 8
  store i8* %47, i8** %fullline, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.79
  %48 = load %struct.message*, %struct.message** %ret, align 8
  %49 = load i8*, i8** %fullline, align 8
  %50 = load %struct.table*, %struct.table** %rfc821.addr, align 8
  %call84 = call i32 @parseEmailHeader(%struct.message* %48, i8* %49, %struct.table* %50)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.83
  br label %for.inc

if.end.88:                                        ; preds = %if.end.83
  %51 = load i8*, i8** %fullline, align 8
  call void @free(i8* %51) #5
  store i8* null, i8** %fullline, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.14
  br label %if.end.102

if.else.90:                                       ; preds = %if.end.6
  %52 = load i8, i8* %bodyIsEmpty, align 1
  %tobool91 = trunc i8 %52 to i1
  br i1 %tobool91, label %if.then.92, label %if.end.100

if.then.92:                                       ; preds = %if.else.90
  %53 = load i8*, i8** %line, align 8
  %cmp93 = icmp eq i8* %53, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.then.92
  br label %for.inc

if.end.96:                                        ; preds = %if.then.92
  %54 = load i8*, i8** %line, align 8
  %call97 = call zeroext i1 @newline_in_header(i8* %54)
  br i1 %call97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.96
  br label %for.inc

if.end.99:                                        ; preds = %if.end.96
  store i8 0, i8* %bodyIsEmpty, align 1
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.else.90
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.41, i32 0, i32 0))
  %55 = load %struct.message*, %struct.message** %ret, align 8
  %56 = load %struct.text*, %struct.text** %t, align 8
  %57 = load %struct.message*, %struct.message** %m.addr, align 8
  %call101 = call i32 @messageMoveText(%struct.message* %55, %struct.text* %56, %struct.message* %57)
  br label %for.end

if.end.102:                                       ; preds = %if.end.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.102, %if.then.98, %if.then.95, %if.then.87, %if.then.78, %if.then.70, %if.then.64, %if.end.53, %if.end.35, %if.then.22
  %58 = load %struct.text*, %struct.text** %t, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %58, i32 0, i32 1
  %59 = load %struct.text*, %struct.text** %t_next, align 8
  store %struct.text* %59, %struct.text** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.100, %if.then.13, %for.cond
  %60 = load i8*, i8** %fullline, align 8
  %tobool103 = icmp ne i8* %60, null
  br i1 %tobool103, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %for.end
  %61 = load i8*, i8** %fullline, align 8
  %62 = load i8, i8* %61, align 1
  %tobool105 = icmp ne i8 %62, 0
  br i1 %tobool105, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %if.then.104
  %63 = load i32, i32* %commandNumber, align 4
  switch i32 %63, label %sw.epilog.108 [
    i32 2, label %sw.bb.107
    i32 3, label %sw.bb.107
    i32 1, label %sw.bb.107
  ]

sw.bb.107:                                        ; preds = %if.then.106, %if.then.106, %if.then.106
  %64 = load i8*, i8** %fullline, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.42, i32 0, i32 0), i8* %64)
  br label %sw.epilog.108

sw.epilog.108:                                    ; preds = %sw.bb.107, %if.then.106
  br label %if.end.109

if.end.109:                                       ; preds = %sw.epilog.108, %if.then.104
  %65 = load i8*, i8** %fullline, align 8
  call void @free(i8* %65) #5
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %for.end
  %66 = load i8, i8* %anyHeadersFound, align 1
  %tobool111 = trunc i8 %66 to i1
  br i1 %tobool111, label %if.end.113, label %if.then.112

if.then.112:                                      ; preds = %if.end.110
  %67 = load %struct.message*, %struct.message** %ret, align 8
  call void @messageDestroy(%struct.message* %67)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.43, i32 0, i32 0))
  store %struct.message* null, %struct.message** %retval
  br label %return

if.end.113:                                       ; preds = %if.end.110
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0))
  %68 = load %struct.message*, %struct.message** %ret, align 8
  store %struct.message* %68, %struct.message** %retval
  br label %return

return:                                           ; preds = %if.end.113, %if.then.112, %if.then
  %69 = load %struct.message*, %struct.message** %retval
  ret %struct.message* %69
}

declare void @messageReset(%struct.message*) #1

declare void @messageDestroy(%struct.message*) #1

declare %struct.text* @messageGetBody(%struct.message*) #1

; Function Attrs: nounwind uwtable
define internal i32 @parseEmailBody(%struct.message* %messageIn, %struct.text* %textIn, %struct.mbox_ctx* %mctx, i32 %recursion_level) #0 {
entry:
  %retval = alloca i32, align 4
  %messageIn.addr = alloca %struct.message*, align 8
  %textIn.addr = alloca %struct.text*, align 8
  %mctx.addr = alloca %struct.mbox_ctx*, align 8
  %recursion_level.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %aText = alloca %struct.text*, align 8
  %mainMessage = alloca %struct.message*, align 8
  %fb = alloca %struct.fileblob*, align 8
  %infected = alloca i8, align 1
  %doPhishingScan = alloca i32, align 4
  %limits = alloca %struct.cl_limits*, align 8
  %ctx9 = alloca %struct.cli_ctx*, align 8
  %mimeType = alloca i32, align 4
  %subtype = alloca i32, align 4
  %inhead = alloca i32, align 4
  %htmltextPart = alloca i32, align 4
  %inMimeHead = alloca i32, align 4
  %i = alloca i32, align 4
  %mimeSubtype = alloca i8*, align 8
  %protocol = alloca i8*, align 8
  %boundary = alloca i8*, align 8
  %t_line = alloca %struct.text*, align 8
  %aMessage = alloca %struct.message*, align 8
  %multiparts = alloca i32, align 4
  %messages = alloca %struct.message**, align 8
  %lines = alloca i32, align 4
  %m = alloca %struct.message**, align 8
  %old_rc = alloca i32, align 4
  %line = alloca i8*, align 8
  %fullline = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %next = alloca %struct.text*, align 8
  %data = alloca i8*, align 8
  %data262 = alloca i8*, align 8
  %m538 = alloca %struct.message*, align 8
  %t = alloca %struct.text*, align 8
  %lookahead_definately_is_bounce = alloca i8, align 1
  %l = alloca i8*, align 8
  %lookahead = alloca %struct.text*, align 8
  %topofbounce = alloca %struct.text*, align 8
  %s = alloca i8*, align 8
  %inheader = alloca i8, align 1
  %t_line783 = alloca %struct.text*, align 8
  %saveIt = alloca i8, align 1
  store %struct.message* %messageIn, %struct.message** %messageIn.addr, align 8
  store %struct.text* %textIn, %struct.text** %textIn.addr, align 8
  store %struct.mbox_ctx* %mctx, %struct.mbox_ctx** %mctx.addr, align 8
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  %0 = load %struct.text*, %struct.text** %textIn.addr, align 8
  store %struct.text* %0, %struct.text** %aText, align 8
  %1 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  store %struct.message* %1, %struct.message** %mainMessage, align 8
  store i8 0, i8* %infected, align 1
  %2 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %2, i32 0, i32 4
  %3 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %3, i32 0, i32 3
  %4 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %dboptions = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %4, i32 0, i32 2
  %5 = load i32, i32* %dboptions, align 4
  %and = and i32 %5, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx1 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %6, i32 0, i32 4
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx1, align 8
  %dconf = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %7, i32 0, i32 9
  %8 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %8, i32 0, i32 6
  %9 = load i32, i32* %phishing, align 4
  %and2 = and i32 %9, 1
  %tobool3 = icmp ne i32 %and2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %10 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  store i32 %land.ext, i32* %doPhishingScan, align 4
  %11 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx4 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %11, i32 0, i32 4
  %12 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx4, align 8
  %limits5 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %12, i32 0, i32 4
  %13 = load %struct.cl_limits*, %struct.cl_limits** %limits5, align 8
  store %struct.cl_limits* %13, %struct.cl_limits** %limits, align 8
  %14 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %14, i32 0, i32 1
  %15 = load i32, i32* %files, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.74, i32 0, i32 0), i32 %15)
  %16 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %tobool6 = icmp ne %struct.cl_limits* %16, null
  br i1 %tobool6, label %if.then, label %if.end.28

if.then:                                          ; preds = %land.end
  %17 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %maxmailrec = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %17, i32 0, i32 2
  %18 = load i32, i32* %maxmailrec, align 4
  %tobool7 = icmp ne i32 %18, 0
  br i1 %tobool7, label %if.then.8, label %if.end.20

if.then.8:                                        ; preds = %if.then
  %19 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx10 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %19, i32 0, i32 4
  %20 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx10, align 8
  store %struct.cli_ctx* %20, %struct.cli_ctx** %ctx9, align 8
  %21 = load i32, i32* %recursion_level.addr, align 4
  %22 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %maxmailrec11 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %22, i32 0, i32 2
  %23 = load i32, i32* %maxmailrec11, align 4
  %cmp = icmp ugt i32 %21, %23
  br i1 %cmp, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.then.8
  %24 = load i32, i32* %recursion_level.addr, align 4
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.75, i32 0, i32 0), i32 %24)
  %25 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx9, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %25, i32 0, i32 5
  %26 = load i32, i32* %options, align 4
  %and13 = and i32 %26, 256
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %27 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx9, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %27, i32 0, i32 0
  %28 = load i8**, i8*** %virname, align 8
  %tobool16 = icmp ne i8** %28, null
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.15
  %29 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx9, align 8
  %virname18 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %29, i32 0, i32 0
  %30 = load i8**, i8*** %virname18, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), i8** %30, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.15
  store i32 3, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.12
  store i32 4, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then
  %31 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %maxfiles = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %31, i32 0, i32 1
  %32 = load i32, i32* %maxfiles, align 4
  %tobool21 = icmp ne i32 %32, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.20
  %33 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files22 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %33, i32 0, i32 1
  %34 = load i32, i32* %files22, align 4
  %35 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %maxfiles23 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %35, i32 0, i32 1
  %36 = load i32, i32* %maxfiles23, align 4
  %cmp24 = icmp uge i32 %34, %36
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %land.lhs.true
  %37 = load %struct.cl_limits*, %struct.cl_limits** %limits, align 8
  %maxfiles26 = getelementptr inbounds %struct.cl_limits, %struct.cl_limits* %37, i32 0, i32 1
  %38 = load i32, i32* %maxfiles26, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.77, i32 0, i32 0), i32 %38)
  store i32 5, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true, %if.end.20
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %land.end
  store i32 1, i32* %rc, align 4
  %39 = load %struct.message*, %struct.message** %mainMessage, align 8
  %tobool29 = icmp ne %struct.message* %39, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.617

land.lhs.true.30:                                 ; preds = %if.end.28
  %40 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call = call %struct.text* @messageGetBody(%struct.message* %40)
  %cmp31 = icmp ne %struct.text* %call, null
  br i1 %cmp31, label %if.then.32, label %if.end.617

if.then.32:                                       ; preds = %land.lhs.true.30
  store i32 0, i32* %multiparts, align 4
  store %struct.message** null, %struct.message*** %messages, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0))
  %41 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call33 = call i32 @messageGetMimeType(%struct.message* %41)
  store i32 %call33, i32* %mimeType, align 4
  %42 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call34 = call i8* @messageGetMimeSubtype(%struct.message* %42)
  store i8* %call34, i8** %mimeSubtype, align 8
  %43 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %subtypeTable = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %43, i32 0, i32 3
  %44 = load %struct.table*, %struct.table** %subtypeTable, align 8
  %45 = load i8*, i8** %mimeSubtype, align 8
  %call35 = call i32 @tableFind(%struct.table* %44, i8* %45)
  store i32 %call35, i32* %subtype, align 4
  %46 = load i32, i32* %mimeType, align 4
  %cmp36 = icmp eq i32 %46, 6
  br i1 %cmp36, label %land.lhs.true.37, label %if.else.40

land.lhs.true.37:                                 ; preds = %if.then.32
  %47 = load i32, i32* %subtype, align 4
  %cmp38 = icmp eq i32 %47, 1
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %land.lhs.true.37
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.79, i32 0, i32 0))
  store i32 0, i32* %mimeType, align 4
  %48 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageSetMimeSubtype(%struct.message* %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.48

if.else.40:                                       ; preds = %land.lhs.true.37, %if.then.32
  %49 = load i32, i32* %mimeType, align 4
  %cmp41 = icmp eq i32 %49, 4
  br i1 %cmp41, label %land.lhs.true.42, label %if.else.46

land.lhs.true.42:                                 ; preds = %if.else.40
  %50 = load i8*, i8** %mimeSubtype, align 8
  %call43 = call i32 @strcasecmp(i8* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0)) #6
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.42
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.81, i32 0, i32 0))
  store i32 0, i32* %mimeType, align 4
  %51 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageSetMimeSubtype(%struct.message* %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.47

if.else.46:                                       ; preds = %land.lhs.true.42, %if.else.40
  %52 = load i32, i32* %mimeType, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0), i32 %52)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.45
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.39
  %53 = load i32, i32* %mimeType, align 4
  switch i32 %53, label %sw.default.593 [
    i32 0, label %sw.bb
    i32 6, label %sw.bb.53
    i32 5, label %sw.bb.68
    i32 4, label %sw.bb.525
    i32 1, label %sw.bb.594
    i32 2, label %sw.bb.612
    i32 7, label %sw.bb.612
    i32 3, label %sw.bb.612
  ]

sw.bb:                                            ; preds = %if.end.48
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.83, i32 0, i32 0))
  %54 = load %struct.text*, %struct.text** %aText, align 8
  %55 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call49 = call %struct.text* @textAddMessage(%struct.text* %54, %struct.message* %55)
  store %struct.text* %call49, %struct.text** %aText, align 8
  %56 = load i32, i32* %doPhishingScan, align 4
  %tobool50 = icmp ne i32 %56, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %sw.bb
  br label %sw.epilog.613

if.end.52:                                        ; preds = %sw.bb
  br label %sw.bb.53

sw.bb.53:                                         ; preds = %if.end.48, %if.end.52
  %57 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx54 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %57, i32 0, i32 4
  %58 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx54, align 8
  %options55 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %58, i32 0, i32 5
  %59 = load i32, i32* %options55, align 4
  %and56 = and i32 %59, 128
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %land.lhs.true.58, label %lor.lhs.false

land.lhs.true.58:                                 ; preds = %sw.bb.53
  %60 = load i32, i32* %subtype, align 4
  %cmp59 = icmp eq i32 %60, 3
  br i1 %cmp59, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.58, %sw.bb.53
  %61 = load i32, i32* %doPhishingScan, align 4
  %tobool60 = icmp ne i32 %61, 0
  br i1 %tobool60, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %lor.lhs.false, %land.lhs.true.58
  %62 = load %struct.message*, %struct.message** %mainMessage, align 8
  %63 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %64 = load i32, i32* %subtype, align 4
  %cmp62 = icmp eq i32 %64, 3
  %conv = zext i1 %cmp62 to i32
  call void @checkURLs(%struct.message* %62, %struct.mbox_ctx* %63, i32* %rc, i32 %conv)
  %65 = load i32, i32* %rc, align 4
  %cmp63 = icmp eq i32 %65, 3
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %if.then.61
  store i8 1, i8* %infected, align 1
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.then.61
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %lor.lhs.false
  br label %sw.epilog.613

sw.bb.68:                                         ; preds = %if.end.48
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0))
  %66 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call69 = call i8* @messageFindArgument(%struct.message* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0))
  store i8* %call69, i8** %boundary, align 8
  %67 = load i8*, i8** %boundary, align 8
  %cmp70 = icmp eq i8* %67, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %sw.bb.68
  %68 = load i8*, i8** %mimeSubtype, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.86, i32 0, i32 0), i8* %68)
  store i32 0, i32* %mimeType, align 4
  br label %sw.epilog.613

if.end.73:                                        ; preds = %sw.bb.68
  %69 = load i8*, i8** %mimeSubtype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %69, i64 0
  %70 = load i8, i8* %arrayidx, align 1
  %conv74 = sext i8 %70 to i32
  %cmp75 = icmp eq i32 %conv74, 0
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.73
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.87, i32 0, i32 0))
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8** %mimeSubtype, align 8
  %71 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageSetMimeSubtype(%struct.message* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.73
  %72 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call79 = call %struct.text* @messageGetBody(%struct.message* %72)
  store %struct.text* %call79, %struct.text** %t_line, align 8
  %73 = load %struct.text*, %struct.text** %t_line, align 8
  %cmp80 = icmp eq %struct.text* %73, null
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.78
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0))
  %74 = load i8*, i8** %boundary, align 8
  call void @free(i8* %74) #5
  store i32 0, i32* %mimeType, align 4
  br label %sw.epilog.613

if.end.83:                                        ; preds = %if.end.78
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.83
  %75 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line84 = getelementptr inbounds %struct.text, %struct.text* %75, i32 0, i32 0
  %76 = load i8*, i8** %t_line84, align 8
  %tobool85 = icmp ne i8* %76, null
  br i1 %tobool85, label %if.then.86, label %if.end.118

if.then.86:                                       ; preds = %do.body
  %77 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line87 = getelementptr inbounds %struct.text, %struct.text* %77, i32 0, i32 0
  %78 = load i8*, i8** %t_line87, align 8
  %call88 = call i8* @lineGetData(i8* %78)
  %79 = load i8*, i8** %boundary, align 8
  %call89 = call i32 @boundaryStart(i8* %call88, i8* %79)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.86
  br label %do.end

if.end.92:                                        ; preds = %if.then.86
  %80 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call93 = call %struct.text* @binhexBegin(%struct.message* %80)
  %81 = load %struct.text*, %struct.text** %t_line, align 8
  %cmp94 = icmp eq %struct.text* %call93, %81
  br i1 %cmp94, label %if.then.96, label %if.else.100

if.then.96:                                       ; preds = %if.end.92
  %82 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %83 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call97 = call zeroext i1 @exportBinhexMessage(%struct.mbox_ctx* %82, %struct.message* %83)
  br i1 %call97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.then.96
  store i32 3, i32* %rc, align 4
  store i8 1, i8* %infected, align 1
  br label %do.end

if.end.99:                                        ; preds = %if.then.96
  br label %if.end.117

if.else.100:                                      ; preds = %if.end.92
  %84 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %84, i32 0, i32 1
  %85 = load %struct.text*, %struct.text** %t_next, align 8
  %tobool101 = icmp ne %struct.text* %85, null
  br i1 %tobool101, label %land.lhs.true.102, label %if.end.116

land.lhs.true.102:                                ; preds = %if.else.100
  %86 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call103 = call %struct.text* @encodingLine(%struct.message* %86)
  %87 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next104 = getelementptr inbounds %struct.text, %struct.text* %87, i32 0, i32 1
  %88 = load %struct.text*, %struct.text** %t_next104, align 8
  %cmp105 = icmp eq %struct.text* %call103, %88
  br i1 %cmp105, label %if.then.107, label %if.end.116

if.then.107:                                      ; preds = %land.lhs.true.102
  %89 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next108 = getelementptr inbounds %struct.text, %struct.text* %89, i32 0, i32 1
  %90 = load %struct.text*, %struct.text** %t_next108, align 8
  %t_line109 = getelementptr inbounds %struct.text, %struct.text* %90, i32 0, i32 0
  %91 = load i8*, i8** %t_line109, align 8
  %call110 = call i8* @lineGetData(i8* %91)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.89, i32 0, i32 0), i8* %call110)
  %92 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call111 = call i32 @messageGetEncoding(%struct.message* %92)
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.107
  br label %do.end

if.end.115:                                       ; preds = %if.then.107
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %land.lhs.true.102, %if.else.100
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.99
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.118
  %93 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next119 = getelementptr inbounds %struct.text, %struct.text* %93, i32 0, i32 1
  %94 = load %struct.text*, %struct.text** %t_next119, align 8
  store %struct.text* %94, %struct.text** %t_line, align 8
  %cmp120 = icmp ne %struct.text* %94, null
  br i1 %cmp120, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.114, %if.then.98, %if.then.91
  %95 = load %struct.text*, %struct.text** %t_line, align 8
  %cmp122 = icmp eq %struct.text* %95, null
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %do.end
  %96 = load i8*, i8** %boundary, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.90, i32 0, i32 0), i8* %96)
  %97 = load i8*, i8** %boundary, align 8
  call void @free(i8* %97) #5
  store i32 0, i32* %mimeType, align 4
  br label %sw.epilog.613

if.end.125:                                       ; preds = %do.end
  store i32 1, i32* %inhead, align 4
  store i32 0, i32* %inMimeHead, align 4
  %98 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %subtypeTable126 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %98, i32 0, i32 3
  %99 = load %struct.table*, %struct.table** %subtypeTable126, align 8
  %100 = load i8*, i8** %mimeSubtype, align 8
  %call127 = call i32 @tableFind(%struct.table* %99, i8* %100)
  store i32 %call127, i32* %subtype, align 4
  store i32 0, i32* %multiparts, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.125
  %101 = load %struct.text*, %struct.text** %t_line, align 8
  %tobool128 = icmp ne %struct.text* %101, null
  br i1 %tobool128, label %land.rhs.129, label %land.end.131

land.rhs.129:                                     ; preds = %for.cond
  %102 = load i8, i8* %infected, align 1
  %tobool130 = trunc i8 %102 to i1
  %lnot = xor i1 %tobool130, true
  br label %land.end.131

land.end.131:                                     ; preds = %land.rhs.129, %for.cond
  %103 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs.129 ]
  br i1 %103, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.131
  store i32 0, i32* %lines, align 4
  %104 = load %struct.message**, %struct.message*** %messages, align 8
  %105 = bitcast %struct.message** %104 to i8*
  %106 = load i32, i32* %multiparts, align 4
  %add = add nsw i32 %106, 1
  %conv133 = sext i32 %add to i64
  %mul = mul i64 %conv133, 8
  %call134 = call i8* @cli_realloc(i8* %105, i64 %mul)
  %107 = bitcast i8* %call134 to %struct.message**
  store %struct.message** %107, %struct.message*** %m, align 8
  %108 = load %struct.message**, %struct.message*** %m, align 8
  %cmp135 = icmp eq %struct.message** %108, null
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %for.body
  br label %for.end

if.end.138:                                       ; preds = %for.body
  %109 = load %struct.message**, %struct.message*** %m, align 8
  store %struct.message** %109, %struct.message*** %messages, align 8
  %call139 = call %struct.message* @messageCreate()
  %110 = load i32, i32* %multiparts, align 4
  %idxprom = sext i32 %110 to i64
  %111 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx140 = getelementptr inbounds %struct.message*, %struct.message** %111, i64 %idxprom
  store %struct.message* %call139, %struct.message** %arrayidx140, align 8
  store %struct.message* %call139, %struct.message** %aMessage, align 8
  %112 = load %struct.message*, %struct.message** %aMessage, align 8
  %cmp141 = icmp eq %struct.message* %112, null
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.138
  %113 = load i32, i32* %multiparts, align 4
  %dec = add nsw i32 %113, -1
  store i32 %dec, i32* %multiparts, align 4
  br label %for.inc

if.end.144:                                       ; preds = %if.end.138
  %114 = load %struct.message*, %struct.message** %aMessage, align 8
  %115 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx145 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %115, i32 0, i32 4
  %116 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx145, align 8
  call void @messageSetCTX(%struct.message* %114, %struct.cli_ctx* %116)
  %117 = load i32, i32* %multiparts, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i32 %117)
  br label %while.cond

while.cond:                                       ; preds = %if.end.158, %if.end.144
  %118 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next146 = getelementptr inbounds %struct.text, %struct.text* %118, i32 0, i32 1
  %119 = load %struct.text*, %struct.text** %t_next146, align 8
  store %struct.text* %119, %struct.text** %t_line, align 8
  %cmp147 = icmp ne %struct.text* %119, null
  br i1 %cmp147, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %120 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line149 = getelementptr inbounds %struct.text, %struct.text* %120, i32 0, i32 0
  %121 = load i8*, i8** %t_line149, align 8
  %tobool150 = icmp ne i8* %121, null
  br i1 %tobool150, label %land.lhs.true.151, label %if.end.158

land.lhs.true.151:                                ; preds = %while.body
  %122 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line152 = getelementptr inbounds %struct.text, %struct.text* %122, i32 0, i32 0
  %123 = load i8*, i8** %t_line152, align 8
  %call153 = call i8* @lineGetData(i8* %123)
  %call154 = call i64 @strlen(i8* %call153) #6
  %cmp155 = icmp ugt i64 %call154, 0
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.lhs.true.151
  br label %while.end

if.end.158:                                       ; preds = %land.lhs.true.151, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.157, %while.cond
  %124 = load %struct.text*, %struct.text** %t_line, align 8
  %cmp159 = icmp eq %struct.text* %124, null
  br i1 %cmp159, label %if.then.161, label %if.end.170

if.then.161:                                      ; preds = %while.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0))
  %125 = load %struct.message*, %struct.message** %mainMessage, align 8
  %tobool162 = icmp ne %struct.message* %125, null
  br i1 %tobool162, label %land.lhs.true.163, label %if.end.169

land.lhs.true.163:                                ; preds = %if.then.161
  %126 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call164 = call %struct.text* @binhexBegin(%struct.message* %126)
  %cmp165 = icmp eq %struct.text* %call164, null
  br i1 %cmp165, label %if.then.167, label %if.end.169

if.then.167:                                      ; preds = %land.lhs.true.163
  %127 = load %struct.message*, %struct.message** %aMessage, align 8
  call void @messageDestroy(%struct.message* %127)
  %128 = load i32, i32* %multiparts, align 4
  %dec168 = add nsw i32 %128, -1
  store i32 %dec168, i32* %multiparts, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.167, %land.lhs.true.163, %if.then.161
  br label %for.inc

if.end.170:                                       ; preds = %while.end
  br label %do.body.171

do.body.171:                                      ; preds = %do.cond.304, %if.end.170
  %129 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line172 = getelementptr inbounds %struct.text, %struct.text* %129, i32 0, i32 0
  %130 = load i8*, i8** %t_line172, align 8
  %call173 = call i8* @lineGetData(i8* %130)
  store i8* %call173, i8** %line, align 8
  %131 = load i32, i32* %inMimeHead, align 4
  %tobool174 = icmp ne i32 %131, 0
  br i1 %tobool174, label %if.then.175, label %if.else.196

if.then.175:                                      ; preds = %do.body.171
  %132 = load i8*, i8** %line, align 8
  %cmp176 = icmp eq i8* %132, null
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.then.175
  store i32 0, i32* %inMimeHead, align 4
  br label %do.cond.304

if.end.179:                                       ; preds = %if.then.175
  %133 = load i32, i32* %multiparts, align 4
  %134 = load i8*, i8** %line, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.93, i32 0, i32 0), i32 %133, i8* %134)
  %135 = load %struct.message*, %struct.message** %aMessage, align 8
  %136 = load i8*, i8** %line, align 8
  %137 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %rfc821Table = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %137, i32 0, i32 2
  %138 = load %struct.table*, %struct.table** %rfc821Table, align 8
  %call180 = call i32 @parseEmailHeader(%struct.message* %135, i8* %136, %struct.table* %138)
  br label %while.cond.181

while.cond.181:                                   ; preds = %while.body.189, %if.end.179
  %139 = load i8*, i8** %line, align 8
  %140 = load i8, i8* %139, align 1
  %conv182 = sext i8 %140 to i32
  %idxprom183 = sext i32 %conv182 to i64
  %call184 = call i16** @__ctype_b_loc() #7
  %141 = load i16*, i16** %call184, align 8
  %arrayidx185 = getelementptr inbounds i16, i16* %141, i64 %idxprom183
  %142 = load i16, i16* %arrayidx185, align 2
  %conv186 = zext i16 %142 to i32
  %and187 = and i32 %conv186, 8192
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %while.body.189, label %while.end.190

while.body.189:                                   ; preds = %while.cond.181
  %143 = load i8*, i8** %line, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr, i8** %line, align 8
  br label %while.cond.181

while.end.190:                                    ; preds = %while.cond.181
  %144 = load i8*, i8** %line, align 8
  %145 = load i8, i8* %144, align 1
  %conv191 = sext i8 %145 to i32
  %cmp192 = icmp eq i32 %conv191, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %while.end.190
  store i32 0, i32* %inMimeHead, align 4
  store i32 0, i32* %inhead, align 4
  br label %do.cond.304

if.end.195:                                       ; preds = %while.end.190
  store i32 0, i32* %inMimeHead, align 4
  %146 = load %struct.message*, %struct.message** %aMessage, align 8
  %147 = load i8*, i8** %line, align 8
  call void @messageAddArgument(%struct.message* %146, i8* %147)
  br label %if.end.303

if.else.196:                                      ; preds = %do.body.171
  %148 = load i32, i32* %inhead, align 4
  %tobool197 = icmp ne i32 %148, 0
  br i1 %tobool197, label %if.then.198, label %if.else.285

if.then.198:                                      ; preds = %if.else.196
  %149 = load i8*, i8** %line, align 8
  %cmp199 = icmp eq i8* %149, null
  br i1 %cmp199, label %if.then.201, label %if.end.232

if.then.201:                                      ; preds = %if.then.198
  %150 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next202 = getelementptr inbounds %struct.text, %struct.text* %150, i32 0, i32 1
  %151 = load %struct.text*, %struct.text** %t_next202, align 8
  store %struct.text* %151, %struct.text** %next, align 8
  %152 = load %struct.text*, %struct.text** %next, align 8
  %tobool203 = icmp ne %struct.text* %152, null
  br i1 %tobool203, label %land.lhs.true.204, label %if.end.231

land.lhs.true.204:                                ; preds = %if.then.201
  %153 = load %struct.text*, %struct.text** %next, align 8
  %t_line205 = getelementptr inbounds %struct.text, %struct.text* %153, i32 0, i32 0
  %154 = load i8*, i8** %t_line205, align 8
  %tobool206 = icmp ne i8* %154, null
  br i1 %tobool206, label %if.then.207, label %if.end.231

if.then.207:                                      ; preds = %land.lhs.true.204
  %155 = load %struct.text*, %struct.text** %next, align 8
  %t_line208 = getelementptr inbounds %struct.text, %struct.text* %155, i32 0, i32 0
  %156 = load i8*, i8** %t_line208, align 8
  %call209 = call i8* @lineGetData(i8* %156)
  store i8* %call209, i8** %data, align 8
  %157 = load %struct.message*, %struct.message** %aMessage, align 8
  %call210 = call i32 @messageGetEncoding(%struct.message* %157)
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.221

land.lhs.true.213:                                ; preds = %if.then.207
  %158 = load %struct.message*, %struct.message** %aMessage, align 8
  %call214 = call i32 @messageGetMimeType(%struct.message* %158)
  %cmp215 = icmp eq i32 %call214, 1
  br i1 %cmp215, label %land.lhs.true.217, label %if.end.221

land.lhs.true.217:                                ; preds = %land.lhs.true.213
  %159 = load i8*, i8** %data, align 8
  %call218 = call i8* @strstr(i8* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0)) #6
  %tobool219 = icmp ne i8* %call218, null
  br i1 %tobool219, label %if.then.220, label %if.end.221

if.then.220:                                      ; preds = %land.lhs.true.217
  %160 = load %struct.message*, %struct.message** %aMessage, align 8
  call void @messageSetEncoding(%struct.message* %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0))
  br label %do.cond.304

if.end.221:                                       ; preds = %land.lhs.true.217, %land.lhs.true.213, %if.then.207
  %161 = load i8*, i8** %data, align 8
  %call222 = call i32 @strncmp(i8* %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i64 7) #6
  %cmp223 = icmp eq i32 %call222, 0
  br i1 %cmp223, label %if.then.229, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %if.end.221
  %162 = load i8*, i8** %data, align 8
  %call226 = call i32 @strncmp(i8* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i64 9) #6
  %cmp227 = icmp eq i32 %call226, 0
  br i1 %cmp227, label %if.then.229, label %if.end.230

if.then.229:                                      ; preds = %lor.lhs.false.225, %if.end.221
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.94, i32 0, i32 0))
  br label %do.cond.304

if.end.230:                                       ; preds = %lor.lhs.false.225
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %land.lhs.true.204, %if.then.201
  %163 = load i32, i32* %multiparts, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.97, i32 0, i32 0), i32 %163)
  store i32 0, i32* %inhead, align 4
  br label %do.cond.304

if.end.232:                                       ; preds = %if.then.198
  %164 = load i8*, i8** %line, align 8
  %165 = load i8, i8* %164, align 1
  %conv233 = sext i8 %165 to i32
  %idxprom234 = sext i32 %conv233 to i64
  %call235 = call i16** @__ctype_b_loc() #7
  %166 = load i16*, i16** %call235, align 8
  %arrayidx236 = getelementptr inbounds i16, i16* %166, i64 %idxprom234
  %167 = load i16, i16* %arrayidx236, align 2
  %conv237 = zext i16 %167 to i32
  %and238 = and i32 %conv237, 8192
  %tobool239 = icmp ne i32 %and238, 0
  br i1 %tobool239, label %if.then.240, label %if.end.247

if.then.240:                                      ; preds = %if.end.232
  %168 = load i32, i32* %multiparts, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.98, i32 0, i32 0), i32 %168)
  %169 = load %struct.message*, %struct.message** %aMessage, align 8
  %170 = load i8*, i8** %line, align 8
  call void @messageAddArgument(%struct.message* %169, i8* %170)
  %171 = load %struct.message*, %struct.message** %aMessage, align 8
  %call241 = call i32 @messageGetMimeType(%struct.message* %171)
  %cmp242 = icmp eq i32 %call241, 0
  br i1 %cmp242, label %if.then.244, label %if.end.246

if.then.244:                                      ; preds = %if.then.240
  %172 = load %struct.message*, %struct.message** %aMessage, align 8
  %call245 = call i32 @messageSetMimeType(%struct.message* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0))
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.244, %if.then.240
  br label %do.cond.304

if.end.247:                                       ; preds = %if.end.232
  store i32 0, i32* %inMimeHead, align 4
  %173 = load i8*, i8** %line, align 8
  %call248 = call i8* @rfc822comments(i8* %173, i8* null)
  store i8* %call248, i8** %fullline, align 8
  %174 = load i8*, i8** %fullline, align 8
  %cmp249 = icmp eq i8* %174, null
  br i1 %cmp249, label %if.then.251, label %if.end.253

if.then.251:                                      ; preds = %if.end.247
  %175 = load i8*, i8** %line, align 8
  %call252 = call i8* @cli_strdup(i8* %175)
  store i8* %call252, i8** %fullline, align 8
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.251, %if.end.247
  br label %while.cond.254

while.cond.254:                                   ; preds = %if.end.280, %if.end.253
  %176 = load %struct.text*, %struct.text** %t_line, align 8
  %tobool255 = icmp ne %struct.text* %176, null
  br i1 %tobool255, label %land.rhs.256, label %land.end.259

land.rhs.256:                                     ; preds = %while.cond.254
  %177 = load %struct.text*, %struct.text** %t_line, align 8
  %call257 = call zeroext i1 @next_is_folded_header(%struct.text* %177)
  br label %land.end.259

land.end.259:                                     ; preds = %land.rhs.256, %while.cond.254
  %178 = phi i1 [ false, %while.cond.254 ], [ %call257, %land.rhs.256 ]
  br i1 %178, label %while.body.261, label %while.end.282

while.body.261:                                   ; preds = %land.end.259
  %179 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next263 = getelementptr inbounds %struct.text, %struct.text* %179, i32 0, i32 1
  %180 = load %struct.text*, %struct.text** %t_next263, align 8
  store %struct.text* %180, %struct.text** %t_line, align 8
  %181 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line264 = getelementptr inbounds %struct.text, %struct.text* %181, i32 0, i32 0
  %182 = load i8*, i8** %t_line264, align 8
  %call265 = call i8* @lineGetData(i8* %182)
  store i8* %call265, i8** %data262, align 8
  %183 = load i8*, i8** %data262, align 8
  %arrayidx266 = getelementptr inbounds i8, i8* %183, i64 1
  %184 = load i8, i8* %arrayidx266, align 1
  %conv267 = sext i8 %184 to i32
  %cmp268 = icmp eq i32 %conv267, 0
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %while.body.261
  %185 = load i32, i32* %multiparts, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.99, i32 0, i32 0), i32 %185)
  store i32 0, i32* %inhead, align 4
  br label %while.end.282

if.end.271:                                       ; preds = %while.body.261
  %186 = load i8*, i8** %fullline, align 8
  %187 = load i8*, i8** %fullline, align 8
  %call272 = call i64 @strlen(i8* %187) #6
  %188 = load i8*, i8** %data262, align 8
  %call273 = call i64 @strlen(i8* %188) #6
  %add274 = add i64 %call272, %call273
  %add275 = add i64 %add274, 1
  %call276 = call i8* @cli_realloc(i8* %186, i64 %add275)
  store i8* %call276, i8** %ptr, align 8
  %189 = load i8*, i8** %ptr, align 8
  %cmp277 = icmp eq i8* %189, null
  br i1 %cmp277, label %if.then.279, label %if.end.280

if.then.279:                                      ; preds = %if.end.271
  br label %while.end.282

if.end.280:                                       ; preds = %if.end.271
  %190 = load i8*, i8** %ptr, align 8
  store i8* %190, i8** %fullline, align 8
  %191 = load i8*, i8** %fullline, align 8
  %192 = load i8*, i8** %data262, align 8
  %call281 = call i8* @strcat(i8* %191, i8* %192) #5
  br label %while.cond.254

while.end.282:                                    ; preds = %if.then.279, %if.then.270, %land.end.259
  %193 = load i32, i32* %multiparts, align 4
  %194 = load i8*, i8** %fullline, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.100, i32 0, i32 0), i32 %193, i8* %194)
  %195 = load %struct.message*, %struct.message** %aMessage, align 8
  %196 = load i8*, i8** %fullline, align 8
  %197 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %rfc821Table283 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %197, i32 0, i32 2
  %198 = load %struct.table*, %struct.table** %rfc821Table283, align 8
  %call284 = call i32 @parseEmailHeader(%struct.message* %195, i8* %196, %struct.table* %198)
  %199 = load i8*, i8** %fullline, align 8
  call void @free(i8* %199) #5
  br label %if.end.302

if.else.285:                                      ; preds = %if.else.196
  %200 = load i8*, i8** %line, align 8
  %201 = load i8*, i8** %boundary, align 8
  %call286 = call i32 @boundaryEnd(i8* %200, i8* %201)
  %tobool287 = icmp ne i32 %call286, 0
  br i1 %tobool287, label %if.then.288, label %if.else.289

if.then.288:                                      ; preds = %if.else.285
  br label %do.end.308

if.else.289:                                      ; preds = %if.else.285
  %202 = load i8*, i8** %line, align 8
  %203 = load i8*, i8** %boundary, align 8
  %call290 = call i32 @boundaryStart(i8* %202, i8* %203)
  %tobool291 = icmp ne i32 %call290, 0
  br i1 %tobool291, label %if.then.292, label %if.else.293

if.then.292:                                      ; preds = %if.else.289
  store i32 1, i32* %inhead, align 4
  br label %do.end.308

if.else.293:                                      ; preds = %if.else.289
  %204 = load %struct.message*, %struct.message** %aMessage, align 8
  %205 = load %struct.text*, %struct.text** %t_line, align 8
  %t_line294 = getelementptr inbounds %struct.text, %struct.text* %205, i32 0, i32 0
  %206 = load i8*, i8** %t_line294, align 8
  %call295 = call i32 @messageAddLine(%struct.message* %204, i8* %206)
  %cmp296 = icmp slt i32 %call295, 0
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.else.293
  br label %do.end.308

if.end.299:                                       ; preds = %if.else.293
  %207 = load i32, i32* %lines, align 4
  %inc = add nsw i32 %207, 1
  store i32 %inc, i32* %lines, align 4
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %while.end.282
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %if.end.195
  br label %do.cond.304

do.cond.304:                                      ; preds = %if.end.303, %if.end.246, %if.end.231, %if.then.229, %if.then.220, %if.then.194, %if.then.178
  %208 = load %struct.text*, %struct.text** %t_line, align 8
  %t_next305 = getelementptr inbounds %struct.text, %struct.text* %208, i32 0, i32 1
  %209 = load %struct.text*, %struct.text** %t_next305, align 8
  store %struct.text* %209, %struct.text** %t_line, align 8
  %cmp306 = icmp ne %struct.text* %209, null
  br i1 %cmp306, label %do.body.171, label %do.end.308

do.end.308:                                       ; preds = %do.cond.304, %if.then.298, %if.then.292, %if.then.288
  %210 = load i32, i32* %multiparts, align 4
  %211 = load i32, i32* %lines, align 4
  %212 = load i32, i32* %rc, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i32 0, i32 0), i32 %210, i32 %211, i32 %212)
  %213 = load i32, i32* %subtype, align 4
  switch i32 %213, label %sw.epilog [
    i32 5, label %sw.bb.309
    i32 6, label %sw.bb.309
    i32 11, label %sw.bb.309
    i32 7, label %sw.bb.309
    i32 12, label %sw.bb.309
    i32 14, label %sw.bb.309
    i32 -1, label %sw.bb.309
  ]

sw.bb.309:                                        ; preds = %do.end.308, %do.end.308, %do.end.308, %do.end.308, %do.end.308, %do.end.308, %do.end.308
  %214 = load i32, i32* %rc, align 4
  store i32 %214, i32* %old_rc, align 4
  %215 = load %struct.message*, %struct.message** %mainMessage, align 8
  %216 = load %struct.message**, %struct.message*** %messages, align 8
  %217 = load i32, i32* %multiparts, align 4
  %218 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %219 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %220 = load i32, i32* %recursion_level.addr, align 4
  %call310 = call %struct.message* @do_multipart(%struct.message* %215, %struct.message** %216, i32 %217, i32* %rc, %struct.mbox_ctx* %218, %struct.message* %219, %struct.text** %aText, i32 %220)
  store %struct.message* %call310, %struct.message** %mainMessage, align 8
  %221 = load i32, i32* %rc, align 4
  %cmp311 = icmp eq i32 %221, 2
  br i1 %cmp311, label %land.lhs.true.313, label %if.end.317

land.lhs.true.313:                                ; preds = %sw.bb.309
  %222 = load i32, i32* %old_rc, align 4
  %cmp314 = icmp eq i32 %222, 1
  br i1 %cmp314, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %land.lhs.true.313
  store i32 1, i32* %rc, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.316, %land.lhs.true.313, %sw.bb.309
  %223 = load i32, i32* %multiparts, align 4
  %idxprom318 = sext i32 %223 to i64
  %224 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx319 = getelementptr inbounds %struct.message*, %struct.message** %224, i64 %idxprom318
  %225 = load %struct.message*, %struct.message** %arrayidx319, align 8
  %tobool320 = icmp ne %struct.message* %225, null
  br i1 %tobool320, label %if.then.321, label %if.end.326

if.then.321:                                      ; preds = %if.end.317
  %226 = load i32, i32* %multiparts, align 4
  %idxprom322 = sext i32 %226 to i64
  %227 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx323 = getelementptr inbounds %struct.message*, %struct.message** %227, i64 %idxprom322
  %228 = load %struct.message*, %struct.message** %arrayidx323, align 8
  call void @messageDestroy(%struct.message* %228)
  %229 = load i32, i32* %multiparts, align 4
  %idxprom324 = sext i32 %229 to i64
  %230 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx325 = getelementptr inbounds %struct.message*, %struct.message** %230, i64 %idxprom324
  store %struct.message* null, %struct.message** %arrayidx325, align 8
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.321, %if.end.317
  %231 = load i32, i32* %multiparts, align 4
  %dec327 = add nsw i32 %231, -1
  store i32 %dec327, i32* %multiparts, align 4
  %232 = load i32, i32* %rc, align 4
  %cmp328 = icmp eq i32 %232, 3
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %if.end.326
  store i8 1, i8* %infected, align 1
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.330, %if.end.326
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.308, %if.end.331
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.end.169, %if.then.143
  %233 = load i32, i32* %multiparts, align 4
  %inc332 = add nsw i32 %233, 1
  store i32 %inc332, i32* %multiparts, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.137, %land.end.131
  %234 = load i8*, i8** %boundary, align 8
  call void @free(i8* %234) #5
  %235 = load i32, i32* %subtype, align 4
  switch i32 %235, label %sw.epilog.335 [
    i32 14, label %sw.bb.333
    i32 -1, label %sw.bb.334
  ]

sw.bb.333:                                        ; preds = %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.102, i32 0, i32 0))
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %mimeSubtype, align 8
  br label %sw.epilog.335

sw.bb.334:                                        ; preds = %for.end
  %236 = load i8*, i8** %mimeSubtype, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.103, i32 0, i32 0), i8* %236)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8** %mimeSubtype, align 8
  br label %sw.epilog.335

sw.epilog.335:                                    ; preds = %for.end, %sw.bb.334, %sw.bb.333
  %237 = load %struct.message*, %struct.message** %mainMessage, align 8
  %tobool336 = icmp ne %struct.message* %237, null
  br i1 %tobool336, label %land.lhs.true.337, label %if.end.341

land.lhs.true.337:                                ; preds = %sw.epilog.335
  %238 = load %struct.message*, %struct.message** %mainMessage, align 8
  %239 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp338 = icmp ne %struct.message* %238, %239
  br i1 %cmp338, label %if.then.340, label %if.end.341

if.then.340:                                      ; preds = %land.lhs.true.337
  %240 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageDestroy(%struct.message* %240)
  store %struct.message* null, %struct.message** %mainMessage, align 8
  br label %if.end.341

if.end.341:                                       ; preds = %if.then.340, %land.lhs.true.337, %sw.epilog.335
  %241 = load i32, i32* %multiparts, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0), i32 %241)
  %242 = load i8, i8* %infected, align 1
  %tobool342 = trunc i8 %242 to i1
  br i1 %tobool342, label %if.then.350, label %lor.lhs.false.344

lor.lhs.false.344:                                ; preds = %if.end.341
  %243 = load i32, i32* %multiparts, align 4
  %cmp345 = icmp eq i32 %243, 0
  br i1 %cmp345, label %land.lhs.true.347, label %if.end.376

land.lhs.true.347:                                ; preds = %lor.lhs.false.344
  %244 = load %struct.text*, %struct.text** %aText, align 8
  %cmp348 = icmp eq %struct.text* %244, null
  br i1 %cmp348, label %if.then.350, label %if.end.376

if.then.350:                                      ; preds = %land.lhs.true.347, %if.end.341
  %245 = load %struct.message**, %struct.message*** %messages, align 8
  %tobool351 = icmp ne %struct.message** %245, null
  br i1 %tobool351, label %if.then.352, label %if.end.367

if.then.352:                                      ; preds = %if.then.350
  store i32 0, i32* %i, align 4
  br label %for.cond.353

for.cond.353:                                     ; preds = %for.inc.364, %if.then.352
  %246 = load i32, i32* %i, align 4
  %247 = load i32, i32* %multiparts, align 4
  %cmp354 = icmp slt i32 %246, %247
  br i1 %cmp354, label %for.body.356, label %for.end.366

for.body.356:                                     ; preds = %for.cond.353
  %248 = load i32, i32* %i, align 4
  %idxprom357 = sext i32 %248 to i64
  %249 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx358 = getelementptr inbounds %struct.message*, %struct.message** %249, i64 %idxprom357
  %250 = load %struct.message*, %struct.message** %arrayidx358, align 8
  %tobool359 = icmp ne %struct.message* %250, null
  br i1 %tobool359, label %if.then.360, label %if.end.363

if.then.360:                                      ; preds = %for.body.356
  %251 = load i32, i32* %i, align 4
  %idxprom361 = sext i32 %251 to i64
  %252 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx362 = getelementptr inbounds %struct.message*, %struct.message** %252, i64 %idxprom361
  %253 = load %struct.message*, %struct.message** %arrayidx362, align 8
  call void @messageDestroy(%struct.message* %253)
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.360, %for.body.356
  br label %for.inc.364

for.inc.364:                                      ; preds = %if.end.363
  %254 = load i32, i32* %i, align 4
  %inc365 = add nsw i32 %254, 1
  store i32 %inc365, i32* %i, align 4
  br label %for.cond.353

for.end.366:                                      ; preds = %for.cond.353
  %255 = load %struct.message**, %struct.message*** %messages, align 8
  %256 = bitcast %struct.message** %255 to i8*
  call void @free(i8* %256) #5
  br label %if.end.367

if.end.367:                                       ; preds = %for.end.366, %if.then.350
  %257 = load %struct.text*, %struct.text** %aText, align 8
  %tobool368 = icmp ne %struct.text* %257, null
  br i1 %tobool368, label %land.lhs.true.369, label %if.end.373

land.lhs.true.369:                                ; preds = %if.end.367
  %258 = load %struct.text*, %struct.text** %textIn.addr, align 8
  %cmp370 = icmp eq %struct.text* %258, null
  br i1 %cmp370, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %land.lhs.true.369
  %259 = load %struct.text*, %struct.text** %aText, align 8
  call void @textDestroy(%struct.text* %259)
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.372, %land.lhs.true.369, %if.end.367
  %260 = load i32, i32* %rc, align 4
  switch i32 %260, label %sw.default [
    i32 3, label %sw.bb.374
    i32 4, label %sw.bb.375
  ]

sw.bb.374:                                        ; preds = %if.end.373
  store i32 3, i32* %retval
  br label %return

sw.bb.375:                                        ; preds = %if.end.373
  store i32 4, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.373
  store i32 2, i32* %retval
  br label %return

if.end.376:                                       ; preds = %land.lhs.true.347, %lor.lhs.false.344
  %261 = load i8*, i8** %mimeSubtype, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.105, i32 0, i32 0), i8* %261)
  %262 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %subtypeTable377 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %262, i32 0, i32 3
  %263 = load %struct.table*, %struct.table** %subtypeTable377, align 8
  %264 = load i8*, i8** %mimeSubtype, align 8
  %call378 = call i32 @tableFind(%struct.table* %263, i8* %264)
  switch i32 %call378, label %sw.default.483 [
    i32 10, label %sw.bb.379
    i32 7, label %sw.bb.432
    i32 6, label %sw.bb.432
    i32 11, label %sw.bb.433
    i32 5, label %sw.bb.433
    i32 12, label %sw.bb.433
    i32 8, label %sw.bb.460
    i32 9, label %sw.bb.460
    i32 13, label %sw.bb.471
  ]

sw.bb.379:                                        ; preds = %if.end.376
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.106, i32 0, i32 0))
  store %struct.message* null, %struct.message** %aMessage, align 8
  %265 = load %struct.message**, %struct.message*** %messages, align 8
  %266 = load i32, i32* %multiparts, align 4
  %conv380 = sext i32 %266 to i64
  %call381 = call i32 @getTextPart(%struct.message** %265, i64 %conv380)
  store i32 %call381, i32* %htmltextPart, align 4
  %267 = load i32, i32* %htmltextPart, align 4
  %cmp382 = icmp sge i32 %267, 0
  br i1 %cmp382, label %if.then.384, label %if.else.394

if.then.384:                                      ; preds = %sw.bb.379
  %268 = load i32, i32* %htmltextPart, align 4
  %idxprom385 = sext i32 %268 to i64
  %269 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx386 = getelementptr inbounds %struct.message*, %struct.message** %269, i64 %idxprom385
  %270 = load %struct.message*, %struct.message** %arrayidx386, align 8
  %call387 = call %struct.text* @messageGetBody(%struct.message* %270)
  %tobool388 = icmp ne %struct.text* %call387, null
  br i1 %tobool388, label %if.then.389, label %if.end.393

if.then.389:                                      ; preds = %if.then.384
  %271 = load %struct.text*, %struct.text** %aText, align 8
  %272 = load i32, i32* %htmltextPart, align 4
  %idxprom390 = sext i32 %272 to i64
  %273 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx391 = getelementptr inbounds %struct.message*, %struct.message** %273, i64 %idxprom390
  %274 = load %struct.message*, %struct.message** %arrayidx391, align 8
  %call392 = call %struct.text* @textAddMessage(%struct.text* %271, %struct.message* %274)
  store %struct.text* %call392, %struct.text** %aText, align 8
  br label %if.end.393

if.end.393:                                       ; preds = %if.then.389, %if.then.384
  br label %if.end.411

if.else.394:                                      ; preds = %sw.bb.379
  store i32 0, i32* %i, align 4
  br label %for.cond.395

for.cond.395:                                     ; preds = %for.inc.408, %if.else.394
  %275 = load i32, i32* %i, align 4
  %276 = load i32, i32* %multiparts, align 4
  %cmp396 = icmp slt i32 %275, %276
  br i1 %cmp396, label %for.body.398, label %for.end.410

for.body.398:                                     ; preds = %for.cond.395
  %277 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %277 to i64
  %278 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx400 = getelementptr inbounds %struct.message*, %struct.message** %278, i64 %idxprom399
  %279 = load %struct.message*, %struct.message** %arrayidx400, align 8
  %call401 = call i32 @messageGetMimeType(%struct.message* %279)
  %cmp402 = icmp eq i32 %call401, 5
  br i1 %cmp402, label %if.then.404, label %if.end.407

if.then.404:                                      ; preds = %for.body.398
  %280 = load i32, i32* %i, align 4
  %idxprom405 = sext i32 %280 to i64
  %281 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx406 = getelementptr inbounds %struct.message*, %struct.message** %281, i64 %idxprom405
  %282 = load %struct.message*, %struct.message** %arrayidx406, align 8
  store %struct.message* %282, %struct.message** %aMessage, align 8
  %283 = load i32, i32* %i, align 4
  store i32 %283, i32* %htmltextPart, align 4
  br label %for.end.410

if.end.407:                                       ; preds = %for.body.398
  br label %for.inc.408

for.inc.408:                                      ; preds = %if.end.407
  %284 = load i32, i32* %i, align 4
  %inc409 = add nsw i32 %284, 1
  store i32 %inc409, i32* %i, align 4
  br label %for.cond.395

for.end.410:                                      ; preds = %if.then.404, %for.cond.395
  br label %if.end.411

if.end.411:                                       ; preds = %for.end.410, %if.end.393
  %285 = load i32, i32* %htmltextPart, align 4
  %cmp412 = icmp eq i32 %285, -1
  br i1 %cmp412, label %if.then.414, label %if.else.415

if.then.414:                                      ; preds = %if.end.411
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end.431

if.else.415:                                      ; preds = %if.end.411
  %286 = load %struct.message*, %struct.message** %aMessage, align 8
  %287 = load %struct.text*, %struct.text** %aText, align 8
  %288 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %289 = load i32, i32* %recursion_level.addr, align 4
  %add416 = add i32 %289, 1
  %call417 = call i32 @parseEmailBody(%struct.message* %286, %struct.text* %287, %struct.mbox_ctx* %288, i32 %add416)
  store i32 %call417, i32* %rc, align 4
  %290 = load i32, i32* %rc, align 4
  %cmp418 = icmp eq i32 %290, 1
  br i1 %cmp418, label %land.lhs.true.420, label %if.else.425

land.lhs.true.420:                                ; preds = %if.else.415
  %291 = load %struct.message*, %struct.message** %aMessage, align 8
  %tobool421 = icmp ne %struct.message* %291, null
  br i1 %tobool421, label %if.then.422, label %if.else.425

if.then.422:                                      ; preds = %land.lhs.true.420
  %292 = load %struct.message*, %struct.message** %aMessage, align 8
  call void @messageDestroy(%struct.message* %292)
  %293 = load i32, i32* %htmltextPart, align 4
  %idxprom423 = sext i32 %293 to i64
  %294 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx424 = getelementptr inbounds %struct.message*, %struct.message** %294, i64 %idxprom423
  store %struct.message* null, %struct.message** %arrayidx424, align 8
  br label %if.end.430

if.else.425:                                      ; preds = %land.lhs.true.420, %if.else.415
  %295 = load i32, i32* %rc, align 4
  %cmp426 = icmp eq i32 %295, 3
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %if.else.425
  store i8 1, i8* %infected, align 1
  br label %sw.epilog.484

if.end.429:                                       ; preds = %if.else.425
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %if.then.422
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %if.then.414
  br label %sw.bb.432

sw.bb.432:                                        ; preds = %if.end.376, %if.end.376, %if.end.431
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.108, i32 0, i32 0))
  br label %sw.bb.433

sw.bb.433:                                        ; preds = %if.end.376, %if.end.376, %if.end.376, %sw.bb.432
  %296 = load %struct.text*, %struct.text** %aText, align 8
  %tobool434 = icmp ne %struct.text* %296, null
  br i1 %tobool434, label %if.then.435, label %if.end.442

if.then.435:                                      ; preds = %sw.bb.433
  %297 = load %struct.message*, %struct.message** %mainMessage, align 8
  %tobool436 = icmp ne %struct.message* %297, null
  br i1 %tobool436, label %land.lhs.true.437, label %if.end.441

land.lhs.true.437:                                ; preds = %if.then.435
  %298 = load %struct.message*, %struct.message** %mainMessage, align 8
  %299 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp438 = icmp ne %struct.message* %298, %299
  br i1 %cmp438, label %if.then.440, label %if.end.441

if.then.440:                                      ; preds = %land.lhs.true.437
  %300 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageDestroy(%struct.message* %300)
  br label %if.end.441

if.end.441:                                       ; preds = %if.then.440, %land.lhs.true.437, %if.then.435
  store %struct.message* null, %struct.message** %mainMessage, align 8
  br label %if.end.442

if.end.442:                                       ; preds = %if.end.441, %sw.bb.433
  %301 = load i32, i32* %multiparts, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.109, i32 0, i32 0), i32 %301)
  store i32 0, i32* %i, align 4
  br label %for.cond.443

for.cond.443:                                     ; preds = %for.inc.457, %if.end.442
  %302 = load i32, i32* %i, align 4
  %303 = load i32, i32* %multiparts, align 4
  %cmp444 = icmp slt i32 %302, %303
  br i1 %cmp444, label %for.body.446, label %for.end.459

for.body.446:                                     ; preds = %for.cond.443
  %304 = load %struct.message*, %struct.message** %mainMessage, align 8
  %305 = load %struct.message**, %struct.message*** %messages, align 8
  %306 = load i32, i32* %i, align 4
  %307 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %308 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %309 = load i32, i32* %recursion_level.addr, align 4
  %add447 = add i32 %309, 1
  %call448 = call %struct.message* @do_multipart(%struct.message* %304, %struct.message** %305, i32 %306, i32* %rc, %struct.mbox_ctx* %307, %struct.message* %308, %struct.text** %aText, i32 %add447)
  store %struct.message* %call448, %struct.message** %mainMessage, align 8
  %310 = load i32, i32* %rc, align 4
  %cmp449 = icmp eq i32 %310, 3
  br i1 %cmp449, label %if.then.451, label %if.end.452

if.then.451:                                      ; preds = %for.body.446
  store i8 1, i8* %infected, align 1
  br label %for.end.459

if.end.452:                                       ; preds = %for.body.446
  %311 = load i32, i32* %rc, align 4
  %cmp453 = icmp eq i32 %311, 4
  br i1 %cmp453, label %if.then.455, label %if.end.456

if.then.455:                                      ; preds = %if.end.452
  br label %for.end.459

if.end.456:                                       ; preds = %if.end.452
  br label %for.inc.457

for.inc.457:                                      ; preds = %if.end.456
  %312 = load i32, i32* %i, align 4
  %inc458 = add nsw i32 %312, 1
  store i32 %inc458, i32* %i, align 4
  br label %for.cond.443

for.end.459:                                      ; preds = %if.then.455, %if.then.451, %for.cond.443
  br label %sw.epilog.484

sw.bb.460:                                        ; preds = %if.end.376, %if.end.376
  %313 = load %struct.message**, %struct.message*** %messages, align 8
  %314 = load i32, i32* %multiparts, align 4
  %conv461 = sext i32 %314 to i64
  %call462 = call i32 @getTextPart(%struct.message** %313, i64 %conv461)
  store i32 %call462, i32* %htmltextPart, align 4
  %315 = load i32, i32* %htmltextPart, align 4
  %cmp463 = icmp eq i32 %315, -1
  br i1 %cmp463, label %if.then.465, label %if.end.466

if.then.465:                                      ; preds = %sw.bb.460
  store i32 0, i32* %htmltextPart, align 4
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.465, %sw.bb.460
  %316 = load i32, i32* %htmltextPart, align 4
  %idxprom467 = sext i32 %316 to i64
  %317 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx468 = getelementptr inbounds %struct.message*, %struct.message** %317, i64 %idxprom467
  %318 = load %struct.message*, %struct.message** %arrayidx468, align 8
  %319 = load %struct.text*, %struct.text** %aText, align 8
  %320 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %321 = load i32, i32* %recursion_level.addr, align 4
  %add469 = add i32 %321, 1
  %call470 = call i32 @parseEmailBody(%struct.message* %318, %struct.text* %319, %struct.mbox_ctx* %320, i32 %add469)
  store i32 %call470, i32* %rc, align 4
  br label %sw.epilog.484

sw.bb.471:                                        ; preds = %if.end.376
  store i32 0, i32* %rc, align 4
  %322 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call472 = call i8* @messageFindArgument(%struct.message* %322, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.110, i32 0, i32 0))
  store i8* %call472, i8** %protocol, align 8
  %323 = load i8*, i8** %protocol, align 8
  %tobool473 = icmp ne i8* %323, null
  br i1 %tobool473, label %if.then.474, label %if.else.481

if.then.474:                                      ; preds = %sw.bb.471
  %324 = load i8*, i8** %protocol, align 8
  %call475 = call i32 @strcasecmp(i8* %324, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i32 0, i32 0)) #6
  %cmp476 = icmp eq i32 %call475, 0
  br i1 %cmp476, label %if.then.478, label %if.else.479

if.then.478:                                      ; preds = %if.then.474
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.112, i32 0, i32 0))
  store i32 2, i32* %rc, align 4
  br label %if.end.480

if.else.479:                                      ; preds = %if.then.474
  %325 = load i8*, i8** %protocol, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.113, i32 0, i32 0), i8* %325)
  br label %if.end.480

if.end.480:                                       ; preds = %if.else.479, %if.then.478
  %326 = load i8*, i8** %protocol, align 8
  call void @free(i8* %326) #5
  br label %if.end.482

if.else.481:                                      ; preds = %sw.bb.471
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.114, i32 0, i32 0))
  br label %if.end.482

if.end.482:                                       ; preds = %if.else.481, %if.end.480
  br label %sw.epilog.484

sw.default.483:                                   ; preds = %if.end.376
  br label %sw.epilog.484

sw.epilog.484:                                    ; preds = %sw.default.483, %if.end.482, %if.end.466, %for.end.459, %if.then.428
  %327 = load %struct.message*, %struct.message** %mainMessage, align 8
  %tobool485 = icmp ne %struct.message* %327, null
  br i1 %tobool485, label %land.lhs.true.486, label %if.end.490

land.lhs.true.486:                                ; preds = %sw.epilog.484
  %328 = load %struct.message*, %struct.message** %mainMessage, align 8
  %329 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp487 = icmp ne %struct.message* %328, %329
  br i1 %cmp487, label %if.then.489, label %if.end.490

if.then.489:                                      ; preds = %land.lhs.true.486
  %330 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageDestroy(%struct.message* %330)
  br label %if.end.490

if.end.490:                                       ; preds = %if.then.489, %land.lhs.true.486, %sw.epilog.484
  %331 = load %struct.text*, %struct.text** %aText, align 8
  %tobool491 = icmp ne %struct.text* %331, null
  br i1 %tobool491, label %land.lhs.true.492, label %if.end.507

land.lhs.true.492:                                ; preds = %if.end.490
  %332 = load %struct.text*, %struct.text** %textIn.addr, align 8
  %cmp493 = icmp eq %struct.text* %332, null
  br i1 %cmp493, label %if.then.495, label %if.end.507

if.then.495:                                      ; preds = %land.lhs.true.492
  %333 = load i8, i8* %infected, align 1
  %tobool496 = trunc i8 %333 to i1
  br i1 %tobool496, label %if.end.506, label %land.lhs.true.497

land.lhs.true.497:                                ; preds = %if.then.495
  %call498 = call %struct.fileblob* @fileblobCreate()
  store %struct.fileblob* %call498, %struct.fileblob** %fb, align 8
  %cmp499 = icmp ne %struct.fileblob* %call498, null
  br i1 %cmp499, label %if.then.501, label %if.end.506

if.then.501:                                      ; preds = %land.lhs.true.497
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.115, i32 0, i32 0))
  %334 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %335 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %335, i32 0, i32 0
  %336 = load i8*, i8** %dir, align 8
  call void @fileblobSetFilename(%struct.fileblob* %334, i8* %336, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i32 0, i32 0))
  %337 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %338 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx502 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %338, i32 0, i32 4
  %339 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx502, align 8
  call void @fileblobSetCTX(%struct.fileblob* %337, %struct.cli_ctx* %339)
  %340 = load %struct.text*, %struct.text** %aText, align 8
  %341 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call503 = call %struct.fileblob* @textToFileblob(%struct.text* %340, %struct.fileblob* %341, i32 1)
  %342 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  call void @fileblobDestroy(%struct.fileblob* %342)
  %343 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files504 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %343, i32 0, i32 1
  %344 = load i32, i32* %files504, align 4
  %inc505 = add i32 %344, 1
  store i32 %inc505, i32* %files504, align 4
  br label %if.end.506

if.end.506:                                       ; preds = %if.then.501, %land.lhs.true.497, %if.then.495
  %345 = load %struct.text*, %struct.text** %aText, align 8
  call void @textDestroy(%struct.text* %345)
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.506, %land.lhs.true.492, %if.end.490
  store i32 0, i32* %i, align 4
  br label %for.cond.508

for.cond.508:                                     ; preds = %for.inc.519, %if.end.507
  %346 = load i32, i32* %i, align 4
  %347 = load i32, i32* %multiparts, align 4
  %cmp509 = icmp slt i32 %346, %347
  br i1 %cmp509, label %for.body.511, label %for.end.521

for.body.511:                                     ; preds = %for.cond.508
  %348 = load i32, i32* %i, align 4
  %idxprom512 = sext i32 %348 to i64
  %349 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx513 = getelementptr inbounds %struct.message*, %struct.message** %349, i64 %idxprom512
  %350 = load %struct.message*, %struct.message** %arrayidx513, align 8
  %tobool514 = icmp ne %struct.message* %350, null
  br i1 %tobool514, label %if.then.515, label %if.end.518

if.then.515:                                      ; preds = %for.body.511
  %351 = load i32, i32* %i, align 4
  %idxprom516 = sext i32 %351 to i64
  %352 = load %struct.message**, %struct.message*** %messages, align 8
  %arrayidx517 = getelementptr inbounds %struct.message*, %struct.message** %352, i64 %idxprom516
  %353 = load %struct.message*, %struct.message** %arrayidx517, align 8
  call void @messageDestroy(%struct.message* %353)
  br label %if.end.518

if.end.518:                                       ; preds = %if.then.515, %for.body.511
  br label %for.inc.519

for.inc.519:                                      ; preds = %if.end.518
  %354 = load i32, i32* %i, align 4
  %inc520 = add nsw i32 %354, 1
  store i32 %inc520, i32* %i, align 4
  br label %for.cond.508

for.end.521:                                      ; preds = %for.cond.508
  %355 = load %struct.message**, %struct.message*** %messages, align 8
  %tobool522 = icmp ne %struct.message** %355, null
  br i1 %tobool522, label %if.then.523, label %if.end.524

if.then.523:                                      ; preds = %for.end.521
  %356 = load %struct.message**, %struct.message*** %messages, align 8
  %357 = bitcast %struct.message** %356 to i8*
  call void @free(i8* %357) #5
  br label %if.end.524

if.end.524:                                       ; preds = %if.then.523, %for.end.521
  %358 = load i32, i32* %rc, align 4
  store i32 %358, i32* %retval
  br label %return

sw.bb.525:                                        ; preds = %if.end.48
  %359 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call526 = call i32 @messageGetEncoding(%struct.message* %359)
  switch i32 %call526, label %sw.default.528 [
    i32 0, label %sw.bb.527
    i32 3, label %sw.bb.527
    i32 4, label %sw.bb.527
  ]

sw.bb.527:                                        ; preds = %sw.bb.525, %sw.bb.525, %sw.bb.525
  br label %sw.epilog.529

sw.default.528:                                   ; preds = %sw.bb.525
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.117, i32 0, i32 0))
  br label %sw.epilog.529

sw.epilog.529:                                    ; preds = %sw.default.528, %sw.bb.527
  store i32 0, i32* %rc, align 4
  %360 = load i8*, i8** %mimeSubtype, align 8
  %call530 = call i32 @strcasecmp(i8* %360, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.118, i32 0, i32 0)) #6
  %cmp531 = icmp eq i32 %call530, 0
  br i1 %cmp531, label %if.then.537, label %lor.lhs.false.533

lor.lhs.false.533:                                ; preds = %sw.epilog.529
  %361 = load i8*, i8** %mimeSubtype, align 8
  %call534 = call i32 @strcasecmp(i8* %361, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.119, i32 0, i32 0)) #6
  %cmp535 = icmp eq i32 %call534, 0
  br i1 %cmp535, label %if.then.537, label %if.else.558

if.then.537:                                      ; preds = %lor.lhs.false.533, %sw.epilog.529
  %362 = load %struct.message*, %struct.message** %mainMessage, align 8
  %363 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %rfc821Table539 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %363, i32 0, i32 2
  %364 = load %struct.table*, %struct.table** %rfc821Table539, align 8
  %call540 = call %struct.message* @parseEmailHeaders(%struct.message* %362, %struct.table* %364)
  store %struct.message* %call540, %struct.message** %m538, align 8
  %365 = load %struct.message*, %struct.message** %m538, align 8
  %tobool541 = icmp ne %struct.message* %365, null
  br i1 %tobool541, label %if.then.542, label %if.end.557

if.then.542:                                      ; preds = %if.then.537
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.120, i32 0, i32 0))
  %366 = load %struct.message*, %struct.message** %m538, align 8
  %367 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx543 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %367, i32 0, i32 4
  %368 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx543, align 8
  call void @messageSetCTX(%struct.message* %366, %struct.cli_ctx* %368)
  %369 = load %struct.message*, %struct.message** %mainMessage, align 8
  %tobool544 = icmp ne %struct.message* %369, null
  br i1 %tobool544, label %land.lhs.true.545, label %if.else.549

land.lhs.true.545:                                ; preds = %if.then.542
  %370 = load %struct.message*, %struct.message** %mainMessage, align 8
  %371 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp546 = icmp ne %struct.message* %370, %371
  br i1 %cmp546, label %if.then.548, label %if.else.549

if.then.548:                                      ; preds = %land.lhs.true.545
  %372 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageDestroy(%struct.message* %372)
  store %struct.message* null, %struct.message** %mainMessage, align 8
  br label %if.end.550

if.else.549:                                      ; preds = %land.lhs.true.545, %if.then.542
  %373 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageReset(%struct.message* %373)
  br label %if.end.550

if.end.550:                                       ; preds = %if.else.549, %if.then.548
  %374 = load %struct.message*, %struct.message** %m538, align 8
  %call551 = call %struct.text* @messageGetBody(%struct.message* %374)
  %tobool552 = icmp ne %struct.text* %call551, null
  br i1 %tobool552, label %if.then.553, label %if.end.556

if.then.553:                                      ; preds = %if.end.550
  %375 = load %struct.message*, %struct.message** %m538, align 8
  %376 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %377 = load i32, i32* %recursion_level.addr, align 4
  %add554 = add i32 %377, 1
  %call555 = call i32 @parseEmailBody(%struct.message* %375, %struct.text* null, %struct.mbox_ctx* %376, i32 %add554)
  store i32 %call555, i32* %rc, align 4
  br label %if.end.556

if.end.556:                                       ; preds = %if.then.553, %if.end.550
  %378 = load %struct.message*, %struct.message** %m538, align 8
  call void @messageDestroy(%struct.message* %378)
  br label %if.end.557

if.end.557:                                       ; preds = %if.end.556, %if.then.537
  br label %sw.epilog.613

if.else.558:                                      ; preds = %lor.lhs.false.533
  %379 = load i8*, i8** %mimeSubtype, align 8
  %call559 = call i32 @strcasecmp(i8* %379, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.121, i32 0, i32 0)) #6
  %cmp560 = icmp eq i32 %call559, 0
  br i1 %cmp560, label %if.then.562, label %if.else.563

if.then.562:                                      ; preds = %if.else.558
  store i32 1, i32* %rc, align 4
  br label %sw.epilog.613

if.else.563:                                      ; preds = %if.else.558
  %380 = load i8*, i8** %mimeSubtype, align 8
  %call564 = call i32 @strcasecmp(i8* %380, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i32 0, i32 0)) #6
  %cmp565 = icmp eq i32 %call564, 0
  br i1 %cmp565, label %if.then.567, label %if.else.574

if.then.567:                                      ; preds = %if.else.563
  %381 = load %struct.message*, %struct.message** %mainMessage, align 8
  %382 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir568 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %382, i32 0, i32 0
  %383 = load i8*, i8** %dir568, align 8
  %call569 = call i32 @rfc1341(%struct.message* %381, i8* %383)
  %cmp570 = icmp sge i32 %call569, 0
  br i1 %cmp570, label %if.then.572, label %if.end.573

if.then.572:                                      ; preds = %if.then.567
  store i32 1, i32* %rc, align 4
  br label %if.end.573

if.end.573:                                       ; preds = %if.then.572, %if.then.567
  br label %if.end.581

if.else.574:                                      ; preds = %if.else.563
  %384 = load i8*, i8** %mimeSubtype, align 8
  %call575 = call i32 @strcasecmp(i8* %384, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0)) #6
  %cmp576 = icmp eq i32 %call575, 0
  br i1 %cmp576, label %if.then.578, label %if.else.579

if.then.578:                                      ; preds = %if.else.574
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.124, i32 0, i32 0))
  br label %if.end.580

if.else.579:                                      ; preds = %if.else.574
  %385 = load i8*, i8** %mimeSubtype, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.125, i32 0, i32 0), i8* %385)
  br label %if.end.580

if.end.580:                                       ; preds = %if.else.579, %if.then.578
  br label %if.end.581

if.end.581:                                       ; preds = %if.end.580, %if.end.573
  br label %if.end.582

if.end.582:                                       ; preds = %if.end.581
  br label %if.end.583

if.end.583:                                       ; preds = %if.end.582
  %386 = load %struct.message*, %struct.message** %mainMessage, align 8
  %tobool584 = icmp ne %struct.message* %386, null
  br i1 %tobool584, label %land.lhs.true.585, label %if.end.589

land.lhs.true.585:                                ; preds = %if.end.583
  %387 = load %struct.message*, %struct.message** %mainMessage, align 8
  %388 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp586 = icmp ne %struct.message* %387, %388
  br i1 %cmp586, label %if.then.588, label %if.end.589

if.then.588:                                      ; preds = %land.lhs.true.585
  %389 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageDestroy(%struct.message* %389)
  br label %if.end.589

if.end.589:                                       ; preds = %if.then.588, %land.lhs.true.585, %if.end.583
  %390 = load %struct.message**, %struct.message*** %messages, align 8
  %tobool590 = icmp ne %struct.message** %390, null
  br i1 %tobool590, label %if.then.591, label %if.end.592

if.then.591:                                      ; preds = %if.end.589
  %391 = load %struct.message**, %struct.message*** %messages, align 8
  %392 = bitcast %struct.message** %391 to i8*
  call void @free(i8* %392) #5
  br label %if.end.592

if.end.592:                                       ; preds = %if.then.591, %if.end.589
  %393 = load i32, i32* %rc, align 4
  store i32 %393, i32* %retval
  br label %return

sw.default.593:                                   ; preds = %if.end.48
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.126, i32 0, i32 0))
  br label %sw.bb.594

sw.bb.594:                                        ; preds = %if.end.48, %sw.default.593
  %394 = load %struct.message*, %struct.message** %mainMessage, align 8
  %395 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir595 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %395, i32 0, i32 0
  %396 = load i8*, i8** %dir595, align 8
  %call596 = call %struct.fileblob* @messageToFileblob(%struct.message* %394, i8* %396, i32 1)
  store %struct.fileblob* %call596, %struct.fileblob** %fb, align 8
  %397 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %tobool597 = icmp ne %struct.fileblob* %397, null
  br i1 %tobool597, label %if.then.598, label %if.end.611

if.then.598:                                      ; preds = %sw.bb.594
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.127, i32 0, i32 0))
  %398 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call599 = call i32 @fileblobScanAndDestroy(%struct.fileblob* %398)
  %cmp600 = icmp eq i32 %call599, 1
  br i1 %cmp600, label %if.then.602, label %if.end.603

if.then.602:                                      ; preds = %if.then.598
  store i32 3, i32* %rc, align 4
  br label %if.end.603

if.end.603:                                       ; preds = %if.then.602, %if.then.598
  %399 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files604 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %399, i32 0, i32 1
  %400 = load i32, i32* %files604, align 4
  %inc605 = add i32 %400, 1
  store i32 %inc605, i32* %files604, align 4
  %401 = load %struct.message*, %struct.message** %mainMessage, align 8
  %402 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp606 = icmp ne %struct.message* %401, %402
  br i1 %cmp606, label %if.then.608, label %if.else.609

if.then.608:                                      ; preds = %if.end.603
  %403 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageDestroy(%struct.message* %403)
  store %struct.message* null, %struct.message** %mainMessage, align 8
  br label %if.end.610

if.else.609:                                      ; preds = %if.end.603
  %404 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageReset(%struct.message* %404)
  br label %if.end.610

if.end.610:                                       ; preds = %if.else.609, %if.then.608
  br label %if.end.611

if.end.611:                                       ; preds = %if.end.610, %sw.bb.594
  br label %sw.epilog.613

sw.bb.612:                                        ; preds = %if.end.48, %if.end.48, %if.end.48
  br label %sw.epilog.613

sw.epilog.613:                                    ; preds = %sw.bb.612, %if.end.611, %if.then.562, %if.end.557, %if.then.124, %if.then.82, %if.then.72, %if.end.67, %if.then.51
  %405 = load %struct.message**, %struct.message*** %messages, align 8
  %tobool614 = icmp ne %struct.message** %405, null
  br i1 %tobool614, label %if.then.615, label %if.end.616

if.then.615:                                      ; preds = %sw.epilog.613
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.128, i32 0, i32 0))
  %406 = load %struct.message**, %struct.message*** %messages, align 8
  %407 = bitcast %struct.message** %406 to i8*
  call void @free(i8* %407) #5
  br label %if.end.616

if.end.616:                                       ; preds = %if.then.615, %sw.epilog.613
  br label %if.end.617

if.end.617:                                       ; preds = %if.end.616, %land.lhs.true.30, %if.end.28
  %408 = load %struct.text*, %struct.text** %aText, align 8
  %tobool618 = icmp ne %struct.text* %408, null
  br i1 %tobool618, label %land.lhs.true.619, label %if.end.777

land.lhs.true.619:                                ; preds = %if.end.617
  %409 = load %struct.text*, %struct.text** %textIn.addr, align 8
  %cmp620 = icmp eq %struct.text* %409, null
  br i1 %cmp620, label %if.then.622, label %if.end.777

if.then.622:                                      ; preds = %land.lhs.true.619
  store i8 0, i8* %lookahead_definately_is_bounce, align 1
  %410 = load %struct.text*, %struct.text** %aText, align 8
  store %struct.text* %410, %struct.text** %t, align 8
  br label %for.cond.623

for.cond.623:                                     ; preds = %for.inc.774, %if.then.622
  %411 = load %struct.text*, %struct.text** %t, align 8
  %tobool624 = icmp ne %struct.text* %411, null
  br i1 %tobool624, label %land.rhs.625, label %land.end.628

land.rhs.625:                                     ; preds = %for.cond.623
  %412 = load i32, i32* %rc, align 4
  %cmp626 = icmp ne i32 %412, 3
  br label %land.end.628

land.end.628:                                     ; preds = %land.rhs.625, %for.cond.623
  %413 = phi i1 [ false, %for.cond.623 ], [ %cmp626, %land.rhs.625 ]
  br i1 %413, label %for.body.630, label %for.end.776

for.body.630:                                     ; preds = %land.end.628
  %414 = load %struct.text*, %struct.text** %t, align 8
  %t_line631 = getelementptr inbounds %struct.text, %struct.text* %414, i32 0, i32 0
  %415 = load i8*, i8** %t_line631, align 8
  store i8* %415, i8** %l, align 8
  %416 = load i8*, i8** %l, align 8
  %cmp632 = icmp eq i8* %416, null
  br i1 %cmp632, label %if.then.634, label %if.end.635

if.then.634:                                      ; preds = %for.body.630
  br label %for.inc.774

if.end.635:                                       ; preds = %for.body.630
  %417 = load i8, i8* %lookahead_definately_is_bounce, align 1
  %tobool636 = trunc i8 %417 to i1
  br i1 %tobool636, label %if.then.637, label %if.else.638

if.then.637:                                      ; preds = %if.end.635
  store i8 0, i8* %lookahead_definately_is_bounce, align 1
  br label %if.end.643

if.else.638:                                      ; preds = %if.end.635
  %418 = load i8*, i8** %l, align 8
  %call639 = call i8* @lineGetData(i8* %418)
  %call640 = call zeroext i1 @isBounceStart(i8* %call639)
  br i1 %call640, label %if.end.642, label %if.then.641

if.then.641:                                      ; preds = %if.else.638
  br label %for.inc.774

if.end.642:                                       ; preds = %if.else.638
  br label %if.end.643

if.end.643:                                       ; preds = %if.end.642, %if.then.637
  %419 = load %struct.text*, %struct.text** %t, align 8
  %t_next644 = getelementptr inbounds %struct.text, %struct.text* %419, i32 0, i32 1
  %420 = load %struct.text*, %struct.text** %t_next644, align 8
  store %struct.text* %420, %struct.text** %lookahead, align 8
  %421 = load %struct.text*, %struct.text** %lookahead, align 8
  %tobool645 = icmp ne %struct.text* %421, null
  br i1 %tobool645, label %if.then.646, label %if.else.652

if.then.646:                                      ; preds = %if.end.643
  %422 = load %struct.text*, %struct.text** %lookahead, align 8
  %t_line647 = getelementptr inbounds %struct.text, %struct.text* %422, i32 0, i32 0
  %423 = load i8*, i8** %t_line647, align 8
  %call648 = call i8* @lineGetData(i8* %423)
  %call649 = call zeroext i1 @isBounceStart(i8* %call648)
  br i1 %call649, label %if.then.650, label %if.end.651

if.then.650:                                      ; preds = %if.then.646
  store i8 1, i8* %lookahead_definately_is_bounce, align 1
  br label %for.inc.774

if.end.651:                                       ; preds = %if.then.646
  br label %if.end.653

if.else.652:                                      ; preds = %if.end.643
  br label %for.end.776

if.end.653:                                       ; preds = %if.end.651
  br label %for.cond.654

for.cond.654:                                     ; preds = %for.inc.680, %if.end.653
  %424 = load %struct.text*, %struct.text** %lookahead, align 8
  %tobool655 = icmp ne %struct.text* %424, null
  br i1 %tobool655, label %for.body.656, label %for.end.682

for.body.656:                                     ; preds = %for.cond.654
  %425 = load %struct.text*, %struct.text** %lookahead, align 8
  %t_line657 = getelementptr inbounds %struct.text, %struct.text* %425, i32 0, i32 0
  %426 = load i8*, i8** %t_line657, align 8
  store i8* %426, i8** %l, align 8
  %427 = load i8*, i8** %l, align 8
  %cmp658 = icmp eq i8* %427, null
  br i1 %cmp658, label %if.then.660, label %if.end.661

if.then.660:                                      ; preds = %for.body.656
  br label %for.end.682

if.end.661:                                       ; preds = %for.body.656
  %428 = load i8*, i8** %l, align 8
  %call662 = call i8* @lineGetData(i8* %428)
  store i8* %call662, i8** %s, align 8
  %429 = load i8*, i8** %s, align 8
  %call663 = call i32 @strncasecmp(i8* %429, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.129, i32 0, i32 0), i64 13) #6
  %cmp664 = icmp eq i32 %call663, 0
  br i1 %cmp664, label %if.then.666, label %if.end.679

if.then.666:                                      ; preds = %if.end.661
  %430 = load i8*, i8** %s, align 8
  %call667 = call i8* @strcasestr(i8* %430, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0)) #6
  %cmp668 = icmp ne i8* %call667, null
  br i1 %cmp668, label %if.then.670, label %if.end.671

if.then.670:                                      ; preds = %if.then.666
  br label %for.inc.680

if.end.671:                                       ; preds = %if.then.666
  %431 = load i32, i32* %doPhishingScan, align 4
  %tobool672 = icmp ne i32 %431, 0
  br i1 %tobool672, label %if.end.678, label %land.lhs.true.673

land.lhs.true.673:                                ; preds = %if.end.671
  %432 = load i8*, i8** %s, align 8
  %call674 = call i8* @strcasestr(i8* %432, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.131, i32 0, i32 0)) #6
  %cmp675 = icmp ne i8* %call674, null
  br i1 %cmp675, label %if.then.677, label %if.end.678

if.then.677:                                      ; preds = %land.lhs.true.673
  br label %for.inc.680

if.end.678:                                       ; preds = %land.lhs.true.673, %if.end.671
  br label %for.end.682

if.end.679:                                       ; preds = %if.end.661
  br label %for.inc.680

for.inc.680:                                      ; preds = %if.end.679, %if.then.677, %if.then.670
  %433 = load %struct.text*, %struct.text** %lookahead, align 8
  %t_next681 = getelementptr inbounds %struct.text, %struct.text* %433, i32 0, i32 1
  %434 = load %struct.text*, %struct.text** %t_next681, align 8
  store %struct.text* %434, %struct.text** %lookahead, align 8
  br label %for.cond.654

for.end.682:                                      ; preds = %if.end.678, %if.then.660, %for.cond.654
  %435 = load %struct.text*, %struct.text** %lookahead, align 8
  %tobool683 = icmp ne %struct.text* %435, null
  br i1 %tobool683, label %land.lhs.true.684, label %if.end.689

land.lhs.true.684:                                ; preds = %for.end.682
  %436 = load %struct.text*, %struct.text** %lookahead, align 8
  %t_line685 = getelementptr inbounds %struct.text, %struct.text* %436, i32 0, i32 0
  %437 = load i8*, i8** %t_line685, align 8
  %cmp686 = icmp eq i8* %437, null
  br i1 %cmp686, label %if.then.688, label %if.end.689

if.then.688:                                      ; preds = %land.lhs.true.684
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.132, i32 0, i32 0))
  %438 = load %struct.text*, %struct.text** %lookahead, align 8
  store %struct.text* %438, %struct.text** %t, align 8
  br label %for.inc.774

if.end.689:                                       ; preds = %land.lhs.true.684, %for.end.682
  br label %for.cond.690

for.cond.690:                                     ; preds = %for.inc.715, %if.end.689
  %439 = load %struct.text*, %struct.text** %lookahead, align 8
  %tobool691 = icmp ne %struct.text* %439, null
  br i1 %tobool691, label %for.body.692, label %for.end.717

for.body.692:                                     ; preds = %for.cond.690
  %440 = load %struct.text*, %struct.text** %lookahead, align 8
  %t_line693 = getelementptr inbounds %struct.text, %struct.text* %440, i32 0, i32 0
  %441 = load i8*, i8** %t_line693, align 8
  store i8* %441, i8** %l, align 8
  %442 = load i8*, i8** %l, align 8
  %tobool694 = icmp ne i8* %442, null
  br i1 %tobool694, label %if.then.695, label %if.end.714

if.then.695:                                      ; preds = %for.body.692
  %443 = load i8*, i8** %l, align 8
  %call696 = call i8* @lineGetData(i8* %443)
  store i8* %call696, i8** %s, align 8
  %444 = load i8*, i8** %s, align 8
  %call697 = call i32 @strncasecmp(i8* %444, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.129, i32 0, i32 0), i64 13) #6
  %cmp698 = icmp eq i32 %call697, 0
  br i1 %cmp698, label %land.lhs.true.700, label %if.end.713

land.lhs.true.700:                                ; preds = %if.then.695
  %445 = load i8*, i8** %s, align 8
  %call701 = call i8* @strstr(i8* %445, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.133, i32 0, i32 0)) #6
  %cmp702 = icmp eq i8* %call701, null
  br i1 %cmp702, label %land.lhs.true.704, label %if.end.713

land.lhs.true.704:                                ; preds = %land.lhs.true.700
  %446 = load i8*, i8** %s, align 8
  %call705 = call i8* @strstr(i8* %446, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0)) #6
  %cmp706 = icmp eq i8* %call705, null
  br i1 %cmp706, label %land.lhs.true.708, label %if.end.713

land.lhs.true.708:                                ; preds = %land.lhs.true.704
  %447 = load i8*, i8** %s, align 8
  %call709 = call i8* @strstr(i8* %447, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0)) #6
  %cmp710 = icmp eq i8* %call709, null
  br i1 %cmp710, label %if.then.712, label %if.end.713

if.then.712:                                      ; preds = %land.lhs.true.708
  br label %for.end.717

if.end.713:                                       ; preds = %land.lhs.true.708, %land.lhs.true.704, %land.lhs.true.700, %if.then.695
  br label %if.end.714

if.end.714:                                       ; preds = %if.end.713, %for.body.692
  br label %for.inc.715

for.inc.715:                                      ; preds = %if.end.714
  %448 = load %struct.text*, %struct.text** %lookahead, align 8
  %t_next716 = getelementptr inbounds %struct.text, %struct.text* %448, i32 0, i32 1
  %449 = load %struct.text*, %struct.text** %t_next716, align 8
  store %struct.text* %449, %struct.text** %lookahead, align 8
  br label %for.cond.690

for.end.717:                                      ; preds = %if.then.712, %for.cond.690
  %450 = load %struct.text*, %struct.text** %lookahead, align 8
  %cmp718 = icmp eq %struct.text* %450, null
  br i1 %cmp718, label %if.then.720, label %if.end.721

if.then.720:                                      ; preds = %for.end.717
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.135, i32 0, i32 0))
  br label %for.end.776

if.end.721:                                       ; preds = %for.end.717
  %call722 = call %struct.fileblob* @fileblobCreate()
  store %struct.fileblob* %call722, %struct.fileblob** %fb, align 8
  %cmp723 = icmp eq %struct.fileblob* %call722, null
  br i1 %cmp723, label %if.then.725, label %if.end.726

if.then.725:                                      ; preds = %if.end.721
  br label %for.end.776

if.end.726:                                       ; preds = %if.end.721
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.136, i32 0, i32 0))
  %451 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %452 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir727 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %452, i32 0, i32 0
  %453 = load i8*, i8** %dir727, align 8
  call void @fileblobSetFilename(%struct.fileblob* %451, i8* %453, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0))
  %454 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call728 = call i32 @fileblobAddData(%struct.fileblob* %454, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.138, i32 0, i32 0), i64 28)
  %455 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %456 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx729 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %456, i32 0, i32 4
  %457 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx729, align 8
  call void @fileblobSetCTX(%struct.fileblob* %455, %struct.cli_ctx* %457)
  store i8 1, i8* %inheader, align 1
  store %struct.text* null, %struct.text** %topofbounce, align 8
  br label %do.body.730

do.body.730:                                      ; preds = %do.cond.759, %if.end.726
  %458 = load %struct.text*, %struct.text** %t, align 8
  %t_line731 = getelementptr inbounds %struct.text, %struct.text* %458, i32 0, i32 0
  %459 = load i8*, i8** %t_line731, align 8
  store i8* %459, i8** %l, align 8
  %460 = load i8*, i8** %l, align 8
  %cmp732 = icmp eq i8* %460, null
  br i1 %cmp732, label %if.then.734, label %if.else.738

if.then.734:                                      ; preds = %do.body.730
  %461 = load i8, i8* %inheader, align 1
  %tobool735 = trunc i8 %461 to i1
  br i1 %tobool735, label %if.then.736, label %if.end.737

if.then.736:                                      ; preds = %if.then.734
  store i8 0, i8* %inheader, align 1
  %462 = load %struct.text*, %struct.text** %t, align 8
  store %struct.text* %462, %struct.text** %topofbounce, align 8
  br label %if.end.737

if.end.737:                                       ; preds = %if.then.736, %if.then.734
  br label %if.end.742

if.else.738:                                      ; preds = %do.body.730
  %463 = load i8*, i8** %l, align 8
  %call739 = call i8* @lineGetData(i8* %463)
  store i8* %call739, i8** %s, align 8
  %464 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %465 = load i8*, i8** %s, align 8
  %466 = load i8*, i8** %s, align 8
  %call740 = call i64 @strlen(i8* %466) #6
  %call741 = call i32 @fileblobAddData(%struct.fileblob* %464, i8* %465, i64 %call740)
  br label %if.end.742

if.end.742:                                       ; preds = %if.else.738, %if.end.737
  %467 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call743 = call i32 @fileblobAddData(%struct.fileblob* %467, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.139, i32 0, i32 0), i64 1)
  %468 = load %struct.text*, %struct.text** %t, align 8
  %t_next744 = getelementptr inbounds %struct.text, %struct.text* %468, i32 0, i32 1
  %469 = load %struct.text*, %struct.text** %t_next744, align 8
  store %struct.text* %469, %struct.text** %lookahead, align 8
  %470 = load %struct.text*, %struct.text** %lookahead, align 8
  %cmp745 = icmp eq %struct.text* %470, null
  br i1 %cmp745, label %if.then.747, label %if.end.748

if.then.747:                                      ; preds = %if.end.742
  br label %do.end.763

if.end.748:                                       ; preds = %if.end.742
  %471 = load %struct.text*, %struct.text** %lookahead, align 8
  store %struct.text* %471, %struct.text** %t, align 8
  %472 = load %struct.text*, %struct.text** %t, align 8
  %t_line749 = getelementptr inbounds %struct.text, %struct.text* %472, i32 0, i32 0
  %473 = load i8*, i8** %t_line749, align 8
  store i8* %473, i8** %l, align 8
  %474 = load i8, i8* %inheader, align 1
  %tobool750 = trunc i8 %474 to i1
  br i1 %tobool750, label %if.end.758, label %land.lhs.true.751

land.lhs.true.751:                                ; preds = %if.end.748
  %475 = load i8*, i8** %l, align 8
  %tobool752 = icmp ne i8* %475, null
  br i1 %tobool752, label %if.then.753, label %if.end.758

if.then.753:                                      ; preds = %land.lhs.true.751
  %476 = load i8*, i8** %l, align 8
  %call754 = call i8* @lineGetData(i8* %476)
  store i8* %call754, i8** %s, align 8
  %477 = load i8*, i8** %s, align 8
  %call755 = call zeroext i1 @isBounceStart(i8* %477)
  br i1 %call755, label %if.then.756, label %if.end.757

if.then.756:                                      ; preds = %if.then.753
  %478 = load i8*, i8** %s, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.140, i32 0, i32 0), i8* %478)
  store i8 1, i8* %lookahead_definately_is_bounce, align 1
  br label %do.end.763

if.end.757:                                       ; preds = %if.then.753
  br label %if.end.758

if.end.758:                                       ; preds = %if.end.757, %land.lhs.true.751, %if.end.748
  br label %do.cond.759

do.cond.759:                                      ; preds = %if.end.758
  %479 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call760 = call i32 @fileblobInfected(%struct.fileblob* %479)
  %tobool761 = icmp ne i32 %call760, 0
  %lnot762 = xor i1 %tobool761, true
  br i1 %lnot762, label %do.body.730, label %do.end.763

do.end.763:                                       ; preds = %do.cond.759, %if.then.756, %if.then.747
  %480 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call764 = call i32 @fileblobScanAndDestroy(%struct.fileblob* %480)
  %cmp765 = icmp eq i32 %call764, 1
  br i1 %cmp765, label %if.then.767, label %if.end.768

if.then.767:                                      ; preds = %do.end.763
  store i32 3, i32* %rc, align 4
  br label %if.end.768

if.end.768:                                       ; preds = %if.then.767, %do.end.763
  %481 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files769 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %481, i32 0, i32 1
  %482 = load i32, i32* %files769, align 4
  %inc770 = add i32 %482, 1
  store i32 %inc770, i32* %files769, align 4
  %483 = load %struct.text*, %struct.text** %topofbounce, align 8
  %tobool771 = icmp ne %struct.text* %483, null
  br i1 %tobool771, label %if.then.772, label %if.end.773

if.then.772:                                      ; preds = %if.end.768
  %484 = load %struct.text*, %struct.text** %topofbounce, align 8
  store %struct.text* %484, %struct.text** %t, align 8
  br label %if.end.773

if.end.773:                                       ; preds = %if.then.772, %if.end.768
  br label %for.inc.774

for.inc.774:                                      ; preds = %if.end.773, %if.then.688, %if.then.650, %if.then.641, %if.then.634
  %485 = load %struct.text*, %struct.text** %t, align 8
  %t_next775 = getelementptr inbounds %struct.text, %struct.text* %485, i32 0, i32 1
  %486 = load %struct.text*, %struct.text** %t_next775, align 8
  store %struct.text* %486, %struct.text** %t, align 8
  br label %for.cond.623

for.end.776:                                      ; preds = %if.then.725, %if.then.720, %if.else.652, %land.end.628
  %487 = load %struct.text*, %struct.text** %aText, align 8
  call void @textDestroy(%struct.text* %487)
  store %struct.text* null, %struct.text** %aText, align 8
  br label %if.end.777

if.end.777:                                       ; preds = %for.end.776, %land.lhs.true.619, %if.end.617
  %488 = load %struct.message*, %struct.message** %mainMessage, align 8
  %tobool778 = icmp ne %struct.message* %488, null
  br i1 %tobool778, label %land.lhs.true.779, label %if.end.843

land.lhs.true.779:                                ; preds = %if.end.777
  %489 = load i32, i32* %rc, align 4
  %cmp780 = icmp ne i32 %489, 3
  br i1 %cmp780, label %if.then.782, label %if.end.843

if.then.782:                                      ; preds = %land.lhs.true.779
  %490 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call784 = call %struct.text* @encodingLine(%struct.message* %490)
  %cmp785 = icmp ne %struct.text* %call784, null
  br i1 %cmp785, label %land.lhs.true.787, label %if.else.795

land.lhs.true.787:                                ; preds = %if.then.782
  %491 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call788 = call %struct.text* @bounceBegin(%struct.message* %491)
  store %struct.text* %call788, %struct.text** %t_line783, align 8
  %cmp789 = icmp ne %struct.text* %call788, null
  br i1 %cmp789, label %if.then.791, label %if.else.795

if.then.791:                                      ; preds = %land.lhs.true.787
  %492 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %493 = load %struct.text*, %struct.text** %t_line783, align 8
  %call792 = call i32 @exportBounceMessage(%struct.mbox_ctx* %492, %struct.text* %493)
  %cmp793 = icmp eq i32 %call792, 1
  %cond = select i1 %cmp793, i32 3, i32 1
  store i32 %cond, i32* %rc, align 4
  br label %if.end.842

if.else.795:                                      ; preds = %land.lhs.true.787, %if.then.782
  %494 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call796 = call i32 @messageGetMimeType(%struct.message* %494)
  %cmp797 = icmp eq i32 %call796, 4
  br i1 %cmp797, label %if.then.799, label %if.else.803

if.then.799:                                      ; preds = %if.else.795
  %495 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call800 = call %struct.text* @encodingLine(%struct.message* %495)
  %cmp801 = icmp ne %struct.text* %call800, null
  %frombool = zext i1 %cmp801 to i8
  store i8 %frombool, i8* %saveIt, align 1
  br label %if.end.828

if.else.803:                                      ; preds = %if.else.795
  %496 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call804 = call %struct.text* @encodingLine(%struct.message* %496)
  store %struct.text* %call804, %struct.text** %t_line783, align 8
  %cmp805 = icmp ne %struct.text* %call804, null
  br i1 %cmp805, label %if.then.807, label %if.else.826

if.then.807:                                      ; preds = %if.else.803
  %call808 = call %struct.fileblob* @fileblobCreate()
  store %struct.fileblob* %call808, %struct.fileblob** %fb, align 8
  %cmp809 = icmp ne %struct.fileblob* %call808, null
  br i1 %cmp809, label %if.then.811, label %if.end.825

if.then.811:                                      ; preds = %if.then.807
  %497 = load %struct.text*, %struct.text** %t_line783, align 8
  %t_line812 = getelementptr inbounds %struct.text, %struct.text* %497, i32 0, i32 0
  %498 = load i8*, i8** %t_line812, align 8
  %call813 = call i8* @lineGetData(i8* %498)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.141, i32 0, i32 0), i8* %call813)
  %499 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %500 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir814 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %500, i32 0, i32 0
  %501 = load i8*, i8** %dir814, align 8
  call void @fileblobSetFilename(%struct.fileblob* %499, i8* %501, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0))
  %502 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call815 = call i32 @fileblobAddData(%struct.fileblob* %502, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.138, i32 0, i32 0), i64 28)
  %503 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %504 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx816 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %504, i32 0, i32 4
  %505 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx816, align 8
  call void @fileblobSetCTX(%struct.fileblob* %503, %struct.cli_ctx* %505)
  %506 = load %struct.text*, %struct.text** %t_line783, align 8
  %507 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call817 = call %struct.fileblob* @textToFileblob(%struct.text* %506, %struct.fileblob* %507, i32 1)
  %call818 = call i32 @fileblobScanAndDestroy(%struct.fileblob* %call817)
  %cmp819 = icmp eq i32 %call818, 1
  br i1 %cmp819, label %if.then.821, label %if.end.822

if.then.821:                                      ; preds = %if.then.811
  store i32 3, i32* %rc, align 4
  br label %if.end.822

if.end.822:                                       ; preds = %if.then.821, %if.then.811
  %508 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files823 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %508, i32 0, i32 1
  %509 = load i32, i32* %files823, align 4
  %inc824 = add i32 %509, 1
  store i32 %inc824, i32* %files823, align 4
  br label %if.end.825

if.end.825:                                       ; preds = %if.end.822, %if.then.807
  store i8 0, i8* %saveIt, align 1
  br label %if.end.827

if.else.826:                                      ; preds = %if.else.803
  store i8 1, i8* %saveIt, align 1
  br label %if.end.827

if.end.827:                                       ; preds = %if.else.826, %if.end.825
  br label %if.end.828

if.end.828:                                       ; preds = %if.end.827, %if.then.799
  %510 = load i8, i8* %saveIt, align 1
  %tobool829 = trunc i8 %510 to i1
  br i1 %tobool829, label %if.then.830, label %if.end.841

if.then.830:                                      ; preds = %if.end.828
  %511 = load i32, i32* %rc, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.142, i32 0, i32 0), i32 %511)
  %512 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %513 = load %struct.message*, %struct.message** %mainMessage, align 8
  %call831 = call i32 @saveTextPart(%struct.mbox_ctx* %512, %struct.message* %513, i32 1)
  %cmp832 = icmp eq i32 %call831, 1
  br i1 %cmp832, label %if.then.834, label %if.end.835

if.then.834:                                      ; preds = %if.then.830
  store i32 3, i32* %rc, align 4
  br label %if.end.835

if.end.835:                                       ; preds = %if.then.834, %if.then.830
  %514 = load %struct.message*, %struct.message** %mainMessage, align 8
  %515 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp836 = icmp ne %struct.message* %514, %515
  br i1 %cmp836, label %if.then.838, label %if.else.839

if.then.838:                                      ; preds = %if.end.835
  %516 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageDestroy(%struct.message* %516)
  store %struct.message* null, %struct.message** %mainMessage, align 8
  br label %if.end.840

if.else.839:                                      ; preds = %if.end.835
  %517 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageReset(%struct.message* %517)
  br label %if.end.840

if.end.840:                                       ; preds = %if.else.839, %if.then.838
  br label %if.end.841

if.end.841:                                       ; preds = %if.end.840, %if.end.828
  br label %if.end.842

if.end.842:                                       ; preds = %if.end.841, %if.then.791
  br label %if.end.843

if.end.843:                                       ; preds = %if.end.842, %land.lhs.true.779, %if.end.777
  %518 = load %struct.message*, %struct.message** %mainMessage, align 8
  %tobool844 = icmp ne %struct.message* %518, null
  br i1 %tobool844, label %land.lhs.true.845, label %if.end.849

land.lhs.true.845:                                ; preds = %if.end.843
  %519 = load %struct.message*, %struct.message** %mainMessage, align 8
  %520 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp846 = icmp ne %struct.message* %519, %520
  br i1 %cmp846, label %if.then.848, label %if.end.849

if.then.848:                                      ; preds = %land.lhs.true.845
  %521 = load %struct.message*, %struct.message** %mainMessage, align 8
  call void @messageDestroy(%struct.message* %521)
  br label %if.end.849

if.end.849:                                       ; preds = %if.then.848, %land.lhs.true.845, %if.end.843
  %522 = load i32, i32* %rc, align 4
  %cmp850 = icmp ne i32 %522, 0
  br i1 %cmp850, label %land.lhs.true.852, label %if.end.856

land.lhs.true.852:                                ; preds = %if.end.849
  %523 = load i8, i8* %infected, align 1
  %tobool853 = trunc i8 %523 to i1
  br i1 %tobool853, label %if.then.855, label %if.end.856

if.then.855:                                      ; preds = %land.lhs.true.852
  store i32 3, i32* %rc, align 4
  br label %if.end.856

if.end.856:                                       ; preds = %if.then.855, %land.lhs.true.852, %if.end.849
  %524 = load i32, i32* %rc, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.143, i32 0, i32 0), i32 %524)
  %525 = load i32, i32* %rc, align 4
  store i32 %525, i32* %retval
  br label %return

return:                                           ; preds = %if.end.856, %if.end.592, %if.end.524, %sw.default, %sw.bb.375, %sw.bb.374, %if.then.25, %if.else, %if.end
  %526 = load i32, i32* %retval
  ret i32 %526
}

declare i32 @isuuencodebegin(i8*) #1

declare i32 @uudecodeFile(%struct.message*, i8*, i8*, %struct._IO_FILE*) #1

declare i32 @messageAddStr(%struct.message*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @getline_from_mbox(i8* %buffer, i64 %len, %struct._IO_FILE* %fin) #0 {
entry:
  %retval = alloca i8*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %ret = alloca i8*, align 8
  %c = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %0) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8*, i8** %buffer.addr, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.241, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  %3 = load i8*, i8** %buffer.addr, align 8
  store i8* %3, i8** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  store i32 %call4, i32* %c, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call5 = call i32 @ferror(%struct._IO_FILE* %5) #5
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %do.body
  %6 = load i32, i32* %c, align 4
  switch i32 %6, label %sw.default [
    i32 10, label %sw.bb
    i32 -1, label %sw.bb.17
    i32 13, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end.8
  %7 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %buffer.addr, align 8
  store i8 10, i8* %7, align 1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call9 = call i32 @_IO_getc(%struct._IO_FILE* %8)
  store i32 %call9, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp10 = icmp ne i32 %9, 13
  br i1 %cmp10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %sw.bb
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call11 = call i32 @feof(%struct._IO_FILE* %10) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %c, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call14 = call i32 @ungetc(i32 %11, %struct._IO_FILE* %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.8
  %13 = load i32, i32* %c, align 4
  %conv = trunc i32 %13 to i8
  %14 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr16, i8** %buffer.addr, align 8
  store i8 %conv, i8* %14, align 1
  br label %do.cond

sw.bb.17:                                         ; preds = %if.end.8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.8
  %15 = load i8*, i8** %buffer.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr19, i8** %buffer.addr, align 8
  store i8 10, i8* %15, align 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call20 = call i32 @_IO_getc(%struct._IO_FILE* %16)
  store i32 %call20, i32* %c, align 4
  %17 = load i32, i32* %c, align 4
  %cmp21 = icmp ne i32 %17, 10
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.28

land.lhs.true.23:                                 ; preds = %sw.bb.18
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call24 = call i32 @feof(%struct._IO_FILE* %18) #5
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.23
  %19 = load i32, i32* %c, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call27 = call i32 @ungetc(i32 %19, %struct._IO_FILE* %20)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true.23, %sw.bb.18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.28, %sw.bb.17, %if.end.15
  br label %do.end

do.cond:                                          ; preds = %sw.default
  %21 = load i64, i64* %len.addr, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %len.addr, align 8
  %cmp29 = icmp ugt i64 %dec, 1
  br i1 %cmp29, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %sw.epilog
  %22 = load i64, i64* %len.addr, align 8
  %cmp31 = icmp eq i64 %22, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %do.end
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.242, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.34:                                        ; preds = %do.end
  %23 = load i8*, i8** %buffer.addr, align 8
  store i8 0, i8* %23, align 1
  %24 = load i64, i64* %len.addr, align 8
  %cmp35 = icmp eq i64 %24, 1
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.243, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.34
  %25 = load i8*, i8** %ret, align 8
  store i8* %25, i8** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.33, %if.then.7, %if.then.2, %if.then
  %26 = load i8*, i8** %retval
  ret i8* %26
}

; Function Attrs: nounwind uwtable
define internal %struct.message* @parseEmailFile(%struct._IO_FILE* %fin, %struct.table* %rfc821, i8* %firstLine, i8* %dir) #0 {
entry:
  %retval = alloca %struct.message*, align 8
  %fin.addr = alloca %struct._IO_FILE*, align 8
  %rfc821.addr = alloca %struct.table*, align 8
  %firstLine.addr = alloca i8*, align 8
  %dir.addr = alloca i8*, align 8
  %inHeader = alloca i8, align 1
  %bodyIsEmpty = alloca i8, align 1
  %lastWasBlank = alloca i8, align 1
  %lastBodyLineWasBlank = alloca i8, align 1
  %ret = alloca %struct.message*, align 8
  %anyHeadersFound = alloca i8, align 1
  %commandNumber = alloca i32, align 4
  %fullline = alloca i8*, align 8
  %boundary = alloca i8*, align 8
  %fulllinelength = alloca i64, align 8
  %buffer = alloca [1001 x i8], align 16
  %line = alloca i8*, align 8
  %copy = alloca [1001 x i8], align 16
  %ptr = alloca i8*, align 8
  %lookahead = alloca i32, align 4
  %cmd = alloca [1001 x i8], align 16
  %out = alloca [1001 x i8], align 16
  store %struct._IO_FILE* %fin, %struct._IO_FILE** %fin.addr, align 8
  store %struct.table* %rfc821, %struct.table** %rfc821.addr, align 8
  store i8* %firstLine, i8** %firstLine.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8 1, i8* %inHeader, align 1
  store i8 1, i8* %bodyIsEmpty, align 1
  store i8 0, i8* %lastWasBlank, align 1
  store i8 0, i8* %lastBodyLineWasBlank, align 1
  store i8 0, i8* %anyHeadersFound, align 1
  store i32 -1, i32* %commandNumber, align 4
  store i8* null, i8** %fullline, align 8
  store i8* null, i8** %boundary, align 8
  store i64 0, i64* %fulllinelength, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.244, i32 0, i32 0))
  %call = call %struct.message* @messageCreate()
  store %struct.message* %call, %struct.message** %ret, align 8
  %0 = load %struct.message*, %struct.message** %ret, align 8
  %cmp = icmp eq %struct.message* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.message* null, %struct.message** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %1 = load i8*, i8** %firstLine.addr, align 8
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* %1) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %arraydecay2 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call3 = call i32 @cli_chomp(i8* %arraydecay2)
  %arrayidx = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv, 0
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  store i8* null, i8** %line, align 8
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %arraydecay7 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay7, i8** %line, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.6
  %3 = load i8, i8* %lastWasBlank, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end.8
  store i8 0, i8* %lastWasBlank, align 1
  %arraydecay10 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %4 = load i8*, i8** %boundary, align 8
  %call11 = call i32 @boundaryStart(i8* %arraydecay10, i8* %4)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.9
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.245, i32 0, i32 0))
  store i8 0, i8* %inHeader, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.8
  %5 = load i8, i8* %inHeader, align 1
  %tobool16 = trunc i8 %5 to i1
  br i1 %tobool16, label %if.then.17, label %if.else.162

if.then.17:                                       ; preds = %if.end.15
  %arraydecay18 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %tobool19 = icmp ne i8* %arraydecay18, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.17
  %arraydecay20 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %if.then.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arraydecay20, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0), %cond.false ]
  %6 = load i8*, i8** %fullline, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.246, i32 0, i32 0), i8* %cond, i8* %6)
  %7 = load i8*, i8** %line, align 8
  %tobool21 = icmp ne i8* %7, null
  br i1 %tobool21, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i8*, i8** %line, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %9 to i32
  %and = and i32 %conv23, 255
  %idxprom = sext i32 %and to i64
  %call24 = call i16** @__ctype_b_loc() #7
  %10 = load i16*, i16** %call24, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %11 to i32
  %and27 = and i32 %conv26, 8192
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.55

if.then.29:                                       ; preds = %land.lhs.true
  %arraydecay30 = getelementptr inbounds [1001 x i8], [1001 x i8]* %copy, i32 0, i32 0
  %arraydecay31 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %call32 = call i8* @strcpy(i8* %arraydecay30, i8* %arraydecay31) #5
  %arraydecay33 = getelementptr inbounds [1001 x i8], [1001 x i8]* %copy, i32 0, i32 0
  %call34 = call i64 @strstrip(i8* %arraydecay33)
  %arrayidx35 = getelementptr inbounds [1001 x i8], [1001 x i8]* %copy, i32 0, i64 0
  %12 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %12 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.54

if.then.39:                                       ; preds = %if.then.29
  %13 = load i8*, i8** %fullline, align 8
  %tobool40 = icmp ne i8* %13, null
  br i1 %tobool40, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %if.then.39
  %14 = load %struct.message*, %struct.message** %ret, align 8
  %15 = load i8*, i8** %fullline, align 8
  %16 = load %struct.table*, %struct.table** %rfc821.addr, align 8
  %call42 = call i32 @parseEmailHeader(%struct.message* %14, i8* %15, %struct.table* %16)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.41
  br label %do.cond

if.end.46:                                        ; preds = %if.then.41
  %17 = load i8*, i8** %fullline, align 8
  call void @free(i8* %17) #5
  store i8* null, i8** %fullline, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.39
  %18 = load i8*, i8** %boundary, align 8
  %tobool48 = icmp ne i8* %18, null
  br i1 %tobool48, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.47
  %19 = load %struct.message*, %struct.message** %ret, align 8
  %call49 = call i8* @messageFindArgument(%struct.message* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0))
  store i8* %call49, i8** %boundary, align 8
  %cmp50 = icmp ne i8* %call49, null
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %lor.lhs.false, %if.end.47
  store i8 1, i8* %lastWasBlank, align 1
  br label %do.cond

if.end.53:                                        ; preds = %lor.lhs.false
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.29
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %land.lhs.true, %cond.end
  %20 = load i8*, i8** %line, align 8
  %cmp56 = icmp eq i8* %20, null
  br i1 %cmp56, label %land.lhs.true.58, label %if.else.65

land.lhs.true.58:                                 ; preds = %if.end.55
  %21 = load i8*, i8** %fullline, align 8
  %cmp59 = icmp eq i8* %21, null
  br i1 %cmp59, label %if.then.61, label %if.else.65

if.then.61:                                       ; preds = %land.lhs.true.58
  %22 = load i8, i8* %anyHeadersFound, align 1
  %tobool62 = trunc i8 %22 to i1
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %if.then.61
  br label %do.cond

if.end.64:                                        ; preds = %if.then.61
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0))
  store i8 0, i8* %inHeader, align 1
  store i8 1, i8* %bodyIsEmpty, align 1
  br label %if.end.161

if.else.65:                                       ; preds = %land.lhs.true.58, %if.end.55
  %23 = load i8*, i8** %fullline, align 8
  %cmp66 = icmp eq i8* %23, null
  br i1 %cmp66, label %if.then.68, label %if.else.111

if.then.68:                                       ; preds = %if.else.65
  %24 = load i8*, i8** %line, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %25 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %call72 = call i16** @__ctype_b_loc() #7
  %26 = load i16*, i16** %call72, align 8
  %arrayidx73 = getelementptr inbounds i16, i16* %26, i64 %idxprom71
  %27 = load i16, i16* %arrayidx73, align 2
  %conv74 = zext i16 %27 to i32
  %and75 = and i32 %conv74, 1
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.68
  br label %do.cond

if.end.78:                                        ; preds = %if.then.68
  %28 = load i8*, i8** %line, align 8
  %call79 = call i8* @strchr(i8* %28, i32 58) #6
  %cmp80 = icmp eq i8* %call79, null
  br i1 %cmp80, label %if.then.87, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %if.end.78
  %29 = load i8*, i8** %line, align 8
  %arraydecay83 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %call84 = call i8* @cli_strtokbuf(i8* %29, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay83)
  %cmp85 = icmp eq i8* %call84, null
  br i1 %cmp85, label %if.then.87, label %if.end.93

if.then.87:                                       ; preds = %lor.lhs.false.82, %if.end.78
  %30 = load i8*, i8** %line, align 8
  %call88 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 5) #6
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.87
  store i8 1, i8* %anyHeadersFound, align 1
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %if.then.87
  br label %do.cond

if.end.93:                                        ; preds = %lor.lhs.false.82
  %arraydecay94 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %arraydecay95 = getelementptr inbounds [1001 x i8], [1001 x i8]* %out, i32 0, i32 0
  %call96 = call i8* @rfc822comments(i8* %arraydecay94, i8* %arraydecay95)
  store i8* %call96, i8** %ptr, align 8
  %31 = load %struct.table*, %struct.table** %rfc821.addr, align 8
  %32 = load i8*, i8** %ptr, align 8
  %tobool97 = icmp ne i8* %32, null
  br i1 %tobool97, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %if.end.93
  %33 = load i8*, i8** %ptr, align 8
  br label %cond.end.101

cond.false.99:                                    ; preds = %if.end.93
  %arraydecay100 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.99, %cond.true.98
  %cond102 = phi i8* [ %33, %cond.true.98 ], [ %arraydecay100, %cond.false.99 ]
  %call103 = call i32 @tableFind(%struct.table* %31, i8* %cond102)
  store i32 %call103, i32* %commandNumber, align 4
  %34 = load i32, i32* %commandNumber, align 4
  switch i32 %34, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %cond.end.101, %cond.end.101, %cond.end.101
  store i8 1, i8* %anyHeadersFound, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.101
  %35 = load i8, i8* %anyHeadersFound, align 1
  %tobool104 = trunc i8 %35 to i1
  br i1 %tobool104, label %if.end.108, label %if.then.105

if.then.105:                                      ; preds = %sw.default
  %36 = load i32, i32* %commandNumber, align 4
  %arraydecay106 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %call107 = call zeroext i1 @usefulHeader(i32 %36, i8* %arraydecay106)
  %frombool = zext i1 %call107 to i8
  store i8 %frombool, i8* %anyHeadersFound, align 1
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.105, %sw.default
  br label %do.cond

sw.epilog:                                        ; preds = %sw.bb
  %37 = load i8*, i8** %line, align 8
  %call109 = call i8* @cli_strdup(i8* %37)
  store i8* %call109, i8** %fullline, align 8
  %38 = load i8*, i8** %line, align 8
  %call110 = call i64 @strlen(i8* %38) #6
  %add = add i64 %call110, 1
  store i64 %add, i64* %fulllinelength, align 8
  br label %if.end.124

if.else.111:                                      ; preds = %if.else.65
  %39 = load i8*, i8** %line, align 8
  %cmp112 = icmp ne i8* %39, null
  br i1 %cmp112, label %if.then.114, label %if.end.123

if.then.114:                                      ; preds = %if.else.111
  %40 = load i8*, i8** %line, align 8
  %call115 = call i64 @strlen(i8* %40) #6
  %41 = load i64, i64* %fulllinelength, align 8
  %add116 = add i64 %41, %call115
  store i64 %add116, i64* %fulllinelength, align 8
  %42 = load i8*, i8** %fullline, align 8
  %43 = load i64, i64* %fulllinelength, align 8
  %call117 = call i8* @cli_realloc(i8* %42, i64 %43)
  store i8* %call117, i8** %ptr, align 8
  %44 = load i8*, i8** %ptr, align 8
  %cmp118 = icmp eq i8* %44, null
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.then.114
  br label %do.cond

if.end.121:                                       ; preds = %if.then.114
  %45 = load i8*, i8** %ptr, align 8
  store i8* %45, i8** %fullline, align 8
  %46 = load i8*, i8** %fullline, align 8
  %47 = load i8*, i8** %line, align 8
  %call122 = call i8* @strcat(i8* %46, i8* %47) #5
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.121, %if.else.111
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %sw.epilog
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call125 = call i32 @_IO_getc(%struct._IO_FILE* %48)
  store i32 %call125, i32* %lookahead, align 4
  %49 = load i32, i32* %lookahead, align 4
  %cmp126 = icmp ne i32 %49, -1
  br i1 %cmp126, label %if.then.128, label %if.end.138

if.then.128:                                      ; preds = %if.end.124
  %50 = load i32, i32* %lookahead, align 4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call129 = call i32 @ungetc(i32 %50, %struct._IO_FILE* %51)
  %52 = load i32, i32* %lookahead, align 4
  %idxprom130 = sext i32 %52 to i64
  %call131 = call i16** @__ctype_b_loc() #7
  %53 = load i16*, i16** %call131, align 8
  %arrayidx132 = getelementptr inbounds i16, i16* %53, i64 %idxprom130
  %54 = load i16, i16* %arrayidx132, align 2
  %conv133 = zext i16 %54 to i32
  %and134 = and i32 %conv133, 1
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.then.128
  br label %do.cond

if.end.137:                                       ; preds = %if.then.128
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.124
  %55 = load i64, i64* %fulllinelength, align 8
  %sub = sub i64 %55, 2
  %56 = load i8*, i8** %fullline, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %56, i64 %sub
  %57 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %57 to i32
  %cmp141 = icmp eq i32 %conv140, 59
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.138
  br label %do.cond

if.end.144:                                       ; preds = %if.end.138
  %58 = load i8*, i8** %line, align 8
  %tobool145 = icmp ne i8* %58, null
  br i1 %tobool145, label %land.lhs.true.146, label %if.end.151

land.lhs.true.146:                                ; preds = %if.end.144
  %59 = load i8*, i8** %fullline, align 8
  %call147 = call i32 @count_quotes(i8* %59)
  %and148 = and i32 %call147, 1
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.lhs.true.146
  br label %do.cond

if.end.151:                                       ; preds = %land.lhs.true.146, %if.end.144
  %60 = load i8*, i8** %fullline, align 8
  %call152 = call i8* @rfc822comments(i8* %60, i8* null)
  store i8* %call152, i8** %ptr, align 8
  %61 = load i8*, i8** %ptr, align 8
  %tobool153 = icmp ne i8* %61, null
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.151
  %62 = load i8*, i8** %fullline, align 8
  call void @free(i8* %62) #5
  %63 = load i8*, i8** %ptr, align 8
  store i8* %63, i8** %fullline, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.end.151
  %64 = load %struct.message*, %struct.message** %ret, align 8
  %65 = load i8*, i8** %fullline, align 8
  %66 = load %struct.table*, %struct.table** %rfc821.addr, align 8
  %call156 = call i32 @parseEmailHeader(%struct.message* %64, i8* %65, %struct.table* %66)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.155
  br label %do.cond

if.end.160:                                       ; preds = %if.end.155
  %67 = load i8*, i8** %fullline, align 8
  call void @free(i8* %67) #5
  store i8* null, i8** %fullline, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.end.64
  br label %if.end.204

if.else.162:                                      ; preds = %if.end.15
  %68 = load i8*, i8** %line, align 8
  %tobool163 = icmp ne i8* %68, null
  br i1 %tobool163, label %land.lhs.true.164, label %if.else.178

land.lhs.true.164:                                ; preds = %if.else.162
  %69 = load i8*, i8** %line, align 8
  %call165 = call i32 @isuuencodebegin(i8* %69)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then.167, label %if.else.178

if.then.167:                                      ; preds = %land.lhs.true.164
  store i8 0, i8* %bodyIsEmpty, align 1
  %70 = load %struct.message*, %struct.message** %ret, align 8
  %71 = load i8*, i8** %line, align 8
  %72 = load i8*, i8** %dir.addr, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call168 = call i32 @uudecodeFile(%struct.message* %70, i8* %71, i8* %72, %struct._IO_FILE* %73)
  %cmp169 = icmp slt i32 %call168, 0
  br i1 %cmp169, label %if.then.171, label %if.end.177

if.then.171:                                      ; preds = %if.then.167
  %74 = load %struct.message*, %struct.message** %ret, align 8
  %75 = load i8*, i8** %line, align 8
  %call172 = call i32 @messageAddStr(%struct.message* %74, i8* %75)
  %cmp173 = icmp slt i32 %call172, 0
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.then.171
  br label %do.end

if.end.176:                                       ; preds = %if.then.171
  br label %if.end.177

if.end.177:                                       ; preds = %if.end.176, %if.then.167
  br label %if.end.203

if.else.178:                                      ; preds = %land.lhs.true.164, %if.else.162
  %76 = load i8*, i8** %line, align 8
  %cmp179 = icmp eq i8* %76, null
  br i1 %cmp179, label %if.then.181, label %if.else.190

if.then.181:                                      ; preds = %if.else.178
  %77 = load i8, i8* %lastBodyLineWasBlank, align 1
  %tobool182 = trunc i8 %77 to i1
  br i1 %tobool182, label %land.lhs.true.184, label %if.end.189

land.lhs.true.184:                                ; preds = %if.then.181
  %78 = load %struct.message*, %struct.message** %ret, align 8
  %call185 = call i32 @messageGetMimeType(%struct.message* %78)
  %cmp186 = icmp ne i32 %call185, 6
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %land.lhs.true.184
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.247, i32 0, i32 0))
  br label %do.cond

if.end.189:                                       ; preds = %land.lhs.true.184, %if.then.181
  store i8 1, i8* %lastBodyLineWasBlank, align 1
  br label %if.end.197

if.else.190:                                      ; preds = %if.else.178
  %79 = load i8, i8* %bodyIsEmpty, align 1
  %tobool191 = trunc i8 %79 to i1
  br i1 %tobool191, label %if.then.192, label %if.end.196

if.then.192:                                      ; preds = %if.else.190
  %80 = load i8*, i8** %line, align 8
  %call193 = call zeroext i1 @newline_in_header(i8* %80)
  br i1 %call193, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.then.192
  br label %do.cond

if.end.195:                                       ; preds = %if.then.192
  store i8 0, i8* %bodyIsEmpty, align 1
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.else.190
  store i8 0, i8* %lastBodyLineWasBlank, align 1
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.189
  %81 = load %struct.message*, %struct.message** %ret, align 8
  %82 = load i8*, i8** %line, align 8
  %call198 = call i32 @messageAddStr(%struct.message* %81, i8* %82)
  %cmp199 = icmp slt i32 %call198, 0
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.end.197
  br label %do.end

if.end.202:                                       ; preds = %if.end.197
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.177
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %if.end.161
  br label %do.cond

do.cond:                                          ; preds = %if.end.204, %if.then.194, %if.then.188, %if.then.159, %if.then.150, %if.then.143, %if.then.136, %if.then.120, %if.end.108, %if.end.92, %if.then.77, %if.then.63, %if.then.52, %if.then.45
  %arraydecay205 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buffer, i32 0, i32 0
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fin.addr, align 8
  %call206 = call i8* @getline_from_mbox(i8* %arraydecay205, i64 1000, %struct._IO_FILE* %83)
  %cmp207 = icmp ne i8* %call206, null
  br i1 %cmp207, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.201, %if.then.175
  %84 = load i8*, i8** %boundary, align 8
  %tobool209 = icmp ne i8* %84, null
  br i1 %tobool209, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %do.end
  %85 = load i8*, i8** %boundary, align 8
  call void @free(i8* %85) #5
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.210, %do.end
  %86 = load i8*, i8** %fullline, align 8
  %tobool212 = icmp ne i8* %86, null
  br i1 %tobool212, label %if.then.213, label %if.end.219

if.then.213:                                      ; preds = %if.end.211
  %87 = load i8*, i8** %fullline, align 8
  %88 = load i8, i8* %87, align 1
  %tobool214 = icmp ne i8 %88, 0
  br i1 %tobool214, label %if.then.215, label %if.end.218

if.then.215:                                      ; preds = %if.then.213
  %89 = load i32, i32* %commandNumber, align 4
  switch i32 %89, label %sw.epilog.217 [
    i32 2, label %sw.bb.216
    i32 3, label %sw.bb.216
    i32 1, label %sw.bb.216
  ]

sw.bb.216:                                        ; preds = %if.then.215, %if.then.215, %if.then.215
  %90 = load i8*, i8** %fullline, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.248, i32 0, i32 0), i8* %90)
  br label %sw.epilog.217

sw.epilog.217:                                    ; preds = %sw.bb.216, %if.then.215
  br label %if.end.218

if.end.218:                                       ; preds = %sw.epilog.217, %if.then.213
  %91 = load i8*, i8** %fullline, align 8
  call void @free(i8* %91) #5
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.end.211
  %92 = load i8, i8* %anyHeadersFound, align 1
  %tobool220 = trunc i8 %92 to i1
  br i1 %tobool220, label %if.end.222, label %if.then.221

if.then.221:                                      ; preds = %if.end.219
  %93 = load %struct.message*, %struct.message** %ret, align 8
  call void @messageDestroy(%struct.message* %93)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.249, i32 0, i32 0))
  store %struct.message* null, %struct.message** %retval
  br label %return

if.end.222:                                       ; preds = %if.end.219
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.250, i32 0, i32 0))
  %94 = load %struct.message*, %struct.message** %ret, align 8
  store %struct.message* %94, %struct.message** %retval
  br label %return

return:                                           ; preds = %if.end.222, %if.then.221, %if.then
  %95 = load %struct.message*, %struct.message** %retval
  ret %struct.message* %95
}

declare %struct.table* @tableCreate() #1

declare i32 @tableInsert(%struct.table*, i8*, i32) #1

declare void @tableDestroy(%struct.table*) #1

declare i8* @lineGetData(i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i8* @cli_strtokbuf(i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @rfc822comments(i8* %in, i8* %out) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %iptr = alloca i8*, align 8
  %optr = alloca i8*, align 8
  %backslash = alloca i32, align 4
  %inquote = alloca i32, align 4
  %commentlevel = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i8* %out, i8** %out.addr, align 8
  %0 = load i8*, i8** %in.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %in.addr, align 8
  %call = call i8* @strchr(i8* %1, i32 40) #6
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i8*, i8** %out.addr, align 8
  %cmp4 = icmp eq i8* %2, null
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %if.end.3
  %3 = load i8*, i8** %in.addr, align 8
  %call6 = call i64 @strlen(i8* %3) #6
  %add = add i64 %call6, 1
  %call7 = call i8* @cli_malloc(i64 %add)
  store i8* %call7, i8** %out.addr, align 8
  %4 = load i8*, i8** %out.addr, align 8
  %cmp8 = icmp eq i8* %4, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end.3
  store i32 0, i32* %inquote, align 4
  store i32 0, i32* %commentlevel, align 4
  store i32 0, i32* %backslash, align 4
  %5 = load i8*, i8** %out.addr, align 8
  store i8* %5, i8** %optr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0))
  %6 = load i8*, i8** %in.addr, align 8
  store i8* %6, i8** %iptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %7 = load i8*, i8** %iptr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %backslash, align 4
  %tobool12 = icmp ne i32 %9, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body
  %10 = load i32, i32* %commentlevel, align 4
  %cmp14 = icmp eq i32 %10, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %11 = load i8*, i8** %iptr, align 8
  %12 = load i8, i8* %11, align 1
  %13 = load i8*, i8** %optr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %optr, align 8
  store i8 %12, i8* %13, align 1
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  store i32 0, i32* %backslash, align 4
  br label %if.end.41

if.else:                                          ; preds = %for.body
  %14 = load i8*, i8** %iptr, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  switch i32 %conv, label %sw.default [
    i32 92, label %sw.bb
    i32 34, label %sw.bb.17
    i32 40, label %sw.bb.20
    i32 41, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %if.else
  store i32 1, i32* %backslash, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.else
  %16 = load i8*, i8** %optr, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr18, i8** %optr, align 8
  store i8 34, i8* %16, align 1
  %17 = load i32, i32* %inquote, align 4
  %tobool19 = icmp ne i32 %17, 0
  %lnot = xor i1 %tobool19, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %inquote, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.else
  %18 = load i32, i32* %inquote, align 4
  %tobool21 = icmp ne i32 %18, 0
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %sw.bb.20
  %19 = load i8*, i8** %optr, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr23, i8** %optr, align 8
  store i8 40, i8* %19, align 1
  br label %if.end.25

if.else.24:                                       ; preds = %sw.bb.20
  %20 = load i32, i32* %commentlevel, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %commentlevel, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.22
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.else
  %21 = load i32, i32* %inquote, align 4
  %tobool27 = icmp ne i32 %21, 0
  br i1 %tobool27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %sw.bb.26
  %22 = load i8*, i8** %optr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr29, i8** %optr, align 8
  store i8 41, i8* %22, align 1
  br label %if.end.35

if.else.30:                                       ; preds = %sw.bb.26
  %23 = load i32, i32* %commentlevel, align 4
  %cmp31 = icmp sgt i32 %23, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.else.30
  %24 = load i32, i32* %commentlevel, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %commentlevel, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.else.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.28
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %25 = load i32, i32* %commentlevel, align 4
  %cmp36 = icmp eq i32 %25, 0
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %sw.default
  %26 = load i8*, i8** %iptr, align 8
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %optr, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr39, i8** %optr, align 8
  store i8 %27, i8* %28, align 1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.40, %if.end.35, %if.end.25, %sw.bb.17, %sw.bb
  br label %if.end.41

if.end.41:                                        ; preds = %sw.epilog, %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %29 = load i8*, i8** %iptr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr42, i8** %iptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %backslash, align 4
  %tobool43 = icmp ne i32 %30, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.end
  %31 = load i8*, i8** %optr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr45, i8** %optr, align 8
  store i8 92, i8* %31, align 1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %for.end
  %32 = load i8*, i8** %optr, align 8
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %in.addr, align 8
  %34 = load i8*, i8** %out.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i32 0, i32 0), i8* %33, i8* %34)
  %35 = load i8*, i8** %out.addr, align 8
  store i8* %35, i8** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.9, %if.then.2, %if.then
  %36 = load i8*, i8** %retval
  ret i8* %36
}

declare i32 @tableFind(%struct.table*, i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @usefulHeader(i32 %commandNumber, i8* %cmd) #0 {
entry:
  %retval = alloca i1, align 1
  %commandNumber.addr = alloca i32, align 4
  %cmd.addr = alloca i8*, align 8
  store i32 %commandNumber, i32* %commandNumber.addr, align 4
  store i8* %cmd, i8** %cmd.addr, align 8
  %0 = load i32, i32* %commandNumber.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i1 true, i1* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %1 = load i8*, i8** %cmd.addr, align 8
  %call = call i32 @strcasecmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %sw.default
  %2 = load i8*, i8** %cmd.addr, align 8
  %call1 = call i32 @strcasecmp(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0)) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i1 true, i1* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i8*, i8** %cmd.addr, align 8
  %call5 = call i32 @strcasecmp(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i1 true, i1* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.8
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.7, %if.then.3, %if.then, %sw.bb
  %4 = load i1, i1* %retval
  ret i1 %4
}

declare i8* @cli_strdup(i8*) #1

declare i8* @cli_realloc(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @next_is_folded_header(%struct.text* %t) #0 {
entry:
  %retval = alloca i1, align 1
  %t.addr = alloca %struct.text*, align 8
  %next = alloca %struct.text*, align 8
  %data = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  store %struct.text* %t, %struct.text** %t.addr, align 8
  %0 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %0, i32 0, i32 1
  %1 = load %struct.text*, %struct.text** %t_next, align 8
  store %struct.text* %1, %struct.text** %next, align 8
  %2 = load %struct.text*, %struct.text** %next, align 8
  %cmp = icmp eq %struct.text* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.text*, %struct.text** %next, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %3, i32 0, i32 0
  %4 = load i8*, i8** %t_line, align 8
  %cmp1 = icmp eq i8* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.text*, %struct.text** %next, align 8
  %t_line4 = getelementptr inbounds %struct.text, %struct.text* %5, i32 0, i32 0
  %6 = load i8*, i8** %t_line4, align 8
  %call = call i8* @lineGetData(i8* %6)
  store i8* %call, i8** %data, align 8
  %7 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %idxprom = sext i32 %conv to i64
  %call5 = call i16** @__ctype_b_loc() #7
  %9 = load i16*, i16** %call5, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx6, align 2
  %conv7 = zext i16 %10 to i32
  %and = and i32 %conv7, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.3
  store i1 true, i1* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.3
  %11 = load i8*, i8** %data, align 8
  %call10 = call i8* @strchr(i8* %11, i32 61) #6
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i1 false, i1* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %12 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_line15 = getelementptr inbounds %struct.text, %struct.text* %12, i32 0, i32 0
  %13 = load i8*, i8** %t_line15, align 8
  %call16 = call i8* @lineGetData(i8* %13)
  store i8* %call16, i8** %data, align 8
  %14 = load i8*, i8** %data, align 8
  %call17 = call i8* @strchr(i8* %14, i32 0) #6
  store i8* %call17, i8** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.bb.21, %if.end.14
  %15 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %16 = load i8*, i8** %data, align 8
  %cmp18 = icmp ugt i8* %incdec.ptr, %16
  br i1 %cmp18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i8*, i8** %ptr, align 8
  %18 = load i8, i8* %17, align 1
  %conv20 = sext i8 %18 to i32
  switch i32 %conv20, label %sw.default [
    i32 59, label %sw.bb
    i32 10, label %sw.bb.21
    i32 32, label %sw.bb.21
    i32 13, label %sw.bb.21
    i32 9, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %while.body
  store i1 true, i1* %retval
  br label %return

sw.bb.21:                                         ; preds = %while.body, %while.body, %while.body, %while.body
  br label %while.cond

sw.default:                                       ; preds = %while.body
  store i1 false, i1* %retval
  br label %return

while.end:                                        ; preds = %while.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %sw.default, %sw.bb, %if.then.13, %if.then.8, %if.then.2, %if.then
  %19 = load i1, i1* %retval
  ret i1 %19
}

declare i8* @lineUnlink(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @count_quotes(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %quotes = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i32 0, i32* %quotes, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %buf.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %buf.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %quotes, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %quotes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %quotes, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @parseEmailHeader(%struct.message* %m, i8* %line, %struct.table* %rfc821) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %line.addr = alloca i8*, align 8
  %rfc821.addr = alloca %struct.table*, align 8
  %ret = alloca i32, align 4
  %separater = alloca i8*, align 8
  %cmd = alloca i8*, align 8
  %copy = alloca i8*, align 8
  %tokenseparater = alloca [2 x i8], align 1
  %arg = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %line, i8** %line.addr, align 8
  store %struct.table* %rfc821, %struct.table** %rfc821.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0), i8* %0)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8** %separater, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %separater, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %line.addr, align 8
  %4 = load i8*, i8** %separater, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %call = call i8* @strchr(i8* %3, i32 %conv) #6
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %separater, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %separater, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %7 = load i8*, i8** %separater, align 8
  %8 = load i8, i8* %7, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %for.end
  %9 = load i8*, i8** %line.addr, align 8
  %call7 = call i8* @rfc2047(i8* %9)
  store i8* %call7, i8** %copy, align 8
  %10 = load i8*, i8** %copy, align 8
  %cmp8 = icmp eq i8* %10, null
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.6
  %11 = load i8*, i8** %line.addr, align 8
  %call11 = call i8* @cli_strdup(i8* %11)
  store i8* %call11, i8** %copy, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.6
  %12 = load i8*, i8** %separater, align 8
  %13 = load i8, i8* %12, align 1
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %tokenseparater, i32 0, i64 0
  store i8 %13, i8* %arrayidx, align 1
  %arrayidx13 = getelementptr inbounds [2 x i8], [2 x i8]* %tokenseparater, i32 0, i64 1
  store i8 0, i8* %arrayidx13, align 1
  store i32 -1, i32* %ret, align 4
  %14 = load i8*, i8** %copy, align 8
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %tokenseparater, i32 0, i32 0
  %call14 = call i8* @strtok(i8* %14, i8* %arraydecay) #5
  store i8* %call14, i8** %cmd, align 8
  %15 = load i8*, i8** %cmd, align 8
  %tobool15 = icmp ne i8* %15, null
  br i1 %tobool15, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end.12
  %16 = load i8*, i8** %cmd, align 8
  %call16 = call i64 @strstrip(i8* %16)
  %cmp17 = icmp ugt i64 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.25

if.then.19:                                       ; preds = %land.lhs.true
  %call20 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i32 0, i32 0)) #5
  store i8* %call20, i8** %arg, align 8
  %17 = load i8*, i8** %arg, align 8
  %tobool21 = icmp ne i8* %17, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.19
  %18 = load %struct.message*, %struct.message** %m.addr, align 8
  %19 = load i8*, i8** %cmd, align 8
  %20 = load %struct.table*, %struct.table** %rfc821.addr, align 8
  %21 = load i8*, i8** %arg, align 8
  %call23 = call i32 @parseMimeHeader(%struct.message* %18, i8* %19, %struct.table* %20, i8* %21)
  store i32 %call23, i32* %ret, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %land.lhs.true, %if.end.12
  %22 = load i8*, i8** %copy, align 8
  call void @free(i8* %22) #5
  %23 = load i32, i32* %ret, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.5
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @newline_in_header(i8* %line) #0 {
entry:
  %retval = alloca i1, align 1
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.71, i32 0, i32 0), i8* %0)
  %1 = load i8*, i8** %line.addr, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i64 12) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %line.addr, align 8
  %call1 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i64 6) #6
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i1 true, i1* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %3 = load i1, i1* %retval
  ret i1 %3
}

declare i32 @messageMoveText(%struct.message*, %struct.text*, %struct.message*) #1

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @rfc2047(i8* %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca i8*, align 8
  %out = alloca i8*, align 8
  %pout = alloca i8*, align 8
  %len = alloca i64, align 8
  %encoding = alloca i8, align 1
  %ptr = alloca i8*, align 8
  %enctext = alloca i8*, align 8
  %m = alloca %struct.message*, align 8
  %b = alloca %struct.blob*, align 8
  store i8* %in, i8** %in.addr, align 8
  %0 = load i8*, i8** %in.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0)) #6
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %in.addr, align 8
  %call1 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0)) #6
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8*, i8** %in.addr, align 8
  %call3 = call i8* @cli_strdup(i8* %2)
  store i8* %call3, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %in.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i8* %3)
  %4 = load i8*, i8** %in.addr, align 8
  %call4 = call i64 @strlen(i8* %4) #6
  %add = add i64 %call4, 1
  %call5 = call i8* @cli_malloc(i64 %add)
  store i8* %call5, i8** %out, align 8
  %5 = load i8*, i8** %out, align 8
  %cmp6 = icmp eq i8* %5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %6 = load i8*, i8** %out, align 8
  store i8* %6, i8** %pout, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.94, %if.end.8
  %7 = load i8*, i8** %in.addr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %while.body, label %while.end.95

while.body:                                       ; preds = %while.cond
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.18, %while.body
  %9 = load i8*, i8** %in.addr, align 8
  %10 = load i8, i8* %9, align 1
  %tobool10 = icmp ne i8 %10, 0
  br i1 %tobool10, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.9
  %11 = load i8*, i8** %in.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv = sext i8 %12 to i32
  %cmp12 = icmp eq i32 %conv, 61
  br i1 %cmp12, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %while.body.11
  %13 = load i8*, i8** %in.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx, align 1
  %conv14 = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv14, 63
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  %15 = load i8*, i8** %in.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr, i8** %in.addr, align 8
  br label %while.end

if.end.18:                                        ; preds = %land.lhs.true, %while.body.11
  %16 = load i8*, i8** %in.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %pout, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr19, i8** %pout, align 8
  store i8 %17, i8* %18, align 1
  br label %while.cond.9

while.end:                                        ; preds = %if.then.17, %while.cond.9
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.26, %while.end
  %19 = load i8*, i8** %in.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv21 = sext i8 %20 to i32
  %cmp22 = icmp ne i32 %conv21, 63
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.20
  %21 = load i8*, i8** %in.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv24 = sext i8 %22 to i32
  %tobool25 = icmp ne i32 %conv24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.20
  %23 = phi i1 [ false, %while.cond.20 ], [ %tobool25, %land.rhs ]
  br i1 %23, label %while.body.26, label %while.end.28

while.body.26:                                    ; preds = %land.end
  %24 = load i8*, i8** %in.addr, align 8
  %incdec.ptr27 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr27, i8** %in.addr, align 8
  br label %while.cond.20

while.end.28:                                     ; preds = %land.end
  %25 = load i8*, i8** %in.addr, align 8
  %26 = load i8, i8* %25, align 1
  %conv29 = sext i8 %26 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %while.end.28
  br label %while.end.95

if.end.33:                                        ; preds = %while.end.28
  %27 = load i8*, i8** %in.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr34, i8** %in.addr, align 8
  %28 = load i8, i8* %incdec.ptr34, align 1
  store i8 %28, i8* %encoding, align 1
  %29 = load i8, i8* %encoding, align 1
  %conv35 = sext i8 %29 to i32
  %call36 = call i32 @tolower(i32 %conv35) #5
  %conv37 = trunc i32 %call36 to i8
  store i8 %conv37, i8* %encoding, align 1
  %30 = load i8, i8* %encoding, align 1
  %conv38 = sext i8 %30 to i32
  %cmp39 = icmp ne i32 %conv38, 113
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.47

land.lhs.true.41:                                 ; preds = %if.end.33
  %31 = load i8, i8* %encoding, align 1
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp ne i32 %conv42, 98
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true.41
  %32 = load i8, i8* %encoding, align 1
  %conv46 = sext i8 %32 to i32
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.55, i32 0, i32 0), i32 %conv46)
  %33 = load i8*, i8** %out, align 8
  call void @free(i8* %33) #5
  store i8* null, i8** %out, align 8
  br label %while.end.95

if.end.47:                                        ; preds = %land.lhs.true.41, %if.end.33
  %34 = load i8*, i8** %in.addr, align 8
  %incdec.ptr48 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr48, i8** %in.addr, align 8
  %35 = load i8, i8* %incdec.ptr48, align 1
  %conv49 = sext i8 %35 to i32
  %cmp50 = icmp ne i32 %conv49, 63
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.47
  br label %while.end.95

if.end.53:                                        ; preds = %if.end.47
  %36 = load i8*, i8** %in.addr, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr54, i8** %in.addr, align 8
  %37 = load i8, i8* %incdec.ptr54, align 1
  %conv55 = sext i8 %37 to i32
  %cmp56 = icmp eq i32 %conv55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  br label %while.end.95

if.end.59:                                        ; preds = %if.end.53
  %38 = load i8*, i8** %in.addr, align 8
  %call60 = call i8* @cli_strdup(i8* %38)
  store i8* %call60, i8** %enctext, align 8
  %39 = load i8*, i8** %enctext, align 8
  %cmp61 = icmp eq i8* %39, null
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.59
  %40 = load i8*, i8** %out, align 8
  call void @free(i8* %40) #5
  store i8* null, i8** %out, align 8
  br label %while.end.95

if.end.64:                                        ; preds = %if.end.59
  %41 = load i8*, i8** %in.addr, align 8
  %call65 = call i8* @strstr(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0)) #6
  store i8* %call65, i8** %in.addr, align 8
  %42 = load i8*, i8** %in.addr, align 8
  %cmp66 = icmp eq i8* %42, null
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.64
  %43 = load i8*, i8** %enctext, align 8
  call void @free(i8* %43) #5
  br label %while.end.95

if.end.69:                                        ; preds = %if.end.64
  %44 = load i8*, i8** %in.addr, align 8
  %add.ptr70 = getelementptr inbounds i8, i8* %44, i64 2
  store i8* %add.ptr70, i8** %in.addr, align 8
  %45 = load i8*, i8** %enctext, align 8
  %call71 = call i8* @strstr(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0)) #6
  store i8* %call71, i8** %ptr, align 8
  %46 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %46, align 1
  %call72 = call %struct.message* @messageCreate()
  store %struct.message* %call72, %struct.message** %m, align 8
  %47 = load %struct.message*, %struct.message** %m, align 8
  %cmp73 = icmp eq %struct.message* %47, null
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.69
  br label %while.end.95

if.end.76:                                        ; preds = %if.end.69
  %48 = load %struct.message*, %struct.message** %m, align 8
  %49 = load i8*, i8** %enctext, align 8
  %call77 = call i32 @messageAddStr(%struct.message* %48, i8* %49)
  %50 = load i8*, i8** %enctext, align 8
  call void @free(i8* %50) #5
  %51 = load i8, i8* %encoding, align 1
  %conv78 = sext i8 %51 to i32
  switch i32 %conv78, label %sw.epilog [
    i32 113, label %sw.bb
    i32 98, label %sw.bb.79
  ]

sw.bb:                                            ; preds = %if.end.76
  %52 = load %struct.message*, %struct.message** %m, align 8
  call void @messageSetEncoding(%struct.message* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0))
  br label %sw.epilog

sw.bb.79:                                         ; preds = %if.end.76
  %53 = load %struct.message*, %struct.message** %m, align 8
  call void @messageSetEncoding(%struct.message* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.76, %sw.bb.79, %sw.bb
  %54 = load %struct.message*, %struct.message** %m, align 8
  %call80 = call %struct.blob* @messageToBlob(%struct.message* %54, i32 1)
  store %struct.blob* %call80, %struct.blob** %b, align 8
  %55 = load %struct.blob*, %struct.blob** %b, align 8
  %call81 = call i64 @blobGetDataSize(%struct.blob* %55)
  store i64 %call81, i64* %len, align 8
  %56 = load i64, i64* %len, align 8
  %conv82 = trunc i64 %56 to i32
  %57 = load i64, i64* %len, align 8
  %conv83 = trunc i64 %57 to i32
  %58 = load %struct.blob*, %struct.blob** %b, align 8
  %call84 = call i8* @blobGetData(%struct.blob* %58)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i32 %conv82, i32 %conv83, i8* %call84)
  %59 = load i8*, i8** %pout, align 8
  %60 = load %struct.blob*, %struct.blob** %b, align 8
  %call85 = call i8* @blobGetData(%struct.blob* %60)
  %61 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %call85, i64 %61, i32 1, i1 false)
  %62 = load %struct.blob*, %struct.blob** %b, align 8
  call void @blobDestroy(%struct.blob* %62)
  %63 = load %struct.message*, %struct.message** %m, align 8
  call void @messageDestroy(%struct.message* %63)
  %64 = load i64, i64* %len, align 8
  %sub = sub i64 %64, 1
  %65 = load i8*, i8** %pout, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %65, i64 %sub
  %66 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %66 to i32
  %cmp88 = icmp eq i32 %conv87, 10
  br i1 %cmp88, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %sw.epilog
  %67 = load i64, i64* %len, align 8
  %sub91 = sub i64 %67, 1
  %68 = load i8*, i8** %pout, align 8
  %add.ptr92 = getelementptr inbounds i8, i8* %68, i64 %sub91
  store i8* %add.ptr92, i8** %pout, align 8
  br label %if.end.94

if.else:                                          ; preds = %sw.epilog
  %69 = load i64, i64* %len, align 8
  %70 = load i8*, i8** %pout, align 8
  %add.ptr93 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %add.ptr93, i8** %pout, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.else, %if.then.90
  br label %while.cond

while.end.95:                                     ; preds = %if.then.75, %if.then.68, %if.then.63, %if.then.58, %if.then.52, %if.then.45, %if.then.32, %while.cond
  %71 = load i8*, i8** %out, align 8
  %cmp96 = icmp eq i8* %71, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %while.end.95
  store i8* null, i8** %retval
  br label %return

if.end.99:                                        ; preds = %while.end.95
  %72 = load i8*, i8** %pout, align 8
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %out, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i32 0, i32 0), i8* %73)
  %74 = load i8*, i8** %out, align 8
  store i8* %74, i8** %retval
  br label %return

return:                                           ; preds = %if.end.99, %if.then.98, %if.then.7, %if.then
  %75 = load i8*, i8** %retval
  ret i8* %75
}

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @parseMimeHeader(%struct.message* %m, i8* %cmd, %struct.table* %rfc821Table, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %cmd.addr = alloca i8*, align 8
  %rfc821Table.addr = alloca %struct.table*, align 8
  %arg.addr = alloca i8*, align 8
  %copy = alloca i8*, align 8
  %p = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %commandNumber = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i8*, align 8
  %buf2 = alloca i8*, align 8
  %set = alloca i32, align 4
  %len = alloca i64, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %cmd, i8** %cmd.addr, align 8
  store %struct.table* %rfc821Table, %struct.table** %rfc821Table.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %cmd.addr, align 8
  %1 = load i8*, i8** %arg.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.60, i32 0, i32 0), i8* %0, i8* %1)
  %2 = load i8*, i8** %cmd.addr, align 8
  %call = call i8* @rfc822comments(i8* %2, i8* null)
  store i8* %call, i8** %copy, align 8
  %3 = load i8*, i8** %copy, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.table*, %struct.table** %rfc821Table.addr, align 8
  %5 = load i8*, i8** %copy, align 8
  %call1 = call i32 @tableFind(%struct.table* %4, i8* %5)
  store i32 %call1, i32* %commandNumber, align 4
  %6 = load i8*, i8** %copy, align 8
  call void @free(i8* %6) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.table*, %struct.table** %rfc821Table.addr, align 8
  %8 = load i8*, i8** %cmd.addr, align 8
  %call2 = call i32 @tableFind(%struct.table* %7, i8* %8)
  store i32 %call2, i32* %commandNumber, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %arg.addr, align 8
  %call3 = call i8* @rfc822comments(i8* %9, i8* null)
  store i8* %call3, i8** %copy, align 8
  %10 = load i8*, i8** %copy, align 8
  %tobool4 = icmp ne i8* %10, null
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end
  %11 = load i8*, i8** %copy, align 8
  store i8* %11, i8** %ptr, align 8
  br label %if.end.7

if.else.6:                                        ; preds = %if.end
  %12 = load i8*, i8** %arg.addr, align 8
  store i8* %12, i8** %ptr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.6, %if.then.5
  store i8* null, i8** %buf, align 8
  %13 = load i32, i32* %commandNumber, align 4
  switch i32 %13, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.119
    i32 3, label %sw.bb.120
  ]

sw.bb:                                            ; preds = %if.end.7
  %14 = load i8*, i8** %arg.addr, align 8
  %cmp = icmp eq i8* %14, null
  br i1 %cmp, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %sw.bb
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.61, i32 0, i32 0))
  br label %if.end.118

if.else.9:                                        ; preds = %sw.bb
  %15 = load i8*, i8** %ptr, align 8
  %call10 = call i8* @strchr(i8* %15, i32 47) #6
  %cmp11 = icmp eq i8* %call10, null
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  %16 = load i8*, i8** %ptr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.62, i32 0, i32 0), i8* %16)
  br label %if.end.117

if.else.13:                                       ; preds = %if.else.9
  %17 = load i8*, i8** %ptr, align 8
  %call14 = call i64 @strlen(i8* %17) #6
  %add = add i64 %call14, 1
  %call15 = call i8* @cli_malloc(i64 %add)
  store i8* %call15, i8** %buf, align 8
  %18 = load i8*, i8** %buf, align 8
  %cmp16 = icmp eq i8* %18, null
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.else.13
  %19 = load i8*, i8** %copy, align 8
  %tobool18 = icmp ne i8* %19, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.17
  %20 = load i8*, i8** %copy, align 8
  call void @free(i8* %20) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.then.17
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.else.13
  %21 = load i8*, i8** %arg.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv = sext i8 %22 to i32
  %cmp22 = icmp eq i32 %conv, 47
  br i1 %cmp22, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.end.21
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.63, i32 0, i32 0))
  %23 = load %struct.message*, %struct.message** %m.addr, align 8
  %call25 = call i32 @messageSetMimeType(%struct.message* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.64, i32 0, i32 0))
  %24 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageSetMimeSubtype(%struct.message* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.110

if.else.26:                                       ; preds = %if.end.21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.26
  %25 = load i8*, i8** %ptr, align 8
  %26 = load i8, i8* %25, align 1
  %conv27 = sext i8 %26 to i32
  %idxprom = sext i32 %conv27 to i64
  %call28 = call i16** @__ctype_b_loc() #7
  %27 = load i16*, i16** %call28, align 8
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2
  %conv29 = zext i16 %28 to i32
  %and = and i32 %conv29, 8192
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %30 = load i8*, i8** %ptr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %31 to i32
  %cmp33 = icmp eq i32 %conv32, 34
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %while.end
  %32 = load i8*, i8** %ptr, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr36, i8** %ptr, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %while.end
  %33 = load i8*, i8** %ptr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %34 to i32
  %cmp40 = icmp ne i32 %conv39, 47
  br i1 %cmp40, label %if.then.42, label %if.end.109

if.then.42:                                       ; preds = %if.end.37
  %35 = load i8*, i8** %ptr, align 8
  %36 = load i8*, i8** %buf, align 8
  %call43 = call i8* @cli_strtokbuf(i8* %35, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8* %36)
  store i8* %call43, i8** %s, align 8
  %37 = load i8*, i8** %s, align 8
  %tobool44 = icmp ne i8* %37, null
  br i1 %tobool44, label %land.lhs.true, label %if.end.108

land.lhs.true:                                    ; preds = %if.then.42
  %38 = load i8*, i8** %s, align 8
  %39 = load i8, i8* %38, align 1
  %conv45 = sext i8 %39 to i32
  %tobool46 = icmp ne i32 %conv45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.108

if.then.47:                                       ; preds = %land.lhs.true
  %40 = load i8*, i8** %buf, align 8
  %call48 = call i8* @cli_strdup(i8* %40)
  store i8* %call48, i8** %buf2, align 8
  %41 = load i8*, i8** %buf2, align 8
  %cmp49 = icmp eq i8* %41, null
  br i1 %cmp49, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.then.47
  %42 = load i8*, i8** %copy, align 8
  %tobool52 = icmp ne i8* %42, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.51
  %43 = load i8*, i8** %copy, align 8
  call void @free(i8* %43) #5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.then.51
  %44 = load i8*, i8** %buf, align 8
  call void @free(i8* %44) #5
  store i32 -1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.then.47
  br label %for.cond

for.cond:                                         ; preds = %if.end.107, %if.end.55
  %45 = load %struct.message*, %struct.message** %m.addr, align 8
  %46 = load i8*, i8** %s, align 8
  %call56 = call i8* @strtok(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0)) #5
  %call57 = call i32 @messageSetMimeType(%struct.message* %45, i8* %call56)
  store i32 %call57, i32* %set, align 4
  %call58 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0)) #5
  store i8* %call58, i8** %s, align 8
  %47 = load i8*, i8** %s, align 8
  %cmp59 = icmp eq i8* %47, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.cond
  br label %for.end

if.end.62:                                        ; preds = %for.cond
  %48 = load i32, i32* %set, align 4
  %tobool63 = icmp ne i32 %48, 0
  br i1 %tobool63, label %if.then.64, label %if.end.83

if.then.64:                                       ; preds = %if.end.62
  %49 = load i8*, i8** %s, align 8
  %call65 = call i64 @strstrip(i8* %49)
  %sub = sub i64 %call65, 1
  store i64 %sub, i64* %len, align 8
  %50 = load i64, i64* %len, align 8
  %51 = load i8*, i8** %s, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %51, i64 %50
  %52 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %52 to i32
  %cmp68 = icmp eq i32 %conv67, 34
  br i1 %cmp68, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %if.then.64
  %53 = load i64, i64* %len, align 8
  %54 = load i8*, i8** %s, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8 0, i8* %arrayidx71, align 1
  %55 = load i8*, i8** %s, align 8
  %call72 = call i64 @strstrip(i8* %55)
  store i64 %call72, i64* %len, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %if.then.64
  %56 = load i64, i64* %len, align 8
  %tobool74 = icmp ne i64 %56, 0
  br i1 %tobool74, label %if.then.75, label %if.end.82

if.then.75:                                       ; preds = %if.end.73
  %57 = load i8*, i8** %s, align 8
  %call76 = call i8* @strchr(i8* %57, i32 32) #6
  %tobool77 = icmp ne i8* %call76, null
  br i1 %tobool77, label %if.then.78, label %if.else.80

if.then.78:                                       ; preds = %if.then.75
  %58 = load %struct.message*, %struct.message** %m.addr, align 8
  %59 = load i8*, i8** %s, align 8
  %60 = load i8*, i8** %buf2, align 8
  %call79 = call i8* @cli_strtokbuf(i8* %59, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0), i8* %60)
  call void @messageSetMimeSubtype(%struct.message* %58, i8* %call79)
  br label %if.end.81

if.else.80:                                       ; preds = %if.then.75
  %61 = load %struct.message*, %struct.message** %m.addr, align 8
  %62 = load i8*, i8** %s, align 8
  call void @messageSetMimeSubtype(%struct.message* %61, i8* %62)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %if.then.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.73
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.62
  br label %while.cond.84

while.cond.84:                                    ; preds = %while.body.94, %if.end.83
  %63 = load i8*, i8** %s, align 8
  %64 = load i8, i8* %63, align 1
  %conv85 = sext i8 %64 to i32
  %tobool86 = icmp ne i32 %conv85, 0
  br i1 %tobool86, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.84
  %65 = load i8*, i8** %s, align 8
  %66 = load i8, i8* %65, align 1
  %conv87 = sext i8 %66 to i32
  %idxprom88 = sext i32 %conv87 to i64
  %call89 = call i16** @__ctype_b_loc() #7
  %67 = load i16*, i16** %call89, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %67, i64 %idxprom88
  %68 = load i16, i16* %arrayidx90, align 2
  %conv91 = zext i16 %68 to i32
  %and92 = and i32 %conv91, 8192
  %tobool93 = icmp ne i32 %and92, 0
  %lnot = xor i1 %tobool93, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.84
  %69 = phi i1 [ false, %while.cond.84 ], [ %lnot, %land.rhs ]
  br i1 %69, label %while.body.94, label %while.end.96

while.body.94:                                    ; preds = %land.end
  %70 = load i8*, i8** %s, align 8
  %incdec.ptr95 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr95, i8** %s, align 8
  br label %while.cond.84

while.end.96:                                     ; preds = %land.end
  %71 = load i8*, i8** %s, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr97, i8** %s, align 8
  %72 = load i8, i8* %71, align 1
  %conv98 = sext i8 %72 to i32
  %cmp99 = icmp eq i32 %conv98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %while.end.96
  br label %for.end

if.end.102:                                       ; preds = %while.end.96
  %73 = load i8*, i8** %s, align 8
  %74 = load i8, i8* %73, align 1
  %conv103 = sext i8 %74 to i32
  %cmp104 = icmp eq i32 %conv103, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.102
  br label %for.end

if.end.107:                                       ; preds = %if.end.102
  br label %for.cond

for.end:                                          ; preds = %if.then.106, %if.then.101, %if.then.61
  %75 = load i8*, i8** %buf2, align 8
  call void @free(i8* %75) #5
  br label %if.end.108

if.end.108:                                       ; preds = %for.end, %land.lhs.true, %if.then.42
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.37
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.24
  store i32 1, i32* %i, align 4
  br label %while.cond.111

while.cond.111:                                   ; preds = %while.body.115, %if.end.110
  %76 = load i8*, i8** %ptr, align 8
  %77 = load i32, i32* %i, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %i, align 4
  %78 = load i8*, i8** %buf, align 8
  %call112 = call i8* @cli_strtokbuf(i8* %76, i32 %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8* %78)
  %cmp113 = icmp ne i8* %call112, null
  br i1 %cmp113, label %while.body.115, label %while.end.116

while.body.115:                                   ; preds = %while.cond.111
  %79 = load i8*, i8** %buf, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i8* %79)
  %80 = load %struct.message*, %struct.message** %m.addr, align 8
  %81 = load i8*, i8** %buf, align 8
  call void @messageAddArguments(%struct.message* %80, i8* %81)
  br label %while.cond.111

while.end.116:                                    ; preds = %while.cond.111
  br label %if.end.117

if.end.117:                                       ; preds = %while.end.116, %if.then.12
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.8
  br label %sw.epilog

sw.bb.119:                                        ; preds = %if.end.7
  %82 = load %struct.message*, %struct.message** %m.addr, align 8
  %83 = load i8*, i8** %ptr, align 8
  call void @messageSetEncoding(%struct.message* %82, i8* %83)
  br label %sw.epilog

sw.bb.120:                                        ; preds = %if.end.7
  %84 = load i8*, i8** %ptr, align 8
  %call121 = call i64 @strlen(i8* %84) #6
  %add122 = add i64 %call121, 1
  %call123 = call i8* @cli_malloc(i64 %add122)
  store i8* %call123, i8** %buf, align 8
  %85 = load i8*, i8** %buf, align 8
  %cmp124 = icmp eq i8* %85, null
  br i1 %cmp124, label %if.then.126, label %if.end.130

if.then.126:                                      ; preds = %sw.bb.120
  %86 = load i8*, i8** %copy, align 8
  %tobool127 = icmp ne i8* %86, null
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.then.126
  %87 = load i8*, i8** %copy, align 8
  call void @free(i8* %87) #5
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.128, %if.then.126
  store i32 -1, i32* %retval
  br label %return

if.end.130:                                       ; preds = %sw.bb.120
  %88 = load i8*, i8** %ptr, align 8
  %89 = load i8*, i8** %buf, align 8
  %call131 = call i8* @cli_strtokbuf(i8* %88, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8* %89)
  store i8* %call131, i8** %p, align 8
  %90 = load i8*, i8** %p, align 8
  %tobool132 = icmp ne i8* %90, null
  br i1 %tobool132, label %if.then.133, label %if.end.138

if.then.133:                                      ; preds = %if.end.130
  %91 = load i8*, i8** %p, align 8
  %92 = load i8, i8* %91, align 1
  %tobool134 = icmp ne i8 %92, 0
  br i1 %tobool134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.then.133
  %93 = load %struct.message*, %struct.message** %m.addr, align 8
  %94 = load i8*, i8** %p, align 8
  call void @messageSetDispositionType(%struct.message* %93, i8* %94)
  %95 = load %struct.message*, %struct.message** %m.addr, align 8
  %96 = load i8*, i8** %ptr, align 8
  %97 = load i8*, i8** %buf, align 8
  %call136 = call i8* @cli_strtokbuf(i8* %96, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8* %97)
  call void @messageAddArgument(%struct.message* %95, i8* %call136)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.then.133
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.130
  %98 = load %struct.message*, %struct.message** %m.addr, align 8
  %call139 = call i32 @messageHasFilename(%struct.message* %98)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.end.142, label %if.then.141

if.then.141:                                      ; preds = %if.end.138
  %99 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageAddArgument(%struct.message* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0))
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %if.end.138
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.142, %if.end.7, %sw.bb.119, %if.end.118
  %100 = load i8*, i8** %copy, align 8
  %tobool143 = icmp ne i8* %100, null
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %sw.epilog
  %101 = load i8*, i8** %copy, align 8
  call void @free(i8* %101) #5
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.144, %sw.epilog
  %102 = load i8*, i8** %buf, align 8
  %tobool146 = icmp ne i8* %102, null
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.145
  %103 = load i8*, i8** %buf, align 8
  call void @free(i8* %103) #5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.end.145
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.148, %if.end.129, %if.end.54, %if.end.20
  %104 = load i32, i32* %retval
  ret i32 %104
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

declare void @messageSetEncoding(%struct.message*, i8*) #1

declare %struct.blob* @messageToBlob(%struct.message*, i32) #1

declare i64 @blobGetDataSize(%struct.blob*) #1

declare i8* @blobGetData(%struct.blob*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @blobDestroy(%struct.blob*) #1

declare i32 @messageSetMimeType(%struct.message*, i8*) #1

declare void @messageSetMimeSubtype(%struct.message*, i8*) #1

declare void @messageAddArguments(%struct.message*, i8*) #1

declare void @messageSetDispositionType(%struct.message*, i8*) #1

declare void @messageAddArgument(%struct.message*, i8*) #1

declare i32 @messageHasFilename(%struct.message*) #1

declare i32 @messageGetMimeType(%struct.message*) #1

declare i8* @messageGetMimeSubtype(%struct.message*) #1

declare %struct.text* @textAddMessage(%struct.text*, %struct.message*) #1

; Function Attrs: nounwind uwtable
define internal void @checkURLs(%struct.message* %mainMessage, %struct.mbox_ctx* %mctx, i32* %rc, i32 %is_html) #0 {
entry:
  %mainMessage.addr = alloca %struct.message*, align 8
  %mctx.addr = alloca %struct.mbox_ctx*, align 8
  %rc.addr = alloca i32*, align 8
  %is_html.addr = alloca i32, align 4
  %b = alloca %struct.blob*, align 8
  %hrefs = alloca %struct.tag_arguments_tag, align 8
  store %struct.message* %mainMessage, %struct.message** %mainMessage.addr, align 8
  store %struct.mbox_ctx* %mctx, %struct.mbox_ctx** %mctx.addr, align 8
  store i32* %rc, i32** %rc.addr, align 8
  store i32 %is_html, i32* %is_html.addr, align 4
  %0 = load i32*, i32** %rc.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %2, i32 0, i32 4
  %3 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %3, i32 0, i32 3
  %4 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %dboptions = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %4, i32 0, i32 2
  %5 = load i32, i32* %dboptions, align 4
  %and = and i32 %5, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %6 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx1 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %6, i32 0, i32 4
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx1, align 8
  %dconf = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %7, i32 0, i32 9
  %8 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %8, i32 0, i32 6
  %9 = load i32, i32* %phishing, align 4
  %and2 = and i32 %9, 1
  %tobool3 = icmp ne i32 %and2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %10 = phi i1 [ false, %if.end ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %10 to i32
  %scanContents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %hrefs, i32 0, i32 1
  store i32 %land.ext, i32* %scanContents, align 4
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %hrefs, i32 0, i32 0
  store i32 0, i32* %count, align 4
  %value = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %hrefs, i32 0, i32 3
  store i8** null, i8*** %value, align 8
  %tag = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %hrefs, i32 0, i32 2
  store i8** null, i8*** %tag, align 8
  %contents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %hrefs, i32 0, i32 4
  store %struct.blob** null, %struct.blob*** %contents, align 8
  %11 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %call = call %struct.blob* @getHrefs(%struct.message* %11, %struct.tag_arguments_tag* %hrefs)
  store %struct.blob* %call, %struct.blob** %b, align 8
  %12 = load %struct.blob*, %struct.blob** %b, align 8
  %tobool4 = icmp ne %struct.blob* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end.24

if.then.5:                                        ; preds = %land.end
  %scanContents6 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %hrefs, i32 0, i32 1
  %13 = load i32, i32* %scanContents6, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.5
  %14 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %15 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %15, i32 0, i32 0
  %16 = load i8*, i8** %dir, align 8
  %17 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx9 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %17, i32 0, i32 4
  %18 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx9, align 8
  %call10 = call i32 @phishingScan(%struct.message* %14, i8* %16, %struct.cli_ctx* %18, %struct.tag_arguments_tag* %hrefs)
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  %19 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %isInfected = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 14
  %bf.load = load i8, i8* %isInfected, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %isInfected, align 8
  %20 = load i32*, i32** %rc.addr, align 8
  store i32 3, i32* %20, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.144, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.5
  %21 = load i32, i32* %is_html.addr, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.14
  %22 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx16 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %22, i32 0, i32 4
  %23 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx16, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %23, i32 0, i32 5
  %24 = load i32, i32* %options, align 4
  %and17 = and i32 %24, 128
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.23

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %25 = load i32*, i32** %rc.addr, align 8
  %26 = load i32, i32* %25, align 4
  %cmp20 = icmp ne i32 %26, 3
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true.19
  %27 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir22 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %27, i32 0, i32 0
  %28 = load i8*, i8** %dir22, align 8
  call void @do_checkURLs(i8* %28, %struct.tag_arguments_tag* %hrefs)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true.19, %land.lhs.true, %if.end.14
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.end
  %29 = load %struct.blob*, %struct.blob** %b, align 8
  call void @hrefs_done(%struct.blob* %29, %struct.tag_arguments_tag* %hrefs)
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  ret void
}

declare i8* @messageFindArgument(%struct.message*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @boundaryStart(i8* %line, i8* %boundary) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %boundary.addr = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %out = alloca i8*, align 8
  %rc = alloca i32, align 4
  %buf = alloca [1001 x i8], align 16
  %k = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %boundary, i8** %boundary.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %boundary.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i8*, i8** %line.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp4 = icmp ne i32 %conv, 45
  br i1 %cmp4, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.3
  %4 = load i8*, i8** %line.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp ne i32 %conv6, 40
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %if.end.3
  %6 = load i8*, i8** %line.addr, align 8
  %call = call i8* @strchr(i8* %6, i32 45) #6
  %cmp11 = icmp eq i8* %call, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %7 = load i8*, i8** %line.addr, align 8
  %call15 = call i64 @strlen(i8* %7) #6
  %cmp16 = icmp ule i64 %call15, 1001
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.14
  store i8* null, i8** %out, align 8
  %8 = load i8*, i8** %line.addr, align 8
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf, i32 0, i32 0
  %call19 = call i8* @rfc822comments(i8* %8, i8* %arraydecay)
  store i8* %call19, i8** %ptr, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.14
  %9 = load i8*, i8** %line.addr, align 8
  %call20 = call i8* @rfc822comments(i8* %9, i8* null)
  store i8* %call20, i8** %out, align 8
  store i8* %call20, i8** %ptr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.18
  %10 = load i8*, i8** %ptr, align 8
  %cmp22 = icmp eq i8* %10, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  %11 = load i8*, i8** %line.addr, align 8
  store i8* %11, i8** %ptr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.21
  %12 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %13 = load i8, i8* %12, align 1
  %conv26 = sext i8 %13 to i32
  %cmp27 = icmp ne i32 %conv26, 45
  br i1 %cmp27, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %14 = load i8*, i8** %ptr, align 8
  %15 = load i8, i8* %14, align 1
  %conv29 = sext i8 %15 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.25
  %16 = load i8*, i8** %out, align 8
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.32
  %17 = load i8*, i8** %out, align 8
  call void @free(i8* %17) #5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.32
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %lor.lhs.false
  %18 = load i8*, i8** %ptr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 1
  %19 = load i8*, i8** %boundary.addr, align 8
  %call36 = call i8* @strstr(i8* %arrayidx, i8* %19) #6
  %cmp37 = icmp ne i8* %call36, null
  br i1 %cmp37, label %if.then.43, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %if.end.35
  %20 = load i8*, i8** %line.addr, align 8
  %21 = load i8*, i8** %boundary.addr, align 8
  %call40 = call i8* @strstr(i8* %20, i8* %21) #6
  %cmp41 = icmp ne i8* %call40, null
  br i1 %cmp41, label %if.then.43, label %if.else.70

if.then.43:                                       ; preds = %lor.lhs.false.39, %if.end.35
  %22 = load i8*, i8** %ptr, align 8
  store i8* %22, i8** %k, align 8
  store i32 0, i32* %rc, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.43
  %23 = load i8*, i8** %k, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr44, i8** %k, align 8
  %24 = load i8*, i8** %boundary.addr, align 8
  %call45 = call i32 @strcmp(i8* %incdec.ptr44, i8* %24) #6
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.body
  store i32 1, i32* %rc, align 4
  br label %do.end

if.end.49:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.49
  %25 = load i8*, i8** %k, align 8
  %26 = load i8, i8* %25, align 1
  %conv50 = sext i8 %26 to i32
  %cmp51 = icmp eq i32 %conv50, 45
  br i1 %cmp51, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.48
  %27 = load i32, i32* %rc, align 4
  %cmp53 = icmp eq i32 %27, 0
  br i1 %cmp53, label %if.then.55, label %if.end.69

if.then.55:                                       ; preds = %do.end
  %28 = load i8*, i8** %line.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %arrayidx56, i8** %k, align 8
  br label %do.body.57

do.body.57:                                       ; preds = %do.cond.64, %if.then.55
  %29 = load i8*, i8** %k, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr58, i8** %k, align 8
  %30 = load i8*, i8** %boundary.addr, align 8
  %call59 = call i32 @strcmp(i8* %incdec.ptr58, i8* %30) #6
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %do.body.57
  store i32 1, i32* %rc, align 4
  br label %do.end.68

if.end.63:                                        ; preds = %do.body.57
  br label %do.cond.64

do.cond.64:                                       ; preds = %if.end.63
  %31 = load i8*, i8** %k, align 8
  %32 = load i8, i8* %31, align 1
  %conv65 = sext i8 %32 to i32
  %cmp66 = icmp eq i32 %conv65, 45
  br i1 %cmp66, label %do.body.57, label %do.end.68

do.end.68:                                        ; preds = %do.cond.64, %if.then.62
  br label %if.end.69

if.end.69:                                        ; preds = %do.end.68, %do.end
  br label %if.end.81

if.else.70:                                       ; preds = %lor.lhs.false.39
  %33 = load i8*, i8** %ptr, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr71, i8** %ptr, align 8
  %34 = load i8, i8* %33, align 1
  %conv72 = sext i8 %34 to i32
  %cmp73 = icmp ne i32 %conv72, 45
  br i1 %cmp73, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.else.70
  store i32 0, i32* %rc, align 4
  br label %if.end.80

if.else.76:                                       ; preds = %if.else.70
  %35 = load i8*, i8** %ptr, align 8
  %36 = load i8*, i8** %boundary.addr, align 8
  %call77 = call i32 @strcasecmp(i8* %35, i8* %36) #6
  %cmp78 = icmp eq i32 %call77, 0
  %conv79 = zext i1 %cmp78 to i32
  store i32 %conv79, i32* %rc, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.69
  %37 = load i8*, i8** %out, align 8
  %tobool82 = icmp ne i8* %37, null
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.81
  %38 = load i8*, i8** %out, align 8
  call void @free(i8* %38) #5
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.81
  %39 = load i32, i32* %rc, align 4
  %cmp85 = icmp eq i32 %39, 1
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.84
  %40 = load i8*, i8** %boundary.addr, align 8
  %41 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.188, i32 0, i32 0), i8* %40, i8* %41)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.84
  %42 = load i32, i32* %rc, align 4
  store i32 %42, i32* %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.end.34, %if.then.13, %if.then.9, %if.then.2, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare %struct.text* @binhexBegin(%struct.message*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @exportBinhexMessage(%struct.mbox_ctx* %mctx, %struct.message* %m) #0 {
entry:
  %mctx.addr = alloca %struct.mbox_ctx*, align 8
  %m.addr = alloca %struct.message*, align 8
  %infected = alloca i8, align 1
  %fb = alloca %struct.fileblob*, align 8
  store %struct.mbox_ctx* %mctx, %struct.mbox_ctx** %mctx.addr, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8 0, i8* %infected, align 1
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %call = call i32 @messageGetEncoding(%struct.message* %0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageSetEncoding(%struct.message* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.189, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.message*, %struct.message** %m.addr, align 8
  %3 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %3, i32 0, i32 0
  %4 = load i8*, i8** %dir, align 8
  %call1 = call %struct.fileblob* @messageToFileblob(%struct.message* %2, i8* %4, i32 0)
  store %struct.fileblob* %call1, %struct.fileblob** %fb, align 8
  %5 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %tobool = icmp ne %struct.fileblob* %5, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call3 = call i8* @fileblobGetFilename(%struct.fileblob* %6)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.190, i32 0, i32 0), i8* %call3)
  %7 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call4 = call i32 @fileblobScanAndDestroy(%struct.fileblob* %7)
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.2
  store i8 1, i8* %infected, align 1
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.2
  %8 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %8, i32 0, i32 1
  %9 = load i32, i32* %files, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %files, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %10 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir8 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %10, i32 0, i32 0
  %11 = load i8*, i8** %dir8, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.191, i32 0, i32 0), i8* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end.7
  %12 = load i8, i8* %infected, align 1
  %tobool10 = trunc i8 %12 to i1
  ret i1 %tobool10
}

declare %struct.text* @encodingLine(%struct.message*) #1

declare i32 @messageGetEncoding(%struct.message*) #1

; Function Attrs: nounwind uwtable
define internal i32 @boundaryEnd(i8* %line, i8* %boundary) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca i8*, align 8
  %boundary.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %boundary, i8** %boundary.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 45
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i8*, i8** %line.addr, align 8
  %incdec.ptr5 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr5, i8** %line.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv6 = sext i8 %4 to i32
  %cmp7 = icmp ne i32 %conv6, 45
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %5 = load i8*, i8** %boundary.addr, align 8
  %call = call i64 @strlen(i8* %5) #6
  store i64 %call, i64* %len, align 8
  %6 = load i8*, i8** %line.addr, align 8
  %7 = load i8*, i8** %boundary.addr, align 8
  %8 = load i64, i64* %len, align 8
  %call11 = call i32 @strncasecmp(i8* %6, i8* %7, i64 %8) #6
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %9 = load i8*, i8** %line.addr, align 8
  %call16 = call i64 @strlen(i8* %9) #6
  %10 = load i64, i64* %len, align 8
  %add = add i64 %10, 2
  %cmp17 = icmp ult i64 %call16, %add
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %11 = load i64, i64* %len, align 8
  %12 = load i8*, i8** %line.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %11
  store i8* %arrayidx, i8** %line.addr, align 8
  %13 = load i8*, i8** %line.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr21, i8** %line.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv22 = sext i8 %14 to i32
  %cmp23 = icmp ne i32 %conv22, 45
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.20
  %15 = load i8*, i8** %line.addr, align 8
  %16 = load i8, i8* %15, align 1
  %conv27 = sext i8 %16 to i32
  %cmp28 = icmp eq i32 %conv27, 45
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.26
  %17 = load i8*, i8** %boundary.addr, align 8
  %18 = load i8*, i8** %line.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.192, i32 0, i32 0), i8* %17, i8* %18)
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30, %if.then.25, %if.then.19, %if.then.14, %if.then.9, %if.then.3, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @messageAddLine(%struct.message*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.message* @do_multipart(%struct.message* %mainMessage, %struct.message** %messages, i32 %i, i32* %rc, %struct.mbox_ctx* %mctx, %struct.message* %messageIn, %struct.text** %tptr, i32 %recursion_level) #0 {
entry:
  %retval = alloca %struct.message*, align 8
  %mainMessage.addr = alloca %struct.message*, align 8
  %messages.addr = alloca %struct.message**, align 8
  %i.addr = alloca i32, align 4
  %rc.addr = alloca i32*, align 8
  %mctx.addr = alloca %struct.mbox_ctx*, align 8
  %messageIn.addr = alloca %struct.message*, align 8
  %tptr.addr = alloca %struct.text**, align 8
  %recursion_level.addr = alloca i32, align 4
  %addToText = alloca i8, align 1
  %dtype = alloca i8*, align 8
  %aMessage = alloca %struct.message*, align 8
  %doPhishingScan = alloca i32, align 4
  %cptr = alloca i8*, align 8
  %is_html = alloca i32, align 4
  %fb = alloca %struct.fileblob*, align 8
  store %struct.message* %mainMessage, %struct.message** %mainMessage.addr, align 8
  store %struct.message** %messages, %struct.message*** %messages.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32* %rc, i32** %rc.addr, align 8
  store %struct.mbox_ctx* %mctx, %struct.mbox_ctx** %mctx.addr, align 8
  store %struct.message* %messageIn, %struct.message** %messageIn.addr, align 8
  store %struct.text** %tptr, %struct.text*** %tptr.addr, align 8
  store i32 %recursion_level, i32* %recursion_level.addr, align 4
  store i8 0, i8* %addToText, align 1
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx = getelementptr inbounds %struct.message*, %struct.message** %1, i64 %idxprom
  %2 = load %struct.message*, %struct.message** %arrayidx, align 8
  store %struct.message* %2, %struct.message** %aMessage, align 8
  %3 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %3, i32 0, i32 4
  %4 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %4, i32 0, i32 3
  %5 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %dboptions = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %5, i32 0, i32 2
  %6 = load i32, i32* %dboptions, align 4
  %and = and i32 %6, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %7 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx1 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %7, i32 0, i32 4
  %8 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx1, align 8
  %dconf = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %8, i32 0, i32 9
  %9 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %phishing = getelementptr inbounds %struct.cli_dconf, %struct.cli_dconf* %9, i32 0, i32 6
  %10 = load i32, i32* %phishing, align 4
  %and2 = and i32 %10, 1
  %tobool3 = icmp ne i32 %and2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %11 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %doPhishingScan, align 4
  %12 = load %struct.message*, %struct.message** %aMessage, align 8
  %cmp = icmp eq %struct.message* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %13 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  store %struct.message* %13, %struct.message** %retval
  br label %return

if.end:                                           ; preds = %land.end
  %14 = load i32*, i32** %rc.addr, align 8
  %15 = load i32, i32* %14, align 4
  %cmp4 = icmp ne i32 %15, 1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %16 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  store %struct.message* %16, %struct.message** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %17 = load i32, i32* %i.addr, align 4
  %18 = load %struct.message*, %struct.message** %aMessage, align 8
  %call = call i32 @messageGetMimeType(%struct.message* %18)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.193, i32 0, i32 0), i32 %17, i32 %call)
  %19 = load %struct.message*, %struct.message** %aMessage, align 8
  %call7 = call i32 @messageGetMimeType(%struct.message* %19)
  switch i32 %call7, label %sw.default.127 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 7, label %sw.bb
    i32 0, label %sw.bb.8
    i32 6, label %sw.bb.38
    i32 4, label %sw.bb.87
    i32 5, label %sw.bb.109
  ]

sw.bb:                                            ; preds = %if.end.6, %if.end.6, %if.end.6, %if.end.6
  br label %sw.epilog.129

sw.bb.8:                                          ; preds = %if.end.6
  %20 = load i32, i32* %i.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.194, i32 0, i32 0), i32 %20)
  %21 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %tobool9 = icmp ne %struct.message* %21, null
  br i1 %tobool9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %sw.bb.8
  %22 = load %struct.message*, %struct.message** %aMessage, align 8
  %call11 = call %struct.text* @binhexBegin(%struct.message* %22)
  %tobool12 = icmp ne %struct.text* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.then.10
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.195, i32 0, i32 0))
  %23 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %24 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %call14 = call zeroext i1 @exportBinhexMessage(%struct.mbox_ctx* %23, %struct.message* %24)
  br i1 %call14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %25 = load i32*, i32** %rc.addr, align 8
  store i32 3, i32* %25, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.10
  %26 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %27 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp18 = icmp ne %struct.message* %26, %27
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  %28 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  call void @messageDestroy(%struct.message* %28)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  store %struct.message* null, %struct.message** %mainMessage.addr, align 8
  br label %if.end.33

if.else:                                          ; preds = %sw.bb.8
  %29 = load %struct.message*, %struct.message** %aMessage, align 8
  %tobool21 = icmp ne %struct.message* %29, null
  br i1 %tobool21, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %if.else
  %30 = load %struct.message*, %struct.message** %aMessage, align 8
  %call23 = call %struct.text* @binhexBegin(%struct.message* %30)
  %tobool24 = icmp ne %struct.text* %call23, null
  br i1 %tobool24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.then.22
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.196, i32 0, i32 0))
  %31 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %32 = load %struct.message*, %struct.message** %aMessage, align 8
  %call26 = call zeroext i1 @exportBinhexMessage(%struct.mbox_ctx* %31, %struct.message* %32)
  br i1 %call26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.25
  %33 = load i32*, i32** %rc.addr, align 8
  store i32 3, i32* %33, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.25
  %34 = load i32, i32* %i.addr, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.message*, %struct.message** %35, i64 %idxprom29
  %36 = load %struct.message*, %struct.message** %arrayidx30, align 8
  call void @messageReset(%struct.message* %36)
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.28, %if.then.22
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.20
  store i8 1, i8* %addToText, align 1
  %37 = load %struct.message*, %struct.message** %aMessage, align 8
  %call34 = call %struct.text* @messageGetBody(%struct.message* %37)
  %cmp35 = icmp eq %struct.text* %call34, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.197, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.33
  br label %sw.epilog.129

sw.bb.38:                                         ; preds = %if.end.6
  %38 = load %struct.message*, %struct.message** %aMessage, align 8
  %call39 = call i8* @messageGetDispositionType(%struct.message* %38)
  store i8* %call39, i8** %dtype, align 8
  %39 = load i8*, i8** %dtype, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.198, i32 0, i32 0), i8* %39)
  %40 = load i8*, i8** %dtype, align 8
  %call40 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.199, i32 0, i32 0)) #6
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %sw.bb.38
  br label %sw.epilog.129

if.end.43:                                        ; preds = %sw.bb.38
  %41 = load i8*, i8** %dtype, align 8
  %42 = load i8, i8* %41, align 1
  %conv = sext i8 %42 to i32
  %cmp44 = icmp eq i32 %conv, 0
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %43 = load i8*, i8** %dtype, align 8
  %call46 = call i32 @strcasecmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.200, i32 0, i32 0)) #6
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.86

if.then.49:                                       ; preds = %lor.lhs.false, %if.end.43
  %44 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %tobool50 = icmp ne %struct.message* %44, null
  br i1 %tobool50, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.then.49
  %45 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %46 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp51 = icmp ne %struct.message* %45, %46
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %land.lhs.true
  %47 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  call void @messageDestroy(%struct.message* %47)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %land.lhs.true, %if.then.49
  store %struct.message* null, %struct.message** %mainMessage.addr, align 8
  %48 = load %struct.message*, %struct.message** %aMessage, align 8
  %call55 = call i8* @messageGetMimeSubtype(%struct.message* %48)
  store i8* %call55, i8** %cptr, align 8
  %49 = load i8*, i8** %cptr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.201, i32 0, i32 0), i8* %49)
  %50 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %subtypeTable = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %50, i32 0, i32 3
  %51 = load %struct.table*, %struct.table** %subtypeTable, align 8
  %52 = load i8*, i8** %cptr, align 8
  %call56 = call i32 @tableFind(%struct.table* %51, i8* %52)
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %land.lhs.true.59, label %if.else.69

land.lhs.true.59:                                 ; preds = %if.end.54
  %53 = load %struct.message*, %struct.message** %aMessage, align 8
  %call60 = call i32 @messageGetEncoding(%struct.message* %53)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.63, label %if.else.69

if.then.63:                                       ; preds = %land.lhs.true.59
  %54 = load %struct.message*, %struct.message** %aMessage, align 8
  %call64 = call i32 @messageHasFilename(%struct.message* %54)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else.67, label %if.then.66

if.then.66:                                       ; preds = %if.then.63
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.202, i32 0, i32 0))
  store i8 1, i8* %addToText, align 1
  br label %if.end.68

if.else.67:                                       ; preds = %if.then.63
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.203, i32 0, i32 0))
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.85

if.else.69:                                       ; preds = %land.lhs.true.59, %if.end.54
  %55 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %subtypeTable70 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %55, i32 0, i32 3
  %56 = load %struct.table*, %struct.table** %subtypeTable70, align 8
  %57 = load i8*, i8** %cptr, align 8
  %call71 = call i32 @tableFind(%struct.table* %56, i8* %57)
  %cmp72 = icmp eq i32 %call71, 3
  %conv73 = zext i1 %cmp72 to i32
  store i32 %conv73, i32* %is_html, align 4
  %58 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx74 = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %58, i32 0, i32 4
  %59 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx74, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %59, i32 0, i32 5
  %60 = load i32, i32* %options, align 4
  %and75 = and i32 %60, 128
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.else.80

land.lhs.true.77:                                 ; preds = %if.else.69
  %61 = load i32, i32* %is_html, align 4
  %tobool78 = icmp ne i32 %61, 0
  br i1 %tobool78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %land.lhs.true.77
  %62 = load %struct.message*, %struct.message** %aMessage, align 8
  %63 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %64 = load i32*, i32** %rc.addr, align 8
  call void @checkURLs(%struct.message* %62, %struct.mbox_ctx* %63, i32* %64, i32 1)
  br label %if.end.84

if.else.80:                                       ; preds = %land.lhs.true.77, %if.else.69
  %65 = load i32, i32* %doPhishingScan, align 4
  %tobool81 = icmp ne i32 %65, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.else.80
  %66 = load %struct.message*, %struct.message** %aMessage, align 8
  %67 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %68 = load i32*, i32** %rc.addr, align 8
  %69 = load i32, i32* %is_html, align 4
  call void @checkURLs(%struct.message* %66, %struct.mbox_ctx* %67, i32* %68, i32 %69)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.else.80
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.79
  %70 = load %struct.message*, %struct.message** %aMessage, align 8
  call void @messageAddArgument(%struct.message* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.204, i32 0, i32 0))
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.68
  br label %sw.epilog.129

if.end.86:                                        ; preds = %lor.lhs.false
  %71 = load i8*, i8** %dtype, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.205, i32 0, i32 0), i8* %71)
  %72 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  store %struct.message* %72, %struct.message** %retval
  br label %return

sw.bb.87:                                         ; preds = %if.end.6
  %73 = load %struct.message*, %struct.message** %aMessage, align 8
  %call88 = call i32 @messageGetEncoding(%struct.message* %73)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.206, i32 0, i32 0), i32 %call88)
  %74 = load %struct.message*, %struct.message** %aMessage, align 8
  %call89 = call i32 @messageGetEncoding(%struct.message* %74)
  switch i32 %call89, label %sw.default [
    i32 0, label %sw.bb.90
    i32 3, label %sw.bb.90
    i32 4, label %sw.bb.90
  ]

sw.bb.90:                                         ; preds = %sw.bb.87, %sw.bb.87, %sw.bb.87
  %75 = load %struct.message*, %struct.message** %aMessage, align 8
  %call91 = call %struct.text* @encodingLine(%struct.message* %75)
  %cmp92 = icmp eq %struct.text* %call91, null
  br i1 %cmp92, label %if.then.94, label %if.end.99

if.then.94:                                       ; preds = %sw.bb.90
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.207, i32 0, i32 0))
  %76 = load i32, i32* %i.addr, align 4
  %idxprom95 = sext i32 %76 to i64
  %77 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx96 = getelementptr inbounds %struct.message*, %struct.message** %77, i64 %idxprom95
  %78 = load %struct.message*, %struct.message** %arrayidx96, align 8
  call void @messageDestroy(%struct.message* %78)
  %79 = load i32, i32* %i.addr, align 4
  %idxprom97 = sext i32 %79 to i64
  %80 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx98 = getelementptr inbounds %struct.message*, %struct.message** %80, i64 %idxprom97
  store %struct.message* null, %struct.message** %arrayidx98, align 8
  %81 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  store %struct.message* %81, %struct.message** %retval
  br label %return

if.end.99:                                        ; preds = %sw.bb.90
  br label %sw.default

sw.default:                                       ; preds = %sw.bb.87, %if.end.99
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.208, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %82 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %83 = load %struct.message*, %struct.message** %aMessage, align 8
  %call100 = call i32 @saveTextPart(%struct.mbox_ctx* %82, %struct.message* %83, i32 1)
  %cmp101 = icmp eq i32 %call100, 1
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %sw.epilog
  %84 = load i32*, i32** %rc.addr, align 8
  store i32 3, i32* %84, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %sw.epilog
  %85 = load i32, i32* %i.addr, align 4
  %idxprom105 = sext i32 %85 to i64
  %86 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct.message*, %struct.message** %86, i64 %idxprom105
  %87 = load %struct.message*, %struct.message** %arrayidx106, align 8
  call void @messageDestroy(%struct.message* %87)
  %88 = load i32, i32* %i.addr, align 4
  %idxprom107 = sext i32 %88 to i64
  %89 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx108 = getelementptr inbounds %struct.message*, %struct.message** %89, i64 %idxprom107
  store %struct.message* null, %struct.message** %arrayidx108, align 8
  %90 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  store %struct.message* %90, %struct.message** %retval
  br label %return

sw.bb.109:                                        ; preds = %if.end.6
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.209, i32 0, i32 0))
  %91 = load %struct.message*, %struct.message** %aMessage, align 8
  %tobool110 = icmp ne %struct.message* %91, null
  br i1 %tobool110, label %if.then.111, label %if.else.117

if.then.111:                                      ; preds = %sw.bb.109
  %92 = load %struct.message*, %struct.message** %aMessage, align 8
  %93 = load %struct.text**, %struct.text*** %tptr.addr, align 8
  %94 = load %struct.text*, %struct.text** %93, align 8
  %95 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %96 = load i32, i32* %recursion_level.addr, align 4
  %add = add i32 %96, 1
  %call112 = call i32 @parseEmailBody(%struct.message* %92, %struct.text* %94, %struct.mbox_ctx* %95, i32 %add)
  %97 = load i32*, i32** %rc.addr, align 8
  store i32 %call112, i32* %97, align 4
  %98 = load i32*, i32** %rc.addr, align 8
  %99 = load i32, i32* %98, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.210, i32 0, i32 0), i32 %99)
  %100 = load i32, i32* %i.addr, align 4
  %idxprom113 = sext i32 %100 to i64
  %101 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.message*, %struct.message** %101, i64 %idxprom113
  %102 = load %struct.message*, %struct.message** %arrayidx114, align 8
  call void @messageDestroy(%struct.message* %102)
  %103 = load i32, i32* %i.addr, align 4
  %idxprom115 = sext i32 %103 to i64
  %104 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx116 = getelementptr inbounds %struct.message*, %struct.message** %104, i64 %idxprom115
  store %struct.message* null, %struct.message** %arrayidx116, align 8
  br label %if.end.126

if.else.117:                                      ; preds = %sw.bb.109
  %105 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %106 = load i32, i32* %recursion_level.addr, align 4
  %add118 = add i32 %106, 1
  %call119 = call i32 @parseEmailBody(%struct.message* null, %struct.text* null, %struct.mbox_ctx* %105, i32 %add118)
  %107 = load i32*, i32** %rc.addr, align 8
  store i32 %call119, i32* %107, align 4
  %108 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %tobool120 = icmp ne %struct.message* %108, null
  br i1 %tobool120, label %land.lhs.true.121, label %if.end.125

land.lhs.true.121:                                ; preds = %if.else.117
  %109 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  %110 = load %struct.message*, %struct.message** %messageIn.addr, align 8
  %cmp122 = icmp ne %struct.message* %109, %110
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %land.lhs.true.121
  %111 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  call void @messageDestroy(%struct.message* %111)
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %land.lhs.true.121, %if.else.117
  store %struct.message* null, %struct.message** %mainMessage.addr, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.111
  %112 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  store %struct.message* %112, %struct.message** %retval
  br label %return

sw.default.127:                                   ; preds = %if.end.6
  %113 = load %struct.message*, %struct.message** %aMessage, align 8
  %call128 = call i32 @messageGetMimeType(%struct.message* %113)
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.211, i32 0, i32 0), i32 %call128)
  br label %sw.epilog.129

sw.epilog.129:                                    ; preds = %sw.default.127, %if.end.85, %if.then.42, %if.end.37, %sw.bb
  %114 = load i32*, i32** %rc.addr, align 8
  %115 = load i32, i32* %114, align 4
  %cmp130 = icmp ne i32 %115, 3
  br i1 %cmp130, label %if.then.132, label %if.end.156

if.then.132:                                      ; preds = %sw.epilog.129
  %116 = load i8, i8* %addToText, align 1
  %tobool133 = trunc i8 %116 to i1
  br i1 %tobool133, label %if.then.134, label %if.else.141

if.then.134:                                      ; preds = %if.then.132
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.212, i32 0, i32 0))
  %117 = load %struct.message*, %struct.message** %aMessage, align 8
  %call135 = call %struct.text* @messageGetBody(%struct.message* %117)
  %tobool136 = icmp ne %struct.text* %call135, null
  br i1 %tobool136, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %if.then.134
  %118 = load %struct.text**, %struct.text*** %tptr.addr, align 8
  %119 = load %struct.text*, %struct.text** %118, align 8
  %120 = load %struct.message*, %struct.message** %aMessage, align 8
  %call138 = call %struct.text* @messageGetBody(%struct.message* %120)
  %call139 = call %struct.text* @textMove(%struct.text* %119, %struct.text* %call138)
  %121 = load %struct.text**, %struct.text*** %tptr.addr, align 8
  store %struct.text* %call139, %struct.text** %121, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %if.then.134
  br label %if.end.151

if.else.141:                                      ; preds = %if.then.132
  %122 = load %struct.message*, %struct.message** %aMessage, align 8
  %123 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %123, i32 0, i32 0
  %124 = load i8*, i8** %dir, align 8
  %call142 = call %struct.fileblob* @messageToFileblob(%struct.message* %122, i8* %124, i32 1)
  store %struct.fileblob* %call142, %struct.fileblob** %fb, align 8
  %125 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %tobool143 = icmp ne %struct.fileblob* %125, null
  br i1 %tobool143, label %if.then.144, label %if.end.150

if.then.144:                                      ; preds = %if.else.141
  %126 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call145 = call i32 @fileblobScanAndDestroy(%struct.fileblob* %126)
  %cmp146 = icmp eq i32 %call145, 1
  br i1 %cmp146, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.then.144
  %127 = load i32*, i32** %rc.addr, align 8
  store i32 3, i32* %127, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.148, %if.then.144
  %128 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %128, i32 0, i32 1
  %129 = load i32, i32* %files, align 4
  %inc = add i32 %129, 1
  store i32 %inc, i32* %files, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.else.141
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.140
  %130 = load %struct.message*, %struct.message** %aMessage, align 8
  %call152 = call i32 @messageContainsVirus(%struct.message* %130)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.151
  %131 = load i32*, i32** %rc.addr, align 8
  store i32 3, i32* %131, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.end.151
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %sw.epilog.129
  %132 = load %struct.message*, %struct.message** %aMessage, align 8
  call void @messageDestroy(%struct.message* %132)
  %133 = load i32, i32* %i.addr, align 4
  %idxprom157 = sext i32 %133 to i64
  %134 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx158 = getelementptr inbounds %struct.message*, %struct.message** %134, i64 %idxprom157
  store %struct.message* null, %struct.message** %arrayidx158, align 8
  %135 = load %struct.message*, %struct.message** %mainMessage.addr, align 8
  store %struct.message* %135, %struct.message** %retval
  br label %return

return:                                           ; preds = %if.end.156, %if.end.126, %if.end.104, %if.then.94, %if.end.86, %if.then.5, %if.then
  %136 = load %struct.message*, %struct.message** %retval
  ret %struct.message* %136
}

declare void @textDestroy(%struct.text*) #1

; Function Attrs: nounwind uwtable
define internal i32 @getTextPart(%struct.message** %messages, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %messages.addr = alloca %struct.message**, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %textpart = alloca i32, align 4
  store %struct.message** %messages, %struct.message*** %messages.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 -1, i32* %textpart, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx = getelementptr inbounds %struct.message*, %struct.message** %3, i64 %2
  %4 = load %struct.message*, %struct.message** %arrayidx, align 8
  %tobool = icmp ne %struct.message* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %6 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.message*, %struct.message** %6, i64 %5
  %7 = load %struct.message*, %struct.message** %arrayidx1, align 8
  %call = call i32 @messageGetMimeType(%struct.message* %7)
  %cmp2 = icmp eq i32 %call, 6
  br i1 %cmp2, label %if.then, label %if.end.9

if.then:                                          ; preds = %land.lhs.true
  %8 = load i64, i64* %i, align 8
  %9 = load %struct.message**, %struct.message*** %messages.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.message*, %struct.message** %9, i64 %8
  %10 = load %struct.message*, %struct.message** %arrayidx3, align 8
  %call4 = call i8* @messageGetMimeSubtype(%struct.message* %10)
  %call5 = call i32 @strcasecmp(i8* %call4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %11 = load i64, i64* %i, align 8
  %conv = trunc i64 %11 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load i64, i64* %i, align 8
  %conv8 = trunc i64 %12 to i32
  store i32 %conv8, i32* %textpart, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %13 = load i64, i64* %i, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %textpart, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare %struct.fileblob* @fileblobCreate() #1

declare void @fileblobSetFilename(%struct.fileblob*, i8*, i8*) #1

declare void @fileblobSetCTX(%struct.fileblob*, %struct.cli_ctx*) #1

declare %struct.fileblob* @textToFileblob(%struct.text*, %struct.fileblob*, i32) #1

declare void @fileblobDestroy(%struct.fileblob*) #1

; Function Attrs: nounwind uwtable
define internal i32 @rfc1341(%struct.message* %m, i8* %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %dir.addr = alloca i8*, align 8
  %fb = alloca %struct.fileblob*, align 8
  %arg = alloca i8*, align 8
  %id = alloca i8*, align 8
  %number = alloca i8*, align 8
  %total = alloca i8*, align 8
  %oldfilename = alloca i8*, align 8
  %tmpdir = alloca i8*, align 8
  %pdir = alloca [257 x i8], align 16
  %statb = alloca %struct.stat, align 8
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  %dd = alloca %struct.__dirstream*, align 8
  %fout = alloca %struct._IO_FILE*, align 8
  %outname = alloca [257 x i8], align 16
  %now = alloca i64, align 8
  %filename = alloca [257 x i8], align 16
  %dent = alloca %struct.dirent*, align 8
  %fin = alloca %struct._IO_FILE*, align 8
  %buffer = alloca [8192 x i8], align 16
  %fullname = alloca [257 x i8], align 16
  %nblanks = alloca i32, align 4
  %statb88 = alloca %struct.stat, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %call = call i8* @messageFindArgument(%struct.message* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.213, i32 0, i32 0))
  store i8* %call, i8** %id, align 8
  %1 = load i8*, i8** %id, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.214, i32 0, i32 0)) #5
  store i8* %call1, i8** %tmpdir, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  %call4 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.215, i32 0, i32 0)) #5
  store i8* %call4, i8** %tmpdir, align 8
  %cmp5 = icmp eq i8* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.then.3
  %call7 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.216, i32 0, i32 0)) #5
  store i8* %call7, i8** %tmpdir, align 8
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.217, i32 0, i32 0), i8** %tmpdir, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %pdir, i32 0, i32 0
  %2 = load i8*, i8** %tmpdir, align 8
  %call13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.218, i32 0, i32 0), i8* %2) #5
  %arraydecay14 = getelementptr inbounds [257 x i8], [257 x i8]* %pdir, i32 0, i32 0
  %call15 = call i32 @mkdir(i8* %arraydecay14, i32 448) #5
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.12
  %call17 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call17, align 4
  %cmp18 = icmp ne i32 %3, 17
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %land.lhs.true
  %arraydecay20 = getelementptr inbounds [257 x i8], [257 x i8]* %pdir, i32 0, i32 0
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.219, i32 0, i32 0), i8* %arraydecay20)
  %4 = load i8*, i8** %id, align 8
  call void @free(i8* %4) #5
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end.12
  %call21 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call21, align 4
  %cmp22 = icmp eq i32 %5, 17
  br i1 %cmp22, label %if.then.23, label %if.end.37

if.then.23:                                       ; preds = %if.else
  %arraydecay24 = getelementptr inbounds [257 x i8], [257 x i8]* %pdir, i32 0, i32 0
  %call25 = call i32 @stat(i8* %arraydecay24, %struct.stat* %statb) #5
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.31

if.then.27:                                       ; preds = %if.then.23
  %arraydecay28 = getelementptr inbounds [257 x i8], [257 x i8]* %pdir, i32 0, i32 0
  %call29 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call29, align 4
  %call30 = call i8* @strerror(i32 %6) #5
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.220, i32 0, i32 0), i8* %arraydecay28, i8* %call30)
  %7 = load i8*, i8** %id, align 8
  call void @free(i8* %7) #5
  store i32 -1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %if.then.23
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 3
  %8 = load i32, i32* %st_mode, align 4
  %and = and i32 %8, 63
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.31
  %arraydecay33 = getelementptr inbounds [257 x i8], [257 x i8]* %pdir, i32 0, i32 0
  %st_mode34 = getelementptr inbounds %struct.stat, %struct.stat* %statb, i32 0, i32 3
  %9 = load i32, i32* %st_mode34, align 4
  %and35 = and i32 %9, 511
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.221, i32 0, i32 0), i8* %arraydecay33, i32 %and35)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %10 = load %struct.message*, %struct.message** %m.addr, align 8
  %call39 = call i8* @messageFindArgument(%struct.message* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.222, i32 0, i32 0))
  store i8* %call39, i8** %number, align 8
  %11 = load i8*, i8** %number, align 8
  %cmp40 = icmp eq i8* %11, null
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.38
  %12 = load i8*, i8** %id, align 8
  call void @free(i8* %12) #5
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.38
  %13 = load %struct.message*, %struct.message** %m.addr, align 8
  %call43 = call i8* @messageGetFilename(%struct.message* %13)
  store i8* %call43, i8** %oldfilename, align 8
  %14 = load i8*, i8** %id, align 8
  %call44 = call i64 @strlen(i8* %14) #6
  %add = add i64 10, %call44
  %15 = load i8*, i8** %number, align 8
  %call45 = call i64 @strlen(i8* %15) #6
  %add46 = add i64 %add, %call45
  %call47 = call i8* @cli_malloc(i64 %add46)
  store i8* %call47, i8** %arg, align 8
  %16 = load i8*, i8** %arg, align 8
  %tobool48 = icmp ne i8* %16, null
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.42
  %17 = load i8*, i8** %arg, align 8
  %18 = load i8*, i8** %id, align 8
  %19 = load i8*, i8** %number, align 8
  %call50 = call i32 (i8*, i8*, ...) @sprintf(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.223, i32 0, i32 0), i8* %18, i8* %19) #5
  %20 = load %struct.message*, %struct.message** %m.addr, align 8
  %21 = load i8*, i8** %arg, align 8
  call void @messageAddArgument(%struct.message* %20, i8* %21)
  %22 = load i8*, i8** %arg, align 8
  call void @free(i8* %22) #5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.42
  %23 = load i8*, i8** %oldfilename, align 8
  %tobool52 = icmp ne i8* %23, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  %24 = load i8*, i8** %oldfilename, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.224, i32 0, i32 0), i8* %24)
  %25 = load i8*, i8** %oldfilename, align 8
  call void @free(i8* %25) #5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.51
  %26 = load %struct.message*, %struct.message** %m.addr, align 8
  %arraydecay55 = getelementptr inbounds [257 x i8], [257 x i8]* %pdir, i32 0, i32 0
  %call56 = call %struct.fileblob* @messageToFileblob(%struct.message* %26, i8* %arraydecay55, i32 0)
  store %struct.fileblob* %call56, %struct.fileblob** %fb, align 8
  %cmp57 = icmp eq %struct.fileblob* %call56, null
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.54
  %27 = load i8*, i8** %id, align 8
  call void @free(i8* %27) #5
  %28 = load i8*, i8** %number, align 8
  call void @free(i8* %28) #5
  store i32 -1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.54
  %29 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  call void @fileblobDestroy(%struct.fileblob* %29)
  %30 = load %struct.message*, %struct.message** %m.addr, align 8
  %call60 = call i8* @messageFindArgument(%struct.message* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i32 0, i32 0))
  store i8* %call60, i8** %total, align 8
  %31 = load i8*, i8** %id, align 8
  %32 = load i8*, i8** %number, align 8
  %33 = load i8*, i8** %total, align 8
  %tobool61 = icmp ne i8* %33, null
  br i1 %tobool61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.59
  %34 = load i8*, i8** %total, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.59
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %34, %cond.true ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.227, i32 0, i32 0), %cond.false ]
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.226, i32 0, i32 0), i8* %31, i8* %32, i8* %cond)
  %35 = load i8*, i8** %total, align 8
  %tobool62 = icmp ne i8* %35, null
  br i1 %tobool62, label %if.then.63, label %if.end.161

if.then.63:                                       ; preds = %cond.end
  %36 = load i8*, i8** %number, align 8
  %call64 = call i32 @atoi(i8* %36) #6
  store i32 %call64, i32* %n, align 4
  %37 = load i8*, i8** %total, align 8
  %call65 = call i32 @atoi(i8* %37) #6
  store i32 %call65, i32* %t, align 4
  store %struct.__dirstream* null, %struct.__dirstream** %dd, align 8
  %38 = load i8*, i8** %total, align 8
  call void @free(i8* %38) #5
  %39 = load i32, i32* %n, align 4
  %40 = load i32, i32* %t, align 4
  %cmp66 = icmp eq i32 %39, %40
  br i1 %cmp66, label %land.lhs.true.67, label %if.end.160

land.lhs.true.67:                                 ; preds = %if.then.63
  %arraydecay68 = getelementptr inbounds [257 x i8], [257 x i8]* %pdir, i32 0, i32 0
  %call69 = call %struct.__dirstream* @opendir(i8* %arraydecay68)
  store %struct.__dirstream* %call69, %struct.__dirstream** %dd, align 8
  %cmp70 = icmp ne %struct.__dirstream* %call69, null
  br i1 %cmp70, label %if.then.71, label %if.end.160

if.then.71:                                       ; preds = %land.lhs.true.67
  %41 = load i8*, i8** %id, align 8
  call void @sanitiseName(i8* %41)
  %arraydecay72 = getelementptr inbounds [257 x i8], [257 x i8]* %outname, i32 0, i32 0
  %42 = load i8*, i8** %dir.addr, align 8
  %43 = load i8*, i8** %id, align 8
  %call73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay72, i64 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0), i8* %42, i8* %43) #5
  %arraydecay74 = getelementptr inbounds [257 x i8], [257 x i8]* %outname, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.228, i32 0, i32 0), i8* %arraydecay74)
  %arraydecay75 = getelementptr inbounds [257 x i8], [257 x i8]* %outname, i32 0, i32 0
  %call76 = call %struct._IO_FILE* @fopen(i8* %arraydecay75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0))
  store %struct._IO_FILE* %call76, %struct._IO_FILE** %fout, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %cmp77 = icmp eq %struct._IO_FILE* %44, null
  br i1 %cmp77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.then.71
  %arraydecay79 = getelementptr inbounds [257 x i8], [257 x i8]* %outname, i32 0, i32 0
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.229, i32 0, i32 0), i8* %arraydecay79)
  %45 = load i8*, i8** %id, align 8
  call void @free(i8* %45) #5
  %46 = load i8*, i8** %number, align 8
  call void @free(i8* %46) #5
  %47 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call80 = call i32 @closedir(%struct.__dirstream* %47)
  store i32 -1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.then.71
  %call82 = call i64 @time(i64* %now) #5
  store i32 1, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.81
  %48 = load i32, i32* %n, align 4
  %49 = load i32, i32* %t, align 4
  %cmp83 = icmp sle i32 %48, %49
  br i1 %cmp83, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay84 = getelementptr inbounds [257 x i8], [257 x i8]* %filename, i32 0, i32 0
  %50 = load i8*, i8** %id, align 8
  %51 = load i32, i32* %n, align 4
  %call85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay84, i64 257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i32 0, i32 0), i8* %50, i32 %51) #5
  br label %while.cond

while.cond:                                       ; preds = %if.end.120, %if.then.110, %if.then.105, %if.then.90, %for.body
  %52 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call86 = call %struct.dirent* @readdir(%struct.__dirstream* %52)
  store %struct.dirent* %call86, %struct.dirent** %dent, align 8
  %tobool87 = icmp ne %struct.dirent* %call86, null
  br i1 %tobool87, label %while.body, label %while.end.156

while.body:                                       ; preds = %while.cond
  %53 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_ino = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %54 = load i64, i64* %d_ino, align 8
  %cmp89 = icmp eq i64 %54, 0
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %while.body
  br label %while.cond

if.end.91:                                        ; preds = %while.body
  %arraydecay92 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %arraydecay93 = getelementptr inbounds [257 x i8], [257 x i8]* %pdir, i32 0, i32 0
  %55 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 4
  %arraydecay94 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call95 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay92, i64 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0), i8* %arraydecay93, i8* %arraydecay94) #5
  %arraydecay96 = getelementptr inbounds [257 x i8], [257 x i8]* %filename, i32 0, i32 0
  %56 = load %struct.dirent*, %struct.dirent** %dent, align 8
  %d_name97 = getelementptr inbounds %struct.dirent, %struct.dirent* %56, i32 0, i32 4
  %arraydecay98 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name97, i32 0, i32 0
  %arraydecay99 = getelementptr inbounds [257 x i8], [257 x i8]* %filename, i32 0, i32 0
  %call100 = call i64 @strlen(i8* %arraydecay99) #6
  %call101 = call i32 @strncmp(i8* %arraydecay96, i8* %arraydecay98, i64 %call100) #6
  %cmp102 = icmp ne i32 %call101, 0
  br i1 %cmp102, label %if.then.103, label %if.end.121

if.then.103:                                      ; preds = %if.end.91
  %57 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool104 = icmp ne i8 %57, 0
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %if.then.103
  br label %while.cond

if.end.106:                                       ; preds = %if.then.103
  %arraydecay107 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call108 = call i32 @stat(i8* %arraydecay107, %struct.stat* %statb88) #5
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %if.end.106
  br label %while.cond

if.end.111:                                       ; preds = %if.end.106
  %58 = load i64, i64* %now, align 8
  %st_mtim = getelementptr inbounds %struct.stat, %struct.stat* %statb88, i32 0, i32 12
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %st_mtim, i32 0, i32 0
  %59 = load i64, i64* %tv_sec, align 8
  %sub = sub nsw i64 %58, %59
  %cmp112 = icmp sgt i64 %sub, 604800
  br i1 %cmp112, label %if.then.113, label %if.end.120

if.then.113:                                      ; preds = %if.end.111
  %arraydecay114 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call115 = call i32 @unlink(i8* %arraydecay114) #5
  %cmp116 = icmp sge i32 %call115, 0
  br i1 %cmp116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.then.113
  %arraydecay118 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.231, i32 0, i32 0), i8* %arraydecay118)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.then.113
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.111
  br label %while.cond

if.end.121:                                       ; preds = %if.end.91
  %arraydecay122 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call123 = call %struct._IO_FILE* @fopen(i8* %arraydecay122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call123, %struct._IO_FILE** %fin, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %cmp124 = icmp eq %struct._IO_FILE* %60, null
  br i1 %cmp124, label %if.then.125, label %if.end.131

if.then.125:                                      ; preds = %if.end.121
  %arraydecay126 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.232, i32 0, i32 0), i8* %arraydecay126)
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call127 = call i32 @fclose(%struct._IO_FILE* %61)
  %arraydecay128 = getelementptr inbounds [257 x i8], [257 x i8]* %outname, i32 0, i32 0
  %call129 = call i32 @unlink(i8* %arraydecay128) #5
  %62 = load i8*, i8** %id, align 8
  call void @free(i8* %62) #5
  %63 = load i8*, i8** %number, align 8
  call void @free(i8* %63) #5
  %64 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call130 = call i32 @closedir(%struct.__dirstream* %64)
  store i32 -1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.121
  store i32 0, i32* %nblanks, align 4
  br label %while.cond.132

while.cond.132:                                   ; preds = %if.end.149, %if.end.131
  %arraydecay133 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call134 = call i8* @fgets(i8* %arraydecay133, i32 8191, %struct._IO_FILE* %65)
  %cmp135 = icmp ne i8* %call134, null
  br i1 %cmp135, label %while.body.136, label %while.end

while.body.136:                                   ; preds = %while.cond.132
  %arrayidx = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i64 0
  %66 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %66 to i32
  %cmp137 = icmp eq i32 %conv, 10
  br i1 %cmp137, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %while.body.136
  %67 = load i32, i32* %nblanks, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %nblanks, align 4
  br label %if.end.149

if.else.140:                                      ; preds = %while.body.136
  %68 = load i32, i32* %nblanks, align 4
  %tobool141 = icmp ne i32 %68, 0
  br i1 %tobool141, label %if.then.142, label %if.end.146

if.then.142:                                      ; preds = %if.else.140
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.142
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call143 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %69)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %70 = load i32, i32* %nblanks, align 4
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* %nblanks, align 4
  %cmp144 = icmp sgt i32 %dec, 0
  br i1 %cmp144, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.146

if.end.146:                                       ; preds = %do.end, %if.else.140
  %arraydecay147 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call148 = call i32 @fputs(i8* %arraydecay147, %struct._IO_FILE* %71)
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.146, %if.then.139
  br label %while.cond.132

while.end:                                        ; preds = %while.cond.132
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fin, align 8
  %call150 = call i32 @fclose(%struct._IO_FILE* %72)
  %73 = load i8, i8* @cli_leavetemps_flag, align 1
  %tobool151 = icmp ne i8 %73, 0
  br i1 %tobool151, label %if.end.155, label %if.then.152

if.then.152:                                      ; preds = %while.end
  %arraydecay153 = getelementptr inbounds [257 x i8], [257 x i8]* %fullname, i32 0, i32 0
  %call154 = call i32 @unlink(i8* %arraydecay153) #5
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.152, %while.end
  br label %while.end.156

while.end.156:                                    ; preds = %if.end.155, %while.cond
  %74 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  call void @rewinddir(%struct.__dirstream* %74) #5
  br label %for.inc

for.inc:                                          ; preds = %while.end.156
  %75 = load i32, i32* %n, align 4
  %inc157 = add nsw i32 %75, 1
  store i32 %inc157, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct.__dirstream*, %struct.__dirstream** %dd, align 8
  %call158 = call i32 @closedir(%struct.__dirstream* %76)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fout, align 8
  %call159 = call i32 @fclose(%struct._IO_FILE* %77)
  br label %if.end.160

if.end.160:                                       ; preds = %for.end, %land.lhs.true.67, %if.then.63
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %cond.end
  %78 = load i8*, i8** %number, align 8
  call void @free(i8* %78) #5
  %79 = load i8*, i8** %id, align 8
  call void @free(i8* %79) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.161, %if.then.125, %if.then.78, %if.then.58, %if.then.41, %if.then.27, %if.then.19, %if.then
  %80 = load i32, i32* %retval
  ret i32 %80
}

declare %struct.fileblob* @messageToFileblob(%struct.message*, i8*, i32) #1

declare i32 @fileblobScanAndDestroy(%struct.fileblob*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @isBounceStart(i8* %line) #0 {
entry:
  %retval = alloca i1, align 1
  %line.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %numSpaces = alloca i32, align 4
  %numDigits = alloca i32, align 4
  store i8* %line, i8** %line.addr, align 8
  %0 = load i8*, i8** %line.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i8*, i8** %line.addr, align 8
  %call = call i64 @strlen(i8* %3) #6
  store i64 %call, i64* %len, align 8
  %4 = load i64, i64* %len, align 8
  %cmp5 = icmp ult i64 %4, 6
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %5 = load i64, i64* %len, align 8
  %cmp7 = icmp uge i64 %5, 72
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.4
  store i1 false, i1* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %6 = load i8*, i8** %line.addr, align 8
  %call11 = call i32 @memcmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 5) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %if.end.10
  %7 = load i8*, i8** %line.addr, align 8
  %call15 = call i32 @memcmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.233, i32 0, i32 0), i64 6) #6
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.42

if.then.18:                                       ; preds = %lor.lhs.false.14, %if.end.10
  store i32 0, i32* %numSpaces, align 4
  store i32 0, i32* %numDigits, align 4
  %8 = load i8*, i8** %line.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 4
  store i8* %add.ptr, i8** %line.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.18
  %9 = load i8*, i8** %line.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv19 = sext i8 %10 to i32
  %cmp20 = icmp eq i32 %conv19, 32
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  %11 = load i32, i32* %numSpaces, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %numSpaces, align 4
  br label %if.end.30

if.else:                                          ; preds = %do.body
  %12 = load i8*, i8** %line.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv23 = sext i8 %13 to i32
  %and = and i32 %conv23, 255
  %idxprom = sext i32 %and to i64
  %call24 = call i16** @__ctype_b_loc() #7
  %14 = load i16*, i16** %call24, align 8
  %arrayidx = getelementptr inbounds i16, i16* %14, i64 %idxprom
  %15 = load i16, i16* %arrayidx, align 2
  %conv25 = zext i16 %15 to i32
  %and26 = and i32 %conv25, 2048
  %tobool = icmp ne i32 %and26, 0
  br i1 %tobool, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.else
  %16 = load i32, i32* %numDigits, align 4
  %inc28 = add nsw i32 %16, 1
  store i32 %inc28, i32* %numDigits, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.22
  br label %do.cond

do.cond:                                          ; preds = %if.end.30
  %17 = load i8*, i8** %line.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %line.addr, align 8
  %18 = load i8, i8* %incdec.ptr, align 1
  %conv31 = sext i8 %18 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %numSpaces, align 4
  %cmp34 = icmp slt i32 %19, 6
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.end
  store i1 false, i1* %retval
  br label %return

if.end.37:                                        ; preds = %do.end
  %20 = load i32, i32* %numDigits, align 4
  %cmp38 = icmp slt i32 %20, 11
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  store i1 false, i1* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  store i1 true, i1* %retval
  br label %return

if.end.42:                                        ; preds = %lor.lhs.false.14
  %21 = load i8*, i8** %line.addr, align 8
  %22 = load i64, i64* %len, align 8
  %call43 = call i32 @cli_filetype(i8* %21, i64 %22)
  %cmp44 = icmp eq i32 %call43, 529
  store i1 %cmp44, i1* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.end.41, %if.then.40, %if.then.36, %if.then.9, %if.then.3, %if.then
  %23 = load i1, i1* %retval
  ret i1 %23
}

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i8* @strcasestr(i8*, i8*) #2

declare i32 @fileblobAddData(%struct.fileblob*, i8*, i64) #1

declare i32 @fileblobInfected(%struct.fileblob*) #1

declare %struct.text* @bounceBegin(%struct.message*) #1

; Function Attrs: nounwind uwtable
define internal i32 @exportBounceMessage(%struct.mbox_ctx* %mctx, %struct.text* %start) #0 {
entry:
  %mctx.addr = alloca %struct.mbox_ctx*, align 8
  %start.addr = alloca %struct.text*, align 8
  %rc = alloca i32, align 4
  %t = alloca %struct.text*, align 8
  %fb = alloca %struct.fileblob*, align 8
  %txt = alloca i8*, align 8
  %cmd = alloca [1001 x i8], align 16
  store %struct.mbox_ctx* %mctx, %struct.mbox_ctx** %mctx.addr, align 8
  store %struct.text* %start, %struct.text** %start.addr, align 8
  store i32 0, i32* %rc, align 4
  %0 = load %struct.text*, %struct.text** %start.addr, align 8
  store %struct.text* %0, %struct.text** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.text*, %struct.text** %t, align 8
  %tobool = icmp ne %struct.text* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.text*, %struct.text** %t, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %2, i32 0, i32 0
  %3 = load i8*, i8** %t_line, align 8
  %call = call i8* @lineGetData(i8* %3)
  store i8* %call, i8** %txt, align 8
  %4 = load i8*, i8** %txt, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load i8*, i8** %txt, align 8
  %arraydecay = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %call1 = call i8* @cli_strtokbuf(i8* %5, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay)
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %for.inc

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %rfc821Table = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %6, i32 0, i32 2
  %7 = load %struct.table*, %struct.table** %rfc821Table, align 8
  %arraydecay5 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %call6 = call i32 @tableFind(%struct.table* %7, i8* %arraydecay5)
  switch i32 %call6, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.13
    i32 1, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %if.end.4
  %8 = load i8*, i8** %txt, align 8
  %call7 = call i8* @strstr(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.234, i32 0, i32 0)) #6
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %sw.bb
  %9 = load i8*, i8** %txt, align 8
  %call9 = call i8* @strstr(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.235, i32 0, i32 0)) #6
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  br label %sw.epilog

if.end.12:                                        ; preds = %land.lhs.true, %sw.bb
  br label %for.inc

sw.bb.13:                                         ; preds = %if.end.4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.4
  %10 = load i8*, i8** %txt, align 8
  %call15 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0)) #6
  %cmp16 = icmp ne i8* %call15, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.14
  store %struct.text* null, %struct.text** %t, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %sw.bb.14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  %arraydecay19 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %call20 = call i32 @strcasecmp(i8* %arraydecay19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0)) #6
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %sw.default
  %11 = load %struct.text*, %struct.text** %t, align 8
  store %struct.text* %11, %struct.text** %start.addr, align 8
  br label %if.end.28

if.else:                                          ; preds = %sw.default
  %arraydecay23 = getelementptr inbounds [1001 x i8], [1001 x i8]* %cmd, i32 0, i32 0
  %call24 = call i32 @strcasecmp(i8* %arraydecay23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.else
  %12 = load %struct.text*, %struct.text** %t, align 8
  store %struct.text* %12, %struct.text** %start.addr, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.22
  br label %for.inc

sw.epilog:                                        ; preds = %if.end.18, %sw.bb.13, %if.then.11
  br label %for.end

for.inc:                                          ; preds = %if.end.28, %if.end.12, %if.then.3, %if.then
  %13 = load %struct.text*, %struct.text** %t, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %13, i32 0, i32 1
  %14 = load %struct.text*, %struct.text** %t_next, align 8
  store %struct.text* %14, %struct.text** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %sw.epilog, %for.cond
  %15 = load %struct.text*, %struct.text** %t, align 8
  %tobool29 = icmp ne %struct.text* %15, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.40

land.lhs.true.30:                                 ; preds = %for.end
  %call31 = call %struct.fileblob* @fileblobCreate()
  store %struct.fileblob* %call31, %struct.fileblob** %fb, align 8
  %cmp32 = icmp ne %struct.fileblob* %call31, null
  br i1 %cmp32, label %if.then.33, label %if.else.40

if.then.33:                                       ; preds = %land.lhs.true.30
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.236, i32 0, i32 0))
  %16 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %17 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %17, i32 0, i32 0
  %18 = load i8*, i8** %dir, align 8
  call void @fileblobSetFilename(%struct.fileblob* %16, i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.137, i32 0, i32 0))
  %19 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %20 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %ctx = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %20, i32 0, i32 4
  %21 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  call void @fileblobSetCTX(%struct.fileblob* %19, %struct.cli_ctx* %21)
  %22 = load %struct.text*, %struct.text** %start.addr, align 8
  %23 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call34 = call %struct.fileblob* @textToFileblob(%struct.text* %22, %struct.fileblob* %23, i32 1)
  %cmp35 = icmp eq %struct.fileblob* %call34, null
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.then.33
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.237, i32 0, i32 0))
  %24 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  call void @fileblobDestroy(%struct.fileblob* %24)
  br label %if.end.39

if.else.37:                                       ; preds = %if.then.33
  %25 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call38 = call i32 @fileblobScanAndDestroy(%struct.fileblob* %25)
  store i32 %call38, i32* %rc, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.36
  %26 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %26, i32 0, i32 1
  %27 = load i32, i32* %files, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %files, align 4
  br label %if.end.41

if.else.40:                                       ; preds = %land.lhs.true.30, %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.238, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.end.39
  %28 = load i32, i32* %rc, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @saveTextPart(%struct.mbox_ctx* %mctx, %struct.message* %m, i32 %destroy_text) #0 {
entry:
  %retval = alloca i32, align 4
  %mctx.addr = alloca %struct.mbox_ctx*, align 8
  %m.addr = alloca %struct.message*, align 8
  %destroy_text.addr = alloca i32, align 4
  %fb = alloca %struct.fileblob*, align 8
  store %struct.mbox_ctx* %mctx, %struct.mbox_ctx** %mctx.addr, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i32 %destroy_text, i32* %destroy_text.addr, align 4
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  call void @messageAddArgument(%struct.message* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.239, i32 0, i32 0))
  %1 = load %struct.message*, %struct.message** %m.addr, align 8
  %2 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %dir = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %2, i32 0, i32 0
  %3 = load i8*, i8** %dir, align 8
  %4 = load i32, i32* %destroy_text.addr, align 4
  %call = call %struct.fileblob* @messageToFileblob(%struct.message* %1, i8* %3, i32 %4)
  store %struct.fileblob* %call, %struct.fileblob** %fb, align 8
  %cmp = icmp ne %struct.fileblob* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.240, i32 0, i32 0))
  %5 = load %struct.mbox_ctx*, %struct.mbox_ctx** %mctx.addr, align 8
  %files = getelementptr inbounds %struct.mbox_ctx, %struct.mbox_ctx* %5, i32 0, i32 1
  %6 = load i32, i32* %files, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %files, align 4
  %7 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call1 = call i32 @fileblobScanAndDestroy(%struct.fileblob* %7)
  store i32 %call1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 -112, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct.blob* @getHrefs(%struct.message* %m, %struct.tag_arguments_tag* %hrefs) #0 {
entry:
  %retval = alloca %struct.blob*, align 8
  %m.addr = alloca %struct.message*, align 8
  %hrefs.addr = alloca %struct.tag_arguments_tag*, align 8
  %b = alloca %struct.blob*, align 8
  %len = alloca i64, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store %struct.tag_arguments_tag* %hrefs, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %0 = load %struct.message*, %struct.message** %m.addr, align 8
  %call = call %struct.blob* @messageToBlob(%struct.message* %0, i32 0)
  store %struct.blob* %call, %struct.blob** %b, align 8
  %1 = load %struct.blob*, %struct.blob** %b, align 8
  %cmp = icmp eq %struct.blob* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.blob* null, %struct.blob** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.blob*, %struct.blob** %b, align 8
  %call1 = call i64 @blobGetDataSize(%struct.blob* %2)
  store i64 %call1, i64* %len, align 8
  %3 = load i64, i64* %len, align 8
  %cmp2 = icmp eq i64 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.blob*, %struct.blob** %b, align 8
  call void @blobDestroy(%struct.blob* %4)
  store %struct.blob* null, %struct.blob** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i64, i64* %len, align 8
  %cmp5 = icmp ugt i64 %5, 102400
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.145, i32 0, i32 0))
  %6 = load %struct.blob*, %struct.blob** %b, align 8
  call void @blobDestroy(%struct.blob* %6)
  store %struct.blob* null, %struct.blob** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %7 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %7, i32 0, i32 0
  store i32 0, i32* %count, align 4
  %8 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %value = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %8, i32 0, i32 3
  store i8** null, i8*** %value, align 8
  %9 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %tag = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %9, i32 0, i32 2
  store i8** null, i8*** %tag, align 8
  %10 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %10, i32 0, i32 4
  store %struct.blob** null, %struct.blob*** %contents, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.146, i32 0, i32 0))
  %11 = load %struct.blob*, %struct.blob** %b, align 8
  %call8 = call i8* @blobGetData(%struct.blob* %11)
  %12 = load i64, i64* %len, align 8
  %13 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %14 = load %struct.message*, %struct.message** %m.addr, align 8
  %ctx = getelementptr inbounds %struct.message, %struct.message* %14, i32 0, i32 9
  %15 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx, align 8
  %dconf = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %15, i32 0, i32 9
  %16 = load %struct.cli_dconf*, %struct.cli_dconf** %dconf, align 8
  %call9 = call i32 @html_normalise_mem(i8* %call8, i64 %12, i8* null, %struct.tag_arguments_tag* %13, %struct.cli_dconf* %16)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  %17 = load %struct.blob*, %struct.blob** %b, align 8
  call void @blobDestroy(%struct.blob* %17)
  store %struct.blob* null, %struct.blob** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.147, i32 0, i32 0))
  %18 = load %struct.blob*, %struct.blob** %b, align 8
  store %struct.blob* %18, %struct.blob** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then.3, %if.then
  %19 = load %struct.blob*, %struct.blob** %retval
  ret %struct.blob* %19
}

declare i32 @phishingScan(%struct.message*, i8*, %struct.cli_ctx*, %struct.tag_arguments_tag*) #1

; Function Attrs: nounwind uwtable
define internal void @do_checkURLs(i8* %dir, %struct.tag_arguments_tag* %hrefs) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %hrefs.addr = alloca %struct.tag_arguments_tag*, align 8
  %t = alloca %struct.table*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %url = alloca i8*, align 8
  %ptr = alloca i8*, align 8
  %url35 = alloca i8*, align 8
  %arg = alloca %struct.arg, align 8
  %name = alloca [257 x i8], align 16
  store i8* %dir, i8** %dir.addr, align 8
  store %struct.tag_arguments_tag* %hrefs, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %call = call %struct.table* @tableCreate()
  store %struct.table* %call, %struct.table** %t, align 8
  %0 = load %struct.table*, %struct.table** %t, align 8
  %cmp = icmp eq %struct.table* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %n, align 4
  store i32 5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %2, i32 0, i32 0
  %3 = load i32, i32* %count, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %4, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %value = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %7, i32 0, i32 3
  %8 = load i8**, i8*** %value, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  store i8* %9, i8** %url, align 8
  %10 = load i8*, i8** %url, align 8
  %call3 = call i32 @strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i8* %10, i64 7) #6
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  br label %for.inc

if.end.6:                                         ; preds = %for.body
  %11 = load i8*, i8** %url, align 8
  %call7 = call i8* @strrchr(i8* %11, i32 46) #6
  store i8* %call7, i8** %ptr, align 8
  %12 = load i8*, i8** %ptr, align 8
  %cmp8 = icmp eq i8* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %for.inc

if.end.10:                                        ; preds = %if.end.6
  %13 = load i8*, i8** %ptr, align 8
  %call11 = call i32 @strcasecmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0)) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %if.end.10
  %14 = load i32, i32* %n, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %value15 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %15, i32 0, i32 3
  %16 = load i8**, i8*** %value15, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %16, i64 %idxprom14
  %17 = load i8*, i8** %arrayidx16, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %19 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %value18 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %19, i32 0, i32 3
  %20 = load i8**, i8*** %value18, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %20, i64 %idxprom17
  %21 = load i8*, i8** %arrayidx19, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.150, i32 0, i32 0), i8* %17, i8* %21)
  %22 = load i32, i32* %n, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %value21 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %23, i32 0, i32 3
  %24 = load i8**, i8*** %value21, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %24, i64 %idxprom20
  %25 = load i8*, i8** %arrayidx22, align 8
  store i8* %25, i8** %ptr, align 8
  %26 = load i8*, i8** %url, align 8
  %27 = load i32, i32* %n, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %n, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %value24 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %28, i32 0, i32 3
  %29 = load i8**, i8*** %value24, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %29, i64 %idxprom23
  store i8* %26, i8** %arrayidx25, align 8
  %30 = load i8*, i8** %ptr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %32 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %value27 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %32, i32 0, i32 3
  %33 = load i8**, i8*** %value27, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %33, i64 %idxprom26
  store i8* %30, i8** %arrayidx28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.13, %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.29, %if.then.9, %if.then.5
  %34 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %34, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.66, %for.end
  %35 = load i32, i32* %i, align 4
  %36 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count32 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %36, i32 0, i32 0
  %37 = load i32, i32* %count32, align 4
  %cmp33 = icmp slt i32 %35, %37
  br i1 %cmp33, label %for.body.34, label %for.end.68

for.body.34:                                      ; preds = %for.cond.31
  %38 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %38 to i64
  %39 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %value37 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %39, i32 0, i32 3
  %40 = load i8**, i8*** %value37, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %40, i64 %idxprom36
  %41 = load i8*, i8** %arrayidx38, align 8
  store i8* %41, i8** %url35, align 8
  %42 = load i8*, i8** %url35, align 8
  %call39 = call i32 @strncasecmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i8* %42, i64 7) #6
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %if.then.41, label %if.end.65

if.then.41:                                       ; preds = %for.body.34
  %43 = load %struct.table*, %struct.table** %t, align 8
  %44 = load i8*, i8** %url35, align 8
  %call42 = call i32 @tableFind(%struct.table* %43, i8* %44)
  %cmp43 = icmp eq i32 %call42, 1
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.41
  %45 = load i8*, i8** %url35, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.151, i32 0, i32 0), i8* %45)
  br label %for.inc.66

if.end.45:                                        ; preds = %if.then.41
  %46 = load i8*, i8** %url35, align 8
  %call46 = call i8* @strchr(i8* %46, i32 37) #6
  %tobool = icmp ne i8* %call46, null
  br i1 %tobool, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.end.45
  %47 = load i8*, i8** %url35, align 8
  %call47 = call i8* @strchr(i8* %47, i32 64) #6
  %tobool48 = icmp ne i8* %call47, null
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true
  %48 = load i8*, i8** %url35, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.152, i32 0, i32 0), i8* %48)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %land.lhs.true, %if.end.45
  %49 = load i32, i32* %n, align 4
  %cmp51 = icmp eq i32 %49, 5
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  %50 = load i8*, i8** %url35, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.153, i32 0, i32 0), i8* %50, i32 5)
  br label %for.end.68

if.end.53:                                        ; preds = %if.end.50
  %51 = load %struct.table*, %struct.table** %t, align 8
  %52 = load i8*, i8** %url35, align 8
  %call54 = call i32 @tableInsert(%struct.table* %51, i8* %52, i32 1)
  %53 = load i8*, i8** %url35, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.154, i32 0, i32 0), i8* %53)
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %name, i32 0, i32 0
  %54 = load i8*, i8** %url35, align 8
  %call55 = call i8* @strncpy(i8* %arraydecay, i8* %54, i64 256) #5
  %arrayidx56 = getelementptr inbounds [257 x i8], [257 x i8]* %name, i32 0, i64 256
  store i8 0, i8* %arrayidx56, align 1
  %arraydecay57 = getelementptr inbounds [257 x i8], [257 x i8]* %name, i32 0, i32 0
  call void @sanitiseName(i8* %arraydecay57)
  %55 = load i8*, i8** %url35, align 8
  %call58 = call i8* @cli_strdup(i8* %55)
  %url59 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 0
  store i8* %call58, i8** %url59, align 8
  %56 = load i8*, i8** %dir.addr, align 8
  %dir60 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 1
  store i8* %56, i8** %dir60, align 8
  %arraydecay61 = getelementptr inbounds [257 x i8], [257 x i8]* %name, i32 0, i32 0
  %filename = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 2
  store i8* %arraydecay61, i8** %filename, align 8
  %depth = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 3
  store i32 0, i32* %depth, align 4
  %call62 = call i8* @getURL(%struct.arg* %arg)
  %url63 = getelementptr inbounds %struct.arg, %struct.arg* %arg, i32 0, i32 0
  %57 = load i8*, i8** %url63, align 8
  call void @free(i8* %57) #5
  %58 = load i32, i32* %n, align 4
  %inc64 = add nsw i32 %58, 1
  store i32 %inc64, i32* %n, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.53, %for.body.34
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65, %if.then.44
  %59 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %59, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.31

for.end.68:                                       ; preds = %if.then.52, %for.cond.31
  %60 = load %struct.table*, %struct.table** %t, align 8
  call void @tableDestroy(%struct.table* %60)
  br label %return

return:                                           ; preds = %for.end.68, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hrefs_done(%struct.blob* %b, %struct.tag_arguments_tag* %hrefs) #0 {
entry:
  %b.addr = alloca %struct.blob*, align 8
  %hrefs.addr = alloca %struct.tag_arguments_tag*, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  store %struct.tag_arguments_tag* %hrefs, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %0 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %tobool = icmp ne %struct.blob* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.blob*, %struct.blob** %b.addr, align 8
  call void @blobDestroy(%struct.blob* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  call void @html_tag_arg_free(%struct.tag_arguments_tag* %2)
  ret void
}

declare i32 @html_normalise_mem(i8*, i64, i8*, %struct.tag_arguments_tag*, %struct.cli_dconf*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

declare void @sanitiseName(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @getURL(%struct.arg* %arg) #0 {
entry:
  %retval = alloca i8*, align 8
  %arg.addr = alloca %struct.arg*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %url = alloca i8*, align 8
  %dir = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %sd = alloca i32, align 4
  %server = alloca %struct.sockaddr_in, align 4
  %ip = alloca i32, align 4
  %port = alloca i16, align 2
  %doingsite = alloca i32, align 4
  %firstpacket = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %flags = alloca i64, align 8
  %via_proxy = alloca i32, align 4
  %proxy = alloca i8*, align 8
  %buf = alloca [8193 x i8], align 16
  %site = alloca [8192 x i8], align 16
  %fout = alloca [257 x i8], align 16
  %proto = alloca %struct.protoent*, align 8
  %servent = alloca %struct.servent*, align 8
  %h = alloca %struct.hostent, align 8
  %set = alloca %struct.fd_set, align 8
  %tv = alloca %struct.timeval, align 8
  %n = alloca i32, align 4
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  %statusptr = alloca i8*, align 8
  %status = alloca i32, align 4
  %location = alloca i8*, align 8
  %end = alloca i8*, align 8
  store %struct.arg* %arg, %struct.arg** %arg.addr, align 8
  %0 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %url1 = getelementptr inbounds %struct.arg, %struct.arg* %0, i32 0, i32 0
  %1 = load i8*, i8** %url1, align 8
  store i8* %1, i8** %url, align 8
  %2 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %dir2 = getelementptr inbounds %struct.arg, %struct.arg* %2, i32 0, i32 1
  %3 = load i8*, i8** %dir2, align 8
  store i8* %3, i8** %dir, align 8
  %4 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %filename3 = getelementptr inbounds %struct.arg, %struct.arg* %4, i32 0, i32 2
  %5 = load i8*, i8** %filename3, align 8
  store i8* %5, i8** %filename, align 8
  %6 = load i8*, i8** %url, align 8
  %call = call i64 @strlen(i8* %6) #6
  %cmp = icmp ugt i64 %call, 8191
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %url, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.155, i32 0, i32 0), i8* %7)
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %fout, i32 0, i32 0
  %8 = load i8*, i8** %dir, align 8
  %9 = load i8*, i8** %filename, align 8
  %call4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.156, i32 0, i32 0), i8* %8, i8* %9) #5
  %arraydecay5 = getelementptr inbounds [257 x i8], [257 x i8]* %fout, i32 0, i32 0
  %call6 = call %struct._IO_FILE* @fopen(i8* %arraydecay5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.157, i32 0, i32 0))
  store %struct._IO_FILE* %call6, %struct._IO_FILE** %fp, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp7 = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %arraydecay9 = getelementptr inbounds [257 x i8], [257 x i8]* %fout, i32 0, i32 0
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.158, i32 0, i32 0), i8* %arraydecay9)
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %11 = load i8*, i8** %url, align 8
  %arraydecay11 = getelementptr inbounds [257 x i8], [257 x i8]* %fout, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.159, i32 0, i32 0), i8* %11, i8* %arraydecay11)
  %12 = load i32, i32* @getURL.tcp, align 4
  %cmp12 = icmp eq i32 %12, 0
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end.10
  %call14 = call %struct.protoent* @getprotobyname(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0))
  store %struct.protoent* %call14, %struct.protoent** %proto, align 8
  %13 = load %struct.protoent*, %struct.protoent** %proto, align 8
  %cmp15 = icmp eq %struct.protoent* %13, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.13
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.161, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %14)
  store i8* null, i8** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.13
  %15 = load %struct.protoent*, %struct.protoent** %proto, align 8
  %p_proto = getelementptr inbounds %struct.protoent, %struct.protoent* %15, i32 0, i32 2
  %16 = load i32, i32* %p_proto, align 4
  store i32 %16, i32* @getURL.tcp, align 4
  call void @endprotoent()
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.10
  %17 = load i16, i16* @getURL.default_port, align 2
  %conv = zext i16 %17 to i32
  %cmp20 = icmp eq i32 %conv, 0
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.19
  %call23 = call %struct.servent* @getservbyname(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.160, i32 0, i32 0))
  store %struct.servent* %call23, %struct.servent** %servent, align 8
  %18 = load %struct.servent*, %struct.servent** %servent, align 8
  %tobool = icmp ne %struct.servent* %18, null
  br i1 %tobool, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.22
  %19 = load %struct.servent*, %struct.servent** %servent, align 8
  %s_port = getelementptr inbounds %struct.servent, %struct.servent* %19, i32 0, i32 2
  %20 = load i32, i32* %s_port, align 4
  %conv25 = trunc i32 %20 to i16
  %call26 = call zeroext i16 @ntohs(i16 zeroext %conv25) #7
  store i16 %call26, i16* @getURL.default_port, align 2
  br label %if.end.27

if.else:                                          ; preds = %if.then.22
  store i16 80, i16* @getURL.default_port, align 2
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.24
  call void @endservent()
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.19
  %21 = load i16, i16* @getURL.default_port, align 2
  store i16 %21, i16* %port, align 2
  store i32 1, i32* %doingsite, align 4
  %arraydecay29 = getelementptr inbounds [8192 x i8], [8192 x i8]* %site, i32 0, i32 0
  store i8* %arraydecay29, i8** %ptr, align 8
  %call30 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.163, i32 0, i32 0)) #5
  store i8* %call30, i8** %proxy, align 8
  %22 = load i8*, i8** %proxy, align 8
  %tobool31 = icmp ne i8* %22, null
  br i1 %tobool31, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.28
  %23 = load i8*, i8** %proxy, align 8
  %24 = load i8, i8* %23, align 1
  %conv32 = sext i8 %24 to i32
  %tobool33 = icmp ne i32 %conv32, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.28
  %25 = phi i1 [ false, %if.end.28 ], [ %tobool33, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  store i32 %land.ext, i32* %via_proxy, align 4
  %26 = load i32, i32* %via_proxy, align 4
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.71

if.then.35:                                       ; preds = %land.end
  %27 = load i8*, i8** %proxy, align 8
  %call36 = call i32 @strncasecmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i64 7) #6
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.then.35
  %28 = load i8*, i8** %proxy, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.164, i32 0, i32 0), i8* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call40 = call i32 @fclose(%struct._IO_FILE* %29)
  store i8* null, i8** %retval
  br label %return

if.end.41:                                        ; preds = %if.then.35
  %30 = load i8*, i8** %url, align 8
  %31 = load i8*, i8** %proxy, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.165, i32 0, i32 0), i8* %30, i8* %31)
  %32 = load i8*, i8** %proxy, align 8
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 7
  store i8* %add.ptr, i8** %proxy, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %while.end, %if.end.41
  %33 = load i8*, i8** %proxy, align 8
  %34 = load i8, i8* %33, align 1
  %tobool42 = icmp ne i8 %34, 0
  br i1 %tobool42, label %while.body, label %while.end.70

while.body:                                       ; preds = %while.cond
  %35 = load i32, i32* %doingsite, align 4
  %tobool43 = icmp ne i32 %35, 0
  br i1 %tobool43, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %while.body
  %36 = load i8*, i8** %proxy, align 8
  %37 = load i8, i8* %36, align 1
  %conv44 = sext i8 %37 to i32
  %cmp45 = icmp eq i32 %conv44, 58
  br i1 %cmp45, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %land.lhs.true
  store i16 0, i16* %port, align 2
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.53, %if.then.47
  %38 = load i8*, i8** %proxy, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %proxy, align 8
  %39 = load i8, i8* %incdec.ptr, align 1
  %conv49 = sext i8 %39 to i32
  %idxprom = sext i32 %conv49 to i64
  %call50 = call i16** @__ctype_b_loc() #7
  %40 = load i16*, i16** %call50, align 8
  %arrayidx = getelementptr inbounds i16, i16* %40, i64 %idxprom
  %41 = load i16, i16* %arrayidx, align 2
  %conv51 = zext i16 %41 to i32
  %and = and i32 %conv51, 2048
  %tobool52 = icmp ne i32 %and, 0
  br i1 %tobool52, label %while.body.53, label %while.end

while.body.53:                                    ; preds = %while.cond.48
  %42 = load i16, i16* %port, align 2
  %conv54 = zext i16 %42 to i32
  %mul = mul nsw i32 %conv54, 10
  %conv55 = trunc i32 %mul to i16
  store i16 %conv55, i16* %port, align 2
  %43 = load i8*, i8** %proxy, align 8
  %44 = load i8, i8* %43, align 1
  %conv56 = sext i8 %44 to i32
  %sub = sub nsw i32 %conv56, 48
  %45 = load i16, i16* %port, align 2
  %conv57 = zext i16 %45 to i32
  %add = add nsw i32 %conv57, %sub
  %conv58 = trunc i32 %add to i16
  store i16 %conv58, i16* %port, align 2
  br label %while.cond.48

while.end:                                        ; preds = %while.cond.48
  br label %while.cond

if.end.59:                                        ; preds = %land.lhs.true, %while.body
  %46 = load i32, i32* %doingsite, align 4
  %tobool60 = icmp ne i32 %46, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.67

land.lhs.true.61:                                 ; preds = %if.end.59
  %47 = load i8*, i8** %proxy, align 8
  %48 = load i8, i8* %47, align 1
  %conv62 = sext i8 %48 to i32
  %cmp63 = icmp eq i32 %conv62, 47
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %land.lhs.true.61
  %49 = load i8*, i8** %proxy, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr66, i8** %proxy, align 8
  br label %while.end.70

if.end.67:                                        ; preds = %land.lhs.true.61, %if.end.59
  %50 = load i8*, i8** %proxy, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr68, i8** %proxy, align 8
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %ptr, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr69, i8** %ptr, align 8
  store i8 %51, i8* %52, align 1
  br label %while.cond

while.end.70:                                     ; preds = %if.then.65, %while.cond
  br label %if.end.119

if.else.71:                                       ; preds = %land.end
  %53 = load i8*, i8** %url, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i32 0, i32 0), i8* %53)
  %54 = load i8*, i8** %url, align 8
  %call72 = call i32 @strncasecmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.148, i32 0, i32 0), i64 7) #6
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then.75, label %if.end.77

if.then.75:                                       ; preds = %if.else.71
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.167, i32 0, i32 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call76 = call i32 @fclose(%struct._IO_FILE* %55)
  store i8* null, i8** %retval
  br label %return

if.end.77:                                        ; preds = %if.else.71
  %56 = load i8*, i8** %url, align 8
  %add.ptr78 = getelementptr inbounds i8, i8* %56, i64 7
  store i8* %add.ptr78, i8** %url, align 8
  br label %while.cond.79

while.cond.79:                                    ; preds = %if.end.115, %while.end.106, %if.end.77
  %57 = load i8*, i8** %url, align 8
  %58 = load i8, i8* %57, align 1
  %tobool80 = icmp ne i8 %58, 0
  br i1 %tobool80, label %while.body.81, label %while.end.118

while.body.81:                                    ; preds = %while.cond.79
  %59 = load i32, i32* %doingsite, align 4
  %tobool82 = icmp ne i32 %59, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.end.107

land.lhs.true.83:                                 ; preds = %while.body.81
  %60 = load i8*, i8** %url, align 8
  %61 = load i8, i8* %60, align 1
  %conv84 = sext i8 %61 to i32
  %cmp85 = icmp eq i32 %conv84, 58
  br i1 %cmp85, label %if.then.87, label %if.end.107

if.then.87:                                       ; preds = %land.lhs.true.83
  store i16 0, i16* %port, align 2
  br label %while.cond.88

while.cond.88:                                    ; preds = %while.body.97, %if.then.87
  %62 = load i8*, i8** %url, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr89, i8** %url, align 8
  %63 = load i8, i8* %incdec.ptr89, align 1
  %conv90 = sext i8 %63 to i32
  %idxprom91 = sext i32 %conv90 to i64
  %call92 = call i16** @__ctype_b_loc() #7
  %64 = load i16*, i16** %call92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %64, i64 %idxprom91
  %65 = load i16, i16* %arrayidx93, align 2
  %conv94 = zext i16 %65 to i32
  %and95 = and i32 %conv94, 2048
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %while.body.97, label %while.end.106

while.body.97:                                    ; preds = %while.cond.88
  %66 = load i16, i16* %port, align 2
  %conv98 = zext i16 %66 to i32
  %mul99 = mul nsw i32 %conv98, 10
  %conv100 = trunc i32 %mul99 to i16
  store i16 %conv100, i16* %port, align 2
  %67 = load i8*, i8** %url, align 8
  %68 = load i8, i8* %67, align 1
  %conv101 = sext i8 %68 to i32
  %sub102 = sub nsw i32 %conv101, 48
  %69 = load i16, i16* %port, align 2
  %conv103 = zext i16 %69 to i32
  %add104 = add nsw i32 %conv103, %sub102
  %conv105 = trunc i32 %add104 to i16
  store i16 %conv105, i16* %port, align 2
  br label %while.cond.88

while.end.106:                                    ; preds = %while.cond.88
  br label %while.cond.79

if.end.107:                                       ; preds = %land.lhs.true.83, %while.body.81
  %70 = load i32, i32* %doingsite, align 4
  %tobool108 = icmp ne i32 %70, 0
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.115

land.lhs.true.109:                                ; preds = %if.end.107
  %71 = load i8*, i8** %url, align 8
  %72 = load i8, i8* %71, align 1
  %conv110 = sext i8 %72 to i32
  %cmp111 = icmp eq i32 %conv110, 47
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %land.lhs.true.109
  %73 = load i8*, i8** %url, align 8
  %incdec.ptr114 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr114, i8** %url, align 8
  br label %while.end.118

if.end.115:                                       ; preds = %land.lhs.true.109, %if.end.107
  %74 = load i8*, i8** %url, align 8
  %incdec.ptr116 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr116, i8** %url, align 8
  %75 = load i8, i8* %74, align 1
  %76 = load i8*, i8** %ptr, align 8
  %incdec.ptr117 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr117, i8** %ptr, align 8
  store i8 %75, i8* %76, align 1
  br label %while.cond.79

while.end.118:                                    ; preds = %if.then.113, %while.cond.79
  br label %if.end.119

if.end.119:                                       ; preds = %while.end.118, %while.end.70
  %77 = load i8*, i8** %ptr, align 8
  store i8 0, i8* %77, align 1
  %78 = bitcast %struct.sockaddr_in* %server to i8*
  call void @llvm.memset.p0i8.i64(i8* %78, i8 0, i64 16, i32 1, i1 false)
  %sin_family = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %server, i32 0, i32 0
  store i16 2, i16* %sin_family, align 2
  %79 = load i16, i16* %port, align 2
  %call120 = call zeroext i16 @htons(i16 zeroext %79) #7
  %sin_port = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %server, i32 0, i32 1
  store i16 %call120, i16* %sin_port, align 2
  %arraydecay121 = getelementptr inbounds [8192 x i8], [8192 x i8]* %site, i32 0, i32 0
  %call122 = call i32 @inet_addr(i8* %arraydecay121) #5
  store i32 %call122, i32* %ip, align 4
  %80 = load i32, i32* %ip, align 4
  %cmp123 = icmp eq i32 %80, -1
  br i1 %cmp123, label %if.then.125, label %if.end.144

if.then.125:                                      ; preds = %if.end.119
  %arraydecay126 = getelementptr inbounds [8192 x i8], [8192 x i8]* %site, i32 0, i32 0
  %arraydecay127 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %call128 = call i32 @my_r_gethostbyname(i8* %arraydecay126, %struct.hostent* %h, i8* %arraydecay127, i64 8193)
  %cmp129 = icmp ne i32 %call128, 0
  br i1 %cmp129, label %if.then.138, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.125
  %h_addr_list = getelementptr inbounds %struct.hostent, %struct.hostent* %h, i32 0, i32 4
  %81 = load i8**, i8*** %h_addr_list, align 8
  %cmp131 = icmp eq i8** %81, null
  br i1 %cmp131, label %if.then.138, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %lor.lhs.false
  %h_addr_list134 = getelementptr inbounds %struct.hostent, %struct.hostent* %h, i32 0, i32 4
  %82 = load i8**, i8*** %h_addr_list134, align 8
  %arrayidx135 = getelementptr inbounds i8*, i8** %82, i64 0
  %83 = load i8*, i8** %arrayidx135, align 8
  %cmp136 = icmp eq i8* %83, null
  br i1 %cmp136, label %if.then.138, label %if.end.141

if.then.138:                                      ; preds = %lor.lhs.false.133, %lor.lhs.false, %if.then.125
  %arraydecay139 = getelementptr inbounds [8192 x i8], [8192 x i8]* %site, i32 0, i32 0
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.168, i32 0, i32 0), i8* %arraydecay139)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call140 = call i32 @fclose(%struct._IO_FILE* %84)
  store i8* null, i8** %retval
  br label %return

if.end.141:                                       ; preds = %lor.lhs.false.133
  %85 = bitcast i32* %ip to i8*
  %h_addr_list142 = getelementptr inbounds %struct.hostent, %struct.hostent* %h, i32 0, i32 4
  %86 = load i8**, i8*** %h_addr_list142, align 8
  %arrayidx143 = getelementptr inbounds i8*, i8** %86, i64 0
  %87 = load i8*, i8** %arrayidx143, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %87, i64 4, i32 1, i1 false)
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.141, %if.end.119
  %88 = load i32, i32* @getURL.tcp, align 4
  %call145 = call i32 @socket(i32 2, i32 1, i32 %88) #5
  store i32 %call145, i32* %sd, align 4
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.end.144
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call149 = call i32 @fclose(%struct._IO_FILE* %89)
  store i8* null, i8** %retval
  br label %return

if.end.150:                                       ; preds = %if.end.144
  %90 = load i32, i32* %sd, align 4
  %call151 = call i32 (i32, i32, ...) @fcntl(i32 %90, i32 3, i32 0)
  %conv152 = sext i32 %call151 to i64
  store i64 %conv152, i64* %flags, align 8
  %91 = load i64, i64* %flags, align 8
  %cmp153 = icmp eq i64 %91, -1
  br i1 %cmp153, label %if.then.155, label %if.else.158

if.then.155:                                      ; preds = %if.end.150
  %call156 = call i32* @__errno_location() #7
  %92 = load i32, i32* %call156, align 4
  %call157 = call i8* @strerror(i32 %92) #5
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.169, i32 0, i32 0), i8* %call157)
  br label %if.end.166

if.else.158:                                      ; preds = %if.end.150
  %93 = load i32, i32* %sd, align 4
  %94 = load i64, i64* %flags, align 8
  %or = or i64 %94, 2048
  %call159 = call i32 (i32, i32, ...) @fcntl(i32 %93, i32 4, i64 %or)
  %cmp160 = icmp slt i32 %call159, 0
  br i1 %cmp160, label %if.then.162, label %if.end.165

if.then.162:                                      ; preds = %if.else.158
  %call163 = call i32* @__errno_location() #7
  %95 = load i32, i32* %call163, align 4
  %call164 = call i8* @strerror(i32 %95) #5
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.170, i32 0, i32 0), i8* %call164)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.162, %if.else.158
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.155
  %96 = load i32, i32* %ip, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %server, i32 0, i32 2
  %s_addr = getelementptr inbounds %struct.in_addr, %struct.in_addr* %sin_addr, i32 0, i32 0
  store i32 %96, i32* %s_addr, align 4
  %97 = load i8*, i8** %url, align 8
  %98 = load i32, i32* %sd, align 4
  %99 = bitcast %struct.sockaddr_in* %server to %struct.sockaddr*
  %call167 = call i32 @nonblock_connect(i8* %97, i32 %98, %struct.sockaddr* %99)
  %cmp168 = icmp slt i32 %call167, 0
  br i1 %cmp168, label %if.then.170, label %if.end.173

if.then.170:                                      ; preds = %if.end.166
  %100 = load i32, i32* %sd, align 4
  %call171 = call i32 @close(i32 %100)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call172 = call i32 @fclose(%struct._IO_FILE* %101)
  store i8* null, i8** %retval
  br label %return

if.end.173:                                       ; preds = %if.end.166
  %102 = load i64, i64* %flags, align 8
  %cmp174 = icmp ne i64 %102, -1
  br i1 %cmp174, label %if.then.176, label %if.end.183

if.then.176:                                      ; preds = %if.end.173
  %103 = load i32, i32* %sd, align 4
  %104 = load i64, i64* %flags, align 8
  %call177 = call i32 (i32, i32, ...) @fcntl(i32 %103, i32 4, i64 %104)
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then.179, label %if.end.182

if.then.179:                                      ; preds = %if.then.176
  %call180 = call i32* @__errno_location() #7
  %105 = load i32, i32* %call180, align 4
  %call181 = call i8* @strerror(i32 %105) #5
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.171, i32 0, i32 0), i8* %call181)
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.179, %if.then.176
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.173
  %106 = load i32, i32* %via_proxy, align 4
  %tobool184 = icmp ne i32 %106, 0
  br i1 %tobool184, label %if.then.185, label %if.else.188

if.then.185:                                      ; preds = %if.end.183
  %arraydecay186 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %107 = load i8*, i8** %url, align 8
  %call187 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay186, i64 8192, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.172, i32 0, i32 0), i8* %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0)) #5
  br label %if.end.191

if.else.188:                                      ; preds = %if.end.183
  %arraydecay189 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %108 = load i8*, i8** %url, align 8
  %call190 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay189, i64 8192, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.174, i32 0, i32 0), i8* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0)) #5
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.188, %if.then.185
  %109 = load i32, i32* %sd, align 4
  %arraydecay192 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %arraydecay193 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %call194 = call i64 @strlen(i8* %arraydecay193) #6
  %conv195 = trunc i64 %call194 to i32
  %conv196 = sext i32 %conv195 to i64
  %call197 = call i64 @send(i32 %109, i8* %arraydecay192, i64 %conv196, i32 0)
  %cmp198 = icmp slt i64 %call197, 0
  br i1 %cmp198, label %if.then.200, label %if.end.203

if.then.200:                                      ; preds = %if.end.191
  %110 = load i32, i32* %sd, align 4
  %call201 = call i32 @close(i32 %110)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call202 = call i32 @fclose(%struct._IO_FILE* %111)
  store i8* null, i8** %retval
  br label %return

if.end.203:                                       ; preds = %if.end.191
  %112 = load i32, i32* %sd, align 4
  %call204 = call i32 @shutdown(i32 %112, i32 1) #5
  store i32 1, i32* %firstpacket, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.338, %if.then.219, %if.end.203
  br label %do.body

do.body:                                          ; preds = %for.cond
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %set, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %113 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx205) #5, !srcloc !1
  %asmresult = extractvalue { i64, i64* } %113, 0
  %asmresult206 = extractvalue { i64, i64* } %113, 1
  %114 = trunc i64 %asmresult to i32
  store i32 %114, i32* %__d0, align 4
  %115 = ptrtoint i64* %asmresult206 to i64
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %117 = load i32, i32* %sd, align 4
  %rem = srem i32 %117, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %118 = load i32, i32* %sd, align 4
  %div = sdiv i32 %118, 64
  %idxprom207 = sext i32 %div to i64
  %fds_bits208 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %set, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits208, i32 0, i64 %idxprom207
  %119 = load i64, i64* %arrayidx209, align 8
  %or210 = or i64 %119, %shl
  store i64 %or210, i64* %arrayidx209, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 0
  store i64 30, i64* %tv_sec, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i32 0, i32 1
  store i64 0, i64* %tv_usec, align 8
  %120 = load i32, i32* %sd, align 4
  %add211 = add nsw i32 %120, 1
  %call212 = call i32 @select(i32 %add211, %struct.fd_set* %set, %struct.fd_set* null, %struct.fd_set* null, %struct.timeval* %tv)
  %cmp213 = icmp slt i32 %call212, 0
  br i1 %cmp213, label %if.then.215, label %if.end.223

if.then.215:                                      ; preds = %do.end
  %call216 = call i32* @__errno_location() #7
  %121 = load i32, i32* %call216, align 4
  %cmp217 = icmp eq i32 %121, 4
  br i1 %cmp217, label %if.then.219, label %if.end.220

if.then.219:                                      ; preds = %if.then.215
  br label %for.cond

if.end.220:                                       ; preds = %if.then.215
  %122 = load i32, i32* %sd, align 4
  %call221 = call i32 @close(i32 %122)
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call222 = call i32 @fclose(%struct._IO_FILE* %123)
  store i8* null, i8** %retval
  br label %return

if.end.223:                                       ; preds = %do.end
  %124 = load i32, i32* %sd, align 4
  %div224 = sdiv i32 %124, 64
  %idxprom225 = sext i32 %div224 to i64
  %fds_bits226 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %set, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits226, i32 0, i64 %idxprom225
  %125 = load i64, i64* %arrayidx227, align 8
  %126 = load i32, i32* %sd, align 4
  %rem228 = srem i32 %126, 64
  %sh_prom229 = zext i32 %rem228 to i64
  %shl230 = shl i64 1, %sh_prom229
  %and231 = and i64 %125, %shl230
  %cmp232 = icmp ne i64 %and231, 0
  br i1 %cmp232, label %if.end.237, label %if.then.234

if.then.234:                                      ; preds = %if.end.223
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call235 = call i32 @fclose(%struct._IO_FILE* %127)
  %128 = load i32, i32* %sd, align 4
  %call236 = call i32 @close(i32 %128)
  store i8* null, i8** %retval
  br label %return

if.end.237:                                       ; preds = %if.end.223
  %129 = load i32, i32* %sd, align 4
  %arraydecay238 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %call239 = call i64 @recv(i32 %129, i8* %arraydecay238, i64 8192, i32 0)
  %conv240 = trunc i64 %call239 to i32
  store i32 %conv240, i32* %n, align 4
  %130 = load i32, i32* %n, align 4
  %cmp241 = icmp slt i32 %130, 0
  br i1 %cmp241, label %if.then.243, label %if.end.246

if.then.243:                                      ; preds = %if.end.237
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call244 = call i32 @fclose(%struct._IO_FILE* %131)
  %132 = load i32, i32* %sd, align 4
  %call245 = call i32 @close(i32 %132)
  store i8* null, i8** %retval
  br label %return

if.end.246:                                       ; preds = %if.end.237
  %133 = load i32, i32* %n, align 4
  %cmp247 = icmp eq i32 %133, 0
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %if.end.246
  br label %for.end

if.end.250:                                       ; preds = %if.end.246
  %134 = load i32, i32* %firstpacket, align 4
  %tobool251 = icmp ne i32 %134, 0
  br i1 %tobool251, label %if.then.252, label %if.else.327

if.then.252:                                      ; preds = %if.end.250
  %135 = load i32, i32* %n, align 4
  %idxprom253 = sext i32 %135 to i64
  %arrayidx254 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i64 %idxprom253
  store i8 0, i8* %arrayidx254, align 1
  %arraydecay255 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %call256 = call i8* @cli_strtok(i8* %arraydecay255, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0))
  store i8* %call256, i8** %statusptr, align 8
  %136 = load i8*, i8** %statusptr, align 8
  %tobool257 = icmp ne i8* %136, null
  br i1 %tobool257, label %if.then.258, label %if.end.300

if.then.258:                                      ; preds = %if.then.252
  %137 = load i8*, i8** %statusptr, align 8
  %call259 = call i32 @atoi(i8* %137) #6
  store i32 %call259, i32* %status, align 4
  %138 = load i32, i32* %status, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.175, i32 0, i32 0), i32 %138)
  %139 = load i8*, i8** %statusptr, align 8
  call void @free(i8* %139) #5
  %140 = load i32, i32* %status, align 4
  %cmp260 = icmp eq i32 %140, 301
  br i1 %cmp260, label %if.then.265, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %if.then.258
  %141 = load i32, i32* %status, align 4
  %cmp263 = icmp eq i32 %141, 302
  br i1 %cmp263, label %if.then.265, label %if.end.299

if.then.265:                                      ; preds = %lor.lhs.false.262, %if.then.258
  %arraydecay266 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %call267 = call i8* @strstr(i8* %arraydecay266, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.176, i32 0, i32 0)) #6
  store i8* %call267, i8** %location, align 8
  %142 = load i8*, i8** %location, align 8
  %tobool268 = icmp ne i8* %142, null
  br i1 %tobool268, label %if.then.269, label %if.end.298

if.then.269:                                      ; preds = %if.then.265
  %arraydecay270 = getelementptr inbounds [257 x i8], [257 x i8]* %fout, i32 0, i32 0
  %call271 = call i32 @unlink(i8* %arraydecay270) #5
  %143 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %depth = getelementptr inbounds %struct.arg, %struct.arg* %143, i32 0, i32 3
  %144 = load i32, i32* %depth, align 4
  %cmp272 = icmp sge i32 %144, 5
  br i1 %cmp272, label %if.then.274, label %if.end.276

if.then.274:                                      ; preds = %if.then.269
  %145 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %url275 = getelementptr inbounds %struct.arg, %struct.arg* %145, i32 0, i32 0
  %146 = load i8*, i8** %url275, align 8
  %147 = load i8*, i8** %location, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.177, i32 0, i32 0), i8* %146, i8* %147, i32 5)
  br label %for.end

if.end.276:                                       ; preds = %if.then.269
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call277 = call i32 @fclose(%struct._IO_FILE* %148)
  %149 = load i32, i32* %sd, align 4
  %call278 = call i32 @close(i32 %149)
  %150 = load i8*, i8** %location, align 8
  %add.ptr279 = getelementptr inbounds i8, i8* %150, i64 11
  store i8* %add.ptr279, i8** %location, align 8
  %151 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %url280 = getelementptr inbounds %struct.arg, %struct.arg* %151, i32 0, i32 0
  %152 = load i8*, i8** %url280, align 8
  call void @free(i8* %152) #5
  %153 = load i8*, i8** %location, align 8
  store i8* %153, i8** %end, align 8
  br label %while.cond.281

while.cond.281:                                   ; preds = %while.body.290, %if.end.276
  %154 = load i8*, i8** %end, align 8
  %155 = load i8, i8* %154, align 1
  %conv282 = sext i8 %155 to i32
  %tobool283 = icmp ne i32 %conv282, 0
  br i1 %tobool283, label %land.rhs.284, label %land.end.288

land.rhs.284:                                     ; preds = %while.cond.281
  %156 = load i8*, i8** %end, align 8
  %157 = load i8, i8* %156, align 1
  %conv285 = sext i8 %157 to i32
  %cmp286 = icmp ne i32 %conv285, 10
  br label %land.end.288

land.end.288:                                     ; preds = %land.rhs.284, %while.cond.281
  %158 = phi i1 [ false, %while.cond.281 ], [ %cmp286, %land.rhs.284 ]
  br i1 %158, label %while.body.290, label %while.end.292

while.body.290:                                   ; preds = %land.end.288
  %159 = load i8*, i8** %end, align 8
  %incdec.ptr291 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr291, i8** %end, align 8
  br label %while.cond.281

while.end.292:                                    ; preds = %land.end.288
  %160 = load i8*, i8** %end, align 8
  store i8 0, i8* %160, align 1
  %161 = load i8*, i8** %location, align 8
  %call293 = call i8* @cli_strdup(i8* %161)
  %162 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %url294 = getelementptr inbounds %struct.arg, %struct.arg* %162, i32 0, i32 0
  store i8* %call293, i8** %url294, align 8
  %163 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %depth295 = getelementptr inbounds %struct.arg, %struct.arg* %163, i32 0, i32 3
  %164 = load i32, i32* %depth295, align 4
  %inc = add nsw i32 %164, 1
  store i32 %inc, i32* %depth295, align 4
  %165 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %url296 = getelementptr inbounds %struct.arg, %struct.arg* %165, i32 0, i32 0
  %166 = load i8*, i8** %url296, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.178, i32 0, i32 0), i8* %166)
  %167 = load %struct.arg*, %struct.arg** %arg.addr, align 8
  %call297 = call i8* @getURL(%struct.arg* %167)
  store i8* %call297, i8** %retval
  br label %return

if.end.298:                                       ; preds = %if.then.265
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %lor.lhs.false.262
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %if.then.252
  %arraydecay301 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %call302 = call i8* @strstr(i8* %arraydecay301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.179, i32 0, i32 0)) #6
  store i8* %call302, i8** %ptr, align 8
  %cmp303 = icmp ne i8* %call302, null
  br i1 %cmp303, label %if.then.305, label %if.else.310

if.then.305:                                      ; preds = %if.end.300
  %168 = load i8*, i8** %ptr, align 8
  %add.ptr306 = getelementptr inbounds i8, i8* %168, i64 4
  store i8* %add.ptr306, i8** %ptr, align 8
  %169 = load i8*, i8** %ptr, align 8
  %arraydecay307 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %169 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay307 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv308 = trunc i64 %sub.ptr.sub to i32
  %170 = load i32, i32* %n, align 4
  %sub309 = sub nsw i32 %170, %conv308
  store i32 %sub309, i32* %n, align 4
  br label %if.end.326

if.else.310:                                      ; preds = %if.end.300
  %arraydecay311 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %call312 = call i8* @strstr(i8* %arraydecay311, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.180, i32 0, i32 0)) #6
  store i8* %call312, i8** %ptr, align 8
  %cmp313 = icmp ne i8* %call312, null
  br i1 %cmp313, label %if.then.315, label %if.else.323

if.then.315:                                      ; preds = %if.else.310
  %171 = load i8*, i8** %ptr, align 8
  %add.ptr316 = getelementptr inbounds i8, i8* %171, i64 2
  store i8* %add.ptr316, i8** %ptr, align 8
  %172 = load i8*, i8** %ptr, align 8
  %arraydecay317 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  %sub.ptr.lhs.cast318 = ptrtoint i8* %172 to i64
  %sub.ptr.rhs.cast319 = ptrtoint i8* %arraydecay317 to i64
  %sub.ptr.sub320 = sub i64 %sub.ptr.lhs.cast318, %sub.ptr.rhs.cast319
  %conv321 = trunc i64 %sub.ptr.sub320 to i32
  %173 = load i32, i32* %n, align 4
  %sub322 = sub nsw i32 %173, %conv321
  store i32 %sub322, i32* %n, align 4
  br label %if.end.325

if.else.323:                                      ; preds = %if.else.310
  %arraydecay324 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay324, i8** %ptr, align 8
  br label %if.end.325

if.end.325:                                       ; preds = %if.else.323, %if.then.315
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.then.305
  store i32 0, i32* %firstpacket, align 4
  br label %if.end.329

if.else.327:                                      ; preds = %if.end.250
  %arraydecay328 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay328, i8** %ptr, align 8
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.327, %if.end.326
  %174 = load i32, i32* %n, align 4
  %tobool330 = icmp ne i32 %174, 0
  br i1 %tobool330, label %land.lhs.true.331, label %if.end.338

land.lhs.true.331:                                ; preds = %if.end.329
  %175 = load i8*, i8** %ptr, align 8
  %176 = load i32, i32* %n, align 4
  %conv332 = sext i32 %176 to i64
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call333 = call i64 @fwrite(i8* %175, i64 %conv332, i64 1, %struct._IO_FILE* %177)
  %cmp334 = icmp ne i64 %call333, 1
  br i1 %cmp334, label %if.then.336, label %if.end.338

if.then.336:                                      ; preds = %land.lhs.true.331
  %178 = load i32, i32* %n, align 4
  %arraydecay337 = getelementptr inbounds [257 x i8], [257 x i8]* %fout, i32 0, i32 0
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.181, i32 0, i32 0), i32 %178, i8* %arraydecay337)
  br label %for.end

if.end.338:                                       ; preds = %land.lhs.true.331, %if.end.329
  br label %for.cond

for.end:                                          ; preds = %if.then.336, %if.then.274, %if.then.249
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call339 = call i32 @fclose(%struct._IO_FILE* %179)
  %180 = load i32, i32* %sd, align 4
  %call340 = call i32 @close(i32 %180)
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %while.end.292, %if.then.243, %if.then.234, %if.end.220, %if.then.200, %if.then.170, %if.then.148, %if.then.138, %if.then.75, %if.then.39, %if.then.16, %if.then.8, %if.then
  %181 = load i8*, i8** %retval
  ret i8* %181
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare %struct.protoent* @getprotobyname(i8*) #1

declare void @endprotoent() #1

declare %struct.servent* @getservbyname(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #4

declare void @endservent() #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #4

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @my_r_gethostbyname(i8* %hostname, %struct.hostent* %hp, i8* %buf, i64 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %hostname.addr = alloca i8*, align 8
  %hp.addr = alloca %struct.hostent*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %hp2 = alloca %struct.hostent*, align 8
  store i8* %hostname, i8** %hostname.addr, align 8
  store %struct.hostent* %hp, %struct.hostent** %hp.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %hostname.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.hostent*, %struct.hostent** %hp.addr, align 8
  %cmp1 = icmp eq %struct.hostent* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i8*, i8** %hostname.addr, align 8
  %call = call %struct.hostent* @gethostbyname(i8* %2)
  store %struct.hostent* %call, %struct.hostent** %hp2, align 8
  %cmp2 = icmp eq %struct.hostent* %call, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %call4 = call i32* @__h_errno_location() #7
  %3 = load i32, i32* %call4, align 4
  store i32 %3, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.hostent*, %struct.hostent** %hp.addr, align 8
  %5 = bitcast %struct.hostent* %4 to i8*
  %6 = load %struct.hostent*, %struct.hostent** %hp2, align 8
  %7 = bitcast %struct.hostent* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 32, i32 8, i1 false)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

declare i32 @fcntl(i32, i32, ...) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define internal i32 @nonblock_connect(i8* %url, i32 %sock, %struct.sockaddr* %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %url.addr = alloca i8*, align 8
  %sock.addr = alloca i32, align 4
  %addr.addr = alloca %struct.sockaddr*, align 8
  %select_failures = alloca i32, align 4
  %attempts = alloca i32, align 4
  %timeout = alloca %struct.timeval, align 8
  %numfd = alloca i32, align 4
  %agg.tmp = alloca %union.__CONST_SOCKADDR_ARG, align 8
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  %fds = alloca %struct.fd_set, align 8
  %now = alloca %struct.timeval, align 8
  %waittime = alloca %struct.timeval, align 8
  %__d0 = alloca i32, align 4
  %__d1 = alloca i32, align 4
  store i8* %url, i8** %url.addr, align 8
  store i32 %sock, i32* %sock.addr, align 4
  store %struct.sockaddr* %addr, %struct.sockaddr** %addr.addr, align 8
  %call = call i32 @gettimeofday(%struct.timeval* %timeout, %struct.timezone* null) #5
  %0 = load i32, i32* %sock.addr, align 4
  %__sockaddr__ = bitcast %union.__CONST_SOCKADDR_ARG* %agg.tmp to %struct.sockaddr**
  %1 = load %struct.sockaddr*, %struct.sockaddr** %addr.addr, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %__sockaddr__, align 8
  %coerce.dive = getelementptr %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %agg.tmp, i32 0, i32 0
  %2 = load %struct.sockaddr*, %struct.sockaddr** %coerce.dive, align 8
  %call1 = call i32 @connect(i32 %0, %struct.sockaddr* %2, i32 16)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call2, align 4
  switch i32 %3, label %sw.default [
    i32 114, label %sw.bb
    i32 115, label %sw.bb
    i32 106, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %if.then, %if.then
  %4 = load i8*, i8** %url.addr, align 8
  %call3 = call i32* @__errno_location() #7
  %5 = load i32, i32* %call3, align 4
  %call4 = call i8* @strerror(i32 %5) #5
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.182, i32 0, i32 0), i8* %4, i8* %call4)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.then
  %6 = load i8*, i8** %url.addr, align 8
  %call6 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call6, align 4
  %call7 = call i8* @strerror(i32 %7) #5
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.182, i32 0, i32 0), i8* %6, i8* %call7)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %url.addr, align 8
  %9 = load i32, i32* %sock.addr, align 4
  %call8 = call i32 @connect_error(i8* %8, i32 %9)
  store i32 %call8, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %10 = load i32, i32* %sock.addr, align 4
  %add = add nsw i32 %10, 1
  store i32 %add, i32* %numfd, align 4
  store i32 3, i32* %select_failures, align 4
  store i32 1, i32* %attempts, align 4
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %11 = load i64, i64* %tv_sec, align 8
  %add9 = add nsw i64 %11, 5
  store i64 %add9, i64* %tv_sec, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.59, %if.then.49, %if.end
  %call10 = call i32 @gettimeofday(%struct.timeval* %now, %struct.timezone* null) #5
  %tv_sec11 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %12 = load i64, i64* %tv_sec11, align 8
  %tv_sec12 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %13 = load i64, i64* %tv_sec12, align 8
  %cmp13 = icmp eq i64 %12, %13
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %14 = load i64, i64* %tv_usec, align 8
  %tv_usec14 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  %15 = load i64, i64* %tv_usec14, align 8
  %cmp15 = icmp sgt i64 %14, %15
  %conv = zext i1 %cmp15 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %16 = load i64, i64* %tv_sec16, align 8
  %tv_sec17 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %17 = load i64, i64* %tv_sec17, align 8
  %cmp18 = icmp sgt i64 %16, %17
  %conv19 = zext i1 %cmp18 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv19, %cond.false ]
  store i32 %cond, i32* %t, align 4
  %18 = load i32, i32* %t, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %cond.end
  %19 = load i8*, i8** %url.addr, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.183, i32 0, i32 0), i8* %19, i32 5)
  br label %for.end

if.end.21:                                        ; preds = %cond.end
  %tv_sec22 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 0
  %20 = load i64, i64* %tv_sec22, align 8
  %tv_sec23 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %21 = load i64, i64* %tv_sec23, align 8
  %sub = sub nsw i64 %20, %21
  %tv_sec24 = getelementptr inbounds %struct.timeval, %struct.timeval* %waittime, i32 0, i32 0
  store i64 %sub, i64* %tv_sec24, align 8
  %tv_usec25 = getelementptr inbounds %struct.timeval, %struct.timeval* %timeout, i32 0, i32 1
  %22 = load i64, i64* %tv_usec25, align 8
  %tv_usec26 = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %23 = load i64, i64* %tv_usec26, align 8
  %sub27 = sub nsw i64 %22, %23
  %tv_usec28 = getelementptr inbounds %struct.timeval, %struct.timeval* %waittime, i32 0, i32 1
  store i64 %sub27, i64* %tv_usec28, align 8
  %tv_usec29 = getelementptr inbounds %struct.timeval, %struct.timeval* %waittime, i32 0, i32 1
  %24 = load i64, i64* %tv_usec29, align 8
  %cmp30 = icmp slt i64 %24, 0
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.21
  %tv_sec33 = getelementptr inbounds %struct.timeval, %struct.timeval* %waittime, i32 0, i32 0
  %25 = load i64, i64* %tv_sec33, align 8
  %dec = add nsw i64 %25, -1
  store i64 %dec, i64* %tv_sec33, align 8
  %tv_usec34 = getelementptr inbounds %struct.timeval, %struct.timeval* %waittime, i32 0, i32 1
  %26 = load i64, i64* %tv_usec34, align 8
  %add35 = add nsw i64 %26, 1000000
  store i64 %add35, i64* %tv_usec34, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.21
  br label %do.body

do.body:                                          ; preds = %if.end.36
  %fds_bits = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits, i32 0, i64 0
  %27 = call { i64, i64* } asm sideeffect "cld; rep; stosq", "={cx},={di},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 16, i64* %arrayidx) #5, !srcloc !2
  %asmresult = extractvalue { i64, i64* } %27, 0
  %asmresult37 = extractvalue { i64, i64* } %27, 1
  %28 = trunc i64 %asmresult to i32
  store i32 %28, i32* %__d0, align 4
  %29 = ptrtoint i64* %asmresult37 to i64
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %__d1, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %31 = load i32, i32* %sock.addr, align 4
  %rem = srem i32 %31, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %32 = load i32, i32* %sock.addr, align 4
  %div = sdiv i32 %32, 64
  %idxprom = sext i32 %div to i64
  %fds_bits38 = getelementptr inbounds %struct.fd_set, %struct.fd_set* %fds, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [16 x i64], [16 x i64]* %fds_bits38, i32 0, i64 %idxprom
  %33 = load i64, i64* %arrayidx39, align 8
  %or = or i64 %33, %shl
  store i64 %or, i64* %arrayidx39, align 8
  %34 = load i32, i32* %numfd, align 4
  %call40 = call i32 @select(i32 %34, %struct.fd_set* null, %struct.fd_set* %fds, %struct.fd_set* null, %struct.timeval* %waittime)
  store i32 %call40, i32* %n, align 4
  %35 = load i32, i32* %n, align 4
  %cmp41 = icmp slt i32 %35, 0
  br i1 %cmp41, label %if.then.43, label %if.end.51

if.then.43:                                       ; preds = %do.end
  %36 = load i8*, i8** %url.addr, align 8
  %37 = load i32, i32* %select_failures, align 4
  %call44 = call i32* @__errno_location() #7
  %38 = load i32, i32* %call44, align 4
  %call45 = call i8* @strerror(i32 %38) #5
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.184, i32 0, i32 0), i8* %36, i32 %37, i8* %call45)
  %39 = load i32, i32* %select_failures, align 4
  %dec46 = add nsw i32 %39, -1
  store i32 %dec46, i32* %select_failures, align 4
  %cmp47 = icmp sge i32 %dec46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.43
  br label %for.cond

if.end.50:                                        ; preds = %if.then.43
  br label %for.end

if.end.51:                                        ; preds = %do.end
  %40 = load i8*, i8** %url.addr, align 8
  %41 = load i32, i32* %n, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.185, i32 0, i32 0), i8* %40, i32 %41)
  %42 = load i32, i32* %n, align 4
  %tobool52 = icmp ne i32 %42, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.51
  %43 = load i8*, i8** %url.addr, align 8
  %44 = load i32, i32* %sock.addr, align 4
  %call54 = call i32 @connect_error(i8* %43, i32 %44)
  store i32 %call54, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.51
  %45 = load i32, i32* %attempts, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %attempts, align 4
  %cmp56 = icmp eq i32 %45, 10
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.55
  %46 = load i8*, i8** %url.addr, align 8
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.186, i32 0, i32 0), i8* %46)
  br label %for.end

if.end.59:                                        ; preds = %if.end.55
  br label %for.cond

for.end:                                          ; preds = %if.then.58, %if.end.50, %if.then.20
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.53, %if.else, %sw.default, %sw.bb.5
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: nounwind
declare i32 @shutdown(i32, i32) #3

declare i32 @select(i32, %struct.fd_set*, %struct.fd_set*, %struct.fd_set*, %struct.timeval*) #1

declare i64 @recv(i32, i8*, i64, i32) #1

declare i8* @cli_strtok(i8*, i32, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i32 @unlink(i8*) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare %struct.hostent* @gethostbyname(i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__h_errno_location() #4

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

declare i32 @connect(i32, %struct.sockaddr*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @connect_error(i8* %url, i32 %sock) #0 {
entry:
  %retval = alloca i32, align 4
  %url.addr = alloca i8*, align 8
  %sock.addr = alloca i32, align 4
  %optval = alloca i32, align 4
  %optlen = alloca i32, align 4
  store i8* %url, i8** %url.addr, align 8
  store i32 %sock, i32* %sock.addr, align 4
  store i32 4, i32* %optlen, align 4
  %0 = load i32, i32* %sock.addr, align 4
  %1 = bitcast i32* %optval to i8*
  %call = call i32 @getsockopt(i32 %0, i32 1, i32 4, i8* %1, i32* %optlen) #5
  %2 = load i32, i32* %optval, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %url.addr, align 8
  %4 = load i32, i32* %optval, align 4
  %call1 = call i8* @strerror(i32 %4) #5
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.187, i32 0, i32 0), i8* %3, i8* %call1)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

declare void @html_tag_arg_free(%struct.tag_arguments_tag*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i8* @fileblobGetFilename(%struct.fileblob*) #1

declare i8* @messageGetDispositionType(%struct.message*) #1

declare %struct.text* @textMove(%struct.text*, %struct.text*) #1

declare i32 @messageContainsVirus(%struct.message*) #1

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

declare i8* @messageGetFilename(%struct.message*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare %struct.__dirstream* @opendir(i8*) #1

declare i32 @closedir(%struct.__dirstream*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @rewinddir(%struct.__dirstream*) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

declare i32 @cli_filetype(i8*, i64) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 230414}
!2 = !{i32 234223}
