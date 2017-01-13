; ModuleID = './MultiSource.Benchmarks.MiBench/8.consumer-lame.parse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"USAGE   :  %s [options] <infile> [outfile]\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"\0A<infile> and/or <outfile> can be \22-\22, which means stdin/stdout.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Try \22%s --help\22 for more information\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"OPTIONS :\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  Input options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"    -r              input is raw pcm\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"    -x              force byte-swapping of input\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"    -s sfreq        sampling frequency of input file(kHz) - default 44.1kHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"    --mp3input      input file is a MP3 file\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"  Filter options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"    -k              keep ALL frequencies (disables all filters)\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"  --lowpass freq         frequency(kHz), lowpass filter cutoff above freq\0A\00", align 1
@.str.13 = private unnamed_addr constant [72 x i8] c"  --lowpass-width freq   frequency(kHz) - default 15%% of lowpass freq\0A\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"  --highpass freq        frequency(kHz), highpass filter cutoff below freq\0A\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"  --highpass-width freq  frequency(kHz) - default 15%% of highpass freq\0A\00", align 1
@.str.16 = private unnamed_addr constant [81 x i8] c"  --resample sfreq  sampling frequency of output file(kHz)- default=input sfreq\0A\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"  --cwlimit freq    compute tonality up to freq (in kHz) default 8.8717\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"  Operational options:\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"    -m mode         (s)tereo, (j)oint, (f)orce or (m)ono  (default j)\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"                    force = force ms_stereo on all frames. Faster\0A\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"    -a              downmix from stereo to mono file for mono encoding\0A\00", align 1
@.str.22 = private unnamed_addr constant [65 x i8] c"    -d              allow channels to have different blocktypes\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"    -S              don't print progress report, VBR histograms\0A\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"    --athonly       only use the ATH for masking\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"    --noath         disable the ATH for masking\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"    --noshort       do not use short blocks\0A\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"    --voice         experimental voice mode\0A\00", align 1
@.str.28 = private unnamed_addr constant [77 x i8] c"    --preset type   type must be phone, voice, fm, tape, hifi, cd or studio\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"                    help gives some more infos on these\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"  CBR (constant bitrate, the default) options:\0A\00", align 1
@.str.31 = private unnamed_addr constant [72 x i8] c"    -h              higher quality, but a little slower.  Recommended.\0A\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"    -f              fast mode (very low quality)\0A\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"    -b bitrate      set the bitrate, default 128kbps\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"  VBR options:\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"    -v              use variable bitrate (VBR)\0A\00", align 1
@.str.36 = private unnamed_addr constant [60 x i8] c"    -V n            quality setting for VBR.  default n=%i\0A\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"                    0=high quality,bigger files. 9=smaller files\0A\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"    -b bitrate      specify minimum allowed bitrate, default 32kbs\0A\00", align 1
@.str.39 = private unnamed_addr constant [69 x i8] c"    -B bitrate      specify maximum allowed bitrate, default 256kbs\0A\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"    -t              disable Xing VBR informational tag\0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"    --nohist        disable VBR histogram display\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"  MP3 header/stream options:\0A\00", align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"    -e emp          de-emphasis n/5/c  (obsolete)\0A\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"    -c              mark as copyright\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"    -o              mark as non-original\0A\00", align 1
@.str.46 = private unnamed_addr constant [75 x i8] c"    -p              error protection.  adds 16bit checksum to every frame\0A\00", align 1
@.str.47 = private unnamed_addr constant [58 x i8] c"                    (the checksum is computed correctly)\0A\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"    --nores         disable the bit reservoir\0A\00", align 1
@.str.49 = private unnamed_addr constant [64 x i8] c"  Specifying any of the following options will add an ID3 tag:\0A\00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"     --tt \22title\22     title of song (max 30 chars)\0A\00", align 1
@.str.51 = private unnamed_addr constant [62 x i8] c"     --ta \22artist\22    artist who did the song (max 30 chars)\0A\00", align 1
@.str.52 = private unnamed_addr constant [63 x i8] c"     --tl \22album\22     album where it came from (max 30 chars)\0A\00", align 1
@.str.53 = private unnamed_addr constant [75 x i8] c"     --ty \22year\22      year in which the song/album was made (max 4 chars)\0A\00", align 1
@.str.54 = private unnamed_addr constant [54 x i8] c"     --tc \22comment\22   additional info (max 30 chars)\0A\00", align 1
@.str.55 = private unnamed_addr constant [69 x i8] c"                      (or max 28 chars if using the \22track\22 option)\0A\00", align 1
@.str.56 = private unnamed_addr constant [68 x i8] c"     --tn \22track\22     track number of the song on the CD (1 to 99)\0A\00", align 1
@.str.57 = private unnamed_addr constant [67 x i8] c"                      (using this option will add an ID3v1.1 tag)\0A\00", align 1
@.str.58 = private unnamed_addr constant [54 x i8] c"     --tg \22genre\22     genre of song (name or number)\0A\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"Presets are some shortcuts for common settings.\0A\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"They can be combined with -v if you want VBR MP3s.\0A\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"  --preset phone    =>  --resample      16\0A\00", align 1
@.str.62 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.260\0A\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"                        --highpasswidth  0.040\0A\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"                        --lowpass        3.700\0A\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"                        --lowpasswidth   0.300\0A\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"                        --noshort\0A\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"                        -m   m\0A\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"                        -b  16\0A\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"                  plus  -b   8  \5C\0A\00", align 1
@.str.70 = private unnamed_addr constant [59 x i8] c"                        -B  56   > in combination with -v\0A\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"                        -V   5  /\0A\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"  --preset voice:   =>  --resample      24\0A\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.100\0A\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"                        --highpasswidth  0.020\0A\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"                        --lowpass       11\0A\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"                        --lowpasswidth   2\0A\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"                        -b  32\0A\00", align 1
@.str.78 = private unnamed_addr constant [59 x i8] c"                        -B  96   > in combination with -v\0A\00", align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"                        -V   4  /\0A\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"  --preset fm:      =>  --resample      32\0A\00", align 1
@.str.81 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.030\0A\00", align 1
@.str.82 = private unnamed_addr constant [44 x i8] c"                        --highpasswidth  0\0A\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"                        --lowpass       11.4\0A\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c"                        --lowpasswidth   0\0A\00", align 1
@.str.85 = private unnamed_addr constant [32 x i8] c"                        -m   j\0A\00", align 1
@.str.86 = private unnamed_addr constant [32 x i8] c"                        -b  96\0A\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"                  plus  -b  32  \5C\0A\00", align 1
@.str.88 = private unnamed_addr constant [59 x i8] c"                        -B 192   > in combination with -v\0A\00", align 1
@.str.89 = private unnamed_addr constant [44 x i8] c"  --preset tape:    =>  --lowpass       17\0A\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"                        --highpass       0.015\0A\00", align 1
@.str.91 = private unnamed_addr constant [48 x i8] c"                        --highpasswidth  0.015\0A\00", align 1
@.str.92 = private unnamed_addr constant [32 x i8] c"                        -b 128\0A\00", align 1
@.str.93 = private unnamed_addr constant [44 x i8] c"  --preset hifi:    =>  --lowpass       20\0A\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"                        --lowpasswidth   3\0A\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"                        -h\0A\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"                        -b 160\0A\00", align 1
@.str.97 = private unnamed_addr constant [59 x i8] c"                        -B 224   > in combination with -v\0A\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"                        -V   3  /\0A\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"  --preset cd:      =>  -k\0A\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"                        -m   s\0A\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"                        -b 192\0A\00", align 1
@.str.102 = private unnamed_addr constant [35 x i8] c"                  plus  -b  80  \5C\0A\00", align 1
@.str.103 = private unnamed_addr constant [59 x i8] c"                        -B 256   > in combination with -v\0A\00", align 1
@.str.104 = private unnamed_addr constant [35 x i8] c"                        -V   2  /\0A\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"  --preset studio:  =>  -k\0A\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"                        -b 256\0A\00", align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"                  plus  -b 112  \5C\0A\00", align 1
@.str.108 = private unnamed_addr constant [59 x i8] c"                        -B 320   > in combination with -v\0A\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"                        -V   0  /\0A\00", align 1
@inPath = common global [300 x i8] zeroinitializer, align 16
@outPath = common global [300 x i8] zeroinitializer, align 16
@id3tag = external global %struct.ID3TAGDATA, align 4
@.str.110 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"resample\00", align 1
@.str.112 = private unnamed_addr constant [43 x i8] c"Must specify a samplerate with --resample\0A\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"mp3input\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"voice\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"noshort\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"noath\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"nores\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"athonly\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"nohist\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"ta\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"ty\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"tn\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"tg\00", align 1
@genre_last = external global i32, align 4
@genre_list = external global [0 x i8*], align 8
@.str.127 = private unnamed_addr constant [44 x i8] c"Unknown genre: %s.  Specifiy genre number \0A\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"lowpass\00", align 1
@.str.129 = private unnamed_addr constant [61 x i8] c"Must specify lowpass with --lowpass freq, freq >= 0.001 kHz\0A\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"lowpass-width\00", align 1
@.str.131 = private unnamed_addr constant [69 x i8] c"Must specify lowpass width with --lowpass-width freq, freq >= 0 kHz\0A\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"highpass\00", align 1
@.str.133 = private unnamed_addr constant [63 x i8] c"Must specify highpass with --highpass freq, freq >= 0.001 kHz\0A\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"highpass-width\00", align 1
@.str.135 = private unnamed_addr constant [71 x i8] c"Must specify highpass width with --highpass-width freq, freq >= 0 kHz\0A\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"cwlimit\00", align 1
@.str.137 = private unnamed_addr constant [29 x i8] c"Must specify cwlimit in kHz\0A\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"phone\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"tape\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"hifi\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"studio\00", align 1
@.str.147 = private unnamed_addr constant [84 x i8] c"%s: --preset type, type must be phone, voice, fm, tape, hifi, cd or studio, not %s\0A\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"%s: unrec option --%s\0A\00", align 1
@.str.149 = private unnamed_addr constant [38 x i8] c"%s: -m mode must be s/d/j/f/m not %s\0A\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"%s: -X n must be 0-6, not %s\0A\00", align 1
@.str.151 = private unnamed_addr constant [55 x i8] c"LAME not compiled with GTK support, -g not supported.\0A\00", align 1
@.str.152 = private unnamed_addr constant [33 x i8] c"%s: -e emp must be n/5/c not %s\0A\00", align 1
@.str.153 = private unnamed_addr constant [21 x i8] c"%s: unrec option %c\0A\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"%s: excess arg %s\0A\00", align 1
@.str.155 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str.157 = private unnamed_addr constant [55 x i8] c"id3tag ignored: id3 tagging not supported for stdout.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @lame_usage(%struct.lame_global_flags* %gfp, i8* %name) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  call void @lame_print_version(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %3 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %7 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0), i8* %7)
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @lame_print_version(%struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @lame_help(%struct.lame_global_flags* %gfp, i8* %name) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  call void @lame_print_version(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %3 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.17, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.21, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.22, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.28, i32 0, i32 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.31, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.33, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %43 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %43, i32 0, i32 22
  %44 = load i32, i32* %VBR_q, align 4, !tbaa !5
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.36, i32 0, i32 0), i32 %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i32 0, i32 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.38, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.39, i32 0, i32 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.40, i32 0, i32 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i32 0, i32 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0))
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i32 0, i32 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.44, i32 0, i32 0))
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i32 0, i32 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.46, i32 0, i32 0))
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.47, i32 0, i32 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0))
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.49, i32 0, i32 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.50, i32 0, i32 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.51, i32 0, i32 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.52, i32 0, i32 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.53, i32 0, i32 0))
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.54, i32 0, i32 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.55, i32 0, i32 0))
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.56, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.57, i32 0, i32 0))
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.58, i32 0, i32 0))
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  call void @display_bitrates(%struct._IO_FILE* %70)
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @display_bitrates(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @lame_presets_info(%struct.lame_global_flags* %gfp, i8* %name) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %name.addr = alloca i8*, align 8
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  call void @lame_print_version(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.59, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.60, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.61, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.62, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.63, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.64, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.65, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.68, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.70, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.71, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.72, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.73, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.76, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.67, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.77, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.78, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.80, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.81, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.82, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.83, i32 0, i32 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.84, i32 0, i32 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i32 0, i32 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.86, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i32 0, i32 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.88, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.89, i32 0, i32 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.76, i32 0, i32 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.90, i32 0, i32 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.91, i32 0, i32 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i32 0, i32 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.92, i32 0, i32 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.88, i32 0, i32 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.79, i32 0, i32 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.93, i32 0, i32 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.94, i32 0, i32 0))
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.90, i32 0, i32 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.91, i32 0, i32 0))
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i32 0, i32 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.85, i32 0, i32 0))
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.96, i32 0, i32 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i32 0, i32 0))
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.97, i32 0, i32 0))
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i32 0, i32 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.99, i32 0, i32 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i32 0, i32 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.100, i32 0, i32 0))
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.101, i32 0, i32 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.102, i32 0, i32 0))
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.103, i32 0, i32 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.104, i32 0, i32 0))
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.105, i32 0, i32 0))
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.95, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.100, i32 0, i32 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.106, i32 0, i32 0))
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.107, i32 0, i32 0))
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.108, i32 0, i32 0))
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.109, i32 0, i32 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !1
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @lame_parse_args(%struct.lame_global_flags* %gfp, i32 %argc, i8** %argv) #0 {
entry:
  %gfp.addr = alloca %struct.lame_global_flags*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %srate = alloca float, align 4
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %autoconvert = alloca i32, align 4
  %user_quality = alloca i32, align 4
  %programName = alloca i8*, align 8
  %track = alloca i32, align 4
  %c = alloca i8, align 1
  %token = alloca i8*, align 8
  %arg = alloca i8*, align 8
  %nextArg = alloca i8*, align 8
  %argUsed = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  %__s1_len91 = alloca i64, align 8
  %__s2_len93 = alloca i64, align 8
  %tmp94 = alloca i32, align 4
  %__s1100 = alloca i8*, align 8
  %__result102 = alloca i32, align 4
  %tmp140 = alloca i32, align 4
  %__s1_len150 = alloca i64, align 8
  %__s2_len152 = alloca i64, align 8
  %tmp153 = alloca i32, align 4
  %__s1159 = alloca i8*, align 8
  %__result161 = alloca i32, align 4
  %tmp199 = alloca i32, align 4
  %__s1_len209 = alloca i64, align 8
  %__s2_len211 = alloca i64, align 8
  %tmp212 = alloca i32, align 4
  %__s1218 = alloca i8*, align 8
  %__result220 = alloca i32, align 4
  %tmp258 = alloca i32, align 4
  %__s1_len269 = alloca i64, align 8
  %__s2_len271 = alloca i64, align 8
  %tmp272 = alloca i32, align 4
  %__s1278 = alloca i8*, align 8
  %__result280 = alloca i32, align 4
  %tmp318 = alloca i32, align 4
  %__s1_len328 = alloca i64, align 8
  %__s2_len330 = alloca i64, align 8
  %tmp331 = alloca i32, align 4
  %__s1337 = alloca i8*, align 8
  %__result339 = alloca i32, align 4
  %tmp377 = alloca i32, align 4
  %__s1_len387 = alloca i64, align 8
  %__s2_len389 = alloca i64, align 8
  %tmp390 = alloca i32, align 4
  %__s1396 = alloca i8*, align 8
  %__result398 = alloca i32, align 4
  %tmp436 = alloca i32, align 4
  %__s1_len446 = alloca i64, align 8
  %__s2_len448 = alloca i64, align 8
  %tmp449 = alloca i32, align 4
  %__s1455 = alloca i8*, align 8
  %__result457 = alloca i32, align 4
  %tmp495 = alloca i32, align 4
  %__s1_len505 = alloca i64, align 8
  %__s2_len507 = alloca i64, align 8
  %tmp508 = alloca i32, align 4
  %__s1514 = alloca i8*, align 8
  %__result516 = alloca i32, align 4
  %tmp554 = alloca i32, align 4
  %__s1_len565 = alloca i64, align 8
  %__s2_len567 = alloca i64, align 8
  %tmp568 = alloca i32, align 4
  %__s1574 = alloca i8*, align 8
  %__result576 = alloca i32, align 4
  %tmp614 = alloca i32, align 4
  %__s1_len625 = alloca i64, align 8
  %__s2_len627 = alloca i64, align 8
  %tmp628 = alloca i32, align 4
  %__s1634 = alloca i8*, align 8
  %__result636 = alloca i32, align 4
  %tmp674 = alloca i32, align 4
  %__s1_len685 = alloca i64, align 8
  %__s2_len687 = alloca i64, align 8
  %tmp688 = alloca i32, align 4
  %__s1694 = alloca i8*, align 8
  %__result696 = alloca i32, align 4
  %tmp734 = alloca i32, align 4
  %__s1_len745 = alloca i64, align 8
  %__s2_len747 = alloca i64, align 8
  %tmp748 = alloca i32, align 4
  %__s1754 = alloca i8*, align 8
  %__result756 = alloca i32, align 4
  %tmp794 = alloca i32, align 4
  %__s1_len805 = alloca i64, align 8
  %__s2_len807 = alloca i64, align 8
  %tmp808 = alloca i32, align 4
  %__s1814 = alloca i8*, align 8
  %__result816 = alloca i32, align 4
  %tmp854 = alloca i32, align 4
  %__s1_len874 = alloca i64, align 8
  %__s2_len876 = alloca i64, align 8
  %tmp877 = alloca i32, align 4
  %__s1883 = alloca i8*, align 8
  %__result885 = alloca i32, align 4
  %tmp923 = alloca i32, align 4
  %__s1_len939 = alloca i64, align 8
  %__s2_len941 = alloca i64, align 8
  %tmp942 = alloca i32, align 4
  %__s1_len960 = alloca i64, align 8
  %__s2_len962 = alloca i64, align 8
  %tmp963 = alloca i32, align 4
  %__s1969 = alloca i8*, align 8
  %__result971 = alloca i32, align 4
  %tmp1009 = alloca i32, align 4
  %__s1_len1030 = alloca i64, align 8
  %__s2_len1032 = alloca i64, align 8
  %tmp1033 = alloca i32, align 4
  %__s11039 = alloca i8*, align 8
  %__result1041 = alloca i32, align 4
  %tmp1079 = alloca i32, align 4
  %__s1_len1099 = alloca i64, align 8
  %__s2_len1101 = alloca i64, align 8
  %tmp1102 = alloca i32, align 4
  %__s11108 = alloca i8*, align 8
  %__result1110 = alloca i32, align 4
  %tmp1148 = alloca i32, align 4
  %__s1_len1168 = alloca i64, align 8
  %__s2_len1170 = alloca i64, align 8
  %tmp1171 = alloca i32, align 4
  %__s11177 = alloca i8*, align 8
  %__result1179 = alloca i32, align 4
  %tmp1217 = alloca i32, align 4
  %__s1_len1237 = alloca i64, align 8
  %__s2_len1239 = alloca i64, align 8
  %tmp1240 = alloca i32, align 4
  %__s11246 = alloca i8*, align 8
  %__result1248 = alloca i32, align 4
  %tmp1286 = alloca i32, align 4
  %__s1_len1304 = alloca i64, align 8
  %__s2_len1306 = alloca i64, align 8
  %tmp1307 = alloca i32, align 4
  %__s11313 = alloca i8*, align 8
  %__result1315 = alloca i32, align 4
  %tmp1353 = alloca i32, align 4
  %__s1_len1361 = alloca i64, align 8
  %__s2_len1363 = alloca i64, align 8
  %tmp1364 = alloca i32, align 4
  %__s11370 = alloca i8*, align 8
  %__result1372 = alloca i32, align 4
  %tmp1410 = alloca i32, align 4
  %__s1_len1420 = alloca i64, align 8
  %__s2_len1422 = alloca i64, align 8
  %tmp1423 = alloca i32, align 4
  %__s11429 = alloca i8*, align 8
  %__result1431 = alloca i32, align 4
  %tmp1469 = alloca i32, align 4
  %__s1_len1478 = alloca i64, align 8
  %__s2_len1480 = alloca i64, align 8
  %tmp1481 = alloca i32, align 4
  %__s11487 = alloca i8*, align 8
  %__result1489 = alloca i32, align 4
  %tmp1527 = alloca i32, align 4
  %__s1_len1544 = alloca i64, align 8
  %__s2_len1546 = alloca i64, align 8
  %tmp1547 = alloca i32, align 4
  %__s11553 = alloca i8*, align 8
  %__result1555 = alloca i32, align 4
  %tmp1593 = alloca i32, align 4
  %__s1_len1616 = alloca i64, align 8
  %__s2_len1618 = alloca i64, align 8
  %tmp1619 = alloca i32, align 4
  %__s11625 = alloca i8*, align 8
  %__result1627 = alloca i32, align 4
  %tmp1665 = alloca i32, align 4
  %__s1_len1686 = alloca i64, align 8
  %__s2_len1688 = alloca i64, align 8
  %tmp1689 = alloca i32, align 4
  %__s11695 = alloca i8*, align 8
  %__result1697 = alloca i32, align 4
  %tmp1735 = alloca i32, align 4
  %__s1_len1756 = alloca i64, align 8
  %__s2_len1758 = alloca i64, align 8
  %tmp1759 = alloca i32, align 4
  %__s11765 = alloca i8*, align 8
  %__result1767 = alloca i32, align 4
  %tmp1805 = alloca i32, align 4
  %__s1_len1826 = alloca i64, align 8
  %__s2_len1828 = alloca i64, align 8
  %tmp1829 = alloca i32, align 4
  %__s11835 = alloca i8*, align 8
  %__result1837 = alloca i32, align 4
  %tmp1875 = alloca i32, align 4
  %__s1_len1894 = alloca i64, align 8
  %__s2_len1896 = alloca i64, align 8
  %tmp1897 = alloca i32, align 4
  %__s11903 = alloca i8*, align 8
  %__result1905 = alloca i32, align 4
  %tmp1943 = alloca i32, align 4
  %__s1_len1962 = alloca i64, align 8
  %__s2_len1964 = alloca i64, align 8
  %tmp1965 = alloca i32, align 4
  %__s11971 = alloca i8*, align 8
  %__result1973 = alloca i32, align 4
  %tmp2011 = alloca i32, align 4
  %__s1_len2318 = alloca i64, align 8
  %__s2_len2320 = alloca i64, align 8
  %tmp2321 = alloca i32, align 4
  %__s12327 = alloca i8*, align 8
  %__result2332 = alloca i32, align 4
  %tmp2370 = alloca i32, align 4
  store %struct.lame_global_flags* %gfp, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !10
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !1
  %0 = bitcast float* %srate to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #3
  %1 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  store i32 0, i32* %err, align 4, !tbaa !10
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  store i32 0, i32* %i, align 4, !tbaa !10
  %3 = bitcast i32* %autoconvert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  store i32 0, i32* %autoconvert, align 4, !tbaa !10
  %4 = bitcast i32* %user_quality to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #3
  store i32 0, i32* %user_quality, align 4, !tbaa !10
  %5 = bitcast i8** %programName to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #3
  %6 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %7, i8** %programName, align 8, !tbaa !1
  %8 = bitcast i32* %track to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  store i32 0, i32* %track, align 4, !tbaa !10
  store i8 0, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i64 0), align 1, !tbaa !11
  store i8 0, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i64 0), align 1, !tbaa !11
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %inPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 31
  store i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i32 0), i8** %inPath, align 8, !tbaa !12
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %outPath = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 32
  store i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i32 0), i8** %outPath, align 8, !tbaa !13
  call void @id3_inittag(%struct.ID3TAGDATA* @id3tag)
  store i32 0, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %if.end.2274, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !10
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !10
  %12 = load i32, i32* %argc.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i32, i32* %err, align 4, !tbaa !10
  %cmp1 = icmp eq i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %14, label %while.body, label %while.end.2275

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start(i64 1, i8* %c) #3
  %15 = bitcast i8** %token to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #3
  %16 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #3
  %17 = bitcast i8** %nextArg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #3
  %18 = bitcast i32* %argUsed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #3
  %19 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom = sext i32 %19 to i64
  %20 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i8*, i8** %20, i64 %idxprom
  %21 = load i8*, i8** %arrayidx2, align 8, !tbaa !1
  store i8* %21, i8** %token, align 8, !tbaa !1
  %22 = load i8*, i8** %token, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %token, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !11
  %conv = sext i8 %23 to i32
  %cmp3 = icmp eq i32 %conv, 45
  br i1 %cmp3, label %if.then, label %if.else.2252

if.then:                                          ; preds = %while.body
  %24 = load i32, i32* %i, align 4, !tbaa !10
  %add = add nsw i32 %24, 1
  %25 = load i32, i32* %argc.addr, align 4, !tbaa !10
  %cmp5 = icmp slt i32 %add, %25
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %26 = load i32, i32* %i, align 4, !tbaa !10
  %add8 = add nsw i32 %26, 1
  %idxprom9 = sext i32 %add8 to i64
  %27 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i8*, i8** %27, i64 %idxprom9
  %28 = load i8*, i8** %arrayidx10, align 8, !tbaa !1
  store i8* %28, i8** %nextArg, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %if.then
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i32 0, i32 0), i8** %nextArg, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  store i32 0, i32* %argUsed, align 4, !tbaa !10
  %29 = load i8*, i8** %token, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !11
  %tobool = icmp ne i8 %30, 0
  br i1 %tobool, label %if.end.28, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %31 = load i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i64 0), align 1, !tbaa !11
  %conv12 = sext i8 %31 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.then.11
  %32 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom16 = sext i32 %32 to i64
  %33 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i8*, i8** %33, i64 %idxprom16
  %34 = load i8*, i8** %arrayidx17, align 8, !tbaa !1
  %call = call i8* @strncpy(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i32 0), i8* %34, i64 300) #3
  br label %if.end.27

if.else.18:                                       ; preds = %if.then.11
  %35 = load i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i64 0), align 1, !tbaa !11
  %conv19 = sext i8 %35 to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.else.18
  %36 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom23 = sext i32 %36 to i64
  %37 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i8*, i8** %37, i64 %idxprom23
  %38 = load i8*, i8** %arrayidx24, align 8, !tbaa !1
  %call25 = call i8* @strncpy(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i32 0), i8* %38, i64 300) #3
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.else.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.15
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %39 = load i8*, i8** %token, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !11
  %conv29 = sext i8 %40 to i32
  %cmp30 = icmp eq i32 %conv29, 45
  br i1 %cmp30, label %if.then.32, label %if.else.2054

if.then.32:                                       ; preds = %if.end.28
  %41 = load i8*, i8** %token, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr33, i8** %token, align 8, !tbaa !1
  %42 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %42) #3
  %43 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.111 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.then.32
  store i64 8, i64* %__s2_len, align 8, !tbaa !16
  %44 = load i64, i64* %__s2_len, align 8, !tbaa !16
  %cmp34 = icmp ult i64 %44, 4
  br i1 %cmp34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %45 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #3
  %46 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %46, i8** %__s1, align 8, !tbaa !1
  %47 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #3
  %48 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx38, align 1, !tbaa !11
  %conv39 = zext i8 %49 to i32
  %50 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0), align 1, !tbaa !11
  %conv40 = zext i8 %50 to i32
  %sub = sub nsw i32 %conv39, %conv40
  store i32 %sub, i32* %__result, align 4, !tbaa !10
  %51 = load i64, i64* %__s2_len, align 8, !tbaa !16
  %cmp41 = icmp ugt i64 %51, 0
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.73

land.lhs.true.43:                                 ; preds = %cond.true
  %52 = load i32, i32* %__result, align 4, !tbaa !10
  %cmp44 = icmp eq i32 %52, 0
  br i1 %cmp44, label %if.then.46, label %if.end.73

if.then.46:                                       ; preds = %land.lhs.true.43
  %53 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds i8, i8* %53, i64 1
  %54 = load i8, i8* %arrayidx47, align 1, !tbaa !11
  %conv48 = zext i8 %54 to i32
  %55 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i64 1), align 1, !tbaa !11
  %conv49 = zext i8 %55 to i32
  %sub50 = sub nsw i32 %conv48, %conv49
  store i32 %sub50, i32* %__result, align 4, !tbaa !10
  %56 = load i64, i64* %__s2_len, align 8, !tbaa !16
  %cmp51 = icmp ugt i64 %56, 1
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.72

land.lhs.true.53:                                 ; preds = %if.then.46
  %57 = load i32, i32* %__result, align 4, !tbaa !10
  %cmp54 = icmp eq i32 %57, 0
  br i1 %cmp54, label %if.then.56, label %if.end.72

if.then.56:                                       ; preds = %land.lhs.true.53
  %58 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %58, i64 2
  %59 = load i8, i8* %arrayidx57, align 1, !tbaa !11
  %conv58 = zext i8 %59 to i32
  %60 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i64 2), align 1, !tbaa !11
  %conv59 = zext i8 %60 to i32
  %sub60 = sub nsw i32 %conv58, %conv59
  store i32 %sub60, i32* %__result, align 4, !tbaa !10
  %61 = load i64, i64* %__s2_len, align 8, !tbaa !16
  %cmp61 = icmp ugt i64 %61, 2
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.71

land.lhs.true.63:                                 ; preds = %if.then.56
  %62 = load i32, i32* %__result, align 4, !tbaa !10
  %cmp64 = icmp eq i32 %62, 0
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %land.lhs.true.63
  %63 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %63, i64 3
  %64 = load i8, i8* %arrayidx67, align 1, !tbaa !11
  %conv68 = zext i8 %64 to i32
  %65 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i64 3), align 1, !tbaa !11
  %conv69 = zext i8 %65 to i32
  %sub70 = sub nsw i32 %conv68, %conv69
  store i32 %sub70, i32* %__result, align 4, !tbaa !10
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %land.lhs.true.63, %if.then.56
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.53, %if.then.46
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true.43, %cond.true
  %66 = load i32, i32* %__result, align 4, !tbaa !10
  store i32 %66, i32* %tmp74, !tbaa !10
  %67 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #3
  %68 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #3
  %69 = load i32, i32* %tmp74, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.then.32
  %70 = load i8*, i8** %token, align 8, !tbaa !1
  %call75 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0)) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.73
  %cond = phi i32 [ %69, %if.end.73 ], [ %call75, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !10
  %71 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #3
  %72 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #3
  %73 = load i32, i32* %tmp, !tbaa !10
  %cmp76 = icmp eq i32 %73, 0
  br i1 %cmp76, label %if.then.78, label %if.else.89

if.then.78:                                       ; preds = %cond.end
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %74 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call79 = call double @atof(i8* %74) #8
  %conv80 = fptrunc double %call79 to float
  store float %conv80, float* %srate, align 4, !tbaa !17
  %75 = load float, float* %srate, align 4, !tbaa !17
  %conv81 = fpext float %75 to double
  %mul = fmul double 1.000000e+03, %conv81
  %add82 = fadd double %mul, 5.000000e-01
  %conv83 = fptosi double %add82 to i32
  %76 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %76, i32 0, i32 3
  store i32 %conv83, i32* %out_samplerate, align 4, !tbaa !18
  %77 = load float, float* %srate, align 4, !tbaa !17
  %cmp84 = fcmp olt float %77, 1.000000e+00
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.then.78
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.112, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.88:                                        ; preds = %if.then.78
  br label %if.end.2052

if.else.89:                                       ; preds = %cond.end
  %79 = bitcast i64* %__s1_len91 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #3
  %80 = bitcast i64* %__s2_len93 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.113 to i64)), i64 1), label %land.lhs.true.95, label %cond.false.141

land.lhs.true.95:                                 ; preds = %if.else.89
  store i64 8, i64* %__s2_len93, align 8, !tbaa !16
  %81 = load i64, i64* %__s2_len93, align 8, !tbaa !16
  %cmp96 = icmp ult i64 %81, 4
  br i1 %cmp96, label %cond.true.98, label %cond.false.141

cond.true.98:                                     ; preds = %land.lhs.true.95
  %82 = bitcast i8** %__s1100 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #3
  %83 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %83, i8** %__s1100, align 8, !tbaa !1
  %84 = bitcast i32* %__result102 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %84) #3
  %85 = load i8*, i8** %__s1100, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8, i8* %85, i64 0
  %86 = load i8, i8* %arrayidx103, align 1, !tbaa !11
  %conv104 = zext i8 %86 to i32
  %87 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0), align 1, !tbaa !11
  %conv105 = zext i8 %87 to i32
  %sub106 = sub nsw i32 %conv104, %conv105
  store i32 %sub106, i32* %__result102, align 4, !tbaa !10
  %88 = load i64, i64* %__s2_len93, align 8, !tbaa !16
  %cmp107 = icmp ugt i64 %88, 0
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.139

land.lhs.true.109:                                ; preds = %cond.true.98
  %89 = load i32, i32* %__result102, align 4, !tbaa !10
  %cmp110 = icmp eq i32 %89, 0
  br i1 %cmp110, label %if.then.112, label %if.end.139

if.then.112:                                      ; preds = %land.lhs.true.109
  %90 = load i8*, i8** %__s1100, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds i8, i8* %90, i64 1
  %91 = load i8, i8* %arrayidx113, align 1, !tbaa !11
  %conv114 = zext i8 %91 to i32
  %92 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i64 1), align 1, !tbaa !11
  %conv115 = zext i8 %92 to i32
  %sub116 = sub nsw i32 %conv114, %conv115
  store i32 %sub116, i32* %__result102, align 4, !tbaa !10
  %93 = load i64, i64* %__s2_len93, align 8, !tbaa !16
  %cmp117 = icmp ugt i64 %93, 1
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.138

land.lhs.true.119:                                ; preds = %if.then.112
  %94 = load i32, i32* %__result102, align 4, !tbaa !10
  %cmp120 = icmp eq i32 %94, 0
  br i1 %cmp120, label %if.then.122, label %if.end.138

if.then.122:                                      ; preds = %land.lhs.true.119
  %95 = load i8*, i8** %__s1100, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds i8, i8* %95, i64 2
  %96 = load i8, i8* %arrayidx123, align 1, !tbaa !11
  %conv124 = zext i8 %96 to i32
  %97 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i64 2), align 1, !tbaa !11
  %conv125 = zext i8 %97 to i32
  %sub126 = sub nsw i32 %conv124, %conv125
  store i32 %sub126, i32* %__result102, align 4, !tbaa !10
  %98 = load i64, i64* %__s2_len93, align 8, !tbaa !16
  %cmp127 = icmp ugt i64 %98, 2
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.137

land.lhs.true.129:                                ; preds = %if.then.122
  %99 = load i32, i32* %__result102, align 4, !tbaa !10
  %cmp130 = icmp eq i32 %99, 0
  br i1 %cmp130, label %if.then.132, label %if.end.137

if.then.132:                                      ; preds = %land.lhs.true.129
  %100 = load i8*, i8** %__s1100, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8, i8* %100, i64 3
  %101 = load i8, i8* %arrayidx133, align 1, !tbaa !11
  %conv134 = zext i8 %101 to i32
  %102 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i64 3), align 1, !tbaa !11
  %conv135 = zext i8 %102 to i32
  %sub136 = sub nsw i32 %conv134, %conv135
  store i32 %sub136, i32* %__result102, align 4, !tbaa !10
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.132, %land.lhs.true.129, %if.then.122
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %land.lhs.true.119, %if.then.112
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %land.lhs.true.109, %cond.true.98
  %103 = load i32, i32* %__result102, align 4, !tbaa !10
  store i32 %103, i32* %tmp140, !tbaa !10
  %104 = bitcast i32* %__result102 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #3
  %105 = bitcast i8** %__s1100 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #3
  %106 = load i32, i32* %tmp140, !tbaa !10
  br label %cond.end.143

