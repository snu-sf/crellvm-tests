; ModuleID = './MultiSource.Applications.ClamAV/25.libclamav_phishcheck.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32, i32*, i32, i8*, i32, i8**, i8*, %struct.text*, %struct.text*, %struct.cli_ctx*, i8, i8, i8, i32, i8, %struct.text*, %struct.text*, %struct.text*, %struct.text*, %struct.text* }
%struct.text = type { i8*, %struct.text* }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tag_arguments_tag = type { i32, i32, i8**, i8**, %struct.blob** }
%struct.blob = type { i8*, i8*, i64, i64, i32 }
%struct.phishcheck = type { %struct.regex_t, %struct.regex_t, %struct.regex_t, %struct.regex_t, %struct.regex_t, %struct.regex_t, i32 }
%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type opaque
%struct.url_check = type { %struct.string, %struct.string, %struct.pre_fixup_info, i16, i16, i16 }
%struct.string = type { i32, %struct.string*, i8* }
%struct.pre_fixup_info = type { %struct.string, i64, i64 }
%struct.regmatch_t = type { i64, i64 }

@href_text = internal constant [5 x i8] c"href\00", align 1
@src_text = internal constant [4 x i8] c"src\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"urls.displayLink.data[...]\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Phishcheck: Phishing scan result: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Phishing.Heuristics.Email.HexURL\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Phishing.Heuristics.Email.Cloaked.NumericIP\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Phishing.Heuristics.Email.Cloaked.Null\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Phishing.Heuristics.Email.SSL-Spoof\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Phishing.Heuristics.Email.Cloaked.Username\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Phishing.Heuristics.Email.SpoofedDomain\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Phishcheck: href with no contents?\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Initializing phishcheck module\0A\00", align 1
@cloaked_host_regex = internal constant [64 x i8] c"^(0[xX][0-9a-fA-F]+|[0-9]+)(\5C.(0[xX][0-9a-fA-F]+|[0-9]+)){0,3}$\00", align 16
@cctld_regex = internal constant [262 x i8] c"^(a[dfilmoqrtuwxz]|b[bdeghijmorstwyz]|c[ahlmnosuy]|d[ejkmz]|e[cegrstu]|f[ijr]|g[abdeghilmnprtuwy]|h[nrtu]|i[delnqst]|j[emop]|k[eghimwz]|l[birstuv]|m[acglmnoqrstuvwxyz]|n[aegilopru]|om|p[aehkltwy]|qa|r[ow]|s[cdeginorz]|t[dghjklmnorvwz]|u[agyz]|v[enu]|ws|y[etu])$\00", align 16
@tld_regex = internal constant [428 x i8] c"^(A[CDEFGILMNOQRSTUWXZ]|B[ABDEFGHIJMNORSTVWYZ]|C[ACDFGHIKLMNORUVXYZ]|D[EJKMOZ]|E[CEGRSTU]|F[IJKMOR]|G[ABDEFGHILMNPQRSTUWY]|H[KMNRTU]|I[DELMNOQRST]|J[EMOP]|K[EGHIMNRWYZ]|L[ABCIKRSTUVY]|M[ACDGHKLMNOPQRSTUVWXYZ]|N[ACEFGILOPRUZ]|OM|P[AEFGHKLMNRSTWY]|QA|R[EOUW]|S[ABCDEGHIJKLMNORTUVYZ]|T[CDFGHJKLMNOPRTVWZ]|U[AGKMSYZ]|V[ACEGINU]|W[FS]|Y[ETU]|Z[AMW]|BIZ|CAT|COM|EDU|GOV|INT|MIL|NET|ORG|PRO|AERO|ARPA|COOP|INFO|JOBS|MOBI|NAME|MUSEUM)$\00", align 16
@.str.11 = private unnamed_addr constant [197 x i8] c"^ *(((http|https|ftp|mailto)://.+)|(([a-zA-Z]([-$_@&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})*:(//)?)?(([-$_@&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})|\5C+)+\5C.((([-$_@&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})|\5C+)+\5C.)*\00", align 1
@.str.12 = private unnamed_addr constant [426 x i8] c"(A[CDEFGILMNOQRSTUWXZ]|B[ABDEFGHIJMNORSTVWYZ]|C[ACDFGHIKLMNORUVXYZ]|D[EJKMOZ]|E[CEGRSTU]|F[IJKMOR]|G[ABDEFGHILMNPQRSTUWY]|H[KMNRTU]|I[DELMNOQRST]|J[EMOP]|K[EGHIMNRWYZ]|L[ABCIKRSTUVY]|M[ACDGHKLMNOPQRSTUVWXYZ]|N[ACEFGILOPRUZ]|OM|P[AEFGHKLMNRSTWY]|QA|R[EOUW]|S[ABCDEGHIJKLMNORTUVYZ]|T[CDFGHJKLMNOPRTVWZ]|U[AGKMSYZ]|V[ACEGINU]|W[FS]|Y[ETU]|Z[AMW]|BIZ|CAT|COM|EDU|GOV|INT|MIL|NET|ORG|PRO|AERO|ARPA|COOP|INFO|JOBS|MOBI|NAME|MUSEUM)\00", align 1
@.str.13 = private unnamed_addr constant [158 x i8] c"(/(([-$_@.&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})|\5C+|=)*)*(\5C?(([-$_@.&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})+)*)?(#([-$_@.&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})+)?)) *$\00", align 1
@.str.14 = private unnamed_addr constant [138 x i8] c"^ *(((http|https|ftp|mailto)://.+)|((([-$_@&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})|\5C+)+\5C.((([-$_@&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})|\5C+)+\5C.)*\00", align 1
@numeric_url_regex = internal constant [299 x i8] c"^ *([a-zA-Z]([-$_@&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})*:(//)?)?[0-9]{1,3}(\5C.[0-9]{1,3}){3}(:(([-$_@&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})|\5C+)+)?(/((([-$_@.&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})|\5C+)+/?)*)?(\5C?(([-$_@.&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})+)*)?(#([-$_@.&a-zA-Z0-9!*\22'(),]|%[0-9a-fA-f]{2})+)? *$\00", align 16
@.str.15 = private unnamed_addr constant [31 x i8] c"Phishcheck module initialized\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Cleaning up phishcheck\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Freeing phishcheck struct\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Phishcheck cleaned up\0A\00", align 1
@empty_string = internal global [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Phishcheck: found Possibly Unwanted: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"Phishcheck: Compiling regex: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"Phishcheck: Error in compiling regex:%s\0ADisabling phishing checks\0A\00", align 1
@.str.22 = private unnamed_addr constant [160 x i8] c"Phishcheck: Error in compiling regex, disabling phishing checks. Additionally an Out-of-memory error was encountered while generating a detailed error message\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Phishcheck:Checking url %s->%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Displayed 'url' is not url:%s\0A\00", align 1
@dotnet = internal constant [5 x i8] c".net\00", align 1
@adonet = internal constant [8 x i8] c"ado.net\00", align 1
@aspnet = internal constant [8 x i8] c"asp.net\00", align 1
@lt = internal constant [4 x i8] c"&lt\00", align 1
@gt = internal constant [4 x i8] c"&gt\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c" \00", align 1
@hextable = internal constant [256 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], align 16
@.str.27 = private unnamed_addr constant [20 x i8] c"Phishcheck:host:%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"://\00", align 1
@mailto = internal constant [8 x i8] c"mailto:\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"Phishcheck: Real URL without protocol: %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c":/?\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"%d.%d.%d.%d%n\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"&#\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c";\00", align 1
@https = internal constant [9 x i8] c"https://\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"Phishcheck: Encountered a host without a tld? (%s)\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"Phishcheck: Weird, a name with only 2 levels (%s)\0A\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Clean\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"URLs match after cleanup\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"URL is whitelisted\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"host part of URL is whitelist\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"Hosts match\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"Domains match\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"After redirecting realURL, they match\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"After redirecting realURL, hosts match\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"After redirecting the domains match\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"URL is mailto\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"IP address encountered in hostname\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"Displayed link is not an URL, can't check if phishing or not\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"Link URL is cloaked (null byte %00)\00", align 1
@.str.50 = private unnamed_addr constant [68 x i8] c"Link URL contains username, and real<->displayed hosts don't match.\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"Visible links is SSL, real link is not\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"URLs are way too different\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"Host not listed in .pdb -> not checked\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"Embedded image in mail -> clean\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"Embedded hex urls\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Unknown return code\00", align 1

; Function Attrs: nounwind uwtable
define i32 @phishingScan(%struct.message* %m, i8* %dir, %struct.cli_ctx* %ctx, %struct.tag_arguments_tag* %hrefs) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.message*, align 8
  %dir.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  %hrefs.addr = alloca %struct.tag_arguments_tag*, align 8
  %i = alloca i32, align 4
  %pchk = alloca %struct.phishcheck*, align 8
  %urls = alloca %struct.url_check, align 8
  %rc = alloca i32, align 4
  %url = alloca i8*, align 8
  store %struct.message* %m, %struct.message** %m.addr, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  store %struct.tag_arguments_tag* %hrefs, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %0 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %0, i32 0, i32 3
  %1 = load %struct.cl_engine*, %struct.cl_engine** %engine, align 8
  %phishcheck = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %1, i32 0, i32 10
  %2 = load i8*, i8** %phishcheck, align 8
  %3 = bitcast i8* %2 to %struct.phishcheck*
  store %struct.phishcheck* %3, %struct.phishcheck** %pchk, align 8
  %4 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %tobool = icmp ne %struct.phishcheck* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %is_disabled = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %5, i32 0, i32 6
  %6 = load i32, i32* %is_disabled, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %found_possibly_unwanted = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %7, i32 0, i32 8
  %8 = load i32, i32* %found_possibly_unwanted, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %9, i32 0, i32 0
  %10 = load i8**, i8*** %virname, align 8
  store i8* null, i8** %10, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %count = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %12, i32 0, i32 0
  %13 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %11, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %15, i32 0, i32 4
  %16 = load %struct.blob**, %struct.blob*** %contents, align 8
  %arrayidx = getelementptr inbounds %struct.blob*, %struct.blob** %16, i64 %idxprom
  %17 = load %struct.blob*, %struct.blob** %arrayidx, align 8
  %tobool5 = icmp ne %struct.blob* %17, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %for.body
  %always_check_flags = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 4
  store i16 512, i16* %always_check_flags, align 2
  %18 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %18 to i64
  %19 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %tag = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %19, i32 0, i32 2
  %20 = load i8**, i8*** %tag, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %20, i64 %idxprom7
  %21 = load i8*, i8** %arrayidx8, align 8
  %call = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @href_text, i32 0, i32 0), i64 5) #6
  %tobool9 = icmp ne i32 %call, 0
  %cond = select i1 %tobool9, i32 355, i32 371
  %conv = trunc i32 %cond to i16
  %flags = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 3
  store i16 %conv, i16* %flags, align 2
  %link_type = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 5
  store i16 0, i16* %link_type, align 2
  %22 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %tag11 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %23, i32 0, i32 2
  %24 = load i8**, i8*** %tag11, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %24, i64 %idxprom10
  %25 = load i8*, i8** %arrayidx12, align 8
  %call13 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @src_text, i32 0, i32 0), i64 4) #6
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.24, label %if.then.15

if.then.15:                                       ; preds = %if.then.6
  %flags16 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 3
  %26 = load i16, i16* %flags16, align 2
  %conv17 = zext i16 %26 to i32
  %and = and i32 %conv17, 256
  %tobool18 = icmp ne i32 %and, 0
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %if.then.15
  br label %for.inc

if.end.20:                                        ; preds = %if.then.15
  %link_type21 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 5
  %27 = load i16, i16* %link_type21, align 2
  %conv22 = zext i16 %27 to i32
  %or = or i32 %conv22, 1
  %conv23 = trunc i32 %or to i16
  store i16 %conv23, i16* %link_type21, align 2
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.20, %if.then.6
  %28 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %28, i32 0, i32 5
  %29 = load i32, i32* %options, align 4
  %and25 = and i32 %29, 1024
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.24
  %flags28 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 3
  %30 = load i16, i16* %flags28, align 2
  %conv29 = zext i16 %30 to i32
  %or30 = or i32 %conv29, 512
  %conv31 = trunc i32 %or30 to i16
  store i16 %conv31, i16* %flags28, align 2
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %if.end.24
  %31 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options33 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %31, i32 0, i32 5
  %32 = load i32, i32* %options33, align 4
  %and34 = and i32 %32, 2048
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.end.32
  %always_check_flags37 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 4
  %33 = load i16, i16* %always_check_flags37, align 2
  %conv38 = zext i16 %33 to i32
  %or39 = or i32 %conv38, 16
  %conv40 = trunc i32 %or39 to i16
  store i16 %conv40, i16* %always_check_flags37, align 2
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.end.32
  %34 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %options42 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %34, i32 0, i32 5
  %35 = load i32, i32* %options42, align 4
  %and43 = and i32 %35, 4096
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end.41
  %always_check_flags46 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 4
  %36 = load i16, i16* %always_check_flags46, align 2
  %conv47 = zext i16 %36 to i32
  %or48 = or i32 %conv47, 32
  %conv49 = trunc i32 %or48 to i16
  store i16 %conv49, i16* %always_check_flags46, align 2
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end.41
  %realLink = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 0
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %38 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %value = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %38, i32 0, i32 3
  %39 = load i8**, i8*** %value, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %39, i64 %idxprom51
  %40 = load i8*, i8** %arrayidx52, align 8
  call void @string_init_c(%struct.string* %realLink, i8* %40)
  %displayLink = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 1
  %41 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %41 to i64
  %42 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents54 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %42, i32 0, i32 4
  %43 = load %struct.blob**, %struct.blob*** %contents54, align 8
  %arrayidx55 = getelementptr inbounds %struct.blob*, %struct.blob** %43, i64 %idxprom53
  %44 = load %struct.blob*, %struct.blob** %arrayidx55, align 8
  %call56 = call i8* @blobGetData(%struct.blob* %44)
  call void @string_init_c(%struct.string* %displayLink, i8* %call56)
  %pre_fixup = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 2
  %pre_displayLink = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %pre_fixup, i32 0, i32 0
  call void @string_init_c(%struct.string* %pre_displayLink, i8* null)
  %45 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %45 to i64
  %46 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %contents58 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %46, i32 0, i32 4
  %47 = load %struct.blob**, %struct.blob*** %contents58, align 8
  %arrayidx59 = getelementptr inbounds %struct.blob*, %struct.blob** %47, i64 %idxprom57
  %48 = load %struct.blob*, %struct.blob** %arrayidx59, align 8
  %call60 = call i64 @blobGetDataSize(%struct.blob* %48)
  %sub = sub i64 %call60, 1
  %displayLink61 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 1
  %data = getelementptr inbounds %struct.string, %struct.string* %displayLink61, i32 0, i32 2
  %49 = load i8*, i8** %data, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %49, i64 %sub
  %50 = load i8, i8* %arrayidx62, align 1
  %tobool63 = icmp ne i8 %50, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.50
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.end.50
  %realLink66 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 0
  %refcount = getelementptr inbounds %struct.string, %struct.string* %realLink66, i32 0, i32 0
  store i32 -1, i32* %refcount, align 4
  %displayLink67 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 1
  %refcount68 = getelementptr inbounds %struct.string, %struct.string* %displayLink67, i32 0, i32 0
  store i32 -1, i32* %refcount68, align 4
  %51 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %51 to i64
  %52 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %tag70 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %52, i32 0, i32 2
  %53 = load i8**, i8*** %tag70, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %53, i64 %idxprom69
  %54 = load i8*, i8** %arrayidx71, align 8
  %call72 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.83

