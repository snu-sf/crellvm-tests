; ModuleID = './MultiSource.Applications.sqlite3/1.shell.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sqlite3 = type opaque
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }
%struct.callback_data = type { %struct.sqlite3*, i32, i32, %struct._IO_FILE*, i32, i32, i32, i8*, [20 x i8], [100 x i32], [100 x i32], [20 x i8], %struct.previous_mode_data, [4096 x i8], i8* }
%struct.previous_mode_data = type { i32, i32, i32, [100 x i32] }
%struct.sqlite3_context = type opaque
%struct.Mem = type opaque
%struct.sqlite3_stmt = type opaque
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@Argv0 = internal global i8* null, align 8
@stdin_is_interactive = internal global i32 1, align 4
@.str = private unnamed_addr constant [11 x i8] c"-separator\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"-nullvalue\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-init\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c":memory:\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"-html\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"-list\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-line\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"-column\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"-csv\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"-header\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"-noheader\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"-echo\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"-bail\00", align 1
@bail_on_error = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"-interactive\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"-batch\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [24 x i8] c"%s: unknown option: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Use -help for a list of options.\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"SQL error: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"SQLite version %s\0AEnter \22.help\22 for instructions\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"%s/.sqlite_history\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@db = internal global %struct.sqlite3* null, align 8
@.str.26 = private unnamed_addr constant [28 x i8] c"error closing database: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@mainPrompt = internal global [20 x i8] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [9 x i8] c"sqlite> \00", align 1
@continuePrompt = internal global [20 x i8] zeroinitializer, align 16
@.str.29 = private unnamed_addr constant [9 x i8] c"   ...> \00", align 1
@seenInterrupt = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"shellstatic\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Unable to open database \22%s\22: %s\0A\00", align 1
@zShellStatic = internal global i8* null, align 8
@.str.32 = private unnamed_addr constant [40 x i8] c"%s: cannot locate your home directory!\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"%s: out of memory!\0A\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"%s/.sqliterc\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"-- Loading resources from %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [145 x i8] c"Usage: %s [OPTIONS] FILENAME [SQL]\0AFILENAME is the name of an SQLite database. A new database is created\0Aif the file does not previously exist.\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"OPTIONS include:\0A%s\00", align 1
@zOptions = internal constant [694 x i8] c"   -init filename       read/process named file\0A   -echo                print commands before execution\0A   -[no]header          turn headers on or off\0A   -bail                stop after hitting an error\0A   -interactive         force interactive I/O\0A   -batch               force batch I/O\0A   -column              set output mode to 'column'\0A   -csv                 set output mode to 'csv'\0A   -html                set output mode to HTML\0A   -line                set output mode to 'line'\0A   -list                set output mode to 'list'\0A   -separator 'x'       set output field separator (|)\0A   -nullvalue 'text'    set text string for NULL values\0A   -version             show SQLite version\0A\00", align 16
@.str.39 = private unnamed_addr constant [49 x i8] c"Use the -help option for additional information\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"bail\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"databases\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"PRAGMA database_list; \00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"BEGIN TRANSACTION;\0A\00", align 1
@.str.46 = private unnamed_addr constant [79 x i8] c"SELECT name, type, sql FROM sqlite_master WHERE sql NOT NULL AND type=='table'\00", align 1
@.str.47 = private unnamed_addr constant [88 x i8] c"SELECT sql FROM sqlite_master WHERE sql NOT NULL AND type IN ('index','trigger','view')\00", align 1
@.str.48 = private unnamed_addr constant [112 x i8] c"SELECT name, type, sql FROM sqlite_master WHERE tbl_name LIKE shellstatic() AND type=='table'  AND sql NOT NULL\00", align 1
@.str.49 = private unnamed_addr constant [122 x i8] c"SELECT sql FROM sqlite_master WHERE sql NOT NULL  AND type IN ('index','trigger','view')  AND tbl_name LIKE shellstatic()\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"PRAGMA writable_schema=OFF;\0A\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"COMMIT;\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"explain\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@zHelp = internal global [1855 x i8] c".bail ON|OFF           Stop after hitting an error.  Default OFF\0A.databases             List names and files of attached databases\0A.dump ?TABLE? ...      Dump the database in an SQL text format\0A.echo ON|OFF           Turn command echo on or off\0A.exit                  Exit this program\0A.explain ON|OFF        Turn output mode suitable for EXPLAIN on or off.\0A.header(s) ON|OFF      Turn display of headers on or off\0A.help                  Show this message\0A.import FILE TABLE     Import data from FILE into TABLE\0A.indices TABLE         Show names of all indices on TABLE\0A.mode MODE ?TABLE?     Set output mode where MODE is one of:\0A                         csv      Comma-separated values\0A                         column   Left-aligned columns.  (See .width)\0A                         html     HTML <table> code\0A                         insert   SQL insert statements for TABLE\0A                         line     One value per line\0A                         list     Values delimited by .separator string\0A                         tabs     Tab-separated values\0A                         tcl      TCL list elements\0A.nullvalue STRING      Print STRING in place of NULL values\0A.output FILENAME       Send output to FILENAME\0A.output stdout         Send output to the screen\0A.prompt MAIN CONTINUE  Replace the standard prompts\0A.quit                  Exit this program\0A.read FILENAME         Execute SQL in FILENAME\0A.schema ?TABLE?        Show the CREATE statements\0A.separator STRING      Change separator used by output mode and .import\0A.show                  Show the current values for various settings\0A.tables ?PATTERN?      List names of tables matching a LIKE pattern\0A.timeout MS            Try opening locked tables for MS milliseconds\0A.timer ON|OFF          Turn the CPU timer measurement on or off\0A.width NUM NUM ...     Set column widths for \22column\22 mode\0A\00", align 16
@.str.58 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"non-null separator required for import\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"SELECT * FROM '%q'\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"INSERT INTO '%q' VALUES(?\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"cannot open file: %s\0A\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"COMMIT\00", align 1
@.str.65 = private unnamed_addr constant [54 x i8] c"%s line %d: expected %d columns of data but found %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"ROLLBACK\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"indices\00", align 1
@.str.68 = private unnamed_addr constant [190 x i8] c"SELECT name FROM sqlite_master WHERE type='index' AND tbl_name LIKE shellstatic() UNION ALL SELECT name FROM sqlite_temp_master WHERE type='index' AND tbl_name LIKE shellstatic() ORDER BY 1\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"tcl\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.82 = private unnamed_addr constant [66 x i8] c"mode should be one of: column csv html insert line list tabs tcl\0A\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"nullvalue\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"can't write to \22%s\22\0A\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"can't open \22%s\22\0A\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"schema\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"sqlite_master\00", align 1
@.str.95 = private unnamed_addr constant [105 x i8] c"CREATE TABLE sqlite_master (\0A  type text,\0A  name text,\0A  tbl_name text,\0A  rootpage integer,\0A  sql text\0A)\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"sql\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"sqlite_temp_master\00", align 1
@.str.98 = private unnamed_addr constant [115 x i8] c"CREATE TEMP TABLE sqlite_temp_master (\0A  type text,\0A  name text,\0A  tbl_name text,\0A  rootpage integer,\0A  sql text\0A)\00", align 1
@.str.99 = private unnamed_addr constant [192 x i8] c"SELECT sql FROM   (SELECT * FROM sqlite_master UNION ALL   SELECT * FROM sqlite_temp_master) WHERE tbl_name LIKE shellstatic() AND type!='meta' AND sql NOTNULL ORDER BY substr(type,2,1), name\00", align 1
@.str.100 = private unnamed_addr constant [188 x i8] c"SELECT sql FROM   (SELECT * FROM sqlite_master UNION ALL   SELECT * FROM sqlite_temp_master) WHERE type!='meta' AND sql NOTNULL AND name NOT LIKE 'sqlite_%'ORDER BY substr(type,2,1), name\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"separator\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"%9.9s: %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@modeDescr = internal global [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0)], align 16
@.str.106 = private unnamed_addr constant [8 x i8] c"%9.9s: \00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"tables\00", align 1
@.str.111 = private unnamed_addr constant [178 x i8] c"SELECT name FROM sqlite_master WHERE type IN ('table','view') AND name NOT LIKE 'sqlite_%'UNION ALL SELECT name FROM sqlite_temp_master WHERE type IN ('table','view') ORDER BY 1\00", align 1
@.str.112 = private unnamed_addr constant [226 x i8] c"SELECT name FROM sqlite_master WHERE type IN ('table','view') AND name LIKE '%'||shellstatic()||'%' UNION ALL SELECT name FROM sqlite_temp_master WHERE type IN ('table','view') AND name LIKE '%'||shellstatic()||'%' ORDER BY 1\00", align 1
@.str.113 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"%s%-*s\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@enableTimer = internal global i32 0, align 4
@.str.118 = private unnamed_addr constant [69 x i8] c"unknown command or invalid arguments:  \22%s\22. Enter \22.help\22 for help\0A\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"%s ORDER BY rowid DESC\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"sqlite_sequence\00", align 1
@.str.122 = private unnamed_addr constant [30 x i8] c"DELETE FROM sqlite_sequence;\0A\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"sqlite_stat1\00", align 1
@.str.124 = private unnamed_addr constant [24 x i8] c"ANALYZE sqlite_master;\0A\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"sqlite_\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c"CREATE VIRTUAL TABLE\00", align 1
@.str.127 = private unnamed_addr constant [28 x i8] c"PRAGMA writable_schema=ON;\0A\00", align 1
@.str.128 = private unnamed_addr constant [92 x i8] c"INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)VALUES('table','%q','%q',0,'%q');\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"PRAGMA table_info(\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.132 = private unnamed_addr constant [26 x i8] c"SELECT 'INSERT INTO ' || \00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c" || ' VALUES(' || \00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"quote(\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c") || ',' || \00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"|| ')' FROM  \00", align 1
@.str.138 = private unnamed_addr constant [21 x i8] c" ORDER BY rowid DESC\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"semi\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"%*s = %s\0A\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"%-*.*s%s\00", align 1
@.str.143 = private unnamed_addr constant [94 x i8] c"---------------------------------------------------------------------------------------------\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"<TR>\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"<TH>%s</TH>\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"</TR>\0A\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"<TD>\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"</TD>\0A\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"INSERT INTO %s VALUES(\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"%sNULL\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.155 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@needCsvQuote = internal constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@.str.156 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"%.*s''\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.163 = private unnamed_addr constant [24 x i8] c"SQL error near line %d:\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"SQL error:\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.166 = private unnamed_addr constant [20 x i8] c"Incomplete SQL: %s\0A\00", align 1
@sBegin = internal global %struct.rusage zeroinitializer, align 8
@.str.167 = private unnamed_addr constant [26 x i8] c"CPU Time: user %f sys %f\0A\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"Out of memory!\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %zErrMsg = alloca i8*, align 8
  %data = alloca %struct.callback_data, align 8
  %zInitFile = alloca i8*, align 8
  %zFirstCmd = alloca i8*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %z = alloca i8*, align 8
  %z73 = alloca i8*, align 8
  %rc214 = alloca i32, align 4
  %zHome = alloca i8*, align 8
  %zHistory = alloca i8*, align 8
  %nHistory = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* null, i8** %zErrMsg, align 8
  store i8* null, i8** %zInitFile, align 8
  store i8* null, i8** %zFirstCmd, align 8
  store i32 0, i32* %rc, align 4
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** @Argv0, align 8
  call void @main_init(%struct.callback_data* %data)
  %call = call i32 @isatty(i32 0) #3
  store i32 %call, i32* @stdin_is_interactive, align 4
  %call1 = call void (i32)* @signal(i32 2, void (i32)* @interrupt_handler) #3
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp ne i32 %conv, 45
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %9, i64 %idxprom6
  %10 = load i8*, i8** %arrayidx7, align 8
  store i8* %10, i8** %z, align 8
  %11 = load i8*, i8** %z, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 45
  br i1 %cmp10, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end
  %13 = load i8*, i8** %z, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 1
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 45
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true
  %15 = load i8*, i8** %z, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %z, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true, %if.end
  %16 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %17, i64 %idxprom18
  %18 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #7
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %19 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %19 to i64
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %20, i64 %idxprom23
  %21 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.17
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end.39

if.else:                                          ; preds = %lor.lhs.false
  %23 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %23 to i64
  %24 = load i8**, i8*** %argv.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %24, i64 %idxprom29
  %25 = load i8*, i8** %arrayidx30, align 8
  %call31 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #7
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.else
  %26 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, i32* %i, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %27 to i64
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %28, i64 %idxprom36
  %29 = load i8*, i8** %arrayidx37, align 8
  store i8* %29, i8** %zInitFile, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %30 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %30, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %argc.addr, align 4
  %cmp41 = icmp slt i32 %31, %32
  br i1 %cmp41, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %33, 1
  store i32 %inc44, i32* %i, align 4
  %idxprom45 = sext i32 %33 to i64
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %34, i64 %idxprom45
  %35 = load i8*, i8** %arrayidx46, align 8
  %zDbFilename = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 14
  store i8* %35, i8** %zDbFilename, align 8
  br label %if.end.49

if.else.47:                                       ; preds = %for.end
  %zDbFilename48 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 14
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8** %zDbFilename48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.then.43
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %argc.addr, align 4
  %cmp50 = icmp slt i32 %36, %37
  br i1 %cmp50, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %if.end.49
  %38 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %38, 1
  store i32 %inc53, i32* %i, align 4
  %idxprom54 = sext i32 %38 to i64
  %39 = load i8**, i8*** %argv.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %39, i64 %idxprom54
  %40 = load i8*, i8** %arrayidx55, align 8
  store i8* %40, i8** %zFirstCmd, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %if.end.49
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %out = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 3
  store %struct._IO_FILE* %41, %struct._IO_FILE** %out, align 8
  %zDbFilename57 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 14
  %42 = load i8*, i8** %zDbFilename57, align 8
  %call58 = call i32 @access(i8* %42, i32 0) #3
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.56
  call void @open_db(%struct.callback_data* %data)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %if.end.56
  %43 = load i8*, i8** %zInitFile, align 8
  call void @process_sqliterc(%struct.callback_data* %data, i8* %43)
  store i32 1, i32* %i, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.203, %if.end.62
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %argc.addr, align 4
  %cmp64 = icmp slt i32 %44, %45
  br i1 %cmp64, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.63
  %46 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %46 to i64
  %47 = load i8**, i8*** %argv.addr, align 8
  %arrayidx67 = getelementptr inbounds i8*, i8** %47, i64 %idxprom66
  %48 = load i8*, i8** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %49 to i32
  %cmp70 = icmp eq i32 %conv69, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.63
  %50 = phi i1 [ false, %for.cond.63 ], [ %cmp70, %land.rhs ]
  br i1 %50, label %for.body.72, label %for.end.205

for.body.72:                                      ; preds = %land.end
  %51 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %51 to i64
  %52 = load i8**, i8*** %argv.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %52, i64 %idxprom74
  %53 = load i8*, i8** %arrayidx75, align 8
  store i8* %53, i8** %z73, align 8
  %54 = load i8*, i8** %z73, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx76, align 1
  %conv77 = sext i8 %55 to i32
  %cmp78 = icmp eq i32 %conv77, 45
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %for.body.72
  %56 = load i8*, i8** %z73, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr81, i8** %z73, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %for.body.72
  %57 = load i8*, i8** %z73, align 8
  %call83 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #7
  %cmp84 = icmp eq i32 %call83, 0
  br i1 %cmp84, label %if.then.86, label %if.else.88

if.then.86:                                       ; preds = %if.end.82
  %58 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %58, 1
  store i32 %inc87, i32* %i, align 4
  br label %if.end.202

if.else.88:                                       ; preds = %if.end.82
  %59 = load i8*, i8** %z73, align 8
  %call89 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %if.else.88
  %mode = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 4
  store i32 4, i32* %mode, align 4
  br label %if.end.201

if.else.93:                                       ; preds = %if.else.88
  %60 = load i8*, i8** %z73, align 8
  %call94 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #7
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then.97, label %if.else.99

if.then.97:                                       ; preds = %if.else.93
  %mode98 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 4
  store i32 2, i32* %mode98, align 4
  br label %if.end.200

if.else.99:                                       ; preds = %if.else.93
  %61 = load i8*, i8** %z73, align 8
  %call100 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #7
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %if.else.99
  %mode104 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 4
  store i32 0, i32* %mode104, align 4
  br label %if.end.199

if.else.105:                                      ; preds = %if.else.99
  %62 = load i8*, i8** %z73, align 8
  %call106 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #7
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then.109, label %if.else.111

if.then.109:                                      ; preds = %if.else.105
  %mode110 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 4
  store i32 1, i32* %mode110, align 4
  br label %if.end.198

if.else.111:                                      ; preds = %if.else.105
  %63 = load i8*, i8** %z73, align 8
  %call112 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)) #7
  %cmp113 = icmp eq i32 %call112, 0
  br i1 %cmp113, label %if.then.115, label %if.else.117

if.then.115:                                      ; preds = %if.else.111
  %mode116 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 4
  store i32 7, i32* %mode116, align 4
  %separator = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 8
  %64 = bitcast [20 x i8]* %separator to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i64 2, i32 1, i1 false)
  br label %if.end.197

if.else.117:                                      ; preds = %if.else.111
  %65 = load i8*, i8** %z73, align 8
  %call118 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #7
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then.121, label %if.else.127

if.then.121:                                      ; preds = %if.else.117
  %66 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %66, 1
  store i32 %inc122, i32* %i, align 4
  %separator123 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 8
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %separator123, i32 0, i32 0
  %67 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %67 to i64
  %68 = load i8**, i8*** %argv.addr, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %68, i64 %idxprom124
  %69 = load i8*, i8** %arrayidx125, align 8
  %call126 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 20, i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 19, i8* %69)
  br label %if.end.196

if.else.127:                                      ; preds = %if.else.117
  %70 = load i8*, i8** %z73, align 8
  %call128 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)) #7
  %cmp129 = icmp eq i32 %call128, 0
  br i1 %cmp129, label %if.then.131, label %if.else.137

if.then.131:                                      ; preds = %if.else.127
  %71 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %71, 1
  store i32 %inc132, i32* %i, align 4
  %nullvalue = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 11
  %arraydecay133 = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue, i32 0, i32 0
  %72 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %72 to i64
  %73 = load i8**, i8*** %argv.addr, align 8
  %arrayidx135 = getelementptr inbounds i8*, i8** %73, i64 %idxprom134
  %74 = load i8*, i8** %arrayidx135, align 8
  %call136 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 20, i8* %arraydecay133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 19, i8* %74)
  br label %if.end.195

if.else.137:                                      ; preds = %if.else.127
  %75 = load i8*, i8** %z73, align 8
  %call138 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #7
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.else.137
  %showHeader = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 6
  store i32 1, i32* %showHeader, align 4
  br label %if.end.194

if.else.142:                                      ; preds = %if.else.137
  %76 = load i8*, i8** %z73, align 8
  %call143 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #7
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %if.then.146, label %if.else.148

if.then.146:                                      ; preds = %if.else.142
  %showHeader147 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 6
  store i32 0, i32* %showHeader147, align 4
  br label %if.end.193

if.else.148:                                      ; preds = %if.else.142
  %77 = load i8*, i8** %z73, align 8
  %call149 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #7
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then.152, label %if.else.153

if.then.152:                                      ; preds = %if.else.148
  %echoOn = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 1
  store i32 1, i32* %echoOn, align 4
  br label %if.end.192

if.else.153:                                      ; preds = %if.else.148
  %78 = load i8*, i8** %z73, align 8
  %call154 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #7
  %cmp155 = icmp eq i32 %call154, 0
  br i1 %cmp155, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %if.else.153
  store i32 1, i32* @bail_on_error, align 4
  br label %if.end.191

if.else.158:                                      ; preds = %if.else.153
  %79 = load i8*, i8** %z73, align 8
  %call159 = call i32 @strcmp(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0)) #7
  %cmp160 = icmp eq i32 %call159, 0
  br i1 %cmp160, label %if.then.162, label %if.else.165

if.then.162:                                      ; preds = %if.else.158
  %call163 = call i8* @sqlite3_libversion()
  %call164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %call163)
  store i32 0, i32* %retval
  br label %return

if.else.165:                                      ; preds = %if.else.158
  %80 = load i8*, i8** %z73, align 8
  %call166 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)) #7
  %cmp167 = icmp eq i32 %call166, 0
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %if.else.165
  store i32 1, i32* @stdin_is_interactive, align 4
  br label %if.end.189

if.else.170:                                      ; preds = %if.else.165
  %81 = load i8*, i8** %z73, align 8
  %call171 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #7
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.then.174, label %if.else.175

if.then.174:                                      ; preds = %if.else.170
  store i32 0, i32* @stdin_is_interactive, align 4
  br label %if.end.188

if.else.175:                                      ; preds = %if.else.170
  %82 = load i8*, i8** %z73, align 8
  %call176 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #7
  %cmp177 = icmp eq i32 %call176, 0
  br i1 %cmp177, label %if.then.183, label %lor.lhs.false.179

lor.lhs.false.179:                                ; preds = %if.else.175
  %83 = load i8*, i8** %z73, align 8
  %call180 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)) #7
  %cmp181 = icmp eq i32 %call180, 0
  br i1 %cmp181, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %lor.lhs.false.179, %if.else.175
  call void @usage(i32 1)
  br label %if.end.187

if.else.184:                                      ; preds = %lor.lhs.false.179
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %85 = load i8*, i8** @Argv0, align 8
  %86 = load i8*, i8** %z73, align 8
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i8* %85, i8* %86)
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.187:                                       ; preds = %if.then.183
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.174
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.then.169
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.157
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %if.then.152
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.146
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.141
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.131
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %if.then.121
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.115
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.then.109
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.then.103
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.97
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.then.92
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.then.86
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %88 = load i32, i32* %i, align 4
  %inc204 = add nsw i32 %88, 1
  store i32 %inc204, i32* %i, align 4
  br label %for.cond.63

for.end.205:                                      ; preds = %land.end
  %89 = load i8*, i8** %zFirstCmd, align 8
  %tobool = icmp ne i8* %89, null
  br i1 %tobool, label %if.then.206, label %if.else.225

if.then.206:                                      ; preds = %for.end.205
  %90 = load i8*, i8** %zFirstCmd, align 8
  %arrayidx207 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx207, align 1
  %conv208 = sext i8 %91 to i32
  %cmp209 = icmp eq i32 %conv208, 46
  br i1 %cmp209, label %if.then.211, label %if.else.213

if.then.211:                                      ; preds = %if.then.206
  %92 = load i8*, i8** %zFirstCmd, align 8
  %call212 = call i32 @do_meta_command(i8* %92, %struct.callback_data* %data)
  call void @exit(i32 0) #8
  unreachable

if.else.213:                                      ; preds = %if.then.206
  call void @open_db(%struct.callback_data* %data)
  %db = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 0
  %93 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %94 = load i8*, i8** %zFirstCmd, align 8
  %95 = bitcast %struct.callback_data* %data to i8*
  %call215 = call i32 @sqlite3_exec(%struct.sqlite3* %93, i8* %94, i32 (i8*, i32, i8**, i8**)* @callback, i8* %95, i8** %zErrMsg)
  store i32 %call215, i32* %rc214, align 4
  %96 = load i32, i32* %rc214, align 4
  %cmp216 = icmp ne i32 %96, 0
  br i1 %cmp216, label %land.lhs.true.218, label %if.end.223

land.lhs.true.218:                                ; preds = %if.else.213
  %97 = load i8*, i8** %zErrMsg, align 8
  %cmp219 = icmp ne i8* %97, null
  br i1 %cmp219, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %land.lhs.true.218
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %99 = load i8*, i8** %zErrMsg, align 8
  %call222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* %99)
  call void @exit(i32 1) #8
  unreachable

if.end.223:                                       ; preds = %land.lhs.true.218, %if.else.213
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.223
  br label %if.end.249

if.else.225:                                      ; preds = %for.end.205
  %100 = load i32, i32* @stdin_is_interactive, align 4
  %tobool226 = icmp ne i32 %100, 0
  br i1 %tobool226, label %if.then.227, label %if.else.246

if.then.227:                                      ; preds = %if.else.225
  store i8* null, i8** %zHistory, align 8
  %call228 = call i8* @sqlite3_libversion()
  %call229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i32 0, i32 0), i8* %call228)
  %call230 = call i8* @find_home_dir()
  store i8* %call230, i8** %zHome, align 8
  %101 = load i8*, i8** %zHome, align 8
  %tobool231 = icmp ne i8* %101, null
  br i1 %tobool231, label %land.lhs.true.232, label %if.end.241

land.lhs.true.232:                                ; preds = %if.then.227
  %102 = load i8*, i8** %zHome, align 8
  %call233 = call i64 @strlen(i8* %102) #7
  %add = add i64 %call233, 20
  %conv234 = trunc i64 %add to i32
  store i32 %conv234, i32* %nHistory, align 4
  %conv235 = sext i32 %conv234 to i64
  %call236 = call noalias i8* @malloc(i64 %conv235) #3
  store i8* %call236, i8** %zHistory, align 8
  %cmp237 = icmp ne i8* %call236, null
  br i1 %cmp237, label %if.then.239, label %if.end.241

if.then.239:                                      ; preds = %land.lhs.true.232
  %103 = load i32, i32* %nHistory, align 4
  %104 = load i8*, i8** %zHistory, align 8
  %105 = load i8*, i8** %zHome, align 8
  %call240 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %103, i8* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i8* %105)
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.239, %land.lhs.true.232, %if.then.227
  %call242 = call i32 @process_input(%struct.callback_data* %data, %struct._IO_FILE* null)
  store i32 %call242, i32* %rc, align 4
  %106 = load i8*, i8** %zHistory, align 8
  %tobool243 = icmp ne i8* %106, null
  br i1 %tobool243, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %if.end.241
  %107 = load i8*, i8** %zHistory, align 8
  call void @free(i8* %107) #3
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.244, %if.end.241
  %108 = load i8*, i8** %zHome, align 8
  call void @free(i8* %108) #3
  br label %if.end.248

if.else.246:                                      ; preds = %if.else.225
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call247 = call i32 @process_input(%struct.callback_data* %data, %struct._IO_FILE* %109)
  store i32 %call247, i32* %rc, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.else.246, %if.end.245
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.end.224
  call void @set_table_name(%struct.callback_data* %data, i8* null)
  %110 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %tobool250 = icmp ne %struct.sqlite3* %110, null
  br i1 %tobool250, label %if.then.251, label %if.end.259

if.then.251:                                      ; preds = %if.end.249
  %111 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %call252 = call i32 @sqlite3_close(%struct.sqlite3* %111)
  %cmp253 = icmp ne i32 %call252, 0
  br i1 %cmp253, label %if.then.255, label %if.end.258

if.then.255:                                      ; preds = %if.then.251
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %113 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %call256 = call i8* @sqlite3_errmsg(%struct.sqlite3* %113)
  %call257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0), i8* %call256)
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.255, %if.then.251
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.end.249
  %114 = load i32, i32* %rc, align 4
  store i32 %114, i32* %retval
  br label %return

return:                                           ; preds = %if.end.259, %if.else.184, %if.then.162
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal void @main_init(%struct.callback_data* %data) #0 {
entry:
  %data.addr = alloca %struct.callback_data*, align 8
  store %struct.callback_data* %data, %struct.callback_data** %data.addr, align 8
  %0 = load %struct.callback_data*, %struct.callback_data** %data.addr, align 8
  %1 = bitcast %struct.callback_data* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 5408, i32 8, i1 false)
  %2 = load %struct.callback_data*, %struct.callback_data** %data.addr, align 8
  %mode = getelementptr inbounds %struct.callback_data, %struct.callback_data* %2, i32 0, i32 4
  store i32 2, i32* %mode, align 4
  %3 = load %struct.callback_data*, %struct.callback_data** %data.addr, align 8
  %separator = getelementptr inbounds %struct.callback_data, %struct.callback_data* %3, i32 0, i32 8
  %4 = bitcast [20 x i8]* %separator to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i64 2, i32 1, i1 false)
  %5 = load %struct.callback_data*, %struct.callback_data** %data.addr, align 8
  %showHeader = getelementptr inbounds %struct.callback_data, %struct.callback_data* %5, i32 0, i32 6
  store i32 0, i32* %showHeader, align 4
  %call = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @mainPrompt, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0))
  %call1 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @continuePrompt, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32) #1

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @interrupt_handler(i32 %NotUsed) #0 {
entry:
  %NotUsed.addr = alloca i32, align 4
  store i32 %NotUsed, i32* %NotUsed.addr, align 4
  store volatile i32 1, i32* @seenInterrupt, align 4
  %0 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %tobool = icmp ne %struct.sqlite3* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  call void @sqlite3_interrupt(%struct.sqlite3* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @open_db(%struct.callback_data* %p) #0 {
entry:
  %p.addr = alloca %struct.callback_data*, align 8
  store %struct.callback_data* %p, %struct.callback_data** %p.addr, align 8
  %0 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db = getelementptr inbounds %struct.callback_data, %struct.callback_data* %0, i32 0, i32 0
  %1 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %cmp = icmp eq %struct.sqlite3* %1, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %2 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %zDbFilename = getelementptr inbounds %struct.callback_data, %struct.callback_data* %2, i32 0, i32 14
  %3 = load i8*, i8** %zDbFilename, align 8
  %4 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db1 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %4, i32 0, i32 0
  %call = call i32 @sqlite3_open(i8* %3, %struct.sqlite3** %db1)
  %5 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db2 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %5, i32 0, i32 0
  %6 = load %struct.sqlite3*, %struct.sqlite3** %db2, align 8
  store %struct.sqlite3* %6, %struct.sqlite3** @db, align 8
  %7 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %call3 = call i32 @sqlite3_create_function(%struct.sqlite3* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 1, i8* null, void (%struct.sqlite3_context*, i32, %struct.Mem**)* @shellstaticFunc, void (%struct.sqlite3_context*, i32, %struct.Mem**)* null, void (%struct.sqlite3_context*)* null)
  %8 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %call4 = call i32 @sqlite3_errcode(%struct.sqlite3* %8)
  %cmp5 = icmp ne i32 0, %call4
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %zDbFilename7 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %10, i32 0, i32 14
  %11 = load i8*, i8** %zDbFilename7, align 8
  %12 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %call8 = call i8* @sqlite3_errmsg(%struct.sqlite3* %12)
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.31, i32 0, i32 0), i8* %11, i8* %call8)
  call void @exit(i32 1) #8
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_sqliterc(%struct.callback_data* %p, i8* %sqliterc_override) #0 {
entry:
  %p.addr = alloca %struct.callback_data*, align 8
  %sqliterc_override.addr = alloca i8*, align 8
  %home_dir = alloca i8*, align 8
  %sqliterc = alloca i8*, align 8
  %zBuf = alloca i8*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %nBuf = alloca i32, align 4
  store %struct.callback_data* %p, %struct.callback_data** %p.addr, align 8
  store i8* %sqliterc_override, i8** %sqliterc_override.addr, align 8
  store i8* null, i8** %home_dir, align 8
  %0 = load i8*, i8** %sqliterc_override.addr, align 8
  store i8* %0, i8** %sqliterc, align 8
  store i8* null, i8** %zBuf, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8
  %1 = load i8*, i8** %sqliterc, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %call = call i8* @find_home_dir()
  store i8* %call, i8** %home_dir, align 8
  %2 = load i8*, i8** %home_dir, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @Argv0, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i32 0, i32 0), i8* %4)
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i8*, i8** %home_dir, align 8
  %call4 = call i64 @strlen(i8* %5) #7
  %add = add i64 %call4, 16
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %nBuf, align 4
  %6 = load i32, i32* %nBuf, align 4
  %conv5 = sext i32 %6 to i64
  %call6 = call noalias i8* @malloc(i64 %conv5) #3
  store i8* %call6, i8** %zBuf, align 8
  %7 = load i8*, i8** %zBuf, align 8
  %cmp7 = icmp eq i8* %7, null
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** @Argv0, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* %9)
  call void @exit(i32 1) #8
  unreachable