cond.false.141:                                   ; preds = %land.lhs.true.95, %if.else.89
  %107 = load i8*, i8** %token, align 8, !tbaa !1
  %call142 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.113, i32 0, i32 0)) #3
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.false.141, %if.end.139
  %cond144 = phi i32 [ %106, %if.end.139 ], [ %call142, %cond.false.141 ]
  store i32 %cond144, i32* %tmp94, !tbaa !10
  %108 = bitcast i64* %__s2_len93 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #3
  %109 = bitcast i64* %__s1_len91 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #3
  %110 = load i32, i32* %tmp94, !tbaa !10
  %cmp145 = icmp eq i32 %110, 0
  br i1 %cmp145, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %cond.end.143
  %111 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %111, i32 0, i32 29
  store i32 3, i32* %input_format, align 4, !tbaa !19
  br label %if.end.2051

if.else.148:                                      ; preds = %cond.end.143
  %112 = bitcast i64* %__s1_len150 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %112) #3
  %113 = bitcast i64* %__s2_len152 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %113) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.114 to i64)), i64 1), label %land.lhs.true.154, label %cond.false.200

land.lhs.true.154:                                ; preds = %if.else.148
  store i64 5, i64* %__s2_len152, align 8, !tbaa !16
  %114 = load i64, i64* %__s2_len152, align 8, !tbaa !16
  %cmp155 = icmp ult i64 %114, 4
  br i1 %cmp155, label %cond.true.157, label %cond.false.200

cond.true.157:                                    ; preds = %land.lhs.true.154
  %115 = bitcast i8** %__s1159 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #3
  %116 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %116, i8** %__s1159, align 8, !tbaa !1
  %117 = bitcast i32* %__result161 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #3
  %118 = load i8*, i8** %__s1159, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds i8, i8* %118, i64 0
  %119 = load i8, i8* %arrayidx162, align 1, !tbaa !11
  %conv163 = zext i8 %119 to i32
  %120 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), align 1, !tbaa !11
  %conv164 = zext i8 %120 to i32
  %sub165 = sub nsw i32 %conv163, %conv164
  store i32 %sub165, i32* %__result161, align 4, !tbaa !10
  %121 = load i64, i64* %__s2_len152, align 8, !tbaa !16
  %cmp166 = icmp ugt i64 %121, 0
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.198

land.lhs.true.168:                                ; preds = %cond.true.157
  %122 = load i32, i32* %__result161, align 4, !tbaa !10
  %cmp169 = icmp eq i32 %122, 0
  br i1 %cmp169, label %if.then.171, label %if.end.198

if.then.171:                                      ; preds = %land.lhs.true.168
  %123 = load i8*, i8** %__s1159, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i8, i8* %123, i64 1
  %124 = load i8, i8* %arrayidx172, align 1, !tbaa !11
  %conv173 = zext i8 %124 to i32
  %125 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i64 1), align 1, !tbaa !11
  %conv174 = zext i8 %125 to i32
  %sub175 = sub nsw i32 %conv173, %conv174
  store i32 %sub175, i32* %__result161, align 4, !tbaa !10
  %126 = load i64, i64* %__s2_len152, align 8, !tbaa !16
  %cmp176 = icmp ugt i64 %126, 1
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.197

land.lhs.true.178:                                ; preds = %if.then.171
  %127 = load i32, i32* %__result161, align 4, !tbaa !10
  %cmp179 = icmp eq i32 %127, 0
  br i1 %cmp179, label %if.then.181, label %if.end.197

if.then.181:                                      ; preds = %land.lhs.true.178
  %128 = load i8*, i8** %__s1159, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i8, i8* %128, i64 2
  %129 = load i8, i8* %arrayidx182, align 1, !tbaa !11
  %conv183 = zext i8 %129 to i32
  %130 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i64 2), align 1, !tbaa !11
  %conv184 = zext i8 %130 to i32
  %sub185 = sub nsw i32 %conv183, %conv184
  store i32 %sub185, i32* %__result161, align 4, !tbaa !10
  %131 = load i64, i64* %__s2_len152, align 8, !tbaa !16
  %cmp186 = icmp ugt i64 %131, 2
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.196

land.lhs.true.188:                                ; preds = %if.then.181
  %132 = load i32, i32* %__result161, align 4, !tbaa !10
  %cmp189 = icmp eq i32 %132, 0
  br i1 %cmp189, label %if.then.191, label %if.end.196

if.then.191:                                      ; preds = %land.lhs.true.188
  %133 = load i8*, i8** %__s1159, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i8, i8* %133, i64 3
  %134 = load i8, i8* %arrayidx192, align 1, !tbaa !11
  %conv193 = zext i8 %134 to i32
  %135 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i64 3), align 1, !tbaa !11
  %conv194 = zext i8 %135 to i32
  %sub195 = sub nsw i32 %conv193, %conv194
  store i32 %sub195, i32* %__result161, align 4, !tbaa !10
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.191, %land.lhs.true.188, %if.then.181
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %land.lhs.true.178, %if.then.171
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %land.lhs.true.168, %cond.true.157
  %136 = load i32, i32* %__result161, align 4, !tbaa !10
  store i32 %136, i32* %tmp199, !tbaa !10
  %137 = bitcast i32* %__result161 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #3
  %138 = bitcast i8** %__s1159 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #3
  %139 = load i32, i32* %tmp199, !tbaa !10
  br label %cond.end.202

cond.false.200:                                   ; preds = %land.lhs.true.154, %if.else.148
  %140 = load i8*, i8** %token, align 8, !tbaa !1
  %call201 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0)) #3
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.200, %if.end.198
  %cond203 = phi i32 [ %139, %if.end.198 ], [ %call201, %cond.false.200 ]
  store i32 %cond203, i32* %tmp153, !tbaa !10
  %141 = bitcast i64* %__s2_len152 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #3
  %142 = bitcast i64* %__s1_len150 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #3
  %143 = load i32, i32* %tmp153, !tbaa !10
  %cmp204 = icmp eq i32 %143, 0
  br i1 %cmp204, label %if.then.206, label %if.else.207

if.then.206:                                      ; preds = %cond.end.202
  %144 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %144, i32 0, i32 25
  store i32 12000, i32* %lowpassfreq, align 4, !tbaa !20
  %145 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %145, i32 0, i32 24
  store i32 160, i32* %VBR_max_bitrate_kbps, align 4, !tbaa !21
  %146 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %no_short_blocks = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %146, i32 0, i32 37
  store i32 1, i32* %no_short_blocks, align 4, !tbaa !22
  br label %if.end.2050

if.else.207:                                      ; preds = %cond.end.202
  %147 = bitcast i64* %__s1_len209 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %147) #3
  %148 = bitcast i64* %__s2_len211 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %148) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.115 to i64)), i64 1), label %land.lhs.true.213, label %cond.false.259

land.lhs.true.213:                                ; preds = %if.else.207
  store i64 7, i64* %__s2_len211, align 8, !tbaa !16
  %149 = load i64, i64* %__s2_len211, align 8, !tbaa !16
  %cmp214 = icmp ult i64 %149, 4
  br i1 %cmp214, label %cond.true.216, label %cond.false.259

cond.true.216:                                    ; preds = %land.lhs.true.213
  %150 = bitcast i8** %__s1218 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %150) #3
  %151 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %151, i8** %__s1218, align 8, !tbaa !1
  %152 = bitcast i32* %__result220 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %152) #3
  %153 = load i8*, i8** %__s1218, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i8, i8* %153, i64 0
  %154 = load i8, i8* %arrayidx221, align 1, !tbaa !11
  %conv222 = zext i8 %154 to i32
  %155 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0), align 1, !tbaa !11
  %conv223 = zext i8 %155 to i32
  %sub224 = sub nsw i32 %conv222, %conv223
  store i32 %sub224, i32* %__result220, align 4, !tbaa !10
  %156 = load i64, i64* %__s2_len211, align 8, !tbaa !16
  %cmp225 = icmp ugt i64 %156, 0
  br i1 %cmp225, label %land.lhs.true.227, label %if.end.257

land.lhs.true.227:                                ; preds = %cond.true.216
  %157 = load i32, i32* %__result220, align 4, !tbaa !10
  %cmp228 = icmp eq i32 %157, 0
  br i1 %cmp228, label %if.then.230, label %if.end.257

if.then.230:                                      ; preds = %land.lhs.true.227
  %158 = load i8*, i8** %__s1218, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = load i8, i8* %arrayidx231, align 1, !tbaa !11
  %conv232 = zext i8 %159 to i32
  %160 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i64 1), align 1, !tbaa !11
  %conv233 = zext i8 %160 to i32
  %sub234 = sub nsw i32 %conv232, %conv233
  store i32 %sub234, i32* %__result220, align 4, !tbaa !10
  %161 = load i64, i64* %__s2_len211, align 8, !tbaa !16
  %cmp235 = icmp ugt i64 %161, 1
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.256

land.lhs.true.237:                                ; preds = %if.then.230
  %162 = load i32, i32* %__result220, align 4, !tbaa !10
  %cmp238 = icmp eq i32 %162, 0
  br i1 %cmp238, label %if.then.240, label %if.end.256

if.then.240:                                      ; preds = %land.lhs.true.237
  %163 = load i8*, i8** %__s1218, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds i8, i8* %163, i64 2
  %164 = load i8, i8* %arrayidx241, align 1, !tbaa !11
  %conv242 = zext i8 %164 to i32
  %165 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i64 2), align 1, !tbaa !11
  %conv243 = zext i8 %165 to i32
  %sub244 = sub nsw i32 %conv242, %conv243
  store i32 %sub244, i32* %__result220, align 4, !tbaa !10
  %166 = load i64, i64* %__s2_len211, align 8, !tbaa !16
  %cmp245 = icmp ugt i64 %166, 2
  br i1 %cmp245, label %land.lhs.true.247, label %if.end.255

land.lhs.true.247:                                ; preds = %if.then.240
  %167 = load i32, i32* %__result220, align 4, !tbaa !10
  %cmp248 = icmp eq i32 %167, 0
  br i1 %cmp248, label %if.then.250, label %if.end.255

if.then.250:                                      ; preds = %land.lhs.true.247
  %168 = load i8*, i8** %__s1218, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %168, i64 3
  %169 = load i8, i8* %arrayidx251, align 1, !tbaa !11
  %conv252 = zext i8 %169 to i32
  %170 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i64 3), align 1, !tbaa !11
  %conv253 = zext i8 %170 to i32
  %sub254 = sub nsw i32 %conv252, %conv253
  store i32 %sub254, i32* %__result220, align 4, !tbaa !10
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.250, %land.lhs.true.247, %if.then.240
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %land.lhs.true.237, %if.then.230
  br label %if.end.257

if.end.257:                                       ; preds = %if.end.256, %land.lhs.true.227, %cond.true.216
  %171 = load i32, i32* %__result220, align 4, !tbaa !10
  store i32 %171, i32* %tmp258, !tbaa !10
  %172 = bitcast i32* %__result220 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #3
  %173 = bitcast i8** %__s1218 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #3
  %174 = load i32, i32* %tmp258, !tbaa !10
  br label %cond.end.261

cond.false.259:                                   ; preds = %land.lhs.true.213, %if.else.207
  %175 = load i8*, i8** %token, align 8, !tbaa !1
  %call260 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0)) #3
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.259, %if.end.257
  %cond262 = phi i32 [ %174, %if.end.257 ], [ %call260, %cond.false.259 ]
  store i32 %cond262, i32* %tmp212, !tbaa !10
  %176 = bitcast i64* %__s2_len211 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #3
  %177 = bitcast i64* %__s1_len209 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #3
  %178 = load i32, i32* %tmp212, !tbaa !10
  %cmp263 = icmp eq i32 %178, 0
  br i1 %cmp263, label %if.then.265, label %if.else.267

if.then.265:                                      ; preds = %cond.end.261
  %179 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %no_short_blocks266 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %179, i32 0, i32 37
  store i32 1, i32* %no_short_blocks266, align 4, !tbaa !22
  br label %if.end.2049

if.else.267:                                      ; preds = %cond.end.261
  %180 = bitcast i64* %__s1_len269 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %180) #3
  %181 = bitcast i64* %__s2_len271 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %181) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.116 to i64)), i64 1), label %land.lhs.true.273, label %cond.false.319

land.lhs.true.273:                                ; preds = %if.else.267
  store i64 5, i64* %__s2_len271, align 8, !tbaa !16
  %182 = load i64, i64* %__s2_len271, align 8, !tbaa !16
  %cmp274 = icmp ult i64 %182, 4
  br i1 %cmp274, label %cond.true.276, label %cond.false.319

cond.true.276:                                    ; preds = %land.lhs.true.273
  %183 = bitcast i8** %__s1278 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #3
  %184 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %184, i8** %__s1278, align 8, !tbaa !1
  %185 = bitcast i32* %__result280 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %185) #3
  %186 = load i8*, i8** %__s1278, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i8, i8* %186, i64 0
  %187 = load i8, i8* %arrayidx281, align 1, !tbaa !11
  %conv282 = zext i8 %187 to i32
  %188 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), align 1, !tbaa !11
  %conv283 = zext i8 %188 to i32
  %sub284 = sub nsw i32 %conv282, %conv283
  store i32 %sub284, i32* %__result280, align 4, !tbaa !10
  %189 = load i64, i64* %__s2_len271, align 8, !tbaa !16
  %cmp285 = icmp ugt i64 %189, 0
  br i1 %cmp285, label %land.lhs.true.287, label %if.end.317

land.lhs.true.287:                                ; preds = %cond.true.276
  %190 = load i32, i32* %__result280, align 4, !tbaa !10
  %cmp288 = icmp eq i32 %190, 0
  br i1 %cmp288, label %if.then.290, label %if.end.317

if.then.290:                                      ; preds = %land.lhs.true.287
  %191 = load i8*, i8** %__s1278, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds i8, i8* %191, i64 1
  %192 = load i8, i8* %arrayidx291, align 1, !tbaa !11
  %conv292 = zext i8 %192 to i32
  %193 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i64 1), align 1, !tbaa !11
  %conv293 = zext i8 %193 to i32
  %sub294 = sub nsw i32 %conv292, %conv293
  store i32 %sub294, i32* %__result280, align 4, !tbaa !10
  %194 = load i64, i64* %__s2_len271, align 8, !tbaa !16
  %cmp295 = icmp ugt i64 %194, 1
  br i1 %cmp295, label %land.lhs.true.297, label %if.end.316

land.lhs.true.297:                                ; preds = %if.then.290
  %195 = load i32, i32* %__result280, align 4, !tbaa !10
  %cmp298 = icmp eq i32 %195, 0
  br i1 %cmp298, label %if.then.300, label %if.end.316

if.then.300:                                      ; preds = %land.lhs.true.297
  %196 = load i8*, i8** %__s1278, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds i8, i8* %196, i64 2
  %197 = load i8, i8* %arrayidx301, align 1, !tbaa !11
  %conv302 = zext i8 %197 to i32
  %198 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i64 2), align 1, !tbaa !11
  %conv303 = zext i8 %198 to i32
  %sub304 = sub nsw i32 %conv302, %conv303
  store i32 %sub304, i32* %__result280, align 4, !tbaa !10
  %199 = load i64, i64* %__s2_len271, align 8, !tbaa !16
  %cmp305 = icmp ugt i64 %199, 2
  br i1 %cmp305, label %land.lhs.true.307, label %if.end.315

land.lhs.true.307:                                ; preds = %if.then.300
  %200 = load i32, i32* %__result280, align 4, !tbaa !10
  %cmp308 = icmp eq i32 %200, 0
  br i1 %cmp308, label %if.then.310, label %if.end.315

if.then.310:                                      ; preds = %land.lhs.true.307
  %201 = load i8*, i8** %__s1278, align 8, !tbaa !1
  %arrayidx311 = getelementptr inbounds i8, i8* %201, i64 3
  %202 = load i8, i8* %arrayidx311, align 1, !tbaa !11
  %conv312 = zext i8 %202 to i32
  %203 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i64 3), align 1, !tbaa !11
  %conv313 = zext i8 %203 to i32
  %sub314 = sub nsw i32 %conv312, %conv313
  store i32 %sub314, i32* %__result280, align 4, !tbaa !10
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.310, %land.lhs.true.307, %if.then.300
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %land.lhs.true.297, %if.then.290
  br label %if.end.317

if.end.317:                                       ; preds = %if.end.316, %land.lhs.true.287, %cond.true.276
  %204 = load i32, i32* %__result280, align 4, !tbaa !10
  store i32 %204, i32* %tmp318, !tbaa !10
  %205 = bitcast i32* %__result280 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #3
  %206 = bitcast i8** %__s1278 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #3
  %207 = load i32, i32* %tmp318, !tbaa !10
  br label %cond.end.321

cond.false.319:                                   ; preds = %land.lhs.true.273, %if.else.267
  %208 = load i8*, i8** %token, align 8, !tbaa !1
  %call320 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0)) #3
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.319, %if.end.317
  %cond322 = phi i32 [ %207, %if.end.317 ], [ %call320, %cond.false.319 ]
  store i32 %cond322, i32* %tmp272, !tbaa !10
  %209 = bitcast i64* %__s2_len271 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %209) #3
  %210 = bitcast i64* %__s1_len269 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %210) #3
  %211 = load i32, i32* %tmp272, !tbaa !10
  %cmp323 = icmp eq i32 %211, 0
  br i1 %cmp323, label %if.then.325, label %if.else.326

if.then.325:                                      ; preds = %cond.end.321
  %212 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %noATH = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %212, i32 0, i32 34
  store i32 1, i32* %noATH, align 4, !tbaa !23
  br label %if.end.2048

if.else.326:                                      ; preds = %cond.end.321
  %213 = bitcast i64* %__s1_len328 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %213) #3
  %214 = bitcast i64* %__s2_len330 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %214) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.117 to i64)), i64 1), label %land.lhs.true.332, label %cond.false.378

land.lhs.true.332:                                ; preds = %if.else.326
  store i64 5, i64* %__s2_len330, align 8, !tbaa !16
  %215 = load i64, i64* %__s2_len330, align 8, !tbaa !16
  %cmp333 = icmp ult i64 %215, 4
  br i1 %cmp333, label %cond.true.335, label %cond.false.378

cond.true.335:                                    ; preds = %land.lhs.true.332
  %216 = bitcast i8** %__s1337 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %216) #3
  %217 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %217, i8** %__s1337, align 8, !tbaa !1
  %218 = bitcast i32* %__result339 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %218) #3
  %219 = load i8*, i8** %__s1337, align 8, !tbaa !1
  %arrayidx340 = getelementptr inbounds i8, i8* %219, i64 0
  %220 = load i8, i8* %arrayidx340, align 1, !tbaa !11
  %conv341 = zext i8 %220 to i32
  %221 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), align 1, !tbaa !11
  %conv342 = zext i8 %221 to i32
  %sub343 = sub nsw i32 %conv341, %conv342
  store i32 %sub343, i32* %__result339, align 4, !tbaa !10
  %222 = load i64, i64* %__s2_len330, align 8, !tbaa !16
  %cmp344 = icmp ugt i64 %222, 0
  br i1 %cmp344, label %land.lhs.true.346, label %if.end.376

land.lhs.true.346:                                ; preds = %cond.true.335
  %223 = load i32, i32* %__result339, align 4, !tbaa !10
  %cmp347 = icmp eq i32 %223, 0
  br i1 %cmp347, label %if.then.349, label %if.end.376

if.then.349:                                      ; preds = %land.lhs.true.346
  %224 = load i8*, i8** %__s1337, align 8, !tbaa !1
  %arrayidx350 = getelementptr inbounds i8, i8* %224, i64 1
  %225 = load i8, i8* %arrayidx350, align 1, !tbaa !11
  %conv351 = zext i8 %225 to i32
  %226 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i64 1), align 1, !tbaa !11
  %conv352 = zext i8 %226 to i32
  %sub353 = sub nsw i32 %conv351, %conv352
  store i32 %sub353, i32* %__result339, align 4, !tbaa !10
  %227 = load i64, i64* %__s2_len330, align 8, !tbaa !16
  %cmp354 = icmp ugt i64 %227, 1
  br i1 %cmp354, label %land.lhs.true.356, label %if.end.375

land.lhs.true.356:                                ; preds = %if.then.349
  %228 = load i32, i32* %__result339, align 4, !tbaa !10
  %cmp357 = icmp eq i32 %228, 0
  br i1 %cmp357, label %if.then.359, label %if.end.375

if.then.359:                                      ; preds = %land.lhs.true.356
  %229 = load i8*, i8** %__s1337, align 8, !tbaa !1
  %arrayidx360 = getelementptr inbounds i8, i8* %229, i64 2
  %230 = load i8, i8* %arrayidx360, align 1, !tbaa !11
  %conv361 = zext i8 %230 to i32
  %231 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i64 2), align 1, !tbaa !11
  %conv362 = zext i8 %231 to i32
  %sub363 = sub nsw i32 %conv361, %conv362
  store i32 %sub363, i32* %__result339, align 4, !tbaa !10
  %232 = load i64, i64* %__s2_len330, align 8, !tbaa !16
  %cmp364 = icmp ugt i64 %232, 2
  br i1 %cmp364, label %land.lhs.true.366, label %if.end.374

land.lhs.true.366:                                ; preds = %if.then.359
  %233 = load i32, i32* %__result339, align 4, !tbaa !10
  %cmp367 = icmp eq i32 %233, 0
  br i1 %cmp367, label %if.then.369, label %if.end.374

if.then.369:                                      ; preds = %land.lhs.true.366
  %234 = load i8*, i8** %__s1337, align 8, !tbaa !1
  %arrayidx370 = getelementptr inbounds i8, i8* %234, i64 3
  %235 = load i8, i8* %arrayidx370, align 1, !tbaa !11
  %conv371 = zext i8 %235 to i32
  %236 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i64 3), align 1, !tbaa !11
  %conv372 = zext i8 %236 to i32
  %sub373 = sub nsw i32 %conv371, %conv372
  store i32 %sub373, i32* %__result339, align 4, !tbaa !10
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.369, %land.lhs.true.366, %if.then.359
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %land.lhs.true.356, %if.then.349
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375, %land.lhs.true.346, %cond.true.335
  %237 = load i32, i32* %__result339, align 4, !tbaa !10
  store i32 %237, i32* %tmp377, !tbaa !10
  %238 = bitcast i32* %__result339 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #3
  %239 = bitcast i8** %__s1337 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #3
  %240 = load i32, i32* %tmp377, !tbaa !10
  br label %cond.end.380

cond.false.378:                                   ; preds = %land.lhs.true.332, %if.else.326
  %241 = load i8*, i8** %token, align 8, !tbaa !1
  %call379 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0)) #3
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.false.378, %if.end.376
  %cond381 = phi i32 [ %240, %if.end.376 ], [ %call379, %cond.false.378 ]
  store i32 %cond381, i32* %tmp331, !tbaa !10
  %242 = bitcast i64* %__s2_len330 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #3
  %243 = bitcast i64* %__s1_len328 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %243) #3
  %244 = load i32, i32* %tmp331, !tbaa !10
  %cmp382 = icmp eq i32 %244, 0
  br i1 %cmp382, label %if.then.384, label %if.else.385

if.then.384:                                      ; preds = %cond.end.380
  %245 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %disable_reservoir = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %245, i32 0, i32 17
  store i32 1, i32* %disable_reservoir, align 4, !tbaa !24
  %246 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %padding = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %246, i32 0, i32 44
  store i32 0, i32* %padding, align 4, !tbaa !25
  br label %if.end.2047

if.else.385:                                      ; preds = %cond.end.380
  %247 = bitcast i64* %__s1_len387 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %247) #3
  %248 = bitcast i64* %__s2_len389 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %248) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.118 to i64)), i64 1), label %land.lhs.true.391, label %cond.false.437

land.lhs.true.391:                                ; preds = %if.else.385
  store i64 7, i64* %__s2_len389, align 8, !tbaa !16
  %249 = load i64, i64* %__s2_len389, align 8, !tbaa !16
  %cmp392 = icmp ult i64 %249, 4
  br i1 %cmp392, label %cond.true.394, label %cond.false.437

cond.true.394:                                    ; preds = %land.lhs.true.391
  %250 = bitcast i8** %__s1396 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %250) #3
  %251 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %251, i8** %__s1396, align 8, !tbaa !1
  %252 = bitcast i32* %__result398 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %252) #3
  %253 = load i8*, i8** %__s1396, align 8, !tbaa !1
  %arrayidx399 = getelementptr inbounds i8, i8* %253, i64 0
  %254 = load i8, i8* %arrayidx399, align 1, !tbaa !11
  %conv400 = zext i8 %254 to i32
  %255 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), align 1, !tbaa !11
  %conv401 = zext i8 %255 to i32
  %sub402 = sub nsw i32 %conv400, %conv401
  store i32 %sub402, i32* %__result398, align 4, !tbaa !10
  %256 = load i64, i64* %__s2_len389, align 8, !tbaa !16
  %cmp403 = icmp ugt i64 %256, 0
  br i1 %cmp403, label %land.lhs.true.405, label %if.end.435

land.lhs.true.405:                                ; preds = %cond.true.394
  %257 = load i32, i32* %__result398, align 4, !tbaa !10
  %cmp406 = icmp eq i32 %257, 0
  br i1 %cmp406, label %if.then.408, label %if.end.435

if.then.408:                                      ; preds = %land.lhs.true.405
  %258 = load i8*, i8** %__s1396, align 8, !tbaa !1
  %arrayidx409 = getelementptr inbounds i8, i8* %258, i64 1
  %259 = load i8, i8* %arrayidx409, align 1, !tbaa !11
  %conv410 = zext i8 %259 to i32
  %260 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i64 1), align 1, !tbaa !11
  %conv411 = zext i8 %260 to i32
  %sub412 = sub nsw i32 %conv410, %conv411
  store i32 %sub412, i32* %__result398, align 4, !tbaa !10
  %261 = load i64, i64* %__s2_len389, align 8, !tbaa !16
  %cmp413 = icmp ugt i64 %261, 1
  br i1 %cmp413, label %land.lhs.true.415, label %if.end.434

land.lhs.true.415:                                ; preds = %if.then.408
  %262 = load i32, i32* %__result398, align 4, !tbaa !10
  %cmp416 = icmp eq i32 %262, 0
  br i1 %cmp416, label %if.then.418, label %if.end.434

if.then.418:                                      ; preds = %land.lhs.true.415
  %263 = load i8*, i8** %__s1396, align 8, !tbaa !1
  %arrayidx419 = getelementptr inbounds i8, i8* %263, i64 2
  %264 = load i8, i8* %arrayidx419, align 1, !tbaa !11
  %conv420 = zext i8 %264 to i32
  %265 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i64 2), align 1, !tbaa !11
  %conv421 = zext i8 %265 to i32
  %sub422 = sub nsw i32 %conv420, %conv421
  store i32 %sub422, i32* %__result398, align 4, !tbaa !10
  %266 = load i64, i64* %__s2_len389, align 8, !tbaa !16
  %cmp423 = icmp ugt i64 %266, 2
  br i1 %cmp423, label %land.lhs.true.425, label %if.end.433

land.lhs.true.425:                                ; preds = %if.then.418
  %267 = load i32, i32* %__result398, align 4, !tbaa !10
  %cmp426 = icmp eq i32 %267, 0
  br i1 %cmp426, label %if.then.428, label %if.end.433

if.then.428:                                      ; preds = %land.lhs.true.425
  %268 = load i8*, i8** %__s1396, align 8, !tbaa !1
  %arrayidx429 = getelementptr inbounds i8, i8* %268, i64 3
  %269 = load i8, i8* %arrayidx429, align 1, !tbaa !11
  %conv430 = zext i8 %269 to i32
  %270 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i64 3), align 1, !tbaa !11
  %conv431 = zext i8 %270 to i32
  %sub432 = sub nsw i32 %conv430, %conv431
  store i32 %sub432, i32* %__result398, align 4, !tbaa !10
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.428, %land.lhs.true.425, %if.then.418
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.433, %land.lhs.true.415, %if.then.408
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.434, %land.lhs.true.405, %cond.true.394
  %271 = load i32, i32* %__result398, align 4, !tbaa !10
  store i32 %271, i32* %tmp436, !tbaa !10
  %272 = bitcast i32* %__result398 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %272) #3
  %273 = bitcast i8** %__s1396 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %273) #3
  %274 = load i32, i32* %tmp436, !tbaa !10
  br label %cond.end.439

cond.false.437:                                   ; preds = %land.lhs.true.391, %if.else.385
  %275 = load i8*, i8** %token, align 8, !tbaa !1
  %call438 = call i32 @strcmp(i8* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0)) #3
  br label %cond.end.439

cond.end.439:                                     ; preds = %cond.false.437, %if.end.435
  %cond440 = phi i32 [ %274, %if.end.435 ], [ %call438, %cond.false.437 ]
  store i32 %cond440, i32* %tmp390, !tbaa !10
  %276 = bitcast i64* %__s2_len389 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #3
  %277 = bitcast i64* %__s1_len387 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #3
  %278 = load i32, i32* %tmp390, !tbaa !10
  %cmp441 = icmp eq i32 %278, 0
  br i1 %cmp441, label %if.then.443, label %if.else.444

if.then.443:                                      ; preds = %cond.end.439
  %279 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %279, i32 0, i32 33
  store i32 1, i32* %ATHonly, align 4, !tbaa !26
  br label %if.end.2046

if.else.444:                                      ; preds = %cond.end.439
  %280 = bitcast i64* %__s1_len446 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %280) #3
  %281 = bitcast i64* %__s2_len448 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %281) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.119 to i64)), i64 1), label %land.lhs.true.450, label %cond.false.496

land.lhs.true.450:                                ; preds = %if.else.444
  store i64 6, i64* %__s2_len448, align 8, !tbaa !16
  %282 = load i64, i64* %__s2_len448, align 8, !tbaa !16
  %cmp451 = icmp ult i64 %282, 4
  br i1 %cmp451, label %cond.true.453, label %cond.false.496

cond.true.453:                                    ; preds = %land.lhs.true.450
  %283 = bitcast i8** %__s1455 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %283) #3
  %284 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %284, i8** %__s1455, align 8, !tbaa !1
  %285 = bitcast i32* %__result457 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %285) #3
  %286 = load i8*, i8** %__s1455, align 8, !tbaa !1
  %arrayidx458 = getelementptr inbounds i8, i8* %286, i64 0
  %287 = load i8, i8* %arrayidx458, align 1, !tbaa !11
  %conv459 = zext i8 %287 to i32
  %288 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), align 1, !tbaa !11
  %conv460 = zext i8 %288 to i32
  %sub461 = sub nsw i32 %conv459, %conv460
  store i32 %sub461, i32* %__result457, align 4, !tbaa !10
  %289 = load i64, i64* %__s2_len448, align 8, !tbaa !16
  %cmp462 = icmp ugt i64 %289, 0
  br i1 %cmp462, label %land.lhs.true.464, label %if.end.494

land.lhs.true.464:                                ; preds = %cond.true.453
  %290 = load i32, i32* %__result457, align 4, !tbaa !10
  %cmp465 = icmp eq i32 %290, 0
  br i1 %cmp465, label %if.then.467, label %if.end.494

if.then.467:                                      ; preds = %land.lhs.true.464
  %291 = load i8*, i8** %__s1455, align 8, !tbaa !1
  %arrayidx468 = getelementptr inbounds i8, i8* %291, i64 1
  %292 = load i8, i8* %arrayidx468, align 1, !tbaa !11
  %conv469 = zext i8 %292 to i32
  %293 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i64 1), align 1, !tbaa !11
  %conv470 = zext i8 %293 to i32
  %sub471 = sub nsw i32 %conv469, %conv470
  store i32 %sub471, i32* %__result457, align 4, !tbaa !10
  %294 = load i64, i64* %__s2_len448, align 8, !tbaa !16
  %cmp472 = icmp ugt i64 %294, 1
  br i1 %cmp472, label %land.lhs.true.474, label %if.end.493

land.lhs.true.474:                                ; preds = %if.then.467
  %295 = load i32, i32* %__result457, align 4, !tbaa !10
  %cmp475 = icmp eq i32 %295, 0
  br i1 %cmp475, label %if.then.477, label %if.end.493

if.then.477:                                      ; preds = %land.lhs.true.474
  %296 = load i8*, i8** %__s1455, align 8, !tbaa !1
  %arrayidx478 = getelementptr inbounds i8, i8* %296, i64 2
  %297 = load i8, i8* %arrayidx478, align 1, !tbaa !11
  %conv479 = zext i8 %297 to i32
  %298 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i64 2), align 1, !tbaa !11
  %conv480 = zext i8 %298 to i32
  %sub481 = sub nsw i32 %conv479, %conv480
  store i32 %sub481, i32* %__result457, align 4, !tbaa !10
  %299 = load i64, i64* %__s2_len448, align 8, !tbaa !16
  %cmp482 = icmp ugt i64 %299, 2
  br i1 %cmp482, label %land.lhs.true.484, label %if.end.492

land.lhs.true.484:                                ; preds = %if.then.477
  %300 = load i32, i32* %__result457, align 4, !tbaa !10
  %cmp485 = icmp eq i32 %300, 0
  br i1 %cmp485, label %if.then.487, label %if.end.492

if.then.487:                                      ; preds = %land.lhs.true.484
  %301 = load i8*, i8** %__s1455, align 8, !tbaa !1
  %arrayidx488 = getelementptr inbounds i8, i8* %301, i64 3
  %302 = load i8, i8* %arrayidx488, align 1, !tbaa !11
  %conv489 = zext i8 %302 to i32
  %303 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i64 3), align 1, !tbaa !11
  %conv490 = zext i8 %303 to i32
  %sub491 = sub nsw i32 %conv489, %conv490
  store i32 %sub491, i32* %__result457, align 4, !tbaa !10
  br label %if.end.492

if.end.492:                                       ; preds = %if.then.487, %land.lhs.true.484, %if.then.477
  br label %if.end.493

if.end.493:                                       ; preds = %if.end.492, %land.lhs.true.474, %if.then.467
  br label %if.end.494

if.end.494:                                       ; preds = %if.end.493, %land.lhs.true.464, %cond.true.453
  %304 = load i32, i32* %__result457, align 4, !tbaa !10
  store i32 %304, i32* %tmp495, !tbaa !10
  %305 = bitcast i32* %__result457 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #3
  %306 = bitcast i8** %__s1455 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %306) #3
  %307 = load i32, i32* %tmp495, !tbaa !10
  br label %cond.end.498

cond.false.496:                                   ; preds = %land.lhs.true.450, %if.else.444
  %308 = load i8*, i8** %token, align 8, !tbaa !1
  %call497 = call i32 @strcmp(i8* %308, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0)) #3
  br label %cond.end.498

cond.end.498:                                     ; preds = %cond.false.496, %if.end.494
  %cond499 = phi i32 [ %307, %if.end.494 ], [ %call497, %cond.false.496 ]
  store i32 %cond499, i32* %tmp449, !tbaa !10
  %309 = bitcast i64* %__s2_len448 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #3
  %310 = bitcast i64* %__s1_len446 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %310) #3
  %311 = load i32, i32* %tmp449, !tbaa !10
  %cmp500 = icmp eq i32 %311, 0
  br i1 %cmp500, label %if.then.502, label %if.else.503

if.then.502:                                      ; preds = %cond.end.498
  br label %if.end.2045