if.then.74:                                       ; preds = %if.end.65
  %realLink75 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 0
  %data76 = getelementptr inbounds %struct.string, %struct.string* %realLink75, i32 0, i32 2
  %55 = load i8*, i8** %data76, align 8
  store i8* %55, i8** %url, align 8
  %displayLink77 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 1
  %data78 = getelementptr inbounds %struct.string, %struct.string* %displayLink77, i32 0, i32 2
  %56 = load i8*, i8** %data78, align 8
  %realLink79 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 0
  %data80 = getelementptr inbounds %struct.string, %struct.string* %realLink79, i32 0, i32 2
  store i8* %56, i8** %data80, align 8
  %57 = load i8*, i8** %url, align 8
  %displayLink81 = getelementptr inbounds %struct.url_check, %struct.url_check* %urls, i32 0, i32 1
  %data82 = getelementptr inbounds %struct.string, %struct.string* %displayLink81, i32 0, i32 2
  store i8* %57, i8** %data82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.74, %if.end.65
  %58 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %engine84 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %58, i32 0, i32 3
  %59 = load %struct.cl_engine*, %struct.cl_engine** %engine84, align 8
  %call85 = call i32 @phishingCheck(%struct.cl_engine* %59, %struct.url_check* %urls)
  store i32 %call85, i32* %rc, align 4
  %60 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %is_disabled86 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %60, i32 0, i32 6
  %61 = load i32, i32* %is_disabled86, align 4
  %tobool87 = icmp ne i32 %61, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.83
  store i32 0, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.end.83
  call void @free_if_needed(%struct.url_check* %urls)
  %62 = load i32, i32* %rc, align 4
  %call90 = call i8* @phishing_ret_toString(i32 %62)
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i32 0, i32 0), i8* %call90)
  %63 = load i32, i32* %rc, align 4
  switch i32 %63, label %sw.default [
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 107, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 114, label %sw.bb
    i32 113, label %sw.bb
    i32 104, label %sw.bb
    i32 112, label %sw.bb
    i32 117, label %sw.bb.91
    i32 116, label %sw.bb.94
    i32 118, label %sw.bb.97
    i32 119, label %sw.bb.100
    i32 115, label %sw.bb.103
    i32 120, label %sw.bb.106
  ]

sw.bb:                                            ; preds = %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89, %if.end.89
  br label %for.inc

sw.bb.91:                                         ; preds = %if.end.89
  %64 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname92 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %64, i32 0, i32 0
  %65 = load i8**, i8*** %virname92, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i8** %65, align 8
  %66 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call93 = call i32 @found_possibly_unwanted(%struct.cli_ctx* %66)
  store i32 %call93, i32* %retval
  br label %return

sw.bb.94:                                         ; preds = %if.end.89
  %67 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname95 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %67, i32 0, i32 0
  %68 = load i8**, i8*** %virname95, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), i8** %68, align 8
  %69 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call96 = call i32 @found_possibly_unwanted(%struct.cli_ctx* %69)
  store i32 %call96, i32* %retval
  br label %return

sw.bb.97:                                         ; preds = %if.end.89
  %70 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname98 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %70, i32 0, i32 0
  %71 = load i8**, i8*** %virname98, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8** %71, align 8
  %72 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call99 = call i32 @found_possibly_unwanted(%struct.cli_ctx* %72)
  store i32 %call99, i32* %retval
  br label %return

sw.bb.100:                                        ; preds = %if.end.89
  %73 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname101 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %73, i32 0, i32 0
  %74 = load i8**, i8*** %virname101, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8** %74, align 8
  %75 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call102 = call i32 @found_possibly_unwanted(%struct.cli_ctx* %75)
  store i32 %call102, i32* %retval
  br label %return

sw.bb.103:                                        ; preds = %if.end.89
  %76 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname104 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %76, i32 0, i32 0
  %77 = load i8**, i8*** %virname104, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0), i8** %77, align 8
  %78 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call105 = call i32 @found_possibly_unwanted(%struct.cli_ctx* %78)
  store i32 %call105, i32* %retval
  br label %return

sw.bb.106:                                        ; preds = %if.end.89
  br label %sw.default

sw.default:                                       ; preds = %if.end.89, %sw.bb.106
  %79 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname107 = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %79, i32 0, i32 0
  %80 = load i8**, i8*** %virname107, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i8** %80, align 8
  %81 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %call108 = call i32 @found_possibly_unwanted(%struct.cli_ctx* %81)
  store i32 %call108, i32* %retval
  br label %return

if.else:                                          ; preds = %for.body
  %82 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %82 to i64
  %83 = load %struct.tag_arguments_tag*, %struct.tag_arguments_tag** %hrefs.addr, align 8
  %tag110 = getelementptr inbounds %struct.tag_arguments_tag, %struct.tag_arguments_tag* %83, i32 0, i32 2
  %84 = load i8**, i8*** %tag110, align 8
  %arrayidx111 = getelementptr inbounds i8*, i8** %84, i64 %idxprom109
  %85 = load i8*, i8** %arrayidx111, align 8
  %call112 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.else
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.114, %if.else
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115
  br label %for.inc

for.inc:                                          ; preds = %if.end.116, %sw.bb, %if.then.19
  %86 = load i32, i32* %i, align 4
  %inc = add nsw i32 %86, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %sw.default, %sw.bb.103, %sw.bb.100, %sw.bb.97, %sw.bb.94, %sw.bb.91, %if.then.88, %if.then.64, %if.then
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @string_init_c(%struct.string* %dest, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.string*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.string* %dest, %struct.string** %dest.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %tobool = icmp ne i8* %0, null
  %cond = select i1 %tobool, i32 1, i32 0
  %1 = load %struct.string*, %struct.string** %dest.addr, align 8
  %refcount = getelementptr inbounds %struct.string, %struct.string* %1, i32 0, i32 0
  store i32 %cond, i32* %refcount, align 4
  %2 = load i8*, i8** %data.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i8*, i8** %data.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i8* [ %3, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @empty_string, i32 0, i32 0), %cond.false ]
  %4 = load %struct.string*, %struct.string** %dest.addr, align 8
  %data3 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 2
  store i8* %cond2, i8** %data3, align 8
  %5 = load %struct.string*, %struct.string** %dest.addr, align 8
  %ref = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 1
  store %struct.string* null, %struct.string** %ref, align 8
  ret void
}

declare i8* @blobGetData(%struct.blob*) #2

declare i64 @blobGetDataSize(%struct.blob*) #2

declare void @cli_warnmsg(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @phishingCheck(%struct.cl_engine* %engine, %struct.url_check* %urls) #0 {
entry:
  %retval = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine*, align 8
  %urls.addr = alloca %struct.url_check*, align 8
  %host_url = alloca %struct.url_check, align 8
  %rc = alloca i32, align 4
  %phishy = alloca i32, align 4
  %pchk = alloca %struct.phishcheck*, align 8
  %domain_url = alloca %struct.url_check, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.url_check* %urls, %struct.url_check** %urls.addr, align 8
  store i32 0, i32* %rc, align 4
  store i32 0, i32* %phishy, align 4
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %0, i32 0, i32 10
  %1 = load i8*, i8** %phishcheck, align 8
  %2 = bitcast i8* %1 to %struct.phishcheck*
  store %struct.phishcheck* %2, %struct.phishcheck** %pchk, align 8
  %3 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink = getelementptr inbounds %struct.url_check, %struct.url_check* %3, i32 0, i32 0
  %data = getelementptr inbounds %struct.string, %struct.string* %realLink, i32 0, i32 2
  %4 = load i8*, i8** %data, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 100, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink1 = getelementptr inbounds %struct.url_check, %struct.url_check* %5, i32 0, i32 0
  %data2 = getelementptr inbounds %struct.string, %struct.string* %realLink1, i32 0, i32 2
  %6 = load i8*, i8** %data2, align 8
  %7 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink = getelementptr inbounds %struct.url_check, %struct.url_check* %7, i32 0, i32 1
  %data3 = getelementptr inbounds %struct.string, %struct.string* %displayLink, i32 0, i32 2
  %8 = load i8*, i8** %data3, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i32 0, i32 0), i8* %6, i8* %8)
  %9 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink4 = getelementptr inbounds %struct.url_check, %struct.url_check* %9, i32 0, i32 0
  %data5 = getelementptr inbounds %struct.string, %struct.string* %realLink4, i32 0, i32 2
  %10 = load i8*, i8** %data5, align 8
  %11 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink6 = getelementptr inbounds %struct.url_check, %struct.url_check* %11, i32 0, i32 1
  %data7 = getelementptr inbounds %struct.string, %struct.string* %displayLink6, i32 0, i32 2
  %12 = load i8*, i8** %data7, align 8
  %call = call i32 @strcmp(i8* %10, i8* %12) #6
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  store i32 100, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %13 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %call11 = call i32 @cleanupURLs(%struct.url_check* %13)
  store i32 %call11, i32* %rc, align 4
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end.10
  %14 = load i32, i32* %rc, align 4
  %call14 = call i32 @isPhishing(i32 %14)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  store i32 100, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  %15 = load i32, i32* %rc, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.10
  %16 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %17 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %call19 = call i32 @whitelist_check(%struct.cl_engine* %16, %struct.url_check* %17, i32 0)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store i32 110, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.18
  %18 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %19 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink23 = getelementptr inbounds %struct.url_check, %struct.url_check* %19, i32 0, i32 1
  %data24 = getelementptr inbounds %struct.string, %struct.string* %displayLink23, i32 0, i32 2
  %20 = load i8*, i8** %data24, align 8
  %call25 = call i32 @isURL(%struct.phishcheck* %18, i8* %20)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end.22
  %21 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %22 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink27 = getelementptr inbounds %struct.url_check, %struct.url_check* %22, i32 0, i32 0
  %data28 = getelementptr inbounds %struct.string, %struct.string* %realLink27, i32 0, i32 2
  %23 = load i8*, i8** %data28, align 8
  %call29 = call i32 @isRealURL(%struct.phishcheck* %21, i8* %23)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.43, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.22
  %24 = load i32, i32* %phishy, align 4
  %and = and i32 %24, 2
  %tobool31 = icmp ne i32 %and, 0
  br i1 %tobool31, label %land.lhs.true.32, label %lor.lhs.false.37

land.lhs.true.32:                                 ; preds = %land.lhs.true
  %25 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %26 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink33 = getelementptr inbounds %struct.url_check, %struct.url_check* %26, i32 0, i32 1
  %data34 = getelementptr inbounds %struct.string, %struct.string* %displayLink33, i32 0, i32 2
  %27 = load i8*, i8** %data34, align 8
  %call35 = call i32 @isNumericURL(%struct.phishcheck* %25, i8* %27)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %lor.lhs.false.37, label %if.then.40

lor.lhs.false.37:                                 ; preds = %land.lhs.true.32, %land.lhs.true
  %28 = load i32, i32* %phishy, align 4
  %and38 = and i32 %28, 2
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.end.43, label %if.then.40

if.then.40:                                       ; preds = %lor.lhs.false.37, %land.lhs.true.32
  %29 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink41 = getelementptr inbounds %struct.url_check, %struct.url_check* %29, i32 0, i32 1
  %data42 = getelementptr inbounds %struct.string, %struct.string* %displayLink41, i32 0, i32 2
  %30 = load i8*, i8** %data42, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0), i8* %30)
  store i32 113, i32* %retval
  br label %return

if.end.43:                                        ; preds = %lor.lhs.false.37, %lor.lhs.false
  %31 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags = getelementptr inbounds %struct.url_check, %struct.url_check* %31, i32 0, i32 3
  %32 = load i16, i16* %flags, align 2
  %conv = zext i16 %32 to i32
  %and44 = and i32 %conv, 512
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.else

