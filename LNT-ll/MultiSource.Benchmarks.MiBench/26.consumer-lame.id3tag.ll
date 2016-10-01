; ModuleID = './MultiSource.Benchmarks.MiBench/26.consumer-lame.id3tag.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ID3TAGDATA = type { i32, i32, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], [128 x i8], [1 x i8], i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@genre_last = global i32 147, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Blues\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Classic Rock\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Dance\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Disco\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Funk\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Grunge\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Hip-Hop\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Jazz\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Metal\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"New Age\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Oldies\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"Pop\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"R&B\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"Rap\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Reggae\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Rock\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Techno\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Industrial\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"Alternative\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Ska\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Death Metal\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Pranks\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Soundtrack\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Euro-Techno\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Ambient\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Trip-Hop\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Vocal\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Jazz+Funk\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Fusion\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Trance\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"Classical\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Instrumental\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Acid\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"House\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Sound Clip\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Gospel\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"AlternRock\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Bass\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Soul\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"Punk\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"Meditative\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"Instrumental Pop\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"Instrumental Rock\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"Ethnic\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"Gothic\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"Darkwave\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Techno-Industrial\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"Electronic\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"Pop-Folk\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"Eurodance\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Dream\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"Southern Rock\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Comedy\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"Cult\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Gangsta\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"Top 40\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"Christian Rap\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"Pop/Funk\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Jungle\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"Native American\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"Cabaret\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"New Wave\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Psychadelic\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"Rave\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"Showtunes\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"Trailer\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Lo-Fi\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Tribal\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Acid Punk\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"Acid Jazz\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"Polka\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"Retro\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"Musical\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"Rock & Roll\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"Hard Rock\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"Folk\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"Folk/Rock\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"National Folk\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"Swing\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"Fast-Fusion\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"Bebob\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Latin\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"Revival\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"Celtic\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"Bluegrass\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"Avantgarde\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"Gothic Rock\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"Progressive Rock\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"Psychedelic Rock\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"Symphonic Rock\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"Slow Rock\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"Big Band\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"Chorus\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"Easy Listening\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"Acoustic\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"Humour\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"Speech\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"Chanson\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"Opera\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"Chamber Music\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"Sonata\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"Symphony\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"Booty Bass\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"Primus\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"Porn Groove\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"Satire\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"Slow Jam\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"Club\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"Tango\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"Samba\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"Folklore\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"Ballad\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"Power Ballad\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"Rhythmic Soul\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"Freestyle\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"Duet\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"Punk Rock\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"Drum Solo\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"A capella\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"Euro-House\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Dance Hall\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"Goa\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"Drum & Bass\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"Club House\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"Hardcore\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"Terror\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"Indie\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"BritPop\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"NegerPunk\00", align 1
@.str.137 = private unnamed_addr constant [11 x i8] c"Polsk Punk\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"Beat\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"Christian Gangsta\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"Heavy Metal\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"Black Metal\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"Crossover\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"Contemporary C\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"Christian Rock\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"Merengue\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"Salsa\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"Thrash Metal\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"Anime\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"JPop\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"SynthPop\00", align 1
@genre_list = global [148 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0)], align 16
@id3tag = common global %struct.ID3TAGDATA zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define void @id3_inittag(%struct.ID3TAGDATA* %tag) #0 {
entry:
  %tag.addr = alloca %struct.ID3TAGDATA*, align 8
  store %struct.ID3TAGDATA* %tag, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %0 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %title = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %title, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #2
  %1 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %artist = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %1, i32 0, i32 3
  %arraydecay1 = getelementptr inbounds [31 x i8], [31 x i8]* %artist, i32 0, i32 0
  %call2 = call i8* @strcpy(i8* %arraydecay1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #2
  %2 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %album = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %2, i32 0, i32 4
  %arraydecay3 = getelementptr inbounds [31 x i8], [31 x i8]* %album, i32 0, i32 0
  %call4 = call i8* @strcpy(i8* %arraydecay3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #2
  %3 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %year = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %3, i32 0, i32 5
  %arraydecay5 = getelementptr inbounds [5 x i8], [5 x i8]* %year, i32 0, i32 0
  %call6 = call i8* @strcpy(i8* %arraydecay5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #2
  %4 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %comment = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %4, i32 0, i32 6
  %arraydecay7 = getelementptr inbounds [31 x i8], [31 x i8]* %comment, i32 0, i32 0
  %call8 = call i8* @strcpy(i8* %arraydecay7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #2
  %5 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %genre = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %5, i32 0, i32 8
  %arrayidx = getelementptr inbounds [1 x i8], [1 x i8]* %genre, i32 0, i64 0
  store i8 -1, i8* %arrayidx, align 1, !tbaa !5
  %6 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %track = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %6, i32 0, i32 9
  store i8 0, i8* %track, align 1, !tbaa !6
  %7 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %7, i32 0, i32 1
  store i32 0, i32* %valid, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @id3_buildtag(%struct.ID3TAGDATA* %tag) #0 {
entry:
  %tag.addr = alloca %struct.ID3TAGDATA*, align 8
  store %struct.ID3TAGDATA* %tag, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %0 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %0, i32 0, i32 7
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)) #2
  %1 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %title = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %1, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [31 x i8], [31 x i8]* %title, i32 0, i32 0
  call void @id3_pad(i8* %arraydecay1, i32 30)
  %2 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext2 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %2, i32 0, i32 7
  %arraydecay3 = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext2, i32 0, i32 0
  %3 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %title4 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %3, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [31 x i8], [31 x i8]* %title4, i32 0, i32 0
  %call6 = call i8* @strncat(i8* %arraydecay3, i8* %arraydecay5, i64 30) #2
  %4 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %artist = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %4, i32 0, i32 3
  %arraydecay7 = getelementptr inbounds [31 x i8], [31 x i8]* %artist, i32 0, i32 0
  call void @id3_pad(i8* %arraydecay7, i32 30)
  %5 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext8 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %5, i32 0, i32 7
  %arraydecay9 = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext8, i32 0, i32 0
  %6 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %artist10 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %6, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [31 x i8], [31 x i8]* %artist10, i32 0, i32 0
  %call12 = call i8* @strncat(i8* %arraydecay9, i8* %arraydecay11, i64 30) #2
  %7 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %album = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %7, i32 0, i32 4
  %arraydecay13 = getelementptr inbounds [31 x i8], [31 x i8]* %album, i32 0, i32 0
  call void @id3_pad(i8* %arraydecay13, i32 30)
  %8 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext14 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %8, i32 0, i32 7
  %arraydecay15 = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext14, i32 0, i32 0
  %9 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %album16 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %9, i32 0, i32 4
  %arraydecay17 = getelementptr inbounds [31 x i8], [31 x i8]* %album16, i32 0, i32 0
  %call18 = call i8* @strncat(i8* %arraydecay15, i8* %arraydecay17, i64 30) #2
  %10 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %year = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %10, i32 0, i32 5
  %arraydecay19 = getelementptr inbounds [5 x i8], [5 x i8]* %year, i32 0, i32 0
  call void @id3_pad(i8* %arraydecay19, i32 4)
  %11 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext20 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %11, i32 0, i32 7
  %arraydecay21 = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext20, i32 0, i32 0
  %12 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %year22 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %12, i32 0, i32 5
  %arraydecay23 = getelementptr inbounds [5 x i8], [5 x i8]* %year22, i32 0, i32 0
  %call24 = call i8* @strncat(i8* %arraydecay21, i8* %arraydecay23, i64 4) #2
  %13 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %comment = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %13, i32 0, i32 6
  %arraydecay25 = getelementptr inbounds [31 x i8], [31 x i8]* %comment, i32 0, i32 0
  call void @id3_pad(i8* %arraydecay25, i32 30)
  %14 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext26 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %14, i32 0, i32 7
  %arraydecay27 = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext26, i32 0, i32 0
  %15 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %comment28 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %15, i32 0, i32 6
  %arraydecay29 = getelementptr inbounds [31 x i8], [31 x i8]* %comment28, i32 0, i32 0
  %call30 = call i8* @strncat(i8* %arraydecay27, i8* %arraydecay29, i64 30) #2
  %16 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %genre = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %16, i32 0, i32 8
  %arraydecay31 = getelementptr inbounds [1 x i8], [1 x i8]* %genre, i32 0, i32 0
  call void @id3_pad(i8* %arraydecay31, i32 1)
  %17 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext32 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %17, i32 0, i32 7
  %arraydecay33 = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext32, i32 0, i32 0
  %18 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %genre34 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %18, i32 0, i32 8
  %arraydecay35 = getelementptr inbounds [1 x i8], [1 x i8]* %genre34, i32 0, i32 0
  %call36 = call i8* @strncat(i8* %arraydecay33, i8* %arraydecay35, i64 1) #2
  %19 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %track = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %19, i32 0, i32 9
  %20 = load i8, i8* %track, align 1, !tbaa !6
  %conv = zext i8 %20 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext38 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %21, i32 0, i32 7
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext38, i32 0, i64 125
  store i8 0, i8* %arrayidx, align 1, !tbaa !5
  %22 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %track39 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %22, i32 0, i32 9
  %23 = load i8, i8* %track39, align 1, !tbaa !6
  %24 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext40 = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %24, i32 0, i32 7
  %arrayidx41 = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext40, i32 0, i64 126
  store i8 %23, i8* %arrayidx41, align 1, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %25, i32 0, i32 1
  store i32 1, i32* %valid, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @id3_pad(i8* %string, i32 %length) #0 {
entry:
  %string.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %l = alloca i32, align 4
  store i8* %string, i8** %string.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !10
  %0 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %1) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %l, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %l, align 4, !tbaa !10
  %3 = load i32, i32* %length.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %l, align 4, !tbaa !10
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 32, i8* %arrayidx, align 1, !tbaa !5
  %6 = load i32, i32* %l, align 4, !tbaa !10
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %l, align 4, !tbaa !10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %l, align 4, !tbaa !10
  %idxprom2 = sext i32 %7 to i64
  %8 = load i8*, i8** %string.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %idxprom2
  store i8 0, i8* %arrayidx3, align 1, !tbaa !5
  %9 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @id3_writetag(i8* %filename, %struct.ID3TAGDATA* %tag) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %tag.addr = alloca %struct.ID3TAGDATA*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store %struct.ID3TAGDATA* %tag, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %valid = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %1, i32 0, i32 1
  %2 = load i32, i32* %valid, align 4, !tbaa !9
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8, !tbaa !1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %tobool1 = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call4 = call i32 @fseek(%struct._IO_FILE* %5, i64 0, i32 2)
  %6 = load %struct.ID3TAGDATA*, %struct.ID3TAGDATA** %tag.addr, align 8, !tbaa !1
  %tagtext = getelementptr inbounds %struct.ID3TAGDATA, %struct.ID3TAGDATA* %6, i32 0, i32 7
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %tagtext, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call5 = call i64 @fwrite(i8* %arraydecay, i64 1, i64 128, %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call6 = call i32 @fclose(%struct._IO_FILE* %8)
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %9 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !3, i64 266}
!7 = !{!"", !8, i64 0, !8, i64 4, !3, i64 8, !3, i64 39, !3, i64 70, !3, i64 101, !3, i64 106, !3, i64 137, !3, i64 265, !3, i64 266}
!8 = !{!"int", !3, i64 0}
!9 = !{!7, !8, i64 4}
!10 = !{!8, !8, i64 0}