if.else.503:                                      ; preds = %cond.end.498
  %312 = bitcast i64* %__s1_len505 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %312) #3
  %313 = bitcast i64* %__s2_len507 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %313) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.120 to i64)), i64 1), label %land.lhs.true.509, label %cond.false.555

land.lhs.true.509:                                ; preds = %if.else.503
  store i64 2, i64* %__s2_len507, align 8, !tbaa !16
  %314 = load i64, i64* %__s2_len507, align 8, !tbaa !16
  %cmp510 = icmp ult i64 %314, 4
  br i1 %cmp510, label %cond.true.512, label %cond.false.555

cond.true.512:                                    ; preds = %land.lhs.true.509
  %315 = bitcast i8** %__s1514 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %315) #3
  %316 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %316, i8** %__s1514, align 8, !tbaa !1
  %317 = bitcast i32* %__result516 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %317) #3
  %318 = load i8*, i8** %__s1514, align 8, !tbaa !1
  %arrayidx517 = getelementptr inbounds i8, i8* %318, i64 0
  %319 = load i8, i8* %arrayidx517, align 1, !tbaa !11
  %conv518 = zext i8 %319 to i32
  %320 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0), align 1, !tbaa !11
  %conv519 = zext i8 %320 to i32
  %sub520 = sub nsw i32 %conv518, %conv519
  store i32 %sub520, i32* %__result516, align 4, !tbaa !10
  %321 = load i64, i64* %__s2_len507, align 8, !tbaa !16
  %cmp521 = icmp ugt i64 %321, 0
  br i1 %cmp521, label %land.lhs.true.523, label %if.end.553

land.lhs.true.523:                                ; preds = %cond.true.512
  %322 = load i32, i32* %__result516, align 4, !tbaa !10
  %cmp524 = icmp eq i32 %322, 0
  br i1 %cmp524, label %if.then.526, label %if.end.553

if.then.526:                                      ; preds = %land.lhs.true.523
  %323 = load i8*, i8** %__s1514, align 8, !tbaa !1
  %arrayidx527 = getelementptr inbounds i8, i8* %323, i64 1
  %324 = load i8, i8* %arrayidx527, align 1, !tbaa !11
  %conv528 = zext i8 %324 to i32
  %325 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i64 1), align 1, !tbaa !11
  %conv529 = zext i8 %325 to i32
  %sub530 = sub nsw i32 %conv528, %conv529
  store i32 %sub530, i32* %__result516, align 4, !tbaa !10
  %326 = load i64, i64* %__s2_len507, align 8, !tbaa !16
  %cmp531 = icmp ugt i64 %326, 1
  br i1 %cmp531, label %land.lhs.true.533, label %if.end.552

land.lhs.true.533:                                ; preds = %if.then.526
  %327 = load i32, i32* %__result516, align 4, !tbaa !10
  %cmp534 = icmp eq i32 %327, 0
  br i1 %cmp534, label %if.then.536, label %if.end.552

if.then.536:                                      ; preds = %land.lhs.true.533
  %328 = load i8*, i8** %__s1514, align 8, !tbaa !1
  %arrayidx537 = getelementptr inbounds i8, i8* %328, i64 2
  %329 = load i8, i8* %arrayidx537, align 1, !tbaa !11
  %conv538 = zext i8 %329 to i32
  %330 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i64 2), align 1, !tbaa !11
  %conv539 = zext i8 %330 to i32
  %sub540 = sub nsw i32 %conv538, %conv539
  store i32 %sub540, i32* %__result516, align 4, !tbaa !10
  %331 = load i64, i64* %__s2_len507, align 8, !tbaa !16
  %cmp541 = icmp ugt i64 %331, 2
  br i1 %cmp541, label %land.lhs.true.543, label %if.end.551

land.lhs.true.543:                                ; preds = %if.then.536
  %332 = load i32, i32* %__result516, align 4, !tbaa !10
  %cmp544 = icmp eq i32 %332, 0
  br i1 %cmp544, label %if.then.546, label %if.end.551

if.then.546:                                      ; preds = %land.lhs.true.543
  %333 = load i8*, i8** %__s1514, align 8, !tbaa !1
  %arrayidx547 = getelementptr inbounds i8, i8* %333, i64 3
  %334 = load i8, i8* %arrayidx547, align 1, !tbaa !11
  %conv548 = zext i8 %334 to i32
  %335 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0), i64 3), align 1, !tbaa !11
  %conv549 = zext i8 %335 to i32
  %sub550 = sub nsw i32 %conv548, %conv549
  store i32 %sub550, i32* %__result516, align 4, !tbaa !10
  br label %if.end.551

if.end.551:                                       ; preds = %if.then.546, %land.lhs.true.543, %if.then.536
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.551, %land.lhs.true.533, %if.then.526
  br label %if.end.553

if.end.553:                                       ; preds = %if.end.552, %land.lhs.true.523, %cond.true.512
  %336 = load i32, i32* %__result516, align 4, !tbaa !10
  store i32 %336, i32* %tmp554, !tbaa !10
  %337 = bitcast i32* %__result516 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #3
  %338 = bitcast i8** %__s1514 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %338) #3
  %339 = load i32, i32* %tmp554, !tbaa !10
  br label %cond.end.557

cond.false.555:                                   ; preds = %land.lhs.true.509, %if.else.503
  %340 = load i8*, i8** %token, align 8, !tbaa !1
  %call556 = call i32 @strcmp(i8* %340, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0)) #3
  br label %cond.end.557

cond.end.557:                                     ; preds = %cond.false.555, %if.end.553
  %cond558 = phi i32 [ %339, %if.end.553 ], [ %call556, %cond.false.555 ]
  store i32 %cond558, i32* %tmp508, !tbaa !10
  %341 = bitcast i64* %__s2_len507 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #3
  %342 = bitcast i64* %__s1_len505 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %342) #3
  %343 = load i32, i32* %tmp508, !tbaa !10
  %cmp559 = icmp eq i32 %343, 0
  br i1 %cmp559, label %if.then.561, label %if.else.563

if.then.561:                                      ; preds = %cond.end.557
  store i32 1, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %344 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call562 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 2, i32 0), i8* %344, i64 30) #3
  br label %if.end.2044

if.else.563:                                      ; preds = %cond.end.557
  %345 = bitcast i64* %__s1_len565 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %345) #3
  %346 = bitcast i64* %__s2_len567 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %346) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.121 to i64)), i64 1), label %land.lhs.true.569, label %cond.false.615

land.lhs.true.569:                                ; preds = %if.else.563
  store i64 2, i64* %__s2_len567, align 8, !tbaa !16
  %347 = load i64, i64* %__s2_len567, align 8, !tbaa !16
  %cmp570 = icmp ult i64 %347, 4
  br i1 %cmp570, label %cond.true.572, label %cond.false.615

cond.true.572:                                    ; preds = %land.lhs.true.569
  %348 = bitcast i8** %__s1574 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %348) #3
  %349 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %349, i8** %__s1574, align 8, !tbaa !1
  %350 = bitcast i32* %__result576 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %350) #3
  %351 = load i8*, i8** %__s1574, align 8, !tbaa !1
  %arrayidx577 = getelementptr inbounds i8, i8* %351, i64 0
  %352 = load i8, i8* %arrayidx577, align 1, !tbaa !11
  %conv578 = zext i8 %352 to i32
  %353 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), align 1, !tbaa !11
  %conv579 = zext i8 %353 to i32
  %sub580 = sub nsw i32 %conv578, %conv579
  store i32 %sub580, i32* %__result576, align 4, !tbaa !10
  %354 = load i64, i64* %__s2_len567, align 8, !tbaa !16
  %cmp581 = icmp ugt i64 %354, 0
  br i1 %cmp581, label %land.lhs.true.583, label %if.end.613

land.lhs.true.583:                                ; preds = %cond.true.572
  %355 = load i32, i32* %__result576, align 4, !tbaa !10
  %cmp584 = icmp eq i32 %355, 0
  br i1 %cmp584, label %if.then.586, label %if.end.613

if.then.586:                                      ; preds = %land.lhs.true.583
  %356 = load i8*, i8** %__s1574, align 8, !tbaa !1
  %arrayidx587 = getelementptr inbounds i8, i8* %356, i64 1
  %357 = load i8, i8* %arrayidx587, align 1, !tbaa !11
  %conv588 = zext i8 %357 to i32
  %358 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i64 1), align 1, !tbaa !11
  %conv589 = zext i8 %358 to i32
  %sub590 = sub nsw i32 %conv588, %conv589
  store i32 %sub590, i32* %__result576, align 4, !tbaa !10
  %359 = load i64, i64* %__s2_len567, align 8, !tbaa !16
  %cmp591 = icmp ugt i64 %359, 1
  br i1 %cmp591, label %land.lhs.true.593, label %if.end.612

land.lhs.true.593:                                ; preds = %if.then.586
  %360 = load i32, i32* %__result576, align 4, !tbaa !10
  %cmp594 = icmp eq i32 %360, 0
  br i1 %cmp594, label %if.then.596, label %if.end.612

if.then.596:                                      ; preds = %land.lhs.true.593
  %361 = load i8*, i8** %__s1574, align 8, !tbaa !1
  %arrayidx597 = getelementptr inbounds i8, i8* %361, i64 2
  %362 = load i8, i8* %arrayidx597, align 1, !tbaa !11
  %conv598 = zext i8 %362 to i32
  %363 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i64 2), align 1, !tbaa !11
  %conv599 = zext i8 %363 to i32
  %sub600 = sub nsw i32 %conv598, %conv599
  store i32 %sub600, i32* %__result576, align 4, !tbaa !10
  %364 = load i64, i64* %__s2_len567, align 8, !tbaa !16
  %cmp601 = icmp ugt i64 %364, 2
  br i1 %cmp601, label %land.lhs.true.603, label %if.end.611

land.lhs.true.603:                                ; preds = %if.then.596
  %365 = load i32, i32* %__result576, align 4, !tbaa !10
  %cmp604 = icmp eq i32 %365, 0
  br i1 %cmp604, label %if.then.606, label %if.end.611

if.then.606:                                      ; preds = %land.lhs.true.603
  %366 = load i8*, i8** %__s1574, align 8, !tbaa !1
  %arrayidx607 = getelementptr inbounds i8, i8* %366, i64 3
  %367 = load i8, i8* %arrayidx607, align 1, !tbaa !11
  %conv608 = zext i8 %367 to i32
  %368 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i64 3), align 1, !tbaa !11
  %conv609 = zext i8 %368 to i32
  %sub610 = sub nsw i32 %conv608, %conv609
  store i32 %sub610, i32* %__result576, align 4, !tbaa !10
  br label %if.end.611

if.end.611:                                       ; preds = %if.then.606, %land.lhs.true.603, %if.then.596
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %land.lhs.true.593, %if.then.586
  br label %if.end.613

if.end.613:                                       ; preds = %if.end.612, %land.lhs.true.583, %cond.true.572
  %369 = load i32, i32* %__result576, align 4, !tbaa !10
  store i32 %369, i32* %tmp614, !tbaa !10
  %370 = bitcast i32* %__result576 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %370) #3
  %371 = bitcast i8** %__s1574 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %371) #3
  %372 = load i32, i32* %tmp614, !tbaa !10
  br label %cond.end.617

cond.false.615:                                   ; preds = %land.lhs.true.569, %if.else.563
  %373 = load i8*, i8** %token, align 8, !tbaa !1
  %call616 = call i32 @strcmp(i8* %373, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0)) #3
  br label %cond.end.617

cond.end.617:                                     ; preds = %cond.false.615, %if.end.613
  %cond618 = phi i32 [ %372, %if.end.613 ], [ %call616, %cond.false.615 ]
  store i32 %cond618, i32* %tmp568, !tbaa !10
  %374 = bitcast i64* %__s2_len567 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %374) #3
  %375 = bitcast i64* %__s1_len565 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %375) #3
  %376 = load i32, i32* %tmp568, !tbaa !10
  %cmp619 = icmp eq i32 %376, 0
  br i1 %cmp619, label %if.then.621, label %if.else.623

if.then.621:                                      ; preds = %cond.end.617
  store i32 1, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %377 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call622 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 3, i32 0), i8* %377, i64 30) #3
  br label %if.end.2043

if.else.623:                                      ; preds = %cond.end.617
  %378 = bitcast i64* %__s1_len625 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %378) #3
  %379 = bitcast i64* %__s2_len627 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %379) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.122 to i64)), i64 1), label %land.lhs.true.629, label %cond.false.675

land.lhs.true.629:                                ; preds = %if.else.623
  store i64 2, i64* %__s2_len627, align 8, !tbaa !16
  %380 = load i64, i64* %__s2_len627, align 8, !tbaa !16
  %cmp630 = icmp ult i64 %380, 4
  br i1 %cmp630, label %cond.true.632, label %cond.false.675

cond.true.632:                                    ; preds = %land.lhs.true.629
  %381 = bitcast i8** %__s1634 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %381) #3
  %382 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %382, i8** %__s1634, align 8, !tbaa !1
  %383 = bitcast i32* %__result636 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %383) #3
  %384 = load i8*, i8** %__s1634, align 8, !tbaa !1
  %arrayidx637 = getelementptr inbounds i8, i8* %384, i64 0
  %385 = load i8, i8* %arrayidx637, align 1, !tbaa !11
  %conv638 = zext i8 %385 to i32
  %386 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), align 1, !tbaa !11
  %conv639 = zext i8 %386 to i32
  %sub640 = sub nsw i32 %conv638, %conv639
  store i32 %sub640, i32* %__result636, align 4, !tbaa !10
  %387 = load i64, i64* %__s2_len627, align 8, !tbaa !16
  %cmp641 = icmp ugt i64 %387, 0
  br i1 %cmp641, label %land.lhs.true.643, label %if.end.673

land.lhs.true.643:                                ; preds = %cond.true.632
  %388 = load i32, i32* %__result636, align 4, !tbaa !10
  %cmp644 = icmp eq i32 %388, 0
  br i1 %cmp644, label %if.then.646, label %if.end.673

if.then.646:                                      ; preds = %land.lhs.true.643
  %389 = load i8*, i8** %__s1634, align 8, !tbaa !1
  %arrayidx647 = getelementptr inbounds i8, i8* %389, i64 1
  %390 = load i8, i8* %arrayidx647, align 1, !tbaa !11
  %conv648 = zext i8 %390 to i32
  %391 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i64 1), align 1, !tbaa !11
  %conv649 = zext i8 %391 to i32
  %sub650 = sub nsw i32 %conv648, %conv649
  store i32 %sub650, i32* %__result636, align 4, !tbaa !10
  %392 = load i64, i64* %__s2_len627, align 8, !tbaa !16
  %cmp651 = icmp ugt i64 %392, 1
  br i1 %cmp651, label %land.lhs.true.653, label %if.end.672

land.lhs.true.653:                                ; preds = %if.then.646
  %393 = load i32, i32* %__result636, align 4, !tbaa !10
  %cmp654 = icmp eq i32 %393, 0
  br i1 %cmp654, label %if.then.656, label %if.end.672

if.then.656:                                      ; preds = %land.lhs.true.653
  %394 = load i8*, i8** %__s1634, align 8, !tbaa !1
  %arrayidx657 = getelementptr inbounds i8, i8* %394, i64 2
  %395 = load i8, i8* %arrayidx657, align 1, !tbaa !11
  %conv658 = zext i8 %395 to i32
  %396 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i64 2), align 1, !tbaa !11
  %conv659 = zext i8 %396 to i32
  %sub660 = sub nsw i32 %conv658, %conv659
  store i32 %sub660, i32* %__result636, align 4, !tbaa !10
  %397 = load i64, i64* %__s2_len627, align 8, !tbaa !16
  %cmp661 = icmp ugt i64 %397, 2
  br i1 %cmp661, label %land.lhs.true.663, label %if.end.671

land.lhs.true.663:                                ; preds = %if.then.656
  %398 = load i32, i32* %__result636, align 4, !tbaa !10
  %cmp664 = icmp eq i32 %398, 0
  br i1 %cmp664, label %if.then.666, label %if.end.671

if.then.666:                                      ; preds = %land.lhs.true.663
  %399 = load i8*, i8** %__s1634, align 8, !tbaa !1
  %arrayidx667 = getelementptr inbounds i8, i8* %399, i64 3
  %400 = load i8, i8* %arrayidx667, align 1, !tbaa !11
  %conv668 = zext i8 %400 to i32
  %401 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i64 3), align 1, !tbaa !11
  %conv669 = zext i8 %401 to i32
  %sub670 = sub nsw i32 %conv668, %conv669
  store i32 %sub670, i32* %__result636, align 4, !tbaa !10
  br label %if.end.671

if.end.671:                                       ; preds = %if.then.666, %land.lhs.true.663, %if.then.656
  br label %if.end.672

if.end.672:                                       ; preds = %if.end.671, %land.lhs.true.653, %if.then.646
  br label %if.end.673

if.end.673:                                       ; preds = %if.end.672, %land.lhs.true.643, %cond.true.632
  %402 = load i32, i32* %__result636, align 4, !tbaa !10
  store i32 %402, i32* %tmp674, !tbaa !10
  %403 = bitcast i32* %__result636 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #3
  %404 = bitcast i8** %__s1634 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %404) #3
  %405 = load i32, i32* %tmp674, !tbaa !10
  br label %cond.end.677

cond.false.675:                                   ; preds = %land.lhs.true.629, %if.else.623
  %406 = load i8*, i8** %token, align 8, !tbaa !1
  %call676 = call i32 @strcmp(i8* %406, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0)) #3
  br label %cond.end.677

cond.end.677:                                     ; preds = %cond.false.675, %if.end.673
  %cond678 = phi i32 [ %405, %if.end.673 ], [ %call676, %cond.false.675 ]
  store i32 %cond678, i32* %tmp628, !tbaa !10
  %407 = bitcast i64* %__s2_len627 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %407) #3
  %408 = bitcast i64* %__s1_len625 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %408) #3
  %409 = load i32, i32* %tmp628, !tbaa !10
  %cmp679 = icmp eq i32 %409, 0
  br i1 %cmp679, label %if.then.681, label %if.else.683

if.then.681:                                      ; preds = %cond.end.677
  store i32 1, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %410 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call682 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 4, i32 0), i8* %410, i64 30) #3
  br label %if.end.2042

if.else.683:                                      ; preds = %cond.end.677
  %411 = bitcast i64* %__s1_len685 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %411) #3
  %412 = bitcast i64* %__s2_len687 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %412) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.123 to i64)), i64 1), label %land.lhs.true.689, label %cond.false.735

land.lhs.true.689:                                ; preds = %if.else.683
  store i64 2, i64* %__s2_len687, align 8, !tbaa !16
  %413 = load i64, i64* %__s2_len687, align 8, !tbaa !16
  %cmp690 = icmp ult i64 %413, 4
  br i1 %cmp690, label %cond.true.692, label %cond.false.735

cond.true.692:                                    ; preds = %land.lhs.true.689
  %414 = bitcast i8** %__s1694 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %414) #3
  %415 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %415, i8** %__s1694, align 8, !tbaa !1
  %416 = bitcast i32* %__result696 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %416) #3
  %417 = load i8*, i8** %__s1694, align 8, !tbaa !1
  %arrayidx697 = getelementptr inbounds i8, i8* %417, i64 0
  %418 = load i8, i8* %arrayidx697, align 1, !tbaa !11
  %conv698 = zext i8 %418 to i32
  %419 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), align 1, !tbaa !11
  %conv699 = zext i8 %419 to i32
  %sub700 = sub nsw i32 %conv698, %conv699
  store i32 %sub700, i32* %__result696, align 4, !tbaa !10
  %420 = load i64, i64* %__s2_len687, align 8, !tbaa !16
  %cmp701 = icmp ugt i64 %420, 0
  br i1 %cmp701, label %land.lhs.true.703, label %if.end.733

land.lhs.true.703:                                ; preds = %cond.true.692
  %421 = load i32, i32* %__result696, align 4, !tbaa !10
  %cmp704 = icmp eq i32 %421, 0
  br i1 %cmp704, label %if.then.706, label %if.end.733

if.then.706:                                      ; preds = %land.lhs.true.703
  %422 = load i8*, i8** %__s1694, align 8, !tbaa !1
  %arrayidx707 = getelementptr inbounds i8, i8* %422, i64 1
  %423 = load i8, i8* %arrayidx707, align 1, !tbaa !11
  %conv708 = zext i8 %423 to i32
  %424 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i64 1), align 1, !tbaa !11
  %conv709 = zext i8 %424 to i32
  %sub710 = sub nsw i32 %conv708, %conv709
  store i32 %sub710, i32* %__result696, align 4, !tbaa !10
  %425 = load i64, i64* %__s2_len687, align 8, !tbaa !16
  %cmp711 = icmp ugt i64 %425, 1
  br i1 %cmp711, label %land.lhs.true.713, label %if.end.732

land.lhs.true.713:                                ; preds = %if.then.706
  %426 = load i32, i32* %__result696, align 4, !tbaa !10
  %cmp714 = icmp eq i32 %426, 0
  br i1 %cmp714, label %if.then.716, label %if.end.732

if.then.716:                                      ; preds = %land.lhs.true.713
  %427 = load i8*, i8** %__s1694, align 8, !tbaa !1
  %arrayidx717 = getelementptr inbounds i8, i8* %427, i64 2
  %428 = load i8, i8* %arrayidx717, align 1, !tbaa !11
  %conv718 = zext i8 %428 to i32
  %429 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i64 2), align 1, !tbaa !11
  %conv719 = zext i8 %429 to i32
  %sub720 = sub nsw i32 %conv718, %conv719
  store i32 %sub720, i32* %__result696, align 4, !tbaa !10
  %430 = load i64, i64* %__s2_len687, align 8, !tbaa !16
  %cmp721 = icmp ugt i64 %430, 2
  br i1 %cmp721, label %land.lhs.true.723, label %if.end.731

land.lhs.true.723:                                ; preds = %if.then.716
  %431 = load i32, i32* %__result696, align 4, !tbaa !10
  %cmp724 = icmp eq i32 %431, 0
  br i1 %cmp724, label %if.then.726, label %if.end.731

if.then.726:                                      ; preds = %land.lhs.true.723
  %432 = load i8*, i8** %__s1694, align 8, !tbaa !1
  %arrayidx727 = getelementptr inbounds i8, i8* %432, i64 3
  %433 = load i8, i8* %arrayidx727, align 1, !tbaa !11
  %conv728 = zext i8 %433 to i32
  %434 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i64 3), align 1, !tbaa !11
  %conv729 = zext i8 %434 to i32
  %sub730 = sub nsw i32 %conv728, %conv729
  store i32 %sub730, i32* %__result696, align 4, !tbaa !10
  br label %if.end.731

if.end.731:                                       ; preds = %if.then.726, %land.lhs.true.723, %if.then.716
  br label %if.end.732

if.end.732:                                       ; preds = %if.end.731, %land.lhs.true.713, %if.then.706
  br label %if.end.733

if.end.733:                                       ; preds = %if.end.732, %land.lhs.true.703, %cond.true.692
  %435 = load i32, i32* %__result696, align 4, !tbaa !10
  store i32 %435, i32* %tmp734, !tbaa !10
  %436 = bitcast i32* %__result696 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %436) #3
  %437 = bitcast i8** %__s1694 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %437) #3
  %438 = load i32, i32* %tmp734, !tbaa !10
  br label %cond.end.737

cond.false.735:                                   ; preds = %land.lhs.true.689, %if.else.683
  %439 = load i8*, i8** %token, align 8, !tbaa !1
  %call736 = call i32 @strcmp(i8* %439, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0)) #3
  br label %cond.end.737

cond.end.737:                                     ; preds = %cond.false.735, %if.end.733
  %cond738 = phi i32 [ %438, %if.end.733 ], [ %call736, %cond.false.735 ]
  store i32 %cond738, i32* %tmp688, !tbaa !10
  %440 = bitcast i64* %__s2_len687 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %440) #3
  %441 = bitcast i64* %__s1_len685 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %441) #3
  %442 = load i32, i32* %tmp688, !tbaa !10
  %cmp739 = icmp eq i32 %442, 0
  br i1 %cmp739, label %if.then.741, label %if.else.743

if.then.741:                                      ; preds = %cond.end.737
  store i32 1, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %443 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call742 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 5, i32 0), i8* %443, i64 4) #3
  br label %if.end.2041

if.else.743:                                      ; preds = %cond.end.737
  %444 = bitcast i64* %__s1_len745 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %444) #3
  %445 = bitcast i64* %__s2_len747 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %445) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.124 to i64)), i64 1), label %land.lhs.true.749, label %cond.false.795

land.lhs.true.749:                                ; preds = %if.else.743
  store i64 2, i64* %__s2_len747, align 8, !tbaa !16
  %446 = load i64, i64* %__s2_len747, align 8, !tbaa !16
  %cmp750 = icmp ult i64 %446, 4
  br i1 %cmp750, label %cond.true.752, label %cond.false.795

cond.true.752:                                    ; preds = %land.lhs.true.749
  %447 = bitcast i8** %__s1754 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %447) #3
  %448 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %448, i8** %__s1754, align 8, !tbaa !1
  %449 = bitcast i32* %__result756 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %449) #3
  %450 = load i8*, i8** %__s1754, align 8, !tbaa !1
  %arrayidx757 = getelementptr inbounds i8, i8* %450, i64 0
  %451 = load i8, i8* %arrayidx757, align 1, !tbaa !11
  %conv758 = zext i8 %451 to i32
  %452 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), align 1, !tbaa !11
  %conv759 = zext i8 %452 to i32
  %sub760 = sub nsw i32 %conv758, %conv759
  store i32 %sub760, i32* %__result756, align 4, !tbaa !10
  %453 = load i64, i64* %__s2_len747, align 8, !tbaa !16
  %cmp761 = icmp ugt i64 %453, 0
  br i1 %cmp761, label %land.lhs.true.763, label %if.end.793

land.lhs.true.763:                                ; preds = %cond.true.752
  %454 = load i32, i32* %__result756, align 4, !tbaa !10
  %cmp764 = icmp eq i32 %454, 0
  br i1 %cmp764, label %if.then.766, label %if.end.793

if.then.766:                                      ; preds = %land.lhs.true.763
  %455 = load i8*, i8** %__s1754, align 8, !tbaa !1
  %arrayidx767 = getelementptr inbounds i8, i8* %455, i64 1
  %456 = load i8, i8* %arrayidx767, align 1, !tbaa !11
  %conv768 = zext i8 %456 to i32
  %457 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i64 1), align 1, !tbaa !11
  %conv769 = zext i8 %457 to i32
  %sub770 = sub nsw i32 %conv768, %conv769
  store i32 %sub770, i32* %__result756, align 4, !tbaa !10
  %458 = load i64, i64* %__s2_len747, align 8, !tbaa !16
  %cmp771 = icmp ugt i64 %458, 1
  br i1 %cmp771, label %land.lhs.true.773, label %if.end.792

land.lhs.true.773:                                ; preds = %if.then.766
  %459 = load i32, i32* %__result756, align 4, !tbaa !10
  %cmp774 = icmp eq i32 %459, 0
  br i1 %cmp774, label %if.then.776, label %if.end.792

if.then.776:                                      ; preds = %land.lhs.true.773
  %460 = load i8*, i8** %__s1754, align 8, !tbaa !1
  %arrayidx777 = getelementptr inbounds i8, i8* %460, i64 2
  %461 = load i8, i8* %arrayidx777, align 1, !tbaa !11
  %conv778 = zext i8 %461 to i32
  %462 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i64 2), align 1, !tbaa !11
  %conv779 = zext i8 %462 to i32
  %sub780 = sub nsw i32 %conv778, %conv779
  store i32 %sub780, i32* %__result756, align 4, !tbaa !10
  %463 = load i64, i64* %__s2_len747, align 8, !tbaa !16
  %cmp781 = icmp ugt i64 %463, 2
  br i1 %cmp781, label %land.lhs.true.783, label %if.end.791

land.lhs.true.783:                                ; preds = %if.then.776
  %464 = load i32, i32* %__result756, align 4, !tbaa !10
  %cmp784 = icmp eq i32 %464, 0
  br i1 %cmp784, label %if.then.786, label %if.end.791

if.then.786:                                      ; preds = %land.lhs.true.783
  %465 = load i8*, i8** %__s1754, align 8, !tbaa !1
  %arrayidx787 = getelementptr inbounds i8, i8* %465, i64 3
  %466 = load i8, i8* %arrayidx787, align 1, !tbaa !11
  %conv788 = zext i8 %466 to i32
  %467 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i64 3), align 1, !tbaa !11
  %conv789 = zext i8 %467 to i32
  %sub790 = sub nsw i32 %conv788, %conv789
  store i32 %sub790, i32* %__result756, align 4, !tbaa !10
  br label %if.end.791

if.end.791:                                       ; preds = %if.then.786, %land.lhs.true.783, %if.then.776
  br label %if.end.792

if.end.792:                                       ; preds = %if.end.791, %land.lhs.true.773, %if.then.766
  br label %if.end.793

if.end.793:                                       ; preds = %if.end.792, %land.lhs.true.763, %cond.true.752
  %468 = load i32, i32* %__result756, align 4, !tbaa !10
  store i32 %468, i32* %tmp794, !tbaa !10
  %469 = bitcast i32* %__result756 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #3
  %470 = bitcast i8** %__s1754 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %470) #3
  %471 = load i32, i32* %tmp794, !tbaa !10
  br label %cond.end.797

cond.false.795:                                   ; preds = %land.lhs.true.749, %if.else.743
  %472 = load i8*, i8** %token, align 8, !tbaa !1
  %call796 = call i32 @strcmp(i8* %472, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0)) #3
  br label %cond.end.797

cond.end.797:                                     ; preds = %cond.false.795, %if.end.793
  %cond798 = phi i32 [ %471, %if.end.793 ], [ %call796, %cond.false.795 ]
  store i32 %cond798, i32* %tmp748, !tbaa !10
  %473 = bitcast i64* %__s2_len747 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %473) #3
  %474 = bitcast i64* %__s1_len745 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %474) #3
  %475 = load i32, i32* %tmp748, !tbaa !10
  %cmp799 = icmp eq i32 %475, 0
  br i1 %cmp799, label %if.then.801, label %if.else.803

if.then.801:                                      ; preds = %cond.end.797
  store i32 1, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %476 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call802 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 6, i32 0), i8* %476, i64 30) #3
  br label %if.end.2040

if.else.803:                                      ; preds = %cond.end.797
  %477 = bitcast i64* %__s1_len805 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %477) #3
  %478 = bitcast i64* %__s2_len807 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %478) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.125 to i64)), i64 1), label %land.lhs.true.809, label %cond.false.855

land.lhs.true.809:                                ; preds = %if.else.803
  store i64 2, i64* %__s2_len807, align 8, !tbaa !16
  %479 = load i64, i64* %__s2_len807, align 8, !tbaa !16
  %cmp810 = icmp ult i64 %479, 4
  br i1 %cmp810, label %cond.true.812, label %cond.false.855

cond.true.812:                                    ; preds = %land.lhs.true.809
  %480 = bitcast i8** %__s1814 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %480) #3
  %481 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %481, i8** %__s1814, align 8, !tbaa !1
  %482 = bitcast i32* %__result816 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %482) #3
  %483 = load i8*, i8** %__s1814, align 8, !tbaa !1
  %arrayidx817 = getelementptr inbounds i8, i8* %483, i64 0
  %484 = load i8, i8* %arrayidx817, align 1, !tbaa !11
  %conv818 = zext i8 %484 to i32
  %485 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), align 1, !tbaa !11
  %conv819 = zext i8 %485 to i32
  %sub820 = sub nsw i32 %conv818, %conv819
  store i32 %sub820, i32* %__result816, align 4, !tbaa !10
  %486 = load i64, i64* %__s2_len807, align 8, !tbaa !16
  %cmp821 = icmp ugt i64 %486, 0
  br i1 %cmp821, label %land.lhs.true.823, label %if.end.853

land.lhs.true.823:                                ; preds = %cond.true.812
  %487 = load i32, i32* %__result816, align 4, !tbaa !10
  %cmp824 = icmp eq i32 %487, 0
  br i1 %cmp824, label %if.then.826, label %if.end.853

if.then.826:                                      ; preds = %land.lhs.true.823
  %488 = load i8*, i8** %__s1814, align 8, !tbaa !1
  %arrayidx827 = getelementptr inbounds i8, i8* %488, i64 1
  %489 = load i8, i8* %arrayidx827, align 1, !tbaa !11
  %conv828 = zext i8 %489 to i32
  %490 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i64 1), align 1, !tbaa !11
  %conv829 = zext i8 %490 to i32
  %sub830 = sub nsw i32 %conv828, %conv829
  store i32 %sub830, i32* %__result816, align 4, !tbaa !10
  %491 = load i64, i64* %__s2_len807, align 8, !tbaa !16
  %cmp831 = icmp ugt i64 %491, 1
  br i1 %cmp831, label %land.lhs.true.833, label %if.end.852

land.lhs.true.833:                                ; preds = %if.then.826
  %492 = load i32, i32* %__result816, align 4, !tbaa !10
  %cmp834 = icmp eq i32 %492, 0
  br i1 %cmp834, label %if.then.836, label %if.end.852

if.then.836:                                      ; preds = %land.lhs.true.833
  %493 = load i8*, i8** %__s1814, align 8, !tbaa !1
  %arrayidx837 = getelementptr inbounds i8, i8* %493, i64 2
  %494 = load i8, i8* %arrayidx837, align 1, !tbaa !11
  %conv838 = zext i8 %494 to i32
  %495 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i64 2), align 1, !tbaa !11
  %conv839 = zext i8 %495 to i32
  %sub840 = sub nsw i32 %conv838, %conv839
  store i32 %sub840, i32* %__result816, align 4, !tbaa !10
  %496 = load i64, i64* %__s2_len807, align 8, !tbaa !16
  %cmp841 = icmp ugt i64 %496, 2
  br i1 %cmp841, label %land.lhs.true.843, label %if.end.851

land.lhs.true.843:                                ; preds = %if.then.836
  %497 = load i32, i32* %__result816, align 4, !tbaa !10
  %cmp844 = icmp eq i32 %497, 0
  br i1 %cmp844, label %if.then.846, label %if.end.851

if.then.846:                                      ; preds = %land.lhs.true.843
  %498 = load i8*, i8** %__s1814, align 8, !tbaa !1
  %arrayidx847 = getelementptr inbounds i8, i8* %498, i64 3
  %499 = load i8, i8* %arrayidx847, align 1, !tbaa !11
  %conv848 = zext i8 %499 to i32
  %500 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), i64 3), align 1, !tbaa !11
  %conv849 = zext i8 %500 to i32
  %sub850 = sub nsw i32 %conv848, %conv849
  store i32 %sub850, i32* %__result816, align 4, !tbaa !10
  br label %if.end.851

if.end.851:                                       ; preds = %if.then.846, %land.lhs.true.843, %if.then.836
  br label %if.end.852

if.end.852:                                       ; preds = %if.end.851, %land.lhs.true.833, %if.then.826
  br label %if.end.853

if.end.853:                                       ; preds = %if.end.852, %land.lhs.true.823, %cond.true.812
  %501 = load i32, i32* %__result816, align 4, !tbaa !10
  store i32 %501, i32* %tmp854, !tbaa !10
  %502 = bitcast i32* %__result816 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %502) #3
  %503 = bitcast i8** %__s1814 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %503) #3
  %504 = load i32, i32* %tmp854, !tbaa !10
  br label %cond.end.857