land.lhs.true.46:                                 ; preds = %if.end.43
  %33 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %34 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink47 = getelementptr inbounds %struct.url_check, %struct.url_check* %34, i32 0, i32 0
  %data48 = getelementptr inbounds %struct.string, %struct.string* %realLink47, i32 0, i32 2
  %35 = load i8*, i8** %data48, align 8
  %36 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink49 = getelementptr inbounds %struct.url_check, %struct.url_check* %36, i32 0, i32 1
  %data50 = getelementptr inbounds %struct.string, %struct.string* %displayLink49, i32 0, i32 2
  %37 = load i8*, i8** %data50, align 8
  %38 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags51 = getelementptr inbounds %struct.url_check, %struct.url_check* %38, i32 0, i32 3
  %call52 = call i32 @domainlist_match(%struct.cl_engine* %33, i8* %35, i8* %37, %struct.pre_fixup_info* null, i32 0, i16* %flags51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %land.lhs.true.46
  %39 = load i32, i32* %phishy, align 4
  %or = or i32 %39, 8
  store i32 %or, i32* %phishy, align 4
  br label %if.end.55

if.else:                                          ; preds = %land.lhs.true.46, %if.end.43
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.54
  call void @url_check_init(%struct.url_check* %host_url)
  %40 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %41 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %call56 = call i32 @url_get_host(%struct.phishcheck* %40, %struct.url_check* %41, %struct.url_check* %host_url, i32 0, i32* %phishy)
  store i32 %call56, i32* %rc, align 4
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.end.55
  call void @free_if_needed(%struct.url_check* %host_url)
  %42 = load i32, i32* %rc, align 4
  %call59 = call i32 @isPhishing(i32 %42)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.58
  store i32 100, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.58
  %43 = load i32, i32* %rc, align 4
  store i32 %43, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.end.55
  %44 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags64 = getelementptr inbounds %struct.url_check, %struct.url_check* %44, i32 0, i32 3
  %45 = load i16, i16* %flags64, align 2
  %conv65 = zext i16 %45 to i32
  %and66 = and i32 %conv65, 512
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.84

if.then.68:                                       ; preds = %if.end.63
  %46 = load i32, i32* %phishy, align 4
  %and69 = and i32 %46, 8
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.end.83, label %if.then.71

if.then.71:                                       ; preds = %if.then.68
  %47 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %displayLink72 = getelementptr inbounds %struct.url_check, %struct.url_check* %host_url, i32 0, i32 1
  %data73 = getelementptr inbounds %struct.string, %struct.string* %displayLink72, i32 0, i32 2
  %48 = load i8*, i8** %data73, align 8
  %realLink74 = getelementptr inbounds %struct.url_check, %struct.url_check* %host_url, i32 0, i32 0
  %data75 = getelementptr inbounds %struct.string, %struct.string* %realLink74, i32 0, i32 2
  %49 = load i8*, i8** %data75, align 8
  %50 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %pre_fixup = getelementptr inbounds %struct.url_check, %struct.url_check* %50, i32 0, i32 2
  %51 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags76 = getelementptr inbounds %struct.url_check, %struct.url_check* %51, i32 0, i32 3
  %call77 = call i32 @domainlist_match(%struct.cl_engine* %47, i8* %48, i8* %49, %struct.pre_fixup_info* %pre_fixup, i32 1, i16* %flags76)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %if.then.71
  %52 = load i32, i32* %phishy, align 4
  %or80 = or i32 %52, 8
  store i32 %or80, i32* %phishy, align 4
  br label %if.end.82

if.else.81:                                       ; preds = %if.then.71
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.81, %if.then.79
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.68
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.63
  %53 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %link_type = getelementptr inbounds %struct.url_check, %struct.url_check* %53, i32 0, i32 5
  %54 = load i16, i16* %link_type, align 2
  %conv85 = zext i16 %54 to i32
  %and86 = and i32 %conv85, 1
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.end.94

land.lhs.true.88:                                 ; preds = %if.end.84
  %55 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags89 = getelementptr inbounds %struct.url_check, %struct.url_check* %55, i32 0, i32 3
  %56 = load i16, i16* %flags89, align 2
  %conv90 = zext i16 %56 to i32
  %and91 = and i32 %conv90, 256
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %land.lhs.true.88
  store i32 104, i32* %retval
  br label %return

if.end.94:                                        ; preds = %land.lhs.true.88, %if.end.84
  %57 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags95 = getelementptr inbounds %struct.url_check, %struct.url_check* %57, i32 0, i32 3
  %58 = load i16, i16* %flags95, align 2
  %conv96 = zext i16 %58 to i32
  %and97 = and i32 %conv96, 512
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.112

land.lhs.true.99:                                 ; preds = %if.end.94
  %59 = load i32, i32* %phishy, align 4
  %and100 = and i32 %59, 8
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.end.112, label %if.then.102

if.then.102:                                      ; preds = %land.lhs.true.99
  %60 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %always_check_flags = getelementptr inbounds %struct.url_check, %struct.url_check* %60, i32 0, i32 4
  %61 = load i16, i16* %always_check_flags, align 2
  %conv103 = zext i16 %61 to i32
  %62 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags104 = getelementptr inbounds %struct.url_check, %struct.url_check* %62, i32 0, i32 3
  %63 = load i16, i16* %flags104, align 2
  %conv105 = zext i16 %63 to i32
  %and106 = and i32 %conv105, %conv103
  %conv107 = trunc i32 %and106 to i16
  store i16 %conv107, i16* %flags104, align 2
  %64 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags108 = getelementptr inbounds %struct.url_check, %struct.url_check* %64, i32 0, i32 3
  %65 = load i16, i16* %flags108, align 2
  %tobool109 = icmp ne i16 %65, 0
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %if.then.102
  call void @free_if_needed(%struct.url_check* %host_url)
  store i32 104, i32* %retval
  br label %return

if.end.111:                                       ; preds = %if.then.102
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %land.lhs.true.99, %if.end.94
  %66 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags113 = getelementptr inbounds %struct.url_check, %struct.url_check* %66, i32 0, i32 3
  %67 = load i16, i16* %flags113, align 2
  %conv114 = zext i16 %67 to i32
  %and115 = and i32 %conv114, 32
  %tobool116 = icmp ne i32 %and115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.130

if.then.117:                                      ; preds = %if.end.112
  %68 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink118 = getelementptr inbounds %struct.url_check, %struct.url_check* %68, i32 0, i32 0
  %data119 = getelementptr inbounds %struct.string, %struct.string* %realLink118, i32 0, i32 2
  %69 = load i8*, i8** %data119, align 8
  %call120 = call i8* @strchr(i8* %69, i32 1) #6
  %tobool121 = icmp ne i8* %call120, null
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.then.117
  call void @free_if_needed(%struct.url_check* %host_url)
  store i32 118, i32* %retval
  br label %return

if.end.123:                                       ; preds = %if.then.117
  %70 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink124 = getelementptr inbounds %struct.url_check, %struct.url_check* %70, i32 0, i32 1
  %data125 = getelementptr inbounds %struct.string, %struct.string* %displayLink124, i32 0, i32 2
  %71 = load i8*, i8** %data125, align 8
  %call126 = call i32 @isEncoded(i8* %71)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.end.123
  call void @free_if_needed(%struct.url_check* %host_url)
  store i32 117, i32* %retval
  br label %return

if.end.129:                                       ; preds = %if.end.123
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.112
  %72 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink131 = getelementptr inbounds %struct.url_check, %struct.url_check* %72, i32 0, i32 1
  %data132 = getelementptr inbounds %struct.string, %struct.string* %displayLink131, i32 0, i32 2
  %73 = load i8*, i8** %data132, align 8
  %arrayidx = getelementptr inbounds i8, i8* %73, i64 0
  %74 = load i8, i8* %arrayidx, align 1
  %conv133 = sext i8 %74 to i32
  %cmp = icmp eq i32 %conv133, 0
  br i1 %cmp, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.130
  call void @free_if_needed(%struct.url_check* %host_url)
  store i32 100, i32* %retval
  br label %return

if.end.136:                                       ; preds = %if.end.130
  %75 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags137 = getelementptr inbounds %struct.url_check, %struct.url_check* %75, i32 0, i32 3
  %76 = load i16, i16* %flags137, align 2
  %conv138 = zext i16 %76 to i32
  %and139 = and i32 %conv138, 16
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %land.lhs.true.141, label %if.end.152

land.lhs.true.141:                                ; preds = %if.end.136
  %77 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink142 = getelementptr inbounds %struct.url_check, %struct.url_check* %77, i32 0, i32 1
  %data143 = getelementptr inbounds %struct.string, %struct.string* %displayLink142, i32 0, i32 2
  %78 = load i8*, i8** %data143, align 8
  %call144 = call i32 @isSSL(i8* %78)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %land.lhs.true.146, label %if.end.152

land.lhs.true.146:                                ; preds = %land.lhs.true.141
  %79 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink147 = getelementptr inbounds %struct.url_check, %struct.url_check* %79, i32 0, i32 0
  %data148 = getelementptr inbounds %struct.string, %struct.string* %realLink147, i32 0, i32 2
  %80 = load i8*, i8** %data148, align 8
  %call149 = call i32 @isSSL(i8* %80)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.end.152, label %if.then.151

if.then.151:                                      ; preds = %land.lhs.true.146
  call void @free_if_needed(%struct.url_check* %host_url)
  store i32 119, i32* %retval
  br label %return

if.end.152:                                       ; preds = %land.lhs.true.146, %land.lhs.true.141, %if.end.136
  %81 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags153 = getelementptr inbounds %struct.url_check, %struct.url_check* %81, i32 0, i32 3
  %82 = load i16, i16* %flags153, align 2
  %tobool154 = icmp ne i16 %82, 0
  %lnot = xor i1 %tobool154, true
  %lnot.ext = zext i1 %lnot to i32
  %and155 = and i32 %lnot.ext, 32
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %land.lhs.true.157, label %if.end.166

land.lhs.true.157:                                ; preds = %if.end.152
  %83 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags158 = getelementptr inbounds %struct.url_check, %struct.url_check* %83, i32 0, i32 3
  %84 = load i16, i16* %flags158, align 2
  %conv159 = zext i16 %84 to i32
  %and160 = and i32 %conv159, 512
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %land.lhs.true.162, label %if.end.166

land.lhs.true.162:                                ; preds = %land.lhs.true.157
  %85 = load i32, i32* %phishy, align 4
  %and163 = and i32 %85, 8
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %land.lhs.true.162
  call void @free_if_needed(%struct.url_check* %host_url)
  store i32 104, i32* %retval
  br label %return

if.end.166:                                       ; preds = %land.lhs.true.162, %land.lhs.true.157, %if.end.152
  %86 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %87 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %call167 = call i32 @url_get_host(%struct.phishcheck* %86, %struct.url_check* %87, %struct.url_check* %host_url, i32 1, i32* %phishy)
  store i32 %call167, i32* %rc, align 4
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.then.169, label %if.end.170

if.then.169:                                      ; preds = %if.end.166
  call void @free_if_needed(%struct.url_check* %host_url)
  %88 = load i32, i32* %rc, align 4
  store i32 %88, i32* %retval
  br label %return

if.end.170:                                       ; preds = %if.end.166
  %89 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags171 = getelementptr inbounds %struct.url_check, %struct.url_check* %89, i32 0, i32 3
  %90 = load i16, i16* %flags171, align 2
  %conv172 = zext i16 %90 to i32
  %and173 = and i32 %conv172, 512
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %land.lhs.true.175, label %if.end.179

land.lhs.true.175:                                ; preds = %if.end.170
  %91 = load i32, i32* %phishy, align 4
  %and176 = and i32 %91, 8
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.end.179, label %if.then.178

if.then.178:                                      ; preds = %land.lhs.true.175
  call void @free_if_needed(%struct.url_check* %host_url)
  store i32 104, i32* %retval
  br label %return

if.end.179:                                       ; preds = %land.lhs.true.175, %if.end.170
  %92 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %call180 = call i32 @whitelist_check(%struct.cl_engine* %92, %struct.url_check* %host_url, i32 1)
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.179
  call void @free_if_needed(%struct.url_check* %host_url)
  store i32 111, i32* %retval
  br label %return

if.end.183:                                       ; preds = %if.end.179
  %93 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags184 = getelementptr inbounds %struct.url_check, %struct.url_check* %93, i32 0, i32 3
  %94 = load i16, i16* %flags184, align 2
  %conv185 = zext i16 %94 to i32
  %and186 = and i32 %conv185, 1
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.211

if.then.188:                                      ; preds = %if.end.183
  %95 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink189 = getelementptr inbounds %struct.url_check, %struct.url_check* %95, i32 0, i32 0
  %data190 = getelementptr inbounds %struct.string, %struct.string* %realLink189, i32 0, i32 2
  %96 = load i8*, i8** %data190, align 8
  %97 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink191 = getelementptr inbounds %struct.url_check, %struct.url_check* %97, i32 0, i32 1
  %data192 = getelementptr inbounds %struct.string, %struct.string* %displayLink191, i32 0, i32 2
  %98 = load i8*, i8** %data192, align 8
  %call193 = call i32 @strcmp(i8* %96, i8* %98) #6
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.end.196, label %if.then.195

if.then.195:                                      ; preds = %if.then.188
  call void @free_if_needed(%struct.url_check* %host_url)
  store i32 102, i32* %retval
  br label %return

if.end.196:                                       ; preds = %if.then.188
  %99 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags197 = getelementptr inbounds %struct.url_check, %struct.url_check* %99, i32 0, i32 3
  %100 = load i16, i16* %flags197, align 2
  %conv198 = zext i16 %100 to i32
  %and199 = and i32 %conv198, 3
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %if.then.201, label %if.end.210

if.then.201:                                      ; preds = %if.end.196
  call void @url_check_init(%struct.url_check* %domain_url)
  %101 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  call void @url_get_domain(%struct.phishcheck* %101, %struct.url_check* %host_url, %struct.url_check* %domain_url)
  %realLink202 = getelementptr inbounds %struct.url_check, %struct.url_check* %domain_url, i32 0, i32 0
  %data203 = getelementptr inbounds %struct.string, %struct.string* %realLink202, i32 0, i32 2
  %102 = load i8*, i8** %data203, align 8
  %displayLink204 = getelementptr inbounds %struct.url_check, %struct.url_check* %domain_url, i32 0, i32 1
  %data205 = getelementptr inbounds %struct.string, %struct.string* %displayLink204, i32 0, i32 2
  %103 = load i8*, i8** %data205, align 8
  %call206 = call i32 @strcmp(i8* %102, i8* %103) #6
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.end.209, label %if.then.208

if.then.208:                                      ; preds = %if.then.201
  call void @free_if_needed(%struct.url_check* %host_url)
  call void @free_if_needed(%struct.url_check* %domain_url)
  store i32 103, i32* %retval
  br label %return

if.end.209:                                       ; preds = %if.then.201
  call void @free_if_needed(%struct.url_check* %domain_url)
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %if.end.196
  call void @free_if_needed(%struct.url_check* %host_url)
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.183
  %104 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags212 = getelementptr inbounds %struct.url_check, %struct.url_check* %104, i32 0, i32 3
  %105 = load i16, i16* %flags212, align 2
  %conv213 = zext i16 %105 to i32
  %and214 = and i32 %conv213, 512
  %tobool215 = icmp ne i32 %and214, 0
  br i1 %tobool215, label %land.lhs.true.216, label %if.end.220

land.lhs.true.216:                                ; preds = %if.end.211
  %106 = load i32, i32* %phishy, align 4
  %and217 = and i32 %106, 8
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %if.end.220, label %if.then.219

if.then.219:                                      ; preds = %land.lhs.true.216
  store i32 104, i32* %retval
  br label %return

if.end.220:                                       ; preds = %land.lhs.true.216, %if.end.211
  %107 = load i32, i32* %phishy, align 4
  %call221 = call i32 @phishy_map(i32 %107, i32 120)
  store i32 %call221, i32* %retval
  br label %return

return:                                           ; preds = %if.end.220, %if.then.219, %if.then.208, %if.then.195, %if.then.182, %if.then.178, %if.then.169, %if.then.165, %if.then.151, %if.then.135, %if.then.128, %if.then.122, %if.then.110, %if.then.93, %if.end.62, %if.then.61, %if.then.40, %if.then.21, %if.end.17, %if.then.16, %if.then.9, %if.then
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal void @free_if_needed(%struct.url_check* %url) #0 {
entry:
  %url.addr = alloca %struct.url_check*, align 8
  store %struct.url_check* %url, %struct.url_check** %url.addr, align 8
  %0 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %realLink = getelementptr inbounds %struct.url_check, %struct.url_check* %0, i32 0, i32 0
  call void @string_free(%struct.string* %realLink)
  %1 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %displayLink = getelementptr inbounds %struct.url_check, %struct.url_check* %1, i32 0, i32 1
  call void @string_free(%struct.string* %displayLink)
  %2 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %pre_fixup = getelementptr inbounds %struct.url_check, %struct.url_check* %2, i32 0, i32 2
  %pre_displayLink = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %pre_fixup, i32 0, i32 0
  call void @string_free(%struct.string* %pre_displayLink)
  ret void
}

declare void @cli_dbgmsg(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal i8* @phishing_ret_toString(i32 %rc) #0 {
entry:
  %retval = alloca i8*, align 8
  %rc.addr = alloca i32, align 4
  store i32 %rc, i32* %rc.addr, align 4
  %0 = load i32, i32* %rc.addr, align 4
  switch i32 %0, label %sw.default [
    i32 100, label %sw.bb
    i32 101, label %sw.bb.1
    i32 110, label %sw.bb.2
    i32 111, label %sw.bb.3
    i32 102, label %sw.bb.4
    i32 103, label %sw.bb.5
    i32 105, label %sw.bb.6
    i32 106, label %sw.bb.7
    i32 107, label %sw.bb.8
    i32 114, label %sw.bb.9
    i32 116, label %sw.bb.10
    i32 113, label %sw.bb.11
    i32 118, label %sw.bb.12
    i32 115, label %sw.bb.13
    i32 119, label %sw.bb.14
    i32 120, label %sw.bb.15
    i32 104, label %sw.bb.16
    i32 112, label %sw.bb.17
    i32 117, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.48, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.50, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.52, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.53, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.54, i32 0, i32 0), i8** %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i32 0, i32 0), i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define internal i32 @found_possibly_unwanted(%struct.cli_ctx* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.cli_ctx*, align 8
  store %struct.cli_ctx* %ctx, %struct.cli_ctx** %ctx.addr, align 8
  %0 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %found_possibly_unwanted = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %0, i32 0, i32 8
  store i32 1, i32* %found_possibly_unwanted, align 4
  %1 = load %struct.cli_ctx*, %struct.cli_ctx** %ctx.addr, align 8
  %virname = getelementptr inbounds %struct.cli_ctx, %struct.cli_ctx* %1, i32 0, i32 0
  %2 = load i8**, i8*** %virname, align 8
  %3 = load i8*, i8** %2, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i32 0, i32 0), i8* %3)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @phishing_init(%struct.cl_engine* %engine) #0 {
entry:
  %retval = alloca i32, align 4
  %engine.addr = alloca %struct.cl_engine*, align 8
  %url_regex = alloca i8*, align 8
  %realurl_regex = alloca i8*, align 8
  %pchk = alloca %struct.phishcheck*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %0, i32 0, i32 10
  %1 = load i8*, i8** %phishcheck, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @cli_malloc(i64 200)
  %2 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck1 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %2, i32 0, i32 10
  store i8* %call, i8** %phishcheck1, align 8
  %3 = bitcast i8* %call to %struct.phishcheck*
  store %struct.phishcheck* %3, %struct.phishcheck** %pchk, align 8
  %4 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %tobool2 = icmp ne %struct.phishcheck* %4, null
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %is_disabled = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %5, i32 0, i32 6
  store i32 1, i32* %is_disabled, align 4
  br label %if.end.12