if.end.11:                                        ; preds = %if.end
  %10 = load i32, i32* %nBuf, align 4
  %11 = load i8*, i8** %zBuf, align 8
  %12 = load i8*, i8** %home_dir, align 8
  %call12 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %10, i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i8* %12)
  %13 = load i8*, i8** %home_dir, align 8
  call void @free(i8* %13) #3
  %14 = load i8*, i8** %zBuf, align 8
  store i8* %14, i8** %sqliterc, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.11, %entry
  %15 = load i8*, i8** %sqliterc, align 8
  %call14 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %in, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %tobool = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end.13
  %17 = load i32, i32* @stdin_is_interactive, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.15
  %18 = load i8*, i8** %sqliterc, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0), i8* %18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.15
  %19 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call20 = call i32 @process_input(%struct.callback_data* %19, %struct._IO_FILE* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call21 = call i32 @fclose(%struct._IO_FILE* %21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end.13
  %22 = load i8*, i8** %zBuf, align 8
  call void @free(i8* %22) #3
  br label %return

return:                                           ; preds = %if.end.22, %if.then.2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i8* @sqlite3_snprintf(i32, i8*, i8*, ...) #4

declare i32 @printf(i8*, ...) #4

declare i8* @sqlite3_libversion() #4

; Function Attrs: nounwind uwtable
define internal void @usage(i32 %showDetail) #0 {
entry:
  %showDetail.addr = alloca i32, align 4
  store i32 %showDetail, i32* %showDetail.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @Argv0, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.37, i32 0, i32 0), i8* %1)
  %2 = load i32, i32* %showDetail.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([694 x i8], [694 x i8]* @zOptions, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal i32 @do_meta_command(i8* %zLine, %struct.callback_data* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %zLine.addr = alloca i8*, align 8
  %p.addr = alloca %struct.callback_data*, align 8
  %i = alloca i32, align 4
  %nArg = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %rc = alloca i32, align 4
  %azArg = alloca [50 x i8*], align 16
  %delim = alloca i32, align 4
  %data = alloca %struct.callback_data, align 8
  %zErrMsg = alloca i8*, align 8
  %zErrMsg164 = alloca i8*, align 8
  %i174 = alloca i32, align 4
  %val = alloca i32, align 4
  %zTable = alloca i8*, align 8
  %zFile = alloca i8*, align 8
  %pStmt = alloca %struct.sqlite3_stmt*, align 8
  %rc340 = alloca i32, align 4
  %nCol = alloca i32, align 4
  %nByte = alloca i32, align 4
  %i341 = alloca i32, align 4
  %j = alloca i32, align 4
  %nSep = alloca i32, align 4
  %zSql = alloca i8*, align 8
  %zLine342 = alloca i8*, align 8
  %azCol = alloca i8**, align 8
  %zCommit = alloca i8*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %lineno = alloca i32, align 4
  %z = alloca i8*, align 8
  %data517 = alloca %struct.callback_data, align 8
  %zErrMsg518 = alloca i8*, align 8
  %n2 = alloca i32, align 4
  %alt = alloca %struct._IO_FILE*, align 8
  %data775 = alloca %struct.callback_data, align 8
  %zErrMsg776 = alloca i8*, align 8
  %i782 = alloca i32, align 4
  %new_argv = alloca [2 x i8*], align 16
  %new_colv = alloca [2 x i8*], align 16
  %new_argv819 = alloca [2 x i8*], align 16
  %new_colv820 = alloca [2 x i8*], align 16
  %i869 = alloca i32, align 4
  %azResult = alloca i8**, align 8
  %nRow = alloca i32, align 4
  %rc953 = alloca i32, align 4
  %zErrMsg954 = alloca i8*, align 8
  %len = alloca i32, align 4
  %maxlen = alloca i32, align 4
  %i972 = alloca i32, align 4
  %j973 = alloca i32, align 4
  %nPrintCol = alloca i32, align 4
  %nPrintRow = alloca i32, align 4
  %zSp = alloca i8*, align 8
  %j1082 = alloca i32, align 4
  store i8* %zLine, i8** %zLine.addr, align 8
  store %struct.callback_data* %p, %struct.callback_data** %p.addr, align 8
  store i32 1, i32* %i, align 4
  store i32 0, i32* %nArg, align 4
  store i32 0, i32* %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.103, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %zLine.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %nArg, align 4
  %conv1 = sext i32 %3 to i64
  %cmp = icmp ult i64 %conv1, 50
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end.104

while.body:                                       ; preds = %land.end
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.11, %while.body
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i8*, i8** %zLine.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %call = call i16** @__ctype_b_loc() #9
  %8 = load i16*, i16** %call, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %8, i64 %idxprom7
  %9 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %9 to i32
  %and = and i32 %conv9, 8192
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %while.body.11, label %while.end

while.body.11:                                    ; preds = %while.cond.3
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load i8*, i8** %zLine.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 %idxprom12
  %13 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %while.end.104

if.end:                                           ; preds = %while.end
  %14 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load i8*, i8** %zLine.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %idxprom17
  %16 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %16 to i32
  %cmp20 = icmp eq i32 %conv19, 39
  br i1 %cmp20, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load i8*, i8** %zLine.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %18, i64 %idxprom22
  %19 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %19 to i32
  %cmp25 = icmp eq i32 %conv24, 34
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %lor.lhs.false, %if.end
  %20 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, i32* %i, align 4
  %idxprom29 = sext i32 %20 to i64
  %21 = load i8*, i8** %zLine.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %21, i64 %idxprom29
  %22 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %22 to i32
  store i32 %conv31, i32* %delim, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %23 to i64
  %24 = load i8*, i8** %zLine.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %24, i64 %idxprom32
  %25 = load i32, i32* %nArg, align 4
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, i32* %nArg, align 4
  %idxprom35 = sext i32 %25 to i64
  %arrayidx36 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 %idxprom35
  store i8* %arrayidx33, i8** %arrayidx36, align 8
  br label %while.cond.37

while.cond.37:                                    ; preds = %while.body.49, %if.then.27
  %26 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %26 to i64
  %27 = load i8*, i8** %zLine.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %27, i64 %idxprom38
  %28 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %28 to i32
  %tobool41 = icmp ne i32 %conv40, 0
  br i1 %tobool41, label %land.rhs.42, label %land.end.48

land.rhs.42:                                      ; preds = %while.cond.37
  %29 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %29 to i64
  %30 = load i8*, i8** %zLine.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %30, i64 %idxprom43
  %31 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %31 to i32
  %32 = load i32, i32* %delim, align 4
  %cmp46 = icmp ne i32 %conv45, %32
  br label %land.end.48

land.end.48:                                      ; preds = %land.rhs.42, %while.cond.37
  %33 = phi i1 [ false, %while.cond.37 ], [ %cmp46, %land.rhs.42 ]
  br i1 %33, label %while.body.49, label %while.end.51

while.body.49:                                    ; preds = %land.end.48
  %34 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %34, 1
  store i32 %inc50, i32* %i, align 4
  br label %while.cond.37

while.end.51:                                     ; preds = %land.end.48
  %35 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %35 to i64
  %36 = load i8*, i8** %zLine.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %36, i64 %idxprom52
  %37 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %37 to i32
  %38 = load i32, i32* %delim, align 4
  %cmp55 = icmp eq i32 %conv54, %38
  br i1 %cmp55, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %while.end.51
  %39 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %39, 1
  store i32 %inc58, i32* %i, align 4
  %idxprom59 = sext i32 %39 to i64
  %40 = load i8*, i8** %zLine.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %40, i64 %idxprom59
  store i8 0, i8* %arrayidx60, align 1
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %while.end.51
  %41 = load i32, i32* %delim, align 4
  %cmp62 = icmp eq i32 %41, 34
  br i1 %cmp62, label %if.then.64, label %if.end.67

if.then.64:                                       ; preds = %if.end.61
  %42 = load i32, i32* %nArg, align 4
  %sub = sub nsw i32 %42, 1
  %idxprom65 = sext i32 %sub to i64
  %arrayidx66 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 %idxprom65
  %43 = load i8*, i8** %arrayidx66, align 8
  call void @resolve_backslashes(i8* %43)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.64, %if.end.61
  br label %if.end.103

if.else:                                          ; preds = %lor.lhs.false
  %44 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %44 to i64
  %45 = load i8*, i8** %zLine.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %45, i64 %idxprom68
  %46 = load i32, i32* %nArg, align 4
  %inc70 = add nsw i32 %46, 1
  store i32 %inc70, i32* %nArg, align 4
  %idxprom71 = sext i32 %46 to i64
  %arrayidx72 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 %idxprom71
  store i8* %arrayidx69, i8** %arrayidx72, align 8
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.89, %if.else
  %47 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %47 to i64
  %48 = load i8*, i8** %zLine.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %48, i64 %idxprom74
  %49 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %49 to i32
  %tobool77 = icmp ne i32 %conv76, 0
  br i1 %tobool77, label %land.rhs.78, label %land.end.88

land.rhs.78:                                      ; preds = %while.cond.73
  %50 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %50 to i64
  %51 = load i8*, i8** %zLine.addr, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %51, i64 %idxprom79
  %52 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %52 to i32
  %idxprom82 = sext i32 %conv81 to i64
  %call83 = call i16** @__ctype_b_loc() #9
  %53 = load i16*, i16** %call83, align 8
  %arrayidx84 = getelementptr inbounds i16, i16* %53, i64 %idxprom82
  %54 = load i16, i16* %arrayidx84, align 2
  %conv85 = zext i16 %54 to i32
  %and86 = and i32 %conv85, 8192
  %tobool87 = icmp ne i32 %and86, 0
  %lnot = xor i1 %tobool87, true
  br label %land.end.88

land.end.88:                                      ; preds = %land.rhs.78, %while.cond.73
  %55 = phi i1 [ false, %while.cond.73 ], [ %lnot, %land.rhs.78 ]
  br i1 %55, label %while.body.89, label %while.end.91

while.body.89:                                    ; preds = %land.end.88
  %56 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %56, 1
  store i32 %inc90, i32* %i, align 4
  br label %while.cond.73

while.end.91:                                     ; preds = %land.end.88
  %57 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %57 to i64
  %58 = load i8*, i8** %zLine.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %58, i64 %idxprom92
  %59 = load i8, i8* %arrayidx93, align 1
  %tobool94 = icmp ne i8 %59, 0
  br i1 %tobool94, label %if.then.95, label %if.end.99

if.then.95:                                       ; preds = %while.end.91
  %60 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %60, 1
  store i32 %inc96, i32* %i, align 4
  %idxprom97 = sext i32 %60 to i64
  %61 = load i8*, i8** %zLine.addr, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %61, i64 %idxprom97
  store i8 0, i8* %arrayidx98, align 1
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.95, %while.end.91
  %62 = load i32, i32* %nArg, align 4
  %sub100 = sub nsw i32 %62, 1
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 %idxprom101
  %63 = load i8*, i8** %arrayidx102, align 8
  call void @resolve_backslashes(i8* %63)
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.99, %if.end.67
  br label %while.cond

while.end.104:                                    ; preds = %if.then, %land.end
  %64 = load i32, i32* %nArg, align 4
  %cmp105 = icmp eq i32 %64, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %while.end.104
  %65 = load i32, i32* %rc, align 4
  store i32 %65, i32* %retval
  br label %return

if.end.108:                                       ; preds = %while.end.104
  %arrayidx109 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %66 = load i8*, i8** %arrayidx109, align 8
  %call110 = call i64 @strlen(i8* %66) #7
  %conv111 = trunc i64 %call110 to i32
  store i32 %conv111, i32* %n, align 4
  %arrayidx112 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %67 = load i8*, i8** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx113, align 1
  %conv114 = sext i8 %68 to i32
  store i32 %conv114, i32* %c, align 4
  %69 = load i32, i32* %c, align 4
  %cmp115 = icmp eq i32 %69, 98
  br i1 %cmp115, label %land.lhs.true, label %if.else.131

land.lhs.true:                                    ; preds = %if.end.108
  %70 = load i32, i32* %n, align 4
  %cmp117 = icmp sgt i32 %70, 1
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.131

land.lhs.true.119:                                ; preds = %land.lhs.true
  %arrayidx120 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %71 = load i8*, i8** %arrayidx120, align 8
  %72 = load i32, i32* %n, align 4
  %conv121 = sext i32 %72 to i64
  %call122 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0), i64 %conv121) #7
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.131

land.lhs.true.125:                                ; preds = %land.lhs.true.119
  %73 = load i32, i32* %nArg, align 4
  %cmp126 = icmp sgt i32 %73, 1
  br i1 %cmp126, label %if.then.128, label %if.else.131

if.then.128:                                      ; preds = %land.lhs.true.125
  %arrayidx129 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %74 = load i8*, i8** %arrayidx129, align 8
  %call130 = call i32 @booleanValue(i8* %74)
  store i32 %call130, i32* @bail_on_error, align 4
  br label %if.end.1127

if.else.131:                                      ; preds = %land.lhs.true.125, %land.lhs.true.119, %land.lhs.true, %if.end.108
  %75 = load i32, i32* %c, align 4
  %cmp132 = icmp eq i32 %75, 100
  br i1 %cmp132, label %land.lhs.true.134, label %if.else.154

land.lhs.true.134:                                ; preds = %if.else.131
  %76 = load i32, i32* %n, align 4
  %cmp135 = icmp sgt i32 %76, 1
  br i1 %cmp135, label %land.lhs.true.137, label %if.else.154

land.lhs.true.137:                                ; preds = %land.lhs.true.134
  %arrayidx138 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %77 = load i8*, i8** %arrayidx138, align 8
  %78 = load i32, i32* %n, align 4
  %conv139 = sext i32 %78 to i64
  %call140 = call i32 @strncmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i64 %conv139) #7
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %if.then.143, label %if.else.154

if.then.143:                                      ; preds = %land.lhs.true.137
  store i8* null, i8** %zErrMsg, align 8
  %79 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  call void @open_db(%struct.callback_data* %79)
  %80 = bitcast %struct.callback_data* %data to i8*
  %81 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %82 = bitcast %struct.callback_data* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* %82, i64 5408, i32 8, i1 false)
  %showHeader = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 6
  store i32 1, i32* %showHeader, align 4
  %mode = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 4
  store i32 1, i32* %mode, align 4
  %colWidth = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 9
  %arrayidx144 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth, i32 0, i64 0
  store i32 3, i32* %arrayidx144, align 4
  %colWidth145 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 9
  %arrayidx146 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth145, i32 0, i64 1
  store i32 15, i32* %arrayidx146, align 4
  %colWidth147 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 9
  %arrayidx148 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth147, i32 0, i64 2
  store i32 58, i32* %arrayidx148, align 4
  %cnt = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data, i32 0, i32 2
  store i32 0, i32* %cnt, align 4
  %83 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db = getelementptr inbounds %struct.callback_data, %struct.callback_data* %83, i32 0, i32 0
  %84 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %85 = bitcast %struct.callback_data* %data to i8*
  %call149 = call i32 @sqlite3_exec(%struct.sqlite3* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i32 (i8*, i32, i8**, i8**)* @callback, i8* %85, i8** %zErrMsg)
  %86 = load i8*, i8** %zErrMsg, align 8
  %tobool150 = icmp ne i8* %86, null
  br i1 %tobool150, label %if.then.151, label %if.end.153

if.then.151:                                      ; preds = %if.then.143
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %88 = load i8*, i8** %zErrMsg, align 8
  %call152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %88)
  %89 = load i8*, i8** %zErrMsg, align 8
  call void @sqlite3_free(i8* %89)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.151, %if.then.143
  br label %if.end.1126

if.else.154:                                      ; preds = %land.lhs.true.137, %land.lhs.true.134, %if.else.131
  %90 = load i32, i32* %c, align 4
  %cmp155 = icmp eq i32 %90, 100
  br i1 %cmp155, label %land.lhs.true.157, label %if.else.199

land.lhs.true.157:                                ; preds = %if.else.154
  %arrayidx158 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %91 = load i8*, i8** %arrayidx158, align 8
  %92 = load i32, i32* %n, align 4
  %conv159 = sext i32 %92 to i64
  %call160 = call i32 @strncmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i64 %conv159) #7
  %cmp161 = icmp eq i32 %call160, 0
  br i1 %cmp161, label %if.then.163, label %if.else.199

if.then.163:                                      ; preds = %land.lhs.true.157
  store i8* null, i8** %zErrMsg164, align 8
  %93 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  call void @open_db(%struct.callback_data* %93)
  %94 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out = getelementptr inbounds %struct.callback_data, %struct.callback_data* %94, i32 0, i32 3
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i32 0, i32 0))
  %96 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %writableSchema = getelementptr inbounds %struct.callback_data, %struct.callback_data* %96, i32 0, i32 5
  store i32 0, i32* %writableSchema, align 4
  %97 = load i32, i32* %nArg, align 4
  %cmp166 = icmp eq i32 %97, 1
  br i1 %cmp166, label %if.then.168, label %if.else.173

if.then.168:                                      ; preds = %if.then.163
  %98 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %call169 = call i32 @run_schema_dump_query(%struct.callback_data* %98, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.46, i32 0, i32 0), i8** null)
  %99 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out170 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %99, i32 0, i32 3
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %out170, align 8
  %101 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db171 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %101, i32 0, i32 0
  %102 = load %struct.sqlite3*, %struct.sqlite3** %db171, align 8
  %call172 = call i32 @run_table_dump_query(%struct._IO_FILE* %100, %struct.sqlite3* %102, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.184

if.else.173:                                      ; preds = %if.then.163
  store i32 1, i32* %i174, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.173
  %103 = load i32, i32* %i174, align 4
  %104 = load i32, i32* %nArg, align 4
  %cmp175 = icmp slt i32 %103, %104
  br i1 %cmp175, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %105 = load i32, i32* %i174, align 4
  %idxprom177 = sext i32 %105 to i64
  %arrayidx178 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 %idxprom177
  %106 = load i8*, i8** %arrayidx178, align 8
  store i8* %106, i8** @zShellStatic, align 8
  %107 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %call179 = call i32 @run_schema_dump_query(%struct.callback_data* %107, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.48, i32 0, i32 0), i8** null)
  %108 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out180 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %108, i32 0, i32 3
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %out180, align 8
  %110 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db181 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %110, i32 0, i32 0
  %111 = load %struct.sqlite3*, %struct.sqlite3** %db181, align 8
  %call182 = call i32 @run_table_dump_query(%struct._IO_FILE* %109, %struct.sqlite3* %111, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.49, i32 0, i32 0))
  store i8* null, i8** @zShellStatic, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %112 = load i32, i32* %i174, align 4
  %inc183 = add nsw i32 %112, 1
  store i32 %inc183, i32* %i174, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.184

if.end.184:                                       ; preds = %for.end, %if.then.168
  %113 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %writableSchema185 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %113, i32 0, i32 5
  %114 = load i32, i32* %writableSchema185, align 4
  %tobool186 = icmp ne i32 %114, 0
  br i1 %tobool186, label %if.then.187, label %if.end.191

if.then.187:                                      ; preds = %if.end.184
  %115 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out188 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %115, i32 0, i32 3
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %out188, align 8
  %call189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0))
  %117 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %writableSchema190 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %117, i32 0, i32 5
  store i32 0, i32* %writableSchema190, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.187, %if.end.184
  %118 = load i8*, i8** %zErrMsg164, align 8
  %tobool192 = icmp ne i8* %118, null
  br i1 %tobool192, label %if.then.193, label %if.else.195

if.then.193:                                      ; preds = %if.end.191
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = load i8*, i8** %zErrMsg164, align 8
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %120)
  %121 = load i8*, i8** %zErrMsg164, align 8
  call void @sqlite3_free(i8* %121)
  br label %if.end.198

if.else.195:                                      ; preds = %if.end.191
  %122 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out196 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %122, i32 0, i32 3
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %out196, align 8
  %call197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.195, %if.then.193
  br label %if.end.1125

if.else.199:                                      ; preds = %land.lhs.true.157, %if.else.154
  %124 = load i32, i32* %c, align 4
  %cmp200 = icmp eq i32 %124, 101
  br i1 %cmp200, label %land.lhs.true.202, label %if.else.214

land.lhs.true.202:                                ; preds = %if.else.199
  %arrayidx203 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %125 = load i8*, i8** %arrayidx203, align 8
  %126 = load i32, i32* %n, align 4
  %conv204 = sext i32 %126 to i64
  %call205 = call i32 @strncmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i64 %conv204) #7
  %cmp206 = icmp eq i32 %call205, 0
  br i1 %cmp206, label %land.lhs.true.208, label %if.else.214

land.lhs.true.208:                                ; preds = %land.lhs.true.202
  %127 = load i32, i32* %nArg, align 4
  %cmp209 = icmp sgt i32 %127, 1
  br i1 %cmp209, label %if.then.211, label %if.else.214

if.then.211:                                      ; preds = %land.lhs.true.208
  %arrayidx212 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %128 = load i8*, i8** %arrayidx212, align 8
  %call213 = call i32 @booleanValue(i8* %128)
  %129 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %echoOn = getelementptr inbounds %struct.callback_data, %struct.callback_data* %129, i32 0, i32 1
  store i32 %call213, i32* %echoOn, align 4
  br label %if.end.1124

if.else.214:                                      ; preds = %land.lhs.true.208, %land.lhs.true.202, %if.else.199
  %130 = load i32, i32* %c, align 4
  %cmp215 = icmp eq i32 %130, 101
  br i1 %cmp215, label %land.lhs.true.217, label %if.else.224

land.lhs.true.217:                                ; preds = %if.else.214
  %arrayidx218 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %131 = load i8*, i8** %arrayidx218, align 8
  %132 = load i32, i32* %n, align 4
  %conv219 = sext i32 %132 to i64
  %call220 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i64 %conv219) #7
  %cmp221 = icmp eq i32 %call220, 0
  br i1 %cmp221, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %land.lhs.true.217
  store i32 2, i32* %rc, align 4
  br label %if.end.1123

if.else.224:                                      ; preds = %land.lhs.true.217, %if.else.214
  %133 = load i32, i32* %c, align 4
  %cmp225 = icmp eq i32 %133, 101
  br i1 %cmp225, label %land.lhs.true.227, label %if.else.292

land.lhs.true.227:                                ; preds = %if.else.224
  %arrayidx228 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %134 = load i8*, i8** %arrayidx228, align 8
  %135 = load i32, i32* %n, align 4
  %conv229 = sext i32 %135 to i64
  %call230 = call i32 @strncmp(i8* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i64 %conv229) #7
  %cmp231 = icmp eq i32 %call230, 0
  br i1 %cmp231, label %if.then.233, label %if.else.292

if.then.233:                                      ; preds = %land.lhs.true.227
  %136 = load i32, i32* %nArg, align 4
  %cmp234 = icmp sge i32 %136, 2
  br i1 %cmp234, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.233
  %arrayidx236 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %137 = load i8*, i8** %arrayidx236, align 8
  %call237 = call i32 @booleanValue(i8* %137)
  br label %cond.end

cond.false:                                       ; preds = %if.then.233
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call237, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %val, align 4
  %138 = load i32, i32* %val, align 4
  %cmp238 = icmp eq i32 %138, 1
  br i1 %cmp238, label %if.then.240, label %if.else.274

if.then.240:                                      ; preds = %cond.end
  %139 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev = getelementptr inbounds %struct.callback_data, %struct.callback_data* %139, i32 0, i32 12
  %valid = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev, i32 0, i32 0
  %140 = load i32, i32* %valid, align 4
  %tobool241 = icmp ne i32 %140, 0
  br i1 %tobool241, label %if.end.254, label %if.then.242

if.then.242:                                      ; preds = %if.then.240
  %141 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev243 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %141, i32 0, i32 12
  %valid244 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev243, i32 0, i32 0
  store i32 1, i32* %valid244, align 4
  %142 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode245 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %142, i32 0, i32 4
  %143 = load i32, i32* %mode245, align 4
  %144 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev246 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %144, i32 0, i32 12
  %mode247 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev246, i32 0, i32 1
  store i32 %143, i32* %mode247, align 4
  %145 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %showHeader248 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %145, i32 0, i32 6
  %146 = load i32, i32* %showHeader248, align 4
  %147 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev249 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %147, i32 0, i32 12
  %showHeader250 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev249, i32 0, i32 2
  store i32 %146, i32* %showHeader250, align 4
  %148 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev251 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %148, i32 0, i32 12
  %colWidth252 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev251, i32 0, i32 3
  %149 = bitcast [100 x i32]* %colWidth252 to i8*
  %150 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth253 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %150, i32 0, i32 9
  %151 = bitcast [100 x i32]* %colWidth253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* %151, i64 400, i32 4, i1 false)
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.242, %if.then.240
  %152 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode255 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %152, i32 0, i32 4
  store i32 9, i32* %mode255, align 4
  %153 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %showHeader256 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %153, i32 0, i32 6
  store i32 1, i32* %showHeader256, align 4
  %154 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth257 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %154, i32 0, i32 9
  %155 = bitcast [100 x i32]* %colWidth257 to i8*
  call void @llvm.memset.p0i8.i64(i8* %155, i8 0, i64 100, i32 4, i1 false)
  %156 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth258 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %156, i32 0, i32 9
  %arrayidx259 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth258, i32 0, i64 0
  store i32 4, i32* %arrayidx259, align 4
  %157 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth260 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %157, i32 0, i32 9
  %arrayidx261 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth260, i32 0, i64 1
  store i32 13, i32* %arrayidx261, align 4
  %158 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth262 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %158, i32 0, i32 9
  %arrayidx263 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth262, i32 0, i64 2
  store i32 4, i32* %arrayidx263, align 4
  %159 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth264 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %159, i32 0, i32 9
  %arrayidx265 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth264, i32 0, i64 3
  store i32 4, i32* %arrayidx265, align 4
  %160 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth266 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %160, i32 0, i32 9
  %arrayidx267 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth266, i32 0, i64 4
  store i32 4, i32* %arrayidx267, align 4
  %161 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth268 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %161, i32 0, i32 9
  %arrayidx269 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth268, i32 0, i64 5
  store i32 13, i32* %arrayidx269, align 4
  %162 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth270 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %162, i32 0, i32 9
  %arrayidx271 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth270, i32 0, i64 6
  store i32 2, i32* %arrayidx271, align 4
  %163 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth272 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %163, i32 0, i32 9
  %arrayidx273 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth272, i32 0, i64 7
  store i32 13, i32* %arrayidx273, align 4
  br label %if.end.291

if.else.274:                                      ; preds = %cond.end
  %164 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev275 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %164, i32 0, i32 12
  %valid276 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev275, i32 0, i32 0
  %165 = load i32, i32* %valid276, align 4
  %tobool277 = icmp ne i32 %165, 0
  br i1 %tobool277, label %if.then.278, label %if.end.290

if.then.278:                                      ; preds = %if.else.274
  %166 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev279 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %166, i32 0, i32 12
  %valid280 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev279, i32 0, i32 0
  store i32 0, i32* %valid280, align 4
  %167 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev281 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %167, i32 0, i32 12
  %mode282 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev281, i32 0, i32 1
  %168 = load i32, i32* %mode282, align 4
  %169 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode283 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %169, i32 0, i32 4
  store i32 %168, i32* %mode283, align 4
  %170 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev284 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %170, i32 0, i32 12
  %showHeader285 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev284, i32 0, i32 2
  %171 = load i32, i32* %showHeader285, align 4
  %172 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %showHeader286 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %172, i32 0, i32 6
  store i32 %171, i32* %showHeader286, align 4
  %173 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth287 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %173, i32 0, i32 9
  %174 = bitcast [100 x i32]* %colWidth287 to i8*
  %175 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev288 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %175, i32 0, i32 12
  %colWidth289 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev288, i32 0, i32 3
  %176 = bitcast [100 x i32]* %colWidth289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %174, i8* %176, i64 400, i32 4, i1 false)
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.278, %if.else.274
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.254
  br label %if.end.1122

if.else.292:                                      ; preds = %land.lhs.true.227, %if.else.224
  %177 = load i32, i32* %c, align 4
  %cmp293 = icmp eq i32 %177, 104
  br i1 %cmp293, label %land.lhs.true.295, label %if.else.314

land.lhs.true.295:                                ; preds = %if.else.292
  %arrayidx296 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %178 = load i8*, i8** %arrayidx296, align 8
  %179 = load i32, i32* %n, align 4
  %conv297 = sext i32 %179 to i64
  %call298 = call i32 @strncmp(i8* %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i64 %conv297) #7
  %cmp299 = icmp eq i32 %call298, 0
  br i1 %cmp299, label %land.lhs.true.307, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %land.lhs.true.295
  %arrayidx302 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %180 = load i8*, i8** %arrayidx302, align 8
  %181 = load i32, i32* %n, align 4
  %conv303 = sext i32 %181 to i64
  %call304 = call i32 @strncmp(i8* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i64 %conv303) #7
  %cmp305 = icmp eq i32 %call304, 0
  br i1 %cmp305, label %land.lhs.true.307, label %if.else.314

land.lhs.true.307:                                ; preds = %lor.lhs.false.301, %land.lhs.true.295
  %182 = load i32, i32* %nArg, align 4
  %cmp308 = icmp sgt i32 %182, 1
  br i1 %cmp308, label %if.then.310, label %if.else.314

if.then.310:                                      ; preds = %land.lhs.true.307
  %arrayidx311 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %183 = load i8*, i8** %arrayidx311, align 8
  %call312 = call i32 @booleanValue(i8* %183)
  %184 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %showHeader313 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %184, i32 0, i32 6
  store i32 %call312, i32* %showHeader313, align 4
  br label %if.end.1121

if.else.314:                                      ; preds = %land.lhs.true.307, %lor.lhs.false.301, %if.else.292
  %185 = load i32, i32* %c, align 4
  %cmp315 = icmp eq i32 %185, 104
  br i1 %cmp315, label %land.lhs.true.317, label %if.else.325

land.lhs.true.317:                                ; preds = %if.else.314
  %arrayidx318 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %186 = load i8*, i8** %arrayidx318, align 8
  %187 = load i32, i32* %n, align 4
  %conv319 = sext i32 %187 to i64
  %call320 = call i32 @strncmp(i8* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i64 %conv319) #7
  %cmp321 = icmp eq i32 %call320, 0
  br i1 %cmp321, label %if.then.323, label %if.else.325

if.then.323:                                      ; preds = %land.lhs.true.317
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call324 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([1855 x i8], [1855 x i8]* @zHelp, i32 0, i32 0))
  br label %if.end.1120

if.else.325:                                      ; preds = %land.lhs.true.317, %if.else.314
  %189 = load i32, i32* %c, align 4
  %cmp326 = icmp eq i32 %189, 105
  br i1 %cmp326, label %land.lhs.true.328, label %if.else.504

land.lhs.true.328:                                ; preds = %if.else.325
  %arrayidx329 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %190 = load i8*, i8** %arrayidx329, align 8
  %191 = load i32, i32* %n, align 4
  %conv330 = sext i32 %191 to i64
  %call331 = call i32 @strncmp(i8* %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i64 %conv330) #7
  %cmp332 = icmp eq i32 %call331, 0
  br i1 %cmp332, label %land.lhs.true.334, label %if.else.504

land.lhs.true.334:                                ; preds = %land.lhs.true.328
  %192 = load i32, i32* %nArg, align 4
  %cmp335 = icmp sge i32 %192, 3
  br i1 %cmp335, label %if.then.337, label %if.else.504

if.then.337:                                      ; preds = %land.lhs.true.334
  %arrayidx338 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 2
  %193 = load i8*, i8** %arrayidx338, align 8
  store i8* %193, i8** %zTable, align 8
  %arrayidx339 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %194 = load i8*, i8** %arrayidx339, align 8
  store i8* %194, i8** %zFile, align 8
  store i32 0, i32* %lineno, align 4
  %195 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  call void @open_db(%struct.callback_data* %195)
  %196 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator = getelementptr inbounds %struct.callback_data, %struct.callback_data* %196, i32 0, i32 8
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %separator, i32 0, i32 0
  %call343 = call i64 @strlen(i8* %arraydecay) #7
  %conv344 = trunc i64 %call343 to i32
  store i32 %conv344, i32* %nSep, align 4
  %197 = load i32, i32* %nSep, align 4
  %cmp345 = icmp eq i32 %197, 0
  br i1 %cmp345, label %if.then.347, label %if.end.349

if.then.347:                                      ; preds = %if.then.337
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call348 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.349:                                       ; preds = %if.then.337
  %199 = load i8*, i8** %zTable, align 8
  %call350 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i32 0, i32 0), i8* %199)
  store i8* %call350, i8** %zSql, align 8
  %200 = load i8*, i8** %zSql, align 8
  %cmp351 = icmp eq i8* %200, null
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %if.end.349
  store i32 0, i32* %retval
  br label %return

if.end.354:                                       ; preds = %if.end.349
  %201 = load i8*, i8** %zSql, align 8
  %call355 = call i64 @strlen(i8* %201) #7
  %conv356 = trunc i64 %call355 to i32
  store i32 %conv356, i32* %nByte, align 4
  %202 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db357 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %202, i32 0, i32 0
  %203 = load %struct.sqlite3*, %struct.sqlite3** %db357, align 8
  %204 = load i8*, i8** %zSql, align 8
  %call358 = call i32 @sqlite3_prepare(%struct.sqlite3* %203, i8* %204, i32 -1, %struct.sqlite3_stmt** %pStmt, i8** null)
  store i32 %call358, i32* %rc340, align 4
  %205 = load i8*, i8** %zSql, align 8
  call void @sqlite3_free(i8* %205)
  %206 = load i32, i32* %rc340, align 4
  %tobool359 = icmp ne i32 %206, 0
  br i1 %tobool359, label %if.then.360, label %if.else.363