cond.false.855:                                   ; preds = %land.lhs.true.809, %if.else.803
  %505 = load i8*, i8** %token, align 8, !tbaa !1
  %call856 = call i32 @strcmp(i8* %505, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0)) #3
  br label %cond.end.857

cond.end.857:                                     ; preds = %cond.false.855, %if.end.853
  %cond858 = phi i32 [ %504, %if.end.853 ], [ %call856, %cond.false.855 ]
  store i32 %cond858, i32* %tmp808, !tbaa !10
  %506 = bitcast i64* %__s2_len807 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %506) #3
  %507 = bitcast i64* %__s1_len805 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %507) #3
  %508 = load i32, i32* %tmp808, !tbaa !10
  %cmp859 = icmp eq i32 %508, 0
  br i1 %cmp859, label %if.then.861, label %if.else.872

if.then.861:                                      ; preds = %cond.end.857
  store i32 1, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %509 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call862 = call i32 @atoi(i8* %509) #8
  store i32 %call862, i32* %track, align 4, !tbaa !10
  %510 = load i32, i32* %track, align 4, !tbaa !10
  %cmp863 = icmp slt i32 %510, 1
  br i1 %cmp863, label %if.then.865, label %if.end.866

if.then.865:                                      ; preds = %if.then.861
  store i32 1, i32* %track, align 4, !tbaa !10
  br label %if.end.866

if.end.866:                                       ; preds = %if.then.865, %if.then.861
  %511 = load i32, i32* %track, align 4, !tbaa !10
  %cmp867 = icmp sgt i32 %511, 99
  br i1 %cmp867, label %if.then.869, label %if.end.870

if.then.869:                                      ; preds = %if.end.866
  store i32 99, i32* %track, align 4, !tbaa !10
  br label %if.end.870

if.end.870:                                       ; preds = %if.then.869, %if.end.866
  %512 = load i32, i32* %track, align 4, !tbaa !10
  %conv871 = trunc i32 %512 to i8
  store i8 %conv871, i8* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 9), align 1, !tbaa !27
  br label %if.end.2039

if.else.872:                                      ; preds = %cond.end.857
  %513 = bitcast i64* %__s1_len874 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %513) #3
  %514 = bitcast i64* %__s2_len876 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %514) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.126 to i64)), i64 1), label %land.lhs.true.878, label %cond.false.924

land.lhs.true.878:                                ; preds = %if.else.872
  store i64 2, i64* %__s2_len876, align 8, !tbaa !16
  %515 = load i64, i64* %__s2_len876, align 8, !tbaa !16
  %cmp879 = icmp ult i64 %515, 4
  br i1 %cmp879, label %cond.true.881, label %cond.false.924

cond.true.881:                                    ; preds = %land.lhs.true.878
  %516 = bitcast i8** %__s1883 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %516) #3
  %517 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %517, i8** %__s1883, align 8, !tbaa !1
  %518 = bitcast i32* %__result885 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %518) #3
  %519 = load i8*, i8** %__s1883, align 8, !tbaa !1
  %arrayidx886 = getelementptr inbounds i8, i8* %519, i64 0
  %520 = load i8, i8* %arrayidx886, align 1, !tbaa !11
  %conv887 = zext i8 %520 to i32
  %521 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), align 1, !tbaa !11
  %conv888 = zext i8 %521 to i32
  %sub889 = sub nsw i32 %conv887, %conv888
  store i32 %sub889, i32* %__result885, align 4, !tbaa !10
  %522 = load i64, i64* %__s2_len876, align 8, !tbaa !16
  %cmp890 = icmp ugt i64 %522, 0
  br i1 %cmp890, label %land.lhs.true.892, label %if.end.922

land.lhs.true.892:                                ; preds = %cond.true.881
  %523 = load i32, i32* %__result885, align 4, !tbaa !10
  %cmp893 = icmp eq i32 %523, 0
  br i1 %cmp893, label %if.then.895, label %if.end.922

if.then.895:                                      ; preds = %land.lhs.true.892
  %524 = load i8*, i8** %__s1883, align 8, !tbaa !1
  %arrayidx896 = getelementptr inbounds i8, i8* %524, i64 1
  %525 = load i8, i8* %arrayidx896, align 1, !tbaa !11
  %conv897 = zext i8 %525 to i32
  %526 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i64 1), align 1, !tbaa !11
  %conv898 = zext i8 %526 to i32
  %sub899 = sub nsw i32 %conv897, %conv898
  store i32 %sub899, i32* %__result885, align 4, !tbaa !10
  %527 = load i64, i64* %__s2_len876, align 8, !tbaa !16
  %cmp900 = icmp ugt i64 %527, 1
  br i1 %cmp900, label %land.lhs.true.902, label %if.end.921

land.lhs.true.902:                                ; preds = %if.then.895
  %528 = load i32, i32* %__result885, align 4, !tbaa !10
  %cmp903 = icmp eq i32 %528, 0
  br i1 %cmp903, label %if.then.905, label %if.end.921

if.then.905:                                      ; preds = %land.lhs.true.902
  %529 = load i8*, i8** %__s1883, align 8, !tbaa !1
  %arrayidx906 = getelementptr inbounds i8, i8* %529, i64 2
  %530 = load i8, i8* %arrayidx906, align 1, !tbaa !11
  %conv907 = zext i8 %530 to i32
  %531 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i64 2), align 1, !tbaa !11
  %conv908 = zext i8 %531 to i32
  %sub909 = sub nsw i32 %conv907, %conv908
  store i32 %sub909, i32* %__result885, align 4, !tbaa !10
  %532 = load i64, i64* %__s2_len876, align 8, !tbaa !16
  %cmp910 = icmp ugt i64 %532, 2
  br i1 %cmp910, label %land.lhs.true.912, label %if.end.920

land.lhs.true.912:                                ; preds = %if.then.905
  %533 = load i32, i32* %__result885, align 4, !tbaa !10
  %cmp913 = icmp eq i32 %533, 0
  br i1 %cmp913, label %if.then.915, label %if.end.920

if.then.915:                                      ; preds = %land.lhs.true.912
  %534 = load i8*, i8** %__s1883, align 8, !tbaa !1
  %arrayidx916 = getelementptr inbounds i8, i8* %534, i64 3
  %535 = load i8, i8* %arrayidx916, align 1, !tbaa !11
  %conv917 = zext i8 %535 to i32
  %536 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i64 3), align 1, !tbaa !11
  %conv918 = zext i8 %536 to i32
  %sub919 = sub nsw i32 %conv917, %conv918
  store i32 %sub919, i32* %__result885, align 4, !tbaa !10
  br label %if.end.920

if.end.920:                                       ; preds = %if.then.915, %land.lhs.true.912, %if.then.905
  br label %if.end.921

if.end.921:                                       ; preds = %if.end.920, %land.lhs.true.902, %if.then.895
  br label %if.end.922

if.end.922:                                       ; preds = %if.end.921, %land.lhs.true.892, %cond.true.881
  %537 = load i32, i32* %__result885, align 4, !tbaa !10
  store i32 %537, i32* %tmp923, !tbaa !10
  %538 = bitcast i32* %__result885 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %538) #3
  %539 = bitcast i8** %__s1883 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %539) #3
  %540 = load i32, i32* %tmp923, !tbaa !10
  br label %cond.end.926

cond.false.924:                                   ; preds = %land.lhs.true.878, %if.else.872
  %541 = load i8*, i8** %token, align 8, !tbaa !1
  %call925 = call i32 @strcmp(i8* %541, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0)) #3
  br label %cond.end.926

cond.end.926:                                     ; preds = %cond.false.924, %if.end.922
  %cond927 = phi i32 [ %540, %if.end.922 ], [ %call925, %cond.false.924 ]
  store i32 %cond927, i32* %tmp877, !tbaa !10
  %542 = bitcast i64* %__s2_len876 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %542) #3
  %543 = bitcast i64* %__s1_len874 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %543) #3
  %544 = load i32, i32* %tmp877, !tbaa !10
  %cmp928 = icmp eq i32 %544, 0
  br i1 %cmp928, label %if.then.930, label %if.else.958

if.then.930:                                      ; preds = %cond.end.926
  %545 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call931 = call i64 @strtol(i8* %545, i8** %token, i32 10) #3
  %conv932 = trunc i64 %call931 to i32
  store i32 %conv932, i32* %argUsed, align 4, !tbaa !10
  %546 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %547 = load i8*, i8** %token, align 8, !tbaa !1
  %cmp933 = icmp eq i8* %546, %547
  br i1 %cmp933, label %if.then.935, label %if.end.950

if.then.935:                                      ; preds = %if.then.930
  store i32 0, i32* %argUsed, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.935
  %548 = load i32, i32* %argUsed, align 4, !tbaa !10
  %549 = load i32, i32* @genre_last, align 4, !tbaa !10
  %cmp936 = icmp sle i32 %548, %549
  br i1 %cmp936, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %550 = bitcast i64* %__s1_len939 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %550) #3
  %551 = bitcast i64* %__s2_len941 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %551) #3
  %552 = load i32, i32* %argUsed, align 4, !tbaa !10
  %idxprom943 = sext i32 %552 to i64
  %arrayidx944 = getelementptr inbounds [0 x i8*], [0 x i8*]* @genre_list, i32 0, i64 %idxprom943
  %553 = load i8*, i8** %arrayidx944, align 8, !tbaa !1
  %554 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call945 = call i32 @strcmp(i8* %553, i8* %554) #3
  store i32 %call945, i32* %tmp942, !tbaa !10
  %555 = bitcast i64* %__s2_len941 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %555) #3
  %556 = bitcast i64* %__s1_len939 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %556) #3
  %557 = load i32, i32* %tmp942, !tbaa !10
  %tobool946 = icmp ne i32 %557, 0
  br i1 %tobool946, label %if.end.948, label %if.then.947

if.then.947:                                      ; preds = %for.body
  br label %for.end

if.end.948:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.948
  %558 = load i32, i32* %argUsed, align 4, !tbaa !10
  %inc949 = add nsw i32 %558, 1
  store i32 %inc949, i32* %argUsed, align 4, !tbaa !10
  br label %for.cond

for.end:                                          ; preds = %if.then.947, %for.cond
  br label %if.end.950

if.end.950:                                       ; preds = %for.end, %if.then.930
  %559 = load i32, i32* %argUsed, align 4, !tbaa !10
  %560 = load i32, i32* @genre_last, align 4, !tbaa !10
  %cmp951 = icmp sgt i32 %559, %560
  br i1 %cmp951, label %if.then.953, label %if.end.955

if.then.953:                                      ; preds = %if.end.950
  store i32 255, i32* %argUsed, align 4, !tbaa !10
  %561 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %562 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call954 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %561, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.127, i32 0, i32 0), i8* %562)
  br label %if.end.955

if.end.955:                                       ; preds = %if.then.953, %if.end.950
  %563 = load i32, i32* %argUsed, align 4, !tbaa !10
  %and = and i32 %563, 255
  store i32 %and, i32* %argUsed, align 4, !tbaa !10
  %564 = load i32, i32* %argUsed, align 4, !tbaa !10
  %conv956 = trunc i32 %564 to i8
  store i8 %conv956, i8* %c, align 1, !tbaa !11
  store i32 1, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %call957 = call i8* @strncpy(i8* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 8, i32 0), i8* %c, i64 1) #3
  br label %if.end.2038

if.else.958:                                      ; preds = %cond.end.926
  %565 = bitcast i64* %__s1_len960 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %565) #3
  %566 = bitcast i64* %__s2_len962 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %566) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.128 to i64)), i64 1), label %land.lhs.true.964, label %cond.false.1010

land.lhs.true.964:                                ; preds = %if.else.958
  store i64 7, i64* %__s2_len962, align 8, !tbaa !16
  %567 = load i64, i64* %__s2_len962, align 8, !tbaa !16
  %cmp965 = icmp ult i64 %567, 4
  br i1 %cmp965, label %cond.true.967, label %cond.false.1010

cond.true.967:                                    ; preds = %land.lhs.true.964
  %568 = bitcast i8** %__s1969 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %568) #3
  %569 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %569, i8** %__s1969, align 8, !tbaa !1
  %570 = bitcast i32* %__result971 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %570) #3
  %571 = load i8*, i8** %__s1969, align 8, !tbaa !1
  %arrayidx972 = getelementptr inbounds i8, i8* %571, i64 0
  %572 = load i8, i8* %arrayidx972, align 1, !tbaa !11
  %conv973 = zext i8 %572 to i32
  %573 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0), align 1, !tbaa !11
  %conv974 = zext i8 %573 to i32
  %sub975 = sub nsw i32 %conv973, %conv974
  store i32 %sub975, i32* %__result971, align 4, !tbaa !10
  %574 = load i64, i64* %__s2_len962, align 8, !tbaa !16
  %cmp976 = icmp ugt i64 %574, 0
  br i1 %cmp976, label %land.lhs.true.978, label %if.end.1008

land.lhs.true.978:                                ; preds = %cond.true.967
  %575 = load i32, i32* %__result971, align 4, !tbaa !10
  %cmp979 = icmp eq i32 %575, 0
  br i1 %cmp979, label %if.then.981, label %if.end.1008

if.then.981:                                      ; preds = %land.lhs.true.978
  %576 = load i8*, i8** %__s1969, align 8, !tbaa !1
  %arrayidx982 = getelementptr inbounds i8, i8* %576, i64 1
  %577 = load i8, i8* %arrayidx982, align 1, !tbaa !11
  %conv983 = zext i8 %577 to i32
  %578 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i64 1), align 1, !tbaa !11
  %conv984 = zext i8 %578 to i32
  %sub985 = sub nsw i32 %conv983, %conv984
  store i32 %sub985, i32* %__result971, align 4, !tbaa !10
  %579 = load i64, i64* %__s2_len962, align 8, !tbaa !16
  %cmp986 = icmp ugt i64 %579, 1
  br i1 %cmp986, label %land.lhs.true.988, label %if.end.1007

land.lhs.true.988:                                ; preds = %if.then.981
  %580 = load i32, i32* %__result971, align 4, !tbaa !10
  %cmp989 = icmp eq i32 %580, 0
  br i1 %cmp989, label %if.then.991, label %if.end.1007

if.then.991:                                      ; preds = %land.lhs.true.988
  %581 = load i8*, i8** %__s1969, align 8, !tbaa !1
  %arrayidx992 = getelementptr inbounds i8, i8* %581, i64 2
  %582 = load i8, i8* %arrayidx992, align 1, !tbaa !11
  %conv993 = zext i8 %582 to i32
  %583 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i64 2), align 1, !tbaa !11
  %conv994 = zext i8 %583 to i32
  %sub995 = sub nsw i32 %conv993, %conv994
  store i32 %sub995, i32* %__result971, align 4, !tbaa !10
  %584 = load i64, i64* %__s2_len962, align 8, !tbaa !16
  %cmp996 = icmp ugt i64 %584, 2
  br i1 %cmp996, label %land.lhs.true.998, label %if.end.1006

land.lhs.true.998:                                ; preds = %if.then.991
  %585 = load i32, i32* %__result971, align 4, !tbaa !10
  %cmp999 = icmp eq i32 %585, 0
  br i1 %cmp999, label %if.then.1001, label %if.end.1006

if.then.1001:                                     ; preds = %land.lhs.true.998
  %586 = load i8*, i8** %__s1969, align 8, !tbaa !1
  %arrayidx1002 = getelementptr inbounds i8, i8* %586, i64 3
  %587 = load i8, i8* %arrayidx1002, align 1, !tbaa !11
  %conv1003 = zext i8 %587 to i32
  %588 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i64 3), align 1, !tbaa !11
  %conv1004 = zext i8 %588 to i32
  %sub1005 = sub nsw i32 %conv1003, %conv1004
  store i32 %sub1005, i32* %__result971, align 4, !tbaa !10
  br label %if.end.1006

if.end.1006:                                      ; preds = %if.then.1001, %land.lhs.true.998, %if.then.991
  br label %if.end.1007

if.end.1007:                                      ; preds = %if.end.1006, %land.lhs.true.988, %if.then.981
  br label %if.end.1008

if.end.1008:                                      ; preds = %if.end.1007, %land.lhs.true.978, %cond.true.967
  %589 = load i32, i32* %__result971, align 4, !tbaa !10
  store i32 %589, i32* %tmp1009, !tbaa !10
  %590 = bitcast i32* %__result971 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %590) #3
  %591 = bitcast i8** %__s1969 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %591) #3
  %592 = load i32, i32* %tmp1009, !tbaa !10
  br label %cond.end.1012

cond.false.1010:                                  ; preds = %land.lhs.true.964, %if.else.958
  %593 = load i8*, i8** %token, align 8, !tbaa !1
  %call1011 = call i32 @strcmp(i8* %593, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0)) #3
  br label %cond.end.1012

cond.end.1012:                                    ; preds = %cond.false.1010, %if.end.1008
  %cond1013 = phi i32 [ %592, %if.end.1008 ], [ %call1011, %cond.false.1010 ]
  store i32 %cond1013, i32* %tmp963, !tbaa !10
  %594 = bitcast i64* %__s2_len962 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %594) #3
  %595 = bitcast i64* %__s1_len960 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %595) #3
  %596 = load i32, i32* %tmp963, !tbaa !10
  %cmp1014 = icmp eq i32 %596, 0
  br i1 %cmp1014, label %if.then.1016, label %if.else.1028

if.then.1016:                                     ; preds = %cond.end.1012
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %597 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1017 = call double @atof(i8* %597) #8
  %mul1018 = fmul double 1.000000e+03, %call1017
  %add1019 = fadd double %mul1018, 5.000000e-01
  %conv1020 = fptosi double %add1019 to i32
  %598 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq1021 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %598, i32 0, i32 25
  store i32 %conv1020, i32* %lowpassfreq1021, align 4, !tbaa !20
  %599 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq1022 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %599, i32 0, i32 25
  %600 = load i32, i32* %lowpassfreq1022, align 4, !tbaa !20
  %cmp1023 = icmp slt i32 %600, 1
  br i1 %cmp1023, label %if.then.1025, label %if.end.1027

if.then.1025:                                     ; preds = %if.then.1016
  %601 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1026 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %601, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.129, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.1027:                                      ; preds = %if.then.1016
  br label %if.end.2037

if.else.1028:                                     ; preds = %cond.end.1012
  %602 = bitcast i64* %__s1_len1030 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %602) #3
  %603 = bitcast i64* %__s2_len1032 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %603) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i64 1) to i64), i64 ptrtoint ([14 x i8]* @.str.130 to i64)), i64 1), label %land.lhs.true.1034, label %cond.false.1080

land.lhs.true.1034:                               ; preds = %if.else.1028
  store i64 13, i64* %__s2_len1032, align 8, !tbaa !16
  %604 = load i64, i64* %__s2_len1032, align 8, !tbaa !16
  %cmp1035 = icmp ult i64 %604, 4
  br i1 %cmp1035, label %cond.true.1037, label %cond.false.1080

cond.true.1037:                                   ; preds = %land.lhs.true.1034
  %605 = bitcast i8** %__s11039 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %605) #3
  %606 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %606, i8** %__s11039, align 8, !tbaa !1
  %607 = bitcast i32* %__result1041 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %607) #3
  %608 = load i8*, i8** %__s11039, align 8, !tbaa !1
  %arrayidx1042 = getelementptr inbounds i8, i8* %608, i64 0
  %609 = load i8, i8* %arrayidx1042, align 1, !tbaa !11
  %conv1043 = zext i8 %609 to i32
  %610 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i32 0), align 1, !tbaa !11
  %conv1044 = zext i8 %610 to i32
  %sub1045 = sub nsw i32 %conv1043, %conv1044
  store i32 %sub1045, i32* %__result1041, align 4, !tbaa !10
  %611 = load i64, i64* %__s2_len1032, align 8, !tbaa !16
  %cmp1046 = icmp ugt i64 %611, 0
  br i1 %cmp1046, label %land.lhs.true.1048, label %if.end.1078

land.lhs.true.1048:                               ; preds = %cond.true.1037
  %612 = load i32, i32* %__result1041, align 4, !tbaa !10
  %cmp1049 = icmp eq i32 %612, 0
  br i1 %cmp1049, label %if.then.1051, label %if.end.1078

if.then.1051:                                     ; preds = %land.lhs.true.1048
  %613 = load i8*, i8** %__s11039, align 8, !tbaa !1
  %arrayidx1052 = getelementptr inbounds i8, i8* %613, i64 1
  %614 = load i8, i8* %arrayidx1052, align 1, !tbaa !11
  %conv1053 = zext i8 %614 to i32
  %615 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i64 1), align 1, !tbaa !11
  %conv1054 = zext i8 %615 to i32
  %sub1055 = sub nsw i32 %conv1053, %conv1054
  store i32 %sub1055, i32* %__result1041, align 4, !tbaa !10
  %616 = load i64, i64* %__s2_len1032, align 8, !tbaa !16
  %cmp1056 = icmp ugt i64 %616, 1
  br i1 %cmp1056, label %land.lhs.true.1058, label %if.end.1077

land.lhs.true.1058:                               ; preds = %if.then.1051
  %617 = load i32, i32* %__result1041, align 4, !tbaa !10
  %cmp1059 = icmp eq i32 %617, 0
  br i1 %cmp1059, label %if.then.1061, label %if.end.1077

if.then.1061:                                     ; preds = %land.lhs.true.1058
  %618 = load i8*, i8** %__s11039, align 8, !tbaa !1
  %arrayidx1062 = getelementptr inbounds i8, i8* %618, i64 2
  %619 = load i8, i8* %arrayidx1062, align 1, !tbaa !11
  %conv1063 = zext i8 %619 to i32
  %620 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i64 2), align 1, !tbaa !11
  %conv1064 = zext i8 %620 to i32
  %sub1065 = sub nsw i32 %conv1063, %conv1064
  store i32 %sub1065, i32* %__result1041, align 4, !tbaa !10
  %621 = load i64, i64* %__s2_len1032, align 8, !tbaa !16
  %cmp1066 = icmp ugt i64 %621, 2
  br i1 %cmp1066, label %land.lhs.true.1068, label %if.end.1076

land.lhs.true.1068:                               ; preds = %if.then.1061
  %622 = load i32, i32* %__result1041, align 4, !tbaa !10
  %cmp1069 = icmp eq i32 %622, 0
  br i1 %cmp1069, label %if.then.1071, label %if.end.1076

if.then.1071:                                     ; preds = %land.lhs.true.1068
  %623 = load i8*, i8** %__s11039, align 8, !tbaa !1
  %arrayidx1072 = getelementptr inbounds i8, i8* %623, i64 3
  %624 = load i8, i8* %arrayidx1072, align 1, !tbaa !11
  %conv1073 = zext i8 %624 to i32
  %625 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i64 3), align 1, !tbaa !11
  %conv1074 = zext i8 %625 to i32
  %sub1075 = sub nsw i32 %conv1073, %conv1074
  store i32 %sub1075, i32* %__result1041, align 4, !tbaa !10
  br label %if.end.1076

if.end.1076:                                      ; preds = %if.then.1071, %land.lhs.true.1068, %if.then.1061
  br label %if.end.1077

if.end.1077:                                      ; preds = %if.end.1076, %land.lhs.true.1058, %if.then.1051
  br label %if.end.1078

if.end.1078:                                      ; preds = %if.end.1077, %land.lhs.true.1048, %cond.true.1037
  %626 = load i32, i32* %__result1041, align 4, !tbaa !10
  store i32 %626, i32* %tmp1079, !tbaa !10
  %627 = bitcast i32* %__result1041 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %627) #3
  %628 = bitcast i8** %__s11039 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %628) #3
  %629 = load i32, i32* %tmp1079, !tbaa !10
  br label %cond.end.1082

cond.false.1080:                                  ; preds = %land.lhs.true.1034, %if.else.1028
  %630 = load i8*, i8** %token, align 8, !tbaa !1
  %call1081 = call i32 @strcmp(i8* %630, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.130, i32 0, i32 0)) #3
  br label %cond.end.1082

cond.end.1082:                                    ; preds = %cond.false.1080, %if.end.1078
  %cond1083 = phi i32 [ %629, %if.end.1078 ], [ %call1081, %cond.false.1080 ]
  store i32 %cond1083, i32* %tmp1033, !tbaa !10
  %631 = bitcast i64* %__s2_len1032 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %631) #3
  %632 = bitcast i64* %__s1_len1030 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %632) #3
  %633 = load i32, i32* %tmp1033, !tbaa !10
  %cmp1084 = icmp eq i32 %633, 0
  br i1 %cmp1084, label %if.then.1086, label %if.else.1097

if.then.1086:                                     ; preds = %cond.end.1082
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %634 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1087 = call double @atof(i8* %634) #8
  %mul1088 = fmul double 1.000000e+03, %call1087
  %add1089 = fadd double %mul1088, 5.000000e-01
  %conv1090 = fptosi double %add1089 to i32
  %635 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %635, i32 0, i32 27
  store i32 %conv1090, i32* %lowpasswidth, align 4, !tbaa !28
  %636 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth1091 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %636, i32 0, i32 27
  %637 = load i32, i32* %lowpasswidth1091, align 4, !tbaa !28
  %cmp1092 = icmp slt i32 %637, 0
  br i1 %cmp1092, label %if.then.1094, label %if.end.1096

if.then.1094:                                     ; preds = %if.then.1086
  %638 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1095 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %638, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.131, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.1096:                                      ; preds = %if.then.1086
  br label %if.end.2036

if.else.1097:                                     ; preds = %cond.end.1082
  %639 = bitcast i64* %__s1_len1099 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %639) #3
  %640 = bitcast i64* %__s2_len1101 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %640) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i64 1) to i64), i64 ptrtoint ([9 x i8]* @.str.132 to i64)), i64 1), label %land.lhs.true.1103, label %cond.false.1149

land.lhs.true.1103:                               ; preds = %if.else.1097
  store i64 8, i64* %__s2_len1101, align 8, !tbaa !16
  %641 = load i64, i64* %__s2_len1101, align 8, !tbaa !16
  %cmp1104 = icmp ult i64 %641, 4
  br i1 %cmp1104, label %cond.true.1106, label %cond.false.1149

cond.true.1106:                                   ; preds = %land.lhs.true.1103
  %642 = bitcast i8** %__s11108 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %642) #3
  %643 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %643, i8** %__s11108, align 8, !tbaa !1
  %644 = bitcast i32* %__result1110 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %644) #3
  %645 = load i8*, i8** %__s11108, align 8, !tbaa !1
  %arrayidx1111 = getelementptr inbounds i8, i8* %645, i64 0
  %646 = load i8, i8* %arrayidx1111, align 1, !tbaa !11
  %conv1112 = zext i8 %646 to i32
  %647 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), align 1, !tbaa !11
  %conv1113 = zext i8 %647 to i32
  %sub1114 = sub nsw i32 %conv1112, %conv1113
  store i32 %sub1114, i32* %__result1110, align 4, !tbaa !10
  %648 = load i64, i64* %__s2_len1101, align 8, !tbaa !16
  %cmp1115 = icmp ugt i64 %648, 0
  br i1 %cmp1115, label %land.lhs.true.1117, label %if.end.1147

land.lhs.true.1117:                               ; preds = %cond.true.1106
  %649 = load i32, i32* %__result1110, align 4, !tbaa !10
  %cmp1118 = icmp eq i32 %649, 0
  br i1 %cmp1118, label %if.then.1120, label %if.end.1147

if.then.1120:                                     ; preds = %land.lhs.true.1117
  %650 = load i8*, i8** %__s11108, align 8, !tbaa !1
  %arrayidx1121 = getelementptr inbounds i8, i8* %650, i64 1
  %651 = load i8, i8* %arrayidx1121, align 1, !tbaa !11
  %conv1122 = zext i8 %651 to i32
  %652 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i64 1), align 1, !tbaa !11
  %conv1123 = zext i8 %652 to i32
  %sub1124 = sub nsw i32 %conv1122, %conv1123
  store i32 %sub1124, i32* %__result1110, align 4, !tbaa !10
  %653 = load i64, i64* %__s2_len1101, align 8, !tbaa !16
  %cmp1125 = icmp ugt i64 %653, 1
  br i1 %cmp1125, label %land.lhs.true.1127, label %if.end.1146

land.lhs.true.1127:                               ; preds = %if.then.1120
  %654 = load i32, i32* %__result1110, align 4, !tbaa !10
  %cmp1128 = icmp eq i32 %654, 0
  br i1 %cmp1128, label %if.then.1130, label %if.end.1146

if.then.1130:                                     ; preds = %land.lhs.true.1127
  %655 = load i8*, i8** %__s11108, align 8, !tbaa !1
  %arrayidx1131 = getelementptr inbounds i8, i8* %655, i64 2
  %656 = load i8, i8* %arrayidx1131, align 1, !tbaa !11
  %conv1132 = zext i8 %656 to i32
  %657 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i64 2), align 1, !tbaa !11
  %conv1133 = zext i8 %657 to i32
  %sub1134 = sub nsw i32 %conv1132, %conv1133
  store i32 %sub1134, i32* %__result1110, align 4, !tbaa !10
  %658 = load i64, i64* %__s2_len1101, align 8, !tbaa !16
  %cmp1135 = icmp ugt i64 %658, 2
  br i1 %cmp1135, label %land.lhs.true.1137, label %if.end.1145

land.lhs.true.1137:                               ; preds = %if.then.1130
  %659 = load i32, i32* %__result1110, align 4, !tbaa !10
  %cmp1138 = icmp eq i32 %659, 0
  br i1 %cmp1138, label %if.then.1140, label %if.end.1145

if.then.1140:                                     ; preds = %land.lhs.true.1137
  %660 = load i8*, i8** %__s11108, align 8, !tbaa !1
  %arrayidx1141 = getelementptr inbounds i8, i8* %660, i64 3
  %661 = load i8, i8* %arrayidx1141, align 1, !tbaa !11
  %conv1142 = zext i8 %661 to i32
  %662 = load i8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i64 3), align 1, !tbaa !11
  %conv1143 = zext i8 %662 to i32
  %sub1144 = sub nsw i32 %conv1142, %conv1143
  store i32 %sub1144, i32* %__result1110, align 4, !tbaa !10
  br label %if.end.1145

if.end.1145:                                      ; preds = %if.then.1140, %land.lhs.true.1137, %if.then.1130
  br label %if.end.1146

if.end.1146:                                      ; preds = %if.end.1145, %land.lhs.true.1127, %if.then.1120
  br label %if.end.1147

if.end.1147:                                      ; preds = %if.end.1146, %land.lhs.true.1117, %cond.true.1106
  %663 = load i32, i32* %__result1110, align 4, !tbaa !10
  store i32 %663, i32* %tmp1148, !tbaa !10
  %664 = bitcast i32* %__result1110 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %664) #3
  %665 = bitcast i8** %__s11108 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %665) #3
  %666 = load i32, i32* %tmp1148, !tbaa !10
  br label %cond.end.1151

cond.false.1149:                                  ; preds = %land.lhs.true.1103, %if.else.1097
  %667 = load i8*, i8** %token, align 8, !tbaa !1
  %call1150 = call i32 @strcmp(i8* %667, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0)) #3
  br label %cond.end.1151

cond.end.1151:                                    ; preds = %cond.false.1149, %if.end.1147
  %cond1152 = phi i32 [ %666, %if.end.1147 ], [ %call1150, %cond.false.1149 ]
  store i32 %cond1152, i32* %tmp1102, !tbaa !10
  %668 = bitcast i64* %__s2_len1101 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %668) #3
  %669 = bitcast i64* %__s1_len1099 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %669) #3
  %670 = load i32, i32* %tmp1102, !tbaa !10
  %cmp1153 = icmp eq i32 %670, 0
  br i1 %cmp1153, label %if.then.1155, label %if.else.1166

if.then.1155:                                     ; preds = %cond.end.1151
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %671 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1156 = call double @atof(i8* %671) #8
  %mul1157 = fmul double 1.000000e+03, %call1156
  %add1158 = fadd double %mul1157, 5.000000e-01
  %conv1159 = fptosi double %add1158 to i32
  %672 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %672, i32 0, i32 26
  store i32 %conv1159, i32* %highpassfreq, align 4, !tbaa !29
  %673 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq1160 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %673, i32 0, i32 26
  %674 = load i32, i32* %highpassfreq1160, align 4, !tbaa !29
  %cmp1161 = icmp slt i32 %674, 1
  br i1 %cmp1161, label %if.then.1163, label %if.end.1165

if.then.1163:                                     ; preds = %if.then.1155
  %675 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %675, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.133, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.1165:                                      ; preds = %if.then.1155
  br label %if.end.2035

if.else.1166:                                     ; preds = %cond.end.1151
  %676 = bitcast i64* %__s1_len1168 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %676) #3
  %677 = bitcast i64* %__s2_len1170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %677) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i64 1) to i64), i64 ptrtoint ([15 x i8]* @.str.134 to i64)), i64 1), label %land.lhs.true.1172, label %cond.false.1218

land.lhs.true.1172:                               ; preds = %if.else.1166
  store i64 14, i64* %__s2_len1170, align 8, !tbaa !16
  %678 = load i64, i64* %__s2_len1170, align 8, !tbaa !16
  %cmp1173 = icmp ult i64 %678, 4
  br i1 %cmp1173, label %cond.true.1175, label %cond.false.1218

cond.true.1175:                                   ; preds = %land.lhs.true.1172
  %679 = bitcast i8** %__s11177 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %679) #3
  %680 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %680, i8** %__s11177, align 8, !tbaa !1
  %681 = bitcast i32* %__result1179 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %681) #3
  %682 = load i8*, i8** %__s11177, align 8, !tbaa !1
  %arrayidx1180 = getelementptr inbounds i8, i8* %682, i64 0
  %683 = load i8, i8* %arrayidx1180, align 1, !tbaa !11
  %conv1181 = zext i8 %683 to i32
  %684 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0), align 1, !tbaa !11
  %conv1182 = zext i8 %684 to i32
  %sub1183 = sub nsw i32 %conv1181, %conv1182
  store i32 %sub1183, i32* %__result1179, align 4, !tbaa !10
  %685 = load i64, i64* %__s2_len1170, align 8, !tbaa !16
  %cmp1184 = icmp ugt i64 %685, 0
  br i1 %cmp1184, label %land.lhs.true.1186, label %if.end.1216

land.lhs.true.1186:                               ; preds = %cond.true.1175
  %686 = load i32, i32* %__result1179, align 4, !tbaa !10
  %cmp1187 = icmp eq i32 %686, 0
  br i1 %cmp1187, label %if.then.1189, label %if.end.1216

if.then.1189:                                     ; preds = %land.lhs.true.1186
  %687 = load i8*, i8** %__s11177, align 8, !tbaa !1
  %arrayidx1190 = getelementptr inbounds i8, i8* %687, i64 1
  %688 = load i8, i8* %arrayidx1190, align 1, !tbaa !11
  %conv1191 = zext i8 %688 to i32
  %689 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i64 1), align 1, !tbaa !11
  %conv1192 = zext i8 %689 to i32
  %sub1193 = sub nsw i32 %conv1191, %conv1192
  store i32 %sub1193, i32* %__result1179, align 4, !tbaa !10
  %690 = load i64, i64* %__s2_len1170, align 8, !tbaa !16
  %cmp1194 = icmp ugt i64 %690, 1
  br i1 %cmp1194, label %land.lhs.true.1196, label %if.end.1215

land.lhs.true.1196:                               ; preds = %if.then.1189
  %691 = load i32, i32* %__result1179, align 4, !tbaa !10
  %cmp1197 = icmp eq i32 %691, 0
  br i1 %cmp1197, label %if.then.1199, label %if.end.1215