if.else:                                          ; preds = %entry
  %6 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck4 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %6, i32 0, i32 10
  %7 = load i8*, i8** %phishcheck4, align 8
  %8 = bitcast i8* %7 to %struct.phishcheck*
  store %struct.phishcheck* %8, %struct.phishcheck** %pchk, align 8
  %9 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %tobool5 = icmp ne %struct.phishcheck* %9, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  store i32 -111, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  %10 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %is_disabled8 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %10, i32 0, i32 6
  %11 = load i32, i32* %is_disabled8, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  %12 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_hexurl = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %12, i32 0, i32 5
  %call13 = call i32 @build_regex(%struct.regex_t* %preg_hexurl, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @cloaked_host_regex, i32 0, i32 0), i32 1)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %13 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %14 = bitcast %struct.phishcheck* %13 to i8*
  call void @free(i8* %14) #5
  %15 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck16 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %15, i32 0, i32 10
  store i8* null, i8** %phishcheck16, align 8
  store i32 -124, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %16 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_cctld = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %16, i32 0, i32 3
  %call18 = call i32 @build_regex(%struct.regex_t* %preg_cctld, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @cctld_regex, i32 0, i32 0), i32 1)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %17 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %18 = bitcast %struct.phishcheck* %17 to i8*
  call void @free(i8* %18) #5
  %19 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck21 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %19, i32 0, i32 10
  store i8* null, i8** %phishcheck21, align 8
  store i32 -124, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %20 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_tld = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %20, i32 0, i32 2
  %call23 = call i32 @build_regex(%struct.regex_t* %preg_tld, i8* getelementptr inbounds ([428 x i8], [428 x i8]* @tld_regex, i32 0, i32 0), i32 1)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.22
  %21 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_cctld26 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %21, i32 0, i32 3
  call void @free_regex(%struct.regex_t* %preg_cctld26)
  %22 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %23 = bitcast %struct.phishcheck* %22 to i8*
  call void @free(i8* %23) #5
  %24 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck27 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %24, i32 0, i32 10
  store i8* null, i8** %phishcheck27, align 8
  store i32 -124, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.22
  %call29 = call i8* @str_compose(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([426 x i8], [426 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call29, i8** %url_regex, align 8
  %25 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %25, i32 0, i32 0
  %26 = load i8*, i8** %url_regex, align 8
  %call30 = call i32 @build_regex(%struct.regex_t* %preg, i8* %26, i32 1)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.28
  %27 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_cctld33 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %27, i32 0, i32 3
  call void @free_regex(%struct.regex_t* %preg_cctld33)
  %28 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_tld34 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %28, i32 0, i32 2
  call void @free_regex(%struct.regex_t* %preg_tld34)
  %29 = load i8*, i8** %url_regex, align 8
  call void @free(i8* %29) #5
  %30 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %31 = bitcast %struct.phishcheck* %30 to i8*
  call void @free(i8* %31) #5
  %32 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck35 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %32, i32 0, i32 10
  store i8* null, i8** %phishcheck35, align 8
  store i32 -124, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.end.28
  %33 = load i8*, i8** %url_regex, align 8
  call void @free(i8* %33) #5
  %call37 = call i8* @str_compose(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([426 x i8], [426 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call37, i8** %realurl_regex, align 8
  %34 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_realurl = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %34, i32 0, i32 1
  %35 = load i8*, i8** %realurl_regex, align 8
  %call38 = call i32 @build_regex(%struct.regex_t* %preg_realurl, i8* %35, i32 1)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.end.36
  %36 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_cctld41 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %36, i32 0, i32 3
  call void @free_regex(%struct.regex_t* %preg_cctld41)
  %37 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_tld42 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %37, i32 0, i32 2
  call void @free_regex(%struct.regex_t* %preg_tld42)
  %38 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg43 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %38, i32 0, i32 0
  call void @free_regex(%struct.regex_t* %preg43)
  %39 = load i8*, i8** %url_regex, align 8
  call void @free(i8* %39) #5
  %40 = load i8*, i8** %realurl_regex, align 8
  call void @free(i8* %40) #5
  %41 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %42 = bitcast %struct.phishcheck* %41 to i8*
  call void @free(i8* %42) #5
  %43 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck44 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %43, i32 0, i32 10
  store i8* null, i8** %phishcheck44, align 8
  store i32 -124, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.36
  %44 = load i8*, i8** %realurl_regex, align 8
  call void @free(i8* %44) #5
  %45 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_numeric = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %45, i32 0, i32 4
  %call46 = call i32 @build_regex(%struct.regex_t* %preg_numeric, i8* getelementptr inbounds ([299 x i8], [299 x i8]* @numeric_url_regex, i32 0, i32 0), i32 1)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.end.45
  %46 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_cctld49 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %46, i32 0, i32 3
  call void @free_regex(%struct.regex_t* %preg_cctld49)
  %47 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_tld50 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %47, i32 0, i32 2
  call void @free_regex(%struct.regex_t* %preg_tld50)
  %48 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg51 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %48, i32 0, i32 0
  call void @free_regex(%struct.regex_t* %preg51)
  %49 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_realurl52 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %49, i32 0, i32 1
  call void @free_regex(%struct.regex_t* %preg_realurl52)
  %50 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %51 = bitcast %struct.phishcheck* %50 to i8*
  call void @free(i8* %51) #5
  %52 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck53 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %52, i32 0, i32 10
  store i8* null, i8** %phishcheck53, align 8
  store i32 -124, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.45
  %53 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %is_disabled55 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %53, i32 0, i32 6
  store i32 0, i32* %is_disabled55, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.48, %if.then.40, %if.then.32, %if.then.25, %if.then.20, %if.then.15, %if.then.10, %if.then.6, %if.then.3
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i8* @cli_malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @build_regex(%struct.regex_t* %preg, i8* %regex, i32 %nosub) #0 {
entry:
  %retval = alloca i32, align 4
  %preg.addr = alloca %struct.regex_t*, align 8
  %regex.addr = alloca i8*, align 8
  %nosub.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %buflen = alloca i64, align 8
  %errbuf = alloca i8*, align 8
  store %struct.regex_t* %preg, %struct.regex_t** %preg.addr, align 8
  store i8* %regex, i8** %regex.addr, align 8
  store i32 %nosub, i32* %nosub.addr, align 4
  %0 = load i8*, i8** %regex.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0), i8* %0)
  %1 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %2 = load i8*, i8** %regex.addr, align 8
  %3 = load i32, i32* %nosub.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 4, i32 0
  %or = or i32 3, %cond
  %call = call i32 @cli_regcomp(%struct.regex_t* %1, i8* %2, i32 %or)
  store i32 %call, i32* %rc, align 4
  %4 = load i32, i32* %rc, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %rc, align 4
  %6 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %call2 = call i64 @cli_regerror(i32 %5, %struct.regex_t* %6, i8* null, i64 0)
  store i64 %call2, i64* %buflen, align 8
  %7 = load i64, i64* %buflen, align 8
  %call3 = call i8* @cli_malloc(i64 %7)
  store i8* %call3, i8** %errbuf, align 8
  %8 = load i8*, i8** %errbuf, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %9 = load i32, i32* %rc, align 4
  %10 = load %struct.regex_t*, %struct.regex_t** %preg.addr, align 8
  %11 = load i8*, i8** %errbuf, align 8
  %12 = load i64, i64* %buflen, align 8
  %call6 = call i64 @cli_regerror(i32 %9, %struct.regex_t* %10, i8* %11, i64 %12)
  %13 = load i8*, i8** %errbuf, align 8
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.21, i32 0, i32 0), i8* %13)
  %14 = load i8*, i8** %errbuf, align 8
  call void @free(i8* %14) #5
  br label %if.end

if.else:                                          ; preds = %if.then
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  store i32 1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.end
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @free_regex(%struct.regex_t* %p) #0 {
entry:
  %p.addr = alloca %struct.regex_t*, align 8
  store %struct.regex_t* %p, %struct.regex_t** %p.addr, align 8
  %0 = load %struct.regex_t*, %struct.regex_t** %p.addr, align 8
  %tobool = icmp ne %struct.regex_t* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.regex_t*, %struct.regex_t** %p.addr, align 8
  call void @cli_regfree(%struct.regex_t* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @str_compose(i8* %a, i8* %b, i8* %c) #0 {
entry:
  %retval = alloca i8*, align 8
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %c.addr = alloca i8*, align 8
  %a_len = alloca i64, align 8
  %b_len = alloca i64, align 8
  %c_len = alloca i64, align 8
  %r_len = alloca i64, align 8
  %concated = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i8* %c, i8** %c.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  store i64 %call, i64* %a_len, align 8
  %1 = load i8*, i8** %b.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #6
  store i64 %call1, i64* %b_len, align 8
  %2 = load i8*, i8** %c.addr, align 8
  %call2 = call i64 @strlen(i8* %2) #6
  store i64 %call2, i64* %c_len, align 8
  %3 = load i64, i64* %a_len, align 8
  %4 = load i64, i64* %b_len, align 8
  %add = add i64 %3, %4
  %5 = load i64, i64* %c_len, align 8
  %add3 = add i64 %add, %5
  %add4 = add i64 %add3, 1
  store i64 %add4, i64* %r_len, align 8
  %6 = load i64, i64* %r_len, align 8
  %call5 = call i8* @cli_malloc(i64 %6)
  store i8* %call5, i8** %concated, align 8
  %7 = load i8*, i8** %concated, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %concated, align 8
  %9 = load i8*, i8** %a.addr, align 8
  %10 = load i64, i64* %a_len, align 8
  %call6 = call i8* @strncpy(i8* %8, i8* %9, i64 %10) #5
  %11 = load i8*, i8** %concated, align 8
  %12 = load i64, i64* %a_len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %12
  %13 = load i8*, i8** %b.addr, align 8
  %14 = load i64, i64* %b_len, align 8
  %call7 = call i8* @strncpy(i8* %add.ptr, i8* %13, i64 %14) #5
  %15 = load i8*, i8** %concated, align 8
  %16 = load i64, i64* %a_len, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = load i64, i64* %b_len, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr8, i64 %17
  %18 = load i8*, i8** %c.addr, align 8
  %19 = load i64, i64* %c_len, align 8
  %call10 = call i8* @strncpy(i8* %add.ptr9, i8* %18, i64 %19) #5
  %20 = load i64, i64* %r_len, align 8
  %sub = sub i64 %20, 1
  %21 = load i8*, i8** %concated, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %sub
  store i8 0, i8* %arrayidx, align 1
  %22 = load i8*, i8** %concated, align 8
  store i8* %22, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define void @phishing_done(%struct.cl_engine* %engine) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  %pchk = alloca %struct.phishcheck*, align 8
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %0, i32 0, i32 10
  %1 = load i8*, i8** %phishcheck, align 8
  %2 = bitcast i8* %1 to %struct.phishcheck*
  store %struct.phishcheck* %2, %struct.phishcheck** %pchk, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0))
  %3 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %tobool = icmp ne %struct.phishcheck* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %is_disabled = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %4, i32 0, i32 6
  %5 = load i32, i32* %is_disabled, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %6, i32 0, i32 0
  call void @free_regex(%struct.regex_t* %preg)
  %7 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_hexurl = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %7, i32 0, i32 5
  call void @free_regex(%struct.regex_t* %preg_hexurl)
  %8 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_cctld = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %8, i32 0, i32 3
  call void @free_regex(%struct.regex_t* %preg_cctld)
  %9 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_tld = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %9, i32 0, i32 2
  call void @free_regex(%struct.regex_t* %preg_tld)
  %10 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_numeric = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %10, i32 0, i32 4
  call void @free_regex(%struct.regex_t* %preg_numeric)
  %11 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %preg_realurl = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %11, i32 0, i32 1
  call void @free_regex(%struct.regex_t* %preg_realurl)
  %12 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %is_disabled2 = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %12, i32 0, i32 6
  store i32 1, i32* %is_disabled2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  call void @whitelist_done(%struct.cl_engine* %13)
  %14 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  call void @domainlist_done(%struct.cl_engine* %14)
  %15 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %tobool3 = icmp ne %struct.phishcheck* %15, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i32 0, i32 0))
  %16 = load %struct.phishcheck*, %struct.phishcheck** %pchk, align 8
  %17 = bitcast %struct.phishcheck* %16 to i8*
  call void @free(i8* %17) #5
  %18 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %phishcheck5 = getelementptr inbounds %struct.cl_engine, %struct.cl_engine* %18, i32 0, i32 10
  store i8* null, i8** %phishcheck5, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0))
  ret void
}

declare void @whitelist_done(%struct.cl_engine*) #2

declare void @domainlist_done(%struct.cl_engine*) #2

; Function Attrs: nounwind uwtable
define internal void @string_free(%struct.string* %str) #0 {
entry:
  %str.addr = alloca %struct.string*, align 8
  store %struct.string* %str, %struct.string** %str.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.10, %entry
  %0 = load %struct.string*, %struct.string** %str.addr, align 8
  %refcount = getelementptr inbounds %struct.string, %struct.string* %0, i32 0, i32 0
  %1 = load i32, i32* %refcount, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %refcount, align 4
  %2 = load %struct.string*, %struct.string** %str.addr, align 8
  %refcount1 = getelementptr inbounds %struct.string, %struct.string* %2, i32 0, i32 0
  %3 = load i32, i32* %refcount1, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else.9, label %if.then

if.then:                                          ; preds = %for.cond
  %4 = load %struct.string*, %struct.string** %str.addr, align 8
  %ref = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 1
  %5 = load %struct.string*, %struct.string** %ref, align 8
  %tobool2 = icmp ne %struct.string* %5, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load %struct.string*, %struct.string** %str.addr, align 8
  %ref4 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 1
  %7 = load %struct.string*, %struct.string** %ref4, align 8
  store %struct.string* %7, %struct.string** %str.addr, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.then
  %8 = load %struct.string*, %struct.string** %str.addr, align 8
  %data = getelementptr inbounds %struct.string, %struct.string* %8, i32 0, i32 2
  %9 = load i8*, i8** %data, align 8
  %tobool5 = icmp ne i8* %9, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %10 = load %struct.string*, %struct.string** %str.addr, align 8
  %data7 = getelementptr inbounds %struct.string, %struct.string* %10, i32 0, i32 2
  %11 = load i8*, i8** %data7, align 8
  call void @free(i8* %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %for.end

if.end.8:                                         ; preds = %if.then.3
  br label %if.end.10

if.else.9:                                        ; preds = %for.cond
  br label %for.end

if.end.10:                                        ; preds = %if.end.8
  br label %for.cond

for.end:                                          ; preds = %if.else.9, %if.end
  ret void
}

declare i32 @cli_regcomp(%struct.regex_t*, i8*, i32) #2

declare i64 @cli_regerror(i32, %struct.regex_t*, i8*, i64) #2

declare void @cli_errmsg(i8*, ...) #2