if.then.360:                                      ; preds = %if.end.354
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %208 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %call361 = call i8* @sqlite3_errmsg(%struct.sqlite3* %208)
  %call362 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %call361)
  store i32 0, i32* %nCol, align 4
  store i32 1, i32* %rc340, align 4
  br label %if.end.365

if.else.363:                                      ; preds = %if.end.354
  %209 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pStmt, align 8
  %call364 = call i32 @sqlite3_column_count(%struct.sqlite3_stmt* %209)
  store i32 %call364, i32* %nCol, align 4
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.363, %if.then.360
  %210 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pStmt, align 8
  %call366 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %210)
  %211 = load i32, i32* %nCol, align 4
  %cmp367 = icmp eq i32 %211, 0
  br i1 %cmp367, label %if.then.369, label %if.end.370

if.then.369:                                      ; preds = %if.end.365
  store i32 0, i32* %retval
  br label %return

if.end.370:                                       ; preds = %if.end.365
  %212 = load i32, i32* %nByte, align 4
  %add = add nsw i32 %212, 20
  %213 = load i32, i32* %nCol, align 4
  %mul = mul nsw i32 %213, 2
  %add371 = add nsw i32 %add, %mul
  %conv372 = sext i32 %add371 to i64
  %call373 = call noalias i8* @malloc(i64 %conv372) #3
  store i8* %call373, i8** %zSql, align 8
  %214 = load i8*, i8** %zSql, align 8
  %cmp374 = icmp eq i8* %214, null
  br i1 %cmp374, label %if.then.376, label %if.end.377

if.then.376:                                      ; preds = %if.end.370
  store i32 0, i32* %retval
  br label %return

if.end.377:                                       ; preds = %if.end.370
  %215 = load i32, i32* %nByte, align 4
  %add378 = add nsw i32 %215, 20
  %216 = load i8*, i8** %zSql, align 8
  %217 = load i8*, i8** %zTable, align 8
  %call379 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %add378, i8* %216, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.61, i32 0, i32 0), i8* %217)
  %218 = load i8*, i8** %zSql, align 8
  %call380 = call i64 @strlen(i8* %218) #7
  %conv381 = trunc i64 %call380 to i32
  store i32 %conv381, i32* %j, align 4
  store i32 1, i32* %i341, align 4
  br label %for.cond.382

for.cond.382:                                     ; preds = %for.inc.392, %if.end.377
  %219 = load i32, i32* %i341, align 4
  %220 = load i32, i32* %nCol, align 4
  %cmp383 = icmp slt i32 %219, %220
  br i1 %cmp383, label %for.body.385, label %for.end.394

for.body.385:                                     ; preds = %for.cond.382
  %221 = load i32, i32* %j, align 4
  %inc386 = add nsw i32 %221, 1
  store i32 %inc386, i32* %j, align 4
  %idxprom387 = sext i32 %221 to i64
  %222 = load i8*, i8** %zSql, align 8
  %arrayidx388 = getelementptr inbounds i8, i8* %222, i64 %idxprom387
  store i8 44, i8* %arrayidx388, align 1
  %223 = load i32, i32* %j, align 4
  %inc389 = add nsw i32 %223, 1
  store i32 %inc389, i32* %j, align 4
  %idxprom390 = sext i32 %223 to i64
  %224 = load i8*, i8** %zSql, align 8
  %arrayidx391 = getelementptr inbounds i8, i8* %224, i64 %idxprom390
  store i8 63, i8* %arrayidx391, align 1
  br label %for.inc.392

for.inc.392:                                      ; preds = %for.body.385
  %225 = load i32, i32* %i341, align 4
  %inc393 = add nsw i32 %225, 1
  store i32 %inc393, i32* %i341, align 4
  br label %for.cond.382

for.end.394:                                      ; preds = %for.cond.382
  %226 = load i32, i32* %j, align 4
  %inc395 = add nsw i32 %226, 1
  store i32 %inc395, i32* %j, align 4
  %idxprom396 = sext i32 %226 to i64
  %227 = load i8*, i8** %zSql, align 8
  %arrayidx397 = getelementptr inbounds i8, i8* %227, i64 %idxprom396
  store i8 41, i8* %arrayidx397, align 1
  %228 = load i32, i32* %j, align 4
  %idxprom398 = sext i32 %228 to i64
  %229 = load i8*, i8** %zSql, align 8
  %arrayidx399 = getelementptr inbounds i8, i8* %229, i64 %idxprom398
  store i8 0, i8* %arrayidx399, align 1
  %230 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db400 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %230, i32 0, i32 0
  %231 = load %struct.sqlite3*, %struct.sqlite3** %db400, align 8
  %232 = load i8*, i8** %zSql, align 8
  %call401 = call i32 @sqlite3_prepare(%struct.sqlite3* %231, i8* %232, i32 -1, %struct.sqlite3_stmt** %pStmt, i8** null)
  store i32 %call401, i32* %rc340, align 4
  %233 = load i8*, i8** %zSql, align 8
  call void @free(i8* %233) #3
  %234 = load i32, i32* %rc340, align 4
  %tobool402 = icmp ne i32 %234, 0
  br i1 %tobool402, label %if.then.403, label %if.end.407

if.then.403:                                      ; preds = %for.end.394
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %236 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %call404 = call i8* @sqlite3_errmsg(%struct.sqlite3* %236)
  %call405 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %235, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %call404)
  %237 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pStmt, align 8
  %call406 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %237)
  store i32 1, i32* %retval
  br label %return

if.end.407:                                       ; preds = %for.end.394
  %238 = load i8*, i8** %zFile, align 8
  %call408 = call %struct._IO_FILE* @fopen(i8* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  store %struct._IO_FILE* %call408, %struct._IO_FILE** %in, align 8
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %cmp409 = icmp eq %struct._IO_FILE* %239, null
  br i1 %cmp409, label %if.then.411, label %if.end.414

if.then.411:                                      ; preds = %if.end.407
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %241 = load i8*, i8** %zFile, align 8
  %call412 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %240, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0), i8* %241)
  %242 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pStmt, align 8
  %call413 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %242)
  store i32 0, i32* %retval
  br label %return

if.end.414:                                       ; preds = %if.end.407
  %243 = load i32, i32* %nCol, align 4
  %add415 = add nsw i32 %243, 1
  %conv416 = sext i32 %add415 to i64
  %mul417 = mul i64 8, %conv416
  %call418 = call noalias i8* @malloc(i64 %mul417) #3
  %244 = bitcast i8* %call418 to i8**
  store i8** %244, i8*** %azCol, align 8
  %245 = load i8**, i8*** %azCol, align 8
  %cmp419 = icmp eq i8** %245, null
  br i1 %cmp419, label %if.then.421, label %if.end.423

if.then.421:                                      ; preds = %if.end.414
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call422 = call i32 @fclose(%struct._IO_FILE* %246)
  store i32 0, i32* %retval
  br label %return

if.end.423:                                       ; preds = %if.end.414
  %247 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db424 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %247, i32 0, i32 0
  %248 = load %struct.sqlite3*, %struct.sqlite3** %db424, align 8
  %call425 = call i32 @sqlite3_exec(%struct.sqlite3* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 (i8*, i32, i8**, i8**)* null, i8* null, i8** null)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8** %zCommit, align 8
  br label %while.cond.426

while.cond.426:                                   ; preds = %if.end.498, %if.end.423
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call427 = call i8* @local_getline(i8* null, %struct._IO_FILE* %249)
  store i8* %call427, i8** %zLine342, align 8
  %cmp428 = icmp ne i8* %call427, null
  br i1 %cmp428, label %while.body.430, label %while.end.499

while.body.430:                                   ; preds = %while.cond.426
  store i32 0, i32* %i341, align 4
  %250 = load i32, i32* %lineno, align 4
  %inc431 = add nsw i32 %250, 1
  store i32 %inc431, i32* %lineno, align 4
  %251 = load i8*, i8** %zLine342, align 8
  %252 = load i8**, i8*** %azCol, align 8
  %arrayidx432 = getelementptr inbounds i8*, i8** %252, i64 0
  store i8* %251, i8** %arrayidx432, align 8
  store i32 0, i32* %i341, align 4
  %253 = load i8*, i8** %zLine342, align 8
  store i8* %253, i8** %z, align 8
  br label %for.cond.433

for.cond.433:                                     ; preds = %for.inc.471, %while.body.430
  %254 = load i8*, i8** %z, align 8
  %255 = load i8, i8* %254, align 1
  %conv434 = sext i8 %255 to i32
  %tobool435 = icmp ne i32 %conv434, 0
  br i1 %tobool435, label %land.lhs.true.436, label %land.end.444

land.lhs.true.436:                                ; preds = %for.cond.433
  %256 = load i8*, i8** %z, align 8
  %257 = load i8, i8* %256, align 1
  %conv437 = sext i8 %257 to i32
  %cmp438 = icmp ne i32 %conv437, 10
  br i1 %cmp438, label %land.rhs.440, label %land.end.444

land.rhs.440:                                     ; preds = %land.lhs.true.436
  %258 = load i8*, i8** %z, align 8
  %259 = load i8, i8* %258, align 1
  %conv441 = sext i8 %259 to i32
  %cmp442 = icmp ne i32 %conv441, 13
  br label %land.end.444

land.end.444:                                     ; preds = %land.rhs.440, %land.lhs.true.436, %for.cond.433
  %260 = phi i1 [ false, %land.lhs.true.436 ], [ false, %for.cond.433 ], [ %cmp442, %land.rhs.440 ]
  br i1 %260, label %for.body.445, label %for.end.472

for.body.445:                                     ; preds = %land.end.444
  %261 = load i8*, i8** %z, align 8
  %262 = load i8, i8* %261, align 1
  %conv446 = sext i8 %262 to i32
  %263 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator447 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %263, i32 0, i32 8
  %arrayidx448 = getelementptr inbounds [20 x i8], [20 x i8]* %separator447, i32 0, i64 0
  %264 = load i8, i8* %arrayidx448, align 1
  %conv449 = sext i8 %264 to i32
  %cmp450 = icmp eq i32 %conv446, %conv449
  br i1 %cmp450, label %land.lhs.true.452, label %if.end.470

land.lhs.true.452:                                ; preds = %for.body.445
  %265 = load i8*, i8** %z, align 8
  %266 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator453 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %266, i32 0, i32 8
  %arraydecay454 = getelementptr inbounds [20 x i8], [20 x i8]* %separator453, i32 0, i32 0
  %267 = load i32, i32* %nSep, align 4
  %conv455 = sext i32 %267 to i64
  %call456 = call i32 @strncmp(i8* %265, i8* %arraydecay454, i64 %conv455) #7
  %cmp457 = icmp eq i32 %call456, 0
  br i1 %cmp457, label %if.then.459, label %if.end.470

if.then.459:                                      ; preds = %land.lhs.true.452
  %268 = load i8*, i8** %z, align 8
  store i8 0, i8* %268, align 1
  %269 = load i32, i32* %i341, align 4
  %inc460 = add nsw i32 %269, 1
  store i32 %inc460, i32* %i341, align 4
  %270 = load i32, i32* %i341, align 4
  %271 = load i32, i32* %nCol, align 4
  %cmp461 = icmp slt i32 %270, %271
  br i1 %cmp461, label %if.then.463, label %if.end.469

if.then.463:                                      ; preds = %if.then.459
  %272 = load i32, i32* %nSep, align 4
  %idxprom464 = sext i32 %272 to i64
  %273 = load i8*, i8** %z, align 8
  %arrayidx465 = getelementptr inbounds i8, i8* %273, i64 %idxprom464
  %274 = load i32, i32* %i341, align 4
  %idxprom466 = sext i32 %274 to i64
  %275 = load i8**, i8*** %azCol, align 8
  %arrayidx467 = getelementptr inbounds i8*, i8** %275, i64 %idxprom466
  store i8* %arrayidx465, i8** %arrayidx467, align 8
  %276 = load i32, i32* %nSep, align 4
  %sub468 = sub nsw i32 %276, 1
  %277 = load i8*, i8** %z, align 8
  %idx.ext = sext i32 %sub468 to i64
  %add.ptr = getelementptr inbounds i8, i8* %277, i64 %idx.ext
  store i8* %add.ptr, i8** %z, align 8
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.463, %if.then.459
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.469, %land.lhs.true.452, %for.body.445
  br label %for.inc.471

for.inc.471:                                      ; preds = %if.end.470
  %278 = load i8*, i8** %z, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %incdec.ptr, i8** %z, align 8
  br label %for.cond.433

for.end.472:                                      ; preds = %land.end.444
  %279 = load i8*, i8** %z, align 8
  store i8 0, i8* %279, align 1
  %280 = load i32, i32* %i341, align 4
  %add473 = add nsw i32 %280, 1
  %281 = load i32, i32* %nCol, align 4
  %cmp474 = icmp ne i32 %add473, %281
  br i1 %cmp474, label %if.then.476, label %if.end.479

if.then.476:                                      ; preds = %for.end.472
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %283 = load i8*, i8** %zFile, align 8
  %284 = load i32, i32* %lineno, align 4
  %285 = load i32, i32* %nCol, align 4
  %286 = load i32, i32* %i341, align 4
  %add477 = add nsw i32 %286, 1
  %call478 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %282, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.65, i32 0, i32 0), i8* %283, i32 %284, i32 %285, i32 %add477)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8** %zCommit, align 8
  br label %while.end.499

if.end.479:                                       ; preds = %for.end.472
  store i32 0, i32* %i341, align 4
  br label %for.cond.480

for.cond.480:                                     ; preds = %for.inc.488, %if.end.479
  %287 = load i32, i32* %i341, align 4
  %288 = load i32, i32* %nCol, align 4
  %cmp481 = icmp slt i32 %287, %288
  br i1 %cmp481, label %for.body.483, label %for.end.490

for.body.483:                                     ; preds = %for.cond.480
  %289 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pStmt, align 8
  %290 = load i32, i32* %i341, align 4
  %add484 = add nsw i32 %290, 1
  %291 = load i32, i32* %i341, align 4
  %idxprom485 = sext i32 %291 to i64
  %292 = load i8**, i8*** %azCol, align 8
  %arrayidx486 = getelementptr inbounds i8*, i8** %292, i64 %idxprom485
  %293 = load i8*, i8** %arrayidx486, align 8
  %call487 = call i32 @sqlite3_bind_text(%struct.sqlite3_stmt* %289, i32 %add484, i8* %293, i32 -1, void (i8*)* null)
  br label %for.inc.488

for.inc.488:                                      ; preds = %for.body.483
  %294 = load i32, i32* %i341, align 4
  %inc489 = add nsw i32 %294, 1
  store i32 %inc489, i32* %i341, align 4
  br label %for.cond.480

for.end.490:                                      ; preds = %for.cond.480
  %295 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pStmt, align 8
  %call491 = call i32 @sqlite3_step(%struct.sqlite3_stmt* %295)
  %296 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pStmt, align 8
  %call492 = call i32 @sqlite3_reset(%struct.sqlite3_stmt* %296)
  store i32 %call492, i32* %rc340, align 4
  %297 = load i8*, i8** %zLine342, align 8
  call void @free(i8* %297) #3
  %298 = load i32, i32* %rc340, align 4
  %cmp493 = icmp ne i32 %298, 0
  br i1 %cmp493, label %if.then.495, label %if.end.498

if.then.495:                                      ; preds = %for.end.490
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %300 = load %struct.sqlite3*, %struct.sqlite3** @db, align 8
  %call496 = call i8* @sqlite3_errmsg(%struct.sqlite3* %300)
  %call497 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %299, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %call496)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8** %zCommit, align 8
  store i32 1, i32* %rc340, align 4
  br label %while.end.499

if.end.498:                                       ; preds = %for.end.490
  br label %while.cond.426

while.end.499:                                    ; preds = %if.then.495, %if.then.476, %while.cond.426
  %301 = load i8**, i8*** %azCol, align 8
  %302 = bitcast i8** %301 to i8*
  call void @free(i8* %302) #3
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call500 = call i32 @fclose(%struct._IO_FILE* %303)
  %304 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pStmt, align 8
  %call501 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %304)
  %305 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db502 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %305, i32 0, i32 0
  %306 = load %struct.sqlite3*, %struct.sqlite3** %db502, align 8
  %307 = load i8*, i8** %zCommit, align 8
  %call503 = call i32 @sqlite3_exec(%struct.sqlite3* %306, i8* %307, i32 (i8*, i32, i8**, i8**)* null, i8* null, i8** null)
  br label %if.end.1119

if.else.504:                                      ; preds = %land.lhs.true.334, %land.lhs.true.328, %if.else.325
  %308 = load i32, i32* %c, align 4
  %cmp505 = icmp eq i32 %308, 105
  br i1 %cmp505, label %land.lhs.true.507, label %if.else.528

land.lhs.true.507:                                ; preds = %if.else.504
  %arrayidx508 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %309 = load i8*, i8** %arrayidx508, align 8
  %310 = load i32, i32* %n, align 4
  %conv509 = sext i32 %310 to i64
  %call510 = call i32 @strncmp(i8* %309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i64 %conv509) #7
  %cmp511 = icmp eq i32 %call510, 0
  br i1 %cmp511, label %land.lhs.true.513, label %if.else.528

land.lhs.true.513:                                ; preds = %land.lhs.true.507
  %311 = load i32, i32* %nArg, align 4
  %cmp514 = icmp sgt i32 %311, 1
  br i1 %cmp514, label %if.then.516, label %if.else.528

if.then.516:                                      ; preds = %land.lhs.true.513
  store i8* null, i8** %zErrMsg518, align 8
  %312 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  call void @open_db(%struct.callback_data* %312)
  %313 = bitcast %struct.callback_data* %data517 to i8*
  %314 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %315 = bitcast %struct.callback_data* %314 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %313, i8* %315, i64 5408, i32 8, i1 false)
  %showHeader519 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data517, i32 0, i32 6
  store i32 0, i32* %showHeader519, align 4
  %mode520 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data517, i32 0, i32 4
  store i32 2, i32* %mode520, align 4
  %arrayidx521 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %316 = load i8*, i8** %arrayidx521, align 8
  store i8* %316, i8** @zShellStatic, align 8
  %317 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db522 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %317, i32 0, i32 0
  %318 = load %struct.sqlite3*, %struct.sqlite3** %db522, align 8
  %319 = bitcast %struct.callback_data* %data517 to i8*
  %call523 = call i32 @sqlite3_exec(%struct.sqlite3* %318, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.68, i32 0, i32 0), i32 (i8*, i32, i8**, i8**)* @callback, i8* %319, i8** %zErrMsg518)
  store i8* null, i8** @zShellStatic, align 8
  %320 = load i8*, i8** %zErrMsg518, align 8
  %tobool524 = icmp ne i8* %320, null
  br i1 %tobool524, label %if.then.525, label %if.end.527

if.then.525:                                      ; preds = %if.then.516
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %322 = load i8*, i8** %zErrMsg518, align 8
  %call526 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %321, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %322)
  %323 = load i8*, i8** %zErrMsg518, align 8
  call void @sqlite3_free(i8* %323)
  br label %if.end.527

if.end.527:                                       ; preds = %if.then.525, %if.then.516
  br label %if.end.1118

if.else.528:                                      ; preds = %land.lhs.true.513, %land.lhs.true.507, %if.else.504
  %324 = load i32, i32* %c, align 4
  %cmp529 = icmp eq i32 %324, 109
  br i1 %cmp529, label %land.lhs.true.531, label %if.else.641

land.lhs.true.531:                                ; preds = %if.else.528
  %arrayidx532 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %325 = load i8*, i8** %arrayidx532, align 8
  %326 = load i32, i32* %n, align 4
  %conv533 = sext i32 %326 to i64
  %call534 = call i32 @strncmp(i8* %325, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i64 %conv533) #7
  %cmp535 = icmp eq i32 %call534, 0
  br i1 %cmp535, label %land.lhs.true.537, label %if.else.641

land.lhs.true.537:                                ; preds = %land.lhs.true.531
  %327 = load i32, i32* %nArg, align 4
  %cmp538 = icmp sge i32 %327, 2
  br i1 %cmp538, label %if.then.540, label %if.else.641

if.then.540:                                      ; preds = %land.lhs.true.537
  %arrayidx541 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %328 = load i8*, i8** %arrayidx541, align 8
  %call542 = call i64 @strlen(i8* %328) #7
  %conv543 = trunc i64 %call542 to i32
  store i32 %conv543, i32* %n2, align 4
  %arrayidx544 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %329 = load i8*, i8** %arrayidx544, align 8
  %330 = load i32, i32* %n2, align 4
  %conv545 = sext i32 %330 to i64
  %call546 = call i32 @strncmp(i8* %329, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i64 %conv545) #7
  %cmp547 = icmp eq i32 %call546, 0
  br i1 %cmp547, label %if.then.555, label %lor.lhs.false.549

lor.lhs.false.549:                                ; preds = %if.then.540
  %arrayidx550 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %331 = load i8*, i8** %arrayidx550, align 8
  %332 = load i32, i32* %n2, align 4
  %conv551 = sext i32 %332 to i64
  %call552 = call i32 @strncmp(i8* %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i64 %conv551) #7
  %cmp553 = icmp eq i32 %call552, 0
  br i1 %cmp553, label %if.then.555, label %if.else.557

if.then.555:                                      ; preds = %lor.lhs.false.549, %if.then.540
  %333 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode556 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %333, i32 0, i32 4
  store i32 0, i32* %mode556, align 4
  br label %if.end.640

if.else.557:                                      ; preds = %lor.lhs.false.549
  %arrayidx558 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %334 = load i8*, i8** %arrayidx558, align 8
  %335 = load i32, i32* %n2, align 4
  %conv559 = sext i32 %335 to i64
  %call560 = call i32 @strncmp(i8* %334, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i64 %conv559) #7
  %cmp561 = icmp eq i32 %call560, 0
  br i1 %cmp561, label %if.then.569, label %lor.lhs.false.563

lor.lhs.false.563:                                ; preds = %if.else.557
  %arrayidx564 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %336 = load i8*, i8** %arrayidx564, align 8
  %337 = load i32, i32* %n2, align 4
  %conv565 = sext i32 %337 to i64
  %call566 = call i32 @strncmp(i8* %336, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i64 %conv565) #7
  %cmp567 = icmp eq i32 %call566, 0
  br i1 %cmp567, label %if.then.569, label %if.else.571

if.then.569:                                      ; preds = %lor.lhs.false.563, %if.else.557
  %338 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode570 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %338, i32 0, i32 4
  store i32 1, i32* %mode570, align 4
  br label %if.end.639

if.else.571:                                      ; preds = %lor.lhs.false.563
  %arrayidx572 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %339 = load i8*, i8** %arrayidx572, align 8
  %340 = load i32, i32* %n2, align 4
  %conv573 = sext i32 %340 to i64
  %call574 = call i32 @strncmp(i8* %339, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i64 %conv573) #7
  %cmp575 = icmp eq i32 %call574, 0
  br i1 %cmp575, label %if.then.577, label %if.else.579

if.then.577:                                      ; preds = %if.else.571
  %341 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode578 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %341, i32 0, i32 4
  store i32 2, i32* %mode578, align 4
  br label %if.end.638

if.else.579:                                      ; preds = %if.else.571
  %arrayidx580 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %342 = load i8*, i8** %arrayidx580, align 8
  %343 = load i32, i32* %n2, align 4
  %conv581 = sext i32 %343 to i64
  %call582 = call i32 @strncmp(i8* %342, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i32 0, i32 0), i64 %conv581) #7
  %cmp583 = icmp eq i32 %call582, 0
  br i1 %cmp583, label %if.then.585, label %if.else.587

if.then.585:                                      ; preds = %if.else.579
  %344 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode586 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %344, i32 0, i32 4
  store i32 4, i32* %mode586, align 4
  br label %if.end.637

if.else.587:                                      ; preds = %if.else.579
  %arrayidx588 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %345 = load i8*, i8** %arrayidx588, align 8
  %346 = load i32, i32* %n2, align 4
  %conv589 = sext i32 %346 to i64
  %call590 = call i32 @strncmp(i8* %345, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), i64 %conv589) #7
  %cmp591 = icmp eq i32 %call590, 0
  br i1 %cmp591, label %if.then.593, label %if.else.595

if.then.593:                                      ; preds = %if.else.587
  %347 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode594 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %347, i32 0, i32 4
  store i32 6, i32* %mode594, align 4
  br label %if.end.636

if.else.595:                                      ; preds = %if.else.587
  %arrayidx596 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %348 = load i8*, i8** %arrayidx596, align 8
  %349 = load i32, i32* %n2, align 4
  %conv597 = sext i32 %349 to i64
  %call598 = call i32 @strncmp(i8* %348, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i64 %conv597) #7
  %cmp599 = icmp eq i32 %call598, 0
  br i1 %cmp599, label %if.then.601, label %if.else.606

if.then.601:                                      ; preds = %if.else.595
  %350 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode602 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %350, i32 0, i32 4
  store i32 7, i32* %mode602, align 4
  %351 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator603 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %351, i32 0, i32 8
  %arraydecay604 = getelementptr inbounds [20 x i8], [20 x i8]* %separator603, i32 0, i32 0
  %call605 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 20, i8* %arraydecay604, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.635

if.else.606:                                      ; preds = %if.else.595
  %arrayidx607 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %352 = load i8*, i8** %arrayidx607, align 8
  %353 = load i32, i32* %n2, align 4
  %conv608 = sext i32 %353 to i64
  %call609 = call i32 @strncmp(i8* %352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i64 %conv608) #7
  %cmp610 = icmp eq i32 %call609, 0
  br i1 %cmp610, label %if.then.612, label %if.else.617

if.then.612:                                      ; preds = %if.else.606
  %354 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode613 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %354, i32 0, i32 4
  store i32 2, i32* %mode613, align 4
  %355 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator614 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %355, i32 0, i32 8
  %arraydecay615 = getelementptr inbounds [20 x i8], [20 x i8]* %separator614, i32 0, i32 0
  %call616 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 20, i8* %arraydecay615, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i32 0, i32 0))
  br label %if.end.634

if.else.617:                                      ; preds = %if.else.606
  %arrayidx618 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %356 = load i8*, i8** %arrayidx618, align 8
  %357 = load i32, i32* %n2, align 4
  %conv619 = sext i32 %357 to i64
  %call620 = call i32 @strncmp(i8* %356, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i64 %conv619) #7
  %cmp621 = icmp eq i32 %call620, 0
  br i1 %cmp621, label %if.then.623, label %if.else.631

if.then.623:                                      ; preds = %if.else.617
  %358 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode624 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %358, i32 0, i32 4
  store i32 5, i32* %mode624, align 4
  %359 = load i32, i32* %nArg, align 4
  %cmp625 = icmp sge i32 %359, 3
  br i1 %cmp625, label %if.then.627, label %if.else.629

if.then.627:                                      ; preds = %if.then.623
  %360 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %arrayidx628 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 2
  %361 = load i8*, i8** %arrayidx628, align 8
  call void @set_table_name(%struct.callback_data* %360, i8* %361)
  br label %if.end.630

if.else.629:                                      ; preds = %if.then.623
  %362 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  call void @set_table_name(%struct.callback_data* %362, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0))
  br label %if.end.630

if.end.630:                                       ; preds = %if.else.629, %if.then.627
  br label %if.end.633

if.else.631:                                      ; preds = %if.else.617
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call632 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %363, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.82, i32 0, i32 0))
  br label %if.end.633

if.end.633:                                       ; preds = %if.else.631, %if.end.630
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %if.then.612
  br label %if.end.635

if.end.635:                                       ; preds = %if.end.634, %if.then.601
  br label %if.end.636

if.end.636:                                       ; preds = %if.end.635, %if.then.593
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.636, %if.then.585
  br label %if.end.638

if.end.638:                                       ; preds = %if.end.637, %if.then.577
  br label %if.end.639

if.end.639:                                       ; preds = %if.end.638, %if.then.569
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %if.then.555
  br label %if.end.1117

if.else.641:                                      ; preds = %land.lhs.true.537, %land.lhs.true.531, %if.else.528
  %364 = load i32, i32* %c, align 4
  %cmp642 = icmp eq i32 %364, 110
  br i1 %cmp642, label %land.lhs.true.644, label %if.else.657

land.lhs.true.644:                                ; preds = %if.else.641
  %arrayidx645 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %365 = load i8*, i8** %arrayidx645, align 8
  %366 = load i32, i32* %n, align 4
  %conv646 = sext i32 %366 to i64
  %call647 = call i32 @strncmp(i8* %365, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0), i64 %conv646) #7
  %cmp648 = icmp eq i32 %call647, 0
  br i1 %cmp648, label %land.lhs.true.650, label %if.else.657

land.lhs.true.650:                                ; preds = %land.lhs.true.644
  %367 = load i32, i32* %nArg, align 4
  %cmp651 = icmp eq i32 %367, 2
  br i1 %cmp651, label %if.then.653, label %if.else.657

if.then.653:                                      ; preds = %land.lhs.true.650
  %368 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %nullvalue = getelementptr inbounds %struct.callback_data, %struct.callback_data* %368, i32 0, i32 11
  %arraydecay654 = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue, i32 0, i32 0
  %arrayidx655 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %369 = load i8*, i8** %arrayidx655, align 8
  %call656 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 20, i8* %arraydecay654, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 19, i8* %369)
  br label %if.end.1116

if.else.657:                                      ; preds = %land.lhs.true.650, %land.lhs.true.644, %if.else.641
  %370 = load i32, i32* %c, align 4
  %cmp658 = icmp eq i32 %370, 111
  br i1 %cmp658, label %land.lhs.true.660, label %if.else.703

land.lhs.true.660:                                ; preds = %if.else.657
  %arrayidx661 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %371 = load i8*, i8** %arrayidx661, align 8
  %372 = load i32, i32* %n, align 4
  %conv662 = sext i32 %372 to i64
  %call663 = call i32 @strncmp(i8* %371, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i64 %conv662) #7
  %cmp664 = icmp eq i32 %call663, 0
  br i1 %cmp664, label %land.lhs.true.666, label %if.else.703

land.lhs.true.666:                                ; preds = %land.lhs.true.660
  %373 = load i32, i32* %nArg, align 4
  %cmp667 = icmp eq i32 %373, 2
  br i1 %cmp667, label %if.then.669, label %if.else.703

if.then.669:                                      ; preds = %land.lhs.true.666
  %374 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out670 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %374, i32 0, i32 3
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** %out670, align 8
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp671 = icmp ne %struct._IO_FILE* %375, %376
  br i1 %cmp671, label %if.then.673, label %if.end.676

if.then.673:                                      ; preds = %if.then.669
  %377 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out674 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %377, i32 0, i32 3
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** %out674, align 8
  %call675 = call i32 @fclose(%struct._IO_FILE* %378)
  br label %if.end.676

if.end.676:                                       ; preds = %if.then.673, %if.then.669
  %arrayidx677 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %379 = load i8*, i8** %arrayidx677, align 8
  %call678 = call i32 @strcmp(i8* %379, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0)) #7
  %cmp679 = icmp eq i32 %call678, 0
  br i1 %cmp679, label %if.then.681, label %if.else.685

if.then.681:                                      ; preds = %if.end.676
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %381 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out682 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %381, i32 0, i32 3
  store %struct._IO_FILE* %380, %struct._IO_FILE** %out682, align 8
  %382 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %outfile = getelementptr inbounds %struct.callback_data, %struct.callback_data* %382, i32 0, i32 13
  %arraydecay683 = getelementptr inbounds [4096 x i8], [4096 x i8]* %outfile, i32 0, i32 0
  %call684 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 4096, i8* %arraydecay683, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0))
  br label %if.end.702

if.else.685:                                      ; preds = %if.end.676
  %arrayidx686 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %383 = load i8*, i8** %arrayidx686, align 8
  %call687 = call %struct._IO_FILE* @fopen(i8* %383, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0))
  %384 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out688 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %384, i32 0, i32 3
  store %struct._IO_FILE* %call687, %struct._IO_FILE** %out688, align 8
  %385 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out689 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %385, i32 0, i32 3
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** %out689, align 8
  %cmp690 = icmp eq %struct._IO_FILE* %386, null
  br i1 %cmp690, label %if.then.692, label %if.else.696

if.then.692:                                      ; preds = %if.else.685
  %387 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arrayidx693 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %388 = load i8*, i8** %arrayidx693, align 8
  %call694 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %387, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), i8* %388)
  %389 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %390 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out695 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %390, i32 0, i32 3
  store %struct._IO_FILE* %389, %struct._IO_FILE** %out695, align 8
  br label %if.end.701

if.else.696:                                      ; preds = %if.else.685
  %391 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %outfile697 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %391, i32 0, i32 13
  %arraydecay698 = getelementptr inbounds [4096 x i8], [4096 x i8]* %outfile697, i32 0, i32 0
  %arrayidx699 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %392 = load i8*, i8** %arrayidx699, align 8
  %call700 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 4096, i8* %arraydecay698, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %392)
  br label %if.end.701