if.then.1199:                                     ; preds = %land.lhs.true.1196
  %692 = load i8*, i8** %__s11177, align 8, !tbaa !1
  %arrayidx1200 = getelementptr inbounds i8, i8* %692, i64 2
  %693 = load i8, i8* %arrayidx1200, align 1, !tbaa !11
  %conv1201 = zext i8 %693 to i32
  %694 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i64 2), align 1, !tbaa !11
  %conv1202 = zext i8 %694 to i32
  %sub1203 = sub nsw i32 %conv1201, %conv1202
  store i32 %sub1203, i32* %__result1179, align 4, !tbaa !10
  %695 = load i64, i64* %__s2_len1170, align 8, !tbaa !16
  %cmp1204 = icmp ugt i64 %695, 2
  br i1 %cmp1204, label %land.lhs.true.1206, label %if.end.1214

land.lhs.true.1206:                               ; preds = %if.then.1199
  %696 = load i32, i32* %__result1179, align 4, !tbaa !10
  %cmp1207 = icmp eq i32 %696, 0
  br i1 %cmp1207, label %if.then.1209, label %if.end.1214

if.then.1209:                                     ; preds = %land.lhs.true.1206
  %697 = load i8*, i8** %__s11177, align 8, !tbaa !1
  %arrayidx1210 = getelementptr inbounds i8, i8* %697, i64 3
  %698 = load i8, i8* %arrayidx1210, align 1, !tbaa !11
  %conv1211 = zext i8 %698 to i32
  %699 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i64 3), align 1, !tbaa !11
  %conv1212 = zext i8 %699 to i32
  %sub1213 = sub nsw i32 %conv1211, %conv1212
  store i32 %sub1213, i32* %__result1179, align 4, !tbaa !10
  br label %if.end.1214

if.end.1214:                                      ; preds = %if.then.1209, %land.lhs.true.1206, %if.then.1199
  br label %if.end.1215

if.end.1215:                                      ; preds = %if.end.1214, %land.lhs.true.1196, %if.then.1189
  br label %if.end.1216

if.end.1216:                                      ; preds = %if.end.1215, %land.lhs.true.1186, %cond.true.1175
  %700 = load i32, i32* %__result1179, align 4, !tbaa !10
  store i32 %700, i32* %tmp1217, !tbaa !10
  %701 = bitcast i32* %__result1179 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %701) #3
  %702 = bitcast i8** %__s11177 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %702) #3
  %703 = load i32, i32* %tmp1217, !tbaa !10
  br label %cond.end.1220

cond.false.1218:                                  ; preds = %land.lhs.true.1172, %if.else.1166
  %704 = load i8*, i8** %token, align 8, !tbaa !1
  %call1219 = call i32 @strcmp(i8* %704, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.134, i32 0, i32 0)) #3
  br label %cond.end.1220

cond.end.1220:                                    ; preds = %cond.false.1218, %if.end.1216
  %cond1221 = phi i32 [ %703, %if.end.1216 ], [ %call1219, %cond.false.1218 ]
  store i32 %cond1221, i32* %tmp1171, !tbaa !10
  %705 = bitcast i64* %__s2_len1170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %705) #3
  %706 = bitcast i64* %__s1_len1168 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %706) #3
  %707 = load i32, i32* %tmp1171, !tbaa !10
  %cmp1222 = icmp eq i32 %707, 0
  br i1 %cmp1222, label %if.then.1224, label %if.else.1235

if.then.1224:                                     ; preds = %cond.end.1220
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %708 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1225 = call double @atof(i8* %708) #8
  %mul1226 = fmul double 1.000000e+03, %call1225
  %add1227 = fadd double %mul1226, 5.000000e-01
  %conv1228 = fptosi double %add1227 to i32
  %709 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %709, i32 0, i32 28
  store i32 %conv1228, i32* %highpasswidth, align 4, !tbaa !30
  %710 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth1229 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %710, i32 0, i32 28
  %711 = load i32, i32* %highpasswidth1229, align 4, !tbaa !30
  %cmp1230 = icmp slt i32 %711, 0
  br i1 %cmp1230, label %if.then.1232, label %if.end.1234

if.then.1232:                                     ; preds = %if.then.1224
  %712 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %712, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.135, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.1234:                                      ; preds = %if.then.1224
  br label %if.end.2034

if.else.1235:                                     ; preds = %cond.end.1220
  %713 = bitcast i64* %__s1_len1237 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %713) #3
  %714 = bitcast i64* %__s2_len1239 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %714) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.136 to i64)), i64 1), label %land.lhs.true.1241, label %cond.false.1287

land.lhs.true.1241:                               ; preds = %if.else.1235
  store i64 7, i64* %__s2_len1239, align 8, !tbaa !16
  %715 = load i64, i64* %__s2_len1239, align 8, !tbaa !16
  %cmp1242 = icmp ult i64 %715, 4
  br i1 %cmp1242, label %cond.true.1244, label %cond.false.1287

cond.true.1244:                                   ; preds = %land.lhs.true.1241
  %716 = bitcast i8** %__s11246 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %716) #3
  %717 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %717, i8** %__s11246, align 8, !tbaa !1
  %718 = bitcast i32* %__result1248 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %718) #3
  %719 = load i8*, i8** %__s11246, align 8, !tbaa !1
  %arrayidx1249 = getelementptr inbounds i8, i8* %719, i64 0
  %720 = load i8, i8* %arrayidx1249, align 1, !tbaa !11
  %conv1250 = zext i8 %720 to i32
  %721 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0), align 1, !tbaa !11
  %conv1251 = zext i8 %721 to i32
  %sub1252 = sub nsw i32 %conv1250, %conv1251
  store i32 %sub1252, i32* %__result1248, align 4, !tbaa !10
  %722 = load i64, i64* %__s2_len1239, align 8, !tbaa !16
  %cmp1253 = icmp ugt i64 %722, 0
  br i1 %cmp1253, label %land.lhs.true.1255, label %if.end.1285

land.lhs.true.1255:                               ; preds = %cond.true.1244
  %723 = load i32, i32* %__result1248, align 4, !tbaa !10
  %cmp1256 = icmp eq i32 %723, 0
  br i1 %cmp1256, label %if.then.1258, label %if.end.1285

if.then.1258:                                     ; preds = %land.lhs.true.1255
  %724 = load i8*, i8** %__s11246, align 8, !tbaa !1
  %arrayidx1259 = getelementptr inbounds i8, i8* %724, i64 1
  %725 = load i8, i8* %arrayidx1259, align 1, !tbaa !11
  %conv1260 = zext i8 %725 to i32
  %726 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i64 1), align 1, !tbaa !11
  %conv1261 = zext i8 %726 to i32
  %sub1262 = sub nsw i32 %conv1260, %conv1261
  store i32 %sub1262, i32* %__result1248, align 4, !tbaa !10
  %727 = load i64, i64* %__s2_len1239, align 8, !tbaa !16
  %cmp1263 = icmp ugt i64 %727, 1
  br i1 %cmp1263, label %land.lhs.true.1265, label %if.end.1284

land.lhs.true.1265:                               ; preds = %if.then.1258
  %728 = load i32, i32* %__result1248, align 4, !tbaa !10
  %cmp1266 = icmp eq i32 %728, 0
  br i1 %cmp1266, label %if.then.1268, label %if.end.1284

if.then.1268:                                     ; preds = %land.lhs.true.1265
  %729 = load i8*, i8** %__s11246, align 8, !tbaa !1
  %arrayidx1269 = getelementptr inbounds i8, i8* %729, i64 2
  %730 = load i8, i8* %arrayidx1269, align 1, !tbaa !11
  %conv1270 = zext i8 %730 to i32
  %731 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i64 2), align 1, !tbaa !11
  %conv1271 = zext i8 %731 to i32
  %sub1272 = sub nsw i32 %conv1270, %conv1271
  store i32 %sub1272, i32* %__result1248, align 4, !tbaa !10
  %732 = load i64, i64* %__s2_len1239, align 8, !tbaa !16
  %cmp1273 = icmp ugt i64 %732, 2
  br i1 %cmp1273, label %land.lhs.true.1275, label %if.end.1283

land.lhs.true.1275:                               ; preds = %if.then.1268
  %733 = load i32, i32* %__result1248, align 4, !tbaa !10
  %cmp1276 = icmp eq i32 %733, 0
  br i1 %cmp1276, label %if.then.1278, label %if.end.1283

if.then.1278:                                     ; preds = %land.lhs.true.1275
  %734 = load i8*, i8** %__s11246, align 8, !tbaa !1
  %arrayidx1279 = getelementptr inbounds i8, i8* %734, i64 3
  %735 = load i8, i8* %arrayidx1279, align 1, !tbaa !11
  %conv1280 = zext i8 %735 to i32
  %736 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i64 3), align 1, !tbaa !11
  %conv1281 = zext i8 %736 to i32
  %sub1282 = sub nsw i32 %conv1280, %conv1281
  store i32 %sub1282, i32* %__result1248, align 4, !tbaa !10
  br label %if.end.1283

if.end.1283:                                      ; preds = %if.then.1278, %land.lhs.true.1275, %if.then.1268
  br label %if.end.1284

if.end.1284:                                      ; preds = %if.end.1283, %land.lhs.true.1265, %if.then.1258
  br label %if.end.1285

if.end.1285:                                      ; preds = %if.end.1284, %land.lhs.true.1255, %cond.true.1244
  %737 = load i32, i32* %__result1248, align 4, !tbaa !10
  store i32 %737, i32* %tmp1286, !tbaa !10
  %738 = bitcast i32* %__result1248 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %738) #3
  %739 = bitcast i8** %__s11246 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %739) #3
  %740 = load i32, i32* %tmp1286, !tbaa !10
  br label %cond.end.1289

cond.false.1287:                                  ; preds = %land.lhs.true.1241, %if.else.1235
  %741 = load i8*, i8** %token, align 8, !tbaa !1
  %call1288 = call i32 @strcmp(i8* %741, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.136, i32 0, i32 0)) #3
  br label %cond.end.1289

cond.end.1289:                                    ; preds = %cond.false.1287, %if.end.1285
  %cond1290 = phi i32 [ %740, %if.end.1285 ], [ %call1288, %cond.false.1287 ]
  store i32 %cond1290, i32* %tmp1240, !tbaa !10
  %742 = bitcast i64* %__s2_len1239 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %742) #3
  %743 = bitcast i64* %__s1_len1237 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %743) #3
  %744 = load i32, i32* %tmp1240, !tbaa !10
  %cmp1291 = icmp eq i32 %744, 0
  br i1 %cmp1291, label %if.then.1293, label %if.else.1302

if.then.1293:                                     ; preds = %cond.end.1289
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %745 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1294 = call double @atof(i8* %745) #8
  %conv1295 = fptrunc double %call1294 to float
  %746 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %cwlimit = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %746, i32 0, i32 35
  store float %conv1295, float* %cwlimit, align 4, !tbaa !31
  %747 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %cwlimit1296 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %747, i32 0, i32 35
  %748 = load float, float* %cwlimit1296, align 4, !tbaa !31
  %cmp1297 = fcmp ole float %748, 0.000000e+00
  br i1 %cmp1297, label %if.then.1299, label %if.end.1301

if.then.1299:                                     ; preds = %if.then.1293
  %749 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call1300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %749, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.137, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.1301:                                      ; preds = %if.then.1293
  br label %if.end.2033

if.else.1302:                                     ; preds = %cond.end.1289
  %750 = bitcast i64* %__s1_len1304 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %750) #3
  %751 = bitcast i64* %__s2_len1306 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %751) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.138 to i64)), i64 1), label %land.lhs.true.1308, label %cond.false.1354

land.lhs.true.1308:                               ; preds = %if.else.1302
  store i64 4, i64* %__s2_len1306, align 8, !tbaa !16
  %752 = load i64, i64* %__s2_len1306, align 8, !tbaa !16
  %cmp1309 = icmp ult i64 %752, 4
  br i1 %cmp1309, label %cond.true.1311, label %cond.false.1354

cond.true.1311:                                   ; preds = %land.lhs.true.1308
  %753 = bitcast i8** %__s11313 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %753) #3
  %754 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %754, i8** %__s11313, align 8, !tbaa !1
  %755 = bitcast i32* %__result1315 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %755) #3
  %756 = load i8*, i8** %__s11313, align 8, !tbaa !1
  %arrayidx1316 = getelementptr inbounds i8, i8* %756, i64 0
  %757 = load i8, i8* %arrayidx1316, align 1, !tbaa !11
  %conv1317 = zext i8 %757 to i32
  %758 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), align 1, !tbaa !11
  %conv1318 = zext i8 %758 to i32
  %sub1319 = sub nsw i32 %conv1317, %conv1318
  store i32 %sub1319, i32* %__result1315, align 4, !tbaa !10
  %759 = load i64, i64* %__s2_len1306, align 8, !tbaa !16
  %cmp1320 = icmp ugt i64 %759, 0
  br i1 %cmp1320, label %land.lhs.true.1322, label %if.end.1352

land.lhs.true.1322:                               ; preds = %cond.true.1311
  %760 = load i32, i32* %__result1315, align 4, !tbaa !10
  %cmp1323 = icmp eq i32 %760, 0
  br i1 %cmp1323, label %if.then.1325, label %if.end.1352

if.then.1325:                                     ; preds = %land.lhs.true.1322
  %761 = load i8*, i8** %__s11313, align 8, !tbaa !1
  %arrayidx1326 = getelementptr inbounds i8, i8* %761, i64 1
  %762 = load i8, i8* %arrayidx1326, align 1, !tbaa !11
  %conv1327 = zext i8 %762 to i32
  %763 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i64 1), align 1, !tbaa !11
  %conv1328 = zext i8 %763 to i32
  %sub1329 = sub nsw i32 %conv1327, %conv1328
  store i32 %sub1329, i32* %__result1315, align 4, !tbaa !10
  %764 = load i64, i64* %__s2_len1306, align 8, !tbaa !16
  %cmp1330 = icmp ugt i64 %764, 1
  br i1 %cmp1330, label %land.lhs.true.1332, label %if.end.1351

land.lhs.true.1332:                               ; preds = %if.then.1325
  %765 = load i32, i32* %__result1315, align 4, !tbaa !10
  %cmp1333 = icmp eq i32 %765, 0
  br i1 %cmp1333, label %if.then.1335, label %if.end.1351

if.then.1335:                                     ; preds = %land.lhs.true.1332
  %766 = load i8*, i8** %__s11313, align 8, !tbaa !1
  %arrayidx1336 = getelementptr inbounds i8, i8* %766, i64 2
  %767 = load i8, i8* %arrayidx1336, align 1, !tbaa !11
  %conv1337 = zext i8 %767 to i32
  %768 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i64 2), align 1, !tbaa !11
  %conv1338 = zext i8 %768 to i32
  %sub1339 = sub nsw i32 %conv1337, %conv1338
  store i32 %sub1339, i32* %__result1315, align 4, !tbaa !10
  %769 = load i64, i64* %__s2_len1306, align 8, !tbaa !16
  %cmp1340 = icmp ugt i64 %769, 2
  br i1 %cmp1340, label %land.lhs.true.1342, label %if.end.1350

land.lhs.true.1342:                               ; preds = %if.then.1335
  %770 = load i32, i32* %__result1315, align 4, !tbaa !10
  %cmp1343 = icmp eq i32 %770, 0
  br i1 %cmp1343, label %if.then.1345, label %if.end.1350

if.then.1345:                                     ; preds = %land.lhs.true.1342
  %771 = load i8*, i8** %__s11313, align 8, !tbaa !1
  %arrayidx1346 = getelementptr inbounds i8, i8* %771, i64 3
  %772 = load i8, i8* %arrayidx1346, align 1, !tbaa !11
  %conv1347 = zext i8 %772 to i32
  %773 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i64 3), align 1, !tbaa !11
  %conv1348 = zext i8 %773 to i32
  %sub1349 = sub nsw i32 %conv1347, %conv1348
  store i32 %sub1349, i32* %__result1315, align 4, !tbaa !10
  br label %if.end.1350

if.end.1350:                                      ; preds = %if.then.1345, %land.lhs.true.1342, %if.then.1335
  br label %if.end.1351

if.end.1351:                                      ; preds = %if.end.1350, %land.lhs.true.1332, %if.then.1325
  br label %if.end.1352

if.end.1352:                                      ; preds = %if.end.1351, %land.lhs.true.1322, %cond.true.1311
  %774 = load i32, i32* %__result1315, align 4, !tbaa !10
  store i32 %774, i32* %tmp1353, !tbaa !10
  %775 = bitcast i32* %__result1315 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %775) #3
  %776 = bitcast i8** %__s11313 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %776) #3
  %777 = load i32, i32* %tmp1353, !tbaa !10
  br label %cond.end.1356

cond.false.1354:                                  ; preds = %land.lhs.true.1308, %if.else.1302
  %778 = load i8*, i8** %token, align 8, !tbaa !1
  %call1355 = call i32 @strcmp(i8* %778, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0)) #3
  br label %cond.end.1356

cond.end.1356:                                    ; preds = %cond.false.1354, %if.end.1352
  %cond1357 = phi i32 [ %777, %if.end.1352 ], [ %call1355, %cond.false.1354 ]
  store i32 %cond1357, i32* %tmp1307, !tbaa !10
  %779 = bitcast i64* %__s2_len1306 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %779) #3
  %780 = bitcast i64* %__s1_len1304 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %780) #3
  %781 = load i32, i32* %tmp1307, !tbaa !10
  %cmp1358 = icmp eq i32 %781, 0
  br i1 %cmp1358, label %if.then.1417, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.1356
  %782 = bitcast i64* %__s1_len1361 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %782) #3
  %783 = bitcast i64* %__s2_len1363 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %783) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.139 to i64)), i64 1), label %land.lhs.true.1365, label %cond.false.1411

land.lhs.true.1365:                               ; preds = %lor.lhs.false
  store i64 5, i64* %__s2_len1363, align 8, !tbaa !16
  %784 = load i64, i64* %__s2_len1363, align 8, !tbaa !16
  %cmp1366 = icmp ult i64 %784, 4
  br i1 %cmp1366, label %cond.true.1368, label %cond.false.1411

cond.true.1368:                                   ; preds = %land.lhs.true.1365
  %785 = bitcast i8** %__s11370 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %785) #3
  %786 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %786, i8** %__s11370, align 8, !tbaa !1
  %787 = bitcast i32* %__result1372 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %787) #3
  %788 = load i8*, i8** %__s11370, align 8, !tbaa !1
  %arrayidx1373 = getelementptr inbounds i8, i8* %788, i64 0
  %789 = load i8, i8* %arrayidx1373, align 1, !tbaa !11
  %conv1374 = zext i8 %789 to i32
  %790 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0), align 1, !tbaa !11
  %conv1375 = zext i8 %790 to i32
  %sub1376 = sub nsw i32 %conv1374, %conv1375
  store i32 %sub1376, i32* %__result1372, align 4, !tbaa !10
  %791 = load i64, i64* %__s2_len1363, align 8, !tbaa !16
  %cmp1377 = icmp ugt i64 %791, 0
  br i1 %cmp1377, label %land.lhs.true.1379, label %if.end.1409

land.lhs.true.1379:                               ; preds = %cond.true.1368
  %792 = load i32, i32* %__result1372, align 4, !tbaa !10
  %cmp1380 = icmp eq i32 %792, 0
  br i1 %cmp1380, label %if.then.1382, label %if.end.1409

if.then.1382:                                     ; preds = %land.lhs.true.1379
  %793 = load i8*, i8** %__s11370, align 8, !tbaa !1
  %arrayidx1383 = getelementptr inbounds i8, i8* %793, i64 1
  %794 = load i8, i8* %arrayidx1383, align 1, !tbaa !11
  %conv1384 = zext i8 %794 to i32
  %795 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i64 1), align 1, !tbaa !11
  %conv1385 = zext i8 %795 to i32
  %sub1386 = sub nsw i32 %conv1384, %conv1385
  store i32 %sub1386, i32* %__result1372, align 4, !tbaa !10
  %796 = load i64, i64* %__s2_len1363, align 8, !tbaa !16
  %cmp1387 = icmp ugt i64 %796, 1
  br i1 %cmp1387, label %land.lhs.true.1389, label %if.end.1408

land.lhs.true.1389:                               ; preds = %if.then.1382
  %797 = load i32, i32* %__result1372, align 4, !tbaa !10
  %cmp1390 = icmp eq i32 %797, 0
  br i1 %cmp1390, label %if.then.1392, label %if.end.1408

if.then.1392:                                     ; preds = %land.lhs.true.1389
  %798 = load i8*, i8** %__s11370, align 8, !tbaa !1
  %arrayidx1393 = getelementptr inbounds i8, i8* %798, i64 2
  %799 = load i8, i8* %arrayidx1393, align 1, !tbaa !11
  %conv1394 = zext i8 %799 to i32
  %800 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i64 2), align 1, !tbaa !11
  %conv1395 = zext i8 %800 to i32
  %sub1396 = sub nsw i32 %conv1394, %conv1395
  store i32 %sub1396, i32* %__result1372, align 4, !tbaa !10
  %801 = load i64, i64* %__s2_len1363, align 8, !tbaa !16
  %cmp1397 = icmp ugt i64 %801, 2
  br i1 %cmp1397, label %land.lhs.true.1399, label %if.end.1407

land.lhs.true.1399:                               ; preds = %if.then.1392
  %802 = load i32, i32* %__result1372, align 4, !tbaa !10
  %cmp1400 = icmp eq i32 %802, 0
  br i1 %cmp1400, label %if.then.1402, label %if.end.1407

if.then.1402:                                     ; preds = %land.lhs.true.1399
  %803 = load i8*, i8** %__s11370, align 8, !tbaa !1
  %arrayidx1403 = getelementptr inbounds i8, i8* %803, i64 3
  %804 = load i8, i8* %arrayidx1403, align 1, !tbaa !11
  %conv1404 = zext i8 %804 to i32
  %805 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i64 3), align 1, !tbaa !11
  %conv1405 = zext i8 %805 to i32
  %sub1406 = sub nsw i32 %conv1404, %conv1405
  store i32 %sub1406, i32* %__result1372, align 4, !tbaa !10
  br label %if.end.1407

if.end.1407:                                      ; preds = %if.then.1402, %land.lhs.true.1399, %if.then.1392
  br label %if.end.1408

if.end.1408:                                      ; preds = %if.end.1407, %land.lhs.true.1389, %if.then.1382
  br label %if.end.1409

if.end.1409:                                      ; preds = %if.end.1408, %land.lhs.true.1379, %cond.true.1368
  %806 = load i32, i32* %__result1372, align 4, !tbaa !10
  store i32 %806, i32* %tmp1410, !tbaa !10
  %807 = bitcast i32* %__result1372 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %807) #3
  %808 = bitcast i8** %__s11370 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %808) #3
  %809 = load i32, i32* %tmp1410, !tbaa !10
  br label %cond.end.1413

cond.false.1411:                                  ; preds = %land.lhs.true.1365, %lor.lhs.false
  %810 = load i8*, i8** %token, align 8, !tbaa !1
  %call1412 = call i32 @strcmp(i8* %810, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.139, i32 0, i32 0)) #3
  br label %cond.end.1413

cond.end.1413:                                    ; preds = %cond.false.1411, %if.end.1409
  %cond1414 = phi i32 [ %809, %if.end.1409 ], [ %call1412, %cond.false.1411 ]
  store i32 %cond1414, i32* %tmp1364, !tbaa !10
  %811 = bitcast i64* %__s2_len1363 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %811) #3
  %812 = bitcast i64* %__s1_len1361 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %812) #3
  %813 = load i32, i32* %tmp1364, !tbaa !10
  %cmp1415 = icmp eq i32 %813, 0
  br i1 %cmp1415, label %if.then.1417, label %if.else.1418

if.then.1417:                                     ; preds = %cond.end.1413, %cond.end.1356
  %814 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %815 = load i8*, i8** %programName, align 8, !tbaa !1
  call void @lame_help(%struct.lame_global_flags* %814, i8* %815)
  br label %if.end.2032

if.else.1418:                                     ; preds = %cond.end.1413
  %816 = bitcast i64* %__s1_len1420 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %816) #3
  %817 = bitcast i64* %__s2_len1422 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %817) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.140 to i64)), i64 1), label %land.lhs.true.1424, label %cond.false.1470

land.lhs.true.1424:                               ; preds = %if.else.1418
  store i64 6, i64* %__s2_len1422, align 8, !tbaa !16
  %818 = load i64, i64* %__s2_len1422, align 8, !tbaa !16
  %cmp1425 = icmp ult i64 %818, 4
  br i1 %cmp1425, label %cond.true.1427, label %cond.false.1470

cond.true.1427:                                   ; preds = %land.lhs.true.1424
  %819 = bitcast i8** %__s11429 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %819) #3
  %820 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %820, i8** %__s11429, align 8, !tbaa !1
  %821 = bitcast i32* %__result1431 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %821) #3
  %822 = load i8*, i8** %__s11429, align 8, !tbaa !1
  %arrayidx1432 = getelementptr inbounds i8, i8* %822, i64 0
  %823 = load i8, i8* %arrayidx1432, align 1, !tbaa !11
  %conv1433 = zext i8 %823 to i32
  %824 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0), align 1, !tbaa !11
  %conv1434 = zext i8 %824 to i32
  %sub1435 = sub nsw i32 %conv1433, %conv1434
  store i32 %sub1435, i32* %__result1431, align 4, !tbaa !10
  %825 = load i64, i64* %__s2_len1422, align 8, !tbaa !16
  %cmp1436 = icmp ugt i64 %825, 0
  br i1 %cmp1436, label %land.lhs.true.1438, label %if.end.1468

land.lhs.true.1438:                               ; preds = %cond.true.1427
  %826 = load i32, i32* %__result1431, align 4, !tbaa !10
  %cmp1439 = icmp eq i32 %826, 0
  br i1 %cmp1439, label %if.then.1441, label %if.end.1468

if.then.1441:                                     ; preds = %land.lhs.true.1438
  %827 = load i8*, i8** %__s11429, align 8, !tbaa !1
  %arrayidx1442 = getelementptr inbounds i8, i8* %827, i64 1
  %828 = load i8, i8* %arrayidx1442, align 1, !tbaa !11
  %conv1443 = zext i8 %828 to i32
  %829 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i64 1), align 1, !tbaa !11
  %conv1444 = zext i8 %829 to i32
  %sub1445 = sub nsw i32 %conv1443, %conv1444
  store i32 %sub1445, i32* %__result1431, align 4, !tbaa !10
  %830 = load i64, i64* %__s2_len1422, align 8, !tbaa !16
  %cmp1446 = icmp ugt i64 %830, 1
  br i1 %cmp1446, label %land.lhs.true.1448, label %if.end.1467

land.lhs.true.1448:                               ; preds = %if.then.1441
  %831 = load i32, i32* %__result1431, align 4, !tbaa !10
  %cmp1449 = icmp eq i32 %831, 0
  br i1 %cmp1449, label %if.then.1451, label %if.end.1467

if.then.1451:                                     ; preds = %land.lhs.true.1448
  %832 = load i8*, i8** %__s11429, align 8, !tbaa !1
  %arrayidx1452 = getelementptr inbounds i8, i8* %832, i64 2
  %833 = load i8, i8* %arrayidx1452, align 1, !tbaa !11
  %conv1453 = zext i8 %833 to i32
  %834 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i64 2), align 1, !tbaa !11
  %conv1454 = zext i8 %834 to i32
  %sub1455 = sub nsw i32 %conv1453, %conv1454
  store i32 %sub1455, i32* %__result1431, align 4, !tbaa !10
  %835 = load i64, i64* %__s2_len1422, align 8, !tbaa !16
  %cmp1456 = icmp ugt i64 %835, 2
  br i1 %cmp1456, label %land.lhs.true.1458, label %if.end.1466

land.lhs.true.1458:                               ; preds = %if.then.1451
  %836 = load i32, i32* %__result1431, align 4, !tbaa !10
  %cmp1459 = icmp eq i32 %836, 0
  br i1 %cmp1459, label %if.then.1461, label %if.end.1466

if.then.1461:                                     ; preds = %land.lhs.true.1458
  %837 = load i8*, i8** %__s11429, align 8, !tbaa !1
  %arrayidx1462 = getelementptr inbounds i8, i8* %837, i64 3
  %838 = load i8, i8* %arrayidx1462, align 1, !tbaa !11
  %conv1463 = zext i8 %838 to i32
  %839 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i64 3), align 1, !tbaa !11
  %conv1464 = zext i8 %839 to i32
  %sub1465 = sub nsw i32 %conv1463, %conv1464
  store i32 %sub1465, i32* %__result1431, align 4, !tbaa !10
  br label %if.end.1466

if.end.1466:                                      ; preds = %if.then.1461, %land.lhs.true.1458, %if.then.1451
  br label %if.end.1467

if.end.1467:                                      ; preds = %if.end.1466, %land.lhs.true.1448, %if.then.1441
  br label %if.end.1468

if.end.1468:                                      ; preds = %if.end.1467, %land.lhs.true.1438, %cond.true.1427
  %840 = load i32, i32* %__result1431, align 4, !tbaa !10
  store i32 %840, i32* %tmp1469, !tbaa !10
  %841 = bitcast i32* %__result1431 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %841) #3
  %842 = bitcast i8** %__s11429 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %842) #3
  %843 = load i32, i32* %tmp1469, !tbaa !10
  br label %cond.end.1472

cond.false.1470:                                  ; preds = %land.lhs.true.1424, %if.else.1418
  %844 = load i8*, i8** %token, align 8, !tbaa !1
  %call1471 = call i32 @strcmp(i8* %844, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.140, i32 0, i32 0)) #3
  br label %cond.end.1472

cond.end.1472:                                    ; preds = %cond.false.1470, %if.end.1468
  %cond1473 = phi i32 [ %843, %if.end.1468 ], [ %call1471, %cond.false.1470 ]
  store i32 %cond1473, i32* %tmp1423, !tbaa !10
  %845 = bitcast i64* %__s2_len1422 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %845) #3
  %846 = bitcast i64* %__s1_len1420 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %846) #3
  %847 = load i32, i32* %tmp1423, !tbaa !10
  %cmp1474 = icmp eq i32 %847, 0
  br i1 %cmp1474, label %if.then.1476, label %if.else.2029

if.then.1476:                                     ; preds = %cond.end.1472
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %848 = bitcast i64* %__s1_len1478 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %848) #3
  %849 = bitcast i64* %__s2_len1480 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %849) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.141 to i64)), i64 1), label %land.lhs.true.1482, label %cond.false.1528

land.lhs.true.1482:                               ; preds = %if.then.1476
  store i64 5, i64* %__s2_len1480, align 8, !tbaa !16
  %850 = load i64, i64* %__s2_len1480, align 8, !tbaa !16
  %cmp1483 = icmp ult i64 %850, 4
  br i1 %cmp1483, label %cond.true.1485, label %cond.false.1528

cond.true.1485:                                   ; preds = %land.lhs.true.1482
  %851 = bitcast i8** %__s11487 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %851) #3
  %852 = load i8*, i8** %nextArg, align 8, !tbaa !1
  store i8* %852, i8** %__s11487, align 8, !tbaa !1
  %853 = bitcast i32* %__result1489 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %853) #3
  %854 = load i8*, i8** %__s11487, align 8, !tbaa !1
  %arrayidx1490 = getelementptr inbounds i8, i8* %854, i64 0
  %855 = load i8, i8* %arrayidx1490, align 1, !tbaa !11
  %conv1491 = zext i8 %855 to i32
  %856 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0), align 1, !tbaa !11
  %conv1492 = zext i8 %856 to i32
  %sub1493 = sub nsw i32 %conv1491, %conv1492
  store i32 %sub1493, i32* %__result1489, align 4, !tbaa !10
  %857 = load i64, i64* %__s2_len1480, align 8, !tbaa !16
  %cmp1494 = icmp ugt i64 %857, 0
  br i1 %cmp1494, label %land.lhs.true.1496, label %if.end.1526

land.lhs.true.1496:                               ; preds = %cond.true.1485
  %858 = load i32, i32* %__result1489, align 4, !tbaa !10
  %cmp1497 = icmp eq i32 %858, 0
  br i1 %cmp1497, label %if.then.1499, label %if.end.1526

if.then.1499:                                     ; preds = %land.lhs.true.1496
  %859 = load i8*, i8** %__s11487, align 8, !tbaa !1
  %arrayidx1500 = getelementptr inbounds i8, i8* %859, i64 1
  %860 = load i8, i8* %arrayidx1500, align 1, !tbaa !11
  %conv1501 = zext i8 %860 to i32
  %861 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i64 1), align 1, !tbaa !11
  %conv1502 = zext i8 %861 to i32
  %sub1503 = sub nsw i32 %conv1501, %conv1502
  store i32 %sub1503, i32* %__result1489, align 4, !tbaa !10
  %862 = load i64, i64* %__s2_len1480, align 8, !tbaa !16
  %cmp1504 = icmp ugt i64 %862, 1
  br i1 %cmp1504, label %land.lhs.true.1506, label %if.end.1525

land.lhs.true.1506:                               ; preds = %if.then.1499
  %863 = load i32, i32* %__result1489, align 4, !tbaa !10
  %cmp1507 = icmp eq i32 %863, 0
  br i1 %cmp1507, label %if.then.1509, label %if.end.1525

if.then.1509:                                     ; preds = %land.lhs.true.1506
  %864 = load i8*, i8** %__s11487, align 8, !tbaa !1
  %arrayidx1510 = getelementptr inbounds i8, i8* %864, i64 2
  %865 = load i8, i8* %arrayidx1510, align 1, !tbaa !11
  %conv1511 = zext i8 %865 to i32
  %866 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i64 2), align 1, !tbaa !11
  %conv1512 = zext i8 %866 to i32
  %sub1513 = sub nsw i32 %conv1511, %conv1512
  store i32 %sub1513, i32* %__result1489, align 4, !tbaa !10
  %867 = load i64, i64* %__s2_len1480, align 8, !tbaa !16
  %cmp1514 = icmp ugt i64 %867, 2
  br i1 %cmp1514, label %land.lhs.true.1516, label %if.end.1524

land.lhs.true.1516:                               ; preds = %if.then.1509
  %868 = load i32, i32* %__result1489, align 4, !tbaa !10
  %cmp1517 = icmp eq i32 %868, 0
  br i1 %cmp1517, label %if.then.1519, label %if.end.1524

if.then.1519:                                     ; preds = %land.lhs.true.1516
  %869 = load i8*, i8** %__s11487, align 8, !tbaa !1
  %arrayidx1520 = getelementptr inbounds i8, i8* %869, i64 3
  %870 = load i8, i8* %arrayidx1520, align 1, !tbaa !11
  %conv1521 = zext i8 %870 to i32
  %871 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i64 3), align 1, !tbaa !11
  %conv1522 = zext i8 %871 to i32
  %sub1523 = sub nsw i32 %conv1521, %conv1522
  store i32 %sub1523, i32* %__result1489, align 4, !tbaa !10
  br label %if.end.1524

if.end.1524:                                      ; preds = %if.then.1519, %land.lhs.true.1516, %if.then.1509
  br label %if.end.1525

if.end.1525:                                      ; preds = %if.end.1524, %land.lhs.true.1506, %if.then.1499
  br label %if.end.1526