declare void @cli_regfree(%struct.regex_t*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @cleanupURLs(%struct.url_check* %urls) #0 {
entry:
  %retval = alloca i32, align 4
  %urls.addr = alloca %struct.url_check*, align 8
  store %struct.url_check* %urls, %struct.url_check** %urls.addr, align 8
  %0 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %flags = getelementptr inbounds %struct.url_check, %struct.url_check* %0, i32 0, i32 3
  %1 = load i16, i16* %flags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %2 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink = getelementptr inbounds %struct.url_check, %struct.url_check* %2, i32 0, i32 0
  %call = call i32 @cleanupURL(%struct.string* %realLink, %struct.string* null, i32 1)
  %3 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink = getelementptr inbounds %struct.url_check, %struct.url_check* %3, i32 0, i32 1
  %4 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %pre_fixup = getelementptr inbounds %struct.url_check, %struct.url_check* %4, i32 0, i32 2
  %pre_displayLink = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %pre_fixup, i32 0, i32 0
  %call1 = call i32 @cleanupURL(%struct.string* %displayLink, %struct.string* %pre_displayLink, i32 0)
  %5 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink2 = getelementptr inbounds %struct.url_check, %struct.url_check* %5, i32 0, i32 1
  %data = getelementptr inbounds %struct.string, %struct.string* %displayLink2, i32 0, i32 2
  %6 = load i8*, i8** %data, align 8
  %tobool3 = icmp ne i8* %6, null
  br i1 %tobool3, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink4 = getelementptr inbounds %struct.url_check, %struct.url_check* %7, i32 0, i32 0
  %data5 = getelementptr inbounds %struct.string, %struct.string* %realLink4, i32 0, i32 2
  %8 = load i8*, i8** %data5, align 8
  %tobool6 = icmp ne i8* %8, null
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink8 = getelementptr inbounds %struct.url_check, %struct.url_check* %9, i32 0, i32 0
  %data9 = getelementptr inbounds %struct.string, %struct.string* %realLink8, i32 0, i32 2
  %10 = load i8*, i8** %data9, align 8
  %11 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink10 = getelementptr inbounds %struct.url_check, %struct.url_check* %11, i32 0, i32 1
  %data11 = getelementptr inbounds %struct.string, %struct.string* %displayLink10, i32 0, i32 2
  %12 = load i8*, i8** %data11, align 8
  %call12 = call i32 @strcmp(i8* %10, i8* %12) #6
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end
  store i32 101, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then.7
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @isPhishing(i32 %rc) #0 {
entry:
  %retval = alloca i32, align 4
  %rc.addr = alloca i32, align 4
  store i32 %rc, i32* %rc.addr, align 4
  %0 = load i32, i32* %rc.addr, align 4
  switch i32 %0, label %sw.default [
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 107, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 114, label %sw.bb
    i32 113, label %sw.bb
    i32 104, label %sw.bb
    i32 112, label %sw.bb
    i32 117, label %sw.bb.1
    i32 118, label %sw.bb.1
    i32 119, label %sw.bb.1
    i32 115, label %sw.bb.1
    i32 116, label %sw.bb.1
    i32 120, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @whitelist_check(%struct.cl_engine* %engine, %struct.url_check* %urls, i32 %hostOnly) #0 {
entry:
  %engine.addr = alloca %struct.cl_engine*, align 8
  %urls.addr = alloca %struct.url_check*, align 8
  %hostOnly.addr = alloca i32, align 4
  store %struct.cl_engine* %engine, %struct.cl_engine** %engine.addr, align 8
  store %struct.url_check* %urls, %struct.url_check** %urls.addr, align 8
  store i32 %hostOnly, i32* %hostOnly.addr, align 4
  %0 = load %struct.cl_engine*, %struct.cl_engine** %engine.addr, align 8
  %1 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink = getelementptr inbounds %struct.url_check, %struct.url_check* %1, i32 0, i32 0
  %data = getelementptr inbounds %struct.string, %struct.string* %realLink, i32 0, i32 2
  %2 = load i8*, i8** %data, align 8
  %3 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink = getelementptr inbounds %struct.url_check, %struct.url_check* %3, i32 0, i32 1
  %data1 = getelementptr inbounds %struct.string, %struct.string* %displayLink, i32 0, i32 2
  %4 = load i8*, i8** %data1, align 8
  %5 = load i32, i32* %hostOnly.addr, align 4
  %call = call i32 @whitelist_match(%struct.cl_engine* %0, i8* %2, i8* %4, i32 %5)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @isURL(%struct.phishcheck* %pchk, i8* %URL) #0 {
entry:
  %pchk.addr = alloca %struct.phishcheck*, align 8
  %URL.addr = alloca i8*, align 8
  store %struct.phishcheck* %pchk, %struct.phishcheck** %pchk.addr, align 8
  store i8* %URL, i8** %URL.addr, align 8
  %0 = load i8*, i8** %URL.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %preg = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %1, i32 0, i32 0
  %2 = load i8*, i8** %URL.addr, align 8
  %call = call i32 @cli_regexec(%struct.regex_t* %preg, i8* %2, i64 0, %struct.regmatch_t* null, i32 0)
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @isRealURL(%struct.phishcheck* %pchk, i8* %URL) #0 {
entry:
  %pchk.addr = alloca %struct.phishcheck*, align 8
  %URL.addr = alloca i8*, align 8
  store %struct.phishcheck* %pchk, %struct.phishcheck** %pchk.addr, align 8
  store i8* %URL, i8** %URL.addr, align 8
  %0 = load i8*, i8** %URL.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %preg_realurl = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %1, i32 0, i32 1
  %2 = load i8*, i8** %URL.addr, align 8
  %call = call i32 @cli_regexec(%struct.regex_t* %preg_realurl, i8* %2, i64 0, %struct.regmatch_t* null, i32 0)
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @isNumericURL(%struct.phishcheck* %pchk, i8* %URL) #0 {
entry:
  %pchk.addr = alloca %struct.phishcheck*, align 8
  %URL.addr = alloca i8*, align 8
  store %struct.phishcheck* %pchk, %struct.phishcheck** %pchk.addr, align 8
  store i8* %URL, i8** %URL.addr, align 8
  %0 = load i8*, i8** %URL.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %preg_numeric = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %1, i32 0, i32 4
  %2 = load i8*, i8** %URL.addr, align 8
  %call = call i32 @cli_regexec(%struct.regex_t* %preg_numeric, i8* %2, i64 0, %struct.regmatch_t* null, i32 0)
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

declare i32 @domainlist_match(%struct.cl_engine*, i8*, i8*, %struct.pre_fixup_info*, i32, i16*) #2

; Function Attrs: nounwind uwtable
define internal void @url_check_init(%struct.url_check* %urls) #0 {
entry:
  %urls.addr = alloca %struct.url_check*, align 8
  store %struct.url_check* %urls, %struct.url_check** %urls.addr, align 8
  %0 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %realLink = getelementptr inbounds %struct.url_check, %struct.url_check* %0, i32 0, i32 0
  call void @string_init_c(%struct.string* %realLink, i8* null)
  %1 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %displayLink = getelementptr inbounds %struct.url_check, %struct.url_check* %1, i32 0, i32 1
  call void @string_init_c(%struct.string* %displayLink, i8* null)
  %2 = load %struct.url_check*, %struct.url_check** %urls.addr, align 8
  %pre_fixup = getelementptr inbounds %struct.url_check, %struct.url_check* %2, i32 0, i32 2
  %pre_displayLink = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %pre_fixup, i32 0, i32 0
  call void @string_init_c(%struct.string* %pre_displayLink, i8* null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @url_get_host(%struct.phishcheck* %pchk, %struct.url_check* %url, %struct.url_check* %host_url, i32 %isReal, i32* %phishy) #0 {
entry:
  %retval = alloca i32, align 4
  %pchk.addr = alloca %struct.phishcheck*, align 8
  %url.addr = alloca %struct.url_check*, align 8
  %host_url.addr = alloca %struct.url_check*, align 8
  %isReal.addr = alloca i32, align 4
  %phishy.addr = alloca i32*, align 8
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %host = alloca %struct.string*, align 8
  %URL = alloca i8*, align 8
  %rc = alloca i32, align 4
  store %struct.phishcheck* %pchk, %struct.phishcheck** %pchk.addr, align 8
  store %struct.url_check* %url, %struct.url_check** %url.addr, align 8
  store %struct.url_check* %host_url, %struct.url_check** %host_url.addr, align 8
  store i32 %isReal, i32* %isReal.addr, align 4
  store i32* %phishy, i32** %phishy.addr, align 8
  %0 = load i32, i32* %isReal.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.url_check*, %struct.url_check** %host_url.addr, align 8
  %realLink = getelementptr inbounds %struct.url_check, %struct.url_check* %1, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.url_check*, %struct.url_check** %host_url.addr, align 8
  %displayLink = getelementptr inbounds %struct.url_check, %struct.url_check* %2, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.string* [ %realLink, %cond.true ], [ %displayLink, %cond.false ]
  store %struct.string* %cond, %struct.string** %host, align 8
  %3 = load i32, i32* %isReal.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %cond.true.2, label %cond.false.4

cond.true.2:                                      ; preds = %cond.end
  %4 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %realLink3 = getelementptr inbounds %struct.url_check, %struct.url_check* %4, i32 0, i32 0
  %data = getelementptr inbounds %struct.string, %struct.string* %realLink3, i32 0, i32 2
  %5 = load i8*, i8** %data, align 8
  br label %cond.end.7

cond.false.4:                                     ; preds = %cond.end
  %6 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %displayLink5 = getelementptr inbounds %struct.url_check, %struct.url_check* %6, i32 0, i32 1
  %data6 = getelementptr inbounds %struct.string, %struct.string* %displayLink5, i32 0, i32 2
  %7 = load i8*, i8** %data6, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.4, %cond.true.2
  %cond8 = phi i8* [ %5, %cond.true.2 ], [ %7, %cond.false.4 ]
  store i8* %cond8, i8** %URL, align 8
  %8 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %9 = load i8*, i8** %URL, align 8
  %10 = load i32, i32* %isReal.addr, align 4
  %11 = load i32*, i32** %phishy.addr, align 8
  %call = call i32 @get_host(%struct.phishcheck* %8, i8* %9, i32 %10, i32* %11, i8** %start, i8** %end)
  store i32 %call, i32* %rc, align 4
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.7
  %12 = load i32, i32* %rc, align 4
  store i32 %12, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.7
  %13 = load i8*, i8** %start, align 8
  %tobool10 = icmp ne i8* %13, null
  br i1 %tobool10, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i8*, i8** %end, align 8
  %tobool11 = icmp ne i8* %14, null
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %15 = load %struct.string*, %struct.string** %host, align 8
  call void @string_assign_null(%struct.string* %15)
  br label %if.end.17

if.else:                                          ; preds = %lor.lhs.false
  %16 = load %struct.string*, %struct.string** %host, align 8
  %17 = load i8*, i8** %start, align 8
  %18 = load i8*, i8** %end, align 8
  %call13 = call i32 @string_assign_dup(%struct.string* %16, i8* %17, i8* %18)
  store i32 %call13, i32* %rc, align 4
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  %19 = load i32, i32* %rc, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.12
  %20 = load %struct.string*, %struct.string** %host, align 8
  %data18 = getelementptr inbounds %struct.string, %struct.string* %20, i32 0, i32 2
  %21 = load i8*, i8** %data18, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i8* %21)
  %22 = load i32, i32* %isReal.addr, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %if.end.25, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %23 = load i8*, i8** %start, align 8
  %24 = load i8*, i8** %URL, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %25 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %pre_fixup = getelementptr inbounds %struct.url_check, %struct.url_check* %25, i32 0, i32 2
  %host_start = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %pre_fixup, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %host_start, align 8
  %26 = load i8*, i8** %end, align 8
  %27 = load i8*, i8** %URL, align 8
  %sub.ptr.lhs.cast21 = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast22 = ptrtoint i8* %27 to i64
  %sub.ptr.sub23 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast22
  %28 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %pre_fixup24 = getelementptr inbounds %struct.url_check, %struct.url_check* %28, i32 0, i32 2
  %host_end = getelementptr inbounds %struct.pre_fixup_info, %struct.pre_fixup_info* %pre_fixup24, i32 0, i32 2
  store i64 %sub.ptr.sub23, i64* %host_end, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.20, %if.end.17
  %29 = load %struct.string*, %struct.string** %host, align 8
  %data26 = getelementptr inbounds %struct.string, %struct.string* %29, i32 0, i32 2
  %30 = load i8*, i8** %data26, align 8
  %tobool27 = icmp ne i8* %30, null
  br i1 %tobool27, label %if.end.29, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  store i32 101, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  %31 = load i32*, i32** %phishy.addr, align 8
  %32 = load i32, i32* %31, align 4
  %and = and i32 %32, 4
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.29
  store i32 114, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.29
  %33 = load %struct.string*, %struct.string** %host, align 8
  %data33 = getelementptr inbounds %struct.string, %struct.string* %33, i32 0, i32 2
  %34 = load i8*, i8** %data33, align 8
  %call34 = call i8* @strchr(i8* %34, i32 32) #6
  %tobool35 = icmp ne i8* %call34, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  %35 = load %struct.string*, %struct.string** %host, align 8
  call void @string_free(%struct.string* %35)
  store i32 113, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.32
  %36 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %flags = getelementptr inbounds %struct.url_check, %struct.url_check* %36, i32 0, i32 3
  %37 = load i16, i16* %flags, align 2
  %conv = zext i16 %37 to i32
  %and38 = and i32 %conv, 32
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.end.37
  %38 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %preg_hexurl = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %38, i32 0, i32 5
  %39 = load %struct.string*, %struct.string** %host, align 8
  %data40 = getelementptr inbounds %struct.string, %struct.string* %39, i32 0, i32 2
  %40 = load i8*, i8** %data40, align 8
  %call41 = call i32 @cli_regexec(%struct.regex_t* %preg_hexurl, i8* %40, i64 0, %struct.regmatch_t* null, i32 0)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true
  %41 = load %struct.string*, %struct.string** %host, align 8
  call void @string_free(%struct.string* %41)
  store i32 117, i32* %retval
  br label %return

if.end.44:                                        ; preds = %land.lhs.true, %if.end.37
  %42 = load i32, i32* %isReal.addr, align 4
  %tobool45 = icmp ne i32 %42, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.51

land.lhs.true.46:                                 ; preds = %if.end.44
  %43 = load %struct.string*, %struct.string** %host, align 8
  %data47 = getelementptr inbounds %struct.string, %struct.string* %43, i32 0, i32 2
  %44 = load i8*, i8** %data47, align 8
  %arrayidx = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx, align 1
  %conv48 = sext i8 %45 to i32
  %cmp = icmp eq i32 %conv48, 0
  br i1 %cmp, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.46
  store i32 100, i32* %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.46, %if.end.44
  %46 = load %struct.string*, %struct.string** %host, align 8
  %data52 = getelementptr inbounds %struct.string, %struct.string* %46, i32 0, i32 2
  %47 = load i8*, i8** %data52, align 8
  %call53 = call i32 @isNumeric(i8* %47)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  %48 = load i32*, i32** %phishy.addr, align 8
  %49 = load i32, i32* %48, align 4
  %or = or i32 %49, 2
  store i32 %or, i32* %48, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.51
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.50, %if.then.43, %if.then.36, %if.then.31, %if.then.28, %if.then.15, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @isEncoded(i8* %url) #0 {
entry:
  %url.addr = alloca i8*, align 8
  %start = alloca i8*, align 8
  %cnt = alloca i64, align 8
  store i8* %url, i8** %url.addr, align 8
  %0 = load i8*, i8** %url.addr, align 8
  store i8* %0, i8** %start, align 8
  store i64 0, i64* %cnt, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i64, i64* %cnt, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %cnt, align 8
  %2 = load i8*, i8** %start, align 8
  %call = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0)) #6
  store i8* %call, i8** %start, align 8
  %3 = load i8*, i8** %start, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %start, align 8
  %call1 = call i8* @strstr(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0)) #6
  store i8* %call1, i8** %start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load i8*, i8** %start, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load i64, i64* %cnt, align 8
  %sub = sub i64 %6, 1
  %7 = load i8*, i8** %url.addr, align 8
  %call3 = call i64 @strlen(i8* %7) #6
  %mul = mul i64 %call3, 7
  %div = udiv i64 %mul, 10
  %cmp = icmp ugt i64 %sub, %div
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @isSSL(i8* %URL) #0 {
entry:
  %URL.addr = alloca i8*, align 8
  store i8* %URL, i8** %URL.addr, align 8
  %0 = load i8*, i8** %URL.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %URL.addr, align 8
  %call = call i32 @strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @https, i32 0, i32 0), i8* %1, i64 8) #6
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal void @url_get_domain(%struct.phishcheck* %pchk, %struct.url_check* %url, %struct.url_check* %domains) #0 {
entry:
  %pchk.addr = alloca %struct.phishcheck*, align 8
  %url.addr = alloca %struct.url_check*, align 8
  %domains.addr = alloca %struct.url_check*, align 8
  store %struct.phishcheck* %pchk, %struct.phishcheck** %pchk.addr, align 8
  store %struct.url_check* %url, %struct.url_check** %url.addr, align 8
  store %struct.url_check* %domains, %struct.url_check** %domains.addr, align 8
  %0 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %1 = load %struct.url_check*, %struct.url_check** %domains.addr, align 8
  %realLink = getelementptr inbounds %struct.url_check, %struct.url_check* %1, i32 0, i32 0
  %2 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %realLink1 = getelementptr inbounds %struct.url_check, %struct.url_check* %2, i32 0, i32 0
  call void @get_domain(%struct.phishcheck* %0, %struct.string* %realLink, %struct.string* %realLink1)
  %3 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %4 = load %struct.url_check*, %struct.url_check** %domains.addr, align 8
  %displayLink = getelementptr inbounds %struct.url_check, %struct.url_check* %4, i32 0, i32 1
  %5 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %displayLink2 = getelementptr inbounds %struct.url_check, %struct.url_check* %5, i32 0, i32 1
  call void @get_domain(%struct.phishcheck* %3, %struct.string* %displayLink, %struct.string* %displayLink2)
  %6 = load %struct.url_check*, %struct.url_check** %url.addr, align 8
  %flags = getelementptr inbounds %struct.url_check, %struct.url_check* %6, i32 0, i32 3
  %7 = load i16, i16* %flags, align 2
  %8 = load %struct.url_check*, %struct.url_check** %domains.addr, align 8
  %flags3 = getelementptr inbounds %struct.url_check, %struct.url_check* %8, i32 0, i32 3
  store i16 %7, i16* %flags3, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @phishy_map(i32 %phishy, i32 %fallback) #0 {
entry:
  %retval = alloca i32, align 4
  %phishy.addr = alloca i32, align 4
  %fallback.addr = alloca i32, align 4
  store i32 %phishy, i32* %phishy.addr, align 4
  store i32 %fallback, i32* %fallback.addr, align 4
  %0 = load i32, i32* %phishy.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 115, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %phishy.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 116, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %2 = load i32, i32* %fallback.addr, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.else.4, %if.then.3, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @cleanupURL(%struct.string* %URL, %struct.string* %pre_URL, i32 %isReal) #0 {
entry:
  %retval = alloca i32, align 4
  %URL.addr = alloca %struct.string*, align 8
  %pre_URL.addr = alloca %struct.string*, align 8
  %isReal.addr = alloca i32, align 4
  %begin = alloca i8*, align 8
  %end = alloca i8*, align 8
  %len = alloca i64, align 8
  %host_len = alloca i64, align 8
  %host_begin = alloca i8*, align 8
  %rc = alloca i32, align 4
  store %struct.string* %URL, %struct.string** %URL.addr, align 8
  store %struct.string* %pre_URL, %struct.string** %pre_URL.addr, align 8
  store i32 %isReal, i32* %isReal.addr, align 4
  %0 = load %struct.string*, %struct.string** %URL.addr, align 8
  %data = getelementptr inbounds %struct.string, %struct.string* %0, i32 0, i32 2
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %begin, align 8
  %2 = load i8*, i8** %begin, align 8
  call void @clear_msb(i8* %2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i8*, i8** %begin, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %5 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %6 to i32
  %and = and i32 %conv1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %begin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %begin, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8*, i8** %begin, align 8
  %call2 = call i64 @strlen(i8* %8) #6
  store i64 %call2, i64* %len, align 8
  %9 = load i64, i64* %len, align 8
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load %struct.string*, %struct.string** %URL.addr, align 8
  call void @string_assign_null(%struct.string* %10)
  %11 = load %struct.string*, %struct.string** %pre_URL.addr, align 8
  call void @string_assign_null(%struct.string* %11)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %12 = load i8*, i8** %begin, align 8
  %13 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr4, i8** %end, align 8
  %14 = load i8*, i8** %begin, align 8
  %15 = load i8*, i8** %end, align 8
  %cmp5 = icmp uge i8* %14, %15
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %16 = load %struct.string*, %struct.string** %URL.addr, align 8
  call void @string_assign_null(%struct.string* %16)
  %17 = load %struct.string*, %struct.string** %pre_URL.addr, align 8
  call void @string_assign_null(%struct.string* %17)
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %while.cond.9

while.cond.9:                                     ; preds = %while.body.17, %if.end.8
  %18 = load i8*, i8** %end, align 8
  %19 = load i8, i8* %18, align 1
  %conv10 = sext i8 %19 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %call12 = call i16** @__ctype_b_loc() #7
  %20 = load i16*, i16** %call12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %20, i64 %idxprom11
  %21 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %21 to i32
  %and15 = and i32 %conv14, 8192
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %while.body.17, label %while.end.19

while.body.17:                                    ; preds = %while.cond.9
  %22 = load i8*, i8** %end, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr18, i8** %end, align 8
  br label %while.cond.9

while.end.19:                                     ; preds = %while.cond.9
  %23 = load i8*, i8** %begin, align 8
  %call20 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @dotnet, i32 0, i32 0), i64 4) #6
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %lor.lhs.false, label %if.then.27