if.end.701:                                       ; preds = %if.else.696, %if.then.692
  br label %if.end.702

if.end.702:                                       ; preds = %if.end.701, %if.then.681
  br label %if.end.1115

if.else.703:                                      ; preds = %land.lhs.true.666, %land.lhs.true.660, %if.else.657
  %393 = load i32, i32* %c, align 4
  %cmp704 = icmp eq i32 %393, 112
  br i1 %cmp704, label %land.lhs.true.706, label %if.else.731

land.lhs.true.706:                                ; preds = %if.else.703
  %arrayidx707 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %394 = load i8*, i8** %arrayidx707, align 8
  %395 = load i32, i32* %n, align 4
  %conv708 = sext i32 %395 to i64
  %call709 = call i32 @strncmp(i8* %394, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i64 %conv708) #7
  %cmp710 = icmp eq i32 %call709, 0
  br i1 %cmp710, label %land.lhs.true.712, label %if.else.731

land.lhs.true.712:                                ; preds = %land.lhs.true.706
  %396 = load i32, i32* %nArg, align 4
  %cmp713 = icmp eq i32 %396, 2
  br i1 %cmp713, label %if.then.718, label %lor.lhs.false.715

lor.lhs.false.715:                                ; preds = %land.lhs.true.712
  %397 = load i32, i32* %nArg, align 4
  %cmp716 = icmp eq i32 %397, 3
  br i1 %cmp716, label %if.then.718, label %if.else.731

if.then.718:                                      ; preds = %lor.lhs.false.715, %land.lhs.true.712
  %398 = load i32, i32* %nArg, align 4
  %cmp719 = icmp sge i32 %398, 2
  br i1 %cmp719, label %if.then.721, label %if.end.724

if.then.721:                                      ; preds = %if.then.718
  %arrayidx722 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %399 = load i8*, i8** %arrayidx722, align 8
  %call723 = call i8* @strncpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @mainPrompt, i32 0, i32 0), i8* %399, i64 19) #3
  br label %if.end.724

if.end.724:                                       ; preds = %if.then.721, %if.then.718
  %400 = load i32, i32* %nArg, align 4
  %cmp725 = icmp sge i32 %400, 3
  br i1 %cmp725, label %if.then.727, label %if.end.730

if.then.727:                                      ; preds = %if.end.724
  %arrayidx728 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 2
  %401 = load i8*, i8** %arrayidx728, align 8
  %call729 = call i8* @strncpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @continuePrompt, i32 0, i32 0), i8* %401, i64 19) #3
  br label %if.end.730

if.end.730:                                       ; preds = %if.then.727, %if.end.724
  br label %if.end.1114

if.else.731:                                      ; preds = %lor.lhs.false.715, %land.lhs.true.706, %if.else.703
  %402 = load i32, i32* %c, align 4
  %cmp732 = icmp eq i32 %402, 113
  br i1 %cmp732, label %land.lhs.true.734, label %if.else.741

land.lhs.true.734:                                ; preds = %if.else.731
  %arrayidx735 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %403 = load i8*, i8** %arrayidx735, align 8
  %404 = load i32, i32* %n, align 4
  %conv736 = sext i32 %404 to i64
  %call737 = call i32 @strncmp(i8* %403, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i32 0, i32 0), i64 %conv736) #7
  %cmp738 = icmp eq i32 %call737, 0
  br i1 %cmp738, label %if.then.740, label %if.else.741

if.then.740:                                      ; preds = %land.lhs.true.734
  store i32 2, i32* %rc, align 4
  br label %if.end.1113

if.else.741:                                      ; preds = %land.lhs.true.734, %if.else.731
  %405 = load i32, i32* %c, align 4
  %cmp742 = icmp eq i32 %405, 114
  br i1 %cmp742, label %land.lhs.true.744, label %if.else.765

land.lhs.true.744:                                ; preds = %if.else.741
  %arrayidx745 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %406 = load i8*, i8** %arrayidx745, align 8
  %407 = load i32, i32* %n, align 4
  %conv746 = sext i32 %407 to i64
  %call747 = call i32 @strncmp(i8* %406, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), i64 %conv746) #7
  %cmp748 = icmp eq i32 %call747, 0
  br i1 %cmp748, label %land.lhs.true.750, label %if.else.765

land.lhs.true.750:                                ; preds = %land.lhs.true.744
  %408 = load i32, i32* %nArg, align 4
  %cmp751 = icmp eq i32 %408, 2
  br i1 %cmp751, label %if.then.753, label %if.else.765

if.then.753:                                      ; preds = %land.lhs.true.750
  %arrayidx754 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %409 = load i8*, i8** %arrayidx754, align 8
  %call755 = call %struct._IO_FILE* @fopen(i8* %409, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0))
  store %struct._IO_FILE* %call755, %struct._IO_FILE** %alt, align 8
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** %alt, align 8
  %cmp756 = icmp eq %struct._IO_FILE* %410, null
  br i1 %cmp756, label %if.then.758, label %if.else.761

if.then.758:                                      ; preds = %if.then.753
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arrayidx759 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %412 = load i8*, i8** %arrayidx759, align 8
  %call760 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %411, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), i8* %412)
  br label %if.end.764

if.else.761:                                      ; preds = %if.then.753
  %413 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %414 = load %struct._IO_FILE*, %struct._IO_FILE** %alt, align 8
  %call762 = call i32 @process_input(%struct.callback_data* %413, %struct._IO_FILE* %414)
  %415 = load %struct._IO_FILE*, %struct._IO_FILE** %alt, align 8
  %call763 = call i32 @fclose(%struct._IO_FILE* %415)
  br label %if.end.764

if.end.764:                                       ; preds = %if.else.761, %if.then.758
  br label %if.end.1112

if.else.765:                                      ; preds = %land.lhs.true.750, %land.lhs.true.744, %if.else.741
  %416 = load i32, i32* %c, align 4
  %cmp766 = icmp eq i32 %416, 115
  br i1 %cmp766, label %land.lhs.true.768, label %if.else.842

land.lhs.true.768:                                ; preds = %if.else.765
  %arrayidx769 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %417 = load i8*, i8** %arrayidx769, align 8
  %418 = load i32, i32* %n, align 4
  %conv770 = sext i32 %418 to i64
  %call771 = call i32 @strncmp(i8* %417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i64 %conv770) #7
  %cmp772 = icmp eq i32 %call771, 0
  br i1 %cmp772, label %if.then.774, label %if.else.842

if.then.774:                                      ; preds = %land.lhs.true.768
  store i8* null, i8** %zErrMsg776, align 8
  %419 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  call void @open_db(%struct.callback_data* %419)
  %420 = bitcast %struct.callback_data* %data775 to i8*
  %421 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %422 = bitcast %struct.callback_data* %421 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %420, i8* %422, i64 5408, i32 8, i1 false)
  %showHeader777 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data775, i32 0, i32 6
  store i32 0, i32* %showHeader777, align 4
  %mode778 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %data775, i32 0, i32 4
  store i32 3, i32* %mode778, align 4
  %423 = load i32, i32* %nArg, align 4
  %cmp779 = icmp sgt i32 %423, 1
  br i1 %cmp779, label %if.then.781, label %if.else.834

if.then.781:                                      ; preds = %if.then.774
  store i32 0, i32* %i782, align 4
  br label %for.cond.783

for.cond.783:                                     ; preds = %for.inc.798, %if.then.781
  %424 = load i32, i32* %i782, align 4
  %idxprom784 = sext i32 %424 to i64
  %arrayidx785 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %425 = load i8*, i8** %arrayidx785, align 8
  %arrayidx786 = getelementptr inbounds i8, i8* %425, i64 %idxprom784
  %426 = load i8, i8* %arrayidx786, align 1
  %tobool787 = icmp ne i8 %426, 0
  br i1 %tobool787, label %for.body.788, label %for.end.800

for.body.788:                                     ; preds = %for.cond.783
  %427 = load i32, i32* %i782, align 4
  %idxprom789 = sext i32 %427 to i64
  %arrayidx790 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %428 = load i8*, i8** %arrayidx790, align 8
  %arrayidx791 = getelementptr inbounds i8, i8* %428, i64 %idxprom789
  %429 = load i8, i8* %arrayidx791, align 1
  %conv792 = sext i8 %429 to i32
  %call793 = call i32 @tolower(i32 %conv792) #3
  %conv794 = trunc i32 %call793 to i8
  %430 = load i32, i32* %i782, align 4
  %idxprom795 = sext i32 %430 to i64
  %arrayidx796 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %431 = load i8*, i8** %arrayidx796, align 8
  %arrayidx797 = getelementptr inbounds i8, i8* %431, i64 %idxprom795
  store i8 %conv794, i8* %arrayidx797, align 1
  br label %for.inc.798

for.inc.798:                                      ; preds = %for.body.788
  %432 = load i32, i32* %i782, align 4
  %inc799 = add nsw i32 %432, 1
  store i32 %inc799, i32* %i782, align 4
  br label %for.cond.783

for.end.800:                                      ; preds = %for.cond.783
  %arrayidx801 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %433 = load i8*, i8** %arrayidx801, align 8
  %call802 = call i32 @strcmp(i8* %433, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0)) #7
  %cmp803 = icmp eq i32 %call802, 0
  br i1 %cmp803, label %if.then.805, label %if.else.813

if.then.805:                                      ; preds = %for.end.800
  %arrayidx806 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_argv, i32 0, i64 0
  store i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.95, i32 0, i32 0), i8** %arrayidx806, align 8
  %arrayidx807 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_argv, i32 0, i64 1
  store i8* null, i8** %arrayidx807, align 8
  %arrayidx808 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_colv, i32 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8** %arrayidx808, align 8
  %arrayidx809 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_colv, i32 0, i64 1
  store i8* null, i8** %arrayidx809, align 8
  %434 = bitcast %struct.callback_data* %data775 to i8*
  %arraydecay810 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_argv, i32 0, i32 0
  %arraydecay811 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_colv, i32 0, i32 0
  %call812 = call i32 @callback(i8* %434, i32 1, i8** %arraydecay810, i8** %arraydecay811)
  br label %if.end.833

if.else.813:                                      ; preds = %for.end.800
  %arrayidx814 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %435 = load i8*, i8** %arrayidx814, align 8
  %call815 = call i32 @strcmp(i8* %435, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i32 0, i32 0)) #7
  %cmp816 = icmp eq i32 %call815, 0
  br i1 %cmp816, label %if.then.818, label %if.else.828

if.then.818:                                      ; preds = %if.else.813
  %arrayidx821 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_argv819, i32 0, i64 0
  store i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.98, i32 0, i32 0), i8** %arrayidx821, align 8
  %arrayidx822 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_argv819, i32 0, i64 1
  store i8* null, i8** %arrayidx822, align 8
  %arrayidx823 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_colv820, i32 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8** %arrayidx823, align 8
  %arrayidx824 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_colv820, i32 0, i64 1
  store i8* null, i8** %arrayidx824, align 8
  %436 = bitcast %struct.callback_data* %data775 to i8*
  %arraydecay825 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_argv819, i32 0, i32 0
  %arraydecay826 = getelementptr inbounds [2 x i8*], [2 x i8*]* %new_colv820, i32 0, i32 0
  %call827 = call i32 @callback(i8* %436, i32 1, i8** %arraydecay825, i8** %arraydecay826)
  br label %if.end.832

if.else.828:                                      ; preds = %if.else.813
  %arrayidx829 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %437 = load i8*, i8** %arrayidx829, align 8
  store i8* %437, i8** @zShellStatic, align 8
  %438 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db830 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %438, i32 0, i32 0
  %439 = load %struct.sqlite3*, %struct.sqlite3** %db830, align 8
  %440 = bitcast %struct.callback_data* %data775 to i8*
  %call831 = call i32 @sqlite3_exec(%struct.sqlite3* %439, i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.99, i32 0, i32 0), i32 (i8*, i32, i8**, i8**)* @callback, i8* %440, i8** %zErrMsg776)
  store i8* null, i8** @zShellStatic, align 8
  br label %if.end.832

if.end.832:                                       ; preds = %if.else.828, %if.then.818
  br label %if.end.833

if.end.833:                                       ; preds = %if.end.832, %if.then.805
  br label %if.end.837

if.else.834:                                      ; preds = %if.then.774
  %441 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db835 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %441, i32 0, i32 0
  %442 = load %struct.sqlite3*, %struct.sqlite3** %db835, align 8
  %443 = bitcast %struct.callback_data* %data775 to i8*
  %call836 = call i32 @sqlite3_exec(%struct.sqlite3* %442, i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.100, i32 0, i32 0), i32 (i8*, i32, i8**, i8**)* @callback, i8* %443, i8** %zErrMsg776)
  br label %if.end.837

if.end.837:                                       ; preds = %if.else.834, %if.end.833
  %444 = load i8*, i8** %zErrMsg776, align 8
  %tobool838 = icmp ne i8* %444, null
  br i1 %tobool838, label %if.then.839, label %if.end.841

if.then.839:                                      ; preds = %if.end.837
  %445 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %446 = load i8*, i8** %zErrMsg776, align 8
  %call840 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %445, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %446)
  %447 = load i8*, i8** %zErrMsg776, align 8
  call void @sqlite3_free(i8* %447)
  br label %if.end.841

if.end.841:                                       ; preds = %if.then.839, %if.end.837
  br label %if.end.1111

if.else.842:                                      ; preds = %land.lhs.true.768, %if.else.765
  %448 = load i32, i32* %c, align 4
  %cmp843 = icmp eq i32 %448, 115
  br i1 %cmp843, label %land.lhs.true.845, label %if.else.859

land.lhs.true.845:                                ; preds = %if.else.842
  %arrayidx846 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %449 = load i8*, i8** %arrayidx846, align 8
  %450 = load i32, i32* %n, align 4
  %conv847 = sext i32 %450 to i64
  %call848 = call i32 @strncmp(i8* %449, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i64 %conv847) #7
  %cmp849 = icmp eq i32 %call848, 0
  br i1 %cmp849, label %land.lhs.true.851, label %if.else.859

land.lhs.true.851:                                ; preds = %land.lhs.true.845
  %451 = load i32, i32* %nArg, align 4
  %cmp852 = icmp eq i32 %451, 2
  br i1 %cmp852, label %if.then.854, label %if.else.859

if.then.854:                                      ; preds = %land.lhs.true.851
  %452 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator855 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %452, i32 0, i32 8
  %arraydecay856 = getelementptr inbounds [20 x i8], [20 x i8]* %separator855, i32 0, i32 0
  %arrayidx857 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %453 = load i8*, i8** %arrayidx857, align 8
  %call858 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 20, i8* %arraydecay856, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 19, i8* %453)
  br label %if.end.1110

if.else.859:                                      ; preds = %land.lhs.true.851, %land.lhs.true.845, %if.else.842
  %454 = load i32, i32* %c, align 4
  %cmp860 = icmp eq i32 %454, 115
  br i1 %cmp860, label %land.lhs.true.862, label %if.else.940

land.lhs.true.862:                                ; preds = %if.else.859
  %arrayidx863 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %455 = load i8*, i8** %arrayidx863, align 8
  %456 = load i32, i32* %n, align 4
  %conv864 = sext i32 %456 to i64
  %call865 = call i32 @strncmp(i8* %455, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i64 %conv864) #7
  %cmp866 = icmp eq i32 %call865, 0
  br i1 %cmp866, label %if.then.868, label %if.else.940

if.then.868:                                      ; preds = %land.lhs.true.862
  %457 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out870 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %457, i32 0, i32 3
  %458 = load %struct._IO_FILE*, %struct._IO_FILE** %out870, align 8
  %459 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %echoOn871 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %459, i32 0, i32 1
  %460 = load i32, i32* %echoOn871, align 4
  %tobool872 = icmp ne i32 %460, 0
  %cond873 = select i1 %tobool872, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0)
  %call874 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %458, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* %cond873)
  %461 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out875 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %461, i32 0, i32 3
  %462 = load %struct._IO_FILE*, %struct._IO_FILE** %out875, align 8
  %463 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %explainPrev876 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %463, i32 0, i32 12
  %valid877 = getelementptr inbounds %struct.previous_mode_data, %struct.previous_mode_data* %explainPrev876, i32 0, i32 0
  %464 = load i32, i32* %valid877, align 4
  %tobool878 = icmp ne i32 %464, 0
  %cond879 = select i1 %tobool878, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0)
  %call880 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %462, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* %cond879)
  %465 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out881 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %465, i32 0, i32 3
  %466 = load %struct._IO_FILE*, %struct._IO_FILE** %out881, align 8
  %467 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %showHeader882 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %467, i32 0, i32 6
  %468 = load i32, i32* %showHeader882, align 4
  %tobool883 = icmp ne i32 %468, 0
  %cond884 = select i1 %tobool883, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0)
  %call885 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %466, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* %cond884)
  %469 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out886 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %469, i32 0, i32 3
  %470 = load %struct._IO_FILE*, %struct._IO_FILE** %out886, align 8
  %471 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %mode887 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %471, i32 0, i32 4
  %472 = load i32, i32* %mode887, align 4
  %idxprom888 = sext i32 %472 to i64
  %arrayidx889 = getelementptr inbounds [8 x i8*], [8 x i8*]* @modeDescr, i32 0, i64 %idxprom888
  %473 = load i8*, i8** %arrayidx889, align 8
  %call890 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %470, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* %473)
  %474 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out891 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %474, i32 0, i32 3
  %475 = load %struct._IO_FILE*, %struct._IO_FILE** %out891, align 8
  %call892 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %475, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.83, i32 0, i32 0))
  %476 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out893 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %476, i32 0, i32 3
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** %out893, align 8
  %478 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %nullvalue894 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %478, i32 0, i32 11
  %arraydecay895 = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue894, i32 0, i32 0
  call void @output_c_string(%struct._IO_FILE* %477, i8* %arraydecay895)
  %479 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out896 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %479, i32 0, i32 3
  %480 = load %struct._IO_FILE*, %struct._IO_FILE** %out896, align 8
  %call897 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %480, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  %481 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out898 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %481, i32 0, i32 3
  %482 = load %struct._IO_FILE*, %struct._IO_FILE** %out898, align 8
  %483 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %outfile899 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %483, i32 0, i32 13
  %arraydecay900 = getelementptr inbounds [4096 x i8], [4096 x i8]* %outfile899, i32 0, i32 0
  %call901 = call i64 @strlen(i8* %arraydecay900) #7
  %tobool902 = icmp ne i64 %call901, 0
  br i1 %tobool902, label %cond.true.903, label %cond.false.906

cond.true.903:                                    ; preds = %if.then.868
  %484 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %outfile904 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %484, i32 0, i32 13
  %arraydecay905 = getelementptr inbounds [4096 x i8], [4096 x i8]* %outfile904, i32 0, i32 0
  br label %cond.end.907

cond.false.906:                                   ; preds = %if.then.868
  br label %cond.end.907

cond.end.907:                                     ; preds = %cond.false.906, %cond.true.903
  %cond908 = phi i8* [ %arraydecay905, %cond.true.903 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), %cond.false.906 ]
  %call909 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %482, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i32 0, i32 0), i8* %cond908)
  %485 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out910 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %485, i32 0, i32 3
  %486 = load %struct._IO_FILE*, %struct._IO_FILE** %out910, align 8
  %call911 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %486, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0))
  %487 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out912 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %487, i32 0, i32 3
  %488 = load %struct._IO_FILE*, %struct._IO_FILE** %out912, align 8
  %489 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator913 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %489, i32 0, i32 8
  %arraydecay914 = getelementptr inbounds [20 x i8], [20 x i8]* %separator913, i32 0, i32 0
  call void @output_c_string(%struct._IO_FILE* %488, i8* %arraydecay914)
  %490 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out915 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %490, i32 0, i32 3
  %491 = load %struct._IO_FILE*, %struct._IO_FILE** %out915, align 8
  %call916 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %491, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  %492 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out917 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %492, i32 0, i32 3
  %493 = load %struct._IO_FILE*, %struct._IO_FILE** %out917, align 8
  %call918 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %493, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0))
  store i32 0, i32* %i869, align 4
  br label %for.cond.919

for.cond.919:                                     ; preds = %for.inc.935, %cond.end.907
  %494 = load i32, i32* %i869, align 4
  %cmp920 = icmp slt i32 %494, 100
  br i1 %cmp920, label %land.rhs.922, label %land.end.928

land.rhs.922:                                     ; preds = %for.cond.919
  %495 = load i32, i32* %i869, align 4
  %idxprom923 = sext i32 %495 to i64
  %496 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth924 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %496, i32 0, i32 9
  %arrayidx925 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth924, i32 0, i64 %idxprom923
  %497 = load i32, i32* %arrayidx925, align 4
  %cmp926 = icmp ne i32 %497, 0
  br label %land.end.928

land.end.928:                                     ; preds = %land.rhs.922, %for.cond.919
  %498 = phi i1 [ false, %for.cond.919 ], [ %cmp926, %land.rhs.922 ]
  br i1 %498, label %for.body.929, label %for.end.937

for.body.929:                                     ; preds = %land.end.928
  %499 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out930 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %499, i32 0, i32 3
  %500 = load %struct._IO_FILE*, %struct._IO_FILE** %out930, align 8
  %501 = load i32, i32* %i869, align 4
  %idxprom931 = sext i32 %501 to i64
  %502 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth932 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %502, i32 0, i32 9
  %arrayidx933 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth932, i32 0, i64 %idxprom931
  %503 = load i32, i32* %arrayidx933, align 4
  %call934 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %500, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), i32 %503)
  br label %for.inc.935

for.inc.935:                                      ; preds = %for.body.929
  %504 = load i32, i32* %i869, align 4
  %inc936 = add nsw i32 %504, 1
  store i32 %inc936, i32* %i869, align 4
  br label %for.cond.919

for.end.937:                                      ; preds = %land.end.928
  %505 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out938 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %505, i32 0, i32 3
  %506 = load %struct._IO_FILE*, %struct._IO_FILE** %out938, align 8
  %call939 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %506, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end.1109

if.else.940:                                      ; preds = %land.lhs.true.862, %if.else.859
  %507 = load i32, i32* %c, align 4
  %cmp941 = icmp eq i32 %507, 116
  br i1 %cmp941, label %land.lhs.true.943, label %if.else.1034

land.lhs.true.943:                                ; preds = %if.else.940
  %508 = load i32, i32* %n, align 4
  %cmp944 = icmp sgt i32 %508, 1
  br i1 %cmp944, label %land.lhs.true.946, label %if.else.1034

land.lhs.true.946:                                ; preds = %land.lhs.true.943
  %arrayidx947 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %509 = load i8*, i8** %arrayidx947, align 8
  %510 = load i32, i32* %n, align 4
  %conv948 = sext i32 %510 to i64
  %call949 = call i32 @strncmp(i8* %509, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i64 %conv948) #7
  %cmp950 = icmp eq i32 %call949, 0
  br i1 %cmp950, label %if.then.952, label %if.else.1034

if.then.952:                                      ; preds = %land.lhs.true.946
  %511 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  call void @open_db(%struct.callback_data* %511)
  %512 = load i32, i32* %nArg, align 4
  %cmp955 = icmp eq i32 %512, 1
  br i1 %cmp955, label %if.then.957, label %if.else.960

if.then.957:                                      ; preds = %if.then.952
  %513 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db958 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %513, i32 0, i32 0
  %514 = load %struct.sqlite3*, %struct.sqlite3** %db958, align 8
  %call959 = call i32 @sqlite3_get_table(%struct.sqlite3* %514, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.111, i32 0, i32 0), i8*** %azResult, i32* %nRow, i32* null, i8** %zErrMsg954)
  store i32 %call959, i32* %rc953, align 4
  br label %if.end.964

if.else.960:                                      ; preds = %if.then.952
  %arrayidx961 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %515 = load i8*, i8** %arrayidx961, align 8
  store i8* %515, i8** @zShellStatic, align 8
  %516 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db962 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %516, i32 0, i32 0
  %517 = load %struct.sqlite3*, %struct.sqlite3** %db962, align 8
  %call963 = call i32 @sqlite3_get_table(%struct.sqlite3* %517, i8* getelementptr inbounds ([226 x i8], [226 x i8]* @.str.112, i32 0, i32 0), i8*** %azResult, i32* %nRow, i32* null, i8** %zErrMsg954)
  store i32 %call963, i32* %rc953, align 4
  store i8* null, i8** @zShellStatic, align 8
  br label %if.end.964

if.end.964:                                       ; preds = %if.else.960, %if.then.957
  %518 = load i8*, i8** %zErrMsg954, align 8
  %tobool965 = icmp ne i8* %518, null
  br i1 %tobool965, label %if.then.966, label %if.end.968

if.then.966:                                      ; preds = %if.end.964
  %519 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %520 = load i8*, i8** %zErrMsg954, align 8
  %call967 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %519, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %520)
  %521 = load i8*, i8** %zErrMsg954, align 8
  call void @sqlite3_free(i8* %521)
  br label %if.end.968

if.end.968:                                       ; preds = %if.then.966, %if.end.964
  %522 = load i32, i32* %rc953, align 4
  %cmp969 = icmp eq i32 %522, 0
  br i1 %cmp969, label %if.then.971, label %if.else.1032

if.then.971:                                      ; preds = %if.end.968
  store i32 0, i32* %maxlen, align 4
  store i32 1, i32* %i972, align 4
  br label %for.cond.974

for.cond.974:                                     ; preds = %for.inc.992, %if.then.971
  %523 = load i32, i32* %i972, align 4
  %524 = load i32, i32* %nRow, align 4
  %cmp975 = icmp sle i32 %523, %524
  br i1 %cmp975, label %for.body.977, label %for.end.994

for.body.977:                                     ; preds = %for.cond.974
  %525 = load i32, i32* %i972, align 4
  %idxprom978 = sext i32 %525 to i64
  %526 = load i8**, i8*** %azResult, align 8
  %arrayidx979 = getelementptr inbounds i8*, i8** %526, i64 %idxprom978
  %527 = load i8*, i8** %arrayidx979, align 8
  %cmp980 = icmp eq i8* %527, null
  br i1 %cmp980, label %if.then.982, label %if.end.983

if.then.982:                                      ; preds = %for.body.977
  br label %for.inc.992

if.end.983:                                       ; preds = %for.body.977
  %528 = load i32, i32* %i972, align 4
  %idxprom984 = sext i32 %528 to i64
  %529 = load i8**, i8*** %azResult, align 8
  %arrayidx985 = getelementptr inbounds i8*, i8** %529, i64 %idxprom984
  %530 = load i8*, i8** %arrayidx985, align 8
  %call986 = call i64 @strlen(i8* %530) #7
  %conv987 = trunc i64 %call986 to i32
  store i32 %conv987, i32* %len, align 4
  %531 = load i32, i32* %len, align 4
  %532 = load i32, i32* %maxlen, align 4
  %cmp988 = icmp sgt i32 %531, %532
  br i1 %cmp988, label %if.then.990, label %if.end.991

if.then.990:                                      ; preds = %if.end.983
  %533 = load i32, i32* %len, align 4
  store i32 %533, i32* %maxlen, align 4
  br label %if.end.991

if.end.991:                                       ; preds = %if.then.990, %if.end.983
  br label %for.inc.992

for.inc.992:                                      ; preds = %if.end.991, %if.then.982
  %534 = load i32, i32* %i972, align 4
  %inc993 = add nsw i32 %534, 1
  store i32 %inc993, i32* %i972, align 4
  br label %for.cond.974

for.end.994:                                      ; preds = %for.cond.974
  %535 = load i32, i32* %maxlen, align 4
  %add995 = add nsw i32 %535, 2
  %div = sdiv i32 80, %add995
  store i32 %div, i32* %nPrintCol, align 4
  %536 = load i32, i32* %nPrintCol, align 4
  %cmp996 = icmp slt i32 %536, 1
  br i1 %cmp996, label %if.then.998, label %if.end.999

if.then.998:                                      ; preds = %for.end.994
  store i32 1, i32* %nPrintCol, align 4
  br label %if.end.999

if.end.999:                                       ; preds = %if.then.998, %for.end.994
  %537 = load i32, i32* %nRow, align 4
  %538 = load i32, i32* %nPrintCol, align 4
  %add1000 = add nsw i32 %537, %538
  %sub1001 = sub nsw i32 %add1000, 1
  %539 = load i32, i32* %nPrintCol, align 4
  %div1002 = sdiv i32 %sub1001, %539
  store i32 %div1002, i32* %nPrintRow, align 4
  store i32 0, i32* %i972, align 4
  br label %for.cond.1003

for.cond.1003:                                    ; preds = %for.inc.1029, %if.end.999
  %540 = load i32, i32* %i972, align 4
  %541 = load i32, i32* %nPrintRow, align 4
  %cmp1004 = icmp slt i32 %540, %541
  br i1 %cmp1004, label %for.body.1006, label %for.end.1031

for.body.1006:                                    ; preds = %for.cond.1003
  %542 = load i32, i32* %i972, align 4
  %add1007 = add nsw i32 %542, 1
  store i32 %add1007, i32* %j973, align 4
  br label %for.cond.1008

for.cond.1008:                                    ; preds = %for.inc.1025, %for.body.1006
  %543 = load i32, i32* %j973, align 4
  %544 = load i32, i32* %nRow, align 4
  %cmp1009 = icmp sle i32 %543, %544
  br i1 %cmp1009, label %for.body.1011, label %for.end.1027

for.body.1011:                                    ; preds = %for.cond.1008
  %545 = load i32, i32* %j973, align 4
  %546 = load i32, i32* %nPrintRow, align 4
  %cmp1012 = icmp sle i32 %545, %546
  %cond1014 = select i1 %cmp1012, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0)
  store i8* %cond1014, i8** %zSp, align 8
  %547 = load i8*, i8** %zSp, align 8
  %548 = load i32, i32* %maxlen, align 4
  %549 = load i32, i32* %j973, align 4
  %idxprom1015 = sext i32 %549 to i64
  %550 = load i8**, i8*** %azResult, align 8
  %arrayidx1016 = getelementptr inbounds i8*, i8** %550, i64 %idxprom1015
  %551 = load i8*, i8** %arrayidx1016, align 8
  %tobool1017 = icmp ne i8* %551, null
  br i1 %tobool1017, label %cond.true.1018, label %cond.false.1021

cond.true.1018:                                   ; preds = %for.body.1011
  %552 = load i32, i32* %j973, align 4
  %idxprom1019 = sext i32 %552 to i64
  %553 = load i8**, i8*** %azResult, align 8
  %arrayidx1020 = getelementptr inbounds i8*, i8** %553, i64 %idxprom1019
  %554 = load i8*, i8** %arrayidx1020, align 8
  br label %cond.end.1022

cond.false.1021:                                  ; preds = %for.body.1011
  br label %cond.end.1022

cond.end.1022:                                    ; preds = %cond.false.1021, %cond.true.1018
  %cond1023 = phi i8* [ %554, %cond.true.1018 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i32 0, i32 0), %cond.false.1021 ]
  %call1024 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.115, i32 0, i32 0), i8* %547, i32 %548, i8* %cond1023)
  br label %for.inc.1025

for.inc.1025:                                     ; preds = %cond.end.1022
  %555 = load i32, i32* %nPrintRow, align 4
  %556 = load i32, i32* %j973, align 4
  %add1026 = add nsw i32 %556, %555
  store i32 %add1026, i32* %j973, align 4
  br label %for.cond.1008

for.end.1027:                                     ; preds = %for.cond.1008
  %call1028 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  br label %for.inc.1029

for.inc.1029:                                     ; preds = %for.end.1027
  %557 = load i32, i32* %i972, align 4
  %inc1030 = add nsw i32 %557, 1
  store i32 %inc1030, i32* %i972, align 4
  br label %for.cond.1003

for.end.1031:                                     ; preds = %for.cond.1003
  br label %if.end.1033

if.else.1032:                                     ; preds = %if.end.968
  store i32 1, i32* %rc953, align 4
  br label %if.end.1033

if.end.1033:                                      ; preds = %if.else.1032, %for.end.1031
  %558 = load i8**, i8*** %azResult, align 8
  call void @sqlite3_free_table(i8** %558)
  br label %if.end.1108

if.else.1034:                                     ; preds = %land.lhs.true.946, %land.lhs.true.943, %if.else.940
  %559 = load i32, i32* %c, align 4
  %cmp1035 = icmp eq i32 %559, 116
  br i1 %cmp1035, label %land.lhs.true.1037, label %if.else.1054

land.lhs.true.1037:                               ; preds = %if.else.1034
  %560 = load i32, i32* %n, align 4
  %cmp1038 = icmp sgt i32 %560, 4
  br i1 %cmp1038, label %land.lhs.true.1040, label %if.else.1054