if.end.1526:                                      ; preds = %if.end.1525, %land.lhs.true.1496, %cond.true.1485
  %872 = load i32, i32* %__result1489, align 4, !tbaa !10
  store i32 %872, i32* %tmp1527, !tbaa !10
  %873 = bitcast i32* %__result1489 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %873) #3
  %874 = bitcast i8** %__s11487 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %874) #3
  %875 = load i32, i32* %tmp1527, !tbaa !10
  br label %cond.end.1530

cond.false.1528:                                  ; preds = %land.lhs.true.1482, %if.then.1476
  %876 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1529 = call i32 @strcmp(i8* %876, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.141, i32 0, i32 0)) #3
  br label %cond.end.1530

cond.end.1530:                                    ; preds = %cond.false.1528, %if.end.1526
  %cond1531 = phi i32 [ %875, %if.end.1526 ], [ %call1529, %cond.false.1528 ]
  store i32 %cond1531, i32* %tmp1481, !tbaa !10
  %877 = bitcast i64* %__s2_len1480 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %877) #3
  %878 = bitcast i64* %__s1_len1478 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %878) #3
  %879 = load i32, i32* %tmp1481, !tbaa !10
  %cmp1532 = icmp eq i32 %879, 0
  br i1 %cmp1532, label %if.then.1534, label %if.else.1542

if.then.1534:                                     ; preds = %cond.end.1530
  %880 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %880, i32 0, i32 11
  store i32 16, i32* %brate, align 4, !tbaa !32
  %881 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq1535 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %881, i32 0, i32 26
  store i32 260, i32* %highpassfreq1535, align 4, !tbaa !29
  %882 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth1536 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %882, i32 0, i32 28
  store i32 40, i32* %highpasswidth1536, align 4, !tbaa !30
  %883 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq1537 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %883, i32 0, i32 25
  store i32 3700, i32* %lowpassfreq1537, align 4, !tbaa !20
  %884 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth1538 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %884, i32 0, i32 27
  store i32 300, i32* %lowpasswidth1538, align 4, !tbaa !28
  %885 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %885, i32 0, i32 22
  store i32 5, i32* %VBR_q, align 4, !tbaa !5
  %886 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %886, i32 0, i32 23
  store i32 8, i32* %VBR_min_bitrate_kbps, align 4, !tbaa !33
  %887 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps1539 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %887, i32 0, i32 24
  store i32 56, i32* %VBR_max_bitrate_kbps1539, align 4, !tbaa !21
  %888 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %no_short_blocks1540 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %888, i32 0, i32 37
  store i32 1, i32* %no_short_blocks1540, align 4, !tbaa !22
  %889 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate1541 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %889, i32 0, i32 3
  store i32 16000, i32* %out_samplerate1541, align 4, !tbaa !18
  %890 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %890, i32 0, i32 8
  store i32 3, i32* %mode, align 4, !tbaa !34
  %891 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %891, i32 0, i32 9
  store i32 1, i32* %mode_fixed, align 4, !tbaa !35
  %892 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %892, i32 0, i32 6
  store i32 5, i32* %quality, align 4, !tbaa !36
  br label %if.end.2028

if.else.1542:                                     ; preds = %cond.end.1530
  %893 = bitcast i64* %__s1_len1544 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %893) #3
  %894 = bitcast i64* %__s2_len1546 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %894) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.114 to i64)), i64 1), label %land.lhs.true.1548, label %cond.false.1594

land.lhs.true.1548:                               ; preds = %if.else.1542
  store i64 5, i64* %__s2_len1546, align 8, !tbaa !16
  %895 = load i64, i64* %__s2_len1546, align 8, !tbaa !16
  %cmp1549 = icmp ult i64 %895, 4
  br i1 %cmp1549, label %cond.true.1551, label %cond.false.1594

cond.true.1551:                                   ; preds = %land.lhs.true.1548
  %896 = bitcast i8** %__s11553 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %896) #3
  %897 = load i8*, i8** %nextArg, align 8, !tbaa !1
  store i8* %897, i8** %__s11553, align 8, !tbaa !1
  %898 = bitcast i32* %__result1555 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %898) #3
  %899 = load i8*, i8** %__s11553, align 8, !tbaa !1
  %arrayidx1556 = getelementptr inbounds i8, i8* %899, i64 0
  %900 = load i8, i8* %arrayidx1556, align 1, !tbaa !11
  %conv1557 = zext i8 %900 to i32
  %901 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0), align 1, !tbaa !11
  %conv1558 = zext i8 %901 to i32
  %sub1559 = sub nsw i32 %conv1557, %conv1558
  store i32 %sub1559, i32* %__result1555, align 4, !tbaa !10
  %902 = load i64, i64* %__s2_len1546, align 8, !tbaa !16
  %cmp1560 = icmp ugt i64 %902, 0
  br i1 %cmp1560, label %land.lhs.true.1562, label %if.end.1592

land.lhs.true.1562:                               ; preds = %cond.true.1551
  %903 = load i32, i32* %__result1555, align 4, !tbaa !10
  %cmp1563 = icmp eq i32 %903, 0
  br i1 %cmp1563, label %if.then.1565, label %if.end.1592

if.then.1565:                                     ; preds = %land.lhs.true.1562
  %904 = load i8*, i8** %__s11553, align 8, !tbaa !1
  %arrayidx1566 = getelementptr inbounds i8, i8* %904, i64 1
  %905 = load i8, i8* %arrayidx1566, align 1, !tbaa !11
  %conv1567 = zext i8 %905 to i32
  %906 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i64 1), align 1, !tbaa !11
  %conv1568 = zext i8 %906 to i32
  %sub1569 = sub nsw i32 %conv1567, %conv1568
  store i32 %sub1569, i32* %__result1555, align 4, !tbaa !10
  %907 = load i64, i64* %__s2_len1546, align 8, !tbaa !16
  %cmp1570 = icmp ugt i64 %907, 1
  br i1 %cmp1570, label %land.lhs.true.1572, label %if.end.1591

land.lhs.true.1572:                               ; preds = %if.then.1565
  %908 = load i32, i32* %__result1555, align 4, !tbaa !10
  %cmp1573 = icmp eq i32 %908, 0
  br i1 %cmp1573, label %if.then.1575, label %if.end.1591

if.then.1575:                                     ; preds = %land.lhs.true.1572
  %909 = load i8*, i8** %__s11553, align 8, !tbaa !1
  %arrayidx1576 = getelementptr inbounds i8, i8* %909, i64 2
  %910 = load i8, i8* %arrayidx1576, align 1, !tbaa !11
  %conv1577 = zext i8 %910 to i32
  %911 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i64 2), align 1, !tbaa !11
  %conv1578 = zext i8 %911 to i32
  %sub1579 = sub nsw i32 %conv1577, %conv1578
  store i32 %sub1579, i32* %__result1555, align 4, !tbaa !10
  %912 = load i64, i64* %__s2_len1546, align 8, !tbaa !16
  %cmp1580 = icmp ugt i64 %912, 2
  br i1 %cmp1580, label %land.lhs.true.1582, label %if.end.1590

land.lhs.true.1582:                               ; preds = %if.then.1575
  %913 = load i32, i32* %__result1555, align 4, !tbaa !10
  %cmp1583 = icmp eq i32 %913, 0
  br i1 %cmp1583, label %if.then.1585, label %if.end.1590

if.then.1585:                                     ; preds = %land.lhs.true.1582
  %914 = load i8*, i8** %__s11553, align 8, !tbaa !1
  %arrayidx1586 = getelementptr inbounds i8, i8* %914, i64 3
  %915 = load i8, i8* %arrayidx1586, align 1, !tbaa !11
  %conv1587 = zext i8 %915 to i32
  %916 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i64 3), align 1, !tbaa !11
  %conv1588 = zext i8 %916 to i32
  %sub1589 = sub nsw i32 %conv1587, %conv1588
  store i32 %sub1589, i32* %__result1555, align 4, !tbaa !10
  br label %if.end.1590

if.end.1590:                                      ; preds = %if.then.1585, %land.lhs.true.1582, %if.then.1575
  br label %if.end.1591

if.end.1591:                                      ; preds = %if.end.1590, %land.lhs.true.1572, %if.then.1565
  br label %if.end.1592

if.end.1592:                                      ; preds = %if.end.1591, %land.lhs.true.1562, %cond.true.1551
  %917 = load i32, i32* %__result1555, align 4, !tbaa !10
  store i32 %917, i32* %tmp1593, !tbaa !10
  %918 = bitcast i32* %__result1555 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %918) #3
  %919 = bitcast i8** %__s11553 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %919) #3
  %920 = load i32, i32* %tmp1593, !tbaa !10
  br label %cond.end.1596

cond.false.1594:                                  ; preds = %land.lhs.true.1548, %if.else.1542
  %921 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1595 = call i32 @strcmp(i8* %921, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0)) #3
  br label %cond.end.1596

cond.end.1596:                                    ; preds = %cond.false.1594, %if.end.1592
  %cond1597 = phi i32 [ %920, %if.end.1592 ], [ %call1595, %cond.false.1594 ]
  store i32 %cond1597, i32* %tmp1547, !tbaa !10
  %922 = bitcast i64* %__s2_len1546 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %922) #3
  %923 = bitcast i64* %__s1_len1544 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %923) #3
  %924 = load i32, i32* %tmp1547, !tbaa !10
  %cmp1598 = icmp eq i32 %924, 0
  br i1 %cmp1598, label %if.then.1600, label %if.else.1614

if.then.1600:                                     ; preds = %cond.end.1596
  %925 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate1601 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %925, i32 0, i32 11
  store i32 56, i32* %brate1601, align 4, !tbaa !32
  %926 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq1602 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %926, i32 0, i32 26
  store i32 100, i32* %highpassfreq1602, align 4, !tbaa !29
  %927 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth1603 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %927, i32 0, i32 28
  store i32 20, i32* %highpasswidth1603, align 4, !tbaa !30
  %928 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth1604 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %928, i32 0, i32 27
  store i32 2000, i32* %lowpasswidth1604, align 4, !tbaa !28
  %929 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq1605 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %929, i32 0, i32 25
  store i32 11000, i32* %lowpassfreq1605, align 4, !tbaa !20
  %930 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q1606 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %930, i32 0, i32 22
  store i32 4, i32* %VBR_q1606, align 4, !tbaa !5
  %931 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps1607 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %931, i32 0, i32 23
  store i32 8, i32* %VBR_min_bitrate_kbps1607, align 4, !tbaa !33
  %932 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps1608 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %932, i32 0, i32 24
  store i32 96, i32* %VBR_max_bitrate_kbps1608, align 4, !tbaa !21
  %933 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %no_short_blocks1609 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %933, i32 0, i32 37
  store i32 1, i32* %no_short_blocks1609, align 4, !tbaa !22
  %934 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode1610 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %934, i32 0, i32 8
  store i32 3, i32* %mode1610, align 4, !tbaa !34
  %935 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed1611 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %935, i32 0, i32 9
  store i32 1, i32* %mode_fixed1611, align 4, !tbaa !35
  %936 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %out_samplerate1612 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %936, i32 0, i32 3
  store i32 24000, i32* %out_samplerate1612, align 4, !tbaa !18
  %937 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality1613 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %937, i32 0, i32 6
  store i32 5, i32* %quality1613, align 4, !tbaa !36
  br label %if.end.2027

if.else.1614:                                     ; preds = %cond.end.1596
  %938 = bitcast i64* %__s1_len1616 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %938) #3
  %939 = bitcast i64* %__s2_len1618 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %939) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.142 to i64)), i64 1), label %land.lhs.true.1620, label %cond.false.1666

land.lhs.true.1620:                               ; preds = %if.else.1614
  store i64 2, i64* %__s2_len1618, align 8, !tbaa !16
  %940 = load i64, i64* %__s2_len1618, align 8, !tbaa !16
  %cmp1621 = icmp ult i64 %940, 4
  br i1 %cmp1621, label %cond.true.1623, label %cond.false.1666

cond.true.1623:                                   ; preds = %land.lhs.true.1620
  %941 = bitcast i8** %__s11625 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %941) #3
  %942 = load i8*, i8** %nextArg, align 8, !tbaa !1
  store i8* %942, i8** %__s11625, align 8, !tbaa !1
  %943 = bitcast i32* %__result1627 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %943) #3
  %944 = load i8*, i8** %__s11625, align 8, !tbaa !1
  %arrayidx1628 = getelementptr inbounds i8, i8* %944, i64 0
  %945 = load i8, i8* %arrayidx1628, align 1, !tbaa !11
  %conv1629 = zext i8 %945 to i32
  %946 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0), align 1, !tbaa !11
  %conv1630 = zext i8 %946 to i32
  %sub1631 = sub nsw i32 %conv1629, %conv1630
  store i32 %sub1631, i32* %__result1627, align 4, !tbaa !10
  %947 = load i64, i64* %__s2_len1618, align 8, !tbaa !16
  %cmp1632 = icmp ugt i64 %947, 0
  br i1 %cmp1632, label %land.lhs.true.1634, label %if.end.1664

land.lhs.true.1634:                               ; preds = %cond.true.1623
  %948 = load i32, i32* %__result1627, align 4, !tbaa !10
  %cmp1635 = icmp eq i32 %948, 0
  br i1 %cmp1635, label %if.then.1637, label %if.end.1664

if.then.1637:                                     ; preds = %land.lhs.true.1634
  %949 = load i8*, i8** %__s11625, align 8, !tbaa !1
  %arrayidx1638 = getelementptr inbounds i8, i8* %949, i64 1
  %950 = load i8, i8* %arrayidx1638, align 1, !tbaa !11
  %conv1639 = zext i8 %950 to i32
  %951 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i64 1), align 1, !tbaa !11
  %conv1640 = zext i8 %951 to i32
  %sub1641 = sub nsw i32 %conv1639, %conv1640
  store i32 %sub1641, i32* %__result1627, align 4, !tbaa !10
  %952 = load i64, i64* %__s2_len1618, align 8, !tbaa !16
  %cmp1642 = icmp ugt i64 %952, 1
  br i1 %cmp1642, label %land.lhs.true.1644, label %if.end.1663

land.lhs.true.1644:                               ; preds = %if.then.1637
  %953 = load i32, i32* %__result1627, align 4, !tbaa !10
  %cmp1645 = icmp eq i32 %953, 0
  br i1 %cmp1645, label %if.then.1647, label %if.end.1663

if.then.1647:                                     ; preds = %land.lhs.true.1644
  %954 = load i8*, i8** %__s11625, align 8, !tbaa !1
  %arrayidx1648 = getelementptr inbounds i8, i8* %954, i64 2
  %955 = load i8, i8* %arrayidx1648, align 1, !tbaa !11
  %conv1649 = zext i8 %955 to i32
  %956 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i64 2), align 1, !tbaa !11
  %conv1650 = zext i8 %956 to i32
  %sub1651 = sub nsw i32 %conv1649, %conv1650
  store i32 %sub1651, i32* %__result1627, align 4, !tbaa !10
  %957 = load i64, i64* %__s2_len1618, align 8, !tbaa !16
  %cmp1652 = icmp ugt i64 %957, 2
  br i1 %cmp1652, label %land.lhs.true.1654, label %if.end.1662

land.lhs.true.1654:                               ; preds = %if.then.1647
  %958 = load i32, i32* %__result1627, align 4, !tbaa !10
  %cmp1655 = icmp eq i32 %958, 0
  br i1 %cmp1655, label %if.then.1657, label %if.end.1662

if.then.1657:                                     ; preds = %land.lhs.true.1654
  %959 = load i8*, i8** %__s11625, align 8, !tbaa !1
  %arrayidx1658 = getelementptr inbounds i8, i8* %959, i64 3
  %960 = load i8, i8* %arrayidx1658, align 1, !tbaa !11
  %conv1659 = zext i8 %960 to i32
  %961 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0), i64 3), align 1, !tbaa !11
  %conv1660 = zext i8 %961 to i32
  %sub1661 = sub nsw i32 %conv1659, %conv1660
  store i32 %sub1661, i32* %__result1627, align 4, !tbaa !10
  br label %if.end.1662

if.end.1662:                                      ; preds = %if.then.1657, %land.lhs.true.1654, %if.then.1647
  br label %if.end.1663

if.end.1663:                                      ; preds = %if.end.1662, %land.lhs.true.1644, %if.then.1637
  br label %if.end.1664

if.end.1664:                                      ; preds = %if.end.1663, %land.lhs.true.1634, %cond.true.1623
  %962 = load i32, i32* %__result1627, align 4, !tbaa !10
  store i32 %962, i32* %tmp1665, !tbaa !10
  %963 = bitcast i32* %__result1627 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %963) #3
  %964 = bitcast i8** %__s11625 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %964) #3
  %965 = load i32, i32* %tmp1665, !tbaa !10
  br label %cond.end.1668

cond.false.1666:                                  ; preds = %land.lhs.true.1620, %if.else.1614
  %966 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1667 = call i32 @strcmp(i8* %966, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0)) #3
  br label %cond.end.1668

cond.end.1668:                                    ; preds = %cond.false.1666, %if.end.1664
  %cond1669 = phi i32 [ %965, %if.end.1664 ], [ %call1667, %cond.false.1666 ]
  store i32 %cond1669, i32* %tmp1619, !tbaa !10
  %967 = bitcast i64* %__s2_len1618 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %967) #3
  %968 = bitcast i64* %__s1_len1616 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %968) #3
  %969 = load i32, i32* %tmp1619, !tbaa !10
  %cmp1670 = icmp eq i32 %969, 0
  br i1 %cmp1670, label %if.then.1672, label %if.else.1684

if.then.1672:                                     ; preds = %cond.end.1668
  %970 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate1673 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %970, i32 0, i32 11
  store i32 96, i32* %brate1673, align 4, !tbaa !32
  %971 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq1674 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %971, i32 0, i32 26
  store i32 30, i32* %highpassfreq1674, align 4, !tbaa !29
  %972 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth1675 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %972, i32 0, i32 28
  store i32 0, i32* %highpasswidth1675, align 4, !tbaa !30
  %973 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq1676 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %973, i32 0, i32 25
  store i32 15000, i32* %lowpassfreq1676, align 4, !tbaa !20
  %974 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth1677 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %974, i32 0, i32 27
  store i32 0, i32* %lowpasswidth1677, align 4, !tbaa !28
  %975 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q1678 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %975, i32 0, i32 22
  store i32 4, i32* %VBR_q1678, align 4, !tbaa !5
  %976 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps1679 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %976, i32 0, i32 23
  store i32 32, i32* %VBR_min_bitrate_kbps1679, align 4, !tbaa !33
  %977 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps1680 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %977, i32 0, i32 24
  store i32 192, i32* %VBR_max_bitrate_kbps1680, align 4, !tbaa !21
  %978 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode1681 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %978, i32 0, i32 8
  store i32 1, i32* %mode1681, align 4, !tbaa !34
  %979 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed1682 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %979, i32 0, i32 9
  store i32 1, i32* %mode_fixed1682, align 4, !tbaa !35
  %980 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality1683 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %980, i32 0, i32 6
  store i32 5, i32* %quality1683, align 4, !tbaa !36
  br label %if.end.2026

if.else.1684:                                     ; preds = %cond.end.1668
  %981 = bitcast i64* %__s1_len1686 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %981) #3
  %982 = bitcast i64* %__s2_len1688 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %982) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.143 to i64)), i64 1), label %land.lhs.true.1690, label %cond.false.1736

land.lhs.true.1690:                               ; preds = %if.else.1684
  store i64 4, i64* %__s2_len1688, align 8, !tbaa !16
  %983 = load i64, i64* %__s2_len1688, align 8, !tbaa !16
  %cmp1691 = icmp ult i64 %983, 4
  br i1 %cmp1691, label %cond.true.1693, label %cond.false.1736

cond.true.1693:                                   ; preds = %land.lhs.true.1690
  %984 = bitcast i8** %__s11695 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %984) #3
  %985 = load i8*, i8** %nextArg, align 8, !tbaa !1
  store i8* %985, i8** %__s11695, align 8, !tbaa !1
  %986 = bitcast i32* %__result1697 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %986) #3
  %987 = load i8*, i8** %__s11695, align 8, !tbaa !1
  %arrayidx1698 = getelementptr inbounds i8, i8* %987, i64 0
  %988 = load i8, i8* %arrayidx1698, align 1, !tbaa !11
  %conv1699 = zext i8 %988 to i32
  %989 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0), align 1, !tbaa !11
  %conv1700 = zext i8 %989 to i32
  %sub1701 = sub nsw i32 %conv1699, %conv1700
  store i32 %sub1701, i32* %__result1697, align 4, !tbaa !10
  %990 = load i64, i64* %__s2_len1688, align 8, !tbaa !16
  %cmp1702 = icmp ugt i64 %990, 0
  br i1 %cmp1702, label %land.lhs.true.1704, label %if.end.1734

land.lhs.true.1704:                               ; preds = %cond.true.1693
  %991 = load i32, i32* %__result1697, align 4, !tbaa !10
  %cmp1705 = icmp eq i32 %991, 0
  br i1 %cmp1705, label %if.then.1707, label %if.end.1734

if.then.1707:                                     ; preds = %land.lhs.true.1704
  %992 = load i8*, i8** %__s11695, align 8, !tbaa !1
  %arrayidx1708 = getelementptr inbounds i8, i8* %992, i64 1
  %993 = load i8, i8* %arrayidx1708, align 1, !tbaa !11
  %conv1709 = zext i8 %993 to i32
  %994 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i64 1), align 1, !tbaa !11
  %conv1710 = zext i8 %994 to i32
  %sub1711 = sub nsw i32 %conv1709, %conv1710
  store i32 %sub1711, i32* %__result1697, align 4, !tbaa !10
  %995 = load i64, i64* %__s2_len1688, align 8, !tbaa !16
  %cmp1712 = icmp ugt i64 %995, 1
  br i1 %cmp1712, label %land.lhs.true.1714, label %if.end.1733

land.lhs.true.1714:                               ; preds = %if.then.1707
  %996 = load i32, i32* %__result1697, align 4, !tbaa !10
  %cmp1715 = icmp eq i32 %996, 0
  br i1 %cmp1715, label %if.then.1717, label %if.end.1733

if.then.1717:                                     ; preds = %land.lhs.true.1714
  %997 = load i8*, i8** %__s11695, align 8, !tbaa !1
  %arrayidx1718 = getelementptr inbounds i8, i8* %997, i64 2
  %998 = load i8, i8* %arrayidx1718, align 1, !tbaa !11
  %conv1719 = zext i8 %998 to i32
  %999 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i64 2), align 1, !tbaa !11
  %conv1720 = zext i8 %999 to i32
  %sub1721 = sub nsw i32 %conv1719, %conv1720
  store i32 %sub1721, i32* %__result1697, align 4, !tbaa !10
  %1000 = load i64, i64* %__s2_len1688, align 8, !tbaa !16
  %cmp1722 = icmp ugt i64 %1000, 2
  br i1 %cmp1722, label %land.lhs.true.1724, label %if.end.1732

land.lhs.true.1724:                               ; preds = %if.then.1717
  %1001 = load i32, i32* %__result1697, align 4, !tbaa !10
  %cmp1725 = icmp eq i32 %1001, 0
  br i1 %cmp1725, label %if.then.1727, label %if.end.1732

if.then.1727:                                     ; preds = %land.lhs.true.1724
  %1002 = load i8*, i8** %__s11695, align 8, !tbaa !1
  %arrayidx1728 = getelementptr inbounds i8, i8* %1002, i64 3
  %1003 = load i8, i8* %arrayidx1728, align 1, !tbaa !11
  %conv1729 = zext i8 %1003 to i32
  %1004 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i64 3), align 1, !tbaa !11
  %conv1730 = zext i8 %1004 to i32
  %sub1731 = sub nsw i32 %conv1729, %conv1730
  store i32 %sub1731, i32* %__result1697, align 4, !tbaa !10
  br label %if.end.1732

if.end.1732:                                      ; preds = %if.then.1727, %land.lhs.true.1724, %if.then.1717
  br label %if.end.1733

if.end.1733:                                      ; preds = %if.end.1732, %land.lhs.true.1714, %if.then.1707
  br label %if.end.1734

if.end.1734:                                      ; preds = %if.end.1733, %land.lhs.true.1704, %cond.true.1693
  %1005 = load i32, i32* %__result1697, align 4, !tbaa !10
  store i32 %1005, i32* %tmp1735, !tbaa !10
  %1006 = bitcast i32* %__result1697 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1006) #3
  %1007 = bitcast i8** %__s11695 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1007) #3
  %1008 = load i32, i32* %tmp1735, !tbaa !10
  br label %cond.end.1738

cond.false.1736:                                  ; preds = %land.lhs.true.1690, %if.else.1684
  %1009 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1737 = call i32 @strcmp(i8* %1009, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i32 0, i32 0)) #3
  br label %cond.end.1738

cond.end.1738:                                    ; preds = %cond.false.1736, %if.end.1734
  %cond1739 = phi i32 [ %1008, %if.end.1734 ], [ %call1737, %cond.false.1736 ]
  store i32 %cond1739, i32* %tmp1689, !tbaa !10
  %1010 = bitcast i64* %__s2_len1688 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1010) #3
  %1011 = bitcast i64* %__s1_len1686 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1011) #3
  %1012 = load i32, i32* %tmp1689, !tbaa !10
  %cmp1740 = icmp eq i32 %1012, 0
  br i1 %cmp1740, label %if.then.1742, label %if.else.1754

if.then.1742:                                     ; preds = %cond.end.1738
  %1013 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate1743 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1013, i32 0, i32 11
  store i32 128, i32* %brate1743, align 4, !tbaa !32
  %1014 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq1744 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1014, i32 0, i32 26
  store i32 15, i32* %highpassfreq1744, align 4, !tbaa !29
  %1015 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth1745 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1015, i32 0, i32 28
  store i32 15, i32* %highpasswidth1745, align 4, !tbaa !30
  %1016 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq1746 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1016, i32 0, i32 25
  store i32 17000, i32* %lowpassfreq1746, align 4, !tbaa !20
  %1017 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth1747 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1017, i32 0, i32 27
  store i32 2000, i32* %lowpasswidth1747, align 4, !tbaa !28
  %1018 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q1748 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1018, i32 0, i32 22
  store i32 4, i32* %VBR_q1748, align 4, !tbaa !5
  %1019 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps1749 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1019, i32 0, i32 23
  store i32 32, i32* %VBR_min_bitrate_kbps1749, align 4, !tbaa !33
  %1020 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps1750 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1020, i32 0, i32 24
  store i32 192, i32* %VBR_max_bitrate_kbps1750, align 4, !tbaa !21
  %1021 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode1751 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1021, i32 0, i32 8
  store i32 1, i32* %mode1751, align 4, !tbaa !34
  %1022 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed1752 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1022, i32 0, i32 9
  store i32 1, i32* %mode_fixed1752, align 4, !tbaa !35
  %1023 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality1753 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1023, i32 0, i32 6
  store i32 5, i32* %quality1753, align 4, !tbaa !36
  br label %if.end.2025

if.else.1754:                                     ; preds = %cond.end.1738
  %1024 = bitcast i64* %__s1_len1756 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1024) #3
  %1025 = bitcast i64* %__s2_len1758 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1025) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.144 to i64)), i64 1), label %land.lhs.true.1760, label %cond.false.1806

land.lhs.true.1760:                               ; preds = %if.else.1754
  store i64 4, i64* %__s2_len1758, align 8, !tbaa !16
  %1026 = load i64, i64* %__s2_len1758, align 8, !tbaa !16
  %cmp1761 = icmp ult i64 %1026, 4
  br i1 %cmp1761, label %cond.true.1763, label %cond.false.1806

cond.true.1763:                                   ; preds = %land.lhs.true.1760
  %1027 = bitcast i8** %__s11765 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1027) #3
  %1028 = load i8*, i8** %nextArg, align 8, !tbaa !1
  store i8* %1028, i8** %__s11765, align 8, !tbaa !1
  %1029 = bitcast i32* %__result1767 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1029) #3
  %1030 = load i8*, i8** %__s11765, align 8, !tbaa !1
  %arrayidx1768 = getelementptr inbounds i8, i8* %1030, i64 0
  %1031 = load i8, i8* %arrayidx1768, align 1, !tbaa !11
  %conv1769 = zext i8 %1031 to i32
  %1032 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0), align 1, !tbaa !11
  %conv1770 = zext i8 %1032 to i32
  %sub1771 = sub nsw i32 %conv1769, %conv1770
  store i32 %sub1771, i32* %__result1767, align 4, !tbaa !10
  %1033 = load i64, i64* %__s2_len1758, align 8, !tbaa !16
  %cmp1772 = icmp ugt i64 %1033, 0
  br i1 %cmp1772, label %land.lhs.true.1774, label %if.end.1804

land.lhs.true.1774:                               ; preds = %cond.true.1763
  %1034 = load i32, i32* %__result1767, align 4, !tbaa !10
  %cmp1775 = icmp eq i32 %1034, 0
  br i1 %cmp1775, label %if.then.1777, label %if.end.1804

if.then.1777:                                     ; preds = %land.lhs.true.1774
  %1035 = load i8*, i8** %__s11765, align 8, !tbaa !1
  %arrayidx1778 = getelementptr inbounds i8, i8* %1035, i64 1
  %1036 = load i8, i8* %arrayidx1778, align 1, !tbaa !11
  %conv1779 = zext i8 %1036 to i32
  %1037 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i64 1), align 1, !tbaa !11
  %conv1780 = zext i8 %1037 to i32
  %sub1781 = sub nsw i32 %conv1779, %conv1780
  store i32 %sub1781, i32* %__result1767, align 4, !tbaa !10
  %1038 = load i64, i64* %__s2_len1758, align 8, !tbaa !16
  %cmp1782 = icmp ugt i64 %1038, 1
  br i1 %cmp1782, label %land.lhs.true.1784, label %if.end.1803

land.lhs.true.1784:                               ; preds = %if.then.1777
  %1039 = load i32, i32* %__result1767, align 4, !tbaa !10
  %cmp1785 = icmp eq i32 %1039, 0
  br i1 %cmp1785, label %if.then.1787, label %if.end.1803

if.then.1787:                                     ; preds = %land.lhs.true.1784
  %1040 = load i8*, i8** %__s11765, align 8, !tbaa !1
  %arrayidx1788 = getelementptr inbounds i8, i8* %1040, i64 2
  %1041 = load i8, i8* %arrayidx1788, align 1, !tbaa !11
  %conv1789 = zext i8 %1041 to i32
  %1042 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i64 2), align 1, !tbaa !11
  %conv1790 = zext i8 %1042 to i32
  %sub1791 = sub nsw i32 %conv1789, %conv1790
  store i32 %sub1791, i32* %__result1767, align 4, !tbaa !10
  %1043 = load i64, i64* %__s2_len1758, align 8, !tbaa !16
  %cmp1792 = icmp ugt i64 %1043, 2
  br i1 %cmp1792, label %land.lhs.true.1794, label %if.end.1802

land.lhs.true.1794:                               ; preds = %if.then.1787
  %1044 = load i32, i32* %__result1767, align 4, !tbaa !10
  %cmp1795 = icmp eq i32 %1044, 0
  br i1 %cmp1795, label %if.then.1797, label %if.end.1802

if.then.1797:                                     ; preds = %land.lhs.true.1794
  %1045 = load i8*, i8** %__s11765, align 8, !tbaa !1
  %arrayidx1798 = getelementptr inbounds i8, i8* %1045, i64 3
  %1046 = load i8, i8* %arrayidx1798, align 1, !tbaa !11
  %conv1799 = zext i8 %1046 to i32
  %1047 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i64 3), align 1, !tbaa !11
  %conv1800 = zext i8 %1047 to i32
  %sub1801 = sub nsw i32 %conv1799, %conv1800
  store i32 %sub1801, i32* %__result1767, align 4, !tbaa !10
  br label %if.end.1802

if.end.1802:                                      ; preds = %if.then.1797, %land.lhs.true.1794, %if.then.1787
  br label %if.end.1803

if.end.1803:                                      ; preds = %if.end.1802, %land.lhs.true.1784, %if.then.1777
  br label %if.end.1804

if.end.1804:                                      ; preds = %if.end.1803, %land.lhs.true.1774, %cond.true.1763
  %1048 = load i32, i32* %__result1767, align 4, !tbaa !10
  store i32 %1048, i32* %tmp1805, !tbaa !10
  %1049 = bitcast i32* %__result1767 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1049) #3
  %1050 = bitcast i8** %__s11765 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1050) #3
  %1051 = load i32, i32* %tmp1805, !tbaa !10
  br label %cond.end.1808

cond.false.1806:                                  ; preds = %land.lhs.true.1760, %if.else.1754
  %1052 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1807 = call i32 @strcmp(i8* %1052, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.144, i32 0, i32 0)) #3
  br label %cond.end.1808

cond.end.1808:                                    ; preds = %cond.false.1806, %if.end.1804
  %cond1809 = phi i32 [ %1051, %if.end.1804 ], [ %call1807, %cond.false.1806 ]
  store i32 %cond1809, i32* %tmp1759, !tbaa !10
  %1053 = bitcast i64* %__s2_len1758 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1053) #3
  %1054 = bitcast i64* %__s1_len1756 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1054) #3
  %1055 = load i32, i32* %tmp1759, !tbaa !10
  %cmp1810 = icmp eq i32 %1055, 0
  br i1 %cmp1810, label %if.then.1812, label %if.else.1824

if.then.1812:                                     ; preds = %cond.end.1808
  %1056 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate1813 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1056, i32 0, i32 11
  store i32 160, i32* %brate1813, align 4, !tbaa !32
  %1057 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq1814 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1057, i32 0, i32 26
  store i32 15, i32* %highpassfreq1814, align 4, !tbaa !29
  %1058 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpasswidth1815 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1058, i32 0, i32 28
  store i32 15, i32* %highpasswidth1815, align 4, !tbaa !30
  %1059 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq1816 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1059, i32 0, i32 25
  store i32 20000, i32* %lowpassfreq1816, align 4, !tbaa !20
  %1060 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpasswidth1817 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1060, i32 0, i32 27
  store i32 3000, i32* %lowpasswidth1817, align 4, !tbaa !28
  %1061 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q1818 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1061, i32 0, i32 22
  store i32 3, i32* %VBR_q1818, align 4, !tbaa !5
  %1062 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps1819 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1062, i32 0, i32 23
  store i32 32, i32* %VBR_min_bitrate_kbps1819, align 4, !tbaa !33
  %1063 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps1820 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1063, i32 0, i32 24
  store i32 224, i32* %VBR_max_bitrate_kbps1820, align 4, !tbaa !21
  %1064 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode1821 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1064, i32 0, i32 8
  store i32 1, i32* %mode1821, align 4, !tbaa !34
  %1065 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed1822 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1065, i32 0, i32 9
  store i32 1, i32* %mode_fixed1822, align 4, !tbaa !35
  %1066 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality1823 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1066, i32 0, i32 6
  store i32 2, i32* %quality1823, align 4, !tbaa !36
  br label %if.end.2024

if.else.1824:                                     ; preds = %cond.end.1808
  %1067 = bitcast i64* %__s1_len1826 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1067) #3
  %1068 = bitcast i64* %__s2_len1828 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1068) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i64 1) to i64), i64 ptrtoint ([3 x i8]* @.str.145 to i64)), i64 1), label %land.lhs.true.1830, label %cond.false.1876

land.lhs.true.1830:                               ; preds = %if.else.1824
  store i64 2, i64* %__s2_len1828, align 8, !tbaa !16
  %1069 = load i64, i64* %__s2_len1828, align 8, !tbaa !16
  %cmp1831 = icmp ult i64 %1069, 4
  br i1 %cmp1831, label %cond.true.1833, label %cond.false.1876