lor.lhs.false:                                    ; preds = %while.end.19
  %24 = load i8*, i8** %begin, align 8
  %call22 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @adonet, i32 0, i32 0), i64 7) #6
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then.27

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %25 = load i8*, i8** %begin, align 8
  %call25 = call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @aspnet, i32 0, i32 0), i64 7) #6
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.else, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false.24, %lor.lhs.false, %while.end.19
  %26 = load %struct.string*, %struct.string** %URL.addr, align 8
  call void @string_assign_null(%struct.string* %26)
  %27 = load %struct.string*, %struct.string** %pre_URL.addr, align 8
  call void @string_assign_null(%struct.string* %27)
  br label %if.end.86

if.else:                                          ; preds = %lor.lhs.false.24
  %28 = load i8*, i8** %begin, align 8
  %29 = load i8*, i8** %end, align 8
  call void @str_replace(i8* %28, i8* %29, i8 signext 92, i8 signext 47)
  %30 = load i8*, i8** %begin, align 8
  %31 = load i8*, i8** %end, align 8
  call void @str_replace(i8* %30, i8* %31, i8 signext 60, i8 signext 32)
  %32 = load i8*, i8** %begin, align 8
  %33 = load i8*, i8** %end, align 8
  call void @str_replace(i8* %32, i8* %33, i8 signext 62, i8 signext 32)
  %34 = load i8*, i8** %begin, align 8
  %35 = load i8*, i8** %end, align 8
  call void @str_replace(i8* %34, i8* %35, i8 signext 34, i8 signext 32)
  %36 = load i8*, i8** %begin, align 8
  %37 = load i8*, i8** %end, align 8
  call void @str_replace(i8* %36, i8* %37, i8 signext 59, i8 signext 32)
  call void @str_strip(i8** %begin, i8** %end, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @lt, i32 0, i32 0), i64 3)
  call void @str_strip(i8** %begin, i8** %end, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @gt, i32 0, i32 0), i64 3)
  %38 = load i8*, i8** %begin, align 8
  %call28 = call i8* @strchr(i8* %38, i32 58) #6
  store i8* %call28, i8** %host_begin, align 8
  br label %while.cond.29

while.cond.29:                                    ; preds = %while.body.35, %if.else
  %39 = load i8*, i8** %host_begin, align 8
  %tobool30 = icmp ne i8* %39, null
  br i1 %tobool30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.29
  %40 = load i8*, i8** %host_begin, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %41 to i32
  %cmp33 = icmp eq i32 %conv32, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.29
  %42 = phi i1 [ false, %while.cond.29 ], [ %cmp33, %land.rhs ]
  br i1 %42, label %while.body.35, label %while.end.37

while.body.35:                                    ; preds = %land.end
  %43 = load i8*, i8** %host_begin, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr36, i8** %host_begin, align 8
  br label %while.cond.29

while.end.37:                                     ; preds = %land.end
  %44 = load i8*, i8** %host_begin, align 8
  %tobool38 = icmp ne i8* %44, null
  br i1 %tobool38, label %if.else.40, label %if.then.39

if.then.39:                                       ; preds = %while.end.37
  %45 = load i8*, i8** %begin, align 8
  store i8* %45, i8** %host_begin, align 8
  br label %if.end.42

if.else.40:                                       ; preds = %while.end.37
  %46 = load i8*, i8** %host_begin, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr41, i8** %host_begin, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.then.39
  %47 = load i8*, i8** %host_begin, align 8
  %call43 = call i64 @strcspn(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0)) #6
  store i64 %call43, i64* %host_len, align 8
  %48 = load i8*, i8** %host_begin, align 8
  %49 = load i64, i64* %host_len, align 8
  call void @str_make_lowercase(i8* %48, i64 %49)
  call void @str_hex_to_char(i8** %begin, i8** %end)
  %50 = load i32, i32* %isReal.addr, align 4
  %tobool44 = icmp ne i32 %50, 0
  br i1 %tobool44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.end.42
  call void @str_strip(i8** %begin, i8** %end, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i64 1)
  br label %if.end.71

if.else.46:                                       ; preds = %if.end.42
  br label %while.cond.47

while.cond.47:                                    ; preds = %while.body.56, %if.else.46
  %51 = load i8*, i8** %begin, align 8
  %52 = load i8*, i8** %end, align 8
  %cmp48 = icmp ule i8* %51, %52
  br i1 %cmp48, label %land.rhs.50, label %land.end.55

land.rhs.50:                                      ; preds = %while.cond.47
  %53 = load i8*, i8** %begin, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %54 to i32
  %cmp53 = icmp eq i32 %conv52, 32
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.50, %while.cond.47
  %55 = phi i1 [ false, %while.cond.47 ], [ %cmp53, %land.rhs.50 ]
  br i1 %55, label %while.body.56, label %while.end.58

while.body.56:                                    ; preds = %land.end.55
  %56 = load i8*, i8** %begin, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr57, i8** %begin, align 8
  br label %while.cond.47

while.end.58:                                     ; preds = %land.end.55
  br label %while.cond.59

while.cond.59:                                    ; preds = %while.body.68, %while.end.58
  %57 = load i8*, i8** %begin, align 8
  %58 = load i8*, i8** %end, align 8
  %cmp60 = icmp ule i8* %57, %58
  br i1 %cmp60, label %land.rhs.62, label %land.end.67

land.rhs.62:                                      ; preds = %while.cond.59
  %59 = load i8*, i8** %end, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %59, i64 0
  %60 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %60 to i32
  %cmp65 = icmp eq i32 %conv64, 32
  br label %land.end.67

land.end.67:                                      ; preds = %land.rhs.62, %while.cond.59
  %61 = phi i1 [ false, %while.cond.59 ], [ %cmp65, %land.rhs.62 ]
  br i1 %61, label %while.body.68, label %while.end.70

while.body.68:                                    ; preds = %land.end.67
  %62 = load i8*, i8** %end, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %62, i32 -1
  store i8* %incdec.ptr69, i8** %end, align 8
  br label %while.cond.59

while.end.70:                                     ; preds = %land.end.67
  br label %if.end.71

if.end.71:                                        ; preds = %while.end.70, %if.then.45
  %63 = load i32, i32* %isReal.addr, align 4
  %tobool72 = icmp ne i32 %63, 0
  br i1 %tobool72, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.71
  %64 = load %struct.string*, %struct.string** %URL.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.71
  %65 = load %struct.string*, %struct.string** %pre_URL.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.string* [ %64, %cond.true ], [ %65, %cond.false ]
  %66 = load i8*, i8** %begin, align 8
  %67 = load i8*, i8** %end, align 8
  %add.ptr73 = getelementptr inbounds i8, i8* %67, i64 1
  %call74 = call i32 @string_assign_dup(%struct.string* %cond, i8* %66, i8* %add.ptr73)
  store i32 %call74, i32* %rc, align 4
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %cond.end
  %68 = load %struct.string*, %struct.string** %URL.addr, align 8
  call void @string_assign_null(%struct.string* %68)
  %69 = load i32, i32* %rc, align 4
  store i32 %69, i32* %retval
  br label %return

if.end.77:                                        ; preds = %cond.end
  %70 = load i32, i32* %isReal.addr, align 4
  %tobool78 = icmp ne i32 %70, 0
  br i1 %tobool78, label %if.end.85, label %if.then.79

if.then.79:                                       ; preds = %if.end.77
  call void @str_fixup_spaces(i8** %begin, i8** %end)
  %71 = load %struct.string*, %struct.string** %URL.addr, align 8
  %72 = load i8*, i8** %begin, align 8
  %73 = load i8*, i8** %end, align 8
  %add.ptr80 = getelementptr inbounds i8, i8* %73, i64 1
  %call81 = call i32 @string_assign_dup(%struct.string* %71, i8* %72, i8* %add.ptr80)
  store i32 %call81, i32* %rc, align 4
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.then.79
  %74 = load i32, i32* %rc, align 4
  store i32 %74, i32* %retval
  br label %return

if.end.84:                                        ; preds = %if.then.79
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.77
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.27
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.86, %if.then.83, %if.then.76, %if.then.7, %if.then
  %75 = load i32, i32* %retval
  ret i32 %75
}

; Function Attrs: nounwind uwtable
define internal void @clear_msb(i8* %begin) #0 {
entry:
  %begin.addr = alloca i8*, align 8
  store i8* %begin, i8** %begin.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %begin.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %begin.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %and = and i32 %conv, 127
  %cmp = icmp slt i32 %and, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %4 = load i8*, i8** %begin.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %and3 = and i32 %conv2, 127
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32, %cond.true ], [ %and3, %cond.false ]
  %conv4 = trunc i32 %cond to i8
  %6 = load i8*, i8** %begin.addr, align 8
  store i8 %conv4, i8* %6, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %7 = load i8*, i8** %begin.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %begin.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind uwtable
define internal void @string_assign_null(%struct.string* %dest) #0 {
entry:
  %dest.addr = alloca %struct.string*, align 8
  store %struct.string* %dest, %struct.string** %dest.addr, align 8
  %0 = load %struct.string*, %struct.string** %dest.addr, align 8
  %tobool = icmp ne %struct.string* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.string*, %struct.string** %dest.addr, align 8
  call void @string_free(%struct.string* %1)
  %2 = load %struct.string*, %struct.string** %dest.addr, align 8
  %data = getelementptr inbounds %struct.string, %struct.string* %2, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @empty_string, i32 0, i32 0), i8** %data, align 8
  %3 = load %struct.string*, %struct.string** %dest.addr, align 8
  %refcount = getelementptr inbounds %struct.string, %struct.string* %3, i32 0, i32 0
  store i32 -1, i32* %refcount, align 4
  %4 = load %struct.string*, %struct.string** %dest.addr, align 8
  %ref = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 1
  store %struct.string* null, %struct.string** %ref, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @str_replace(i8* %str, i8* %end, i8 signext %c, i8 signext %r) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %r.addr = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8 %r, i8* %r.addr, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %cmp = icmp ule i8* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %4 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i8, i8* %r.addr, align 1
  %6 = load i8*, i8** %str.addr, align 8
  store i8 %5, i8* %6, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @str_strip(i8** %begin, i8** %end, i8* %what, i64 %what_len) #0 {
entry:
  %begin.addr = alloca i8**, align 8
  %end.addr = alloca i8**, align 8
  %what.addr = alloca i8*, align 8
  %what_len.addr = alloca i64, align 8
  %sbegin = alloca i8*, align 8
  %str_end = alloca i8*, align 8
  %str_end_what = alloca i8*, align 8
  %cmp_len = alloca i64, align 8
  %src = alloca i8*, align 8
  store i8** %begin, i8*** %begin.addr, align 8
  store i8** %end, i8*** %end.addr, align 8
  store i8* %what, i8** %what.addr, align 8
  store i64 %what_len, i64* %what_len.addr, align 8
  %0 = load i8**, i8*** %begin.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %sbegin, align 8
  %2 = load i8**, i8*** %end.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %str_end, align 8
  %4 = load i64, i64* %what_len.addr, align 8
  store i64 %4, i64* %cmp_len, align 8
  %5 = load i8**, i8*** %begin.addr, align 8
  %cmp = icmp eq i8** %5, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load i8*, i8** %str_end, align 8
  %7 = load i8*, i8** %sbegin, align 8
  %cmp1 = icmp ule i8* %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i8*, i8** %sbegin, align 8
  %call = call i64 @strlen(i8* %8) #6
  %9 = load i64, i64* %what_len.addr, align 8
  %cmp2 = icmp ult i64 %call, %9
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.9, %if.end.4
  %10 = load i64, i64* %cmp_len, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i8*, i8** %sbegin, align 8
  %12 = load i8*, i8** %what.addr, align 8
  %13 = load i64, i64* %cmp_len, align 8
  %call5 = call i32 @strncmp(i8* %11, i8* %12, i64 %13) #6
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i64, i64* %what_len.addr, align 8
  %16 = load i8*, i8** %sbegin, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %15
  store i8* %add.ptr, i8** %sbegin, align 8
  %17 = load i64, i64* %cmp_len, align 8
  %18 = load i64, i64* %what_len.addr, align 8
  %cmp7 = icmp ugt i64 %17, %18
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %while.body
  %19 = load i64, i64* %what_len.addr, align 8
  %20 = load i64, i64* %cmp_len, align 8
  %sub = sub i64 %20, %19
  store i64 %sub, i64* %cmp_len, align 8
  br label %if.end.9

if.else:                                          ; preds = %while.body
  store i64 0, i64* %cmp_len, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load i64, i64* %what_len.addr, align 8
  %22 = load i8*, i8** %str_end, align 8
  %23 = load i8*, i8** %sbegin, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp10 = icmp ule i64 %21, %sub.ptr.sub
  br i1 %cmp10, label %if.then.11, label %if.end.26

if.then.11:                                       ; preds = %while.end
  %24 = load i8*, i8** %str_end, align 8
  %25 = load i64, i64* %what_len.addr, align 8
  %idx.neg = sub i64 0, %25
  %add.ptr12 = getelementptr inbounds i8, i8* %24, i64 %idx.neg
  %add.ptr13 = getelementptr inbounds i8, i8* %add.ptr12, i64 1
  store i8* %add.ptr13, i8** %str_end_what, align 8
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.20, %if.then.11
  %26 = load i8*, i8** %str_end_what, align 8
  %27 = load i8*, i8** %sbegin, align 8
  %cmp15 = icmp ugt i8* %26, %27
  br i1 %cmp15, label %land.rhs.16, label %land.end.19

land.rhs.16:                                      ; preds = %while.cond.14
  %28 = load i8*, i8** %str_end_what, align 8
  %29 = load i8*, i8** %what.addr, align 8
  %30 = load i64, i64* %what_len.addr, align 8
  %call17 = call i32 @strncmp(i8* %28, i8* %29, i64 %30) #6
  %cmp18 = icmp eq i32 %call17, 0
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.16, %while.cond.14
  %31 = phi i1 [ false, %while.cond.14 ], [ %cmp18, %land.rhs.16 ]
  br i1 %31, label %while.body.20, label %while.end.25

while.body.20:                                    ; preds = %land.end.19
  %32 = load i64, i64* %what_len.addr, align 8
  %33 = load i8*, i8** %str_end, align 8
  %idx.neg21 = sub i64 0, %32
  %add.ptr22 = getelementptr inbounds i8, i8* %33, i64 %idx.neg21
  store i8* %add.ptr22, i8** %str_end, align 8
  %34 = load i64, i64* %what_len.addr, align 8
  %35 = load i8*, i8** %str_end_what, align 8
  %idx.neg23 = sub i64 0, %34
  %add.ptr24 = getelementptr inbounds i8, i8* %35, i64 %idx.neg23
  store i8* %add.ptr24, i8** %str_end_what, align 8
  br label %while.cond.14

while.end.25:                                     ; preds = %land.end.19
  br label %if.end.26

if.end.26:                                        ; preds = %while.end.25, %while.end
  %36 = load i8*, i8** %sbegin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %sbegin, align 8
  %37 = load i8**, i8*** %begin.addr, align 8
  store i8* %36, i8** %37, align 8
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.end.46, %if.end.26
  %38 = load i8*, i8** %sbegin, align 8
  %39 = load i64, i64* %what_len.addr, align 8
  %add.ptr28 = getelementptr inbounds i8, i8* %38, i64 %39
  %40 = load i8*, i8** %str_end, align 8
  %cmp29 = icmp ule i8* %add.ptr28, %40
  br i1 %cmp29, label %while.body.30, label %while.end.48

