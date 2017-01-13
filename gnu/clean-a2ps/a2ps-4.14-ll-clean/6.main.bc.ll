; ModuleID = './src/main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2ps_job = type { i8**, i64, %struct.a2ps_common_s, i8*, %struct.hash_table_s*, %struct.pair_htable*, %struct.tm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pair_htable*, %struct.output*, i32, [10 x i8*], i8*, %struct.a2ps_printers_s*, i32, %struct.stream*, i8, i32, i32, i32, i32, i32, i32, i8, i8*, %struct.medium*, i8*, i32, i32, i32, float, %struct.encoding*, i8*, %struct.encoding*, %struct.encoding*, %struct.hash_table_s*, %struct.pair_htable*, %struct.hash_table_s*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [256 x i8], [256 x i8], [256 x i8], [256 x i8], %struct.pair_htable*, %struct.ps_status*, %struct.output*, [10 x i8*], %struct.page_range*, %struct.darray* }
%struct.a2ps_common_s = type { i8** }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.a2ps_printers_s = type opaque
%struct.stream = type { i8, %struct._IO_FILE* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.medium = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.encoding = type opaque
%struct.hash_table_s = type { i8**, i64, i64, i64, i64, i64, i32, i64 (i8*)*, i64 (i8*)*, i32 (i8*, i8*)* }
%struct.pair_htable = type opaque
%struct.ps_status = type { i32, i64, i32, float, i32, i8*, i8*, %struct.encoding*, i32, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.hash_table_s*, %struct.output*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.output = type opaque
%struct.page_range = type opaque
%struct.darray = type { i8*, i64, i64, i32, i64, i64, i8**, void (i8*, %struct._IO_FILE*)*, i32 (i8*, i8*)* }
%struct.file_job = type { i8*, i8*, i8*, i8*, i8, %struct.tm, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@behavior = global i32 0, align 4
@job = global %struct.a2ps_job* null, align 8
@re_syntax_table = global i8* null, align 8
@sheets_map = global %struct.darray* null, align 8
@style_sheets = global %struct.hash_table_s* null, align 8
@delegate_p = global i8 1, align 1
@toc = global i8* null, align 8
@style_request = global i8* null, align 8
@highlight_level = global i32 1, align 4
@strip_level = global i32 0, align 4
@end_of_line = global i32 4, align 4
@program_name = common global i8* null, align 8
@program_invocation_name = common global i8* null, align 8
@.str = private unnamed_addr constant [162 x i8] c"Copyright (c) 1988-1993 Miguel Santana\0ACopyright (c) 1995-2000 Akim Demaille, Miguel Santana\0ACopyright (c) 2007- Akim Demaille, Miguel Santana and Masayuki Hatta\00", align 1
@version_etc_copyright = external global i8*, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"a2ps\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"GNU a2ps\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"4.14\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Akim Demaille, Miguel Santana\00", align 1
@delegation_hook = external global void (i8*, i32, i8*)*, align 8
@handle_option_hook = external global i32 (i32, i8*)*, align 8
@delegation_table = common global %struct.hash_table_s* null, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"NO_HOME_CONF\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"user.home\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c".a2ps/a2psrc\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c".a2psrc\00", align 1
@ps_comment_hook = external global void (%struct.a2ps_job*, %struct._IO_FILE*)*, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"--list=expand\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"Table of Content\00", align 1
@.str.14 = private unnamed_addr constant [354 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\0AConvert FILE(s) or standard input to PostScript.  By default, the output\0Ais sent to the default printer.  An output file may be specified with -o.\0A\0AMandatory arguments to long options are mandatory for short options too.\0ALong options marked with * require a yes/no argument, corresponding\0Ashort options stand for `yes'.\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Tasks:\0A\00", align 1
@.str.16 = private unnamed_addr constant [509 x i8] c"  --version        display version\0A  --help           display this help\0A  --guess          report guessed types of FILES\0A  --which          report the full path of library files named FILES\0A  --glob           report the full path of library files matching FILES\0A  --list=defaults  display default settings and parameters\0A  --list=TOPIC     detailed list on TOPIC (delegations, encodings, features,\0A                   variables, media, ppd, printers, prologues, style-sheets,\0A                   user-options)\0A\00", align 1
@.str.17 = private unnamed_addr constant [119 x i8] c"After having performed the task, exit successfully.  Detailed lists may\0Aprovide additional help on specific features.\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Global:\0A\00", align 1
@.str.19 = private unnamed_addr constant [290 x i8] c"  -q, --quiet, --silent      be really quiet\0A  -v, --verbose[=LEVEL]      set verbosity on, or to LEVEL\0A  -=, --user-option=OPTION   use the user defined shortcut OPTION\0A      --debug                enable debugging features\0A  -D, --define=KEY[:VALUE]   unset variable KEY or set to VALUE\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"Sheets:\0A\00", align 1
@.str.21 = private unnamed_addr constant [637 x i8] c"  -M, --medium=NAME      use output medium NAME\0A  -r, --landscape        print in landscape mode\0A  -R, --portrait         print in portrait mode\0A      --columns=NUM      number of columns per sheet\0A      --rows=NUM         number of rows per sheet\0A      --major=DIRECTION  first fill (DIRECTION=) rows, or columns\0A  -1, -2, ..., -9        predefined font sizes and layouts for 1.. 9 virtuals\0A  -A, --file-align=MODE  align separate files according to MODE (fill, rank\0A                         page, sheet, or a number)\0A  -j, --borders*         print borders around columns\0A      --margin[=NUM]     define an interior margin of size NUM\0A\00", align 1
@.str.22 = private unnamed_addr constant [270 x i8] c"The options -1.. -9 affect several primitive parameters to set up predefined\0Alayouts with 80 columns.  Therefore the order matters: `-R -f40 -2' is\0Aequivalent to `-2'.  To modify the layout, use `-2Rf40', or compose primitive\0Aoptions (`--columns', `--font-size' etc.).\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Virtual pages:\0A\00", align 1
@.str.24 = private unnamed_addr constant [550 x i8] c"      --line-numbers=NUM     precede each NUM lines with its line number\0A  -C                         alias for --line-numbers=5\0A  -f, --font-size=SIZE       use font SIZE (float) for the body text\0A  -L, --lines-per-page=NUM   scale the font to print NUM lines per virtual\0A  -l, --chars-per-line=NUM   scale the font to print NUM columns per virtual\0A  -m, --catman               process FILE as a man page (same as -L66)\0A  -T, --tabsize=NUM          set tabulator size to NUM\0A  --non-printable-format=FMT specify how non-printable chars are printed\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Headings:\0A\00", align 1
@.str.26 = private unnamed_addr constant [371 x i8] c"  -B, --no-header        no page headers at all\0A  -b, --header[=TEXT]    set page header\0A  -u, --underlay[=TEXT]  print TEXT under every page\0A  --center-title[=TEXT]  set page title to TITLE\0A  --left-title[=TEXT]    set left and right page title to TEXT\0A  --right-title[=TEXT]\0A  --left-footer[=TEXT]   set sheet footers to TEXT\0A  --footer[=TEXT]\0A  --right-footer[=TEXT]\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"The TEXTs may use special escapes.\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Input:\0A\00", align 1
@.str.29 = private unnamed_addr constant [583 x i8] c"  -a, --pages[=RANGE]        select the pages to print\0A  -c, --truncate-lines*      cut long lines\0A  -i, --interpret*           interpret tab, bs and ff chars\0A      --end-of-line=TYPE     specify the eol char (TYPE: r, n, nr, rn, any)\0A  -X, --encoding=NAME        use input encoding NAME\0A  -t, --title=NAME           set the name of the job\0A      --stdin=NAME           set the name of the input file stdin\0A      --print-anyway*        force binary printing\0A  -Z, --delegate*            delegate files to another application\0A      --toc[=TEXT]           generate a table of content\0A\00", align 1
@.str.30 = private unnamed_addr constant [176 x i8] c"When delegations are enabled, a2ps may use other applications to handle the\0Aprocessing of files that should not be printed as raw information, e.g., HTML\0APostScript, PDF etc.\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"Pretty-printing:\0A\00", align 1
@.str.32 = private unnamed_addr constant [322 x i8] c"  -E, --pretty-print[=LANG]  enable pretty-printing (set style to LANG)\0A  --highlight-level=LEVEL    set pretty printing highlight LEVEL\0A                             LEVEL can be none, normal or heavy\0A  -g                         alias for --highlight-level=heavy\0A  --strip-level=NUM          level of comments stripping\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Output:\0A\00", align 1
@.str.34 = private unnamed_addr constant [434 x i8] c"  -o, --output=FILE          leave output to file FILE.  If FILE is `-',\0A                             leave output to stdout.\0A  --version-control=WORD     override the usual version control\0A  --suffix=SUFFIX            override the usual backup suffix\0A  -P, --printer=NAME         send output to printer NAME\0A  -d                         send output to the default printer\0A                             (this is the default behavior)\0A\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"PostScript:\0A\00", align 1
@.str.36 = private unnamed_addr constant [560 x i8] c"      --prologue=FILE        include FILE.pro as PostScript prologue\0A      --ppd[=KEY]            automatic PPD selection or set to KEY\0A  -n, --copies=NUM           print NUM copies of each page\0A  -s, --sides=MODE           set the duplex MODE (`1' or `simplex',\0A                             `2' or `duplex', `tumble')\0A  -S, --setpagedevice=K[:V]  pass a page device definition to output\0A      --statusdict=K[:[:]V]  pass a statusdict definition to the output\0A  -k, --page-prefeed         enable page prefeed\0A  -K, --no-page-prefeed      disable page prefeed\0A\00", align 1
@.str.37 = private unnamed_addr constant [499 x i8] c"By default a2ps is tuned to do what you want to, so trust it.  To pretty\0Aprint the content of the `src' directory and a table of content, and send the\0Aresult to the printer `lw',\0A\0A    $ a2ps -P lw --toc src/*\0A\0ATo process the files `sample.ps' and `sample.html' and display the result,\0A\0A    $ a2ps -P display sample.ps sample.html\0A\0ATo process a mailbox in 4 up,\0A\0A    $ a2ps -=mail -4 mailbox\0A\0ATo print as a booklet on the default printer, which is Duplex capable,\0A\0A    $ a2ps -=book paper.dvi.gz -d\0A\00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"News, updates and documentation: visit http://www.gnu.org/software/a2ps/.\0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Report bugs to <bug-a2ps@gnu.org>.\0A\00", align 1
@sample_tmpname = external global i8*, align 8
@.str.40 = private unnamed_addr constant [23 x i8] c"received signal %d: %s\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"--graphic-symbols\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"--highlight-level\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"--list\00", align 1
@behavior_args = internal constant [37 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* null], align 16
@behavior_types = internal constant [36 x i32] [i32 7, i32 7, i32 7, i32 8, i32 8, i32 14, i32 16, i32 16, i32 15, i32 15, i32 9, i32 13, i32 13, i32 10, i32 10, i32 18, i32 18, i32 19, i32 12, i32 12, i32 11, i32 11, i32 17, i32 17, i32 20, i32 20, i32 21, i32 3, i32 3, i32 2, i32 2, i32 4, i32 5, i32 5, i32 6, i32 0], align 16
@argmatch_die = external global void ()*, align 8
@.str.44 = private unnamed_addr constant [14 x i8] c"--strip-level\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"--delegate\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"#{toc}\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"--end-of-line\00", align 1
@highlight_level_args = internal constant [10 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i8* null], align 16
@highlight_level_types = internal constant [9 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2], align 16
@.str.48 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"light\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"heavy\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"defaults\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"plugins\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"delegations\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"encodings\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"charsets\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"variables\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"macro-meta-sequences\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"printers\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"outputs\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"style-sheets\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"languages\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"user-options\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"shortcuts\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"prologues\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"texinfo-style-sheets\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"ssh-texi\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"html-style-sheets\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"ssh-html\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"texinfo-encodings\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"edf-texi\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"texinfo-prologues\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"pro-texi\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"ppd\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"which\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"a2_\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.95 = private unnamed_addr constant [22 x i8] c"cannot open file `%s'\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"SPY-BEGIN\0A\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"Debugging info\00", align 1
@.str.98 = private unnamed_addr constant [29 x i8] c"%V was called with #!$|| |\0A\0A\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"SPY-END\0A\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"% \00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"Configuration status of %s %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [131 x i8] c"  medium          = %s%s, %s\0A  page layout     = %d x %d, %s\0A  borders         = %s\0A  file alignment  = %s\0A  interior margin = %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c" (libpaper)\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"portrait\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"landscape\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"%d characters per line\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"%d lines per page\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"font size is %gpt\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"each line\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"each %d lines\00", align 1
@.str.114 = private unnamed_addr constant [113 x i8] c"  number lines         = %s\0A  format               = %s\0A  tabulation size      = %d\0A  non printable format = %s\0A\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"Headers:\0A\00", align 1
@.str.116 = private unnamed_addr constant [161 x i8] c"  header       = %s\0A  left footer  = %s\0A  footer       = %s\0A  right footer = %s\0A  left title   = %s\0A  center title = %s\0A  right title  = %s\0A  under lay    = %s\0A\00", align 1
@.str.117 = private unnamed_addr constant [177 x i8] c"  truncate lines = %s\0A  interpret      = %s\0A  end of line    = %s\0A  encoding       = %s\0A  document title = %s\0A  prologue       = %s\0A  print anyway   = %s\0A  delegating     = %s\0A\00", align 1
@.str.118 = private unnamed_addr constant [23 x i8] c"selected automatically\00", align 1
@.str.119 = private unnamed_addr constant [70 x i8] c"  style sheet     = %s\0A  highlight level = %s\0A  strip level     = %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"never make backups\00", align 1
@.str.121 = private unnamed_addr constant [29 x i8] c"simple backups of every file\00", align 1
@.str.122 = private unnamed_addr constant [93 x i8] c"numbered backups of files already numbered,\0A                            and simple of others\00", align 1
@.str.123 = private unnamed_addr constant [31 x i8] c"numbered backups of every file\00", align 1
@.str.124 = private unnamed_addr constant [70 x i8] c"  destination     = %s\0A  version control = %s\0A  backup suffix   = %s\0A\00", align 1
@simple_backup_suffix = external global i8*, align 8
@.str.125 = private unnamed_addr constant [229 x i8] c"  magic number              = %s\0A  Printer Description (PPD) = %s\0A  default PPD               = %s\0A  page label format         = %s\0A  number of copies          = %d\0A  sides per sheet           = %s\0A  page device definitions   = \00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"Simplex\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"DuplexTumble\00", align 1
@.str.129 = private unnamed_addr constant [31 x i8] c"  statusdict definitions    = \00", align 1
@.str.130 = private unnamed_addr constant [34 x i8] c"  page prefeed              = %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"Internals:\0A\00", align 1
@.str.132 = private unnamed_addr constant [80 x i8] c"  verbosity level     = %d\0A  file command        = %s\0A  library path        = \0A\00", align 1
@msg_verbosity = external global i32, align 4
@.str.133 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argn = alloca i32, align 4
  %cp = alloca i8*, align 8
  %delegated_jobs = alloca i32, align 4
  %native_jobs = alloca i32, align 4
  %file_job = alloca %struct.file_job*, align 8
  %len = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @base_name(i8* %1)
  store i8* %call, i8** @program_name, align 8
  %2 = load i8*, i8** @program_name, align 8
  %call1 = call i8* @xstrdup(i8* %2)
  store i8* %call1, i8** @program_invocation_name, align 8
  store i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str, i32 0, i32 0), i8** @version_etc_copyright, align 8
  %call2 = call i8* @setlocale(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #5
  %call3 = call i8* @setlocale(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #5
  %call4 = call i8* @bindtextdomain(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)) #5
  %call5 = call i8* @textdomain(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)) #5
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  call void @parse_long_options(i32 %3, i8** %4, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), void (i32)* @usage)
  %call6 = call i32 @atexit(void ()* @exit_handler) #5
  call void @signame_init()
  br label %do.body

do.body:                                          ; preds = %entry
  %call7 = call void (i32)* @signal(i32 2, void (i32)* @signal_handler) #5
  %cmp = icmp eq void (i32)* %call7, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %call8 = call void (i32)* @signal(i32 2, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %call10 = call void (i32)* @signal(i32 1, void (i32)* @signal_handler) #5
  %cmp11 = icmp eq void (i32)* %call10, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.body.9
  %call13 = call void (i32)* @signal(i32 1, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.body.9
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %call17 = call void (i32)* @signal(i32 15, void (i32)* @signal_handler) #5
  %cmp18 = icmp eq void (i32)* %call17, inttoptr (i64 1 to void (i32)*)
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.body.16
  %call20 = call void (i32)* @signal(i32 15, void (i32)* inttoptr (i64 1 to void (i32)*)) #5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %do.body.16
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %call23 = call void (i32)* @signal(i32 13, void (i32)* @signal_handler) #5
  store void (i8*, i32, i8*)* @add_delegation, void (i8*, i32, i8*)** @delegation_hook, align 8
  store i32 (i32, i8*)* @handle_a2ps_option, i32 (i32, i8*)** @handle_option_hook, align 8
  %call24 = call %struct.hash_table_s* @delegation_table_new()
  store %struct.hash_table_s* %call24, %struct.hash_table_s** @delegation_table, align 8
  %call25 = call i64 @re_set_syntax(i64 111140)
  %call26 = call %struct.a2ps_job* @a2ps_job_new()
  store %struct.a2ps_job* %call26, %struct.a2ps_job** @job, align 8
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2_read_sys_config(%struct.a2ps_job* %5)
  %call27 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)) #5
  %tobool = icmp ne i8* %call27, null
  br i1 %tobool, label %if.end.31, label %if.then.28

if.then.28:                                       ; preds = %do.end.22
  %6 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %7 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %call29 = call i8* @macro_meta_sequence_get(%struct.a2ps_job* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %call30 = call i32 @a2_read_config(%struct.a2ps_job* %6, i8* %call29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %do.end.22
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %call32 = call i32 @a2_read_config(%struct.a2ps_job* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  %call33 = call %struct.darray* @sheets_map_new()
  store %struct.darray* %call33, %struct.darray** @sheets_map, align 8
  %call34 = call %struct.hash_table_s* @new_style_sheets()
  store %struct.hash_table_s* %call34, %struct.hash_table_s** @style_sheets, align 8
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %10 = load i32, i32* %argc.addr, align 4
  %11 = load i8**, i8*** %argv.addr, align 8
  %call35 = call i32 @a2ps_handle_options(%struct.a2ps_job* %9, i32 %10, i8** %11)
  store i32 %call35, i32* %argn, align 4
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2ps_job_finalize(%struct.a2ps_job* %12)
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %debug = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 35
  %14 = load i8, i8* %debug, align 1
  %tobool36 = trunc i8 %14 to i1
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.31
  store void (%struct.a2ps_job*, %struct._IO_FILE*)* @spy_user, void (%struct.a2ps_job*, %struct._IO_FILE*)** @ps_comment_hook, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.31
  %15 = load i8**, i8*** %argv.addr, align 8
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %argv39 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 0
  store i8** %15, i8*** %argv39, align 8
  %17 = load i32, i32* %argc.addr, align 4
  %conv = sext i32 %17 to i64
  %18 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %argc40 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %18, i32 0, i32 1
  store i64 %conv, i64* %argc40, align 8
  %19 = load i32, i32* @behavior, align 4
  switch i32 %19, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.48
    i32 5, label %sw.bb.62
    i32 6, label %sw.bb.78
    i32 3, label %sw.bb.90
    i32 2, label %sw.bb.91
    i32 7, label %sw.bb.92
    i32 8, label %sw.bb.93
    i32 9, label %sw.bb.94
    i32 10, label %sw.bb.95
    i32 11, label %sw.bb.96
    i32 12, label %sw.bb.97
    i32 13, label %sw.bb.98
    i32 14, label %sw.bb.99
    i32 15, label %sw.bb.100
    i32 16, label %sw.bb.101
    i32 17, label %sw.bb.102
    i32 18, label %sw.bb.103
    i32 19, label %sw.bb.104
    i32 20, label %sw.bb.105
    i32 21, label %sw.bb.106
    i32 0, label %sw.bb.107
  ]

sw.bb:                                            ; preds = %if.end.38
  %20 = load i32, i32* %argn, align 4
  %21 = load i32, i32* %argc.addr, align 4
  %cmp41 = icmp slt i32 %20, %21
  br i1 %cmp41, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %sw.bb
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.43
  %22 = load i32, i32* %argn, align 4
  %23 = load i32, i32* %argc.addr, align 4
  %cmp44 = icmp slt i32 %22, %23
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %argn, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %25, i64 %idxprom
  %26 = load i8*, i8** %arrayidx46, align 8
  call void @guess(i8* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %argn, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %argn, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.47

if.else:                                          ; preds = %sw.bb
  call void @guess(i8* null)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %for.end
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.38
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.59, %sw.bb.48
  %28 = load i32, i32* %argn, align 4
  %29 = load i32, i32* %argc.addr, align 4
  %cmp50 = icmp slt i32 %28, %29
  br i1 %cmp50, label %for.body.52, label %for.end.61

for.body.52:                                      ; preds = %for.cond.49
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %31 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %31, i32 0, i32 68
  %32 = load %struct.darray*, %struct.darray** %jobs, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %32, i32 0, i32 6
  %33 = load i8**, i8*** %content, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %33, i64 0
  %34 = load i8*, i8** %arrayidx53, align 8
  %35 = bitcast i8* %34 to %struct.file_job*
  %36 = load i32, i32* %argn, align 4
  %idxprom54 = sext i32 %36 to i64
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %37, i64 %idxprom54
  %38 = load i8*, i8** %arrayidx55, align 8
  %call56 = call i8* @expand_user_string(%struct.a2ps_job* %30, %struct.file_job* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fputs(i8* %call56, %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call58 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %40)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.52
  %41 = load i32, i32* %argn, align 4
  %inc60 = add nsw i32 %41, 1
  store i32 %inc60, i32* %argn, align 4
  br label %for.cond.49

for.end.61:                                       ; preds = %for.cond.49
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.38
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.75, %sw.bb.62
  %42 = load i32, i32* %argn, align 4
  %43 = load i32, i32* %argc.addr, align 4
  %cmp64 = icmp slt i32 %42, %43
  br i1 %cmp64, label %for.body.66, label %for.end.77

for.body.66:                                      ; preds = %for.cond.63
  %44 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %44, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %45 = load i8**, i8*** %path, align 8
  %46 = load i32, i32* %argn, align 4
  %idxprom67 = sext i32 %46 to i64
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %47, i64 %idxprom67
  %48 = load i8*, i8** %arrayidx68, align 8
  %call69 = call i8* @pw_find_file(i8** %45, i8* %48, i8* null)
  store i8* %call69, i8** %cp, align 8
  %49 = load i8*, i8** %cp, align 8
  %tobool70 = icmp ne i8* %49, null
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %for.body.66
  %50 = load i8*, i8** %cp, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call72 = call i32 @fputs(i8* %50, %struct._IO_FILE* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call73 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %52)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %for.body.66
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %53 = load i32, i32* %argn, align 4
  %inc76 = add nsw i32 %53, 1
  store i32 %inc76, i32* %argn, align 4
  br label %for.cond.63

for.end.77:                                       ; preds = %for.cond.63
  br label %sw.epilog

sw.bb.78:                                         ; preds = %if.end.38
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.87, %sw.bb.78
  %54 = load i32, i32* %argn, align 4
  %55 = load i32, i32* %argc.addr, align 4
  %cmp80 = icmp slt i32 %54, %55
  br i1 %cmp80, label %for.body.82, label %for.end.89

for.body.82:                                      ; preds = %for.cond.79
  %56 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %common83 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %56, i32 0, i32 2
  %path84 = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common83, i32 0, i32 0
  %57 = load i8**, i8*** %path84, align 8
  %58 = load i32, i32* %argn, align 4
  %idxprom85 = sext i32 %58 to i64
  %59 = load i8**, i8*** %argv.addr, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %59, i64 %idxprom85
  %60 = load i8*, i8** %arrayidx86, align 8
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @pw_glob_print(i8** %57, i8* %60, %struct._IO_FILE* %61)
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.82
  %62 = load i32, i32* %argn, align 4
  %inc88 = add nsw i32 %62, 1
  store i32 %inc88, i32* %argn, align 4
  br label %for.cond.79

for.end.89:                                       ; preds = %for.cond.79
  br label %sw.epilog

sw.bb.90:                                         ; preds = %if.end.38
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @version_etc(%struct._IO_FILE* %63, i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0))
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.end.38
  call void @usage(i32 0)
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end.38
  %64 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @list_options(%struct.a2ps_job* %64, %struct._IO_FILE* %65)
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.38
  %66 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @list_features(%struct.a2ps_job* %66, %struct._IO_FILE* %67)
  br label %sw.epilog

sw.bb.94:                                         ; preds = %if.end.38
  %68 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @list_media_long(%struct.a2ps_job* %68, %struct._IO_FILE* %69)
  br label %sw.epilog

sw.bb.95:                                         ; preds = %if.end.38
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @list_style_sheets_long(%struct._IO_FILE* %70)
  br label %sw.epilog

sw.bb.96:                                         ; preds = %if.end.38
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @list_style_sheets_html(%struct._IO_FILE* %71)
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.38
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @list_style_sheets_texinfo(%struct._IO_FILE* %72)
  br label %sw.epilog

sw.bb.98:                                         ; preds = %if.end.38
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @a2ps_printers_list_long(%struct.a2ps_job* %73, %struct._IO_FILE* %74)
  br label %sw.epilog

sw.bb.99:                                         ; preds = %if.end.38
  %75 = load %struct.hash_table_s*, %struct.hash_table_s** @delegation_table, align 8
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @delegations_list_long(%struct.hash_table_s* %75, %struct._IO_FILE* %76)
  br label %sw.epilog

sw.bb.100:                                        ; preds = %if.end.38
  %77 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @macro_meta_sequences_list_long(%struct.a2ps_job* %77, %struct._IO_FILE* %78)
  br label %sw.epilog

sw.bb.101:                                        ; preds = %if.end.38
  %79 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @list_encodings_long(%struct.a2ps_job* %79, %struct._IO_FILE* %80)
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.end.38
  %81 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @list_texinfo_encodings_long(%struct.a2ps_job* %81, %struct._IO_FILE* %82)
  br label %sw.epilog

sw.bb.103:                                        ; preds = %if.end.38
  %83 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @user_options_list_long(%struct.a2ps_job* %83, %struct._IO_FILE* %84)
  br label %sw.epilog

sw.bb.104:                                        ; preds = %if.end.38
  %85 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @prologues_list_long(%struct.a2ps_job* %85, %struct._IO_FILE* %86)
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.end.38
  %87 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @prologues_list_texinfo(%struct.a2ps_job* %87, %struct._IO_FILE* %88)
  br label %sw.epilog

sw.bb.106:                                        ; preds = %if.end.38
  %89 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @a2ps_ppd_list_long(%struct.a2ps_job* %89, %struct._IO_FILE* %90)
  br label %sw.epilog

sw.bb.107:                                        ; preds = %if.end.38
  store i32 0, i32* %delegated_jobs, align 4
  store i32 0, i32* %native_jobs, align 4
  %91 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2ps_open_output_session(%struct.a2ps_job* %91)
  %92 = load i32, i32* %argn, align 4
  %93 = load i32, i32* %argc.addr, align 4
  %cmp108 = icmp eq i32 %92, %93
  br i1 %cmp108, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %sw.bb.107
  call void @print(i8* null, i32* %native_jobs, i32* %delegated_jobs)
  br label %if.end.121

if.else.111:                                      ; preds = %sw.bb.107
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.118, %if.else.111
  %94 = load i32, i32* %argn, align 4
  %95 = load i32, i32* %argc.addr, align 4
  %cmp113 = icmp slt i32 %94, %95
  br i1 %cmp113, label %for.body.115, label %for.end.120

for.body.115:                                     ; preds = %for.cond.112
  %96 = load i32, i32* %argn, align 4
  %idxprom116 = sext i32 %96 to i64
  %97 = load i8**, i8*** %argv.addr, align 8
  %arrayidx117 = getelementptr inbounds i8*, i8** %97, i64 %idxprom116
  %98 = load i8*, i8** %arrayidx117, align 8
  call void @print(i8* %98, i32* %native_jobs, i32* %delegated_jobs)
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.115
  %99 = load i32, i32* %argn, align 4
  %inc119 = add nsw i32 %99, 1
  store i32 %inc119, i32* %argn, align 4
  br label %for.cond.112

for.end.120:                                      ; preds = %for.cond.112
  br label %if.end.121

if.end.121:                                       ; preds = %for.end.120, %if.then.110
  %100 = load i8*, i8** @toc, align 8
  %cmp122 = icmp eq i8* %100, null
  br i1 %cmp122, label %if.end.129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.121
  %101 = load i8*, i8** @toc, align 8
  %102 = load i8, i8* %101, align 1
  %conv124 = zext i8 %102 to i32
  %cmp125 = icmp eq i32 %conv124, 0
  br i1 %cmp125, label %if.end.129, label %if.then.127

if.then.127:                                      ; preds = %lor.lhs.false
  %call128 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #5
  %103 = load i8*, i8** @toc, align 8
  call void @print_toc(i8* %call128, i8* %103, i32* %native_jobs)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %lor.lhs.false, %if.end.121
  %104 = load i32, i32* %native_jobs, align 4
  %cmp130 = icmp eq i32 %104, 0
  br i1 %cmp130, label %land.lhs.true, label %if.else.150

land.lhs.true:                                    ; preds = %if.end.129
  %105 = load i32, i32* %delegated_jobs, align 4
  %cmp132 = icmp eq i32 %105, 1
  br i1 %cmp132, label %if.then.134, label %if.else.150

if.then.134:                                      ; preds = %land.lhs.true
  %106 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs135 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %106, i32 0, i32 68
  %107 = load %struct.darray*, %struct.darray** %jobs135, align 8
  %len136 = getelementptr inbounds %struct.darray, %struct.darray* %107, i32 0, i32 5
  %108 = load i64, i64* %len136, align 8
  %sub = sub i64 %108, 1
  %109 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs137 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %109, i32 0, i32 68
  %110 = load %struct.darray*, %struct.darray** %jobs137, align 8
  %content138 = getelementptr inbounds %struct.darray, %struct.darray* %110, i32 0, i32 6
  %111 = load i8**, i8*** %content138, align 8
  %arrayidx139 = getelementptr inbounds i8*, i8** %111, i64 %sub
  %112 = load i8*, i8** %arrayidx139, align 8
  %113 = bitcast i8* %112 to %struct.file_job*
  store %struct.file_job* %113, %struct.file_job** %file_job, align 8
  %114 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs140 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %114, i32 0, i32 68
  %115 = load %struct.darray*, %struct.darray** %jobs140, align 8
  %len141 = getelementptr inbounds %struct.darray, %struct.darray* %115, i32 0, i32 5
  %116 = load i64, i64* %len141, align 8
  store i64 %116, i64* %len, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.134
  %117 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %delegation_tmpname = getelementptr inbounds %struct.file_job, %struct.file_job* %117, i32 0, i32 1
  %118 = load i8*, i8** %delegation_tmpname, align 8
  %tobool142 = icmp ne i8* %118, null
  %lnot = xor i1 %tobool142, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %119 = load i64, i64* %len, align 8
  %dec = add i64 %119, -1
  store i64 %dec, i64* %len, align 8
  %120 = load i64, i64* %len, align 8
  %sub143 = sub i64 %120, 1
  %121 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs144 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %121, i32 0, i32 68
  %122 = load %struct.darray*, %struct.darray** %jobs144, align 8
  %content145 = getelementptr inbounds %struct.darray, %struct.darray* %122, i32 0, i32 6
  %123 = load i8**, i8*** %content145, align 8
  %arrayidx146 = getelementptr inbounds i8*, i8** %123, i64 %sub143
  %124 = load i8*, i8** %arrayidx146, align 8
  %125 = bitcast i8* %124 to %struct.file_job*
  store %struct.file_job* %125, %struct.file_job** %file_job, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %126 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2ps_open_output_stream(%struct.a2ps_job* %126)
  %127 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %output_stream = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %127, i32 0, i32 27
  %128 = load %struct.stream*, %struct.stream** %output_stream, align 8
  %fp = getelementptr inbounds %struct.stream, %struct.stream* %128, i32 0, i32 1
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %130 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %delegation_tmpname147 = getelementptr inbounds %struct.file_job, %struct.file_job* %130, i32 0, i32 1
  %131 = load i8*, i8** %delegation_tmpname147, align 8
  call void @pslex_dump(%struct._IO_FILE* %129, i8* %131)
  %132 = load %struct.file_job*, %struct.file_job** %file_job, align 8
  %delegation_tmpname148 = getelementptr inbounds %struct.file_job, %struct.file_job* %132, i32 0, i32 1
  %133 = load i8*, i8** %delegation_tmpname148, align 8
  %call149 = call i32 @unlink(i8* %133) #5
  %134 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2ps_close_output_stream(%struct.a2ps_job* %134)
  %135 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @msg_job_pages_printed(%struct.a2ps_job* %135)
  br label %if.end.157

if.else.150:                                      ; preds = %land.lhs.true, %if.end.129
  %136 = load i32, i32* %native_jobs, align 4
  %tobool151 = icmp ne i32 %136, 0
  br i1 %tobool151, label %if.then.154, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %if.else.150
  %137 = load i32, i32* %delegated_jobs, align 4
  %tobool153 = icmp ne i32 %137, 0
  br i1 %tobool153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %lor.lhs.false.152, %if.else.150
  %138 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2ps_close_output_session(%struct.a2ps_job* %138)
  %139 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @msg_job_pages_printed(%struct.a2ps_job* %139)
  br label %if.end.156

if.else.155:                                      ; preds = %lor.lhs.false.152
  call void @msg_nothing_printed()
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.155, %if.then.154
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %while.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.38
  call void @abort() #6
  unreachable

sw.epilog:                                        ; preds = %if.end.157, %sw.bb.106, %sw.bb.105, %sw.bb.104, %sw.bb.103, %sw.bb.102, %sw.bb.101, %sw.bb.100, %sw.bb.99, %sw.bb.98, %sw.bb.97, %sw.bb.96, %sw.bb.95, %sw.bb.94, %sw.bb.93, %sw.bb.92, %sw.bb.91, %sw.bb.90, %for.end.89, %for.end.77, %for.end.61, %if.end.47
  %140 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2ps_job_free(%struct.a2ps_job* %140)
  store %struct.a2ps_job* null, %struct.a2ps_job** @job, align 8
  ret i32 0
}

declare i8* @base_name(i8*) #1

declare i8* @xstrdup(i8*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #2

declare void @parse_long_options(i32, i8**, i8*, i8*, i8*, i8*, void (i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  %stream = alloca %struct._IO_FILE*, align 8
  store i32 %status, i32* %status.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %stream, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([354 x i8], [354 x i8]* @.str.14, i32 0, i32 0)) #5
  %2 = load i8*, i8** @program_invocation_name, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %call, i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)) #5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call4 = call i32 @fputs(i8* %call3, %struct._IO_FILE* %4)
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([509 x i8], [509 x i8]* @.str.16, i32 0, i32 0)) #5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call6 = call i32 @fputs(i8* %call5, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call7 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %6)
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.17, i32 0, i32 0)) #5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call9 = call i32 @fputs(i8* %call8, %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call10 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %8)
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0)) #5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call12 = call i32 @fputs(i8* %call11, %struct._IO_FILE* %9)
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str.19, i32 0, i32 0)) #5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call14 = call i32 @fputs(i8* %call13, %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call15 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %11)
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #5
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call17 = call i32 @fputs(i8* %call16, %struct._IO_FILE* %12)
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([637 x i8], [637 x i8]* @.str.21, i32 0, i32 0)) #5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call19 = call i32 @fputs(i8* %call18, %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call20 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %14)
  %call21 = call i8* @gettext(i8* getelementptr inbounds ([270 x i8], [270 x i8]* @.str.22, i32 0, i32 0)) #5
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call22 = call i32 @fputs(i8* %call21, %struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call23 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %16)
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0)) #5
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call25 = call i32 @fputs(i8* %call24, %struct._IO_FILE* %17)
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([550 x i8], [550 x i8]* @.str.24, i32 0, i32 0)) #5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call27 = call i32 @fputs(i8* %call26, %struct._IO_FILE* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call28 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %19)
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0)) #5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call30 = call i32 @fputs(i8* %call29, %struct._IO_FILE* %20)
  %call31 = call i8* @gettext(i8* getelementptr inbounds ([371 x i8], [371 x i8]* @.str.26, i32 0, i32 0)) #5
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call32 = call i32 @fputs(i8* %call31, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call33 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %22)
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i32 0, i32 0)) #5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call35 = call i32 @fputs(i8* %call34, %struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call36 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %24)
  %call37 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)) #5
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call38 = call i32 @fputs(i8* %call37, %struct._IO_FILE* %25)
  %call39 = call i8* @gettext(i8* getelementptr inbounds ([583 x i8], [583 x i8]* @.str.29, i32 0, i32 0)) #5
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call40 = call i32 @fputs(i8* %call39, %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call41 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %27)
  %call42 = call i8* @gettext(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.30, i32 0, i32 0)) #5
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call43 = call i32 @fputs(i8* %call42, %struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call44 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %29)
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0)) #5
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call46 = call i32 @fputs(i8* %call45, %struct._IO_FILE* %30)
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([322 x i8], [322 x i8]* @.str.32, i32 0, i32 0)) #5
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call48 = call i32 @fputs(i8* %call47, %struct._IO_FILE* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call49 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %32)
  %call50 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)) #5
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call51 = call i32 @fputs(i8* %call50, %struct._IO_FILE* %33)
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([434 x i8], [434 x i8]* @.str.34, i32 0, i32 0)) #5
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call53 = call i32 @fputs(i8* %call52, %struct._IO_FILE* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call54 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %35)
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)) #5
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call56 = call i32 @fputs(i8* %call55, %struct._IO_FILE* %36)
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([560 x i8], [560 x i8]* @.str.36, i32 0, i32 0)) #5
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call58 = call i32 @fputs(i8* %call57, %struct._IO_FILE* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call59 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %38)
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([499 x i8], [499 x i8]* @.str.37, i32 0, i32 0)) #5
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call61 = call i32 @fputs(i8* %call60, %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call62 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %40)
  %call63 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.38, i32 0, i32 0)) #5
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call64 = call i32 @fputs(i8* %call63, %struct._IO_FILE* %41)
  %call65 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0)) #5
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call66 = call i32 @fputs(i8* %call65, %struct._IO_FILE* %42)
  %43 = load i32, i32* %status.addr, align 4
  call void @exit(i32 %43) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

; Function Attrs: nounwind uwtable
define internal void @exit_handler() #0 {
entry:
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %tobool = icmp ne %struct.a2ps_job* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  call void @a2ps_job_unlink_tmpfiles(%struct.a2ps_job* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** @sample_tmpname, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** @sample_tmpname, align 8
  %call = call i32 @unlink(i8* %3) #5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare void @signame_init() #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind uwtable
define internal void @signal_handler(i32 %signum) #0 {
entry:
  %signum.addr = alloca i32, align 4
  store i32 %signum, i32* %signum.addr, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i32 0, i32 0)) #5
  %0 = load i32, i32* %signum.addr, align 4
  %1 = load i32, i32* %signum.addr, align 4
  %call1 = call i8* @strsignal(i32 %1) #5
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %call, i32 %0, i8* %call1)
  ret void
}

declare void @add_delegation(i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @handle_a2ps_option(i32 %option, i8* %optional_arg) #0 {
entry:
  %retval = alloca i32, align 4
  %option.addr = alloca i32, align 4
  %optional_arg.addr = alloca i8*, align 8
  %my_s2 = alloca i8*, align 8
  %my_s228 = alloca i8*, align 8
  store i32 %option, i32* %option.addr, align 4
  store i8* %optional_arg, i8** %optional_arg.addr, align 8
  %0 = load i32, i32* %option.addr, align 4
  switch i32 %0, label %sw.default [
    i32 69, label %sw.bb
    i32 103, label %sw.bb.5
    i32 154, label %sw.bb.6
    i32 173, label %sw.bb.9
    i32 104, label %sw.bb.11
    i32 86, label %sw.bb.12
    i32 90, label %sw.bb.13
    i32 138, label %sw.bb.14
    i32 137, label %sw.bb.15
    i32 150, label %sw.bb.16
    i32 139, label %sw.bb.17
    i32 145, label %sw.bb.18
    i32 148, label %sw.bb.20
    i32 160, label %sw.bb.22
    i32 161, label %sw.bb.24
    i32 162, label %sw.bb.25
    i32 167, label %sw.bb.26
    i32 169, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %1 = load i8*, i8** %optional_arg.addr, align 8
  store i8* %1, i8** %my_s2, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load i8*, i8** @style_request, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.1
  %3 = load i8*, i8** @style_request, align 8
  call void @free(i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.1
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load i8*, i8** %my_s2, align 8
  %cmp = icmp eq i8* %4, null
  br i1 %cmp, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end
  %5 = load i8*, i8** %my_s2, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false
  %7 = load i8*, i8** %my_s2, align 8
  %call = call i8* @xstrdup(i8* %7)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false, %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** @style_request, align 8
  br label %do.end.4

do.end.4:                                         ; preds = %cond.end
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 2, i32* @highlight_level, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %8 = load i8*, i8** %optional_arg.addr, align 8
  %call7 = call zeroext i1 @a2ps_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i8* %8)
  %conv8 = zext i1 %call7 to i32
  store i32 %conv8, i32* @highlight_level, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %9 = load i8*, i8** %optional_arg.addr, align 8
  %call10 = call i32 @get_highlight_level(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0), i8* %9)
  store i32 %call10, i32* @highlight_level, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  store i32 2, i32* @behavior, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  store i32 3, i32* @behavior, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  store i8 1, i8* @delegate_p, align 1
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  store i32 1, i32* @behavior, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  store i32 5, i32* @behavior, align 4
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  store i32 6, i32* @behavior, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  store i32 7, i32* @behavior, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %10 = load i8*, i8** %optional_arg.addr, align 8
  %11 = load void ()*, void ()** @argmatch_die, align 8
  %call19 = call i32 @__xargmatch_internal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* %10, i8** getelementptr inbounds ([37 x i8*], [37 x i8*]* @behavior_args, i32 0, i32 0), i8* bitcast ([36 x i32]* @behavior_types to i8*), i64 4, i32 0, void ()* %11)
  %idxprom = sext i32 %call19 to i64
  %arrayidx = getelementptr inbounds [36 x i32], [36 x i32]* @behavior_types, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  store i32 %12, i32* @behavior, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %13 = load i8*, i8** %optional_arg.addr, align 8
  %call21 = call i32 @get_integer_in_range(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i8* %13, i32 0, i32 3, i32 5)
  store i32 %call21, i32* @strip_level, align 4
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %14 = load i8*, i8** %optional_arg.addr, align 8
  %call23 = call zeroext i1 @a2ps_get_bool(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i8* %14)
  %frombool = zext i1 %call23 to i8
  store i8 %frombool, i8* @delegate_p, align 1
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  store i32 9, i32* @behavior, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  store i32 10, i32* @behavior, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  br label %do.body.27

do.body.27:                                       ; preds = %sw.bb.26
  %15 = load i8*, i8** %optional_arg.addr, align 8
  %tobool29 = icmp ne i8* %15, null
  br i1 %tobool29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %do.body.27
  %16 = load i8*, i8** %optional_arg.addr, align 8
  br label %cond.end.32

cond.false.31:                                    ; preds = %do.body.27
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.true.30
  %cond33 = phi i8* [ %16, %cond.true.30 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), %cond.false.31 ]
  store i8* %cond33, i8** %my_s228, align 8
  br label %do.body.34

do.body.34:                                       ; preds = %cond.end.32
  %17 = load i8*, i8** @toc, align 8
  %tobool35 = icmp ne i8* %17, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %do.body.34
  %18 = load i8*, i8** @toc, align 8
  call void @free(i8* %18) #5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %do.body.34
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %19 = load i8*, i8** %my_s228, align 8
  %cmp39 = icmp eq i8* %19, null
  br i1 %cmp39, label %cond.false.47, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %do.end.38
  %20 = load i8*, i8** %my_s228, align 8
  %21 = load i8, i8* %20, align 1
  %conv42 = zext i8 %21 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %cond.false.47, label %cond.true.45

cond.true.45:                                     ; preds = %lor.lhs.false.41
  %22 = load i8*, i8** %my_s228, align 8
  %call46 = call i8* @xstrdup(i8* %22)
  br label %cond.end.48

cond.false.47:                                    ; preds = %lor.lhs.false.41, %do.end.38
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.45
  %cond49 = phi i8* [ %call46, %cond.true.45 ], [ null, %cond.false.47 ]
  store i8* %cond49, i8** @toc, align 8
  br label %do.end.50

do.end.50:                                        ; preds = %cond.end.48
  br label %sw.epilog

sw.bb.51:                                         ; preds = %entry
  %23 = load i8*, i8** %optional_arg.addr, align 8
  %call52 = call i32 @option_string_to_eol(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i8* %23)
  store i32 %call52, i32* @end_of_line, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.51, %do.end.50, %sw.bb.25, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.9, %sw.bb.6, %sw.bb.5, %do.end.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct.hash_table_s* @delegation_table_new() #1

declare i64 @re_set_syntax(i64) #1

declare %struct.a2ps_job* @a2ps_job_new() #1

declare void @a2_read_sys_config(%struct.a2ps_job*) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #2

declare i32 @a2_read_config(%struct.a2ps_job*, i8*, i8*) #1

declare i8* @macro_meta_sequence_get(%struct.a2ps_job*, i8*) #1

declare %struct.darray* @sheets_map_new() #1

declare %struct.hash_table_s* @new_style_sheets() #1

declare i32 @a2ps_handle_options(%struct.a2ps_job*, i32, i8**) #1

declare void @a2ps_job_finalize(%struct.a2ps_job*) #1

; Function Attrs: nounwind uwtable
define internal void @spy_user(%struct.a2ps_job* %a_job, %struct._IO_FILE* %stream) #0 {
entry:
  %a_job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %spy = alloca %struct._IO_FILE*, align 8
  %spyname = alloca i8*, align 8
  %buf = alloca [8192 x i8], align 16
  store %struct.a2ps_job* %a_job, %struct.a2ps_job** %a_job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %tmp_filenames = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %0, i32 0, i32 66
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames, i32 0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %tmp_filenames1 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %2, i32 0, i32 66
  %arrayidx2 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames1, i32 0, i64 0
  %3 = load i8*, i8** %arrayidx2, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %call = call noalias i8* @tempnam(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %3, %cond.true ], [ %call, %cond.false ]
  %4 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %tmp_filenames3 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %4, i32 0, i32 66
  %arrayidx4 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames3, i32 0, i64 0
  store i8* %cond, i8** %arrayidx4, align 8
  br label %do.end

do.end:                                           ; preds = %cond.end
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %tmp_filenames5 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 66
  %arrayidx6 = getelementptr inbounds [10 x i8*], [10 x i8*]* %tmp_filenames5, i32 0, i64 0
  %6 = load i8*, i8** %arrayidx6, align 8
  store i8* %6, i8** %spyname, align 8
  %7 = load i8*, i8** %spyname, align 8
  %call7 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0))
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %spy, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  %tobool8 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %call9 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call9, align 4
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0)) #5
  %10 = load i8*, i8** %spyname, align 8
  %call11 = call i8* @quotearg(i8* %10)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %9, i8* %call10, i8* %call11)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.96, i32 0, i32 0), %struct._IO_FILE* %11)
  %12 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 68
  %14 = load %struct.darray*, %struct.darray** %jobs, align 8
  %len = getelementptr inbounds %struct.darray, %struct.darray* %14, i32 0, i32 5
  %15 = load i64, i64* %len, align 8
  %sub = sub i64 %15, 1
  %16 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %jobs13 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %16, i32 0, i32 68
  %17 = load %struct.darray*, %struct.darray** %jobs13, align 8
  %content = getelementptr inbounds %struct.darray, %struct.darray* %17, i32 0, i32 6
  %18 = load i8**, i8*** %content, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %18, i64 %sub
  %19 = load i8*, i8** %arrayidx14, align 8
  %20 = bitcast i8* %19 to %struct.file_job*
  %call15 = call i8* @expand_user_string(%struct.a2ps_job* %12, %struct.file_job* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.98, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  %call16 = call i32 @fputs(i8* %call15, %struct._IO_FILE* %21)
  %22 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  call void @list_options(%struct.a2ps_job* %22, %struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  %call17 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %24)
  %25 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  call void @macro_meta_sequences_list_long(%struct.a2ps_job* %25, %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), %struct._IO_FILE* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %28)
  %29 = load i8*, i8** %spyname, align 8
  %call20 = call %struct._IO_FILE* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  %tobool21 = icmp ne %struct._IO_FILE* %30, null
  br i1 %tobool21, label %if.end.26, label %if.then.22

if.then.22:                                       ; preds = %if.end
  %call23 = call i32* @__errno_location() #7
  %31 = load i32, i32* %call23, align 4
  %call24 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.95, i32 0, i32 0)) #5
  %32 = load i8*, i8** %spyname, align 8
  %call25 = call i8* @quotearg(i8* %32)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %31, i8* %call24, i8* %call25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.26
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  %call27 = call i8* @fgets(i8* %arraydecay, i32 8192, %struct._IO_FILE* %33)
  %tobool28 = icmp ne i8* %call27, null
  br i1 %tobool28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), %struct._IO_FILE* %34)
  %arraydecay30 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buf, i32 0, i32 0
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call31 = call i32 @fputs(i8* %arraydecay30, %struct._IO_FILE* %35)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call32 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), %struct._IO_FILE* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call33 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %spy, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %38)
  %39 = load i8*, i8** %spyname, align 8
  %call35 = call i32 @unlink(i8* %39) #5
  ret void
}

declare void @guess(i8*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i8* @expand_user_string(%struct.a2ps_job*, %struct.file_job*, i8*, i8*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i8* @pw_find_file(i8**, i8*, i8*) #1

declare void @pw_glob_print(i8**, i8*, %struct._IO_FILE*) #1

declare void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @list_options(%struct.a2ps_job* %a_job, %struct._IO_FILE* %stream) #0 {
entry:
  %a_job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca [256 x i8], align 16
  %buf2 = alloca [256 x i8], align 16
  %cp = alloca i8*, align 8
  %ucp = alloca i8*, align 8
  store %struct.a2ps_job* %a_job, %struct.a2ps_job** %a_job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* null, i8** %cp, align 8
  store i8* null, i8** %ucp, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.102, i32 0, i32 0)) #5
  %1 = load i8*, i8** @program_invocation_name, align 8
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %0, i8 signext 61, i32 1, i8* %call, i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %3, i8 signext 45, i32 0, i8* %call2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.103, i32 0, i32 0)) #5
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %medium = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %5, i32 0, i32 37
  %6 = load %struct.medium*, %struct.medium** %medium, align 8
  %name = getelementptr inbounds %struct.medium, %struct.medium* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %9 = load %struct.a2ps_job*, %struct.a2ps_job** @job, align 8
  %medium_request = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %9, i32 0, i32 38
  %10 = load i8*, i8** %medium_request, align 8
  %call4 = call zeroext i1 @a2ps_medium_libpaper_p(%struct.a2ps_job* %8, i8* %10)
  %cond = select i1 %call4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %orientation = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %11, i32 0, i32 12
  %12 = load i32, i32* %orientation, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0)) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0)) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i8* [ %call5, %cond.true ], [ %call6, %cond.false ]
  %13 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %columns = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %13, i32 0, i32 14
  %14 = load i32, i32* %columns, align 4
  %15 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %rows = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %15, i32 0, i32 15
  %16 = load i32, i32* %rows, align 4
  %17 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %madir = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %17, i32 0, i32 16
  %18 = load i32, i32* %madir, align 4
  %call8 = call i8* @madir_to_string(i32 %18)
  %19 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %border = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %19, i32 0, i32 34
  %20 = load i32, i32* %border, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %cond.end
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)) #5
  br label %cond.end.13

cond.false.11:                                    ; preds = %cond.end
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0)) #5
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.11, %cond.true.9
  %cond14 = phi i8* [ %call10, %cond.true.9 ], [ %call12, %cond.false.11 ]
  %21 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %file_align = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %21, i32 0, i32 33
  %22 = load i32, i32* %file_align, align 4
  %call15 = call i8* @file_align_to_string(i32 %22)
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %margin = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %23, i32 0, i32 19
  %24 = load i32, i32* %margin, align 4
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %call3, i8* %7, i8* %cond, i8* %cond7, i32 %14, i32 %16, i8* %call8, i8* %cond14, i8* %call15, i32 %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call17 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %25)
  %26 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %columns_requested = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %26, i32 0, i32 41
  %27 = load i32, i32* %columns_requested, align 4
  %cmp18 = icmp sgt i32 %27, 0
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.13
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.109, i32 0, i32 0)) #5
  %28 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %columns_requested20 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %28, i32 0, i32 41
  %29 = load i32, i32* %columns_requested20, align 4
  %call21 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %call19, i32 %29) #5
  br label %if.end.32

if.else:                                          ; preds = %cond.end.13
  %30 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %lines_requested = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %30, i32 0, i32 40
  %31 = load i32, i32* %lines_requested, align 4
  %cmp22 = icmp sgt i32 %31, 0
  br i1 %cmp22, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %if.else
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call25 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0)) #5
  %32 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %lines_requested26 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %32, i32 0, i32 40
  %33 = load i32, i32* %lines_requested26, align 4
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay24, i8* %call25, i32 %33) #5
  br label %if.end

if.else.28:                                       ; preds = %if.else
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.111, i32 0, i32 0)) #5
  %34 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %fontsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %34, i32 0, i32 42
  %35 = load float, float* %fontsize, align 4
  %conv = fpext float %35 to double
  %call31 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay29, i8* %call30, double %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.else.28, %if.then.23
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then
  %36 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %numbering = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %36, i32 0, i32 29
  %37 = load i32, i32* %numbering, align 4
  switch i32 %37, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.36
  ]

sw.bb:                                            ; preds = %if.end.32
  %arraydecay33 = getelementptr inbounds [256 x i8], [256 x i8]* %buf2, i32 0, i32 0
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0)) #5
  %call35 = call i8* @strcpy(i8* %arraydecay33, i8* %call34) #5
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.32
  %arraydecay37 = getelementptr inbounds [256 x i8], [256 x i8]* %buf2, i32 0, i32 0
  %call38 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0)) #5
  %call39 = call i8* @strcpy(i8* %arraydecay37, i8* %call38) #5
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.32
  %arraydecay40 = getelementptr inbounds [256 x i8], [256 x i8]* %buf2, i32 0, i32 0
  %call41 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0)) #5
  %38 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %numbering42 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %38, i32 0, i32 29
  %39 = load i32, i32* %numbering42, align 4
  %call43 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay40, i8* %call41, i32 %39) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.36, %sw.bb
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call44 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %40, i8 signext 45, i32 0, i8* %call44)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.114, i32 0, i32 0)) #5
  %arraydecay46 = getelementptr inbounds [256 x i8], [256 x i8]* %buf2, i32 0, i32 0
  %arraydecay47 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %42 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %tabsize = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %42, i32 0, i32 39
  %43 = load i32, i32* %tabsize, align 4
  %44 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %unprintable_format = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %44, i32 0, i32 30
  %45 = load i32, i32* %unprintable_format, align 4
  %call48 = call i8* @unprintable_format_to_string(i32 %45)
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* %call45, i8* %arraydecay46, i8* %arraydecay47, i32 %43, i8* %call48)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call50 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call51 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %47, i8 signext 45, i32 0, i8* %call51)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call52 = call i8* @gettext(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.116, i32 0, i32 0)) #5
  %49 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %header = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %49, i32 0, i32 51
  %50 = load i8*, i8** %header, align 8
  %cmp53 = icmp eq i8* %50, null
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %sw.epilog
  br label %cond.end.58

cond.false.56:                                    ; preds = %sw.epilog
  %51 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %header57 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %51, i32 0, i32 51
  %52 = load i8*, i8** %header57, align 8
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.56, %cond.true.55
  %cond59 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.55 ], [ %52, %cond.false.56 ]
  %53 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %left_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %53, i32 0, i32 55
  %54 = load i8*, i8** %left_footer, align 8
  %cmp60 = icmp eq i8* %54, null
  br i1 %cmp60, label %cond.true.62, label %cond.false.63

cond.true.62:                                     ; preds = %cond.end.58
  br label %cond.end.65

cond.false.63:                                    ; preds = %cond.end.58
  %55 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %left_footer64 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %55, i32 0, i32 55
  %56 = load i8*, i8** %left_footer64, align 8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.63, %cond.true.62
  %cond66 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.62 ], [ %56, %cond.false.63 ]
  %57 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %57, i32 0, i32 56
  %58 = load i8*, i8** %footer, align 8
  %cmp67 = icmp eq i8* %58, null
  br i1 %cmp67, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.end.65
  br label %cond.end.72

cond.false.70:                                    ; preds = %cond.end.65
  %59 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %footer71 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %59, i32 0, i32 56
  %60 = load i8*, i8** %footer71, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.70, %cond.true.69
  %cond73 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.69 ], [ %60, %cond.false.70 ]
  %61 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %right_footer = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %61, i32 0, i32 57
  %62 = load i8*, i8** %right_footer, align 8
  %cmp74 = icmp eq i8* %62, null
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.end.72
  br label %cond.end.79

cond.false.77:                                    ; preds = %cond.end.72
  %63 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %right_footer78 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %63, i32 0, i32 57
  %64 = load i8*, i8** %right_footer78, align 8
  br label %cond.end.79

cond.end.79:                                      ; preds = %cond.false.77, %cond.true.76
  %cond80 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.76 ], [ %64, %cond.false.77 ]
  %65 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %left_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %65, i32 0, i32 53
  %66 = load i8*, i8** %left_title, align 8
  %cmp81 = icmp eq i8* %66, null
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end.79
  br label %cond.end.86

cond.false.84:                                    ; preds = %cond.end.79
  %67 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %left_title85 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %67, i32 0, i32 53
  %68 = load i8*, i8** %left_title85, align 8
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.84, %cond.true.83
  %cond87 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.83 ], [ %68, %cond.false.84 ]
  %69 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %center_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %69, i32 0, i32 52
  %70 = load i8*, i8** %center_title, align 8
  %cmp88 = icmp eq i8* %70, null
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.end.86
  br label %cond.end.93

cond.false.91:                                    ; preds = %cond.end.86
  %71 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %center_title92 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %71, i32 0, i32 52
  %72 = load i8*, i8** %center_title92, align 8
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.91, %cond.true.90
  %cond94 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.90 ], [ %72, %cond.false.91 ]
  %73 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %right_title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %73, i32 0, i32 54
  %74 = load i8*, i8** %right_title, align 8
  %cmp95 = icmp eq i8* %74, null
  br i1 %cmp95, label %cond.true.97, label %cond.false.98

cond.true.97:                                     ; preds = %cond.end.93
  br label %cond.end.100

cond.false.98:                                    ; preds = %cond.end.93
  %75 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %right_title99 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %75, i32 0, i32 54
  %76 = load i8*, i8** %right_title99, align 8
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.98, %cond.true.97
  %cond101 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.97 ], [ %76, %cond.false.98 ]
  %77 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %water = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %77, i32 0, i32 58
  %78 = load i8*, i8** %water, align 8
  %cmp102 = icmp eq i8* %78, null
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.end.100
  br label %cond.end.107

cond.false.105:                                   ; preds = %cond.end.100
  %79 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %water106 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %79, i32 0, i32 58
  %80 = load i8*, i8** %water106, align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.105, %cond.true.104
  %cond108 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.104 ], [ %80, %cond.false.105 ]
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* %call52, i8* %cond59, i8* %cond66, i8* %cond73, i8* %cond80, i8* %cond87, i8* %cond94, i8* %cond101, i8* %cond108)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call110 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %81)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call111 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %82, i8 signext 45, i32 0, i8* %call111)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call112 = call i8* @gettext(i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.117, i32 0, i32 0)) #5
  %84 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %folding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %84, i32 0, i32 28
  %85 = load i8, i8* %folding, align 1
  %tobool113 = trunc i8 %85 to i1
  br i1 %tobool113, label %cond.false.116, label %cond.true.114

cond.true.114:                                    ; preds = %cond.end.107
  %call115 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)) #5
  br label %cond.end.118

cond.false.116:                                   ; preds = %cond.end.107
  %call117 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0)) #5
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.116, %cond.true.114
  %cond119 = phi i8* [ %call115, %cond.true.114 ], [ %call117, %cond.false.116 ]
  %86 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %interpret = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %86, i32 0, i32 31
  %87 = load i32, i32* %interpret, align 4
  %tobool120 = icmp ne i32 %87, 0
  br i1 %tobool120, label %cond.true.121, label %cond.false.123

cond.true.121:                                    ; preds = %cond.end.118
  %call122 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)) #5
  br label %cond.end.125

cond.false.123:                                   ; preds = %cond.end.118
  %call124 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0)) #5
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.121
  %cond126 = phi i8* [ %call122, %cond.true.121 ], [ %call124, %cond.false.123 ]
  %88 = load i32, i32* @end_of_line, align 4
  %call127 = call i8* @eol_to_string(i32 %88)
  %89 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %requested_encoding = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %89, i32 0, i32 45
  %90 = load %struct.encoding*, %struct.encoding** %requested_encoding, align 8
  %call128 = call i8* @encoding_get_name(%struct.encoding* %90)
  %91 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %title = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %91, i32 0, i32 50
  %92 = load i8*, i8** %title, align 8
  %93 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %prolog = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %93, i32 0, i32 36
  %94 = load i8*, i8** %prolog, align 8
  %95 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %print_binaries = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %95, i32 0, i32 32
  %96 = load i32, i32* %print_binaries, align 4
  %tobool129 = icmp ne i32 %96, 0
  br i1 %tobool129, label %cond.true.130, label %cond.false.132

cond.true.130:                                    ; preds = %cond.end.125
  %call131 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)) #5
  br label %cond.end.134

cond.false.132:                                   ; preds = %cond.end.125
  %call133 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0)) #5
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.132, %cond.true.130
  %cond135 = phi i8* [ %call131, %cond.true.130 ], [ %call133, %cond.false.132 ]
  %97 = load i8, i8* @delegate_p, align 1
  %tobool136 = trunc i8 %97 to i1
  br i1 %tobool136, label %cond.true.138, label %cond.false.140

cond.true.138:                                    ; preds = %cond.end.134
  %call139 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)) #5
  br label %cond.end.142

cond.false.140:                                   ; preds = %cond.end.134
  %call141 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0)) #5
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.140, %cond.true.138
  %cond143 = phi i8* [ %call139, %cond.true.138 ], [ %call141, %cond.false.140 ]
  %call144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* %call112, i8* %cond119, i8* %cond126, i8* %call127, i8* %call128, i8* %92, i8* %94, i8* %cond135, i8* %cond143)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call145 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %98)
  %99 = load i8*, i8** @style_request, align 8
  %cmp146 = icmp eq i8* %99, null
  br i1 %cmp146, label %if.then.151, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.142
  %100 = load i8*, i8** @style_request, align 8
  %101 = load i8, i8* %100, align 1
  %conv148 = sext i8 %101 to i32
  %cmp149 = icmp eq i32 %conv148, 0
  br i1 %cmp149, label %if.then.151, label %if.else.155

if.then.151:                                      ; preds = %lor.lhs.false, %cond.end.142
  %arraydecay152 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %call153 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.118, i32 0, i32 0)) #5
  %call154 = call i8* @strcpy(i8* %arraydecay152, i8* %call153) #5
  br label %if.end.158

if.else.155:                                      ; preds = %lor.lhs.false
  %arraydecay156 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %102 = load i8*, i8** @style_request, align 8
  %call157 = call i8* @strcpy(i8* %arraydecay156, i8* %102) #5
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.151
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call159 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %103, i8 signext 45, i32 0, i8* %call159)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call160 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.119, i32 0, i32 0)) #5
  %arraydecay161 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %105 = load i32, i32* @highlight_level, align 4
  %call162 = call i8* @highlight_level_to_string(i32 %105)
  %106 = load i32, i32* @strip_level, align 4
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* %call160, i8* %arraydecay161, i8* %call162, i32 %106)
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call164 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %107)
  %108 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %call165 = call i8* @a2ps_flag_destination_to_string(%struct.a2ps_job* %108)
  store i8* %call165, i8** %ucp, align 8
  %109 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %backup_type = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %109, i32 0, i32 7
  %110 = load i32, i32* %backup_type, align 4
  switch i32 %110, label %sw.epilog.174 [
    i32 0, label %sw.bb.166
    i32 1, label %sw.bb.168
    i32 2, label %sw.bb.170
    i32 3, label %sw.bb.172
  ]

sw.bb.166:                                        ; preds = %if.end.158
  %call167 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.120, i32 0, i32 0)) #5
  store i8* %call167, i8** %cp, align 8
  br label %sw.epilog.174

sw.bb.168:                                        ; preds = %if.end.158
  %call169 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.121, i32 0, i32 0)) #5
  store i8* %call169, i8** %cp, align 8
  br label %sw.epilog.174

sw.bb.170:                                        ; preds = %if.end.158
  %call171 = call i8* @gettext(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.122, i32 0, i32 0)) #5
  store i8* %call171, i8** %cp, align 8
  br label %sw.epilog.174

sw.bb.172:                                        ; preds = %if.end.158
  %call173 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.123, i32 0, i32 0)) #5
  store i8* %call173, i8** %cp, align 8
  br label %sw.epilog.174

sw.epilog.174:                                    ; preds = %if.end.158, %sw.bb.172, %sw.bb.170, %sw.bb.168, %sw.bb.166
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call175 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %111, i8 signext 45, i32 0, i8* %call175)
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call176 = call i8* @gettext(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.124, i32 0, i32 0)) #5
  %113 = load i8*, i8** %ucp, align 8
  %114 = load i8*, i8** %cp, align 8
  %115 = load i8*, i8** @simple_backup_suffix, align 8
  %call177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* %call176, i8* %113, i8* %114, i8* %115)
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call178 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %116)
  %117 = load i8*, i8** %ucp, align 8
  call void @free(i8* %117) #5
  %118 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %printers = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %118, i32 0, i32 25
  %119 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers, align 8
  %call179 = call i8* @a2ps_printers_request_ppdkey_get(%struct.a2ps_printers_s* %119)
  store i8* %call179, i8** %cp, align 8
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call180 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %120, i8 signext 45, i32 0, i8* %call180)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call181 = call i8* @gettext(i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.125, i32 0, i32 0)) #5
  %122 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %status = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %122, i32 0, i32 64
  %123 = load %struct.ps_status*, %struct.ps_status** %status, align 8
  %magic_number = getelementptr inbounds %struct.ps_status, %struct.ps_status* %123, i32 0, i32 5
  %124 = load i8*, i8** %magic_number, align 8
  %125 = load i8*, i8** %cp, align 8
  %tobool182 = icmp ne i8* %125, null
  br i1 %tobool182, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %sw.epilog.174
  %126 = load i8*, i8** %cp, align 8
  br label %cond.end.186

cond.false.184:                                   ; preds = %sw.epilog.174
  %call185 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.118, i32 0, i32 0)) #5
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.184, %cond.true.183
  %cond187 = phi i8* [ %126, %cond.true.183 ], [ %call185, %cond.false.184 ]
  %127 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %printers188 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %127, i32 0, i32 25
  %128 = load %struct.a2ps_printers_s*, %struct.a2ps_printers_s** %printers188, align 8
  %call189 = call i8* @a2ps_printers_default_ppdkey_get(%struct.a2ps_printers_s* %128)
  %129 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %status190 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %129, i32 0, i32 64
  %130 = load %struct.ps_status*, %struct.ps_status** %status190, align 8
  %page_label_format = getelementptr inbounds %struct.ps_status, %struct.ps_status* %130, i32 0, i32 6
  %131 = load i8*, i8** %page_label_format, align 8
  %132 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %copies = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %132, i32 0, i32 18
  %133 = load i32, i32* %copies, align 4
  %134 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %duplex = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %134, i32 0, i32 13
  %135 = load i32, i32* %duplex, align 4
  %cmp191 = icmp eq i32 %135, 0
  br i1 %cmp191, label %cond.true.193, label %cond.false.194

cond.true.193:                                    ; preds = %cond.end.186
  br label %cond.end.199

cond.false.194:                                   ; preds = %cond.end.186
  %136 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %duplex195 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %136, i32 0, i32 13
  %137 = load i32, i32* %duplex195, align 4
  %cmp196 = icmp eq i32 %137, 1
  %cond198 = select i1 %cmp196, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.128, i32 0, i32 0)
  br label %cond.end.199

cond.end.199:                                     ; preds = %cond.false.194, %cond.true.193
  %cond200 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), %cond.true.193 ], [ %cond198, %cond.false.194 ]
  %call201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* %call181, i8* %124, i8* %cond187, i8* %call189, i8* %131, i32 %133, i8* %cond200)
  %138 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @list_pagedevice(%struct.a2ps_job* %138, %struct._IO_FILE* %139)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call202 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.129, i32 0, i32 0)) #5
  %call203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* %call202)
  %141 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @list_statusdict(%struct.a2ps_job* %141, %struct._IO_FILE* %142)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call204 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.130, i32 0, i32 0)) #5
  %144 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %page_prefeed = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %144, i32 0, i32 22
  %145 = load i32, i32* %page_prefeed, align 4
  %tobool205 = icmp ne i32 %145, 0
  br i1 %tobool205, label %cond.true.206, label %cond.false.208

cond.true.206:                                    ; preds = %cond.end.199
  %call207 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.107, i32 0, i32 0)) #5
  br label %cond.end.210

cond.false.208:                                   ; preds = %cond.end.199
  %call209 = call i8* @gettext(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0)) #5
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.208, %cond.true.206
  %cond211 = phi i8* [ %call207, %cond.true.206 ], [ %call209, %cond.false.208 ]
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* %call204, i8* %cond211)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call213 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %146)
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call214 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0)) #5
  call void (%struct._IO_FILE*, i8, i32, i8*, ...) @title(%struct._IO_FILE* %147, i8 signext 45, i32 0, i8* %call214)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call215 = call i8* @gettext(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.132, i32 0, i32 0)) #5
  %149 = load i32, i32* @msg_verbosity, align 4
  %150 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %file_command = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %150, i32 0, i32 3
  %151 = load i8*, i8** %file_command, align 8
  %cmp216 = icmp eq i8* %151, null
  br i1 %cmp216, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %cond.end.210
  br label %cond.end.221

cond.false.219:                                   ; preds = %cond.end.210
  %152 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %file_command220 = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %152, i32 0, i32 3
  %153 = load i8*, i8** %file_command220, align 8
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.219, %cond.true.218
  %cond222 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %cond.true.218 ], [ %153, %cond.false.219 ]
  %call223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* %call215, i32 %149, i8* %cond222)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %155 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %common = getelementptr inbounds %struct.a2ps_job, %struct.a2ps_job* %155, i32 0, i32 2
  %path = getelementptr inbounds %struct.a2ps_common_s, %struct.a2ps_common_s* %common, i32 0, i32 0
  %156 = load i8**, i8*** %path, align 8
  call void @pw_fprintf_path(%struct._IO_FILE* %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i32 0, i32 0), i8** %156)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @list_features(%struct.a2ps_job* %a_job, %struct._IO_FILE* %stream) #0 {
entry:
  %a_job.addr = alloca %struct.a2ps_job*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.a2ps_job* %a_job, %struct.a2ps_job** %a_job.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @list_style_sheets_short(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %1)
  %2 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @list_encodings_short(%struct.a2ps_job* %2, %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %4)
  %5 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @list_media_short(%struct.a2ps_job* %5, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %7)
  %8 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @prologues_list_short(%struct.a2ps_job* %8, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %10)
  %11 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @a2ps_ppd_list_short(%struct.a2ps_job* %11, %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %13)
  %14 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @a2ps_printers_list_short(%struct.a2ps_job* %14, %struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %16)
  %17 = load %struct.hash_table_s*, %struct.hash_table_s** @delegation_table, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @delegations_list_short(%struct.hash_table_s* %17, %struct._IO_FILE* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %19)
  %20 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @user_options_list_short(%struct.a2ps_job* %20, %struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call7 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %22)
  %23 = load %struct.a2ps_job*, %struct.a2ps_job** %a_job.addr, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @macro_meta_sequences_list_short(%struct.a2ps_job* %23, %struct._IO_FILE* %24)
  ret void
}

declare void @list_media_long(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @list_style_sheets_long(%struct._IO_FILE*) #1

declare void @list_style_sheets_html(%struct._IO_FILE*) #1

declare void @list_style_sheets_texinfo(%struct._IO_FILE*) #1

declare void @a2ps_printers_list_long(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @delegations_list_long(%struct.hash_table_s*, %struct._IO_FILE*) #1

declare void @macro_meta_sequences_list_long(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @list_encodings_long(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @list_texinfo_encodings_long(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @user_options_list_long(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @prologues_list_long(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @prologues_list_texinfo(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @a2ps_ppd_list_long(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @a2ps_open_output_session(%struct.a2ps_job*) #1

declare void @print(i8*, i32*, i32*) #1

declare void @print_toc(i8*, i8*, i32*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @a2ps_open_output_stream(%struct.a2ps_job*) #1

declare void @pslex_dump(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind
declare i32 @unlink(i8*) #2

declare void @a2ps_close_output_stream(%struct.a2ps_job*) #1

declare void @msg_job_pages_printed(%struct.a2ps_job*) #1

declare void @a2ps_close_output_session(%struct.a2ps_job*) #1

declare void @msg_nothing_printed() #1

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare void @a2ps_job_free(%struct.a2ps_job*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare void @a2ps_job_unlink_tmpfiles(%struct.a2ps_job*) #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strsignal(i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

declare zeroext i1 @a2ps_get_bool(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_highlight_level(i8* %option, i8* %arg) #0 {
entry:
  %option.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %option, i8** %option.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %option.addr, align 8
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load void ()*, void ()** @argmatch_die, align 8
  %call = call i32 @__xargmatch_internal(i8* %0, i8* %1, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @highlight_level_args, i32 0, i32 0), i8* bitcast ([9 x i32]* @highlight_level_types to i8*), i64 4, i32 0, void ()* %2)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @highlight_level_types, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  ret i32 %3
}

declare i32 @__xargmatch_internal(i8*, i8*, i8**, i8*, i64, i32, void ()*) #1

declare i32 @get_integer_in_range(i8*, i8*, i32, i32, i32) #1

declare i32 @option_string_to_eol(i8*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @tempnam(i8*, i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i8* @quotearg(i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare void @title(%struct._IO_FILE*, i8 signext, i32, i8*, ...) #1

declare zeroext i1 @a2ps_medium_libpaper_p(%struct.a2ps_job*, i8*) #1

declare i8* @madir_to_string(i32) #1

declare i8* @file_align_to_string(i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i8* @unprintable_format_to_string(i32) #1

declare i8* @eol_to_string(i32) #1

declare i8* @encoding_get_name(%struct.encoding*) #1

; Function Attrs: nounwind uwtable
define internal i8* @highlight_level_to_string(i32 %level) #0 {
entry:
  %retval = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32, i32* %level.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.1
    i32 0, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0)) #5
  store i8* %call, i8** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #5
  store i8* %call2, i8** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0)) #5
  store i8* %call4, i8** %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.3, %sw.bb.1, %sw.bb
  %1 = load i8*, i8** %retval
  ret i8* %1
}

declare i8* @a2ps_flag_destination_to_string(%struct.a2ps_job*) #1

declare i8* @a2ps_printers_request_ppdkey_get(%struct.a2ps_printers_s*) #1

declare i8* @a2ps_printers_default_ppdkey_get(%struct.a2ps_printers_s*) #1

declare void @list_pagedevice(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @list_statusdict(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @pw_fprintf_path(%struct._IO_FILE*, i8*, i8**) #1

declare void @list_style_sheets_short(%struct._IO_FILE*) #1

declare void @list_encodings_short(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @list_media_short(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @prologues_list_short(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @a2ps_ppd_list_short(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @a2ps_printers_list_short(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @delegations_list_short(%struct.hash_table_s*, %struct._IO_FILE*) #1

declare void @user_options_list_short(%struct.a2ps_job*, %struct._IO_FILE*) #1

declare void @macro_meta_sequences_list_short(%struct.a2ps_job*, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