land.lhs.true.1040:                               ; preds = %land.lhs.true.1037
  %arrayidx1041 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %561 = load i8*, i8** %arrayidx1041, align 8
  %562 = load i32, i32* %n, align 4
  %conv1042 = sext i32 %562 to i64
  %call1043 = call i32 @strncmp(i8* %561, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i32 0, i32 0), i64 %conv1042) #7
  %cmp1044 = icmp eq i32 %call1043, 0
  br i1 %cmp1044, label %land.lhs.true.1046, label %if.else.1054

land.lhs.true.1046:                               ; preds = %land.lhs.true.1040
  %563 = load i32, i32* %nArg, align 4
  %cmp1047 = icmp sge i32 %563, 2
  br i1 %cmp1047, label %if.then.1049, label %if.else.1054

if.then.1049:                                     ; preds = %land.lhs.true.1046
  %564 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  call void @open_db(%struct.callback_data* %564)
  %565 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db1050 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %565, i32 0, i32 0
  %566 = load %struct.sqlite3*, %struct.sqlite3** %db1050, align 8
  %arrayidx1051 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %567 = load i8*, i8** %arrayidx1051, align 8
  %call1052 = call i32 @atoi(i8* %567) #7
  %call1053 = call i32 @sqlite3_busy_timeout(%struct.sqlite3* %566, i32 %call1052)
  br label %if.end.1107

if.else.1054:                                     ; preds = %land.lhs.true.1046, %land.lhs.true.1040, %land.lhs.true.1037, %if.else.1034
  %568 = load i32, i32* %c, align 4
  %cmp1055 = icmp eq i32 %568, 116
  br i1 %cmp1055, label %land.lhs.true.1057, label %if.else.1072

land.lhs.true.1057:                               ; preds = %if.else.1054
  %569 = load i32, i32* %n, align 4
  %cmp1058 = icmp sge i32 %569, 5
  br i1 %cmp1058, label %land.lhs.true.1060, label %if.else.1072

land.lhs.true.1060:                               ; preds = %land.lhs.true.1057
  %arrayidx1061 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %570 = load i8*, i8** %arrayidx1061, align 8
  %571 = load i32, i32* %n, align 4
  %conv1062 = sext i32 %571 to i64
  %call1063 = call i32 @strncmp(i8* %570, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i64 %conv1062) #7
  %cmp1064 = icmp eq i32 %call1063, 0
  br i1 %cmp1064, label %land.lhs.true.1066, label %if.else.1072

land.lhs.true.1066:                               ; preds = %land.lhs.true.1060
  %572 = load i32, i32* %nArg, align 4
  %cmp1067 = icmp sgt i32 %572, 1
  br i1 %cmp1067, label %if.then.1069, label %if.else.1072

if.then.1069:                                     ; preds = %land.lhs.true.1066
  %arrayidx1070 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 1
  %573 = load i8*, i8** %arrayidx1070, align 8
  %call1071 = call i32 @booleanValue(i8* %573)
  store i32 %call1071, i32* @enableTimer, align 4
  br label %if.end.1106

if.else.1072:                                     ; preds = %land.lhs.true.1066, %land.lhs.true.1060, %land.lhs.true.1057, %if.else.1054
  %574 = load i32, i32* %c, align 4
  %cmp1073 = icmp eq i32 %574, 119
  br i1 %cmp1073, label %land.lhs.true.1075, label %if.else.1102

land.lhs.true.1075:                               ; preds = %if.else.1072
  %arrayidx1076 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %575 = load i8*, i8** %arrayidx1076, align 8
  %576 = load i32, i32* %n, align 4
  %conv1077 = sext i32 %576 to i64
  %call1078 = call i32 @strncmp(i8* %575, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0), i64 %conv1077) #7
  %cmp1079 = icmp eq i32 %call1078, 0
  br i1 %cmp1079, label %if.then.1081, label %if.else.1102

if.then.1081:                                     ; preds = %land.lhs.true.1075
  store i32 1, i32* %j1082, align 4
  br label %for.cond.1083

for.cond.1083:                                    ; preds = %for.inc.1099, %if.then.1081
  %577 = load i32, i32* %j1082, align 4
  %578 = load i32, i32* %nArg, align 4
  %cmp1084 = icmp slt i32 %577, %578
  br i1 %cmp1084, label %land.rhs.1086, label %land.end.1090

land.rhs.1086:                                    ; preds = %for.cond.1083
  %579 = load i32, i32* %j1082, align 4
  %conv1087 = sext i32 %579 to i64
  %cmp1088 = icmp ult i64 %conv1087, 100
  br label %land.end.1090

land.end.1090:                                    ; preds = %land.rhs.1086, %for.cond.1083
  %580 = phi i1 [ false, %for.cond.1083 ], [ %cmp1088, %land.rhs.1086 ]
  br i1 %580, label %for.body.1091, label %for.end.1101

for.body.1091:                                    ; preds = %land.end.1090
  %581 = load i32, i32* %j1082, align 4
  %idxprom1092 = sext i32 %581 to i64
  %arrayidx1093 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 %idxprom1092
  %582 = load i8*, i8** %arrayidx1093, align 8
  %call1094 = call i32 @atoi(i8* %582) #7
  %583 = load i32, i32* %j1082, align 4
  %sub1095 = sub nsw i32 %583, 1
  %idxprom1096 = sext i32 %sub1095 to i64
  %584 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %colWidth1097 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %584, i32 0, i32 9
  %arrayidx1098 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth1097, i32 0, i64 %idxprom1096
  store i32 %call1094, i32* %arrayidx1098, align 4
  br label %for.inc.1099

for.inc.1099:                                     ; preds = %for.body.1091
  %585 = load i32, i32* %j1082, align 4
  %inc1100 = add nsw i32 %585, 1
  store i32 %inc1100, i32* %j1082, align 4
  br label %for.cond.1083

for.end.1101:                                     ; preds = %land.end.1090
  br label %if.end.1105

if.else.1102:                                     ; preds = %land.lhs.true.1075, %if.else.1072
  %586 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arrayidx1103 = getelementptr inbounds [50 x i8*], [50 x i8*]* %azArg, i32 0, i64 0
  %587 = load i8*, i8** %arrayidx1103, align 8
  %call1104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %586, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.118, i32 0, i32 0), i8* %587)
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.else.1102, %for.end.1101
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.end.1105, %if.then.1069
  br label %if.end.1107

if.end.1107:                                      ; preds = %if.end.1106, %if.then.1049
  br label %if.end.1108

if.end.1108:                                      ; preds = %if.end.1107, %if.end.1033
  br label %if.end.1109

if.end.1109:                                      ; preds = %if.end.1108, %for.end.937
  br label %if.end.1110

if.end.1110:                                      ; preds = %if.end.1109, %if.then.854
  br label %if.end.1111

if.end.1111:                                      ; preds = %if.end.1110, %if.end.841
  br label %if.end.1112

if.end.1112:                                      ; preds = %if.end.1111, %if.end.764
  br label %if.end.1113

if.end.1113:                                      ; preds = %if.end.1112, %if.then.740
  br label %if.end.1114

if.end.1114:                                      ; preds = %if.end.1113, %if.end.730
  br label %if.end.1115

if.end.1115:                                      ; preds = %if.end.1114, %if.end.702
  br label %if.end.1116

if.end.1116:                                      ; preds = %if.end.1115, %if.then.653
  br label %if.end.1117

if.end.1117:                                      ; preds = %if.end.1116, %if.end.640
  br label %if.end.1118

if.end.1118:                                      ; preds = %if.end.1117, %if.end.527
  br label %if.end.1119

if.end.1119:                                      ; preds = %if.end.1118, %while.end.499
  br label %if.end.1120

if.end.1120:                                      ; preds = %if.end.1119, %if.then.323
  br label %if.end.1121

if.end.1121:                                      ; preds = %if.end.1120, %if.then.310
  br label %if.end.1122

if.end.1122:                                      ; preds = %if.end.1121, %if.end.291
  br label %if.end.1123

if.end.1123:                                      ; preds = %if.end.1122, %if.then.223
  br label %if.end.1124

if.end.1124:                                      ; preds = %if.end.1123, %if.then.211
  br label %if.end.1125

if.end.1125:                                      ; preds = %if.end.1124, %if.end.198
  br label %if.end.1126

if.end.1126:                                      ; preds = %if.end.1125, %if.end.153
  br label %if.end.1127

if.end.1127:                                      ; preds = %if.end.1126, %if.then.128
  %588 = load i32, i32* %rc, align 4
  store i32 %588, i32* %retval
  br label %return

return:                                           ; preds = %if.end.1127, %if.then.421, %if.then.411, %if.then.403, %if.then.376, %if.then.369, %if.then.353, %if.then.347, %if.then.107
  %589 = load i32, i32* %retval
  ret i32 %589
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

declare i32 @sqlite3_exec(%struct.sqlite3*, i8*, i32 (i8*, i32, i8**, i8**)*, i8*, i8**) #4

; Function Attrs: nounwind uwtable
define internal i32 @callback(i8* %pArg, i32 %nArg, i8** %azArg, i8** %azCol) #0 {
entry:
  %pArg.addr = alloca i8*, align 8
  %nArg.addr = alloca i32, align 4
  %azArg.addr = alloca i8**, align 8
  %azCol.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.callback_data*, align 8
  %w = alloca i32, align 4
  %len = alloca i32, align 4
  %w44 = alloca i32, align 4
  %n = alloca i32, align 4
  %w116 = alloca i32, align 4
  %w145 = alloca i32, align 4
  %z = alloca i8*, align 8
  %zSep = alloca i8*, align 8
  store i8* %pArg, i8** %pArg.addr, align 8
  store i32 %nArg, i32* %nArg.addr, align 4
  store i8** %azArg, i8*** %azArg.addr, align 8
  store i8** %azCol, i8*** %azCol.addr, align 8
  %0 = load i8*, i8** %pArg.addr, align 8
  %1 = bitcast i8* %0 to %struct.callback_data*
  store %struct.callback_data* %1, %struct.callback_data** %p, align 8
  %2 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %mode = getelementptr inbounds %struct.callback_data, %struct.callback_data* %2, i32 0, i32 4
  %3 = load i32, i32* %mode, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 9, label %sw.bb.34
    i32 1, label %sw.bb.34
    i32 3, label %sw.bb.195
    i32 2, label %sw.bb.195
    i32 4, label %sw.bb.265
    i32 6, label %sw.bb.321
    i32 7, label %sw.bb.383
    i32 5, label %sw.bb.432
  ]

sw.bb:                                            ; preds = %entry
  store i32 5, i32* %w, align 4
  %4 = load i8**, i8*** %azArg.addr, align 8
  %cmp = icmp eq i8** %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %nArg.addr, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %11, i64 %idxprom2
  %12 = load i8*, i8** %arrayidx3, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i32 0, i32 0), %cond.false ]
  %call = call i64 @strlen(i8* %cond) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %13 = load i32, i32* %len, align 4
  %14 = load i32, i32* %w, align 4
  %cmp4 = icmp sgt i32 %13, %14
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %cond.end
  %15 = load i32, i32* %len, align 4
  store i32 %15, i32* %w, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %cnt = getelementptr inbounds %struct.callback_data, %struct.callback_data* %17, i32 0, i32 2
  %18 = load i32, i32* %cnt, align 4
  %inc8 = add nsw i32 %18, 1
  store i32 %inc8, i32* %cnt, align 4
  %cmp9 = icmp sgt i32 %18, 0
  br i1 %cmp9, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %for.end
  %19 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out = getelementptr inbounds %struct.callback_data, %struct.callback_data* %19, i32 0, i32 3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.31, %if.end.13
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %nArg.addr, align 4
  %cmp15 = icmp slt i32 %21, %22
  br i1 %cmp15, label %for.body.17, label %for.end.33

for.body.17:                                      ; preds = %for.cond.14
  %23 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out18 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %23, i32 0, i32 3
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %out18, align 8
  %25 = load i32, i32* %w, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %27, i64 %idxprom19
  %28 = load i8*, i8** %arrayidx20, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %29 to i64
  %30 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %30, i64 %idxprom21
  %31 = load i8*, i8** %arrayidx22, align 8
  %tobool23 = icmp ne i8* %31, null
  br i1 %tobool23, label %cond.true.24, label %cond.false.27

cond.true.24:                                     ; preds = %for.body.17
  %32 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %32 to i64
  %33 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %33, i64 %idxprom25
  %34 = load i8*, i8** %arrayidx26, align 8
  br label %cond.end.28

cond.false.27:                                    ; preds = %for.body.17
  %35 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %nullvalue = getelementptr inbounds %struct.callback_data, %struct.callback_data* %35, i32 0, i32 11
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue, i32 0, i32 0
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.24
  %cond29 = phi i8* [ %34, %cond.true.24 ], [ %arraydecay, %cond.false.27 ]
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.141, i32 0, i32 0), i32 %25, i8* %28, i8* %cond29)
  br label %for.inc.31

for.inc.31:                                       ; preds = %cond.end.28
  %36 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %36, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.14

for.end.33:                                       ; preds = %for.cond.14
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry, %entry
  %37 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %cnt35 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %37, i32 0, i32 2
  %38 = load i32, i32* %cnt35, align 4
  %inc36 = add nsw i32 %38, 1
  store i32 %inc36, i32* %cnt35, align 4
  %cmp37 = icmp eq i32 %38, 0
  br i1 %cmp37, label %if.then.39, label %if.end.136

if.then.39:                                       ; preds = %sw.bb.34
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.106, %if.then.39
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %nArg.addr, align 4
  %cmp41 = icmp slt i32 %39, %40
  br i1 %cmp41, label %for.body.43, label %for.end.108

for.body.43:                                      ; preds = %for.cond.40
  %41 = load i32, i32* %i, align 4
  %conv45 = sext i32 %41 to i64
  %cmp46 = icmp ult i64 %conv45, 100
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %for.body.43
  %42 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %42 to i64
  %43 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %colWidth = getelementptr inbounds %struct.callback_data, %struct.callback_data* %43, i32 0, i32 9
  %arrayidx50 = getelementptr inbounds [100 x i32], [100 x i32]* %colWidth, i32 0, i64 %idxprom49
  %44 = load i32, i32* %arrayidx50, align 4
  store i32 %44, i32* %w44, align 4
  br label %if.end.51

if.else:                                          ; preds = %for.body.43
  store i32 0, i32* %w44, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %if.then.48
  %45 = load i32, i32* %w44, align 4
  %cmp52 = icmp sle i32 %45, 0
  br i1 %cmp52, label %if.then.54, label %if.end.88

if.then.54:                                       ; preds = %if.end.51
  %46 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %46 to i64
  %47 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %47, i64 %idxprom55
  %48 = load i8*, i8** %arrayidx56, align 8
  %tobool57 = icmp ne i8* %48, null
  br i1 %tobool57, label %cond.true.58, label %cond.false.61

cond.true.58:                                     ; preds = %if.then.54
  %49 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %49 to i64
  %50 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %50, i64 %idxprom59
  %51 = load i8*, i8** %arrayidx60, align 8
  br label %cond.end.62

cond.false.61:                                    ; preds = %if.then.54
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.58
  %cond63 = phi i8* [ %51, %cond.true.58 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i32 0, i32 0), %cond.false.61 ]
  %call64 = call i64 @strlen(i8* %cond63) #7
  %conv65 = trunc i64 %call64 to i32
  store i32 %conv65, i32* %w44, align 4
  %52 = load i32, i32* %w44, align 4
  %cmp66 = icmp slt i32 %52, 10
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %cond.end.62
  store i32 10, i32* %w44, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %cond.end.62
  %53 = load i8**, i8*** %azArg.addr, align 8
  %tobool70 = icmp ne i8** %53, null
  br i1 %tobool70, label %land.lhs.true, label %cond.false.77

land.lhs.true:                                    ; preds = %if.end.69
  %54 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %54 to i64
  %55 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %55, i64 %idxprom71
  %56 = load i8*, i8** %arrayidx72, align 8
  %tobool73 = icmp ne i8* %56, null
  br i1 %tobool73, label %cond.true.74, label %cond.false.77

cond.true.74:                                     ; preds = %land.lhs.true
  %57 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %57 to i64
  %58 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %58, i64 %idxprom75
  %59 = load i8*, i8** %arrayidx76, align 8
  br label %cond.end.80

cond.false.77:                                    ; preds = %land.lhs.true, %if.end.69
  %60 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %nullvalue78 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %60, i32 0, i32 11
  %arraydecay79 = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue78, i32 0, i32 0
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.77, %cond.true.74
  %cond81 = phi i8* [ %59, %cond.true.74 ], [ %arraydecay79, %cond.false.77 ]
  %call82 = call i64 @strlen(i8* %cond81) #7
  %conv83 = trunc i64 %call82 to i32
  store i32 %conv83, i32* %n, align 4
  %61 = load i32, i32* %w44, align 4
  %62 = load i32, i32* %n, align 4
  %cmp84 = icmp slt i32 %61, %62
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %cond.end.80
  %63 = load i32, i32* %n, align 4
  store i32 %63, i32* %w44, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %cond.end.80
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.51
  %64 = load i32, i32* %i, align 4
  %conv89 = sext i32 %64 to i64
  %cmp90 = icmp ult i64 %conv89, 100
  br i1 %cmp90, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.end.88
  %65 = load i32, i32* %w44, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %66 to i64
  %67 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %actualWidth = getelementptr inbounds %struct.callback_data, %struct.callback_data* %67, i32 0, i32 10
  %arrayidx94 = getelementptr inbounds [100 x i32], [100 x i32]* %actualWidth, i32 0, i64 %idxprom93
  store i32 %65, i32* %arrayidx94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %if.end.88
  %68 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %showHeader = getelementptr inbounds %struct.callback_data, %struct.callback_data* %68, i32 0, i32 6
  %69 = load i32, i32* %showHeader, align 4
  %tobool96 = icmp ne i32 %69, 0
  br i1 %tobool96, label %if.then.97, label %if.end.105

if.then.97:                                       ; preds = %if.end.95
  %70 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out98 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %70, i32 0, i32 3
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %out98, align 8
  %72 = load i32, i32* %w44, align 4
  %73 = load i32, i32* %w44, align 4
  %74 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %74 to i64
  %75 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %75, i64 %idxprom99
  %76 = load i8*, i8** %arrayidx100, align 8
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %nArg.addr, align 4
  %sub = sub nsw i32 %78, 1
  %cmp101 = icmp eq i32 %77, %sub
  %cond103 = select i1 %cmp101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0)
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i32 0, i32 0), i32 %72, i32 %73, i8* %76, i8* %cond103)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.97, %if.end.95
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %79 = load i32, i32* %i, align 4
  %inc107 = add nsw i32 %79, 1
  store i32 %inc107, i32* %i, align 4
  br label %for.cond.40

for.end.108:                                      ; preds = %for.cond.40
  %80 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %showHeader109 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %80, i32 0, i32 6
  %81 = load i32, i32* %showHeader109, align 4
  %tobool110 = icmp ne i32 %81, 0
  br i1 %tobool110, label %if.then.111, label %if.end.135

if.then.111:                                      ; preds = %for.end.108
  store i32 0, i32* %i, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.132, %if.then.111
  %82 = load i32, i32* %i, align 4
  %83 = load i32, i32* %nArg.addr, align 4
  %cmp113 = icmp slt i32 %82, %83
  br i1 %cmp113, label %for.body.115, label %for.end.134

for.body.115:                                     ; preds = %for.cond.112
  %84 = load i32, i32* %i, align 4
  %conv117 = sext i32 %84 to i64
  %cmp118 = icmp ult i64 %conv117, 100
  br i1 %cmp118, label %if.then.120, label %if.else.124

if.then.120:                                      ; preds = %for.body.115
  %85 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %85 to i64
  %86 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %actualWidth122 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %86, i32 0, i32 10
  %arrayidx123 = getelementptr inbounds [100 x i32], [100 x i32]* %actualWidth122, i32 0, i64 %idxprom121
  %87 = load i32, i32* %arrayidx123, align 4
  store i32 %87, i32* %w116, align 4
  br label %if.end.125

if.else.124:                                      ; preds = %for.body.115
  store i32 10, i32* %w116, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.124, %if.then.120
  %88 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out126 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %88, i32 0, i32 3
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %out126, align 8
  %90 = load i32, i32* %w116, align 4
  %91 = load i32, i32* %w116, align 4
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* %nArg.addr, align 4
  %sub127 = sub nsw i32 %93, 1
  %cmp128 = icmp eq i32 %92, %sub127
  %cond130 = select i1 %cmp128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0)
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i32 0, i32 0), i32 %90, i32 %91, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.143, i32 0, i32 0), i8* %cond130)
  br label %for.inc.132

for.inc.132:                                      ; preds = %if.end.125
  %94 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %94, 1
  store i32 %inc133, i32* %i, align 4
  br label %for.cond.112

for.end.134:                                      ; preds = %for.cond.112
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %for.end.108
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %sw.bb.34
  %95 = load i8**, i8*** %azArg.addr, align 8
  %cmp137 = icmp eq i8** %95, null
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.end.136
  br label %sw.epilog

if.end.140:                                       ; preds = %if.end.136
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.192, %if.end.140
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %nArg.addr, align 4
  %cmp142 = icmp slt i32 %96, %97
  br i1 %cmp142, label %for.body.144, label %for.end.194

for.body.144:                                     ; preds = %for.cond.141
  %98 = load i32, i32* %i, align 4
  %conv146 = sext i32 %98 to i64
  %cmp147 = icmp ult i64 %conv146, 100
  br i1 %cmp147, label %if.then.149, label %if.else.153

if.then.149:                                      ; preds = %for.body.144
  %99 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %99 to i64
  %100 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %actualWidth151 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %100, i32 0, i32 10
  %arrayidx152 = getelementptr inbounds [100 x i32], [100 x i32]* %actualWidth151, i32 0, i64 %idxprom150
  %101 = load i32, i32* %arrayidx152, align 4
  store i32 %101, i32* %w145, align 4
  br label %if.end.154

if.else.153:                                      ; preds = %for.body.144
  store i32 10, i32* %w145, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.153, %if.then.149
  %102 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %mode155 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %102, i32 0, i32 4
  %103 = load i32, i32* %mode155, align 4
  %cmp156 = icmp eq i32 %103, 9
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.174

land.lhs.true.158:                                ; preds = %if.end.154
  %104 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %104 to i64
  %105 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx160 = getelementptr inbounds i8*, i8** %105, i64 %idxprom159
  %106 = load i8*, i8** %arrayidx160, align 8
  %tobool161 = icmp ne i8* %106, null
  br i1 %tobool161, label %land.lhs.true.162, label %if.end.174

land.lhs.true.162:                                ; preds = %land.lhs.true.158
  %107 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %107 to i64
  %108 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx164 = getelementptr inbounds i8*, i8** %108, i64 %idxprom163
  %109 = load i8*, i8** %arrayidx164, align 8
  %call165 = call i64 @strlen(i8* %109) #7
  %110 = load i32, i32* %w145, align 4
  %conv166 = sext i32 %110 to i64
  %cmp167 = icmp ugt i64 %call165, %conv166
  br i1 %cmp167, label %if.then.169, label %if.end.174

if.then.169:                                      ; preds = %land.lhs.true.162
  %111 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %111 to i64
  %112 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx171 = getelementptr inbounds i8*, i8** %112, i64 %idxprom170
  %113 = load i8*, i8** %arrayidx171, align 8
  %call172 = call i64 @strlen(i8* %113) #7
  %conv173 = trunc i64 %call172 to i32
  store i32 %conv173, i32* %w145, align 4
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.169, %land.lhs.true.162, %land.lhs.true.158, %if.end.154
  %114 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out175 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %114, i32 0, i32 3
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %out175, align 8
  %116 = load i32, i32* %w145, align 4
  %117 = load i32, i32* %w145, align 4
  %118 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %118 to i64
  %119 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx177 = getelementptr inbounds i8*, i8** %119, i64 %idxprom176
  %120 = load i8*, i8** %arrayidx177, align 8
  %tobool178 = icmp ne i8* %120, null
  br i1 %tobool178, label %cond.true.179, label %cond.false.182

cond.true.179:                                    ; preds = %if.end.174
  %121 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %121 to i64
  %122 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx181 = getelementptr inbounds i8*, i8** %122, i64 %idxprom180
  %123 = load i8*, i8** %arrayidx181, align 8
  br label %cond.end.185

cond.false.182:                                   ; preds = %if.end.174
  %124 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %nullvalue183 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %124, i32 0, i32 11
  %arraydecay184 = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue183, i32 0, i32 0
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.182, %cond.true.179
  %cond186 = phi i8* [ %123, %cond.true.179 ], [ %arraydecay184, %cond.false.182 ]
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* %nArg.addr, align 4
  %sub187 = sub nsw i32 %126, 1
  %cmp188 = icmp eq i32 %125, %sub187
  %cond190 = select i1 %cmp188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0)
  %call191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i32 0, i32 0), i32 %116, i32 %117, i8* %cond186, i8* %cond190)
  br label %for.inc.192

for.inc.192:                                      ; preds = %cond.end.185
  %127 = load i32, i32* %i, align 4
  %inc193 = add nsw i32 %127, 1
  store i32 %inc193, i32* %i, align 4
  br label %for.cond.141

for.end.194:                                      ; preds = %for.cond.141
  br label %sw.epilog

sw.bb.195:                                        ; preds = %entry, %entry
  %128 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %cnt196 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %128, i32 0, i32 2
  %129 = load i32, i32* %cnt196, align 4
  %inc197 = add nsw i32 %129, 1
  store i32 %inc197, i32* %cnt196, align 4
  %cmp198 = icmp eq i32 %129, 0
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.223

land.lhs.true.200:                                ; preds = %sw.bb.195
  %130 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %showHeader201 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %130, i32 0, i32 6
  %131 = load i32, i32* %showHeader201, align 4
  %tobool202 = icmp ne i32 %131, 0
  br i1 %tobool202, label %if.then.203, label %if.end.223

if.then.203:                                      ; preds = %land.lhs.true.200
  store i32 0, i32* %i, align 4
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.220, %if.then.203
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %nArg.addr, align 4
  %cmp205 = icmp slt i32 %132, %133
  br i1 %cmp205, label %for.body.207, label %for.end.222

for.body.207:                                     ; preds = %for.cond.204
  %134 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out208 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %134, i32 0, i32 3
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %out208, align 8
  %136 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %136 to i64
  %137 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx210 = getelementptr inbounds i8*, i8** %137, i64 %idxprom209
  %138 = load i8*, i8** %arrayidx210, align 8
  %139 = load i32, i32* %i, align 4
  %140 = load i32, i32* %nArg.addr, align 4
  %sub211 = sub nsw i32 %140, 1
  %cmp212 = icmp eq i32 %139, %sub211
  br i1 %cmp212, label %cond.true.214, label %cond.false.215

cond.true.214:                                    ; preds = %for.body.207
  br label %cond.end.217

cond.false.215:                                   ; preds = %for.body.207
  %141 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %separator = getelementptr inbounds %struct.callback_data, %struct.callback_data* %141, i32 0, i32 8
  %arraydecay216 = getelementptr inbounds [20 x i8], [20 x i8]* %separator, i32 0, i32 0
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.215, %cond.true.214
  %cond218 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), %cond.true.214 ], [ %arraydecay216, %cond.false.215 ]
  %call219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), i8* %138, i8* %cond218)
  br label %for.inc.220

for.inc.220:                                      ; preds = %cond.end.217
  %142 = load i32, i32* %i, align 4
  %inc221 = add nsw i32 %142, 1
  store i32 %inc221, i32* %i, align 4
  br label %for.cond.204

for.end.222:                                      ; preds = %for.cond.204
  br label %if.end.223

if.end.223:                                       ; preds = %for.end.222, %land.lhs.true.200, %sw.bb.195
  %143 = load i8**, i8*** %azArg.addr, align 8
  %cmp224 = icmp eq i8** %143, null
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.223
  br label %sw.epilog

if.end.227:                                       ; preds = %if.end.223
  store i32 0, i32* %i, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.262, %if.end.227
  %144 = load i32, i32* %i, align 4
  %145 = load i32, i32* %nArg.addr, align 4
  %cmp229 = icmp slt i32 %144, %145
  br i1 %cmp229, label %for.body.231, label %for.end.264

for.body.231:                                     ; preds = %for.cond.228
  %146 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %146 to i64
  %147 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx233 = getelementptr inbounds i8*, i8** %147, i64 %idxprom232
  %148 = load i8*, i8** %arrayidx233, align 8
  store i8* %148, i8** %z, align 8
  %149 = load i8*, i8** %z, align 8
  %cmp234 = icmp eq i8* %149, null
  br i1 %cmp234, label %if.then.236, label %if.end.239

if.then.236:                                      ; preds = %for.body.231
  %150 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %nullvalue237 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %150, i32 0, i32 11
  %arraydecay238 = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue237, i32 0, i32 0
  store i8* %arraydecay238, i8** %z, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.236, %for.body.231
  %151 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out240 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %151, i32 0, i32 3
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %out240, align 8
  %153 = load i8*, i8** %z, align 8
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %153)
  %154 = load i32, i32* %i, align 4
  %155 = load i32, i32* %nArg.addr, align 4
  %sub242 = sub nsw i32 %155, 1
  %cmp243 = icmp slt i32 %154, %sub242
  br i1 %cmp243, label %if.then.245, label %if.else.250

if.then.245:                                      ; preds = %if.end.239
  %156 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out246 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %156, i32 0, i32 3
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %out246, align 8
  %158 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %separator247 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %158, i32 0, i32 8
  %arraydecay248 = getelementptr inbounds [20 x i8], [20 x i8]* %separator247, i32 0, i32 0
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay248)
  br label %if.end.261

if.else.250:                                      ; preds = %if.end.239
  %159 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %mode251 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %159, i32 0, i32 4
  %160 = load i32, i32* %mode251, align 4
  %cmp252 = icmp eq i32 %160, 3
  br i1 %cmp252, label %if.then.254, label %if.else.257

if.then.254:                                      ; preds = %if.else.250
  %161 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out255 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %161, i32 0, i32 3
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %out255, align 8
  %call256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0))
  br label %if.end.260

if.else.257:                                      ; preds = %if.else.250
  %163 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out258 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %163, i32 0, i32 3
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %out258, align 8
  %call259 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.257, %if.then.254
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.then.245
  br label %for.inc.262

for.inc.262:                                      ; preds = %if.end.261
  %165 = load i32, i32* %i, align 4
  %inc263 = add nsw i32 %165, 1
  store i32 %inc263, i32* %i, align 4
  br label %for.cond.228

for.end.264:                                      ; preds = %for.cond.228
  br label %sw.epilog

sw.bb.265:                                        ; preds = %entry
  %166 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %cnt266 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %166, i32 0, i32 2
  %167 = load i32, i32* %cnt266, align 4
  %inc267 = add nsw i32 %167, 1
  store i32 %inc267, i32* %cnt266, align 4
  %cmp268 = icmp eq i32 %167, 0
  br i1 %cmp268, label %land.lhs.true.270, label %if.end.289

land.lhs.true.270:                                ; preds = %sw.bb.265
  %168 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %showHeader271 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %168, i32 0, i32 6
  %169 = load i32, i32* %showHeader271, align 4
  %tobool272 = icmp ne i32 %169, 0
  br i1 %tobool272, label %if.then.273, label %if.end.289

if.then.273:                                      ; preds = %land.lhs.true.270
  %170 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out274 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %170, i32 0, i32 3
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %out274, align 8
  %call275 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.276

for.cond.276:                                     ; preds = %for.inc.284, %if.then.273
  %172 = load i32, i32* %i, align 4
  %173 = load i32, i32* %nArg.addr, align 4
  %cmp277 = icmp slt i32 %172, %173
  br i1 %cmp277, label %for.body.279, label %for.end.286

for.body.279:                                     ; preds = %for.cond.276
  %174 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out280 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %174, i32 0, i32 3
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %out280, align 8
  %176 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %176 to i64
  %177 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx282 = getelementptr inbounds i8*, i8** %177, i64 %idxprom281
  %178 = load i8*, i8** %arrayidx282, align 8
  %call283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.147, i32 0, i32 0), i8* %178)
  br label %for.inc.284

for.inc.284:                                      ; preds = %for.body.279
  %179 = load i32, i32* %i, align 4
  %inc285 = add nsw i32 %179, 1
  store i32 %inc285, i32* %i, align 4
  br label %for.cond.276

for.end.286:                                      ; preds = %for.cond.276
  %180 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out287 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %180, i32 0, i32 3
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** %out287, align 8
  %call288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0))
  br label %if.end.289

if.end.289:                                       ; preds = %for.end.286, %land.lhs.true.270, %sw.bb.265
  %182 = load i8**, i8*** %azArg.addr, align 8
  %cmp290 = icmp eq i8** %182, null
  br i1 %cmp290, label %if.then.292, label %if.end.293

if.then.292:                                      ; preds = %if.end.289
  br label %sw.epilog