while.body.30:                                    ; preds = %while.cond.27
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.39, %while.body.30
  %41 = load i8*, i8** %sbegin, align 8
  %42 = load i64, i64* %what_len.addr, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %41, i64 %42
  %43 = load i8*, i8** %str_end, align 8
  %cmp33 = icmp ule i8* %add.ptr32, %43
  br i1 %cmp33, label %land.rhs.34, label %land.end.38

land.rhs.34:                                      ; preds = %while.cond.31
  %44 = load i8*, i8** %sbegin, align 8
  %45 = load i8*, i8** %what.addr, align 8
  %46 = load i64, i64* %what_len.addr, align 8
  %call35 = call i32 @strncmp(i8* %44, i8* %45, i64 %46) #6
  %tobool36 = icmp ne i32 %call35, 0
  %lnot37 = xor i1 %tobool36, true
  br label %land.end.38

land.end.38:                                      ; preds = %land.rhs.34, %while.cond.31
  %47 = phi i1 [ false, %while.cond.31 ], [ %lnot37, %land.rhs.34 ]
  br i1 %47, label %while.body.39, label %while.end.46

while.body.39:                                    ; preds = %land.end.38
  %48 = load i8*, i8** %sbegin, align 8
  %49 = load i64, i64* %what_len.addr, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %add.ptr40, i8** %src, align 8
  %50 = load i8*, i8** %sbegin, align 8
  %51 = load i8*, i8** %src, align 8
  %52 = load i8*, i8** %str_end, align 8
  %53 = load i8*, i8** %src, align 8
  %sub.ptr.lhs.cast41 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast42 = ptrtoint i8* %53 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %add = add nsw i64 %sub.ptr.sub43, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %50, i8* %51, i64 %add, i32 1, i1 false)
  %54 = load i64, i64* %what_len.addr, align 8
  %55 = load i8*, i8** %str_end, align 8
  %idx.neg44 = sub i64 0, %54
  %add.ptr45 = getelementptr inbounds i8, i8* %55, i64 %idx.neg44
  store i8* %add.ptr45, i8** %str_end, align 8
  br label %while.cond.31

while.end.46:                                     ; preds = %land.end.38
  %56 = load i8*, i8** %sbegin, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr47, i8** %sbegin, align 8
  br label %while.cond.27

while.end.48:                                     ; preds = %while.cond.27
  %57 = load i8*, i8** %str_end, align 8
  %58 = load i8**, i8*** %end.addr, align 8
  store i8* %57, i8** %58, align 8
  br label %return

return:                                           ; preds = %while.end.48, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @str_make_lowercase(i8* %str, i64 %len) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %len.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %call = call i32 @tolower(i32 %conv) #5
  %conv1 = trunc i32 %call to i8
  %3 = load i8*, i8** %str.addr, align 8
  store i8 %conv1, i8* %3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %5 = load i64, i64* %len.addr, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %len.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @str_hex_to_char(i8** %begin, i8** %end) #0 {
entry:
  %begin.addr = alloca i8**, align 8
  %end.addr = alloca i8**, align 8
  %sbegin = alloca i8*, align 8
  %str_end = alloca i8*, align 8
  %src = alloca i8*, align 8
  store i8** %begin, i8*** %begin.addr, align 8
  store i8** %end, i8*** %end.addr, align 8
  %0 = load i8**, i8*** %begin.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %sbegin, align 8
  %2 = load i8**, i8*** %end.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %str_end, align 8
  %4 = load i8*, i8** %str_end, align 8
  %5 = load i8*, i8** %sbegin, align 8
  %cmp = icmp ule i8* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %sbegin, align 8
  %call = call i64 @strlen(i8* %6) #6
  %cmp1 = icmp ule i64 %call, 2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load i8*, i8** %sbegin, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 37
  br i1 %cmp4, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  %9 = load i8*, i8** %sbegin, align 8
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 1
  %call7 = call signext i8 @hex2int(i8* %add.ptr)
  %10 = load i8*, i8** %sbegin, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %10, i64 2
  store i8 %call7, i8* %arrayidx8, align 1
  %11 = load i8*, i8** %sbegin, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr9, i8** %sbegin, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end.3
  %12 = load i8*, i8** %sbegin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %sbegin, align 8
  %13 = load i8**, i8*** %begin.addr, align 8
  store i8* %12, i8** %13, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.10
  %14 = load i8*, i8** %sbegin, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i8*, i8** %str_end, align 8
  %cmp12 = icmp ult i8* %add.ptr11, %15
  br i1 %cmp12, label %while.body, label %while.end.29

while.body:                                       ; preds = %while.cond
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.22, %while.body
  %16 = load i8*, i8** %sbegin, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %16, i64 3
  %17 = load i8*, i8** %str_end, align 8
  %cmp16 = icmp ult i8* %add.ptr15, %17
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.14
  %18 = load i8*, i8** %sbegin, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %19 to i32
  %cmp20 = icmp eq i32 %conv19, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.14
  %20 = phi i1 [ false, %while.cond.14 ], [ %cmp20, %land.rhs ]
  br i1 %20, label %while.body.22, label %while.end

while.body.22:                                    ; preds = %land.end
  %21 = load i8*, i8** %sbegin, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %21, i64 3
  store i8* %add.ptr23, i8** %src, align 8
  %22 = load i8*, i8** %sbegin, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %22, i64 1
  %call25 = call signext i8 @hex2int(i8* %add.ptr24)
  %23 = load i8*, i8** %sbegin, align 8
  store i8 %call25, i8* %23, align 1
  %24 = load i8*, i8** %sbegin, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %24, i64 1
  %25 = load i8*, i8** %src, align 8
  %26 = load i8*, i8** %str_end, align 8
  %27 = load i8*, i8** %src, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr26, i8* %25, i64 %add, i32 1, i1 false)
  %28 = load i8*, i8** %str_end, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %28, i64 -2
  store i8* %add.ptr27, i8** %str_end, align 8
  br label %while.cond.14

while.end:                                        ; preds = %land.end
  %29 = load i8*, i8** %sbegin, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr28, i8** %sbegin, align 8
  br label %while.cond

while.end.29:                                     ; preds = %while.cond
  %30 = load i8*, i8** %str_end, align 8
  %31 = load i8**, i8*** %end.addr, align 8
  store i8* %30, i8** %31, align 8
  br label %return

return:                                           ; preds = %while.end.29, %if.then.2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @string_assign_dup(%struct.string* %dest, i8* %start, i8* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %dest.addr = alloca %struct.string*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %ret = alloca i8*, align 8
  store %struct.string* %dest, %struct.string** %dest.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  %0 = load i8*, i8** %end.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %call = call i8* @cli_malloc(i64 %add)
  store i8* %call, i8** %ret, align 8
  %2 = load i8*, i8** %ret, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %ret, align 8
  %4 = load i8*, i8** %start.addr, align 8
  %5 = load i8*, i8** %end.addr, align 8
  %6 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast1 = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast2 = ptrtoint i8* %6 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %call4 = call i8* @strncpy(i8* %3, i8* %4, i64 %sub.ptr.sub3) #5
  %7 = load i8*, i8** %end.addr, align 8
  %8 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast5 = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast6 = ptrtoint i8* %8 to i64
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.rhs.cast6
  %9 = load i8*, i8** %ret, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub.ptr.sub7
  store i8 0, i8* %arrayidx, align 1
  %10 = load %struct.string*, %struct.string** %dest.addr, align 8
  call void @string_free(%struct.string* %10)
  %11 = load i8*, i8** %ret, align 8
  %12 = load %struct.string*, %struct.string** %dest.addr, align 8
  %data = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 2
  store i8* %11, i8** %data, align 8
  %13 = load %struct.string*, %struct.string** %dest.addr, align 8
  %refcount = getelementptr inbounds %struct.string, %struct.string* %13, i32 0, i32 0
  store i32 1, i32* %refcount, align 4
  %14 = load %struct.string*, %struct.string** %dest.addr, align 8
  %ref = getelementptr inbounds %struct.string, %struct.string* %14, i32 0, i32 1
  store %struct.string* null, %struct.string** %ref, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal void @str_fixup_spaces(i8** %begin, i8** %end) #0 {
entry:
  %begin.addr = alloca i8**, align 8
  %end.addr = alloca i8**, align 8
  %sbegin = alloca i8*, align 8
  %send = alloca i8*, align 8
  store i8** %begin, i8*** %begin.addr, align 8
  store i8** %end, i8*** %end.addr, align 8
  %0 = load i8**, i8*** %begin.addr, align 8
  %1 = load i8*, i8** %0, align 8
  store i8* %1, i8** %sbegin, align 8
  %2 = load i8**, i8*** %end.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %send, align 8
  %4 = load i8*, i8** %sbegin, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load i8*, i8** %send, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load i8*, i8** %send, align 8
  %7 = load i8*, i8** %sbegin, align 8
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  call void @str_strip(i8** %sbegin, i8** %send, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), i64 1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %8 = load i8*, i8** %sbegin, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #7
  %10 = load i16*, i16** %call, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx3, align 2
  %conv4 = zext i16 %11 to i32
  %and = and i32 %conv4, 8
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %12 = load i8*, i8** %sbegin, align 8
  %13 = load i8*, i8** %send, align 8
  %cmp6 = icmp ule i8* %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %sbegin, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %sbegin, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.8

while.cond.8:                                     ; preds = %while.body.21, %while.end
  %16 = load i8*, i8** %send, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %17 to i32
  %idxprom11 = sext i32 %conv10 to i64
  %call12 = call i16** @__ctype_b_loc() #7
  %18 = load i16*, i16** %call12, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %18, i64 %idxprom11
  %19 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %19 to i32
  %and15 = and i32 %conv14, 8
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %land.end.20, label %land.rhs.17

land.rhs.17:                                      ; preds = %while.cond.8
  %20 = load i8*, i8** %send, align 8
  %21 = load i8*, i8** %sbegin, align 8
  %cmp18 = icmp uge i8* %20, %21
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.17, %while.cond.8
  %22 = phi i1 [ false, %while.cond.8 ], [ %cmp18, %land.rhs.17 ]
  br i1 %22, label %while.body.21, label %while.end.23

while.body.21:                                    ; preds = %land.end.20
  %23 = load i8*, i8** %send, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %incdec.ptr22, i8** %send, align 8
  br label %while.cond.8

while.end.23:                                     ; preds = %land.end.20
  %24 = load i8*, i8** %sbegin, align 8
  %25 = load i8**, i8*** %begin.addr, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %send, align 8
  %27 = load i8**, i8*** %end.addr, align 8
  store i8* %26, i8** %27, align 8
  br label %return

return:                                           ; preds = %while.end.23, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @tolower(i32) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @hex2int(i8* %src) #0 {
entry:
  %src.addr = alloca i8*, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 48
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx6, align 1
  %idxprom = zext i8 %5 to i64
  %arrayidx7 = getelementptr inbounds [256 x i16], [256 x i16]* @hextable, i32 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %6 to i32
  %shl = shl i32 %conv8, 4
  %7 = load i8*, i8** %src.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx9, align 1
  %idxprom10 = zext i8 %8 to i64
  %arrayidx11 = getelementptr inbounds [256 x i16], [256 x i16]* @hextable, i32 0, i64 %idxprom10
  %9 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %9 to i32
  %or = or i32 %shl, %conv12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %or, %cond.false ]
  %conv13 = trunc i32 %cond to i8
  ret i8 %conv13
}

declare i32 @whitelist_match(%struct.cl_engine*, i8*, i8*, i32) #2

declare i32 @cli_regexec(%struct.regex_t*, i8*, i64, %struct.regmatch_t*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @get_host(%struct.phishcheck* %s, i8* %URL, i32 %isReal, i32* %phishy, i8** %hstart, i8** %hend) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.phishcheck*, align 8
  %URL.addr = alloca i8*, align 8
  %isReal.addr = alloca i32, align 4
  %phishy.addr = alloca i32*, align 8
  %hstart.addr = alloca i8**, align 8
  %hend.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  %ismailto = alloca i32, align 4
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %realhost = alloca i8*, align 8
  %tld = alloca i8*, align 8
  store %struct.phishcheck* %s, %struct.phishcheck** %s.addr, align 8
  store i8* %URL, i8** %URL.addr, align 8
  store i32 %isReal, i32* %isReal.addr, align 4
  store i32* %phishy, i32** %phishy.addr, align 8
  store i8** %hstart, i8*** %hstart.addr, align 8
  store i8** %hend, i8*** %hend.addr, align 8
  store i32 0, i32* %ismailto, align 4
  store i8* null, i8** %end, align 8
  %0 = load i8*, i8** %URL.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %hend.addr, align 8
  store i8* null, i8** %1, align 8
  %2 = load i8**, i8*** %hstart.addr, align 8
  store i8* null, i8** %2, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %URL.addr, align 8
  %call = call i8* @strstr(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)) #6
  store i8* %call, i8** %start, align 8
  %4 = load i8*, i8** %start, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.else.24, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load i8*, i8** %URL.addr, align 8
  %call3 = call i32 @strncmp(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @mailto, i32 0, i32 0), i64 7) #6
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then.5

if.then.5:                                        ; preds = %if.then.2
  %6 = load i8*, i8** %URL.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 7
  store i8* %add.ptr, i8** %start, align 8
  store i32 1, i32* %ismailto, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.then.2
  %7 = load i32, i32* %isReal.addr, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.else.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %8 = load i32*, i32** %phishy.addr, align 8
  %9 = load i32, i32* %8, align 4
  %and = and i32 %9, 4
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %if.then.8, label %if.else.17

if.then.8:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %URL.addr, align 8
  %11 = load i8*, i8** %URL.addr, align 8
  %call9 = call i64 @strlen(i8* %11) #6
  %add.ptr10 = getelementptr inbounds i8, i8* %10, i64 %call9
  %add.ptr11 = getelementptr inbounds i8, i8* %add.ptr10, i64 1
  store i8* %add.ptr11, i8** %end, align 8
  %12 = load i8*, i8** %URL.addr, align 8
  %13 = load i8*, i8** %URL.addr, align 8
  %call12 = call i64 @strcspn(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0)) #6
  %add.ptr13 = getelementptr inbounds i8, i8* %12, i64 %call12
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr13, i64 1
  store i8* %add.ptr14, i8** %start, align 8
  %14 = load i8*, i8** %start, align 8
  %15 = load i8*, i8** %end, align 8
  %cmp = icmp eq i8* %14, %15
  br i1 %cmp, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.8
  %16 = load i8*, i8** %URL.addr, align 8
  store i8* %16, i8** %start, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.8
  store i32 1, i32* %ismailto, align 4
  br label %if.end.22

if.else.17:                                       ; preds = %land.lhs.true, %if.else
  %17 = load i8*, i8** %URL.addr, align 8
  store i8* %17, i8** %start, align 8
  %18 = load i32, i32* %isReal.addr, align 4
  %tobool18 = icmp ne i32 %18, 0
  br i1 %tobool18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.17
  %19 = load i8*, i8** %URL.addr, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i32 0, i32 0), i8* %19)
  br label %if.end.21

if.else.20:                                       ; preds = %if.else.17
  store i32 2, i32* %ismailto, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.5
  br label %if.end.26

if.else.24:                                       ; preds = %if.end
  %20 = load i8*, i8** %start, align 8
  %add.ptr25 = getelementptr inbounds i8, i8* %20, i64 3
  store i8* %add.ptr25, i8** %start, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.end.23
  %21 = load i32, i32* %ismailto, align 4
  %tobool27 = icmp ne i32 %21, 0
  br i1 %tobool27, label %lor.lhs.false, label %if.then.29

