; ModuleID = './src/gnutls.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Lisp_Intfwd = type { i32, i64* }
%struct.emacs_globals = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Lisp_Subr = type { %struct.vectorlike_header, %union.anon.0, i16, i16, i8*, i8*, i8* }
%struct.vectorlike_header = type { i64 }
%union.anon.0 = type { i64 ()* }
%struct.gnutls_session_int = type opaque
%struct.Lisp_Process = type { %struct.vectorlike_header, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, [6 x i32], i64, i64, i32, i32, i8, i32, i32, %struct.gnutls_session_int*, %struct.gnutls_certificate_credentials_st*, %struct.gnutls_anon_client_credentials_st*, %struct.gnutls_x509_crt_int*, i32, i32, i32, i32, i8 }
%struct.gnutls_certificate_credentials_st = type opaque
%struct.gnutls_anon_client_credentials_st = type opaque
%struct.gnutls_x509_crt_int = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.gnutls_datum_t = type { i8*, i32 }
%struct.Lisp_Cons = type { i64, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"(Emacs) Retried handshake\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"(Emacs) Giving up on handshake; resetting retries\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"(Emacs) Deallocating x509 credentials\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"(Emacs) Deallocating anon credentials\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Symbol has no numeric gnutls-code property\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Not an error symbol or code\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Not an error\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c":invalid\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"certificate could not be verified\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c":revoked\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"certificate was revoked (CRL)\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c":self-signed\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"certificate signer was not found (self-signed)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c":unknown-ca\00", align 1
@.str.14 = private unnamed_addr constant [75 x i8] c"the certificate was signed by an unknown and therefore untrusted authority\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c":not-ca\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"certificate signer is not a CA\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c":insecure\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"certificate was signed with an insecure algorithm\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c":not-activated\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"certificate is not yet activated\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c":expired\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"certificate has expired\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c":no-host-match\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"certificate host does not match hostname\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c":warnings\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c":certificate\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c":diffie-hellman-prime-bits\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c":key-exchange\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c":protocol\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c":cipher\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c":mac\00", align 1
@gnutls_global_initialized = internal global i8 0, align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"GnuTLS not available\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Invalid GnuTLS credential type\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c"gnutls-boot: invalid :verify_error parameter (not a list)\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"gnutls-boot: invalid :hostname parameter (not a string)\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"(Emacs) connecting to host:\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"(Emacs) allocating credentials\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"(Emacs) allocating x509 credentials\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"(Emacs) setting verification flags\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"(Emacs) using default verification flags\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"(Emacs) ignoring invalid verify-flags\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"(Emacs) allocating anon credentials\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"(Emacs) setting system trust failed with code \00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"(Emacs) setting the trustfile: \00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"Invalid trustfile\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"(Emacs) setting the CRL file: \00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"Invalid CRL file\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"(Emacs) setting the client key file: \00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"(Emacs) setting the client cert file: \00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"Invalid client cert file\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"Invalid client key file\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"(Emacs) gnutls callbacks\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"(Emacs) gnutls_init\00", align 1
@.str.55 = private unnamed_addr constant [41 x i8] c"(Emacs) got non-default priority string:\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"(Emacs) using default priority string:\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"(Emacs) setting the priority string\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"(Emacs) verification:\00", align 1
@.str.59 = private unnamed_addr constant [55 x i8] c"Certificate validation failed %s, verification code %x\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"(Emacs) certificate validation failed:\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"No x509 certificate was found\0A\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"The x509 certificate does not match \22%s\22\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"(Emacs) x509 certificate does not match:\00", align 1
@syms_of_gnutls.i_fwd = internal global %struct.Lisp_Intfwd zeroinitializer, align 8
@.str.64 = private unnamed_addr constant [17 x i8] c"gnutls-log-level\00", align 1
@globals = external global %struct.emacs_globals, align 8
@Sgnutls_available_p = internal global %struct.Lisp_Subr { %struct.vectorlike_header { i64 167772160 }, %union.anon.0 { i64 ()* @Fgnutls_available_p }, i16 0, i16 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i32 0, i32 0), i8* null, i8* null }, align 8
@pending_signals = external global i8, align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"gnutls.c: [%d] %s %d\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"gnutls.c: [%d] %s\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"(Emacs) fatal error:\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"(Emacs) retry:\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"(Emacs) non-fatal error:\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"(Emacs) Received alert: \00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c":version\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c":serial-number\00", align 1
@.str.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [8 x i8] c":issuer\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"%Y-%m-%d\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c":valid-from\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c":valid-to\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c":subject\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c":public-key-algorithm\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c":certificate-security-level\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c":issuer-unique-id\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c":subject-unique-id\00", align 1
@.str.84 = private unnamed_addr constant [21 x i8] c":signature-algorithm\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c":public-key-id\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"sha1:\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c":certificate-id\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"%02x:\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"gnutls.c: [audit] %s\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"gnutls.c: [%d] %s %s\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"gnutls-get-initstage\00", align 1
@Sgnutls_get_initstage = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fgnutls_get_initstage }, i16 1, i16 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.92, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.93 = private unnamed_addr constant [14 x i8] c"gnutls-errorp\00", align 1
@Sgnutls_errorp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fgnutls_errorp }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.94 = private unnamed_addr constant [20 x i8] c"gnutls-error-fatalp\00", align 1
@Sgnutls_error_fatalp = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fgnutls_error_fatalp }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.94, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.95 = private unnamed_addr constant [20 x i8] c"gnutls-error-string\00", align 1
@Sgnutls_error_string = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fgnutls_error_string }, i16 1, i16 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.95, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.96 = private unnamed_addr constant [12 x i8] c"gnutls-boot\00", align 1
@Sgnutls_boot = internal global { %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64, i64)* } { i64 (i64, i64, i64)* @Fgnutls_boot }, i16 3, i16 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.97 = private unnamed_addr constant [14 x i8] c"gnutls-deinit\00", align 1
@Sgnutls_deinit = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fgnutls_deinit }, i16 1, i16 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.98 = private unnamed_addr constant [11 x i8] c"gnutls-bye\00", align 1
@Sgnutls_bye = internal global { %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64, i64)* } { i64 (i64, i64)* @Fgnutls_bye }, i16 2, i16 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.98, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.99 = private unnamed_addr constant [19 x i8] c"gnutls-peer-status\00", align 1
@Sgnutls_peer_status = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fgnutls_peer_status }, i16 1, i16 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.99, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.100 = private unnamed_addr constant [36 x i8] c"gnutls-peer-status-warning-describe\00", align 1
@Sgnutls_peer_status_warning_describe = internal global { %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* } { %struct.vectorlike_header { i64 167772160 }, { i64 (i64)* } { i64 (i64)* @Fgnutls_peer_status_warning_describe }, i16 1, i16 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.100, i32 0, i32 0), i8* null, i8* null }, align 8
@.str.101 = private unnamed_addr constant [19 x i8] c"gnutls-available-p\00", align 1

; Function Attrs: nounwind uwtable
define i64 @emacs_gnutls_record_check_pending(%struct.gnutls_session_int* %state) #0 {
entry:
  %state.addr = alloca %struct.gnutls_session_int*, align 8
  store %struct.gnutls_session_int* %state, %struct.gnutls_session_int** %state.addr, align 8
  %0 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state.addr, align 8
  %call = call i64 @gnutls_record_check_pending(%struct.gnutls_session_int* %0)
  ret i64 %call
}

declare i64 @gnutls_record_check_pending(%struct.gnutls_session_int*) #1

; Function Attrs: nounwind uwtable
define i64 @emacs_gnutls_write(%struct.Lisp_Process* %proc, i8* %buf, i64 %nbyte) #0 {
entry:
  %retval = alloca i64, align 8
  %proc.addr = alloca %struct.Lisp_Process*, align 8
  %buf.addr = alloca i8*, align 8
  %nbyte.addr = alloca i64, align 8
  %rtnval = alloca i64, align 8
  %bytes_written = alloca i64, align 8
  %state = alloca %struct.gnutls_session_int*, align 8
  store %struct.Lisp_Process* %proc, %struct.Lisp_Process** %proc.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %nbyte, i64* %nbyte.addr, align 8
  store i64 0, i64* %rtnval, align 8
  %0 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_state = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %0, i32 0, i32 31
  %1 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %gnutls_state, align 8
  store %struct.gnutls_session_int* %1, %struct.gnutls_session_int** %state, align 8
  %2 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_initstage = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %2, i32 0, i32 30
  %3 = load i32, i32* %gnutls_initstage, align 4
  %cmp = icmp ne i32 %3, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32* @__errno_location() #7
  store i32 11, i32* %call, align 4
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %bytes_written, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %if.then.6, %if.end
  %4 = load i64, i64* %nbyte.addr, align 8
  %cmp1 = icmp sgt i64 %4, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %nbyte.addr, align 8
  %call2 = call i64 @gnutls_record_send(%struct.gnutls_session_int* %5, i8* %6, i64 %7)
  store i64 %call2, i64* %rtnval, align 8
  %8 = load i64, i64* %rtnval, align 8
  %cmp3 = icmp slt i64 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %while.body
  %9 = load i64, i64* %rtnval, align 8
  %cmp5 = icmp eq i64 %9, -52
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  br label %while.cond

if.else:                                          ; preds = %if.then.4
  %10 = load i64, i64* %rtnval, align 8
  %cmp7 = icmp eq i64 %10, -28
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.else
  %call9 = call i32* @__errno_location() #7
  store i32 11, i32* %call9, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  br label %while.end

if.end.11:                                        ; preds = %while.body
  %11 = load i64, i64* %rtnval, align 8
  %12 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %11
  store i8* %add.ptr, i8** %buf.addr, align 8
  %13 = load i64, i64* %rtnval, align 8
  %14 = load i64, i64* %nbyte.addr, align 8
  %sub = sub nsw i64 %14, %13
  store i64 %sub, i64* %nbyte.addr, align 8
  %15 = load i64, i64* %rtnval, align 8
  %16 = load i64, i64* %bytes_written, align 8
  %add = add nsw i64 %16, %15
  store i64 %add, i64* %bytes_written, align 8
  br label %while.cond

while.end:                                        ; preds = %if.end.10, %while.cond
  %17 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %18 = load i64, i64* %rtnval, align 8
  %conv = trunc i64 %18 to i32
  %call12 = call zeroext i1 @emacs_gnutls_handle_error(%struct.gnutls_session_int* %17, i32 %conv)
  %19 = load i64, i64* %bytes_written, align 8
  store i64 %19, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load i64, i64* %retval
  ret i64 %20
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare i64 @gnutls_record_send(%struct.gnutls_session_int*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @emacs_gnutls_handle_error(%struct.gnutls_session_int* %session, i32 %err) #0 {
entry:
  %retval = alloca i1, align 1
  %session.addr = alloca %struct.gnutls_session_int*, align 8
  %err.addr = alloca i32, align 4
  %max_log_level = alloca i32, align 4
  %ret = alloca i8, align 1
  %str = alloca i8*, align 8
  %alert = alloca i32, align 4
  %level = alloca i32, align 4
  store %struct.gnutls_session_int* %session, %struct.gnutls_session_int** %session.addr, align 8
  store i32 %err, i32* %err.addr, align 4
  store i32 0, i32* %max_log_level, align 4
  %0 = load i32, i32* %err.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %err.addr, align 4
  call void @check_memory_full(i32 %1)
  %2 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 391), align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, i32* %max_log_level, align 4
  %3 = load i32, i32* %err.addr, align 4
  %call = call i8* @gnutls_strerror(i32 %3)
  store i8* %call, i8** %str, align 8
  %4 = load i8*, i8** %str, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8** %str, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %5 = load i32, i32* %err.addr, align 4
  %call3 = call i32 @gnutls_error_is_fatal(i32 %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  store i8 0, i8* %ret, align 1
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %6 = load i32, i32* %max_log_level, align 4
  %cmp6 = icmp sle i32 1, %6
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body
  %7 = load i8*, i8** %str, align 8
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.68, i32 0, i32 0), i8* %7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.22

if.else:                                          ; preds = %if.end.2
  store i8 1, i8* %ret, align 1
  %8 = load i32, i32* %err.addr, align 4
  switch i32 %8, label %sw.default [
    i32 -28, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else
  br label %do.body.10

do.body.10:                                       ; preds = %sw.bb
  %9 = load i32, i32* %max_log_level, align 4
  %cmp11 = icmp sle i32 3, %9
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body.10
  %10 = load i8*, i8** %str, align 8
  call void @gnutls_log_function2(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), i8* %10)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.body.10
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %sw.default

sw.default:                                       ; preds = %if.else, %do.end.15
  br label %do.body.16

do.body.16:                                       ; preds = %sw.default
  %11 = load i32, i32* %max_log_level, align 4
  %cmp17 = icmp sle i32 1, %11
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.body.16
  %12 = load i8*, i8** %str, align 8
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i32 0, i32 0), i8* %12)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.body.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.21
  br label %if.end.22

if.end.22:                                        ; preds = %sw.epilog, %do.end
  %13 = load i32, i32* %err.addr, align 4
  %cmp23 = icmp eq i32 %13, -16
  br i1 %cmp23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.22
  %14 = load i32, i32* %err.addr, align 4
  %cmp25 = icmp eq i32 %14, -12
  br i1 %cmp25, label %if.then.27, label %if.end.41

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.22
  %15 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %session.addr, align 8
  %call28 = call i32 @gnutls_alert_get(%struct.gnutls_session_int* %15)
  store i32 %call28, i32* %alert, align 4
  %16 = load i32, i32* %err.addr, align 4
  %cmp29 = icmp eq i32 %16, -12
  %cond = select i1 %cmp29, i32 0, i32 1
  store i32 %cond, i32* %level, align 4
  %17 = load i32, i32* %alert, align 4
  %call31 = call i8* @gnutls_alert_get_name(i32 %17)
  store i8* %call31, i8** %str, align 8
  %18 = load i8*, i8** %str, align 8
  %tobool32 = icmp ne i8* %18, null
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8** %str, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.27
  br label %do.body.35

do.body.35:                                       ; preds = %if.end.34
  %19 = load i32, i32* %level, align 4
  %20 = load i32, i32* %max_log_level, align 4
  %cmp36 = icmp sle i32 %19, %20
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %do.body.35
  %21 = load i32, i32* %level, align 4
  %22 = load i8*, i8** %str, align 8
  call void @gnutls_log_function2(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i8* %22)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %do.body.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %lor.lhs.false
  %23 = load i8, i8* %ret, align 1
  %tobool42 = trunc i8 %23 to i1
  store i1 %tobool42, i1* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then
  %24 = load i1, i1* %retval
  ret i1 %24
}

; Function Attrs: nounwind uwtable
define i64 @emacs_gnutls_read(%struct.Lisp_Process* %proc, i8* %buf, i64 %nbyte) #0 {
entry:
  %retval = alloca i64, align 8
  %proc.addr = alloca %struct.Lisp_Process*, align 8
  %buf.addr = alloca i8*, align 8
  %nbyte.addr = alloca i64, align 8
  %rtnval = alloca i64, align 8
  %state = alloca %struct.gnutls_session_int*, align 8
  %log_level = alloca i32, align 4
  store %struct.Lisp_Process* %proc, %struct.Lisp_Process** %proc.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %nbyte, i64* %nbyte.addr, align 8
  %0 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_state = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %0, i32 0, i32 31
  %1 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %gnutls_state, align 8
  store %struct.gnutls_session_int* %1, %struct.gnutls_session_int** %state, align 8
  %2 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_log_level = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %2, i32 0, i32 37
  %3 = load i32, i32* %gnutls_log_level, align 4
  store i32 %3, i32* %log_level, align 4
  %4 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_initstage = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %4, i32 0, i32 30
  %5 = load i32, i32* %gnutls_initstage, align 4
  %cmp = icmp ne i32 %5, 9
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %6 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_handshakes_tried = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %6, i32 0, i32 38
  %7 = load i32, i32* %gnutls_handshakes_tried, align 4
  %cmp1 = icmp slt i32 %7, 100
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_handshakes_tried3 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %8, i32 0, i32 38
  %9 = load i32, i32* %gnutls_handshakes_tried3, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %gnutls_handshakes_tried3, align 4
  %10 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %call = call i32 @emacs_gnutls_handshake(%struct.Lisp_Process* %10)
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %11 = load i32, i32* %log_level, align 4
  %cmp4 = icmp sle i32 5, %11
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %do.body
  %12 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_handshakes_tried6 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %12, i32 0, i32 38
  %13 = load i32, i32* %gnutls_handshakes_tried6, align 4
  call void @gnutls_log_function2i(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.7:                                         ; preds = %if.then
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.7
  %14 = load i32, i32* %log_level, align 4
  %cmp9 = icmp sle i32 2, %14
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.body.8
  call void @gnutls_log_function(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.body.8
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %15 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_handshakes_tried13 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %15, i32 0, i32 38
  store i32 0, i32* %gnutls_handshakes_tried13, align 4
  store i64 0, i64* %retval
  br label %return

if.end.14:                                        ; preds = %entry
  %16 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %17 = load i8*, i8** %buf.addr, align 8
  %18 = load i64, i64* %nbyte.addr, align 8
  %call15 = call i64 @gnutls_record_recv(%struct.gnutls_session_int* %16, i8* %17, i64 %18)
  store i64 %call15, i64* %rtnval, align 8
  %19 = load i64, i64* %rtnval, align 8
  %cmp16 = icmp sge i64 %19, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.14
  %20 = load i64, i64* %rtnval, align 8
  store i64 %20, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end.14
  %21 = load i64, i64* %rtnval, align 8
  %cmp18 = icmp eq i64 %21, -9
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  store i64 0, i64* %retval
  br label %return

if.else.20:                                       ; preds = %if.else
  %22 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %23 = load i64, i64* %rtnval, align 8
  %conv = trunc i64 %23 to i32
  %call21 = call zeroext i1 @emacs_gnutls_handle_error(%struct.gnutls_session_int* %22, i32 %conv)
  br i1 %call21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.20
  store i64 -1, i64* %retval
  br label %return

if.else.23:                                       ; preds = %if.else.20
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else.23, %if.then.22, %if.then.19, %if.then.17, %do.end.12, %do.end
  %24 = load i64, i64* %retval
  ret i64 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @emacs_gnutls_handshake(%struct.Lisp_Process* %proc) #0 {
entry:
  %retval = alloca i32, align 4
  %proc.addr = alloca %struct.Lisp_Process*, align 8
  %state = alloca %struct.gnutls_session_int*, align 8
  %ret = alloca i32, align 4
  store %struct.Lisp_Process* %proc, %struct.Lisp_Process** %proc.addr, align 8
  %0 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_state = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %0, i32 0, i32 31
  %1 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %gnutls_state, align 8
  store %struct.gnutls_session_int* %1, %struct.gnutls_session_int** %state, align 8
  %2 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_initstage = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %2, i32 0, i32 30
  %3 = load i32, i32* %gnutls_initstage, align 4
  %cmp = icmp ult i32 %3, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_initstage1 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %4, i32 0, i32 30
  %5 = load i32, i32* %gnutls_initstage1, align 4
  %cmp2 = icmp ult i32 %5, 7
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %7 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %infd = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %7, i32 0, i32 21
  %8 = load i32, i32* %infd, align 4
  %conv = sext i32 %8 to i64
  %9 = inttoptr i64 %conv to i8*
  %10 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %outfd = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %10, i32 0, i32 22
  %11 = load i32, i32* %outfd, align 4
  %conv4 = sext i32 %11 to i64
  %12 = inttoptr i64 %conv4 to i8*
  call void @gnutls_transport_set_ptr2(%struct.gnutls_session_int* %6, i8* %9, i8* %12)
  %13 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_initstage5 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %13, i32 0, i32 30
  store i32 7, i32* %gnutls_initstage5, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.6
  %14 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %call = call i32 @gnutls_handshake(%struct.gnutls_session_int* %14)
  store i32 %call, i32* %ret, align 4
  %15 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %16 = load i32, i32* %ret, align 4
  %call7 = call zeroext i1 @emacs_gnutls_handle_error(%struct.gnutls_session_int* %15, i32 %16)
  br label %do.body.8

do.body.8:                                        ; preds = %do.body
  %17 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 241), align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp10 = icmp eq i64 %17, %call9
  br i1 %cmp10, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body.8
  %18 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 138), align 8
  %call12 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp13 = icmp eq i64 %18, %call12
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  call void @process_quit_flag()
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true, %do.body.8
  %19 = load volatile i8, i8* @pending_signals, align 1
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  call void @process_pending_signals()
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %20 = load i32, i32* %ret, align 4
  %cmp19 = icmp slt i32 %20, 0
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %21 = load i32, i32* %ret, align 4
  %call21 = call i32 @gnutls_error_is_fatal(i32 %21)
  %cmp22 = icmp eq i32 %call21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %22 = phi i1 [ false, %do.cond ], [ %cmp22, %land.rhs ]
  br i1 %22, label %do.body, label %do.end.24

do.end.24:                                        ; preds = %land.end
  %23 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_initstage25 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %23, i32 0, i32 30
  store i32 8, i32* %gnutls_initstage25, align 4
  %24 = load i32, i32* %ret, align 4
  %cmp26 = icmp eq i32 %24, 0
  br i1 %cmp26, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %do.end.24
  %25 = load %struct.Lisp_Process*, %struct.Lisp_Process** %proc.addr, align 8
  %gnutls_initstage29 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %25, i32 0, i32 30
  store i32 9, i32* %gnutls_initstage29, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %do.end.24
  %26 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %27 = load i32, i32* %ret, align 4
  %call31 = call i32 @gnutls_alert_send_appropriate(%struct.gnutls_session_int* %26, i32 %27)
  call void @check_memory_full(i32 %call31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.28
  %28 = load i32, i32* %ret, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @gnutls_log_function2i(i32 %level, i8* %string, i32 %extra) #0 {
entry:
  %level.addr = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %extra.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  store i8* %string, i8** %string.addr, align 8
  store i32 %extra, i32* %extra.addr, align 4
  %0 = load i32, i32* %level.addr, align 4
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i32, i32* %extra.addr, align 4
  call void (i8*, ...) @message(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0), i32 %0, i8* %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gnutls_log_function(i32 %level, i8* %string) #0 {
entry:
  %level.addr = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %string, i8** %string.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %1 = load i8*, i8** %string.addr, align 8
  call void (i8*, ...) @message(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.66, i32 0, i32 0), i32 %0, i8* %1)
  ret void
}

declare i64 @gnutls_record_recv(%struct.gnutls_session_int*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @emacs_gnutls_deinit(i64 %proc) #0 {
entry:
  %retval = alloca i64, align 8
  %proc.addr = alloca i64, align 8
  %log_level = alloca i32, align 4
  store i64 %proc, i64* %proc.addr, align 8
  %0 = load i64, i64* %proc.addr, align 8
  call void @CHECK_PROCESS(i64 %0)
  %1 = load i64, i64* %proc.addr, align 8
  %call = call %struct.Lisp_Process* @XPROCESS(i64 %1)
  %gnutls_p = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call, i32 0, i32 39
  %bf.load = load i8, i8* %gnutls_p, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = trunc i8 %bf.clear to i1
  %conv = zext i1 %bf.cast to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %proc.addr, align 8
  %call3 = call %struct.Lisp_Process* @XPROCESS(i64 %2)
  %gnutls_log_level = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call3, i32 0, i32 37
  %3 = load i32, i32* %gnutls_log_level, align 4
  store i32 %3, i32* %log_level, align 4
  %4 = load i64, i64* %proc.addr, align 8
  %call4 = call %struct.Lisp_Process* @XPROCESS(i64 %4)
  %gnutls_x509_cred = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call4, i32 0, i32 32
  %5 = load %struct.gnutls_certificate_credentials_st*, %struct.gnutls_certificate_credentials_st** %gnutls_x509_cred, align 8
  %tobool = icmp ne %struct.gnutls_certificate_credentials_st* %5, null
  br i1 %tobool, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %6 = load i32, i32* %log_level, align 4
  %cmp6 = icmp sle i32 2, %6
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.body
  call void @gnutls_log_function(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %7 = load i64, i64* %proc.addr, align 8
  %call10 = call %struct.Lisp_Process* @XPROCESS(i64 %7)
  %gnutls_x509_cred11 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call10, i32 0, i32 32
  %8 = load %struct.gnutls_certificate_credentials_st*, %struct.gnutls_certificate_credentials_st** %gnutls_x509_cred11, align 8
  call void @gnutls_certificate_free_credentials(%struct.gnutls_certificate_credentials_st* %8)
  %9 = load i64, i64* %proc.addr, align 8
  %call12 = call %struct.Lisp_Process* @XPROCESS(i64 %9)
  %gnutls_x509_cred13 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call12, i32 0, i32 32
  store %struct.gnutls_certificate_credentials_st* null, %struct.gnutls_certificate_credentials_st** %gnutls_x509_cred13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %if.end
  %10 = load i64, i64* %proc.addr, align 8
  %call15 = call %struct.Lisp_Process* @XPROCESS(i64 %10)
  %gnutls_anon_cred = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call15, i32 0, i32 33
  %11 = load %struct.gnutls_anon_client_credentials_st*, %struct.gnutls_anon_client_credentials_st** %gnutls_anon_cred, align 8
  %tobool16 = icmp ne %struct.gnutls_anon_client_credentials_st* %11, null
  br i1 %tobool16, label %if.then.17, label %if.end.28

if.then.17:                                       ; preds = %if.end.14
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %12 = load i32, i32* %log_level, align 4
  %cmp19 = icmp sle i32 2, %12
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.body.18
  call void @gnutls_log_function(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %do.body.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %13 = load i64, i64* %proc.addr, align 8
  %call24 = call %struct.Lisp_Process* @XPROCESS(i64 %13)
  %gnutls_anon_cred25 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call24, i32 0, i32 33
  %14 = load %struct.gnutls_anon_client_credentials_st*, %struct.gnutls_anon_client_credentials_st** %gnutls_anon_cred25, align 8
  call void @gnutls_anon_free_client_credentials(%struct.gnutls_anon_client_credentials_st* %14)
  %15 = load i64, i64* %proc.addr, align 8
  %call26 = call %struct.Lisp_Process* @XPROCESS(i64 %15)
  %gnutls_anon_cred27 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call26, i32 0, i32 33
  store %struct.gnutls_anon_client_credentials_st* null, %struct.gnutls_anon_client_credentials_st** %gnutls_anon_cred27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %do.end.23, %if.end.14
  %16 = load i64, i64* %proc.addr, align 8
  %call29 = call %struct.Lisp_Process* @XPROCESS(i64 %16)
  %gnutls_state = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call29, i32 0, i32 31
  %17 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %gnutls_state, align 8
  %tobool30 = icmp ne %struct.gnutls_session_int* %17, null
  br i1 %tobool30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %if.end.28
  %18 = load i64, i64* %proc.addr, align 8
  %call32 = call %struct.Lisp_Process* @XPROCESS(i64 %18)
  %gnutls_state33 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call32, i32 0, i32 31
  %19 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %gnutls_state33, align 8
  call void @gnutls_deinit(%struct.gnutls_session_int* %19)
  %20 = load i64, i64* %proc.addr, align 8
  %call34 = call %struct.Lisp_Process* @XPROCESS(i64 %20)
  %gnutls_state35 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call34, i32 0, i32 31
  store %struct.gnutls_session_int* null, %struct.gnutls_session_int** %gnutls_state35, align 8
  %21 = load i64, i64* %proc.addr, align 8
  %call36 = call %struct.Lisp_Process* @XPROCESS(i64 %21)
  %gnutls_initstage = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call36, i32 0, i32 30
  %22 = load i32, i32* %gnutls_initstage, align 4
  %cmp37 = icmp uge i32 %22, 4
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.then.31
  %23 = load i64, i64* %proc.addr, align 8
  %call40 = call %struct.Lisp_Process* @XPROCESS(i64 %23)
  %gnutls_initstage41 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call40, i32 0, i32 30
  store i32 3, i32* %gnutls_initstage41, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.then.31
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.28
  %24 = load i64, i64* %proc.addr, align 8
  %call44 = call %struct.Lisp_Process* @XPROCESS(i64 %24)
  %gnutls_p45 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call44, i32 0, i32 39
  %bf.load46 = load i8, i8* %gnutls_p45, align 8
  %bf.clear47 = and i8 %bf.load46, -2
  store i8 %bf.clear47, i8* %gnutls_p45, align 8
  %call48 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call48, i64* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then
  %25 = load i64, i64* %retval
  ret i64 %25
}

declare void @CHECK_PROCESS(i64) #1

declare %struct.Lisp_Process* @XPROCESS(i64) #1

declare i64 @builtin_lisp_symbol(i32) #1

declare void @gnutls_certificate_free_credentials(%struct.gnutls_certificate_credentials_st*) #1

declare void @gnutls_anon_free_client_credentials(%struct.gnutls_anon_client_credentials_st*) #1

declare void @gnutls_deinit(%struct.gnutls_session_int*) #1

; Function Attrs: nounwind uwtable
define i64 @Fgnutls_get_initstage(i64 %proc) #0 {
entry:
  %proc.addr = alloca i64, align 8
  store i64 %proc, i64* %proc.addr, align 8
  %0 = load i64, i64* %proc.addr, align 8
  call void @CHECK_PROCESS(i64 %0)
  %1 = load i64, i64* %proc.addr, align 8
  %call = call %struct.Lisp_Process* @XPROCESS(i64 %1)
  %gnutls_initstage = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call, i32 0, i32 30
  %2 = load i32, i32* %gnutls_initstage, align 4
  %conv = zext i32 %2 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  ret i64 %add
}

; Function Attrs: nounwind readnone uwtable
define i64 @Fgnutls_errorp(i64 %err) #3 {
entry:
  %retval = alloca i64, align 8
  %err.addr = alloca i64, align 8
  store i64 %err, i64* %err.addr, align 8
  %0 = load i64, i64* %err.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call2, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, i64* %retval
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @Fgnutls_error_fatalp(i64 %err) #0 {
entry:
  %retval = alloca i64, align 8
  %err.addr = alloca i64, align 8
  %code = alloca i64, align 8
  store i64 %err, i64* %err.addr, align 8
  %0 = load i64, i64* %err.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %err.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %2 = load i64, i64* %err.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 493)
  %call6 = call i64 @Fget(i64 %2, i64 %call5)
  store i64 %call6, i64* %code, align 8
  %3 = load i64, i64* %code, align 8
  %call7 = call zeroext i1 @NUMBERP(i64 %3)
  br i1 %call7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.4
  %4 = load i64, i64* %code, align 8
  store i64 %4, i64* %err.addr, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.then.4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0)) #8
  unreachable

if.end.9:                                         ; preds = %if.then.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %5 = load i64, i64* %err.addr, align 8
  %and11 = and i64 %5, 7
  %conv12 = trunc i64 %and11 to i32
  %and13 = and i32 %conv12, -5
  %cmp14 = icmp eq i32 %and13, 2
  br i1 %cmp14, label %land.lhs.true, label %if.then.25

land.lhs.true:                                    ; preds = %if.end.10
  br i1 false, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i64, i64* %err.addr, align 8
  %shr = ashr i64 %6, 2
  %cmp16 = icmp sle i64 -2147483648, %shr
  br i1 %cmp16, label %land.lhs.true.21, label %if.then.25

cond.false:                                       ; preds = %land.lhs.true
  %7 = load i64, i64* %err.addr, align 8
  %shr18 = ashr i64 %7, 2
  %cmp19 = icmp sle i64 0, %shr18
  br i1 %cmp19, label %land.lhs.true.21, label %if.then.25

land.lhs.true.21:                                 ; preds = %cond.false, %cond.true
  %8 = load i64, i64* %err.addr, align 8
  %shr22 = ashr i64 %8, 2
  %cmp23 = icmp sle i64 %shr22, 2147483647
  br i1 %cmp23, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.21, %cond.false, %cond.true, %if.end.10
  call void (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0)) #8
  unreachable

if.end.26:                                        ; preds = %land.lhs.true.21
  %9 = load i64, i64* %err.addr, align 8
  %shr27 = ashr i64 %9, 2
  %conv28 = trunc i64 %shr27 to i32
  %call29 = call i32 @gnutls_error_is_fatal(i32 %conv28)
  %cmp30 = icmp eq i32 0, %call29
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.end.26
  %call33 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call33, i64* %retval
  br label %return

if.end.34:                                        ; preds = %if.end.26
  %call35 = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call35, i64* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.32, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare i64 @Fget(i64, i64) #1

declare zeroext i1 @NUMBERP(i64) #1

; Function Attrs: noreturn
declare void @error(i8*, ...) #4

declare i32 @gnutls_error_is_fatal(i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fgnutls_error_string(i64 %err) #0 {
entry:
  %retval = alloca i64, align 8
  %err.addr = alloca i64, align 8
  %code = alloca i64, align 8
  store i64 %err, i64* %err.addr, align 8
  %0 = load i64, i64* %err.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 901)
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i64 @build_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  store i64 %call1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %err.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %if.end
  %2 = load i64, i64* %err.addr, align 8
  %call5 = call i64 @builtin_lisp_symbol(i32 493)
  %call6 = call i64 @Fget(i64 %2, i64 %call5)
  store i64 %call6, i64* %code, align 8
  %3 = load i64, i64* %code, align 8
  %call7 = call zeroext i1 @NUMBERP(i64 %3)
  br i1 %call7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.4
  %4 = load i64, i64* %code, align 8
  store i64 %4, i64* %err.addr, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then.4
  %call9 = call i64 @build_string(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i32 0, i32 0))
  store i64 %call9, i64* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %5 = load i64, i64* %err.addr, align 8
  %and12 = and i64 %5, 7
  %conv13 = trunc i64 %and12 to i32
  %and14 = and i32 %conv13, -5
  %cmp15 = icmp eq i32 %and14, 2
  br i1 %cmp15, label %land.lhs.true, label %if.then.26

land.lhs.true:                                    ; preds = %if.end.11
  br i1 false, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %6 = load i64, i64* %err.addr, align 8
  %shr = ashr i64 %6, 2
  %cmp17 = icmp sle i64 -2147483648, %shr
  br i1 %cmp17, label %land.lhs.true.22, label %if.then.26

cond.false:                                       ; preds = %land.lhs.true
  %7 = load i64, i64* %err.addr, align 8
  %shr19 = ashr i64 %7, 2
  %cmp20 = icmp sle i64 0, %shr19
  br i1 %cmp20, label %land.lhs.true.22, label %if.then.26

land.lhs.true.22:                                 ; preds = %cond.false, %cond.true
  %8 = load i64, i64* %err.addr, align 8
  %shr23 = ashr i64 %8, 2
  %cmp24 = icmp sle i64 %shr23, 2147483647
  br i1 %cmp24, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.22, %cond.false, %cond.true, %if.end.11
  %call27 = call i64 @build_string(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store i64 %call27, i64* %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true.22
  %9 = load i64, i64* %err.addr, align 8
  %shr29 = ashr i64 %9, 2
  %conv30 = trunc i64 %shr29 to i32
  %call31 = call i8* @gnutls_strerror(i32 %conv30)
  %call32 = call i64 @build_string(i8* %call31)
  store i64 %call32, i64* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.26, %if.else, %if.then
  %10 = load i64, i64* %retval
  ret i64 %10
}

declare i64 @build_string(i8*) #1

declare i8* @gnutls_strerror(i32) #1

; Function Attrs: nounwind uwtable
define i64 @Fgnutls_deinit(i64 %proc) #0 {
entry:
  %proc.addr = alloca i64, align 8
  store i64 %proc, i64* %proc.addr, align 8
  %0 = load i64, i64* %proc.addr, align 8
  %call = call i64 @emacs_gnutls_deinit(i64 %0)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define i64 @Fgnutls_peer_status_warning_describe(i64 %status_symbol) #0 {
entry:
  %retval = alloca i64, align 8
  %status_symbol.addr = alloca i64, align 8
  store i64 %status_symbol, i64* %status_symbol.addr, align 8
  %0 = load i64, i64* %status_symbol.addr, align 8
  %and = and i64 %0, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %1 = load i64, i64* %status_symbol.addr, align 8
  %2 = call i64 @wrong_type_argument(i64 %call, i64 %1) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* %status_symbol.addr, align 8
  %call2 = call i64 @intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  %cmp3 = icmp eq i64 %4, %call2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %call5 = call i64 @build_string(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0))
  store i64 %call5, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load i64, i64* %status_symbol.addr, align 8
  %call6 = call i64 @intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  %cmp7 = icmp eq i64 %5, %call6
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %call10 = call i64 @build_string(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  store i64 %call10, i64* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %6 = load i64, i64* %status_symbol.addr, align 8
  %call12 = call i64 @intern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  %cmp13 = icmp eq i64 %6, %call12
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.11
  %call16 = call i64 @build_string(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0))
  store i64 %call16, i64* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.11
  %7 = load i64, i64* %status_symbol.addr, align 8
  %call18 = call i64 @intern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  %cmp19 = icmp eq i64 %7, %call18
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.17
  %call22 = call i64 @build_string(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.14, i32 0, i32 0))
  store i64 %call22, i64* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.17
  %8 = load i64, i64* %status_symbol.addr, align 8
  %call24 = call i64 @intern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  %cmp25 = icmp eq i64 %8, %call24
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %call28 = call i64 @build_string(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0))
  store i64 %call28, i64* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.23
  %9 = load i64, i64* %status_symbol.addr, align 8
  %call30 = call i64 @intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0))
  %cmp31 = icmp eq i64 %9, %call30
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.29
  %call34 = call i64 @build_string(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0))
  store i64 %call34, i64* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.29
  %10 = load i64, i64* %status_symbol.addr, align 8
  %call36 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  %cmp37 = icmp eq i64 %10, %call36
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.35
  %call40 = call i64 @build_string(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0))
  store i64 %call40, i64* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.35
  %11 = load i64, i64* %status_symbol.addr, align 8
  %call42 = call i64 @intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  %cmp43 = icmp eq i64 %11, %call42
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.41
  %call46 = call i64 @build_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0))
  store i64 %call46, i64* %retval
  br label %return

if.end.47:                                        ; preds = %if.end.41
  %12 = load i64, i64* %status_symbol.addr, align 8
  %call48 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  %cmp49 = icmp eq i64 %12, %call48
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.47
  %call52 = call i64 @build_string(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i32 0, i32 0))
  store i64 %call52, i64* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.47
  %call54 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call54, i64* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.51, %if.then.45, %if.then.39, %if.then.33, %if.then.27, %if.then.21, %if.then.15, %if.then.9, %if.then
  %13 = load i64, i64* %retval
  ret i64 %13
}

; Function Attrs: noreturn
declare i64 @wrong_type_argument(i64, i64) #4

declare i64 @intern(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fgnutls_peer_status(i64 %proc) #0 {
entry:
  %retval = alloca i64, align 8
  %proc.addr = alloca i64, align 8
  %warnings = alloca i64, align 8
  %result = alloca i64, align 8
  %verification = alloca i32, align 4
  %state = alloca %struct.gnutls_session_int*, align 8
  %bits = alloca i32, align 4
  store i64 %proc, i64* %proc.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %warnings, align 8
  %call1 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call1, i64* %result, align 8
  %0 = load i64, i64* %proc.addr, align 8
  call void @CHECK_PROCESS(i64 %0)
  %1 = load i64, i64* %proc.addr, align 8
  %call2 = call %struct.Lisp_Process* @XPROCESS(i64 %1)
  %gnutls_initstage = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call2, i32 0, i32 30
  %2 = load i32, i32* %gnutls_initstage, align 4
  %cmp = icmp ult i32 %2, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call3, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %proc.addr, align 8
  %call4 = call %struct.Lisp_Process* @XPROCESS(i64 %3)
  %gnutls_peer_verification = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call4, i32 0, i32 35
  %4 = load i32, i32* %gnutls_peer_verification, align 4
  store i32 %4, i32* %verification, align 4
  %5 = load i32, i32* %verification, align 4
  %and = and i32 %5, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %call6 = call i64 @intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  %6 = load i64, i64* %warnings, align 8
  %call7 = call i64 @Fcons(i64 %call6, i64 %6)
  store i64 %call7, i64* %warnings, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %7 = load i32, i32* %verification, align 4
  %and9 = and i32 %7, 32
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %call12 = call i64 @intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  %8 = load i64, i64* %warnings, align 8
  %call13 = call i64 @Fcons(i64 %call12, i64 %8)
  store i64 %call13, i64* %warnings, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %9 = load i32, i32* %verification, align 4
  %and15 = and i32 %9, 64
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %call18 = call i64 @intern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  %10 = load i64, i64* %warnings, align 8
  %call19 = call i64 @Fcons(i64 %call18, i64 %10)
  store i64 %call19, i64* %warnings, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  %11 = load i32, i32* %verification, align 4
  %and21 = and i32 %11, 128
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.20
  %call24 = call i64 @intern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0))
  %12 = load i64, i64* %warnings, align 8
  %call25 = call i64 @Fcons(i64 %call24, i64 %12)
  store i64 %call25, i64* %warnings, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.20
  %13 = load i32, i32* %verification, align 4
  %and27 = and i32 %13, 256
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %call30 = call i64 @intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0))
  %14 = load i64, i64* %warnings, align 8
  %call31 = call i64 @Fcons(i64 %call30, i64 %14)
  store i64 %call31, i64* %warnings, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %15 = load i32, i32* %verification, align 4
  %and33 = and i32 %15, 512
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.32
  %call36 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  %16 = load i64, i64* %warnings, align 8
  %call37 = call i64 @Fcons(i64 %call36, i64 %16)
  store i64 %call37, i64* %warnings, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.32
  %17 = load i32, i32* %verification, align 4
  %and39 = and i32 %17, 1024
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %if.end.38
  %call42 = call i64 @intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  %18 = load i64, i64* %warnings, align 8
  %call43 = call i64 @Fcons(i64 %call42, i64 %18)
  store i64 %call43, i64* %warnings, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %if.end.38
  %19 = load i64, i64* %proc.addr, align 8
  %call45 = call %struct.Lisp_Process* @XPROCESS(i64 %19)
  %gnutls_extra_peer_verification = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call45, i32 0, i32 36
  %20 = load i32, i32* %gnutls_extra_peer_verification, align 4
  %and46 = and i32 %20, 2
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.44
  %call49 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0))
  %21 = load i64, i64* %warnings, align 8
  %call50 = call i64 @Fcons(i64 %call49, i64 %21)
  store i64 %call50, i64* %warnings, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.48, %if.end.44
  %22 = load i64, i64* %proc.addr, align 8
  %call52 = call %struct.Lisp_Process* @XPROCESS(i64 %22)
  %gnutls_certificate = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call52, i32 0, i32 34
  %23 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_certificate, align 8
  %cmp53 = icmp ne %struct.gnutls_x509_crt_int* %23, null
  br i1 %cmp53, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %if.end.51
  %24 = load i64, i64* %proc.addr, align 8
  %call54 = call %struct.Lisp_Process* @XPROCESS(i64 %24)
  %gnutls_certificate55 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call54, i32 0, i32 34
  %25 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_certificate55, align 8
  %26 = load i64, i64* %proc.addr, align 8
  %call56 = call %struct.Lisp_Process* @XPROCESS(i64 %26)
  %gnutls_certificate57 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call56, i32 0, i32 34
  %27 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_certificate57, align 8
  %call58 = call i32 @gnutls_x509_crt_check_issuer(%struct.gnutls_x509_crt_int* %25, %struct.gnutls_x509_crt_int* %27)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %land.lhs.true
  %call61 = call i64 @intern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  %28 = load i64, i64* %warnings, align 8
  %call62 = call i64 @Fcons(i64 %call61, i64 %28)
  store i64 %call62, i64* %warnings, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %land.lhs.true, %if.end.51
  %29 = load i64, i64* %warnings, align 8
  %call64 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp65 = icmp eq i64 %29, %call64
  br i1 %cmp65, label %if.end.69, label %if.then.66

if.then.66:                                       ; preds = %if.end.63
  %call67 = call i64 @intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0))
  %30 = load i64, i64* %warnings, align 8
  %call68 = call i64 @list2(i64 %call67, i64 %30)
  store i64 %call68, i64* %result, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.end.63
  %31 = load i64, i64* %proc.addr, align 8
  %call70 = call %struct.Lisp_Process* @XPROCESS(i64 %31)
  %gnutls_certificate71 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call70, i32 0, i32 34
  %32 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_certificate71, align 8
  %cmp72 = icmp ne %struct.gnutls_x509_crt_int* %32, null
  br i1 %cmp72, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %if.end.69
  %33 = load i64, i64* %result, align 8
  %call74 = call i64 @intern(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0))
  %34 = load i64, i64* %proc.addr, align 8
  %call75 = call %struct.Lisp_Process* @XPROCESS(i64 %34)
  %gnutls_certificate76 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call75, i32 0, i32 34
  %35 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_certificate76, align 8
  %call77 = call i64 @gnutls_certificate_details(%struct.gnutls_x509_crt_int* %35)
  %call78 = call i64 @list2(i64 %call74, i64 %call77)
  %call79 = call i64 @nconc2(i64 %33, i64 %call78)
  store i64 %call79, i64* %result, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.73, %if.end.69
  %36 = load i64, i64* %proc.addr, align 8
  %call81 = call %struct.Lisp_Process* @XPROCESS(i64 %36)
  %gnutls_state = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call81, i32 0, i32 31
  %37 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %gnutls_state, align 8
  store %struct.gnutls_session_int* %37, %struct.gnutls_session_int** %state, align 8
  %38 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %call82 = call i32 @gnutls_dh_get_prime_bits(%struct.gnutls_session_int* %38)
  store i32 %call82, i32* %bits, align 4
  %39 = load i32, i32* %bits, align 4
  call void @check_memory_full(i32 %39)
  %40 = load i32, i32* %bits, align 4
  %cmp83 = icmp sgt i32 %40, 0
  br i1 %cmp83, label %if.then.84, label %if.end.88

if.then.84:                                       ; preds = %if.end.80
  %41 = load i64, i64* %result, align 8
  %call85 = call i64 @intern(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0))
  %42 = load i32, i32* %bits, align 4
  %conv = sext i32 %42 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call86 = call i64 @list2(i64 %call85, i64 %add)
  %call87 = call i64 @nconc2(i64 %41, i64 %call86)
  store i64 %call87, i64* %result, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.84, %if.end.80
  %43 = load i64, i64* %result, align 8
  %call89 = call i64 @intern(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0))
  %44 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %call90 = call i32 @gnutls_kx_get(%struct.gnutls_session_int* %44)
  %call91 = call i8* @gnutls_kx_get_name(i32 %call90)
  %call92 = call i64 @build_string(i8* %call91)
  %call93 = call i64 @list2(i64 %call89, i64 %call92)
  %call94 = call i64 @nconc2(i64 %43, i64 %call93)
  store i64 %call94, i64* %result, align 8
  %45 = load i64, i64* %result, align 8
  %call95 = call i64 @intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0))
  %46 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %call96 = call i32 @gnutls_protocol_get_version(%struct.gnutls_session_int* %46)
  %call97 = call i8* @gnutls_protocol_get_name(i32 %call96)
  %call98 = call i64 @build_string(i8* %call97)
  %call99 = call i64 @list2(i64 %call95, i64 %call98)
  %call100 = call i64 @nconc2(i64 %45, i64 %call99)
  store i64 %call100, i64* %result, align 8
  %47 = load i64, i64* %result, align 8
  %call101 = call i64 @intern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0))
  %48 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %call102 = call i32 @gnutls_cipher_get(%struct.gnutls_session_int* %48)
  %call103 = call i8* @gnutls_cipher_get_name(i32 %call102)
  %call104 = call i64 @build_string(i8* %call103)
  %call105 = call i64 @list2(i64 %call101, i64 %call104)
  %call106 = call i64 @nconc2(i64 %47, i64 %call105)
  store i64 %call106, i64* %result, align 8
  %49 = load i64, i64* %result, align 8
  %call107 = call i64 @intern(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %50 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %call108 = call i32 @gnutls_mac_get(%struct.gnutls_session_int* %50)
  %call109 = call i8* @gnutls_mac_get_name(i32 %call108)
  %call110 = call i64 @build_string(i8* %call109)
  %call111 = call i64 @list2(i64 %call107, i64 %call110)
  %call112 = call i64 @nconc2(i64 %49, i64 %call111)
  store i64 %call112, i64* %result, align 8
  %51 = load i64, i64* %result, align 8
  store i64 %51, i64* %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then
  %52 = load i64, i64* %retval
  ret i64 %52
}

declare i64 @Fcons(i64, i64) #1

declare i32 @gnutls_x509_crt_check_issuer(%struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int*) #1

declare i64 @list2(i64, i64) #1

declare i64 @nconc2(i64, i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @gnutls_certificate_details(%struct.gnutls_x509_crt_int* %cert) #0 {
entry:
  %cert.addr = alloca %struct.gnutls_x509_crt_int*, align 8
  %res = alloca i64, align 8
  %err = alloca i32, align 4
  %buf_size = alloca i64, align 8
  %version = alloca i32, align 4
  %serial = alloca i8*, align 8
  %dn = alloca i8*, align 8
  %buf = alloca [19 x i8], align 16
  %t = alloca %struct.tm, align 8
  %tim = alloca i64, align 8
  %dn64 = alloca i8*, align 8
  %bits = alloca i32, align 4
  %name = alloca i8*, align 8
  %buf99 = alloca i8*, align 8
  %buf115 = alloca i8*, align 8
  %name131 = alloca i8*, align 8
  %buf145 = alloca i8*, align 8
  %buf161 = alloca i8*, align 8
  store %struct.gnutls_x509_crt_int* %cert, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call = call i64 @builtin_lisp_symbol(i32 0)
  store i64 %call, i64* %res, align 8
  %0 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call1 = call i32 @gnutls_x509_crt_get_version(%struct.gnutls_x509_crt_int* %0)
  store i32 %call1, i32* %version, align 4
  %1 = load i32, i32* %version, align 4
  call void @check_memory_full(i32 %1)
  %2 = load i32, i32* %version, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %res, align 8
  %call2 = call i64 @intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0))
  %4 = load i32, i32* %version, align 4
  %conv = sext i32 %4 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  %call3 = call i64 @list2(i64 %call2, i64 %add)
  %call4 = call i64 @nconc2(i64 %3, i64 %call3)
  store i64 %call4, i64* %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, i64* %buf_size, align 8
  %5 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call5 = call i32 @gnutls_x509_crt_get_serial(%struct.gnutls_x509_crt_int* %5, i8* null, i64* %buf_size)
  store i32 %call5, i32* %err, align 4
  %6 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %6)
  %7 = load i32, i32* %err, align 4
  %cmp6 = icmp eq i32 %7, -51
  br i1 %cmp6, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.end
  %8 = load i64, i64* %buf_size, align 8
  %call9 = call noalias i8* @xmalloc(i64 %8)
  store i8* %call9, i8** %serial, align 8
  %9 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %10 = load i8*, i8** %serial, align 8
  %call10 = call i32 @gnutls_x509_crt_get_serial(%struct.gnutls_x509_crt_int* %9, i8* %10, i64* %buf_size)
  store i32 %call10, i32* %err, align 4
  %11 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %11)
  %12 = load i32, i32* %err, align 4
  %cmp11 = icmp sge i32 %12, 0
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.then.8
  %13 = load i64, i64* %res, align 8
  %call14 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0))
  %14 = load i8*, i8** %serial, align 8
  %15 = load i64, i64* %buf_size, align 8
  %call15 = call i64 @gnutls_hex_string(i8* %14, i64 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.74, i32 0, i32 0))
  %call16 = call i64 @list2(i64 %call14, i64 %call15)
  %call17 = call i64 @nconc2(i64 %13, i64 %call16)
  store i64 %call17, i64* %res, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %if.then.8
  %16 = load i8*, i8** %serial, align 8
  call void @xfree(i8* %16)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  store i64 0, i64* %buf_size, align 8
  %17 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call20 = call i32 @gnutls_x509_crt_get_issuer_dn(%struct.gnutls_x509_crt_int* %17, i8* null, i64* %buf_size)
  store i32 %call20, i32* %err, align 4
  %18 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %18)
  %19 = load i32, i32* %err, align 4
  %cmp21 = icmp eq i32 %19, -51
  br i1 %cmp21, label %if.then.23, label %if.end.34

if.then.23:                                       ; preds = %if.end.19
  %20 = load i64, i64* %buf_size, align 8
  %call24 = call noalias i8* @xmalloc(i64 %20)
  store i8* %call24, i8** %dn, align 8
  %21 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %22 = load i8*, i8** %dn, align 8
  %call25 = call i32 @gnutls_x509_crt_get_issuer_dn(%struct.gnutls_x509_crt_int* %21, i8* %22, i64* %buf_size)
  store i32 %call25, i32* %err, align 4
  %23 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %23)
  %24 = load i32, i32* %err, align 4
  %cmp26 = icmp sge i32 %24, 0
  br i1 %cmp26, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %if.then.23
  %25 = load i64, i64* %res, align 8
  %call29 = call i64 @intern(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0))
  %26 = load i8*, i8** %dn, align 8
  %27 = load i64, i64* %buf_size, align 8
  %call30 = call i64 @make_string(i8* %26, i64 %27)
  %call31 = call i64 @list2(i64 %call29, i64 %call30)
  %call32 = call i64 @nconc2(i64 %25, i64 %call31)
  store i64 %call32, i64* %res, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.28, %if.then.23
  %28 = load i8*, i8** %dn, align 8
  call void @xfree(i8* %28)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.19
  %29 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call35 = call i64 @gnutls_x509_crt_get_activation_time(%struct.gnutls_x509_crt_int* %29)
  store i64 %call35, i64* %tim, align 8
  %call36 = call %struct.tm* @gmtime_r(i64* %tim, %struct.tm* %t) #9
  %tobool = icmp ne %struct.tm* %call36, null
  br i1 %tobool, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.end.34
  %arraydecay = getelementptr inbounds [19 x i8], [19 x i8]* %buf, i32 0, i32 0
  %call37 = call i64 @strftime(i8* %arraydecay, i64 19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), %struct.tm* %t) #9
  %tobool38 = icmp ne i64 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %land.lhs.true
  %30 = load i64, i64* %res, align 8
  %call40 = call i64 @intern(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0))
  %arraydecay41 = getelementptr inbounds [19 x i8], [19 x i8]* %buf, i32 0, i32 0
  %call42 = call i64 @build_string(i8* %arraydecay41)
  %call43 = call i64 @list2(i64 %call40, i64 %call42)
  %call44 = call i64 @nconc2(i64 %30, i64 %call43)
  store i64 %call44, i64* %res, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.39, %land.lhs.true, %if.end.34
  %31 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call46 = call i64 @gnutls_x509_crt_get_expiration_time(%struct.gnutls_x509_crt_int* %31)
  store i64 %call46, i64* %tim, align 8
  %call47 = call %struct.tm* @gmtime_r(i64* %tim, %struct.tm* %t) #9
  %tobool48 = icmp ne %struct.tm* %call47, null
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.59

land.lhs.true.49:                                 ; preds = %if.end.45
  %arraydecay50 = getelementptr inbounds [19 x i8], [19 x i8]* %buf, i32 0, i32 0
  %call51 = call i64 @strftime(i8* %arraydecay50, i64 19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), %struct.tm* %t) #9
  %tobool52 = icmp ne i64 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %land.lhs.true.49
  %32 = load i64, i64* %res, align 8
  %call54 = call i64 @intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0))
  %arraydecay55 = getelementptr inbounds [19 x i8], [19 x i8]* %buf, i32 0, i32 0
  %call56 = call i64 @build_string(i8* %arraydecay55)
  %call57 = call i64 @list2(i64 %call54, i64 %call56)
  %call58 = call i64 @nconc2(i64 %32, i64 %call57)
  store i64 %call58, i64* %res, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.53, %land.lhs.true.49, %if.end.45
  store i64 0, i64* %buf_size, align 8
  %33 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call60 = call i32 @gnutls_x509_crt_get_dn(%struct.gnutls_x509_crt_int* %33, i8* null, i64* %buf_size)
  store i32 %call60, i32* %err, align 4
  %34 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %34)
  %35 = load i32, i32* %err, align 4
  %cmp61 = icmp eq i32 %35, -51
  br i1 %cmp61, label %if.then.63, label %if.end.75

if.then.63:                                       ; preds = %if.end.59
  %36 = load i64, i64* %buf_size, align 8
  %call65 = call noalias i8* @xmalloc(i64 %36)
  store i8* %call65, i8** %dn64, align 8
  %37 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %38 = load i8*, i8** %dn64, align 8
  %call66 = call i32 @gnutls_x509_crt_get_dn(%struct.gnutls_x509_crt_int* %37, i8* %38, i64* %buf_size)
  store i32 %call66, i32* %err, align 4
  %39 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %39)
  %40 = load i32, i32* %err, align 4
  %cmp67 = icmp sge i32 %40, 0
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.then.63
  %41 = load i64, i64* %res, align 8
  %call70 = call i64 @intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0))
  %42 = load i8*, i8** %dn64, align 8
  %43 = load i64, i64* %buf_size, align 8
  %call71 = call i64 @make_string(i8* %42, i64 %43)
  %call72 = call i64 @list2(i64 %call70, i64 %call71)
  %call73 = call i64 @nconc2(i64 %41, i64 %call72)
  store i64 %call73, i64* %res, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %if.then.63
  %44 = load i8*, i8** %dn64, align 8
  call void @xfree(i8* %44)
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.59
  %45 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call76 = call i32 @gnutls_x509_crt_get_pk_algorithm(%struct.gnutls_x509_crt_int* %45, i32* %bits)
  store i32 %call76, i32* %err, align 4
  %46 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %46)
  %47 = load i32, i32* %err, align 4
  %cmp77 = icmp sge i32 %47, 0
  br i1 %cmp77, label %if.then.79, label %if.end.94

if.then.79:                                       ; preds = %if.end.75
  %48 = load i32, i32* %err, align 4
  %call80 = call i8* @gnutls_pk_algorithm_get_name(i32 %48)
  store i8* %call80, i8** %name, align 8
  %49 = load i8*, i8** %name, align 8
  %tobool81 = icmp ne i8* %49, null
  br i1 %tobool81, label %if.then.82, label %if.end.87

if.then.82:                                       ; preds = %if.then.79
  %50 = load i64, i64* %res, align 8
  %call83 = call i64 @intern(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.80, i32 0, i32 0))
  %51 = load i8*, i8** %name, align 8
  %call84 = call i64 @build_string(i8* %51)
  %call85 = call i64 @list2(i64 %call83, i64 %call84)
  %call86 = call i64 @nconc2(i64 %50, i64 %call85)
  store i64 %call86, i64* %res, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.82, %if.then.79
  %52 = load i32, i32* %err, align 4
  %53 = load i32, i32* %bits, align 4
  %call88 = call i32 @gnutls_pk_bits_to_sec_param(i32 %52, i32 %53)
  %call89 = call i8* @gnutls_sec_param_get_name(i32 %call88)
  store i8* %call89, i8** %name, align 8
  %54 = load i64, i64* %res, align 8
  %call90 = call i64 @intern(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i32 0, i32 0))
  %55 = load i8*, i8** %name, align 8
  %call91 = call i64 @build_string(i8* %55)
  %call92 = call i64 @list2(i64 %call90, i64 %call91)
  %call93 = call i64 @nconc2(i64 %54, i64 %call92)
  store i64 %call93, i64* %res, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.87, %if.end.75
  store i64 0, i64* %buf_size, align 8
  %56 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call95 = call i32 @gnutls_x509_crt_get_issuer_unique_id(%struct.gnutls_x509_crt_int* %56, i8* null, i64* %buf_size)
  store i32 %call95, i32* %err, align 4
  %57 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %57)
  %58 = load i32, i32* %err, align 4
  %cmp96 = icmp eq i32 %58, -51
  br i1 %cmp96, label %if.then.98, label %if.end.110

if.then.98:                                       ; preds = %if.end.94
  %59 = load i64, i64* %buf_size, align 8
  %call100 = call noalias i8* @xmalloc(i64 %59)
  store i8* %call100, i8** %buf99, align 8
  %60 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %61 = load i8*, i8** %buf99, align 8
  %call101 = call i32 @gnutls_x509_crt_get_issuer_unique_id(%struct.gnutls_x509_crt_int* %60, i8* %61, i64* %buf_size)
  store i32 %call101, i32* %err, align 4
  %62 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %62)
  %63 = load i32, i32* %err, align 4
  %cmp102 = icmp sge i32 %63, 0
  br i1 %cmp102, label %if.then.104, label %if.end.109

if.then.104:                                      ; preds = %if.then.98
  %64 = load i64, i64* %res, align 8
  %call105 = call i64 @intern(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0))
  %65 = load i8*, i8** %buf99, align 8
  %66 = load i64, i64* %buf_size, align 8
  %call106 = call i64 @make_string(i8* %65, i64 %66)
  %call107 = call i64 @list2(i64 %call105, i64 %call106)
  %call108 = call i64 @nconc2(i64 %64, i64 %call107)
  store i64 %call108, i64* %res, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.104, %if.then.98
  %67 = load i8*, i8** %buf99, align 8
  call void @xfree(i8* %67)
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.94
  store i64 0, i64* %buf_size, align 8
  %68 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call111 = call i32 @gnutls_x509_crt_get_subject_unique_id(%struct.gnutls_x509_crt_int* %68, i8* null, i64* %buf_size)
  store i32 %call111, i32* %err, align 4
  %69 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %69)
  %70 = load i32, i32* %err, align 4
  %cmp112 = icmp eq i32 %70, -51
  br i1 %cmp112, label %if.then.114, label %if.end.126

if.then.114:                                      ; preds = %if.end.110
  %71 = load i64, i64* %buf_size, align 8
  %call116 = call noalias i8* @xmalloc(i64 %71)
  store i8* %call116, i8** %buf115, align 8
  %72 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %73 = load i8*, i8** %buf115, align 8
  %call117 = call i32 @gnutls_x509_crt_get_subject_unique_id(%struct.gnutls_x509_crt_int* %72, i8* %73, i64* %buf_size)
  store i32 %call117, i32* %err, align 4
  %74 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %74)
  %75 = load i32, i32* %err, align 4
  %cmp118 = icmp sge i32 %75, 0
  br i1 %cmp118, label %if.then.120, label %if.end.125

if.then.120:                                      ; preds = %if.then.114
  %76 = load i64, i64* %res, align 8
  %call121 = call i64 @intern(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i32 0, i32 0))
  %77 = load i8*, i8** %buf115, align 8
  %78 = load i64, i64* %buf_size, align 8
  %call122 = call i64 @make_string(i8* %77, i64 %78)
  %call123 = call i64 @list2(i64 %call121, i64 %call122)
  %call124 = call i64 @nconc2(i64 %76, i64 %call123)
  store i64 %call124, i64* %res, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.120, %if.then.114
  %79 = load i8*, i8** %buf115, align 8
  call void @xfree(i8* %79)
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.110
  %80 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call127 = call i32 @gnutls_x509_crt_get_signature_algorithm(%struct.gnutls_x509_crt_int* %80)
  store i32 %call127, i32* %err, align 4
  %81 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %81)
  %82 = load i32, i32* %err, align 4
  %cmp128 = icmp sge i32 %82, 0
  br i1 %cmp128, label %if.then.130, label %if.end.140

if.then.130:                                      ; preds = %if.end.126
  %83 = load i32, i32* %err, align 4
  %call132 = call i8* @gnutls_sign_get_name(i32 %83)
  store i8* %call132, i8** %name131, align 8
  %84 = load i8*, i8** %name131, align 8
  %tobool133 = icmp ne i8* %84, null
  br i1 %tobool133, label %if.then.134, label %if.end.139

if.then.134:                                      ; preds = %if.then.130
  %85 = load i64, i64* %res, align 8
  %call135 = call i64 @intern(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.84, i32 0, i32 0))
  %86 = load i8*, i8** %name131, align 8
  %call136 = call i64 @build_string(i8* %86)
  %call137 = call i64 @list2(i64 %call135, i64 %call136)
  %call138 = call i64 @nconc2(i64 %85, i64 %call137)
  store i64 %call138, i64* %res, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.134, %if.then.130
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.126
  store i64 0, i64* %buf_size, align 8
  %87 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call141 = call i32 @gnutls_x509_crt_get_key_id(%struct.gnutls_x509_crt_int* %87, i32 0, i8* null, i64* %buf_size)
  store i32 %call141, i32* %err, align 4
  %88 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %88)
  %89 = load i32, i32* %err, align 4
  %cmp142 = icmp eq i32 %89, -51
  br i1 %cmp142, label %if.then.144, label %if.end.156

if.then.144:                                      ; preds = %if.end.140
  %90 = load i64, i64* %buf_size, align 8
  %call146 = call noalias i8* @xmalloc(i64 %90)
  store i8* %call146, i8** %buf145, align 8
  %91 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %92 = load i8*, i8** %buf145, align 8
  %call147 = call i32 @gnutls_x509_crt_get_key_id(%struct.gnutls_x509_crt_int* %91, i32 0, i8* %92, i64* %buf_size)
  store i32 %call147, i32* %err, align 4
  %93 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %93)
  %94 = load i32, i32* %err, align 4
  %cmp148 = icmp sge i32 %94, 0
  br i1 %cmp148, label %if.then.150, label %if.end.155

if.then.150:                                      ; preds = %if.then.144
  %95 = load i64, i64* %res, align 8
  %call151 = call i64 @intern(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i32 0, i32 0))
  %96 = load i8*, i8** %buf145, align 8
  %97 = load i64, i64* %buf_size, align 8
  %call152 = call i64 @gnutls_hex_string(i8* %96, i64 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0))
  %call153 = call i64 @list2(i64 %call151, i64 %call152)
  %call154 = call i64 @nconc2(i64 %95, i64 %call153)
  store i64 %call154, i64* %res, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.150, %if.then.144
  %98 = load i8*, i8** %buf145, align 8
  call void @xfree(i8* %98)
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.140
  store i64 0, i64* %buf_size, align 8
  %99 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %call157 = call i32 @gnutls_x509_crt_get_fingerprint(%struct.gnutls_x509_crt_int* %99, i32 3, i8* null, i64* %buf_size)
  store i32 %call157, i32* %err, align 4
  %100 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %100)
  %101 = load i32, i32* %err, align 4
  %cmp158 = icmp eq i32 %101, -51
  br i1 %cmp158, label %if.then.160, label %if.end.172

if.then.160:                                      ; preds = %if.end.156
  %102 = load i64, i64* %buf_size, align 8
  %call162 = call noalias i8* @xmalloc(i64 %102)
  store i8* %call162, i8** %buf161, align 8
  %103 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %cert.addr, align 8
  %104 = load i8*, i8** %buf161, align 8
  %call163 = call i32 @gnutls_x509_crt_get_fingerprint(%struct.gnutls_x509_crt_int* %103, i32 3, i8* %104, i64* %buf_size)
  store i32 %call163, i32* %err, align 4
  %105 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %105)
  %106 = load i32, i32* %err, align 4
  %cmp164 = icmp sge i32 %106, 0
  br i1 %cmp164, label %if.then.166, label %if.end.171

if.then.166:                                      ; preds = %if.then.160
  %107 = load i64, i64* %res, align 8
  %call167 = call i64 @intern(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.87, i32 0, i32 0))
  %108 = load i8*, i8** %buf161, align 8
  %109 = load i64, i64* %buf_size, align 8
  %call168 = call i64 @gnutls_hex_string(i8* %108, i64 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0))
  %call169 = call i64 @list2(i64 %call167, i64 %call168)
  %call170 = call i64 @nconc2(i64 %107, i64 %call169)
  store i64 %call170, i64* %res, align 8
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.166, %if.then.160
  %110 = load i8*, i8** %buf161, align 8
  call void @xfree(i8* %110)
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.156
  %111 = load i64, i64* %res, align 8
  ret i64 %111
}

declare i32 @gnutls_dh_get_prime_bits(%struct.gnutls_session_int*) #1

; Function Attrs: nounwind uwtable
define internal void @check_memory_full(i32 %err) #0 {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  %0 = load i32, i32* %err.addr, align 4
  %cmp = icmp eq i32 %0, -25
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @memory_full(i64 0) #8
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

declare i8* @gnutls_kx_get_name(i32) #1

declare i32 @gnutls_kx_get(%struct.gnutls_session_int*) #1

declare i8* @gnutls_protocol_get_name(i32) #1

declare i32 @gnutls_protocol_get_version(%struct.gnutls_session_int*) #1

declare i8* @gnutls_cipher_get_name(i32) #1

declare i32 @gnutls_cipher_get(%struct.gnutls_session_int*) #1

declare i8* @gnutls_mac_get_name(i32) #1

declare i32 @gnutls_mac_get(%struct.gnutls_session_int*) #1

; Function Attrs: nounwind uwtable
define i64 @emacs_gnutls_global_init() #0 {
entry:
  %ret = alloca i32, align 4
  store i32 0, i32* %ret, align 4
  %0 = load i8, i8* @gnutls_global_initialized, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end.2, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @gnutls_global_init()
  store i32 %call, i32* %ret, align 4
  %1 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  store i8 1, i8* @gnutls_global_initialized, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %2 = load i32, i32* %ret, align 4
  %call3 = call i64 @gnutls_make_error(i32 %2)
  ret i64 %call3
}

declare i32 @gnutls_global_init() #1

; Function Attrs: nounwind uwtable
define internal i64 @gnutls_make_error(i32 %err) #0 {
entry:
  %retval = alloca i64, align 8
  %err.addr = alloca i32, align 4
  store i32 %err, i32* %err.addr, align 4
  %0 = load i32, i32* %err.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 -28, label %sw.bb.1
    i32 -52, label %sw.bb.3
    i32 -10, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 901)
  store i64 %call, i64* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call i64 @builtin_lisp_symbol(i32 494)
  store i64 %call2, i64* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %call4 = call i64 @builtin_lisp_symbol(i32 495)
  store i64 %call4, i64* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %call6 = call i64 @builtin_lisp_symbol(i32 496)
  store i64 %call6, i64* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  %1 = load i32, i32* %err.addr, align 4
  call void @check_memory_full(i32 %1)
  %2 = load i32, i32* %err.addr, align 4
  %conv = sext i32 %2 to i64
  %shl = shl i64 %conv, 2
  %add = add i64 %shl, 2
  store i64 %add, i64* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.5, %sw.bb.3, %sw.bb.1, %sw.bb
  %3 = load i64, i64* %retval
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define i64 @Fgnutls_boot(i64 %proc, i64 %type, i64 %proplist) #0 {
entry:
  %retval = alloca i64, align 8
  %proc.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  %proplist.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %max_log_level = alloca i32, align 4
  %verify_error_all = alloca i8, align 1
  %state = alloca %struct.gnutls_session_int*, align 8
  %x509_cred = alloca %struct.gnutls_certificate_credentials_st*, align 8
  %anon_cred = alloca %struct.gnutls_anon_client_credentials_st*, align 8
  %global_init = alloca i64, align 8
  %priority_string_ptr = alloca i8*, align 8
  %peer_verification = alloca i32, align 4
  %c_hostname = alloca i8*, align 8
  %priority_string = alloca i64, align 8
  %trustfiles = alloca i64, align 8
  %crlfiles = alloca i64, align 8
  %keylist = alloca i64, align 8
  %loglevel = alloca i64, align 8
  %hostname = alloca i64, align 8
  %verify_error = alloca i64, align 8
  %prime_bits = alloca i64, align 8
  %warnings = alloca i64, align 8
  %verify_flags = alloca i64, align 8
  %gnutls_verify_flags = alloca i32, align 4
  %file_format = alloca i32, align 4
  %tail = alloca i64, align 8
  %trustfile = alloca i64, align 8
  %crlfile = alloca i64, align 8
  %keyfile = alloca i64, align 8
  %certfile = alloca i64, align 8
  %tail392 = alloca i64, align 8
  %warning = alloca i64, align 8
  %message = alloca i64, align 8
  %gnutls_verify_cert = alloca %struct.gnutls_x509_crt_int*, align 8
  %gnutls_verify_cert_list = alloca %struct.gnutls_datum_t*, align 8
  %gnutls_verify_cert_list_size = alloca i32, align 4
  %err = alloca i32, align 4
  store i64 %proc, i64* %proc.addr, align 8
  store i64 %type, i64* %type.addr, align 8
  store i64 %proplist, i64* %proplist.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %max_log_level, align 4
  store i8 0, i8* %verify_error_all, align 1
  store %struct.gnutls_certificate_credentials_st* null, %struct.gnutls_certificate_credentials_st** %x509_cred, align 8
  store %struct.gnutls_anon_client_credentials_st* null, %struct.gnutls_anon_client_credentials_st** %anon_cred, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8** %priority_string_ptr, align 8
  %0 = load i64, i64* %proc.addr, align 8
  call void @CHECK_PROCESS(i64 %0)
  %1 = load i64, i64* %type.addr, align 8
  %and = and i64 %1, 7
  %conv = trunc i64 %and to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call i64 @builtin_lisp_symbol(i32 897)
  %2 = load i64, i64* %type.addr, align 8
  %3 = call i64 @wrong_type_argument(i64 %call, i64 %2) #8
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i64, i64* %proplist.addr, align 8
  call void @CHECK_LIST(i64 %5)
  %call2 = call i64 @Fgnutls_available_p()
  %call3 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp4 = icmp eq i64 %call2, %call3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i32 0, i32 0)) #8
  unreachable

if.end:                                           ; preds = %cond.end
  %6 = load i64, i64* %type.addr, align 8
  %call6 = call i64 @builtin_lisp_symbol(i32 498)
  %cmp7 = icmp eq i64 %6, %call6
  br i1 %cmp7, label %if.end.13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, i64* %type.addr, align 8
  %call9 = call i64 @builtin_lisp_symbol(i32 492)
  %cmp10 = icmp eq i64 %7, %call9
  br i1 %cmp10, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i32 0, i32 0)) #8
  unreachable

if.end.13:                                        ; preds = %land.lhs.true, %if.end
  %8 = load i64, i64* %proplist.addr, align 8
  %call14 = call i64 @builtin_lisp_symbol(i32 50)
  %call15 = call i64 @Fplist_get(i64 %8, i64 %call14)
  store i64 %call15, i64* %hostname, align 8
  %9 = load i64, i64* %proplist.addr, align 8
  %call16 = call i64 @builtin_lisp_symbol(i32 54)
  %call17 = call i64 @Fplist_get(i64 %9, i64 %call16)
  store i64 %call17, i64* %priority_string, align 8
  %10 = load i64, i64* %proplist.addr, align 8
  %call18 = call i64 @builtin_lisp_symbol(i32 55)
  %call19 = call i64 @Fplist_get(i64 %10, i64 %call18)
  store i64 %call19, i64* %trustfiles, align 8
  %11 = load i64, i64* %proplist.addr, align 8
  %call20 = call i64 @builtin_lisp_symbol(i32 51)
  %call21 = call i64 @Fplist_get(i64 %11, i64 %call20)
  store i64 %call21, i64* %keylist, align 8
  %12 = load i64, i64* %proplist.addr, align 8
  %call22 = call i64 @builtin_lisp_symbol(i32 49)
  %call23 = call i64 @Fplist_get(i64 %12, i64 %call22)
  store i64 %call23, i64* %crlfiles, align 8
  %13 = load i64, i64* %proplist.addr, align 8
  %call24 = call i64 @builtin_lisp_symbol(i32 52)
  %call25 = call i64 @Fplist_get(i64 %13, i64 %call24)
  store i64 %call25, i64* %loglevel, align 8
  %14 = load i64, i64* %proplist.addr, align 8
  %call26 = call i64 @builtin_lisp_symbol(i32 56)
  %call27 = call i64 @Fplist_get(i64 %14, i64 %call26)
  store i64 %call27, i64* %verify_error, align 8
  %15 = load i64, i64* %proplist.addr, align 8
  %call28 = call i64 @builtin_lisp_symbol(i32 53)
  %call29 = call i64 @Fplist_get(i64 %15, i64 %call28)
  store i64 %call29, i64* %prime_bits, align 8
  %16 = load i64, i64* %verify_error, align 8
  %call30 = call i64 @builtin_lisp_symbol(i32 901)
  %cmp31 = icmp eq i64 %16, %call30
  br i1 %cmp31, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.end.13
  store i8 1, i8* %verify_error_all, align 1
  br label %if.end.40

if.else:                                          ; preds = %if.end.13
  %17 = load i64, i64* %verify_error, align 8
  %call34 = call i64 @Flistp(i64 %17) #7
  %call35 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp36 = icmp eq i64 %call34, %call35
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else
  call void (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.35, i32 0, i32 0)) #8
  unreachable

if.end.39:                                        ; preds = %if.else
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.33
  %18 = load i64, i64* %hostname, align 8
  %call41 = call zeroext i1 @STRINGP(i64 %18)
  br i1 %call41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %if.end.40
  call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i32 0, i32 0)) #8
  unreachable

if.end.43:                                        ; preds = %if.end.40
  %19 = load i64, i64* %hostname, align 8
  %call44 = call i8* @SSDATA(i64 %19)
  store i8* %call44, i8** %c_hostname, align 8
  %20 = load i64, i64* %proc.addr, align 8
  %call45 = call %struct.Lisp_Process* @XPROCESS(i64 %20)
  %gnutls_state = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call45, i32 0, i32 31
  %21 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %gnutls_state, align 8
  store %struct.gnutls_session_int* %21, %struct.gnutls_session_int** %state, align 8
  %22 = load i64, i64* %loglevel, align 8
  %and46 = and i64 %22, 7
  %conv47 = trunc i64 %and46 to i32
  %and48 = and i32 %conv47, -5
  %cmp49 = icmp eq i32 %and48, 2
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.69

land.lhs.true.51:                                 ; preds = %if.end.43
  br i1 false, label %cond.false.55, label %cond.true.52

cond.true.52:                                     ; preds = %land.lhs.true.51
  %23 = load i64, i64* %loglevel, align 8
  %shr = ashr i64 %23, 2
  %cmp53 = icmp sle i64 -2147483648, %shr
  br i1 %cmp53, label %land.lhs.true.59, label %if.end.69

cond.false.55:                                    ; preds = %land.lhs.true.51
  %24 = load i64, i64* %loglevel, align 8
  %shr56 = ashr i64 %24, 2
  %cmp57 = icmp sle i64 0, %shr56
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.69

land.lhs.true.59:                                 ; preds = %cond.false.55, %cond.true.52
  %25 = load i64, i64* %loglevel, align 8
  %shr60 = ashr i64 %25, 2
  %cmp61 = icmp sle i64 %shr60, 2147483647
  br i1 %cmp61, label %if.then.63, label %if.end.69

if.then.63:                                       ; preds = %land.lhs.true.59
  call void @gnutls_global_set_log_function(void (i32, i8*)* @gnutls_log_function)
  call void @gnutls_global_set_audit_log_function(void (%struct.gnutls_session_int*, i8*)* @gnutls_audit_log_function)
  %26 = load i64, i64* %loglevel, align 8
  %shr64 = ashr i64 %26, 2
  %conv65 = trunc i64 %shr64 to i32
  call void @gnutls_global_set_log_level(i32 %conv65)
  %27 = load i64, i64* %loglevel, align 8
  %shr66 = ashr i64 %27, 2
  %conv67 = trunc i64 %shr66 to i32
  store i32 %conv67, i32* %max_log_level, align 4
  %28 = load i32, i32* %max_log_level, align 4
  %29 = load i64, i64* %proc.addr, align 8
  %call68 = call %struct.Lisp_Process* @XPROCESS(i64 %29)
  %gnutls_log_level = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call68, i32 0, i32 37
  store i32 %28, i32* %gnutls_log_level, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.63, %land.lhs.true.59, %cond.false.55, %cond.true.52, %if.end.43
  br label %do.body

do.body:                                          ; preds = %if.end.69
  %30 = load i32, i32* %max_log_level, align 4
  %cmp70 = icmp sle i32 1, %30
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %do.body
  %31 = load i8*, i8** %c_hostname, align 8
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), i8* %31)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.73
  %call74 = call i64 @emacs_gnutls_global_init()
  store i64 %call74, i64* %global_init, align 8
  %32 = load i64, i64* %global_init, align 8
  %call75 = call i64 @Fgnutls_errorp(i64 %32) #7
  %call76 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp77 = icmp eq i64 %call75, %call76
  br i1 %cmp77, label %if.end.80, label %if.then.79

if.then.79:                                       ; preds = %do.end
  %33 = load i64, i64* %global_init, align 8
  store i64 %33, i64* %retval
  br label %return

if.end.80:                                        ; preds = %do.end
  %34 = load i64, i64* %proc.addr, align 8
  %call81 = call i64 @emacs_gnutls_deinit(i64 %34)
  %35 = load i64, i64* %proc.addr, align 8
  %call82 = call %struct.Lisp_Process* @XPROCESS(i64 %35)
  %gnutls_state83 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call82, i32 0, i32 31
  store %struct.gnutls_session_int* null, %struct.gnutls_session_int** %gnutls_state83, align 8
  %36 = load i64, i64* %proc.addr, align 8
  %call84 = call %struct.Lisp_Process* @XPROCESS(i64 %36)
  %gnutls_x509_cred = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call84, i32 0, i32 32
  store %struct.gnutls_certificate_credentials_st* null, %struct.gnutls_certificate_credentials_st** %gnutls_x509_cred, align 8
  %37 = load i64, i64* %proc.addr, align 8
  %call85 = call %struct.Lisp_Process* @XPROCESS(i64 %37)
  %gnutls_anon_cred = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call85, i32 0, i32 33
  store %struct.gnutls_anon_client_credentials_st* null, %struct.gnutls_anon_client_credentials_st** %gnutls_anon_cred, align 8
  %38 = load i64, i64* %proc.addr, align 8
  %call86 = call %struct.Lisp_Process* @XPROCESS(i64 %38)
  %39 = load i64, i64* %type.addr, align 8
  call void @pset_gnutls_cred_type(%struct.Lisp_Process* %call86, i64 %39)
  %40 = load i64, i64* %proc.addr, align 8
  %call87 = call %struct.Lisp_Process* @XPROCESS(i64 %40)
  %gnutls_initstage = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call87, i32 0, i32 30
  store i32 0, i32* %gnutls_initstage, align 4
  br label %do.body.88

do.body.88:                                       ; preds = %if.end.80
  %41 = load i32, i32* %max_log_level, align 4
  %cmp89 = icmp sle i32 1, %41
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %do.body.88
  call void @gnutls_log_function(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.91, %do.body.88
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  %42 = load i64, i64* %type.addr, align 8
  %call94 = call i64 @builtin_lisp_symbol(i32 498)
  %cmp95 = icmp eq i64 %42, %call94
  br i1 %cmp95, label %if.then.97, label %if.else.139

if.then.97:                                       ; preds = %do.end.93
  store i32 0, i32* %gnutls_verify_flags, align 4
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  %43 = load i32, i32* %max_log_level, align 4
  %cmp99 = icmp sle i32 2, %43
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %do.body.98
  call void @gnutls_log_function(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %do.body.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %call104 = call i32 @gnutls_certificate_allocate_credentials(%struct.gnutls_certificate_credentials_st** %x509_cred)
  call void @check_memory_full(i32 %call104)
  %44 = load %struct.gnutls_certificate_credentials_st*, %struct.gnutls_certificate_credentials_st** %x509_cred, align 8
  %45 = load i64, i64* %proc.addr, align 8
  %call105 = call %struct.Lisp_Process* @XPROCESS(i64 %45)
  %gnutls_x509_cred106 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call105, i32 0, i32 32
  store %struct.gnutls_certificate_credentials_st* %44, %struct.gnutls_certificate_credentials_st** %gnutls_x509_cred106, align 8
  %46 = load i64, i64* %proplist.addr, align 8
  %call107 = call i64 @builtin_lisp_symbol(i32 57)
  %call108 = call i64 @Fplist_get(i64 %46, i64 %call107)
  store i64 %call108, i64* %verify_flags, align 8
  %47 = load i64, i64* %verify_flags, align 8
  %call109 = call zeroext i1 @NUMBERP(i64 %47)
  br i1 %call109, label %if.then.110, label %if.else.119

if.then.110:                                      ; preds = %do.end.103
  %48 = load i64, i64* %verify_flags, align 8
  %shr111 = ashr i64 %48, 2
  %conv112 = trunc i64 %shr111 to i32
  store i32 %conv112, i32* %gnutls_verify_flags, align 4
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.110
  %49 = load i32, i32* %max_log_level, align 4
  %cmp114 = icmp sle i32 2, %49
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %do.body.113
  call void @gnutls_log_function(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %do.body.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  br label %if.end.138

if.else.119:                                      ; preds = %do.end.103
  %50 = load i64, i64* %verify_flags, align 8
  %call120 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp121 = icmp eq i64 %50, %call120
  br i1 %cmp121, label %if.then.123, label %if.else.130

if.then.123:                                      ; preds = %if.else.119
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.123
  %51 = load i32, i32* %max_log_level, align 4
  %cmp125 = icmp sle i32 2, %51
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %do.body.124
  call void @gnutls_log_function(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %do.body.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.137

if.else.130:                                      ; preds = %if.else.119
  br label %do.body.131

do.body.131:                                      ; preds = %if.else.130
  %52 = load i32, i32* %max_log_level, align 4
  %cmp132 = icmp sle i32 2, %52
  br i1 %cmp132, label %if.then.134, label %if.end.135

if.then.134:                                      ; preds = %do.body.131
  call void @gnutls_log_function(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.134, %do.body.131
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  br label %if.end.137

if.end.137:                                       ; preds = %do.end.136, %do.end.129
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %do.end.118
  %53 = load %struct.gnutls_certificate_credentials_st*, %struct.gnutls_certificate_credentials_st** %x509_cred, align 8
  %54 = load i32, i32* %gnutls_verify_flags, align 4
  call void @gnutls_certificate_set_verify_flags(%struct.gnutls_certificate_credentials_st* %53, i32 %54)
  br label %if.end.149

if.else.139:                                      ; preds = %do.end.93
  br label %do.body.140

do.body.140:                                      ; preds = %if.else.139
  %55 = load i32, i32* %max_log_level, align 4
  %cmp141 = icmp sle i32 2, %55
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %do.body.140
  call void @gnutls_log_function(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %do.body.140
  br label %do.end.145

do.end.145:                                       ; preds = %if.end.144
  %call146 = call i32 @gnutls_anon_allocate_client_credentials(%struct.gnutls_anon_client_credentials_st** %anon_cred)
  call void @check_memory_full(i32 %call146)
  %56 = load %struct.gnutls_anon_client_credentials_st*, %struct.gnutls_anon_client_credentials_st** %anon_cred, align 8
  %57 = load i64, i64* %proc.addr, align 8
  %call147 = call %struct.Lisp_Process* @XPROCESS(i64 %57)
  %gnutls_anon_cred148 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call147, i32 0, i32 33
  store %struct.gnutls_anon_client_credentials_st* %56, %struct.gnutls_anon_client_credentials_st** %gnutls_anon_cred148, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %do.end.145, %if.end.138
  %58 = load i64, i64* %proc.addr, align 8
  %call150 = call %struct.Lisp_Process* @XPROCESS(i64 %58)
  %gnutls_initstage151 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call150, i32 0, i32 30
  store i32 1, i32* %gnutls_initstage151, align 4
  %59 = load i64, i64* %type.addr, align 8
  %call152 = call i64 @builtin_lisp_symbol(i32 498)
  %cmp153 = icmp eq i64 %59, %call152
  br i1 %cmp153, label %if.then.155, label %if.end.278

if.then.155:                                      ; preds = %if.end.149
  store i32 1, i32* %file_format, align 4
  %60 = load %struct.gnutls_certificate_credentials_st*, %struct.gnutls_certificate_credentials_st** %x509_cred, align 8
  %call156 = call i32 @gnutls_certificate_set_x509_system_trust(%struct.gnutls_certificate_credentials_st* %60)
  store i32 %call156, i32* %ret, align 4
  %61 = load i32, i32* %ret, align 4
  %cmp157 = icmp slt i32 %61, 0
  br i1 %cmp157, label %if.then.159, label %if.end.166

if.then.159:                                      ; preds = %if.then.155
  %62 = load i32, i32* %ret, align 4
  call void @check_memory_full(i32 %62)
  br label %do.body.160

do.body.160:                                      ; preds = %if.then.159
  %63 = load i32, i32* %max_log_level, align 4
  %cmp161 = icmp sle i32 4, %63
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %do.body.160
  %64 = load i32, i32* %ret, align 4
  call void @gnutls_log_function2i(i32 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i32 0, i32 0), i32 %64)
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.163, %do.body.160
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  br label %if.end.166

if.end.166:                                       ; preds = %do.end.165, %if.then.155
  %65 = load i64, i64* %trustfiles, align 8
  store i64 %65, i64* %tail, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.166
  %66 = load i64, i64* %tail, align 8
  %and167 = and i64 %66, 7
  %conv168 = trunc i64 %and167 to i32
  %cmp169 = icmp eq i32 %conv168, 3
  br i1 %cmp169, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = load i64, i64* %tail, align 8
  %sub = sub nsw i64 %67, 3
  %68 = inttoptr i64 %sub to i8*
  %69 = bitcast i8* %68 to %struct.Lisp_Cons*
  %car = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %69, i32 0, i32 0
  %70 = load i64, i64* %car, align 8
  store i64 %70, i64* %trustfile, align 8
  %71 = load i64, i64* %trustfile, align 8
  %call171 = call zeroext i1 @STRINGP(i64 %71)
  br i1 %call171, label %if.then.172, label %if.else.188

if.then.172:                                      ; preds = %for.body
  br label %do.body.173

do.body.173:                                      ; preds = %if.then.172
  %72 = load i32, i32* %max_log_level, align 4
  %cmp174 = icmp sle i32 1, %72
  br i1 %cmp174, label %if.then.176, label %if.end.178

if.then.176:                                      ; preds = %do.body.173
  %73 = load i64, i64* %trustfile, align 8
  %call177 = call i8* @SSDATA(i64 %73)
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* %call177)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.176, %do.body.173
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.178
  %74 = load i64, i64* %trustfile, align 8
  %call180 = call i64 @encode_file_name(i64 %74)
  store i64 %call180, i64* %trustfile, align 8
  %75 = load %struct.gnutls_certificate_credentials_st*, %struct.gnutls_certificate_credentials_st** %x509_cred, align 8
  %76 = load i64, i64* %trustfile, align 8
  %call181 = call i8* @SSDATA(i64 %76)
  %77 = load i32, i32* %file_format, align 4
  %call182 = call i32 @gnutls_certificate_set_x509_trust_file(%struct.gnutls_certificate_credentials_st* %75, i8* %call181, i32 %77)
  store i32 %call182, i32* %ret, align 4
  %78 = load i32, i32* %ret, align 4
  %cmp183 = icmp slt i32 %78, 0
  br i1 %cmp183, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %do.end.179
  %79 = load i32, i32* %ret, align 4
  %call186 = call i64 @gnutls_make_error(i32 %79)
  store i64 %call186, i64* %retval
  br label %return

if.end.187:                                       ; preds = %do.end.179
  br label %if.end.190

if.else.188:                                      ; preds = %for.body
  %80 = load i64, i64* %proc.addr, align 8
  %call189 = call i64 @emacs_gnutls_deinit(i64 %80)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i32 0, i32 0)) #8
  unreachable

if.end.190:                                       ; preds = %if.end.187
  br label %for.inc

for.inc:                                          ; preds = %if.end.190
  %81 = load i64, i64* %tail, align 8
  %sub191 = sub nsw i64 %81, 3
  %82 = inttoptr i64 %sub191 to i8*
  %83 = bitcast i8* %82 to %struct.Lisp_Cons*
  %u = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %83, i32 0, i32 1
  %cdr = bitcast %union.anon* %u to i64*
  %84 = load i64, i64* %cdr, align 8
  store i64 %84, i64* %tail, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load i64, i64* %crlfiles, align 8
  store i64 %85, i64* %tail, align 8
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.220, %for.end
  %86 = load i64, i64* %tail, align 8
  %and193 = and i64 %86, 7
  %conv194 = trunc i64 %and193 to i32
  %cmp195 = icmp eq i32 %conv194, 3
  br i1 %cmp195, label %for.body.197, label %for.end.224

for.body.197:                                     ; preds = %for.cond.192
  %87 = load i64, i64* %tail, align 8
  %sub198 = sub nsw i64 %87, 3
  %88 = inttoptr i64 %sub198 to i8*
  %89 = bitcast i8* %88 to %struct.Lisp_Cons*
  %car199 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %89, i32 0, i32 0
  %90 = load i64, i64* %car199, align 8
  store i64 %90, i64* %crlfile, align 8
  %91 = load i64, i64* %crlfile, align 8
  %call200 = call zeroext i1 @STRINGP(i64 %91)
  br i1 %call200, label %if.then.201, label %if.else.217

if.then.201:                                      ; preds = %for.body.197
  br label %do.body.202

do.body.202:                                      ; preds = %if.then.201
  %92 = load i32, i32* %max_log_level, align 4
  %cmp203 = icmp sle i32 1, %92
  br i1 %cmp203, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %do.body.202
  %93 = load i64, i64* %crlfile, align 8
  %call206 = call i8* @SSDATA(i64 %93)
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i32 0, i32 0), i8* %call206)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %do.body.202
  br label %do.end.208

do.end.208:                                       ; preds = %if.end.207
  %94 = load i64, i64* %crlfile, align 8
  %call209 = call i64 @encode_file_name(i64 %94)
  store i64 %call209, i64* %crlfile, align 8
  %95 = load %struct.gnutls_certificate_credentials_st*, %struct.gnutls_certificate_credentials_st** %x509_cred, align 8
  %96 = load i64, i64* %crlfile, align 8
  %call210 = call i8* @SSDATA(i64 %96)
  %97 = load i32, i32* %file_format, align 4
  %call211 = call i32 @gnutls_certificate_set_x509_crl_file(%struct.gnutls_certificate_credentials_st* %95, i8* %call210, i32 %97)
  store i32 %call211, i32* %ret, align 4
  %98 = load i32, i32* %ret, align 4
  %cmp212 = icmp slt i32 %98, 0
  br i1 %cmp212, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %do.end.208
  %99 = load i32, i32* %ret, align 4
  %call215 = call i64 @gnutls_make_error(i32 %99)
  store i64 %call215, i64* %retval
  br label %return

if.end.216:                                       ; preds = %do.end.208
  br label %if.end.219

if.else.217:                                      ; preds = %for.body.197
  %100 = load i64, i64* %proc.addr, align 8
  %call218 = call i64 @emacs_gnutls_deinit(i64 %100)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0)) #8
  unreachable

if.end.219:                                       ; preds = %if.end.216
  br label %for.inc.220

for.inc.220:                                      ; preds = %if.end.219
  %101 = load i64, i64* %tail, align 8
  %sub221 = sub nsw i64 %101, 3
  %102 = inttoptr i64 %sub221 to i8*
  %103 = bitcast i8* %102 to %struct.Lisp_Cons*
  %u222 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %103, i32 0, i32 1
  %cdr223 = bitcast %union.anon* %u222 to i64*
  %104 = load i64, i64* %cdr223, align 8
  store i64 %104, i64* %tail, align 8
  br label %for.cond.192

for.end.224:                                      ; preds = %for.cond.192
  %105 = load i64, i64* %keylist, align 8
  store i64 %105, i64* %tail, align 8
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.273, %for.end.224
  %106 = load i64, i64* %tail, align 8
  %and226 = and i64 %106, 7
  %conv227 = trunc i64 %and226 to i32
  %cmp228 = icmp eq i32 %conv227, 3
  br i1 %cmp228, label %for.body.230, label %for.end.277

for.body.230:                                     ; preds = %for.cond.225
  %107 = load i64, i64* %tail, align 8
  %sub231 = sub nsw i64 %107, 3
  %108 = inttoptr i64 %sub231 to i8*
  %109 = bitcast i8* %108 to %struct.Lisp_Cons*
  %car232 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %109, i32 0, i32 0
  %110 = load i64, i64* %car232, align 8
  %call233 = call i64 @Fcar(i64 %110)
  store i64 %call233, i64* %keyfile, align 8
  %111 = load i64, i64* %tail, align 8
  %sub234 = sub nsw i64 %111, 3
  %112 = inttoptr i64 %sub234 to i8*
  %113 = bitcast i8* %112 to %struct.Lisp_Cons*
  %car235 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %113, i32 0, i32 0
  %114 = load i64, i64* %car235, align 8
  %call236 = call i64 @Fcdr(i64 %114)
  %call237 = call i64 @Fcar(i64 %call236)
  store i64 %call237, i64* %certfile, align 8
  %115 = load i64, i64* %keyfile, align 8
  %call238 = call zeroext i1 @STRINGP(i64 %115)
  br i1 %call238, label %land.lhs.true.240, label %if.else.268

land.lhs.true.240:                                ; preds = %for.body.230
  %116 = load i64, i64* %certfile, align 8
  %call241 = call zeroext i1 @STRINGP(i64 %116)
  br i1 %call241, label %if.then.243, label %if.else.268

if.then.243:                                      ; preds = %land.lhs.true.240
  br label %do.body.244

do.body.244:                                      ; preds = %if.then.243
  %117 = load i32, i32* %max_log_level, align 4
  %cmp245 = icmp sle i32 1, %117
  br i1 %cmp245, label %if.then.247, label %if.end.249

if.then.247:                                      ; preds = %do.body.244
  %118 = load i64, i64* %keyfile, align 8
  %call248 = call i8* @SSDATA(i64 %118)
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0), i8* %call248)
  br label %if.end.249

if.end.249:                                       ; preds = %if.then.247, %do.body.244
  br label %do.end.250

do.end.250:                                       ; preds = %if.end.249
  br label %do.body.251

do.body.251:                                      ; preds = %do.end.250
  %119 = load i32, i32* %max_log_level, align 4
  %cmp252 = icmp sle i32 1, %119
  br i1 %cmp252, label %if.then.254, label %if.end.256

if.then.254:                                      ; preds = %do.body.251
  %120 = load i64, i64* %certfile, align 8
  %call255 = call i8* @SSDATA(i64 %120)
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.50, i32 0, i32 0), i8* %call255)
  br label %if.end.256

if.end.256:                                       ; preds = %if.then.254, %do.body.251
  br label %do.end.257

do.end.257:                                       ; preds = %if.end.256
  %121 = load i64, i64* %keyfile, align 8
  %call258 = call i64 @encode_file_name(i64 %121)
  store i64 %call258, i64* %keyfile, align 8
  %122 = load i64, i64* %certfile, align 8
  %call259 = call i64 @encode_file_name(i64 %122)
  store i64 %call259, i64* %certfile, align 8
  %123 = load %struct.gnutls_certificate_credentials_st*, %struct.gnutls_certificate_credentials_st** %x509_cred, align 8
  %124 = load i64, i64* %certfile, align 8
  %call260 = call i8* @SSDATA(i64 %124)
  %125 = load i64, i64* %keyfile, align 8
  %call261 = call i8* @SSDATA(i64 %125)
  %126 = load i32, i32* %file_format, align 4
  %call262 = call i32 @gnutls_certificate_set_x509_key_file(%struct.gnutls_certificate_credentials_st* %123, i8* %call260, i8* %call261, i32 %126)
  store i32 %call262, i32* %ret, align 4
  %127 = load i32, i32* %ret, align 4
  %cmp263 = icmp slt i32 %127, 0
  br i1 %cmp263, label %if.then.265, label %if.end.267

if.then.265:                                      ; preds = %do.end.257
  %128 = load i32, i32* %ret, align 4
  %call266 = call i64 @gnutls_make_error(i32 %128)
  store i64 %call266, i64* %retval
  br label %return

if.end.267:                                       ; preds = %do.end.257
  br label %if.end.272

if.else.268:                                      ; preds = %land.lhs.true.240, %for.body.230
  %129 = load i64, i64* %proc.addr, align 8
  %call269 = call i64 @emacs_gnutls_deinit(i64 %129)
  %130 = load i64, i64* %keyfile, align 8
  %call270 = call zeroext i1 @STRINGP(i64 %130)
  %cond = select i1 %call270, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i32 0, i32 0)
  call void (i8*, ...) @error(i8* %cond) #8
  unreachable

if.end.272:                                       ; preds = %if.end.267
  br label %for.inc.273

for.inc.273:                                      ; preds = %if.end.272
  %131 = load i64, i64* %tail, align 8
  %sub274 = sub nsw i64 %131, 3
  %132 = inttoptr i64 %sub274 to i8*
  %133 = bitcast i8* %132 to %struct.Lisp_Cons*
  %u275 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %133, i32 0, i32 1
  %cdr276 = bitcast %union.anon* %u275 to i64*
  %134 = load i64, i64* %cdr276, align 8
  store i64 %134, i64* %tail, align 8
  br label %for.cond.225

for.end.277:                                      ; preds = %for.cond.225
  br label %if.end.278

if.end.278:                                       ; preds = %for.end.277, %if.end.149
  %135 = load i64, i64* %proc.addr, align 8
  %call279 = call %struct.Lisp_Process* @XPROCESS(i64 %135)
  %gnutls_initstage280 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call279, i32 0, i32 30
  store i32 2, i32* %gnutls_initstage280, align 4
  br label %do.body.281

do.body.281:                                      ; preds = %if.end.278
  %136 = load i32, i32* %max_log_level, align 4
  %cmp282 = icmp sle i32 1, %136
  br i1 %cmp282, label %if.then.284, label %if.end.285

if.then.284:                                      ; preds = %do.body.281
  call void @gnutls_log_function(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.53, i32 0, i32 0))
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.284, %do.body.281
  br label %do.end.286

do.end.286:                                       ; preds = %if.end.285
  %137 = load i64, i64* %proc.addr, align 8
  %call287 = call %struct.Lisp_Process* @XPROCESS(i64 %137)
  %gnutls_initstage288 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call287, i32 0, i32 30
  store i32 3, i32* %gnutls_initstage288, align 4
  br label %do.body.289

do.body.289:                                      ; preds = %do.end.286
  %138 = load i32, i32* %max_log_level, align 4
  %cmp290 = icmp sle i32 1, %138
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %do.body.289
  call void @gnutls_log_function(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.292, %do.body.289
  br label %do.end.294

do.end.294:                                       ; preds = %if.end.293
  %call295 = call i32 @gnutls_init(%struct.gnutls_session_int** %state, i32 2)
  store i32 %call295, i32* %ret, align 4
  %139 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %140 = load i64, i64* %proc.addr, align 8
  %call296 = call %struct.Lisp_Process* @XPROCESS(i64 %140)
  %gnutls_state297 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call296, i32 0, i32 31
  store %struct.gnutls_session_int* %139, %struct.gnutls_session_int** %gnutls_state297, align 8
  %141 = load i32, i32* %ret, align 4
  %cmp298 = icmp slt i32 %141, 0
  br i1 %cmp298, label %if.then.300, label %if.end.302

if.then.300:                                      ; preds = %do.end.294
  %142 = load i32, i32* %ret, align 4
  %call301 = call i64 @gnutls_make_error(i32 %142)
  store i64 %call301, i64* %retval
  br label %return

if.end.302:                                       ; preds = %do.end.294
  %143 = load i64, i64* %proc.addr, align 8
  %call303 = call %struct.Lisp_Process* @XPROCESS(i64 %143)
  %gnutls_initstage304 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call303, i32 0, i32 30
  store i32 4, i32* %gnutls_initstage304, align 4
  %144 = load i64, i64* %priority_string, align 8
  %call305 = call zeroext i1 @STRINGP(i64 %144)
  br i1 %call305, label %if.then.306, label %if.else.314

if.then.306:                                      ; preds = %if.end.302
  %145 = load i64, i64* %priority_string, align 8
  %call307 = call i8* @SSDATA(i64 %145)
  store i8* %call307, i8** %priority_string_ptr, align 8
  br label %do.body.308

do.body.308:                                      ; preds = %if.then.306
  %146 = load i32, i32* %max_log_level, align 4
  %cmp309 = icmp sle i32 1, %146
  br i1 %cmp309, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %do.body.308
  %147 = load i8*, i8** %priority_string_ptr, align 8
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.55, i32 0, i32 0), i8* %147)
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.311, %do.body.308
  br label %do.end.313

do.end.313:                                       ; preds = %if.end.312
  br label %if.end.321

if.else.314:                                      ; preds = %if.end.302
  br label %do.body.315

do.body.315:                                      ; preds = %if.else.314
  %148 = load i32, i32* %max_log_level, align 4
  %cmp316 = icmp sle i32 1, %148
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %do.body.315
  %149 = load i8*, i8** %priority_string_ptr, align 8
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* %149)
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.318, %do.body.315
  br label %do.end.320

do.end.320:                                       ; preds = %if.end.319
  br label %if.end.321

if.end.321:                                       ; preds = %do.end.320, %do.end.313
  br label %do.body.322

do.body.322:                                      ; preds = %if.end.321
  %150 = load i32, i32* %max_log_level, align 4
  %cmp323 = icmp sle i32 1, %150
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %do.body.322
  call void @gnutls_log_function(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i32 0, i32 0))
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.325, %do.body.322
  br label %do.end.327

do.end.327:                                       ; preds = %if.end.326
  %151 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %152 = load i8*, i8** %priority_string_ptr, align 8
  %call328 = call i32 @gnutls_priority_set_direct(%struct.gnutls_session_int* %151, i8* %152, i8** null)
  store i32 %call328, i32* %ret, align 4
  %153 = load i32, i32* %ret, align 4
  %cmp329 = icmp slt i32 %153, 0
  br i1 %cmp329, label %if.then.331, label %if.end.333

if.then.331:                                      ; preds = %do.end.327
  %154 = load i32, i32* %ret, align 4
  %call332 = call i64 @gnutls_make_error(i32 %154)
  store i64 %call332, i64* %retval
  br label %return

if.end.333:                                       ; preds = %do.end.327
  %155 = load i64, i64* %proc.addr, align 8
  %call334 = call %struct.Lisp_Process* @XPROCESS(i64 %155)
  %gnutls_initstage335 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call334, i32 0, i32 30
  store i32 5, i32* %gnutls_initstage335, align 4
  %156 = load i64, i64* %prime_bits, align 8
  %and336 = and i64 %156, 7
  %conv337 = trunc i64 %and336 to i32
  %and338 = and i32 %conv337, -5
  %cmp339 = icmp eq i32 %and338, 2
  br i1 %cmp339, label %if.then.341, label %if.end.344

if.then.341:                                      ; preds = %if.end.333
  %157 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %158 = load i64, i64* %prime_bits, align 8
  %call342 = call i64 @XUINT(i64 %158)
  %conv343 = trunc i64 %call342 to i32
  call void @gnutls_dh_set_prime_bits(%struct.gnutls_session_int* %157, i32 %conv343)
  br label %if.end.344

if.end.344:                                       ; preds = %if.then.341, %if.end.333
  %159 = load i64, i64* %type.addr, align 8
  %call345 = call i64 @builtin_lisp_symbol(i32 498)
  %cmp346 = icmp eq i64 %159, %call345
  br i1 %cmp346, label %cond.true.348, label %cond.false.350

cond.true.348:                                    ; preds = %if.end.344
  %160 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %161 = load %struct.gnutls_certificate_credentials_st*, %struct.gnutls_certificate_credentials_st** %x509_cred, align 8
  %162 = bitcast %struct.gnutls_certificate_credentials_st* %161 to i8*
  %call349 = call i32 @gnutls_credentials_set(%struct.gnutls_session_int* %160, i32 1, i8* %162)
  br label %cond.end.352

cond.false.350:                                   ; preds = %if.end.344
  %163 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %164 = load %struct.gnutls_anon_client_credentials_st*, %struct.gnutls_anon_client_credentials_st** %anon_cred, align 8
  %165 = bitcast %struct.gnutls_anon_client_credentials_st* %164 to i8*
  %call351 = call i32 @gnutls_credentials_set(%struct.gnutls_session_int* %163, i32 2, i8* %165)
  br label %cond.end.352

cond.end.352:                                     ; preds = %cond.false.350, %cond.true.348
  %cond353 = phi i32 [ %call349, %cond.true.348 ], [ %call351, %cond.false.350 ]
  store i32 %cond353, i32* %ret, align 4
  %166 = load i32, i32* %ret, align 4
  %cmp354 = icmp slt i32 %166, 0
  br i1 %cmp354, label %if.then.356, label %if.end.358

if.then.356:                                      ; preds = %cond.end.352
  %167 = load i32, i32* %ret, align 4
  %call357 = call i64 @gnutls_make_error(i32 %167)
  store i64 %call357, i64* %retval
  br label %return

if.end.358:                                       ; preds = %cond.end.352
  %168 = load i8*, i8** %c_hostname, align 8
  %call359 = call zeroext i1 @gnutls_ip_address_p(i8* %168)
  br i1 %call359, label %if.end.368, label %if.then.360

if.then.360:                                      ; preds = %if.end.358
  %169 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %170 = load i8*, i8** %c_hostname, align 8
  %171 = load i8*, i8** %c_hostname, align 8
  %call361 = call i64 @strlen(i8* %171) #10
  %call362 = call i32 @gnutls_server_name_set(%struct.gnutls_session_int* %169, i32 1, i8* %170, i64 %call361)
  store i32 %call362, i32* %ret, align 4
  %172 = load i32, i32* %ret, align 4
  %cmp363 = icmp slt i32 %172, 0
  br i1 %cmp363, label %if.then.365, label %if.end.367

if.then.365:                                      ; preds = %if.then.360
  %173 = load i32, i32* %ret, align 4
  %call366 = call i64 @gnutls_make_error(i32 %173)
  store i64 %call366, i64* %retval
  br label %return

if.end.367:                                       ; preds = %if.then.360
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %if.end.358
  %174 = load i64, i64* %proc.addr, align 8
  %call369 = call %struct.Lisp_Process* @XPROCESS(i64 %174)
  %gnutls_initstage370 = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call369, i32 0, i32 30
  store i32 6, i32* %gnutls_initstage370, align 4
  %175 = load i64, i64* %proc.addr, align 8
  %call371 = call %struct.Lisp_Process* @XPROCESS(i64 %175)
  %call372 = call i32 @emacs_gnutls_handshake(%struct.Lisp_Process* %call371)
  store i32 %call372, i32* %ret, align 4
  %176 = load i32, i32* %ret, align 4
  %cmp373 = icmp slt i32 %176, 0
  br i1 %cmp373, label %if.then.375, label %if.end.377

if.then.375:                                      ; preds = %if.end.368
  %177 = load i32, i32* %ret, align 4
  %call376 = call i64 @gnutls_make_error(i32 %177)
  store i64 %call376, i64* %retval
  br label %return

if.end.377:                                       ; preds = %if.end.368
  %178 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %call378 = call i32 @gnutls_certificate_verify_peers2(%struct.gnutls_session_int* %178, i32* %peer_verification)
  store i32 %call378, i32* %ret, align 4
  %179 = load i32, i32* %ret, align 4
  %cmp379 = icmp slt i32 %179, 0
  br i1 %cmp379, label %if.then.381, label %if.end.383

if.then.381:                                      ; preds = %if.end.377
  %180 = load i32, i32* %ret, align 4
  %call382 = call i64 @gnutls_make_error(i32 %180)
  store i64 %call382, i64* %retval
  br label %return

if.end.383:                                       ; preds = %if.end.377
  %181 = load i32, i32* %peer_verification, align 4
  %182 = load i64, i64* %proc.addr, align 8
  %call384 = call %struct.Lisp_Process* @XPROCESS(i64 %182)
  %gnutls_peer_verification = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call384, i32 0, i32 35
  store i32 %181, i32* %gnutls_peer_verification, align 4
  %183 = load i64, i64* %proc.addr, align 8
  %call385 = call i64 @Fgnutls_peer_status(i64 %183)
  %call386 = call i64 @intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0))
  %call387 = call i64 @Fplist_get(i64 %call385, i64 %call386)
  store i64 %call387, i64* %warnings, align 8
  %184 = load i64, i64* %warnings, align 8
  %call388 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp389 = icmp eq i64 %184, %call388
  br i1 %cmp389, label %if.end.419, label %if.then.391

if.then.391:                                      ; preds = %if.end.383
  %185 = load i64, i64* %warnings, align 8
  store i64 %185, i64* %tail392, align 8
  br label %for.cond.393

for.cond.393:                                     ; preds = %for.inc.414, %if.then.391
  %186 = load i64, i64* %tail392, align 8
  %and394 = and i64 %186, 7
  %conv395 = trunc i64 %and394 to i32
  %cmp396 = icmp eq i32 %conv395, 3
  br i1 %cmp396, label %for.body.398, label %for.end.418

for.body.398:                                     ; preds = %for.cond.393
  %187 = load i64, i64* %tail392, align 8
  %sub399 = sub nsw i64 %187, 3
  %188 = inttoptr i64 %sub399 to i8*
  %189 = bitcast i8* %188 to %struct.Lisp_Cons*
  %car400 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %189, i32 0, i32 0
  %190 = load i64, i64* %car400, align 8
  store i64 %190, i64* %warning, align 8
  %191 = load i64, i64* %warning, align 8
  %call401 = call i64 @Fgnutls_peer_status_warning_describe(i64 %191)
  store i64 %call401, i64* %message, align 8
  %192 = load i64, i64* %message, align 8
  %call402 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp403 = icmp eq i64 %192, %call402
  br i1 %cmp403, label %if.end.413, label %if.then.405

if.then.405:                                      ; preds = %for.body.398
  br label %do.body.406

do.body.406:                                      ; preds = %if.then.405
  %193 = load i32, i32* %max_log_level, align 4
  %cmp407 = icmp sle i32 1, %193
  br i1 %cmp407, label %if.then.409, label %if.end.411

if.then.409:                                      ; preds = %do.body.406
  %194 = load i64, i64* %message, align 8
  %call410 = call i8* @SSDATA(i64 %194)
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0), i8* %call410)
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.409, %do.body.406
  br label %do.end.412

do.end.412:                                       ; preds = %if.end.411
  br label %if.end.413

if.end.413:                                       ; preds = %do.end.412, %for.body.398
  br label %for.inc.414

for.inc.414:                                      ; preds = %if.end.413
  %195 = load i64, i64* %tail392, align 8
  %sub415 = sub nsw i64 %195, 3
  %196 = inttoptr i64 %sub415 to i8*
  %197 = bitcast i8* %196 to %struct.Lisp_Cons*
  %u416 = getelementptr inbounds %struct.Lisp_Cons, %struct.Lisp_Cons* %197, i32 0, i32 1
  %cdr417 = bitcast %union.anon* %u416 to i64*
  %198 = load i64, i64* %cdr417, align 8
  store i64 %198, i64* %tail392, align 8
  br label %for.cond.393

for.end.418:                                      ; preds = %for.cond.393
  br label %if.end.419

if.end.419:                                       ; preds = %for.end.418, %if.end.383
  %199 = load i32, i32* %peer_verification, align 4
  %cmp420 = icmp ne i32 %199, 0
  br i1 %cmp420, label %if.then.422, label %if.end.439

if.then.422:                                      ; preds = %if.end.419
  %200 = load i8, i8* %verify_error_all, align 1
  %tobool = trunc i8 %200 to i1
  br i1 %tobool, label %if.then.429, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.422
  %call424 = call i64 @builtin_lisp_symbol(i32 55)
  %201 = load i64, i64* %verify_error, align 8
  %call425 = call i64 @Fmember(i64 %call424, i64 %201)
  %call426 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp427 = icmp eq i64 %call425, %call426
  br i1 %cmp427, label %if.else.431, label %if.then.429

if.then.429:                                      ; preds = %lor.lhs.false, %if.then.422
  %202 = load i64, i64* %proc.addr, align 8
  %call430 = call i64 @emacs_gnutls_deinit(i64 %202)
  %203 = load i8*, i8** %c_hostname, align 8
  %204 = load i32, i32* %peer_verification, align 4
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.59, i32 0, i32 0), i8* %203, i32 %204) #8
  unreachable

if.else.431:                                      ; preds = %lor.lhs.false
  br label %do.body.432

do.body.432:                                      ; preds = %if.else.431
  %205 = load i32, i32* %max_log_level, align 4
  %cmp433 = icmp sle i32 1, %205
  br i1 %cmp433, label %if.then.435, label %if.end.436

if.then.435:                                      ; preds = %do.body.432
  %206 = load i8*, i8** %c_hostname, align 8
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.60, i32 0, i32 0), i8* %206)
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.435, %do.body.432
  br label %do.end.437

do.end.437:                                       ; preds = %if.end.436
  br label %if.end.438

if.end.438:                                       ; preds = %do.end.437
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.438, %if.end.419
  %207 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %call440 = call i32 @gnutls_certificate_type_get(%struct.gnutls_session_int* %207)
  %cmp441 = icmp eq i32 %call440, 1
  br i1 %cmp441, label %if.then.443, label %if.end.486

if.then.443:                                      ; preds = %if.end.439
  %call444 = call i32 @gnutls_x509_crt_init(%struct.gnutls_x509_crt_int** %gnutls_verify_cert)
  store i32 %call444, i32* %ret, align 4
  %208 = load i32, i32* %ret, align 4
  %cmp445 = icmp slt i32 %208, 0
  br i1 %cmp445, label %if.then.447, label %if.end.449

if.then.447:                                      ; preds = %if.then.443
  %209 = load i32, i32* %ret, align 4
  %call448 = call i64 @gnutls_make_error(i32 %209)
  store i64 %call448, i64* %retval
  br label %return

if.end.449:                                       ; preds = %if.then.443
  %210 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %call450 = call %struct.gnutls_datum_t* @gnutls_certificate_get_peers(%struct.gnutls_session_int* %210, i32* %gnutls_verify_cert_list_size)
  store %struct.gnutls_datum_t* %call450, %struct.gnutls_datum_t** %gnutls_verify_cert_list, align 8
  %211 = load %struct.gnutls_datum_t*, %struct.gnutls_datum_t** %gnutls_verify_cert_list, align 8
  %cmp451 = icmp eq %struct.gnutls_datum_t* %211, null
  br i1 %cmp451, label %if.then.453, label %if.end.455

if.then.453:                                      ; preds = %if.end.449
  %212 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_verify_cert, align 8
  call void @gnutls_x509_crt_deinit(%struct.gnutls_x509_crt_int* %212)
  %213 = load i64, i64* %proc.addr, align 8
  %call454 = call i64 @emacs_gnutls_deinit(i64 %213)
  call void (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.61, i32 0, i32 0)) #8
  unreachable

if.end.455:                                       ; preds = %if.end.449
  %214 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_verify_cert, align 8
  %215 = load %struct.gnutls_datum_t*, %struct.gnutls_datum_t** %gnutls_verify_cert_list, align 8
  %arrayidx = getelementptr inbounds %struct.gnutls_datum_t, %struct.gnutls_datum_t* %215, i64 0
  %call456 = call i32 @gnutls_x509_crt_import(%struct.gnutls_x509_crt_int* %214, %struct.gnutls_datum_t* %arrayidx, i32 0)
  store i32 %call456, i32* %ret, align 4
  %216 = load i32, i32* %ret, align 4
  %cmp457 = icmp slt i32 %216, 0
  br i1 %cmp457, label %if.then.459, label %if.end.461

if.then.459:                                      ; preds = %if.end.455
  %217 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_verify_cert, align 8
  call void @gnutls_x509_crt_deinit(%struct.gnutls_x509_crt_int* %217)
  %218 = load i32, i32* %ret, align 4
  %call460 = call i64 @gnutls_make_error(i32 %218)
  store i64 %call460, i64* %retval
  br label %return

if.end.461:                                       ; preds = %if.end.455
  %219 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_verify_cert, align 8
  %220 = load i64, i64* %proc.addr, align 8
  %call462 = call %struct.Lisp_Process* @XPROCESS(i64 %220)
  %gnutls_certificate = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call462, i32 0, i32 34
  store %struct.gnutls_x509_crt_int* %219, %struct.gnutls_x509_crt_int** %gnutls_certificate, align 8
  %221 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_verify_cert, align 8
  %222 = load i8*, i8** %c_hostname, align 8
  %call463 = call i32 @gnutls_x509_crt_check_hostname(%struct.gnutls_x509_crt_int* %221, i8* %222)
  store i32 %call463, i32* %err, align 4
  %223 = load i32, i32* %err, align 4
  call void @check_memory_full(i32 %223)
  %224 = load i32, i32* %err, align 4
  %tobool464 = icmp ne i32 %224, 0
  br i1 %tobool464, label %if.end.485, label %if.then.465

if.then.465:                                      ; preds = %if.end.461
  %225 = load i64, i64* %proc.addr, align 8
  %call466 = call %struct.Lisp_Process* @XPROCESS(i64 %225)
  %gnutls_extra_peer_verification = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call466, i32 0, i32 36
  %226 = load i32, i32* %gnutls_extra_peer_verification, align 4
  %or = or i32 %226, 2
  store i32 %or, i32* %gnutls_extra_peer_verification, align 4
  %227 = load i8, i8* %verify_error_all, align 1
  %tobool467 = trunc i8 %227 to i1
  br i1 %tobool467, label %if.then.475, label %lor.lhs.false.469

lor.lhs.false.469:                                ; preds = %if.then.465
  %call470 = call i64 @builtin_lisp_symbol(i32 50)
  %228 = load i64, i64* %verify_error, align 8
  %call471 = call i64 @Fmember(i64 %call470, i64 %228)
  %call472 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp473 = icmp eq i64 %call471, %call472
  br i1 %cmp473, label %if.else.477, label %if.then.475

if.then.475:                                      ; preds = %lor.lhs.false.469, %if.then.465
  %229 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_verify_cert, align 8
  call void @gnutls_x509_crt_deinit(%struct.gnutls_x509_crt_int* %229)
  %230 = load i64, i64* %proc.addr, align 8
  %call476 = call i64 @emacs_gnutls_deinit(i64 %230)
  %231 = load i8*, i8** %c_hostname, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0), i8* %231) #8
  unreachable

if.else.477:                                      ; preds = %lor.lhs.false.469
  br label %do.body.478

do.body.478:                                      ; preds = %if.else.477
  %232 = load i32, i32* %max_log_level, align 4
  %cmp479 = icmp sle i32 1, %232
  br i1 %cmp479, label %if.then.481, label %if.end.482

if.then.481:                                      ; preds = %do.body.478
  %233 = load i8*, i8** %c_hostname, align 8
  call void @gnutls_log_function2(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.63, i32 0, i32 0), i8* %233)
  br label %if.end.482

if.end.482:                                       ; preds = %if.then.481, %do.body.478
  br label %do.end.483

do.end.483:                                       ; preds = %if.end.482
  br label %if.end.484

if.end.484:                                       ; preds = %do.end.483
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %if.end.461
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.end.439
  %234 = load i64, i64* %proc.addr, align 8
  %call487 = call %struct.Lisp_Process* @XPROCESS(i64 %234)
  %gnutls_p = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call487, i32 0, i32 39
  %bf.load = load i8, i8* %gnutls_p, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %gnutls_p, align 8
  %235 = load i32, i32* %ret, align 4
  %call488 = call i64 @gnutls_make_error(i32 %235)
  store i64 %call488, i64* %retval
  br label %return

return:                                           ; preds = %if.end.486, %if.then.459, %if.then.447, %if.then.381, %if.then.375, %if.then.365, %if.then.356, %if.then.331, %if.then.300, %if.then.265, %if.then.214, %if.then.185, %if.then.79
  %236 = load i64, i64* %retval
  ret i64 %236
}

declare void @CHECK_LIST(i64) #1

; Function Attrs: nounwind uwtable
define i64 @Fgnutls_available_p() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 901)
  ret i64 %call
}

declare i64 @Fplist_get(i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @Flistp(i64) #2

declare zeroext i1 @STRINGP(i64) #1

declare i8* @SSDATA(i64) #1

declare void @gnutls_global_set_log_function(void (i32, i8*)*) #1

declare void @gnutls_global_set_audit_log_function(void (%struct.gnutls_session_int*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @gnutls_audit_log_function(%struct.gnutls_session_int* %session, i8* %string) #0 {
entry:
  %session.addr = alloca %struct.gnutls_session_int*, align 8
  %string.addr = alloca i8*, align 8
  store %struct.gnutls_session_int* %session, %struct.gnutls_session_int** %session.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 391), align 8
  %cmp = icmp sge i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 8
  call void (i8*, ...) @message(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.90, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gnutls_global_set_log_level(i32) #1

; Function Attrs: nounwind uwtable
define internal void @gnutls_log_function2(i32 %level, i8* %string, i8* %extra) #0 {
entry:
  %level.addr = alloca i32, align 4
  %string.addr = alloca i8*, align 8
  %extra.addr = alloca i8*, align 8
  store i32 %level, i32* %level.addr, align 4
  store i8* %string, i8** %string.addr, align 8
  store i8* %extra, i8** %extra.addr, align 8
  %0 = load i32, i32* %level.addr, align 4
  %1 = load i8*, i8** %string.addr, align 8
  %2 = load i8*, i8** %extra.addr, align 8
  call void (i8*, ...) @message(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i32 %0, i8* %1, i8* %2)
  ret void
}

declare void @pset_gnutls_cred_type(%struct.Lisp_Process*, i64) #1

declare i32 @gnutls_certificate_allocate_credentials(%struct.gnutls_certificate_credentials_st**) #1

declare void @gnutls_certificate_set_verify_flags(%struct.gnutls_certificate_credentials_st*, i32) #1

declare i32 @gnutls_anon_allocate_client_credentials(%struct.gnutls_anon_client_credentials_st**) #1

declare i32 @gnutls_certificate_set_x509_system_trust(%struct.gnutls_certificate_credentials_st*) #1

declare i64 @encode_file_name(i64) #1

declare i32 @gnutls_certificate_set_x509_trust_file(%struct.gnutls_certificate_credentials_st*, i8*, i32) #1

declare i32 @gnutls_certificate_set_x509_crl_file(%struct.gnutls_certificate_credentials_st*, i8*, i32) #1

declare i64 @Fcar(i64) #1

declare i64 @Fcdr(i64) #1

declare i32 @gnutls_certificate_set_x509_key_file(%struct.gnutls_certificate_credentials_st*, i8*, i8*, i32) #1

declare i32 @gnutls_init(%struct.gnutls_session_int**, i32) #1

declare i32 @gnutls_priority_set_direct(%struct.gnutls_session_int*, i8*, i8**) #1

declare void @gnutls_dh_set_prime_bits(%struct.gnutls_session_int*, i32) #1

declare i64 @XUINT(i64) #1

declare i32 @gnutls_credentials_set(%struct.gnutls_session_int*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @gnutls_ip_address_p(i8* %string) #0 {
entry:
  %retval = alloca i1, align 1
  %string.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %string, i8** %string.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %c, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp eq i32 %conv2, 46
  br i1 %cmp3, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %3 = load i8, i8* %c, align 1
  %conv5 = sext i8 %3 to i32
  %cmp6 = icmp eq i32 %conv5, 58
  br i1 %cmp6, label %if.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %4 = load i8, i8* %c, align 1
  %conv9 = sext i8 %4 to i32
  %cmp10 = icmp sge i32 %conv9, 48
  br i1 %cmp10, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %lor.lhs.false.8
  %5 = load i8, i8* %c, align 1
  %conv12 = sext i8 %5 to i32
  %cmp13 = icmp sle i32 %conv12, 57
  br i1 %cmp13, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false.8
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i1, i1* %retval
  ret i1 %6
}

declare i32 @gnutls_server_name_set(%struct.gnutls_session_int*, i32, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @gnutls_certificate_verify_peers2(%struct.gnutls_session_int*, i32*) #1

declare i64 @Fmember(i64, i64) #1

declare i32 @gnutls_certificate_type_get(%struct.gnutls_session_int*) #1

declare i32 @gnutls_x509_crt_init(%struct.gnutls_x509_crt_int**) #1

declare %struct.gnutls_datum_t* @gnutls_certificate_get_peers(%struct.gnutls_session_int*, i32*) #1

declare void @gnutls_x509_crt_deinit(%struct.gnutls_x509_crt_int*) #1

declare i32 @gnutls_x509_crt_import(%struct.gnutls_x509_crt_int*, %struct.gnutls_datum_t*, i32) #1

declare i32 @gnutls_x509_crt_check_hostname(%struct.gnutls_x509_crt_int*, i8*) #1

; Function Attrs: nounwind uwtable
define i64 @Fgnutls_bye(i64 %proc, i64 %cont) #0 {
entry:
  %proc.addr = alloca i64, align 8
  %cont.addr = alloca i64, align 8
  %state = alloca %struct.gnutls_session_int*, align 8
  %ret = alloca i32, align 4
  store i64 %proc, i64* %proc.addr, align 8
  store i64 %cont, i64* %cont.addr, align 8
  %0 = load i64, i64* %proc.addr, align 8
  call void @CHECK_PROCESS(i64 %0)
  %1 = load i64, i64* %proc.addr, align 8
  %call = call %struct.Lisp_Process* @XPROCESS(i64 %1)
  %gnutls_state = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call, i32 0, i32 31
  %2 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %gnutls_state, align 8
  store %struct.gnutls_session_int* %2, %struct.gnutls_session_int** %state, align 8
  %3 = load i64, i64* %proc.addr, align 8
  %call1 = call %struct.Lisp_Process* @XPROCESS(i64 %3)
  %gnutls_certificate = getelementptr inbounds %struct.Lisp_Process, %struct.Lisp_Process* %call1, i32 0, i32 34
  %4 = load %struct.gnutls_x509_crt_int*, %struct.gnutls_x509_crt_int** %gnutls_certificate, align 8
  call void @gnutls_x509_crt_deinit(%struct.gnutls_x509_crt_int* %4)
  %5 = load %struct.gnutls_session_int*, %struct.gnutls_session_int** %state, align 8
  %6 = load i64, i64* %cont.addr, align 8
  %call2 = call i64 @builtin_lisp_symbol(i32 0)
  %cmp = icmp eq i64 %6, %call2
  %cond = select i1 %cmp, i32 0, i32 1
  %call3 = call i32 @gnutls_bye(%struct.gnutls_session_int* %5, i32 %cond)
  store i32 %call3, i32* %ret, align 4
  %7 = load i32, i32* %ret, align 4
  %call4 = call i64 @gnutls_make_error(i32 %7)
  ret i64 %call4
}

declare i32 @gnutls_bye(%struct.gnutls_session_int*, i32) #1

; Function Attrs: nounwind uwtable
define void @syms_of_gnutls() #0 {
entry:
  %call = call i64 @builtin_lisp_symbol(i32 616)
  %call1 = call i64 @Fset(i64 %call, i64 121234)
  store i8 0, i8* @gnutls_global_initialized, align 1
  %call2 = call i64 @builtin_lisp_symbol(i32 495)
  %call3 = call i64 @builtin_lisp_symbol(i32 493)
  %call4 = call i64 @Fput(i64 %call2, i64 %call3, i64 -206)
  %call5 = call i64 @builtin_lisp_symbol(i32 494)
  %call6 = call i64 @builtin_lisp_symbol(i32 493)
  %call7 = call i64 @Fput(i64 %call5, i64 %call6, i64 -110)
  %call8 = call i64 @builtin_lisp_symbol(i32 496)
  %call9 = call i64 @builtin_lisp_symbol(i32 493)
  %call10 = call i64 @Fput(i64 %call8, i64 %call9, i64 -38)
  %call11 = call i64 @builtin_lisp_symbol(i32 497)
  %call12 = call i64 @builtin_lisp_symbol(i32 493)
  %call13 = call i64 @Fput(i64 %call11, i64 %call12, i64 -261998)
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sgnutls_get_initstage to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sgnutls_errorp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sgnutls_error_fatalp to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sgnutls_error_string to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sgnutls_boot to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sgnutls_deinit to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64, i64)* }, i16, i16, i8*, i8*, i8* }* @Sgnutls_bye to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sgnutls_peer_status to %struct.Lisp_Subr*))
  call void @defsubr(%struct.Lisp_Subr* bitcast ({ %struct.vectorlike_header, { i64 (i64)* }, i16, i16, i8*, i8*, i8* }* @Sgnutls_peer_status_warning_describe to %struct.Lisp_Subr*))
  br label %do.body

do.body:                                          ; preds = %entry
  call void @defvar_int(%struct.Lisp_Intfwd* @syms_of_gnutls.i_fwd, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i32 0, i32 0), i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 391))
  br label %do.end

do.end:                                           ; preds = %do.body
  store i64 0, i64* getelementptr inbounds (%struct.emacs_globals, %struct.emacs_globals* @globals, i32 0, i32 391), align 8
  call void @defsubr(%struct.Lisp_Subr* @Sgnutls_available_p)
  ret void
}

declare i64 @Fset(i64, i64) #1

declare i64 @Fput(i64, i64, i64) #1

declare void @defsubr(%struct.Lisp_Subr*) #1

declare void @defvar_int(%struct.Lisp_Intfwd*, i8*, i64*) #1

declare void @gnutls_transport_set_ptr2(%struct.gnutls_session_int*, i8*, i8*) #1

declare i32 @gnutls_handshake(%struct.gnutls_session_int*) #1

declare void @process_quit_flag() #1

declare void @process_pending_signals() #1

declare i32 @gnutls_alert_send_appropriate(%struct.gnutls_session_int*, i32) #1

declare void @message(i8*, ...) #1

declare i32 @gnutls_alert_get(%struct.gnutls_session_int*) #1

declare i8* @gnutls_alert_get_name(i32) #1

declare i32 @gnutls_x509_crt_get_version(%struct.gnutls_x509_crt_int*) #1

declare i32 @gnutls_x509_crt_get_serial(%struct.gnutls_x509_crt_int*, i8*, i64*) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i64 @gnutls_hex_string(i8* %buf, i64 %buf_size, i8* %prefix) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i64, align 8
  %prefix.addr = alloca i8*, align 8
  %prefix_length = alloca i64, align 8
  %retlen = alloca i64, align 8
  %ret = alloca i64, align 8
  %string = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buf_size, i64* %buf_size.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load i8*, i8** %prefix.addr, align 8
  %call = call i64 @strlen(i8* %0) #10
  store i64 %call, i64* %prefix_length, align 8
  br i1 false, label %cond.true, label %cond.false.471

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true.1, label %cond.false.256

cond.true.1:                                      ; preds = %cond.true
  %1 = load i64, i64* %buf_size.addr, align 8
  %conv = trunc i64 %1 to i8
  %conv2 = sext i8 %conv to i32
  %add = add nsw i32 0, %conv2
  %mul = mul nsw i32 0, %add
  %sub = sub nsw i32 %mul, 1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cond.true.4, label %cond.false

cond.true.4:                                      ; preds = %cond.true.1
  %2 = load i64, i64* %buf_size.addr, align 8
  %conv5 = trunc i64 %2 to i8
  %conv6 = sext i8 %conv5 to i32
  %add7 = add nsw i32 0, %conv6
  %mul8 = mul nsw i32 0, %add7
  %add9 = add nsw i32 %mul8, 0
  %neg = xor i32 %add9, -1
  %cmp10 = icmp eq i32 %neg, -1
  %conv11 = zext i1 %cmp10 to i32
  %sub12 = sub nsw i32 0, %conv11
  %3 = load i64, i64* %buf_size.addr, align 8
  %conv13 = trunc i64 %3 to i8
  %conv14 = sext i8 %conv13 to i32
  %add15 = add nsw i32 0, %conv14
  %mul16 = mul nsw i32 0, %add15
  %add17 = add nsw i32 %mul16, 1
  %shl = shl i32 %add17, 30
  %sub18 = sub nsw i32 %shl, 1
  %mul19 = mul nsw i32 %sub18, 2
  %add20 = add nsw i32 %mul19, 1
  %sub21 = sub nsw i32 %sub12, %add20
  br label %cond.end

cond.false:                                       ; preds = %cond.true.1
  %4 = load i64, i64* %buf_size.addr, align 8
  %conv22 = trunc i64 %4 to i8
  %conv23 = sext i8 %conv22 to i32
  %add24 = add nsw i32 0, %conv23
  %mul25 = mul nsw i32 0, %add24
  %add26 = add nsw i32 %mul25, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.4
  %cond = phi i32 [ %sub21, %cond.true.4 ], [ %add26, %cond.false ]
  %cmp27 = icmp eq i32 %cond, 0
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end
  %5 = load i64, i64* %buf_size.addr, align 8
  %conv29 = trunc i64 %5 to i8
  %conv30 = sext i8 %conv29 to i32
  %cmp31 = icmp slt i32 %conv30, 0
  br i1 %cmp31, label %cond.true.210, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end
  br i1 false, label %cond.true.33, label %cond.false.111

cond.true.33:                                     ; preds = %lor.lhs.false
  %6 = load i64, i64* %buf_size.addr, align 8
  %conv34 = trunc i64 %6 to i8
  %conv35 = sext i8 %conv34 to i32
  %cmp36 = icmp slt i32 %conv35, 0
  br i1 %cmp36, label %cond.true.38, label %cond.false.68

cond.true.38:                                     ; preds = %cond.true.33
  %7 = load i64, i64* %buf_size.addr, align 8
  %conv39 = trunc i64 %7 to i8
  %conv40 = sext i8 %conv39 to i32
  %8 = load i64, i64* %buf_size.addr, align 8
  %conv41 = trunc i64 %8 to i8
  %conv42 = sext i8 %conv41 to i32
  %add43 = add nsw i32 0, %conv42
  %mul44 = mul nsw i32 0, %add43
  %sub45 = sub nsw i32 %mul44, 1
  %cmp46 = icmp slt i32 %sub45, 0
  br i1 %cmp46, label %cond.true.48, label %cond.false.58

cond.true.48:                                     ; preds = %cond.true.38
  %9 = load i64, i64* %buf_size.addr, align 8
  %conv49 = trunc i64 %9 to i8
  %conv50 = sext i8 %conv49 to i32
  %add51 = add nsw i32 0, %conv50
  %mul52 = mul nsw i32 0, %add51
  %add53 = add nsw i32 %mul52, 1
  %shl54 = shl i32 %add53, 30
  %sub55 = sub nsw i32 %shl54, 1
  %mul56 = mul nsw i32 %sub55, 2
  %add57 = add nsw i32 %mul56, 1
  br label %cond.end.64

cond.false.58:                                    ; preds = %cond.true.38
  %10 = load i64, i64* %buf_size.addr, align 8
  %conv59 = trunc i64 %10 to i8
  %conv60 = sext i8 %conv59 to i32
  %add61 = add nsw i32 0, %conv60
  %mul62 = mul nsw i32 0, %add61
  %sub63 = sub nsw i32 %mul62, 1
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.58, %cond.true.48
  %cond65 = phi i32 [ %add57, %cond.true.48 ], [ %sub63, %cond.false.58 ]
  %div = sdiv i32 %cond65, 3
  %cmp66 = icmp slt i32 %conv40, %div
  br i1 %cmp66, label %cond.true.210, label %lor.lhs.false.190

cond.false.68:                                    ; preds = %cond.true.33
  br i1 false, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false.68
  br i1 false, label %cond.true.210, label %lor.lhs.false.190

cond.false.70:                                    ; preds = %cond.false.68
  %11 = load i64, i64* %buf_size.addr, align 8
  %conv71 = trunc i64 %11 to i8
  %conv72 = sext i8 %conv71 to i32
  %add73 = add nsw i32 0, %conv72
  %mul74 = mul nsw i32 0, %add73
  %sub75 = sub nsw i32 %mul74, 1
  %cmp76 = icmp slt i32 %sub75, 0
  br i1 %cmp76, label %cond.true.78, label %cond.false.98

cond.true.78:                                     ; preds = %cond.false.70
  %12 = load i64, i64* %buf_size.addr, align 8
  %conv79 = trunc i64 %12 to i8
  %conv80 = sext i8 %conv79 to i32
  %add81 = add nsw i32 0, %conv80
  %mul82 = mul nsw i32 0, %add81
  %add83 = add nsw i32 %mul82, 0
  %neg84 = xor i32 %add83, -1
  %cmp85 = icmp eq i32 %neg84, -1
  %conv86 = zext i1 %cmp85 to i32
  %sub87 = sub nsw i32 0, %conv86
  %13 = load i64, i64* %buf_size.addr, align 8
  %conv88 = trunc i64 %13 to i8
  %conv89 = sext i8 %conv88 to i32
  %add90 = add nsw i32 0, %conv89
  %mul91 = mul nsw i32 0, %add90
  %add92 = add nsw i32 %mul91, 1
  %shl93 = shl i32 %add92, 30
  %sub94 = sub nsw i32 %shl93, 1
  %mul95 = mul nsw i32 %sub94, 2
  %add96 = add nsw i32 %mul95, 1
  %sub97 = sub nsw i32 %sub87, %add96
  br label %cond.end.104

cond.false.98:                                    ; preds = %cond.false.70
  %14 = load i64, i64* %buf_size.addr, align 8
  %conv99 = trunc i64 %14 to i8
  %conv100 = sext i8 %conv99 to i32
  %add101 = add nsw i32 0, %conv100
  %mul102 = mul nsw i32 0, %add101
  %add103 = add nsw i32 %mul102, 0
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.98, %cond.true.78
  %cond105 = phi i32 [ %sub97, %cond.true.78 ], [ %add103, %cond.false.98 ]
  %div106 = sdiv i32 %cond105, 3
  %15 = load i64, i64* %buf_size.addr, align 8
  %conv107 = trunc i64 %15 to i8
  %conv108 = sext i8 %conv107 to i32
  %cmp109 = icmp slt i32 %div106, %conv108
  br i1 %cmp109, label %cond.true.210, label %lor.lhs.false.190

cond.false.111:                                   ; preds = %lor.lhs.false
  br i1 false, label %cond.true.112, label %cond.false.113

cond.true.112:                                    ; preds = %cond.false.111
  br i1 false, label %cond.true.210, label %lor.lhs.false.190

cond.false.113:                                   ; preds = %cond.false.111
  %16 = load i64, i64* %buf_size.addr, align 8
  %conv114 = trunc i64 %16 to i8
  %conv115 = sext i8 %conv114 to i32
  %cmp116 = icmp slt i32 %conv115, 0
  br i1 %cmp116, label %cond.true.118, label %cond.false.159

cond.true.118:                                    ; preds = %cond.false.113
  %17 = load i64, i64* %buf_size.addr, align 8
  %conv119 = trunc i64 %17 to i8
  %conv120 = sext i8 %conv119 to i32
  %18 = load i64, i64* %buf_size.addr, align 8
  %conv121 = trunc i64 %18 to i8
  %conv122 = sext i8 %conv121 to i32
  %add123 = add nsw i32 0, %conv122
  %mul124 = mul nsw i32 0, %add123
  %sub125 = sub nsw i32 %mul124, 1
  %cmp126 = icmp slt i32 %sub125, 0
  br i1 %cmp126, label %cond.true.128, label %cond.false.148

cond.true.128:                                    ; preds = %cond.true.118
  %19 = load i64, i64* %buf_size.addr, align 8
  %conv129 = trunc i64 %19 to i8
  %conv130 = sext i8 %conv129 to i32
  %add131 = add nsw i32 0, %conv130
  %mul132 = mul nsw i32 0, %add131
  %add133 = add nsw i32 %mul132, 0
  %neg134 = xor i32 %add133, -1
  %cmp135 = icmp eq i32 %neg134, -1
  %conv136 = zext i1 %cmp135 to i32
  %sub137 = sub nsw i32 0, %conv136
  %20 = load i64, i64* %buf_size.addr, align 8
  %conv138 = trunc i64 %20 to i8
  %conv139 = sext i8 %conv138 to i32
  %add140 = add nsw i32 0, %conv139
  %mul141 = mul nsw i32 0, %add140
  %add142 = add nsw i32 %mul141, 1
  %shl143 = shl i32 %add142, 30
  %sub144 = sub nsw i32 %shl143, 1
  %mul145 = mul nsw i32 %sub144, 2
  %add146 = add nsw i32 %mul145, 1
  %sub147 = sub nsw i32 %sub137, %add146
  br label %cond.end.154

cond.false.148:                                   ; preds = %cond.true.118
  %21 = load i64, i64* %buf_size.addr, align 8
  %conv149 = trunc i64 %21 to i8
  %conv150 = sext i8 %conv149 to i32
  %add151 = add nsw i32 0, %conv150
  %mul152 = mul nsw i32 0, %add151
  %add153 = add nsw i32 %mul152, 0
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.148, %cond.true.128
  %cond155 = phi i32 [ %sub147, %cond.true.128 ], [ %add153, %cond.false.148 ]
  %div156 = sdiv i32 %cond155, 3
  %cmp157 = icmp slt i32 %conv120, %div156
  br i1 %cmp157, label %cond.true.210, label %lor.lhs.false.190

cond.false.159:                                   ; preds = %cond.false.113
  %22 = load i64, i64* %buf_size.addr, align 8
  %conv160 = trunc i64 %22 to i8
  %conv161 = sext i8 %conv160 to i32
  %add162 = add nsw i32 0, %conv161
  %mul163 = mul nsw i32 0, %add162
  %sub164 = sub nsw i32 %mul163, 1
  %cmp165 = icmp slt i32 %sub164, 0
  br i1 %cmp165, label %cond.true.167, label %cond.false.177

cond.true.167:                                    ; preds = %cond.false.159
  %23 = load i64, i64* %buf_size.addr, align 8
  %conv168 = trunc i64 %23 to i8
  %conv169 = sext i8 %conv168 to i32
  %add170 = add nsw i32 0, %conv169
  %mul171 = mul nsw i32 0, %add170
  %add172 = add nsw i32 %mul171, 1
  %shl173 = shl i32 %add172, 30
  %sub174 = sub nsw i32 %shl173, 1
  %mul175 = mul nsw i32 %sub174, 2
  %add176 = add nsw i32 %mul175, 1
  br label %cond.end.183

cond.false.177:                                   ; preds = %cond.false.159
  %24 = load i64, i64* %buf_size.addr, align 8
  %conv178 = trunc i64 %24 to i8
  %conv179 = sext i8 %conv178 to i32
  %add180 = add nsw i32 0, %conv179
  %mul181 = mul nsw i32 0, %add180
  %sub182 = sub nsw i32 %mul181, 1
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.177, %cond.true.167
  %cond184 = phi i32 [ %add176, %cond.true.167 ], [ %sub182, %cond.false.177 ]
  %div185 = sdiv i32 %cond184, 3
  %25 = load i64, i64* %buf_size.addr, align 8
  %conv186 = trunc i64 %25 to i8
  %conv187 = sext i8 %conv186 to i32
  %cmp188 = icmp slt i32 %div185, %conv187
  br i1 %cmp188, label %cond.true.210, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %cond.end.183, %cond.end.154, %cond.true.112, %cond.end.104, %cond.true.69, %cond.end.64
  %26 = load i64, i64* %buf_size.addr, align 8
  %conv191 = trunc i64 %26 to i8
  %conv192 = sext i8 %conv191 to i32
  %mul193 = mul nsw i32 %conv192, 3
  %mul194 = mul nsw i32 0, %mul193
  %sub195 = sub nsw i32 %mul194, 1
  %cmp196 = icmp slt i32 %sub195, 0
  br i1 %cmp196, label %land.lhs.true.198, label %lor.lhs.false.204

land.lhs.true.198:                                ; preds = %lor.lhs.false.190
  %27 = load i64, i64* %buf_size.addr, align 8
  %conv199 = trunc i64 %27 to i8
  %conv200 = sext i8 %conv199 to i32
  %mul201 = mul nsw i32 %conv200, 3
  %cmp202 = icmp slt i32 %mul201, -128
  br i1 %cmp202, label %cond.true.210, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %land.lhs.true.198, %lor.lhs.false.190
  %28 = load i64, i64* %buf_size.addr, align 8
  %conv205 = trunc i64 %28 to i8
  %conv206 = sext i8 %conv205 to i32
  %mul207 = mul nsw i32 %conv206, 3
  %cmp208 = icmp slt i32 127, %mul207
  br i1 %cmp208, label %cond.true.210, label %cond.false.233

cond.true.210:                                    ; preds = %lor.lhs.false.204, %land.lhs.true.198, %cond.end.183, %cond.end.154, %cond.true.112, %cond.end.104, %cond.true.69, %cond.end.64, %land.lhs.true
  %29 = load i64, i64* %buf_size.addr, align 8
  %conv211 = trunc i64 %29 to i8
  %conv212 = zext i8 %conv211 to i32
  %mul213 = mul nsw i32 %conv212, 3
  %cmp214 = icmp sle i32 %mul213, 127
  br i1 %cmp214, label %cond.true.216, label %cond.false.222

cond.true.216:                                    ; preds = %cond.true.210
  %30 = load i64, i64* %buf_size.addr, align 8
  %conv217 = trunc i64 %30 to i8
  %conv218 = zext i8 %conv217 to i32
  %mul219 = mul nsw i32 %conv218, 3
  %conv220 = trunc i32 %mul219 to i8
  %conv221 = sext i8 %conv220 to i32
  br label %cond.end.230

cond.false.222:                                   ; preds = %cond.true.210
  %31 = load i64, i64* %buf_size.addr, align 8
  %conv223 = trunc i64 %31 to i8
  %conv224 = zext i8 %conv223 to i32
  %mul225 = mul nsw i32 %conv224, 3
  %sub226 = sub nsw i32 %mul225, -128
  %conv227 = trunc i32 %sub226 to i8
  %conv228 = sext i8 %conv227 to i32
  %add229 = add nsw i32 %conv228, -128
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.222, %cond.true.216
  %cond231 = phi i32 [ %conv221, %cond.true.216 ], [ %add229, %cond.false.222 ]
  %conv232 = sext i32 %cond231 to i64
  store i64 %conv232, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.233:                                   ; preds = %lor.lhs.false.204
  %32 = load i64, i64* %buf_size.addr, align 8
  %conv234 = trunc i64 %32 to i8
  %conv235 = zext i8 %conv234 to i32
  %mul236 = mul nsw i32 %conv235, 3
  %cmp237 = icmp sle i32 %mul236, 127
  br i1 %cmp237, label %cond.true.239, label %cond.false.245

cond.true.239:                                    ; preds = %cond.false.233
  %33 = load i64, i64* %buf_size.addr, align 8
  %conv240 = trunc i64 %33 to i8
  %conv241 = zext i8 %conv240 to i32
  %mul242 = mul nsw i32 %conv241, 3
  %conv243 = trunc i32 %mul242 to i8
  %conv244 = sext i8 %conv243 to i32
  br label %cond.end.253

cond.false.245:                                   ; preds = %cond.false.233
  %34 = load i64, i64* %buf_size.addr, align 8
  %conv246 = trunc i64 %34 to i8
  %conv247 = zext i8 %conv246 to i32
  %mul248 = mul nsw i32 %conv247, 3
  %sub249 = sub nsw i32 %mul248, -128
  %conv250 = trunc i32 %sub249 to i8
  %conv251 = sext i8 %conv250 to i32
  %add252 = add nsw i32 %conv251, -128
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.false.245, %cond.true.239
  %cond254 = phi i32 [ %conv244, %cond.true.239 ], [ %add252, %cond.false.245 ]
  %conv255 = sext i32 %cond254 to i64
  store i64 %conv255, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

cond.false.256:                                   ; preds = %cond.true
  %35 = load i64, i64* %buf_size.addr, align 8
  %add257 = add nsw i64 0, %35
  %mul258 = mul nsw i64 0, %add257
  %sub259 = sub nsw i64 %mul258, 1
  %cmp260 = icmp slt i64 %sub259, 0
  br i1 %cmp260, label %cond.true.262, label %cond.false.279

cond.true.262:                                    ; preds = %cond.false.256
  %36 = load i64, i64* %buf_size.addr, align 8
  %add263 = add nsw i64 0, %36
  %mul264 = mul nsw i64 0, %add263
  %add265 = add nsw i64 %mul264, 0
  %neg266 = xor i64 %add265, -1
  %cmp267 = icmp eq i64 %neg266, -1
  %conv268 = zext i1 %cmp267 to i32
  %sub269 = sub nsw i32 0, %conv268
  %conv270 = sext i32 %sub269 to i64
  %37 = load i64, i64* %buf_size.addr, align 8
  %add271 = add nsw i64 0, %37
  %mul272 = mul nsw i64 0, %add271
  %add273 = add nsw i64 %mul272, 1
  %shl274 = shl i64 %add273, 62
  %sub275 = sub nsw i64 %shl274, 1
  %mul276 = mul nsw i64 %sub275, 2
  %add277 = add nsw i64 %mul276, 1
  %sub278 = sub nsw i64 %conv270, %add277
  br label %cond.end.283

cond.false.279:                                   ; preds = %cond.false.256
  %38 = load i64, i64* %buf_size.addr, align 8
  %add280 = add nsw i64 0, %38
  %mul281 = mul nsw i64 0, %add280
  %add282 = add nsw i64 %mul281, 0
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.279, %cond.true.262
  %cond284 = phi i64 [ %sub278, %cond.true.262 ], [ %add282, %cond.false.279 ]
  %cmp285 = icmp eq i64 %cond284, 0
  br i1 %cmp285, label %land.lhs.true.287, label %lor.lhs.false.290

land.lhs.true.287:                                ; preds = %cond.end.283
  %39 = load i64, i64* %buf_size.addr, align 8
  %cmp288 = icmp slt i64 %39, 0
  br i1 %cmp288, label %cond.true.425, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %land.lhs.true.287, %cond.end.283
  br i1 false, label %cond.true.291, label %cond.false.351

cond.true.291:                                    ; preds = %lor.lhs.false.290
  %40 = load i64, i64* %buf_size.addr, align 8
  %cmp292 = icmp slt i64 %40, 0
  br i1 %cmp292, label %cond.true.294, label %cond.false.317

cond.true.294:                                    ; preds = %cond.true.291
  %41 = load i64, i64* %buf_size.addr, align 8
  %42 = load i64, i64* %buf_size.addr, align 8
  %add295 = add nsw i64 0, %42
  %mul296 = mul nsw i64 0, %add295
  %sub297 = sub nsw i64 %mul296, 1
  %cmp298 = icmp slt i64 %sub297, 0
  br i1 %cmp298, label %cond.true.300, label %cond.false.308

cond.true.300:                                    ; preds = %cond.true.294
  %43 = load i64, i64* %buf_size.addr, align 8
  %add301 = add nsw i64 0, %43
  %mul302 = mul nsw i64 0, %add301
  %add303 = add nsw i64 %mul302, 1
  %shl304 = shl i64 %add303, 62
  %sub305 = sub nsw i64 %shl304, 1
  %mul306 = mul nsw i64 %sub305, 2
  %add307 = add nsw i64 %mul306, 1
  br label %cond.end.312

cond.false.308:                                   ; preds = %cond.true.294
  %44 = load i64, i64* %buf_size.addr, align 8
  %add309 = add nsw i64 0, %44
  %mul310 = mul nsw i64 0, %add309
  %sub311 = sub nsw i64 %mul310, 1
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.308, %cond.true.300
  %cond313 = phi i64 [ %add307, %cond.true.300 ], [ %sub311, %cond.false.308 ]
  %div314 = sdiv i64 %cond313, 3
  %cmp315 = icmp slt i64 %41, %div314
  br i1 %cmp315, label %cond.true.425, label %lor.lhs.false.411

cond.false.317:                                   ; preds = %cond.true.291
  br i1 false, label %cond.true.318, label %cond.false.319

cond.true.318:                                    ; preds = %cond.false.317
  br i1 false, label %cond.true.425, label %lor.lhs.false.411

cond.false.319:                                   ; preds = %cond.false.317
  %45 = load i64, i64* %buf_size.addr, align 8
  %add320 = add nsw i64 0, %45
  %mul321 = mul nsw i64 0, %add320
  %sub322 = sub nsw i64 %mul321, 1
  %cmp323 = icmp slt i64 %sub322, 0
  br i1 %cmp323, label %cond.true.325, label %cond.false.342

cond.true.325:                                    ; preds = %cond.false.319
  %46 = load i64, i64* %buf_size.addr, align 8
  %add326 = add nsw i64 0, %46
  %mul327 = mul nsw i64 0, %add326
  %add328 = add nsw i64 %mul327, 0
  %neg329 = xor i64 %add328, -1
  %cmp330 = icmp eq i64 %neg329, -1
  %conv331 = zext i1 %cmp330 to i32
  %sub332 = sub nsw i32 0, %conv331
  %conv333 = sext i32 %sub332 to i64
  %47 = load i64, i64* %buf_size.addr, align 8
  %add334 = add nsw i64 0, %47
  %mul335 = mul nsw i64 0, %add334
  %add336 = add nsw i64 %mul335, 1
  %shl337 = shl i64 %add336, 62
  %sub338 = sub nsw i64 %shl337, 1
  %mul339 = mul nsw i64 %sub338, 2
  %add340 = add nsw i64 %mul339, 1
  %sub341 = sub nsw i64 %conv333, %add340
  br label %cond.end.346

cond.false.342:                                   ; preds = %cond.false.319
  %48 = load i64, i64* %buf_size.addr, align 8
  %add343 = add nsw i64 0, %48
  %mul344 = mul nsw i64 0, %add343
  %add345 = add nsw i64 %mul344, 0
  br label %cond.end.346

cond.end.346:                                     ; preds = %cond.false.342, %cond.true.325
  %cond347 = phi i64 [ %sub341, %cond.true.325 ], [ %add345, %cond.false.342 ]
  %div348 = sdiv i64 %cond347, 3
  %49 = load i64, i64* %buf_size.addr, align 8
  %cmp349 = icmp slt i64 %div348, %49
  br i1 %cmp349, label %cond.true.425, label %lor.lhs.false.411

cond.false.351:                                   ; preds = %lor.lhs.false.290
  br i1 false, label %cond.true.352, label %cond.false.353

cond.true.352:                                    ; preds = %cond.false.351
  br i1 false, label %cond.true.425, label %lor.lhs.false.411

cond.false.353:                                   ; preds = %cond.false.351
  %50 = load i64, i64* %buf_size.addr, align 8
  %cmp354 = icmp slt i64 %50, 0
  br i1 %cmp354, label %cond.true.356, label %cond.false.388

cond.true.356:                                    ; preds = %cond.false.353
  %51 = load i64, i64* %buf_size.addr, align 8
  %52 = load i64, i64* %buf_size.addr, align 8
  %add357 = add nsw i64 0, %52
  %mul358 = mul nsw i64 0, %add357
  %sub359 = sub nsw i64 %mul358, 1
  %cmp360 = icmp slt i64 %sub359, 0
  br i1 %cmp360, label %cond.true.362, label %cond.false.379

cond.true.362:                                    ; preds = %cond.true.356
  %53 = load i64, i64* %buf_size.addr, align 8
  %add363 = add nsw i64 0, %53
  %mul364 = mul nsw i64 0, %add363
  %add365 = add nsw i64 %mul364, 0
  %neg366 = xor i64 %add365, -1
  %cmp367 = icmp eq i64 %neg366, -1
  %conv368 = zext i1 %cmp367 to i32
  %sub369 = sub nsw i32 0, %conv368
  %conv370 = sext i32 %sub369 to i64
  %54 = load i64, i64* %buf_size.addr, align 8
  %add371 = add nsw i64 0, %54
  %mul372 = mul nsw i64 0, %add371
  %add373 = add nsw i64 %mul372, 1
  %shl374 = shl i64 %add373, 62
  %sub375 = sub nsw i64 %shl374, 1
  %mul376 = mul nsw i64 %sub375, 2
  %add377 = add nsw i64 %mul376, 1
  %sub378 = sub nsw i64 %conv370, %add377
  br label %cond.end.383

cond.false.379:                                   ; preds = %cond.true.356
  %55 = load i64, i64* %buf_size.addr, align 8
  %add380 = add nsw i64 0, %55
  %mul381 = mul nsw i64 0, %add380
  %add382 = add nsw i64 %mul381, 0
  br label %cond.end.383

cond.end.383:                                     ; preds = %cond.false.379, %cond.true.362
  %cond384 = phi i64 [ %sub378, %cond.true.362 ], [ %add382, %cond.false.379 ]
  %div385 = sdiv i64 %cond384, 3
  %cmp386 = icmp slt i64 %51, %div385
  br i1 %cmp386, label %cond.true.425, label %lor.lhs.false.411

cond.false.388:                                   ; preds = %cond.false.353
  %56 = load i64, i64* %buf_size.addr, align 8
  %add389 = add nsw i64 0, %56
  %mul390 = mul nsw i64 0, %add389
  %sub391 = sub nsw i64 %mul390, 1
  %cmp392 = icmp slt i64 %sub391, 0
  br i1 %cmp392, label %cond.true.394, label %cond.false.402

cond.true.394:                                    ; preds = %cond.false.388
  %57 = load i64, i64* %buf_size.addr, align 8
  %add395 = add nsw i64 0, %57
  %mul396 = mul nsw i64 0, %add395
  %add397 = add nsw i64 %mul396, 1
  %shl398 = shl i64 %add397, 62
  %sub399 = sub nsw i64 %shl398, 1
  %mul400 = mul nsw i64 %sub399, 2
  %add401 = add nsw i64 %mul400, 1
  br label %cond.end.406

cond.false.402:                                   ; preds = %cond.false.388
  %58 = load i64, i64* %buf_size.addr, align 8
  %add403 = add nsw i64 0, %58
  %mul404 = mul nsw i64 0, %add403
  %sub405 = sub nsw i64 %mul404, 1
  br label %cond.end.406

cond.end.406:                                     ; preds = %cond.false.402, %cond.true.394
  %cond407 = phi i64 [ %add401, %cond.true.394 ], [ %sub405, %cond.false.402 ]
  %div408 = sdiv i64 %cond407, 3
  %59 = load i64, i64* %buf_size.addr, align 8
  %cmp409 = icmp slt i64 %div408, %59
  br i1 %cmp409, label %cond.true.425, label %lor.lhs.false.411

lor.lhs.false.411:                                ; preds = %cond.end.406, %cond.end.383, %cond.true.352, %cond.end.346, %cond.true.318, %cond.end.312
  %60 = load i64, i64* %buf_size.addr, align 8
  %mul412 = mul nsw i64 %60, 3
  %mul413 = mul nsw i64 0, %mul412
  %sub414 = sub nsw i64 %mul413, 1
  %cmp415 = icmp slt i64 %sub414, 0
  br i1 %cmp415, label %land.lhs.true.417, label %lor.lhs.false.421

land.lhs.true.417:                                ; preds = %lor.lhs.false.411
  %61 = load i64, i64* %buf_size.addr, align 8
  %mul418 = mul nsw i64 %61, 3
  %cmp419 = icmp slt i64 %mul418, -128
  br i1 %cmp419, label %cond.true.425, label %lor.lhs.false.421

lor.lhs.false.421:                                ; preds = %land.lhs.true.417, %lor.lhs.false.411
  %62 = load i64, i64* %buf_size.addr, align 8
  %mul422 = mul nsw i64 %62, 3
  %cmp423 = icmp slt i64 127, %mul422
  br i1 %cmp423, label %cond.true.425, label %cond.false.448

cond.true.425:                                    ; preds = %lor.lhs.false.421, %land.lhs.true.417, %cond.end.406, %cond.end.383, %cond.true.352, %cond.end.346, %cond.true.318, %cond.end.312, %land.lhs.true.287
  %63 = load i64, i64* %buf_size.addr, align 8
  %conv426 = trunc i64 %63 to i8
  %conv427 = zext i8 %conv426 to i32
  %mul428 = mul nsw i32 %conv427, 3
  %cmp429 = icmp sle i32 %mul428, 127
  br i1 %cmp429, label %cond.true.431, label %cond.false.437

cond.true.431:                                    ; preds = %cond.true.425
  %64 = load i64, i64* %buf_size.addr, align 8
  %conv432 = trunc i64 %64 to i8
  %conv433 = zext i8 %conv432 to i32
  %mul434 = mul nsw i32 %conv433, 3
  %conv435 = trunc i32 %mul434 to i8
  %conv436 = sext i8 %conv435 to i32
  br label %cond.end.445

cond.false.437:                                   ; preds = %cond.true.425
  %65 = load i64, i64* %buf_size.addr, align 8
  %conv438 = trunc i64 %65 to i8
  %conv439 = zext i8 %conv438 to i32
  %mul440 = mul nsw i32 %conv439, 3
  %sub441 = sub nsw i32 %mul440, -128
  %conv442 = trunc i32 %sub441 to i8
  %conv443 = sext i8 %conv442 to i32
  %add444 = add nsw i32 %conv443, -128
  br label %cond.end.445

cond.end.445:                                     ; preds = %cond.false.437, %cond.true.431
  %cond446 = phi i32 [ %conv436, %cond.true.431 ], [ %add444, %cond.false.437 ]
  %conv447 = sext i32 %cond446 to i64
  store i64 %conv447, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.448:                                   ; preds = %lor.lhs.false.421
  %66 = load i64, i64* %buf_size.addr, align 8
  %conv449 = trunc i64 %66 to i8
  %conv450 = zext i8 %conv449 to i32
  %mul451 = mul nsw i32 %conv450, 3
  %cmp452 = icmp sle i32 %mul451, 127
  br i1 %cmp452, label %cond.true.454, label %cond.false.460

cond.true.454:                                    ; preds = %cond.false.448
  %67 = load i64, i64* %buf_size.addr, align 8
  %conv455 = trunc i64 %67 to i8
  %conv456 = zext i8 %conv455 to i32
  %mul457 = mul nsw i32 %conv456, 3
  %conv458 = trunc i32 %mul457 to i8
  %conv459 = sext i8 %conv458 to i32
  br label %cond.end.468

cond.false.460:                                   ; preds = %cond.false.448
  %68 = load i64, i64* %buf_size.addr, align 8
  %conv461 = trunc i64 %68 to i8
  %conv462 = zext i8 %conv461 to i32
  %mul463 = mul nsw i32 %conv462, 3
  %sub464 = sub nsw i32 %mul463, -128
  %conv465 = trunc i32 %sub464 to i8
  %conv466 = sext i8 %conv465 to i32
  %add467 = add nsw i32 %conv466, -128
  br label %cond.end.468

cond.end.468:                                     ; preds = %cond.false.460, %cond.true.454
  %cond469 = phi i32 [ %conv459, %cond.true.454 ], [ %add467, %cond.false.460 ]
  %conv470 = sext i32 %cond469 to i64
  store i64 %conv470, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

cond.false.471:                                   ; preds = %entry
  br i1 false, label %cond.true.472, label %cond.false.956

cond.true.472:                                    ; preds = %cond.false.471
  br i1 false, label %cond.true.473, label %cond.false.741

cond.true.473:                                    ; preds = %cond.true.472
  %69 = load i64, i64* %buf_size.addr, align 8
  %conv474 = trunc i64 %69 to i16
  %conv475 = sext i16 %conv474 to i32
  %add476 = add nsw i32 0, %conv475
  %mul477 = mul nsw i32 0, %add476
  %sub478 = sub nsw i32 %mul477, 1
  %cmp479 = icmp slt i32 %sub478, 0
  br i1 %cmp479, label %cond.true.481, label %cond.false.501

cond.true.481:                                    ; preds = %cond.true.473
  %70 = load i64, i64* %buf_size.addr, align 8
  %conv482 = trunc i64 %70 to i16
  %conv483 = sext i16 %conv482 to i32
  %add484 = add nsw i32 0, %conv483
  %mul485 = mul nsw i32 0, %add484
  %add486 = add nsw i32 %mul485, 0
  %neg487 = xor i32 %add486, -1
  %cmp488 = icmp eq i32 %neg487, -1
  %conv489 = zext i1 %cmp488 to i32
  %sub490 = sub nsw i32 0, %conv489
  %71 = load i64, i64* %buf_size.addr, align 8
  %conv491 = trunc i64 %71 to i16
  %conv492 = sext i16 %conv491 to i32
  %add493 = add nsw i32 0, %conv492
  %mul494 = mul nsw i32 0, %add493
  %add495 = add nsw i32 %mul494, 1
  %shl496 = shl i32 %add495, 30
  %sub497 = sub nsw i32 %shl496, 1
  %mul498 = mul nsw i32 %sub497, 2
  %add499 = add nsw i32 %mul498, 1
  %sub500 = sub nsw i32 %sub490, %add499
  br label %cond.end.507

cond.false.501:                                   ; preds = %cond.true.473
  %72 = load i64, i64* %buf_size.addr, align 8
  %conv502 = trunc i64 %72 to i16
  %conv503 = sext i16 %conv502 to i32
  %add504 = add nsw i32 0, %conv503
  %mul505 = mul nsw i32 0, %add504
  %add506 = add nsw i32 %mul505, 0
  br label %cond.end.507

cond.end.507:                                     ; preds = %cond.false.501, %cond.true.481
  %cond508 = phi i32 [ %sub500, %cond.true.481 ], [ %add506, %cond.false.501 ]
  %cmp509 = icmp eq i32 %cond508, 0
  br i1 %cmp509, label %land.lhs.true.511, label %lor.lhs.false.516

land.lhs.true.511:                                ; preds = %cond.end.507
  %73 = load i64, i64* %buf_size.addr, align 8
  %conv512 = trunc i64 %73 to i16
  %conv513 = sext i16 %conv512 to i32
  %cmp514 = icmp slt i32 %conv513, 0
  br i1 %cmp514, label %cond.true.695, label %lor.lhs.false.516

lor.lhs.false.516:                                ; preds = %land.lhs.true.511, %cond.end.507
  br i1 false, label %cond.true.517, label %cond.false.596

cond.true.517:                                    ; preds = %lor.lhs.false.516
  %74 = load i64, i64* %buf_size.addr, align 8
  %conv518 = trunc i64 %74 to i16
  %conv519 = sext i16 %conv518 to i32
  %cmp520 = icmp slt i32 %conv519, 0
  br i1 %cmp520, label %cond.true.522, label %cond.false.553

cond.true.522:                                    ; preds = %cond.true.517
  %75 = load i64, i64* %buf_size.addr, align 8
  %conv523 = trunc i64 %75 to i16
  %conv524 = sext i16 %conv523 to i32
  %76 = load i64, i64* %buf_size.addr, align 8
  %conv525 = trunc i64 %76 to i16
  %conv526 = sext i16 %conv525 to i32
  %add527 = add nsw i32 0, %conv526
  %mul528 = mul nsw i32 0, %add527
  %sub529 = sub nsw i32 %mul528, 1
  %cmp530 = icmp slt i32 %sub529, 0
  br i1 %cmp530, label %cond.true.532, label %cond.false.542

cond.true.532:                                    ; preds = %cond.true.522
  %77 = load i64, i64* %buf_size.addr, align 8
  %conv533 = trunc i64 %77 to i16
  %conv534 = sext i16 %conv533 to i32
  %add535 = add nsw i32 0, %conv534
  %mul536 = mul nsw i32 0, %add535
  %add537 = add nsw i32 %mul536, 1
  %shl538 = shl i32 %add537, 30
  %sub539 = sub nsw i32 %shl538, 1
  %mul540 = mul nsw i32 %sub539, 2
  %add541 = add nsw i32 %mul540, 1
  br label %cond.end.548

cond.false.542:                                   ; preds = %cond.true.522
  %78 = load i64, i64* %buf_size.addr, align 8
  %conv543 = trunc i64 %78 to i16
  %conv544 = sext i16 %conv543 to i32
  %add545 = add nsw i32 0, %conv544
  %mul546 = mul nsw i32 0, %add545
  %sub547 = sub nsw i32 %mul546, 1
  br label %cond.end.548

cond.end.548:                                     ; preds = %cond.false.542, %cond.true.532
  %cond549 = phi i32 [ %add541, %cond.true.532 ], [ %sub547, %cond.false.542 ]
  %div550 = sdiv i32 %cond549, 3
  %cmp551 = icmp slt i32 %conv524, %div550
  br i1 %cmp551, label %cond.true.695, label %lor.lhs.false.675

cond.false.553:                                   ; preds = %cond.true.517
  br i1 false, label %cond.true.554, label %cond.false.555

cond.true.554:                                    ; preds = %cond.false.553
  br i1 false, label %cond.true.695, label %lor.lhs.false.675

cond.false.555:                                   ; preds = %cond.false.553
  %79 = load i64, i64* %buf_size.addr, align 8
  %conv556 = trunc i64 %79 to i16
  %conv557 = sext i16 %conv556 to i32
  %add558 = add nsw i32 0, %conv557
  %mul559 = mul nsw i32 0, %add558
  %sub560 = sub nsw i32 %mul559, 1
  %cmp561 = icmp slt i32 %sub560, 0
  br i1 %cmp561, label %cond.true.563, label %cond.false.583

cond.true.563:                                    ; preds = %cond.false.555
  %80 = load i64, i64* %buf_size.addr, align 8
  %conv564 = trunc i64 %80 to i16
  %conv565 = sext i16 %conv564 to i32
  %add566 = add nsw i32 0, %conv565
  %mul567 = mul nsw i32 0, %add566
  %add568 = add nsw i32 %mul567, 0
  %neg569 = xor i32 %add568, -1
  %cmp570 = icmp eq i32 %neg569, -1
  %conv571 = zext i1 %cmp570 to i32
  %sub572 = sub nsw i32 0, %conv571
  %81 = load i64, i64* %buf_size.addr, align 8
  %conv573 = trunc i64 %81 to i16
  %conv574 = sext i16 %conv573 to i32
  %add575 = add nsw i32 0, %conv574
  %mul576 = mul nsw i32 0, %add575
  %add577 = add nsw i32 %mul576, 1
  %shl578 = shl i32 %add577, 30
  %sub579 = sub nsw i32 %shl578, 1
  %mul580 = mul nsw i32 %sub579, 2
  %add581 = add nsw i32 %mul580, 1
  %sub582 = sub nsw i32 %sub572, %add581
  br label %cond.end.589

cond.false.583:                                   ; preds = %cond.false.555
  %82 = load i64, i64* %buf_size.addr, align 8
  %conv584 = trunc i64 %82 to i16
  %conv585 = sext i16 %conv584 to i32
  %add586 = add nsw i32 0, %conv585
  %mul587 = mul nsw i32 0, %add586
  %add588 = add nsw i32 %mul587, 0
  br label %cond.end.589

cond.end.589:                                     ; preds = %cond.false.583, %cond.true.563
  %cond590 = phi i32 [ %sub582, %cond.true.563 ], [ %add588, %cond.false.583 ]
  %div591 = sdiv i32 %cond590, 3
  %83 = load i64, i64* %buf_size.addr, align 8
  %conv592 = trunc i64 %83 to i16
  %conv593 = sext i16 %conv592 to i32
  %cmp594 = icmp slt i32 %div591, %conv593
  br i1 %cmp594, label %cond.true.695, label %lor.lhs.false.675

cond.false.596:                                   ; preds = %lor.lhs.false.516
  br i1 false, label %cond.true.597, label %cond.false.598

cond.true.597:                                    ; preds = %cond.false.596
  br i1 false, label %cond.true.695, label %lor.lhs.false.675

cond.false.598:                                   ; preds = %cond.false.596
  %84 = load i64, i64* %buf_size.addr, align 8
  %conv599 = trunc i64 %84 to i16
  %conv600 = sext i16 %conv599 to i32
  %cmp601 = icmp slt i32 %conv600, 0
  br i1 %cmp601, label %cond.true.603, label %cond.false.644

cond.true.603:                                    ; preds = %cond.false.598
  %85 = load i64, i64* %buf_size.addr, align 8
  %conv604 = trunc i64 %85 to i16
  %conv605 = sext i16 %conv604 to i32
  %86 = load i64, i64* %buf_size.addr, align 8
  %conv606 = trunc i64 %86 to i16
  %conv607 = sext i16 %conv606 to i32
  %add608 = add nsw i32 0, %conv607
  %mul609 = mul nsw i32 0, %add608
  %sub610 = sub nsw i32 %mul609, 1
  %cmp611 = icmp slt i32 %sub610, 0
  br i1 %cmp611, label %cond.true.613, label %cond.false.633

cond.true.613:                                    ; preds = %cond.true.603
  %87 = load i64, i64* %buf_size.addr, align 8
  %conv614 = trunc i64 %87 to i16
  %conv615 = sext i16 %conv614 to i32
  %add616 = add nsw i32 0, %conv615
  %mul617 = mul nsw i32 0, %add616
  %add618 = add nsw i32 %mul617, 0
  %neg619 = xor i32 %add618, -1
  %cmp620 = icmp eq i32 %neg619, -1
  %conv621 = zext i1 %cmp620 to i32
  %sub622 = sub nsw i32 0, %conv621
  %88 = load i64, i64* %buf_size.addr, align 8
  %conv623 = trunc i64 %88 to i16
  %conv624 = sext i16 %conv623 to i32
  %add625 = add nsw i32 0, %conv624
  %mul626 = mul nsw i32 0, %add625
  %add627 = add nsw i32 %mul626, 1
  %shl628 = shl i32 %add627, 30
  %sub629 = sub nsw i32 %shl628, 1
  %mul630 = mul nsw i32 %sub629, 2
  %add631 = add nsw i32 %mul630, 1
  %sub632 = sub nsw i32 %sub622, %add631
  br label %cond.end.639

cond.false.633:                                   ; preds = %cond.true.603
  %89 = load i64, i64* %buf_size.addr, align 8
  %conv634 = trunc i64 %89 to i16
  %conv635 = sext i16 %conv634 to i32
  %add636 = add nsw i32 0, %conv635
  %mul637 = mul nsw i32 0, %add636
  %add638 = add nsw i32 %mul637, 0
  br label %cond.end.639

cond.end.639:                                     ; preds = %cond.false.633, %cond.true.613
  %cond640 = phi i32 [ %sub632, %cond.true.613 ], [ %add638, %cond.false.633 ]
  %div641 = sdiv i32 %cond640, 3
  %cmp642 = icmp slt i32 %conv605, %div641
  br i1 %cmp642, label %cond.true.695, label %lor.lhs.false.675

cond.false.644:                                   ; preds = %cond.false.598
  %90 = load i64, i64* %buf_size.addr, align 8
  %conv645 = trunc i64 %90 to i16
  %conv646 = sext i16 %conv645 to i32
  %add647 = add nsw i32 0, %conv646
  %mul648 = mul nsw i32 0, %add647
  %sub649 = sub nsw i32 %mul648, 1
  %cmp650 = icmp slt i32 %sub649, 0
  br i1 %cmp650, label %cond.true.652, label %cond.false.662

cond.true.652:                                    ; preds = %cond.false.644
  %91 = load i64, i64* %buf_size.addr, align 8
  %conv653 = trunc i64 %91 to i16
  %conv654 = sext i16 %conv653 to i32
  %add655 = add nsw i32 0, %conv654
  %mul656 = mul nsw i32 0, %add655
  %add657 = add nsw i32 %mul656, 1
  %shl658 = shl i32 %add657, 30
  %sub659 = sub nsw i32 %shl658, 1
  %mul660 = mul nsw i32 %sub659, 2
  %add661 = add nsw i32 %mul660, 1
  br label %cond.end.668

cond.false.662:                                   ; preds = %cond.false.644
  %92 = load i64, i64* %buf_size.addr, align 8
  %conv663 = trunc i64 %92 to i16
  %conv664 = sext i16 %conv663 to i32
  %add665 = add nsw i32 0, %conv664
  %mul666 = mul nsw i32 0, %add665
  %sub667 = sub nsw i32 %mul666, 1
  br label %cond.end.668

cond.end.668:                                     ; preds = %cond.false.662, %cond.true.652
  %cond669 = phi i32 [ %add661, %cond.true.652 ], [ %sub667, %cond.false.662 ]
  %div670 = sdiv i32 %cond669, 3
  %93 = load i64, i64* %buf_size.addr, align 8
  %conv671 = trunc i64 %93 to i16
  %conv672 = sext i16 %conv671 to i32
  %cmp673 = icmp slt i32 %div670, %conv672
  br i1 %cmp673, label %cond.true.695, label %lor.lhs.false.675

lor.lhs.false.675:                                ; preds = %cond.end.668, %cond.end.639, %cond.true.597, %cond.end.589, %cond.true.554, %cond.end.548
  %94 = load i64, i64* %buf_size.addr, align 8
  %conv676 = trunc i64 %94 to i16
  %conv677 = sext i16 %conv676 to i32
  %mul678 = mul nsw i32 %conv677, 3
  %mul679 = mul nsw i32 0, %mul678
  %sub680 = sub nsw i32 %mul679, 1
  %cmp681 = icmp slt i32 %sub680, 0
  br i1 %cmp681, label %land.lhs.true.683, label %lor.lhs.false.689

land.lhs.true.683:                                ; preds = %lor.lhs.false.675
  %95 = load i64, i64* %buf_size.addr, align 8
  %conv684 = trunc i64 %95 to i16
  %conv685 = sext i16 %conv684 to i32
  %mul686 = mul nsw i32 %conv685, 3
  %cmp687 = icmp slt i32 %mul686, -32768
  br i1 %cmp687, label %cond.true.695, label %lor.lhs.false.689

lor.lhs.false.689:                                ; preds = %land.lhs.true.683, %lor.lhs.false.675
  %96 = load i64, i64* %buf_size.addr, align 8
  %conv690 = trunc i64 %96 to i16
  %conv691 = sext i16 %conv690 to i32
  %mul692 = mul nsw i32 %conv691, 3
  %cmp693 = icmp slt i32 32767, %mul692
  br i1 %cmp693, label %cond.true.695, label %cond.false.718

cond.true.695:                                    ; preds = %lor.lhs.false.689, %land.lhs.true.683, %cond.end.668, %cond.end.639, %cond.true.597, %cond.end.589, %cond.true.554, %cond.end.548, %land.lhs.true.511
  %97 = load i64, i64* %buf_size.addr, align 8
  %conv696 = trunc i64 %97 to i16
  %conv697 = zext i16 %conv696 to i32
  %mul698 = mul nsw i32 %conv697, 3
  %cmp699 = icmp sle i32 %mul698, 32767
  br i1 %cmp699, label %cond.true.701, label %cond.false.707

cond.true.701:                                    ; preds = %cond.true.695
  %98 = load i64, i64* %buf_size.addr, align 8
  %conv702 = trunc i64 %98 to i16
  %conv703 = zext i16 %conv702 to i32
  %mul704 = mul nsw i32 %conv703, 3
  %conv705 = trunc i32 %mul704 to i16
  %conv706 = sext i16 %conv705 to i32
  br label %cond.end.715

cond.false.707:                                   ; preds = %cond.true.695
  %99 = load i64, i64* %buf_size.addr, align 8
  %conv708 = trunc i64 %99 to i16
  %conv709 = zext i16 %conv708 to i32
  %mul710 = mul nsw i32 %conv709, 3
  %sub711 = sub nsw i32 %mul710, -32768
  %conv712 = trunc i32 %sub711 to i16
  %conv713 = sext i16 %conv712 to i32
  %add714 = add nsw i32 %conv713, -32768
  br label %cond.end.715

cond.end.715:                                     ; preds = %cond.false.707, %cond.true.701
  %cond716 = phi i32 [ %conv706, %cond.true.701 ], [ %add714, %cond.false.707 ]
  %conv717 = sext i32 %cond716 to i64
  store i64 %conv717, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.718:                                   ; preds = %lor.lhs.false.689
  %100 = load i64, i64* %buf_size.addr, align 8
  %conv719 = trunc i64 %100 to i16
  %conv720 = zext i16 %conv719 to i32
  %mul721 = mul nsw i32 %conv720, 3
  %cmp722 = icmp sle i32 %mul721, 32767
  br i1 %cmp722, label %cond.true.724, label %cond.false.730

cond.true.724:                                    ; preds = %cond.false.718
  %101 = load i64, i64* %buf_size.addr, align 8
  %conv725 = trunc i64 %101 to i16
  %conv726 = zext i16 %conv725 to i32
  %mul727 = mul nsw i32 %conv726, 3
  %conv728 = trunc i32 %mul727 to i16
  %conv729 = sext i16 %conv728 to i32
  br label %cond.end.738

cond.false.730:                                   ; preds = %cond.false.718
  %102 = load i64, i64* %buf_size.addr, align 8
  %conv731 = trunc i64 %102 to i16
  %conv732 = zext i16 %conv731 to i32
  %mul733 = mul nsw i32 %conv732, 3
  %sub734 = sub nsw i32 %mul733, -32768
  %conv735 = trunc i32 %sub734 to i16
  %conv736 = sext i16 %conv735 to i32
  %add737 = add nsw i32 %conv736, -32768
  br label %cond.end.738

cond.end.738:                                     ; preds = %cond.false.730, %cond.true.724
  %cond739 = phi i32 [ %conv729, %cond.true.724 ], [ %add737, %cond.false.730 ]
  %conv740 = sext i32 %cond739 to i64
  store i64 %conv740, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

cond.false.741:                                   ; preds = %cond.true.472
  %103 = load i64, i64* %buf_size.addr, align 8
  %add742 = add nsw i64 0, %103
  %mul743 = mul nsw i64 0, %add742
  %sub744 = sub nsw i64 %mul743, 1
  %cmp745 = icmp slt i64 %sub744, 0
  br i1 %cmp745, label %cond.true.747, label %cond.false.764

cond.true.747:                                    ; preds = %cond.false.741
  %104 = load i64, i64* %buf_size.addr, align 8
  %add748 = add nsw i64 0, %104
  %mul749 = mul nsw i64 0, %add748
  %add750 = add nsw i64 %mul749, 0
  %neg751 = xor i64 %add750, -1
  %cmp752 = icmp eq i64 %neg751, -1
  %conv753 = zext i1 %cmp752 to i32
  %sub754 = sub nsw i32 0, %conv753
  %conv755 = sext i32 %sub754 to i64
  %105 = load i64, i64* %buf_size.addr, align 8
  %add756 = add nsw i64 0, %105
  %mul757 = mul nsw i64 0, %add756
  %add758 = add nsw i64 %mul757, 1
  %shl759 = shl i64 %add758, 62
  %sub760 = sub nsw i64 %shl759, 1
  %mul761 = mul nsw i64 %sub760, 2
  %add762 = add nsw i64 %mul761, 1
  %sub763 = sub nsw i64 %conv755, %add762
  br label %cond.end.768

cond.false.764:                                   ; preds = %cond.false.741
  %106 = load i64, i64* %buf_size.addr, align 8
  %add765 = add nsw i64 0, %106
  %mul766 = mul nsw i64 0, %add765
  %add767 = add nsw i64 %mul766, 0
  br label %cond.end.768

cond.end.768:                                     ; preds = %cond.false.764, %cond.true.747
  %cond769 = phi i64 [ %sub763, %cond.true.747 ], [ %add767, %cond.false.764 ]
  %cmp770 = icmp eq i64 %cond769, 0
  br i1 %cmp770, label %land.lhs.true.772, label %lor.lhs.false.775

land.lhs.true.772:                                ; preds = %cond.end.768
  %107 = load i64, i64* %buf_size.addr, align 8
  %cmp773 = icmp slt i64 %107, 0
  br i1 %cmp773, label %cond.true.910, label %lor.lhs.false.775

lor.lhs.false.775:                                ; preds = %land.lhs.true.772, %cond.end.768
  br i1 false, label %cond.true.776, label %cond.false.836

cond.true.776:                                    ; preds = %lor.lhs.false.775
  %108 = load i64, i64* %buf_size.addr, align 8
  %cmp777 = icmp slt i64 %108, 0
  br i1 %cmp777, label %cond.true.779, label %cond.false.802

cond.true.779:                                    ; preds = %cond.true.776
  %109 = load i64, i64* %buf_size.addr, align 8
  %110 = load i64, i64* %buf_size.addr, align 8
  %add780 = add nsw i64 0, %110
  %mul781 = mul nsw i64 0, %add780
  %sub782 = sub nsw i64 %mul781, 1
  %cmp783 = icmp slt i64 %sub782, 0
  br i1 %cmp783, label %cond.true.785, label %cond.false.793

cond.true.785:                                    ; preds = %cond.true.779
  %111 = load i64, i64* %buf_size.addr, align 8
  %add786 = add nsw i64 0, %111
  %mul787 = mul nsw i64 0, %add786
  %add788 = add nsw i64 %mul787, 1
  %shl789 = shl i64 %add788, 62
  %sub790 = sub nsw i64 %shl789, 1
  %mul791 = mul nsw i64 %sub790, 2
  %add792 = add nsw i64 %mul791, 1
  br label %cond.end.797

cond.false.793:                                   ; preds = %cond.true.779
  %112 = load i64, i64* %buf_size.addr, align 8
  %add794 = add nsw i64 0, %112
  %mul795 = mul nsw i64 0, %add794
  %sub796 = sub nsw i64 %mul795, 1
  br label %cond.end.797

cond.end.797:                                     ; preds = %cond.false.793, %cond.true.785
  %cond798 = phi i64 [ %add792, %cond.true.785 ], [ %sub796, %cond.false.793 ]
  %div799 = sdiv i64 %cond798, 3
  %cmp800 = icmp slt i64 %109, %div799
  br i1 %cmp800, label %cond.true.910, label %lor.lhs.false.896

cond.false.802:                                   ; preds = %cond.true.776
  br i1 false, label %cond.true.803, label %cond.false.804

cond.true.803:                                    ; preds = %cond.false.802
  br i1 false, label %cond.true.910, label %lor.lhs.false.896

cond.false.804:                                   ; preds = %cond.false.802
  %113 = load i64, i64* %buf_size.addr, align 8
  %add805 = add nsw i64 0, %113
  %mul806 = mul nsw i64 0, %add805
  %sub807 = sub nsw i64 %mul806, 1
  %cmp808 = icmp slt i64 %sub807, 0
  br i1 %cmp808, label %cond.true.810, label %cond.false.827

cond.true.810:                                    ; preds = %cond.false.804
  %114 = load i64, i64* %buf_size.addr, align 8
  %add811 = add nsw i64 0, %114
  %mul812 = mul nsw i64 0, %add811
  %add813 = add nsw i64 %mul812, 0
  %neg814 = xor i64 %add813, -1
  %cmp815 = icmp eq i64 %neg814, -1
  %conv816 = zext i1 %cmp815 to i32
  %sub817 = sub nsw i32 0, %conv816
  %conv818 = sext i32 %sub817 to i64
  %115 = load i64, i64* %buf_size.addr, align 8
  %add819 = add nsw i64 0, %115
  %mul820 = mul nsw i64 0, %add819
  %add821 = add nsw i64 %mul820, 1
  %shl822 = shl i64 %add821, 62
  %sub823 = sub nsw i64 %shl822, 1
  %mul824 = mul nsw i64 %sub823, 2
  %add825 = add nsw i64 %mul824, 1
  %sub826 = sub nsw i64 %conv818, %add825
  br label %cond.end.831

cond.false.827:                                   ; preds = %cond.false.804
  %116 = load i64, i64* %buf_size.addr, align 8
  %add828 = add nsw i64 0, %116
  %mul829 = mul nsw i64 0, %add828
  %add830 = add nsw i64 %mul829, 0
  br label %cond.end.831

cond.end.831:                                     ; preds = %cond.false.827, %cond.true.810
  %cond832 = phi i64 [ %sub826, %cond.true.810 ], [ %add830, %cond.false.827 ]
  %div833 = sdiv i64 %cond832, 3
  %117 = load i64, i64* %buf_size.addr, align 8
  %cmp834 = icmp slt i64 %div833, %117
  br i1 %cmp834, label %cond.true.910, label %lor.lhs.false.896

cond.false.836:                                   ; preds = %lor.lhs.false.775
  br i1 false, label %cond.true.837, label %cond.false.838

cond.true.837:                                    ; preds = %cond.false.836
  br i1 false, label %cond.true.910, label %lor.lhs.false.896

cond.false.838:                                   ; preds = %cond.false.836
  %118 = load i64, i64* %buf_size.addr, align 8
  %cmp839 = icmp slt i64 %118, 0
  br i1 %cmp839, label %cond.true.841, label %cond.false.873

cond.true.841:                                    ; preds = %cond.false.838
  %119 = load i64, i64* %buf_size.addr, align 8
  %120 = load i64, i64* %buf_size.addr, align 8
  %add842 = add nsw i64 0, %120
  %mul843 = mul nsw i64 0, %add842
  %sub844 = sub nsw i64 %mul843, 1
  %cmp845 = icmp slt i64 %sub844, 0
  br i1 %cmp845, label %cond.true.847, label %cond.false.864

cond.true.847:                                    ; preds = %cond.true.841
  %121 = load i64, i64* %buf_size.addr, align 8
  %add848 = add nsw i64 0, %121
  %mul849 = mul nsw i64 0, %add848
  %add850 = add nsw i64 %mul849, 0
  %neg851 = xor i64 %add850, -1
  %cmp852 = icmp eq i64 %neg851, -1
  %conv853 = zext i1 %cmp852 to i32
  %sub854 = sub nsw i32 0, %conv853
  %conv855 = sext i32 %sub854 to i64
  %122 = load i64, i64* %buf_size.addr, align 8
  %add856 = add nsw i64 0, %122
  %mul857 = mul nsw i64 0, %add856
  %add858 = add nsw i64 %mul857, 1
  %shl859 = shl i64 %add858, 62
  %sub860 = sub nsw i64 %shl859, 1
  %mul861 = mul nsw i64 %sub860, 2
  %add862 = add nsw i64 %mul861, 1
  %sub863 = sub nsw i64 %conv855, %add862
  br label %cond.end.868

cond.false.864:                                   ; preds = %cond.true.841
  %123 = load i64, i64* %buf_size.addr, align 8
  %add865 = add nsw i64 0, %123
  %mul866 = mul nsw i64 0, %add865
  %add867 = add nsw i64 %mul866, 0
  br label %cond.end.868

cond.end.868:                                     ; preds = %cond.false.864, %cond.true.847
  %cond869 = phi i64 [ %sub863, %cond.true.847 ], [ %add867, %cond.false.864 ]
  %div870 = sdiv i64 %cond869, 3
  %cmp871 = icmp slt i64 %119, %div870
  br i1 %cmp871, label %cond.true.910, label %lor.lhs.false.896

cond.false.873:                                   ; preds = %cond.false.838
  %124 = load i64, i64* %buf_size.addr, align 8
  %add874 = add nsw i64 0, %124
  %mul875 = mul nsw i64 0, %add874
  %sub876 = sub nsw i64 %mul875, 1
  %cmp877 = icmp slt i64 %sub876, 0
  br i1 %cmp877, label %cond.true.879, label %cond.false.887

cond.true.879:                                    ; preds = %cond.false.873
  %125 = load i64, i64* %buf_size.addr, align 8
  %add880 = add nsw i64 0, %125
  %mul881 = mul nsw i64 0, %add880
  %add882 = add nsw i64 %mul881, 1
  %shl883 = shl i64 %add882, 62
  %sub884 = sub nsw i64 %shl883, 1
  %mul885 = mul nsw i64 %sub884, 2
  %add886 = add nsw i64 %mul885, 1
  br label %cond.end.891

cond.false.887:                                   ; preds = %cond.false.873
  %126 = load i64, i64* %buf_size.addr, align 8
  %add888 = add nsw i64 0, %126
  %mul889 = mul nsw i64 0, %add888
  %sub890 = sub nsw i64 %mul889, 1
  br label %cond.end.891

cond.end.891:                                     ; preds = %cond.false.887, %cond.true.879
  %cond892 = phi i64 [ %add886, %cond.true.879 ], [ %sub890, %cond.false.887 ]
  %div893 = sdiv i64 %cond892, 3
  %127 = load i64, i64* %buf_size.addr, align 8
  %cmp894 = icmp slt i64 %div893, %127
  br i1 %cmp894, label %cond.true.910, label %lor.lhs.false.896

lor.lhs.false.896:                                ; preds = %cond.end.891, %cond.end.868, %cond.true.837, %cond.end.831, %cond.true.803, %cond.end.797
  %128 = load i64, i64* %buf_size.addr, align 8
  %mul897 = mul nsw i64 %128, 3
  %mul898 = mul nsw i64 0, %mul897
  %sub899 = sub nsw i64 %mul898, 1
  %cmp900 = icmp slt i64 %sub899, 0
  br i1 %cmp900, label %land.lhs.true.902, label %lor.lhs.false.906

land.lhs.true.902:                                ; preds = %lor.lhs.false.896
  %129 = load i64, i64* %buf_size.addr, align 8
  %mul903 = mul nsw i64 %129, 3
  %cmp904 = icmp slt i64 %mul903, -32768
  br i1 %cmp904, label %cond.true.910, label %lor.lhs.false.906

lor.lhs.false.906:                                ; preds = %land.lhs.true.902, %lor.lhs.false.896
  %130 = load i64, i64* %buf_size.addr, align 8
  %mul907 = mul nsw i64 %130, 3
  %cmp908 = icmp slt i64 32767, %mul907
  br i1 %cmp908, label %cond.true.910, label %cond.false.933

cond.true.910:                                    ; preds = %lor.lhs.false.906, %land.lhs.true.902, %cond.end.891, %cond.end.868, %cond.true.837, %cond.end.831, %cond.true.803, %cond.end.797, %land.lhs.true.772
  %131 = load i64, i64* %buf_size.addr, align 8
  %conv911 = trunc i64 %131 to i16
  %conv912 = zext i16 %conv911 to i32
  %mul913 = mul nsw i32 %conv912, 3
  %cmp914 = icmp sle i32 %mul913, 32767
  br i1 %cmp914, label %cond.true.916, label %cond.false.922

cond.true.916:                                    ; preds = %cond.true.910
  %132 = load i64, i64* %buf_size.addr, align 8
  %conv917 = trunc i64 %132 to i16
  %conv918 = zext i16 %conv917 to i32
  %mul919 = mul nsw i32 %conv918, 3
  %conv920 = trunc i32 %mul919 to i16
  %conv921 = sext i16 %conv920 to i32
  br label %cond.end.930

cond.false.922:                                   ; preds = %cond.true.910
  %133 = load i64, i64* %buf_size.addr, align 8
  %conv923 = trunc i64 %133 to i16
  %conv924 = zext i16 %conv923 to i32
  %mul925 = mul nsw i32 %conv924, 3
  %sub926 = sub nsw i32 %mul925, -32768
  %conv927 = trunc i32 %sub926 to i16
  %conv928 = sext i16 %conv927 to i32
  %add929 = add nsw i32 %conv928, -32768
  br label %cond.end.930

cond.end.930:                                     ; preds = %cond.false.922, %cond.true.916
  %cond931 = phi i32 [ %conv921, %cond.true.916 ], [ %add929, %cond.false.922 ]
  %conv932 = sext i32 %cond931 to i64
  store i64 %conv932, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.933:                                   ; preds = %lor.lhs.false.906
  %134 = load i64, i64* %buf_size.addr, align 8
  %conv934 = trunc i64 %134 to i16
  %conv935 = zext i16 %conv934 to i32
  %mul936 = mul nsw i32 %conv935, 3
  %cmp937 = icmp sle i32 %mul936, 32767
  br i1 %cmp937, label %cond.true.939, label %cond.false.945

cond.true.939:                                    ; preds = %cond.false.933
  %135 = load i64, i64* %buf_size.addr, align 8
  %conv940 = trunc i64 %135 to i16
  %conv941 = zext i16 %conv940 to i32
  %mul942 = mul nsw i32 %conv941, 3
  %conv943 = trunc i32 %mul942 to i16
  %conv944 = sext i16 %conv943 to i32
  br label %cond.end.953

cond.false.945:                                   ; preds = %cond.false.933
  %136 = load i64, i64* %buf_size.addr, align 8
  %conv946 = trunc i64 %136 to i16
  %conv947 = zext i16 %conv946 to i32
  %mul948 = mul nsw i32 %conv947, 3
  %sub949 = sub nsw i32 %mul948, -32768
  %conv950 = trunc i32 %sub949 to i16
  %conv951 = sext i16 %conv950 to i32
  %add952 = add nsw i32 %conv951, -32768
  br label %cond.end.953

cond.end.953:                                     ; preds = %cond.false.945, %cond.true.939
  %cond954 = phi i32 [ %conv944, %cond.true.939 ], [ %add952, %cond.false.945 ]
  %conv955 = sext i32 %cond954 to i64
  store i64 %conv955, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

cond.false.956:                                   ; preds = %cond.false.471
  br i1 false, label %cond.true.957, label %cond.false.1385

cond.true.957:                                    ; preds = %cond.false.956
  br i1 false, label %cond.true.958, label %cond.false.1184

cond.true.958:                                    ; preds = %cond.true.957
  %137 = load i64, i64* %buf_size.addr, align 8
  %conv959 = trunc i64 %137 to i32
  %add960 = add nsw i32 0, %conv959
  %mul961 = mul nsw i32 0, %add960
  %sub962 = sub nsw i32 %mul961, 1
  %cmp963 = icmp slt i32 %sub962, 0
  br i1 %cmp963, label %cond.true.965, label %cond.false.983

cond.true.965:                                    ; preds = %cond.true.958
  %138 = load i64, i64* %buf_size.addr, align 8
  %conv966 = trunc i64 %138 to i32
  %add967 = add nsw i32 0, %conv966
  %mul968 = mul nsw i32 0, %add967
  %add969 = add nsw i32 %mul968, 0
  %neg970 = xor i32 %add969, -1
  %cmp971 = icmp eq i32 %neg970, -1
  %conv972 = zext i1 %cmp971 to i32
  %sub973 = sub nsw i32 0, %conv972
  %139 = load i64, i64* %buf_size.addr, align 8
  %conv974 = trunc i64 %139 to i32
  %add975 = add nsw i32 0, %conv974
  %mul976 = mul nsw i32 0, %add975
  %add977 = add nsw i32 %mul976, 1
  %shl978 = shl i32 %add977, 30
  %sub979 = sub nsw i32 %shl978, 1
  %mul980 = mul nsw i32 %sub979, 2
  %add981 = add nsw i32 %mul980, 1
  %sub982 = sub nsw i32 %sub973, %add981
  br label %cond.end.988

cond.false.983:                                   ; preds = %cond.true.958
  %140 = load i64, i64* %buf_size.addr, align 8
  %conv984 = trunc i64 %140 to i32
  %add985 = add nsw i32 0, %conv984
  %mul986 = mul nsw i32 0, %add985
  %add987 = add nsw i32 %mul986, 0
  br label %cond.end.988

cond.end.988:                                     ; preds = %cond.false.983, %cond.true.965
  %cond989 = phi i32 [ %sub982, %cond.true.965 ], [ %add987, %cond.false.983 ]
  %cmp990 = icmp eq i32 %cond989, 0
  br i1 %cmp990, label %land.lhs.true.992, label %lor.lhs.false.996

land.lhs.true.992:                                ; preds = %cond.end.988
  %141 = load i64, i64* %buf_size.addr, align 8
  %conv993 = trunc i64 %141 to i32
  %cmp994 = icmp slt i32 %conv993, 0
  br i1 %cmp994, label %cond.true.1152, label %lor.lhs.false.996

lor.lhs.false.996:                                ; preds = %land.lhs.true.992, %cond.end.988
  br i1 false, label %cond.true.997, label %cond.false.1066

cond.true.997:                                    ; preds = %lor.lhs.false.996
  %142 = load i64, i64* %buf_size.addr, align 8
  %conv998 = trunc i64 %142 to i32
  %cmp999 = icmp slt i32 %conv998, 0
  br i1 %cmp999, label %cond.true.1001, label %cond.false.1028

cond.true.1001:                                   ; preds = %cond.true.997
  %143 = load i64, i64* %buf_size.addr, align 8
  %conv1002 = trunc i64 %143 to i32
  %144 = load i64, i64* %buf_size.addr, align 8
  %conv1003 = trunc i64 %144 to i32
  %add1004 = add nsw i32 0, %conv1003
  %mul1005 = mul nsw i32 0, %add1004
  %sub1006 = sub nsw i32 %mul1005, 1
  %cmp1007 = icmp slt i32 %sub1006, 0
  br i1 %cmp1007, label %cond.true.1009, label %cond.false.1018

cond.true.1009:                                   ; preds = %cond.true.1001
  %145 = load i64, i64* %buf_size.addr, align 8
  %conv1010 = trunc i64 %145 to i32
  %add1011 = add nsw i32 0, %conv1010
  %mul1012 = mul nsw i32 0, %add1011
  %add1013 = add nsw i32 %mul1012, 1
  %shl1014 = shl i32 %add1013, 30
  %sub1015 = sub nsw i32 %shl1014, 1
  %mul1016 = mul nsw i32 %sub1015, 2
  %add1017 = add nsw i32 %mul1016, 1
  br label %cond.end.1023

cond.false.1018:                                  ; preds = %cond.true.1001
  %146 = load i64, i64* %buf_size.addr, align 8
  %conv1019 = trunc i64 %146 to i32
  %add1020 = add nsw i32 0, %conv1019
  %mul1021 = mul nsw i32 0, %add1020
  %sub1022 = sub nsw i32 %mul1021, 1
  br label %cond.end.1023

cond.end.1023:                                    ; preds = %cond.false.1018, %cond.true.1009
  %cond1024 = phi i32 [ %add1017, %cond.true.1009 ], [ %sub1022, %cond.false.1018 ]
  %div1025 = sdiv i32 %cond1024, 3
  %cmp1026 = icmp slt i32 %conv1002, %div1025
  br i1 %cmp1026, label %cond.true.1152, label %lor.lhs.false.1135

cond.false.1028:                                  ; preds = %cond.true.997
  br i1 false, label %cond.true.1029, label %cond.false.1030

cond.true.1029:                                   ; preds = %cond.false.1028
  br i1 false, label %cond.true.1152, label %lor.lhs.false.1135

cond.false.1030:                                  ; preds = %cond.false.1028
  %147 = load i64, i64* %buf_size.addr, align 8
  %conv1031 = trunc i64 %147 to i32
  %add1032 = add nsw i32 0, %conv1031
  %mul1033 = mul nsw i32 0, %add1032
  %sub1034 = sub nsw i32 %mul1033, 1
  %cmp1035 = icmp slt i32 %sub1034, 0
  br i1 %cmp1035, label %cond.true.1037, label %cond.false.1055

cond.true.1037:                                   ; preds = %cond.false.1030
  %148 = load i64, i64* %buf_size.addr, align 8
  %conv1038 = trunc i64 %148 to i32
  %add1039 = add nsw i32 0, %conv1038
  %mul1040 = mul nsw i32 0, %add1039
  %add1041 = add nsw i32 %mul1040, 0
  %neg1042 = xor i32 %add1041, -1
  %cmp1043 = icmp eq i32 %neg1042, -1
  %conv1044 = zext i1 %cmp1043 to i32
  %sub1045 = sub nsw i32 0, %conv1044
  %149 = load i64, i64* %buf_size.addr, align 8
  %conv1046 = trunc i64 %149 to i32
  %add1047 = add nsw i32 0, %conv1046
  %mul1048 = mul nsw i32 0, %add1047
  %add1049 = add nsw i32 %mul1048, 1
  %shl1050 = shl i32 %add1049, 30
  %sub1051 = sub nsw i32 %shl1050, 1
  %mul1052 = mul nsw i32 %sub1051, 2
  %add1053 = add nsw i32 %mul1052, 1
  %sub1054 = sub nsw i32 %sub1045, %add1053
  br label %cond.end.1060

cond.false.1055:                                  ; preds = %cond.false.1030
  %150 = load i64, i64* %buf_size.addr, align 8
  %conv1056 = trunc i64 %150 to i32
  %add1057 = add nsw i32 0, %conv1056
  %mul1058 = mul nsw i32 0, %add1057
  %add1059 = add nsw i32 %mul1058, 0
  br label %cond.end.1060

cond.end.1060:                                    ; preds = %cond.false.1055, %cond.true.1037
  %cond1061 = phi i32 [ %sub1054, %cond.true.1037 ], [ %add1059, %cond.false.1055 ]
  %div1062 = sdiv i32 %cond1061, 3
  %151 = load i64, i64* %buf_size.addr, align 8
  %conv1063 = trunc i64 %151 to i32
  %cmp1064 = icmp slt i32 %div1062, %conv1063
  br i1 %cmp1064, label %cond.true.1152, label %lor.lhs.false.1135

cond.false.1066:                                  ; preds = %lor.lhs.false.996
  br i1 false, label %cond.true.1067, label %cond.false.1068

cond.true.1067:                                   ; preds = %cond.false.1066
  br i1 false, label %cond.true.1152, label %lor.lhs.false.1135

cond.false.1068:                                  ; preds = %cond.false.1066
  %152 = load i64, i64* %buf_size.addr, align 8
  %conv1069 = trunc i64 %152 to i32
  %cmp1070 = icmp slt i32 %conv1069, 0
  br i1 %cmp1070, label %cond.true.1072, label %cond.false.1108

cond.true.1072:                                   ; preds = %cond.false.1068
  %153 = load i64, i64* %buf_size.addr, align 8
  %conv1073 = trunc i64 %153 to i32
  %154 = load i64, i64* %buf_size.addr, align 8
  %conv1074 = trunc i64 %154 to i32
  %add1075 = add nsw i32 0, %conv1074
  %mul1076 = mul nsw i32 0, %add1075
  %sub1077 = sub nsw i32 %mul1076, 1
  %cmp1078 = icmp slt i32 %sub1077, 0
  br i1 %cmp1078, label %cond.true.1080, label %cond.false.1098

cond.true.1080:                                   ; preds = %cond.true.1072
  %155 = load i64, i64* %buf_size.addr, align 8
  %conv1081 = trunc i64 %155 to i32
  %add1082 = add nsw i32 0, %conv1081
  %mul1083 = mul nsw i32 0, %add1082
  %add1084 = add nsw i32 %mul1083, 0
  %neg1085 = xor i32 %add1084, -1
  %cmp1086 = icmp eq i32 %neg1085, -1
  %conv1087 = zext i1 %cmp1086 to i32
  %sub1088 = sub nsw i32 0, %conv1087
  %156 = load i64, i64* %buf_size.addr, align 8
  %conv1089 = trunc i64 %156 to i32
  %add1090 = add nsw i32 0, %conv1089
  %mul1091 = mul nsw i32 0, %add1090
  %add1092 = add nsw i32 %mul1091, 1
  %shl1093 = shl i32 %add1092, 30
  %sub1094 = sub nsw i32 %shl1093, 1
  %mul1095 = mul nsw i32 %sub1094, 2
  %add1096 = add nsw i32 %mul1095, 1
  %sub1097 = sub nsw i32 %sub1088, %add1096
  br label %cond.end.1103

cond.false.1098:                                  ; preds = %cond.true.1072
  %157 = load i64, i64* %buf_size.addr, align 8
  %conv1099 = trunc i64 %157 to i32
  %add1100 = add nsw i32 0, %conv1099
  %mul1101 = mul nsw i32 0, %add1100
  %add1102 = add nsw i32 %mul1101, 0
  br label %cond.end.1103

cond.end.1103:                                    ; preds = %cond.false.1098, %cond.true.1080
  %cond1104 = phi i32 [ %sub1097, %cond.true.1080 ], [ %add1102, %cond.false.1098 ]
  %div1105 = sdiv i32 %cond1104, 3
  %cmp1106 = icmp slt i32 %conv1073, %div1105
  br i1 %cmp1106, label %cond.true.1152, label %lor.lhs.false.1135

cond.false.1108:                                  ; preds = %cond.false.1068
  %158 = load i64, i64* %buf_size.addr, align 8
  %conv1109 = trunc i64 %158 to i32
  %add1110 = add nsw i32 0, %conv1109
  %mul1111 = mul nsw i32 0, %add1110
  %sub1112 = sub nsw i32 %mul1111, 1
  %cmp1113 = icmp slt i32 %sub1112, 0
  br i1 %cmp1113, label %cond.true.1115, label %cond.false.1124

cond.true.1115:                                   ; preds = %cond.false.1108
  %159 = load i64, i64* %buf_size.addr, align 8
  %conv1116 = trunc i64 %159 to i32
  %add1117 = add nsw i32 0, %conv1116
  %mul1118 = mul nsw i32 0, %add1117
  %add1119 = add nsw i32 %mul1118, 1
  %shl1120 = shl i32 %add1119, 30
  %sub1121 = sub nsw i32 %shl1120, 1
  %mul1122 = mul nsw i32 %sub1121, 2
  %add1123 = add nsw i32 %mul1122, 1
  br label %cond.end.1129

cond.false.1124:                                  ; preds = %cond.false.1108
  %160 = load i64, i64* %buf_size.addr, align 8
  %conv1125 = trunc i64 %160 to i32
  %add1126 = add nsw i32 0, %conv1125
  %mul1127 = mul nsw i32 0, %add1126
  %sub1128 = sub nsw i32 %mul1127, 1
  br label %cond.end.1129

cond.end.1129:                                    ; preds = %cond.false.1124, %cond.true.1115
  %cond1130 = phi i32 [ %add1123, %cond.true.1115 ], [ %sub1128, %cond.false.1124 ]
  %div1131 = sdiv i32 %cond1130, 3
  %161 = load i64, i64* %buf_size.addr, align 8
  %conv1132 = trunc i64 %161 to i32
  %cmp1133 = icmp slt i32 %div1131, %conv1132
  br i1 %cmp1133, label %cond.true.1152, label %lor.lhs.false.1135

lor.lhs.false.1135:                               ; preds = %cond.end.1129, %cond.end.1103, %cond.true.1067, %cond.end.1060, %cond.true.1029, %cond.end.1023
  %162 = load i64, i64* %buf_size.addr, align 8
  %conv1136 = trunc i64 %162 to i32
  %mul1137 = mul nsw i32 %conv1136, 3
  %mul1138 = mul nsw i32 0, %mul1137
  %sub1139 = sub nsw i32 %mul1138, 1
  %cmp1140 = icmp slt i32 %sub1139, 0
  br i1 %cmp1140, label %land.lhs.true.1142, label %lor.lhs.false.1147

land.lhs.true.1142:                               ; preds = %lor.lhs.false.1135
  %163 = load i64, i64* %buf_size.addr, align 8
  %conv1143 = trunc i64 %163 to i32
  %mul1144 = mul nsw i32 %conv1143, 3
  %cmp1145 = icmp slt i32 %mul1144, -2147483648
  br i1 %cmp1145, label %cond.true.1152, label %lor.lhs.false.1147

lor.lhs.false.1147:                               ; preds = %land.lhs.true.1142, %lor.lhs.false.1135
  %164 = load i64, i64* %buf_size.addr, align 8
  %conv1148 = trunc i64 %164 to i32
  %mul1149 = mul nsw i32 %conv1148, 3
  %cmp1150 = icmp slt i32 2147483647, %mul1149
  br i1 %cmp1150, label %cond.true.1152, label %cond.false.1168

cond.true.1152:                                   ; preds = %lor.lhs.false.1147, %land.lhs.true.1142, %cond.end.1129, %cond.end.1103, %cond.true.1067, %cond.end.1060, %cond.true.1029, %cond.end.1023, %land.lhs.true.992
  %165 = load i64, i64* %buf_size.addr, align 8
  %conv1153 = trunc i64 %165 to i32
  %mul1154 = mul i32 %conv1153, 3
  %cmp1155 = icmp ule i32 %mul1154, 2147483647
  br i1 %cmp1155, label %cond.true.1157, label %cond.false.1160

cond.true.1157:                                   ; preds = %cond.true.1152
  %166 = load i64, i64* %buf_size.addr, align 8
  %conv1158 = trunc i64 %166 to i32
  %mul1159 = mul i32 %conv1158, 3
  br label %cond.end.1165

cond.false.1160:                                  ; preds = %cond.true.1152
  %167 = load i64, i64* %buf_size.addr, align 8
  %conv1161 = trunc i64 %167 to i32
  %mul1162 = mul i32 %conv1161, 3
  %sub1163 = sub i32 %mul1162, -2147483648
  %add1164 = add nsw i32 %sub1163, -2147483648
  br label %cond.end.1165

cond.end.1165:                                    ; preds = %cond.false.1160, %cond.true.1157
  %cond1166 = phi i32 [ %mul1159, %cond.true.1157 ], [ %add1164, %cond.false.1160 ]
  %conv1167 = sext i32 %cond1166 to i64
  store i64 %conv1167, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.1168:                                  ; preds = %lor.lhs.false.1147
  %168 = load i64, i64* %buf_size.addr, align 8
  %conv1169 = trunc i64 %168 to i32
  %mul1170 = mul i32 %conv1169, 3
  %cmp1171 = icmp ule i32 %mul1170, 2147483647
  br i1 %cmp1171, label %cond.true.1173, label %cond.false.1176

cond.true.1173:                                   ; preds = %cond.false.1168
  %169 = load i64, i64* %buf_size.addr, align 8
  %conv1174 = trunc i64 %169 to i32
  %mul1175 = mul i32 %conv1174, 3
  br label %cond.end.1181

cond.false.1176:                                  ; preds = %cond.false.1168
  %170 = load i64, i64* %buf_size.addr, align 8
  %conv1177 = trunc i64 %170 to i32
  %mul1178 = mul i32 %conv1177, 3
  %sub1179 = sub i32 %mul1178, -2147483648
  %add1180 = add nsw i32 %sub1179, -2147483648
  br label %cond.end.1181

cond.end.1181:                                    ; preds = %cond.false.1176, %cond.true.1173
  %cond1182 = phi i32 [ %mul1175, %cond.true.1173 ], [ %add1180, %cond.false.1176 ]
  %conv1183 = sext i32 %cond1182 to i64
  store i64 %conv1183, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

cond.false.1184:                                  ; preds = %cond.true.957
  %171 = load i64, i64* %buf_size.addr, align 8
  %add1185 = add nsw i64 0, %171
  %mul1186 = mul nsw i64 0, %add1185
  %sub1187 = sub nsw i64 %mul1186, 1
  %cmp1188 = icmp slt i64 %sub1187, 0
  br i1 %cmp1188, label %cond.true.1190, label %cond.false.1207

cond.true.1190:                                   ; preds = %cond.false.1184
  %172 = load i64, i64* %buf_size.addr, align 8
  %add1191 = add nsw i64 0, %172
  %mul1192 = mul nsw i64 0, %add1191
  %add1193 = add nsw i64 %mul1192, 0
  %neg1194 = xor i64 %add1193, -1
  %cmp1195 = icmp eq i64 %neg1194, -1
  %conv1196 = zext i1 %cmp1195 to i32
  %sub1197 = sub nsw i32 0, %conv1196
  %conv1198 = sext i32 %sub1197 to i64
  %173 = load i64, i64* %buf_size.addr, align 8
  %add1199 = add nsw i64 0, %173
  %mul1200 = mul nsw i64 0, %add1199
  %add1201 = add nsw i64 %mul1200, 1
  %shl1202 = shl i64 %add1201, 62
  %sub1203 = sub nsw i64 %shl1202, 1
  %mul1204 = mul nsw i64 %sub1203, 2
  %add1205 = add nsw i64 %mul1204, 1
  %sub1206 = sub nsw i64 %conv1198, %add1205
  br label %cond.end.1211

cond.false.1207:                                  ; preds = %cond.false.1184
  %174 = load i64, i64* %buf_size.addr, align 8
  %add1208 = add nsw i64 0, %174
  %mul1209 = mul nsw i64 0, %add1208
  %add1210 = add nsw i64 %mul1209, 0
  br label %cond.end.1211

cond.end.1211:                                    ; preds = %cond.false.1207, %cond.true.1190
  %cond1212 = phi i64 [ %sub1206, %cond.true.1190 ], [ %add1210, %cond.false.1207 ]
  %cmp1213 = icmp eq i64 %cond1212, 0
  br i1 %cmp1213, label %land.lhs.true.1215, label %lor.lhs.false.1218

land.lhs.true.1215:                               ; preds = %cond.end.1211
  %175 = load i64, i64* %buf_size.addr, align 8
  %cmp1216 = icmp slt i64 %175, 0
  br i1 %cmp1216, label %cond.true.1353, label %lor.lhs.false.1218

lor.lhs.false.1218:                               ; preds = %land.lhs.true.1215, %cond.end.1211
  br i1 false, label %cond.true.1219, label %cond.false.1279

cond.true.1219:                                   ; preds = %lor.lhs.false.1218
  %176 = load i64, i64* %buf_size.addr, align 8
  %cmp1220 = icmp slt i64 %176, 0
  br i1 %cmp1220, label %cond.true.1222, label %cond.false.1245

cond.true.1222:                                   ; preds = %cond.true.1219
  %177 = load i64, i64* %buf_size.addr, align 8
  %178 = load i64, i64* %buf_size.addr, align 8
  %add1223 = add nsw i64 0, %178
  %mul1224 = mul nsw i64 0, %add1223
  %sub1225 = sub nsw i64 %mul1224, 1
  %cmp1226 = icmp slt i64 %sub1225, 0
  br i1 %cmp1226, label %cond.true.1228, label %cond.false.1236

cond.true.1228:                                   ; preds = %cond.true.1222
  %179 = load i64, i64* %buf_size.addr, align 8
  %add1229 = add nsw i64 0, %179
  %mul1230 = mul nsw i64 0, %add1229
  %add1231 = add nsw i64 %mul1230, 1
  %shl1232 = shl i64 %add1231, 62
  %sub1233 = sub nsw i64 %shl1232, 1
  %mul1234 = mul nsw i64 %sub1233, 2
  %add1235 = add nsw i64 %mul1234, 1
  br label %cond.end.1240

cond.false.1236:                                  ; preds = %cond.true.1222
  %180 = load i64, i64* %buf_size.addr, align 8
  %add1237 = add nsw i64 0, %180
  %mul1238 = mul nsw i64 0, %add1237
  %sub1239 = sub nsw i64 %mul1238, 1
  br label %cond.end.1240

cond.end.1240:                                    ; preds = %cond.false.1236, %cond.true.1228
  %cond1241 = phi i64 [ %add1235, %cond.true.1228 ], [ %sub1239, %cond.false.1236 ]
  %div1242 = sdiv i64 %cond1241, 3
  %cmp1243 = icmp slt i64 %177, %div1242
  br i1 %cmp1243, label %cond.true.1353, label %lor.lhs.false.1339

cond.false.1245:                                  ; preds = %cond.true.1219
  br i1 false, label %cond.true.1246, label %cond.false.1247

cond.true.1246:                                   ; preds = %cond.false.1245
  br i1 false, label %cond.true.1353, label %lor.lhs.false.1339

cond.false.1247:                                  ; preds = %cond.false.1245
  %181 = load i64, i64* %buf_size.addr, align 8
  %add1248 = add nsw i64 0, %181
  %mul1249 = mul nsw i64 0, %add1248
  %sub1250 = sub nsw i64 %mul1249, 1
  %cmp1251 = icmp slt i64 %sub1250, 0
  br i1 %cmp1251, label %cond.true.1253, label %cond.false.1270

cond.true.1253:                                   ; preds = %cond.false.1247
  %182 = load i64, i64* %buf_size.addr, align 8
  %add1254 = add nsw i64 0, %182
  %mul1255 = mul nsw i64 0, %add1254
  %add1256 = add nsw i64 %mul1255, 0
  %neg1257 = xor i64 %add1256, -1
  %cmp1258 = icmp eq i64 %neg1257, -1
  %conv1259 = zext i1 %cmp1258 to i32
  %sub1260 = sub nsw i32 0, %conv1259
  %conv1261 = sext i32 %sub1260 to i64
  %183 = load i64, i64* %buf_size.addr, align 8
  %add1262 = add nsw i64 0, %183
  %mul1263 = mul nsw i64 0, %add1262
  %add1264 = add nsw i64 %mul1263, 1
  %shl1265 = shl i64 %add1264, 62
  %sub1266 = sub nsw i64 %shl1265, 1
  %mul1267 = mul nsw i64 %sub1266, 2
  %add1268 = add nsw i64 %mul1267, 1
  %sub1269 = sub nsw i64 %conv1261, %add1268
  br label %cond.end.1274

cond.false.1270:                                  ; preds = %cond.false.1247
  %184 = load i64, i64* %buf_size.addr, align 8
  %add1271 = add nsw i64 0, %184
  %mul1272 = mul nsw i64 0, %add1271
  %add1273 = add nsw i64 %mul1272, 0
  br label %cond.end.1274

cond.end.1274:                                    ; preds = %cond.false.1270, %cond.true.1253
  %cond1275 = phi i64 [ %sub1269, %cond.true.1253 ], [ %add1273, %cond.false.1270 ]
  %div1276 = sdiv i64 %cond1275, 3
  %185 = load i64, i64* %buf_size.addr, align 8
  %cmp1277 = icmp slt i64 %div1276, %185
  br i1 %cmp1277, label %cond.true.1353, label %lor.lhs.false.1339

cond.false.1279:                                  ; preds = %lor.lhs.false.1218
  br i1 false, label %cond.true.1280, label %cond.false.1281

cond.true.1280:                                   ; preds = %cond.false.1279
  br i1 false, label %cond.true.1353, label %lor.lhs.false.1339

cond.false.1281:                                  ; preds = %cond.false.1279
  %186 = load i64, i64* %buf_size.addr, align 8
  %cmp1282 = icmp slt i64 %186, 0
  br i1 %cmp1282, label %cond.true.1284, label %cond.false.1316

cond.true.1284:                                   ; preds = %cond.false.1281
  %187 = load i64, i64* %buf_size.addr, align 8
  %188 = load i64, i64* %buf_size.addr, align 8
  %add1285 = add nsw i64 0, %188
  %mul1286 = mul nsw i64 0, %add1285
  %sub1287 = sub nsw i64 %mul1286, 1
  %cmp1288 = icmp slt i64 %sub1287, 0
  br i1 %cmp1288, label %cond.true.1290, label %cond.false.1307

cond.true.1290:                                   ; preds = %cond.true.1284
  %189 = load i64, i64* %buf_size.addr, align 8
  %add1291 = add nsw i64 0, %189
  %mul1292 = mul nsw i64 0, %add1291
  %add1293 = add nsw i64 %mul1292, 0
  %neg1294 = xor i64 %add1293, -1
  %cmp1295 = icmp eq i64 %neg1294, -1
  %conv1296 = zext i1 %cmp1295 to i32
  %sub1297 = sub nsw i32 0, %conv1296
  %conv1298 = sext i32 %sub1297 to i64
  %190 = load i64, i64* %buf_size.addr, align 8
  %add1299 = add nsw i64 0, %190
  %mul1300 = mul nsw i64 0, %add1299
  %add1301 = add nsw i64 %mul1300, 1
  %shl1302 = shl i64 %add1301, 62
  %sub1303 = sub nsw i64 %shl1302, 1
  %mul1304 = mul nsw i64 %sub1303, 2
  %add1305 = add nsw i64 %mul1304, 1
  %sub1306 = sub nsw i64 %conv1298, %add1305
  br label %cond.end.1311

cond.false.1307:                                  ; preds = %cond.true.1284
  %191 = load i64, i64* %buf_size.addr, align 8
  %add1308 = add nsw i64 0, %191
  %mul1309 = mul nsw i64 0, %add1308
  %add1310 = add nsw i64 %mul1309, 0
  br label %cond.end.1311

cond.end.1311:                                    ; preds = %cond.false.1307, %cond.true.1290
  %cond1312 = phi i64 [ %sub1306, %cond.true.1290 ], [ %add1310, %cond.false.1307 ]
  %div1313 = sdiv i64 %cond1312, 3
  %cmp1314 = icmp slt i64 %187, %div1313
  br i1 %cmp1314, label %cond.true.1353, label %lor.lhs.false.1339

cond.false.1316:                                  ; preds = %cond.false.1281
  %192 = load i64, i64* %buf_size.addr, align 8
  %add1317 = add nsw i64 0, %192
  %mul1318 = mul nsw i64 0, %add1317
  %sub1319 = sub nsw i64 %mul1318, 1
  %cmp1320 = icmp slt i64 %sub1319, 0
  br i1 %cmp1320, label %cond.true.1322, label %cond.false.1330

cond.true.1322:                                   ; preds = %cond.false.1316
  %193 = load i64, i64* %buf_size.addr, align 8
  %add1323 = add nsw i64 0, %193
  %mul1324 = mul nsw i64 0, %add1323
  %add1325 = add nsw i64 %mul1324, 1
  %shl1326 = shl i64 %add1325, 62
  %sub1327 = sub nsw i64 %shl1326, 1
  %mul1328 = mul nsw i64 %sub1327, 2
  %add1329 = add nsw i64 %mul1328, 1
  br label %cond.end.1334

cond.false.1330:                                  ; preds = %cond.false.1316
  %194 = load i64, i64* %buf_size.addr, align 8
  %add1331 = add nsw i64 0, %194
  %mul1332 = mul nsw i64 0, %add1331
  %sub1333 = sub nsw i64 %mul1332, 1
  br label %cond.end.1334

cond.end.1334:                                    ; preds = %cond.false.1330, %cond.true.1322
  %cond1335 = phi i64 [ %add1329, %cond.true.1322 ], [ %sub1333, %cond.false.1330 ]
  %div1336 = sdiv i64 %cond1335, 3
  %195 = load i64, i64* %buf_size.addr, align 8
  %cmp1337 = icmp slt i64 %div1336, %195
  br i1 %cmp1337, label %cond.true.1353, label %lor.lhs.false.1339

lor.lhs.false.1339:                               ; preds = %cond.end.1334, %cond.end.1311, %cond.true.1280, %cond.end.1274, %cond.true.1246, %cond.end.1240
  %196 = load i64, i64* %buf_size.addr, align 8
  %mul1340 = mul nsw i64 %196, 3
  %mul1341 = mul nsw i64 0, %mul1340
  %sub1342 = sub nsw i64 %mul1341, 1
  %cmp1343 = icmp slt i64 %sub1342, 0
  br i1 %cmp1343, label %land.lhs.true.1345, label %lor.lhs.false.1349

land.lhs.true.1345:                               ; preds = %lor.lhs.false.1339
  %197 = load i64, i64* %buf_size.addr, align 8
  %mul1346 = mul nsw i64 %197, 3
  %cmp1347 = icmp slt i64 %mul1346, -2147483648
  br i1 %cmp1347, label %cond.true.1353, label %lor.lhs.false.1349

lor.lhs.false.1349:                               ; preds = %land.lhs.true.1345, %lor.lhs.false.1339
  %198 = load i64, i64* %buf_size.addr, align 8
  %mul1350 = mul nsw i64 %198, 3
  %cmp1351 = icmp slt i64 2147483647, %mul1350
  br i1 %cmp1351, label %cond.true.1353, label %cond.false.1369

cond.true.1353:                                   ; preds = %lor.lhs.false.1349, %land.lhs.true.1345, %cond.end.1334, %cond.end.1311, %cond.true.1280, %cond.end.1274, %cond.true.1246, %cond.end.1240, %land.lhs.true.1215
  %199 = load i64, i64* %buf_size.addr, align 8
  %conv1354 = trunc i64 %199 to i32
  %mul1355 = mul i32 %conv1354, 3
  %cmp1356 = icmp ule i32 %mul1355, 2147483647
  br i1 %cmp1356, label %cond.true.1358, label %cond.false.1361

cond.true.1358:                                   ; preds = %cond.true.1353
  %200 = load i64, i64* %buf_size.addr, align 8
  %conv1359 = trunc i64 %200 to i32
  %mul1360 = mul i32 %conv1359, 3
  br label %cond.end.1366

cond.false.1361:                                  ; preds = %cond.true.1353
  %201 = load i64, i64* %buf_size.addr, align 8
  %conv1362 = trunc i64 %201 to i32
  %mul1363 = mul i32 %conv1362, 3
  %sub1364 = sub i32 %mul1363, -2147483648
  %add1365 = add nsw i32 %sub1364, -2147483648
  br label %cond.end.1366

cond.end.1366:                                    ; preds = %cond.false.1361, %cond.true.1358
  %cond1367 = phi i32 [ %mul1360, %cond.true.1358 ], [ %add1365, %cond.false.1361 ]
  %conv1368 = sext i32 %cond1367 to i64
  store i64 %conv1368, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.1369:                                  ; preds = %lor.lhs.false.1349
  %202 = load i64, i64* %buf_size.addr, align 8
  %conv1370 = trunc i64 %202 to i32
  %mul1371 = mul i32 %conv1370, 3
  %cmp1372 = icmp ule i32 %mul1371, 2147483647
  br i1 %cmp1372, label %cond.true.1374, label %cond.false.1377

cond.true.1374:                                   ; preds = %cond.false.1369
  %203 = load i64, i64* %buf_size.addr, align 8
  %conv1375 = trunc i64 %203 to i32
  %mul1376 = mul i32 %conv1375, 3
  br label %cond.end.1382

cond.false.1377:                                  ; preds = %cond.false.1369
  %204 = load i64, i64* %buf_size.addr, align 8
  %conv1378 = trunc i64 %204 to i32
  %mul1379 = mul i32 %conv1378, 3
  %sub1380 = sub i32 %mul1379, -2147483648
  %add1381 = add nsw i32 %sub1380, -2147483648
  br label %cond.end.1382

cond.end.1382:                                    ; preds = %cond.false.1377, %cond.true.1374
  %cond1383 = phi i32 [ %mul1376, %cond.true.1374 ], [ %add1381, %cond.false.1377 ]
  %conv1384 = sext i32 %cond1383 to i64
  store i64 %conv1384, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

cond.false.1385:                                  ; preds = %cond.false.956
  br i1 true, label %cond.true.1386, label %cond.false.1773

cond.true.1386:                                   ; preds = %cond.false.1385
  br i1 false, label %cond.true.1387, label %cond.false.1580

cond.true.1387:                                   ; preds = %cond.true.1386
  %205 = load i64, i64* %buf_size.addr, align 8
  %add1388 = add nsw i64 0, %205
  %mul1389 = mul nsw i64 0, %add1388
  %sub1390 = sub nsw i64 %mul1389, 1
  %cmp1391 = icmp slt i64 %sub1390, 0
  br i1 %cmp1391, label %cond.true.1393, label %cond.false.1410

cond.true.1393:                                   ; preds = %cond.true.1387
  %206 = load i64, i64* %buf_size.addr, align 8
  %add1394 = add nsw i64 0, %206
  %mul1395 = mul nsw i64 0, %add1394
  %add1396 = add nsw i64 %mul1395, 0
  %neg1397 = xor i64 %add1396, -1
  %cmp1398 = icmp eq i64 %neg1397, -1
  %conv1399 = zext i1 %cmp1398 to i32
  %sub1400 = sub nsw i32 0, %conv1399
  %conv1401 = sext i32 %sub1400 to i64
  %207 = load i64, i64* %buf_size.addr, align 8
  %add1402 = add nsw i64 0, %207
  %mul1403 = mul nsw i64 0, %add1402
  %add1404 = add nsw i64 %mul1403, 1
  %shl1405 = shl i64 %add1404, 62
  %sub1406 = sub nsw i64 %shl1405, 1
  %mul1407 = mul nsw i64 %sub1406, 2
  %add1408 = add nsw i64 %mul1407, 1
  %sub1409 = sub nsw i64 %conv1401, %add1408
  br label %cond.end.1414

cond.false.1410:                                  ; preds = %cond.true.1387
  %208 = load i64, i64* %buf_size.addr, align 8
  %add1411 = add nsw i64 0, %208
  %mul1412 = mul nsw i64 0, %add1411
  %add1413 = add nsw i64 %mul1412, 0
  br label %cond.end.1414

cond.end.1414:                                    ; preds = %cond.false.1410, %cond.true.1393
  %cond1415 = phi i64 [ %sub1409, %cond.true.1393 ], [ %add1413, %cond.false.1410 ]
  %cmp1416 = icmp eq i64 %cond1415, 0
  br i1 %cmp1416, label %land.lhs.true.1418, label %lor.lhs.false.1421

land.lhs.true.1418:                               ; preds = %cond.end.1414
  %209 = load i64, i64* %buf_size.addr, align 8
  %cmp1419 = icmp slt i64 %209, 0
  br i1 %cmp1419, label %cond.true.1556, label %lor.lhs.false.1421

lor.lhs.false.1421:                               ; preds = %land.lhs.true.1418, %cond.end.1414
  br i1 false, label %cond.true.1422, label %cond.false.1482

cond.true.1422:                                   ; preds = %lor.lhs.false.1421
  %210 = load i64, i64* %buf_size.addr, align 8
  %cmp1423 = icmp slt i64 %210, 0
  br i1 %cmp1423, label %cond.true.1425, label %cond.false.1448

cond.true.1425:                                   ; preds = %cond.true.1422
  %211 = load i64, i64* %buf_size.addr, align 8
  %212 = load i64, i64* %buf_size.addr, align 8
  %add1426 = add nsw i64 0, %212
  %mul1427 = mul nsw i64 0, %add1426
  %sub1428 = sub nsw i64 %mul1427, 1
  %cmp1429 = icmp slt i64 %sub1428, 0
  br i1 %cmp1429, label %cond.true.1431, label %cond.false.1439

cond.true.1431:                                   ; preds = %cond.true.1425
  %213 = load i64, i64* %buf_size.addr, align 8
  %add1432 = add nsw i64 0, %213
  %mul1433 = mul nsw i64 0, %add1432
  %add1434 = add nsw i64 %mul1433, 1
  %shl1435 = shl i64 %add1434, 62
  %sub1436 = sub nsw i64 %shl1435, 1
  %mul1437 = mul nsw i64 %sub1436, 2
  %add1438 = add nsw i64 %mul1437, 1
  br label %cond.end.1443

cond.false.1439:                                  ; preds = %cond.true.1425
  %214 = load i64, i64* %buf_size.addr, align 8
  %add1440 = add nsw i64 0, %214
  %mul1441 = mul nsw i64 0, %add1440
  %sub1442 = sub nsw i64 %mul1441, 1
  br label %cond.end.1443

cond.end.1443:                                    ; preds = %cond.false.1439, %cond.true.1431
  %cond1444 = phi i64 [ %add1438, %cond.true.1431 ], [ %sub1442, %cond.false.1439 ]
  %div1445 = sdiv i64 %cond1444, 3
  %cmp1446 = icmp slt i64 %211, %div1445
  br i1 %cmp1446, label %cond.true.1556, label %lor.lhs.false.1542

cond.false.1448:                                  ; preds = %cond.true.1422
  br i1 false, label %cond.true.1449, label %cond.false.1450

cond.true.1449:                                   ; preds = %cond.false.1448
  br i1 false, label %cond.true.1556, label %lor.lhs.false.1542

cond.false.1450:                                  ; preds = %cond.false.1448
  %215 = load i64, i64* %buf_size.addr, align 8
  %add1451 = add nsw i64 0, %215
  %mul1452 = mul nsw i64 0, %add1451
  %sub1453 = sub nsw i64 %mul1452, 1
  %cmp1454 = icmp slt i64 %sub1453, 0
  br i1 %cmp1454, label %cond.true.1456, label %cond.false.1473

cond.true.1456:                                   ; preds = %cond.false.1450
  %216 = load i64, i64* %buf_size.addr, align 8
  %add1457 = add nsw i64 0, %216
  %mul1458 = mul nsw i64 0, %add1457
  %add1459 = add nsw i64 %mul1458, 0
  %neg1460 = xor i64 %add1459, -1
  %cmp1461 = icmp eq i64 %neg1460, -1
  %conv1462 = zext i1 %cmp1461 to i32
  %sub1463 = sub nsw i32 0, %conv1462
  %conv1464 = sext i32 %sub1463 to i64
  %217 = load i64, i64* %buf_size.addr, align 8
  %add1465 = add nsw i64 0, %217
  %mul1466 = mul nsw i64 0, %add1465
  %add1467 = add nsw i64 %mul1466, 1
  %shl1468 = shl i64 %add1467, 62
  %sub1469 = sub nsw i64 %shl1468, 1
  %mul1470 = mul nsw i64 %sub1469, 2
  %add1471 = add nsw i64 %mul1470, 1
  %sub1472 = sub nsw i64 %conv1464, %add1471
  br label %cond.end.1477

cond.false.1473:                                  ; preds = %cond.false.1450
  %218 = load i64, i64* %buf_size.addr, align 8
  %add1474 = add nsw i64 0, %218
  %mul1475 = mul nsw i64 0, %add1474
  %add1476 = add nsw i64 %mul1475, 0
  br label %cond.end.1477

cond.end.1477:                                    ; preds = %cond.false.1473, %cond.true.1456
  %cond1478 = phi i64 [ %sub1472, %cond.true.1456 ], [ %add1476, %cond.false.1473 ]
  %div1479 = sdiv i64 %cond1478, 3
  %219 = load i64, i64* %buf_size.addr, align 8
  %cmp1480 = icmp slt i64 %div1479, %219
  br i1 %cmp1480, label %cond.true.1556, label %lor.lhs.false.1542

cond.false.1482:                                  ; preds = %lor.lhs.false.1421
  br i1 false, label %cond.true.1483, label %cond.false.1484

cond.true.1483:                                   ; preds = %cond.false.1482
  br i1 false, label %cond.true.1556, label %lor.lhs.false.1542

cond.false.1484:                                  ; preds = %cond.false.1482
  %220 = load i64, i64* %buf_size.addr, align 8
  %cmp1485 = icmp slt i64 %220, 0
  br i1 %cmp1485, label %cond.true.1487, label %cond.false.1519

cond.true.1487:                                   ; preds = %cond.false.1484
  %221 = load i64, i64* %buf_size.addr, align 8
  %222 = load i64, i64* %buf_size.addr, align 8
  %add1488 = add nsw i64 0, %222
  %mul1489 = mul nsw i64 0, %add1488
  %sub1490 = sub nsw i64 %mul1489, 1
  %cmp1491 = icmp slt i64 %sub1490, 0
  br i1 %cmp1491, label %cond.true.1493, label %cond.false.1510

cond.true.1493:                                   ; preds = %cond.true.1487
  %223 = load i64, i64* %buf_size.addr, align 8
  %add1494 = add nsw i64 0, %223
  %mul1495 = mul nsw i64 0, %add1494
  %add1496 = add nsw i64 %mul1495, 0
  %neg1497 = xor i64 %add1496, -1
  %cmp1498 = icmp eq i64 %neg1497, -1
  %conv1499 = zext i1 %cmp1498 to i32
  %sub1500 = sub nsw i32 0, %conv1499
  %conv1501 = sext i32 %sub1500 to i64
  %224 = load i64, i64* %buf_size.addr, align 8
  %add1502 = add nsw i64 0, %224
  %mul1503 = mul nsw i64 0, %add1502
  %add1504 = add nsw i64 %mul1503, 1
  %shl1505 = shl i64 %add1504, 62
  %sub1506 = sub nsw i64 %shl1505, 1
  %mul1507 = mul nsw i64 %sub1506, 2
  %add1508 = add nsw i64 %mul1507, 1
  %sub1509 = sub nsw i64 %conv1501, %add1508
  br label %cond.end.1514

cond.false.1510:                                  ; preds = %cond.true.1487
  %225 = load i64, i64* %buf_size.addr, align 8
  %add1511 = add nsw i64 0, %225
  %mul1512 = mul nsw i64 0, %add1511
  %add1513 = add nsw i64 %mul1512, 0
  br label %cond.end.1514

cond.end.1514:                                    ; preds = %cond.false.1510, %cond.true.1493
  %cond1515 = phi i64 [ %sub1509, %cond.true.1493 ], [ %add1513, %cond.false.1510 ]
  %div1516 = sdiv i64 %cond1515, 3
  %cmp1517 = icmp slt i64 %221, %div1516
  br i1 %cmp1517, label %cond.true.1556, label %lor.lhs.false.1542

cond.false.1519:                                  ; preds = %cond.false.1484
  %226 = load i64, i64* %buf_size.addr, align 8
  %add1520 = add nsw i64 0, %226
  %mul1521 = mul nsw i64 0, %add1520
  %sub1522 = sub nsw i64 %mul1521, 1
  %cmp1523 = icmp slt i64 %sub1522, 0
  br i1 %cmp1523, label %cond.true.1525, label %cond.false.1533

cond.true.1525:                                   ; preds = %cond.false.1519
  %227 = load i64, i64* %buf_size.addr, align 8
  %add1526 = add nsw i64 0, %227
  %mul1527 = mul nsw i64 0, %add1526
  %add1528 = add nsw i64 %mul1527, 1
  %shl1529 = shl i64 %add1528, 62
  %sub1530 = sub nsw i64 %shl1529, 1
  %mul1531 = mul nsw i64 %sub1530, 2
  %add1532 = add nsw i64 %mul1531, 1
  br label %cond.end.1537

cond.false.1533:                                  ; preds = %cond.false.1519
  %228 = load i64, i64* %buf_size.addr, align 8
  %add1534 = add nsw i64 0, %228
  %mul1535 = mul nsw i64 0, %add1534
  %sub1536 = sub nsw i64 %mul1535, 1
  br label %cond.end.1537

cond.end.1537:                                    ; preds = %cond.false.1533, %cond.true.1525
  %cond1538 = phi i64 [ %add1532, %cond.true.1525 ], [ %sub1536, %cond.false.1533 ]
  %div1539 = sdiv i64 %cond1538, 3
  %229 = load i64, i64* %buf_size.addr, align 8
  %cmp1540 = icmp slt i64 %div1539, %229
  br i1 %cmp1540, label %cond.true.1556, label %lor.lhs.false.1542

lor.lhs.false.1542:                               ; preds = %cond.end.1537, %cond.end.1514, %cond.true.1483, %cond.end.1477, %cond.true.1449, %cond.end.1443
  %230 = load i64, i64* %buf_size.addr, align 8
  %mul1543 = mul nsw i64 %230, 3
  %mul1544 = mul nsw i64 0, %mul1543
  %sub1545 = sub nsw i64 %mul1544, 1
  %cmp1546 = icmp slt i64 %sub1545, 0
  br i1 %cmp1546, label %land.lhs.true.1548, label %lor.lhs.false.1552

land.lhs.true.1548:                               ; preds = %lor.lhs.false.1542
  %231 = load i64, i64* %buf_size.addr, align 8
  %mul1549 = mul nsw i64 %231, 3
  %cmp1550 = icmp slt i64 %mul1549, -9223372036854775808
  br i1 %cmp1550, label %cond.true.1556, label %lor.lhs.false.1552

lor.lhs.false.1552:                               ; preds = %land.lhs.true.1548, %lor.lhs.false.1542
  %232 = load i64, i64* %buf_size.addr, align 8
  %mul1553 = mul nsw i64 %232, 3
  %cmp1554 = icmp slt i64 9223372036854775807, %mul1553
  br i1 %cmp1554, label %cond.true.1556, label %cond.false.1568

cond.true.1556:                                   ; preds = %lor.lhs.false.1552, %land.lhs.true.1548, %cond.end.1537, %cond.end.1514, %cond.true.1483, %cond.end.1477, %cond.true.1449, %cond.end.1443, %land.lhs.true.1418
  %233 = load i64, i64* %buf_size.addr, align 8
  %mul1557 = mul i64 %233, 3
  %cmp1558 = icmp ule i64 %mul1557, 9223372036854775807
  br i1 %cmp1558, label %cond.true.1560, label %cond.false.1562

cond.true.1560:                                   ; preds = %cond.true.1556
  %234 = load i64, i64* %buf_size.addr, align 8
  %mul1561 = mul i64 %234, 3
  br label %cond.end.1566

cond.false.1562:                                  ; preds = %cond.true.1556
  %235 = load i64, i64* %buf_size.addr, align 8
  %mul1563 = mul i64 %235, 3
  %sub1564 = sub i64 %mul1563, -9223372036854775808
  %add1565 = add nsw i64 %sub1564, -9223372036854775808
  br label %cond.end.1566

cond.end.1566:                                    ; preds = %cond.false.1562, %cond.true.1560
  %cond1567 = phi i64 [ %mul1561, %cond.true.1560 ], [ %add1565, %cond.false.1562 ]
  store i64 %cond1567, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.1568:                                  ; preds = %lor.lhs.false.1552
  %236 = load i64, i64* %buf_size.addr, align 8
  %mul1569 = mul i64 %236, 3
  %cmp1570 = icmp ule i64 %mul1569, 9223372036854775807
  br i1 %cmp1570, label %cond.true.1572, label %cond.false.1574

cond.true.1572:                                   ; preds = %cond.false.1568
  %237 = load i64, i64* %buf_size.addr, align 8
  %mul1573 = mul i64 %237, 3
  br label %cond.end.1578

cond.false.1574:                                  ; preds = %cond.false.1568
  %238 = load i64, i64* %buf_size.addr, align 8
  %mul1575 = mul i64 %238, 3
  %sub1576 = sub i64 %mul1575, -9223372036854775808
  %add1577 = add nsw i64 %sub1576, -9223372036854775808
  br label %cond.end.1578

cond.end.1578:                                    ; preds = %cond.false.1574, %cond.true.1572
  %cond1579 = phi i64 [ %mul1573, %cond.true.1572 ], [ %add1577, %cond.false.1574 ]
  store i64 %cond1579, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

cond.false.1580:                                  ; preds = %cond.true.1386
  %239 = load i64, i64* %buf_size.addr, align 8
  %add1581 = add nsw i64 0, %239
  %mul1582 = mul nsw i64 0, %add1581
  %sub1583 = sub nsw i64 %mul1582, 1
  %cmp1584 = icmp slt i64 %sub1583, 0
  br i1 %cmp1584, label %cond.true.1586, label %cond.false.1603

cond.true.1586:                                   ; preds = %cond.false.1580
  %240 = load i64, i64* %buf_size.addr, align 8
  %add1587 = add nsw i64 0, %240
  %mul1588 = mul nsw i64 0, %add1587
  %add1589 = add nsw i64 %mul1588, 0
  %neg1590 = xor i64 %add1589, -1
  %cmp1591 = icmp eq i64 %neg1590, -1
  %conv1592 = zext i1 %cmp1591 to i32
  %sub1593 = sub nsw i32 0, %conv1592
  %conv1594 = sext i32 %sub1593 to i64
  %241 = load i64, i64* %buf_size.addr, align 8
  %add1595 = add nsw i64 0, %241
  %mul1596 = mul nsw i64 0, %add1595
  %add1597 = add nsw i64 %mul1596, 1
  %shl1598 = shl i64 %add1597, 62
  %sub1599 = sub nsw i64 %shl1598, 1
  %mul1600 = mul nsw i64 %sub1599, 2
  %add1601 = add nsw i64 %mul1600, 1
  %sub1602 = sub nsw i64 %conv1594, %add1601
  br label %cond.end.1607

cond.false.1603:                                  ; preds = %cond.false.1580
  %242 = load i64, i64* %buf_size.addr, align 8
  %add1604 = add nsw i64 0, %242
  %mul1605 = mul nsw i64 0, %add1604
  %add1606 = add nsw i64 %mul1605, 0
  br label %cond.end.1607

cond.end.1607:                                    ; preds = %cond.false.1603, %cond.true.1586
  %cond1608 = phi i64 [ %sub1602, %cond.true.1586 ], [ %add1606, %cond.false.1603 ]
  %cmp1609 = icmp eq i64 %cond1608, 0
  br i1 %cmp1609, label %land.lhs.true.1611, label %lor.lhs.false.1614

land.lhs.true.1611:                               ; preds = %cond.end.1607
  %243 = load i64, i64* %buf_size.addr, align 8
  %cmp1612 = icmp slt i64 %243, 0
  br i1 %cmp1612, label %cond.true.1749, label %lor.lhs.false.1614

lor.lhs.false.1614:                               ; preds = %land.lhs.true.1611, %cond.end.1607
  br i1 false, label %cond.true.1615, label %cond.false.1675

cond.true.1615:                                   ; preds = %lor.lhs.false.1614
  %244 = load i64, i64* %buf_size.addr, align 8
  %cmp1616 = icmp slt i64 %244, 0
  br i1 %cmp1616, label %cond.true.1618, label %cond.false.1641

cond.true.1618:                                   ; preds = %cond.true.1615
  %245 = load i64, i64* %buf_size.addr, align 8
  %246 = load i64, i64* %buf_size.addr, align 8
  %add1619 = add nsw i64 0, %246
  %mul1620 = mul nsw i64 0, %add1619
  %sub1621 = sub nsw i64 %mul1620, 1
  %cmp1622 = icmp slt i64 %sub1621, 0
  br i1 %cmp1622, label %cond.true.1624, label %cond.false.1632

cond.true.1624:                                   ; preds = %cond.true.1618
  %247 = load i64, i64* %buf_size.addr, align 8
  %add1625 = add nsw i64 0, %247
  %mul1626 = mul nsw i64 0, %add1625
  %add1627 = add nsw i64 %mul1626, 1
  %shl1628 = shl i64 %add1627, 62
  %sub1629 = sub nsw i64 %shl1628, 1
  %mul1630 = mul nsw i64 %sub1629, 2
  %add1631 = add nsw i64 %mul1630, 1
  br label %cond.end.1636

cond.false.1632:                                  ; preds = %cond.true.1618
  %248 = load i64, i64* %buf_size.addr, align 8
  %add1633 = add nsw i64 0, %248
  %mul1634 = mul nsw i64 0, %add1633
  %sub1635 = sub nsw i64 %mul1634, 1
  br label %cond.end.1636

cond.end.1636:                                    ; preds = %cond.false.1632, %cond.true.1624
  %cond1637 = phi i64 [ %add1631, %cond.true.1624 ], [ %sub1635, %cond.false.1632 ]
  %div1638 = sdiv i64 %cond1637, 3
  %cmp1639 = icmp slt i64 %245, %div1638
  br i1 %cmp1639, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1641:                                  ; preds = %cond.true.1615
  br i1 false, label %cond.true.1642, label %cond.false.1643

cond.true.1642:                                   ; preds = %cond.false.1641
  br i1 false, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1643:                                  ; preds = %cond.false.1641
  %249 = load i64, i64* %buf_size.addr, align 8
  %add1644 = add nsw i64 0, %249
  %mul1645 = mul nsw i64 0, %add1644
  %sub1646 = sub nsw i64 %mul1645, 1
  %cmp1647 = icmp slt i64 %sub1646, 0
  br i1 %cmp1647, label %cond.true.1649, label %cond.false.1666

cond.true.1649:                                   ; preds = %cond.false.1643
  %250 = load i64, i64* %buf_size.addr, align 8
  %add1650 = add nsw i64 0, %250
  %mul1651 = mul nsw i64 0, %add1650
  %add1652 = add nsw i64 %mul1651, 0
  %neg1653 = xor i64 %add1652, -1
  %cmp1654 = icmp eq i64 %neg1653, -1
  %conv1655 = zext i1 %cmp1654 to i32
  %sub1656 = sub nsw i32 0, %conv1655
  %conv1657 = sext i32 %sub1656 to i64
  %251 = load i64, i64* %buf_size.addr, align 8
  %add1658 = add nsw i64 0, %251
  %mul1659 = mul nsw i64 0, %add1658
  %add1660 = add nsw i64 %mul1659, 1
  %shl1661 = shl i64 %add1660, 62
  %sub1662 = sub nsw i64 %shl1661, 1
  %mul1663 = mul nsw i64 %sub1662, 2
  %add1664 = add nsw i64 %mul1663, 1
  %sub1665 = sub nsw i64 %conv1657, %add1664
  br label %cond.end.1670

cond.false.1666:                                  ; preds = %cond.false.1643
  %252 = load i64, i64* %buf_size.addr, align 8
  %add1667 = add nsw i64 0, %252
  %mul1668 = mul nsw i64 0, %add1667
  %add1669 = add nsw i64 %mul1668, 0
  br label %cond.end.1670

cond.end.1670:                                    ; preds = %cond.false.1666, %cond.true.1649
  %cond1671 = phi i64 [ %sub1665, %cond.true.1649 ], [ %add1669, %cond.false.1666 ]
  %div1672 = sdiv i64 %cond1671, 3
  %253 = load i64, i64* %buf_size.addr, align 8
  %cmp1673 = icmp slt i64 %div1672, %253
  br i1 %cmp1673, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1675:                                  ; preds = %lor.lhs.false.1614
  br i1 false, label %cond.true.1676, label %cond.false.1677

cond.true.1676:                                   ; preds = %cond.false.1675
  br i1 false, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1677:                                  ; preds = %cond.false.1675
  %254 = load i64, i64* %buf_size.addr, align 8
  %cmp1678 = icmp slt i64 %254, 0
  br i1 %cmp1678, label %cond.true.1680, label %cond.false.1712

cond.true.1680:                                   ; preds = %cond.false.1677
  %255 = load i64, i64* %buf_size.addr, align 8
  %256 = load i64, i64* %buf_size.addr, align 8
  %add1681 = add nsw i64 0, %256
  %mul1682 = mul nsw i64 0, %add1681
  %sub1683 = sub nsw i64 %mul1682, 1
  %cmp1684 = icmp slt i64 %sub1683, 0
  br i1 %cmp1684, label %cond.true.1686, label %cond.false.1703

cond.true.1686:                                   ; preds = %cond.true.1680
  %257 = load i64, i64* %buf_size.addr, align 8
  %add1687 = add nsw i64 0, %257
  %mul1688 = mul nsw i64 0, %add1687
  %add1689 = add nsw i64 %mul1688, 0
  %neg1690 = xor i64 %add1689, -1
  %cmp1691 = icmp eq i64 %neg1690, -1
  %conv1692 = zext i1 %cmp1691 to i32
  %sub1693 = sub nsw i32 0, %conv1692
  %conv1694 = sext i32 %sub1693 to i64
  %258 = load i64, i64* %buf_size.addr, align 8
  %add1695 = add nsw i64 0, %258
  %mul1696 = mul nsw i64 0, %add1695
  %add1697 = add nsw i64 %mul1696, 1
  %shl1698 = shl i64 %add1697, 62
  %sub1699 = sub nsw i64 %shl1698, 1
  %mul1700 = mul nsw i64 %sub1699, 2
  %add1701 = add nsw i64 %mul1700, 1
  %sub1702 = sub nsw i64 %conv1694, %add1701
  br label %cond.end.1707

cond.false.1703:                                  ; preds = %cond.true.1680
  %259 = load i64, i64* %buf_size.addr, align 8
  %add1704 = add nsw i64 0, %259
  %mul1705 = mul nsw i64 0, %add1704
  %add1706 = add nsw i64 %mul1705, 0
  br label %cond.end.1707

cond.end.1707:                                    ; preds = %cond.false.1703, %cond.true.1686
  %cond1708 = phi i64 [ %sub1702, %cond.true.1686 ], [ %add1706, %cond.false.1703 ]
  %div1709 = sdiv i64 %cond1708, 3
  %cmp1710 = icmp slt i64 %255, %div1709
  br i1 %cmp1710, label %cond.true.1749, label %lor.lhs.false.1735

cond.false.1712:                                  ; preds = %cond.false.1677
  %260 = load i64, i64* %buf_size.addr, align 8
  %add1713 = add nsw i64 0, %260
  %mul1714 = mul nsw i64 0, %add1713
  %sub1715 = sub nsw i64 %mul1714, 1
  %cmp1716 = icmp slt i64 %sub1715, 0
  br i1 %cmp1716, label %cond.true.1718, label %cond.false.1726

cond.true.1718:                                   ; preds = %cond.false.1712
  %261 = load i64, i64* %buf_size.addr, align 8
  %add1719 = add nsw i64 0, %261
  %mul1720 = mul nsw i64 0, %add1719
  %add1721 = add nsw i64 %mul1720, 1
  %shl1722 = shl i64 %add1721, 62
  %sub1723 = sub nsw i64 %shl1722, 1
  %mul1724 = mul nsw i64 %sub1723, 2
  %add1725 = add nsw i64 %mul1724, 1
  br label %cond.end.1730

cond.false.1726:                                  ; preds = %cond.false.1712
  %262 = load i64, i64* %buf_size.addr, align 8
  %add1727 = add nsw i64 0, %262
  %mul1728 = mul nsw i64 0, %add1727
  %sub1729 = sub nsw i64 %mul1728, 1
  br label %cond.end.1730

cond.end.1730:                                    ; preds = %cond.false.1726, %cond.true.1718
  %cond1731 = phi i64 [ %add1725, %cond.true.1718 ], [ %sub1729, %cond.false.1726 ]
  %div1732 = sdiv i64 %cond1731, 3
  %263 = load i64, i64* %buf_size.addr, align 8
  %cmp1733 = icmp slt i64 %div1732, %263
  br i1 %cmp1733, label %cond.true.1749, label %lor.lhs.false.1735

lor.lhs.false.1735:                               ; preds = %cond.end.1730, %cond.end.1707, %cond.true.1676, %cond.end.1670, %cond.true.1642, %cond.end.1636
  %264 = load i64, i64* %buf_size.addr, align 8
  %mul1736 = mul nsw i64 %264, 3
  %mul1737 = mul nsw i64 0, %mul1736
  %sub1738 = sub nsw i64 %mul1737, 1
  %cmp1739 = icmp slt i64 %sub1738, 0
  br i1 %cmp1739, label %land.lhs.true.1741, label %lor.lhs.false.1745

land.lhs.true.1741:                               ; preds = %lor.lhs.false.1735
  %265 = load i64, i64* %buf_size.addr, align 8
  %mul1742 = mul nsw i64 %265, 3
  %cmp1743 = icmp slt i64 %mul1742, -9223372036854775808
  br i1 %cmp1743, label %cond.true.1749, label %lor.lhs.false.1745

lor.lhs.false.1745:                               ; preds = %land.lhs.true.1741, %lor.lhs.false.1735
  %266 = load i64, i64* %buf_size.addr, align 8
  %mul1746 = mul nsw i64 %266, 3
  %cmp1747 = icmp slt i64 9223372036854775807, %mul1746
  br i1 %cmp1747, label %cond.true.1749, label %cond.false.1761

cond.true.1749:                                   ; preds = %lor.lhs.false.1745, %land.lhs.true.1741, %cond.end.1730, %cond.end.1707, %cond.true.1676, %cond.end.1670, %cond.true.1642, %cond.end.1636, %land.lhs.true.1611
  %267 = load i64, i64* %buf_size.addr, align 8
  %mul1750 = mul i64 %267, 3
  %cmp1751 = icmp ule i64 %mul1750, 9223372036854775807
  br i1 %cmp1751, label %cond.true.1753, label %cond.false.1755

cond.true.1753:                                   ; preds = %cond.true.1749
  %268 = load i64, i64* %buf_size.addr, align 8
  %mul1754 = mul i64 %268, 3
  br label %cond.end.1759

cond.false.1755:                                  ; preds = %cond.true.1749
  %269 = load i64, i64* %buf_size.addr, align 8
  %mul1756 = mul i64 %269, 3
  %sub1757 = sub i64 %mul1756, -9223372036854775808
  %add1758 = add nsw i64 %sub1757, -9223372036854775808
  br label %cond.end.1759

cond.end.1759:                                    ; preds = %cond.false.1755, %cond.true.1753
  %cond1760 = phi i64 [ %mul1754, %cond.true.1753 ], [ %add1758, %cond.false.1755 ]
  store i64 %cond1760, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.1761:                                  ; preds = %lor.lhs.false.1745
  %270 = load i64, i64* %buf_size.addr, align 8
  %mul1762 = mul i64 %270, 3
  %cmp1763 = icmp ule i64 %mul1762, 9223372036854775807
  br i1 %cmp1763, label %cond.true.1765, label %cond.false.1767

cond.true.1765:                                   ; preds = %cond.false.1761
  %271 = load i64, i64* %buf_size.addr, align 8
  %mul1766 = mul i64 %271, 3
  br label %cond.end.1771

cond.false.1767:                                  ; preds = %cond.false.1761
  %272 = load i64, i64* %buf_size.addr, align 8
  %mul1768 = mul i64 %272, 3
  %sub1769 = sub i64 %mul1768, -9223372036854775808
  %add1770 = add nsw i64 %sub1769, -9223372036854775808
  br label %cond.end.1771

cond.end.1771:                                    ; preds = %cond.false.1767, %cond.true.1765
  %cond1772 = phi i64 [ %mul1766, %cond.true.1765 ], [ %add1770, %cond.false.1767 ]
  store i64 %cond1772, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

cond.false.1773:                                  ; preds = %cond.false.1385
  br i1 false, label %cond.true.1774, label %cond.false.1967

cond.true.1774:                                   ; preds = %cond.false.1773
  %273 = load i64, i64* %buf_size.addr, align 8
  %add1775 = add nsw i64 0, %273
  %mul1776 = mul nsw i64 0, %add1775
  %sub1777 = sub nsw i64 %mul1776, 1
  %cmp1778 = icmp slt i64 %sub1777, 0
  br i1 %cmp1778, label %cond.true.1780, label %cond.false.1797

cond.true.1780:                                   ; preds = %cond.true.1774
  %274 = load i64, i64* %buf_size.addr, align 8
  %add1781 = add nsw i64 0, %274
  %mul1782 = mul nsw i64 0, %add1781
  %add1783 = add nsw i64 %mul1782, 0
  %neg1784 = xor i64 %add1783, -1
  %cmp1785 = icmp eq i64 %neg1784, -1
  %conv1786 = zext i1 %cmp1785 to i32
  %sub1787 = sub nsw i32 0, %conv1786
  %conv1788 = sext i32 %sub1787 to i64
  %275 = load i64, i64* %buf_size.addr, align 8
  %add1789 = add nsw i64 0, %275
  %mul1790 = mul nsw i64 0, %add1789
  %add1791 = add nsw i64 %mul1790, 1
  %shl1792 = shl i64 %add1791, 62
  %sub1793 = sub nsw i64 %shl1792, 1
  %mul1794 = mul nsw i64 %sub1793, 2
  %add1795 = add nsw i64 %mul1794, 1
  %sub1796 = sub nsw i64 %conv1788, %add1795
  br label %cond.end.1801

cond.false.1797:                                  ; preds = %cond.true.1774
  %276 = load i64, i64* %buf_size.addr, align 8
  %add1798 = add nsw i64 0, %276
  %mul1799 = mul nsw i64 0, %add1798
  %add1800 = add nsw i64 %mul1799, 0
  br label %cond.end.1801

cond.end.1801:                                    ; preds = %cond.false.1797, %cond.true.1780
  %cond1802 = phi i64 [ %sub1796, %cond.true.1780 ], [ %add1800, %cond.false.1797 ]
  %cmp1803 = icmp eq i64 %cond1802, 0
  br i1 %cmp1803, label %land.lhs.true.1805, label %lor.lhs.false.1808

land.lhs.true.1805:                               ; preds = %cond.end.1801
  %277 = load i64, i64* %buf_size.addr, align 8
  %cmp1806 = icmp slt i64 %277, 0
  br i1 %cmp1806, label %cond.true.1943, label %lor.lhs.false.1808

lor.lhs.false.1808:                               ; preds = %land.lhs.true.1805, %cond.end.1801
  br i1 false, label %cond.true.1809, label %cond.false.1869

cond.true.1809:                                   ; preds = %lor.lhs.false.1808
  %278 = load i64, i64* %buf_size.addr, align 8
  %cmp1810 = icmp slt i64 %278, 0
  br i1 %cmp1810, label %cond.true.1812, label %cond.false.1835

cond.true.1812:                                   ; preds = %cond.true.1809
  %279 = load i64, i64* %buf_size.addr, align 8
  %280 = load i64, i64* %buf_size.addr, align 8
  %add1813 = add nsw i64 0, %280
  %mul1814 = mul nsw i64 0, %add1813
  %sub1815 = sub nsw i64 %mul1814, 1
  %cmp1816 = icmp slt i64 %sub1815, 0
  br i1 %cmp1816, label %cond.true.1818, label %cond.false.1826

cond.true.1818:                                   ; preds = %cond.true.1812
  %281 = load i64, i64* %buf_size.addr, align 8
  %add1819 = add nsw i64 0, %281
  %mul1820 = mul nsw i64 0, %add1819
  %add1821 = add nsw i64 %mul1820, 1
  %shl1822 = shl i64 %add1821, 62
  %sub1823 = sub nsw i64 %shl1822, 1
  %mul1824 = mul nsw i64 %sub1823, 2
  %add1825 = add nsw i64 %mul1824, 1
  br label %cond.end.1830

cond.false.1826:                                  ; preds = %cond.true.1812
  %282 = load i64, i64* %buf_size.addr, align 8
  %add1827 = add nsw i64 0, %282
  %mul1828 = mul nsw i64 0, %add1827
  %sub1829 = sub nsw i64 %mul1828, 1
  br label %cond.end.1830

cond.end.1830:                                    ; preds = %cond.false.1826, %cond.true.1818
  %cond1831 = phi i64 [ %add1825, %cond.true.1818 ], [ %sub1829, %cond.false.1826 ]
  %div1832 = sdiv i64 %cond1831, 3
  %cmp1833 = icmp slt i64 %279, %div1832
  br i1 %cmp1833, label %cond.true.1943, label %lor.lhs.false.1929

cond.false.1835:                                  ; preds = %cond.true.1809
  br i1 false, label %cond.true.1836, label %cond.false.1837

cond.true.1836:                                   ; preds = %cond.false.1835
  br i1 false, label %cond.true.1943, label %lor.lhs.false.1929

cond.false.1837:                                  ; preds = %cond.false.1835
  %283 = load i64, i64* %buf_size.addr, align 8
  %add1838 = add nsw i64 0, %283
  %mul1839 = mul nsw i64 0, %add1838
  %sub1840 = sub nsw i64 %mul1839, 1
  %cmp1841 = icmp slt i64 %sub1840, 0
  br i1 %cmp1841, label %cond.true.1843, label %cond.false.1860

cond.true.1843:                                   ; preds = %cond.false.1837
  %284 = load i64, i64* %buf_size.addr, align 8
  %add1844 = add nsw i64 0, %284
  %mul1845 = mul nsw i64 0, %add1844
  %add1846 = add nsw i64 %mul1845, 0
  %neg1847 = xor i64 %add1846, -1
  %cmp1848 = icmp eq i64 %neg1847, -1
  %conv1849 = zext i1 %cmp1848 to i32
  %sub1850 = sub nsw i32 0, %conv1849
  %conv1851 = sext i32 %sub1850 to i64
  %285 = load i64, i64* %buf_size.addr, align 8
  %add1852 = add nsw i64 0, %285
  %mul1853 = mul nsw i64 0, %add1852
  %add1854 = add nsw i64 %mul1853, 1
  %shl1855 = shl i64 %add1854, 62
  %sub1856 = sub nsw i64 %shl1855, 1
  %mul1857 = mul nsw i64 %sub1856, 2
  %add1858 = add nsw i64 %mul1857, 1
  %sub1859 = sub nsw i64 %conv1851, %add1858
  br label %cond.end.1864

cond.false.1860:                                  ; preds = %cond.false.1837
  %286 = load i64, i64* %buf_size.addr, align 8
  %add1861 = add nsw i64 0, %286
  %mul1862 = mul nsw i64 0, %add1861
  %add1863 = add nsw i64 %mul1862, 0
  br label %cond.end.1864

cond.end.1864:                                    ; preds = %cond.false.1860, %cond.true.1843
  %cond1865 = phi i64 [ %sub1859, %cond.true.1843 ], [ %add1863, %cond.false.1860 ]
  %div1866 = sdiv i64 %cond1865, 3
  %287 = load i64, i64* %buf_size.addr, align 8
  %cmp1867 = icmp slt i64 %div1866, %287
  br i1 %cmp1867, label %cond.true.1943, label %lor.lhs.false.1929

cond.false.1869:                                  ; preds = %lor.lhs.false.1808
  br i1 false, label %cond.true.1870, label %cond.false.1871

cond.true.1870:                                   ; preds = %cond.false.1869
  br i1 false, label %cond.true.1943, label %lor.lhs.false.1929

cond.false.1871:                                  ; preds = %cond.false.1869
  %288 = load i64, i64* %buf_size.addr, align 8
  %cmp1872 = icmp slt i64 %288, 0
  br i1 %cmp1872, label %cond.true.1874, label %cond.false.1906

cond.true.1874:                                   ; preds = %cond.false.1871
  %289 = load i64, i64* %buf_size.addr, align 8
  %290 = load i64, i64* %buf_size.addr, align 8
  %add1875 = add nsw i64 0, %290
  %mul1876 = mul nsw i64 0, %add1875
  %sub1877 = sub nsw i64 %mul1876, 1
  %cmp1878 = icmp slt i64 %sub1877, 0
  br i1 %cmp1878, label %cond.true.1880, label %cond.false.1897

cond.true.1880:                                   ; preds = %cond.true.1874
  %291 = load i64, i64* %buf_size.addr, align 8
  %add1881 = add nsw i64 0, %291
  %mul1882 = mul nsw i64 0, %add1881
  %add1883 = add nsw i64 %mul1882, 0
  %neg1884 = xor i64 %add1883, -1
  %cmp1885 = icmp eq i64 %neg1884, -1
  %conv1886 = zext i1 %cmp1885 to i32
  %sub1887 = sub nsw i32 0, %conv1886
  %conv1888 = sext i32 %sub1887 to i64
  %292 = load i64, i64* %buf_size.addr, align 8
  %add1889 = add nsw i64 0, %292
  %mul1890 = mul nsw i64 0, %add1889
  %add1891 = add nsw i64 %mul1890, 1
  %shl1892 = shl i64 %add1891, 62
  %sub1893 = sub nsw i64 %shl1892, 1
  %mul1894 = mul nsw i64 %sub1893, 2
  %add1895 = add nsw i64 %mul1894, 1
  %sub1896 = sub nsw i64 %conv1888, %add1895
  br label %cond.end.1901

cond.false.1897:                                  ; preds = %cond.true.1874
  %293 = load i64, i64* %buf_size.addr, align 8
  %add1898 = add nsw i64 0, %293
  %mul1899 = mul nsw i64 0, %add1898
  %add1900 = add nsw i64 %mul1899, 0
  br label %cond.end.1901

cond.end.1901:                                    ; preds = %cond.false.1897, %cond.true.1880
  %cond1902 = phi i64 [ %sub1896, %cond.true.1880 ], [ %add1900, %cond.false.1897 ]
  %div1903 = sdiv i64 %cond1902, 3
  %cmp1904 = icmp slt i64 %289, %div1903
  br i1 %cmp1904, label %cond.true.1943, label %lor.lhs.false.1929

cond.false.1906:                                  ; preds = %cond.false.1871
  %294 = load i64, i64* %buf_size.addr, align 8
  %add1907 = add nsw i64 0, %294
  %mul1908 = mul nsw i64 0, %add1907
  %sub1909 = sub nsw i64 %mul1908, 1
  %cmp1910 = icmp slt i64 %sub1909, 0
  br i1 %cmp1910, label %cond.true.1912, label %cond.false.1920

cond.true.1912:                                   ; preds = %cond.false.1906
  %295 = load i64, i64* %buf_size.addr, align 8
  %add1913 = add nsw i64 0, %295
  %mul1914 = mul nsw i64 0, %add1913
  %add1915 = add nsw i64 %mul1914, 1
  %shl1916 = shl i64 %add1915, 62
  %sub1917 = sub nsw i64 %shl1916, 1
  %mul1918 = mul nsw i64 %sub1917, 2
  %add1919 = add nsw i64 %mul1918, 1
  br label %cond.end.1924

cond.false.1920:                                  ; preds = %cond.false.1906
  %296 = load i64, i64* %buf_size.addr, align 8
  %add1921 = add nsw i64 0, %296
  %mul1922 = mul nsw i64 0, %add1921
  %sub1923 = sub nsw i64 %mul1922, 1
  br label %cond.end.1924

cond.end.1924:                                    ; preds = %cond.false.1920, %cond.true.1912
  %cond1925 = phi i64 [ %add1919, %cond.true.1912 ], [ %sub1923, %cond.false.1920 ]
  %div1926 = sdiv i64 %cond1925, 3
  %297 = load i64, i64* %buf_size.addr, align 8
  %cmp1927 = icmp slt i64 %div1926, %297
  br i1 %cmp1927, label %cond.true.1943, label %lor.lhs.false.1929

lor.lhs.false.1929:                               ; preds = %cond.end.1924, %cond.end.1901, %cond.true.1870, %cond.end.1864, %cond.true.1836, %cond.end.1830
  %298 = load i64, i64* %buf_size.addr, align 8
  %mul1930 = mul nsw i64 %298, 3
  %mul1931 = mul nsw i64 0, %mul1930
  %sub1932 = sub nsw i64 %mul1931, 1
  %cmp1933 = icmp slt i64 %sub1932, 0
  br i1 %cmp1933, label %land.lhs.true.1935, label %lor.lhs.false.1939

land.lhs.true.1935:                               ; preds = %lor.lhs.false.1929
  %299 = load i64, i64* %buf_size.addr, align 8
  %mul1936 = mul nsw i64 %299, 3
  %cmp1937 = icmp slt i64 %mul1936, -9223372036854775808
  br i1 %cmp1937, label %cond.true.1943, label %lor.lhs.false.1939

lor.lhs.false.1939:                               ; preds = %land.lhs.true.1935, %lor.lhs.false.1929
  %300 = load i64, i64* %buf_size.addr, align 8
  %mul1940 = mul nsw i64 %300, 3
  %cmp1941 = icmp slt i64 9223372036854775807, %mul1940
  br i1 %cmp1941, label %cond.true.1943, label %cond.false.1955

cond.true.1943:                                   ; preds = %lor.lhs.false.1939, %land.lhs.true.1935, %cond.end.1924, %cond.end.1901, %cond.true.1870, %cond.end.1864, %cond.true.1836, %cond.end.1830, %land.lhs.true.1805
  %301 = load i64, i64* %buf_size.addr, align 8
  %mul1944 = mul i64 %301, 3
  %cmp1945 = icmp ule i64 %mul1944, 9223372036854775807
  br i1 %cmp1945, label %cond.true.1947, label %cond.false.1949

cond.true.1947:                                   ; preds = %cond.true.1943
  %302 = load i64, i64* %buf_size.addr, align 8
  %mul1948 = mul i64 %302, 3
  br label %cond.end.1953

cond.false.1949:                                  ; preds = %cond.true.1943
  %303 = load i64, i64* %buf_size.addr, align 8
  %mul1950 = mul i64 %303, 3
  %sub1951 = sub i64 %mul1950, -9223372036854775808
  %add1952 = add nsw i64 %sub1951, -9223372036854775808
  br label %cond.end.1953

cond.end.1953:                                    ; preds = %cond.false.1949, %cond.true.1947
  %cond1954 = phi i64 [ %mul1948, %cond.true.1947 ], [ %add1952, %cond.false.1949 ]
  store i64 %cond1954, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.1955:                                  ; preds = %lor.lhs.false.1939
  %304 = load i64, i64* %buf_size.addr, align 8
  %mul1956 = mul i64 %304, 3
  %cmp1957 = icmp ule i64 %mul1956, 9223372036854775807
  br i1 %cmp1957, label %cond.true.1959, label %cond.false.1961

cond.true.1959:                                   ; preds = %cond.false.1955
  %305 = load i64, i64* %buf_size.addr, align 8
  %mul1960 = mul i64 %305, 3
  br label %cond.end.1965

cond.false.1961:                                  ; preds = %cond.false.1955
  %306 = load i64, i64* %buf_size.addr, align 8
  %mul1962 = mul i64 %306, 3
  %sub1963 = sub i64 %mul1962, -9223372036854775808
  %add1964 = add nsw i64 %sub1963, -9223372036854775808
  br label %cond.end.1965

cond.end.1965:                                    ; preds = %cond.false.1961, %cond.true.1959
  %cond1966 = phi i64 [ %mul1960, %cond.true.1959 ], [ %add1964, %cond.false.1961 ]
  store i64 %cond1966, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

cond.false.1967:                                  ; preds = %cond.false.1773
  %307 = load i64, i64* %buf_size.addr, align 8
  %add1968 = add nsw i64 0, %307
  %mul1969 = mul nsw i64 0, %add1968
  %sub1970 = sub nsw i64 %mul1969, 1
  %cmp1971 = icmp slt i64 %sub1970, 0
  br i1 %cmp1971, label %cond.true.1973, label %cond.false.1990

cond.true.1973:                                   ; preds = %cond.false.1967
  %308 = load i64, i64* %buf_size.addr, align 8
  %add1974 = add nsw i64 0, %308
  %mul1975 = mul nsw i64 0, %add1974
  %add1976 = add nsw i64 %mul1975, 0
  %neg1977 = xor i64 %add1976, -1
  %cmp1978 = icmp eq i64 %neg1977, -1
  %conv1979 = zext i1 %cmp1978 to i32
  %sub1980 = sub nsw i32 0, %conv1979
  %conv1981 = sext i32 %sub1980 to i64
  %309 = load i64, i64* %buf_size.addr, align 8
  %add1982 = add nsw i64 0, %309
  %mul1983 = mul nsw i64 0, %add1982
  %add1984 = add nsw i64 %mul1983, 1
  %shl1985 = shl i64 %add1984, 62
  %sub1986 = sub nsw i64 %shl1985, 1
  %mul1987 = mul nsw i64 %sub1986, 2
  %add1988 = add nsw i64 %mul1987, 1
  %sub1989 = sub nsw i64 %conv1981, %add1988
  br label %cond.end.1994

cond.false.1990:                                  ; preds = %cond.false.1967
  %310 = load i64, i64* %buf_size.addr, align 8
  %add1991 = add nsw i64 0, %310
  %mul1992 = mul nsw i64 0, %add1991
  %add1993 = add nsw i64 %mul1992, 0
  br label %cond.end.1994

cond.end.1994:                                    ; preds = %cond.false.1990, %cond.true.1973
  %cond1995 = phi i64 [ %sub1989, %cond.true.1973 ], [ %add1993, %cond.false.1990 ]
  %cmp1996 = icmp eq i64 %cond1995, 0
  br i1 %cmp1996, label %land.lhs.true.1998, label %lor.lhs.false.2001

land.lhs.true.1998:                               ; preds = %cond.end.1994
  %311 = load i64, i64* %buf_size.addr, align 8
  %cmp1999 = icmp slt i64 %311, 0
  br i1 %cmp1999, label %cond.true.2136, label %lor.lhs.false.2001

lor.lhs.false.2001:                               ; preds = %land.lhs.true.1998, %cond.end.1994
  br i1 false, label %cond.true.2002, label %cond.false.2062

cond.true.2002:                                   ; preds = %lor.lhs.false.2001
  %312 = load i64, i64* %buf_size.addr, align 8
  %cmp2003 = icmp slt i64 %312, 0
  br i1 %cmp2003, label %cond.true.2005, label %cond.false.2028

cond.true.2005:                                   ; preds = %cond.true.2002
  %313 = load i64, i64* %buf_size.addr, align 8
  %314 = load i64, i64* %buf_size.addr, align 8
  %add2006 = add nsw i64 0, %314
  %mul2007 = mul nsw i64 0, %add2006
  %sub2008 = sub nsw i64 %mul2007, 1
  %cmp2009 = icmp slt i64 %sub2008, 0
  br i1 %cmp2009, label %cond.true.2011, label %cond.false.2019

cond.true.2011:                                   ; preds = %cond.true.2005
  %315 = load i64, i64* %buf_size.addr, align 8
  %add2012 = add nsw i64 0, %315
  %mul2013 = mul nsw i64 0, %add2012
  %add2014 = add nsw i64 %mul2013, 1
  %shl2015 = shl i64 %add2014, 62
  %sub2016 = sub nsw i64 %shl2015, 1
  %mul2017 = mul nsw i64 %sub2016, 2
  %add2018 = add nsw i64 %mul2017, 1
  br label %cond.end.2023

cond.false.2019:                                  ; preds = %cond.true.2005
  %316 = load i64, i64* %buf_size.addr, align 8
  %add2020 = add nsw i64 0, %316
  %mul2021 = mul nsw i64 0, %add2020
  %sub2022 = sub nsw i64 %mul2021, 1
  br label %cond.end.2023

cond.end.2023:                                    ; preds = %cond.false.2019, %cond.true.2011
  %cond2024 = phi i64 [ %add2018, %cond.true.2011 ], [ %sub2022, %cond.false.2019 ]
  %div2025 = sdiv i64 %cond2024, 3
  %cmp2026 = icmp slt i64 %313, %div2025
  br i1 %cmp2026, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2028:                                  ; preds = %cond.true.2002
  br i1 false, label %cond.true.2029, label %cond.false.2030

cond.true.2029:                                   ; preds = %cond.false.2028
  br i1 false, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2030:                                  ; preds = %cond.false.2028
  %317 = load i64, i64* %buf_size.addr, align 8
  %add2031 = add nsw i64 0, %317
  %mul2032 = mul nsw i64 0, %add2031
  %sub2033 = sub nsw i64 %mul2032, 1
  %cmp2034 = icmp slt i64 %sub2033, 0
  br i1 %cmp2034, label %cond.true.2036, label %cond.false.2053

cond.true.2036:                                   ; preds = %cond.false.2030
  %318 = load i64, i64* %buf_size.addr, align 8
  %add2037 = add nsw i64 0, %318
  %mul2038 = mul nsw i64 0, %add2037
  %add2039 = add nsw i64 %mul2038, 0
  %neg2040 = xor i64 %add2039, -1
  %cmp2041 = icmp eq i64 %neg2040, -1
  %conv2042 = zext i1 %cmp2041 to i32
  %sub2043 = sub nsw i32 0, %conv2042
  %conv2044 = sext i32 %sub2043 to i64
  %319 = load i64, i64* %buf_size.addr, align 8
  %add2045 = add nsw i64 0, %319
  %mul2046 = mul nsw i64 0, %add2045
  %add2047 = add nsw i64 %mul2046, 1
  %shl2048 = shl i64 %add2047, 62
  %sub2049 = sub nsw i64 %shl2048, 1
  %mul2050 = mul nsw i64 %sub2049, 2
  %add2051 = add nsw i64 %mul2050, 1
  %sub2052 = sub nsw i64 %conv2044, %add2051
  br label %cond.end.2057

cond.false.2053:                                  ; preds = %cond.false.2030
  %320 = load i64, i64* %buf_size.addr, align 8
  %add2054 = add nsw i64 0, %320
  %mul2055 = mul nsw i64 0, %add2054
  %add2056 = add nsw i64 %mul2055, 0
  br label %cond.end.2057

cond.end.2057:                                    ; preds = %cond.false.2053, %cond.true.2036
  %cond2058 = phi i64 [ %sub2052, %cond.true.2036 ], [ %add2056, %cond.false.2053 ]
  %div2059 = sdiv i64 %cond2058, 3
  %321 = load i64, i64* %buf_size.addr, align 8
  %cmp2060 = icmp slt i64 %div2059, %321
  br i1 %cmp2060, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2062:                                  ; preds = %lor.lhs.false.2001
  br i1 false, label %cond.true.2063, label %cond.false.2064

cond.true.2063:                                   ; preds = %cond.false.2062
  br i1 false, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2064:                                  ; preds = %cond.false.2062
  %322 = load i64, i64* %buf_size.addr, align 8
  %cmp2065 = icmp slt i64 %322, 0
  br i1 %cmp2065, label %cond.true.2067, label %cond.false.2099

cond.true.2067:                                   ; preds = %cond.false.2064
  %323 = load i64, i64* %buf_size.addr, align 8
  %324 = load i64, i64* %buf_size.addr, align 8
  %add2068 = add nsw i64 0, %324
  %mul2069 = mul nsw i64 0, %add2068
  %sub2070 = sub nsw i64 %mul2069, 1
  %cmp2071 = icmp slt i64 %sub2070, 0
  br i1 %cmp2071, label %cond.true.2073, label %cond.false.2090

cond.true.2073:                                   ; preds = %cond.true.2067
  %325 = load i64, i64* %buf_size.addr, align 8
  %add2074 = add nsw i64 0, %325
  %mul2075 = mul nsw i64 0, %add2074
  %add2076 = add nsw i64 %mul2075, 0
  %neg2077 = xor i64 %add2076, -1
  %cmp2078 = icmp eq i64 %neg2077, -1
  %conv2079 = zext i1 %cmp2078 to i32
  %sub2080 = sub nsw i32 0, %conv2079
  %conv2081 = sext i32 %sub2080 to i64
  %326 = load i64, i64* %buf_size.addr, align 8
  %add2082 = add nsw i64 0, %326
  %mul2083 = mul nsw i64 0, %add2082
  %add2084 = add nsw i64 %mul2083, 1
  %shl2085 = shl i64 %add2084, 62
  %sub2086 = sub nsw i64 %shl2085, 1
  %mul2087 = mul nsw i64 %sub2086, 2
  %add2088 = add nsw i64 %mul2087, 1
  %sub2089 = sub nsw i64 %conv2081, %add2088
  br label %cond.end.2094

cond.false.2090:                                  ; preds = %cond.true.2067
  %327 = load i64, i64* %buf_size.addr, align 8
  %add2091 = add nsw i64 0, %327
  %mul2092 = mul nsw i64 0, %add2091
  %add2093 = add nsw i64 %mul2092, 0
  br label %cond.end.2094

cond.end.2094:                                    ; preds = %cond.false.2090, %cond.true.2073
  %cond2095 = phi i64 [ %sub2089, %cond.true.2073 ], [ %add2093, %cond.false.2090 ]
  %div2096 = sdiv i64 %cond2095, 3
  %cmp2097 = icmp slt i64 %323, %div2096
  br i1 %cmp2097, label %cond.true.2136, label %lor.lhs.false.2122

cond.false.2099:                                  ; preds = %cond.false.2064
  %328 = load i64, i64* %buf_size.addr, align 8
  %add2100 = add nsw i64 0, %328
  %mul2101 = mul nsw i64 0, %add2100
  %sub2102 = sub nsw i64 %mul2101, 1
  %cmp2103 = icmp slt i64 %sub2102, 0
  br i1 %cmp2103, label %cond.true.2105, label %cond.false.2113

cond.true.2105:                                   ; preds = %cond.false.2099
  %329 = load i64, i64* %buf_size.addr, align 8
  %add2106 = add nsw i64 0, %329
  %mul2107 = mul nsw i64 0, %add2106
  %add2108 = add nsw i64 %mul2107, 1
  %shl2109 = shl i64 %add2108, 62
  %sub2110 = sub nsw i64 %shl2109, 1
  %mul2111 = mul nsw i64 %sub2110, 2
  %add2112 = add nsw i64 %mul2111, 1
  br label %cond.end.2117

cond.false.2113:                                  ; preds = %cond.false.2099
  %330 = load i64, i64* %buf_size.addr, align 8
  %add2114 = add nsw i64 0, %330
  %mul2115 = mul nsw i64 0, %add2114
  %sub2116 = sub nsw i64 %mul2115, 1
  br label %cond.end.2117

cond.end.2117:                                    ; preds = %cond.false.2113, %cond.true.2105
  %cond2118 = phi i64 [ %add2112, %cond.true.2105 ], [ %sub2116, %cond.false.2113 ]
  %div2119 = sdiv i64 %cond2118, 3
  %331 = load i64, i64* %buf_size.addr, align 8
  %cmp2120 = icmp slt i64 %div2119, %331
  br i1 %cmp2120, label %cond.true.2136, label %lor.lhs.false.2122

lor.lhs.false.2122:                               ; preds = %cond.end.2117, %cond.end.2094, %cond.true.2063, %cond.end.2057, %cond.true.2029, %cond.end.2023
  %332 = load i64, i64* %buf_size.addr, align 8
  %mul2123 = mul nsw i64 %332, 3
  %mul2124 = mul nsw i64 0, %mul2123
  %sub2125 = sub nsw i64 %mul2124, 1
  %cmp2126 = icmp slt i64 %sub2125, 0
  br i1 %cmp2126, label %land.lhs.true.2128, label %lor.lhs.false.2132

land.lhs.true.2128:                               ; preds = %lor.lhs.false.2122
  %333 = load i64, i64* %buf_size.addr, align 8
  %mul2129 = mul nsw i64 %333, 3
  %cmp2130 = icmp slt i64 %mul2129, -9223372036854775808
  br i1 %cmp2130, label %cond.true.2136, label %lor.lhs.false.2132

lor.lhs.false.2132:                               ; preds = %land.lhs.true.2128, %lor.lhs.false.2122
  %334 = load i64, i64* %buf_size.addr, align 8
  %mul2133 = mul nsw i64 %334, 3
  %cmp2134 = icmp slt i64 9223372036854775807, %mul2133
  br i1 %cmp2134, label %cond.true.2136, label %cond.false.2148

cond.true.2136:                                   ; preds = %lor.lhs.false.2132, %land.lhs.true.2128, %cond.end.2117, %cond.end.2094, %cond.true.2063, %cond.end.2057, %cond.true.2029, %cond.end.2023, %land.lhs.true.1998
  %335 = load i64, i64* %buf_size.addr, align 8
  %mul2137 = mul i64 %335, 3
  %cmp2138 = icmp ule i64 %mul2137, 9223372036854775807
  br i1 %cmp2138, label %cond.true.2140, label %cond.false.2142

cond.true.2140:                                   ; preds = %cond.true.2136
  %336 = load i64, i64* %buf_size.addr, align 8
  %mul2141 = mul i64 %336, 3
  br label %cond.end.2146

cond.false.2142:                                  ; preds = %cond.true.2136
  %337 = load i64, i64* %buf_size.addr, align 8
  %mul2143 = mul i64 %337, 3
  %sub2144 = sub i64 %mul2143, -9223372036854775808
  %add2145 = add nsw i64 %sub2144, -9223372036854775808
  br label %cond.end.2146

cond.end.2146:                                    ; preds = %cond.false.2142, %cond.true.2140
  %cond2147 = phi i64 [ %mul2141, %cond.true.2140 ], [ %add2145, %cond.false.2142 ]
  store i64 %cond2147, i64* %retlen, align 8
  br i1 true, label %if.then, label %lor.lhs.false.2160

cond.false.2148:                                  ; preds = %lor.lhs.false.2132
  %338 = load i64, i64* %buf_size.addr, align 8
  %mul2149 = mul i64 %338, 3
  %cmp2150 = icmp ule i64 %mul2149, 9223372036854775807
  br i1 %cmp2150, label %cond.true.2152, label %cond.false.2154

cond.true.2152:                                   ; preds = %cond.false.2148
  %339 = load i64, i64* %buf_size.addr, align 8
  %mul2153 = mul i64 %339, 3
  br label %cond.end.2158

cond.false.2154:                                  ; preds = %cond.false.2148
  %340 = load i64, i64* %buf_size.addr, align 8
  %mul2155 = mul i64 %340, 3
  %sub2156 = sub i64 %mul2155, -9223372036854775808
  %add2157 = add nsw i64 %sub2156, -9223372036854775808
  br label %cond.end.2158

cond.end.2158:                                    ; preds = %cond.false.2154, %cond.true.2152
  %cond2159 = phi i64 [ %mul2153, %cond.true.2152 ], [ %add2157, %cond.false.2154 ]
  store i64 %cond2159, i64* %retlen, align 8
  br i1 false, label %if.then, label %lor.lhs.false.2160

lor.lhs.false.2160:                               ; preds = %cond.end.2158, %cond.end.2146, %cond.end.1965, %cond.end.1953, %cond.end.1771, %cond.end.1759, %cond.end.1578, %cond.end.1566, %cond.end.1382, %cond.end.1366, %cond.end.1181, %cond.end.1165, %cond.end.953, %cond.end.930, %cond.end.738, %cond.end.715, %cond.end.468, %cond.end.445, %cond.end.253, %cond.end.230
  br i1 false, label %cond.true.2161, label %cond.false.2844

cond.true.2161:                                   ; preds = %lor.lhs.false.2160
  br i1 false, label %cond.true.2162, label %cond.false.2546

cond.true.2162:                                   ; preds = %cond.true.2161
  %341 = load i64, i64* %retlen, align 8
  %conv2163 = trunc i64 %341 to i8
  %conv2164 = sext i8 %conv2163 to i32
  %mul2165 = mul nsw i32 0, %conv2164
  %342 = load i64, i64* %prefix_length, align 8
  %343 = load i64, i64* %buf_size.addr, align 8
  %cmp2166 = icmp ne i64 %343, 0
  %conv2167 = zext i1 %cmp2166 to i32
  %conv2168 = sext i32 %conv2167 to i64
  %sub2169 = sub nsw i64 %342, %conv2168
  %conv2170 = trunc i64 %sub2169 to i8
  %conv2171 = sext i8 %conv2170 to i32
  %add2172 = add nsw i32 %mul2165, %conv2171
  %mul2173 = mul nsw i32 0, %add2172
  %sub2174 = sub nsw i32 %mul2173, 1
  %cmp2175 = icmp slt i32 %sub2174, 0
  br i1 %cmp2175, label %cond.true.2177, label %cond.false.2211

cond.true.2177:                                   ; preds = %cond.true.2162
  %344 = load i64, i64* %retlen, align 8
  %conv2178 = trunc i64 %344 to i8
  %conv2179 = sext i8 %conv2178 to i32
  %mul2180 = mul nsw i32 0, %conv2179
  %345 = load i64, i64* %prefix_length, align 8
  %346 = load i64, i64* %buf_size.addr, align 8
  %cmp2181 = icmp ne i64 %346, 0
  %conv2182 = zext i1 %cmp2181 to i32
  %conv2183 = sext i32 %conv2182 to i64
  %sub2184 = sub nsw i64 %345, %conv2183
  %conv2185 = trunc i64 %sub2184 to i8
  %conv2186 = sext i8 %conv2185 to i32
  %add2187 = add nsw i32 %mul2180, %conv2186
  %mul2188 = mul nsw i32 0, %add2187
  %add2189 = add nsw i32 %mul2188, 0
  %neg2190 = xor i32 %add2189, -1
  %cmp2191 = icmp eq i32 %neg2190, -1
  %conv2192 = zext i1 %cmp2191 to i32
  %sub2193 = sub nsw i32 0, %conv2192
  %347 = load i64, i64* %retlen, align 8
  %conv2194 = trunc i64 %347 to i8
  %conv2195 = sext i8 %conv2194 to i32
  %mul2196 = mul nsw i32 0, %conv2195
  %348 = load i64, i64* %prefix_length, align 8
  %349 = load i64, i64* %buf_size.addr, align 8
  %cmp2197 = icmp ne i64 %349, 0
  %conv2198 = zext i1 %cmp2197 to i32
  %conv2199 = sext i32 %conv2198 to i64
  %sub2200 = sub nsw i64 %348, %conv2199
  %conv2201 = trunc i64 %sub2200 to i8
  %conv2202 = sext i8 %conv2201 to i32
  %add2203 = add nsw i32 %mul2196, %conv2202
  %mul2204 = mul nsw i32 0, %add2203
  %add2205 = add nsw i32 %mul2204, 1
  %shl2206 = shl i32 %add2205, 30
  %sub2207 = sub nsw i32 %shl2206, 1
  %mul2208 = mul nsw i32 %sub2207, 2
  %add2209 = add nsw i32 %mul2208, 1
  %sub2210 = sub nsw i32 %sub2193, %add2209
  br label %cond.end.2224

cond.false.2211:                                  ; preds = %cond.true.2162
  %350 = load i64, i64* %retlen, align 8
  %conv2212 = trunc i64 %350 to i8
  %conv2213 = sext i8 %conv2212 to i32
  %mul2214 = mul nsw i32 0, %conv2213
  %351 = load i64, i64* %prefix_length, align 8
  %352 = load i64, i64* %buf_size.addr, align 8
  %cmp2215 = icmp ne i64 %352, 0
  %conv2216 = zext i1 %cmp2215 to i32
  %conv2217 = sext i32 %conv2216 to i64
  %sub2218 = sub nsw i64 %351, %conv2217
  %conv2219 = trunc i64 %sub2218 to i8
  %conv2220 = sext i8 %conv2219 to i32
  %add2221 = add nsw i32 %mul2214, %conv2220
  %mul2222 = mul nsw i32 0, %add2221
  %add2223 = add nsw i32 %mul2222, 0
  br label %cond.end.2224

cond.end.2224:                                    ; preds = %cond.false.2211, %cond.true.2177
  %cond2225 = phi i32 [ %sub2210, %cond.true.2177 ], [ %add2223, %cond.false.2211 ]
  %cmp2226 = icmp slt i32 %cond2225, 0
  br i1 %cmp2226, label %cond.true.2228, label %cond.false.2366

cond.true.2228:                                   ; preds = %cond.end.2224
  %353 = load i64, i64* %retlen, align 8
  %conv2229 = trunc i64 %353 to i8
  %conv2230 = sext i8 %conv2229 to i32
  %cmp2231 = icmp slt i32 %conv2230, 0
  br i1 %cmp2231, label %cond.true.2233, label %cond.false.2308

cond.true.2233:                                   ; preds = %cond.true.2228
  %354 = load i64, i64* %prefix_length, align 8
  %355 = load i64, i64* %buf_size.addr, align 8
  %cmp2234 = icmp ne i64 %355, 0
  %conv2235 = zext i1 %cmp2234 to i32
  %conv2236 = sext i32 %conv2235 to i64
  %sub2237 = sub nsw i64 %354, %conv2236
  %conv2238 = trunc i64 %sub2237 to i8
  %conv2239 = sext i8 %conv2238 to i32
  %356 = load i64, i64* %retlen, align 8
  %conv2240 = trunc i64 %356 to i8
  %conv2241 = sext i8 %conv2240 to i32
  %mul2242 = mul nsw i32 0, %conv2241
  %357 = load i64, i64* %prefix_length, align 8
  %358 = load i64, i64* %buf_size.addr, align 8
  %cmp2243 = icmp ne i64 %358, 0
  %conv2244 = zext i1 %cmp2243 to i32
  %conv2245 = sext i32 %conv2244 to i64
  %sub2246 = sub nsw i64 %357, %conv2245
  %conv2247 = trunc i64 %sub2246 to i8
  %conv2248 = sext i8 %conv2247 to i32
  %add2249 = add nsw i32 %mul2242, %conv2248
  %mul2250 = mul nsw i32 0, %add2249
  %sub2251 = sub nsw i32 %mul2250, 1
  %cmp2252 = icmp slt i32 %sub2251, 0
  br i1 %cmp2252, label %cond.true.2254, label %cond.false.2288

cond.true.2254:                                   ; preds = %cond.true.2233
  %359 = load i64, i64* %retlen, align 8
  %conv2255 = trunc i64 %359 to i8
  %conv2256 = sext i8 %conv2255 to i32
  %mul2257 = mul nsw i32 0, %conv2256
  %360 = load i64, i64* %prefix_length, align 8
  %361 = load i64, i64* %buf_size.addr, align 8
  %cmp2258 = icmp ne i64 %361, 0
  %conv2259 = zext i1 %cmp2258 to i32
  %conv2260 = sext i32 %conv2259 to i64
  %sub2261 = sub nsw i64 %360, %conv2260
  %conv2262 = trunc i64 %sub2261 to i8
  %conv2263 = sext i8 %conv2262 to i32
  %add2264 = add nsw i32 %mul2257, %conv2263
  %mul2265 = mul nsw i32 0, %add2264
  %add2266 = add nsw i32 %mul2265, 0
  %neg2267 = xor i32 %add2266, -1
  %cmp2268 = icmp eq i32 %neg2267, -1
  %conv2269 = zext i1 %cmp2268 to i32
  %sub2270 = sub nsw i32 0, %conv2269
  %362 = load i64, i64* %retlen, align 8
  %conv2271 = trunc i64 %362 to i8
  %conv2272 = sext i8 %conv2271 to i32
  %mul2273 = mul nsw i32 0, %conv2272
  %363 = load i64, i64* %prefix_length, align 8
  %364 = load i64, i64* %buf_size.addr, align 8
  %cmp2274 = icmp ne i64 %364, 0
  %conv2275 = zext i1 %cmp2274 to i32
  %conv2276 = sext i32 %conv2275 to i64
  %sub2277 = sub nsw i64 %363, %conv2276
  %conv2278 = trunc i64 %sub2277 to i8
  %conv2279 = sext i8 %conv2278 to i32
  %add2280 = add nsw i32 %mul2273, %conv2279
  %mul2281 = mul nsw i32 0, %add2280
  %add2282 = add nsw i32 %mul2281, 1
  %shl2283 = shl i32 %add2282, 30
  %sub2284 = sub nsw i32 %shl2283, 1
  %mul2285 = mul nsw i32 %sub2284, 2
  %add2286 = add nsw i32 %mul2285, 1
  %sub2287 = sub nsw i32 %sub2270, %add2286
  br label %cond.end.2301

cond.false.2288:                                  ; preds = %cond.true.2233
  %365 = load i64, i64* %retlen, align 8
  %conv2289 = trunc i64 %365 to i8
  %conv2290 = sext i8 %conv2289 to i32
  %mul2291 = mul nsw i32 0, %conv2290
  %366 = load i64, i64* %prefix_length, align 8
  %367 = load i64, i64* %buf_size.addr, align 8
  %cmp2292 = icmp ne i64 %367, 0
  %conv2293 = zext i1 %cmp2292 to i32
  %conv2294 = sext i32 %conv2293 to i64
  %sub2295 = sub nsw i64 %366, %conv2294
  %conv2296 = trunc i64 %sub2295 to i8
  %conv2297 = sext i8 %conv2296 to i32
  %add2298 = add nsw i32 %mul2291, %conv2297
  %mul2299 = mul nsw i32 0, %add2298
  %add2300 = add nsw i32 %mul2299, 0
  br label %cond.end.2301

cond.end.2301:                                    ; preds = %cond.false.2288, %cond.true.2254
  %cond2302 = phi i32 [ %sub2287, %cond.true.2254 ], [ %add2300, %cond.false.2288 ]
  %368 = load i64, i64* %retlen, align 8
  %conv2303 = trunc i64 %368 to i8
  %conv2304 = sext i8 %conv2303 to i32
  %sub2305 = sub nsw i32 %cond2302, %conv2304
  %cmp2306 = icmp slt i32 %conv2239, %sub2305
  br i1 %cmp2306, label %cond.true.2464, label %lor.lhs.false.2426

cond.false.2308:                                  ; preds = %cond.true.2228
  %369 = load i64, i64* %retlen, align 8
  %conv2309 = trunc i64 %369 to i8
  %conv2310 = sext i8 %conv2309 to i32
  %mul2311 = mul nsw i32 0, %conv2310
  %370 = load i64, i64* %prefix_length, align 8
  %371 = load i64, i64* %buf_size.addr, align 8
  %cmp2312 = icmp ne i64 %371, 0
  %conv2313 = zext i1 %cmp2312 to i32
  %conv2314 = sext i32 %conv2313 to i64
  %sub2315 = sub nsw i64 %370, %conv2314
  %conv2316 = trunc i64 %sub2315 to i8
  %conv2317 = sext i8 %conv2316 to i32
  %add2318 = add nsw i32 %mul2311, %conv2317
  %mul2319 = mul nsw i32 0, %add2318
  %sub2320 = sub nsw i32 %mul2319, 1
  %cmp2321 = icmp slt i32 %sub2320, 0
  br i1 %cmp2321, label %cond.true.2323, label %cond.false.2340

cond.true.2323:                                   ; preds = %cond.false.2308
  %372 = load i64, i64* %retlen, align 8
  %conv2324 = trunc i64 %372 to i8
  %conv2325 = sext i8 %conv2324 to i32
  %mul2326 = mul nsw i32 0, %conv2325
  %373 = load i64, i64* %prefix_length, align 8
  %374 = load i64, i64* %buf_size.addr, align 8
  %cmp2327 = icmp ne i64 %374, 0
  %conv2328 = zext i1 %cmp2327 to i32
  %conv2329 = sext i32 %conv2328 to i64
  %sub2330 = sub nsw i64 %373, %conv2329
  %conv2331 = trunc i64 %sub2330 to i8
  %conv2332 = sext i8 %conv2331 to i32
  %add2333 = add nsw i32 %mul2326, %conv2332
  %mul2334 = mul nsw i32 0, %add2333
  %add2335 = add nsw i32 %mul2334, 1
  %shl2336 = shl i32 %add2335, 30
  %sub2337 = sub nsw i32 %shl2336, 1
  %mul2338 = mul nsw i32 %sub2337, 2
  %add2339 = add nsw i32 %mul2338, 1
  br label %cond.end.2353

cond.false.2340:                                  ; preds = %cond.false.2308
  %375 = load i64, i64* %retlen, align 8
  %conv2341 = trunc i64 %375 to i8
  %conv2342 = sext i8 %conv2341 to i32
  %mul2343 = mul nsw i32 0, %conv2342
  %376 = load i64, i64* %prefix_length, align 8
  %377 = load i64, i64* %buf_size.addr, align 8
  %cmp2344 = icmp ne i64 %377, 0
  %conv2345 = zext i1 %cmp2344 to i32
  %conv2346 = sext i32 %conv2345 to i64
  %sub2347 = sub nsw i64 %376, %conv2346
  %conv2348 = trunc i64 %sub2347 to i8
  %conv2349 = sext i8 %conv2348 to i32
  %add2350 = add nsw i32 %mul2343, %conv2349
  %mul2351 = mul nsw i32 0, %add2350
  %sub2352 = sub nsw i32 %mul2351, 1
  br label %cond.end.2353

cond.end.2353:                                    ; preds = %cond.false.2340, %cond.true.2323
  %cond2354 = phi i32 [ %add2339, %cond.true.2323 ], [ %sub2352, %cond.false.2340 ]
  %378 = load i64, i64* %retlen, align 8
  %conv2355 = trunc i64 %378 to i8
  %conv2356 = sext i8 %conv2355 to i32
  %sub2357 = sub nsw i32 %cond2354, %conv2356
  %379 = load i64, i64* %prefix_length, align 8
  %380 = load i64, i64* %buf_size.addr, align 8
  %cmp2358 = icmp ne i64 %380, 0
  %conv2359 = zext i1 %cmp2358 to i32
  %conv2360 = sext i32 %conv2359 to i64
  %sub2361 = sub nsw i64 %379, %conv2360
  %conv2362 = trunc i64 %sub2361 to i8
  %conv2363 = sext i8 %conv2362 to i32
  %cmp2364 = icmp slt i32 %sub2357, %conv2363
  br i1 %cmp2364, label %cond.true.2464, label %lor.lhs.false.2426

cond.false.2366:                                  ; preds = %cond.end.2224
  %381 = load i64, i64* %prefix_length, align 8
  %382 = load i64, i64* %buf_size.addr, align 8
  %cmp2367 = icmp ne i64 %382, 0
  %conv2368 = zext i1 %cmp2367 to i32
  %conv2369 = sext i32 %conv2368 to i64
  %sub2370 = sub nsw i64 %381, %conv2369
  %conv2371 = trunc i64 %sub2370 to i8
  %conv2372 = sext i8 %conv2371 to i32
  %cmp2373 = icmp slt i32 %conv2372, 0
  br i1 %cmp2373, label %cond.true.2375, label %cond.false.2389

cond.true.2375:                                   ; preds = %cond.false.2366
  %383 = load i64, i64* %retlen, align 8
  %conv2376 = trunc i64 %383 to i8
  %conv2377 = sext i8 %conv2376 to i32
  %384 = load i64, i64* %prefix_length, align 8
  %385 = load i64, i64* %buf_size.addr, align 8
  %cmp2378 = icmp ne i64 %385, 0
  %conv2379 = zext i1 %cmp2378 to i32
  %conv2380 = sext i32 %conv2379 to i64
  %sub2381 = sub nsw i64 %384, %conv2380
  %conv2382 = trunc i64 %sub2381 to i8
  %conv2383 = sext i8 %conv2382 to i32
  %386 = load i64, i64* %retlen, align 8
  %conv2384 = trunc i64 %386 to i8
  %conv2385 = sext i8 %conv2384 to i32
  %add2386 = add nsw i32 %conv2383, %conv2385
  %cmp2387 = icmp sle i32 %conv2377, %add2386
  br i1 %cmp2387, label %cond.true.2464, label %lor.lhs.false.2426

cond.false.2389:                                  ; preds = %cond.false.2366
  %387 = load i64, i64* %retlen, align 8
  %conv2390 = trunc i64 %387 to i8
  %conv2391 = sext i8 %conv2390 to i32
  %cmp2392 = icmp slt i32 %conv2391, 0
  br i1 %cmp2392, label %cond.true.2394, label %cond.false.2412

cond.true.2394:                                   ; preds = %cond.false.2389
  %388 = load i64, i64* %prefix_length, align 8
  %389 = load i64, i64* %buf_size.addr, align 8
  %cmp2395 = icmp ne i64 %389, 0
  %conv2396 = zext i1 %cmp2395 to i32
  %conv2397 = sext i32 %conv2396 to i64
  %sub2398 = sub nsw i64 %388, %conv2397
  %conv2399 = trunc i64 %sub2398 to i8
  %conv2400 = sext i8 %conv2399 to i32
  %390 = load i64, i64* %prefix_length, align 8
  %391 = load i64, i64* %buf_size.addr, align 8
  %cmp2401 = icmp ne i64 %391, 0
  %conv2402 = zext i1 %cmp2401 to i32
  %conv2403 = sext i32 %conv2402 to i64
  %sub2404 = sub nsw i64 %390, %conv2403
  %conv2405 = trunc i64 %sub2404 to i8
  %conv2406 = sext i8 %conv2405 to i32
  %392 = load i64, i64* %retlen, align 8
  %conv2407 = trunc i64 %392 to i8
  %conv2408 = sext i8 %conv2407 to i32
  %add2409 = add nsw i32 %conv2406, %conv2408
  %cmp2410 = icmp sle i32 %conv2400, %add2409
  br i1 %cmp2410, label %cond.true.2464, label %lor.lhs.false.2426

cond.false.2412:                                  ; preds = %cond.false.2389
  %393 = load i64, i64* %prefix_length, align 8
  %394 = load i64, i64* %buf_size.addr, align 8
  %cmp2413 = icmp ne i64 %394, 0
  %conv2414 = zext i1 %cmp2413 to i32
  %conv2415 = sext i32 %conv2414 to i64
  %sub2416 = sub nsw i64 %393, %conv2415
  %conv2417 = trunc i64 %sub2416 to i8
  %conv2418 = sext i8 %conv2417 to i32
  %395 = load i64, i64* %retlen, align 8
  %conv2419 = trunc i64 %395 to i8
  %conv2420 = sext i8 %conv2419 to i32
  %add2421 = add nsw i32 %conv2418, %conv2420
  %396 = load i64, i64* %retlen, align 8
  %conv2422 = trunc i64 %396 to i8
  %conv2423 = sext i8 %conv2422 to i32
  %cmp2424 = icmp slt i32 %add2421, %conv2423
  br i1 %cmp2424, label %cond.true.2464, label %lor.lhs.false.2426

lor.lhs.false.2426:                               ; preds = %cond.false.2412, %cond.true.2394, %cond.true.2375, %cond.end.2353, %cond.end.2301
  %397 = load i64, i64* %prefix_length, align 8
  %398 = load i64, i64* %buf_size.addr, align 8
  %cmp2427 = icmp ne i64 %398, 0
  %conv2428 = zext i1 %cmp2427 to i32
  %conv2429 = sext i32 %conv2428 to i64
  %sub2430 = sub nsw i64 %397, %conv2429
  %conv2431 = trunc i64 %sub2430 to i8
  %conv2432 = sext i8 %conv2431 to i32
  %399 = load i64, i64* %retlen, align 8
  %conv2433 = trunc i64 %399 to i8
  %conv2434 = sext i8 %conv2433 to i32
  %add2435 = add nsw i32 %conv2432, %conv2434
  %mul2436 = mul nsw i32 0, %add2435
  %sub2437 = sub nsw i32 %mul2436, 1
  %cmp2438 = icmp slt i32 %sub2437, 0
  br i1 %cmp2438, label %land.lhs.true.2440, label %lor.lhs.false.2452

land.lhs.true.2440:                               ; preds = %lor.lhs.false.2426
  %400 = load i64, i64* %prefix_length, align 8
  %401 = load i64, i64* %buf_size.addr, align 8
  %cmp2441 = icmp ne i64 %401, 0
  %conv2442 = zext i1 %cmp2441 to i32
  %conv2443 = sext i32 %conv2442 to i64
  %sub2444 = sub nsw i64 %400, %conv2443
  %conv2445 = trunc i64 %sub2444 to i8
  %conv2446 = sext i8 %conv2445 to i32
  %402 = load i64, i64* %retlen, align 8
  %conv2447 = trunc i64 %402 to i8
  %conv2448 = sext i8 %conv2447 to i32
  %add2449 = add nsw i32 %conv2446, %conv2448
  %cmp2450 = icmp slt i32 %add2449, -128
  br i1 %cmp2450, label %cond.true.2464, label %lor.lhs.false.2452

lor.lhs.false.2452:                               ; preds = %land.lhs.true.2440, %lor.lhs.false.2426
  %403 = load i64, i64* %prefix_length, align 8
  %404 = load i64, i64* %buf_size.addr, align 8
  %cmp2453 = icmp ne i64 %404, 0
  %conv2454 = zext i1 %cmp2453 to i32
  %conv2455 = sext i32 %conv2454 to i64
  %sub2456 = sub nsw i64 %403, %conv2455
  %conv2457 = trunc i64 %sub2456 to i8
  %conv2458 = sext i8 %conv2457 to i32
  %405 = load i64, i64* %retlen, align 8
  %conv2459 = trunc i64 %405 to i8
  %conv2460 = sext i8 %conv2459 to i32
  %add2461 = add nsw i32 %conv2458, %conv2460
  %cmp2462 = icmp slt i32 127, %add2461
  br i1 %cmp2462, label %cond.true.2464, label %cond.false.2505

cond.true.2464:                                   ; preds = %lor.lhs.false.2452, %land.lhs.true.2440, %cond.false.2412, %cond.true.2394, %cond.true.2375, %cond.end.2353, %cond.end.2301
  %406 = load i64, i64* %prefix_length, align 8
  %407 = load i64, i64* %buf_size.addr, align 8
  %cmp2465 = icmp ne i64 %407, 0
  %conv2466 = zext i1 %cmp2465 to i32
  %conv2467 = sext i32 %conv2466 to i64
  %sub2468 = sub nsw i64 %406, %conv2467
  %conv2469 = trunc i64 %sub2468 to i8
  %conv2470 = zext i8 %conv2469 to i32
  %408 = load i64, i64* %retlen, align 8
  %conv2471 = trunc i64 %408 to i8
  %conv2472 = zext i8 %conv2471 to i32
  %add2473 = add nsw i32 %conv2470, %conv2472
  %cmp2474 = icmp sle i32 %add2473, 127
  br i1 %cmp2474, label %cond.true.2476, label %cond.false.2488

cond.true.2476:                                   ; preds = %cond.true.2464
  %409 = load i64, i64* %prefix_length, align 8
  %410 = load i64, i64* %buf_size.addr, align 8
  %cmp2477 = icmp ne i64 %410, 0
  %conv2478 = zext i1 %cmp2477 to i32
  %conv2479 = sext i32 %conv2478 to i64
  %sub2480 = sub nsw i64 %409, %conv2479
  %conv2481 = trunc i64 %sub2480 to i8
  %conv2482 = zext i8 %conv2481 to i32
  %411 = load i64, i64* %retlen, align 8
  %conv2483 = trunc i64 %411 to i8
  %conv2484 = zext i8 %conv2483 to i32
  %add2485 = add nsw i32 %conv2482, %conv2484
  %conv2486 = trunc i32 %add2485 to i8
  %conv2487 = sext i8 %conv2486 to i32
  br label %cond.end.2502

cond.false.2488:                                  ; preds = %cond.true.2464
  %412 = load i64, i64* %prefix_length, align 8
  %413 = load i64, i64* %buf_size.addr, align 8
  %cmp2489 = icmp ne i64 %413, 0
  %conv2490 = zext i1 %cmp2489 to i32
  %conv2491 = sext i32 %conv2490 to i64
  %sub2492 = sub nsw i64 %412, %conv2491
  %conv2493 = trunc i64 %sub2492 to i8
  %conv2494 = zext i8 %conv2493 to i32
  %414 = load i64, i64* %retlen, align 8
  %conv2495 = trunc i64 %414 to i8
  %conv2496 = zext i8 %conv2495 to i32
  %add2497 = add nsw i32 %conv2494, %conv2496
  %sub2498 = sub nsw i32 %add2497, -128
  %conv2499 = trunc i32 %sub2498 to i8
  %conv2500 = sext i8 %conv2499 to i32
  %add2501 = add nsw i32 %conv2500, -128
  br label %cond.end.2502

cond.end.2502:                                    ; preds = %cond.false.2488, %cond.true.2476
  %cond2503 = phi i32 [ %conv2487, %cond.true.2476 ], [ %add2501, %cond.false.2488 ]
  %conv2504 = sext i32 %cond2503 to i64
  store i64 %conv2504, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.2505:                                  ; preds = %lor.lhs.false.2452
  %415 = load i64, i64* %prefix_length, align 8
  %416 = load i64, i64* %buf_size.addr, align 8
  %cmp2506 = icmp ne i64 %416, 0
  %conv2507 = zext i1 %cmp2506 to i32
  %conv2508 = sext i32 %conv2507 to i64
  %sub2509 = sub nsw i64 %415, %conv2508
  %conv2510 = trunc i64 %sub2509 to i8
  %conv2511 = zext i8 %conv2510 to i32
  %417 = load i64, i64* %retlen, align 8
  %conv2512 = trunc i64 %417 to i8
  %conv2513 = zext i8 %conv2512 to i32
  %add2514 = add nsw i32 %conv2511, %conv2513
  %cmp2515 = icmp sle i32 %add2514, 127
  br i1 %cmp2515, label %cond.true.2517, label %cond.false.2529

cond.true.2517:                                   ; preds = %cond.false.2505
  %418 = load i64, i64* %prefix_length, align 8
  %419 = load i64, i64* %buf_size.addr, align 8
  %cmp2518 = icmp ne i64 %419, 0
  %conv2519 = zext i1 %cmp2518 to i32
  %conv2520 = sext i32 %conv2519 to i64
  %sub2521 = sub nsw i64 %418, %conv2520
  %conv2522 = trunc i64 %sub2521 to i8
  %conv2523 = zext i8 %conv2522 to i32
  %420 = load i64, i64* %retlen, align 8
  %conv2524 = trunc i64 %420 to i8
  %conv2525 = zext i8 %conv2524 to i32
  %add2526 = add nsw i32 %conv2523, %conv2525
  %conv2527 = trunc i32 %add2526 to i8
  %conv2528 = sext i8 %conv2527 to i32
  br label %cond.end.2543

cond.false.2529:                                  ; preds = %cond.false.2505
  %421 = load i64, i64* %prefix_length, align 8
  %422 = load i64, i64* %buf_size.addr, align 8
  %cmp2530 = icmp ne i64 %422, 0
  %conv2531 = zext i1 %cmp2530 to i32
  %conv2532 = sext i32 %conv2531 to i64
  %sub2533 = sub nsw i64 %421, %conv2532
  %conv2534 = trunc i64 %sub2533 to i8
  %conv2535 = zext i8 %conv2534 to i32
  %423 = load i64, i64* %retlen, align 8
  %conv2536 = trunc i64 %423 to i8
  %conv2537 = zext i8 %conv2536 to i32
  %add2538 = add nsw i32 %conv2535, %conv2537
  %sub2539 = sub nsw i32 %add2538, -128
  %conv2540 = trunc i32 %sub2539 to i8
  %conv2541 = sext i8 %conv2540 to i32
  %add2542 = add nsw i32 %conv2541, -128
  br label %cond.end.2543

cond.end.2543:                                    ; preds = %cond.false.2529, %cond.true.2517
  %cond2544 = phi i32 [ %conv2528, %cond.true.2517 ], [ %add2542, %cond.false.2529 ]
  %conv2545 = sext i32 %cond2544 to i64
  store i64 %conv2545, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

cond.false.2546:                                  ; preds = %cond.true.2161
  %424 = load i64, i64* %retlen, align 8
  %mul2547 = mul nsw i64 0, %424
  %425 = load i64, i64* %prefix_length, align 8
  %426 = load i64, i64* %buf_size.addr, align 8
  %cmp2548 = icmp ne i64 %426, 0
  %conv2549 = zext i1 %cmp2548 to i32
  %conv2550 = sext i32 %conv2549 to i64
  %sub2551 = sub nsw i64 %425, %conv2550
  %add2552 = add nsw i64 %mul2547, %sub2551
  %mul2553 = mul nsw i64 0, %add2552
  %sub2554 = sub nsw i64 %mul2553, 1
  %cmp2555 = icmp slt i64 %sub2554, 0
  br i1 %cmp2555, label %cond.true.2557, label %cond.false.2584

cond.true.2557:                                   ; preds = %cond.false.2546
  %427 = load i64, i64* %retlen, align 8
  %mul2558 = mul nsw i64 0, %427
  %428 = load i64, i64* %prefix_length, align 8
  %429 = load i64, i64* %buf_size.addr, align 8
  %cmp2559 = icmp ne i64 %429, 0
  %conv2560 = zext i1 %cmp2559 to i32
  %conv2561 = sext i32 %conv2560 to i64
  %sub2562 = sub nsw i64 %428, %conv2561
  %add2563 = add nsw i64 %mul2558, %sub2562
  %mul2564 = mul nsw i64 0, %add2563
  %add2565 = add nsw i64 %mul2564, 0
  %neg2566 = xor i64 %add2565, -1
  %cmp2567 = icmp eq i64 %neg2566, -1
  %conv2568 = zext i1 %cmp2567 to i32
  %sub2569 = sub nsw i32 0, %conv2568
  %conv2570 = sext i32 %sub2569 to i64
  %430 = load i64, i64* %retlen, align 8
  %mul2571 = mul nsw i64 0, %430
  %431 = load i64, i64* %prefix_length, align 8
  %432 = load i64, i64* %buf_size.addr, align 8
  %cmp2572 = icmp ne i64 %432, 0
  %conv2573 = zext i1 %cmp2572 to i32
  %conv2574 = sext i32 %conv2573 to i64
  %sub2575 = sub nsw i64 %431, %conv2574
  %add2576 = add nsw i64 %mul2571, %sub2575
  %mul2577 = mul nsw i64 0, %add2576
  %add2578 = add nsw i64 %mul2577, 1
  %shl2579 = shl i64 %add2578, 62
  %sub2580 = sub nsw i64 %shl2579, 1
  %mul2581 = mul nsw i64 %sub2580, 2
  %add2582 = add nsw i64 %mul2581, 1
  %sub2583 = sub nsw i64 %conv2570, %add2582
  br label %cond.end.2593

cond.false.2584:                                  ; preds = %cond.false.2546
  %433 = load i64, i64* %retlen, align 8
  %mul2585 = mul nsw i64 0, %433
  %434 = load i64, i64* %prefix_length, align 8
  %435 = load i64, i64* %buf_size.addr, align 8
  %cmp2586 = icmp ne i64 %435, 0
  %conv2587 = zext i1 %cmp2586 to i32
  %conv2588 = sext i32 %conv2587 to i64
  %sub2589 = sub nsw i64 %434, %conv2588
  %add2590 = add nsw i64 %mul2585, %sub2589
  %mul2591 = mul nsw i64 0, %add2590
  %add2592 = add nsw i64 %mul2591, 0
  br label %cond.end.2593

cond.end.2593:                                    ; preds = %cond.false.2584, %cond.true.2557
  %cond2594 = phi i64 [ %sub2583, %cond.true.2557 ], [ %add2592, %cond.false.2584 ]
  %cmp2595 = icmp slt i64 %cond2594, 0
  br i1 %cmp2595, label %cond.true.2597, label %cond.false.2698

cond.true.2597:                                   ; preds = %cond.end.2593
  %436 = load i64, i64* %retlen, align 8
  %cmp2598 = icmp slt i64 %436, 0
  br i1 %cmp2598, label %cond.true.2600, label %cond.false.2656

cond.true.2600:                                   ; preds = %cond.true.2597
  %437 = load i64, i64* %prefix_length, align 8
  %438 = load i64, i64* %buf_size.addr, align 8
  %cmp2601 = icmp ne i64 %438, 0
  %conv2602 = zext i1 %cmp2601 to i32
  %conv2603 = sext i32 %conv2602 to i64
  %sub2604 = sub nsw i64 %437, %conv2603
  %439 = load i64, i64* %retlen, align 8
  %mul2605 = mul nsw i64 0, %439
  %440 = load i64, i64* %prefix_length, align 8
  %441 = load i64, i64* %buf_size.addr, align 8
  %cmp2606 = icmp ne i64 %441, 0
  %conv2607 = zext i1 %cmp2606 to i32
  %conv2608 = sext i32 %conv2607 to i64
  %sub2609 = sub nsw i64 %440, %conv2608
  %add2610 = add nsw i64 %mul2605, %sub2609
  %mul2611 = mul nsw i64 0, %add2610
  %sub2612 = sub nsw i64 %mul2611, 1
  %cmp2613 = icmp slt i64 %sub2612, 0
  br i1 %cmp2613, label %cond.true.2615, label %cond.false.2642

cond.true.2615:                                   ; preds = %cond.true.2600
  %442 = load i64, i64* %retlen, align 8
  %mul2616 = mul nsw i64 0, %442
  %443 = load i64, i64* %prefix_length, align 8
  %444 = load i64, i64* %buf_size.addr, align 8
  %cmp2617 = icmp ne i64 %444, 0
  %conv2618 = zext i1 %cmp2617 to i32
  %conv2619 = sext i32 %conv2618 to i64
  %sub2620 = sub nsw i64 %443, %conv2619
  %add2621 = add nsw i64 %mul2616, %sub2620
  %mul2622 = mul nsw i64 0, %add2621
  %add2623 = add nsw i64 %mul2622, 0
  %neg2624 = xor i64 %add2623, -1
  %cmp2625 = icmp eq i64 %neg2624, -1
  %conv2626 = zext i1 %cmp2625 to i32
  %sub2627 = sub nsw i32 0, %conv2626
  %conv2628 = sext i32 %sub2627 to i64
  %445 = load i64, i64* %retlen, align 8
  %mul2629 = mul nsw i64 0, %445
  %446 = load i64, i64* %prefix_length, align 8
  %447 = load i64, i64* %buf_size.addr, align 8
  %cmp2630 = icmp ne i64 %447, 0
  %conv2631 = zext i1 %cmp2630 to i32
  %conv2632 = sext i32 %conv2631 to i64
  %sub2633 = sub nsw i64 %446, %conv2632
  %add2634 = add nsw i64 %mul2629, %sub2633
  %mul2635 = mul nsw i64 0, %add2634
  %add2636 = add nsw i64 %mul2635, 1
  %shl2637 = shl i64 %add2636, 62
  %sub2638 = sub nsw i64 %shl2637, 1
  %mul2639 = mul nsw i64 %sub2638, 2
  %add2640 = add nsw i64 %mul2639, 1
  %sub2641 = sub nsw i64 %conv2628, %add2640
  br label %cond.end.2651

cond.false.2642:                                  ; preds = %cond.true.2600
  %448 = load i64, i64* %retlen, align 8
  %mul2643 = mul nsw i64 0, %448
  %449 = load i64, i64* %prefix_length, align 8
  %450 = load i64, i64* %buf_size.addr, align 8
  %cmp2644 = icmp ne i64 %450, 0
  %conv2645 = zext i1 %cmp2644 to i32
  %conv2646 = sext i32 %conv2645 to i64
  %sub2647 = sub nsw i64 %449, %conv2646
  %add2648 = add nsw i64 %mul2643, %sub2647
  %mul2649 = mul nsw i64 0, %add2648
  %add2650 = add nsw i64 %mul2649, 0
  br label %cond.end.2651

cond.end.2651:                                    ; preds = %cond.false.2642, %cond.true.2615
  %cond2652 = phi i64 [ %sub2641, %cond.true.2615 ], [ %add2650, %cond.false.2642 ]
  %451 = load i64, i64* %retlen, align 8
  %sub2653 = sub nsw i64 %cond2652, %451
  %cmp2654 = icmp slt i64 %sub2604, %sub2653
  br i1 %cmp2654, label %cond.true.2762, label %lor.lhs.false.2736

cond.false.2656:                                  ; preds = %cond.true.2597
  %452 = load i64, i64* %retlen, align 8
  %mul2657 = mul nsw i64 0, %452
  %453 = load i64, i64* %prefix_length, align 8
  %454 = load i64, i64* %buf_size.addr, align 8
  %cmp2658 = icmp ne i64 %454, 0
  %conv2659 = zext i1 %cmp2658 to i32
  %conv2660 = sext i32 %conv2659 to i64
  %sub2661 = sub nsw i64 %453, %conv2660
  %add2662 = add nsw i64 %mul2657, %sub2661
  %mul2663 = mul nsw i64 0, %add2662
  %sub2664 = sub nsw i64 %mul2663, 1
  %cmp2665 = icmp slt i64 %sub2664, 0
  br i1 %cmp2665, label %cond.true.2667, label %cond.false.2680

cond.true.2667:                                   ; preds = %cond.false.2656
  %455 = load i64, i64* %retlen, align 8
  %mul2668 = mul nsw i64 0, %455
  %456 = load i64, i64* %prefix_length, align 8
  %457 = load i64, i64* %buf_size.addr, align 8
  %cmp2669 = icmp ne i64 %457, 0
  %conv2670 = zext i1 %cmp2669 to i32
  %conv2671 = sext i32 %conv2670 to i64
  %sub2672 = sub nsw i64 %456, %conv2671
  %add2673 = add nsw i64 %mul2668, %sub2672
  %mul2674 = mul nsw i64 0, %add2673
  %add2675 = add nsw i64 %mul2674, 1
  %shl2676 = shl i64 %add2675, 62
  %sub2677 = sub nsw i64 %shl2676, 1
  %mul2678 = mul nsw i64 %sub2677, 2
  %add2679 = add nsw i64 %mul2678, 1
  br label %cond.end.2689

cond.false.2680:                                  ; preds = %cond.false.2656
  %458 = load i64, i64* %retlen, align 8
  %mul2681 = mul nsw i64 0, %458
  %459 = load i64, i64* %prefix_length, align 8
  %460 = load i64, i64* %buf_size.addr, align 8
  %cmp2682 = icmp ne i64 %460, 0
  %conv2683 = zext i1 %cmp2682 to i32
  %conv2684 = sext i32 %conv2683 to i64
  %sub2685 = sub nsw i64 %459, %conv2684
  %add2686 = add nsw i64 %mul2681, %sub2685
  %mul2687 = mul nsw i64 0, %add2686
  %sub2688 = sub nsw i64 %mul2687, 1
  br label %cond.end.2689

cond.end.2689:                                    ; preds = %cond.false.2680, %cond.true.2667
  %cond2690 = phi i64 [ %add2679, %cond.true.2667 ], [ %sub2688, %cond.false.2680 ]
  %461 = load i64, i64* %retlen, align 8
  %sub2691 = sub nsw i64 %cond2690, %461
  %462 = load i64, i64* %prefix_length, align 8
  %463 = load i64, i64* %buf_size.addr, align 8
  %cmp2692 = icmp ne i64 %463, 0
  %conv2693 = zext i1 %cmp2692 to i32
  %conv2694 = sext i32 %conv2693 to i64
  %sub2695 = sub nsw i64 %462, %conv2694
  %cmp2696 = icmp slt i64 %sub2691, %sub2695
  br i1 %cmp2696, label %cond.true.2762, label %lor.lhs.false.2736

cond.false.2698:                                  ; preds = %cond.end.2593
  %464 = load i64, i64* %prefix_length, align 8
  %465 = load i64, i64* %buf_size.addr, align 8
  %cmp2699 = icmp ne i64 %465, 0
  %conv2700 = zext i1 %cmp2699 to i32
  %conv2701 = sext i32 %conv2700 to i64
  %sub2702 = sub nsw i64 %464, %conv2701
  %cmp2703 = icmp slt i64 %sub2702, 0
  br i1 %cmp2703, label %cond.true.2705, label %cond.false.2713

cond.true.2705:                                   ; preds = %cond.false.2698
  %466 = load i64, i64* %retlen, align 8
  %467 = load i64, i64* %prefix_length, align 8
  %468 = load i64, i64* %buf_size.addr, align 8
  %cmp2706 = icmp ne i64 %468, 0
  %conv2707 = zext i1 %cmp2706 to i32
  %conv2708 = sext i32 %conv2707 to i64
  %sub2709 = sub nsw i64 %467, %conv2708
  %469 = load i64, i64* %retlen, align 8
  %add2710 = add nsw i64 %sub2709, %469
  %cmp2711 = icmp sle i64 %466, %add2710
  br i1 %cmp2711, label %cond.true.2762, label %lor.lhs.false.2736

cond.false.2713:                                  ; preds = %cond.false.2698
  %470 = load i64, i64* %retlen, align 8
  %cmp2714 = icmp slt i64 %470, 0
  br i1 %cmp2714, label %cond.true.2716, label %cond.false.2728

cond.true.2716:                                   ; preds = %cond.false.2713
  %471 = load i64, i64* %prefix_length, align 8
  %472 = load i64, i64* %buf_size.addr, align 8
  %cmp2717 = icmp ne i64 %472, 0
  %conv2718 = zext i1 %cmp2717 to i32
  %conv2719 = sext i32 %conv2718 to i64
  %sub2720 = sub nsw i64 %471, %conv2719
  %473 = load i64, i64* %prefix_length, align 8
  %474 = load i64, i64* %buf_size.addr, align 8
  %cmp2721 = icmp ne i64 %474, 0
  %conv2722 = zext i1 %cmp2721 to i32
  %conv2723 = sext i32 %conv2722 to i64
  %sub2724 = sub nsw i64 %473, %conv2723
  %475 = load i64, i64* %retlen, align 8
  %add2725 = add nsw i64 %sub2724, %475
  %cmp2726 = icmp sle i64 %sub2720, %add2725
  br i1 %cmp2726, label %cond.true.2762, label %lor.lhs.false.2736

cond.false.2728:                                  ; preds = %cond.false.2713
  %476 = load i64, i64* %prefix_length, align 8
  %477 = load i64, i64* %buf_size.addr, align 8
  %cmp2729 = icmp ne i64 %477, 0
  %conv2730 = zext i1 %cmp2729 to i32
  %conv2731 = sext i32 %conv2730 to i64
  %sub2732 = sub nsw i64 %476, %conv2731
  %478 = load i64, i64* %retlen, align 8
  %add2733 = add nsw i64 %sub2732, %478
  %479 = load i64, i64* %retlen, align 8
  %cmp2734 = icmp slt i64 %add2733, %479
  br i1 %cmp2734, label %cond.true.2762, label %lor.lhs.false.2736

lor.lhs.false.2736:                               ; preds = %cond.false.2728, %cond.true.2716, %cond.true.2705, %cond.end.2689, %cond.end.2651
  %480 = load i64, i64* %prefix_length, align 8
  %481 = load i64, i64* %buf_size.addr, align 8
  %cmp2737 = icmp ne i64 %481, 0
  %conv2738 = zext i1 %cmp2737 to i32
  %conv2739 = sext i32 %conv2738 to i64
  %sub2740 = sub nsw i64 %480, %conv2739
  %482 = load i64, i64* %retlen, align 8
  %add2741 = add nsw i64 %sub2740, %482
  %mul2742 = mul nsw i64 0, %add2741
  %sub2743 = sub nsw i64 %mul2742, 1
  %cmp2744 = icmp slt i64 %sub2743, 0
  br i1 %cmp2744, label %land.lhs.true.2746, label %lor.lhs.false.2754

land.lhs.true.2746:                               ; preds = %lor.lhs.false.2736
  %483 = load i64, i64* %prefix_length, align 8
  %484 = load i64, i64* %buf_size.addr, align 8
  %cmp2747 = icmp ne i64 %484, 0
  %conv2748 = zext i1 %cmp2747 to i32
  %conv2749 = sext i32 %conv2748 to i64
  %sub2750 = sub nsw i64 %483, %conv2749
  %485 = load i64, i64* %retlen, align 8
  %add2751 = add nsw i64 %sub2750, %485
  %cmp2752 = icmp slt i64 %add2751, -128
  br i1 %cmp2752, label %cond.true.2762, label %lor.lhs.false.2754

lor.lhs.false.2754:                               ; preds = %land.lhs.true.2746, %lor.lhs.false.2736
  %486 = load i64, i64* %prefix_length, align 8
  %487 = load i64, i64* %buf_size.addr, align 8
  %cmp2755 = icmp ne i64 %487, 0
  %conv2756 = zext i1 %cmp2755 to i32
  %conv2757 = sext i32 %conv2756 to i64
  %sub2758 = sub nsw i64 %486, %conv2757
  %488 = load i64, i64* %retlen, align 8
  %add2759 = add nsw i64 %sub2758, %488
  %cmp2760 = icmp slt i64 127, %add2759
  br i1 %cmp2760, label %cond.true.2762, label %cond.false.2803

cond.true.2762:                                   ; preds = %lor.lhs.false.2754, %land.lhs.true.2746, %cond.false.2728, %cond.true.2716, %cond.true.2705, %cond.end.2689, %cond.end.2651
  %489 = load i64, i64* %prefix_length, align 8
  %490 = load i64, i64* %buf_size.addr, align 8
  %cmp2763 = icmp ne i64 %490, 0
  %conv2764 = zext i1 %cmp2763 to i32
  %conv2765 = sext i32 %conv2764 to i64
  %sub2766 = sub nsw i64 %489, %conv2765
  %conv2767 = trunc i64 %sub2766 to i8
  %conv2768 = zext i8 %conv2767 to i32
  %491 = load i64, i64* %retlen, align 8
  %conv2769 = trunc i64 %491 to i8
  %conv2770 = zext i8 %conv2769 to i32
  %add2771 = add nsw i32 %conv2768, %conv2770
  %cmp2772 = icmp sle i32 %add2771, 127
  br i1 %cmp2772, label %cond.true.2774, label %cond.false.2786

cond.true.2774:                                   ; preds = %cond.true.2762
  %492 = load i64, i64* %prefix_length, align 8
  %493 = load i64, i64* %buf_size.addr, align 8
  %cmp2775 = icmp ne i64 %493, 0
  %conv2776 = zext i1 %cmp2775 to i32
  %conv2777 = sext i32 %conv2776 to i64
  %sub2778 = sub nsw i64 %492, %conv2777
  %conv2779 = trunc i64 %sub2778 to i8
  %conv2780 = zext i8 %conv2779 to i32
  %494 = load i64, i64* %retlen, align 8
  %conv2781 = trunc i64 %494 to i8
  %conv2782 = zext i8 %conv2781 to i32
  %add2783 = add nsw i32 %conv2780, %conv2782
  %conv2784 = trunc i32 %add2783 to i8
  %conv2785 = sext i8 %conv2784 to i32
  br label %cond.end.2800

cond.false.2786:                                  ; preds = %cond.true.2762
  %495 = load i64, i64* %prefix_length, align 8
  %496 = load i64, i64* %buf_size.addr, align 8
  %cmp2787 = icmp ne i64 %496, 0
  %conv2788 = zext i1 %cmp2787 to i32
  %conv2789 = sext i32 %conv2788 to i64
  %sub2790 = sub nsw i64 %495, %conv2789
  %conv2791 = trunc i64 %sub2790 to i8
  %conv2792 = zext i8 %conv2791 to i32
  %497 = load i64, i64* %retlen, align 8
  %conv2793 = trunc i64 %497 to i8
  %conv2794 = zext i8 %conv2793 to i32
  %add2795 = add nsw i32 %conv2792, %conv2794
  %sub2796 = sub nsw i32 %add2795, -128
  %conv2797 = trunc i32 %sub2796 to i8
  %conv2798 = sext i8 %conv2797 to i32
  %add2799 = add nsw i32 %conv2798, -128
  br label %cond.end.2800

cond.end.2800:                                    ; preds = %cond.false.2786, %cond.true.2774
  %cond2801 = phi i32 [ %conv2785, %cond.true.2774 ], [ %add2799, %cond.false.2786 ]
  %conv2802 = sext i32 %cond2801 to i64
  store i64 %conv2802, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.2803:                                  ; preds = %lor.lhs.false.2754
  %498 = load i64, i64* %prefix_length, align 8
  %499 = load i64, i64* %buf_size.addr, align 8
  %cmp2804 = icmp ne i64 %499, 0
  %conv2805 = zext i1 %cmp2804 to i32
  %conv2806 = sext i32 %conv2805 to i64
  %sub2807 = sub nsw i64 %498, %conv2806
  %conv2808 = trunc i64 %sub2807 to i8
  %conv2809 = zext i8 %conv2808 to i32
  %500 = load i64, i64* %retlen, align 8
  %conv2810 = trunc i64 %500 to i8
  %conv2811 = zext i8 %conv2810 to i32
  %add2812 = add nsw i32 %conv2809, %conv2811
  %cmp2813 = icmp sle i32 %add2812, 127
  br i1 %cmp2813, label %cond.true.2815, label %cond.false.2827

cond.true.2815:                                   ; preds = %cond.false.2803
  %501 = load i64, i64* %prefix_length, align 8
  %502 = load i64, i64* %buf_size.addr, align 8
  %cmp2816 = icmp ne i64 %502, 0
  %conv2817 = zext i1 %cmp2816 to i32
  %conv2818 = sext i32 %conv2817 to i64
  %sub2819 = sub nsw i64 %501, %conv2818
  %conv2820 = trunc i64 %sub2819 to i8
  %conv2821 = zext i8 %conv2820 to i32
  %503 = load i64, i64* %retlen, align 8
  %conv2822 = trunc i64 %503 to i8
  %conv2823 = zext i8 %conv2822 to i32
  %add2824 = add nsw i32 %conv2821, %conv2823
  %conv2825 = trunc i32 %add2824 to i8
  %conv2826 = sext i8 %conv2825 to i32
  br label %cond.end.2841

cond.false.2827:                                  ; preds = %cond.false.2803
  %504 = load i64, i64* %prefix_length, align 8
  %505 = load i64, i64* %buf_size.addr, align 8
  %cmp2828 = icmp ne i64 %505, 0
  %conv2829 = zext i1 %cmp2828 to i32
  %conv2830 = sext i32 %conv2829 to i64
  %sub2831 = sub nsw i64 %504, %conv2830
  %conv2832 = trunc i64 %sub2831 to i8
  %conv2833 = zext i8 %conv2832 to i32
  %506 = load i64, i64* %retlen, align 8
  %conv2834 = trunc i64 %506 to i8
  %conv2835 = zext i8 %conv2834 to i32
  %add2836 = add nsw i32 %conv2833, %conv2835
  %sub2837 = sub nsw i32 %add2836, -128
  %conv2838 = trunc i32 %sub2837 to i8
  %conv2839 = sext i8 %conv2838 to i32
  %add2840 = add nsw i32 %conv2839, -128
  br label %cond.end.2841

cond.end.2841:                                    ; preds = %cond.false.2827, %cond.true.2815
  %cond2842 = phi i32 [ %conv2826, %cond.true.2815 ], [ %add2840, %cond.false.2827 ]
  %conv2843 = sext i32 %cond2842 to i64
  store i64 %conv2843, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

cond.false.2844:                                  ; preds = %lor.lhs.false.2160
  br i1 false, label %cond.true.2845, label %cond.false.3528

cond.true.2845:                                   ; preds = %cond.false.2844
  br i1 false, label %cond.true.2846, label %cond.false.3230

cond.true.2846:                                   ; preds = %cond.true.2845
  %507 = load i64, i64* %retlen, align 8
  %conv2847 = trunc i64 %507 to i16
  %conv2848 = sext i16 %conv2847 to i32
  %mul2849 = mul nsw i32 0, %conv2848
  %508 = load i64, i64* %prefix_length, align 8
  %509 = load i64, i64* %buf_size.addr, align 8
  %cmp2850 = icmp ne i64 %509, 0
  %conv2851 = zext i1 %cmp2850 to i32
  %conv2852 = sext i32 %conv2851 to i64
  %sub2853 = sub nsw i64 %508, %conv2852
  %conv2854 = trunc i64 %sub2853 to i16
  %conv2855 = sext i16 %conv2854 to i32
  %add2856 = add nsw i32 %mul2849, %conv2855
  %mul2857 = mul nsw i32 0, %add2856
  %sub2858 = sub nsw i32 %mul2857, 1
  %cmp2859 = icmp slt i32 %sub2858, 0
  br i1 %cmp2859, label %cond.true.2861, label %cond.false.2895

cond.true.2861:                                   ; preds = %cond.true.2846
  %510 = load i64, i64* %retlen, align 8
  %conv2862 = trunc i64 %510 to i16
  %conv2863 = sext i16 %conv2862 to i32
  %mul2864 = mul nsw i32 0, %conv2863
  %511 = load i64, i64* %prefix_length, align 8
  %512 = load i64, i64* %buf_size.addr, align 8
  %cmp2865 = icmp ne i64 %512, 0
  %conv2866 = zext i1 %cmp2865 to i32
  %conv2867 = sext i32 %conv2866 to i64
  %sub2868 = sub nsw i64 %511, %conv2867
  %conv2869 = trunc i64 %sub2868 to i16
  %conv2870 = sext i16 %conv2869 to i32
  %add2871 = add nsw i32 %mul2864, %conv2870
  %mul2872 = mul nsw i32 0, %add2871
  %add2873 = add nsw i32 %mul2872, 0
  %neg2874 = xor i32 %add2873, -1
  %cmp2875 = icmp eq i32 %neg2874, -1
  %conv2876 = zext i1 %cmp2875 to i32
  %sub2877 = sub nsw i32 0, %conv2876
  %513 = load i64, i64* %retlen, align 8
  %conv2878 = trunc i64 %513 to i16
  %conv2879 = sext i16 %conv2878 to i32
  %mul2880 = mul nsw i32 0, %conv2879
  %514 = load i64, i64* %prefix_length, align 8
  %515 = load i64, i64* %buf_size.addr, align 8
  %cmp2881 = icmp ne i64 %515, 0
  %conv2882 = zext i1 %cmp2881 to i32
  %conv2883 = sext i32 %conv2882 to i64
  %sub2884 = sub nsw i64 %514, %conv2883
  %conv2885 = trunc i64 %sub2884 to i16
  %conv2886 = sext i16 %conv2885 to i32
  %add2887 = add nsw i32 %mul2880, %conv2886
  %mul2888 = mul nsw i32 0, %add2887
  %add2889 = add nsw i32 %mul2888, 1
  %shl2890 = shl i32 %add2889, 30
  %sub2891 = sub nsw i32 %shl2890, 1
  %mul2892 = mul nsw i32 %sub2891, 2
  %add2893 = add nsw i32 %mul2892, 1
  %sub2894 = sub nsw i32 %sub2877, %add2893
  br label %cond.end.2908

cond.false.2895:                                  ; preds = %cond.true.2846
  %516 = load i64, i64* %retlen, align 8
  %conv2896 = trunc i64 %516 to i16
  %conv2897 = sext i16 %conv2896 to i32
  %mul2898 = mul nsw i32 0, %conv2897
  %517 = load i64, i64* %prefix_length, align 8
  %518 = load i64, i64* %buf_size.addr, align 8
  %cmp2899 = icmp ne i64 %518, 0
  %conv2900 = zext i1 %cmp2899 to i32
  %conv2901 = sext i32 %conv2900 to i64
  %sub2902 = sub nsw i64 %517, %conv2901
  %conv2903 = trunc i64 %sub2902 to i16
  %conv2904 = sext i16 %conv2903 to i32
  %add2905 = add nsw i32 %mul2898, %conv2904
  %mul2906 = mul nsw i32 0, %add2905
  %add2907 = add nsw i32 %mul2906, 0
  br label %cond.end.2908

cond.end.2908:                                    ; preds = %cond.false.2895, %cond.true.2861
  %cond2909 = phi i32 [ %sub2894, %cond.true.2861 ], [ %add2907, %cond.false.2895 ]
  %cmp2910 = icmp slt i32 %cond2909, 0
  br i1 %cmp2910, label %cond.true.2912, label %cond.false.3050

cond.true.2912:                                   ; preds = %cond.end.2908
  %519 = load i64, i64* %retlen, align 8
  %conv2913 = trunc i64 %519 to i16
  %conv2914 = sext i16 %conv2913 to i32
  %cmp2915 = icmp slt i32 %conv2914, 0
  br i1 %cmp2915, label %cond.true.2917, label %cond.false.2992

cond.true.2917:                                   ; preds = %cond.true.2912
  %520 = load i64, i64* %prefix_length, align 8
  %521 = load i64, i64* %buf_size.addr, align 8
  %cmp2918 = icmp ne i64 %521, 0
  %conv2919 = zext i1 %cmp2918 to i32
  %conv2920 = sext i32 %conv2919 to i64
  %sub2921 = sub nsw i64 %520, %conv2920
  %conv2922 = trunc i64 %sub2921 to i16
  %conv2923 = sext i16 %conv2922 to i32
  %522 = load i64, i64* %retlen, align 8
  %conv2924 = trunc i64 %522 to i16
  %conv2925 = sext i16 %conv2924 to i32
  %mul2926 = mul nsw i32 0, %conv2925
  %523 = load i64, i64* %prefix_length, align 8
  %524 = load i64, i64* %buf_size.addr, align 8
  %cmp2927 = icmp ne i64 %524, 0
  %conv2928 = zext i1 %cmp2927 to i32
  %conv2929 = sext i32 %conv2928 to i64
  %sub2930 = sub nsw i64 %523, %conv2929
  %conv2931 = trunc i64 %sub2930 to i16
  %conv2932 = sext i16 %conv2931 to i32
  %add2933 = add nsw i32 %mul2926, %conv2932
  %mul2934 = mul nsw i32 0, %add2933
  %sub2935 = sub nsw i32 %mul2934, 1
  %cmp2936 = icmp slt i32 %sub2935, 0
  br i1 %cmp2936, label %cond.true.2938, label %cond.false.2972

cond.true.2938:                                   ; preds = %cond.true.2917
  %525 = load i64, i64* %retlen, align 8
  %conv2939 = trunc i64 %525 to i16
  %conv2940 = sext i16 %conv2939 to i32
  %mul2941 = mul nsw i32 0, %conv2940
  %526 = load i64, i64* %prefix_length, align 8
  %527 = load i64, i64* %buf_size.addr, align 8
  %cmp2942 = icmp ne i64 %527, 0
  %conv2943 = zext i1 %cmp2942 to i32
  %conv2944 = sext i32 %conv2943 to i64
  %sub2945 = sub nsw i64 %526, %conv2944
  %conv2946 = trunc i64 %sub2945 to i16
  %conv2947 = sext i16 %conv2946 to i32
  %add2948 = add nsw i32 %mul2941, %conv2947
  %mul2949 = mul nsw i32 0, %add2948
  %add2950 = add nsw i32 %mul2949, 0
  %neg2951 = xor i32 %add2950, -1
  %cmp2952 = icmp eq i32 %neg2951, -1
  %conv2953 = zext i1 %cmp2952 to i32
  %sub2954 = sub nsw i32 0, %conv2953
  %528 = load i64, i64* %retlen, align 8
  %conv2955 = trunc i64 %528 to i16
  %conv2956 = sext i16 %conv2955 to i32
  %mul2957 = mul nsw i32 0, %conv2956
  %529 = load i64, i64* %prefix_length, align 8
  %530 = load i64, i64* %buf_size.addr, align 8
  %cmp2958 = icmp ne i64 %530, 0
  %conv2959 = zext i1 %cmp2958 to i32
  %conv2960 = sext i32 %conv2959 to i64
  %sub2961 = sub nsw i64 %529, %conv2960
  %conv2962 = trunc i64 %sub2961 to i16
  %conv2963 = sext i16 %conv2962 to i32
  %add2964 = add nsw i32 %mul2957, %conv2963
  %mul2965 = mul nsw i32 0, %add2964
  %add2966 = add nsw i32 %mul2965, 1
  %shl2967 = shl i32 %add2966, 30
  %sub2968 = sub nsw i32 %shl2967, 1
  %mul2969 = mul nsw i32 %sub2968, 2
  %add2970 = add nsw i32 %mul2969, 1
  %sub2971 = sub nsw i32 %sub2954, %add2970
  br label %cond.end.2985

cond.false.2972:                                  ; preds = %cond.true.2917
  %531 = load i64, i64* %retlen, align 8
  %conv2973 = trunc i64 %531 to i16
  %conv2974 = sext i16 %conv2973 to i32
  %mul2975 = mul nsw i32 0, %conv2974
  %532 = load i64, i64* %prefix_length, align 8
  %533 = load i64, i64* %buf_size.addr, align 8
  %cmp2976 = icmp ne i64 %533, 0
  %conv2977 = zext i1 %cmp2976 to i32
  %conv2978 = sext i32 %conv2977 to i64
  %sub2979 = sub nsw i64 %532, %conv2978
  %conv2980 = trunc i64 %sub2979 to i16
  %conv2981 = sext i16 %conv2980 to i32
  %add2982 = add nsw i32 %mul2975, %conv2981
  %mul2983 = mul nsw i32 0, %add2982
  %add2984 = add nsw i32 %mul2983, 0
  br label %cond.end.2985

cond.end.2985:                                    ; preds = %cond.false.2972, %cond.true.2938
  %cond2986 = phi i32 [ %sub2971, %cond.true.2938 ], [ %add2984, %cond.false.2972 ]
  %534 = load i64, i64* %retlen, align 8
  %conv2987 = trunc i64 %534 to i16
  %conv2988 = sext i16 %conv2987 to i32
  %sub2989 = sub nsw i32 %cond2986, %conv2988
  %cmp2990 = icmp slt i32 %conv2923, %sub2989
  br i1 %cmp2990, label %cond.true.3148, label %lor.lhs.false.3110

cond.false.2992:                                  ; preds = %cond.true.2912
  %535 = load i64, i64* %retlen, align 8
  %conv2993 = trunc i64 %535 to i16
  %conv2994 = sext i16 %conv2993 to i32
  %mul2995 = mul nsw i32 0, %conv2994
  %536 = load i64, i64* %prefix_length, align 8
  %537 = load i64, i64* %buf_size.addr, align 8
  %cmp2996 = icmp ne i64 %537, 0
  %conv2997 = zext i1 %cmp2996 to i32
  %conv2998 = sext i32 %conv2997 to i64
  %sub2999 = sub nsw i64 %536, %conv2998
  %conv3000 = trunc i64 %sub2999 to i16
  %conv3001 = sext i16 %conv3000 to i32
  %add3002 = add nsw i32 %mul2995, %conv3001
  %mul3003 = mul nsw i32 0, %add3002
  %sub3004 = sub nsw i32 %mul3003, 1
  %cmp3005 = icmp slt i32 %sub3004, 0
  br i1 %cmp3005, label %cond.true.3007, label %cond.false.3024

cond.true.3007:                                   ; preds = %cond.false.2992
  %538 = load i64, i64* %retlen, align 8
  %conv3008 = trunc i64 %538 to i16
  %conv3009 = sext i16 %conv3008 to i32
  %mul3010 = mul nsw i32 0, %conv3009
  %539 = load i64, i64* %prefix_length, align 8
  %540 = load i64, i64* %buf_size.addr, align 8
  %cmp3011 = icmp ne i64 %540, 0
  %conv3012 = zext i1 %cmp3011 to i32
  %conv3013 = sext i32 %conv3012 to i64
  %sub3014 = sub nsw i64 %539, %conv3013
  %conv3015 = trunc i64 %sub3014 to i16
  %conv3016 = sext i16 %conv3015 to i32
  %add3017 = add nsw i32 %mul3010, %conv3016
  %mul3018 = mul nsw i32 0, %add3017
  %add3019 = add nsw i32 %mul3018, 1
  %shl3020 = shl i32 %add3019, 30
  %sub3021 = sub nsw i32 %shl3020, 1
  %mul3022 = mul nsw i32 %sub3021, 2
  %add3023 = add nsw i32 %mul3022, 1
  br label %cond.end.3037

cond.false.3024:                                  ; preds = %cond.false.2992
  %541 = load i64, i64* %retlen, align 8
  %conv3025 = trunc i64 %541 to i16
  %conv3026 = sext i16 %conv3025 to i32
  %mul3027 = mul nsw i32 0, %conv3026
  %542 = load i64, i64* %prefix_length, align 8
  %543 = load i64, i64* %buf_size.addr, align 8
  %cmp3028 = icmp ne i64 %543, 0
  %conv3029 = zext i1 %cmp3028 to i32
  %conv3030 = sext i32 %conv3029 to i64
  %sub3031 = sub nsw i64 %542, %conv3030
  %conv3032 = trunc i64 %sub3031 to i16
  %conv3033 = sext i16 %conv3032 to i32
  %add3034 = add nsw i32 %mul3027, %conv3033
  %mul3035 = mul nsw i32 0, %add3034
  %sub3036 = sub nsw i32 %mul3035, 1
  br label %cond.end.3037

cond.end.3037:                                    ; preds = %cond.false.3024, %cond.true.3007
  %cond3038 = phi i32 [ %add3023, %cond.true.3007 ], [ %sub3036, %cond.false.3024 ]
  %544 = load i64, i64* %retlen, align 8
  %conv3039 = trunc i64 %544 to i16
  %conv3040 = sext i16 %conv3039 to i32
  %sub3041 = sub nsw i32 %cond3038, %conv3040
  %545 = load i64, i64* %prefix_length, align 8
  %546 = load i64, i64* %buf_size.addr, align 8
  %cmp3042 = icmp ne i64 %546, 0
  %conv3043 = zext i1 %cmp3042 to i32
  %conv3044 = sext i32 %conv3043 to i64
  %sub3045 = sub nsw i64 %545, %conv3044
  %conv3046 = trunc i64 %sub3045 to i16
  %conv3047 = sext i16 %conv3046 to i32
  %cmp3048 = icmp slt i32 %sub3041, %conv3047
  br i1 %cmp3048, label %cond.true.3148, label %lor.lhs.false.3110

cond.false.3050:                                  ; preds = %cond.end.2908
  %547 = load i64, i64* %prefix_length, align 8
  %548 = load i64, i64* %buf_size.addr, align 8
  %cmp3051 = icmp ne i64 %548, 0
  %conv3052 = zext i1 %cmp3051 to i32
  %conv3053 = sext i32 %conv3052 to i64
  %sub3054 = sub nsw i64 %547, %conv3053
  %conv3055 = trunc i64 %sub3054 to i16
  %conv3056 = sext i16 %conv3055 to i32
  %cmp3057 = icmp slt i32 %conv3056, 0
  br i1 %cmp3057, label %cond.true.3059, label %cond.false.3073

cond.true.3059:                                   ; preds = %cond.false.3050
  %549 = load i64, i64* %retlen, align 8
  %conv3060 = trunc i64 %549 to i16
  %conv3061 = sext i16 %conv3060 to i32
  %550 = load i64, i64* %prefix_length, align 8
  %551 = load i64, i64* %buf_size.addr, align 8
  %cmp3062 = icmp ne i64 %551, 0
  %conv3063 = zext i1 %cmp3062 to i32
  %conv3064 = sext i32 %conv3063 to i64
  %sub3065 = sub nsw i64 %550, %conv3064
  %conv3066 = trunc i64 %sub3065 to i16
  %conv3067 = sext i16 %conv3066 to i32
  %552 = load i64, i64* %retlen, align 8
  %conv3068 = trunc i64 %552 to i16
  %conv3069 = sext i16 %conv3068 to i32
  %add3070 = add nsw i32 %conv3067, %conv3069
  %cmp3071 = icmp sle i32 %conv3061, %add3070
  br i1 %cmp3071, label %cond.true.3148, label %lor.lhs.false.3110

cond.false.3073:                                  ; preds = %cond.false.3050
  %553 = load i64, i64* %retlen, align 8
  %conv3074 = trunc i64 %553 to i16
  %conv3075 = sext i16 %conv3074 to i32
  %cmp3076 = icmp slt i32 %conv3075, 0
  br i1 %cmp3076, label %cond.true.3078, label %cond.false.3096

cond.true.3078:                                   ; preds = %cond.false.3073
  %554 = load i64, i64* %prefix_length, align 8
  %555 = load i64, i64* %buf_size.addr, align 8
  %cmp3079 = icmp ne i64 %555, 0
  %conv3080 = zext i1 %cmp3079 to i32
  %conv3081 = sext i32 %conv3080 to i64
  %sub3082 = sub nsw i64 %554, %conv3081
  %conv3083 = trunc i64 %sub3082 to i16
  %conv3084 = sext i16 %conv3083 to i32
  %556 = load i64, i64* %prefix_length, align 8
  %557 = load i64, i64* %buf_size.addr, align 8
  %cmp3085 = icmp ne i64 %557, 0
  %conv3086 = zext i1 %cmp3085 to i32
  %conv3087 = sext i32 %conv3086 to i64
  %sub3088 = sub nsw i64 %556, %conv3087
  %conv3089 = trunc i64 %sub3088 to i16
  %conv3090 = sext i16 %conv3089 to i32
  %558 = load i64, i64* %retlen, align 8
  %conv3091 = trunc i64 %558 to i16
  %conv3092 = sext i16 %conv3091 to i32
  %add3093 = add nsw i32 %conv3090, %conv3092
  %cmp3094 = icmp sle i32 %conv3084, %add3093
  br i1 %cmp3094, label %cond.true.3148, label %lor.lhs.false.3110

cond.false.3096:                                  ; preds = %cond.false.3073
  %559 = load i64, i64* %prefix_length, align 8
  %560 = load i64, i64* %buf_size.addr, align 8
  %cmp3097 = icmp ne i64 %560, 0
  %conv3098 = zext i1 %cmp3097 to i32
  %conv3099 = sext i32 %conv3098 to i64
  %sub3100 = sub nsw i64 %559, %conv3099
  %conv3101 = trunc i64 %sub3100 to i16
  %conv3102 = sext i16 %conv3101 to i32
  %561 = load i64, i64* %retlen, align 8
  %conv3103 = trunc i64 %561 to i16
  %conv3104 = sext i16 %conv3103 to i32
  %add3105 = add nsw i32 %conv3102, %conv3104
  %562 = load i64, i64* %retlen, align 8
  %conv3106 = trunc i64 %562 to i16
  %conv3107 = sext i16 %conv3106 to i32
  %cmp3108 = icmp slt i32 %add3105, %conv3107
  br i1 %cmp3108, label %cond.true.3148, label %lor.lhs.false.3110

lor.lhs.false.3110:                               ; preds = %cond.false.3096, %cond.true.3078, %cond.true.3059, %cond.end.3037, %cond.end.2985
  %563 = load i64, i64* %prefix_length, align 8
  %564 = load i64, i64* %buf_size.addr, align 8
  %cmp3111 = icmp ne i64 %564, 0
  %conv3112 = zext i1 %cmp3111 to i32
  %conv3113 = sext i32 %conv3112 to i64
  %sub3114 = sub nsw i64 %563, %conv3113
  %conv3115 = trunc i64 %sub3114 to i16
  %conv3116 = sext i16 %conv3115 to i32
  %565 = load i64, i64* %retlen, align 8
  %conv3117 = trunc i64 %565 to i16
  %conv3118 = sext i16 %conv3117 to i32
  %add3119 = add nsw i32 %conv3116, %conv3118
  %mul3120 = mul nsw i32 0, %add3119
  %sub3121 = sub nsw i32 %mul3120, 1
  %cmp3122 = icmp slt i32 %sub3121, 0
  br i1 %cmp3122, label %land.lhs.true.3124, label %lor.lhs.false.3136

land.lhs.true.3124:                               ; preds = %lor.lhs.false.3110
  %566 = load i64, i64* %prefix_length, align 8
  %567 = load i64, i64* %buf_size.addr, align 8
  %cmp3125 = icmp ne i64 %567, 0
  %conv3126 = zext i1 %cmp3125 to i32
  %conv3127 = sext i32 %conv3126 to i64
  %sub3128 = sub nsw i64 %566, %conv3127
  %conv3129 = trunc i64 %sub3128 to i16
  %conv3130 = sext i16 %conv3129 to i32
  %568 = load i64, i64* %retlen, align 8
  %conv3131 = trunc i64 %568 to i16
  %conv3132 = sext i16 %conv3131 to i32
  %add3133 = add nsw i32 %conv3130, %conv3132
  %cmp3134 = icmp slt i32 %add3133, -32768
  br i1 %cmp3134, label %cond.true.3148, label %lor.lhs.false.3136

lor.lhs.false.3136:                               ; preds = %land.lhs.true.3124, %lor.lhs.false.3110
  %569 = load i64, i64* %prefix_length, align 8
  %570 = load i64, i64* %buf_size.addr, align 8
  %cmp3137 = icmp ne i64 %570, 0
  %conv3138 = zext i1 %cmp3137 to i32
  %conv3139 = sext i32 %conv3138 to i64
  %sub3140 = sub nsw i64 %569, %conv3139
  %conv3141 = trunc i64 %sub3140 to i16
  %conv3142 = sext i16 %conv3141 to i32
  %571 = load i64, i64* %retlen, align 8
  %conv3143 = trunc i64 %571 to i16
  %conv3144 = sext i16 %conv3143 to i32
  %add3145 = add nsw i32 %conv3142, %conv3144
  %cmp3146 = icmp slt i32 32767, %add3145
  br i1 %cmp3146, label %cond.true.3148, label %cond.false.3189

cond.true.3148:                                   ; preds = %lor.lhs.false.3136, %land.lhs.true.3124, %cond.false.3096, %cond.true.3078, %cond.true.3059, %cond.end.3037, %cond.end.2985
  %572 = load i64, i64* %prefix_length, align 8
  %573 = load i64, i64* %buf_size.addr, align 8
  %cmp3149 = icmp ne i64 %573, 0
  %conv3150 = zext i1 %cmp3149 to i32
  %conv3151 = sext i32 %conv3150 to i64
  %sub3152 = sub nsw i64 %572, %conv3151
  %conv3153 = trunc i64 %sub3152 to i16
  %conv3154 = zext i16 %conv3153 to i32
  %574 = load i64, i64* %retlen, align 8
  %conv3155 = trunc i64 %574 to i16
  %conv3156 = zext i16 %conv3155 to i32
  %add3157 = add nsw i32 %conv3154, %conv3156
  %cmp3158 = icmp sle i32 %add3157, 32767
  br i1 %cmp3158, label %cond.true.3160, label %cond.false.3172

cond.true.3160:                                   ; preds = %cond.true.3148
  %575 = load i64, i64* %prefix_length, align 8
  %576 = load i64, i64* %buf_size.addr, align 8
  %cmp3161 = icmp ne i64 %576, 0
  %conv3162 = zext i1 %cmp3161 to i32
  %conv3163 = sext i32 %conv3162 to i64
  %sub3164 = sub nsw i64 %575, %conv3163
  %conv3165 = trunc i64 %sub3164 to i16
  %conv3166 = zext i16 %conv3165 to i32
  %577 = load i64, i64* %retlen, align 8
  %conv3167 = trunc i64 %577 to i16
  %conv3168 = zext i16 %conv3167 to i32
  %add3169 = add nsw i32 %conv3166, %conv3168
  %conv3170 = trunc i32 %add3169 to i16
  %conv3171 = sext i16 %conv3170 to i32
  br label %cond.end.3186

cond.false.3172:                                  ; preds = %cond.true.3148
  %578 = load i64, i64* %prefix_length, align 8
  %579 = load i64, i64* %buf_size.addr, align 8
  %cmp3173 = icmp ne i64 %579, 0
  %conv3174 = zext i1 %cmp3173 to i32
  %conv3175 = sext i32 %conv3174 to i64
  %sub3176 = sub nsw i64 %578, %conv3175
  %conv3177 = trunc i64 %sub3176 to i16
  %conv3178 = zext i16 %conv3177 to i32
  %580 = load i64, i64* %retlen, align 8
  %conv3179 = trunc i64 %580 to i16
  %conv3180 = zext i16 %conv3179 to i32
  %add3181 = add nsw i32 %conv3178, %conv3180
  %sub3182 = sub nsw i32 %add3181, -32768
  %conv3183 = trunc i32 %sub3182 to i16
  %conv3184 = sext i16 %conv3183 to i32
  %add3185 = add nsw i32 %conv3184, -32768
  br label %cond.end.3186

cond.end.3186:                                    ; preds = %cond.false.3172, %cond.true.3160
  %cond3187 = phi i32 [ %conv3171, %cond.true.3160 ], [ %add3185, %cond.false.3172 ]
  %conv3188 = sext i32 %cond3187 to i64
  store i64 %conv3188, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.3189:                                  ; preds = %lor.lhs.false.3136
  %581 = load i64, i64* %prefix_length, align 8
  %582 = load i64, i64* %buf_size.addr, align 8
  %cmp3190 = icmp ne i64 %582, 0
  %conv3191 = zext i1 %cmp3190 to i32
  %conv3192 = sext i32 %conv3191 to i64
  %sub3193 = sub nsw i64 %581, %conv3192
  %conv3194 = trunc i64 %sub3193 to i16
  %conv3195 = zext i16 %conv3194 to i32
  %583 = load i64, i64* %retlen, align 8
  %conv3196 = trunc i64 %583 to i16
  %conv3197 = zext i16 %conv3196 to i32
  %add3198 = add nsw i32 %conv3195, %conv3197
  %cmp3199 = icmp sle i32 %add3198, 32767
  br i1 %cmp3199, label %cond.true.3201, label %cond.false.3213

cond.true.3201:                                   ; preds = %cond.false.3189
  %584 = load i64, i64* %prefix_length, align 8
  %585 = load i64, i64* %buf_size.addr, align 8
  %cmp3202 = icmp ne i64 %585, 0
  %conv3203 = zext i1 %cmp3202 to i32
  %conv3204 = sext i32 %conv3203 to i64
  %sub3205 = sub nsw i64 %584, %conv3204
  %conv3206 = trunc i64 %sub3205 to i16
  %conv3207 = zext i16 %conv3206 to i32
  %586 = load i64, i64* %retlen, align 8
  %conv3208 = trunc i64 %586 to i16
  %conv3209 = zext i16 %conv3208 to i32
  %add3210 = add nsw i32 %conv3207, %conv3209
  %conv3211 = trunc i32 %add3210 to i16
  %conv3212 = sext i16 %conv3211 to i32
  br label %cond.end.3227

cond.false.3213:                                  ; preds = %cond.false.3189
  %587 = load i64, i64* %prefix_length, align 8
  %588 = load i64, i64* %buf_size.addr, align 8
  %cmp3214 = icmp ne i64 %588, 0
  %conv3215 = zext i1 %cmp3214 to i32
  %conv3216 = sext i32 %conv3215 to i64
  %sub3217 = sub nsw i64 %587, %conv3216
  %conv3218 = trunc i64 %sub3217 to i16
  %conv3219 = zext i16 %conv3218 to i32
  %589 = load i64, i64* %retlen, align 8
  %conv3220 = trunc i64 %589 to i16
  %conv3221 = zext i16 %conv3220 to i32
  %add3222 = add nsw i32 %conv3219, %conv3221
  %sub3223 = sub nsw i32 %add3222, -32768
  %conv3224 = trunc i32 %sub3223 to i16
  %conv3225 = sext i16 %conv3224 to i32
  %add3226 = add nsw i32 %conv3225, -32768
  br label %cond.end.3227

cond.end.3227:                                    ; preds = %cond.false.3213, %cond.true.3201
  %cond3228 = phi i32 [ %conv3212, %cond.true.3201 ], [ %add3226, %cond.false.3213 ]
  %conv3229 = sext i32 %cond3228 to i64
  store i64 %conv3229, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

cond.false.3230:                                  ; preds = %cond.true.2845
  %590 = load i64, i64* %retlen, align 8
  %mul3231 = mul nsw i64 0, %590
  %591 = load i64, i64* %prefix_length, align 8
  %592 = load i64, i64* %buf_size.addr, align 8
  %cmp3232 = icmp ne i64 %592, 0
  %conv3233 = zext i1 %cmp3232 to i32
  %conv3234 = sext i32 %conv3233 to i64
  %sub3235 = sub nsw i64 %591, %conv3234
  %add3236 = add nsw i64 %mul3231, %sub3235
  %mul3237 = mul nsw i64 0, %add3236
  %sub3238 = sub nsw i64 %mul3237, 1
  %cmp3239 = icmp slt i64 %sub3238, 0
  br i1 %cmp3239, label %cond.true.3241, label %cond.false.3268

cond.true.3241:                                   ; preds = %cond.false.3230
  %593 = load i64, i64* %retlen, align 8
  %mul3242 = mul nsw i64 0, %593
  %594 = load i64, i64* %prefix_length, align 8
  %595 = load i64, i64* %buf_size.addr, align 8
  %cmp3243 = icmp ne i64 %595, 0
  %conv3244 = zext i1 %cmp3243 to i32
  %conv3245 = sext i32 %conv3244 to i64
  %sub3246 = sub nsw i64 %594, %conv3245
  %add3247 = add nsw i64 %mul3242, %sub3246
  %mul3248 = mul nsw i64 0, %add3247
  %add3249 = add nsw i64 %mul3248, 0
  %neg3250 = xor i64 %add3249, -1
  %cmp3251 = icmp eq i64 %neg3250, -1
  %conv3252 = zext i1 %cmp3251 to i32
  %sub3253 = sub nsw i32 0, %conv3252
  %conv3254 = sext i32 %sub3253 to i64
  %596 = load i64, i64* %retlen, align 8
  %mul3255 = mul nsw i64 0, %596
  %597 = load i64, i64* %prefix_length, align 8
  %598 = load i64, i64* %buf_size.addr, align 8
  %cmp3256 = icmp ne i64 %598, 0
  %conv3257 = zext i1 %cmp3256 to i32
  %conv3258 = sext i32 %conv3257 to i64
  %sub3259 = sub nsw i64 %597, %conv3258
  %add3260 = add nsw i64 %mul3255, %sub3259
  %mul3261 = mul nsw i64 0, %add3260
  %add3262 = add nsw i64 %mul3261, 1
  %shl3263 = shl i64 %add3262, 62
  %sub3264 = sub nsw i64 %shl3263, 1
  %mul3265 = mul nsw i64 %sub3264, 2
  %add3266 = add nsw i64 %mul3265, 1
  %sub3267 = sub nsw i64 %conv3254, %add3266
  br label %cond.end.3277

cond.false.3268:                                  ; preds = %cond.false.3230
  %599 = load i64, i64* %retlen, align 8
  %mul3269 = mul nsw i64 0, %599
  %600 = load i64, i64* %prefix_length, align 8
  %601 = load i64, i64* %buf_size.addr, align 8
  %cmp3270 = icmp ne i64 %601, 0
  %conv3271 = zext i1 %cmp3270 to i32
  %conv3272 = sext i32 %conv3271 to i64
  %sub3273 = sub nsw i64 %600, %conv3272
  %add3274 = add nsw i64 %mul3269, %sub3273
  %mul3275 = mul nsw i64 0, %add3274
  %add3276 = add nsw i64 %mul3275, 0
  br label %cond.end.3277

cond.end.3277:                                    ; preds = %cond.false.3268, %cond.true.3241
  %cond3278 = phi i64 [ %sub3267, %cond.true.3241 ], [ %add3276, %cond.false.3268 ]
  %cmp3279 = icmp slt i64 %cond3278, 0
  br i1 %cmp3279, label %cond.true.3281, label %cond.false.3382

cond.true.3281:                                   ; preds = %cond.end.3277
  %602 = load i64, i64* %retlen, align 8
  %cmp3282 = icmp slt i64 %602, 0
  br i1 %cmp3282, label %cond.true.3284, label %cond.false.3340

cond.true.3284:                                   ; preds = %cond.true.3281
  %603 = load i64, i64* %prefix_length, align 8
  %604 = load i64, i64* %buf_size.addr, align 8
  %cmp3285 = icmp ne i64 %604, 0
  %conv3286 = zext i1 %cmp3285 to i32
  %conv3287 = sext i32 %conv3286 to i64
  %sub3288 = sub nsw i64 %603, %conv3287
  %605 = load i64, i64* %retlen, align 8
  %mul3289 = mul nsw i64 0, %605
  %606 = load i64, i64* %prefix_length, align 8
  %607 = load i64, i64* %buf_size.addr, align 8
  %cmp3290 = icmp ne i64 %607, 0
  %conv3291 = zext i1 %cmp3290 to i32
  %conv3292 = sext i32 %conv3291 to i64
  %sub3293 = sub nsw i64 %606, %conv3292
  %add3294 = add nsw i64 %mul3289, %sub3293
  %mul3295 = mul nsw i64 0, %add3294
  %sub3296 = sub nsw i64 %mul3295, 1
  %cmp3297 = icmp slt i64 %sub3296, 0
  br i1 %cmp3297, label %cond.true.3299, label %cond.false.3326

cond.true.3299:                                   ; preds = %cond.true.3284
  %608 = load i64, i64* %retlen, align 8
  %mul3300 = mul nsw i64 0, %608
  %609 = load i64, i64* %prefix_length, align 8
  %610 = load i64, i64* %buf_size.addr, align 8
  %cmp3301 = icmp ne i64 %610, 0
  %conv3302 = zext i1 %cmp3301 to i32
  %conv3303 = sext i32 %conv3302 to i64
  %sub3304 = sub nsw i64 %609, %conv3303
  %add3305 = add nsw i64 %mul3300, %sub3304
  %mul3306 = mul nsw i64 0, %add3305
  %add3307 = add nsw i64 %mul3306, 0
  %neg3308 = xor i64 %add3307, -1
  %cmp3309 = icmp eq i64 %neg3308, -1
  %conv3310 = zext i1 %cmp3309 to i32
  %sub3311 = sub nsw i32 0, %conv3310
  %conv3312 = sext i32 %sub3311 to i64
  %611 = load i64, i64* %retlen, align 8
  %mul3313 = mul nsw i64 0, %611
  %612 = load i64, i64* %prefix_length, align 8
  %613 = load i64, i64* %buf_size.addr, align 8
  %cmp3314 = icmp ne i64 %613, 0
  %conv3315 = zext i1 %cmp3314 to i32
  %conv3316 = sext i32 %conv3315 to i64
  %sub3317 = sub nsw i64 %612, %conv3316
  %add3318 = add nsw i64 %mul3313, %sub3317
  %mul3319 = mul nsw i64 0, %add3318
  %add3320 = add nsw i64 %mul3319, 1
  %shl3321 = shl i64 %add3320, 62
  %sub3322 = sub nsw i64 %shl3321, 1
  %mul3323 = mul nsw i64 %sub3322, 2
  %add3324 = add nsw i64 %mul3323, 1
  %sub3325 = sub nsw i64 %conv3312, %add3324
  br label %cond.end.3335

cond.false.3326:                                  ; preds = %cond.true.3284
  %614 = load i64, i64* %retlen, align 8
  %mul3327 = mul nsw i64 0, %614
  %615 = load i64, i64* %prefix_length, align 8
  %616 = load i64, i64* %buf_size.addr, align 8
  %cmp3328 = icmp ne i64 %616, 0
  %conv3329 = zext i1 %cmp3328 to i32
  %conv3330 = sext i32 %conv3329 to i64
  %sub3331 = sub nsw i64 %615, %conv3330
  %add3332 = add nsw i64 %mul3327, %sub3331
  %mul3333 = mul nsw i64 0, %add3332
  %add3334 = add nsw i64 %mul3333, 0
  br label %cond.end.3335

cond.end.3335:                                    ; preds = %cond.false.3326, %cond.true.3299
  %cond3336 = phi i64 [ %sub3325, %cond.true.3299 ], [ %add3334, %cond.false.3326 ]
  %617 = load i64, i64* %retlen, align 8
  %sub3337 = sub nsw i64 %cond3336, %617
  %cmp3338 = icmp slt i64 %sub3288, %sub3337
  br i1 %cmp3338, label %cond.true.3446, label %lor.lhs.false.3420

cond.false.3340:                                  ; preds = %cond.true.3281
  %618 = load i64, i64* %retlen, align 8
  %mul3341 = mul nsw i64 0, %618
  %619 = load i64, i64* %prefix_length, align 8
  %620 = load i64, i64* %buf_size.addr, align 8
  %cmp3342 = icmp ne i64 %620, 0
  %conv3343 = zext i1 %cmp3342 to i32
  %conv3344 = sext i32 %conv3343 to i64
  %sub3345 = sub nsw i64 %619, %conv3344
  %add3346 = add nsw i64 %mul3341, %sub3345
  %mul3347 = mul nsw i64 0, %add3346
  %sub3348 = sub nsw i64 %mul3347, 1
  %cmp3349 = icmp slt i64 %sub3348, 0
  br i1 %cmp3349, label %cond.true.3351, label %cond.false.3364

cond.true.3351:                                   ; preds = %cond.false.3340
  %621 = load i64, i64* %retlen, align 8
  %mul3352 = mul nsw i64 0, %621
  %622 = load i64, i64* %prefix_length, align 8
  %623 = load i64, i64* %buf_size.addr, align 8
  %cmp3353 = icmp ne i64 %623, 0
  %conv3354 = zext i1 %cmp3353 to i32
  %conv3355 = sext i32 %conv3354 to i64
  %sub3356 = sub nsw i64 %622, %conv3355
  %add3357 = add nsw i64 %mul3352, %sub3356
  %mul3358 = mul nsw i64 0, %add3357
  %add3359 = add nsw i64 %mul3358, 1
  %shl3360 = shl i64 %add3359, 62
  %sub3361 = sub nsw i64 %shl3360, 1
  %mul3362 = mul nsw i64 %sub3361, 2
  %add3363 = add nsw i64 %mul3362, 1
  br label %cond.end.3373

cond.false.3364:                                  ; preds = %cond.false.3340
  %624 = load i64, i64* %retlen, align 8
  %mul3365 = mul nsw i64 0, %624
  %625 = load i64, i64* %prefix_length, align 8
  %626 = load i64, i64* %buf_size.addr, align 8
  %cmp3366 = icmp ne i64 %626, 0
  %conv3367 = zext i1 %cmp3366 to i32
  %conv3368 = sext i32 %conv3367 to i64
  %sub3369 = sub nsw i64 %625, %conv3368
  %add3370 = add nsw i64 %mul3365, %sub3369
  %mul3371 = mul nsw i64 0, %add3370
  %sub3372 = sub nsw i64 %mul3371, 1
  br label %cond.end.3373

cond.end.3373:                                    ; preds = %cond.false.3364, %cond.true.3351
  %cond3374 = phi i64 [ %add3363, %cond.true.3351 ], [ %sub3372, %cond.false.3364 ]
  %627 = load i64, i64* %retlen, align 8
  %sub3375 = sub nsw i64 %cond3374, %627
  %628 = load i64, i64* %prefix_length, align 8
  %629 = load i64, i64* %buf_size.addr, align 8
  %cmp3376 = icmp ne i64 %629, 0
  %conv3377 = zext i1 %cmp3376 to i32
  %conv3378 = sext i32 %conv3377 to i64
  %sub3379 = sub nsw i64 %628, %conv3378
  %cmp3380 = icmp slt i64 %sub3375, %sub3379
  br i1 %cmp3380, label %cond.true.3446, label %lor.lhs.false.3420

cond.false.3382:                                  ; preds = %cond.end.3277
  %630 = load i64, i64* %prefix_length, align 8
  %631 = load i64, i64* %buf_size.addr, align 8
  %cmp3383 = icmp ne i64 %631, 0
  %conv3384 = zext i1 %cmp3383 to i32
  %conv3385 = sext i32 %conv3384 to i64
  %sub3386 = sub nsw i64 %630, %conv3385
  %cmp3387 = icmp slt i64 %sub3386, 0
  br i1 %cmp3387, label %cond.true.3389, label %cond.false.3397

cond.true.3389:                                   ; preds = %cond.false.3382
  %632 = load i64, i64* %retlen, align 8
  %633 = load i64, i64* %prefix_length, align 8
  %634 = load i64, i64* %buf_size.addr, align 8
  %cmp3390 = icmp ne i64 %634, 0
  %conv3391 = zext i1 %cmp3390 to i32
  %conv3392 = sext i32 %conv3391 to i64
  %sub3393 = sub nsw i64 %633, %conv3392
  %635 = load i64, i64* %retlen, align 8
  %add3394 = add nsw i64 %sub3393, %635
  %cmp3395 = icmp sle i64 %632, %add3394
  br i1 %cmp3395, label %cond.true.3446, label %lor.lhs.false.3420

cond.false.3397:                                  ; preds = %cond.false.3382
  %636 = load i64, i64* %retlen, align 8
  %cmp3398 = icmp slt i64 %636, 0
  br i1 %cmp3398, label %cond.true.3400, label %cond.false.3412

cond.true.3400:                                   ; preds = %cond.false.3397
  %637 = load i64, i64* %prefix_length, align 8
  %638 = load i64, i64* %buf_size.addr, align 8
  %cmp3401 = icmp ne i64 %638, 0
  %conv3402 = zext i1 %cmp3401 to i32
  %conv3403 = sext i32 %conv3402 to i64
  %sub3404 = sub nsw i64 %637, %conv3403
  %639 = load i64, i64* %prefix_length, align 8
  %640 = load i64, i64* %buf_size.addr, align 8
  %cmp3405 = icmp ne i64 %640, 0
  %conv3406 = zext i1 %cmp3405 to i32
  %conv3407 = sext i32 %conv3406 to i64
  %sub3408 = sub nsw i64 %639, %conv3407
  %641 = load i64, i64* %retlen, align 8
  %add3409 = add nsw i64 %sub3408, %641
  %cmp3410 = icmp sle i64 %sub3404, %add3409
  br i1 %cmp3410, label %cond.true.3446, label %lor.lhs.false.3420

cond.false.3412:                                  ; preds = %cond.false.3397
  %642 = load i64, i64* %prefix_length, align 8
  %643 = load i64, i64* %buf_size.addr, align 8
  %cmp3413 = icmp ne i64 %643, 0
  %conv3414 = zext i1 %cmp3413 to i32
  %conv3415 = sext i32 %conv3414 to i64
  %sub3416 = sub nsw i64 %642, %conv3415
  %644 = load i64, i64* %retlen, align 8
  %add3417 = add nsw i64 %sub3416, %644
  %645 = load i64, i64* %retlen, align 8
  %cmp3418 = icmp slt i64 %add3417, %645
  br i1 %cmp3418, label %cond.true.3446, label %lor.lhs.false.3420

lor.lhs.false.3420:                               ; preds = %cond.false.3412, %cond.true.3400, %cond.true.3389, %cond.end.3373, %cond.end.3335
  %646 = load i64, i64* %prefix_length, align 8
  %647 = load i64, i64* %buf_size.addr, align 8
  %cmp3421 = icmp ne i64 %647, 0
  %conv3422 = zext i1 %cmp3421 to i32
  %conv3423 = sext i32 %conv3422 to i64
  %sub3424 = sub nsw i64 %646, %conv3423
  %648 = load i64, i64* %retlen, align 8
  %add3425 = add nsw i64 %sub3424, %648
  %mul3426 = mul nsw i64 0, %add3425
  %sub3427 = sub nsw i64 %mul3426, 1
  %cmp3428 = icmp slt i64 %sub3427, 0
  br i1 %cmp3428, label %land.lhs.true.3430, label %lor.lhs.false.3438

land.lhs.true.3430:                               ; preds = %lor.lhs.false.3420
  %649 = load i64, i64* %prefix_length, align 8
  %650 = load i64, i64* %buf_size.addr, align 8
  %cmp3431 = icmp ne i64 %650, 0
  %conv3432 = zext i1 %cmp3431 to i32
  %conv3433 = sext i32 %conv3432 to i64
  %sub3434 = sub nsw i64 %649, %conv3433
  %651 = load i64, i64* %retlen, align 8
  %add3435 = add nsw i64 %sub3434, %651
  %cmp3436 = icmp slt i64 %add3435, -32768
  br i1 %cmp3436, label %cond.true.3446, label %lor.lhs.false.3438

lor.lhs.false.3438:                               ; preds = %land.lhs.true.3430, %lor.lhs.false.3420
  %652 = load i64, i64* %prefix_length, align 8
  %653 = load i64, i64* %buf_size.addr, align 8
  %cmp3439 = icmp ne i64 %653, 0
  %conv3440 = zext i1 %cmp3439 to i32
  %conv3441 = sext i32 %conv3440 to i64
  %sub3442 = sub nsw i64 %652, %conv3441
  %654 = load i64, i64* %retlen, align 8
  %add3443 = add nsw i64 %sub3442, %654
  %cmp3444 = icmp slt i64 32767, %add3443
  br i1 %cmp3444, label %cond.true.3446, label %cond.false.3487

cond.true.3446:                                   ; preds = %lor.lhs.false.3438, %land.lhs.true.3430, %cond.false.3412, %cond.true.3400, %cond.true.3389, %cond.end.3373, %cond.end.3335
  %655 = load i64, i64* %prefix_length, align 8
  %656 = load i64, i64* %buf_size.addr, align 8
  %cmp3447 = icmp ne i64 %656, 0
  %conv3448 = zext i1 %cmp3447 to i32
  %conv3449 = sext i32 %conv3448 to i64
  %sub3450 = sub nsw i64 %655, %conv3449
  %conv3451 = trunc i64 %sub3450 to i16
  %conv3452 = zext i16 %conv3451 to i32
  %657 = load i64, i64* %retlen, align 8
  %conv3453 = trunc i64 %657 to i16
  %conv3454 = zext i16 %conv3453 to i32
  %add3455 = add nsw i32 %conv3452, %conv3454
  %cmp3456 = icmp sle i32 %add3455, 32767
  br i1 %cmp3456, label %cond.true.3458, label %cond.false.3470

cond.true.3458:                                   ; preds = %cond.true.3446
  %658 = load i64, i64* %prefix_length, align 8
  %659 = load i64, i64* %buf_size.addr, align 8
  %cmp3459 = icmp ne i64 %659, 0
  %conv3460 = zext i1 %cmp3459 to i32
  %conv3461 = sext i32 %conv3460 to i64
  %sub3462 = sub nsw i64 %658, %conv3461
  %conv3463 = trunc i64 %sub3462 to i16
  %conv3464 = zext i16 %conv3463 to i32
  %660 = load i64, i64* %retlen, align 8
  %conv3465 = trunc i64 %660 to i16
  %conv3466 = zext i16 %conv3465 to i32
  %add3467 = add nsw i32 %conv3464, %conv3466
  %conv3468 = trunc i32 %add3467 to i16
  %conv3469 = sext i16 %conv3468 to i32
  br label %cond.end.3484

cond.false.3470:                                  ; preds = %cond.true.3446
  %661 = load i64, i64* %prefix_length, align 8
  %662 = load i64, i64* %buf_size.addr, align 8
  %cmp3471 = icmp ne i64 %662, 0
  %conv3472 = zext i1 %cmp3471 to i32
  %conv3473 = sext i32 %conv3472 to i64
  %sub3474 = sub nsw i64 %661, %conv3473
  %conv3475 = trunc i64 %sub3474 to i16
  %conv3476 = zext i16 %conv3475 to i32
  %663 = load i64, i64* %retlen, align 8
  %conv3477 = trunc i64 %663 to i16
  %conv3478 = zext i16 %conv3477 to i32
  %add3479 = add nsw i32 %conv3476, %conv3478
  %sub3480 = sub nsw i32 %add3479, -32768
  %conv3481 = trunc i32 %sub3480 to i16
  %conv3482 = sext i16 %conv3481 to i32
  %add3483 = add nsw i32 %conv3482, -32768
  br label %cond.end.3484

cond.end.3484:                                    ; preds = %cond.false.3470, %cond.true.3458
  %cond3485 = phi i32 [ %conv3469, %cond.true.3458 ], [ %add3483, %cond.false.3470 ]
  %conv3486 = sext i32 %cond3485 to i64
  store i64 %conv3486, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.3487:                                  ; preds = %lor.lhs.false.3438
  %664 = load i64, i64* %prefix_length, align 8
  %665 = load i64, i64* %buf_size.addr, align 8
  %cmp3488 = icmp ne i64 %665, 0
  %conv3489 = zext i1 %cmp3488 to i32
  %conv3490 = sext i32 %conv3489 to i64
  %sub3491 = sub nsw i64 %664, %conv3490
  %conv3492 = trunc i64 %sub3491 to i16
  %conv3493 = zext i16 %conv3492 to i32
  %666 = load i64, i64* %retlen, align 8
  %conv3494 = trunc i64 %666 to i16
  %conv3495 = zext i16 %conv3494 to i32
  %add3496 = add nsw i32 %conv3493, %conv3495
  %cmp3497 = icmp sle i32 %add3496, 32767
  br i1 %cmp3497, label %cond.true.3499, label %cond.false.3511

cond.true.3499:                                   ; preds = %cond.false.3487
  %667 = load i64, i64* %prefix_length, align 8
  %668 = load i64, i64* %buf_size.addr, align 8
  %cmp3500 = icmp ne i64 %668, 0
  %conv3501 = zext i1 %cmp3500 to i32
  %conv3502 = sext i32 %conv3501 to i64
  %sub3503 = sub nsw i64 %667, %conv3502
  %conv3504 = trunc i64 %sub3503 to i16
  %conv3505 = zext i16 %conv3504 to i32
  %669 = load i64, i64* %retlen, align 8
  %conv3506 = trunc i64 %669 to i16
  %conv3507 = zext i16 %conv3506 to i32
  %add3508 = add nsw i32 %conv3505, %conv3507
  %conv3509 = trunc i32 %add3508 to i16
  %conv3510 = sext i16 %conv3509 to i32
  br label %cond.end.3525

cond.false.3511:                                  ; preds = %cond.false.3487
  %670 = load i64, i64* %prefix_length, align 8
  %671 = load i64, i64* %buf_size.addr, align 8
  %cmp3512 = icmp ne i64 %671, 0
  %conv3513 = zext i1 %cmp3512 to i32
  %conv3514 = sext i32 %conv3513 to i64
  %sub3515 = sub nsw i64 %670, %conv3514
  %conv3516 = trunc i64 %sub3515 to i16
  %conv3517 = zext i16 %conv3516 to i32
  %672 = load i64, i64* %retlen, align 8
  %conv3518 = trunc i64 %672 to i16
  %conv3519 = zext i16 %conv3518 to i32
  %add3520 = add nsw i32 %conv3517, %conv3519
  %sub3521 = sub nsw i32 %add3520, -32768
  %conv3522 = trunc i32 %sub3521 to i16
  %conv3523 = sext i16 %conv3522 to i32
  %add3524 = add nsw i32 %conv3523, -32768
  br label %cond.end.3525

cond.end.3525:                                    ; preds = %cond.false.3511, %cond.true.3499
  %cond3526 = phi i32 [ %conv3510, %cond.true.3499 ], [ %add3524, %cond.false.3511 ]
  %conv3527 = sext i32 %cond3526 to i64
  store i64 %conv3527, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

cond.false.3528:                                  ; preds = %cond.false.2844
  br i1 false, label %cond.true.3529, label %cond.false.4128

cond.true.3529:                                   ; preds = %cond.false.3528
  br i1 false, label %cond.true.3530, label %cond.false.3850

cond.true.3530:                                   ; preds = %cond.true.3529
  %673 = load i64, i64* %retlen, align 8
  %conv3531 = trunc i64 %673 to i32
  %mul3532 = mul nsw i32 0, %conv3531
  %674 = load i64, i64* %prefix_length, align 8
  %675 = load i64, i64* %buf_size.addr, align 8
  %cmp3533 = icmp ne i64 %675, 0
  %conv3534 = zext i1 %cmp3533 to i32
  %conv3535 = sext i32 %conv3534 to i64
  %sub3536 = sub nsw i64 %674, %conv3535
  %conv3537 = trunc i64 %sub3536 to i32
  %add3538 = add nsw i32 %mul3532, %conv3537
  %mul3539 = mul nsw i32 0, %add3538
  %sub3540 = sub nsw i32 %mul3539, 1
  %cmp3541 = icmp slt i32 %sub3540, 0
  br i1 %cmp3541, label %cond.true.3543, label %cond.false.3573

cond.true.3543:                                   ; preds = %cond.true.3530
  %676 = load i64, i64* %retlen, align 8
  %conv3544 = trunc i64 %676 to i32
  %mul3545 = mul nsw i32 0, %conv3544
  %677 = load i64, i64* %prefix_length, align 8
  %678 = load i64, i64* %buf_size.addr, align 8
  %cmp3546 = icmp ne i64 %678, 0
  %conv3547 = zext i1 %cmp3546 to i32
  %conv3548 = sext i32 %conv3547 to i64
  %sub3549 = sub nsw i64 %677, %conv3548
  %conv3550 = trunc i64 %sub3549 to i32
  %add3551 = add nsw i32 %mul3545, %conv3550
  %mul3552 = mul nsw i32 0, %add3551
  %add3553 = add nsw i32 %mul3552, 0
  %neg3554 = xor i32 %add3553, -1
  %cmp3555 = icmp eq i32 %neg3554, -1
  %conv3556 = zext i1 %cmp3555 to i32
  %sub3557 = sub nsw i32 0, %conv3556
  %679 = load i64, i64* %retlen, align 8
  %conv3558 = trunc i64 %679 to i32
  %mul3559 = mul nsw i32 0, %conv3558
  %680 = load i64, i64* %prefix_length, align 8
  %681 = load i64, i64* %buf_size.addr, align 8
  %cmp3560 = icmp ne i64 %681, 0
  %conv3561 = zext i1 %cmp3560 to i32
  %conv3562 = sext i32 %conv3561 to i64
  %sub3563 = sub nsw i64 %680, %conv3562
  %conv3564 = trunc i64 %sub3563 to i32
  %add3565 = add nsw i32 %mul3559, %conv3564
  %mul3566 = mul nsw i32 0, %add3565
  %add3567 = add nsw i32 %mul3566, 1
  %shl3568 = shl i32 %add3567, 30
  %sub3569 = sub nsw i32 %shl3568, 1
  %mul3570 = mul nsw i32 %sub3569, 2
  %add3571 = add nsw i32 %mul3570, 1
  %sub3572 = sub nsw i32 %sub3557, %add3571
  br label %cond.end.3584

cond.false.3573:                                  ; preds = %cond.true.3530
  %682 = load i64, i64* %retlen, align 8
  %conv3574 = trunc i64 %682 to i32
  %mul3575 = mul nsw i32 0, %conv3574
  %683 = load i64, i64* %prefix_length, align 8
  %684 = load i64, i64* %buf_size.addr, align 8
  %cmp3576 = icmp ne i64 %684, 0
  %conv3577 = zext i1 %cmp3576 to i32
  %conv3578 = sext i32 %conv3577 to i64
  %sub3579 = sub nsw i64 %683, %conv3578
  %conv3580 = trunc i64 %sub3579 to i32
  %add3581 = add nsw i32 %mul3575, %conv3580
  %mul3582 = mul nsw i32 0, %add3581
  %add3583 = add nsw i32 %mul3582, 0
  br label %cond.end.3584

cond.end.3584:                                    ; preds = %cond.false.3573, %cond.true.3543
  %cond3585 = phi i32 [ %sub3572, %cond.true.3543 ], [ %add3583, %cond.false.3573 ]
  %cmp3586 = icmp slt i32 %cond3585, 0
  br i1 %cmp3586, label %cond.true.3588, label %cond.false.3707

cond.true.3588:                                   ; preds = %cond.end.3584
  %685 = load i64, i64* %retlen, align 8
  %conv3589 = trunc i64 %685 to i32
  %cmp3590 = icmp slt i32 %conv3589, 0
  br i1 %cmp3590, label %cond.true.3592, label %cond.false.3657

cond.true.3592:                                   ; preds = %cond.true.3588
  %686 = load i64, i64* %prefix_length, align 8
  %687 = load i64, i64* %buf_size.addr, align 8
  %cmp3593 = icmp ne i64 %687, 0
  %conv3594 = zext i1 %cmp3593 to i32
  %conv3595 = sext i32 %conv3594 to i64
  %sub3596 = sub nsw i64 %686, %conv3595
  %conv3597 = trunc i64 %sub3596 to i32
  %688 = load i64, i64* %retlen, align 8
  %conv3598 = trunc i64 %688 to i32
  %mul3599 = mul nsw i32 0, %conv3598
  %689 = load i64, i64* %prefix_length, align 8
  %690 = load i64, i64* %buf_size.addr, align 8
  %cmp3600 = icmp ne i64 %690, 0
  %conv3601 = zext i1 %cmp3600 to i32
  %conv3602 = sext i32 %conv3601 to i64
  %sub3603 = sub nsw i64 %689, %conv3602
  %conv3604 = trunc i64 %sub3603 to i32
  %add3605 = add nsw i32 %mul3599, %conv3604
  %mul3606 = mul nsw i32 0, %add3605
  %sub3607 = sub nsw i32 %mul3606, 1
  %cmp3608 = icmp slt i32 %sub3607, 0
  br i1 %cmp3608, label %cond.true.3610, label %cond.false.3640

cond.true.3610:                                   ; preds = %cond.true.3592
  %691 = load i64, i64* %retlen, align 8
  %conv3611 = trunc i64 %691 to i32
  %mul3612 = mul nsw i32 0, %conv3611
  %692 = load i64, i64* %prefix_length, align 8
  %693 = load i64, i64* %buf_size.addr, align 8
  %cmp3613 = icmp ne i64 %693, 0
  %conv3614 = zext i1 %cmp3613 to i32
  %conv3615 = sext i32 %conv3614 to i64
  %sub3616 = sub nsw i64 %692, %conv3615
  %conv3617 = trunc i64 %sub3616 to i32
  %add3618 = add nsw i32 %mul3612, %conv3617
  %mul3619 = mul nsw i32 0, %add3618
  %add3620 = add nsw i32 %mul3619, 0
  %neg3621 = xor i32 %add3620, -1
  %cmp3622 = icmp eq i32 %neg3621, -1
  %conv3623 = zext i1 %cmp3622 to i32
  %sub3624 = sub nsw i32 0, %conv3623
  %694 = load i64, i64* %retlen, align 8
  %conv3625 = trunc i64 %694 to i32
  %mul3626 = mul nsw i32 0, %conv3625
  %695 = load i64, i64* %prefix_length, align 8
  %696 = load i64, i64* %buf_size.addr, align 8
  %cmp3627 = icmp ne i64 %696, 0
  %conv3628 = zext i1 %cmp3627 to i32
  %conv3629 = sext i32 %conv3628 to i64
  %sub3630 = sub nsw i64 %695, %conv3629
  %conv3631 = trunc i64 %sub3630 to i32
  %add3632 = add nsw i32 %mul3626, %conv3631
  %mul3633 = mul nsw i32 0, %add3632
  %add3634 = add nsw i32 %mul3633, 1
  %shl3635 = shl i32 %add3634, 30
  %sub3636 = sub nsw i32 %shl3635, 1
  %mul3637 = mul nsw i32 %sub3636, 2
  %add3638 = add nsw i32 %mul3637, 1
  %sub3639 = sub nsw i32 %sub3624, %add3638
  br label %cond.end.3651

cond.false.3640:                                  ; preds = %cond.true.3592
  %697 = load i64, i64* %retlen, align 8
  %conv3641 = trunc i64 %697 to i32
  %mul3642 = mul nsw i32 0, %conv3641
  %698 = load i64, i64* %prefix_length, align 8
  %699 = load i64, i64* %buf_size.addr, align 8
  %cmp3643 = icmp ne i64 %699, 0
  %conv3644 = zext i1 %cmp3643 to i32
  %conv3645 = sext i32 %conv3644 to i64
  %sub3646 = sub nsw i64 %698, %conv3645
  %conv3647 = trunc i64 %sub3646 to i32
  %add3648 = add nsw i32 %mul3642, %conv3647
  %mul3649 = mul nsw i32 0, %add3648
  %add3650 = add nsw i32 %mul3649, 0
  br label %cond.end.3651

cond.end.3651:                                    ; preds = %cond.false.3640, %cond.true.3610
  %cond3652 = phi i32 [ %sub3639, %cond.true.3610 ], [ %add3650, %cond.false.3640 ]
  %700 = load i64, i64* %retlen, align 8
  %conv3653 = trunc i64 %700 to i32
  %sub3654 = sub nsw i32 %cond3652, %conv3653
  %cmp3655 = icmp slt i32 %conv3597, %sub3654
  br i1 %cmp3655, label %cond.true.3788, label %lor.lhs.false.3756

cond.false.3657:                                  ; preds = %cond.true.3588
  %701 = load i64, i64* %retlen, align 8
  %conv3658 = trunc i64 %701 to i32
  %mul3659 = mul nsw i32 0, %conv3658
  %702 = load i64, i64* %prefix_length, align 8
  %703 = load i64, i64* %buf_size.addr, align 8
  %cmp3660 = icmp ne i64 %703, 0
  %conv3661 = zext i1 %cmp3660 to i32
  %conv3662 = sext i32 %conv3661 to i64
  %sub3663 = sub nsw i64 %702, %conv3662
  %conv3664 = trunc i64 %sub3663 to i32
  %add3665 = add nsw i32 %mul3659, %conv3664
  %mul3666 = mul nsw i32 0, %add3665
  %sub3667 = sub nsw i32 %mul3666, 1
  %cmp3668 = icmp slt i32 %sub3667, 0
  br i1 %cmp3668, label %cond.true.3670, label %cond.false.3685

cond.true.3670:                                   ; preds = %cond.false.3657
  %704 = load i64, i64* %retlen, align 8
  %conv3671 = trunc i64 %704 to i32
  %mul3672 = mul nsw i32 0, %conv3671
  %705 = load i64, i64* %prefix_length, align 8
  %706 = load i64, i64* %buf_size.addr, align 8
  %cmp3673 = icmp ne i64 %706, 0
  %conv3674 = zext i1 %cmp3673 to i32
  %conv3675 = sext i32 %conv3674 to i64
  %sub3676 = sub nsw i64 %705, %conv3675
  %conv3677 = trunc i64 %sub3676 to i32
  %add3678 = add nsw i32 %mul3672, %conv3677
  %mul3679 = mul nsw i32 0, %add3678
  %add3680 = add nsw i32 %mul3679, 1
  %shl3681 = shl i32 %add3680, 30
  %sub3682 = sub nsw i32 %shl3681, 1
  %mul3683 = mul nsw i32 %sub3682, 2
  %add3684 = add nsw i32 %mul3683, 1
  br label %cond.end.3696

cond.false.3685:                                  ; preds = %cond.false.3657
  %707 = load i64, i64* %retlen, align 8
  %conv3686 = trunc i64 %707 to i32
  %mul3687 = mul nsw i32 0, %conv3686
  %708 = load i64, i64* %prefix_length, align 8
  %709 = load i64, i64* %buf_size.addr, align 8
  %cmp3688 = icmp ne i64 %709, 0
  %conv3689 = zext i1 %cmp3688 to i32
  %conv3690 = sext i32 %conv3689 to i64
  %sub3691 = sub nsw i64 %708, %conv3690
  %conv3692 = trunc i64 %sub3691 to i32
  %add3693 = add nsw i32 %mul3687, %conv3692
  %mul3694 = mul nsw i32 0, %add3693
  %sub3695 = sub nsw i32 %mul3694, 1
  br label %cond.end.3696

cond.end.3696:                                    ; preds = %cond.false.3685, %cond.true.3670
  %cond3697 = phi i32 [ %add3684, %cond.true.3670 ], [ %sub3695, %cond.false.3685 ]
  %710 = load i64, i64* %retlen, align 8
  %conv3698 = trunc i64 %710 to i32
  %sub3699 = sub nsw i32 %cond3697, %conv3698
  %711 = load i64, i64* %prefix_length, align 8
  %712 = load i64, i64* %buf_size.addr, align 8
  %cmp3700 = icmp ne i64 %712, 0
  %conv3701 = zext i1 %cmp3700 to i32
  %conv3702 = sext i32 %conv3701 to i64
  %sub3703 = sub nsw i64 %711, %conv3702
  %conv3704 = trunc i64 %sub3703 to i32
  %cmp3705 = icmp slt i32 %sub3699, %conv3704
  br i1 %cmp3705, label %cond.true.3788, label %lor.lhs.false.3756

cond.false.3707:                                  ; preds = %cond.end.3584
  %713 = load i64, i64* %prefix_length, align 8
  %714 = load i64, i64* %buf_size.addr, align 8
  %cmp3708 = icmp ne i64 %714, 0
  %conv3709 = zext i1 %cmp3708 to i32
  %conv3710 = sext i32 %conv3709 to i64
  %sub3711 = sub nsw i64 %713, %conv3710
  %conv3712 = trunc i64 %sub3711 to i32
  %cmp3713 = icmp slt i32 %conv3712, 0
  br i1 %cmp3713, label %cond.true.3715, label %cond.false.3726

cond.true.3715:                                   ; preds = %cond.false.3707
  %715 = load i64, i64* %retlen, align 8
  %conv3716 = trunc i64 %715 to i32
  %716 = load i64, i64* %prefix_length, align 8
  %717 = load i64, i64* %buf_size.addr, align 8
  %cmp3717 = icmp ne i64 %717, 0
  %conv3718 = zext i1 %cmp3717 to i32
  %conv3719 = sext i32 %conv3718 to i64
  %sub3720 = sub nsw i64 %716, %conv3719
  %conv3721 = trunc i64 %sub3720 to i32
  %718 = load i64, i64* %retlen, align 8
  %conv3722 = trunc i64 %718 to i32
  %add3723 = add nsw i32 %conv3721, %conv3722
  %cmp3724 = icmp sle i32 %conv3716, %add3723
  br i1 %cmp3724, label %cond.true.3788, label %lor.lhs.false.3756

cond.false.3726:                                  ; preds = %cond.false.3707
  %719 = load i64, i64* %retlen, align 8
  %conv3727 = trunc i64 %719 to i32
  %cmp3728 = icmp slt i32 %conv3727, 0
  br i1 %cmp3728, label %cond.true.3730, label %cond.false.3745

cond.true.3730:                                   ; preds = %cond.false.3726
  %720 = load i64, i64* %prefix_length, align 8
  %721 = load i64, i64* %buf_size.addr, align 8
  %cmp3731 = icmp ne i64 %721, 0
  %conv3732 = zext i1 %cmp3731 to i32
  %conv3733 = sext i32 %conv3732 to i64
  %sub3734 = sub nsw i64 %720, %conv3733
  %conv3735 = trunc i64 %sub3734 to i32
  %722 = load i64, i64* %prefix_length, align 8
  %723 = load i64, i64* %buf_size.addr, align 8
  %cmp3736 = icmp ne i64 %723, 0
  %conv3737 = zext i1 %cmp3736 to i32
  %conv3738 = sext i32 %conv3737 to i64
  %sub3739 = sub nsw i64 %722, %conv3738
  %conv3740 = trunc i64 %sub3739 to i32
  %724 = load i64, i64* %retlen, align 8
  %conv3741 = trunc i64 %724 to i32
  %add3742 = add nsw i32 %conv3740, %conv3741
  %cmp3743 = icmp sle i32 %conv3735, %add3742
  br i1 %cmp3743, label %cond.true.3788, label %lor.lhs.false.3756

cond.false.3745:                                  ; preds = %cond.false.3726
  %725 = load i64, i64* %prefix_length, align 8
  %726 = load i64, i64* %buf_size.addr, align 8
  %cmp3746 = icmp ne i64 %726, 0
  %conv3747 = zext i1 %cmp3746 to i32
  %conv3748 = sext i32 %conv3747 to i64
  %sub3749 = sub nsw i64 %725, %conv3748
  %conv3750 = trunc i64 %sub3749 to i32
  %727 = load i64, i64* %retlen, align 8
  %conv3751 = trunc i64 %727 to i32
  %add3752 = add nsw i32 %conv3750, %conv3751
  %728 = load i64, i64* %retlen, align 8
  %conv3753 = trunc i64 %728 to i32
  %cmp3754 = icmp slt i32 %add3752, %conv3753
  br i1 %cmp3754, label %cond.true.3788, label %lor.lhs.false.3756

lor.lhs.false.3756:                               ; preds = %cond.false.3745, %cond.true.3730, %cond.true.3715, %cond.end.3696, %cond.end.3651
  %729 = load i64, i64* %prefix_length, align 8
  %730 = load i64, i64* %buf_size.addr, align 8
  %cmp3757 = icmp ne i64 %730, 0
  %conv3758 = zext i1 %cmp3757 to i32
  %conv3759 = sext i32 %conv3758 to i64
  %sub3760 = sub nsw i64 %729, %conv3759
  %conv3761 = trunc i64 %sub3760 to i32
  %731 = load i64, i64* %retlen, align 8
  %conv3762 = trunc i64 %731 to i32
  %add3763 = add nsw i32 %conv3761, %conv3762
  %mul3764 = mul nsw i32 0, %add3763
  %sub3765 = sub nsw i32 %mul3764, 1
  %cmp3766 = icmp slt i32 %sub3765, 0
  br i1 %cmp3766, label %land.lhs.true.3768, label %lor.lhs.false.3778

land.lhs.true.3768:                               ; preds = %lor.lhs.false.3756
  %732 = load i64, i64* %prefix_length, align 8
  %733 = load i64, i64* %buf_size.addr, align 8
  %cmp3769 = icmp ne i64 %733, 0
  %conv3770 = zext i1 %cmp3769 to i32
  %conv3771 = sext i32 %conv3770 to i64
  %sub3772 = sub nsw i64 %732, %conv3771
  %conv3773 = trunc i64 %sub3772 to i32
  %734 = load i64, i64* %retlen, align 8
  %conv3774 = trunc i64 %734 to i32
  %add3775 = add nsw i32 %conv3773, %conv3774
  %cmp3776 = icmp slt i32 %add3775, -2147483648
  br i1 %cmp3776, label %cond.true.3788, label %lor.lhs.false.3778

lor.lhs.false.3778:                               ; preds = %land.lhs.true.3768, %lor.lhs.false.3756
  %735 = load i64, i64* %prefix_length, align 8
  %736 = load i64, i64* %buf_size.addr, align 8
  %cmp3779 = icmp ne i64 %736, 0
  %conv3780 = zext i1 %cmp3779 to i32
  %conv3781 = sext i32 %conv3780 to i64
  %sub3782 = sub nsw i64 %735, %conv3781
  %conv3783 = trunc i64 %sub3782 to i32
  %737 = load i64, i64* %retlen, align 8
  %conv3784 = trunc i64 %737 to i32
  %add3785 = add nsw i32 %conv3783, %conv3784
  %cmp3786 = icmp slt i32 2147483647, %add3785
  br i1 %cmp3786, label %cond.true.3788, label %cond.false.3819

cond.true.3788:                                   ; preds = %lor.lhs.false.3778, %land.lhs.true.3768, %cond.false.3745, %cond.true.3730, %cond.true.3715, %cond.end.3696, %cond.end.3651
  %738 = load i64, i64* %prefix_length, align 8
  %739 = load i64, i64* %buf_size.addr, align 8
  %cmp3789 = icmp ne i64 %739, 0
  %conv3790 = zext i1 %cmp3789 to i32
  %conv3791 = sext i32 %conv3790 to i64
  %sub3792 = sub nsw i64 %738, %conv3791
  %conv3793 = trunc i64 %sub3792 to i32
  %740 = load i64, i64* %retlen, align 8
  %conv3794 = trunc i64 %740 to i32
  %add3795 = add i32 %conv3793, %conv3794
  %cmp3796 = icmp ule i32 %add3795, 2147483647
  br i1 %cmp3796, label %cond.true.3798, label %cond.false.3806

cond.true.3798:                                   ; preds = %cond.true.3788
  %741 = load i64, i64* %prefix_length, align 8
  %742 = load i64, i64* %buf_size.addr, align 8
  %cmp3799 = icmp ne i64 %742, 0
  %conv3800 = zext i1 %cmp3799 to i32
  %conv3801 = sext i32 %conv3800 to i64
  %sub3802 = sub nsw i64 %741, %conv3801
  %conv3803 = trunc i64 %sub3802 to i32
  %743 = load i64, i64* %retlen, align 8
  %conv3804 = trunc i64 %743 to i32
  %add3805 = add i32 %conv3803, %conv3804
  br label %cond.end.3816

cond.false.3806:                                  ; preds = %cond.true.3788
  %744 = load i64, i64* %prefix_length, align 8
  %745 = load i64, i64* %buf_size.addr, align 8
  %cmp3807 = icmp ne i64 %745, 0
  %conv3808 = zext i1 %cmp3807 to i32
  %conv3809 = sext i32 %conv3808 to i64
  %sub3810 = sub nsw i64 %744, %conv3809
  %conv3811 = trunc i64 %sub3810 to i32
  %746 = load i64, i64* %retlen, align 8
  %conv3812 = trunc i64 %746 to i32
  %add3813 = add i32 %conv3811, %conv3812
  %sub3814 = sub i32 %add3813, -2147483648
  %add3815 = add nsw i32 %sub3814, -2147483648
  br label %cond.end.3816

cond.end.3816:                                    ; preds = %cond.false.3806, %cond.true.3798
  %cond3817 = phi i32 [ %add3805, %cond.true.3798 ], [ %add3815, %cond.false.3806 ]
  %conv3818 = sext i32 %cond3817 to i64
  store i64 %conv3818, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.3819:                                  ; preds = %lor.lhs.false.3778
  %747 = load i64, i64* %prefix_length, align 8
  %748 = load i64, i64* %buf_size.addr, align 8
  %cmp3820 = icmp ne i64 %748, 0
  %conv3821 = zext i1 %cmp3820 to i32
  %conv3822 = sext i32 %conv3821 to i64
  %sub3823 = sub nsw i64 %747, %conv3822
  %conv3824 = trunc i64 %sub3823 to i32
  %749 = load i64, i64* %retlen, align 8
  %conv3825 = trunc i64 %749 to i32
  %add3826 = add i32 %conv3824, %conv3825
  %cmp3827 = icmp ule i32 %add3826, 2147483647
  br i1 %cmp3827, label %cond.true.3829, label %cond.false.3837

cond.true.3829:                                   ; preds = %cond.false.3819
  %750 = load i64, i64* %prefix_length, align 8
  %751 = load i64, i64* %buf_size.addr, align 8
  %cmp3830 = icmp ne i64 %751, 0
  %conv3831 = zext i1 %cmp3830 to i32
  %conv3832 = sext i32 %conv3831 to i64
  %sub3833 = sub nsw i64 %750, %conv3832
  %conv3834 = trunc i64 %sub3833 to i32
  %752 = load i64, i64* %retlen, align 8
  %conv3835 = trunc i64 %752 to i32
  %add3836 = add i32 %conv3834, %conv3835
  br label %cond.end.3847

cond.false.3837:                                  ; preds = %cond.false.3819
  %753 = load i64, i64* %prefix_length, align 8
  %754 = load i64, i64* %buf_size.addr, align 8
  %cmp3838 = icmp ne i64 %754, 0
  %conv3839 = zext i1 %cmp3838 to i32
  %conv3840 = sext i32 %conv3839 to i64
  %sub3841 = sub nsw i64 %753, %conv3840
  %conv3842 = trunc i64 %sub3841 to i32
  %755 = load i64, i64* %retlen, align 8
  %conv3843 = trunc i64 %755 to i32
  %add3844 = add i32 %conv3842, %conv3843
  %sub3845 = sub i32 %add3844, -2147483648
  %add3846 = add nsw i32 %sub3845, -2147483648
  br label %cond.end.3847

cond.end.3847:                                    ; preds = %cond.false.3837, %cond.true.3829
  %cond3848 = phi i32 [ %add3836, %cond.true.3829 ], [ %add3846, %cond.false.3837 ]
  %conv3849 = sext i32 %cond3848 to i64
  store i64 %conv3849, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

cond.false.3850:                                  ; preds = %cond.true.3529
  %756 = load i64, i64* %retlen, align 8
  %mul3851 = mul nsw i64 0, %756
  %757 = load i64, i64* %prefix_length, align 8
  %758 = load i64, i64* %buf_size.addr, align 8
  %cmp3852 = icmp ne i64 %758, 0
  %conv3853 = zext i1 %cmp3852 to i32
  %conv3854 = sext i32 %conv3853 to i64
  %sub3855 = sub nsw i64 %757, %conv3854
  %add3856 = add nsw i64 %mul3851, %sub3855
  %mul3857 = mul nsw i64 0, %add3856
  %sub3858 = sub nsw i64 %mul3857, 1
  %cmp3859 = icmp slt i64 %sub3858, 0
  br i1 %cmp3859, label %cond.true.3861, label %cond.false.3888

cond.true.3861:                                   ; preds = %cond.false.3850
  %759 = load i64, i64* %retlen, align 8
  %mul3862 = mul nsw i64 0, %759
  %760 = load i64, i64* %prefix_length, align 8
  %761 = load i64, i64* %buf_size.addr, align 8
  %cmp3863 = icmp ne i64 %761, 0
  %conv3864 = zext i1 %cmp3863 to i32
  %conv3865 = sext i32 %conv3864 to i64
  %sub3866 = sub nsw i64 %760, %conv3865
  %add3867 = add nsw i64 %mul3862, %sub3866
  %mul3868 = mul nsw i64 0, %add3867
  %add3869 = add nsw i64 %mul3868, 0
  %neg3870 = xor i64 %add3869, -1
  %cmp3871 = icmp eq i64 %neg3870, -1
  %conv3872 = zext i1 %cmp3871 to i32
  %sub3873 = sub nsw i32 0, %conv3872
  %conv3874 = sext i32 %sub3873 to i64
  %762 = load i64, i64* %retlen, align 8
  %mul3875 = mul nsw i64 0, %762
  %763 = load i64, i64* %prefix_length, align 8
  %764 = load i64, i64* %buf_size.addr, align 8
  %cmp3876 = icmp ne i64 %764, 0
  %conv3877 = zext i1 %cmp3876 to i32
  %conv3878 = sext i32 %conv3877 to i64
  %sub3879 = sub nsw i64 %763, %conv3878
  %add3880 = add nsw i64 %mul3875, %sub3879
  %mul3881 = mul nsw i64 0, %add3880
  %add3882 = add nsw i64 %mul3881, 1
  %shl3883 = shl i64 %add3882, 62
  %sub3884 = sub nsw i64 %shl3883, 1
  %mul3885 = mul nsw i64 %sub3884, 2
  %add3886 = add nsw i64 %mul3885, 1
  %sub3887 = sub nsw i64 %conv3874, %add3886
  br label %cond.end.3897

cond.false.3888:                                  ; preds = %cond.false.3850
  %765 = load i64, i64* %retlen, align 8
  %mul3889 = mul nsw i64 0, %765
  %766 = load i64, i64* %prefix_length, align 8
  %767 = load i64, i64* %buf_size.addr, align 8
  %cmp3890 = icmp ne i64 %767, 0
  %conv3891 = zext i1 %cmp3890 to i32
  %conv3892 = sext i32 %conv3891 to i64
  %sub3893 = sub nsw i64 %766, %conv3892
  %add3894 = add nsw i64 %mul3889, %sub3893
  %mul3895 = mul nsw i64 0, %add3894
  %add3896 = add nsw i64 %mul3895, 0
  br label %cond.end.3897

cond.end.3897:                                    ; preds = %cond.false.3888, %cond.true.3861
  %cond3898 = phi i64 [ %sub3887, %cond.true.3861 ], [ %add3896, %cond.false.3888 ]
  %cmp3899 = icmp slt i64 %cond3898, 0
  br i1 %cmp3899, label %cond.true.3901, label %cond.false.4002

cond.true.3901:                                   ; preds = %cond.end.3897
  %768 = load i64, i64* %retlen, align 8
  %cmp3902 = icmp slt i64 %768, 0
  br i1 %cmp3902, label %cond.true.3904, label %cond.false.3960

cond.true.3904:                                   ; preds = %cond.true.3901
  %769 = load i64, i64* %prefix_length, align 8
  %770 = load i64, i64* %buf_size.addr, align 8
  %cmp3905 = icmp ne i64 %770, 0
  %conv3906 = zext i1 %cmp3905 to i32
  %conv3907 = sext i32 %conv3906 to i64
  %sub3908 = sub nsw i64 %769, %conv3907
  %771 = load i64, i64* %retlen, align 8
  %mul3909 = mul nsw i64 0, %771
  %772 = load i64, i64* %prefix_length, align 8
  %773 = load i64, i64* %buf_size.addr, align 8
  %cmp3910 = icmp ne i64 %773, 0
  %conv3911 = zext i1 %cmp3910 to i32
  %conv3912 = sext i32 %conv3911 to i64
  %sub3913 = sub nsw i64 %772, %conv3912
  %add3914 = add nsw i64 %mul3909, %sub3913
  %mul3915 = mul nsw i64 0, %add3914
  %sub3916 = sub nsw i64 %mul3915, 1
  %cmp3917 = icmp slt i64 %sub3916, 0
  br i1 %cmp3917, label %cond.true.3919, label %cond.false.3946

cond.true.3919:                                   ; preds = %cond.true.3904
  %774 = load i64, i64* %retlen, align 8
  %mul3920 = mul nsw i64 0, %774
  %775 = load i64, i64* %prefix_length, align 8
  %776 = load i64, i64* %buf_size.addr, align 8
  %cmp3921 = icmp ne i64 %776, 0
  %conv3922 = zext i1 %cmp3921 to i32
  %conv3923 = sext i32 %conv3922 to i64
  %sub3924 = sub nsw i64 %775, %conv3923
  %add3925 = add nsw i64 %mul3920, %sub3924
  %mul3926 = mul nsw i64 0, %add3925
  %add3927 = add nsw i64 %mul3926, 0
  %neg3928 = xor i64 %add3927, -1
  %cmp3929 = icmp eq i64 %neg3928, -1
  %conv3930 = zext i1 %cmp3929 to i32
  %sub3931 = sub nsw i32 0, %conv3930
  %conv3932 = sext i32 %sub3931 to i64
  %777 = load i64, i64* %retlen, align 8
  %mul3933 = mul nsw i64 0, %777
  %778 = load i64, i64* %prefix_length, align 8
  %779 = load i64, i64* %buf_size.addr, align 8
  %cmp3934 = icmp ne i64 %779, 0
  %conv3935 = zext i1 %cmp3934 to i32
  %conv3936 = sext i32 %conv3935 to i64
  %sub3937 = sub nsw i64 %778, %conv3936
  %add3938 = add nsw i64 %mul3933, %sub3937
  %mul3939 = mul nsw i64 0, %add3938
  %add3940 = add nsw i64 %mul3939, 1
  %shl3941 = shl i64 %add3940, 62
  %sub3942 = sub nsw i64 %shl3941, 1
  %mul3943 = mul nsw i64 %sub3942, 2
  %add3944 = add nsw i64 %mul3943, 1
  %sub3945 = sub nsw i64 %conv3932, %add3944
  br label %cond.end.3955

cond.false.3946:                                  ; preds = %cond.true.3904
  %780 = load i64, i64* %retlen, align 8
  %mul3947 = mul nsw i64 0, %780
  %781 = load i64, i64* %prefix_length, align 8
  %782 = load i64, i64* %buf_size.addr, align 8
  %cmp3948 = icmp ne i64 %782, 0
  %conv3949 = zext i1 %cmp3948 to i32
  %conv3950 = sext i32 %conv3949 to i64
  %sub3951 = sub nsw i64 %781, %conv3950
  %add3952 = add nsw i64 %mul3947, %sub3951
  %mul3953 = mul nsw i64 0, %add3952
  %add3954 = add nsw i64 %mul3953, 0
  br label %cond.end.3955

cond.end.3955:                                    ; preds = %cond.false.3946, %cond.true.3919
  %cond3956 = phi i64 [ %sub3945, %cond.true.3919 ], [ %add3954, %cond.false.3946 ]
  %783 = load i64, i64* %retlen, align 8
  %sub3957 = sub nsw i64 %cond3956, %783
  %cmp3958 = icmp slt i64 %sub3908, %sub3957
  br i1 %cmp3958, label %cond.true.4066, label %lor.lhs.false.4040

cond.false.3960:                                  ; preds = %cond.true.3901
  %784 = load i64, i64* %retlen, align 8
  %mul3961 = mul nsw i64 0, %784
  %785 = load i64, i64* %prefix_length, align 8
  %786 = load i64, i64* %buf_size.addr, align 8
  %cmp3962 = icmp ne i64 %786, 0
  %conv3963 = zext i1 %cmp3962 to i32
  %conv3964 = sext i32 %conv3963 to i64
  %sub3965 = sub nsw i64 %785, %conv3964
  %add3966 = add nsw i64 %mul3961, %sub3965
  %mul3967 = mul nsw i64 0, %add3966
  %sub3968 = sub nsw i64 %mul3967, 1
  %cmp3969 = icmp slt i64 %sub3968, 0
  br i1 %cmp3969, label %cond.true.3971, label %cond.false.3984

cond.true.3971:                                   ; preds = %cond.false.3960
  %787 = load i64, i64* %retlen, align 8
  %mul3972 = mul nsw i64 0, %787
  %788 = load i64, i64* %prefix_length, align 8
  %789 = load i64, i64* %buf_size.addr, align 8
  %cmp3973 = icmp ne i64 %789, 0
  %conv3974 = zext i1 %cmp3973 to i32
  %conv3975 = sext i32 %conv3974 to i64
  %sub3976 = sub nsw i64 %788, %conv3975
  %add3977 = add nsw i64 %mul3972, %sub3976
  %mul3978 = mul nsw i64 0, %add3977
  %add3979 = add nsw i64 %mul3978, 1
  %shl3980 = shl i64 %add3979, 62
  %sub3981 = sub nsw i64 %shl3980, 1
  %mul3982 = mul nsw i64 %sub3981, 2
  %add3983 = add nsw i64 %mul3982, 1
  br label %cond.end.3993

cond.false.3984:                                  ; preds = %cond.false.3960
  %790 = load i64, i64* %retlen, align 8
  %mul3985 = mul nsw i64 0, %790
  %791 = load i64, i64* %prefix_length, align 8
  %792 = load i64, i64* %buf_size.addr, align 8
  %cmp3986 = icmp ne i64 %792, 0
  %conv3987 = zext i1 %cmp3986 to i32
  %conv3988 = sext i32 %conv3987 to i64
  %sub3989 = sub nsw i64 %791, %conv3988
  %add3990 = add nsw i64 %mul3985, %sub3989
  %mul3991 = mul nsw i64 0, %add3990
  %sub3992 = sub nsw i64 %mul3991, 1
  br label %cond.end.3993

cond.end.3993:                                    ; preds = %cond.false.3984, %cond.true.3971
  %cond3994 = phi i64 [ %add3983, %cond.true.3971 ], [ %sub3992, %cond.false.3984 ]
  %793 = load i64, i64* %retlen, align 8
  %sub3995 = sub nsw i64 %cond3994, %793
  %794 = load i64, i64* %prefix_length, align 8
  %795 = load i64, i64* %buf_size.addr, align 8
  %cmp3996 = icmp ne i64 %795, 0
  %conv3997 = zext i1 %cmp3996 to i32
  %conv3998 = sext i32 %conv3997 to i64
  %sub3999 = sub nsw i64 %794, %conv3998
  %cmp4000 = icmp slt i64 %sub3995, %sub3999
  br i1 %cmp4000, label %cond.true.4066, label %lor.lhs.false.4040

cond.false.4002:                                  ; preds = %cond.end.3897
  %796 = load i64, i64* %prefix_length, align 8
  %797 = load i64, i64* %buf_size.addr, align 8
  %cmp4003 = icmp ne i64 %797, 0
  %conv4004 = zext i1 %cmp4003 to i32
  %conv4005 = sext i32 %conv4004 to i64
  %sub4006 = sub nsw i64 %796, %conv4005
  %cmp4007 = icmp slt i64 %sub4006, 0
  br i1 %cmp4007, label %cond.true.4009, label %cond.false.4017

cond.true.4009:                                   ; preds = %cond.false.4002
  %798 = load i64, i64* %retlen, align 8
  %799 = load i64, i64* %prefix_length, align 8
  %800 = load i64, i64* %buf_size.addr, align 8
  %cmp4010 = icmp ne i64 %800, 0
  %conv4011 = zext i1 %cmp4010 to i32
  %conv4012 = sext i32 %conv4011 to i64
  %sub4013 = sub nsw i64 %799, %conv4012
  %801 = load i64, i64* %retlen, align 8
  %add4014 = add nsw i64 %sub4013, %801
  %cmp4015 = icmp sle i64 %798, %add4014
  br i1 %cmp4015, label %cond.true.4066, label %lor.lhs.false.4040

cond.false.4017:                                  ; preds = %cond.false.4002
  %802 = load i64, i64* %retlen, align 8
  %cmp4018 = icmp slt i64 %802, 0
  br i1 %cmp4018, label %cond.true.4020, label %cond.false.4032

cond.true.4020:                                   ; preds = %cond.false.4017
  %803 = load i64, i64* %prefix_length, align 8
  %804 = load i64, i64* %buf_size.addr, align 8
  %cmp4021 = icmp ne i64 %804, 0
  %conv4022 = zext i1 %cmp4021 to i32
  %conv4023 = sext i32 %conv4022 to i64
  %sub4024 = sub nsw i64 %803, %conv4023
  %805 = load i64, i64* %prefix_length, align 8
  %806 = load i64, i64* %buf_size.addr, align 8
  %cmp4025 = icmp ne i64 %806, 0
  %conv4026 = zext i1 %cmp4025 to i32
  %conv4027 = sext i32 %conv4026 to i64
  %sub4028 = sub nsw i64 %805, %conv4027
  %807 = load i64, i64* %retlen, align 8
  %add4029 = add nsw i64 %sub4028, %807
  %cmp4030 = icmp sle i64 %sub4024, %add4029
  br i1 %cmp4030, label %cond.true.4066, label %lor.lhs.false.4040

cond.false.4032:                                  ; preds = %cond.false.4017
  %808 = load i64, i64* %prefix_length, align 8
  %809 = load i64, i64* %buf_size.addr, align 8
  %cmp4033 = icmp ne i64 %809, 0
  %conv4034 = zext i1 %cmp4033 to i32
  %conv4035 = sext i32 %conv4034 to i64
  %sub4036 = sub nsw i64 %808, %conv4035
  %810 = load i64, i64* %retlen, align 8
  %add4037 = add nsw i64 %sub4036, %810
  %811 = load i64, i64* %retlen, align 8
  %cmp4038 = icmp slt i64 %add4037, %811
  br i1 %cmp4038, label %cond.true.4066, label %lor.lhs.false.4040

lor.lhs.false.4040:                               ; preds = %cond.false.4032, %cond.true.4020, %cond.true.4009, %cond.end.3993, %cond.end.3955
  %812 = load i64, i64* %prefix_length, align 8
  %813 = load i64, i64* %buf_size.addr, align 8
  %cmp4041 = icmp ne i64 %813, 0
  %conv4042 = zext i1 %cmp4041 to i32
  %conv4043 = sext i32 %conv4042 to i64
  %sub4044 = sub nsw i64 %812, %conv4043
  %814 = load i64, i64* %retlen, align 8
  %add4045 = add nsw i64 %sub4044, %814
  %mul4046 = mul nsw i64 0, %add4045
  %sub4047 = sub nsw i64 %mul4046, 1
  %cmp4048 = icmp slt i64 %sub4047, 0
  br i1 %cmp4048, label %land.lhs.true.4050, label %lor.lhs.false.4058

land.lhs.true.4050:                               ; preds = %lor.lhs.false.4040
  %815 = load i64, i64* %prefix_length, align 8
  %816 = load i64, i64* %buf_size.addr, align 8
  %cmp4051 = icmp ne i64 %816, 0
  %conv4052 = zext i1 %cmp4051 to i32
  %conv4053 = sext i32 %conv4052 to i64
  %sub4054 = sub nsw i64 %815, %conv4053
  %817 = load i64, i64* %retlen, align 8
  %add4055 = add nsw i64 %sub4054, %817
  %cmp4056 = icmp slt i64 %add4055, -2147483648
  br i1 %cmp4056, label %cond.true.4066, label %lor.lhs.false.4058

lor.lhs.false.4058:                               ; preds = %land.lhs.true.4050, %lor.lhs.false.4040
  %818 = load i64, i64* %prefix_length, align 8
  %819 = load i64, i64* %buf_size.addr, align 8
  %cmp4059 = icmp ne i64 %819, 0
  %conv4060 = zext i1 %cmp4059 to i32
  %conv4061 = sext i32 %conv4060 to i64
  %sub4062 = sub nsw i64 %818, %conv4061
  %820 = load i64, i64* %retlen, align 8
  %add4063 = add nsw i64 %sub4062, %820
  %cmp4064 = icmp slt i64 2147483647, %add4063
  br i1 %cmp4064, label %cond.true.4066, label %cond.false.4097

cond.true.4066:                                   ; preds = %lor.lhs.false.4058, %land.lhs.true.4050, %cond.false.4032, %cond.true.4020, %cond.true.4009, %cond.end.3993, %cond.end.3955
  %821 = load i64, i64* %prefix_length, align 8
  %822 = load i64, i64* %buf_size.addr, align 8
  %cmp4067 = icmp ne i64 %822, 0
  %conv4068 = zext i1 %cmp4067 to i32
  %conv4069 = sext i32 %conv4068 to i64
  %sub4070 = sub nsw i64 %821, %conv4069
  %conv4071 = trunc i64 %sub4070 to i32
  %823 = load i64, i64* %retlen, align 8
  %conv4072 = trunc i64 %823 to i32
  %add4073 = add i32 %conv4071, %conv4072
  %cmp4074 = icmp ule i32 %add4073, 2147483647
  br i1 %cmp4074, label %cond.true.4076, label %cond.false.4084

cond.true.4076:                                   ; preds = %cond.true.4066
  %824 = load i64, i64* %prefix_length, align 8
  %825 = load i64, i64* %buf_size.addr, align 8
  %cmp4077 = icmp ne i64 %825, 0
  %conv4078 = zext i1 %cmp4077 to i32
  %conv4079 = sext i32 %conv4078 to i64
  %sub4080 = sub nsw i64 %824, %conv4079
  %conv4081 = trunc i64 %sub4080 to i32
  %826 = load i64, i64* %retlen, align 8
  %conv4082 = trunc i64 %826 to i32
  %add4083 = add i32 %conv4081, %conv4082
  br label %cond.end.4094

cond.false.4084:                                  ; preds = %cond.true.4066
  %827 = load i64, i64* %prefix_length, align 8
  %828 = load i64, i64* %buf_size.addr, align 8
  %cmp4085 = icmp ne i64 %828, 0
  %conv4086 = zext i1 %cmp4085 to i32
  %conv4087 = sext i32 %conv4086 to i64
  %sub4088 = sub nsw i64 %827, %conv4087
  %conv4089 = trunc i64 %sub4088 to i32
  %829 = load i64, i64* %retlen, align 8
  %conv4090 = trunc i64 %829 to i32
  %add4091 = add i32 %conv4089, %conv4090
  %sub4092 = sub i32 %add4091, -2147483648
  %add4093 = add nsw i32 %sub4092, -2147483648
  br label %cond.end.4094

cond.end.4094:                                    ; preds = %cond.false.4084, %cond.true.4076
  %cond4095 = phi i32 [ %add4083, %cond.true.4076 ], [ %add4093, %cond.false.4084 ]
  %conv4096 = sext i32 %cond4095 to i64
  store i64 %conv4096, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.4097:                                  ; preds = %lor.lhs.false.4058
  %830 = load i64, i64* %prefix_length, align 8
  %831 = load i64, i64* %buf_size.addr, align 8
  %cmp4098 = icmp ne i64 %831, 0
  %conv4099 = zext i1 %cmp4098 to i32
  %conv4100 = sext i32 %conv4099 to i64
  %sub4101 = sub nsw i64 %830, %conv4100
  %conv4102 = trunc i64 %sub4101 to i32
  %832 = load i64, i64* %retlen, align 8
  %conv4103 = trunc i64 %832 to i32
  %add4104 = add i32 %conv4102, %conv4103
  %cmp4105 = icmp ule i32 %add4104, 2147483647
  br i1 %cmp4105, label %cond.true.4107, label %cond.false.4115

cond.true.4107:                                   ; preds = %cond.false.4097
  %833 = load i64, i64* %prefix_length, align 8
  %834 = load i64, i64* %buf_size.addr, align 8
  %cmp4108 = icmp ne i64 %834, 0
  %conv4109 = zext i1 %cmp4108 to i32
  %conv4110 = sext i32 %conv4109 to i64
  %sub4111 = sub nsw i64 %833, %conv4110
  %conv4112 = trunc i64 %sub4111 to i32
  %835 = load i64, i64* %retlen, align 8
  %conv4113 = trunc i64 %835 to i32
  %add4114 = add i32 %conv4112, %conv4113
  br label %cond.end.4125

cond.false.4115:                                  ; preds = %cond.false.4097
  %836 = load i64, i64* %prefix_length, align 8
  %837 = load i64, i64* %buf_size.addr, align 8
  %cmp4116 = icmp ne i64 %837, 0
  %conv4117 = zext i1 %cmp4116 to i32
  %conv4118 = sext i32 %conv4117 to i64
  %sub4119 = sub nsw i64 %836, %conv4118
  %conv4120 = trunc i64 %sub4119 to i32
  %838 = load i64, i64* %retlen, align 8
  %conv4121 = trunc i64 %838 to i32
  %add4122 = add i32 %conv4120, %conv4121
  %sub4123 = sub i32 %add4122, -2147483648
  %add4124 = add nsw i32 %sub4123, -2147483648
  br label %cond.end.4125

cond.end.4125:                                    ; preds = %cond.false.4115, %cond.true.4107
  %cond4126 = phi i32 [ %add4114, %cond.true.4107 ], [ %add4124, %cond.false.4115 ]
  %conv4127 = sext i32 %cond4126 to i64
  store i64 %conv4127, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

cond.false.4128:                                  ; preds = %cond.false.3528
  br i1 true, label %cond.true.4129, label %cond.false.4658

cond.true.4129:                                   ; preds = %cond.false.4128
  br i1 false, label %cond.true.4130, label %cond.false.4394

cond.true.4130:                                   ; preds = %cond.true.4129
  %839 = load i64, i64* %retlen, align 8
  %mul4131 = mul nsw i64 0, %839
  %840 = load i64, i64* %prefix_length, align 8
  %841 = load i64, i64* %buf_size.addr, align 8
  %cmp4132 = icmp ne i64 %841, 0
  %conv4133 = zext i1 %cmp4132 to i32
  %conv4134 = sext i32 %conv4133 to i64
  %sub4135 = sub nsw i64 %840, %conv4134
  %add4136 = add nsw i64 %mul4131, %sub4135
  %mul4137 = mul nsw i64 0, %add4136
  %sub4138 = sub nsw i64 %mul4137, 1
  %cmp4139 = icmp slt i64 %sub4138, 0
  br i1 %cmp4139, label %cond.true.4141, label %cond.false.4168

cond.true.4141:                                   ; preds = %cond.true.4130
  %842 = load i64, i64* %retlen, align 8
  %mul4142 = mul nsw i64 0, %842
  %843 = load i64, i64* %prefix_length, align 8
  %844 = load i64, i64* %buf_size.addr, align 8
  %cmp4143 = icmp ne i64 %844, 0
  %conv4144 = zext i1 %cmp4143 to i32
  %conv4145 = sext i32 %conv4144 to i64
  %sub4146 = sub nsw i64 %843, %conv4145
  %add4147 = add nsw i64 %mul4142, %sub4146
  %mul4148 = mul nsw i64 0, %add4147
  %add4149 = add nsw i64 %mul4148, 0
  %neg4150 = xor i64 %add4149, -1
  %cmp4151 = icmp eq i64 %neg4150, -1
  %conv4152 = zext i1 %cmp4151 to i32
  %sub4153 = sub nsw i32 0, %conv4152
  %conv4154 = sext i32 %sub4153 to i64
  %845 = load i64, i64* %retlen, align 8
  %mul4155 = mul nsw i64 0, %845
  %846 = load i64, i64* %prefix_length, align 8
  %847 = load i64, i64* %buf_size.addr, align 8
  %cmp4156 = icmp ne i64 %847, 0
  %conv4157 = zext i1 %cmp4156 to i32
  %conv4158 = sext i32 %conv4157 to i64
  %sub4159 = sub nsw i64 %846, %conv4158
  %add4160 = add nsw i64 %mul4155, %sub4159
  %mul4161 = mul nsw i64 0, %add4160
  %add4162 = add nsw i64 %mul4161, 1
  %shl4163 = shl i64 %add4162, 62
  %sub4164 = sub nsw i64 %shl4163, 1
  %mul4165 = mul nsw i64 %sub4164, 2
  %add4166 = add nsw i64 %mul4165, 1
  %sub4167 = sub nsw i64 %conv4154, %add4166
  br label %cond.end.4177

cond.false.4168:                                  ; preds = %cond.true.4130
  %848 = load i64, i64* %retlen, align 8
  %mul4169 = mul nsw i64 0, %848
  %849 = load i64, i64* %prefix_length, align 8
  %850 = load i64, i64* %buf_size.addr, align 8
  %cmp4170 = icmp ne i64 %850, 0
  %conv4171 = zext i1 %cmp4170 to i32
  %conv4172 = sext i32 %conv4171 to i64
  %sub4173 = sub nsw i64 %849, %conv4172
  %add4174 = add nsw i64 %mul4169, %sub4173
  %mul4175 = mul nsw i64 0, %add4174
  %add4176 = add nsw i64 %mul4175, 0
  br label %cond.end.4177

cond.end.4177:                                    ; preds = %cond.false.4168, %cond.true.4141
  %cond4178 = phi i64 [ %sub4167, %cond.true.4141 ], [ %add4176, %cond.false.4168 ]
  %cmp4179 = icmp slt i64 %cond4178, 0
  br i1 %cmp4179, label %cond.true.4181, label %cond.false.4282

cond.true.4181:                                   ; preds = %cond.end.4177
  %851 = load i64, i64* %retlen, align 8
  %cmp4182 = icmp slt i64 %851, 0
  br i1 %cmp4182, label %cond.true.4184, label %cond.false.4240

cond.true.4184:                                   ; preds = %cond.true.4181
  %852 = load i64, i64* %prefix_length, align 8
  %853 = load i64, i64* %buf_size.addr, align 8
  %cmp4185 = icmp ne i64 %853, 0
  %conv4186 = zext i1 %cmp4185 to i32
  %conv4187 = sext i32 %conv4186 to i64
  %sub4188 = sub nsw i64 %852, %conv4187
  %854 = load i64, i64* %retlen, align 8
  %mul4189 = mul nsw i64 0, %854
  %855 = load i64, i64* %prefix_length, align 8
  %856 = load i64, i64* %buf_size.addr, align 8
  %cmp4190 = icmp ne i64 %856, 0
  %conv4191 = zext i1 %cmp4190 to i32
  %conv4192 = sext i32 %conv4191 to i64
  %sub4193 = sub nsw i64 %855, %conv4192
  %add4194 = add nsw i64 %mul4189, %sub4193
  %mul4195 = mul nsw i64 0, %add4194
  %sub4196 = sub nsw i64 %mul4195, 1
  %cmp4197 = icmp slt i64 %sub4196, 0
  br i1 %cmp4197, label %cond.true.4199, label %cond.false.4226

cond.true.4199:                                   ; preds = %cond.true.4184
  %857 = load i64, i64* %retlen, align 8
  %mul4200 = mul nsw i64 0, %857
  %858 = load i64, i64* %prefix_length, align 8
  %859 = load i64, i64* %buf_size.addr, align 8
  %cmp4201 = icmp ne i64 %859, 0
  %conv4202 = zext i1 %cmp4201 to i32
  %conv4203 = sext i32 %conv4202 to i64
  %sub4204 = sub nsw i64 %858, %conv4203
  %add4205 = add nsw i64 %mul4200, %sub4204
  %mul4206 = mul nsw i64 0, %add4205
  %add4207 = add nsw i64 %mul4206, 0
  %neg4208 = xor i64 %add4207, -1
  %cmp4209 = icmp eq i64 %neg4208, -1
  %conv4210 = zext i1 %cmp4209 to i32
  %sub4211 = sub nsw i32 0, %conv4210
  %conv4212 = sext i32 %sub4211 to i64
  %860 = load i64, i64* %retlen, align 8
  %mul4213 = mul nsw i64 0, %860
  %861 = load i64, i64* %prefix_length, align 8
  %862 = load i64, i64* %buf_size.addr, align 8
  %cmp4214 = icmp ne i64 %862, 0
  %conv4215 = zext i1 %cmp4214 to i32
  %conv4216 = sext i32 %conv4215 to i64
  %sub4217 = sub nsw i64 %861, %conv4216
  %add4218 = add nsw i64 %mul4213, %sub4217
  %mul4219 = mul nsw i64 0, %add4218
  %add4220 = add nsw i64 %mul4219, 1
  %shl4221 = shl i64 %add4220, 62
  %sub4222 = sub nsw i64 %shl4221, 1
  %mul4223 = mul nsw i64 %sub4222, 2
  %add4224 = add nsw i64 %mul4223, 1
  %sub4225 = sub nsw i64 %conv4212, %add4224
  br label %cond.end.4235

cond.false.4226:                                  ; preds = %cond.true.4184
  %863 = load i64, i64* %retlen, align 8
  %mul4227 = mul nsw i64 0, %863
  %864 = load i64, i64* %prefix_length, align 8
  %865 = load i64, i64* %buf_size.addr, align 8
  %cmp4228 = icmp ne i64 %865, 0
  %conv4229 = zext i1 %cmp4228 to i32
  %conv4230 = sext i32 %conv4229 to i64
  %sub4231 = sub nsw i64 %864, %conv4230
  %add4232 = add nsw i64 %mul4227, %sub4231
  %mul4233 = mul nsw i64 0, %add4232
  %add4234 = add nsw i64 %mul4233, 0
  br label %cond.end.4235

cond.end.4235:                                    ; preds = %cond.false.4226, %cond.true.4199
  %cond4236 = phi i64 [ %sub4225, %cond.true.4199 ], [ %add4234, %cond.false.4226 ]
  %866 = load i64, i64* %retlen, align 8
  %sub4237 = sub nsw i64 %cond4236, %866
  %cmp4238 = icmp slt i64 %sub4188, %sub4237
  br i1 %cmp4238, label %cond.true.4346, label %lor.lhs.false.4320

cond.false.4240:                                  ; preds = %cond.true.4181
  %867 = load i64, i64* %retlen, align 8
  %mul4241 = mul nsw i64 0, %867
  %868 = load i64, i64* %prefix_length, align 8
  %869 = load i64, i64* %buf_size.addr, align 8
  %cmp4242 = icmp ne i64 %869, 0
  %conv4243 = zext i1 %cmp4242 to i32
  %conv4244 = sext i32 %conv4243 to i64
  %sub4245 = sub nsw i64 %868, %conv4244
  %add4246 = add nsw i64 %mul4241, %sub4245
  %mul4247 = mul nsw i64 0, %add4246
  %sub4248 = sub nsw i64 %mul4247, 1
  %cmp4249 = icmp slt i64 %sub4248, 0
  br i1 %cmp4249, label %cond.true.4251, label %cond.false.4264

cond.true.4251:                                   ; preds = %cond.false.4240
  %870 = load i64, i64* %retlen, align 8
  %mul4252 = mul nsw i64 0, %870
  %871 = load i64, i64* %prefix_length, align 8
  %872 = load i64, i64* %buf_size.addr, align 8
  %cmp4253 = icmp ne i64 %872, 0
  %conv4254 = zext i1 %cmp4253 to i32
  %conv4255 = sext i32 %conv4254 to i64
  %sub4256 = sub nsw i64 %871, %conv4255
  %add4257 = add nsw i64 %mul4252, %sub4256
  %mul4258 = mul nsw i64 0, %add4257
  %add4259 = add nsw i64 %mul4258, 1
  %shl4260 = shl i64 %add4259, 62
  %sub4261 = sub nsw i64 %shl4260, 1
  %mul4262 = mul nsw i64 %sub4261, 2
  %add4263 = add nsw i64 %mul4262, 1
  br label %cond.end.4273

cond.false.4264:                                  ; preds = %cond.false.4240
  %873 = load i64, i64* %retlen, align 8
  %mul4265 = mul nsw i64 0, %873
  %874 = load i64, i64* %prefix_length, align 8
  %875 = load i64, i64* %buf_size.addr, align 8
  %cmp4266 = icmp ne i64 %875, 0
  %conv4267 = zext i1 %cmp4266 to i32
  %conv4268 = sext i32 %conv4267 to i64
  %sub4269 = sub nsw i64 %874, %conv4268
  %add4270 = add nsw i64 %mul4265, %sub4269
  %mul4271 = mul nsw i64 0, %add4270
  %sub4272 = sub nsw i64 %mul4271, 1
  br label %cond.end.4273

cond.end.4273:                                    ; preds = %cond.false.4264, %cond.true.4251
  %cond4274 = phi i64 [ %add4263, %cond.true.4251 ], [ %sub4272, %cond.false.4264 ]
  %876 = load i64, i64* %retlen, align 8
  %sub4275 = sub nsw i64 %cond4274, %876
  %877 = load i64, i64* %prefix_length, align 8
  %878 = load i64, i64* %buf_size.addr, align 8
  %cmp4276 = icmp ne i64 %878, 0
  %conv4277 = zext i1 %cmp4276 to i32
  %conv4278 = sext i32 %conv4277 to i64
  %sub4279 = sub nsw i64 %877, %conv4278
  %cmp4280 = icmp slt i64 %sub4275, %sub4279
  br i1 %cmp4280, label %cond.true.4346, label %lor.lhs.false.4320

cond.false.4282:                                  ; preds = %cond.end.4177
  %879 = load i64, i64* %prefix_length, align 8
  %880 = load i64, i64* %buf_size.addr, align 8
  %cmp4283 = icmp ne i64 %880, 0
  %conv4284 = zext i1 %cmp4283 to i32
  %conv4285 = sext i32 %conv4284 to i64
  %sub4286 = sub nsw i64 %879, %conv4285
  %cmp4287 = icmp slt i64 %sub4286, 0
  br i1 %cmp4287, label %cond.true.4289, label %cond.false.4297

cond.true.4289:                                   ; preds = %cond.false.4282
  %881 = load i64, i64* %retlen, align 8
  %882 = load i64, i64* %prefix_length, align 8
  %883 = load i64, i64* %buf_size.addr, align 8
  %cmp4290 = icmp ne i64 %883, 0
  %conv4291 = zext i1 %cmp4290 to i32
  %conv4292 = sext i32 %conv4291 to i64
  %sub4293 = sub nsw i64 %882, %conv4292
  %884 = load i64, i64* %retlen, align 8
  %add4294 = add nsw i64 %sub4293, %884
  %cmp4295 = icmp sle i64 %881, %add4294
  br i1 %cmp4295, label %cond.true.4346, label %lor.lhs.false.4320

cond.false.4297:                                  ; preds = %cond.false.4282
  %885 = load i64, i64* %retlen, align 8
  %cmp4298 = icmp slt i64 %885, 0
  br i1 %cmp4298, label %cond.true.4300, label %cond.false.4312

cond.true.4300:                                   ; preds = %cond.false.4297
  %886 = load i64, i64* %prefix_length, align 8
  %887 = load i64, i64* %buf_size.addr, align 8
  %cmp4301 = icmp ne i64 %887, 0
  %conv4302 = zext i1 %cmp4301 to i32
  %conv4303 = sext i32 %conv4302 to i64
  %sub4304 = sub nsw i64 %886, %conv4303
  %888 = load i64, i64* %prefix_length, align 8
  %889 = load i64, i64* %buf_size.addr, align 8
  %cmp4305 = icmp ne i64 %889, 0
  %conv4306 = zext i1 %cmp4305 to i32
  %conv4307 = sext i32 %conv4306 to i64
  %sub4308 = sub nsw i64 %888, %conv4307
  %890 = load i64, i64* %retlen, align 8
  %add4309 = add nsw i64 %sub4308, %890
  %cmp4310 = icmp sle i64 %sub4304, %add4309
  br i1 %cmp4310, label %cond.true.4346, label %lor.lhs.false.4320

cond.false.4312:                                  ; preds = %cond.false.4297
  %891 = load i64, i64* %prefix_length, align 8
  %892 = load i64, i64* %buf_size.addr, align 8
  %cmp4313 = icmp ne i64 %892, 0
  %conv4314 = zext i1 %cmp4313 to i32
  %conv4315 = sext i32 %conv4314 to i64
  %sub4316 = sub nsw i64 %891, %conv4315
  %893 = load i64, i64* %retlen, align 8
  %add4317 = add nsw i64 %sub4316, %893
  %894 = load i64, i64* %retlen, align 8
  %cmp4318 = icmp slt i64 %add4317, %894
  br i1 %cmp4318, label %cond.true.4346, label %lor.lhs.false.4320

lor.lhs.false.4320:                               ; preds = %cond.false.4312, %cond.true.4300, %cond.true.4289, %cond.end.4273, %cond.end.4235
  %895 = load i64, i64* %prefix_length, align 8
  %896 = load i64, i64* %buf_size.addr, align 8
  %cmp4321 = icmp ne i64 %896, 0
  %conv4322 = zext i1 %cmp4321 to i32
  %conv4323 = sext i32 %conv4322 to i64
  %sub4324 = sub nsw i64 %895, %conv4323
  %897 = load i64, i64* %retlen, align 8
  %add4325 = add nsw i64 %sub4324, %897
  %mul4326 = mul nsw i64 0, %add4325
  %sub4327 = sub nsw i64 %mul4326, 1
  %cmp4328 = icmp slt i64 %sub4327, 0
  br i1 %cmp4328, label %land.lhs.true.4330, label %lor.lhs.false.4338

land.lhs.true.4330:                               ; preds = %lor.lhs.false.4320
  %898 = load i64, i64* %prefix_length, align 8
  %899 = load i64, i64* %buf_size.addr, align 8
  %cmp4331 = icmp ne i64 %899, 0
  %conv4332 = zext i1 %cmp4331 to i32
  %conv4333 = sext i32 %conv4332 to i64
  %sub4334 = sub nsw i64 %898, %conv4333
  %900 = load i64, i64* %retlen, align 8
  %add4335 = add nsw i64 %sub4334, %900
  %cmp4336 = icmp slt i64 %add4335, -9223372036854775808
  br i1 %cmp4336, label %cond.true.4346, label %lor.lhs.false.4338

lor.lhs.false.4338:                               ; preds = %land.lhs.true.4330, %lor.lhs.false.4320
  %901 = load i64, i64* %prefix_length, align 8
  %902 = load i64, i64* %buf_size.addr, align 8
  %cmp4339 = icmp ne i64 %902, 0
  %conv4340 = zext i1 %cmp4339 to i32
  %conv4341 = sext i32 %conv4340 to i64
  %sub4342 = sub nsw i64 %901, %conv4341
  %903 = load i64, i64* %retlen, align 8
  %add4343 = add nsw i64 %sub4342, %903
  %cmp4344 = icmp slt i64 9223372036854775807, %add4343
  br i1 %cmp4344, label %cond.true.4346, label %cond.false.4370

cond.true.4346:                                   ; preds = %lor.lhs.false.4338, %land.lhs.true.4330, %cond.false.4312, %cond.true.4300, %cond.true.4289, %cond.end.4273, %cond.end.4235
  %904 = load i64, i64* %prefix_length, align 8
  %905 = load i64, i64* %buf_size.addr, align 8
  %cmp4347 = icmp ne i64 %905, 0
  %conv4348 = zext i1 %cmp4347 to i32
  %conv4349 = sext i32 %conv4348 to i64
  %sub4350 = sub nsw i64 %904, %conv4349
  %906 = load i64, i64* %retlen, align 8
  %add4351 = add i64 %sub4350, %906
  %cmp4352 = icmp ule i64 %add4351, 9223372036854775807
  br i1 %cmp4352, label %cond.true.4354, label %cond.false.4360

cond.true.4354:                                   ; preds = %cond.true.4346
  %907 = load i64, i64* %prefix_length, align 8
  %908 = load i64, i64* %buf_size.addr, align 8
  %cmp4355 = icmp ne i64 %908, 0
  %conv4356 = zext i1 %cmp4355 to i32
  %conv4357 = sext i32 %conv4356 to i64
  %sub4358 = sub nsw i64 %907, %conv4357
  %909 = load i64, i64* %retlen, align 8
  %add4359 = add i64 %sub4358, %909
  br label %cond.end.4368

cond.false.4360:                                  ; preds = %cond.true.4346
  %910 = load i64, i64* %prefix_length, align 8
  %911 = load i64, i64* %buf_size.addr, align 8
  %cmp4361 = icmp ne i64 %911, 0
  %conv4362 = zext i1 %cmp4361 to i32
  %conv4363 = sext i32 %conv4362 to i64
  %sub4364 = sub nsw i64 %910, %conv4363
  %912 = load i64, i64* %retlen, align 8
  %add4365 = add i64 %sub4364, %912
  %sub4366 = sub i64 %add4365, -9223372036854775808
  %add4367 = add nsw i64 %sub4366, -9223372036854775808
  br label %cond.end.4368

cond.end.4368:                                    ; preds = %cond.false.4360, %cond.true.4354
  %cond4369 = phi i64 [ %add4359, %cond.true.4354 ], [ %add4367, %cond.false.4360 ]
  store i64 %cond4369, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.4370:                                  ; preds = %lor.lhs.false.4338
  %913 = load i64, i64* %prefix_length, align 8
  %914 = load i64, i64* %buf_size.addr, align 8
  %cmp4371 = icmp ne i64 %914, 0
  %conv4372 = zext i1 %cmp4371 to i32
  %conv4373 = sext i32 %conv4372 to i64
  %sub4374 = sub nsw i64 %913, %conv4373
  %915 = load i64, i64* %retlen, align 8
  %add4375 = add i64 %sub4374, %915
  %cmp4376 = icmp ule i64 %add4375, 9223372036854775807
  br i1 %cmp4376, label %cond.true.4378, label %cond.false.4384

cond.true.4378:                                   ; preds = %cond.false.4370
  %916 = load i64, i64* %prefix_length, align 8
  %917 = load i64, i64* %buf_size.addr, align 8
  %cmp4379 = icmp ne i64 %917, 0
  %conv4380 = zext i1 %cmp4379 to i32
  %conv4381 = sext i32 %conv4380 to i64
  %sub4382 = sub nsw i64 %916, %conv4381
  %918 = load i64, i64* %retlen, align 8
  %add4383 = add i64 %sub4382, %918
  br label %cond.end.4392

cond.false.4384:                                  ; preds = %cond.false.4370
  %919 = load i64, i64* %prefix_length, align 8
  %920 = load i64, i64* %buf_size.addr, align 8
  %cmp4385 = icmp ne i64 %920, 0
  %conv4386 = zext i1 %cmp4385 to i32
  %conv4387 = sext i32 %conv4386 to i64
  %sub4388 = sub nsw i64 %919, %conv4387
  %921 = load i64, i64* %retlen, align 8
  %add4389 = add i64 %sub4388, %921
  %sub4390 = sub i64 %add4389, -9223372036854775808
  %add4391 = add nsw i64 %sub4390, -9223372036854775808
  br label %cond.end.4392

cond.end.4392:                                    ; preds = %cond.false.4384, %cond.true.4378
  %cond4393 = phi i64 [ %add4383, %cond.true.4378 ], [ %add4391, %cond.false.4384 ]
  store i64 %cond4393, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

cond.false.4394:                                  ; preds = %cond.true.4129
  %922 = load i64, i64* %retlen, align 8
  %mul4395 = mul nsw i64 0, %922
  %923 = load i64, i64* %prefix_length, align 8
  %924 = load i64, i64* %buf_size.addr, align 8
  %cmp4396 = icmp ne i64 %924, 0
  %conv4397 = zext i1 %cmp4396 to i32
  %conv4398 = sext i32 %conv4397 to i64
  %sub4399 = sub nsw i64 %923, %conv4398
  %add4400 = add nsw i64 %mul4395, %sub4399
  %mul4401 = mul nsw i64 0, %add4400
  %sub4402 = sub nsw i64 %mul4401, 1
  %cmp4403 = icmp slt i64 %sub4402, 0
  br i1 %cmp4403, label %cond.true.4405, label %cond.false.4432

cond.true.4405:                                   ; preds = %cond.false.4394
  %925 = load i64, i64* %retlen, align 8
  %mul4406 = mul nsw i64 0, %925
  %926 = load i64, i64* %prefix_length, align 8
  %927 = load i64, i64* %buf_size.addr, align 8
  %cmp4407 = icmp ne i64 %927, 0
  %conv4408 = zext i1 %cmp4407 to i32
  %conv4409 = sext i32 %conv4408 to i64
  %sub4410 = sub nsw i64 %926, %conv4409
  %add4411 = add nsw i64 %mul4406, %sub4410
  %mul4412 = mul nsw i64 0, %add4411
  %add4413 = add nsw i64 %mul4412, 0
  %neg4414 = xor i64 %add4413, -1
  %cmp4415 = icmp eq i64 %neg4414, -1
  %conv4416 = zext i1 %cmp4415 to i32
  %sub4417 = sub nsw i32 0, %conv4416
  %conv4418 = sext i32 %sub4417 to i64
  %928 = load i64, i64* %retlen, align 8
  %mul4419 = mul nsw i64 0, %928
  %929 = load i64, i64* %prefix_length, align 8
  %930 = load i64, i64* %buf_size.addr, align 8
  %cmp4420 = icmp ne i64 %930, 0
  %conv4421 = zext i1 %cmp4420 to i32
  %conv4422 = sext i32 %conv4421 to i64
  %sub4423 = sub nsw i64 %929, %conv4422
  %add4424 = add nsw i64 %mul4419, %sub4423
  %mul4425 = mul nsw i64 0, %add4424
  %add4426 = add nsw i64 %mul4425, 1
  %shl4427 = shl i64 %add4426, 62
  %sub4428 = sub nsw i64 %shl4427, 1
  %mul4429 = mul nsw i64 %sub4428, 2
  %add4430 = add nsw i64 %mul4429, 1
  %sub4431 = sub nsw i64 %conv4418, %add4430
  br label %cond.end.4441

cond.false.4432:                                  ; preds = %cond.false.4394
  %931 = load i64, i64* %retlen, align 8
  %mul4433 = mul nsw i64 0, %931
  %932 = load i64, i64* %prefix_length, align 8
  %933 = load i64, i64* %buf_size.addr, align 8
  %cmp4434 = icmp ne i64 %933, 0
  %conv4435 = zext i1 %cmp4434 to i32
  %conv4436 = sext i32 %conv4435 to i64
  %sub4437 = sub nsw i64 %932, %conv4436
  %add4438 = add nsw i64 %mul4433, %sub4437
  %mul4439 = mul nsw i64 0, %add4438
  %add4440 = add nsw i64 %mul4439, 0
  br label %cond.end.4441

cond.end.4441:                                    ; preds = %cond.false.4432, %cond.true.4405
  %cond4442 = phi i64 [ %sub4431, %cond.true.4405 ], [ %add4440, %cond.false.4432 ]
  %cmp4443 = icmp slt i64 %cond4442, 0
  br i1 %cmp4443, label %cond.true.4445, label %cond.false.4546

cond.true.4445:                                   ; preds = %cond.end.4441
  %934 = load i64, i64* %retlen, align 8
  %cmp4446 = icmp slt i64 %934, 0
  br i1 %cmp4446, label %cond.true.4448, label %cond.false.4504

cond.true.4448:                                   ; preds = %cond.true.4445
  %935 = load i64, i64* %prefix_length, align 8
  %936 = load i64, i64* %buf_size.addr, align 8
  %cmp4449 = icmp ne i64 %936, 0
  %conv4450 = zext i1 %cmp4449 to i32
  %conv4451 = sext i32 %conv4450 to i64
  %sub4452 = sub nsw i64 %935, %conv4451
  %937 = load i64, i64* %retlen, align 8
  %mul4453 = mul nsw i64 0, %937
  %938 = load i64, i64* %prefix_length, align 8
  %939 = load i64, i64* %buf_size.addr, align 8
  %cmp4454 = icmp ne i64 %939, 0
  %conv4455 = zext i1 %cmp4454 to i32
  %conv4456 = sext i32 %conv4455 to i64
  %sub4457 = sub nsw i64 %938, %conv4456
  %add4458 = add nsw i64 %mul4453, %sub4457
  %mul4459 = mul nsw i64 0, %add4458
  %sub4460 = sub nsw i64 %mul4459, 1
  %cmp4461 = icmp slt i64 %sub4460, 0
  br i1 %cmp4461, label %cond.true.4463, label %cond.false.4490

cond.true.4463:                                   ; preds = %cond.true.4448
  %940 = load i64, i64* %retlen, align 8
  %mul4464 = mul nsw i64 0, %940
  %941 = load i64, i64* %prefix_length, align 8
  %942 = load i64, i64* %buf_size.addr, align 8
  %cmp4465 = icmp ne i64 %942, 0
  %conv4466 = zext i1 %cmp4465 to i32
  %conv4467 = sext i32 %conv4466 to i64
  %sub4468 = sub nsw i64 %941, %conv4467
  %add4469 = add nsw i64 %mul4464, %sub4468
  %mul4470 = mul nsw i64 0, %add4469
  %add4471 = add nsw i64 %mul4470, 0
  %neg4472 = xor i64 %add4471, -1
  %cmp4473 = icmp eq i64 %neg4472, -1
  %conv4474 = zext i1 %cmp4473 to i32
  %sub4475 = sub nsw i32 0, %conv4474
  %conv4476 = sext i32 %sub4475 to i64
  %943 = load i64, i64* %retlen, align 8
  %mul4477 = mul nsw i64 0, %943
  %944 = load i64, i64* %prefix_length, align 8
  %945 = load i64, i64* %buf_size.addr, align 8
  %cmp4478 = icmp ne i64 %945, 0
  %conv4479 = zext i1 %cmp4478 to i32
  %conv4480 = sext i32 %conv4479 to i64
  %sub4481 = sub nsw i64 %944, %conv4480
  %add4482 = add nsw i64 %mul4477, %sub4481
  %mul4483 = mul nsw i64 0, %add4482
  %add4484 = add nsw i64 %mul4483, 1
  %shl4485 = shl i64 %add4484, 62
  %sub4486 = sub nsw i64 %shl4485, 1
  %mul4487 = mul nsw i64 %sub4486, 2
  %add4488 = add nsw i64 %mul4487, 1
  %sub4489 = sub nsw i64 %conv4476, %add4488
  br label %cond.end.4499

cond.false.4490:                                  ; preds = %cond.true.4448
  %946 = load i64, i64* %retlen, align 8
  %mul4491 = mul nsw i64 0, %946
  %947 = load i64, i64* %prefix_length, align 8
  %948 = load i64, i64* %buf_size.addr, align 8
  %cmp4492 = icmp ne i64 %948, 0
  %conv4493 = zext i1 %cmp4492 to i32
  %conv4494 = sext i32 %conv4493 to i64
  %sub4495 = sub nsw i64 %947, %conv4494
  %add4496 = add nsw i64 %mul4491, %sub4495
  %mul4497 = mul nsw i64 0, %add4496
  %add4498 = add nsw i64 %mul4497, 0
  br label %cond.end.4499

cond.end.4499:                                    ; preds = %cond.false.4490, %cond.true.4463
  %cond4500 = phi i64 [ %sub4489, %cond.true.4463 ], [ %add4498, %cond.false.4490 ]
  %949 = load i64, i64* %retlen, align 8
  %sub4501 = sub nsw i64 %cond4500, %949
  %cmp4502 = icmp slt i64 %sub4452, %sub4501
  br i1 %cmp4502, label %cond.true.4610, label %lor.lhs.false.4584

cond.false.4504:                                  ; preds = %cond.true.4445
  %950 = load i64, i64* %retlen, align 8
  %mul4505 = mul nsw i64 0, %950
  %951 = load i64, i64* %prefix_length, align 8
  %952 = load i64, i64* %buf_size.addr, align 8
  %cmp4506 = icmp ne i64 %952, 0
  %conv4507 = zext i1 %cmp4506 to i32
  %conv4508 = sext i32 %conv4507 to i64
  %sub4509 = sub nsw i64 %951, %conv4508
  %add4510 = add nsw i64 %mul4505, %sub4509
  %mul4511 = mul nsw i64 0, %add4510
  %sub4512 = sub nsw i64 %mul4511, 1
  %cmp4513 = icmp slt i64 %sub4512, 0
  br i1 %cmp4513, label %cond.true.4515, label %cond.false.4528

cond.true.4515:                                   ; preds = %cond.false.4504
  %953 = load i64, i64* %retlen, align 8
  %mul4516 = mul nsw i64 0, %953
  %954 = load i64, i64* %prefix_length, align 8
  %955 = load i64, i64* %buf_size.addr, align 8
  %cmp4517 = icmp ne i64 %955, 0
  %conv4518 = zext i1 %cmp4517 to i32
  %conv4519 = sext i32 %conv4518 to i64
  %sub4520 = sub nsw i64 %954, %conv4519
  %add4521 = add nsw i64 %mul4516, %sub4520
  %mul4522 = mul nsw i64 0, %add4521
  %add4523 = add nsw i64 %mul4522, 1
  %shl4524 = shl i64 %add4523, 62
  %sub4525 = sub nsw i64 %shl4524, 1
  %mul4526 = mul nsw i64 %sub4525, 2
  %add4527 = add nsw i64 %mul4526, 1
  br label %cond.end.4537

cond.false.4528:                                  ; preds = %cond.false.4504
  %956 = load i64, i64* %retlen, align 8
  %mul4529 = mul nsw i64 0, %956
  %957 = load i64, i64* %prefix_length, align 8
  %958 = load i64, i64* %buf_size.addr, align 8
  %cmp4530 = icmp ne i64 %958, 0
  %conv4531 = zext i1 %cmp4530 to i32
  %conv4532 = sext i32 %conv4531 to i64
  %sub4533 = sub nsw i64 %957, %conv4532
  %add4534 = add nsw i64 %mul4529, %sub4533
  %mul4535 = mul nsw i64 0, %add4534
  %sub4536 = sub nsw i64 %mul4535, 1
  br label %cond.end.4537

cond.end.4537:                                    ; preds = %cond.false.4528, %cond.true.4515
  %cond4538 = phi i64 [ %add4527, %cond.true.4515 ], [ %sub4536, %cond.false.4528 ]
  %959 = load i64, i64* %retlen, align 8
  %sub4539 = sub nsw i64 %cond4538, %959
  %960 = load i64, i64* %prefix_length, align 8
  %961 = load i64, i64* %buf_size.addr, align 8
  %cmp4540 = icmp ne i64 %961, 0
  %conv4541 = zext i1 %cmp4540 to i32
  %conv4542 = sext i32 %conv4541 to i64
  %sub4543 = sub nsw i64 %960, %conv4542
  %cmp4544 = icmp slt i64 %sub4539, %sub4543
  br i1 %cmp4544, label %cond.true.4610, label %lor.lhs.false.4584

cond.false.4546:                                  ; preds = %cond.end.4441
  %962 = load i64, i64* %prefix_length, align 8
  %963 = load i64, i64* %buf_size.addr, align 8
  %cmp4547 = icmp ne i64 %963, 0
  %conv4548 = zext i1 %cmp4547 to i32
  %conv4549 = sext i32 %conv4548 to i64
  %sub4550 = sub nsw i64 %962, %conv4549
  %cmp4551 = icmp slt i64 %sub4550, 0
  br i1 %cmp4551, label %cond.true.4553, label %cond.false.4561

cond.true.4553:                                   ; preds = %cond.false.4546
  %964 = load i64, i64* %retlen, align 8
  %965 = load i64, i64* %prefix_length, align 8
  %966 = load i64, i64* %buf_size.addr, align 8
  %cmp4554 = icmp ne i64 %966, 0
  %conv4555 = zext i1 %cmp4554 to i32
  %conv4556 = sext i32 %conv4555 to i64
  %sub4557 = sub nsw i64 %965, %conv4556
  %967 = load i64, i64* %retlen, align 8
  %add4558 = add nsw i64 %sub4557, %967
  %cmp4559 = icmp sle i64 %964, %add4558
  br i1 %cmp4559, label %cond.true.4610, label %lor.lhs.false.4584

cond.false.4561:                                  ; preds = %cond.false.4546
  %968 = load i64, i64* %retlen, align 8
  %cmp4562 = icmp slt i64 %968, 0
  br i1 %cmp4562, label %cond.true.4564, label %cond.false.4576

cond.true.4564:                                   ; preds = %cond.false.4561
  %969 = load i64, i64* %prefix_length, align 8
  %970 = load i64, i64* %buf_size.addr, align 8
  %cmp4565 = icmp ne i64 %970, 0
  %conv4566 = zext i1 %cmp4565 to i32
  %conv4567 = sext i32 %conv4566 to i64
  %sub4568 = sub nsw i64 %969, %conv4567
  %971 = load i64, i64* %prefix_length, align 8
  %972 = load i64, i64* %buf_size.addr, align 8
  %cmp4569 = icmp ne i64 %972, 0
  %conv4570 = zext i1 %cmp4569 to i32
  %conv4571 = sext i32 %conv4570 to i64
  %sub4572 = sub nsw i64 %971, %conv4571
  %973 = load i64, i64* %retlen, align 8
  %add4573 = add nsw i64 %sub4572, %973
  %cmp4574 = icmp sle i64 %sub4568, %add4573
  br i1 %cmp4574, label %cond.true.4610, label %lor.lhs.false.4584

cond.false.4576:                                  ; preds = %cond.false.4561
  %974 = load i64, i64* %prefix_length, align 8
  %975 = load i64, i64* %buf_size.addr, align 8
  %cmp4577 = icmp ne i64 %975, 0
  %conv4578 = zext i1 %cmp4577 to i32
  %conv4579 = sext i32 %conv4578 to i64
  %sub4580 = sub nsw i64 %974, %conv4579
  %976 = load i64, i64* %retlen, align 8
  %add4581 = add nsw i64 %sub4580, %976
  %977 = load i64, i64* %retlen, align 8
  %cmp4582 = icmp slt i64 %add4581, %977
  br i1 %cmp4582, label %cond.true.4610, label %lor.lhs.false.4584

lor.lhs.false.4584:                               ; preds = %cond.false.4576, %cond.true.4564, %cond.true.4553, %cond.end.4537, %cond.end.4499
  %978 = load i64, i64* %prefix_length, align 8
  %979 = load i64, i64* %buf_size.addr, align 8
  %cmp4585 = icmp ne i64 %979, 0
  %conv4586 = zext i1 %cmp4585 to i32
  %conv4587 = sext i32 %conv4586 to i64
  %sub4588 = sub nsw i64 %978, %conv4587
  %980 = load i64, i64* %retlen, align 8
  %add4589 = add nsw i64 %sub4588, %980
  %mul4590 = mul nsw i64 0, %add4589
  %sub4591 = sub nsw i64 %mul4590, 1
  %cmp4592 = icmp slt i64 %sub4591, 0
  br i1 %cmp4592, label %land.lhs.true.4594, label %lor.lhs.false.4602

land.lhs.true.4594:                               ; preds = %lor.lhs.false.4584
  %981 = load i64, i64* %prefix_length, align 8
  %982 = load i64, i64* %buf_size.addr, align 8
  %cmp4595 = icmp ne i64 %982, 0
  %conv4596 = zext i1 %cmp4595 to i32
  %conv4597 = sext i32 %conv4596 to i64
  %sub4598 = sub nsw i64 %981, %conv4597
  %983 = load i64, i64* %retlen, align 8
  %add4599 = add nsw i64 %sub4598, %983
  %cmp4600 = icmp slt i64 %add4599, -9223372036854775808
  br i1 %cmp4600, label %cond.true.4610, label %lor.lhs.false.4602

lor.lhs.false.4602:                               ; preds = %land.lhs.true.4594, %lor.lhs.false.4584
  %984 = load i64, i64* %prefix_length, align 8
  %985 = load i64, i64* %buf_size.addr, align 8
  %cmp4603 = icmp ne i64 %985, 0
  %conv4604 = zext i1 %cmp4603 to i32
  %conv4605 = sext i32 %conv4604 to i64
  %sub4606 = sub nsw i64 %984, %conv4605
  %986 = load i64, i64* %retlen, align 8
  %add4607 = add nsw i64 %sub4606, %986
  %cmp4608 = icmp slt i64 9223372036854775807, %add4607
  br i1 %cmp4608, label %cond.true.4610, label %cond.false.4634

cond.true.4610:                                   ; preds = %lor.lhs.false.4602, %land.lhs.true.4594, %cond.false.4576, %cond.true.4564, %cond.true.4553, %cond.end.4537, %cond.end.4499
  %987 = load i64, i64* %prefix_length, align 8
  %988 = load i64, i64* %buf_size.addr, align 8
  %cmp4611 = icmp ne i64 %988, 0
  %conv4612 = zext i1 %cmp4611 to i32
  %conv4613 = sext i32 %conv4612 to i64
  %sub4614 = sub nsw i64 %987, %conv4613
  %989 = load i64, i64* %retlen, align 8
  %add4615 = add i64 %sub4614, %989
  %cmp4616 = icmp ule i64 %add4615, 9223372036854775807
  br i1 %cmp4616, label %cond.true.4618, label %cond.false.4624

cond.true.4618:                                   ; preds = %cond.true.4610
  %990 = load i64, i64* %prefix_length, align 8
  %991 = load i64, i64* %buf_size.addr, align 8
  %cmp4619 = icmp ne i64 %991, 0
  %conv4620 = zext i1 %cmp4619 to i32
  %conv4621 = sext i32 %conv4620 to i64
  %sub4622 = sub nsw i64 %990, %conv4621
  %992 = load i64, i64* %retlen, align 8
  %add4623 = add i64 %sub4622, %992
  br label %cond.end.4632

cond.false.4624:                                  ; preds = %cond.true.4610
  %993 = load i64, i64* %prefix_length, align 8
  %994 = load i64, i64* %buf_size.addr, align 8
  %cmp4625 = icmp ne i64 %994, 0
  %conv4626 = zext i1 %cmp4625 to i32
  %conv4627 = sext i32 %conv4626 to i64
  %sub4628 = sub nsw i64 %993, %conv4627
  %995 = load i64, i64* %retlen, align 8
  %add4629 = add i64 %sub4628, %995
  %sub4630 = sub i64 %add4629, -9223372036854775808
  %add4631 = add nsw i64 %sub4630, -9223372036854775808
  br label %cond.end.4632

cond.end.4632:                                    ; preds = %cond.false.4624, %cond.true.4618
  %cond4633 = phi i64 [ %add4623, %cond.true.4618 ], [ %add4631, %cond.false.4624 ]
  store i64 %cond4633, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.4634:                                  ; preds = %lor.lhs.false.4602
  %996 = load i64, i64* %prefix_length, align 8
  %997 = load i64, i64* %buf_size.addr, align 8
  %cmp4635 = icmp ne i64 %997, 0
  %conv4636 = zext i1 %cmp4635 to i32
  %conv4637 = sext i32 %conv4636 to i64
  %sub4638 = sub nsw i64 %996, %conv4637
  %998 = load i64, i64* %retlen, align 8
  %add4639 = add i64 %sub4638, %998
  %cmp4640 = icmp ule i64 %add4639, 9223372036854775807
  br i1 %cmp4640, label %cond.true.4642, label %cond.false.4648

cond.true.4642:                                   ; preds = %cond.false.4634
  %999 = load i64, i64* %prefix_length, align 8
  %1000 = load i64, i64* %buf_size.addr, align 8
  %cmp4643 = icmp ne i64 %1000, 0
  %conv4644 = zext i1 %cmp4643 to i32
  %conv4645 = sext i32 %conv4644 to i64
  %sub4646 = sub nsw i64 %999, %conv4645
  %1001 = load i64, i64* %retlen, align 8
  %add4647 = add i64 %sub4646, %1001
  br label %cond.end.4656

cond.false.4648:                                  ; preds = %cond.false.4634
  %1002 = load i64, i64* %prefix_length, align 8
  %1003 = load i64, i64* %buf_size.addr, align 8
  %cmp4649 = icmp ne i64 %1003, 0
  %conv4650 = zext i1 %cmp4649 to i32
  %conv4651 = sext i32 %conv4650 to i64
  %sub4652 = sub nsw i64 %1002, %conv4651
  %1004 = load i64, i64* %retlen, align 8
  %add4653 = add i64 %sub4652, %1004
  %sub4654 = sub i64 %add4653, -9223372036854775808
  %add4655 = add nsw i64 %sub4654, -9223372036854775808
  br label %cond.end.4656

cond.end.4656:                                    ; preds = %cond.false.4648, %cond.true.4642
  %cond4657 = phi i64 [ %add4647, %cond.true.4642 ], [ %add4655, %cond.false.4648 ]
  store i64 %cond4657, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

cond.false.4658:                                  ; preds = %cond.false.4128
  br i1 false, label %cond.true.4659, label %cond.false.4923

cond.true.4659:                                   ; preds = %cond.false.4658
  %1005 = load i64, i64* %retlen, align 8
  %mul4660 = mul nsw i64 0, %1005
  %1006 = load i64, i64* %prefix_length, align 8
  %1007 = load i64, i64* %buf_size.addr, align 8
  %cmp4661 = icmp ne i64 %1007, 0
  %conv4662 = zext i1 %cmp4661 to i32
  %conv4663 = sext i32 %conv4662 to i64
  %sub4664 = sub nsw i64 %1006, %conv4663
  %add4665 = add nsw i64 %mul4660, %sub4664
  %mul4666 = mul nsw i64 0, %add4665
  %sub4667 = sub nsw i64 %mul4666, 1
  %cmp4668 = icmp slt i64 %sub4667, 0
  br i1 %cmp4668, label %cond.true.4670, label %cond.false.4697

cond.true.4670:                                   ; preds = %cond.true.4659
  %1008 = load i64, i64* %retlen, align 8
  %mul4671 = mul nsw i64 0, %1008
  %1009 = load i64, i64* %prefix_length, align 8
  %1010 = load i64, i64* %buf_size.addr, align 8
  %cmp4672 = icmp ne i64 %1010, 0
  %conv4673 = zext i1 %cmp4672 to i32
  %conv4674 = sext i32 %conv4673 to i64
  %sub4675 = sub nsw i64 %1009, %conv4674
  %add4676 = add nsw i64 %mul4671, %sub4675
  %mul4677 = mul nsw i64 0, %add4676
  %add4678 = add nsw i64 %mul4677, 0
  %neg4679 = xor i64 %add4678, -1
  %cmp4680 = icmp eq i64 %neg4679, -1
  %conv4681 = zext i1 %cmp4680 to i32
  %sub4682 = sub nsw i32 0, %conv4681
  %conv4683 = sext i32 %sub4682 to i64
  %1011 = load i64, i64* %retlen, align 8
  %mul4684 = mul nsw i64 0, %1011
  %1012 = load i64, i64* %prefix_length, align 8
  %1013 = load i64, i64* %buf_size.addr, align 8
  %cmp4685 = icmp ne i64 %1013, 0
  %conv4686 = zext i1 %cmp4685 to i32
  %conv4687 = sext i32 %conv4686 to i64
  %sub4688 = sub nsw i64 %1012, %conv4687
  %add4689 = add nsw i64 %mul4684, %sub4688
  %mul4690 = mul nsw i64 0, %add4689
  %add4691 = add nsw i64 %mul4690, 1
  %shl4692 = shl i64 %add4691, 62
  %sub4693 = sub nsw i64 %shl4692, 1
  %mul4694 = mul nsw i64 %sub4693, 2
  %add4695 = add nsw i64 %mul4694, 1
  %sub4696 = sub nsw i64 %conv4683, %add4695
  br label %cond.end.4706

cond.false.4697:                                  ; preds = %cond.true.4659
  %1014 = load i64, i64* %retlen, align 8
  %mul4698 = mul nsw i64 0, %1014
  %1015 = load i64, i64* %prefix_length, align 8
  %1016 = load i64, i64* %buf_size.addr, align 8
  %cmp4699 = icmp ne i64 %1016, 0
  %conv4700 = zext i1 %cmp4699 to i32
  %conv4701 = sext i32 %conv4700 to i64
  %sub4702 = sub nsw i64 %1015, %conv4701
  %add4703 = add nsw i64 %mul4698, %sub4702
  %mul4704 = mul nsw i64 0, %add4703
  %add4705 = add nsw i64 %mul4704, 0
  br label %cond.end.4706

cond.end.4706:                                    ; preds = %cond.false.4697, %cond.true.4670
  %cond4707 = phi i64 [ %sub4696, %cond.true.4670 ], [ %add4705, %cond.false.4697 ]
  %cmp4708 = icmp slt i64 %cond4707, 0
  br i1 %cmp4708, label %cond.true.4710, label %cond.false.4811

cond.true.4710:                                   ; preds = %cond.end.4706
  %1017 = load i64, i64* %retlen, align 8
  %cmp4711 = icmp slt i64 %1017, 0
  br i1 %cmp4711, label %cond.true.4713, label %cond.false.4769

cond.true.4713:                                   ; preds = %cond.true.4710
  %1018 = load i64, i64* %prefix_length, align 8
  %1019 = load i64, i64* %buf_size.addr, align 8
  %cmp4714 = icmp ne i64 %1019, 0
  %conv4715 = zext i1 %cmp4714 to i32
  %conv4716 = sext i32 %conv4715 to i64
  %sub4717 = sub nsw i64 %1018, %conv4716
  %1020 = load i64, i64* %retlen, align 8
  %mul4718 = mul nsw i64 0, %1020
  %1021 = load i64, i64* %prefix_length, align 8
  %1022 = load i64, i64* %buf_size.addr, align 8
  %cmp4719 = icmp ne i64 %1022, 0
  %conv4720 = zext i1 %cmp4719 to i32
  %conv4721 = sext i32 %conv4720 to i64
  %sub4722 = sub nsw i64 %1021, %conv4721
  %add4723 = add nsw i64 %mul4718, %sub4722
  %mul4724 = mul nsw i64 0, %add4723
  %sub4725 = sub nsw i64 %mul4724, 1
  %cmp4726 = icmp slt i64 %sub4725, 0
  br i1 %cmp4726, label %cond.true.4728, label %cond.false.4755

cond.true.4728:                                   ; preds = %cond.true.4713
  %1023 = load i64, i64* %retlen, align 8
  %mul4729 = mul nsw i64 0, %1023
  %1024 = load i64, i64* %prefix_length, align 8
  %1025 = load i64, i64* %buf_size.addr, align 8
  %cmp4730 = icmp ne i64 %1025, 0
  %conv4731 = zext i1 %cmp4730 to i32
  %conv4732 = sext i32 %conv4731 to i64
  %sub4733 = sub nsw i64 %1024, %conv4732
  %add4734 = add nsw i64 %mul4729, %sub4733
  %mul4735 = mul nsw i64 0, %add4734
  %add4736 = add nsw i64 %mul4735, 0
  %neg4737 = xor i64 %add4736, -1
  %cmp4738 = icmp eq i64 %neg4737, -1
  %conv4739 = zext i1 %cmp4738 to i32
  %sub4740 = sub nsw i32 0, %conv4739
  %conv4741 = sext i32 %sub4740 to i64
  %1026 = load i64, i64* %retlen, align 8
  %mul4742 = mul nsw i64 0, %1026
  %1027 = load i64, i64* %prefix_length, align 8
  %1028 = load i64, i64* %buf_size.addr, align 8
  %cmp4743 = icmp ne i64 %1028, 0
  %conv4744 = zext i1 %cmp4743 to i32
  %conv4745 = sext i32 %conv4744 to i64
  %sub4746 = sub nsw i64 %1027, %conv4745
  %add4747 = add nsw i64 %mul4742, %sub4746
  %mul4748 = mul nsw i64 0, %add4747
  %add4749 = add nsw i64 %mul4748, 1
  %shl4750 = shl i64 %add4749, 62
  %sub4751 = sub nsw i64 %shl4750, 1
  %mul4752 = mul nsw i64 %sub4751, 2
  %add4753 = add nsw i64 %mul4752, 1
  %sub4754 = sub nsw i64 %conv4741, %add4753
  br label %cond.end.4764

cond.false.4755:                                  ; preds = %cond.true.4713
  %1029 = load i64, i64* %retlen, align 8
  %mul4756 = mul nsw i64 0, %1029
  %1030 = load i64, i64* %prefix_length, align 8
  %1031 = load i64, i64* %buf_size.addr, align 8
  %cmp4757 = icmp ne i64 %1031, 0
  %conv4758 = zext i1 %cmp4757 to i32
  %conv4759 = sext i32 %conv4758 to i64
  %sub4760 = sub nsw i64 %1030, %conv4759
  %add4761 = add nsw i64 %mul4756, %sub4760
  %mul4762 = mul nsw i64 0, %add4761
  %add4763 = add nsw i64 %mul4762, 0
  br label %cond.end.4764

cond.end.4764:                                    ; preds = %cond.false.4755, %cond.true.4728
  %cond4765 = phi i64 [ %sub4754, %cond.true.4728 ], [ %add4763, %cond.false.4755 ]
  %1032 = load i64, i64* %retlen, align 8
  %sub4766 = sub nsw i64 %cond4765, %1032
  %cmp4767 = icmp slt i64 %sub4717, %sub4766
  br i1 %cmp4767, label %cond.true.4875, label %lor.lhs.false.4849

cond.false.4769:                                  ; preds = %cond.true.4710
  %1033 = load i64, i64* %retlen, align 8
  %mul4770 = mul nsw i64 0, %1033
  %1034 = load i64, i64* %prefix_length, align 8
  %1035 = load i64, i64* %buf_size.addr, align 8
  %cmp4771 = icmp ne i64 %1035, 0
  %conv4772 = zext i1 %cmp4771 to i32
  %conv4773 = sext i32 %conv4772 to i64
  %sub4774 = sub nsw i64 %1034, %conv4773
  %add4775 = add nsw i64 %mul4770, %sub4774
  %mul4776 = mul nsw i64 0, %add4775
  %sub4777 = sub nsw i64 %mul4776, 1
  %cmp4778 = icmp slt i64 %sub4777, 0
  br i1 %cmp4778, label %cond.true.4780, label %cond.false.4793

cond.true.4780:                                   ; preds = %cond.false.4769
  %1036 = load i64, i64* %retlen, align 8
  %mul4781 = mul nsw i64 0, %1036
  %1037 = load i64, i64* %prefix_length, align 8
  %1038 = load i64, i64* %buf_size.addr, align 8
  %cmp4782 = icmp ne i64 %1038, 0
  %conv4783 = zext i1 %cmp4782 to i32
  %conv4784 = sext i32 %conv4783 to i64
  %sub4785 = sub nsw i64 %1037, %conv4784
  %add4786 = add nsw i64 %mul4781, %sub4785
  %mul4787 = mul nsw i64 0, %add4786
  %add4788 = add nsw i64 %mul4787, 1
  %shl4789 = shl i64 %add4788, 62
  %sub4790 = sub nsw i64 %shl4789, 1
  %mul4791 = mul nsw i64 %sub4790, 2
  %add4792 = add nsw i64 %mul4791, 1
  br label %cond.end.4802

cond.false.4793:                                  ; preds = %cond.false.4769
  %1039 = load i64, i64* %retlen, align 8
  %mul4794 = mul nsw i64 0, %1039
  %1040 = load i64, i64* %prefix_length, align 8
  %1041 = load i64, i64* %buf_size.addr, align 8
  %cmp4795 = icmp ne i64 %1041, 0
  %conv4796 = zext i1 %cmp4795 to i32
  %conv4797 = sext i32 %conv4796 to i64
  %sub4798 = sub nsw i64 %1040, %conv4797
  %add4799 = add nsw i64 %mul4794, %sub4798
  %mul4800 = mul nsw i64 0, %add4799
  %sub4801 = sub nsw i64 %mul4800, 1
  br label %cond.end.4802

cond.end.4802:                                    ; preds = %cond.false.4793, %cond.true.4780
  %cond4803 = phi i64 [ %add4792, %cond.true.4780 ], [ %sub4801, %cond.false.4793 ]
  %1042 = load i64, i64* %retlen, align 8
  %sub4804 = sub nsw i64 %cond4803, %1042
  %1043 = load i64, i64* %prefix_length, align 8
  %1044 = load i64, i64* %buf_size.addr, align 8
  %cmp4805 = icmp ne i64 %1044, 0
  %conv4806 = zext i1 %cmp4805 to i32
  %conv4807 = sext i32 %conv4806 to i64
  %sub4808 = sub nsw i64 %1043, %conv4807
  %cmp4809 = icmp slt i64 %sub4804, %sub4808
  br i1 %cmp4809, label %cond.true.4875, label %lor.lhs.false.4849

cond.false.4811:                                  ; preds = %cond.end.4706
  %1045 = load i64, i64* %prefix_length, align 8
  %1046 = load i64, i64* %buf_size.addr, align 8
  %cmp4812 = icmp ne i64 %1046, 0
  %conv4813 = zext i1 %cmp4812 to i32
  %conv4814 = sext i32 %conv4813 to i64
  %sub4815 = sub nsw i64 %1045, %conv4814
  %cmp4816 = icmp slt i64 %sub4815, 0
  br i1 %cmp4816, label %cond.true.4818, label %cond.false.4826

cond.true.4818:                                   ; preds = %cond.false.4811
  %1047 = load i64, i64* %retlen, align 8
  %1048 = load i64, i64* %prefix_length, align 8
  %1049 = load i64, i64* %buf_size.addr, align 8
  %cmp4819 = icmp ne i64 %1049, 0
  %conv4820 = zext i1 %cmp4819 to i32
  %conv4821 = sext i32 %conv4820 to i64
  %sub4822 = sub nsw i64 %1048, %conv4821
  %1050 = load i64, i64* %retlen, align 8
  %add4823 = add nsw i64 %sub4822, %1050
  %cmp4824 = icmp sle i64 %1047, %add4823
  br i1 %cmp4824, label %cond.true.4875, label %lor.lhs.false.4849

cond.false.4826:                                  ; preds = %cond.false.4811
  %1051 = load i64, i64* %retlen, align 8
  %cmp4827 = icmp slt i64 %1051, 0
  br i1 %cmp4827, label %cond.true.4829, label %cond.false.4841

cond.true.4829:                                   ; preds = %cond.false.4826
  %1052 = load i64, i64* %prefix_length, align 8
  %1053 = load i64, i64* %buf_size.addr, align 8
  %cmp4830 = icmp ne i64 %1053, 0
  %conv4831 = zext i1 %cmp4830 to i32
  %conv4832 = sext i32 %conv4831 to i64
  %sub4833 = sub nsw i64 %1052, %conv4832
  %1054 = load i64, i64* %prefix_length, align 8
  %1055 = load i64, i64* %buf_size.addr, align 8
  %cmp4834 = icmp ne i64 %1055, 0
  %conv4835 = zext i1 %cmp4834 to i32
  %conv4836 = sext i32 %conv4835 to i64
  %sub4837 = sub nsw i64 %1054, %conv4836
  %1056 = load i64, i64* %retlen, align 8
  %add4838 = add nsw i64 %sub4837, %1056
  %cmp4839 = icmp sle i64 %sub4833, %add4838
  br i1 %cmp4839, label %cond.true.4875, label %lor.lhs.false.4849

cond.false.4841:                                  ; preds = %cond.false.4826
  %1057 = load i64, i64* %prefix_length, align 8
  %1058 = load i64, i64* %buf_size.addr, align 8
  %cmp4842 = icmp ne i64 %1058, 0
  %conv4843 = zext i1 %cmp4842 to i32
  %conv4844 = sext i32 %conv4843 to i64
  %sub4845 = sub nsw i64 %1057, %conv4844
  %1059 = load i64, i64* %retlen, align 8
  %add4846 = add nsw i64 %sub4845, %1059
  %1060 = load i64, i64* %retlen, align 8
  %cmp4847 = icmp slt i64 %add4846, %1060
  br i1 %cmp4847, label %cond.true.4875, label %lor.lhs.false.4849

lor.lhs.false.4849:                               ; preds = %cond.false.4841, %cond.true.4829, %cond.true.4818, %cond.end.4802, %cond.end.4764
  %1061 = load i64, i64* %prefix_length, align 8
  %1062 = load i64, i64* %buf_size.addr, align 8
  %cmp4850 = icmp ne i64 %1062, 0
  %conv4851 = zext i1 %cmp4850 to i32
  %conv4852 = sext i32 %conv4851 to i64
  %sub4853 = sub nsw i64 %1061, %conv4852
  %1063 = load i64, i64* %retlen, align 8
  %add4854 = add nsw i64 %sub4853, %1063
  %mul4855 = mul nsw i64 0, %add4854
  %sub4856 = sub nsw i64 %mul4855, 1
  %cmp4857 = icmp slt i64 %sub4856, 0
  br i1 %cmp4857, label %land.lhs.true.4859, label %lor.lhs.false.4867

land.lhs.true.4859:                               ; preds = %lor.lhs.false.4849
  %1064 = load i64, i64* %prefix_length, align 8
  %1065 = load i64, i64* %buf_size.addr, align 8
  %cmp4860 = icmp ne i64 %1065, 0
  %conv4861 = zext i1 %cmp4860 to i32
  %conv4862 = sext i32 %conv4861 to i64
  %sub4863 = sub nsw i64 %1064, %conv4862
  %1066 = load i64, i64* %retlen, align 8
  %add4864 = add nsw i64 %sub4863, %1066
  %cmp4865 = icmp slt i64 %add4864, -9223372036854775808
  br i1 %cmp4865, label %cond.true.4875, label %lor.lhs.false.4867

lor.lhs.false.4867:                               ; preds = %land.lhs.true.4859, %lor.lhs.false.4849
  %1067 = load i64, i64* %prefix_length, align 8
  %1068 = load i64, i64* %buf_size.addr, align 8
  %cmp4868 = icmp ne i64 %1068, 0
  %conv4869 = zext i1 %cmp4868 to i32
  %conv4870 = sext i32 %conv4869 to i64
  %sub4871 = sub nsw i64 %1067, %conv4870
  %1069 = load i64, i64* %retlen, align 8
  %add4872 = add nsw i64 %sub4871, %1069
  %cmp4873 = icmp slt i64 9223372036854775807, %add4872
  br i1 %cmp4873, label %cond.true.4875, label %cond.false.4899

cond.true.4875:                                   ; preds = %lor.lhs.false.4867, %land.lhs.true.4859, %cond.false.4841, %cond.true.4829, %cond.true.4818, %cond.end.4802, %cond.end.4764
  %1070 = load i64, i64* %prefix_length, align 8
  %1071 = load i64, i64* %buf_size.addr, align 8
  %cmp4876 = icmp ne i64 %1071, 0
  %conv4877 = zext i1 %cmp4876 to i32
  %conv4878 = sext i32 %conv4877 to i64
  %sub4879 = sub nsw i64 %1070, %conv4878
  %1072 = load i64, i64* %retlen, align 8
  %add4880 = add i64 %sub4879, %1072
  %cmp4881 = icmp ule i64 %add4880, 9223372036854775807
  br i1 %cmp4881, label %cond.true.4883, label %cond.false.4889

cond.true.4883:                                   ; preds = %cond.true.4875
  %1073 = load i64, i64* %prefix_length, align 8
  %1074 = load i64, i64* %buf_size.addr, align 8
  %cmp4884 = icmp ne i64 %1074, 0
  %conv4885 = zext i1 %cmp4884 to i32
  %conv4886 = sext i32 %conv4885 to i64
  %sub4887 = sub nsw i64 %1073, %conv4886
  %1075 = load i64, i64* %retlen, align 8
  %add4888 = add i64 %sub4887, %1075
  br label %cond.end.4897

cond.false.4889:                                  ; preds = %cond.true.4875
  %1076 = load i64, i64* %prefix_length, align 8
  %1077 = load i64, i64* %buf_size.addr, align 8
  %cmp4890 = icmp ne i64 %1077, 0
  %conv4891 = zext i1 %cmp4890 to i32
  %conv4892 = sext i32 %conv4891 to i64
  %sub4893 = sub nsw i64 %1076, %conv4892
  %1078 = load i64, i64* %retlen, align 8
  %add4894 = add i64 %sub4893, %1078
  %sub4895 = sub i64 %add4894, -9223372036854775808
  %add4896 = add nsw i64 %sub4895, -9223372036854775808
  br label %cond.end.4897

cond.end.4897:                                    ; preds = %cond.false.4889, %cond.true.4883
  %cond4898 = phi i64 [ %add4888, %cond.true.4883 ], [ %add4896, %cond.false.4889 ]
  store i64 %cond4898, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.4899:                                  ; preds = %lor.lhs.false.4867
  %1079 = load i64, i64* %prefix_length, align 8
  %1080 = load i64, i64* %buf_size.addr, align 8
  %cmp4900 = icmp ne i64 %1080, 0
  %conv4901 = zext i1 %cmp4900 to i32
  %conv4902 = sext i32 %conv4901 to i64
  %sub4903 = sub nsw i64 %1079, %conv4902
  %1081 = load i64, i64* %retlen, align 8
  %add4904 = add i64 %sub4903, %1081
  %cmp4905 = icmp ule i64 %add4904, 9223372036854775807
  br i1 %cmp4905, label %cond.true.4907, label %cond.false.4913

cond.true.4907:                                   ; preds = %cond.false.4899
  %1082 = load i64, i64* %prefix_length, align 8
  %1083 = load i64, i64* %buf_size.addr, align 8
  %cmp4908 = icmp ne i64 %1083, 0
  %conv4909 = zext i1 %cmp4908 to i32
  %conv4910 = sext i32 %conv4909 to i64
  %sub4911 = sub nsw i64 %1082, %conv4910
  %1084 = load i64, i64* %retlen, align 8
  %add4912 = add i64 %sub4911, %1084
  br label %cond.end.4921

cond.false.4913:                                  ; preds = %cond.false.4899
  %1085 = load i64, i64* %prefix_length, align 8
  %1086 = load i64, i64* %buf_size.addr, align 8
  %cmp4914 = icmp ne i64 %1086, 0
  %conv4915 = zext i1 %cmp4914 to i32
  %conv4916 = sext i32 %conv4915 to i64
  %sub4917 = sub nsw i64 %1085, %conv4916
  %1087 = load i64, i64* %retlen, align 8
  %add4918 = add i64 %sub4917, %1087
  %sub4919 = sub i64 %add4918, -9223372036854775808
  %add4920 = add nsw i64 %sub4919, -9223372036854775808
  br label %cond.end.4921

cond.end.4921:                                    ; preds = %cond.false.4913, %cond.true.4907
  %cond4922 = phi i64 [ %add4912, %cond.true.4907 ], [ %add4920, %cond.false.4913 ]
  store i64 %cond4922, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

cond.false.4923:                                  ; preds = %cond.false.4658
  %1088 = load i64, i64* %retlen, align 8
  %mul4924 = mul nsw i64 0, %1088
  %1089 = load i64, i64* %prefix_length, align 8
  %1090 = load i64, i64* %buf_size.addr, align 8
  %cmp4925 = icmp ne i64 %1090, 0
  %conv4926 = zext i1 %cmp4925 to i32
  %conv4927 = sext i32 %conv4926 to i64
  %sub4928 = sub nsw i64 %1089, %conv4927
  %add4929 = add nsw i64 %mul4924, %sub4928
  %mul4930 = mul nsw i64 0, %add4929
  %sub4931 = sub nsw i64 %mul4930, 1
  %cmp4932 = icmp slt i64 %sub4931, 0
  br i1 %cmp4932, label %cond.true.4934, label %cond.false.4961

cond.true.4934:                                   ; preds = %cond.false.4923
  %1091 = load i64, i64* %retlen, align 8
  %mul4935 = mul nsw i64 0, %1091
  %1092 = load i64, i64* %prefix_length, align 8
  %1093 = load i64, i64* %buf_size.addr, align 8
  %cmp4936 = icmp ne i64 %1093, 0
  %conv4937 = zext i1 %cmp4936 to i32
  %conv4938 = sext i32 %conv4937 to i64
  %sub4939 = sub nsw i64 %1092, %conv4938
  %add4940 = add nsw i64 %mul4935, %sub4939
  %mul4941 = mul nsw i64 0, %add4940
  %add4942 = add nsw i64 %mul4941, 0
  %neg4943 = xor i64 %add4942, -1
  %cmp4944 = icmp eq i64 %neg4943, -1
  %conv4945 = zext i1 %cmp4944 to i32
  %sub4946 = sub nsw i32 0, %conv4945
  %conv4947 = sext i32 %sub4946 to i64
  %1094 = load i64, i64* %retlen, align 8
  %mul4948 = mul nsw i64 0, %1094
  %1095 = load i64, i64* %prefix_length, align 8
  %1096 = load i64, i64* %buf_size.addr, align 8
  %cmp4949 = icmp ne i64 %1096, 0
  %conv4950 = zext i1 %cmp4949 to i32
  %conv4951 = sext i32 %conv4950 to i64
  %sub4952 = sub nsw i64 %1095, %conv4951
  %add4953 = add nsw i64 %mul4948, %sub4952
  %mul4954 = mul nsw i64 0, %add4953
  %add4955 = add nsw i64 %mul4954, 1
  %shl4956 = shl i64 %add4955, 62
  %sub4957 = sub nsw i64 %shl4956, 1
  %mul4958 = mul nsw i64 %sub4957, 2
  %add4959 = add nsw i64 %mul4958, 1
  %sub4960 = sub nsw i64 %conv4947, %add4959
  br label %cond.end.4970

cond.false.4961:                                  ; preds = %cond.false.4923
  %1097 = load i64, i64* %retlen, align 8
  %mul4962 = mul nsw i64 0, %1097
  %1098 = load i64, i64* %prefix_length, align 8
  %1099 = load i64, i64* %buf_size.addr, align 8
  %cmp4963 = icmp ne i64 %1099, 0
  %conv4964 = zext i1 %cmp4963 to i32
  %conv4965 = sext i32 %conv4964 to i64
  %sub4966 = sub nsw i64 %1098, %conv4965
  %add4967 = add nsw i64 %mul4962, %sub4966
  %mul4968 = mul nsw i64 0, %add4967
  %add4969 = add nsw i64 %mul4968, 0
  br label %cond.end.4970

cond.end.4970:                                    ; preds = %cond.false.4961, %cond.true.4934
  %cond4971 = phi i64 [ %sub4960, %cond.true.4934 ], [ %add4969, %cond.false.4961 ]
  %cmp4972 = icmp slt i64 %cond4971, 0
  br i1 %cmp4972, label %cond.true.4974, label %cond.false.5075

cond.true.4974:                                   ; preds = %cond.end.4970
  %1100 = load i64, i64* %retlen, align 8
  %cmp4975 = icmp slt i64 %1100, 0
  br i1 %cmp4975, label %cond.true.4977, label %cond.false.5033

cond.true.4977:                                   ; preds = %cond.true.4974
  %1101 = load i64, i64* %prefix_length, align 8
  %1102 = load i64, i64* %buf_size.addr, align 8
  %cmp4978 = icmp ne i64 %1102, 0
  %conv4979 = zext i1 %cmp4978 to i32
  %conv4980 = sext i32 %conv4979 to i64
  %sub4981 = sub nsw i64 %1101, %conv4980
  %1103 = load i64, i64* %retlen, align 8
  %mul4982 = mul nsw i64 0, %1103
  %1104 = load i64, i64* %prefix_length, align 8
  %1105 = load i64, i64* %buf_size.addr, align 8
  %cmp4983 = icmp ne i64 %1105, 0
  %conv4984 = zext i1 %cmp4983 to i32
  %conv4985 = sext i32 %conv4984 to i64
  %sub4986 = sub nsw i64 %1104, %conv4985
  %add4987 = add nsw i64 %mul4982, %sub4986
  %mul4988 = mul nsw i64 0, %add4987
  %sub4989 = sub nsw i64 %mul4988, 1
  %cmp4990 = icmp slt i64 %sub4989, 0
  br i1 %cmp4990, label %cond.true.4992, label %cond.false.5019

cond.true.4992:                                   ; preds = %cond.true.4977
  %1106 = load i64, i64* %retlen, align 8
  %mul4993 = mul nsw i64 0, %1106
  %1107 = load i64, i64* %prefix_length, align 8
  %1108 = load i64, i64* %buf_size.addr, align 8
  %cmp4994 = icmp ne i64 %1108, 0
  %conv4995 = zext i1 %cmp4994 to i32
  %conv4996 = sext i32 %conv4995 to i64
  %sub4997 = sub nsw i64 %1107, %conv4996
  %add4998 = add nsw i64 %mul4993, %sub4997
  %mul4999 = mul nsw i64 0, %add4998
  %add5000 = add nsw i64 %mul4999, 0
  %neg5001 = xor i64 %add5000, -1
  %cmp5002 = icmp eq i64 %neg5001, -1
  %conv5003 = zext i1 %cmp5002 to i32
  %sub5004 = sub nsw i32 0, %conv5003
  %conv5005 = sext i32 %sub5004 to i64
  %1109 = load i64, i64* %retlen, align 8
  %mul5006 = mul nsw i64 0, %1109
  %1110 = load i64, i64* %prefix_length, align 8
  %1111 = load i64, i64* %buf_size.addr, align 8
  %cmp5007 = icmp ne i64 %1111, 0
  %conv5008 = zext i1 %cmp5007 to i32
  %conv5009 = sext i32 %conv5008 to i64
  %sub5010 = sub nsw i64 %1110, %conv5009
  %add5011 = add nsw i64 %mul5006, %sub5010
  %mul5012 = mul nsw i64 0, %add5011
  %add5013 = add nsw i64 %mul5012, 1
  %shl5014 = shl i64 %add5013, 62
  %sub5015 = sub nsw i64 %shl5014, 1
  %mul5016 = mul nsw i64 %sub5015, 2
  %add5017 = add nsw i64 %mul5016, 1
  %sub5018 = sub nsw i64 %conv5005, %add5017
  br label %cond.end.5028

cond.false.5019:                                  ; preds = %cond.true.4977
  %1112 = load i64, i64* %retlen, align 8
  %mul5020 = mul nsw i64 0, %1112
  %1113 = load i64, i64* %prefix_length, align 8
  %1114 = load i64, i64* %buf_size.addr, align 8
  %cmp5021 = icmp ne i64 %1114, 0
  %conv5022 = zext i1 %cmp5021 to i32
  %conv5023 = sext i32 %conv5022 to i64
  %sub5024 = sub nsw i64 %1113, %conv5023
  %add5025 = add nsw i64 %mul5020, %sub5024
  %mul5026 = mul nsw i64 0, %add5025
  %add5027 = add nsw i64 %mul5026, 0
  br label %cond.end.5028

cond.end.5028:                                    ; preds = %cond.false.5019, %cond.true.4992
  %cond5029 = phi i64 [ %sub5018, %cond.true.4992 ], [ %add5027, %cond.false.5019 ]
  %1115 = load i64, i64* %retlen, align 8
  %sub5030 = sub nsw i64 %cond5029, %1115
  %cmp5031 = icmp slt i64 %sub4981, %sub5030
  br i1 %cmp5031, label %cond.true.5139, label %lor.lhs.false.5113

cond.false.5033:                                  ; preds = %cond.true.4974
  %1116 = load i64, i64* %retlen, align 8
  %mul5034 = mul nsw i64 0, %1116
  %1117 = load i64, i64* %prefix_length, align 8
  %1118 = load i64, i64* %buf_size.addr, align 8
  %cmp5035 = icmp ne i64 %1118, 0
  %conv5036 = zext i1 %cmp5035 to i32
  %conv5037 = sext i32 %conv5036 to i64
  %sub5038 = sub nsw i64 %1117, %conv5037
  %add5039 = add nsw i64 %mul5034, %sub5038
  %mul5040 = mul nsw i64 0, %add5039
  %sub5041 = sub nsw i64 %mul5040, 1
  %cmp5042 = icmp slt i64 %sub5041, 0
  br i1 %cmp5042, label %cond.true.5044, label %cond.false.5057

cond.true.5044:                                   ; preds = %cond.false.5033
  %1119 = load i64, i64* %retlen, align 8
  %mul5045 = mul nsw i64 0, %1119
  %1120 = load i64, i64* %prefix_length, align 8
  %1121 = load i64, i64* %buf_size.addr, align 8
  %cmp5046 = icmp ne i64 %1121, 0
  %conv5047 = zext i1 %cmp5046 to i32
  %conv5048 = sext i32 %conv5047 to i64
  %sub5049 = sub nsw i64 %1120, %conv5048
  %add5050 = add nsw i64 %mul5045, %sub5049
  %mul5051 = mul nsw i64 0, %add5050
  %add5052 = add nsw i64 %mul5051, 1
  %shl5053 = shl i64 %add5052, 62
  %sub5054 = sub nsw i64 %shl5053, 1
  %mul5055 = mul nsw i64 %sub5054, 2
  %add5056 = add nsw i64 %mul5055, 1
  br label %cond.end.5066

cond.false.5057:                                  ; preds = %cond.false.5033
  %1122 = load i64, i64* %retlen, align 8
  %mul5058 = mul nsw i64 0, %1122
  %1123 = load i64, i64* %prefix_length, align 8
  %1124 = load i64, i64* %buf_size.addr, align 8
  %cmp5059 = icmp ne i64 %1124, 0
  %conv5060 = zext i1 %cmp5059 to i32
  %conv5061 = sext i32 %conv5060 to i64
  %sub5062 = sub nsw i64 %1123, %conv5061
  %add5063 = add nsw i64 %mul5058, %sub5062
  %mul5064 = mul nsw i64 0, %add5063
  %sub5065 = sub nsw i64 %mul5064, 1
  br label %cond.end.5066

cond.end.5066:                                    ; preds = %cond.false.5057, %cond.true.5044
  %cond5067 = phi i64 [ %add5056, %cond.true.5044 ], [ %sub5065, %cond.false.5057 ]
  %1125 = load i64, i64* %retlen, align 8
  %sub5068 = sub nsw i64 %cond5067, %1125
  %1126 = load i64, i64* %prefix_length, align 8
  %1127 = load i64, i64* %buf_size.addr, align 8
  %cmp5069 = icmp ne i64 %1127, 0
  %conv5070 = zext i1 %cmp5069 to i32
  %conv5071 = sext i32 %conv5070 to i64
  %sub5072 = sub nsw i64 %1126, %conv5071
  %cmp5073 = icmp slt i64 %sub5068, %sub5072
  br i1 %cmp5073, label %cond.true.5139, label %lor.lhs.false.5113

cond.false.5075:                                  ; preds = %cond.end.4970
  %1128 = load i64, i64* %prefix_length, align 8
  %1129 = load i64, i64* %buf_size.addr, align 8
  %cmp5076 = icmp ne i64 %1129, 0
  %conv5077 = zext i1 %cmp5076 to i32
  %conv5078 = sext i32 %conv5077 to i64
  %sub5079 = sub nsw i64 %1128, %conv5078
  %cmp5080 = icmp slt i64 %sub5079, 0
  br i1 %cmp5080, label %cond.true.5082, label %cond.false.5090

cond.true.5082:                                   ; preds = %cond.false.5075
  %1130 = load i64, i64* %retlen, align 8
  %1131 = load i64, i64* %prefix_length, align 8
  %1132 = load i64, i64* %buf_size.addr, align 8
  %cmp5083 = icmp ne i64 %1132, 0
  %conv5084 = zext i1 %cmp5083 to i32
  %conv5085 = sext i32 %conv5084 to i64
  %sub5086 = sub nsw i64 %1131, %conv5085
  %1133 = load i64, i64* %retlen, align 8
  %add5087 = add nsw i64 %sub5086, %1133
  %cmp5088 = icmp sle i64 %1130, %add5087
  br i1 %cmp5088, label %cond.true.5139, label %lor.lhs.false.5113

cond.false.5090:                                  ; preds = %cond.false.5075
  %1134 = load i64, i64* %retlen, align 8
  %cmp5091 = icmp slt i64 %1134, 0
  br i1 %cmp5091, label %cond.true.5093, label %cond.false.5105

cond.true.5093:                                   ; preds = %cond.false.5090
  %1135 = load i64, i64* %prefix_length, align 8
  %1136 = load i64, i64* %buf_size.addr, align 8
  %cmp5094 = icmp ne i64 %1136, 0
  %conv5095 = zext i1 %cmp5094 to i32
  %conv5096 = sext i32 %conv5095 to i64
  %sub5097 = sub nsw i64 %1135, %conv5096
  %1137 = load i64, i64* %prefix_length, align 8
  %1138 = load i64, i64* %buf_size.addr, align 8
  %cmp5098 = icmp ne i64 %1138, 0
  %conv5099 = zext i1 %cmp5098 to i32
  %conv5100 = sext i32 %conv5099 to i64
  %sub5101 = sub nsw i64 %1137, %conv5100
  %1139 = load i64, i64* %retlen, align 8
  %add5102 = add nsw i64 %sub5101, %1139
  %cmp5103 = icmp sle i64 %sub5097, %add5102
  br i1 %cmp5103, label %cond.true.5139, label %lor.lhs.false.5113

cond.false.5105:                                  ; preds = %cond.false.5090
  %1140 = load i64, i64* %prefix_length, align 8
  %1141 = load i64, i64* %buf_size.addr, align 8
  %cmp5106 = icmp ne i64 %1141, 0
  %conv5107 = zext i1 %cmp5106 to i32
  %conv5108 = sext i32 %conv5107 to i64
  %sub5109 = sub nsw i64 %1140, %conv5108
  %1142 = load i64, i64* %retlen, align 8
  %add5110 = add nsw i64 %sub5109, %1142
  %1143 = load i64, i64* %retlen, align 8
  %cmp5111 = icmp slt i64 %add5110, %1143
  br i1 %cmp5111, label %cond.true.5139, label %lor.lhs.false.5113

lor.lhs.false.5113:                               ; preds = %cond.false.5105, %cond.true.5093, %cond.true.5082, %cond.end.5066, %cond.end.5028
  %1144 = load i64, i64* %prefix_length, align 8
  %1145 = load i64, i64* %buf_size.addr, align 8
  %cmp5114 = icmp ne i64 %1145, 0
  %conv5115 = zext i1 %cmp5114 to i32
  %conv5116 = sext i32 %conv5115 to i64
  %sub5117 = sub nsw i64 %1144, %conv5116
  %1146 = load i64, i64* %retlen, align 8
  %add5118 = add nsw i64 %sub5117, %1146
  %mul5119 = mul nsw i64 0, %add5118
  %sub5120 = sub nsw i64 %mul5119, 1
  %cmp5121 = icmp slt i64 %sub5120, 0
  br i1 %cmp5121, label %land.lhs.true.5123, label %lor.lhs.false.5131

land.lhs.true.5123:                               ; preds = %lor.lhs.false.5113
  %1147 = load i64, i64* %prefix_length, align 8
  %1148 = load i64, i64* %buf_size.addr, align 8
  %cmp5124 = icmp ne i64 %1148, 0
  %conv5125 = zext i1 %cmp5124 to i32
  %conv5126 = sext i32 %conv5125 to i64
  %sub5127 = sub nsw i64 %1147, %conv5126
  %1149 = load i64, i64* %retlen, align 8
  %add5128 = add nsw i64 %sub5127, %1149
  %cmp5129 = icmp slt i64 %add5128, -9223372036854775808
  br i1 %cmp5129, label %cond.true.5139, label %lor.lhs.false.5131

lor.lhs.false.5131:                               ; preds = %land.lhs.true.5123, %lor.lhs.false.5113
  %1150 = load i64, i64* %prefix_length, align 8
  %1151 = load i64, i64* %buf_size.addr, align 8
  %cmp5132 = icmp ne i64 %1151, 0
  %conv5133 = zext i1 %cmp5132 to i32
  %conv5134 = sext i32 %conv5133 to i64
  %sub5135 = sub nsw i64 %1150, %conv5134
  %1152 = load i64, i64* %retlen, align 8
  %add5136 = add nsw i64 %sub5135, %1152
  %cmp5137 = icmp slt i64 9223372036854775807, %add5136
  br i1 %cmp5137, label %cond.true.5139, label %cond.false.5163

cond.true.5139:                                   ; preds = %lor.lhs.false.5131, %land.lhs.true.5123, %cond.false.5105, %cond.true.5093, %cond.true.5082, %cond.end.5066, %cond.end.5028
  %1153 = load i64, i64* %prefix_length, align 8
  %1154 = load i64, i64* %buf_size.addr, align 8
  %cmp5140 = icmp ne i64 %1154, 0
  %conv5141 = zext i1 %cmp5140 to i32
  %conv5142 = sext i32 %conv5141 to i64
  %sub5143 = sub nsw i64 %1153, %conv5142
  %1155 = load i64, i64* %retlen, align 8
  %add5144 = add i64 %sub5143, %1155
  %cmp5145 = icmp ule i64 %add5144, 9223372036854775807
  br i1 %cmp5145, label %cond.true.5147, label %cond.false.5153

cond.true.5147:                                   ; preds = %cond.true.5139
  %1156 = load i64, i64* %prefix_length, align 8
  %1157 = load i64, i64* %buf_size.addr, align 8
  %cmp5148 = icmp ne i64 %1157, 0
  %conv5149 = zext i1 %cmp5148 to i32
  %conv5150 = sext i32 %conv5149 to i64
  %sub5151 = sub nsw i64 %1156, %conv5150
  %1158 = load i64, i64* %retlen, align 8
  %add5152 = add i64 %sub5151, %1158
  br label %cond.end.5161

cond.false.5153:                                  ; preds = %cond.true.5139
  %1159 = load i64, i64* %prefix_length, align 8
  %1160 = load i64, i64* %buf_size.addr, align 8
  %cmp5154 = icmp ne i64 %1160, 0
  %conv5155 = zext i1 %cmp5154 to i32
  %conv5156 = sext i32 %conv5155 to i64
  %sub5157 = sub nsw i64 %1159, %conv5156
  %1161 = load i64, i64* %retlen, align 8
  %add5158 = add i64 %sub5157, %1161
  %sub5159 = sub i64 %add5158, -9223372036854775808
  %add5160 = add nsw i64 %sub5159, -9223372036854775808
  br label %cond.end.5161

cond.end.5161:                                    ; preds = %cond.false.5153, %cond.true.5147
  %cond5162 = phi i64 [ %add5152, %cond.true.5147 ], [ %add5160, %cond.false.5153 ]
  store i64 %cond5162, i64* %retlen, align 8
  br i1 true, label %if.then, label %if.end

cond.false.5163:                                  ; preds = %lor.lhs.false.5131
  %1162 = load i64, i64* %prefix_length, align 8
  %1163 = load i64, i64* %buf_size.addr, align 8
  %cmp5164 = icmp ne i64 %1163, 0
  %conv5165 = zext i1 %cmp5164 to i32
  %conv5166 = sext i32 %conv5165 to i64
  %sub5167 = sub nsw i64 %1162, %conv5166
  %1164 = load i64, i64* %retlen, align 8
  %add5168 = add i64 %sub5167, %1164
  %cmp5169 = icmp ule i64 %add5168, 9223372036854775807
  br i1 %cmp5169, label %cond.true.5171, label %cond.false.5177

cond.true.5171:                                   ; preds = %cond.false.5163
  %1165 = load i64, i64* %prefix_length, align 8
  %1166 = load i64, i64* %buf_size.addr, align 8
  %cmp5172 = icmp ne i64 %1166, 0
  %conv5173 = zext i1 %cmp5172 to i32
  %conv5174 = sext i32 %conv5173 to i64
  %sub5175 = sub nsw i64 %1165, %conv5174
  %1167 = load i64, i64* %retlen, align 8
  %add5176 = add i64 %sub5175, %1167
  br label %cond.end.5185

cond.false.5177:                                  ; preds = %cond.false.5163
  %1168 = load i64, i64* %prefix_length, align 8
  %1169 = load i64, i64* %buf_size.addr, align 8
  %cmp5178 = icmp ne i64 %1169, 0
  %conv5179 = zext i1 %cmp5178 to i32
  %conv5180 = sext i32 %conv5179 to i64
  %sub5181 = sub nsw i64 %1168, %conv5180
  %1170 = load i64, i64* %retlen, align 8
  %add5182 = add i64 %sub5181, %1170
  %sub5183 = sub i64 %add5182, -9223372036854775808
  %add5184 = add nsw i64 %sub5183, -9223372036854775808
  br label %cond.end.5185

cond.end.5185:                                    ; preds = %cond.false.5177, %cond.true.5171
  %cond5186 = phi i64 [ %add5176, %cond.true.5171 ], [ %add5184, %cond.false.5177 ]
  store i64 %cond5186, i64* %retlen, align 8
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.5185, %cond.end.5161, %cond.end.4921, %cond.end.4897, %cond.end.4656, %cond.end.4632, %cond.end.4392, %cond.end.4368, %cond.end.4125, %cond.end.4094, %cond.end.3847, %cond.end.3816, %cond.end.3525, %cond.end.3484, %cond.end.3227, %cond.end.3186, %cond.end.2841, %cond.end.2800, %cond.end.2543, %cond.end.2502, %cond.end.2158, %cond.end.2146, %cond.end.1965, %cond.end.1953, %cond.end.1771, %cond.end.1759, %cond.end.1578, %cond.end.1566, %cond.end.1382, %cond.end.1366, %cond.end.1181, %cond.end.1165, %cond.end.953, %cond.end.930, %cond.end.738, %cond.end.715, %cond.end.468, %cond.end.445, %cond.end.253, %cond.end.230
  call void @string_overflow() #8
  unreachable

if.end:                                           ; preds = %cond.end.5185, %cond.end.5161, %cond.end.4921, %cond.end.4897, %cond.end.4656, %cond.end.4632, %cond.end.4392, %cond.end.4368, %cond.end.4125, %cond.end.4094, %cond.end.3847, %cond.end.3816, %cond.end.3525, %cond.end.3484, %cond.end.3227, %cond.end.3186, %cond.end.2841, %cond.end.2800, %cond.end.2543, %cond.end.2502
  %1171 = load i64, i64* %retlen, align 8
  %call5187 = call i64 @make_uninit_string(i64 %1171)
  store i64 %call5187, i64* %ret, align 8
  %1172 = load i64, i64* %ret, align 8
  %call5188 = call i8* @SSDATA(i64 %1172)
  store i8* %call5188, i8** %string, align 8
  %1173 = load i8*, i8** %string, align 8
  %1174 = load i8*, i8** %prefix.addr, align 8
  %call5189 = call i8* @strcpy(i8* %1173, i8* %1174) #9
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1175 = load i64, i64* %i, align 8
  %1176 = load i64, i64* %buf_size.addr, align 8
  %cmp5190 = icmp slt i64 %1175, %1176
  br i1 %cmp5190, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1177 = load i8*, i8** %string, align 8
  %1178 = load i64, i64* %i, align 8
  %mul5192 = mul nsw i64 %1178, 3
  %add.ptr = getelementptr inbounds i8, i8* %1177, i64 %mul5192
  %1179 = load i64, i64* %prefix_length, align 8
  %add.ptr5193 = getelementptr inbounds i8, i8* %add.ptr, i64 %1179
  %1180 = load i64, i64* %i, align 8
  %1181 = load i64, i64* %buf_size.addr, align 8
  %sub5194 = sub nsw i64 %1181, 1
  %cmp5195 = icmp eq i64 %1180, %sub5194
  %cond5197 = select i1 %cmp5195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0)
  %1182 = load i64, i64* %i, align 8
  %1183 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1183, i64 %1182
  %1184 = load i8, i8* %arrayidx, align 1
  %conv5198 = zext i8 %1184 to i32
  %call5199 = call i32 (i8*, i8*, ...) @sprintf(i8* %add.ptr5193, i8* %cond5197, i32 %conv5198) #9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1185 = load i64, i64* %i, align 8
  %inc = add nsw i64 %1185, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %1186 = load i64, i64* %ret, align 8
  ret i64 %1186
}

declare void @xfree(i8*) #1

declare i32 @gnutls_x509_crt_get_issuer_dn(%struct.gnutls_x509_crt_int*, i8*, i64*) #1

declare i64 @make_string(i8*, i64) #1

declare i64 @gnutls_x509_crt_get_activation_time(%struct.gnutls_x509_crt_int*) #1

; Function Attrs: nounwind
declare %struct.tm* @gmtime_r(i64*, %struct.tm*) #6

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #6

declare i64 @gnutls_x509_crt_get_expiration_time(%struct.gnutls_x509_crt_int*) #1

declare i32 @gnutls_x509_crt_get_dn(%struct.gnutls_x509_crt_int*, i8*, i64*) #1

declare i32 @gnutls_x509_crt_get_pk_algorithm(%struct.gnutls_x509_crt_int*, i32*) #1

declare i8* @gnutls_pk_algorithm_get_name(i32) #1

declare i8* @gnutls_sec_param_get_name(i32) #1

declare i32 @gnutls_pk_bits_to_sec_param(i32, i32) #1

declare i32 @gnutls_x509_crt_get_issuer_unique_id(%struct.gnutls_x509_crt_int*, i8*, i64*) #1

declare i32 @gnutls_x509_crt_get_subject_unique_id(%struct.gnutls_x509_crt_int*, i8*, i64*) #1

declare i32 @gnutls_x509_crt_get_signature_algorithm(%struct.gnutls_x509_crt_int*) #1

declare i8* @gnutls_sign_get_name(i32) #1

declare i32 @gnutls_x509_crt_get_key_id(%struct.gnutls_x509_crt_int*, i32, i8*, i64*) #1

declare i32 @gnutls_x509_crt_get_fingerprint(%struct.gnutls_x509_crt_int*, i32, i8*, i64*) #1

; Function Attrs: noreturn
declare void @string_overflow() #4

declare i64 @make_uninit_string(i64) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #6

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #6

; Function Attrs: noreturn
declare void @memory_full(i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { noreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