if.end.293:                                       ; preds = %if.end.289
  %183 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out294 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %183, i32 0, i32 3
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %out294, align 8
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.296

for.cond.296:                                     ; preds = %for.inc.316, %if.end.293
  %185 = load i32, i32* %i, align 4
  %186 = load i32, i32* %nArg.addr, align 4
  %cmp297 = icmp slt i32 %185, %186
  br i1 %cmp297, label %for.body.299, label %for.end.318

for.body.299:                                     ; preds = %for.cond.296
  %187 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out300 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %187, i32 0, i32 3
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %out300, align 8
  %call301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0))
  %189 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out302 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %189, i32 0, i32 3
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %out302, align 8
  %191 = load i32, i32* %i, align 4
  %idxprom303 = sext i32 %191 to i64
  %192 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx304 = getelementptr inbounds i8*, i8** %192, i64 %idxprom303
  %193 = load i8*, i8** %arrayidx304, align 8
  %tobool305 = icmp ne i8* %193, null
  br i1 %tobool305, label %cond.true.306, label %cond.false.309

cond.true.306:                                    ; preds = %for.body.299
  %194 = load i32, i32* %i, align 4
  %idxprom307 = sext i32 %194 to i64
  %195 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx308 = getelementptr inbounds i8*, i8** %195, i64 %idxprom307
  %196 = load i8*, i8** %arrayidx308, align 8
  br label %cond.end.312

cond.false.309:                                   ; preds = %for.body.299
  %197 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %nullvalue310 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %197, i32 0, i32 11
  %arraydecay311 = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue310, i32 0, i32 0
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.309, %cond.true.306
  %cond313 = phi i8* [ %196, %cond.true.306 ], [ %arraydecay311, %cond.false.309 ]
  call void @output_html_string(%struct._IO_FILE* %190, i8* %cond313)
  %198 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out314 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %198, i32 0, i32 3
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %out314, align 8
  %call315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.150, i32 0, i32 0))
  br label %for.inc.316

for.inc.316:                                      ; preds = %cond.end.312
  %200 = load i32, i32* %i, align 4
  %inc317 = add nsw i32 %200, 1
  store i32 %inc317, i32* %i, align 4
  br label %for.cond.296

for.end.318:                                      ; preds = %for.cond.296
  %201 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out319 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %201, i32 0, i32 3
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %out319, align 8
  %call320 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0))
  br label %sw.epilog

sw.bb.321:                                        ; preds = %entry
  %203 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %cnt322 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %203, i32 0, i32 2
  %204 = load i32, i32* %cnt322, align 4
  %inc323 = add nsw i32 %204, 1
  store i32 %inc323, i32* %cnt322, align 4
  %cmp324 = icmp eq i32 %204, 0
  br i1 %cmp324, label %land.lhs.true.326, label %if.end.353

land.lhs.true.326:                                ; preds = %sw.bb.321
  %205 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %showHeader327 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %205, i32 0, i32 6
  %206 = load i32, i32* %showHeader327, align 4
  %tobool328 = icmp ne i32 %206, 0
  br i1 %tobool328, label %if.then.329, label %if.end.353

if.then.329:                                      ; preds = %land.lhs.true.326
  store i32 0, i32* %i, align 4
  br label %for.cond.330

for.cond.330:                                     ; preds = %for.inc.348, %if.then.329
  %207 = load i32, i32* %i, align 4
  %208 = load i32, i32* %nArg.addr, align 4
  %cmp331 = icmp slt i32 %207, %208
  br i1 %cmp331, label %for.body.333, label %for.end.350

for.body.333:                                     ; preds = %for.cond.330
  %209 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out334 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %209, i32 0, i32 3
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %out334, align 8
  %211 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %211 to i64
  %212 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx336 = getelementptr inbounds i8*, i8** %212, i64 %idxprom335
  %213 = load i8*, i8** %arrayidx336, align 8
  %tobool337 = icmp ne i8* %213, null
  br i1 %tobool337, label %cond.true.338, label %cond.false.341

cond.true.338:                                    ; preds = %for.body.333
  %214 = load i32, i32* %i, align 4
  %idxprom339 = sext i32 %214 to i64
  %215 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx340 = getelementptr inbounds i8*, i8** %215, i64 %idxprom339
  %216 = load i8*, i8** %arrayidx340, align 8
  br label %cond.end.342

cond.false.341:                                   ; preds = %for.body.333
  br label %cond.end.342

cond.end.342:                                     ; preds = %cond.false.341, %cond.true.338
  %cond343 = phi i8* [ %216, %cond.true.338 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i32 0, i32 0), %cond.false.341 ]
  call void @output_c_string(%struct._IO_FILE* %210, i8* %cond343)
  %217 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out344 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %217, i32 0, i32 3
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %out344, align 8
  %219 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %separator345 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %219, i32 0, i32 8
  %arraydecay346 = getelementptr inbounds [20 x i8], [20 x i8]* %separator345, i32 0, i32 0
  %call347 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay346)
  br label %for.inc.348

for.inc.348:                                      ; preds = %cond.end.342
  %220 = load i32, i32* %i, align 4
  %inc349 = add nsw i32 %220, 1
  store i32 %inc349, i32* %i, align 4
  br label %for.cond.330

for.end.350:                                      ; preds = %for.cond.330
  %221 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out351 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %221, i32 0, i32 3
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %out351, align 8
  %call352 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end.353

if.end.353:                                       ; preds = %for.end.350, %land.lhs.true.326, %sw.bb.321
  %223 = load i8**, i8*** %azArg.addr, align 8
  %cmp354 = icmp eq i8** %223, null
  br i1 %cmp354, label %if.then.356, label %if.end.357

if.then.356:                                      ; preds = %if.end.353
  br label %sw.epilog

if.end.357:                                       ; preds = %if.end.353
  store i32 0, i32* %i, align 4
  br label %for.cond.358

for.cond.358:                                     ; preds = %for.inc.378, %if.end.357
  %224 = load i32, i32* %i, align 4
  %225 = load i32, i32* %nArg.addr, align 4
  %cmp359 = icmp slt i32 %224, %225
  br i1 %cmp359, label %for.body.361, label %for.end.380

for.body.361:                                     ; preds = %for.cond.358
  %226 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out362 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %226, i32 0, i32 3
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %out362, align 8
  %228 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %228 to i64
  %229 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx364 = getelementptr inbounds i8*, i8** %229, i64 %idxprom363
  %230 = load i8*, i8** %arrayidx364, align 8
  %tobool365 = icmp ne i8* %230, null
  br i1 %tobool365, label %cond.true.366, label %cond.false.369

cond.true.366:                                    ; preds = %for.body.361
  %231 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %231 to i64
  %232 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx368 = getelementptr inbounds i8*, i8** %232, i64 %idxprom367
  %233 = load i8*, i8** %arrayidx368, align 8
  br label %cond.end.372

cond.false.369:                                   ; preds = %for.body.361
  %234 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %nullvalue370 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %234, i32 0, i32 11
  %arraydecay371 = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue370, i32 0, i32 0
  br label %cond.end.372

cond.end.372:                                     ; preds = %cond.false.369, %cond.true.366
  %cond373 = phi i8* [ %233, %cond.true.366 ], [ %arraydecay371, %cond.false.369 ]
  call void @output_c_string(%struct._IO_FILE* %227, i8* %cond373)
  %235 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out374 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %235, i32 0, i32 3
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** %out374, align 8
  %237 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %separator375 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %237, i32 0, i32 8
  %arraydecay376 = getelementptr inbounds [20 x i8], [20 x i8]* %separator375, i32 0, i32 0
  %call377 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay376)
  br label %for.inc.378

for.inc.378:                                      ; preds = %cond.end.372
  %238 = load i32, i32* %i, align 4
  %inc379 = add nsw i32 %238, 1
  store i32 %inc379, i32* %i, align 4
  br label %for.cond.358

for.end.380:                                      ; preds = %for.cond.358
  %239 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out381 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %239, i32 0, i32 3
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** %out381, align 8
  %call382 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  br label %sw.epilog

sw.bb.383:                                        ; preds = %entry
  %241 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %cnt384 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %241, i32 0, i32 2
  %242 = load i32, i32* %cnt384, align 4
  %inc385 = add nsw i32 %242, 1
  store i32 %inc385, i32* %cnt384, align 4
  %cmp386 = icmp eq i32 %242, 0
  br i1 %cmp386, label %land.lhs.true.388, label %if.end.413

land.lhs.true.388:                                ; preds = %sw.bb.383
  %243 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %showHeader389 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %243, i32 0, i32 6
  %244 = load i32, i32* %showHeader389, align 4
  %tobool390 = icmp ne i32 %244, 0
  br i1 %tobool390, label %if.then.391, label %if.end.413

if.then.391:                                      ; preds = %land.lhs.true.388
  store i32 0, i32* %i, align 4
  br label %for.cond.392

for.cond.392:                                     ; preds = %for.inc.408, %if.then.391
  %245 = load i32, i32* %i, align 4
  %246 = load i32, i32* %nArg.addr, align 4
  %cmp393 = icmp slt i32 %245, %246
  br i1 %cmp393, label %for.body.395, label %for.end.410

for.body.395:                                     ; preds = %for.cond.392
  %247 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %248 = load i32, i32* %i, align 4
  %idxprom396 = sext i32 %248 to i64
  %249 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx397 = getelementptr inbounds i8*, i8** %249, i64 %idxprom396
  %250 = load i8*, i8** %arrayidx397, align 8
  %tobool398 = icmp ne i8* %250, null
  br i1 %tobool398, label %cond.true.399, label %cond.false.402

cond.true.399:                                    ; preds = %for.body.395
  %251 = load i32, i32* %i, align 4
  %idxprom400 = sext i32 %251 to i64
  %252 = load i8**, i8*** %azCol.addr, align 8
  %arrayidx401 = getelementptr inbounds i8*, i8** %252, i64 %idxprom400
  %253 = load i8*, i8** %arrayidx401, align 8
  br label %cond.end.403

cond.false.402:                                   ; preds = %for.body.395
  br label %cond.end.403

cond.end.403:                                     ; preds = %cond.false.402, %cond.true.399
  %cond404 = phi i8* [ %253, %cond.true.399 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i32 0, i32 0), %cond.false.402 ]
  %254 = load i32, i32* %i, align 4
  %255 = load i32, i32* %nArg.addr, align 4
  %sub405 = sub nsw i32 %255, 1
  %cmp406 = icmp slt i32 %254, %sub405
  %conv407 = zext i1 %cmp406 to i32
  call void @output_csv(%struct.callback_data* %247, i8* %cond404, i32 %conv407)
  br label %for.inc.408

for.inc.408:                                      ; preds = %cond.end.403
  %256 = load i32, i32* %i, align 4
  %inc409 = add nsw i32 %256, 1
  store i32 %inc409, i32* %i, align 4
  br label %for.cond.392

for.end.410:                                      ; preds = %for.cond.392
  %257 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out411 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %257, i32 0, i32 3
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** %out411, align 8
  %call412 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %258, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  br label %if.end.413

if.end.413:                                       ; preds = %for.end.410, %land.lhs.true.388, %sw.bb.383
  %259 = load i8**, i8*** %azArg.addr, align 8
  %cmp414 = icmp eq i8** %259, null
  br i1 %cmp414, label %if.then.416, label %if.end.417

if.then.416:                                      ; preds = %if.end.413
  br label %sw.epilog

if.end.417:                                       ; preds = %if.end.413
  store i32 0, i32* %i, align 4
  br label %for.cond.418

for.cond.418:                                     ; preds = %for.inc.427, %if.end.417
  %260 = load i32, i32* %i, align 4
  %261 = load i32, i32* %nArg.addr, align 4
  %cmp419 = icmp slt i32 %260, %261
  br i1 %cmp419, label %for.body.421, label %for.end.429

for.body.421:                                     ; preds = %for.cond.418
  %262 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %263 = load i32, i32* %i, align 4
  %idxprom422 = sext i32 %263 to i64
  %264 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx423 = getelementptr inbounds i8*, i8** %264, i64 %idxprom422
  %265 = load i8*, i8** %arrayidx423, align 8
  %266 = load i32, i32* %i, align 4
  %267 = load i32, i32* %nArg.addr, align 4
  %sub424 = sub nsw i32 %267, 1
  %cmp425 = icmp slt i32 %266, %sub424
  %conv426 = zext i1 %cmp425 to i32
  call void @output_csv(%struct.callback_data* %262, i8* %265, i32 %conv426)
  br label %for.inc.427

for.inc.427:                                      ; preds = %for.body.421
  %268 = load i32, i32* %i, align 4
  %inc428 = add nsw i32 %268, 1
  store i32 %inc428, i32* %i, align 4
  br label %for.cond.418

for.end.429:                                      ; preds = %for.cond.418
  %269 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out430 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %269, i32 0, i32 3
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** %out430, align 8
  %call431 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %270, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0))
  br label %sw.epilog

sw.bb.432:                                        ; preds = %entry
  %271 = load i8**, i8*** %azArg.addr, align 8
  %cmp433 = icmp eq i8** %271, null
  br i1 %cmp433, label %if.then.435, label %if.end.436

if.then.435:                                      ; preds = %sw.bb.432
  br label %sw.epilog

if.end.436:                                       ; preds = %sw.bb.432
  %272 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out437 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %272, i32 0, i32 3
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %out437, align 8
  %274 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %zDestTable = getelementptr inbounds %struct.callback_data, %struct.callback_data* %274, i32 0, i32 7
  %275 = load i8*, i8** %zDestTable, align 8
  %call438 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.151, i32 0, i32 0), i8* %275)
  store i32 0, i32* %i, align 4
  br label %for.cond.439

for.cond.439:                                     ; preds = %for.inc.475, %if.end.436
  %276 = load i32, i32* %i, align 4
  %277 = load i32, i32* %nArg.addr, align 4
  %cmp440 = icmp slt i32 %276, %277
  br i1 %cmp440, label %for.body.442, label %for.end.477

for.body.442:                                     ; preds = %for.cond.439
  %278 = load i32, i32* %i, align 4
  %cmp443 = icmp sgt i32 %278, 0
  %cond445 = select i1 %cmp443, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.113, i32 0, i32 0)
  store i8* %cond445, i8** %zSep, align 8
  %279 = load i32, i32* %i, align 4
  %idxprom446 = sext i32 %279 to i64
  %280 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx447 = getelementptr inbounds i8*, i8** %280, i64 %idxprom446
  %281 = load i8*, i8** %arrayidx447, align 8
  %cmp448 = icmp eq i8* %281, null
  br i1 %cmp448, label %if.then.450, label %if.else.453

if.then.450:                                      ; preds = %for.body.442
  %282 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out451 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %282, i32 0, i32 3
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** %out451, align 8
  %284 = load i8*, i8** %zSep, align 8
  %call452 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %283, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.152, i32 0, i32 0), i8* %284)
  br label %if.end.474

if.else.453:                                      ; preds = %for.body.442
  %285 = load i32, i32* %i, align 4
  %idxprom454 = sext i32 %285 to i64
  %286 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx455 = getelementptr inbounds i8*, i8** %286, i64 %idxprom454
  %287 = load i8*, i8** %arrayidx455, align 8
  %call456 = call i32 @isNumber(i8* %287, i32* null)
  %tobool457 = icmp ne i32 %call456, 0
  br i1 %tobool457, label %if.then.458, label %if.else.463

if.then.458:                                      ; preds = %if.else.453
  %288 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out459 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %288, i32 0, i32 3
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** %out459, align 8
  %290 = load i8*, i8** %zSep, align 8
  %291 = load i32, i32* %i, align 4
  %idxprom460 = sext i32 %291 to i64
  %292 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx461 = getelementptr inbounds i8*, i8** %292, i64 %idxprom460
  %293 = load i8*, i8** %arrayidx461, align 8
  %call462 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %289, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), i8* %290, i8* %293)
  br label %if.end.473

if.else.463:                                      ; preds = %if.else.453
  %294 = load i8*, i8** %zSep, align 8
  %arrayidx464 = getelementptr inbounds i8, i8* %294, i64 0
  %295 = load i8, i8* %arrayidx464, align 1
  %tobool465 = icmp ne i8 %295, 0
  br i1 %tobool465, label %if.then.466, label %if.end.469

if.then.466:                                      ; preds = %if.else.463
  %296 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out467 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %296, i32 0, i32 3
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** %out467, align 8
  %298 = load i8*, i8** %zSep, align 8
  %call468 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %297, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %298)
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.466, %if.else.463
  %299 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out470 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %299, i32 0, i32 3
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** %out470, align 8
  %301 = load i32, i32* %i, align 4
  %idxprom471 = sext i32 %301 to i64
  %302 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx472 = getelementptr inbounds i8*, i8** %302, i64 %idxprom471
  %303 = load i8*, i8** %arrayidx472, align 8
  call void @output_quoted_string(%struct._IO_FILE* %300, i8* %303)
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.469, %if.then.458
  br label %if.end.474

if.end.474:                                       ; preds = %if.end.473, %if.then.450
  br label %for.inc.475

for.inc.475:                                      ; preds = %if.end.474
  %304 = load i32, i32* %i, align 4
  %inc476 = add nsw i32 %304, 1
  store i32 %inc476, i32* %i, align 4
  br label %for.cond.439

for.end.477:                                      ; preds = %for.cond.439
  %305 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out478 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %305, i32 0, i32 3
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %out478, align 8
  %call479 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %for.end.477, %if.then.435, %for.end.429, %if.then.416, %for.end.380, %if.then.356, %for.end.318, %if.then.292, %for.end.264, %if.then.226, %for.end.194, %if.then.139, %for.end.33, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i8* @find_home_dir() #0 {
entry:
  %home_dir = alloca i8*, align 8
  %pwent = alloca %struct.passwd*, align 8
  %uid = alloca i32, align 4
  %n = alloca i32, align 4
  %z = alloca i8*, align 8
  store i8* null, i8** %home_dir, align 8
  %call = call i32 @getuid() #3
  store i32 %call, i32* %uid, align 4
  %0 = load i32, i32* %uid, align 4
  %call1 = call %struct.passwd* @getpwuid(i32 %0)
  store %struct.passwd* %call1, %struct.passwd** %pwent, align 8
  %cmp = icmp ne %struct.passwd* %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.passwd*, %struct.passwd** %pwent, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %1, i32 0, i32 5
  %2 = load i8*, i8** %pw_dir, align 8
  store i8* %2, i8** %home_dir, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %home_dir, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %call3 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.160, i32 0, i32 0)) #3
  store i8* %call3, i8** %home_dir, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %4 = load i8*, i8** %home_dir, align 8
  %tobool5 = icmp ne i8* %4, null
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %if.end.4
  %5 = load i8*, i8** %home_dir, align 8
  %call7 = call i64 @strlen(i8* %5) #7
  %add = add i64 %call7, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %n, align 4
  %6 = load i32, i32* %n, align 4
  %conv8 = sext i32 %6 to i64
  %call9 = call noalias i8* @malloc(i64 %conv8) #3
  store i8* %call9, i8** %z, align 8
  %7 = load i8*, i8** %z, align 8
  %tobool10 = icmp ne i8* %7, null
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.6
  %8 = load i8*, i8** %z, align 8
  %9 = load i8*, i8** %home_dir, align 8
  %10 = load i32, i32* %n, align 4
  %conv12 = sext i32 %10 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %conv12, i32 1, i1 false)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.6
  %11 = load i8*, i8** %z, align 8
  store i8* %11, i8** %home_dir, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.4
  %12 = load i8*, i8** %home_dir, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @process_input(%struct.callback_data* %p, %struct._IO_FILE* %in) #0 {
entry:
  %p.addr = alloca %struct.callback_data*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %zLine = alloca i8*, align 8
  %zSql = alloca i8*, align 8
  %nSql = alloca i32, align 4
  %nSqlPrior = alloca i32, align 4
  %zErrMsg = alloca i8*, align 8
  %rc = alloca i32, align 4
  %errCnt = alloca i32, align 4
  %lineno = alloca i32, align 4
  %startline = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %zPrefix = alloca [100 x i8], align 16
  store %struct.callback_data* %p, %struct.callback_data** %p.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store i8* null, i8** %zLine, align 8
  store i8* null, i8** %zSql, align 8
  store i32 0, i32* %nSql, align 4
  store i32 0, i32* %nSqlPrior, align 4
  store i32 0, i32* %errCnt, align 4
  store i32 0, i32* %lineno, align 4
  store i32 0, i32* %startline, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.141, %if.end.41, %if.then.21, %entry
  %0 = load i32, i32* %errCnt, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load i32, i32* @bail_on_error, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %2, null
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %3 = load i32, i32* @stdin_is_interactive, align 4
  %tobool2 = icmp ne i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %tobool2, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %while.cond
  %5 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %4, %land.end ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %6 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %7)
  %8 = load i8*, i8** %zLine, align 8
  call void @free(i8* %8) #3
  %9 = load i8*, i8** %zSql, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call3 = call i8* @one_input_line(i8* %9, %struct._IO_FILE* %10)
  store i8* %call3, i8** %zLine, align 8
  %11 = load i8*, i8** %zLine, align 8
  %cmp4 = icmp eq i8* %11, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %12 = load volatile i32, i32* @seenInterrupt, align 4
  %tobool5 = icmp ne i32 %12, 0
  br i1 %tobool5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %cmp7 = icmp ne %struct._IO_FILE* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  br label %while.end

if.end.9:                                         ; preds = %if.then.6
  store volatile i32 0, i32* @seenInterrupt, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %14 = load i32, i32* %lineno, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %lineno, align 4
  %15 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %echoOn = getelementptr inbounds %struct.callback_data, %struct.callback_data* %15, i32 0, i32 1
  %16 = load i32, i32* %echoOn, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %17 = load i8*, i8** %zLine, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %18 = load i8*, i8** %zSql, align 8
  %cmp15 = icmp eq i8* %18, null
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.end.14
  %19 = load i8*, i8** %zSql, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %20 to i32
  %cmp17 = icmp eq i32 %conv, 0
  br i1 %cmp17, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %lor.lhs.false.16, %if.end.14
  %21 = load i8*, i8** %zLine, align 8
  %call19 = call i32 @_all_whitespace(i8* %21)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  br label %while.cond

if.end.22:                                        ; preds = %land.lhs.true, %lor.lhs.false.16
  %22 = load i8*, i8** %zLine, align 8
  %tobool23 = icmp ne i8* %22, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.42

land.lhs.true.24:                                 ; preds = %if.end.22
  %23 = load i8*, i8** %zLine, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %24 to i32
  %cmp27 = icmp eq i32 %conv26, 46
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.42

land.lhs.true.29:                                 ; preds = %land.lhs.true.24
  %25 = load i32, i32* %nSql, align 4
  %cmp30 = icmp eq i32 %25, 0
  br i1 %cmp30, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %land.lhs.true.29
  %26 = load i8*, i8** %zLine, align 8
  %27 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %call33 = call i32 @do_meta_command(i8* %26, %struct.callback_data* %27)
  store i32 %call33, i32* %rc, align 4
  %28 = load i32, i32* %rc, align 4
  %cmp34 = icmp eq i32 %28, 2
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.32
  br label %while.end

if.else:                                          ; preds = %if.then.32
  %29 = load i32, i32* %rc, align 4
  %tobool37 = icmp ne i32 %29, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.else
  %30 = load i32, i32* %errCnt, align 4
  %inc39 = add nsw i32 %30, 1
  store i32 %inc39, i32* %errCnt, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  br label %while.cond

if.end.42:                                        ; preds = %land.lhs.true.29, %land.lhs.true.24, %if.end.22
  %31 = load i8*, i8** %zLine, align 8
  %call43 = call i32 @_is_command_terminator(i8* %31)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %32 = load i8*, i8** %zLine, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.161, i32 0, i32 0), i64 2, i32 1, i1 false)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %33 = load i32, i32* %nSql, align 4
  store i32 %33, i32* %nSqlPrior, align 4
  %34 = load i8*, i8** %zSql, align 8
  %cmp47 = icmp eq i8* %34, null
  br i1 %cmp47, label %if.then.49, label %if.else.82

if.then.49:                                       ; preds = %if.end.46
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.49
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load i8*, i8** %zLine, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %36, i64 %idxprom
  %37 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %37 to i32
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %land.rhs.53, label %land.end.62

land.rhs.53:                                      ; preds = %for.cond
  %38 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %38 to i64
  %39 = load i8*, i8** %zLine, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %39, i64 %idxprom54
  %40 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %40 to i32
  %idxprom57 = sext i32 %conv56 to i64
  %call58 = call i16** @__ctype_b_loc() #9
  %41 = load i16*, i16** %call58, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %41, i64 %idxprom57
  %42 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %42 to i32
  %and = and i32 %conv60, 8192
  %tobool61 = icmp ne i32 %and, 0
  br label %land.end.62

land.end.62:                                      ; preds = %land.rhs.53, %for.cond
  %43 = phi i1 [ false, %for.cond ], [ %tobool61, %land.rhs.53 ]
  br i1 %43, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.62
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %44, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.62
  %45 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %45 to i64
  %46 = load i8*, i8** %zLine, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %46, i64 %idxprom64
  %47 = load i8, i8* %arrayidx65, align 1
  %conv66 = sext i8 %47 to i32
  %cmp67 = icmp ne i32 %conv66, 0
  br i1 %cmp67, label %if.then.69, label %if.end.81

if.then.69:                                       ; preds = %for.end
  %48 = load i8*, i8** %zLine, align 8
  %call70 = call i64 @strlen(i8* %48) #7
  %conv71 = trunc i64 %call70 to i32
  store i32 %conv71, i32* %nSql, align 4
  %49 = load i32, i32* %nSql, align 4
  %add = add nsw i32 %49, 1
  %conv72 = sext i32 %add to i64
  %call73 = call noalias i8* @malloc(i64 %conv72) #3
  store i8* %call73, i8** %zSql, align 8
  %50 = load i8*, i8** %zSql, align 8
  %cmp74 = icmp eq i8* %50, null
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.then.69
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.162, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end.78:                                        ; preds = %if.then.69
  %52 = load i8*, i8** %zSql, align 8
  %53 = load i8*, i8** %zLine, align 8
  %54 = load i32, i32* %nSql, align 4
  %add79 = add nsw i32 %54, 1
  %conv80 = sext i32 %add79 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 %conv80, i32 1, i1 false)
  %55 = load i32, i32* %lineno, align 4
  store i32 %55, i32* %startline, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.78, %for.end
  br label %if.end.102

if.else.82:                                       ; preds = %if.end.46
  %56 = load i8*, i8** %zLine, align 8
  %call83 = call i64 @strlen(i8* %56) #7
  %conv84 = trunc i64 %call83 to i32
  store i32 %conv84, i32* %len, align 4
  %57 = load i8*, i8** %zSql, align 8
  %58 = load i32, i32* %nSql, align 4
  %59 = load i32, i32* %len, align 4
  %add85 = add nsw i32 %58, %59
  %add86 = add nsw i32 %add85, 2
  %conv87 = sext i32 %add86 to i64
  %call88 = call i8* @realloc(i8* %57, i64 %conv87) #3
  store i8* %call88, i8** %zSql, align 8
  %60 = load i8*, i8** %zSql, align 8
  %cmp89 = icmp eq i8* %60, null
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.else.82
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load i8*, i8** @Argv0, align 8
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* %62)
  call void @exit(i32 1) #8
  unreachable

if.end.93:                                        ; preds = %if.else.82
  %63 = load i32, i32* %nSql, align 4
  %inc94 = add nsw i32 %63, 1
  store i32 %inc94, i32* %nSql, align 4
  %idxprom95 = sext i32 %63 to i64
  %64 = load i8*, i8** %zSql, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %64, i64 %idxprom95
  store i8 10, i8* %arrayidx96, align 1
  %65 = load i32, i32* %nSql, align 4
  %idxprom97 = sext i32 %65 to i64
  %66 = load i8*, i8** %zSql, align 8
  %arrayidx98 = getelementptr inbounds i8, i8* %66, i64 %idxprom97
  %67 = load i8*, i8** %zLine, align 8
  %68 = load i32, i32* %len, align 4
  %add99 = add nsw i32 %68, 1
  %conv100 = sext i32 %add99 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx98, i8* %67, i64 %conv100, i32 1, i1 false)
  %69 = load i32, i32* %len, align 4
  %70 = load i32, i32* %nSql, align 4
  %add101 = add nsw i32 %70, %69
  store i32 %add101, i32* %nSql, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.93, %if.end.81
  %71 = load i8*, i8** %zSql, align 8
  %tobool103 = icmp ne i8* %71, null
  br i1 %tobool103, label %land.lhs.true.104, label %if.end.141

land.lhs.true.104:                                ; preds = %if.end.102
  %72 = load i32, i32* %nSqlPrior, align 4
  %idxprom105 = sext i32 %72 to i64
  %73 = load i8*, i8** %zSql, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %73, i64 %idxprom105
  %74 = load i32, i32* %nSql, align 4
  %75 = load i32, i32* %nSqlPrior, align 4
  %sub = sub nsw i32 %74, %75
  %call107 = call i32 @_contains_semicolon(i8* %arrayidx106, i32 %sub)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.141

land.lhs.true.109:                                ; preds = %land.lhs.true.104
  %76 = load i8*, i8** %zSql, align 8
  %call110 = call i32 @sqlite3_complete(i8* %76)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.112, label %if.end.141

if.then.112:                                      ; preds = %land.lhs.true.109
  %77 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %cnt = getelementptr inbounds %struct.callback_data, %struct.callback_data* %77, i32 0, i32 2
  store i32 0, i32* %cnt, align 4
  %78 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  call void @open_db(%struct.callback_data* %78)
  call void @beginTimer()
  %79 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db = getelementptr inbounds %struct.callback_data, %struct.callback_data* %79, i32 0, i32 0
  %80 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %81 = load i8*, i8** %zSql, align 8
  %82 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %83 = bitcast %struct.callback_data* %82 to i8*
  %call113 = call i32 @sqlite3_exec(%struct.sqlite3* %80, i8* %81, i32 (i8*, i32, i8**, i8**)* @callback, i8* %83, i8** %zErrMsg)
  store i32 %call113, i32* %rc, align 4
  call void @endTimer()
  %84 = load i32, i32* %rc, align 4
  %tobool114 = icmp ne i32 %84, 0
  br i1 %tobool114, label %if.then.117, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %if.then.112
  %85 = load i8*, i8** %zErrMsg, align 8
  %tobool116 = icmp ne i8* %85, null
  br i1 %tobool116, label %if.then.117, label %if.end.140

if.then.117:                                      ; preds = %lor.lhs.false.115, %if.then.112
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %cmp118 = icmp ne %struct._IO_FILE* %86, null
  br i1 %cmp118, label %if.then.122, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %if.then.117
  %87 = load i32, i32* @stdin_is_interactive, align 4
  %tobool121 = icmp ne i32 %87, 0
  br i1 %tobool121, label %if.else.124, label %if.then.122

if.then.122:                                      ; preds = %lor.lhs.false.120, %if.then.117
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %zPrefix, i32 0, i32 0
  %88 = load i32, i32* %startline, align 4
  %call123 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %arraydecay, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.163, i32 0, i32 0), i32 %88)
  br label %if.end.127

if.else.124:                                      ; preds = %lor.lhs.false.120
  %arraydecay125 = getelementptr inbounds [100 x i8], [100 x i8]* %zPrefix, i32 0, i32 0
  %call126 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 100, i8* %arraydecay125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i32 0, i32 0))
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.122
  %89 = load i8*, i8** %zErrMsg, align 8
  %cmp128 = icmp ne i8* %89, null
  br i1 %cmp128, label %if.then.130, label %if.else.133

if.then.130:                                      ; preds = %if.end.127
  %arraydecay131 = getelementptr inbounds [100 x i8], [100 x i8]* %zPrefix, i32 0, i32 0
  %90 = load i8*, i8** %zErrMsg, align 8
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i32 0, i32 0), i8* %arraydecay131, i8* %90)
  %91 = load i8*, i8** %zErrMsg, align 8
  call void @sqlite3_free(i8* %91)
  store i8* null, i8** %zErrMsg, align 8
  br label %if.end.138

if.else.133:                                      ; preds = %if.end.127
  %arraydecay134 = getelementptr inbounds [100 x i8], [100 x i8]* %zPrefix, i32 0, i32 0
  %92 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db135 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %92, i32 0, i32 0
  %93 = load %struct.sqlite3*, %struct.sqlite3** %db135, align 8
  %call136 = call i8* @sqlite3_errmsg(%struct.sqlite3* %93)
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.165, i32 0, i32 0), i8* %arraydecay134, i8* %call136)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.133, %if.then.130
  %94 = load i32, i32* %errCnt, align 4
  %inc139 = add nsw i32 %94, 1
  store i32 %inc139, i32* %errCnt, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.138, %lor.lhs.false.115
  %95 = load i8*, i8** %zSql, align 8
  call void @free(i8* %95) #3
  store i8* null, i8** %zSql, align 8
  store i32 0, i32* %nSql, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %land.lhs.true.109, %land.lhs.true.104, %if.end.102
  br label %while.cond