cond.true.1833:                                   ; preds = %land.lhs.true.1830
  %1070 = bitcast i8** %__s11835 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1070) #3
  %1071 = load i8*, i8** %nextArg, align 8, !tbaa !1
  store i8* %1071, i8** %__s11835, align 8, !tbaa !1
  %1072 = bitcast i32* %__result1837 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1072) #3
  %1073 = load i8*, i8** %__s11835, align 8, !tbaa !1
  %arrayidx1838 = getelementptr inbounds i8, i8* %1073, i64 0
  %1074 = load i8, i8* %arrayidx1838, align 1, !tbaa !11
  %conv1839 = zext i8 %1074 to i32
  %1075 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), align 1, !tbaa !11
  %conv1840 = zext i8 %1075 to i32
  %sub1841 = sub nsw i32 %conv1839, %conv1840
  store i32 %sub1841, i32* %__result1837, align 4, !tbaa !10
  %1076 = load i64, i64* %__s2_len1828, align 8, !tbaa !16
  %cmp1842 = icmp ugt i64 %1076, 0
  br i1 %cmp1842, label %land.lhs.true.1844, label %if.end.1874

land.lhs.true.1844:                               ; preds = %cond.true.1833
  %1077 = load i32, i32* %__result1837, align 4, !tbaa !10
  %cmp1845 = icmp eq i32 %1077, 0
  br i1 %cmp1845, label %if.then.1847, label %if.end.1874

if.then.1847:                                     ; preds = %land.lhs.true.1844
  %1078 = load i8*, i8** %__s11835, align 8, !tbaa !1
  %arrayidx1848 = getelementptr inbounds i8, i8* %1078, i64 1
  %1079 = load i8, i8* %arrayidx1848, align 1, !tbaa !11
  %conv1849 = zext i8 %1079 to i32
  %1080 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i64 1), align 1, !tbaa !11
  %conv1850 = zext i8 %1080 to i32
  %sub1851 = sub nsw i32 %conv1849, %conv1850
  store i32 %sub1851, i32* %__result1837, align 4, !tbaa !10
  %1081 = load i64, i64* %__s2_len1828, align 8, !tbaa !16
  %cmp1852 = icmp ugt i64 %1081, 1
  br i1 %cmp1852, label %land.lhs.true.1854, label %if.end.1873

land.lhs.true.1854:                               ; preds = %if.then.1847
  %1082 = load i32, i32* %__result1837, align 4, !tbaa !10
  %cmp1855 = icmp eq i32 %1082, 0
  br i1 %cmp1855, label %if.then.1857, label %if.end.1873

if.then.1857:                                     ; preds = %land.lhs.true.1854
  %1083 = load i8*, i8** %__s11835, align 8, !tbaa !1
  %arrayidx1858 = getelementptr inbounds i8, i8* %1083, i64 2
  %1084 = load i8, i8* %arrayidx1858, align 1, !tbaa !11
  %conv1859 = zext i8 %1084 to i32
  %1085 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i64 2), align 1, !tbaa !11
  %conv1860 = zext i8 %1085 to i32
  %sub1861 = sub nsw i32 %conv1859, %conv1860
  store i32 %sub1861, i32* %__result1837, align 4, !tbaa !10
  %1086 = load i64, i64* %__s2_len1828, align 8, !tbaa !16
  %cmp1862 = icmp ugt i64 %1086, 2
  br i1 %cmp1862, label %land.lhs.true.1864, label %if.end.1872

land.lhs.true.1864:                               ; preds = %if.then.1857
  %1087 = load i32, i32* %__result1837, align 4, !tbaa !10
  %cmp1865 = icmp eq i32 %1087, 0
  br i1 %cmp1865, label %if.then.1867, label %if.end.1872

if.then.1867:                                     ; preds = %land.lhs.true.1864
  %1088 = load i8*, i8** %__s11835, align 8, !tbaa !1
  %arrayidx1868 = getelementptr inbounds i8, i8* %1088, i64 3
  %1089 = load i8, i8* %arrayidx1868, align 1, !tbaa !11
  %conv1869 = zext i8 %1089 to i32
  %1090 = load i8, i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0), i64 3), align 1, !tbaa !11
  %conv1870 = zext i8 %1090 to i32
  %sub1871 = sub nsw i32 %conv1869, %conv1870
  store i32 %sub1871, i32* %__result1837, align 4, !tbaa !10
  br label %if.end.1872

if.end.1872:                                      ; preds = %if.then.1867, %land.lhs.true.1864, %if.then.1857
  br label %if.end.1873

if.end.1873:                                      ; preds = %if.end.1872, %land.lhs.true.1854, %if.then.1847
  br label %if.end.1874

if.end.1874:                                      ; preds = %if.end.1873, %land.lhs.true.1844, %cond.true.1833
  %1091 = load i32, i32* %__result1837, align 4, !tbaa !10
  store i32 %1091, i32* %tmp1875, !tbaa !10
  %1092 = bitcast i32* %__result1837 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1092) #3
  %1093 = bitcast i8** %__s11835 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1093) #3
  %1094 = load i32, i32* %tmp1875, !tbaa !10
  br label %cond.end.1878

cond.false.1876:                                  ; preds = %land.lhs.true.1830, %if.else.1824
  %1095 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1877 = call i32 @strcmp(i8* %1095, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i32 0, i32 0)) #3
  br label %cond.end.1878

cond.end.1878:                                    ; preds = %cond.false.1876, %if.end.1874
  %cond1879 = phi i32 [ %1094, %if.end.1874 ], [ %call1877, %cond.false.1876 ]
  store i32 %cond1879, i32* %tmp1829, !tbaa !10
  %1096 = bitcast i64* %__s2_len1828 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1096) #3
  %1097 = bitcast i64* %__s1_len1826 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1097) #3
  %1098 = load i32, i32* %tmp1829, !tbaa !10
  %cmp1880 = icmp eq i32 %1098, 0
  br i1 %cmp1880, label %if.then.1882, label %if.else.1892

if.then.1882:                                     ; preds = %cond.end.1878
  %1099 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate1883 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1099, i32 0, i32 11
  store i32 192, i32* %brate1883, align 4, !tbaa !32
  %1100 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq1884 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1100, i32 0, i32 25
  store i32 -1, i32* %lowpassfreq1884, align 4, !tbaa !20
  %1101 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq1885 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1101, i32 0, i32 26
  store i32 -1, i32* %highpassfreq1885, align 4, !tbaa !29
  %1102 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q1886 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1102, i32 0, i32 22
  store i32 2, i32* %VBR_q1886, align 4, !tbaa !5
  %1103 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps1887 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1103, i32 0, i32 23
  store i32 80, i32* %VBR_min_bitrate_kbps1887, align 4, !tbaa !33
  %1104 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps1888 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1104, i32 0, i32 24
  store i32 256, i32* %VBR_max_bitrate_kbps1888, align 4, !tbaa !21
  %1105 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode1889 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1105, i32 0, i32 8
  store i32 0, i32* %mode1889, align 4, !tbaa !34
  %1106 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed1890 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1106, i32 0, i32 9
  store i32 1, i32* %mode_fixed1890, align 4, !tbaa !35
  %1107 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality1891 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1107, i32 0, i32 6
  store i32 2, i32* %quality1891, align 4, !tbaa !36
  br label %if.end.2023

if.else.1892:                                     ; preds = %cond.end.1878
  %1108 = bitcast i64* %__s1_len1894 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1108) #3
  %1109 = bitcast i64* %__s2_len1896 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1109) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.146 to i64)), i64 1), label %land.lhs.true.1898, label %cond.false.1944

land.lhs.true.1898:                               ; preds = %if.else.1892
  store i64 6, i64* %__s2_len1896, align 8, !tbaa !16
  %1110 = load i64, i64* %__s2_len1896, align 8, !tbaa !16
  %cmp1899 = icmp ult i64 %1110, 4
  br i1 %cmp1899, label %cond.true.1901, label %cond.false.1944

cond.true.1901:                                   ; preds = %land.lhs.true.1898
  %1111 = bitcast i8** %__s11903 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1111) #3
  %1112 = load i8*, i8** %nextArg, align 8, !tbaa !1
  store i8* %1112, i8** %__s11903, align 8, !tbaa !1
  %1113 = bitcast i32* %__result1905 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1113) #3
  %1114 = load i8*, i8** %__s11903, align 8, !tbaa !1
  %arrayidx1906 = getelementptr inbounds i8, i8* %1114, i64 0
  %1115 = load i8, i8* %arrayidx1906, align 1, !tbaa !11
  %conv1907 = zext i8 %1115 to i32
  %1116 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0), align 1, !tbaa !11
  %conv1908 = zext i8 %1116 to i32
  %sub1909 = sub nsw i32 %conv1907, %conv1908
  store i32 %sub1909, i32* %__result1905, align 4, !tbaa !10
  %1117 = load i64, i64* %__s2_len1896, align 8, !tbaa !16
  %cmp1910 = icmp ugt i64 %1117, 0
  br i1 %cmp1910, label %land.lhs.true.1912, label %if.end.1942

land.lhs.true.1912:                               ; preds = %cond.true.1901
  %1118 = load i32, i32* %__result1905, align 4, !tbaa !10
  %cmp1913 = icmp eq i32 %1118, 0
  br i1 %cmp1913, label %if.then.1915, label %if.end.1942

if.then.1915:                                     ; preds = %land.lhs.true.1912
  %1119 = load i8*, i8** %__s11903, align 8, !tbaa !1
  %arrayidx1916 = getelementptr inbounds i8, i8* %1119, i64 1
  %1120 = load i8, i8* %arrayidx1916, align 1, !tbaa !11
  %conv1917 = zext i8 %1120 to i32
  %1121 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i64 1), align 1, !tbaa !11
  %conv1918 = zext i8 %1121 to i32
  %sub1919 = sub nsw i32 %conv1917, %conv1918
  store i32 %sub1919, i32* %__result1905, align 4, !tbaa !10
  %1122 = load i64, i64* %__s2_len1896, align 8, !tbaa !16
  %cmp1920 = icmp ugt i64 %1122, 1
  br i1 %cmp1920, label %land.lhs.true.1922, label %if.end.1941

land.lhs.true.1922:                               ; preds = %if.then.1915
  %1123 = load i32, i32* %__result1905, align 4, !tbaa !10
  %cmp1923 = icmp eq i32 %1123, 0
  br i1 %cmp1923, label %if.then.1925, label %if.end.1941

if.then.1925:                                     ; preds = %land.lhs.true.1922
  %1124 = load i8*, i8** %__s11903, align 8, !tbaa !1
  %arrayidx1926 = getelementptr inbounds i8, i8* %1124, i64 2
  %1125 = load i8, i8* %arrayidx1926, align 1, !tbaa !11
  %conv1927 = zext i8 %1125 to i32
  %1126 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i64 2), align 1, !tbaa !11
  %conv1928 = zext i8 %1126 to i32
  %sub1929 = sub nsw i32 %conv1927, %conv1928
  store i32 %sub1929, i32* %__result1905, align 4, !tbaa !10
  %1127 = load i64, i64* %__s2_len1896, align 8, !tbaa !16
  %cmp1930 = icmp ugt i64 %1127, 2
  br i1 %cmp1930, label %land.lhs.true.1932, label %if.end.1940

land.lhs.true.1932:                               ; preds = %if.then.1925
  %1128 = load i32, i32* %__result1905, align 4, !tbaa !10
  %cmp1933 = icmp eq i32 %1128, 0
  br i1 %cmp1933, label %if.then.1935, label %if.end.1940

if.then.1935:                                     ; preds = %land.lhs.true.1932
  %1129 = load i8*, i8** %__s11903, align 8, !tbaa !1
  %arrayidx1936 = getelementptr inbounds i8, i8* %1129, i64 3
  %1130 = load i8, i8* %arrayidx1936, align 1, !tbaa !11
  %conv1937 = zext i8 %1130 to i32
  %1131 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i64 3), align 1, !tbaa !11
  %conv1938 = zext i8 %1131 to i32
  %sub1939 = sub nsw i32 %conv1937, %conv1938
  store i32 %sub1939, i32* %__result1905, align 4, !tbaa !10
  br label %if.end.1940

if.end.1940:                                      ; preds = %if.then.1935, %land.lhs.true.1932, %if.then.1925
  br label %if.end.1941

if.end.1941:                                      ; preds = %if.end.1940, %land.lhs.true.1922, %if.then.1915
  br label %if.end.1942

if.end.1942:                                      ; preds = %if.end.1941, %land.lhs.true.1912, %cond.true.1901
  %1132 = load i32, i32* %__result1905, align 4, !tbaa !10
  store i32 %1132, i32* %tmp1943, !tbaa !10
  %1133 = bitcast i32* %__result1905 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1133) #3
  %1134 = bitcast i8** %__s11903 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1134) #3
  %1135 = load i32, i32* %tmp1943, !tbaa !10
  br label %cond.end.1946

cond.false.1944:                                  ; preds = %land.lhs.true.1898, %if.else.1892
  %1136 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call1945 = call i32 @strcmp(i8* %1136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i32 0, i32 0)) #3
  br label %cond.end.1946

cond.end.1946:                                    ; preds = %cond.false.1944, %if.end.1942
  %cond1947 = phi i32 [ %1135, %if.end.1942 ], [ %call1945, %cond.false.1944 ]
  store i32 %cond1947, i32* %tmp1897, !tbaa !10
  %1137 = bitcast i64* %__s2_len1896 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1137) #3
  %1138 = bitcast i64* %__s1_len1894 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1138) #3
  %1139 = load i32, i32* %tmp1897, !tbaa !10
  %cmp1948 = icmp eq i32 %1139, 0
  br i1 %cmp1948, label %if.then.1950, label %if.else.1960

if.then.1950:                                     ; preds = %cond.end.1946
  %1140 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate1951 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1140, i32 0, i32 11
  store i32 256, i32* %brate1951, align 4, !tbaa !32
  %1141 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq1952 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1141, i32 0, i32 25
  store i32 -1, i32* %lowpassfreq1952, align 4, !tbaa !20
  %1142 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq1953 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1142, i32 0, i32 26
  store i32 -1, i32* %highpassfreq1953, align 4, !tbaa !29
  %1143 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q1954 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1143, i32 0, i32 22
  store i32 0, i32* %VBR_q1954, align 4, !tbaa !5
  %1144 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps1955 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1144, i32 0, i32 23
  store i32 112, i32* %VBR_min_bitrate_kbps1955, align 4, !tbaa !33
  %1145 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps1956 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1145, i32 0, i32 24
  store i32 320, i32* %VBR_max_bitrate_kbps1956, align 4, !tbaa !21
  %1146 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode1957 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1146, i32 0, i32 8
  store i32 0, i32* %mode1957, align 4, !tbaa !34
  %1147 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed1958 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1147, i32 0, i32 9
  store i32 1, i32* %mode_fixed1958, align 4, !tbaa !35
  %1148 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality1959 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1148, i32 0, i32 6
  store i32 2, i32* %quality1959, align 4, !tbaa !36
  br label %if.end.2022

if.else.1960:                                     ; preds = %cond.end.1946
  %1149 = bitcast i64* %__s1_len1962 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1149) #3
  %1150 = bitcast i64* %__s2_len1964 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1150) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.138 to i64)), i64 1), label %land.lhs.true.1966, label %cond.false.2012

land.lhs.true.1966:                               ; preds = %if.else.1960
  store i64 4, i64* %__s2_len1964, align 8, !tbaa !16
  %1151 = load i64, i64* %__s2_len1964, align 8, !tbaa !16
  %cmp1967 = icmp ult i64 %1151, 4
  br i1 %cmp1967, label %cond.true.1969, label %cond.false.2012

cond.true.1969:                                   ; preds = %land.lhs.true.1966
  %1152 = bitcast i8** %__s11971 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1152) #3
  %1153 = load i8*, i8** %nextArg, align 8, !tbaa !1
  store i8* %1153, i8** %__s11971, align 8, !tbaa !1
  %1154 = bitcast i32* %__result1973 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1154) #3
  %1155 = load i8*, i8** %__s11971, align 8, !tbaa !1
  %arrayidx1974 = getelementptr inbounds i8, i8* %1155, i64 0
  %1156 = load i8, i8* %arrayidx1974, align 1, !tbaa !11
  %conv1975 = zext i8 %1156 to i32
  %1157 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), align 1, !tbaa !11
  %conv1976 = zext i8 %1157 to i32
  %sub1977 = sub nsw i32 %conv1975, %conv1976
  store i32 %sub1977, i32* %__result1973, align 4, !tbaa !10
  %1158 = load i64, i64* %__s2_len1964, align 8, !tbaa !16
  %cmp1978 = icmp ugt i64 %1158, 0
  br i1 %cmp1978, label %land.lhs.true.1980, label %if.end.2010

land.lhs.true.1980:                               ; preds = %cond.true.1969
  %1159 = load i32, i32* %__result1973, align 4, !tbaa !10
  %cmp1981 = icmp eq i32 %1159, 0
  br i1 %cmp1981, label %if.then.1983, label %if.end.2010

if.then.1983:                                     ; preds = %land.lhs.true.1980
  %1160 = load i8*, i8** %__s11971, align 8, !tbaa !1
  %arrayidx1984 = getelementptr inbounds i8, i8* %1160, i64 1
  %1161 = load i8, i8* %arrayidx1984, align 1, !tbaa !11
  %conv1985 = zext i8 %1161 to i32
  %1162 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i64 1), align 1, !tbaa !11
  %conv1986 = zext i8 %1162 to i32
  %sub1987 = sub nsw i32 %conv1985, %conv1986
  store i32 %sub1987, i32* %__result1973, align 4, !tbaa !10
  %1163 = load i64, i64* %__s2_len1964, align 8, !tbaa !16
  %cmp1988 = icmp ugt i64 %1163, 1
  br i1 %cmp1988, label %land.lhs.true.1990, label %if.end.2009

land.lhs.true.1990:                               ; preds = %if.then.1983
  %1164 = load i32, i32* %__result1973, align 4, !tbaa !10
  %cmp1991 = icmp eq i32 %1164, 0
  br i1 %cmp1991, label %if.then.1993, label %if.end.2009

if.then.1993:                                     ; preds = %land.lhs.true.1990
  %1165 = load i8*, i8** %__s11971, align 8, !tbaa !1
  %arrayidx1994 = getelementptr inbounds i8, i8* %1165, i64 2
  %1166 = load i8, i8* %arrayidx1994, align 1, !tbaa !11
  %conv1995 = zext i8 %1166 to i32
  %1167 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i64 2), align 1, !tbaa !11
  %conv1996 = zext i8 %1167 to i32
  %sub1997 = sub nsw i32 %conv1995, %conv1996
  store i32 %sub1997, i32* %__result1973, align 4, !tbaa !10
  %1168 = load i64, i64* %__s2_len1964, align 8, !tbaa !16
  %cmp1998 = icmp ugt i64 %1168, 2
  br i1 %cmp1998, label %land.lhs.true.2000, label %if.end.2008

land.lhs.true.2000:                               ; preds = %if.then.1993
  %1169 = load i32, i32* %__result1973, align 4, !tbaa !10
  %cmp2001 = icmp eq i32 %1169, 0
  br i1 %cmp2001, label %if.then.2003, label %if.end.2008

if.then.2003:                                     ; preds = %land.lhs.true.2000
  %1170 = load i8*, i8** %__s11971, align 8, !tbaa !1
  %arrayidx2004 = getelementptr inbounds i8, i8* %1170, i64 3
  %1171 = load i8, i8* %arrayidx2004, align 1, !tbaa !11
  %conv2005 = zext i8 %1171 to i32
  %1172 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i64 3), align 1, !tbaa !11
  %conv2006 = zext i8 %1172 to i32
  %sub2007 = sub nsw i32 %conv2005, %conv2006
  store i32 %sub2007, i32* %__result1973, align 4, !tbaa !10
  br label %if.end.2008

if.end.2008:                                      ; preds = %if.then.2003, %land.lhs.true.2000, %if.then.1993
  br label %if.end.2009

if.end.2009:                                      ; preds = %if.end.2008, %land.lhs.true.1990, %if.then.1983
  br label %if.end.2010

if.end.2010:                                      ; preds = %if.end.2009, %land.lhs.true.1980, %cond.true.1969
  %1173 = load i32, i32* %__result1973, align 4, !tbaa !10
  store i32 %1173, i32* %tmp2011, !tbaa !10
  %1174 = bitcast i32* %__result1973 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1174) #3
  %1175 = bitcast i8** %__s11971 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1175) #3
  %1176 = load i32, i32* %tmp2011, !tbaa !10
  br label %cond.end.2014

cond.false.2012:                                  ; preds = %land.lhs.true.1966, %if.else.1960
  %1177 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call2013 = call i32 @strcmp(i8* %1177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0)) #3
  br label %cond.end.2014

cond.end.2014:                                    ; preds = %cond.false.2012, %if.end.2010
  %cond2015 = phi i32 [ %1176, %if.end.2010 ], [ %call2013, %cond.false.2012 ]
  store i32 %cond2015, i32* %tmp1965, !tbaa !10
  %1178 = bitcast i64* %__s2_len1964 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1178) #3
  %1179 = bitcast i64* %__s1_len1962 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1179) #3
  %1180 = load i32, i32* %tmp1965, !tbaa !10
  %cmp2016 = icmp eq i32 %1180, 0
  br i1 %cmp2016, label %if.then.2018, label %if.else.2019

if.then.2018:                                     ; preds = %cond.end.2014
  %1181 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %1182 = load i8*, i8** %programName, align 8, !tbaa !1
  call void @lame_presets_info(%struct.lame_global_flags* %1181, i8* %1182)
  br label %if.end.2021

if.else.2019:                                     ; preds = %cond.end.2014
  %1183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1184 = load i8*, i8** %programName, align 8, !tbaa !1
  %1185 = load i8*, i8** %nextArg, align 8, !tbaa !1
  %call2020 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1183, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.147, i32 0, i32 0), i8* %1184, i8* %1185)
  call void @exit(i32 1) #7
  unreachable

if.end.2021:                                      ; preds = %if.then.2018
  br label %if.end.2022

if.end.2022:                                      ; preds = %if.end.2021, %if.then.1950
  br label %if.end.2023

if.end.2023:                                      ; preds = %if.end.2022, %if.then.1882
  br label %if.end.2024

if.end.2024:                                      ; preds = %if.end.2023, %if.then.1812
  br label %if.end.2025

if.end.2025:                                      ; preds = %if.end.2024, %if.then.1742
  br label %if.end.2026

if.end.2026:                                      ; preds = %if.end.2025, %if.then.1672
  br label %if.end.2027

if.end.2027:                                      ; preds = %if.end.2026, %if.then.1600
  br label %if.end.2028

if.end.2028:                                      ; preds = %if.end.2027, %if.then.1534
  br label %if.end.2031

if.else.2029:                                     ; preds = %cond.end.1472
  %1186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1187 = load i8*, i8** %programName, align 8, !tbaa !1
  %1188 = load i8*, i8** %token, align 8, !tbaa !1
  %call2030 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.148, i32 0, i32 0), i8* %1187, i8* %1188)
  br label %if.end.2031

if.end.2031:                                      ; preds = %if.else.2029, %if.end.2028
  br label %if.end.2032

if.end.2032:                                      ; preds = %if.end.2031, %if.then.1417
  br label %if.end.2033

if.end.2033:                                      ; preds = %if.end.2032, %if.end.1301
  br label %if.end.2034

if.end.2034:                                      ; preds = %if.end.2033, %if.end.1234
  br label %if.end.2035

if.end.2035:                                      ; preds = %if.end.2034, %if.end.1165
  br label %if.end.2036

if.end.2036:                                      ; preds = %if.end.2035, %if.end.1096
  br label %if.end.2037

if.end.2037:                                      ; preds = %if.end.2036, %if.end.1027
  br label %if.end.2038

if.end.2038:                                      ; preds = %if.end.2037, %if.end.955
  br label %if.end.2039

if.end.2039:                                      ; preds = %if.end.2038, %if.end.870
  br label %if.end.2040

if.end.2040:                                      ; preds = %if.end.2039, %if.then.801
  br label %if.end.2041

if.end.2041:                                      ; preds = %if.end.2040, %if.then.741
  br label %if.end.2042

if.end.2042:                                      ; preds = %if.end.2041, %if.then.681
  br label %if.end.2043

if.end.2043:                                      ; preds = %if.end.2042, %if.then.621
  br label %if.end.2044

if.end.2044:                                      ; preds = %if.end.2043, %if.then.561
  br label %if.end.2045

if.end.2045:                                      ; preds = %if.end.2044, %if.then.502
  br label %if.end.2046

if.end.2046:                                      ; preds = %if.end.2045, %if.then.443
  br label %if.end.2047

if.end.2047:                                      ; preds = %if.end.2046, %if.then.384
  br label %if.end.2048

if.end.2048:                                      ; preds = %if.end.2047, %if.then.325
  br label %if.end.2049

if.end.2049:                                      ; preds = %if.end.2048, %if.then.265
  br label %if.end.2050

if.end.2050:                                      ; preds = %if.end.2049, %if.then.206
  br label %if.end.2051

if.end.2051:                                      ; preds = %if.end.2050, %if.then.147
  br label %if.end.2052

if.end.2052:                                      ; preds = %if.end.2051, %if.end.88
  %1189 = load i32, i32* %argUsed, align 4, !tbaa !10
  %1190 = load i32, i32* %i, align 4, !tbaa !10
  %add2053 = add nsw i32 %1190, %1189
  store i32 %add2053, i32* %i, align 4, !tbaa !10
  br label %if.end.2251

if.else.2054:                                     ; preds = %if.end.28
  br label %while.cond.2055

while.cond.2055:                                  ; preds = %if.end.2250, %if.else.2054
  %1191 = load i8*, i8** %token, align 8, !tbaa !1
  %incdec.ptr2056 = getelementptr inbounds i8, i8* %1191, i32 1
  store i8* %incdec.ptr2056, i8** %token, align 8, !tbaa !1
  %1192 = load i8, i8* %1191, align 1, !tbaa !11
  store i8 %1192, i8* %c, align 1, !tbaa !11
  %tobool2057 = icmp ne i8 %1192, 0
  br i1 %tobool2057, label %while.body.2058, label %while.end

while.body.2058:                                  ; preds = %while.cond.2055
  %1193 = load i8*, i8** %token, align 8, !tbaa !1
  %1194 = load i8, i8* %1193, align 1, !tbaa !11
  %tobool2059 = icmp ne i8 %1194, 0
  br i1 %tobool2059, label %if.then.2060, label %if.else.2061

if.then.2060:                                     ; preds = %while.body.2058
  %1195 = load i8*, i8** %token, align 8, !tbaa !1
  store i8* %1195, i8** %arg, align 8, !tbaa !1
  br label %if.end.2062

if.else.2061:                                     ; preds = %while.body.2058
  %1196 = load i8*, i8** %nextArg, align 8, !tbaa !1
  store i8* %1196, i8** %arg, align 8, !tbaa !1
  br label %if.end.2062

if.end.2062:                                      ; preds = %if.else.2061, %if.then.2060
  %1197 = load i8, i8* %c, align 1, !tbaa !11
  %conv2063 = sext i8 %1197 to i32
  switch i32 %conv2063, label %sw.default [
    i32 109, label %sw.bb
    i32 86, label %sw.bb.2101
    i32 113, label %sw.bb.2116
    i32 115, label %sw.bb.2126
    i32 98, label %sw.bb.2133
    i32 66, label %sw.bb.2138
    i32 116, label %sw.bb.2141
    i32 114, label %sw.bb.2142
    i32 120, label %sw.bb.2144
    i32 112, label %sw.bb.2145
    i32 97, label %sw.bb.2146
    i32 104, label %sw.bb.2149
    i32 107, label %sw.bb.2151
    i32 100, label %sw.bb.2154
    i32 118, label %sw.bb.2155
    i32 83, label %sw.bb.2157
    i32 88, label %sw.bb.2158
    i32 89, label %sw.bb.2209
    i32 90, label %sw.bb.2210
    i32 102, label %sw.bb.2211
    i32 103, label %sw.bb.2213
    i32 101, label %sw.bb.2215
    i32 99, label %sw.bb.2237
    i32 111, label %sw.bb.2238
    i32 63, label %sw.bb.2239
  ]

sw.bb:                                            ; preds = %if.end.2062
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %1198 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed2064 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1198, i32 0, i32 9
  store i32 1, i32* %mode_fixed2064, align 4, !tbaa !35
  %1199 = load i8*, i8** %arg, align 8, !tbaa !1
  %1200 = load i8, i8* %1199, align 1, !tbaa !11
  %conv2065 = sext i8 %1200 to i32
  %cmp2066 = icmp eq i32 %conv2065, 115
  br i1 %cmp2066, label %if.then.2068, label %if.else.2070

if.then.2068:                                     ; preds = %sw.bb
  %1201 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode2069 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1201, i32 0, i32 8
  store i32 0, i32* %mode2069, align 4, !tbaa !34
  br label %if.end.2100

if.else.2070:                                     ; preds = %sw.bb
  %1202 = load i8*, i8** %arg, align 8, !tbaa !1
  %1203 = load i8, i8* %1202, align 1, !tbaa !11
  %conv2071 = sext i8 %1203 to i32
  %cmp2072 = icmp eq i32 %conv2071, 100
  br i1 %cmp2072, label %if.then.2074, label %if.else.2076

if.then.2074:                                     ; preds = %if.else.2070
  %1204 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode2075 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1204, i32 0, i32 8
  store i32 2, i32* %mode2075, align 4, !tbaa !34
  br label %if.end.2099

if.else.2076:                                     ; preds = %if.else.2070
  %1205 = load i8*, i8** %arg, align 8, !tbaa !1
  %1206 = load i8, i8* %1205, align 1, !tbaa !11
  %conv2077 = sext i8 %1206 to i32
  %cmp2078 = icmp eq i32 %conv2077, 106
  br i1 %cmp2078, label %if.then.2080, label %if.else.2082

if.then.2080:                                     ; preds = %if.else.2076
  %1207 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode2081 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1207, i32 0, i32 8
  store i32 1, i32* %mode2081, align 4, !tbaa !34
  br label %if.end.2098

if.else.2082:                                     ; preds = %if.else.2076
  %1208 = load i8*, i8** %arg, align 8, !tbaa !1
  %1209 = load i8, i8* %1208, align 1, !tbaa !11
  %conv2083 = sext i8 %1209 to i32
  %cmp2084 = icmp eq i32 %conv2083, 102
  br i1 %cmp2084, label %if.then.2086, label %if.else.2088

if.then.2086:                                     ; preds = %if.else.2082
  %1210 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode2087 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1210, i32 0, i32 8
  store i32 1, i32* %mode2087, align 4, !tbaa !34
  %1211 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %force_ms = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1211, i32 0, i32 10
  store i32 1, i32* %force_ms, align 4, !tbaa !37
  br label %if.end.2097

if.else.2088:                                     ; preds = %if.else.2082
  %1212 = load i8*, i8** %arg, align 8, !tbaa !1
  %1213 = load i8, i8* %1212, align 1, !tbaa !11
  %conv2089 = sext i8 %1213 to i32
  %cmp2090 = icmp eq i32 %conv2089, 109
  br i1 %cmp2090, label %if.then.2092, label %if.else.2094

if.then.2092:                                     ; preds = %if.else.2088
  %1214 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode2093 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1214, i32 0, i32 8
  store i32 3, i32* %mode2093, align 4, !tbaa !34
  br label %if.end.2096

if.else.2094:                                     ; preds = %if.else.2088
  %1215 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1216 = load i8*, i8** %programName, align 8, !tbaa !1
  %1217 = load i8*, i8** %arg, align 8, !tbaa !1
  %call2095 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1215, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.149, i32 0, i32 0), i8* %1216, i8* %1217)
  store i32 1, i32* %err, align 4, !tbaa !10
  br label %if.end.2096

if.end.2096:                                      ; preds = %if.else.2094, %if.then.2092
  br label %if.end.2097

if.end.2097:                                      ; preds = %if.end.2096, %if.then.2086
  br label %if.end.2098

if.end.2098:                                      ; preds = %if.end.2097, %if.then.2080
  br label %if.end.2099

if.end.2099:                                      ; preds = %if.end.2098, %if.then.2074
  br label %if.end.2100

if.end.2100:                                      ; preds = %if.end.2099, %if.then.2068
  br label %sw.epilog

sw.bb.2101:                                       ; preds = %if.end.2062
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %1218 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1218, i32 0, i32 21
  store i32 1, i32* %VBR, align 4, !tbaa !38
  %1219 = load i8*, i8** %arg, align 8, !tbaa !1
  %call2102 = call i32 @atoi(i8* %1219) #8
  %1220 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q2103 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1220, i32 0, i32 22
  store i32 %call2102, i32* %VBR_q2103, align 4, !tbaa !5
  %1221 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q2104 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1221, i32 0, i32 22
  %1222 = load i32, i32* %VBR_q2104, align 4, !tbaa !5
  %cmp2105 = icmp slt i32 %1222, 0
  br i1 %cmp2105, label %if.then.2107, label %if.end.2109

if.then.2107:                                     ; preds = %sw.bb.2101
  %1223 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q2108 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1223, i32 0, i32 22
  store i32 0, i32* %VBR_q2108, align 4, !tbaa !5
  br label %if.end.2109

if.end.2109:                                      ; preds = %if.then.2107, %sw.bb.2101
  %1224 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q2110 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1224, i32 0, i32 22
  %1225 = load i32, i32* %VBR_q2110, align 4, !tbaa !5
  %cmp2111 = icmp sgt i32 %1225, 9
  br i1 %cmp2111, label %if.then.2113, label %if.end.2115

if.then.2113:                                     ; preds = %if.end.2109
  %1226 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_q2114 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1226, i32 0, i32 22
  store i32 9, i32* %VBR_q2114, align 4, !tbaa !5
  br label %if.end.2115

if.end.2115:                                      ; preds = %if.then.2113, %if.end.2109
  br label %sw.epilog

sw.bb.2116:                                       ; preds = %if.end.2062
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %1227 = load i8*, i8** %arg, align 8, !tbaa !1
  %call2117 = call i32 @atoi(i8* %1227) #8
  store i32 %call2117, i32* %user_quality, align 4, !tbaa !10
  %1228 = load i32, i32* %user_quality, align 4, !tbaa !10
  %cmp2118 = icmp slt i32 %1228, 0
  br i1 %cmp2118, label %if.then.2120, label %if.end.2121

if.then.2120:                                     ; preds = %sw.bb.2116
  store i32 0, i32* %user_quality, align 4, !tbaa !10
  br label %if.end.2121

if.end.2121:                                      ; preds = %if.then.2120, %sw.bb.2116
  %1229 = load i32, i32* %user_quality, align 4, !tbaa !10
  %cmp2122 = icmp sgt i32 %1229, 9
  br i1 %cmp2122, label %if.then.2124, label %if.end.2125

if.then.2124:                                     ; preds = %if.end.2121
  store i32 9, i32* %user_quality, align 4, !tbaa !10
  br label %if.end.2125

if.end.2125:                                      ; preds = %if.then.2124, %if.end.2121
  br label %sw.epilog