lor.lhs.false:                                    ; preds = %if.end.26
  %22 = load i32, i32* %isReal.addr, align 4
  %tobool28 = icmp ne i32 %22, 0
  br i1 %tobool28, label %if.else.52, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.26
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.29
  %23 = load i8*, i8** %start, align 8
  %24 = load i8*, i8** %start, align 8
  %call30 = call i64 @strcspn(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #6
  %add.ptr31 = getelementptr inbounds i8, i8* %23, i64 %call30
  store i8* %add.ptr31, i8** %end, align 8
  %25 = load i8*, i8** %start, align 8
  %call32 = call i8* @strchr(i8* %25, i32 64) #6
  store i8* %call32, i8** %realhost, align 8
  %26 = load i8*, i8** %realhost, align 8
  %cmp33 = icmp eq i8* %26, null
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %do.body
  %27 = load i8*, i8** %start, align 8
  %28 = load i8*, i8** %end, align 8
  %cmp35 = icmp ne i8* %27, %28
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.39

land.lhs.true.36:                                 ; preds = %lor.lhs.false.34
  %29 = load i8*, i8** %realhost, align 8
  %30 = load i8*, i8** %end, align 8
  %cmp37 = icmp ugt i8* %29, %30
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.36, %do.body
  br label %do.end

if.end.39:                                        ; preds = %land.lhs.true.36, %lor.lhs.false.34
  %31 = load i8*, i8** %realhost, align 8
  %call40 = call i8* @strrchr(i8* %31, i32 46) #6
  store i8* %call40, i8** %tld, align 8
  %32 = load i8*, i8** %tld, align 8
  %tobool41 = icmp ne i8* %32, null
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.39
  %33 = load %struct.phishcheck*, %struct.phishcheck** %s.addr, align 8
  %34 = load i8*, i8** %tld, align 8
  %35 = load i8*, i8** %tld, align 8
  %36 = load i8*, i8** %realhost, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  %conv = trunc i64 %sub to i32
  %call42 = call i32 @isTLD(%struct.phishcheck* %33, i8* %34, i32 %conv)
  br label %cond.end

cond.false:                                       ; preds = %if.end.39
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call42, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %rc, align 4
  %37 = load i32, i32* %rc, align 4
  %cmp43 = icmp slt i32 %37, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %cond.end
  %38 = load i32, i32* %rc, align 4
  store i32 %38, i32* %retval
  br label %return

if.end.46:                                        ; preds = %cond.end
  %39 = load i32, i32* %rc, align 4
  %tobool47 = icmp ne i32 %39, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  %40 = load i32*, i32** %phishy.addr, align 8
  %41 = load i32, i32* %40, align 4
  %or = or i32 %41, 1
  store i32 %or, i32* %40, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.46
  %42 = load i8*, i8** %realhost, align 8
  %add.ptr50 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %add.ptr50, i8** %start, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.49
  %43 = load i8*, i8** %realhost, align 8
  %tobool51 = icmp ne i8* %43, null
  br i1 %tobool51, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.38
  br label %if.end.59

if.else.52:                                       ; preds = %lor.lhs.false
  %44 = load i32, i32* %ismailto, align 4
  %tobool53 = icmp ne i32 %44, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.58

land.lhs.true.54:                                 ; preds = %if.else.52
  %45 = load i32, i32* %isReal.addr, align 4
  %tobool55 = icmp ne i32 %45, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %land.lhs.true.54
  %46 = load i32*, i32** %phishy.addr, align 8
  %47 = load i32, i32* %46, align 4
  %or57 = or i32 %47, 4
  store i32 %or57, i32* %46, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %land.lhs.true.54, %if.else.52
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %do.end
  %48 = load i8*, i8** %end, align 8
  %tobool60 = icmp ne i8* %48, null
  br i1 %tobool60, label %if.end.69, label %if.then.61

if.then.61:                                       ; preds = %if.end.59
  %49 = load i8*, i8** %start, align 8
  %50 = load i8*, i8** %start, align 8
  %call62 = call i64 @strcspn(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)) #6
  %add.ptr63 = getelementptr inbounds i8, i8* %49, i64 %call62
  store i8* %add.ptr63, i8** %end, align 8
  %51 = load i8*, i8** %end, align 8
  %tobool64 = icmp ne i8* %51, null
  br i1 %tobool64, label %if.end.68, label %if.then.65

if.then.65:                                       ; preds = %if.then.61
  %52 = load i8*, i8** %start, align 8
  %53 = load i8*, i8** %start, align 8
  %call66 = call i64 @strlen(i8* %53) #6
  %add.ptr67 = getelementptr inbounds i8, i8* %52, i64 %call66
  store i8* %add.ptr67, i8** %end, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.then.61
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.59
  %54 = load i8*, i8** %start, align 8
  %55 = load i8**, i8*** %hstart.addr, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %end, align 8
  %57 = load i8**, i8*** %hend.addr, align 8
  store i8* %56, i8** %57, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.45, %if.then
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @isNumeric(i8* %host) #0 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %host, i8** %host.addr, align 8
  %0 = load i8*, i8** %host.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %n, align 4
  %1 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %1, 7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %len, align 4
  %cmp2 = icmp sgt i32 %2, 15
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i8*, i8** %host.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), i32* %a, i32* %b, i32* %c, i32* %d, i32* %n) #5
  %4 = load i32, i32* %n, align 4
  %5 = load i32, i32* %len, align 4
  %cmp5 = icmp eq i32 %4, %5
  br i1 %cmp5, label %if.then.7, label %if.end.32

if.then.7:                                        ; preds = %if.end
  %6 = load i32, i32* %a, align 4
  %cmp8 = icmp sge i32 %6, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.then.7
  %7 = load i32, i32* %a, align 4
  %cmp10 = icmp sle i32 %7, 256
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.31

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %8 = load i32, i32* %b, align 4
  %cmp13 = icmp sge i32 %8, 0
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.31

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %9 = load i32, i32* %b, align 4
  %cmp16 = icmp sle i32 %9, 256
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.31

land.lhs.true.18:                                 ; preds = %land.lhs.true.15
  %10 = load i32, i32* %c, align 4
  %cmp19 = icmp sge i32 %10, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.31

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %11 = load i32, i32* %c, align 4
  %cmp22 = icmp sle i32 %11, 256
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.31

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %12 = load i32, i32* %d, align 4
  %cmp25 = icmp sge i32 %12, 0
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.31

land.lhs.true.27:                                 ; preds = %land.lhs.true.24
  %13 = load i32, i32* %d, align 4
  %cmp28 = icmp sle i32 %13, 256
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.27, %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true.18, %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true, %if.then.7
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.30, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @isTLD(%struct.phishcheck* %pchk, i8* %str, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %pchk.addr = alloca %struct.phishcheck*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %s = alloca i8*, align 8
  %rc = alloca i32, align 4
  store %struct.phishcheck* %pchk, %struct.phishcheck** %pchk.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %call = call i8* @cli_malloc(i64 %conv)
  store i8* %call, i8** %s, align 8
  %2 = load i8*, i8** %s, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  store i32 -114, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  %3 = load i8*, i8** %s, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call i8* @strncpy(i8* %3, i8* %4, i64 %conv3) #5
  %6 = load i32, i32* %len.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %8 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %preg_tld = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %8, i32 0, i32 2
  %9 = load i8*, i8** %s, align 8
  %call5 = call i32 @cli_regexec(%struct.regex_t* %preg_tld, i8* %9, i64 0, %struct.regmatch_t* null, i32 0)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %rc, align 4
  %10 = load i8*, i8** %s, align 8
  call void @free(i8* %10) #5
  %11 = load i32, i32* %rc, align 4
  %tobool7 = icmp ne i32 %11, 0
  %cond = select i1 %tobool7, i32 1, i32 0
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.2, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @get_domain(%struct.phishcheck* %pchk, %struct.string* %dest, %struct.string* %host) #0 {
entry:
  %pchk.addr = alloca %struct.phishcheck*, align 8
  %dest.addr = alloca %struct.string*, align 8
  %host.addr = alloca %struct.string*, align 8
  %domain = alloca i8*, align 8
  %tld = alloca i8*, align 8
  %countrycode = alloca i8*, align 8
  store %struct.phishcheck* %pchk, %struct.phishcheck** %pchk.addr, align 8
  store %struct.string* %dest, %struct.string** %dest.addr, align 8
  store %struct.string* %host, %struct.string** %host.addr, align 8
  %0 = load %struct.string*, %struct.string** %host.addr, align 8
  %data = getelementptr inbounds %struct.string, %struct.string* %0, i32 0, i32 2
  %1 = load i8*, i8** %data, align 8
  %call = call i8* @strrchr(i8* %1, i32 46) #6
  store i8* %call, i8** %tld, align 8
  %2 = load i8*, i8** %tld, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.string*, %struct.string** %host.addr, align 8
  %data1 = getelementptr inbounds %struct.string, %struct.string* %3, i32 0, i32 2
  %4 = load i8*, i8** %data1, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i32 0, i32 0), i8* %4)
  %5 = load %struct.string*, %struct.string** %dest.addr, align 8
  %6 = load %struct.string*, %struct.string** %host.addr, align 8
  call void @string_assign(%struct.string* %5, %struct.string* %6)
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %8 = load i8*, i8** %tld, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 1
  %call2 = call i32 @isCountryCode(%struct.phishcheck* %7, i8* %add.ptr)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.23

if.then.4:                                        ; preds = %if.end
  %9 = load i8*, i8** %tld, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %add.ptr5, i8** %countrycode, align 8
  %10 = load %struct.string*, %struct.string** %host.addr, align 8
  %data6 = getelementptr inbounds %struct.string, %struct.string* %10, i32 0, i32 2
  %11 = load i8*, i8** %data6, align 8
  %12 = load i8*, i8** %tld, align 8
  %13 = load %struct.string*, %struct.string** %host.addr, align 8
  %data7 = getelementptr inbounds %struct.string, %struct.string* %13, i32 0, i32 2
  %14 = load i8*, i8** %data7, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub, 1
  %call8 = call i8* @rfind(i8* %11, i8 signext 46, i64 %sub)
  store i8* %call8, i8** %tld, align 8
  %15 = load i8*, i8** %tld, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %if.end.12, label %if.then.10

if.then.10:                                       ; preds = %if.then.4
  %16 = load %struct.string*, %struct.string** %host.addr, align 8
  %data11 = getelementptr inbounds %struct.string, %struct.string* %16, i32 0, i32 2
  %17 = load i8*, i8** %data11, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i32 0, i32 0), i8* %17)
  %18 = load %struct.string*, %struct.string** %dest.addr, align 8
  %19 = load %struct.string*, %struct.string** %host.addr, align 8
  call void @string_assign(%struct.string* %18, %struct.string* %19)
  br label %return

if.end.12:                                        ; preds = %if.then.4
  %20 = load %struct.phishcheck*, %struct.phishcheck** %pchk.addr, align 8
  %21 = load i8*, i8** %tld, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8*, i8** %countrycode, align 8
  %23 = load i8*, i8** %tld, align 8
  %sub.ptr.lhs.cast14 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast15 = ptrtoint i8* %23 to i64
  %sub.ptr.sub16 = sub i64 %sub.ptr.lhs.cast14, %sub.ptr.rhs.cast15
  %sub17 = sub nsw i64 %sub.ptr.sub16, 1
  %conv = trunc i64 %sub17 to i32
  %call18 = call i32 @isTLD(%struct.phishcheck* %20, i8* %add.ptr13, i32 %conv)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %if.end.12
  %24 = load %struct.string*, %struct.string** %dest.addr, align 8
  %25 = load %struct.string*, %struct.string** %host.addr, align 8
  %26 = load i8*, i8** %tld, align 8
  %add.ptr21 = getelementptr inbounds i8, i8* %26, i64 1
  call void @string_assign_ref(%struct.string* %24, %struct.string* %25, i8* %add.ptr21)
  br label %return

if.end.22:                                        ; preds = %if.end.12
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %27 = load %struct.string*, %struct.string** %host.addr, align 8
  %data24 = getelementptr inbounds %struct.string, %struct.string* %27, i32 0, i32 2
  %28 = load i8*, i8** %data24, align 8
  %29 = load i8*, i8** %tld, align 8
  %30 = load %struct.string*, %struct.string** %host.addr, align 8
  %data25 = getelementptr inbounds %struct.string, %struct.string* %30, i32 0, i32 2
  %31 = load i8*, i8** %data25, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %31 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %sub29 = sub nsw i64 %sub.ptr.sub28, 1
  %call30 = call i8* @rfind(i8* %28, i8 signext 46, i64 %sub29)
  store i8* %call30, i8** %domain, align 8
  %32 = load i8*, i8** %domain, align 8
  %tobool31 = icmp ne i8* %32, null
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %if.end.23
  %33 = load %struct.string*, %struct.string** %dest.addr, align 8
  %34 = load %struct.string*, %struct.string** %host.addr, align 8
  call void @string_assign(%struct.string* %33, %struct.string* %34)
  br label %return

if.end.33:                                        ; preds = %if.end.23
  %35 = load %struct.string*, %struct.string** %dest.addr, align 8
  %36 = load %struct.string*, %struct.string** %host.addr, align 8
  %37 = load i8*, i8** %domain, align 8
  %add.ptr34 = getelementptr inbounds i8, i8* %37, i64 1
  call void @string_assign_ref(%struct.string* %35, %struct.string* %36, i8* %add.ptr34)
  br label %return

return:                                           ; preds = %if.end.33, %if.then.32, %if.then.20, %if.then.10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @string_assign(%struct.string* %dest, %struct.string* %src) #0 {
entry:
  %dest.addr = alloca %struct.string*, align 8
  %src.addr = alloca %struct.string*, align 8
  store %struct.string* %dest, %struct.string** %dest.addr, align 8
  store %struct.string* %src, %struct.string** %src.addr, align 8
  %0 = load %struct.string*, %struct.string** %dest.addr, align 8
  call void @string_free(%struct.string* %0)
  %1 = load %struct.string*, %struct.string** %src.addr, align 8
  %refcount = getelementptr inbounds %struct.string, %struct.string* %1, i32 0, i32 0
  %2 = load i32, i32* %refcount, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %refcount, align 4
  %3 = load %struct.string*, %struct.string** %src.addr, align 8
  %data = getelementptr inbounds %struct.string, %struct.string* %3, i32 0, i32 2
  %4 = load i8*, i8** %data, align 8
  %5 = load %struct.string*, %struct.string** %dest.addr, align 8
  %data1 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 2
  store i8* %4, i8** %data1, align 8
  %6 = load %struct.string*, %struct.string** %dest.addr, align 8
  %refcount2 = getelementptr inbounds %struct.string, %struct.string* %6, i32 0, i32 0
  store i32 1, i32* %refcount2, align 4
  %7 = load %struct.string*, %struct.string** %src.addr, align 8
  %8 = load %struct.string*, %struct.string** %dest.addr, align 8
  %ref = getelementptr inbounds %struct.string, %struct.string* %8, i32 0, i32 1
  store %struct.string* %7, %struct.string** %ref, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @isCountryCode(%struct.phishcheck* %s, i8* %str) #0 {
entry:
  %s.addr = alloca %struct.phishcheck*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.phishcheck* %s, %struct.phishcheck** %s.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.phishcheck*, %struct.phishcheck** %s.addr, align 8
  %preg_cctld = getelementptr inbounds %struct.phishcheck, %struct.phishcheck* %1, i32 0, i32 3
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i32 @cli_regexec(%struct.regex_t* %preg_cctld, i8* %2, i64 0, %struct.regmatch_t* null, i32 0)
  %tobool1 = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool1, true
  %lnot.ext = zext i1 %lnot to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i8* @rfind(i8* %start, i8 signext %c, i64 %len) #0 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %len.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %start.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %2
  store i8* %add.ptr, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i8*, i8** %p, align 8
  %4 = load i8*, i8** %start.addr, align 8
  %cmp1 = icmp uge i8* %3, %4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %start.addr, align 8
  %cmp5 = icmp ult i8* %10, %11
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %12 = load i8*, i8** %p, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %12, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal void @string_assign_ref(%struct.string* %dest, %struct.string* %ref, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.string*, align 8
  %ref.addr = alloca %struct.string*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.string* %dest, %struct.string** %dest.addr, align 8
  store %struct.string* %ref, %struct.string** %ref.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.string*, %struct.string** %dest.addr, align 8
  call void @string_free(%struct.string* %0)
  %1 = load %struct.string*, %struct.string** %ref.addr, align 8
  %refcount = getelementptr inbounds %struct.string, %struct.string* %1, i32 0, i32 0
  %2 = load i32, i32* %refcount, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %refcount, align 4
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load %struct.string*, %struct.string** %dest.addr, align 8
  %data1 = getelementptr inbounds %struct.string, %struct.string* %4, i32 0, i32 2
  store i8* %3, i8** %data1, align 8
  %5 = load %struct.string*, %struct.string** %dest.addr, align 8
  %refcount2 = getelementptr inbounds %struct.string, %struct.string* %5, i32 0, i32 0
  store i32 1, i32* %refcount2, align 4
  %6 = load %struct.string*, %struct.string** %ref.addr, align 8
  %7 = load %struct.string*, %struct.string** %dest.addr, align 8
  %ref3 = getelementptr inbounds %struct.string, %struct.string* %7, i32 0, i32 1
  store %struct.string* %6, %struct.string** %ref3, align 8
  ret void
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