while.end:                                        ; preds = %if.then.36, %if.then.8, %if.then, %lor.end
  %96 = load i8*, i8** %zSql, align 8
  %tobool142 = icmp ne i8* %96, null
  br i1 %tobool142, label %if.then.143, label %if.end.149

if.then.143:                                      ; preds = %while.end
  %97 = load i8*, i8** %zSql, align 8
  %call144 = call i32 @_all_whitespace(i8* %97)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.end.148, label %if.then.146

if.then.146:                                      ; preds = %if.then.143
  %98 = load i8*, i8** %zSql, align 8
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.166, i32 0, i32 0), i8* %98)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %if.then.143
  %99 = load i8*, i8** %zSql, align 8
  call void @free(i8* %99) #3
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %while.end
  %100 = load i8*, i8** %zLine, align 8
  call void @free(i8* %100) #3
  %101 = load i32, i32* %errCnt, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @set_table_name(%struct.callback_data* %p, i8* %zName) #0 {
entry:
  %p.addr = alloca %struct.callback_data*, align 8
  %zName.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %needQuote = alloca i32, align 4
  %z = alloca i8*, align 8
  store %struct.callback_data* %p, %struct.callback_data** %p.addr, align 8
  store i8* %zName, i8** %zName.addr, align 8
  %0 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %zDestTable = getelementptr inbounds %struct.callback_data, %struct.callback_data* %0, i32 0, i32 7
  %1 = load i8*, i8** %zDestTable, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %zDestTable1 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %2, i32 0, i32 7
  %3 = load i8*, i8** %zDestTable1, align 8
  call void @free(i8* %3) #3
  %4 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %zDestTable2 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %4, i32 0, i32 7
  store i8* null, i8** %zDestTable2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %zName.addr, align 8
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i8*, i8** %zName.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = zext i8 %7 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #9
  %8 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv5 = zext i16 %9 to i32
  %and = and i32 %conv5, 1024
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end.4
  %10 = load i8*, i8** %zName.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp ne i32 %conv7, 95
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.4
  %12 = phi i1 [ false, %if.end.4 ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  store i32 %land.ext, i32* %needQuote, align 4
  store i32 0, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i8*, i8** %zName.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %idxprom10
  %15 = load i8, i8* %arrayidx11, align 1
  %tobool12 = icmp ne i8 %15, 0
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i8*, i8** %zName.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %17, i64 %idxprom13
  %18 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %18 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %call17 = call i16** @__ctype_b_loc() #9
  %19 = load i16*, i16** %call17, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %19, i64 %idxprom16
  %20 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %20 to i32
  %and20 = and i32 %conv19, 8
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.35, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i8*, i8** %zName.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 %idxprom22
  %23 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %23 to i32
  %cmp25 = icmp ne i32 %conv24, 95
  br i1 %cmp25, label %if.then.27, label %if.end.35

if.then.27:                                       ; preds = %land.lhs.true
  store i32 1, i32* %needQuote, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %24 to i64
  %25 = load i8*, i8** %zName.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %25, i64 %idxprom28
  %26 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %26 to i32
  %cmp31 = icmp eq i32 %conv30, 39
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.27
  %27 = load i32, i32* %n, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.then.27
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %28 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %28, 1
  store i32 %inc36, i32* %i, align 4
  %29 = load i32, i32* %n, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %n, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %needQuote, align 4
  %tobool38 = icmp ne i32 %30, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end
  %31 = load i32, i32* %n, align 4
  %add = add nsw i32 %31, 2
  store i32 %add, i32* %n, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %for.end
  %32 = load i32, i32* %n, align 4
  %add41 = add nsw i32 %32, 1
  %conv42 = sext i32 %add41 to i64
  %call43 = call noalias i8* @malloc(i64 %conv42) #3
  %33 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %zDestTable44 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %33, i32 0, i32 7
  store i8* %call43, i8** %zDestTable44, align 8
  store i8* %call43, i8** %z, align 8
  %34 = load i8*, i8** %z, align 8
  %cmp45 = icmp eq i8* %34, null
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.40
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.168, i32 0, i32 0))
  call void @exit(i32 1) #8
  unreachable

if.end.49:                                        ; preds = %if.end.40
  store i32 0, i32* %n, align 4
  %36 = load i32, i32* %needQuote, align 4
  %tobool50 = icmp ne i32 %36, 0
  br i1 %tobool50, label %if.then.51, label %if.end.55

if.then.51:                                       ; preds = %if.end.49
  %37 = load i32, i32* %n, align 4
  %inc52 = add nsw i32 %37, 1
  store i32 %inc52, i32* %n, align 4
  %idxprom53 = sext i32 %37 to i64
  %38 = load i8*, i8** %z, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %38, i64 %idxprom53
  store i8 39, i8* %arrayidx54, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.51, %if.end.49
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.76, %if.end.55
  %39 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %39 to i64
  %40 = load i8*, i8** %zName.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %40, i64 %idxprom57
  %41 = load i8, i8* %arrayidx58, align 1
  %tobool59 = icmp ne i8 %41, 0
  br i1 %tobool59, label %for.body.60, label %for.end.78

for.body.60:                                      ; preds = %for.cond.56
  %42 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %42 to i64
  %43 = load i8*, i8** %zName.addr, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %43, i64 %idxprom61
  %44 = load i8, i8* %arrayidx62, align 1
  %45 = load i32, i32* %n, align 4
  %inc63 = add nsw i32 %45, 1
  store i32 %inc63, i32* %n, align 4
  %idxprom64 = sext i32 %45 to i64
  %46 = load i8*, i8** %z, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %46, i64 %idxprom64
  store i8 %44, i8* %arrayidx65, align 1
  %47 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %47 to i64
  %48 = load i8*, i8** %zName.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %48, i64 %idxprom66
  %49 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %49 to i32
  %cmp69 = icmp eq i32 %conv68, 39
  br i1 %cmp69, label %if.then.71, label %if.end.75

if.then.71:                                       ; preds = %for.body.60
  %50 = load i32, i32* %n, align 4
  %inc72 = add nsw i32 %50, 1
  store i32 %inc72, i32* %n, align 4
  %idxprom73 = sext i32 %50 to i64
  %51 = load i8*, i8** %z, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %51, i64 %idxprom73
  store i8 39, i8* %arrayidx74, align 1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.71, %for.body.60
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.75
  %52 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %52, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.56

for.end.78:                                       ; preds = %for.cond.56
  %53 = load i32, i32* %needQuote, align 4
  %tobool79 = icmp ne i32 %53, 0
  br i1 %tobool79, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %for.end.78
  %54 = load i32, i32* %n, align 4
  %inc81 = add nsw i32 %54, 1
  store i32 %inc81, i32* %n, align 4
  %idxprom82 = sext i32 %54 to i64
  %55 = load i8*, i8** %z, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %55, i64 %idxprom82
  store i8 39, i8* %arrayidx83, align 1
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %for.end.78
  %56 = load i32, i32* %n, align 4
  %idxprom85 = sext i32 %56 to i64
  %57 = load i8*, i8** %z, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %57, i64 %idxprom85
  store i8 0, i8* %arrayidx86, align 1
  br label %return

return:                                           ; preds = %if.end.84, %if.then.3
  ret void
}

declare i32 @sqlite3_close(%struct.sqlite3*) #4

declare i8* @sqlite3_errmsg(%struct.sqlite3*) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @sqlite3_interrupt(%struct.sqlite3*) #4

declare i32 @sqlite3_open(i8*, %struct.sqlite3**) #4

declare i32 @sqlite3_create_function(%struct.sqlite3*, i8*, i32, i32, i8*, void (%struct.sqlite3_context*, i32, %struct.Mem**)*, void (%struct.sqlite3_context*, i32, %struct.Mem**)*, void (%struct.sqlite3_context*)*) #4

; Function Attrs: nounwind uwtable
define internal void @shellstaticFunc(%struct.sqlite3_context* %context, i32 %argc, %struct.Mem** %argv) #0 {
entry:
  %context.addr = alloca %struct.sqlite3_context*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca %struct.Mem**, align 8
  store %struct.sqlite3_context* %context, %struct.sqlite3_context** %context.addr, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store %struct.Mem** %argv, %struct.Mem*** %argv.addr, align 8
  %0 = load %struct.sqlite3_context*, %struct.sqlite3_context** %context.addr, align 8
  %1 = load i8*, i8** @zShellStatic, align 8
  call void @sqlite3_result_text(%struct.sqlite3_context* %0, i8* %1, i32 -1, void (i8*)* null)
  ret void
}

declare i32 @sqlite3_errcode(%struct.sqlite3*) #4

declare void @sqlite3_result_text(%struct.sqlite3_context*, i8*, i32, void (i8*)*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define internal void @resolve_backslashes(i8* %z) #0 {
entry:
  %z.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  store i8* %z, i8** %z.addr, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %3, 92
  br i1 %cmp2, label %if.then, label %if.end.68

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  %idxprom4 = sext i32 %inc to i64
  %5 = load i8*, i8** %z.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %5, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %6 to i32
  store i32 %conv6, i32* %c, align 4
  %7 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %7, 110
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  store i32 10, i32* %c, align 4
  br label %if.end.67

if.else:                                          ; preds = %if.then
  %8 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %8, 116
  br i1 %cmp10, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i32 9, i32* %c, align 4
  br label %if.end.66

if.else.13:                                       ; preds = %if.else
  %9 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %9, 114
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.13
  store i32 13, i32* %c, align 4
  br label %if.end.65

if.else.17:                                       ; preds = %if.else.13
  %10 = load i32, i32* %c, align 4
  %cmp18 = icmp sge i32 %10, 48
  br i1 %cmp18, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %if.else.17
  %11 = load i32, i32* %c, align 4
  %cmp20 = icmp sle i32 %11, 55
  br i1 %cmp20, label %if.then.22, label %if.end.64

if.then.22:                                       ; preds = %land.lhs.true
  %12 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %12, 48
  store i32 %sub, i32* %c, align 4
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  %idxprom23 = sext i32 %add to i64
  %14 = load i8*, i8** %z.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %14, i64 %idxprom23
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %15 to i32
  %cmp26 = icmp sge i32 %conv25, 48
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.63

land.lhs.true.28:                                 ; preds = %if.then.22
  %16 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %16, 1
  %idxprom30 = sext i32 %add29 to i64
  %17 = load i8*, i8** %z.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %17, i64 %idxprom30
  %18 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %18 to i32
  %cmp33 = icmp sle i32 %conv32, 55
  br i1 %cmp33, label %if.then.35, label %if.end.63

if.then.35:                                       ; preds = %land.lhs.true.28
  %19 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %19, 1
  store i32 %inc36, i32* %i, align 4
  %20 = load i32, i32* %c, align 4
  %shl = shl i32 %20, 3
  %21 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %21 to i64
  %22 = load i8*, i8** %z.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %22, i64 %idxprom37
  %23 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %23 to i32
  %add40 = add nsw i32 %shl, %conv39
  %sub41 = sub nsw i32 %add40, 48
  store i32 %sub41, i32* %c, align 4
  %24 = load i32, i32* %i, align 4
  %add42 = add nsw i32 %24, 1
  %idxprom43 = sext i32 %add42 to i64
  %25 = load i8*, i8** %z.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %25, i64 %idxprom43
  %26 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %26 to i32
  %cmp46 = icmp sge i32 %conv45, 48
  br i1 %cmp46, label %land.lhs.true.48, label %if.end

land.lhs.true.48:                                 ; preds = %if.then.35
  %27 = load i32, i32* %i, align 4
  %add49 = add nsw i32 %27, 1
  %idxprom50 = sext i32 %add49 to i64
  %28 = load i8*, i8** %z.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %28, i64 %idxprom50
  %29 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %29 to i32
  %cmp53 = icmp sle i32 %conv52, 55
  br i1 %cmp53, label %if.then.55, label %if.end

if.then.55:                                       ; preds = %land.lhs.true.48
  %30 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %30, 1
  store i32 %inc56, i32* %i, align 4
  %31 = load i32, i32* %c, align 4
  %shl57 = shl i32 %31, 3
  %32 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %32 to i64
  %33 = load i8*, i8** %z.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %33, i64 %idxprom58
  %34 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %34 to i32
  %add61 = add nsw i32 %shl57, %conv60
  %sub62 = sub nsw i32 %add61, 48
  store i32 %sub62, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.55, %land.lhs.true.48, %if.then.35
  br label %if.end.63

if.end.63:                                        ; preds = %if.end, %land.lhs.true.28, %if.then.22
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %land.lhs.true, %if.else.17
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.16
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.12
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.9
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.body
  %35 = load i32, i32* %c, align 4
  %conv69 = trunc i32 %35 to i8
  %36 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %36 to i64
  %37 = load i8*, i8** %z.addr, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %37, i64 %idxprom70
  store i8 %conv69, i8* %arrayidx71, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %38 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %38, 1
  store i32 %inc72, i32* %i, align 4
  %39 = load i32, i32* %j, align 4
  %inc73 = add nsw i32 %39, 1
  store i32 %inc73, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %40 to i64
  %41 = load i8*, i8** %z.addr, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %41, i64 %idxprom74
  store i8 0, i8* %arrayidx75, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @booleanValue(i8* %zArg) #0 {
entry:
  %zArg.addr = alloca i8*, align 8
  %val = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %zArg, i8** %zArg.addr, align 8
  %0 = load i8*, i8** %zArg.addr, align 8
  %call = call i32 @atoi(i8* %0) #7
  store i32 %call, i32* %val, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8*, i8** %zArg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i8*, i8** %zArg.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %6 to i32
  %call3 = call i32 @tolower(i32 %conv) #3
  %conv4 = trunc i32 %call3 to i8
  %7 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i8*, i8** %zArg.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom5
  store i8 %conv4, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %zArg.addr, align 8
  %call7 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  store i32 1, i32* %val, align 4
  br label %if.end.13

if.else:                                          ; preds = %for.end
  %11 = load i8*, i8** %zArg.addr, align 8
  %call9 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else
  store i32 1, i32* %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  %12 = load i32, i32* %val, align 4
  ret i32 %12
}

declare void @sqlite3_free(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @run_schema_dump_query(%struct.callback_data* %p, i8* %zQuery, i8** %pzErrMsg) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.callback_data*, align 8
  %zQuery.addr = alloca i8*, align 8
  %pzErrMsg.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  %zQ2 = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct.callback_data* %p, %struct.callback_data** %p.addr, align 8
  store i8* %zQuery, i8** %zQuery.addr, align 8
  store i8** %pzErrMsg, i8*** %pzErrMsg.addr, align 8
  %0 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db = getelementptr inbounds %struct.callback_data, %struct.callback_data* %0, i32 0, i32 0
  %1 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %2 = load i8*, i8** %zQuery.addr, align 8
  %3 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %4 = bitcast %struct.callback_data* %3 to i8*
  %5 = load i8**, i8*** %pzErrMsg.addr, align 8
  %call = call i32 @sqlite3_exec(%struct.sqlite3* %1, i8* %2, i32 (i8*, i32, i8**, i8**)* @dump_callback, i8* %4, i8** %5)
  store i32 %call, i32* %rc, align 4
  %6 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 %6, 11
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %7 = load i8*, i8** %zQuery.addr, align 8
  %call1 = call i64 @strlen(i8* %7) #7
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %8 = load i8**, i8*** %pzErrMsg.addr, align 8
  %tobool = icmp ne i8** %8, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load i8**, i8*** %pzErrMsg.addr, align 8
  %10 = load i8*, i8** %9, align 8
  call void @sqlite3_free(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %11 = load i32, i32* %len, align 4
  %add = add nsw i32 %11, 100
  %conv3 = sext i32 %add to i64
  %call4 = call noalias i8* @malloc(i64 %conv3) #3
  store i8* %call4, i8** %zQ2, align 8
  %12 = load i8*, i8** %zQ2, align 8
  %cmp5 = icmp eq i8* %12, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %13 = load i32, i32* %rc, align 4
  store i32 %13, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %14 = load i8*, i8** %zQ2, align 8
  %15 = load i8*, i8** %zQuery.addr, align 8
  %call9 = call i8* (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 8, i8* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.120, i32 0, i32 0), i8* %15)
  %16 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %db10 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %16, i32 0, i32 0
  %17 = load %struct.sqlite3*, %struct.sqlite3** %db10, align 8
  %18 = load i8*, i8** %zQ2, align 8
  %19 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %20 = bitcast %struct.callback_data* %19 to i8*
  %21 = load i8**, i8*** %pzErrMsg.addr, align 8
  %call11 = call i32 @sqlite3_exec(%struct.sqlite3* %17, i8* %18, i32 (i8*, i32, i8**, i8**)* @dump_callback, i8* %20, i8** %21)
  store i32 %call11, i32* %rc, align 4
  %22 = load i8*, i8** %zQ2, align 8
  call void @free(i8* %22) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.8, %entry
  %23 = load i32, i32* %rc, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.7
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @run_table_dump_query(%struct._IO_FILE* %out, %struct.sqlite3* %db, i8* %zSelect) #0 {
entry:
  %retval = alloca i32, align 4
  %out.addr = alloca %struct._IO_FILE*, align 8
  %db.addr = alloca %struct.sqlite3*, align 8
  %zSelect.addr = alloca i8*, align 8
  %pSelect = alloca %struct.sqlite3_stmt*, align 8
  %rc = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store %struct.sqlite3* %db, %struct.sqlite3** %db.addr, align 8
  store i8* %zSelect, i8** %zSelect.addr, align 8
  %0 = load %struct.sqlite3*, %struct.sqlite3** %db.addr, align 8
  %1 = load i8*, i8** %zSelect.addr, align 8
  %call = call i32 @sqlite3_prepare(%struct.sqlite3* %0, i8* %1, i32 -1, %struct.sqlite3_stmt** %pSelect, i8** null)
  store i32 %call, i32* %rc, align 4
  %2 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pSelect, align 8
  %tobool = icmp ne %struct.sqlite3_stmt* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* %rc, align 4
  store i32 %4, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pSelect, align 8
  %call1 = call i32 @sqlite3_step(%struct.sqlite3_stmt* %5)
  store i32 %call1, i32* %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* %rc, align 4
  %cmp2 = icmp eq i32 %6, 100
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %8 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pSelect, align 8
  %call3 = call i8* @sqlite3_column_text(%struct.sqlite3_stmt* %8, i32 0)
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i8* %call3)
  %9 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pSelect, align 8
  %call5 = call i32 @sqlite3_step(%struct.sqlite3_stmt* %9)
  store i32 %call5, i32* %rc, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pSelect, align 8
  %call6 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %10)
  store i32 %call6, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i8* @sqlite3_mprintf(i8*, ...) #4

declare i32 @sqlite3_prepare(%struct.sqlite3*, i8*, i32, %struct.sqlite3_stmt**, i8**) #4

declare i32 @sqlite3_column_count(%struct.sqlite3_stmt*) #4

declare i32 @sqlite3_finalize(%struct.sqlite3_stmt*) #4

; Function Attrs: nounwind uwtable
define internal i8* @local_getline(i8* %zPrompt, %struct._IO_FILE* %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %zPrompt.addr = alloca i8*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %zLine = alloca i8*, align 8
  %nLine = alloca i32, align 4
  %n = alloca i32, align 4
  %eol = alloca i32, align 4
  store i8* %zPrompt, i8** %zPrompt.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %0 = load i8*, i8** %zPrompt.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %zPrompt.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8*, i8** %zPrompt.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 100, i32* %nLine, align 4
  %5 = load i32, i32* %nLine, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call noalias i8* @malloc(i64 %conv3) #3
  store i8* %call4, i8** %zLine, align 8
  %6 = load i8*, i8** %zLine, align 8
  %cmp = icmp eq i8* %6, null
  br i1 %cmp, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  store i32 0, i32* %n, align 4
  store i32 0, i32* %eol, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.end.7
  %7 = load i32, i32* %eol, align 4
  %tobool8 = icmp ne i32 %7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %while.body, label %while.end.49

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %n, align 4
  %add = add nsw i32 %8, 100
  %9 = load i32, i32* %nLine, align 4
  %cmp9 = icmp sgt i32 %add, %9
  br i1 %cmp9, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %while.body
  %10 = load i32, i32* %nLine, align 4
  %mul = mul nsw i32 %10, 2
  %add12 = add nsw i32 %mul, 100
  store i32 %add12, i32* %nLine, align 4
  %11 = load i8*, i8** %zLine, align 8
  %12 = load i32, i32* %nLine, align 4
  %conv13 = sext i32 %12 to i64
  %call14 = call i8* @realloc(i8* %11, i64 %conv13) #3
  store i8* %call14, i8** %zLine, align 8
  %13 = load i8*, i8** %zLine, align 8
  %cmp15 = icmp eq i8* %13, null
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.11
  store i8* null, i8** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %while.body
  %14 = load i32, i32* %n, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i8*, i8** %zLine, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  %16 = load i32, i32* %nLine, align 4
  %17 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %16, %17
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call20 = call i8* @fgets(i8* %arrayidx, i32 %sub, %struct._IO_FILE* %18)
  %cmp21 = icmp eq i8* %call20, null
  br i1 %cmp21, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %if.end.19
  %19 = load i32, i32* %n, align 4
  %cmp24 = icmp eq i32 %19, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  %20 = load i8*, i8** %zLine, align 8
  call void @free(i8* %20) #3
  store i8* null, i8** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.23
  %21 = load i32, i32* %n, align 4
  %idxprom28 = sext i32 %21 to i64
  %22 = load i8*, i8** %zLine, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %22, i64 %idxprom28
  store i8 0, i8* %arrayidx29, align 1
  store i32 1, i32* %eol, align 4
  br label %while.end.49

if.end.30:                                        ; preds = %if.end.19
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.35, %if.end.30
  %23 = load i32, i32* %n, align 4
  %idxprom32 = sext i32 %23 to i64
  %24 = load i8*, i8** %zLine, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %24, i64 %idxprom32
  %25 = load i8, i8* %arrayidx33, align 1
  %tobool34 = icmp ne i8 %25, 0
  br i1 %tobool34, label %while.body.35, label %while.end

while.body.35:                                    ; preds = %while.cond.31
  %26 = load i32, i32* %n, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %n, align 4
  br label %while.cond.31

while.end:                                        ; preds = %while.cond.31
  %27 = load i32, i32* %n, align 4
  %cmp36 = icmp sgt i32 %27, 0
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.48

land.lhs.true.38:                                 ; preds = %while.end
  %28 = load i32, i32* %n, align 4
  %sub39 = sub nsw i32 %28, 1
  %idxprom40 = sext i32 %sub39 to i64
  %29 = load i8*, i8** %zLine, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %29, i64 %idxprom40
  %30 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %30 to i32
  %cmp43 = icmp eq i32 %conv42, 10
  br i1 %cmp43, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %land.lhs.true.38
  %31 = load i32, i32* %n, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %n, align 4
  %32 = load i32, i32* %n, align 4
  %idxprom46 = sext i32 %32 to i64
  %33 = load i8*, i8** %zLine, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %33, i64 %idxprom46
  store i8 0, i8* %arrayidx47, align 1
  store i32 1, i32* %eol, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %land.lhs.true.38, %while.end
  br label %while.cond

while.end.49:                                     ; preds = %if.end.27, %while.cond
  %34 = load i8*, i8** %zLine, align 8
  %35 = load i32, i32* %n, align 4
  %add50 = add nsw i32 %35, 1
  %conv51 = sext i32 %add50 to i64
  %call52 = call i8* @realloc(i8* %34, i64 %conv51) #3
  store i8* %call52, i8** %zLine, align 8
  %36 = load i8*, i8** %zLine, align 8
  store i8* %36, i8** %retval
  br label %return

return:                                           ; preds = %while.end.49, %if.then.26, %if.then.17, %if.then.6
  %37 = load i8*, i8** %retval
  ret i8* %37
}

declare i32 @sqlite3_bind_text(%struct.sqlite3_stmt*, i32, i8*, i32, void (i8*)*) #4

declare i32 @sqlite3_step(%struct.sqlite3_stmt*) #4

declare i32 @sqlite3_reset(%struct.sqlite3_stmt*) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @tolower(i32) #1

; Function Attrs: nounwind uwtable
define internal void @output_c_string(%struct._IO_FILE* %out, i8* %z) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %z.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i8* %z, i8** %z.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call = call i32 @fputc(i32 34, %struct._IO_FILE* %0)
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %entry
  %1 = load i8*, i8** %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %z.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %c, align 4
  %cmp2 = icmp eq i32 %3, 92
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %c, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call4 = call i32 @fputc(i32 %4, %struct._IO_FILE* %5)
  %6 = load i32, i32* %c, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call5 = call i32 @fputc(i32 %6, %struct._IO_FILE* %7)
  br label %if.end.34

if.else:                                          ; preds = %while.body
  %8 = load i32, i32* %c, align 4
  %cmp6 = icmp eq i32 %8, 9
  br i1 %cmp6, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call9 = call i32 @fputc(i32 92, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call10 = call i32 @fputc(i32 116, %struct._IO_FILE* %10)
  br label %if.end.33

if.else.11:                                       ; preds = %if.else
  %11 = load i32, i32* %c, align 4
  %cmp12 = icmp eq i32 %11, 10
  br i1 %cmp12, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.else.11
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call15 = call i32 @fputc(i32 92, %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call16 = call i32 @fputc(i32 110, %struct._IO_FILE* %13)
  br label %if.end.32

if.else.17:                                       ; preds = %if.else.11
  %14 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %14, 13
  br i1 %cmp18, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.else.17
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call21 = call i32 @fputc(i32 92, %struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call22 = call i32 @fputc(i32 114, %struct._IO_FILE* %16)
  br label %if.end.31

if.else.23:                                       ; preds = %if.else.17
  %17 = load i32, i32* %c, align 4
  %idxprom = sext i32 %17 to i64
  %call24 = call i16** @__ctype_b_loc() #9
  %18 = load i16*, i16** %call24, align 8
  %arrayidx = getelementptr inbounds i16, i16* %18, i64 %idxprom
  %19 = load i16, i16* %arrayidx, align 2
  %conv25 = zext i16 %19 to i32
  %and = and i32 %conv25, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else.29, label %if.then.26

if.then.26:                                       ; preds = %if.else.23
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %21 = load i32, i32* %c, align 4
  %and27 = and i32 %21, 255
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), i32 %and27)
  br label %if.end

if.else.29:                                       ; preds = %if.else.23
  %22 = load i32, i32* %c, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call30 = call i32 @fputc(i32 %22, %struct._IO_FILE* %23)
  br label %if.end

if.end:                                           ; preds = %if.else.29, %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.20
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.14
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call35 = call i32 @fputc(i32 34, %struct._IO_FILE* %24)
  ret void
}

declare i32 @sqlite3_get_table(%struct.sqlite3*, i8*, i8***, i32*, i32*, i8**) #4

declare void @sqlite3_free_table(i8**) #4

declare i32 @sqlite3_busy_timeout(%struct.sqlite3*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @dump_callback(i8* %pArg, i32 %nArg, i8** %azArg, i8** %azCol) #0 {
entry:
  %retval = alloca i32, align 4
  %pArg.addr = alloca i8*, align 8
  %nArg.addr = alloca i32, align 4
  %azArg.addr = alloca i8**, align 8
  %azCol.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  %zTable = alloca i8*, align 8
  %zType = alloca i8*, align 8
  %zSql = alloca i8*, align 8
  %p = alloca %struct.callback_data*, align 8
  %zIns = alloca i8*, align 8
  %pTableInfo = alloca %struct.sqlite3_stmt*, align 8
  %zSelect = alloca i8*, align 8
  %zTableInfo = alloca i8*, align 8
  %zTmp = alloca i8*, align 8
  %zText = alloca i8*, align 8
  store i8* %pArg, i8** %pArg.addr, align 8
  store i32 %nArg, i32* %nArg.addr, align 4
  store i8** %azArg, i8*** %azArg.addr, align 8
  store i8** %azCol, i8*** %azCol.addr, align 8
  %0 = load i8*, i8** %pArg.addr, align 8
  %1 = bitcast i8* %0 to %struct.callback_data*
  store %struct.callback_data* %1, %struct.callback_data** %p, align 8
  %2 = load i32, i32* %nArg.addr, align 4
  %cmp = icmp ne i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %zTable, align 8
  %5 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx1, align 8
  store i8* %6, i8** %zType, align 8
  %7 = load i8**, i8*** %azArg.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 2
  %8 = load i8*, i8** %arrayidx2, align 8
  store i8* %8, i8** %zSql, align 8
  %9 = load i8*, i8** %zTable, align 8
  %call = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.121, i32 0, i32 0)) #7
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out = getelementptr inbounds %struct.callback_data, %struct.callback_data* %10, i32 0, i32 3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.122, i32 0, i32 0))
  br label %if.end.33

if.else:                                          ; preds = %if.end
  %12 = load i8*, i8** %zTable, align 8
  %call6 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.123, i32 0, i32 0)) #7
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.else
  %13 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out9 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %13, i32 0, i32 3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %out9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.124, i32 0, i32 0))
  br label %if.end.32

if.else.11:                                       ; preds = %if.else
  %15 = load i8*, i8** %zTable, align 8
  %call12 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.125, i32 0, i32 0), i64 7) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else.11
  store i32 0, i32* %retval
  br label %return

if.else.15:                                       ; preds = %if.else.11
  %16 = load i8*, i8** %zSql, align 8
  %call16 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.126, i32 0, i32 0), i64 20) #7
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.27

if.then.18:                                       ; preds = %if.else.15
  %17 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %writableSchema = getelementptr inbounds %struct.callback_data, %struct.callback_data* %17, i32 0, i32 5
  %18 = load i32, i32* %writableSchema, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end.23, label %if.then.19

if.then.19:                                       ; preds = %if.then.18
  %19 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out20 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %19, i32 0, i32 3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out20, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.127, i32 0, i32 0))
  %21 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %writableSchema22 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %21, i32 0, i32 5
  store i32 1, i32* %writableSchema22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.then.18
  %22 = load i8*, i8** %zTable, align 8
  %23 = load i8*, i8** %zTable, align 8
  %24 = load i8*, i8** %zSql, align 8
  %call24 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.128, i32 0, i32 0), i8* %22, i8* %23, i8* %24)
  store i8* %call24, i8** %zIns, align 8
  %25 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out25 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %25, i32 0, i32 3
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %out25, align 8
  %27 = load i8*, i8** %zIns, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %27)
  %28 = load i8*, i8** %zIns, align 8
  call void @sqlite3_free(i8* %28)
  store i32 0, i32* %retval
  br label %return

if.else.27:                                       ; preds = %if.else.15
  %29 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out28 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %29, i32 0, i32 3
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %out28, align 8
  %31 = load i8*, i8** %zSql, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0), i8* %31)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.4
  %32 = load i8*, i8** %zType, align 8
  %call34 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0)) #7
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.89