sw.bb.2126:                                       ; preds = %if.end.2062
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %1230 = load i8*, i8** %arg, align 8, !tbaa !1
  %call2127 = call double @atof(i8* %1230) #8
  %conv2128 = fptrunc double %call2127 to float
  store float %conv2128, float* %srate, align 4, !tbaa !17
  %1231 = load float, float* %srate, align 4, !tbaa !17
  %conv2129 = fpext float %1231 to double
  %mul2130 = fmul double 1.000000e+03, %conv2129
  %add2131 = fadd double %mul2130, 5.000000e-01
  %conv2132 = fptosi double %add2131 to i32
  %1232 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %in_samplerate = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1232, i32 0, i32 2
  store i32 %conv2132, i32* %in_samplerate, align 4, !tbaa !39
  br label %sw.epilog

sw.bb.2133:                                       ; preds = %if.end.2062
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %1233 = load i8*, i8** %arg, align 8, !tbaa !1
  %call2134 = call i32 @atoi(i8* %1233) #8
  %1234 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate2135 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1234, i32 0, i32 11
  store i32 %call2134, i32* %brate2135, align 4, !tbaa !32
  %1235 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %brate2136 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1235, i32 0, i32 11
  %1236 = load i32, i32* %brate2136, align 4, !tbaa !32
  %1237 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_min_bitrate_kbps2137 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1237, i32 0, i32 23
  store i32 %1236, i32* %VBR_min_bitrate_kbps2137, align 4, !tbaa !33
  br label %sw.epilog

sw.bb.2138:                                       ; preds = %if.end.2062
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %1238 = load i8*, i8** %arg, align 8, !tbaa !1
  %call2139 = call i32 @atoi(i8* %1238) #8
  %1239 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR_max_bitrate_kbps2140 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1239, i32 0, i32 24
  store i32 %call2139, i32* %VBR_max_bitrate_kbps2140, align 4, !tbaa !21
  br label %sw.epilog

sw.bb.2141:                                       ; preds = %if.end.2062
  %1240 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bWriteVbrTag = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1240, i32 0, i32 5
  store i32 0, i32* %bWriteVbrTag, align 4, !tbaa !40
  br label %sw.epilog

sw.bb.2142:                                       ; preds = %if.end.2062
  %1241 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format2143 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1241, i32 0, i32 29
  store i32 4, i32* %input_format2143, align 4, !tbaa !19
  br label %sw.epilog

sw.bb.2144:                                       ; preds = %if.end.2062
  %1242 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %swapbytes = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1242, i32 0, i32 30
  store i32 1, i32* %swapbytes, align 4, !tbaa !41
  br label %sw.epilog

sw.bb.2145:                                       ; preds = %if.end.2062
  %1243 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %error_protection = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1243, i32 0, i32 14
  store i32 1, i32* %error_protection, align 4, !tbaa !42
  br label %sw.epilog

sw.bb.2146:                                       ; preds = %if.end.2062
  store i32 1, i32* %autoconvert, align 4, !tbaa !10
  %1244 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode2147 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1244, i32 0, i32 8
  store i32 3, i32* %mode2147, align 4, !tbaa !34
  %1245 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode_fixed2148 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1245, i32 0, i32 9
  store i32 1, i32* %mode_fixed2148, align 4, !tbaa !35
  br label %sw.epilog

sw.bb.2149:                                       ; preds = %if.end.2062
  %1246 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality2150 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1246, i32 0, i32 6
  store i32 2, i32* %quality2150, align 4, !tbaa !36
  br label %sw.epilog

sw.bb.2151:                                       ; preds = %if.end.2062
  %1247 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %lowpassfreq2152 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1247, i32 0, i32 25
  store i32 -1, i32* %lowpassfreq2152, align 4, !tbaa !20
  %1248 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %highpassfreq2153 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1248, i32 0, i32 26
  store i32 -1, i32* %highpassfreq2153, align 4, !tbaa !29
  br label %sw.epilog

sw.bb.2154:                                       ; preds = %if.end.2062
  %1249 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1249, i32 0, i32 36
  store i32 1, i32* %allow_diff_short, align 4, !tbaa !43
  br label %sw.epilog

sw.bb.2155:                                       ; preds = %if.end.2062
  %1250 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %VBR2156 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1250, i32 0, i32 21
  store i32 1, i32* %VBR2156, align 4, !tbaa !38
  br label %sw.epilog

sw.bb.2157:                                       ; preds = %if.end.2062
  %1251 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %silent = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1251, i32 0, i32 7
  store i32 1, i32* %silent, align 4, !tbaa !44
  br label %sw.epilog

sw.bb.2158:                                       ; preds = %if.end.2062
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %1252 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1252, i32 0, i32 18
  store i32 0, i32* %experimentalX, align 4, !tbaa !45
  %1253 = load i8*, i8** %arg, align 8, !tbaa !1
  %1254 = load i8, i8* %1253, align 1, !tbaa !11
  %conv2159 = sext i8 %1254 to i32
  %cmp2160 = icmp eq i32 %conv2159, 48
  br i1 %cmp2160, label %if.then.2162, label %if.else.2164

if.then.2162:                                     ; preds = %sw.bb.2158
  %1255 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX2163 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1255, i32 0, i32 18
  store i32 0, i32* %experimentalX2163, align 4, !tbaa !45
  br label %if.end.2208

if.else.2164:                                     ; preds = %sw.bb.2158
  %1256 = load i8*, i8** %arg, align 8, !tbaa !1
  %1257 = load i8, i8* %1256, align 1, !tbaa !11
  %conv2165 = sext i8 %1257 to i32
  %cmp2166 = icmp eq i32 %conv2165, 49
  br i1 %cmp2166, label %if.then.2168, label %if.else.2170

if.then.2168:                                     ; preds = %if.else.2164
  %1258 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX2169 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1258, i32 0, i32 18
  store i32 1, i32* %experimentalX2169, align 4, !tbaa !45
  br label %if.end.2207

if.else.2170:                                     ; preds = %if.else.2164
  %1259 = load i8*, i8** %arg, align 8, !tbaa !1
  %1260 = load i8, i8* %1259, align 1, !tbaa !11
  %conv2171 = sext i8 %1260 to i32
  %cmp2172 = icmp eq i32 %conv2171, 50
  br i1 %cmp2172, label %if.then.2174, label %if.else.2176

if.then.2174:                                     ; preds = %if.else.2170
  %1261 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX2175 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1261, i32 0, i32 18
  store i32 2, i32* %experimentalX2175, align 4, !tbaa !45
  br label %if.end.2206

if.else.2176:                                     ; preds = %if.else.2170
  %1262 = load i8*, i8** %arg, align 8, !tbaa !1
  %1263 = load i8, i8* %1262, align 1, !tbaa !11
  %conv2177 = sext i8 %1263 to i32
  %cmp2178 = icmp eq i32 %conv2177, 51
  br i1 %cmp2178, label %if.then.2180, label %if.else.2182

if.then.2180:                                     ; preds = %if.else.2176
  %1264 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX2181 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1264, i32 0, i32 18
  store i32 3, i32* %experimentalX2181, align 4, !tbaa !45
  br label %if.end.2205

if.else.2182:                                     ; preds = %if.else.2176
  %1265 = load i8*, i8** %arg, align 8, !tbaa !1
  %1266 = load i8, i8* %1265, align 1, !tbaa !11
  %conv2183 = sext i8 %1266 to i32
  %cmp2184 = icmp eq i32 %conv2183, 52
  br i1 %cmp2184, label %if.then.2186, label %if.else.2188

if.then.2186:                                     ; preds = %if.else.2182
  %1267 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX2187 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1267, i32 0, i32 18
  store i32 4, i32* %experimentalX2187, align 4, !tbaa !45
  br label %if.end.2204

if.else.2188:                                     ; preds = %if.else.2182
  %1268 = load i8*, i8** %arg, align 8, !tbaa !1
  %1269 = load i8, i8* %1268, align 1, !tbaa !11
  %conv2189 = sext i8 %1269 to i32
  %cmp2190 = icmp eq i32 %conv2189, 53
  br i1 %cmp2190, label %if.then.2192, label %if.else.2194

if.then.2192:                                     ; preds = %if.else.2188
  %1270 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX2193 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1270, i32 0, i32 18
  store i32 5, i32* %experimentalX2193, align 4, !tbaa !45
  br label %if.end.2203

if.else.2194:                                     ; preds = %if.else.2188
  %1271 = load i8*, i8** %arg, align 8, !tbaa !1
  %1272 = load i8, i8* %1271, align 1, !tbaa !11
  %conv2195 = sext i8 %1272 to i32
  %cmp2196 = icmp eq i32 %conv2195, 54
  br i1 %cmp2196, label %if.then.2198, label %if.else.2200

if.then.2198:                                     ; preds = %if.else.2194
  %1273 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalX2199 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1273, i32 0, i32 18
  store i32 6, i32* %experimentalX2199, align 4, !tbaa !45
  br label %if.end.2202

if.else.2200:                                     ; preds = %if.else.2194
  %1274 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1275 = load i8*, i8** %programName, align 8, !tbaa !1
  %1276 = load i8*, i8** %arg, align 8, !tbaa !1
  %call2201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1274, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.150, i32 0, i32 0), i8* %1275, i8* %1276)
  store i32 1, i32* %err, align 4, !tbaa !10
  br label %if.end.2202

if.end.2202:                                      ; preds = %if.else.2200, %if.then.2198
  br label %if.end.2203

if.end.2203:                                      ; preds = %if.end.2202, %if.then.2192
  br label %if.end.2204

if.end.2204:                                      ; preds = %if.end.2203, %if.then.2186
  br label %if.end.2205

if.end.2205:                                      ; preds = %if.end.2204, %if.then.2180
  br label %if.end.2206

if.end.2206:                                      ; preds = %if.end.2205, %if.then.2174
  br label %if.end.2207

if.end.2207:                                      ; preds = %if.end.2206, %if.then.2168
  br label %if.end.2208

if.end.2208:                                      ; preds = %if.end.2207, %if.then.2162
  br label %sw.epilog

sw.bb.2209:                                       ; preds = %if.end.2062
  %1277 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalY = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1277, i32 0, i32 19
  store i32 1, i32* %experimentalY, align 4, !tbaa !46
  br label %sw.epilog

sw.bb.2210:                                       ; preds = %if.end.2062
  %1278 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %experimentalZ = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1278, i32 0, i32 20
  store i32 1, i32* %experimentalZ, align 4, !tbaa !47
  br label %sw.epilog

sw.bb.2211:                                       ; preds = %if.end.2062
  %1279 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality2212 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1279, i32 0, i32 6
  store i32 9, i32* %quality2212, align 4, !tbaa !36
  br label %sw.epilog

sw.bb.2213:                                       ; preds = %if.end.2062
  %1280 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1281 = load i8*, i8** %programName, align 8, !tbaa !1
  %1282 = load i8*, i8** %arg, align 8, !tbaa !1
  %call2214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1280, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.151, i32 0, i32 0), i8* %1281, i8* %1282)
  br label %sw.epilog

sw.bb.2215:                                       ; preds = %if.end.2062
  store i32 1, i32* %argUsed, align 4, !tbaa !10
  %1283 = load i8*, i8** %arg, align 8, !tbaa !1
  %1284 = load i8, i8* %1283, align 1, !tbaa !11
  %conv2216 = sext i8 %1284 to i32
  %cmp2217 = icmp eq i32 %conv2216, 110
  br i1 %cmp2217, label %if.then.2219, label %if.else.2220

if.then.2219:                                     ; preds = %sw.bb.2215
  %1285 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %emphasis = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1285, i32 0, i32 38
  store i32 0, i32* %emphasis, align 4, !tbaa !48
  br label %if.end.2236

if.else.2220:                                     ; preds = %sw.bb.2215
  %1286 = load i8*, i8** %arg, align 8, !tbaa !1
  %1287 = load i8, i8* %1286, align 1, !tbaa !11
  %conv2221 = sext i8 %1287 to i32
  %cmp2222 = icmp eq i32 %conv2221, 53
  br i1 %cmp2222, label %if.then.2224, label %if.else.2226

if.then.2224:                                     ; preds = %if.else.2220
  %1288 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %emphasis2225 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1288, i32 0, i32 38
  store i32 1, i32* %emphasis2225, align 4, !tbaa !48
  br label %if.end.2235

if.else.2226:                                     ; preds = %if.else.2220
  %1289 = load i8*, i8** %arg, align 8, !tbaa !1
  %1290 = load i8, i8* %1289, align 1, !tbaa !11
  %conv2227 = sext i8 %1290 to i32
  %cmp2228 = icmp eq i32 %conv2227, 99
  br i1 %cmp2228, label %if.then.2230, label %if.else.2232

if.then.2230:                                     ; preds = %if.else.2226
  %1291 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %emphasis2231 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1291, i32 0, i32 38
  store i32 3, i32* %emphasis2231, align 4, !tbaa !48
  br label %if.end.2234

if.else.2232:                                     ; preds = %if.else.2226
  %1292 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1293 = load i8*, i8** %programName, align 8, !tbaa !1
  %1294 = load i8*, i8** %arg, align 8, !tbaa !1
  %call2233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1292, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.152, i32 0, i32 0), i8* %1293, i8* %1294)
  store i32 1, i32* %err, align 4, !tbaa !10
  br label %if.end.2234

if.end.2234:                                      ; preds = %if.else.2232, %if.then.2230
  br label %if.end.2235

if.end.2235:                                      ; preds = %if.end.2234, %if.then.2224
  br label %if.end.2236

if.end.2236:                                      ; preds = %if.end.2235, %if.then.2219
  br label %sw.epilog

sw.bb.2237:                                       ; preds = %if.end.2062
  %1295 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %copyright = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1295, i32 0, i32 12
  store i32 1, i32* %copyright, align 4, !tbaa !49
  br label %sw.epilog

sw.bb.2238:                                       ; preds = %if.end.2062
  %1296 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %original = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1296, i32 0, i32 13
  store i32 0, i32* %original, align 4, !tbaa !50
  br label %sw.epilog

sw.bb.2239:                                       ; preds = %if.end.2062
  %1297 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %1298 = load i8*, i8** %programName, align 8, !tbaa !1
  call void @lame_help(%struct.lame_global_flags* %1297, i8* %1298)
  br label %sw.default

sw.default:                                       ; preds = %if.end.2062, %sw.bb.2239
  %1299 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1300 = load i8*, i8** %programName, align 8, !tbaa !1
  %1301 = load i8, i8* %c, align 1, !tbaa !11
  %conv2240 = sext i8 %1301 to i32
  %call2241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1299, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.153, i32 0, i32 0), i8* %1300, i32 %conv2240)
  store i32 1, i32* %err, align 4, !tbaa !10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2238, %sw.bb.2237, %if.end.2236, %sw.bb.2213, %sw.bb.2211, %sw.bb.2210, %sw.bb.2209, %if.end.2208, %sw.bb.2157, %sw.bb.2155, %sw.bb.2154, %sw.bb.2151, %sw.bb.2149, %sw.bb.2146, %sw.bb.2145, %sw.bb.2144, %sw.bb.2142, %sw.bb.2141, %sw.bb.2138, %sw.bb.2133, %sw.bb.2126, %if.end.2125, %if.end.2115, %if.end.2100
  %1302 = load i32, i32* %argUsed, align 4, !tbaa !10
  %tobool2242 = icmp ne i32 %1302, 0
  br i1 %tobool2242, label %if.then.2243, label %if.end.2250

if.then.2243:                                     ; preds = %sw.epilog
  %1303 = load i8*, i8** %arg, align 8, !tbaa !1
  %1304 = load i8*, i8** %token, align 8, !tbaa !1
  %cmp2244 = icmp eq i8* %1303, %1304
  br i1 %cmp2244, label %if.then.2246, label %if.else.2247

if.then.2246:                                     ; preds = %if.then.2243
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i32 0, i32 0), i8** %token, align 8, !tbaa !1
  br label %if.end.2249

if.else.2247:                                     ; preds = %if.then.2243
  %1305 = load i32, i32* %i, align 4, !tbaa !10
  %inc2248 = add nsw i32 %1305, 1
  store i32 %inc2248, i32* %i, align 4, !tbaa !10
  br label %if.end.2249

if.end.2249:                                      ; preds = %if.else.2247, %if.then.2246
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.110, i32 0, i32 0), i8** %arg, align 8, !tbaa !1
  store i32 0, i32* %argUsed, align 4, !tbaa !10
  br label %if.end.2250

if.end.2250:                                      ; preds = %if.end.2249, %sw.epilog
  br label %while.cond.2055

while.end:                                        ; preds = %while.cond.2055
  br label %if.end.2251

if.end.2251:                                      ; preds = %while.end, %if.end.2052
  br label %if.end.2274

if.else.2252:                                     ; preds = %while.body
  %1306 = load i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i64 0), align 1, !tbaa !11
  %conv2253 = sext i8 %1306 to i32
  %cmp2254 = icmp eq i32 %conv2253, 0
  br i1 %cmp2254, label %if.then.2256, label %if.else.2260

if.then.2256:                                     ; preds = %if.else.2252
  %1307 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom2257 = sext i32 %1307 to i64
  %1308 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx2258 = getelementptr inbounds i8*, i8** %1308, i64 %idxprom2257
  %1309 = load i8*, i8** %arrayidx2258, align 8, !tbaa !1
  %call2259 = call i8* @strncpy(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i32 0), i8* %1309, i64 300) #3
  br label %if.end.2273

if.else.2260:                                     ; preds = %if.else.2252
  %1310 = load i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i64 0), align 1, !tbaa !11
  %conv2261 = sext i8 %1310 to i32
  %cmp2262 = icmp eq i32 %conv2261, 0
  br i1 %cmp2262, label %if.then.2264, label %if.else.2268

if.then.2264:                                     ; preds = %if.else.2260
  %1311 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom2265 = sext i32 %1311 to i64
  %1312 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx2266 = getelementptr inbounds i8*, i8** %1312, i64 %idxprom2265
  %1313 = load i8*, i8** %arrayidx2266, align 8, !tbaa !1
  %call2267 = call i8* @strncpy(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i32 0), i8* %1313, i64 300) #3
  br label %if.end.2272

if.else.2268:                                     ; preds = %if.else.2260
  %1314 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %1315 = load i8*, i8** %programName, align 8, !tbaa !1
  %1316 = load i32, i32* %i, align 4, !tbaa !10
  %idxprom2269 = sext i32 %1316 to i64
  %1317 = load i8**, i8*** %argv.addr, align 8, !tbaa !1
  %arrayidx2270 = getelementptr inbounds i8*, i8** %1317, i64 %idxprom2269
  %1318 = load i8*, i8** %arrayidx2270, align 8, !tbaa !1
  %call2271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1314, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.154, i32 0, i32 0), i8* %1315, i8* %1318)
  store i32 1, i32* %err, align 4, !tbaa !10
  br label %if.end.2272

if.end.2272:                                      ; preds = %if.else.2268, %if.then.2264
  br label %if.end.2273

if.end.2273:                                      ; preds = %if.end.2272, %if.then.2256
  br label %if.end.2274

if.end.2274:                                      ; preds = %if.end.2273, %if.end.2251
  %1319 = bitcast i32* %argUsed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1319) #3
  %1320 = bitcast i8** %nextArg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1320) #3
  %1321 = bitcast i8** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1321) #3
  %1322 = bitcast i8** %token to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1322) #3
  call void @llvm.lifetime.end(i64 1, i8* %c) #3
  br label %while.cond

while.end.2275:                                   ; preds = %land.end
  %1323 = load i32, i32* %err, align 4, !tbaa !10
  %tobool2276 = icmp ne i32 %1323, 0
  br i1 %tobool2276, label %if.then.2281, label %lor.lhs.false.2277

lor.lhs.false.2277:                               ; preds = %while.end.2275
  %1324 = load i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i64 0), align 1, !tbaa !11
  %conv2278 = sext i8 %1324 to i32
  %cmp2279 = icmp eq i32 %conv2278, 0
  br i1 %cmp2279, label %if.then.2281, label %if.end.2282

if.then.2281:                                     ; preds = %lor.lhs.false.2277, %while.end.2275
  %1325 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %1326 = load i8*, i8** %programName, align 8, !tbaa !1
  call void @lame_usage(%struct.lame_global_flags* %1325, i8* %1326)
  br label %if.end.2282

if.end.2282:                                      ; preds = %if.then.2281, %lor.lhs.false.2277
  %1327 = load i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i64 0), align 1, !tbaa !11
  %conv2283 = sext i8 %1327 to i32
  %cmp2284 = icmp eq i32 %conv2283, 45
  br i1 %cmp2284, label %if.then.2286, label %if.end.2288

if.then.2286:                                     ; preds = %if.end.2282
  %1328 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %silent2287 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1328, i32 0, i32 7
  store i32 1, i32* %silent2287, align 4, !tbaa !44
  br label %if.end.2288

if.end.2288:                                      ; preds = %if.then.2286, %if.end.2282
  %1329 = load i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i64 0), align 1, !tbaa !11
  %conv2289 = sext i8 %1329 to i32
  %cmp2290 = icmp eq i32 %conv2289, 0
  br i1 %cmp2290, label %if.then.2292, label %if.end.2302

if.then.2292:                                     ; preds = %if.end.2288
  %1330 = load i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i64 0), align 1, !tbaa !11
  %conv2293 = sext i8 %1330 to i32
  %cmp2294 = icmp eq i32 %conv2293, 45
  br i1 %cmp2294, label %if.then.2296, label %if.else.2298

if.then.2296:                                     ; preds = %if.then.2292
  %call2297 = call i8* @strcpy(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i32 0, i32 0)) #3
  br label %if.end.2301

if.else.2298:                                     ; preds = %if.then.2292
  %call2299 = call i8* @strncpy(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i32 0), i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i32 0), i64 296) #3
  %call2300 = call i8* @strncat(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), i64 4) #3
  br label %if.end.2301

if.end.2301:                                      ; preds = %if.else.2298, %if.then.2296
  br label %if.end.2302

if.end.2302:                                      ; preds = %if.end.2301, %if.end.2288
  %1331 = load i8, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @outPath, i32 0, i64 0), align 1, !tbaa !11
  %conv2303 = sext i8 %1331 to i32
  %cmp2304 = icmp eq i32 %conv2303, 45
  br i1 %cmp2304, label %if.then.2306, label %if.end.2312

if.then.2306:                                     ; preds = %if.end.2302
  %1332 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %bWriteVbrTag2307 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1332, i32 0, i32 5
  store i32 0, i32* %bWriteVbrTag2307, align 4, !tbaa !40
  %1333 = load i32, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  %tobool2308 = icmp ne i32 %1333, 0
  br i1 %tobool2308, label %if.then.2309, label %if.end.2311

if.then.2309:                                     ; preds = %if.then.2306
  store i32 0, i32* getelementptr inbounds (%struct.ID3TAGDATA, %struct.ID3TAGDATA* @id3tag, i32 0, i32 0), align 4, !tbaa !14
  %1334 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !1
  %call2310 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1334, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.157, i32 0, i32 0))
  br label %if.end.2311

if.end.2311:                                      ; preds = %if.then.2309, %if.then.2306
  br label %if.end.2312

if.end.2312:                                      ; preds = %if.end.2311, %if.end.2302
  %1335 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format2313 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1335, i32 0, i32 29
  %1336 = load i32, i32* %input_format2313, align 4, !tbaa !19
  %cmp2314 = icmp ne i32 %1336, 3
  br i1 %cmp2314, label %if.then.2316, label %if.end.2382

if.then.2316:                                     ; preds = %if.end.2312
  %1337 = bitcast i64* %__s1_len2318 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1337) #3
  %1338 = bitcast i64* %__s2_len2320 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1338) #3
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i64 1) to i64), i64 ptrtoint ([5 x i8]* @.str.156 to i64)), i64 1), label %land.lhs.true.2322, label %cond.false.2371

land.lhs.true.2322:                               ; preds = %if.then.2316
  store i64 4, i64* %__s2_len2320, align 8, !tbaa !16
  %1339 = load i64, i64* %__s2_len2320, align 8, !tbaa !16
  %cmp2323 = icmp ult i64 %1339, 4
  br i1 %cmp2323, label %cond.true.2325, label %cond.false.2371

cond.true.2325:                                   ; preds = %land.lhs.true.2322
  %1340 = bitcast i8** %__s12327 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1340) #3
  %call2328 = call i64 @strlen(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i32 0)) #8
  %sub2329 = sub i64 %call2328, 4
  %arrayidx2330 = getelementptr inbounds [300 x i8], [300 x i8]* @inPath, i32 0, i64 %sub2329
  store i8* %arrayidx2330, i8** %__s12327, align 8, !tbaa !1
  %1341 = bitcast i32* %__result2332 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1341) #3
  %1342 = load i8*, i8** %__s12327, align 8, !tbaa !1
  %arrayidx2333 = getelementptr inbounds i8, i8* %1342, i64 0
  %1343 = load i8, i8* %arrayidx2333, align 1, !tbaa !11
  %conv2334 = zext i8 %1343 to i32
  %1344 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0), align 1, !tbaa !11
  %conv2335 = zext i8 %1344 to i32
  %sub2336 = sub nsw i32 %conv2334, %conv2335
  store i32 %sub2336, i32* %__result2332, align 4, !tbaa !10
  %1345 = load i64, i64* %__s2_len2320, align 8, !tbaa !16
  %cmp2337 = icmp ugt i64 %1345, 0
  br i1 %cmp2337, label %land.lhs.true.2339, label %if.end.2369

land.lhs.true.2339:                               ; preds = %cond.true.2325
  %1346 = load i32, i32* %__result2332, align 4, !tbaa !10
  %cmp2340 = icmp eq i32 %1346, 0
  br i1 %cmp2340, label %if.then.2342, label %if.end.2369

if.then.2342:                                     ; preds = %land.lhs.true.2339
  %1347 = load i8*, i8** %__s12327, align 8, !tbaa !1
  %arrayidx2343 = getelementptr inbounds i8, i8* %1347, i64 1
  %1348 = load i8, i8* %arrayidx2343, align 1, !tbaa !11
  %conv2344 = zext i8 %1348 to i32
  %1349 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i64 1), align 1, !tbaa !11
  %conv2345 = zext i8 %1349 to i32
  %sub2346 = sub nsw i32 %conv2344, %conv2345
  store i32 %sub2346, i32* %__result2332, align 4, !tbaa !10
  %1350 = load i64, i64* %__s2_len2320, align 8, !tbaa !16
  %cmp2347 = icmp ugt i64 %1350, 1
  br i1 %cmp2347, label %land.lhs.true.2349, label %if.end.2368

land.lhs.true.2349:                               ; preds = %if.then.2342
  %1351 = load i32, i32* %__result2332, align 4, !tbaa !10
  %cmp2350 = icmp eq i32 %1351, 0
  br i1 %cmp2350, label %if.then.2352, label %if.end.2368

if.then.2352:                                     ; preds = %land.lhs.true.2349
  %1352 = load i8*, i8** %__s12327, align 8, !tbaa !1
  %arrayidx2353 = getelementptr inbounds i8, i8* %1352, i64 2
  %1353 = load i8, i8* %arrayidx2353, align 1, !tbaa !11
  %conv2354 = zext i8 %1353 to i32
  %1354 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i64 2), align 1, !tbaa !11
  %conv2355 = zext i8 %1354 to i32
  %sub2356 = sub nsw i32 %conv2354, %conv2355
  store i32 %sub2356, i32* %__result2332, align 4, !tbaa !10
  %1355 = load i64, i64* %__s2_len2320, align 8, !tbaa !16
  %cmp2357 = icmp ugt i64 %1355, 2
  br i1 %cmp2357, label %land.lhs.true.2359, label %if.end.2367

land.lhs.true.2359:                               ; preds = %if.then.2352
  %1356 = load i32, i32* %__result2332, align 4, !tbaa !10
  %cmp2360 = icmp eq i32 %1356, 0
  br i1 %cmp2360, label %if.then.2362, label %if.end.2367

if.then.2362:                                     ; preds = %land.lhs.true.2359
  %1357 = load i8*, i8** %__s12327, align 8, !tbaa !1
  %arrayidx2363 = getelementptr inbounds i8, i8* %1357, i64 3
  %1358 = load i8, i8* %arrayidx2363, align 1, !tbaa !11
  %conv2364 = zext i8 %1358 to i32
  %1359 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i64 3), align 1, !tbaa !11
  %conv2365 = zext i8 %1359 to i32
  %sub2366 = sub nsw i32 %conv2364, %conv2365
  store i32 %sub2366, i32* %__result2332, align 4, !tbaa !10
  br label %if.end.2367

if.end.2367:                                      ; preds = %if.then.2362, %land.lhs.true.2359, %if.then.2352
  br label %if.end.2368

if.end.2368:                                      ; preds = %if.end.2367, %land.lhs.true.2349, %if.then.2342
  br label %if.end.2369

if.end.2369:                                      ; preds = %if.end.2368, %land.lhs.true.2339, %cond.true.2325
  %1360 = load i32, i32* %__result2332, align 4, !tbaa !10
  store i32 %1360, i32* %tmp2370, !tbaa !10
  %1361 = bitcast i32* %__result2332 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1361) #3
  %1362 = bitcast i8** %__s12327 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1362) #3
  %1363 = load i32, i32* %tmp2370, !tbaa !10
  br label %cond.end.2376

cond.false.2371:                                  ; preds = %land.lhs.true.2322, %if.then.2316
  %call2372 = call i64 @strlen(i8* getelementptr inbounds ([300 x i8], [300 x i8]* @inPath, i32 0, i32 0)) #8
  %sub2373 = sub i64 %call2372, 4
  %arrayidx2374 = getelementptr inbounds [300 x i8], [300 x i8]* @inPath, i32 0, i64 %sub2373
  %call2375 = call i32 @strcmp(i8* %arrayidx2374, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.156, i32 0, i32 0)) #3
  br label %cond.end.2376

cond.end.2376:                                    ; preds = %cond.false.2371, %if.end.2369
  %cond2377 = phi i32 [ %1363, %if.end.2369 ], [ %call2375, %cond.false.2371 ]
  store i32 %cond2377, i32* %tmp2321, !tbaa !10
  %1364 = bitcast i64* %__s2_len2320 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1364) #3
  %1365 = bitcast i64* %__s1_len2318 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1365) #3
  %1366 = load i32, i32* %tmp2321, !tbaa !10
  %tobool2378 = icmp ne i32 %1366, 0
  br i1 %tobool2378, label %if.end.2381, label %if.then.2379

if.then.2379:                                     ; preds = %cond.end.2376
  %1367 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %input_format2380 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1367, i32 0, i32 29
  store i32 3, i32* %input_format2380, align 4, !tbaa !19
  br label %if.end.2381

if.end.2381:                                      ; preds = %if.then.2379, %cond.end.2376
  br label %if.end.2382

if.end.2382:                                      ; preds = %if.end.2381, %if.end.2312
  %1368 = load i32, i32* %autoconvert, align 4, !tbaa !10
  %tobool2383 = icmp ne i32 %1368, 0
  br i1 %tobool2383, label %if.then.2384, label %if.else.2385

if.then.2384:                                     ; preds = %if.end.2382
  %1369 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1369, i32 0, i32 1
  store i32 2, i32* %num_channels, align 4, !tbaa !51
  br label %if.end.2394

if.else.2385:                                     ; preds = %if.end.2382
  %1370 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %mode2386 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1370, i32 0, i32 8
  %1371 = load i32, i32* %mode2386, align 4, !tbaa !34
  %cmp2387 = icmp eq i32 %1371, 3
  br i1 %cmp2387, label %if.then.2389, label %if.else.2391

if.then.2389:                                     ; preds = %if.else.2385
  %1372 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels2390 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1372, i32 0, i32 1
  store i32 1, i32* %num_channels2390, align 4, !tbaa !51
  br label %if.end.2393

if.else.2391:                                     ; preds = %if.else.2385
  %1373 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %num_channels2392 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1373, i32 0, i32 1
  store i32 2, i32* %num_channels2392, align 4, !tbaa !51
  br label %if.end.2393

if.end.2393:                                      ; preds = %if.else.2391, %if.then.2389
  br label %if.end.2394

if.end.2394:                                      ; preds = %if.end.2393, %if.then.2384
  %1374 = load i32, i32* %user_quality, align 4, !tbaa !10
  %tobool2395 = icmp ne i32 %1374, 0
  br i1 %tobool2395, label %if.then.2396, label %if.end.2398

if.then.2396:                                     ; preds = %if.end.2394
  %1375 = load i32, i32* %user_quality, align 4, !tbaa !10
  %1376 = load %struct.lame_global_flags*, %struct.lame_global_flags** %gfp.addr, align 8, !tbaa !1
  %quality2397 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %1376, i32 0, i32 6
  store i32 %1375, i32* %quality2397, align 4, !tbaa !36
  br label %if.end.2398

if.end.2398:                                      ; preds = %if.then.2396, %if.end.2394
  %1377 = bitcast i32* %track to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1377) #3
  %1378 = bitcast i8** %programName to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1378) #3
  %1379 = bitcast i32* %user_quality to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1379) #3
  %1380 = bitcast i32* %autoconvert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1380) #3
  %1381 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1381) #3
  %1382 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1382) #3
  %1383 = bitcast float* %srate to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1383) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare void @id3_inittag(%struct.ID3TAGDATA*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally double @atof(i8* nonnull %__nptr) #5 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call double @strtod(i8* %0, i8** null) #3
  ret double %call
}

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally i32 @atoi(i8* nonnull %__nptr) #5 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %__nptr.addr, align 8, !tbaa !1
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #3
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !8, i64 92}
!6 = !{!"", !7, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !3, i64 120, !8, i64 124, !2, i64 128, !2, i64 136, !8, i64 144, !8, i64 148, !9, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !9, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"float", !3, i64 0}
!10 = !{!8, !8, i64 0}
!11 = !{!3, !3, i64 0}
!12 = !{!6, !2, i64 128}
!13 = !{!6, !2, i64 136}
!14 = !{!15, !8, i64 0}
!15 = !{!"", !8, i64 0, !8, i64 4, !3, i64 8, !3, i64 39, !3, i64 70, !3, i64 101, !3, i64 106, !3, i64 137, !3, i64 265, !3, i64 266}
!16 = !{!7, !7, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!6, !8, i64 16}
!19 = !{!6, !3, i64 120}
!20 = !{!6, !8, i64 104}
!21 = !{!6, !8, i64 100}
!22 = !{!6, !8, i64 160}
!23 = !{!6, !8, i64 148}
!24 = !{!6, !8, i64 72}
!25 = !{!6, !8, i64 196}
!26 = !{!6, !8, i64 144}
!27 = !{!15, !3, i64 266}
!28 = !{!6, !8, i64 112}
!29 = !{!6, !8, i64 108}
!30 = !{!6, !8, i64 116}
!31 = !{!6, !9, i64 152}
!32 = !{!6, !8, i64 48}
!33 = !{!6, !8, i64 96}
!34 = !{!6, !8, i64 36}
!35 = !{!6, !8, i64 40}
!36 = !{!6, !8, i64 28}
!37 = !{!6, !8, i64 44}
!38 = !{!6, !8, i64 88}
!39 = !{!6, !8, i64 12}
!40 = !{!6, !8, i64 24}
!41 = !{!6, !8, i64 124}
!42 = !{!6, !8, i64 60}
!43 = !{!6, !8, i64 156}
!44 = !{!6, !8, i64 32}
!45 = !{!6, !8, i64 76}
!46 = !{!6, !8, i64 80}
!47 = !{!6, !8, i64 84}
!48 = !{!6, !8, i64 164}
!49 = !{!6, !8, i64 52}
!50 = !{!6, !8, i64 56}
!51 = !{!6, !8, i64 8}