if.then.36:                                       ; preds = %if.end.33
  store %struct.sqlite3_stmt* null, %struct.sqlite3_stmt** %pTableInfo, align 8
  store i8* null, i8** %zSelect, align 8
  store i8* null, i8** %zTableInfo, align 8
  store i8* null, i8** %zTmp, align 8
  %33 = load i8*, i8** %zTableInfo, align 8
  %call37 = call i8* @appendText(i8* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0), i8 signext 0)
  store i8* %call37, i8** %zTableInfo, align 8
  %34 = load i8*, i8** %zTableInfo, align 8
  %35 = load i8*, i8** %zTable, align 8
  %call38 = call i8* @appendText(i8* %34, i8* %35, i8 signext 34)
  store i8* %call38, i8** %zTableInfo, align 8
  %36 = load i8*, i8** %zTableInfo, align 8
  %call39 = call i8* @appendText(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8 signext 0)
  store i8* %call39, i8** %zTableInfo, align 8
  %37 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %db = getelementptr inbounds %struct.callback_data, %struct.callback_data* %37, i32 0, i32 0
  %38 = load %struct.sqlite3*, %struct.sqlite3** %db, align 8
  %39 = load i8*, i8** %zTableInfo, align 8
  %call40 = call i32 @sqlite3_prepare(%struct.sqlite3* %38, i8* %39, i32 -1, %struct.sqlite3_stmt** %pTableInfo, i8** null)
  store i32 %call40, i32* %rc, align 4
  %40 = load i8*, i8** %zTableInfo, align 8
  %tobool41 = icmp ne i8* %40, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.36
  %41 = load i8*, i8** %zTableInfo, align 8
  call void @free(i8* %41) #3
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.36
  %42 = load i32, i32* %rc, align 4
  %cmp44 = icmp ne i32 %42, 0
  br i1 %cmp44, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %43 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pTableInfo, align 8
  %tobool45 = icmp ne %struct.sqlite3_stmt* %43, null
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %lor.lhs.false, %if.end.43
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false
  %44 = load i8*, i8** %zSelect, align 8
  %call48 = call i8* @appendText(i8* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.132, i32 0, i32 0), i8 signext 0)
  store i8* %call48, i8** %zSelect, align 8
  %45 = load i8*, i8** %zTmp, align 8
  %46 = load i8*, i8** %zTable, align 8
  %call49 = call i8* @appendText(i8* %45, i8* %46, i8 signext 34)
  store i8* %call49, i8** %zTmp, align 8
  %47 = load i8*, i8** %zTmp, align 8
  %tobool50 = icmp ne i8* %47, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.47
  %48 = load i8*, i8** %zSelect, align 8
  %49 = load i8*, i8** %zTmp, align 8
  %call52 = call i8* @appendText(i8* %48, i8* %49, i8 signext 39)
  store i8* %call52, i8** %zSelect, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.47
  %50 = load i8*, i8** %zSelect, align 8
  %call54 = call i8* @appendText(i8* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.133, i32 0, i32 0), i8 signext 0)
  store i8* %call54, i8** %zSelect, align 8
  %51 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pTableInfo, align 8
  %call55 = call i32 @sqlite3_step(%struct.sqlite3_stmt* %51)
  store i32 %call55, i32* %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.66, %if.end.53
  %52 = load i32, i32* %rc, align 4
  %cmp56 = icmp eq i32 %52, 100
  br i1 %cmp56, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %53 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pTableInfo, align 8
  %call57 = call i8* @sqlite3_column_text(%struct.sqlite3_stmt* %53, i32 1)
  store i8* %call57, i8** %zText, align 8
  %54 = load i8*, i8** %zSelect, align 8
  %call58 = call i8* @appendText(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.134, i32 0, i32 0), i8 signext 0)
  store i8* %call58, i8** %zSelect, align 8
  %55 = load i8*, i8** %zSelect, align 8
  %56 = load i8*, i8** %zText, align 8
  %call59 = call i8* @appendText(i8* %55, i8* %56, i8 signext 34)
  store i8* %call59, i8** %zSelect, align 8
  %57 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pTableInfo, align 8
  %call60 = call i32 @sqlite3_step(%struct.sqlite3_stmt* %57)
  store i32 %call60, i32* %rc, align 4
  %58 = load i32, i32* %rc, align 4
  %cmp61 = icmp eq i32 %58, 100
  br i1 %cmp61, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %while.body
  %59 = load i8*, i8** %zSelect, align 8
  %call63 = call i8* @appendText(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i8 signext 0)
  store i8* %call63, i8** %zSelect, align 8
  br label %if.end.66

if.else.64:                                       ; preds = %while.body
  %60 = load i8*, i8** %zSelect, align 8
  %call65 = call i8* @appendText(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0), i8 signext 0)
  store i8* %call65, i8** %zSelect, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.62
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load %struct.sqlite3_stmt*, %struct.sqlite3_stmt** %pTableInfo, align 8
  %call67 = call i32 @sqlite3_finalize(%struct.sqlite3_stmt* %61)
  store i32 %call67, i32* %rc, align 4
  %62 = load i32, i32* %rc, align 4
  %cmp68 = icmp ne i32 %62, 0
  br i1 %cmp68, label %if.then.69, label %if.end.73

if.then.69:                                       ; preds = %while.end
  %63 = load i8*, i8** %zSelect, align 8
  %tobool70 = icmp ne i8* %63, null
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.69
  %64 = load i8*, i8** %zSelect, align 8
  call void @free(i8* %64) #3
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.then.69
  store i32 1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %while.end
  %65 = load i8*, i8** %zSelect, align 8
  %call74 = call i8* @appendText(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i32 0, i32 0), i8 signext 0)
  store i8* %call74, i8** %zSelect, align 8
  %66 = load i8*, i8** %zSelect, align 8
  %67 = load i8*, i8** %zTable, align 8
  %call75 = call i8* @appendText(i8* %66, i8* %67, i8 signext 34)
  store i8* %call75, i8** %zSelect, align 8
  %68 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out76 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %68, i32 0, i32 3
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %out76, align 8
  %70 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %db77 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %70, i32 0, i32 0
  %71 = load %struct.sqlite3*, %struct.sqlite3** %db77, align 8
  %72 = load i8*, i8** %zSelect, align 8
  %call78 = call i32 @run_table_dump_query(%struct._IO_FILE* %69, %struct.sqlite3* %71, i8* %72)
  store i32 %call78, i32* %rc, align 4
  %73 = load i32, i32* %rc, align 4
  %cmp79 = icmp eq i32 %73, 11
  br i1 %cmp79, label %if.then.80, label %if.end.85

if.then.80:                                       ; preds = %if.end.73
  %74 = load i8*, i8** %zSelect, align 8
  %call81 = call i8* @appendText(i8* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.138, i32 0, i32 0), i8 signext 0)
  store i8* %call81, i8** %zSelect, align 8
  %75 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %out82 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %75, i32 0, i32 3
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %out82, align 8
  %77 = load %struct.callback_data*, %struct.callback_data** %p, align 8
  %db83 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %77, i32 0, i32 0
  %78 = load %struct.sqlite3*, %struct.sqlite3** %db83, align 8
  %79 = load i8*, i8** %zSelect, align 8
  %call84 = call i32 @run_table_dump_query(%struct._IO_FILE* %76, %struct.sqlite3* %78, i8* %79)
  store i32 %call84, i32* %rc, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.80, %if.end.73
  %80 = load i8*, i8** %zSelect, align 8
  %tobool86 = icmp ne i8* %80, null
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.85
  %81 = load i8*, i8** %zSelect, align 8
  call void @free(i8* %81) #3
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %if.end.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.33
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.end.72, %if.then.46, %if.end.23, %if.then.14, %if.then
  %82 = load i32, i32* %retval
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i8* @appendText(i8* %zIn, i8* %zAppend, i8 signext %quote) #0 {
entry:
  %retval = alloca i8*, align 8
  %zIn.addr = alloca i8*, align 8
  %zAppend.addr = alloca i8*, align 8
  %quote.addr = alloca i8, align 1
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %nAppend = alloca i32, align 4
  %nIn = alloca i32, align 4
  %zCsr = alloca i8*, align 8
  store i8* %zIn, i8** %zIn.addr, align 8
  store i8* %zAppend, i8** %zAppend.addr, align 8
  store i8 %quote, i8* %quote.addr, align 1
  %0 = load i8*, i8** %zAppend.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %nAppend, align 4
  %1 = load i8*, i8** %zIn.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %zIn.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call1, %cond.true ], [ 0, %cond.false ]
  %conv2 = trunc i64 %cond to i32
  store i32 %conv2, i32* %nIn, align 4
  %3 = load i32, i32* %nAppend, align 4
  %4 = load i32, i32* %nIn, align 4
  %add = add nsw i32 %3, %4
  %add3 = add nsw i32 %add, 1
  store i32 %add3, i32* %len, align 4
  %5 = load i8, i8* %quote.addr, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %if.then, label %if.end.13

if.then:                                          ; preds = %cond.end
  %6 = load i32, i32* %len, align 4
  %add5 = add nsw i32 %6, 2
  store i32 %add5, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %nAppend, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %zAppend.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %11 to i32
  %12 = load i8, i8* %quote.addr, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv7, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body
  %13 = load i32, i32* %len, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %cond.end
  %15 = load i8*, i8** %zIn.addr, align 8
  %16 = load i32, i32* %len, align 4
  %conv14 = sext i32 %16 to i64
  %call15 = call i8* @realloc(i8* %15, i64 %conv14) #3
  store i8* %call15, i8** %zIn.addr, align 8
  %17 = load i8*, i8** %zIn.addr, align 8
  %tobool16 = icmp ne i8* %17, null
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.13
  store i8* null, i8** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  %18 = load i8, i8* %quote.addr, align 1
  %tobool19 = icmp ne i8 %18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.18
  %19 = load i32, i32* %nIn, align 4
  %idxprom21 = sext i32 %19 to i64
  %20 = load i8*, i8** %zIn.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %20, i64 %idxprom21
  store i8* %arrayidx22, i8** %zCsr, align 8
  %21 = load i8, i8* %quote.addr, align 1
  %22 = load i8*, i8** %zCsr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %zCsr, align 8
  store i8 %21, i8* %22, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.39, %if.then.20
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %nAppend, align 4
  %cmp24 = icmp slt i32 %23, %24
  br i1 %cmp24, label %for.body.26, label %for.end.41

for.body.26:                                      ; preds = %for.cond.23
  %25 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load i8*, i8** %zAppend.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i64 %idxprom27
  %27 = load i8, i8* %arrayidx28, align 1
  %28 = load i8*, i8** %zCsr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr29, i8** %zCsr, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load i8*, i8** %zAppend.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 %idxprom30
  %31 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %31 to i32
  %32 = load i8, i8* %quote.addr, align 1
  %conv33 = sext i8 %32 to i32
  %cmp34 = icmp eq i32 %conv32, %conv33
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %for.body.26
  %33 = load i8, i8* %quote.addr, align 1
  %34 = load i8*, i8** %zCsr, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr37, i8** %zCsr, align 8
  store i8 %33, i8* %34, align 1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %for.body.26
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %35 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %35, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.23

for.end.41:                                       ; preds = %for.cond.23
  %36 = load i8, i8* %quote.addr, align 1
  %37 = load i8*, i8** %zCsr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr42, i8** %zCsr, align 8
  store i8 %36, i8* %37, align 1
  %38 = load i8*, i8** %zCsr, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr43, i8** %zCsr, align 8
  store i8 0, i8* %38, align 1
  br label %if.end.49

if.else:                                          ; preds = %if.end.18
  %39 = load i32, i32* %nIn, align 4
  %idxprom44 = sext i32 %39 to i64
  %40 = load i8*, i8** %zIn.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %40, i64 %idxprom44
  %41 = load i8*, i8** %zAppend.addr, align 8
  %42 = load i32, i32* %nAppend, align 4
  %conv46 = sext i32 %42 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx45, i8* %41, i64 %conv46, i32 1, i1 false)
  %43 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %43, 1
  %idxprom47 = sext i32 %sub to i64
  %44 = load i8*, i8** %zIn.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %44, i64 %idxprom47
  store i8 0, i8* %arrayidx48, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %for.end.41
  %45 = load i8*, i8** %zIn.addr, align 8
  store i8* %45, i8** %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.17
  %46 = load i8*, i8** %retval
  ret i8* %46
}

declare i8* @sqlite3_column_text(%struct.sqlite3_stmt*, i32) #4

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

declare i32 @fflush(%struct._IO_FILE*) #4

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare i32 @fputc(i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind uwtable
define internal void @output_html_string(%struct._IO_FILE* %out, i8* %z) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %z.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i8* %z, i8** %z.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %entry
  %0 = load i8*, i8** %z.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i8*, i8** %z.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %7 to i32
  %cmp = icmp ne i32 %conv4, 60
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %9 = load i8*, i8** %z.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 %idxprom6
  %10 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %10 to i32
  %cmp9 = icmp ne i32 %conv8, 38
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp9, %land.rhs ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %13 = load i32, i32* %i, align 4
  %cmp11 = icmp sgt i32 %13, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %15 = load i32, i32* %i, align 4
  %16 = load i8*, i8** %z.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 %15, i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %17 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %17 to i64
  %18 = load i8*, i8** %z.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %18, i64 %idxprom13
  %19 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv15, 60
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.154, i32 0, i32 0))
  br label %if.end.29

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i8*, i8** %z.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %22, i64 %idxprom20
  %23 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %23 to i32
  %cmp23 = icmp eq i32 %conv22, 38
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.else
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.155, i32 0, i32 0))
  br label %if.end.28

if.else.27:                                       ; preds = %if.else
  br label %while.end

if.end.28:                                        ; preds = %if.then.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.18
  %25 = load i32, i32* %i, align 4
  %add = add nsw i32 %25, 1
  %26 = load i8*, i8** %z.addr, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.ext
  store i8* %add.ptr, i8** %z.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.else.27, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_csv(%struct.callback_data* %p, i8* %z, i32 %bSep) #0 {
entry:
  %p.addr = alloca %struct.callback_data*, align 8
  %z.addr = alloca i8*, align 8
  %bSep.addr = alloca i32, align 4
  %out = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %nSep = alloca i32, align 4
  store %struct.callback_data* %p, %struct.callback_data** %p.addr, align 8
  store i8* %z, i8** %z.addr, align 8
  store i32 %bSep, i32* %bSep.addr, align 4
  %0 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out1 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %0, i32 0, i32 3
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out1, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %out, align 8
  %2 = load i8*, i8** %z.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %4 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %nullvalue = getelementptr inbounds %struct.callback_data, %struct.callback_data* %4, i32 0, i32 11
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %nullvalue, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay)
  br label %if.end.56

if.else:                                          ; preds = %entry
  %5 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator = getelementptr inbounds %struct.callback_data, %struct.callback_data* %5, i32 0, i32 8
  %arraydecay2 = getelementptr inbounds [20 x i8], [20 x i8]* %separator, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #7
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %nSep, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i8*, i8** %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i8*, i8** %z.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  %11 = load i8, i8* %arrayidx5, align 1
  %idxprom6 = zext i8 %11 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @needCsvQuote, i32 0, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %12 to i32
  %tobool9 = icmp ne i32 %conv8, 0
  br i1 %tobool9, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i8*, i8** %z.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %14, i64 %idxprom10
  %15 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %15 to i32
  %16 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator13 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %16, i32 0, i32 8
  %arrayidx14 = getelementptr inbounds [20 x i8], [20 x i8]* %separator13, i32 0, i64 0
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv12, %conv15
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %18 = load i32, i32* %nSep, align 4
  %cmp18 = icmp eq i32 %18, 1
  br i1 %cmp18, label %if.then.27, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true
  %19 = load i8*, i8** %z.addr, align 8
  %20 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator21 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %20, i32 0, i32 8
  %arraydecay22 = getelementptr inbounds [20 x i8], [20 x i8]* %separator21, i32 0, i32 0
  %21 = load i32, i32* %nSep, align 4
  %conv23 = sext i32 %21 to i64
  %call24 = call i32 @memcmp(i8* %19, i8* %arraydecay22, i64 %conv23) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %lor.lhs.false.20, %land.lhs.true, %for.body
  store i32 0, i32* %i, align 4
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false.20, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.27, %for.cond
  %23 = load i32, i32* %i, align 4
  %cmp28 = icmp eq i32 %23, 0
  br i1 %cmp28, label %if.then.30, label %if.else.53

if.then.30:                                       ; preds = %for.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call31 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %24)
  store i32 0, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.49, %if.then.30
  %25 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load i8*, i8** %z.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %26, i64 %idxprom33
  %27 = load i8, i8* %arrayidx34, align 1
  %tobool35 = icmp ne i8 %27, 0
  br i1 %tobool35, label %for.body.36, label %for.end.51

for.body.36:                                      ; preds = %for.cond.32
  %28 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %28 to i64
  %29 = load i8*, i8** %z.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %29, i64 %idxprom37
  %30 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %30 to i32
  %cmp40 = icmp eq i32 %conv39, 34
  br i1 %cmp40, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %for.body.36
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call43 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %31)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %for.body.36
  %32 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load i8*, i8** %z.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %33, i64 %idxprom45
  %34 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %34 to i32
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call48 = call i32 @_IO_putc(i32 %conv47, %struct._IO_FILE* %35)
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.44
  %36 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %36, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.32

for.end.51:                                       ; preds = %for.cond.32
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call52 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %37)
  br label %if.end.55

if.else.53:                                       ; preds = %for.end
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %39 = load i8*, i8** %z.addr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %39)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.53, %for.end.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then
  %40 = load i32, i32* %bSep.addr, align 4
  %tobool57 = icmp ne i32 %40, 0
  br i1 %tobool57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %if.end.56
  %41 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %out59 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %41, i32 0, i32 3
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %out59, align 8
  %43 = load %struct.callback_data*, %struct.callback_data** %p.addr, align 8
  %separator60 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %43, i32 0, i32 8
  %arraydecay61 = getelementptr inbounds [20 x i8], [20 x i8]* %separator60, i32 0, i32 0
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %arraydecay61)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %if.end.56
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @isNumber(i8* %z, i32* %realnum) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca i8*, align 8
  %realnum.addr = alloca i32*, align 8
  store i8* %z, i8** %z.addr, align 8
  store i32* %realnum, i32** %realnum.addr, align 8
  %0 = load i8*, i8** %z.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %z.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 43
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %z.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i8*, i8** %z.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv5 = sext i8 %6 to i32
  %idxprom = sext i32 %conv5 to i64
  %call = call i16** @__ctype_b_loc() #9
  %7 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %8 to i32
  %and = and i32 %conv6, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %9 = load i8*, i8** %z.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr9, i8** %z.addr, align 8
  %10 = load i32*, i32** %realnum.addr, align 8
  %tobool10 = icmp ne i32* %10, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %11 = load i32*, i32** %realnum.addr, align 8
  store i32 0, i32* %11, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.12
  %12 = load i8*, i8** %z.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv13 = sext i8 %13 to i32
  %idxprom14 = sext i32 %conv13 to i64
  %call15 = call i16** @__ctype_b_loc() #9
  %14 = load i16*, i16** %call15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %14, i64 %idxprom14
  %15 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %15 to i32
  %and18 = and i32 %conv17, 2048
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %z.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr20, i8** %z.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %z.addr, align 8
  %18 = load i8, i8* %17, align 1
  %conv21 = sext i8 %18 to i32
  %cmp22 = icmp eq i32 %conv21, 46
  br i1 %cmp22, label %if.then.24, label %if.end.49

if.then.24:                                       ; preds = %while.end
  %19 = load i8*, i8** %z.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr25, i8** %z.addr, align 8
  %20 = load i8*, i8** %z.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv26 = sext i8 %21 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %call28 = call i16** @__ctype_b_loc() #9
  %22 = load i16*, i16** %call28, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %22, i64 %idxprom27
  %23 = load i16, i16* %arrayidx29, align 2
  %conv30 = zext i16 %23 to i32
  %and31 = and i32 %conv30, 2048
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.end.34, label %if.then.33

if.then.33:                                       ; preds = %if.then.24
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.24
  br label %while.cond.35

while.cond.35:                                    ; preds = %while.body.43, %if.end.34
  %24 = load i8*, i8** %z.addr, align 8
  %25 = load i8, i8* %24, align 1
  %conv36 = sext i8 %25 to i32
  %idxprom37 = sext i32 %conv36 to i64
  %call38 = call i16** @__ctype_b_loc() #9
  %26 = load i16*, i16** %call38, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %26, i64 %idxprom37
  %27 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %27 to i32
  %and41 = and i32 %conv40, 2048
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %while.body.43, label %while.end.45

while.body.43:                                    ; preds = %while.cond.35
  %28 = load i8*, i8** %z.addr, align 8
  %incdec.ptr44 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr44, i8** %z.addr, align 8
  br label %while.cond.35

while.end.45:                                     ; preds = %while.cond.35
  %29 = load i32*, i32** %realnum.addr, align 8
  %tobool46 = icmp ne i32* %29, null
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %while.end.45
  %30 = load i32*, i32** %realnum.addr, align 8
  store i32 1, i32* %30, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %while.end.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %while.end
  %31 = load i8*, i8** %z.addr, align 8
  %32 = load i8, i8* %31, align 1
  %conv50 = sext i8 %32 to i32
  %cmp51 = icmp eq i32 %conv50, 101
  br i1 %cmp51, label %if.then.57, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %if.end.49
  %33 = load i8*, i8** %z.addr, align 8
  %34 = load i8, i8* %33, align 1
  %conv54 = sext i8 %34 to i32
  %cmp55 = icmp eq i32 %conv54, 69
  br i1 %cmp55, label %if.then.57, label %if.end.92

if.then.57:                                       ; preds = %lor.lhs.false.53, %if.end.49
  %35 = load i8*, i8** %z.addr, align 8
  %incdec.ptr58 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr58, i8** %z.addr, align 8
  %36 = load i8*, i8** %z.addr, align 8
  %37 = load i8, i8* %36, align 1
  %conv59 = sext i8 %37 to i32
  %cmp60 = icmp eq i32 %conv59, 43
  br i1 %cmp60, label %if.then.66, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.then.57
  %38 = load i8*, i8** %z.addr, align 8
  %39 = load i8, i8* %38, align 1
  %conv63 = sext i8 %39 to i32
  %cmp64 = icmp eq i32 %conv63, 45
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %lor.lhs.false.62, %if.then.57
  %40 = load i8*, i8** %z.addr, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr67, i8** %z.addr, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %lor.lhs.false.62
  %41 = load i8*, i8** %z.addr, align 8
  %42 = load i8, i8* %41, align 1
  %conv69 = sext i8 %42 to i32
  %idxprom70 = sext i32 %conv69 to i64
  %call71 = call i16** @__ctype_b_loc() #9
  %43 = load i16*, i16** %call71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %43, i64 %idxprom70
  %44 = load i16, i16* %arrayidx72, align 2
  %conv73 = zext i16 %44 to i32
  %and74 = and i32 %conv73, 2048
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.end.77, label %if.then.76

if.then.76:                                       ; preds = %if.end.68
  store i32 0, i32* %retval
  br label %return

if.end.77:                                        ; preds = %if.end.68
  br label %while.cond.78

while.cond.78:                                    ; preds = %while.body.86, %if.end.77
  %45 = load i8*, i8** %z.addr, align 8
  %46 = load i8, i8* %45, align 1
  %conv79 = sext i8 %46 to i32
  %idxprom80 = sext i32 %conv79 to i64
  %call81 = call i16** @__ctype_b_loc() #9
  %47 = load i16*, i16** %call81, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %47, i64 %idxprom80
  %48 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %48 to i32
  %and84 = and i32 %conv83, 2048
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %while.body.86, label %while.end.88

while.body.86:                                    ; preds = %while.cond.78
  %49 = load i8*, i8** %z.addr, align 8
  %incdec.ptr87 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr87, i8** %z.addr, align 8
  br label %while.cond.78

while.end.88:                                     ; preds = %while.cond.78
  %50 = load i32*, i32** %realnum.addr, align 8
  %tobool89 = icmp ne i32* %50, null
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %while.end.88
  %51 = load i32*, i32** %realnum.addr, align 8
  store i32 1, i32* %51, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %while.end.88
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %lor.lhs.false.53
  %52 = load i8*, i8** %z.addr, align 8
  %53 = load i8, i8* %52, align 1
  %conv93 = sext i8 %53 to i32
  %cmp94 = icmp eq i32 %conv93, 0
  %conv95 = zext i1 %cmp94 to i32
  store i32 %conv95, i32* %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.then.76, %if.then.33, %if.then.7
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal void @output_quoted_string(%struct._IO_FILE* %out, i8* %z) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %z.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %nSingle = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i8* %z, i8** %z.addr, align 8
  store i32 0, i32* %nSingle, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8*, i8** %z.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 39
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %nSingle, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %nSingle, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %nSingle, align 4
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %10 = load i8*, i8** %z.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), i8* %10)
  br label %if.end.41

if.else:                                          ; preds = %for.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.else
  %12 = load i8*, i8** %z.addr, align 8
  %13 = load i8, i8* %12, align 1
  %tobool9 = icmp ne i8 %13, 0
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.21, %while.body
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %15 = load i8*, i8** %z.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %15, i64 %idxprom11
  %16 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %16 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.10
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load i8*, i8** %z.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %18, i64 %idxprom15
  %19 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %19 to i32
  %cmp18 = icmp ne i32 %conv17, 39
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.10
  %20 = phi i1 [ false, %for.cond.10 ], [ %cmp18, %land.rhs ]
  br i1 %20, label %for.body.20, label %for.end.23

for.body.20:                                      ; preds = %land.end
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.20
  %21 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %21, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.10

for.end.23:                                       ; preds = %land.end
  %22 = load i32, i32* %i, align 4
  %cmp24 = icmp eq i32 %22, 0
  br i1 %cmp24, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %for.end.23
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i32 0, i32 0))
  %24 = load i8*, i8** %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %z.addr, align 8
  br label %if.end.39

if.else.28:                                       ; preds = %for.end.23
  %25 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %25 to i64
  %26 = load i8*, i8** %z.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %26, i64 %idxprom29
  %27 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %27 to i32
  %cmp32 = icmp eq i32 %conv31, 39
  br i1 %cmp32, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else.28
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %29 = load i32, i32* %i, align 4
  %30 = load i8*, i8** %z.addr, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.159, i32 0, i32 0), i32 %29, i8* %30)
  %31 = load i32, i32* %i, align 4
  %add = add nsw i32 %31, 1
  %32 = load i8*, i8** %z.addr, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %z.addr, align 8
  br label %if.end.38

if.else.36:                                       ; preds = %if.else.28
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %34 = load i8*, i8** %z.addr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), i8* %34)
  br label %while.end

if.end.38:                                        ; preds = %if.then.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.26
  br label %while.cond

while.end:                                        ; preds = %if.else.36, %while.cond
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i32 0, i32 0))
  br label %if.end.41

if.end.41:                                        ; preds = %while.end, %if.then.7
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind
declare i32 @getuid() #1

declare %struct.passwd* @getpwuid(i32) #4

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @one_input_line(i8* %zPrior, %struct._IO_FILE* %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %zPrior.addr = alloca i8*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %zPrompt = alloca i8*, align 8
  %zResult = alloca i8*, align 8
  store i8* %zPrior, i8** %zPrior.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %cmp = icmp ne %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i8* @local_getline(i8* null, %struct._IO_FILE* %1)
  store i8* %call, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %zPrior.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %zPrior.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @continuePrompt, i32 0, i32 0), i8** %zPrompt, align 8
  br label %if.end.3

if.else:                                          ; preds = %land.lhs.true, %if.end
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @mainPrompt, i32 0, i32 0), i8** %zPrompt, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %5 = load i8*, i8** %zPrompt, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call4 = call i8* @local_getline(i8* %5, %struct._IO_FILE* %6)
  store i8* %call4, i8** %zResult, align 8
  %7 = load i8*, i8** %zResult, align 8
  store i8* %7, i8** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @_all_whitespace(i8* %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca i8*, align 8
  store i8* %z, i8** %z.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %z.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %z.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #9
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %5 to i32
  %and = and i32 %conv1, 8192
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load i8*, i8** %z.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv3 = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv3, 47
  br i1 %cmp, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %z.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 42
  br i1 %cmp7, label %if.then.9, label %if.end.25

if.then.9:                                        ; preds = %land.lhs.true
  %10 = load i8*, i8** %z.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 2
  store i8* %add.ptr, i8** %z.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.9
  %11 = load i8*, i8** %z.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i8*, i8** %z.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp ne i32 %conv12, 42
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %15 = load i8*, i8** %z.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %16 to i32
  %cmp17 = icmp ne i32 %conv16, 47
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %17 = phi i1 [ true, %land.rhs ], [ %cmp17, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %17, %lor.end ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load i8*, i8** %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %z.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %20 = load i8*, i8** %z.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv19 = sext i8 %21 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %while.end
  %22 = load i8*, i8** %z.addr, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr24, i8** %z.addr, align 8
  br label %for.inc

if.end.25:                                        ; preds = %land.lhs.true, %if.end
  %23 = load i8*, i8** %z.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv26 = sext i8 %24 to i32
  %cmp27 = icmp eq i32 %conv26, 45
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.52

land.lhs.true.29:                                 ; preds = %if.end.25
  %25 = load i8*, i8** %z.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %26 to i32
  %cmp32 = icmp eq i32 %conv31, 45
  br i1 %cmp32, label %if.then.34, label %if.end.52

if.then.34:                                       ; preds = %land.lhs.true.29
  %27 = load i8*, i8** %z.addr, align 8
  %add.ptr35 = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %add.ptr35, i8** %z.addr, align 8
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.44, %if.then.34
  %28 = load i8*, i8** %z.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv37 = sext i8 %29 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %land.rhs.39, label %land.end.43

land.rhs.39:                                      ; preds = %while.cond.36
  %30 = load i8*, i8** %z.addr, align 8
  %31 = load i8, i8* %30, align 1
  %conv40 = sext i8 %31 to i32
  %cmp41 = icmp ne i32 %conv40, 10
  br label %land.end.43

land.end.43:                                      ; preds = %land.rhs.39, %while.cond.36
  %32 = phi i1 [ false, %while.cond.36 ], [ %cmp41, %land.rhs.39 ]
  br i1 %32, label %while.body.44, label %while.end.46

while.body.44:                                    ; preds = %land.end.43
  %33 = load i8*, i8** %z.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr45, i8** %z.addr, align 8
  br label %while.cond.36

while.end.46:                                     ; preds = %land.end.43
  %34 = load i8*, i8** %z.addr, align 8
  %35 = load i8, i8* %34, align 1
  %conv47 = sext i8 %35 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %while.end.46
  store i32 1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %while.end.46
  br label %for.inc

if.end.52:                                        ; preds = %land.lhs.true.29, %if.end.25
  store i32 0, i32* %retval
  br label %return

for.inc:                                          ; preds = %if.end.51, %if.end.23, %if.then
  %36 = load i8*, i8** %z.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr53, i8** %z.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end.52, %if.then.50, %if.then.22
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @_is_command_terminator(i8* %zLine) #0 {
entry:
  %retval = alloca i32, align 4
  %zLine.addr = alloca i8*, align 8
  store i8* %zLine, i8** %zLine.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %zLine.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %call = call i16** @__ctype_b_loc() #9
  %2 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %3 to i32
  %and = and i32 %conv1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %zLine.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %zLine.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i8*, i8** %zLine.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 47
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %7 = load i8*, i8** %zLine.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %call6 = call i32 @_all_whitespace(i8* %arrayidx5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.end
  %8 = load i8*, i8** %zLine.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %call10 = call i32 @tolower(i32 %conv9) #3
  %cmp11 = icmp eq i32 %call10, 103
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.24

land.lhs.true.13:                                 ; preds = %if.end
  %10 = load i8*, i8** %zLine.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %11 to i32
  %call16 = call i32 @tolower(i32 %conv15) #3
  %cmp17 = icmp eq i32 %call16, 111
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %land.lhs.true.13
  %12 = load i8*, i8** %zLine.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %12, i64 2
  %call21 = call i32 @_all_whitespace(i8* %arrayidx20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.19
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true.19, %land.lhs.true.13, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @_contains_semicolon(i8* %z, i32 %N) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca i8*, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %z, i8** %z.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 59
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @sqlite3_complete(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @beginTimer() #0 {
entry:
  %0 = load i32, i32* @enableTimer, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @getrusage(i32 0, %struct.rusage* @sBegin) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @endTimer() #0 {
entry:
  %sEnd = alloca %struct.rusage, align 8
  %0 = load i32, i32* @enableTimer, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @getrusage(i32 0, %struct.rusage* %sEnd) #3
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %sEnd, i32 0, i32 0
  %call1 = call i32 @timeDiff(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @sBegin, i32 0, i32 0), %struct.timeval* %ru_utime)
  %conv = sitofp i32 %call1 to double
  %mul = fmul double 1.000000e-06, %conv
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %sEnd, i32 0, i32 1
  %call2 = call i32 @timeDiff(%struct.timeval* getelementptr inbounds (%struct.rusage, %struct.rusage* @sBegin, i32 0, i32 1), %struct.timeval* %ru_stime)
  %conv3 = sitofp i32 %call2 to double
  %mul4 = fmul double 1.000000e-06, %conv3
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.167, i32 0, i32 0), double %mul, double %mul4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #1

; Function Attrs: nounwind uwtable
define internal i32 @timeDiff(%struct.timeval* %pStart, %struct.timeval* %pEnd) #0 {
entry:
  %pStart.addr = alloca %struct.timeval*, align 8
  %pEnd.addr = alloca %struct.timeval*, align 8
  store %struct.timeval* %pStart, %struct.timeval** %pStart.addr, align 8
  store %struct.timeval* %pEnd, %struct.timeval** %pEnd.addr, align 8
  %0 = load %struct.timeval*, %struct.timeval** %pEnd.addr, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %0, i32 0, i32 1
  %1 = load i64, i64* %tv_usec, align 8
  %2 = load %struct.timeval*, %struct.timeval** %pStart.addr, align 8
  %tv_usec1 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %3 = load i64, i64* %tv_usec1, align 8
  %sub = sub nsw i64 %1, %3
  %4 = load %struct.timeval*, %struct.timeval** %pEnd.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %5 = load i64, i64* %tv_sec, align 8
  %6 = load %struct.timeval*, %struct.timeval** %pStart.addr, align 8
  %tv_sec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %7 = load i64, i64* %tv_sec2, align 8
  %sub3 = sub nsw i64 %5, %7
  %mul = mul nsw i64 1000000, %sub3
  %add = add nsw i64 %sub, %mul
  %conv = trunc i64 %add to i32
  ret i32 %conv
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
