; ModuleID = 'io_lat4.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.QCDheader = type { i32, i8**, i8** }
%union.anon = type { i64 }
%struct.gauge_header = type { i32, [64 x i8], [4 x i32], i32, i32 }
%struct.gauge_file = type { %struct._IO_FILE*, %struct.gauge_header*, i8*, i32, i32*, i32, %struct.gauge_check }
%struct.gauge_check = type { i32, i32 }
%struct.anon = type { i32, [200 x i8], i32, [2 x double] }
%struct.anon.0 = type { i16, i16, i16, i16, [4 x %struct.su3_matrix] }
%struct.anon.1 = type { i16, i16, i16, i16, [4 x %struct.su3_matrix] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"reading Archive header:\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"END_HEADER\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: Node %d %s write error %d\0A\00", align 1
@this_node = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"%s: Node %d %s descrip,write error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"%s: Node %d %s read error %d\0A\00", align 1
@pwrite_gauge_hdr.myname = private unnamed_addr constant [17 x i8] c"pwrite_gauge_hdr\00", align 16
@.str.10 = private unnamed_addr constant [13 x i8] c"magic_number\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"dimensions\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"time_stamp\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@swrite_gauge_hdr.myname = private unnamed_addr constant [17 x i8] c"swrite_gauge_hdr\00", align 16
@gauge_info_keyword = external global [0 x i8*], align 8
@.str.14 = private unnamed_addr constant [57 x i8] c"write_gauge_info_item: WARNING: keyword %s not in table\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"write_gauge_info_item: Unrecognized data type %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c".info\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"write_gauge_info_file: Can't open ascii info file %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%x %x\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"checksums\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@nx = external global i32, align 4
@.str.32 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@ny = external global i32, align 4
@.str.33 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@nz = external global i32, align 4
@.str.34 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@nt = external global i32, align 4
@.str.35 = private unnamed_addr constant [20 x i8] c"Wrote info file %s\0A\00", align 1
@setup_input_gauge_file.myname = private unnamed_addr constant [23 x i8] c"setup_input_gauge_file\00", align 16
@.str.36 = private unnamed_addr constant [21 x i8] c"%s: Can't malloc gf\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"%s: Can't malloc gh\0A\00", align 1
@setup_output_gauge_file.myname = private unnamed_addr constant [24 x i8] c"setup_output_gauge_file\00", align 16
@w_serial_i.myname = private unnamed_addr constant [11 x i8] c"w_serial_i\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"%s: Node %d can't open file %s, error %d\0A\00", align 1
@read_checksum.myname = private unnamed_addr constant [14 x i8] c"read_checksum\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"%s: Checksum violation. Computed %x %x.  Read %x %x.\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"Checksums %x %x OK\0A\00", align 1
@write_checksum.myname = private unnamed_addr constant [15 x i8] c"write_checksum\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"Checksums %x %x\0A\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"w_serial: Attempting serial write to parallel file \0A\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"w_serial: Node 0 can't malloc lbuf\0A\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"w_serial: Node %d fseeko failed error %d file %s\0A\00", align 1
@sites_on_node = external global i32, align 4
@lattice = external global %struct.site*, align 8
@volume = external global i32, align 4
@.str.47 = private unnamed_addr constant [62 x i8] c"w_serial: Node %d gauge configuration write error %d file %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"Saved gauge configuration serially to binary file %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Time stamp %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [55 x i8] c"w_serial_f: Attempting serial close on parallel file \0A\00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"read_site_list: Can't malloc rank2rcv table\0A\00", align 1
@.str.52 = private unnamed_addr constant [49 x i8] c"read_site_list: Node %d site list read error %d\0A\00", align 1
@read_v3_gauge_hdr.myname = private unnamed_addr constant [18 x i8] c"read_v3_gauge_hdr\00", align 16
@.str.53 = private unnamed_addr constant [74 x i8] c"First 4 bytes were zero. Trying to interpret with 64 bit integer format.\0A\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"magic number\00", align 1
@.str.55 = private unnamed_addr constant [49 x i8] c"Reading as old-style gauge field configuration.\0A\00", align 1
@.str.56 = private unnamed_addr constant [67 x i8] c"Reading as old-style gauge field configuration with byte reversal\0A\00", align 1
@.str.57 = private unnamed_addr constant [39 x i8] c"read_v3_gauge_hdr: Can't byte reverse\0A\00", align 1
@.str.58 = private unnamed_addr constant [53 x i8] c"requires size of int32type(%d) = size of double(%d)\0A\00", align 1
@.str.59 = private unnamed_addr constant [49 x i8] c"read_v3_gauge_hdr: Incorrect lattice dimensions \00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"c1\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"c2\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"Old format header parameters are %f %f\0A\00", align 1
@read_1996_gauge_hdr.myname = private unnamed_addr constant [20 x i8] c"read_1996_gauge_hdr\00", align 16
@.str.64 = private unnamed_addr constant [50 x i8] c"Reading as 1996-style gauge field configuration.\0A\00", align 1
@.str.65 = private unnamed_addr constant [68 x i8] c"Reading as 1996-style gauge field configuration with byte reversal\0A\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"read_1996_gauge_hdr: Can't byte reverse\0A\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"read_1996_gauge_hdr: Incorrect lattice dimensions \00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"header size\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"n_descript\00", align 1
@.str.70 = private unnamed_addr constant [55 x i8] c"read_1996_gauge_hdr: gauge field descriptor length %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c" exceeds allocated space %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"descrip\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"gauge_field.descript: %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"n_param\00", align 1
@.str.75 = private unnamed_addr constant [61 x i8] c"read_1996_gauge_hdr: gauge field parameter vector length %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"gauge param\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"gauge_field.param[%d] = %f\0A\00", align 1
@read_gauge_hdr.myname = private unnamed_addr constant [15 x i8] c"read_gauge_hdr\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"reading as archive format\0A\00", align 1
@.str.79 = private unnamed_addr constant [46 x i8] c"reading as archive format with byte reversal\0A\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"%s: Can't byte reverse\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"Reading with byte reversal\0A\00", align 1
@.str.82 = private unnamed_addr constant [67 x i8] c"%s: Unrecognized magic number in gauge configuration file header.\0A\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"Expected %x but read %x\0A\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"Expected %s but read %s\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.85 = private unnamed_addr constant [56 x i8] c"%s: Must use reload_serial with archive files for now.\0A\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"DIMENSION_1\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"DIMENSION_1 not present\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"DIMENSION_2\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"DIMENSION_2 not present\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"DIMENSION_3\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"DIMENSION_3 not present\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"DIMENSION_4\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"DIMENSION_4 not present\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"CHECKSUM\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"CHECKSUM not present\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"%s: Incorrect lattice dimensions \00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"time stamp\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"order parameter\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.100 = private unnamed_addr constant [50 x i8] c"r_serial_i: Node %d can't open file %s, error %d\0A\00", align 1
@r_serial.myname = private unnamed_addr constant [9 x i8] c"r_serial\00", align 1
@.str.101 = private unnamed_addr constant [48 x i8] c"%s: Attempting serial read from parallel file \0A\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"%s: Node %d can't malloc lbuf\0A\00", align 1
@.str.103 = private unnamed_addr constant [43 x i8] c"%s: Node 0 fseeko failed error %d file %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [55 x i8] c"%s: node %d gauge configuration read error %d file %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [59 x i8] c"Restored binary gauge configuration serially from file %s\0A\00", align 1
@r_serial_arch.myname = private unnamed_addr constant [14 x i8] c"r_serial_arch\00", align 1
@.str.106 = private unnamed_addr constant [55 x i8] c"%s: Node %d can't malloc uin buffer to read timeslice\0A\00", align 1
@.str.107 = private unnamed_addr constant [41 x i8] c"recompile with smaller read buffer: uin\0A\00", align 1
@.str.108 = private unnamed_addr constant [60 x i8] c"Restored archive gauge configuration serially from file %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [56 x i8] c"Archive style checksum violation: computed %x, read %x\0A\00", align 1
@.str.110 = private unnamed_addr constant [32 x i8] c"Archive style checksum = %x OK\0A\00", align 1
@.str.111 = private unnamed_addr constant [55 x i8] c"r_serial_f: Attempting serial close on parallel file \0A\00", align 1
@.str.112 = private unnamed_addr constant [44 x i8] c"write_site_list: node %d can't malloc cbuf\0A\00", align 1
@.str.113 = private unnamed_addr constant [53 x i8] c"write_site_list: node %d g_seek %ld failed errno %d\0A\00", align 1
@.str.114 = private unnamed_addr constant [48 x i8] c"write_site_list: Node %d coords write error %d\0A\00", align 1
@.str.115 = private unnamed_addr constant [53 x i8] c"parallel_open: Node %d can't open file %s, error %d\0A\00", align 1
@w_parallel_setup.myname = private unnamed_addr constant [17 x i8] c"w_parallel_setup\00", align 16
@.str.116 = private unnamed_addr constant [47 x i8] c"%s: Attempting parallel write to serial file.\0A\00", align 1
@.str.117 = private unnamed_addr constant [48 x i8] c"%s: Node %d g_seek %ld failed error %d file %s\0A\00", align 1
@w_parallel.myname = private unnamed_addr constant [11 x i8] c"w_parallel\00", align 1
@.str.118 = private unnamed_addr constant [48 x i8] c"%s: site_block incommensurate with buffer size\0A\00", align 1
@number_of_nodes = external global i32, align 4
@.str.119 = private unnamed_addr constant [56 x i8] c"%s: Node %d gauge configuration write error %d file %s\0A\00", align 1
@.str.120 = private unnamed_addr constant [61 x i8] c"%s: Node %d g_seek %ld for checksum failed error %d file %s\0A\00", align 1
@.str.121 = private unnamed_addr constant [57 x i8] c"Saved gauge configuration in parallel to binary file %s\0A\00", align 1
@w_checkpoint.myname = private unnamed_addr constant [13 x i8] c"w_checkpoint\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"Saved gauge configuration checkpoint file %s\0A\00", align 1
@.str.123 = private unnamed_addr constant [57 x i8] c"w_parallel_f: Attempting parallel close on serial file.\0A\00", align 1
@.str.124 = private unnamed_addr constant [52 x i8] c"r_parallel_i: Node %d can't open file %s, error %d\0A\00", align 1
@r_parallel.myname = private unnamed_addr constant [11 x i8] c"r_parallel\00", align 1
@.str.125 = private unnamed_addr constant [48 x i8] c"%s: Attempting parallel read from serial file.\0A\00", align 1
@.str.126 = private unnamed_addr constant [37 x i8] c"BOTCH. Node %d received %d %d %d %d\0A\00", align 1
@.str.127 = private unnamed_addr constant [62 x i8] c"Restored binary gauge configuration in parallel from file %s\0A\00", align 1
@.str.128 = private unnamed_addr constant [60 x i8] c"%s: Node 0 g_seek %ld for checksum failed error %d file %s\0A\00", align 1
@.str.129 = private unnamed_addr constant [57 x i8] c"r_parallel_f: Attempting parallel close on serial file.\0A\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.131 = private unnamed_addr constant [30 x i8] c"Can't open file %s, error %d\0A\00", align 1
@.str.132 = private unnamed_addr constant [45 x i8] c"restore_ascii: Error reading version number\0A\00", align 1
@.str.133 = private unnamed_addr constant [59 x i8] c"restore_ascii: Incorrect version number in lattice header\0A\00", align 1
@.str.134 = private unnamed_addr constant [27 x i8] c"  read %d but expected %d\0A\00", align 1
@.str.135 = private unnamed_addr constant [26 x i8] c"%*[ \0C\0A\0D\09\0B]%*[\22]%[^\22]%*[\22]\00", align 1
@.str.136 = private unnamed_addr constant [41 x i8] c"restore_ascii: Error reading time stamp\0A\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"count %d time_stamp %s\0A\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"%d%d%d%d\00", align 1
@.str.139 = private unnamed_addr constant [44 x i8] c"restore_ascii: Error in reading dimensions\0A\00", align 1
@.str.140 = private unnamed_addr constant [51 x i8] c"restore_ascii: Incorrect lattice size %d,%d,%d,%d\0A\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"%lf%lf\0A\00", align 1
@.str.142 = private unnamed_addr constant [38 x i8] c"restore_ascii: gauge link read error\0A\00", align 1
@.str.143 = private unnamed_addr constant [50 x i8] c"Restored gauge configuration from ascii file  %s\0A\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.145 = private unnamed_addr constant [33 x i8] c"Error in writing version number\0A\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.147 = private unnamed_addr constant [29 x i8] c"Error in writing time stamp\0A\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"%d\09%d\09%d\09%d\0A\00", align 1
@.str.149 = private unnamed_addr constant [29 x i8] c"Error in writing dimensions\0A\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"%.7e\09%.7e\0A\00", align 1
@.str.151 = private unnamed_addr constant [27 x i8] c"Write error in save_ascii\0A\00", align 1
@.str.152 = private unnamed_addr constant [44 x i8] c"Saved gauge configuration to ascii file %s\0A\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"trace = %f\0A\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"chksum_x = %x\0A\00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"chksum_u = %12u\0A\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c"plaquette = %f\0A\00", align 1
@.str.157 = private unnamed_addr constant [38 x i8] c"Writing archive format lattice to %s\0A\00", align 1
@.str.158 = private unnamed_addr constant [31 x i8] c"error opening output file: %s\0A\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"BEGIN_HEADER\0A\00", align 1
@.str.160 = private unnamed_addr constant [25 x i8] c"DATATYPE = 4D_SU3_GAUGE\0A\00", align 1
@.str.161 = private unnamed_addr constant [18 x i8] c"DIMENSION_1 = %d\0A\00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c"DIMENSION_2 = %d\0A\00", align 1
@.str.163 = private unnamed_addr constant [18 x i8] c"DIMENSION_3 = %d\0A\00", align 1
@.str.164 = private unnamed_addr constant [18 x i8] c"DIMENSION_4 = %d\0A\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"CHECKSUM = %x\0A\00", align 1
@.str.166 = private unnamed_addr constant [20 x i8] c"LINK_TRACE = %.10f\0A\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"PLAQUETTE = %.10f\0A\00", align 1
@.str.168 = private unnamed_addr constant [18 x i8] c"ENSEMBLE_ID = %s\0A\00", align 1
@ensemble_id = external global [256 x i8], align 16
@.str.169 = private unnamed_addr constant [22 x i8] c"SEQUENCE_NUMBER = %d\0A\00", align 1
@sequence_number = external global i32, align 4
@.str.170 = private unnamed_addr constant [33 x i8] c"MILC_INFO = -------BEGIN-------\0A\00", align 1
@.str.171 = private unnamed_addr constant [33 x i8] c"MILC_INFO = --------END--------\0A\00", align 1
@.str.172 = private unnamed_addr constant [29 x i8] c"can't malloc uout timeslice\0A\00", align 1
@.str.173 = private unnamed_addr constant [18 x i8] c"fwrite bombed...\0A\00", align 1
@.str.174 = private unnamed_addr constant [29 x i8] c"Wrote archive gauge file %s\0A\00", align 1
@.str.175 = private unnamed_addr constant [49 x i8] c"Parallel archive saves are not implemented, yet\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @qcdhdr_get_str(i8* %s, %struct.QCDheader* %hdr, i8** %q) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %hdr.addr = alloca %struct.QCDheader*, align 8
  %q.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct.QCDheader* %hdr, %struct.QCDheader** %hdr.addr, align 8
  store i8** %q, i8*** %q.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %ntoken = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %1, i32 0, i32 0
  %2 = load i32, i32* %ntoken, align 4
  %conv = trunc i32 %2 to i8
  %conv1 = sext i8 %conv to i32
  %cmp = icmp slt i32 %0, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %token = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %5, i32 0, i32 1
  %6 = load i8**, i8*** %token, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %3, i8* %7) #6
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %value = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %9, i32 0, i32 2
  %10 = load i8**, i8*** %value, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %10, i64 %idxprom5
  %11 = load i8*, i8** %arrayidx6, align 8
  %12 = load i8**, i8*** %q.addr, align 8
  store i8* %11, i8** %12, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8**, i8*** %q.addr, align 8
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @qcdhdr_get_int(i8* %s, %struct.QCDheader* %hdr, i32* %q) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %hdr.addr = alloca %struct.QCDheader*, align 8
  %q.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct.QCDheader* %hdr, %struct.QCDheader** %hdr.addr, align 8
  store i32* %q, i32** %q.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %call = call i32 @qcdhdr_get_str(i8* %0, %struct.QCDheader* %1, i8** %p)
  %2 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load i32*, i32** %q.addr, align 8
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %4) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @qcdhdr_get_int32x(i8* %s, %struct.QCDheader* %hdr, i32* %q) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %hdr.addr = alloca %struct.QCDheader*, align 8
  %q.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  %r = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store %struct.QCDheader* %hdr, %struct.QCDheader** %hdr.addr, align 8
  store i32* %q, i32** %q.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %call = call i32 @qcdhdr_get_str(i8* %0, %struct.QCDheader* %1, i8** %p)
  %2 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p, align 8
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %r) #5
  %4 = load i32, i32* %r, align 4
  %5 = load i32*, i32** %q.addr, align 8
  store i32 %4, i32* %5, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @qcdhdr_get_double(i8* %s, %struct.QCDheader* %hdr, double* %q) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %hdr.addr = alloca %struct.QCDheader*, align 8
  %q.addr = alloca double*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store %struct.QCDheader* %hdr, %struct.QCDheader** %hdr.addr, align 8
  store double* %q, double** %q.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %call = call i32 @qcdhdr_get_str(i8* %0, %struct.QCDheader* %1, i8** %p)
  %2 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p, align 8
  %4 = load double*, double** %q.addr, align 8
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double* %4) #5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @error_exit(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %0)
  call void @terminate(i32 1)
  ret void
}

declare i32 @printf(i8*, ...) #3

declare void @terminate(i32) #3

; Function Attrs: nounwind uwtable
define void @complete_U(double* %u) #0 {
entry:
  %u.addr = alloca double*, align 8
  store double* %u, double** %u.addr, align 8
  %0 = load double*, double** %u.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 2
  %1 = load double, double* %arrayidx, align 8
  %2 = load double*, double** %u.addr, align 8
  %arrayidx1 = getelementptr inbounds double, double* %2, i64 10
  %3 = load double, double* %arrayidx1, align 8
  %mul = fmul double %1, %3
  %4 = load double*, double** %u.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 4
  %5 = load double, double* %arrayidx2, align 8
  %6 = load double*, double** %u.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 8
  %7 = load double, double* %arrayidx3, align 8
  %mul4 = fmul double %5, %7
  %sub = fsub double %mul, %mul4
  %8 = load double*, double** %u.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %8, i64 3
  %9 = load double, double* %arrayidx5, align 8
  %10 = load double*, double** %u.addr, align 8
  %arrayidx6 = getelementptr inbounds double, double* %10, i64 11
  %11 = load double, double* %arrayidx6, align 8
  %mul7 = fmul double %9, %11
  %sub8 = fsub double %sub, %mul7
  %12 = load double*, double** %u.addr, align 8
  %arrayidx9 = getelementptr inbounds double, double* %12, i64 5
  %13 = load double, double* %arrayidx9, align 8
  %14 = load double*, double** %u.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %14, i64 9
  %15 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %13, %15
  %add = fadd double %sub8, %mul11
  %16 = load double*, double** %u.addr, align 8
  %arrayidx12 = getelementptr inbounds double, double* %16, i64 12
  store double %add, double* %arrayidx12, align 8
  %17 = load double*, double** %u.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %17, i64 4
  %18 = load double, double* %arrayidx13, align 8
  %19 = load double*, double** %u.addr, align 8
  %arrayidx14 = getelementptr inbounds double, double* %19, i64 9
  %20 = load double, double* %arrayidx14, align 8
  %mul15 = fmul double %18, %20
  %21 = load double*, double** %u.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %21, i64 2
  %22 = load double, double* %arrayidx16, align 8
  %23 = load double*, double** %u.addr, align 8
  %arrayidx17 = getelementptr inbounds double, double* %23, i64 11
  %24 = load double, double* %arrayidx17, align 8
  %mul18 = fmul double %22, %24
  %sub19 = fsub double %mul15, %mul18
  %25 = load double*, double** %u.addr, align 8
  %arrayidx20 = getelementptr inbounds double, double* %25, i64 5
  %26 = load double, double* %arrayidx20, align 8
  %27 = load double*, double** %u.addr, align 8
  %arrayidx21 = getelementptr inbounds double, double* %27, i64 8
  %28 = load double, double* %arrayidx21, align 8
  %mul22 = fmul double %26, %28
  %add23 = fadd double %sub19, %mul22
  %29 = load double*, double** %u.addr, align 8
  %arrayidx24 = getelementptr inbounds double, double* %29, i64 3
  %30 = load double, double* %arrayidx24, align 8
  %31 = load double*, double** %u.addr, align 8
  %arrayidx25 = getelementptr inbounds double, double* %31, i64 10
  %32 = load double, double* %arrayidx25, align 8
  %mul26 = fmul double %30, %32
  %sub27 = fsub double %add23, %mul26
  %33 = load double*, double** %u.addr, align 8
  %arrayidx28 = getelementptr inbounds double, double* %33, i64 13
  store double %sub27, double* %arrayidx28, align 8
  %34 = load double*, double** %u.addr, align 8
  %arrayidx29 = getelementptr inbounds double, double* %34, i64 4
  %35 = load double, double* %arrayidx29, align 8
  %36 = load double*, double** %u.addr, align 8
  %arrayidx30 = getelementptr inbounds double, double* %36, i64 6
  %37 = load double, double* %arrayidx30, align 8
  %mul31 = fmul double %35, %37
  %38 = load double*, double** %u.addr, align 8
  %arrayidx32 = getelementptr inbounds double, double* %38, i64 0
  %39 = load double, double* %arrayidx32, align 8
  %40 = load double*, double** %u.addr, align 8
  %arrayidx33 = getelementptr inbounds double, double* %40, i64 10
  %41 = load double, double* %arrayidx33, align 8
  %mul34 = fmul double %39, %41
  %sub35 = fsub double %mul31, %mul34
  %42 = load double*, double** %u.addr, align 8
  %arrayidx36 = getelementptr inbounds double, double* %42, i64 5
  %43 = load double, double* %arrayidx36, align 8
  %44 = load double*, double** %u.addr, align 8
  %arrayidx37 = getelementptr inbounds double, double* %44, i64 7
  %45 = load double, double* %arrayidx37, align 8
  %mul38 = fmul double %43, %45
  %sub39 = fsub double %sub35, %mul38
  %46 = load double*, double** %u.addr, align 8
  %arrayidx40 = getelementptr inbounds double, double* %46, i64 1
  %47 = load double, double* %arrayidx40, align 8
  %48 = load double*, double** %u.addr, align 8
  %arrayidx41 = getelementptr inbounds double, double* %48, i64 11
  %49 = load double, double* %arrayidx41, align 8
  %mul42 = fmul double %47, %49
  %add43 = fadd double %sub39, %mul42
  %50 = load double*, double** %u.addr, align 8
  %arrayidx44 = getelementptr inbounds double, double* %50, i64 14
  store double %add43, double* %arrayidx44, align 8
  %51 = load double*, double** %u.addr, align 8
  %arrayidx45 = getelementptr inbounds double, double* %51, i64 0
  %52 = load double, double* %arrayidx45, align 8
  %53 = load double*, double** %u.addr, align 8
  %arrayidx46 = getelementptr inbounds double, double* %53, i64 11
  %54 = load double, double* %arrayidx46, align 8
  %mul47 = fmul double %52, %54
  %55 = load double*, double** %u.addr, align 8
  %arrayidx48 = getelementptr inbounds double, double* %55, i64 4
  %56 = load double, double* %arrayidx48, align 8
  %57 = load double*, double** %u.addr, align 8
  %arrayidx49 = getelementptr inbounds double, double* %57, i64 7
  %58 = load double, double* %arrayidx49, align 8
  %mul50 = fmul double %56, %58
  %sub51 = fsub double %mul47, %mul50
  %59 = load double*, double** %u.addr, align 8
  %arrayidx52 = getelementptr inbounds double, double* %59, i64 1
  %60 = load double, double* %arrayidx52, align 8
  %61 = load double*, double** %u.addr, align 8
  %arrayidx53 = getelementptr inbounds double, double* %61, i64 10
  %62 = load double, double* %arrayidx53, align 8
  %mul54 = fmul double %60, %62
  %add55 = fadd double %sub51, %mul54
  %63 = load double*, double** %u.addr, align 8
  %arrayidx56 = getelementptr inbounds double, double* %63, i64 5
  %64 = load double, double* %arrayidx56, align 8
  %65 = load double*, double** %u.addr, align 8
  %arrayidx57 = getelementptr inbounds double, double* %65, i64 6
  %66 = load double, double* %arrayidx57, align 8
  %mul58 = fmul double %64, %66
  %sub59 = fsub double %add55, %mul58
  %67 = load double*, double** %u.addr, align 8
  %arrayidx60 = getelementptr inbounds double, double* %67, i64 15
  store double %sub59, double* %arrayidx60, align 8
  %68 = load double*, double** %u.addr, align 8
  %arrayidx61 = getelementptr inbounds double, double* %68, i64 0
  %69 = load double, double* %arrayidx61, align 8
  %70 = load double*, double** %u.addr, align 8
  %arrayidx62 = getelementptr inbounds double, double* %70, i64 8
  %71 = load double, double* %arrayidx62, align 8
  %mul63 = fmul double %69, %71
  %72 = load double*, double** %u.addr, align 8
  %arrayidx64 = getelementptr inbounds double, double* %72, i64 2
  %73 = load double, double* %arrayidx64, align 8
  %74 = load double*, double** %u.addr, align 8
  %arrayidx65 = getelementptr inbounds double, double* %74, i64 6
  %75 = load double, double* %arrayidx65, align 8
  %mul66 = fmul double %73, %75
  %sub67 = fsub double %mul63, %mul66
  %76 = load double*, double** %u.addr, align 8
  %arrayidx68 = getelementptr inbounds double, double* %76, i64 1
  %77 = load double, double* %arrayidx68, align 8
  %78 = load double*, double** %u.addr, align 8
  %arrayidx69 = getelementptr inbounds double, double* %78, i64 9
  %79 = load double, double* %arrayidx69, align 8
  %mul70 = fmul double %77, %79
  %sub71 = fsub double %sub67, %mul70
  %80 = load double*, double** %u.addr, align 8
  %arrayidx72 = getelementptr inbounds double, double* %80, i64 3
  %81 = load double, double* %arrayidx72, align 8
  %82 = load double*, double** %u.addr, align 8
  %arrayidx73 = getelementptr inbounds double, double* %82, i64 7
  %83 = load double, double* %arrayidx73, align 8
  %mul74 = fmul double %81, %83
  %add75 = fadd double %sub71, %mul74
  %84 = load double*, double** %u.addr, align 8
  %arrayidx76 = getelementptr inbounds double, double* %84, i64 16
  store double %add75, double* %arrayidx76, align 8
  %85 = load double*, double** %u.addr, align 8
  %arrayidx77 = getelementptr inbounds double, double* %85, i64 2
  %86 = load double, double* %arrayidx77, align 8
  %87 = load double*, double** %u.addr, align 8
  %arrayidx78 = getelementptr inbounds double, double* %87, i64 7
  %88 = load double, double* %arrayidx78, align 8
  %mul79 = fmul double %86, %88
  %89 = load double*, double** %u.addr, align 8
  %arrayidx80 = getelementptr inbounds double, double* %89, i64 0
  %90 = load double, double* %arrayidx80, align 8
  %91 = load double*, double** %u.addr, align 8
  %arrayidx81 = getelementptr inbounds double, double* %91, i64 9
  %92 = load double, double* %arrayidx81, align 8
  %mul82 = fmul double %90, %92
  %sub83 = fsub double %mul79, %mul82
  %93 = load double*, double** %u.addr, align 8
  %arrayidx84 = getelementptr inbounds double, double* %93, i64 3
  %94 = load double, double* %arrayidx84, align 8
  %95 = load double*, double** %u.addr, align 8
  %arrayidx85 = getelementptr inbounds double, double* %95, i64 6
  %96 = load double, double* %arrayidx85, align 8
  %mul86 = fmul double %94, %96
  %add87 = fadd double %sub83, %mul86
  %97 = load double*, double** %u.addr, align 8
  %arrayidx88 = getelementptr inbounds double, double* %97, i64 1
  %98 = load double, double* %arrayidx88, align 8
  %99 = load double*, double** %u.addr, align 8
  %arrayidx89 = getelementptr inbounds double, double* %99, i64 8
  %100 = load double, double* %arrayidx89, align 8
  %mul90 = fmul double %98, %100
  %sub91 = fsub double %add87, %mul90
  %101 = load double*, double** %u.addr, align 8
  %arrayidx92 = getelementptr inbounds double, double* %101, i64 17
  store double %sub91, double* %arrayidx92, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @big_endian() #0 {
entry:
  %u = alloca %union.anon, align 8
  %l = bitcast %union.anon* %u to i64*
  store i64 1, i64* %l, align 8
  %c = bitcast %union.anon* %u to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %c, i32 0, i64 7
  %0 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define %struct.QCDheader* @qcdhdr_get_hdr(%struct._IO_FILE* %in) #0 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %line = alloca [1024 x i8], align 16
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %hdr = alloca %struct.QCDheader*, align 8
  %tokens = alloca i8**, align 8
  %values = alloca i8**, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %0)
  %call1 = call noalias i8* @calloc(i64 512, i64 8) #5
  %1 = bitcast i8* %call1 to i8**
  store i8** %1, i8*** %tokens, align 8
  %call2 = call noalias i8* @calloc(i64 512, i64 8) #5
  %2 = bitcast i8* %call2 to i8**
  store i8** %2, i8*** %values, align 8
  %call3 = call noalias i8* @calloc(i64 1, i64 24) #5
  %3 = bitcast i8* %call3 to %struct.QCDheader*
  store %struct.QCDheader* %3, %struct.QCDheader** %hdr, align 8
  %4 = load i8**, i8*** %tokens, align 8
  %5 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %token = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %5, i32 0, i32 1
  store i8** %4, i8*** %token, align 8
  %6 = load i8**, i8*** %values, align 8
  %7 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %value = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %7, i32 0, i32 2
  store i8** %6, i8*** %value, align 8
  store i32 0, i32* %n, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0))
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %arraydecay5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call6 = call i8* @fgets(i8* %arraydecay5, i32 1024, %struct._IO_FILE* %8)
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %arraydecay7)
  %arraydecay9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call10 = call i32 @strcmp(i8* %arraydecay9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)) #6
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %arraydecay11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call12 = call i8* @strchr(i8* %arraydecay11, i32 32) #6
  store i8* %call12, i8** %q, align 8
  %9 = load i8*, i8** %q, align 8
  store i8 0, i8* %9, align 1
  %10 = load i8*, i8** %q, align 8
  %11 = ptrtoint i8* %10 to i32
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %12 = ptrtoint i8* %arraydecay13 to i32
  %sub = sub nsw i32 %11, %12
  store i32 %sub, i32* %len, align 4
  %13 = load i32, i32* %len, align 4
  %add = add nsw i32 %13, 1
  %div = sdiv i32 %add, 8
  %add14 = add nsw i32 %div, 1
  %conv = sext i32 %add14 to i64
  %call15 = call noalias i8* @calloc(i64 %conv, i64 8) #5
  store i8* %call15, i8** %p, align 8
  %14 = load i8*, i8** %p, align 8
  %15 = load i32, i32* %n, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %token16 = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %16, i32 0, i32 1
  %17 = load i8**, i8*** %token16, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  store i8* %14, i8** %arrayidx, align 8
  %18 = load i8*, i8** %p, align 8
  %arraydecay17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %line, i32 0, i32 0
  %call18 = call i8* @strcpy(i8* %18, i8* %arraydecay17) #5
  %19 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  %call19 = call i8* @strchr(i8* %incdec.ptr, i32 61) #6
  store i8* %call19, i8** %q, align 8
  %20 = load i8*, i8** %q, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr20, i8** %q, align 8
  %21 = load i8*, i8** %q, align 8
  %call21 = call i64 @strlen(i8* %21) #6
  %conv22 = trunc i64 %call21 to i32
  store i32 %conv22, i32* %len, align 4
  %22 = load i32, i32* %len, align 4
  %sub23 = sub nsw i32 %22, 1
  %idxprom24 = sext i32 %sub23 to i64
  %23 = load i8*, i8** %q, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %23, i64 %idxprom24
  store i8 0, i8* %arrayidx25, align 1
  %24 = load i32, i32* %len, align 4
  %conv26 = sext i32 %24 to i64
  %call27 = call noalias i8* @calloc(i64 %conv26, i64 1) #5
  store i8* %call27, i8** %p, align 8
  %25 = load i8*, i8** %p, align 8
  %26 = load i32, i32* %n, align 4
  %idxprom28 = sext i32 %26 to i64
  %27 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %value29 = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %27, i32 0, i32 2
  %28 = load i8**, i8*** %value29, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %28, i64 %idxprom28
  store i8* %25, i8** %arrayidx30, align 8
  %29 = load i8*, i8** %p, align 8
  %30 = load i8*, i8** %q, align 8
  %call31 = call i8* @strcpy(i8* %29, i8* %30) #5
  %31 = load i32, i32* %n, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %n, align 4
  br label %while.body

while.end:                                        ; preds = %if.then
  %32 = load i32, i32* %n, align 4
  %33 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %ntoken = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %33, i32 0, i32 0
  store i32 %32, i32* %ntoken, align 4
  %34 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  ret %struct.QCDheader* %34
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind uwtable
define void @qcdhdr_destroy_hdr(%struct.QCDheader* %hdr) #0 {
entry:
  %hdr.addr = alloca %struct.QCDheader*, align 8
  %i = alloca i32, align 4
  store %struct.QCDheader* %hdr, %struct.QCDheader** %hdr.addr, align 8
  %0 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %cmp = icmp eq %struct.QCDheader* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %ntoken = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %2, i32 0, i32 0
  %3 = load i32, i32* %ntoken, align 4
  %cmp1 = icmp slt i32 %1, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %value = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %5, i32 0, i32 2
  %6 = load i8**, i8*** %value, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %7) #5
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %token = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %9, i32 0, i32 1
  %10 = load i8**, i8*** %token, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %10, i64 %idxprom2
  %11 = load i8*, i8** %arrayidx3, align 8
  call void @free(i8* %11) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %token4 = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %13, i32 0, i32 1
  %14 = load i8**, i8*** %token4, align 8
  %15 = bitcast i8** %14 to i8*
  call void @free(i8* %15) #5
  %16 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %value5 = getelementptr inbounds %struct.QCDheader, %struct.QCDheader* %16, i32 0, i32 2
  %17 = load i8**, i8*** %value5, align 8
  %18 = bitcast i8** %17 to i8*
  call void @free(i8* %18) #5
  %19 = load %struct.QCDheader*, %struct.QCDheader** %hdr.addr, align 8
  %20 = bitcast %struct.QCDheader* %19 to i8*
  call void @free(i8* %20) #5
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @swrite_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %myname.addr = alloca i8*, align 8
  %descrip.addr = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %descrip, i8** %descrip.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fwrite(i8* %0, i64 %1, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %myname.addr, align 8
  %4 = load i32, i32* @this_node, align 4
  %5 = load i8*, i8** %descrip.addr, align 8
  %call1 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call1, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* %3, i32 %4, i8* %5, i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %7)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @pwrite_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %myname.addr = alloca i8*, align 8
  %descrip.addr = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %descrip, i8** %descrip.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @g_write(i8* %0, i64 %1, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %myname.addr, align 8
  %4 = load i32, i32* @this_node, align 4
  %5 = load i8*, i8** %descrip.addr, align 8
  %call1 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call1, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i8* %3, i32 %4, i8* %5, i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %7)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i64 @g_write(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @pswrite_data(i32 %parallel, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %parallel.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %myname.addr = alloca i8*, align 8
  %descrip.addr = alloca i8*, align 8
  store i32 %parallel, i32* %parallel.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %descrip, i8** %descrip.addr, align 8
  %0 = load i32, i32* %parallel.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %4 = load i8*, i8** %myname.addr, align 8
  %5 = load i8*, i8** %descrip.addr, align 8
  call void @pwrite_data(%struct._IO_FILE* %1, i8* %2, i64 %3, i8* %4, i8* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i64, i64* %size.addr, align 8
  %9 = load i8*, i8** %myname.addr, align 8
  %10 = load i8*, i8** %descrip.addr, align 8
  call void @swrite_data(%struct._IO_FILE* %6, i8* %7, i64 %8, i8* %9, i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sread_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %myname.addr = alloca i8*, align 8
  %descrip.addr = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %descrip, i8** %descrip.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @fread(i8* %0, i64 %1, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %myname.addr, align 8
  %4 = load i32, i32* @this_node, align 4
  %5 = load i8*, i8** %descrip.addr, align 8
  %call1 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call1, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* %3, i32 %4, i8* %5, i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %7)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @pread_data(%struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %myname.addr = alloca i8*, align 8
  %descrip.addr = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %descrip, i8** %descrip.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i64, i64* %size.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i64 @g_read(i8* %0, i64 %1, i64 1, %struct._IO_FILE* %2)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %myname.addr, align 8
  %4 = load i32, i32* @this_node, align 4
  %5 = load i8*, i8** %descrip.addr, align 8
  %call1 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call1, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i8* %3, i32 %4, i8* %5, i32 %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %7)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i64 @g_read(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define i32 @pread_byteorder(i32 %byterevflag, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %byterevflag.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %myname.addr = alloca i8*, align 8
  %descrip.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i32 %byterevflag, i32* %byterevflag.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %descrip, i8** %descrip.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i8*, i8** %myname.addr, align 8
  %4 = load i8*, i8** %descrip.addr, align 8
  %call = call i32 @pread_data(%struct._IO_FILE* %0, i8* %1, i64 %2, i8* %3, i8* %4)
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %byterevflag.addr, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %src.addr, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i64, i64* %size.addr, align 8
  %div = udiv i64 %8, 4
  %conv = trunc i64 %div to i32
  call void @byterevn(i32* %7, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %status, align 4
  ret i32 %9
}

declare void @byterevn(i32*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @sread_byteorder(i32 %byterevflag, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %byterevflag.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %myname.addr = alloca i8*, align 8
  %descrip.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  store i32 %byterevflag, i32* %byterevflag.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %descrip, i8** %descrip.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i64, i64* %size.addr, align 8
  %3 = load i8*, i8** %myname.addr, align 8
  %4 = load i8*, i8** %descrip.addr, align 8
  %call = call i32 @sread_data(%struct._IO_FILE* %0, i8* %1, i64 %2, i8* %3, i8* %4)
  store i32 %call, i32* %status, align 4
  %5 = load i32, i32* %byterevflag.addr, align 4
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %src.addr, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i64, i64* %size.addr, align 8
  %div = udiv i64 %8, 4
  %conv = trunc i64 %div to i32
  call void @byterevn(i32* %7, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %status, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @psread_data(i32 %parallel, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %retval = alloca i32, align 4
  %parallel.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %myname.addr = alloca i8*, align 8
  %descrip.addr = alloca i8*, align 8
  store i32 %parallel, i32* %parallel.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %descrip, i8** %descrip.addr, align 8
  %0 = load i32, i32* %parallel.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load i8*, i8** %src.addr, align 8
  %3 = load i64, i64* %size.addr, align 8
  %4 = load i8*, i8** %myname.addr, align 8
  %5 = load i8*, i8** %descrip.addr, align 8
  %call = call i32 @pread_data(%struct._IO_FILE* %1, i8* %2, i64 %3, i8* %4, i8* %5)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i64, i64* %size.addr, align 8
  %9 = load i8*, i8** %myname.addr, align 8
  %10 = load i8*, i8** %descrip.addr, align 8
  %call1 = call i32 @sread_data(%struct._IO_FILE* %6, i8* %7, i64 %8, i8* %9, i8* %10)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @psread_byteorder(i32 %byterevflag, i32 %parallel, %struct._IO_FILE* %fp, i8* %src, i64 %size, i8* %myname, i8* %descrip) #0 {
entry:
  %retval = alloca i32, align 4
  %byterevflag.addr = alloca i32, align 4
  %parallel.addr = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %src.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %myname.addr = alloca i8*, align 8
  %descrip.addr = alloca i8*, align 8
  store i32 %byterevflag, i32* %byterevflag.addr, align 4
  store i32 %parallel, i32* %parallel.addr, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %myname, i8** %myname.addr, align 8
  store i8* %descrip, i8** %descrip.addr, align 8
  %0 = load i32, i32* %parallel.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %byterevflag.addr, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i8*, i8** %src.addr, align 8
  %4 = load i64, i64* %size.addr, align 8
  %5 = load i8*, i8** %myname.addr, align 8
  %6 = load i8*, i8** %descrip.addr, align 8
  %call = call i32 @pread_byteorder(i32 %1, %struct._IO_FILE* %2, i8* %3, i64 %4, i8* %5, i8* %6)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %byterevflag.addr, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %9 = load i8*, i8** %src.addr, align 8
  %10 = load i64, i64* %size.addr, align 8
  %11 = load i8*, i8** %myname.addr, align 8
  %12 = load i8*, i8** %descrip.addr, align 8
  %call1 = call i32 @sread_byteorder(i32 %7, %struct._IO_FILE* %8, i8* %9, i64 %10, i8* %11, i8* %12)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define void @pwrite_gauge_hdr(%struct._IO_FILE* %fp, %struct.gauge_header* %gh) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %gh.addr = alloca %struct.gauge_header*, align 8
  %myname = alloca [17 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.gauge_header* %gh, %struct.gauge_header** %gh.addr, align 8
  %0 = bitcast [17 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @pwrite_gauge_hdr.myname, i32 0, i32 0), i64 17, i32 16, i1 false)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %2, i32 0, i32 0
  %3 = bitcast i32* %magic_number to i8*
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  call void @pwrite_data(%struct._IO_FILE* %1, i8* %3, i64 4, i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %dims = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %5, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  %6 = bitcast i32* %arraydecay1 to i8*
  %arraydecay2 = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  call void @pwrite_data(%struct._IO_FILE* %4, i8* %6, i64 16, i8* %arraydecay2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %8 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %8, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  call void @pwrite_data(%struct._IO_FILE* %7, i8* %arraydecay3, i64 64, i8* %arraydecay4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %10, i32 0, i32 4
  %11 = bitcast i32* %order to i8*
  %arraydecay5 = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  call void @pwrite_data(%struct._IO_FILE* %9, i8* %11, i64 4, i8* %arraydecay5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %12 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %12, i32 0, i32 3
  store i32 88, i32* %header_bytes, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define void @swrite_gauge_hdr(%struct._IO_FILE* %fp, %struct.gauge_header* %gh) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %gh.addr = alloca %struct.gauge_header*, align 8
  %myname = alloca [17 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.gauge_header* %gh, %struct.gauge_header** %gh.addr, align 8
  %0 = bitcast [17 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @swrite_gauge_hdr.myname, i32 0, i32 0), i64 17, i32 16, i1 false)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %2 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %2, i32 0, i32 0
  %3 = bitcast i32* %magic_number to i8*
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  call void @swrite_data(%struct._IO_FILE* %1, i8* %3, i64 4, i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %5 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %dims = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %5, i32 0, i32 2
  %arraydecay1 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  %6 = bitcast i32* %arraydecay1 to i8*
  %arraydecay2 = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  call void @swrite_data(%struct._IO_FILE* %4, i8* %6, i64 16, i8* %arraydecay2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %8 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %8, i32 0, i32 1
  %arraydecay3 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  call void @swrite_data(%struct._IO_FILE* %7, i8* %arraydecay3, i64 64, i8* %arraydecay4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %10, i32 0, i32 4
  %11 = bitcast i32* %order to i8*
  %arraydecay5 = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  call void @swrite_data(%struct._IO_FILE* %9, i8* %11, i64 4, i8* %arraydecay5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %12 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %12, i32 0, i32 3
  store i32 88, i32* %header_bytes, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @write_gauge_info_item(%struct._IO_FILE* %fpout, i8* %keyword, i8* %fmt, i8* %src, i32 %count, i32 %stride) #0 {
entry:
  %retval = alloca i32, align 4
  %fpout.addr = alloca %struct._IO_FILE*, align 8
  %keyword.addr = alloca i8*, align 8
  %fmt.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %count.addr = alloca i32, align 4
  %stride.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %data = alloca i8*, align 8
  store %struct._IO_FILE* %fpout, %struct._IO_FILE** %fpout.addr, align 8
  store i8* %keyword, i8** %keyword.addr, align 8
  store i8* %fmt, i8** %fmt.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %stride, i32* %stride.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i8*], [0 x i8*]* @gauge_info_keyword, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %1) #6
  %cmp = icmp ugt i64 %call, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [0 x i8*], [0 x i8*]* @gauge_info_keyword, i32 0, i64 %idxprom1
  %3 = load i8*, i8** %arrayidx2, align 8
  %4 = load i8*, i8** %keyword.addr, align 8
  %call3 = call i32 @strcmp(i8* %3, i8* %4) #6
  %cmp4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [0 x i8*], [0 x i8*]* @gauge_info_keyword, i32 0, i64 %idxprom5
  %8 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i64 @strlen(i8* %8) #6
  %cmp8 = icmp eq i64 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load i8*, i8** %keyword.addr, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %11 = load i8*, i8** %keyword.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %11)
  %12 = load i32, i32* %count.addr, align 4
  %cmp11 = icmp sgt i32 %12, 1
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %14 = load i32, i32* %count.addr, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 %14)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %15 = load i32, i32* %count.addr, align 4
  store i32 %15, i32* %n, align 4
  %16 = load i32, i32* %n, align 4
  %cmp15 = icmp eq i32 %16, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  store i32 1, i32* %n, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  store i32 0, i32* %k, align 4
  %17 = load i8*, i8** %src.addr, align 8
  store i8* %17, i8** %data, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.52, %if.end.17
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %n, align 4
  %cmp19 = icmp slt i32 %18, %19
  br i1 %cmp19, label %for.body.20, label %for.end.54

for.body.20:                                      ; preds = %for.cond.18
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %21 = load i8*, i8** %fmt.addr, align 8
  %call22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #6
  %cmp23 = icmp ne i8* %call22, null
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body.20
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %23 = load i8*, i8** %fmt.addr, align 8
  %24 = load i8*, i8** %data, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* %23, i8* %24)
  br label %if.end.51

if.else:                                          ; preds = %for.body.20
  %25 = load i8*, i8** %fmt.addr, align 8
  %call26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)) #6
  %cmp27 = icmp ne i8* %call26, null
  br i1 %cmp27, label %if.then.28, label %if.else.30

if.then.28:                                       ; preds = %if.else
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %27 = load i8*, i8** %fmt.addr, align 8
  %28 = load i8*, i8** %data, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* %27, i32 %30)
  br label %if.end.50

if.else.30:                                       ; preds = %if.else
  %31 = load i8*, i8** %fmt.addr, align 8
  %call31 = call i8* @strstr(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)) #6
  %cmp32 = icmp ne i8* %call31, null
  br i1 %cmp32, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %if.else.30
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %33 = load i8*, i8** %fmt.addr, align 8
  %34 = load i8*, i8** %data, align 8
  %35 = bitcast i8* %34 to double*
  %36 = load double, double* %35, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* %33, double %36)
  br label %if.end.49

if.else.35:                                       ; preds = %if.else.30
  %37 = load i8*, i8** %fmt.addr, align 8
  %call36 = call i8* @strstr(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #6
  %cmp37 = icmp ne i8* %call36, null
  br i1 %cmp37, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %if.else.35
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %39 = load i8*, i8** %fmt.addr, align 8
  %40 = load i8*, i8** %data, align 8
  %41 = bitcast i8* %40 to double*
  %42 = load double, double* %41, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* %39, double %42)
  br label %if.end.48

if.else.40:                                       ; preds = %if.else.35
  %43 = load i8*, i8** %fmt.addr, align 8
  %call41 = call i8* @strstr(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)) #6
  %cmp42 = icmp ne i8* %call41, null
  br i1 %cmp42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.else.40
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %45 = load i8*, i8** %fmt.addr, align 8
  %46 = load i8*, i8** %data, align 8
  %47 = bitcast i8* %46 to double*
  %48 = load double, double* %47, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* %45, double %48)
  br label %if.end.47

if.else.45:                                       ; preds = %if.else.40
  %49 = load i8*, i8** %fmt.addr, align 8
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i32 0, i32 0), i8* %49)
  store i32 1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.38
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.33
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.28
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.24
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %50 = load i32, i32* %k, align 4
  %inc53 = add nsw i32 %50, 1
  store i32 %inc53, i32* %k, align 4
  %51 = load i32, i32* %stride.addr, align 4
  %52 = load i8*, i8** %data, align 8
  %idx.ext = sext i32 %51 to i64
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %idx.ext
  store i8* %add.ptr, i8** %data, align 8
  br label %for.cond.18

for.end.54:                                       ; preds = %for.cond.18
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fpout.addr, align 8
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.54, %if.else.45
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @write_gauge_info_file(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  %info_fp = alloca %struct._IO_FILE*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %info_filename = alloca [256 x i8], align 16
  %sums = alloca [20 x i8], align 16
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  %0 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %0, i32 0, i32 1
  %1 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %1, %struct.gauge_header** %gh, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %info_filename, i32 0, i32 0
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %2, i32 0, i32 2
  %3 = load i8*, i8** %filename, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %3) #5
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %info_filename, i32 0, i32 0
  %call2 = call i8* @strcat(i8* %arraydecay1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #5
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %info_filename, i32 0, i32 0
  %call4 = call %struct._IO_FILE* @fopen(i8* %arraydecay3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %info_fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay5 = getelementptr inbounds [256 x i8], [256 x i8]* %info_filename, i32 0, i32 0
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0), i8* %arraydecay5)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %info_fp, align 8
  %5 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %5, i32 0, i32 0
  %6 = bitcast i32* %magic_number to i8*
  %call7 = call i32 @write_gauge_info_item(%struct._IO_FILE* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* %6, i32 0, i32 0)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %info_fp, align 8
  %8 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %8, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %call9 = call i32 @write_gauge_info_item(%struct._IO_FILE* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* %arraydecay8, i32 0, i32 0)
  %arraydecay10 = getelementptr inbounds [20 x i8], [20 x i8]* %sums, i32 0, i32 0
  %9 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %9, i32 0, i32 6
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 1
  %10 = load i32, i32* %sum29, align 4
  %11 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check11 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %11, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check11, i32 0, i32 0
  %12 = load i32, i32* %sum31, align 4
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %10, i32 %12) #5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %info_fp, align 8
  %arraydecay13 = getelementptr inbounds [20 x i8], [20 x i8]* %sums, i32 0, i32 0
  %call14 = call i32 @write_gauge_info_item(%struct._IO_FILE* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* %arraydecay13, i32 0, i32 0)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %info_fp, align 8
  %call15 = call i32 @write_gauge_info_item(%struct._IO_FILE* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* bitcast (i32* @nx to i8*), i32 0, i32 0)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %info_fp, align 8
  %call16 = call i32 @write_gauge_info_item(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* bitcast (i32* @ny to i8*), i32 0, i32 0)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %info_fp, align 8
  %call17 = call i32 @write_gauge_info_item(%struct._IO_FILE* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* bitcast (i32* @nz to i8*), i32 0, i32 0)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %info_fp, align 8
  %call18 = call i32 @write_gauge_info_item(%struct._IO_FILE* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* bitcast (i32* @nt to i8*), i32 0, i32 0)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %info_fp, align 8
  call void @write_appl_gauge_info(%struct._IO_FILE* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %info_fp, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %19)
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %info_filename, i32 0, i32 0
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* %arraydecay20)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare void @write_appl_gauge_info(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @setup_input_gauge_file(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %myname = alloca [23 x i8], align 16
  %gf = alloca %struct.gauge_file*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = bitcast [23 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @setup_input_gauge_file.myname, i32 0, i32 0), i64 23, i32 16, i1 false)
  %call = call noalias i8* @calloc(i64 1, i64 56) #5
  %1 = bitcast i8* %call to %struct.gauge_file*
  store %struct.gauge_file* %1, %struct.gauge_file** %gf, align 8
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %cmp = icmp eq %struct.gauge_file* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [23 x i8], [23 x i8]* %myname, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %4 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %filename2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %4, i32 0, i32 2
  store i8* %3, i8** %filename2, align 8
  %call3 = call noalias i8* @calloc(i64 1, i64 92) #5
  %5 = bitcast i8* %call3 to %struct.gauge_header*
  store %struct.gauge_header* %5, %struct.gauge_header** %gh, align 8
  %6 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %cmp4 = icmp eq %struct.gauge_header* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [23 x i8], [23 x i8]* %myname, i32 0, i32 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), i8* %arraydecay6)
  call void @terminate(i32 1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %7 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %8 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %8, i32 0, i32 1
  store %struct.gauge_header* %7, %struct.gauge_header** %header, align 8
  %9 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %9, i32 0, i32 6
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 1
  store i32 0, i32* %sum29, align 4
  %10 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %check9 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %10, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check9, i32 0, i32 0
  store i32 0, i32* %sum31, align 4
  %11 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %11
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @setup_output_gauge_file() #0 {
entry:
  %myname = alloca [24 x i8], align 16
  %gf = alloca %struct.gauge_file*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %time_stamp = alloca i64, align 8
  %i = alloca i32, align 4
  %0 = bitcast [24 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @setup_output_gauge_file.myname, i32 0, i32 0), i64 24, i32 16, i1 false)
  %call = call noalias i8* @calloc(i64 1, i64 56) #5
  %1 = bitcast i8* %call to %struct.gauge_file*
  store %struct.gauge_file* %1, %struct.gauge_file** %gf, align 8
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %cmp = icmp eq %struct.gauge_file* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %myname, i32 0, i32 0
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call noalias i8* @calloc(i64 1, i64 92) #5
  %3 = bitcast i8* %call2 to %struct.gauge_header*
  store %struct.gauge_header* %3, %struct.gauge_header** %gh, align 8
  %4 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %cmp3 = icmp eq %struct.gauge_header* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %arraydecay5 = getelementptr inbounds [24 x i8], [24 x i8]* %myname, i32 0, i32 0
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i32 0, i32 0), i8* %arraydecay5)
  call void @terminate(i32 1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %5 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %6 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %6, i32 0, i32 1
  store %struct.gauge_header* %5, %struct.gauge_header** %header, align 8
  %7 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %7, i32 0, i32 6
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 1
  store i32 0, i32* %sum29, align 4
  %8 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %check8 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %8, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check8, i32 0, i32 0
  store i32 0, i32* %sum31, align 4
  %9 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %9, i32 0, i32 0
  store i32 20103, i32* %magic_number, align 4
  %10 = load i32, i32* @nx, align 4
  %11 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %11, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 0
  store i32 %10, i32* %arrayidx, align 4
  %12 = load i32, i32* @ny, align 4
  %13 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims9 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %13, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %dims9, i32 0, i64 1
  store i32 %12, i32* %arrayidx10, align 4
  %14 = load i32, i32* @nz, align 4
  %15 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims11 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %15, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %dims11, i32 0, i64 2
  store i32 %14, i32* %arrayidx12, align 4
  %16 = load i32, i32* @nt, align 4
  %17 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims13 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %17, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %dims13, i32 0, i64 3
  store i32 %16, i32* %arrayidx14, align 4
  %18 = load i32, i32* @this_node, align 4
  %cmp15 = icmp eq i32 %18, 0
  br i1 %cmp15, label %if.then.16, label %if.end.45

if.then.16:                                       ; preds = %if.end.7
  %call17 = call i64 @time(i64* %time_stamp) #5
  %19 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp18 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %19, i32 0, i32 1
  %arraydecay19 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp18, i32 0, i32 0
  %call20 = call i8* @ctime(i64* %time_stamp) #5
  %call21 = call i8* @strcpy(i8* %arraydecay19, i8* %call20) #5
  %20 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp22 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %20, i32 0, i32 1
  %arraydecay23 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp22, i32 0, i32 0
  %call24 = call i64 @strlen(i8* %arraydecay23) #6
  %add = add i64 %call24, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %21 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %21, 64
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp27 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %23, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp27, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp29 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %25, i32 0, i32 1
  %arraydecay30 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp29, i32 0, i32 0
  %call31 = call i64 @strlen(i8* %arraydecay30) #6
  %sub = sub i64 %call31, 1
  %26 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp32 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %26, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp32, i32 0, i64 %sub
  %27 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %27 to i32
  %cmp35 = icmp eq i32 %conv34, 10
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %for.end
  %28 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp38 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %28, i32 0, i32 1
  %arraydecay39 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp38, i32 0, i32 0
  %call40 = call i64 @strlen(i8* %arraydecay39) #6
  %sub41 = sub i64 %call40, 1
  %29 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp42 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %29, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp42, i32 0, i64 %sub41
  store i8 0, i8* %arrayidx43, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %for.end
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.7
  %30 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp46 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %30, i32 0, i32 1
  %arraydecay47 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp46, i32 0, i32 0
  call void @broadcast_bytes(i8* %arraydecay47, i32 64)
  %31 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %31
}

; Function Attrs: nounwind
declare i64 @time(i64*) #2

; Function Attrs: nounwind
declare i8* @ctime(i64*) #2

declare void @broadcast_bytes(i8*, i32) #3

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @w_serial_i(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %myname = alloca [11 x i8], align 1
  %fp = alloca %struct._IO_FILE*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = bitcast [11 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @w_serial_i.myname, i32 0, i32 0), i64 11, i32 1, i1 false)
  %call = call %struct.gauge_file* @setup_output_gauge_file()
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 1
  %2 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %2, %struct.gauge_header** %gh, align 8
  %3 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %3, i32 0, i32 4
  store i32 0, i32* %order, align 4
  %4 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %myname, i32 0, i32 0
  %7 = load i32, i32* @this_node, align 4
  %8 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay, i32 %7, i8* %8, i32 %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %10)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %12 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  call void @swrite_gauge_hdr(%struct._IO_FILE* %11, %struct.gauge_header* %12)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %13 = load i32, i32* @this_node, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %15 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp10 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %15, i32 0, i32 0
  store %struct._IO_FILE* %14, %struct._IO_FILE** %fp10, align 8
  br label %if.end.12

if.else:                                          ; preds = %if.end.7
  %16 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp11 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %16, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.9
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %filename13 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %18, i32 0, i32 2
  store i8* %17, i8** %filename13, align 8
  %19 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %byterevflag = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %19, i32 0, i32 3
  store i32 0, i32* %byterevflag, align 4
  %20 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %rank2rcv = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %20, i32 0, i32 4
  store i32* null, i32** %rank2rcv, align 8
  %21 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %21, i32 0, i32 5
  store i32 0, i32* %parallel, align 4
  %22 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %22
}

; Function Attrs: nounwind uwtable
define void @read_checksum(i32 %parallel, %struct.gauge_file* %gf, %struct.gauge_check* %test_gc) #0 {
entry:
  %parallel.addr = alloca i32, align 4
  %gf.addr = alloca %struct.gauge_file*, align 8
  %test_gc.addr = alloca %struct.gauge_check*, align 8
  %myname = alloca [14 x i8], align 1
  store i32 %parallel, i32* %parallel.addr, align 4
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  store %struct.gauge_check* %test_gc, %struct.gauge_check** %test_gc.addr, align 8
  %0 = bitcast [14 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @read_checksum.myname, i32 0, i32 0), i64 14, i32 1, i1 false)
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %byterevflag = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 3
  %2 = load i32, i32* %byterevflag, align 4
  %3 = load i32, i32* %parallel.addr, align 4
  %4 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %6 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %6, i32 0, i32 6
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 1
  %7 = bitcast i32* %sum29 to i8*
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %myname, i32 0, i32 0
  %call = call i32 @psread_byteorder(i32 %2, i32 %3, %struct._IO_FILE* %5, i8* %7, i64 4, i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0))
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %byterevflag1 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %8, i32 0, i32 3
  %9 = load i32, i32* %byterevflag1, align 4
  %10 = load i32, i32* %parallel.addr, align 4
  %11 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %11, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %13 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check3 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %13, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check3, i32 0, i32 0
  %14 = bitcast i32* %sum31 to i8*
  %arraydecay4 = getelementptr inbounds [14 x i8], [14 x i8]* %myname, i32 0, i32 0
  %call5 = call i32 @psread_byteorder(i32 %9, i32 %10, %struct._IO_FILE* %12, i8* %14, i64 4, i8* %arraydecay4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0))
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  call void @terminate(i32 1)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %15 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check9 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %15, i32 0, i32 6
  %sum2910 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check9, i32 0, i32 1
  %16 = load i32, i32* %sum2910, align 4
  %17 = load %struct.gauge_check*, %struct.gauge_check** %test_gc.addr, align 8
  %sum2911 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %17, i32 0, i32 1
  %18 = load i32, i32* %sum2911, align 4
  %cmp12 = icmp ne i32 %16, %18
  br i1 %cmp12, label %if.then.17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.8
  %19 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check13 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %19, i32 0, i32 6
  %sum3114 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check13, i32 0, i32 0
  %20 = load i32, i32* %sum3114, align 4
  %21 = load %struct.gauge_check*, %struct.gauge_check** %test_gc.addr, align 8
  %sum3115 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %21, i32 0, i32 0
  %22 = load i32, i32* %sum3115, align 4
  %cmp16 = icmp ne i32 %20, %22
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %lor.lhs.false, %if.end.8
  %arraydecay18 = getelementptr inbounds [14 x i8], [14 x i8]* %myname, i32 0, i32 0
  %23 = load %struct.gauge_check*, %struct.gauge_check** %test_gc.addr, align 8
  %sum2919 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %23, i32 0, i32 1
  %24 = load i32, i32* %sum2919, align 4
  %25 = load %struct.gauge_check*, %struct.gauge_check** %test_gc.addr, align 8
  %sum3120 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %25, i32 0, i32 0
  %26 = load i32, i32* %sum3120, align 4
  %27 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check21 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %27, i32 0, i32 6
  %sum2922 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check21, i32 0, i32 1
  %28 = load i32, i32* %sum2922, align 4
  %29 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check23 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %29, i32 0, i32 6
  %sum3124 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check23, i32 0, i32 0
  %30 = load i32, i32* %sum3124, align 4
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.41, i32 0, i32 0), i8* %arraydecay18, i32 %24, i32 %26, i32 %28, i32 %30)
  br label %if.end.32

if.else:                                          ; preds = %lor.lhs.false
  %31 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check26 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %31, i32 0, i32 6
  %sum2927 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check26, i32 0, i32 1
  %32 = load i32, i32* %sum2927, align 4
  %33 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check28 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %33, i32 0, i32 6
  %sum3129 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check28, i32 0, i32 0
  %34 = load i32, i32* %sum3129, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i32 0, i32 0), i32 %32, i32 %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call31 = call i32 @fflush(%struct._IO_FILE* %35)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_checksum(i32 %parallel, %struct.gauge_file* %gf) #0 {
entry:
  %parallel.addr = alloca i32, align 4
  %gf.addr = alloca %struct.gauge_file*, align 8
  %myname = alloca [15 x i8], align 1
  store i32 %parallel, i32* %parallel.addr, align 4
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  %0 = bitcast [15 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @write_checksum.myname, i32 0, i32 0), i64 15, i32 1, i1 false)
  %1 = load i32, i32* %parallel.addr, align 4
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %2, i32 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %4 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %4, i32 0, i32 6
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 1
  %5 = bitcast i32* %sum29 to i8*
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  call void @pswrite_data(i32 %1, %struct._IO_FILE* %3, i8* %5, i64 4, i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0))
  %6 = load i32, i32* %parallel.addr, align 4
  %7 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp1 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %7, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %9 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %9, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check2, i32 0, i32 0
  %10 = bitcast i32* %sum31 to i8*
  %arraydecay3 = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  call void @pswrite_data(i32 %6, %struct._IO_FILE* %8, i8* %10, i64 4, i8* %arraydecay3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0))
  %11 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check4 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %11, i32 0, i32 6
  %sum295 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check4, i32 0, i32 1
  %12 = load i32, i32* %sum295, align 4
  %13 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check6 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %13, i32 0, i32 6
  %sum317 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check6, i32 0, i32 0
  %14 = load i32, i32* %sum317, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 %12, i32 %14)
  ret void
}

; Function Attrs: nounwind uwtable
define void @w_serial(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %val = alloca i32*, align 8
  %rank29 = alloca i32, align 4
  %rank31 = alloca i32, align 4
  %lbuf = alloca %struct.su3_matrix*, align 8
  %tbuf = alloca [4 x %struct.su3_matrix], align 16
  %buf_length = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %offset = alloca i64, align 8
  %coord_list_size = alloca i64, align 8
  %head_size = alloca i64, align 8
  %checksum_offset = alloca i64, align 8
  %gauge_check_size = alloca i64, align 8
  %currentnode = alloca i32, align 4
  %newnode = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  %0 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.18

if.then:                                          ; preds = %entry
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 5
  %2 = load i32, i32* %parallel, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %call2 = call noalias i8* @calloc(i64 16384, i64 144) #5
  %3 = bitcast i8* %call2 to %struct.su3_matrix*
  store %struct.su3_matrix* %3, %struct.su3_matrix** %lbuf, align 8
  %4 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %cmp3 = icmp eq %struct.su3_matrix* %4, null
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %5)
  call void @terminate(i32 1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %6 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp8 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %6, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp8, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fp, align 8
  %8 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %8, i32 0, i32 1
  %9 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %9, %struct.gauge_header** %gh, align 8
  store i64 0, i64* %coord_list_size, align 8
  %10 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %10, i32 0, i32 3
  %11 = load i32, i32* %header_bytes, align 4
  %conv = sext i32 %11 to i64
  %12 = load i64, i64* %coord_list_size, align 8
  %add = add nsw i64 %conv, %12
  store i64 %add, i64* %head_size, align 8
  %13 = load i64, i64* %head_size, align 8
  store i64 %13, i64* %checksum_offset, align 8
  store i64 8, i64* %gauge_check_size, align 8
  %14 = load i64, i64* %head_size, align 8
  %15 = load i64, i64* %gauge_check_size, align 8
  %add9 = add nsw i64 %14, %15
  store i64 %add9, i64* %offset, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %17 = load i64, i64* %offset, align 8
  %call10 = call i32 @fseek(%struct._IO_FILE* %16, i64 %17, i32 0)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.7
  %18 = load i32, i32* @this_node, align 4
  %call14 = call i32* @__errno_location() #7
  %19 = load i32, i32* %call14, align 4
  %20 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %20, i32 0, i32 2
  %21 = load i8*, i8** %filename, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i32 0, i32 0), i32 %18, i32 %19, i8* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @fflush(%struct._IO_FILE* %22)
  call void @terminate(i32 1)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %entry
  %23 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %23, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 0
  store i32 0, i32* %sum31, align 4
  %24 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check19 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %24, i32 0, i32 6
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check19, i32 0, i32 1
  store i32 0, i32* %sum29, align 4
  %25 = load i32, i32* @sites_on_node, align 4
  %conv20 = sext i32 %25 to i64
  %mul = mul i64 144, %conv20
  %26 = load i32, i32* @this_node, align 4
  %conv21 = sext i32 %26 to i64
  %mul22 = mul i64 %mul, %conv21
  %rem = urem i64 %mul22, 29
  %conv23 = trunc i64 %rem to i32
  store i32 %conv23, i32* %rank29, align 4
  %27 = load i32, i32* @sites_on_node, align 4
  %conv24 = sext i32 %27 to i64
  %mul25 = mul i64 144, %conv24
  %28 = load i32, i32* @this_node, align 4
  %conv26 = sext i32 %28 to i64
  %mul27 = mul i64 %mul25, %conv26
  %rem28 = urem i64 %mul27, 31
  %conv29 = trunc i64 %rem28 to i32
  store i32 %conv29, i32* %rank31, align 4
  call void (...) @g_sync()
  store i32 0, i32* %currentnode, align 4
  store i32 0, i32* %buf_length, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.153, %if.end.18
  %29 = load i32, i32* %t, align 4
  %30 = load i32, i32* @nt, align 4
  %cmp30 = icmp slt i32 %29, %30
  br i1 %cmp30, label %for.body, label %for.end.155

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %z, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.150, %for.body
  %31 = load i32, i32* %z, align 4
  %32 = load i32, i32* @nz, align 4
  %cmp33 = icmp slt i32 %31, %32
  br i1 %cmp33, label %for.body.35, label %for.end.152

for.body.35:                                      ; preds = %for.cond.32
  store i32 0, i32* %y, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.147, %for.body.35
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* @ny, align 4
  %cmp37 = icmp slt i32 %33, %34
  br i1 %cmp37, label %for.body.39, label %for.end.149

for.body.39:                                      ; preds = %for.cond.36
  store i32 0, i32* %x, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.143, %for.body.39
  %35 = load i32, i32* %x, align 4
  %36 = load i32, i32* @nx, align 4
  %cmp41 = icmp slt i32 %35, %36
  br i1 %cmp41, label %for.body.43, label %for.end.146

for.body.43:                                      ; preds = %for.cond.40
  %37 = load i32, i32* %x, align 4
  %38 = load i32, i32* %y, align 4
  %39 = load i32, i32* %z, align 4
  %40 = load i32, i32* %t, align 4
  %call44 = call i32 @node_number(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %call44, i32* %newnode, align 4
  %41 = load i32, i32* %newnode, align 4
  %42 = load i32, i32* %currentnode, align 4
  %cmp45 = icmp ne i32 %41, %42
  br i1 %cmp45, label %if.then.47, label %if.end.62

if.then.47:                                       ; preds = %for.body.43
  %43 = load i32, i32* @this_node, align 4
  %cmp48 = icmp eq i32 %43, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.then.47
  %44 = load i32, i32* %newnode, align 4
  %cmp50 = icmp ne i32 %44, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %tbuf, i32 0, i32 0
  %45 = bitcast %struct.su3_matrix* %arraydecay to i8*
  %46 = load i32, i32* %newnode, align 4
  call void @send_field(i8* %45, i32 4, i32 %46)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.lhs.true, %if.then.47
  %47 = load i32, i32* @this_node, align 4
  %48 = load i32, i32* %newnode, align 4
  %cmp54 = icmp eq i32 %47, %48
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.61

land.lhs.true.56:                                 ; preds = %if.end.53
  %49 = load i32, i32* %newnode, align 4
  %cmp57 = icmp ne i32 %49, 0
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %land.lhs.true.56
  %arraydecay60 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %tbuf, i32 0, i32 0
  %50 = bitcast %struct.su3_matrix* %arraydecay60 to i8*
  call void @get_field(i8* %50, i32 4)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %land.lhs.true.56, %if.end.53
  %51 = load i32, i32* %newnode, align 4
  store i32 %51, i32* %currentnode, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %for.body.43
  %52 = load i32, i32* @this_node, align 4
  %cmp63 = icmp eq i32 %52, 0
  br i1 %cmp63, label %if.then.65, label %if.else.132

if.then.65:                                       ; preds = %if.end.62
  %53 = load i32, i32* %currentnode, align 4
  %cmp66 = icmp eq i32 %53, 0
  br i1 %cmp66, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %if.then.65
  %54 = load i32, i32* %x, align 4
  %55 = load i32, i32* %y, align 4
  %56 = load i32, i32* %z, align 4
  %57 = load i32, i32* %t, align 4
  %call69 = call i32 @node_index(i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %call69, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc, %if.then.68
  %58 = load i32, i32* %k, align 4
  %cmp71 = icmp slt i32 %58, 4
  br i1 %cmp71, label %for.body.73, label %for.end

for.body.73:                                      ; preds = %for.cond.70
  %59 = load i32, i32* %k, align 4
  %idxprom = sext i32 %59 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %tbuf, i32 0, i64 %idxprom
  %60 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %60 to i64
  %61 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx76 = getelementptr inbounds %struct.site, %struct.site* %62, i64 %idxprom75
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx76, i32 0, i32 8
  %arrayidx77 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom74
  %63 = bitcast %struct.su3_matrix* %arrayidx to i8*
  %64 = bitcast %struct.su3_matrix* %arrayidx77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 144, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.73
  %65 = load i32, i32* %k, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.70

for.end:                                          ; preds = %for.cond.70
  br label %if.end.79

if.else:                                          ; preds = %if.then.65
  %arraydecay78 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %tbuf, i32 0, i32 0
  %66 = bitcast %struct.su3_matrix* %arraydecay78 to i8*
  call void @get_field(i8* %66, i32 576)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else, %for.end
  %67 = load i32, i32* %buf_length, align 4
  %mul80 = mul nsw i32 4, %67
  %idxprom81 = sext i32 %mul80 to i64
  %68 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx82 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %68, i64 %idxprom81
  %69 = bitcast %struct.su3_matrix* %arrayidx82 to i8*
  %arraydecay83 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %tbuf, i32 0, i32 0
  %70 = bitcast %struct.su3_matrix* %arraydecay83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 576, i32 1, i1 false)
  store i32 0, i32* %k, align 4
  %71 = load i32, i32* %buf_length, align 4
  %mul84 = mul nsw i32 4, %71
  %idxprom85 = sext i32 %mul84 to i64
  %72 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx86 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %72, i64 %idxprom85
  %73 = bitcast %struct.su3_matrix* %arrayidx86 to i32*
  store i32* %73, i32** %val, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.110, %if.end.79
  %74 = load i32, i32* %k, align 4
  %cmp88 = icmp slt i32 %74, 144
  br i1 %cmp88, label %for.body.90, label %for.end.112

for.body.90:                                      ; preds = %for.cond.87
  %75 = load i32*, i32** %val, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %rank29, align 4
  %shl = shl i32 %76, %77
  %78 = load i32*, i32** %val, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %rank29, align 4
  %sub = sub nsw i32 32, %80
  %shr = lshr i32 %79, %sub
  %or = or i32 %shl, %shr
  %81 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check91 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %81, i32 0, i32 6
  %sum2992 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check91, i32 0, i32 1
  %82 = load i32, i32* %sum2992, align 4
  %xor = xor i32 %82, %or
  store i32 %xor, i32* %sum2992, align 4
  %83 = load i32*, i32** %val, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %rank31, align 4
  %shl93 = shl i32 %84, %85
  %86 = load i32*, i32** %val, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %rank31, align 4
  %sub94 = sub nsw i32 32, %88
  %shr95 = lshr i32 %87, %sub94
  %or96 = or i32 %shl93, %shr95
  %89 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check97 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %89, i32 0, i32 6
  %sum3198 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check97, i32 0, i32 0
  %90 = load i32, i32* %sum3198, align 4
  %xor99 = xor i32 %90, %or96
  store i32 %xor99, i32* %sum3198, align 4
  %91 = load i32, i32* %rank29, align 4
  %inc100 = add nsw i32 %91, 1
  store i32 %inc100, i32* %rank29, align 4
  %92 = load i32, i32* %rank29, align 4
  %cmp101 = icmp sge i32 %92, 29
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %for.body.90
  store i32 0, i32* %rank29, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %for.body.90
  %93 = load i32, i32* %rank31, align 4
  %inc105 = add nsw i32 %93, 1
  store i32 %inc105, i32* %rank31, align 4
  %94 = load i32, i32* %rank31, align 4
  %cmp106 = icmp sge i32 %94, 31
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.104
  store i32 0, i32* %rank31, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.104
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %95 = load i32, i32* %k, align 4
  %inc111 = add nsw i32 %95, 1
  store i32 %inc111, i32* %k, align 4
  %96 = load i32*, i32** %val, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %incdec.ptr, i32** %val, align 8
  br label %for.cond.87

for.end.112:                                      ; preds = %for.cond.87
  %97 = load i32, i32* %buf_length, align 4
  %inc113 = add nsw i32 %97, 1
  store i32 %inc113, i32* %buf_length, align 4
  %98 = load i32, i32* %buf_length, align 4
  %cmp114 = icmp eq i32 %98, 4096
  br i1 %cmp114, label %if.then.119, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.112
  %99 = load i32, i32* %j, align 4
  %100 = load i32, i32* @volume, align 4
  %sub116 = sub nsw i32 %100, 1
  %cmp117 = icmp eq i32 %99, %sub116
  br i1 %cmp117, label %if.then.119, label %if.end.131

if.then.119:                                      ; preds = %lor.lhs.false, %for.end.112
  %101 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %102 = bitcast %struct.su3_matrix* %101 to i8*
  %103 = load i32, i32* %buf_length, align 4
  %conv120 = sext i32 %103 to i64
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call121 = call i64 @fwrite(i8* %102, i64 576, i64 %conv120, %struct._IO_FILE* %104)
  %conv122 = trunc i64 %call121 to i32
  %105 = load i32, i32* %buf_length, align 4
  %cmp123 = icmp ne i32 %conv122, %105
  br i1 %cmp123, label %if.then.125, label %if.end.130

if.then.125:                                      ; preds = %if.then.119
  %106 = load i32, i32* @this_node, align 4
  %call126 = call i32* @__errno_location() #7
  %107 = load i32, i32* %call126, align 4
  %108 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename127 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %108, i32 0, i32 2
  %109 = load i8*, i8** %filename127, align 8
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.47, i32 0, i32 0), i32 %106, i32 %107, i8* %109)
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call129 = call i32 @fflush(%struct._IO_FILE* %110)
  call void @terminate(i32 1)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.125, %if.then.119
  store i32 0, i32* %buf_length, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %lor.lhs.false
  br label %if.end.142

if.else.132:                                      ; preds = %if.end.62
  %111 = load i32, i32* @this_node, align 4
  %112 = load i32, i32* %currentnode, align 4
  %cmp133 = icmp eq i32 %111, %112
  br i1 %cmp133, label %if.then.135, label %if.end.141

if.then.135:                                      ; preds = %if.else.132
  %113 = load i32, i32* %x, align 4
  %114 = load i32, i32* %y, align 4
  %115 = load i32, i32* %z, align 4
  %116 = load i32, i32* %t, align 4
  %call136 = call i32 @node_index(i32 %113, i32 %114, i32 %115, i32 %116)
  store i32 %call136, i32* %i, align 4
  %117 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %117 to i64
  %118 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx138 = getelementptr inbounds %struct.site, %struct.site* %118, i64 %idxprom137
  %link139 = getelementptr inbounds %struct.site, %struct.site* %arrayidx138, i32 0, i32 8
  %arraydecay140 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link139, i32 0, i32 0
  %119 = bitcast %struct.su3_matrix* %arraydecay140 to i8*
  call void @send_field(i8* %119, i32 576, i32 0)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.135, %if.else.132
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.end.131
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %120 = load i32, i32* %x, align 4
  %inc144 = add nsw i32 %120, 1
  store i32 %inc144, i32* %x, align 4
  %121 = load i32, i32* %j, align 4
  %inc145 = add nsw i32 %121, 1
  store i32 %inc145, i32* %j, align 4
  br label %for.cond.40

for.end.146:                                      ; preds = %for.cond.40
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.end.146
  %122 = load i32, i32* %y, align 4
  %inc148 = add nsw i32 %122, 1
  store i32 %inc148, i32* %y, align 4
  br label %for.cond.36

for.end.149:                                      ; preds = %for.cond.36
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149
  %123 = load i32, i32* %z, align 4
  %inc151 = add nsw i32 %123, 1
  store i32 %inc151, i32* %z, align 4
  br label %for.cond.32

for.end.152:                                      ; preds = %for.cond.32
  br label %for.inc.153

for.inc.153:                                      ; preds = %for.end.152
  %124 = load i32, i32* %t, align 4
  %inc154 = add nsw i32 %124, 1
  store i32 %inc154, i32* %t, align 4
  br label %for.cond

for.end.155:                                      ; preds = %for.cond
  call void (...) @g_sync()
  %125 = load i32, i32* @this_node, align 4
  %cmp156 = icmp eq i32 %125, 0
  br i1 %cmp156, label %if.then.158, label %if.end.172

if.then.158:                                      ; preds = %for.end.155
  %126 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %127 = bitcast %struct.su3_matrix* %126 to i8*
  call void @free(i8* %127) #5
  %128 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename159 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %128, i32 0, i32 2
  %129 = load i8*, i8** %filename159, align 8
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.48, i32 0, i32 0), i8* %129)
  %130 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %130, i32 0, i32 1
  %arraydecay161 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %call162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay161)
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %132 = load i64, i64* %checksum_offset, align 8
  %call163 = call i32 @fseek(%struct._IO_FILE* %131, i64 %132, i32 0)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %if.then.166, label %if.end.171

if.then.166:                                      ; preds = %if.then.158
  %133 = load i32, i32* @this_node, align 4
  %call167 = call i32* @__errno_location() #7
  %134 = load i32, i32* %call167, align 4
  %135 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename168 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %135, i32 0, i32 2
  %136 = load i8*, i8** %filename168, align 8
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i32 0, i32 0), i32 %133, i32 %134, i8* %136)
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call170 = call i32 @fflush(%struct._IO_FILE* %137)
  call void @terminate(i32 1)
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.166, %if.then.158
  %138 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  call void @write_checksum(i32 0, %struct.gauge_file* %138)
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %for.end.155
  ret void
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare void @g_sync(...) #3

declare i32 @node_number(i32, i32, i32, i32) #3

declare void @send_field(i8*, i32, i32) #3

declare void @get_field(i8*, i32) #3

declare i32 @node_index(i32, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define void @w_serial_f(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  call void (...) @g_sync()
  %0 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 5
  %2 = load i32, i32* %parallel, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.50, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %5 = load i32, i32* @this_node, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %6 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  call void @write_gauge_info_file(%struct.gauge_file* %6)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @read_site_list(i32 %parallel, %struct.gauge_file* %gf) #0 {
entry:
  %parallel.addr = alloca i32, align 4
  %gf.addr = alloca %struct.gauge_file*, align 8
  store i32 %parallel, i32* %parallel.addr, align 4
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  %0 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %0, i32 0, i32 1
  %1 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %1, i32 0, i32 4
  %2 = load i32, i32* %order, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else.41

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @volume, align 4
  %conv = sext i32 %3 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 4) #5
  %4 = bitcast i8* %call to i32*
  %5 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %5, i32 0, i32 4
  store i32* %4, i32** %rank2rcv, align 8
  %6 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv1 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %6, i32 0, i32 4
  %7 = load i32*, i32** %rank2rcv1, align 8
  %cmp2 = icmp eq i32* %7, null
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %8 = load i32, i32* @this_node, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then.8, label %if.end.37

if.then.8:                                        ; preds = %if.end
  %9 = load i32, i32* %parallel.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.8
  %10 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv10 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %10, i32 0, i32 4
  %11 = load i32*, i32** %rank2rcv10, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = load i32, i32* @volume, align 4
  %conv11 = sext i32 %13 to i64
  %14 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %14, i32 0, i32 0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i64 @g_read(i8* %12, i64 4, i64 %conv11, %struct._IO_FILE* %15)
  %conv13 = trunc i64 %call12 to i32
  %16 = load i32, i32* @volume, align 4
  %cmp14 = icmp ne i32 %conv13, %16
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.9
  %17 = load i32, i32* @this_node, align 4
  %call17 = call i32* @__errno_location() #7
  %18 = load i32, i32* %call17, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i32 0, i32 0), i32 %17, i32 %18)
  call void @terminate(i32 1)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.9
  br label %if.end.31

if.else:                                          ; preds = %if.then.8
  %19 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv20 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %19, i32 0, i32 4
  %20 = load i32*, i32** %rank2rcv20, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i32, i32* @volume, align 4
  %conv21 = sext i32 %22 to i64
  %23 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp22 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %23, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp22, align 8
  %call23 = call i64 @fread(i8* %21, i64 4, i64 %conv21, %struct._IO_FILE* %24)
  %conv24 = trunc i64 %call23 to i32
  %25 = load i32, i32* @volume, align 4
  %cmp25 = icmp ne i32 %conv24, %25
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.else
  %26 = load i32, i32* @this_node, align 4
  %call28 = call i32* @__errno_location() #7
  %27 = load i32, i32* %call28, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i32 0, i32 0), i32 %26, i32 %27)
  call void @terminate(i32 1)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.19
  %28 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %byterevflag = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %28, i32 0, i32 3
  %29 = load i32, i32* %byterevflag, align 4
  %cmp32 = icmp eq i32 %29, 1
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %30 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv35 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %30, i32 0, i32 4
  %31 = load i32*, i32** %rank2rcv35, align 8
  %32 = load i32, i32* @volume, align 4
  call void @byterevn(i32* %31, i32 %32)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  %33 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv38 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %33, i32 0, i32 4
  %34 = load i32*, i32** %rank2rcv38, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load i32, i32* @volume, align 4
  %conv39 = sext i32 %36 to i64
  %mul = mul i64 %conv39, 4
  %conv40 = trunc i64 %mul to i32
  call void @broadcast_bytes(i8* %35, i32 %conv40)
  br label %if.end.43

if.else.41:                                       ; preds = %entry
  %37 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv42 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %37, i32 0, i32 4
  store i32* null, i32** %rank2rcv42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.end.37
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @read_v3_gauge_hdr(%struct.gauge_file* %gf, i32 %parallel, i32* %byterevflag) #0 {
entry:
  %retval = alloca i32, align 4
  %gf.addr = alloca %struct.gauge_file*, align 8
  %parallel.addr = alloca i32, align 4
  %byterevflag.addr = alloca i32*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %tmp = alloca i32, align 4
  %j = alloca i32, align 4
  %sixtyfourbits = alloca i32, align 4
  %c1 = alloca double, align 8
  %c2 = alloca double, align 8
  %myname = alloca [18 x i8], align 16
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  store i32 %parallel, i32* %parallel.addr, align 4
  store i32* %byterevflag, i32** %byterevflag.addr, align 8
  %0 = bitcast [18 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @read_v3_gauge_hdr.myname, i32 0, i32 0), i64 18, i32 16, i1 false)
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp6 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp6, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 1
  %4 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %4, %struct.gauge_header** %gh, align 8
  %5 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %5, i32 0, i32 0
  %6 = load i32, i32* %magic_number, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %sixtyfourbits, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.53, i32 0, i32 0))
  %7 = load i32, i32* %parallel.addr, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %9 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number7 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %9, i32 0, i32 0
  %10 = bitcast i32* %magic_number7 to i8*
  %arraydecay = getelementptr inbounds [18 x i8], [18 x i8]* %myname, i32 0, i32 0
  %call8 = call i32 @psread_data(i32 %7, %struct._IO_FILE* %8, i8* %10, i64 4, i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0))
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.11

if.else:                                          ; preds = %entry
  store i32 0, i32* %sixtyfourbits, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  %11 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number12 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %11, i32 0, i32 0
  %12 = load i32, i32* %magic_number12, align 4
  store i32 %12, i32* %tmp, align 4
  %13 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number13 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %13, i32 0, i32 0
  %14 = load i32, i32* %magic_number13, align 4
  %cmp14 = icmp eq i32 %14, 59354
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.11
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.55, i32 0, i32 0))
  %15 = load i32*, i32** %byterevflag.addr, align 8
  store i32 0, i32* %15, align 4
  br label %if.end.28

if.else.17:                                       ; preds = %if.end.11
  %16 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number18 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %16, i32 0, i32 0
  call void @byterevn(i32* %magic_number18, i32 1)
  %17 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number19 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %17, i32 0, i32 0
  %18 = load i32, i32* %magic_number19, align 4
  %cmp20 = icmp eq i32 %18, 59354
  br i1 %cmp20, label %if.then.21, label %if.else.25

if.then.21:                                       ; preds = %if.else.17
  %19 = load i32*, i32** %byterevflag.addr, align 8
  store i32 1, i32* %19, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.56, i32 0, i32 0))
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.57, i32 0, i32 0))
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.58, i32 0, i32 0), i32 4, i32 8)
  call void @terminate(i32 1)
  br label %if.end.27

if.else.25:                                       ; preds = %if.else.17
  %20 = load i32, i32* %tmp, align 4
  %21 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number26 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %21, i32 0, i32 0
  store i32 %20, i32* %magic_number26, align 4
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.15
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.28
  %22 = load i32, i32* %j, align 4
  %cmp29 = icmp slt i32 %22, 4
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32*, i32** %byterevflag.addr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %parallel.addr, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %28, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom
  %29 = bitcast i32* %arrayidx to i8*
  %arraydecay30 = getelementptr inbounds [18 x i8], [18 x i8]* %myname, i32 0, i32 0
  %call31 = call i32 @psread_byteorder(i32 %24, i32 %25, %struct._IO_FILE* %26, i8* %29, i64 4, i8* %arraydecay30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body
  call void @terminate(i32 1)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %for.body
  %30 = load i32, i32* %sixtyfourbits, align 4
  %tobool = icmp ne i32 %30, 0
  br i1 %tobool, label %if.then.35, label %if.end.44

if.then.35:                                       ; preds = %if.end.34
  %31 = load i32*, i32** %byterevflag.addr, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %parallel.addr, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %35 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %35 to i64
  %36 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims37 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %36, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* %dims37, i32 0, i64 %idxprom36
  %37 = bitcast i32* %arrayidx38 to i8*
  %arraydecay39 = getelementptr inbounds [18 x i8], [18 x i8]* %myname, i32 0, i32 0
  %call40 = call i32 @psread_byteorder(i32 %32, i32 %33, %struct._IO_FILE* %34, i8* %37, i64 4, i8* %arraydecay39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.35
  call void @terminate(i32 1)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.then.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims45 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %39, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %dims45, i32 0, i64 0
  %40 = load i32, i32* %arrayidx46, align 4
  %41 = load i32, i32* @nx, align 4
  %cmp47 = icmp ne i32 %40, %41
  br i1 %cmp47, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %42 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims48 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %42, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %dims48, i32 0, i64 1
  %43 = load i32, i32* %arrayidx49, align 4
  %44 = load i32, i32* @ny, align 4
  %cmp50 = icmp ne i32 %43, %44
  br i1 %cmp50, label %if.then.59, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false
  %45 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims52 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %45, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [4 x i32], [4 x i32]* %dims52, i32 0, i64 2
  %46 = load i32, i32* %arrayidx53, align 4
  %47 = load i32, i32* @nz, align 4
  %cmp54 = icmp ne i32 %46, %47
  br i1 %cmp54, label %if.then.59, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.51
  %48 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims56 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %48, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [4 x i32], [4 x i32]* %dims56, i32 0, i64 3
  %49 = load i32, i32* %arrayidx57, align 4
  %50 = load i32, i32* @nt, align 4
  %cmp58 = icmp ne i32 %49, %50
  br i1 %cmp58, label %if.then.59, label %if.end.93

if.then.59:                                       ; preds = %lor.lhs.false.55, %lor.lhs.false.51, %lor.lhs.false, %for.end
  %51 = load i32, i32* @nx, align 4
  %cmp60 = icmp ne i32 %51, -1
  br i1 %cmp60, label %if.then.67, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.then.59
  %52 = load i32, i32* @ny, align 4
  %cmp62 = icmp ne i32 %52, -1
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.61
  %53 = load i32, i32* @nz, align 4
  %cmp64 = icmp ne i32 %53, -1
  br i1 %cmp64, label %if.then.67, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.63
  %54 = load i32, i32* @nt, align 4
  %cmp66 = icmp ne i32 %54, -1
  br i1 %cmp66, label %if.then.67, label %if.else.81

if.then.67:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.63, %lor.lhs.false.61, %if.then.59
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.59, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.76, %if.then.67
  %55 = load i32, i32* %j, align 4
  %cmp70 = icmp slt i32 %55, 4
  br i1 %cmp70, label %for.body.71, label %for.end.78

for.body.71:                                      ; preds = %for.cond.69
  %56 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %56 to i64
  %57 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims73 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %57, i32 0, i32 2
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %dims73, i32 0, i64 %idxprom72
  %58 = load i32, i32* %arrayidx74, align 4
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i32 %58)
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.body.71
  %59 = load i32, i32* %j, align 4
  %inc77 = add nsw i32 %59, 1
  store i32 %inc77, i32* %j, align 4
  br label %for.cond.69

for.end.78:                                       ; preds = %for.cond.69
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call80 = call i32 @fflush(%struct._IO_FILE* %60)
  call void @terminate(i32 1)
  br label %if.end.92

if.else.81:                                       ; preds = %lor.lhs.false.65
  %61 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims82 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %61, i32 0, i32 2
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %dims82, i32 0, i64 0
  %62 = load i32, i32* %arrayidx83, align 4
  store i32 %62, i32* @nx, align 4
  %63 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims84 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %63, i32 0, i32 2
  %arrayidx85 = getelementptr inbounds [4 x i32], [4 x i32]* %dims84, i32 0, i64 1
  %64 = load i32, i32* %arrayidx85, align 4
  store i32 %64, i32* @ny, align 4
  %65 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims86 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %65, i32 0, i32 2
  %arrayidx87 = getelementptr inbounds [4 x i32], [4 x i32]* %dims86, i32 0, i64 2
  %66 = load i32, i32* %arrayidx87, align 4
  store i32 %66, i32* @nz, align 4
  %67 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims88 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %67, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [4 x i32], [4 x i32]* %dims88, i32 0, i64 3
  %68 = load i32, i32* %arrayidx89, align 4
  store i32 %68, i32* @nt, align 4
  %69 = load i32, i32* @nx, align 4
  %70 = load i32, i32* @ny, align 4
  %mul = mul nsw i32 %69, %70
  %71 = load i32, i32* @nz, align 4
  %mul90 = mul nsw i32 %mul, %71
  %72 = load i32, i32* @nt, align 4
  %mul91 = mul nsw i32 %mul90, %72
  store i32 %mul91, i32* @volume, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.81, %for.end.78
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %lor.lhs.false.55
  %73 = load i32, i32* %sixtyfourbits, align 4
  %cmp94 = icmp eq i32 %73, 0
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %if.end.93
  %74 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %74, i32 0, i32 3
  store i32 28, i32* %header_bytes, align 4
  br label %if.end.98

if.else.96:                                       ; preds = %if.end.93
  %75 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %header_bytes97 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %75, i32 0, i32 3
  store i32 48, i32* %header_bytes97, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.95
  %76 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %76, i32 0, i32 4
  store i32 0, i32* %order, align 4
  %77 = load i32*, i32** %byterevflag.addr, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %parallel.addr, align 4
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %81 = bitcast double* %c1 to i8*
  %arraydecay99 = getelementptr inbounds [18 x i8], [18 x i8]* %myname, i32 0, i32 0
  %call100 = call i32 @psread_byteorder(i32 %78, i32 %79, %struct._IO_FILE* %80, i8* %81, i64 8, i8* %arraydecay99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i32 0, i32 0))
  %cmp101 = icmp ne i32 %call100, 0
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.98
  call void @terminate(i32 1)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.98
  %82 = load i32*, i32** %byterevflag.addr, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %parallel.addr, align 4
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %86 = bitcast double* %c2 to i8*
  %arraydecay104 = getelementptr inbounds [18 x i8], [18 x i8]* %myname, i32 0, i32 0
  %call105 = call i32 @psread_byteorder(i32 %83, i32 %84, %struct._IO_FILE* %85, i8* %86, i64 8, i8* %arraydecay104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.103
  call void @terminate(i32 1)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %if.end.103
  %87 = load double, double* %c1, align 8
  %88 = load double, double* %c2, align 8
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i32 0, i32 0), double %87, double %88)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.else.25
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define i32 @read_1996_gauge_hdr(%struct.gauge_file* %gf, i32 %parallel, i32* %byterevflag) #0 {
entry:
  %retval = alloca i32, align 4
  %gf.addr = alloca %struct.gauge_file*, align 8
  %parallel.addr = alloca i32, align 4
  %byterevflag.addr = alloca i32*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %tmp = alloca i32, align 4
  %j = alloca i32, align 4
  %gauge_field = alloca %struct.anon, align 8
  %myname = alloca [20 x i8], align 16
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  store i32 %parallel, i32* %parallel.addr, align 4
  store i32* %byterevflag, i32** %byterevflag.addr, align 8
  %0 = bitcast [20 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @read_1996_gauge_hdr.myname, i32 0, i32 0), i64 20, i32 16, i1 false)
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp4 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp4, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 1
  %4 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %4, %struct.gauge_header** %gh, align 8
  %5 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %5, i32 0, i32 0
  %6 = load i32, i32* %magic_number, align 4
  store i32 %6, i32* %tmp, align 4
  %7 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number5 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %7, i32 0, i32 0
  %8 = load i32, i32* %magic_number5, align 4
  %cmp = icmp eq i32 %8, 53546
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.64, i32 0, i32 0))
  %9 = load i32*, i32** %byterevflag.addr, align 8
  store i32 0, i32* %9, align 4
  br label %if.end.15

if.else:                                          ; preds = %entry
  %10 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number6 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %10, i32 0, i32 0
  call void @byterevn(i32* %magic_number6, i32 1)
  %11 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number7 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %11, i32 0, i32 0
  %12 = load i32, i32* %magic_number7, align 4
  %cmp8 = icmp eq i32 %12, 53546
  br i1 %cmp8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else
  %13 = load i32*, i32** %byterevflag.addr, align 8
  store i32 1, i32* %13, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.65, i32 0, i32 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.66, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.58, i32 0, i32 0), i32 4, i32 8)
  call void @terminate(i32 1)
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %14 = load i32, i32* %tmp, align 4
  %15 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number14 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %15, i32 0, i32 0
  store i32 %14, i32* %magic_number14, align 4
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %16 = load i32*, i32** %byterevflag.addr, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %parallel.addr, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %20 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %20, i32 0, i32 2
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  %21 = bitcast i32* %arraydecay to i8*
  %arraydecay16 = getelementptr inbounds [20 x i8], [20 x i8]* %myname, i32 0, i32 0
  %call17 = call i32 @psread_byteorder(i32 %17, i32 %18, %struct._IO_FILE* %19, i8* %21, i64 16, i8* %arraydecay16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  call void @terminate(i32 1)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.15
  %22 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims21 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %22, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims21, i32 0, i64 0
  %23 = load i32, i32* %arrayidx, align 4
  %24 = load i32, i32* @nx, align 4
  %cmp22 = icmp ne i32 %23, %24
  br i1 %cmp22, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %25 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims23 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %25, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %dims23, i32 0, i64 1
  %26 = load i32, i32* %arrayidx24, align 4
  %27 = load i32, i32* @ny, align 4
  %cmp25 = icmp ne i32 %26, %27
  br i1 %cmp25, label %if.then.34, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false
  %28 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims27 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %28, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %dims27, i32 0, i64 2
  %29 = load i32, i32* %arrayidx28, align 4
  %30 = load i32, i32* @nz, align 4
  %cmp29 = icmp ne i32 %29, %30
  br i1 %cmp29, label %if.then.34, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.26
  %31 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims31 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %31, i32 0, i32 2
  %arrayidx32 = getelementptr inbounds [4 x i32], [4 x i32]* %dims31, i32 0, i64 3
  %32 = load i32, i32* %arrayidx32, align 4
  %33 = load i32, i32* @nt, align 4
  %cmp33 = icmp ne i32 %32, %33
  br i1 %cmp33, label %if.then.34, label %if.end.62

if.then.34:                                       ; preds = %lor.lhs.false.30, %lor.lhs.false.26, %lor.lhs.false, %if.end.20
  %34 = load i32, i32* @nx, align 4
  %cmp35 = icmp ne i32 %34, -1
  br i1 %cmp35, label %if.then.42, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.then.34
  %35 = load i32, i32* @ny, align 4
  %cmp37 = icmp ne i32 %35, -1
  br i1 %cmp37, label %if.then.42, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.36
  %36 = load i32, i32* @nz, align 4
  %cmp39 = icmp ne i32 %36, -1
  br i1 %cmp39, label %if.then.42, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.38
  %37 = load i32, i32* @nt, align 4
  %cmp41 = icmp ne i32 %37, -1
  br i1 %cmp41, label %if.then.42, label %if.else.50

if.then.42:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.38, %lor.lhs.false.36, %if.then.34
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.67, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.42
  %38 = load i32, i32* %j, align 4
  %cmp44 = icmp slt i32 %38, 4
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %j, align 4
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims45 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %40, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %dims45, i32 0, i64 %idxprom
  %41 = load i32, i32* %arrayidx46, align 4
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i32 %41)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %j, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call49 = call i32 @fflush(%struct._IO_FILE* %43)
  call void @terminate(i32 1)
  br label %if.end.61

if.else.50:                                       ; preds = %lor.lhs.false.40
  %44 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims51 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %44, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %dims51, i32 0, i64 0
  %45 = load i32, i32* %arrayidx52, align 4
  store i32 %45, i32* @nx, align 4
  %46 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims53 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %46, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %dims53, i32 0, i64 1
  %47 = load i32, i32* %arrayidx54, align 4
  store i32 %47, i32* @ny, align 4
  %48 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims55 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %48, i32 0, i32 2
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %dims55, i32 0, i64 2
  %49 = load i32, i32* %arrayidx56, align 4
  store i32 %49, i32* @nz, align 4
  %50 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims57 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %50, i32 0, i32 2
  %arrayidx58 = getelementptr inbounds [4 x i32], [4 x i32]* %dims57, i32 0, i64 3
  %51 = load i32, i32* %arrayidx58, align 4
  store i32 %51, i32* @nt, align 4
  %52 = load i32, i32* @nx, align 4
  %53 = load i32, i32* @ny, align 4
  %mul = mul nsw i32 %52, %53
  %54 = load i32, i32* @nz, align 4
  %mul59 = mul nsw i32 %mul, %54
  %55 = load i32, i32* @nt, align 4
  %mul60 = mul nsw i32 %mul59, %55
  store i32 %mul60, i32* @volume, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.50, %for.end
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %lor.lhs.false.30
  %56 = load i32*, i32** %byterevflag.addr, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %parallel.addr, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %60 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %60, i32 0, i32 3
  %61 = bitcast i32* %header_bytes to i8*
  %arraydecay63 = getelementptr inbounds [20 x i8], [20 x i8]* %myname, i32 0, i32 0
  %call64 = call i32 @psread_byteorder(i32 %57, i32 %58, %struct._IO_FILE* %59, i8* %61, i64 4, i8* %arraydecay63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0))
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.62
  call void @terminate(i32 1)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.end.62
  %62 = load i32*, i32** %byterevflag.addr, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %parallel.addr, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %66 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %66, i32 0, i32 4
  %67 = bitcast i32* %order to i8*
  %arraydecay68 = getelementptr inbounds [20 x i8], [20 x i8]* %myname, i32 0, i32 0
  %call69 = call i32 @psread_byteorder(i32 %63, i32 %64, %struct._IO_FILE* %65, i8* %67, i64 4, i8* %arraydecay68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0))
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.end.67
  call void @terminate(i32 1)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.end.67
  %68 = load i32*, i32** %byterevflag.addr, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %parallel.addr, align 4
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %n_descript = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 0
  %72 = bitcast i32* %n_descript to i8*
  %arraydecay73 = getelementptr inbounds [20 x i8], [20 x i8]* %myname, i32 0, i32 0
  %call74 = call i32 @psread_byteorder(i32 %69, i32 %70, %struct._IO_FILE* %71, i8* %72, i64 4, i8* %arraydecay73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0))
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.72
  call void @terminate(i32 1)
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.72
  %n_descript78 = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 0
  %73 = load i32, i32* %n_descript78, align 4
  %cmp79 = icmp sgt i32 %73, 200
  br i1 %cmp79, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %if.end.77
  %n_descript81 = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 0
  %74 = load i32, i32* %n_descript81, align 4
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.70, i32 0, i32 0), i32 %74)
  %call83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0), i32 200)
  call void @terminate(i32 1)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %if.end.77
  %75 = load i32, i32* %parallel.addr, align 4
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %descript = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 1
  %arraydecay85 = getelementptr inbounds [200 x i8], [200 x i8]* %descript, i32 0, i32 0
  %arraydecay86 = getelementptr inbounds [20 x i8], [20 x i8]* %myname, i32 0, i32 0
  %call87 = call i32 @psread_data(i32 %75, %struct._IO_FILE* %76, i8* %arraydecay85, i64 200, i8* %arraydecay86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0))
  %cmp88 = icmp ne i32 %call87, 0
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.84
  call void @terminate(i32 1)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.end.84
  %n_descript91 = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 0
  %77 = load i32, i32* %n_descript91, align 4
  %sub = sub nsw i32 %77, 1
  %idxprom92 = sext i32 %sub to i64
  %descript93 = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [200 x i8], [200 x i8]* %descript93, i32 0, i64 %idxprom92
  store i8 0, i8* %arrayidx94, align 1
  %descript95 = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 1
  %arraydecay96 = getelementptr inbounds [200 x i8], [200 x i8]* %descript95, i32 0, i32 0
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay96)
  %78 = load i32*, i32** %byterevflag.addr, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %parallel.addr, align 4
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %n_param = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 2
  %82 = bitcast i32* %n_param to i8*
  %arraydecay98 = getelementptr inbounds [20 x i8], [20 x i8]* %myname, i32 0, i32 0
  %call99 = call i32 @psread_byteorder(i32 %79, i32 %80, %struct._IO_FILE* %81, i8* %82, i64 4, i8* %arraydecay98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0))
  %cmp100 = icmp ne i32 %call99, 0
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.90
  call void @terminate(i32 1)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %if.end.90
  %n_param103 = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 2
  %83 = load i32, i32* %n_param103, align 4
  %cmp104 = icmp sgt i32 %83, 2
  br i1 %cmp104, label %if.then.105, label %if.end.109

if.then.105:                                      ; preds = %if.end.102
  %n_param106 = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 2
  %84 = load i32, i32* %n_param106, align 4
  %call107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.75, i32 0, i32 0), i32 %84)
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.71, i32 0, i32 0), i32 2)
  call void @terminate(i32 1)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.105, %if.end.102
  store i32 0, i32* %j, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.125, %if.end.109
  %85 = load i32, i32* %j, align 4
  %n_param111 = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 2
  %86 = load i32, i32* %n_param111, align 4
  %cmp112 = icmp slt i32 %85, %86
  br i1 %cmp112, label %for.body.113, label %for.end.127

for.body.113:                                     ; preds = %for.cond.110
  %87 = load i32*, i32** %byterevflag.addr, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %parallel.addr, align 4
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %91 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %91 to i64
  %param = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 3
  %arrayidx115 = getelementptr inbounds [2 x double], [2 x double]* %param, i32 0, i64 %idxprom114
  %92 = bitcast double* %arrayidx115 to i8*
  %arraydecay116 = getelementptr inbounds [20 x i8], [20 x i8]* %myname, i32 0, i32 0
  %call117 = call i32 @psread_byteorder(i32 %88, i32 %89, %struct._IO_FILE* %90, i8* %92, i64 8, i8* %arraydecay116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0))
  %cmp118 = icmp ne i32 %call117, 0
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %for.body.113
  call void @terminate(i32 1)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %for.body.113
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %94 to i64
  %param122 = getelementptr inbounds %struct.anon, %struct.anon* %gauge_field, i32 0, i32 3
  %arrayidx123 = getelementptr inbounds [2 x double], [2 x double]* %param122, i32 0, i64 %idxprom121
  %95 = load double, double* %arrayidx123, align 8
  %call124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.77, i32 0, i32 0), i32 %93, double %95)
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.120
  %96 = load i32, i32* %j, align 4
  %inc126 = add nsw i32 %96, 1
  store i32 %inc126, i32* %j, align 4
  br label %for.cond.110

for.end.127:                                      ; preds = %for.cond.110
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.127, %if.else.13
  %97 = load i32, i32* %retval
  ret i32 %97
}

; Function Attrs: nounwind uwtable
define i32 @read_gauge_hdr(%struct.gauge_file* %gf, i32 %parallel) #0 {
entry:
  %retval = alloca i32, align 4
  %gf.addr = alloca %struct.gauge_file*, align 8
  %parallel.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %tmp = alloca i32, align 4
  %btmp = alloca i32, align 4
  %j = alloca i32, align 4
  %byterevflag = alloca i32, align 4
  %myname = alloca [15 x i8], align 1
  %i = alloca i32, align 4
  %hdr = alloca %struct.QCDheader*, align 8
  %dims = alloca [4 x i32], align 16
  %ARCHYES = alloca i32, align 4
  %chksum = alloca i32, align 4
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  store i32 %parallel, i32* %parallel.addr, align 4
  %0 = bitcast [15 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @read_gauge_hdr.myname, i32 0, i32 0), i64 15, i32 1, i1 false)
  store i32 0, i32* %ARCHYES, align 4
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp10 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp10, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 1
  %4 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %4, %struct.gauge_header** %gh, align 8
  %5 = load i32, i32* %parallel.addr, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %7 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %7, i32 0, i32 0
  %8 = bitcast i32* %magic_number to i8*
  %arraydecay = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  %call = call i32 @psread_data(i32 %5, %struct._IO_FILE* %6, i8* %8, i64 4, i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0))
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number11 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %9, i32 0, i32 0
  %10 = load i32, i32* %magic_number11, align 4
  store i32 %10, i32* %tmp, align 4
  %11 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number12 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %11, i32 0, i32 0
  %12 = load i32, i32* %magic_number12, align 4
  store i32 %12, i32* %btmp, align 4
  call void @byterevn(i32* %btmp, i32 1)
  %13 = load i32, i32* %tmp, align 4
  %cmp13 = icmp eq i32 %13, 1111836489
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.78, i32 0, i32 0))
  store i32 1, i32* %ARCHYES, align 4
  store i32 0, i32* %byterevflag, align 4
  br label %if.end.48

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* %btmp, align 4
  %cmp16 = icmp eq i32 %14, 1111836489
  br i1 %cmp16, label %if.then.17, label %if.else.23

if.then.17:                                       ; preds = %if.else
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.79, i32 0, i32 0))
  store i32 1, i32* %ARCHYES, align 4
  store i32 1, i32* %byterevflag, align 4
  %15 = load i32, i32* %btmp, align 4
  %16 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number19 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %16, i32 0, i32 0
  store i32 %15, i32* %magic_number19, align 4
  %arraydecay20 = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0), i8* %arraydecay20)
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.58, i32 0, i32 0), i32 4, i32 8)
  call void @terminate(i32 1)
  br label %if.end.47

if.else.23:                                       ; preds = %if.else
  %17 = load i32, i32* %tmp, align 4
  %cmp24 = icmp eq i32 %17, 20103
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.23
  store i32 0, i32* %byterevflag, align 4
  br label %if.end.46

if.else.26:                                       ; preds = %if.else.23
  %18 = load i32, i32* %btmp, align 4
  %cmp27 = icmp eq i32 %18, 20103
  br i1 %cmp27, label %if.then.28, label %if.else.34

if.then.28:                                       ; preds = %if.else.26
  store i32 1, i32* %byterevflag, align 4
  %19 = load i32, i32* %btmp, align 4
  %20 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number29 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %20, i32 0, i32 0
  store i32 %19, i32* %magic_number29, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i32 0, i32 0))
  %arraydecay31 = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0), i8* %arraydecay31)
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.58, i32 0, i32 0), i32 4, i32 8)
  call void @terminate(i32 1)
  br label %if.end.45

if.else.34:                                       ; preds = %if.else.26
  %21 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %22 = load i32, i32* %parallel.addr, align 4
  %call35 = call i32 @read_v3_gauge_hdr(%struct.gauge_file* %21, i32 %22, i32* %byterevflag)
  %cmp36 = icmp ne i32 %call35, 0
  br i1 %cmp36, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.else.34
  %23 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %24 = load i32, i32* %parallel.addr, align 4
  %call37 = call i32 @read_1996_gauge_hdr(%struct.gauge_file* %23, i32 %24, i32* %byterevflag)
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %land.lhs.true
  %arraydecay40 = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.82, i32 0, i32 0), i8* %arraydecay40)
  %25 = load i32, i32* %tmp, align 4
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.83, i32 0, i32 0), i32 20103, i32 %25)
  %26 = load i32, i32* %tmp, align 4
  %conv = sext i32 %26 to i64
  %27 = inttoptr i64 %conv to i8*
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0), i8* inttoptr (i64 20103 to i8*), i8* %27)
  call void @terminate(i32 1)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %land.lhs.true, %if.else.34
  %28 = load i32, i32* %byterevflag, align 4
  store i32 %28, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.then.28
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.25
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.17
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.14
  %29 = load i32, i32* %ARCHYES, align 4
  %cmp49 = icmp eq i32 %29, 1
  br i1 %cmp49, label %if.then.51, label %if.else.95

if.then.51:                                       ; preds = %if.end.48
  %30 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header52 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %30, i32 0, i32 1
  %31 = load %struct.gauge_header*, %struct.gauge_header** %header52, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %31, i32 0, i32 4
  store i32 0, i32* %order, align 4
  %32 = load i32, i32* %parallel.addr, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.then.51
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay54 = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.85, i32 0, i32 0), i8* %arraydecay54)
  call void @terminate(i32 1)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.then.51
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call57 = call %struct.QCDheader* @qcdhdr_get_hdr(%struct._IO_FILE* %34)
  store %struct.QCDheader* %call57, %struct.QCDheader** %hdr, align 8
  %35 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %arraydecay58 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay58, i64 0
  %call59 = call i32 @qcdhdr_get_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), %struct.QCDheader* %35, i32* %add.ptr)
  %cmp60 = icmp eq i32 %call59, -1
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.56
  call void @error_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i32 0, i32 0))
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.end.56
  %36 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %arraydecay64 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  %add.ptr65 = getelementptr inbounds i32, i32* %arraydecay64, i64 1
  %call66 = call i32 @qcdhdr_get_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0), %struct.QCDheader* %36, i32* %add.ptr65)
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.63
  call void @error_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %if.end.63
  %37 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %arraydecay71 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  %add.ptr72 = getelementptr inbounds i32, i32* %arraydecay71, i64 2
  %call73 = call i32 @qcdhdr_get_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i32 0, i32 0), %struct.QCDheader* %37, i32* %add.ptr72)
  %cmp74 = icmp eq i32 %call73, -1
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.70
  call void @error_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.70
  %38 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %arraydecay78 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i32 0
  %add.ptr79 = getelementptr inbounds i32, i32* %arraydecay78, i64 3
  %call80 = call i32 @qcdhdr_get_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0), %struct.QCDheader* %38, i32* %add.ptr79)
  %cmp81 = icmp eq i32 %call80, -1
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.77
  call void @error_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i32 0, i32 0))
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.77
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.84
  %39 = load i32, i32* %i, align 4
  %cmp85 = icmp slt i32 %39, 4
  br i1 %cmp85, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i32, i32* %i, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom
  %41 = load i32, i32* %arrayidx, align 4
  %42 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %42 to i64
  %43 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims88 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %43, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [4 x i32], [4 x i32]* %dims88, i32 0, i64 %idxprom87
  store i32 %41, i32* %arrayidx89, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  %call90 = call i32 @qcdhdr_get_int32x(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i32 0, i32 0), %struct.QCDheader* %45, i32* %chksum)
  %cmp91 = icmp eq i32 %call90, -1
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %for.end
  call void @error_exit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.95, i32 0, i32 0))
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %for.end
  %46 = load i32, i32* %chksum, align 4
  %47 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %47, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 0
  store i32 %46, i32* %sum31, align 4
  br label %if.end.104

if.else.95:                                       ; preds = %if.end.48
  %48 = load i32, i32* %byterevflag, align 4
  %49 = load i32, i32* %parallel.addr, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %51 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims96 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %51, i32 0, i32 2
  %arraydecay97 = getelementptr inbounds [4 x i32], [4 x i32]* %dims96, i32 0, i32 0
  %52 = bitcast i32* %arraydecay97 to i8*
  %arraydecay98 = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  %call99 = call i32 @psread_byteorder(i32 %48, i32 %49, %struct._IO_FILE* %50, i8* %52, i64 16, i8* %arraydecay98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0))
  %cmp100 = icmp ne i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.else.95
  call void @terminate(i32 1)
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.else.95
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.94
  %53 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims105 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %53, i32 0, i32 2
  %arrayidx106 = getelementptr inbounds [4 x i32], [4 x i32]* %dims105, i32 0, i64 0
  %54 = load i32, i32* %arrayidx106, align 4
  %55 = load i32, i32* @nx, align 4
  %cmp107 = icmp ne i32 %54, %55
  br i1 %cmp107, label %if.then.123, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.104
  %56 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims109 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %56, i32 0, i32 2
  %arrayidx110 = getelementptr inbounds [4 x i32], [4 x i32]* %dims109, i32 0, i64 1
  %57 = load i32, i32* %arrayidx110, align 4
  %58 = load i32, i32* @ny, align 4
  %cmp111 = icmp ne i32 %57, %58
  br i1 %cmp111, label %if.then.123, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false
  %59 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims114 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %59, i32 0, i32 2
  %arrayidx115 = getelementptr inbounds [4 x i32], [4 x i32]* %dims114, i32 0, i64 2
  %60 = load i32, i32* %arrayidx115, align 4
  %61 = load i32, i32* @nz, align 4
  %cmp116 = icmp ne i32 %60, %61
  br i1 %cmp116, label %if.then.123, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %lor.lhs.false.113
  %62 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims119 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %62, i32 0, i32 2
  %arrayidx120 = getelementptr inbounds [4 x i32], [4 x i32]* %dims119, i32 0, i64 3
  %63 = load i32, i32* %arrayidx120, align 4
  %64 = load i32, i32* @nt, align 4
  %cmp121 = icmp ne i32 %63, %64
  br i1 %cmp121, label %if.then.123, label %if.end.163

if.then.123:                                      ; preds = %lor.lhs.false.118, %lor.lhs.false.113, %lor.lhs.false, %if.end.104
  %65 = load i32, i32* @nx, align 4
  %cmp124 = icmp ne i32 %65, -1
  br i1 %cmp124, label %if.then.135, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.then.123
  %66 = load i32, i32* @ny, align 4
  %cmp127 = icmp ne i32 %66, -1
  br i1 %cmp127, label %if.then.135, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %lor.lhs.false.126
  %67 = load i32, i32* @nz, align 4
  %cmp130 = icmp ne i32 %67, -1
  br i1 %cmp130, label %if.then.135, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %lor.lhs.false.129
  %68 = load i32, i32* @nt, align 4
  %cmp133 = icmp ne i32 %68, -1
  br i1 %cmp133, label %if.then.135, label %if.else.151

if.then.135:                                      ; preds = %lor.lhs.false.132, %lor.lhs.false.129, %lor.lhs.false.126, %if.then.123
  %arraydecay136 = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.96, i32 0, i32 0), i8* %arraydecay136)
  store i32 0, i32* %j, align 4
  br label %for.cond.138

for.cond.138:                                     ; preds = %for.inc.146, %if.then.135
  %69 = load i32, i32* %j, align 4
  %cmp139 = icmp slt i32 %69, 4
  br i1 %cmp139, label %for.body.141, label %for.end.148

for.body.141:                                     ; preds = %for.cond.138
  %70 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %70 to i64
  %71 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims143 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %71, i32 0, i32 2
  %arrayidx144 = getelementptr inbounds [4 x i32], [4 x i32]* %dims143, i32 0, i64 %idxprom142
  %72 = load i32, i32* %arrayidx144, align 4
  %call145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), i32 %72)
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.141
  %73 = load i32, i32* %j, align 4
  %inc147 = add nsw i32 %73, 1
  store i32 %inc147, i32* %j, align 4
  br label %for.cond.138

for.end.148:                                      ; preds = %for.cond.138
  %call149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call150 = call i32 @fflush(%struct._IO_FILE* %74)
  call void @terminate(i32 1)
  br label %if.end.162

if.else.151:                                      ; preds = %lor.lhs.false.132
  %75 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims152 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %75, i32 0, i32 2
  %arrayidx153 = getelementptr inbounds [4 x i32], [4 x i32]* %dims152, i32 0, i64 0
  %76 = load i32, i32* %arrayidx153, align 4
  store i32 %76, i32* @nx, align 4
  %77 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims154 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %77, i32 0, i32 2
  %arrayidx155 = getelementptr inbounds [4 x i32], [4 x i32]* %dims154, i32 0, i64 1
  %78 = load i32, i32* %arrayidx155, align 4
  store i32 %78, i32* @ny, align 4
  %79 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims156 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %79, i32 0, i32 2
  %arrayidx157 = getelementptr inbounds [4 x i32], [4 x i32]* %dims156, i32 0, i64 2
  %80 = load i32, i32* %arrayidx157, align 4
  store i32 %80, i32* @nz, align 4
  %81 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims158 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %81, i32 0, i32 2
  %arrayidx159 = getelementptr inbounds [4 x i32], [4 x i32]* %dims158, i32 0, i64 3
  %82 = load i32, i32* %arrayidx159, align 4
  store i32 %82, i32* @nt, align 4
  %83 = load i32, i32* @nx, align 4
  %84 = load i32, i32* @ny, align 4
  %mul = mul nsw i32 %83, %84
  %85 = load i32, i32* @nz, align 4
  %mul160 = mul nsw i32 %mul, %85
  %86 = load i32, i32* @nt, align 4
  %mul161 = mul nsw i32 %mul160, %86
  store i32 %mul161, i32* @volume, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.else.151, %for.end.148
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %lor.lhs.false.118
  %87 = load i32, i32* %ARCHYES, align 4
  %tobool164 = icmp ne i32 %87, 0
  br i1 %tobool164, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %if.end.163
  %88 = load %struct.QCDheader*, %struct.QCDheader** %hdr, align 8
  call void @qcdhdr_destroy_hdr(%struct.QCDheader* %88)
  br label %if.end.181

if.else.166:                                      ; preds = %if.end.163
  %89 = load i32, i32* %parallel.addr, align 4
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %91 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %91, i32 0, i32 1
  %arraydecay167 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %arraydecay168 = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  %call169 = call i32 @psread_data(i32 %89, %struct._IO_FILE* %90, i8* %arraydecay167, i64 64, i8* %arraydecay168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i32 0, i32 0))
  %cmp170 = icmp ne i32 %call169, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.else.166
  call void @terminate(i32 1)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.172, %if.else.166
  %92 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %92, i32 0, i32 3
  store i32 88, i32* %header_bytes, align 4
  %93 = load i32, i32* %byterevflag, align 4
  %94 = load i32, i32* %parallel.addr, align 4
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %96 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %order174 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %96, i32 0, i32 4
  %97 = bitcast i32* %order174 to i8*
  %arraydecay175 = getelementptr inbounds [15 x i8], [15 x i8]* %myname, i32 0, i32 0
  %call176 = call i32 @psread_byteorder(i32 %93, i32 %94, %struct._IO_FILE* %95, i8* %97, i64 4, i8* %arraydecay175, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.98, i32 0, i32 0))
  %cmp177 = icmp ne i32 %call176, 0
  br i1 %cmp177, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.173
  call void @terminate(i32 1)
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.179, %if.end.173
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.165
  %98 = load i32, i32* %byterevflag, align 4
  store i32 %98, i32* %retval
  br label %return

return:                                           ; preds = %if.end.181, %if.end.44
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @r_serial_i(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %byterevflag = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @setup_input_gauge_file(i8* %0)
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 1
  %2 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %2, %struct.gauge_header** %gh, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 5
  store i32 0, i32* %parallel, align 4
  %4 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* @this_node, align 4
  %8 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32* @__errno_location() #7
  %9 = load i32, i32* %call4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.100, i32 0, i32 0), i32 %7, i8* %8, i32 %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %10)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %12 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp7 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %12, i32 0, i32 0
  store %struct._IO_FILE* %11, %struct._IO_FILE** %fp7, align 8
  %13 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %call8 = call i32 @read_gauge_hdr(%struct.gauge_file* %13, i32 0)
  store i32 %call8, i32* %byterevflag, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %14 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp9 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %14, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.end
  %15 = bitcast i32* %byterevflag to i8*
  call void @broadcast_bytes(i8* %15, i32 4)
  %16 = load i32, i32* %byterevflag, align 4
  %17 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %byterevflag11 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %17, i32 0, i32 3
  store i32 %16, i32* %byterevflag11, align 4
  %18 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %19 = bitcast %struct.gauge_header* %18 to i8*
  call void @broadcast_bytes(i8* %19, i32 92)
  %20 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @read_site_list(i32 0, %struct.gauge_file* %20)
  %21 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %21
}

; Function Attrs: nounwind uwtable
define void @r_serial(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %filename = alloca i8*, align 8
  %byterevflag = alloca i32, align 4
  %offset = alloca i64, align 8
  %gauge_check_size = alloca i64, align 8
  %coord_list_size = alloca i64, align 8
  %head_size = alloca i64, align 8
  %checksum_offset = alloca i64, align 8
  %rcv_rank = alloca i32, align 4
  %rcv_coords = alloca i32, align 4
  %destnode = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %buf_length = alloca i32, align 4
  %where_in_buf = alloca i32, align 4
  %test_gc = alloca %struct.gauge_check, align 4
  %val = alloca i32*, align 8
  %rank29 = alloca i32, align 4
  %rank31 = alloca i32, align 4
  %lbuf = alloca %struct.su3_matrix*, align 8
  %myname = alloca [9 x i8], align 1
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  %0 = bitcast [9 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @r_serial.myname, i32 0, i32 0), i64 9, i32 1, i1 false)
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp1 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 1
  %4 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %4, %struct.gauge_header** %gh, align 8
  %5 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %5, i32 0, i32 2
  %6 = load i8*, i8** %filename2, align 8
  store i8* %6, i8** %filename, align 8
  %7 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %byterevflag3 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %7, i32 0, i32 3
  %8 = load i32, i32* %byterevflag3, align 4
  store i32 %8, i32* %byterevflag, align 4
  %9 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.38

if.then:                                          ; preds = %entry
  %10 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %10, i32 0, i32 0
  %11 = load i32, i32* %magic_number, align 4
  %cmp4 = icmp eq i32 %11, 20103
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  store i64 8, i64* %gauge_check_size, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %12 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number6 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %12, i32 0, i32 0
  %13 = load i32, i32* %magic_number6, align 4
  %cmp7 = icmp eq i32 %13, 53546
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  store i64 4, i64* %gauge_check_size, align 8
  br label %if.end

if.else.9:                                        ; preds = %if.else
  store i64 0, i64* %gauge_check_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.9, %if.then.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.5
  %14 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header11 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %14, i32 0, i32 1
  %15 = load %struct.gauge_header*, %struct.gauge_header** %header11, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %15, i32 0, i32 4
  %16 = load i32, i32* %order, align 4
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.10
  store i64 0, i64* %coord_list_size, align 8
  br label %if.end.15

if.else.14:                                       ; preds = %if.end.10
  %17 = load i32, i32* @volume, align 4
  %conv = sext i32 %17 to i64
  %mul = mul i64 4, %conv
  store i64 %mul, i64* %coord_list_size, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  %18 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header16 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %18, i32 0, i32 1
  %19 = load %struct.gauge_header*, %struct.gauge_header** %header16, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %19, i32 0, i32 3
  %20 = load i32, i32* %header_bytes, align 4
  %conv17 = sext i32 %20 to i64
  %21 = load i64, i64* %coord_list_size, align 8
  %add = add nsw i64 %conv17, %21
  store i64 %add, i64* %checksum_offset, align 8
  %22 = load i64, i64* %checksum_offset, align 8
  %23 = load i64, i64* %gauge_check_size, align 8
  %add18 = add nsw i64 %22, %23
  store i64 %add18, i64* %head_size, align 8
  %24 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %24, i32 0, i32 5
  %25 = load i32, i32* %parallel, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %myname, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.101, i32 0, i32 0), i8* %arraydecay)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.15
  %call21 = call noalias i8* @calloc(i64 16384, i64 144) #5
  %26 = bitcast i8* %call21 to %struct.su3_matrix*
  store %struct.su3_matrix* %26, %struct.su3_matrix** %lbuf, align 8
  %27 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %cmp22 = icmp eq %struct.su3_matrix* %27, null
  br i1 %cmp22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.end.20
  %arraydecay25 = getelementptr inbounds [9 x i8], [9 x i8]* %myname, i32 0, i32 0
  %28 = load i32, i32* @this_node, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.102, i32 0, i32 0), i8* %arraydecay25, i32 %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call27 = call i32 @fflush(%struct._IO_FILE* %29)
  call void @terminate(i32 1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.24, %if.end.20
  %30 = load i64, i64* %head_size, align 8
  store i64 %30, i64* %offset, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %32 = load i64, i64* %offset, align 8
  %call29 = call i32 @fseek(%struct._IO_FILE* %31, i64 %32, i32 0)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.end.28
  %arraydecay33 = getelementptr inbounds [9 x i8], [9 x i8]* %myname, i32 0, i32 0
  %call34 = call i32* @__errno_location() #7
  %33 = load i32, i32* %call34, align 4
  %34 = load i8*, i8** %filename, align 8
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.103, i32 0, i32 0), i8* %arraydecay33, i32 %33, i8* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call36 = call i32 @fflush(%struct._IO_FILE* %35)
  call void @terminate(i32 1)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.end.28
  store i32 0, i32* %buf_length, align 4
  store i32 0, i32* %where_in_buf, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %entry
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  store i32 0, i32* %sum29, align 4
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  store i32 0, i32* %sum31, align 4
  store i32 0, i32* %rank29, align 4
  store i32 0, i32* %rank31, align 4
  call void (...) @g_sync()
  store i32 0, i32* %rcv_rank, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.150, %if.end.38
  %36 = load i32, i32* %rcv_rank, align 4
  %37 = load i32, i32* @volume, align 4
  %cmp39 = icmp slt i32 %36, %37
  br i1 %cmp39, label %for.body, label %for.end.152

for.body:                                         ; preds = %for.cond
  %38 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header41 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %38, i32 0, i32 1
  %39 = load %struct.gauge_header*, %struct.gauge_header** %header41, align 8
  %order42 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %39, i32 0, i32 4
  %40 = load i32, i32* %order42, align 4
  %cmp43 = icmp eq i32 %40, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %for.body
  %41 = load i32, i32* %rcv_rank, align 4
  store i32 %41, i32* %rcv_coords, align 4
  br label %if.end.47

if.else.46:                                       ; preds = %for.body
  %42 = load i32, i32* %rcv_rank, align 4
  %idxprom = sext i32 %42 to i64
  %43 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %43, i32 0, i32 4
  %44 = load i32*, i32** %rank2rcv, align 8
  %arrayidx = getelementptr inbounds i32, i32* %44, i64 %idxprom
  %45 = load i32, i32* %arrayidx, align 4
  store i32 %45, i32* %rcv_coords, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.then.45
  %46 = load i32, i32* %rcv_coords, align 4
  %47 = load i32, i32* @nx, align 4
  %rem = srem i32 %46, %47
  store i32 %rem, i32* %x, align 4
  %48 = load i32, i32* @nx, align 4
  %49 = load i32, i32* %rcv_coords, align 4
  %div = sdiv i32 %49, %48
  store i32 %div, i32* %rcv_coords, align 4
  %50 = load i32, i32* %rcv_coords, align 4
  %51 = load i32, i32* @ny, align 4
  %rem48 = srem i32 %50, %51
  store i32 %rem48, i32* %y, align 4
  %52 = load i32, i32* @ny, align 4
  %53 = load i32, i32* %rcv_coords, align 4
  %div49 = sdiv i32 %53, %52
  store i32 %div49, i32* %rcv_coords, align 4
  %54 = load i32, i32* %rcv_coords, align 4
  %55 = load i32, i32* @nz, align 4
  %rem50 = srem i32 %54, %55
  store i32 %rem50, i32* %z, align 4
  %56 = load i32, i32* @nz, align 4
  %57 = load i32, i32* %rcv_coords, align 4
  %div51 = sdiv i32 %57, %56
  store i32 %div51, i32* %rcv_coords, align 4
  %58 = load i32, i32* %rcv_coords, align 4
  %59 = load i32, i32* @nt, align 4
  %rem52 = srem i32 %58, %59
  store i32 %rem52, i32* %t, align 4
  %60 = load i32, i32* %x, align 4
  %61 = load i32, i32* %y, align 4
  %62 = load i32, i32* %z, align 4
  %63 = load i32, i32* %t, align 4
  %call53 = call i32 @node_number(i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %call53, i32* %destnode, align 4
  %64 = load i32, i32* @this_node, align 4
  %cmp54 = icmp eq i32 %64, 0
  br i1 %cmp54, label %if.then.56, label %if.else.91

if.then.56:                                       ; preds = %if.end.47
  %65 = load i32, i32* %where_in_buf, align 4
  %66 = load i32, i32* %buf_length, align 4
  %cmp57 = icmp eq i32 %65, %66
  br i1 %cmp57, label %if.then.59, label %if.end.75

if.then.59:                                       ; preds = %if.then.56
  %67 = load i32, i32* @volume, align 4
  %68 = load i32, i32* %rcv_rank, align 4
  %sub = sub nsw i32 %67, %68
  store i32 %sub, i32* %buf_length, align 4
  %69 = load i32, i32* %buf_length, align 4
  %cmp60 = icmp sgt i32 %69, 4096
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.59
  store i32 4096, i32* %buf_length, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.then.59
  %70 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %71 = bitcast %struct.su3_matrix* %70 to i8*
  %72 = load i32, i32* %buf_length, align 4
  %conv64 = sext i32 %72 to i64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call65 = call i64 @fread(i8* %71, i64 576, i64 %conv64, %struct._IO_FILE* %73)
  %conv66 = trunc i64 %call65 to i32
  %74 = load i32, i32* %buf_length, align 4
  %cmp67 = icmp ne i32 %conv66, %74
  br i1 %cmp67, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.end.63
  %arraydecay70 = getelementptr inbounds [9 x i8], [9 x i8]* %myname, i32 0, i32 0
  %75 = load i32, i32* @this_node, align 4
  %call71 = call i32* @__errno_location() #7
  %76 = load i32, i32* %call71, align 4
  %77 = load i8*, i8** %filename, align 8
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.104, i32 0, i32 0), i8* %arraydecay70, i32 %75, i32 %76, i8* %77)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call73 = call i32 @fflush(%struct._IO_FILE* %78)
  call void @terminate(i32 1)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.69, %if.end.63
  store i32 0, i32* %where_in_buf, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.56
  %79 = load i32, i32* %destnode, align 4
  %cmp76 = icmp eq i32 %79, 0
  br i1 %cmp76, label %if.then.78, label %if.else.86

if.then.78:                                       ; preds = %if.end.75
  %80 = load i32, i32* %x, align 4
  %81 = load i32, i32* %y, align 4
  %82 = load i32, i32* %z, align 4
  %83 = load i32, i32* %t, align 4
  %call79 = call i32 @node_index(i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %call79, i32* %i, align 4
  %84 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %84 to i64
  %85 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx81 = getelementptr inbounds %struct.site, %struct.site* %85, i64 %idxprom80
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx81, i32 0, i32 8
  %arrayidx82 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 0
  %86 = bitcast %struct.su3_matrix* %arrayidx82 to i8*
  %87 = load i32, i32* %where_in_buf, align 4
  %mul83 = mul nsw i32 4, %87
  %idxprom84 = sext i32 %mul83 to i64
  %88 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx85 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %88, i64 %idxprom84
  %89 = bitcast %struct.su3_matrix* %arrayidx85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %89, i64 576, i32 1, i1 false)
  br label %if.end.90

if.else.86:                                       ; preds = %if.end.75
  %90 = load i32, i32* %where_in_buf, align 4
  %mul87 = mul nsw i32 4, %90
  %idxprom88 = sext i32 %mul87 to i64
  %91 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx89 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %91, i64 %idxprom88
  %92 = bitcast %struct.su3_matrix* %arrayidx89 to i8*
  %93 = load i32, i32* %destnode, align 4
  call void @send_field(i8* %92, i32 576, i32 %93)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.86, %if.then.78
  %94 = load i32, i32* %where_in_buf, align 4
  %inc = add nsw i32 %94, 1
  store i32 %inc, i32* %where_in_buf, align 4
  br label %if.end.101

if.else.91:                                       ; preds = %if.end.47
  %95 = load i32, i32* @this_node, align 4
  %96 = load i32, i32* %destnode, align 4
  %cmp92 = icmp eq i32 %95, %96
  br i1 %cmp92, label %if.then.94, label %if.end.100

if.then.94:                                       ; preds = %if.else.91
  %97 = load i32, i32* %x, align 4
  %98 = load i32, i32* %y, align 4
  %99 = load i32, i32* %z, align 4
  %100 = load i32, i32* %t, align 4
  %call95 = call i32 @node_index(i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 %call95, i32* %i, align 4
  %101 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %101 to i64
  %102 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx97 = getelementptr inbounds %struct.site, %struct.site* %102, i64 %idxprom96
  %link98 = getelementptr inbounds %struct.site, %struct.site* %arrayidx97, i32 0, i32 8
  %arrayidx99 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link98, i32 0, i64 0
  %103 = bitcast %struct.su3_matrix* %arrayidx99 to i8*
  call void @get_field(i8* %103, i32 576)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.94, %if.else.91
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.90
  %104 = load i32, i32* @this_node, align 4
  %105 = load i32, i32* %destnode, align 4
  %cmp102 = icmp eq i32 %104, %105
  br i1 %cmp102, label %if.then.104, label %if.else.140

if.then.104:                                      ; preds = %if.end.101
  %106 = load i32, i32* %byterevflag, align 4
  %cmp105 = icmp eq i32 %106, 1
  br i1 %cmp105, label %if.then.107, label %if.end.112

if.then.107:                                      ; preds = %if.then.104
  %107 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %107 to i64
  %108 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx109 = getelementptr inbounds %struct.site, %struct.site* %108, i64 %idxprom108
  %link110 = getelementptr inbounds %struct.site, %struct.site* %arrayidx109, i32 0, i32 8
  %arrayidx111 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link110, i32 0, i64 0
  %109 = bitcast %struct.su3_matrix* %arrayidx111 to i32*
  call void @byterevn(i32* %109, i32 144)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.107, %if.then.104
  store i32 0, i32* %k, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %110 to i64
  %111 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx114 = getelementptr inbounds %struct.site, %struct.site* %111, i64 %idxprom113
  %link115 = getelementptr inbounds %struct.site, %struct.site* %arrayidx114, i32 0, i32 8
  %arrayidx116 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link115, i32 0, i64 0
  %112 = bitcast %struct.su3_matrix* %arrayidx116 to i32*
  store i32* %112, i32** %val, align 8
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc, %if.end.112
  %113 = load i32, i32* %k, align 4
  %cmp118 = icmp slt i32 %113, 144
  br i1 %cmp118, label %for.body.120, label %for.end

for.body.120:                                     ; preds = %for.cond.117
  %114 = load i32*, i32** %val, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %rank29, align 4
  %shl = shl i32 %115, %116
  %117 = load i32*, i32** %val, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %rank29, align 4
  %sub121 = sub nsw i32 32, %119
  %shr = lshr i32 %118, %sub121
  %or = or i32 %shl, %shr
  %sum29122 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  %120 = load i32, i32* %sum29122, align 4
  %xor = xor i32 %120, %or
  store i32 %xor, i32* %sum29122, align 4
  %121 = load i32*, i32** %val, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %rank31, align 4
  %shl123 = shl i32 %122, %123
  %124 = load i32*, i32** %val, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %rank31, align 4
  %sub124 = sub nsw i32 32, %126
  %shr125 = lshr i32 %125, %sub124
  %or126 = or i32 %shl123, %shr125
  %sum31127 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  %127 = load i32, i32* %sum31127, align 4
  %xor128 = xor i32 %127, %or126
  store i32 %xor128, i32* %sum31127, align 4
  %128 = load i32, i32* %rank29, align 4
  %inc129 = add nsw i32 %128, 1
  store i32 %inc129, i32* %rank29, align 4
  %129 = load i32, i32* %rank29, align 4
  %cmp130 = icmp sge i32 %129, 29
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.body.120
  store i32 0, i32* %rank29, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %for.body.120
  %130 = load i32, i32* %rank31, align 4
  %inc134 = add nsw i32 %130, 1
  store i32 %inc134, i32* %rank31, align 4
  %131 = load i32, i32* %rank31, align 4
  %cmp135 = icmp sge i32 %131, 31
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.133
  store i32 0, i32* %rank31, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.133
  br label %for.inc

for.inc:                                          ; preds = %if.end.138
  %132 = load i32, i32* %k, align 4
  %inc139 = add nsw i32 %132, 1
  store i32 %inc139, i32* %k, align 4
  %133 = load i32*, i32** %val, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %incdec.ptr, i32** %val, align 8
  br label %for.cond.117

for.end:                                          ; preds = %for.cond.117
  br label %if.end.149

if.else.140:                                      ; preds = %if.end.101
  %134 = load i32, i32* %rank29, align 4
  %conv141 = sext i32 %134 to i64
  %add142 = add i64 %conv141, 144
  %conv143 = trunc i64 %add142 to i32
  store i32 %conv143, i32* %rank29, align 4
  %135 = load i32, i32* %rank31, align 4
  %conv144 = sext i32 %135 to i64
  %add145 = add i64 %conv144, 144
  %conv146 = trunc i64 %add145 to i32
  store i32 %conv146, i32* %rank31, align 4
  %136 = load i32, i32* %rank29, align 4
  %rem147 = srem i32 %136, 29
  store i32 %rem147, i32* %rank29, align 4
  %137 = load i32, i32* %rank31, align 4
  %rem148 = srem i32 %137, 31
  store i32 %rem148, i32* %rank31, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.140, %for.end
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %138 = load i32, i32* %rcv_rank, align 4
  %inc151 = add nsw i32 %138, 1
  store i32 %inc151, i32* %rcv_rank, align 4
  br label %for.cond

for.end.152:                                      ; preds = %for.cond
  %sum29153 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  call void @g_xor32(i32* %sum29153)
  %sum31154 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  call void @g_xor32(i32* %sum31154)
  %139 = load i32, i32* @this_node, align 4
  %cmp155 = icmp eq i32 %139, 0
  br i1 %cmp155, label %if.then.157, label %if.end.176

if.then.157:                                      ; preds = %for.end.152
  %140 = load i8*, i8** %filename, align 8
  %call158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.105, i32 0, i32 0), i8* %140)
  %141 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number159 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %141, i32 0, i32 0
  %142 = load i32, i32* %magic_number159, align 4
  %cmp160 = icmp eq i32 %142, 20103
  br i1 %cmp160, label %if.then.162, label %if.end.174

if.then.162:                                      ; preds = %if.then.157
  %143 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %143, i32 0, i32 1
  %arraydecay163 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %call164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay163)
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %145 = load i64, i64* %checksum_offset, align 8
  %call165 = call i32 @fseek(%struct._IO_FILE* %144, i64 %145, i32 0)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.173

if.then.168:                                      ; preds = %if.then.162
  %arraydecay169 = getelementptr inbounds [9 x i8], [9 x i8]* %myname, i32 0, i32 0
  %call170 = call i32* @__errno_location() #7
  %146 = load i32, i32* %call170, align 4
  %147 = load i8*, i8** %filename, align 8
  %call171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.103, i32 0, i32 0), i8* %arraydecay169, i32 %146, i8* %147)
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call172 = call i32 @fflush(%struct._IO_FILE* %148)
  call void @terminate(i32 1)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.168, %if.then.162
  %149 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  call void @read_checksum(i32 0, %struct.gauge_file* %149, %struct.gauge_check* %test_gc)
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.157
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call175 = call i32 @fflush(%struct._IO_FILE* %150)
  %151 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %152 = bitcast %struct.su3_matrix* %151 to i8*
  call void @free(i8* %152) #5
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.174, %for.end.152
  ret void
}

declare void @g_xor32(i32*) #3

; Function Attrs: nounwind uwtable
define void @r_serial_arch(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %filename = alloca i8*, align 8
  %byterevflag = alloca i32, align 4
  %gauge_check_size = alloca i64, align 8
  %rcv_rank = alloca i32, align 4
  %rcv_coords = alloca i32, align 4
  %destnode = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %test_gc = alloca %struct.gauge_check, align 4
  %val = alloca i32*, align 8
  %rank29 = alloca i32, align 4
  %rank31 = alloca i32, align 4
  %tmpsu3 = alloca [4 x %struct.su3_matrix], align 16
  %myname = alloca [14 x i8], align 1
  %mu = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %p = alloca i32, align 4
  %uin = alloca double*, align 8
  %q = alloca double*, align 8
  %big_end = alloca i32, align 4
  %U = alloca [4 x [18 x double]], align 16
  %chksum = alloca i32, align 4
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  %0 = bitcast [14 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @r_serial_arch.myname, i32 0, i32 0), i64 14, i32 1, i1 false)
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp1 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 1
  %4 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %4, %struct.gauge_header** %gh, align 8
  %5 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %5, i32 0, i32 2
  %6 = load i8*, i8** %filename2, align 8
  store i8* %6, i8** %filename, align 8
  %7 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %byterevflag3 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %7, i32 0, i32 3
  %8 = load i32, i32* %byterevflag3, align 4
  store i32 %8, i32* %byterevflag, align 4
  %9 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  store i64 0, i64* %gauge_check_size, align 8
  %10 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %10, i32 0, i32 5
  %11 = load i32, i32* %parallel, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %myname, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.101, i32 0, i32 0), i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %call5 = call i32 @big_endian()
  store i32 %call5, i32* %big_end, align 4
  %12 = load i32, i32* @nx, align 4
  %13 = load i32, i32* @ny, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, i32* @nz, align 4
  %mul6 = mul nsw i32 %mul, %14
  %mul7 = mul nsw i32 %mul6, 48
  %conv = sext i32 %mul7 to i64
  %call8 = call noalias i8* @calloc(i64 %conv, i64 8) #5
  %15 = bitcast i8* %call8 to double*
  store double* %15, double** %uin, align 8
  %16 = load double*, double** %uin, align 8
  %cmp9 = icmp eq double* %16, null
  br i1 %cmp9, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end
  %arraydecay12 = getelementptr inbounds [14 x i8], [14 x i8]* %myname, i32 0, i32 0
  %17 = load i32, i32* @this_node, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.106, i32 0, i32 0), i8* %arraydecay12, i32 %17)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.107, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @fflush(%struct._IO_FILE* %18)
  call void @terminate(i32 1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  store i32 0, i32* %chksum, align 4
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  store i32 0, i32* %sum29, align 4
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  store i32 0, i32* %sum31, align 4
  store i32 0, i32* %rank29, align 4
  store i32 0, i32* %rank31, align 4
  call void (...) @g_sync()
  store i32 0, i32* %rcv_rank, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.162, %if.end.17
  %19 = load i32, i32* %rcv_rank, align 4
  %20 = load i32, i32* @volume, align 4
  %cmp18 = icmp slt i32 %19, %20
  br i1 %cmp18, label %for.body, label %for.end.164

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %rcv_rank, align 4
  store i32 %21, i32* %rcv_coords, align 4
  %22 = load i32, i32* %rcv_coords, align 4
  %23 = load i32, i32* @nx, align 4
  %rem = srem i32 %22, %23
  store i32 %rem, i32* %x, align 4
  %24 = load i32, i32* @nx, align 4
  %25 = load i32, i32* %rcv_coords, align 4
  %div = sdiv i32 %25, %24
  store i32 %div, i32* %rcv_coords, align 4
  %26 = load i32, i32* %rcv_coords, align 4
  %27 = load i32, i32* @ny, align 4
  %rem20 = srem i32 %26, %27
  store i32 %rem20, i32* %y, align 4
  %28 = load i32, i32* @ny, align 4
  %29 = load i32, i32* %rcv_coords, align 4
  %div21 = sdiv i32 %29, %28
  store i32 %div21, i32* %rcv_coords, align 4
  %30 = load i32, i32* %rcv_coords, align 4
  %31 = load i32, i32* @nz, align 4
  %rem22 = srem i32 %30, %31
  store i32 %rem22, i32* %z, align 4
  %32 = load i32, i32* @nz, align 4
  %33 = load i32, i32* %rcv_coords, align 4
  %div23 = sdiv i32 %33, %32
  store i32 %div23, i32* %rcv_coords, align 4
  %34 = load i32, i32* %rcv_coords, align 4
  %35 = load i32, i32* @nt, align 4
  %rem24 = srem i32 %34, %35
  store i32 %rem24, i32* %t, align 4
  %36 = load i32, i32* %x, align 4
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* %z, align 4
  %39 = load i32, i32* %t, align 4
  %call25 = call i32 @node_number(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %call25, i32* %destnode, align 4
  %40 = load i32, i32* @this_node, align 4
  %cmp26 = icmp eq i32 %40, 0
  br i1 %cmp26, label %if.then.28, label %if.else.109

if.then.28:                                       ; preds = %for.body
  %41 = load double*, double** %uin, align 8
  %42 = bitcast double* %41 to i8*
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call29 = call i64 @fread(i8* %42, i64 384, i64 1, %struct._IO_FILE* %43)
  %conv30 = trunc i64 %call29 to i32
  %cmp31 = icmp ne i32 %conv30, 1
  br i1 %cmp31, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.then.28
  %arraydecay34 = getelementptr inbounds [14 x i8], [14 x i8]* %myname, i32 0, i32 0
  %44 = load i32, i32* @this_node, align 4
  %call35 = call i32* @__errno_location() #7
  %45 = load i32, i32* %call35, align 4
  %46 = load i8*, i8** %filename, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.104, i32 0, i32 0), i8* %arraydecay34, i32 %44, i32 %45, i8* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call37 = call i32 @fflush(%struct._IO_FILE* %47)
  call void @terminate(i32 1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %if.then.28
  %48 = load i32, i32* %big_end, align 4
  %tobool39 = icmp ne i32 %48, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.38
  %49 = load double*, double** %uin, align 8
  %50 = bitcast double* %49 to i32*
  call void @byterevn(i32* %50, i32 48)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.38
  %51 = load double*, double** %uin, align 8
  store double* %51, double** %q, align 8
  store i32 0, i32* %mu, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.97, %if.end.41
  %52 = load i32, i32* %mu, align 4
  %cmp43 = icmp slt i32 %52, 4
  br i1 %cmp43, label %for.body.45, label %for.end.99

for.body.45:                                      ; preds = %for.cond.42
  store i32 0, i32* %p, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %for.body.45
  %53 = load i32, i32* %p, align 4
  %cmp47 = icmp slt i32 %53, 12
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %54 = load double*, double** %q, align 8
  %55 = bitcast double* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %chksum, align 4
  %add = add i32 %57, %56
  store i32 %add, i32* %chksum, align 4
  %58 = load double*, double** %q, align 8
  %incdec.ptr = getelementptr inbounds double, double* %58, i32 1
  store double* %incdec.ptr, double** %q, align 8
  %59 = load double, double* %58, align 8
  %60 = load i32, i32* %p, align 4
  %idxprom = sext i32 %60 to i64
  %61 = load i32, i32* %mu, align 4
  %idxprom50 = sext i32 %61 to i64
  %arrayidx = getelementptr inbounds [4 x [18 x double]], [4 x [18 x double]]* %U, i32 0, i64 %idxprom50
  %arrayidx51 = getelementptr inbounds [18 x double], [18 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %59, double* %arrayidx51, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.49
  %62 = load i32, i32* %p, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  %63 = load i32, i32* %mu, align 4
  %idxprom52 = sext i32 %63 to i64
  %arrayidx53 = getelementptr inbounds [4 x [18 x double]], [4 x [18 x double]]* %U, i32 0, i64 %idxprom52
  %arraydecay54 = getelementptr inbounds [18 x double], [18 x double]* %arrayidx53, i32 0, i32 0
  call void @complete_U(double* %arraydecay54)
  store i32 0, i32* %a, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.94, %for.end
  %64 = load i32, i32* %a, align 4
  %cmp56 = icmp slt i32 %64, 3
  br i1 %cmp56, label %for.body.58, label %for.end.96

for.body.58:                                      ; preds = %for.cond.55
  store i32 0, i32* %b, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.91, %for.body.58
  %65 = load i32, i32* %b, align 4
  %cmp60 = icmp slt i32 %65, 3
  br i1 %cmp60, label %for.body.62, label %for.end.93

for.body.62:                                      ; preds = %for.cond.59
  %66 = load i32, i32* %a, align 4
  %mul63 = mul nsw i32 3, %66
  %67 = load i32, i32* %b, align 4
  %add64 = add nsw i32 %mul63, %67
  %mul65 = mul nsw i32 2, %add64
  %idxprom66 = sext i32 %mul65 to i64
  %68 = load i32, i32* %mu, align 4
  %idxprom67 = sext i32 %68 to i64
  %arrayidx68 = getelementptr inbounds [4 x [18 x double]], [4 x [18 x double]]* %U, i32 0, i64 %idxprom67
  %arrayidx69 = getelementptr inbounds [18 x double], [18 x double]* %arrayidx68, i32 0, i64 %idxprom66
  %69 = load double, double* %arrayidx69, align 8
  %70 = load i32, i32* %b, align 4
  %idxprom70 = sext i32 %70 to i64
  %71 = load i32, i32* %a, align 4
  %idxprom71 = sext i32 %71 to i64
  %72 = load i32, i32* %mu, align 4
  %idxprom72 = sext i32 %72 to i64
  %arrayidx73 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %tmpsu3, i32 0, i64 %idxprom72
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx73, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom71
  %arrayidx75 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx74, i32 0, i64 %idxprom70
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx75, i32 0, i32 0
  store double %69, double* %real, align 8
  %73 = load i32, i32* %a, align 4
  %mul76 = mul nsw i32 3, %73
  %74 = load i32, i32* %b, align 4
  %add77 = add nsw i32 %mul76, %74
  %mul78 = mul nsw i32 2, %add77
  %add79 = add nsw i32 %mul78, 1
  %idxprom80 = sext i32 %add79 to i64
  %75 = load i32, i32* %mu, align 4
  %idxprom81 = sext i32 %75 to i64
  %arrayidx82 = getelementptr inbounds [4 x [18 x double]], [4 x [18 x double]]* %U, i32 0, i64 %idxprom81
  %arrayidx83 = getelementptr inbounds [18 x double], [18 x double]* %arrayidx82, i32 0, i64 %idxprom80
  %76 = load double, double* %arrayidx83, align 8
  %77 = load i32, i32* %b, align 4
  %idxprom84 = sext i32 %77 to i64
  %78 = load i32, i32* %a, align 4
  %idxprom85 = sext i32 %78 to i64
  %79 = load i32, i32* %mu, align 4
  %idxprom86 = sext i32 %79 to i64
  %arrayidx87 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %tmpsu3, i32 0, i64 %idxprom86
  %e88 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx87, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e88, i32 0, i64 %idxprom85
  %arrayidx90 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx89, i32 0, i64 %idxprom84
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx90, i32 0, i32 1
  store double %76, double* %imag, align 8
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.62
  %80 = load i32, i32* %b, align 4
  %inc92 = add nsw i32 %80, 1
  store i32 %inc92, i32* %b, align 4
  br label %for.cond.59

for.end.93:                                       ; preds = %for.cond.59
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.end.93
  %81 = load i32, i32* %a, align 4
  %inc95 = add nsw i32 %81, 1
  store i32 %inc95, i32* %a, align 4
  br label %for.cond.55

for.end.96:                                       ; preds = %for.cond.55
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %82 = load i32, i32* %mu, align 4
  %inc98 = add nsw i32 %82, 1
  store i32 %inc98, i32* %mu, align 4
  br label %for.cond.42

for.end.99:                                       ; preds = %for.cond.42
  %83 = load i32, i32* %destnode, align 4
  %cmp100 = icmp eq i32 %83, 0
  br i1 %cmp100, label %if.then.102, label %if.else

if.then.102:                                      ; preds = %for.end.99
  %84 = load i32, i32* %x, align 4
  %85 = load i32, i32* %y, align 4
  %86 = load i32, i32* %z, align 4
  %87 = load i32, i32* %t, align 4
  %call103 = call i32 @node_index(i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 %call103, i32* %i, align 4
  %88 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %88 to i64
  %89 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx105 = getelementptr inbounds %struct.site, %struct.site* %89, i64 %idxprom104
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx105, i32 0, i32 8
  %arrayidx106 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 0
  %90 = bitcast %struct.su3_matrix* %arrayidx106 to i8*
  %91 = bitcast [4 x %struct.su3_matrix]* %tmpsu3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 576, i32 1, i1 false)
  br label %if.end.108

if.else:                                          ; preds = %for.end.99
  %arraydecay107 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %tmpsu3, i32 0, i32 0
  %92 = bitcast %struct.su3_matrix* %arraydecay107 to i8*
  %93 = load i32, i32* %destnode, align 4
  call void @send_field(i8* %92, i32 576, i32 %93)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else, %if.then.102
  br label %if.end.119

if.else.109:                                      ; preds = %for.body
  %94 = load i32, i32* @this_node, align 4
  %95 = load i32, i32* %destnode, align 4
  %cmp110 = icmp eq i32 %94, %95
  br i1 %cmp110, label %if.then.112, label %if.end.118

if.then.112:                                      ; preds = %if.else.109
  %96 = load i32, i32* %x, align 4
  %97 = load i32, i32* %y, align 4
  %98 = load i32, i32* %z, align 4
  %99 = load i32, i32* %t, align 4
  %call113 = call i32 @node_index(i32 %96, i32 %97, i32 %98, i32 %99)
  store i32 %call113, i32* %i, align 4
  %100 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %100 to i64
  %101 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx115 = getelementptr inbounds %struct.site, %struct.site* %101, i64 %idxprom114
  %link116 = getelementptr inbounds %struct.site, %struct.site* %arrayidx115, i32 0, i32 8
  %arrayidx117 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link116, i32 0, i64 0
  %102 = bitcast %struct.su3_matrix* %arrayidx117 to i8*
  call void @get_field(i8* %102, i32 576)
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.112, %if.else.109
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.108
  %103 = load i32, i32* @this_node, align 4
  %104 = load i32, i32* %destnode, align 4
  %cmp120 = icmp eq i32 %103, %104
  br i1 %cmp120, label %if.then.122, label %if.else.152

if.then.122:                                      ; preds = %if.end.119
  store i32 0, i32* %k, align 4
  %105 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %105 to i64
  %106 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx124 = getelementptr inbounds %struct.site, %struct.site* %106, i64 %idxprom123
  %link125 = getelementptr inbounds %struct.site, %struct.site* %arrayidx124, i32 0, i32 8
  %arrayidx126 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link125, i32 0, i64 0
  %107 = bitcast %struct.su3_matrix* %arrayidx126 to i32*
  store i32* %107, i32** %val, align 8
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.148, %if.then.122
  %108 = load i32, i32* %k, align 4
  %cmp128 = icmp slt i32 %108, 144
  br i1 %cmp128, label %for.body.130, label %for.end.151

for.body.130:                                     ; preds = %for.cond.127
  %109 = load i32*, i32** %val, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %rank29, align 4
  %shl = shl i32 %110, %111
  %112 = load i32*, i32** %val, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %rank29, align 4
  %sub = sub nsw i32 32, %114
  %shr = lshr i32 %113, %sub
  %or = or i32 %shl, %shr
  %sum29131 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  %115 = load i32, i32* %sum29131, align 4
  %xor = xor i32 %115, %or
  store i32 %xor, i32* %sum29131, align 4
  %116 = load i32*, i32** %val, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %rank31, align 4
  %shl132 = shl i32 %117, %118
  %119 = load i32*, i32** %val, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %rank31, align 4
  %sub133 = sub nsw i32 32, %121
  %shr134 = lshr i32 %120, %sub133
  %or135 = or i32 %shl132, %shr134
  %sum31136 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  %122 = load i32, i32* %sum31136, align 4
  %xor137 = xor i32 %122, %or135
  store i32 %xor137, i32* %sum31136, align 4
  %123 = load i32, i32* %rank29, align 4
  %inc138 = add nsw i32 %123, 1
  store i32 %inc138, i32* %rank29, align 4
  %124 = load i32, i32* %rank29, align 4
  %cmp139 = icmp sge i32 %124, 29
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %for.body.130
  store i32 0, i32* %rank29, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %for.body.130
  %125 = load i32, i32* %rank31, align 4
  %inc143 = add nsw i32 %125, 1
  store i32 %inc143, i32* %rank31, align 4
  %126 = load i32, i32* %rank31, align 4
  %cmp144 = icmp sge i32 %126, 31
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.142
  store i32 0, i32* %rank31, align 4
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.146, %if.end.142
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %127 = load i32, i32* %k, align 4
  %inc149 = add nsw i32 %127, 1
  store i32 %inc149, i32* %k, align 4
  %128 = load i32*, i32** %val, align 8
  %incdec.ptr150 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %incdec.ptr150, i32** %val, align 8
  br label %for.cond.127

for.end.151:                                      ; preds = %for.cond.127
  br label %if.end.161

if.else.152:                                      ; preds = %if.end.119
  %129 = load i32, i32* %rank29, align 4
  %conv153 = sext i32 %129 to i64
  %add154 = add i64 %conv153, 144
  %conv155 = trunc i64 %add154 to i32
  store i32 %conv155, i32* %rank29, align 4
  %130 = load i32, i32* %rank31, align 4
  %conv156 = sext i32 %130 to i64
  %add157 = add i64 %conv156, 144
  %conv158 = trunc i64 %add157 to i32
  store i32 %conv158, i32* %rank31, align 4
  %131 = load i32, i32* %rank29, align 4
  %rem159 = srem i32 %131, 29
  store i32 %rem159, i32* %rank29, align 4
  %132 = load i32, i32* %rank31, align 4
  %rem160 = srem i32 %132, 31
  store i32 %rem160, i32* %rank31, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.152, %for.end.151
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.161
  %133 = load i32, i32* %rcv_rank, align 4
  %inc163 = add nsw i32 %133, 1
  store i32 %inc163, i32* %rcv_rank, align 4
  br label %for.cond

for.end.164:                                      ; preds = %for.cond
  %sum29165 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  call void @g_xor32(i32* %sum29165)
  %sum31166 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  call void @g_xor32(i32* %sum31166)
  %134 = load i32, i32* @this_node, align 4
  %cmp167 = icmp eq i32 %134, 0
  br i1 %cmp167, label %if.then.169, label %if.end.188

if.then.169:                                      ; preds = %for.end.164
  %135 = load i8*, i8** %filename, align 8
  %call170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.108, i32 0, i32 0), i8* %135)
  %136 = load i32, i32* %chksum, align 4
  %137 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %137, i32 0, i32 6
  %sum31171 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 0
  %138 = load i32, i32* %sum31171, align 4
  %cmp172 = icmp ne i32 %136, %138
  br i1 %cmp172, label %if.then.174, label %if.else.178

if.then.174:                                      ; preds = %if.then.169
  %139 = load i32, i32* %chksum, align 4
  %140 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check175 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %140, i32 0, i32 6
  %sum31176 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check175, i32 0, i32 0
  %141 = load i32, i32* %sum31176, align 4
  %call177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.109, i32 0, i32 0), i32 %139, i32 %141)
  br label %if.end.180

if.else.178:                                      ; preds = %if.then.169
  %142 = load i32, i32* %chksum, align 4
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.110, i32 0, i32 0), i32 %142)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.178, %if.then.174
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call181 = call i32 @fflush(%struct._IO_FILE* %143)
  %144 = load double*, double** %uin, align 8
  %145 = bitcast double* %144 to i8*
  call void @free(i8* %145) #5
  %sum29182 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  %146 = load i32, i32* %sum29182, align 4
  %147 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check183 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %147, i32 0, i32 6
  %sum29184 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check183, i32 0, i32 1
  store i32 %146, i32* %sum29184, align 4
  %sum31185 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  %148 = load i32, i32* %sum31185, align 4
  %149 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check186 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %149, i32 0, i32 6
  %sum31187 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check186, i32 0, i32 0
  store i32 %148, i32* %sum31187, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.180, %for.end.164
  ret void
}

; Function Attrs: nounwind uwtable
define void @r_serial_f(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  call void (...) @g_sync()
  %0 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 5
  %2 = load i32, i32* %parallel, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.111, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %5 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %5, i32 0, i32 4
  %6 = load i32*, i32** %rank2rcv, align 8
  %cmp4 = icmp ne i32* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv6 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %7, i32 0, i32 4
  %8 = load i32*, i32** %rank2rcv6, align 8
  %9 = bitcast i32* %8 to i8*
  call void @free(i8* %9) #5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @write_site_list(%struct._IO_FILE* %fp, %struct.gauge_header* %gh) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %gh.addr = alloca %struct.gauge_header*, align 8
  %offset = alloca i64, align 8
  %i = alloca i32, align 4
  %buf_length = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %coords = alloca i32, align 4
  %cbuf = alloca i32*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.gauge_header* %gh, %struct.gauge_header** %gh.addr, align 8
  %0 = load %struct.gauge_header*, %struct.gauge_header** %gh.addr, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %0, i32 0, i32 3
  %1 = load i32, i32* %header_bytes, align 4
  %conv = sext i32 %1 to i64
  %2 = load i32, i32* @sites_on_node, align 4
  %conv1 = sext i32 %2 to i64
  %mul = mul i64 4, %conv1
  %3 = load i32, i32* @this_node, align 4
  %conv2 = sext i32 %3 to i64
  %mul3 = mul i64 %mul, %conv2
  %add = add i64 %conv, %mul3
  store i64 %add, i64* %offset, align 8
  %4 = load i32, i32* @sites_on_node, align 4
  %conv4 = sext i32 %4 to i64
  %call = call noalias i8* @calloc(i64 %conv4, i64 4) #5
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** %cbuf, align 8
  %6 = load i32*, i32** %cbuf, align 8
  %cmp = icmp eq i32* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* @this_node, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.112, i32 0, i32 0), i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fflush(%struct._IO_FILE* %8)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %10 = load i64, i64* %offset, align 8
  %call8 = call i32 @g_seek(%struct._IO_FILE* %9, i64 %10, i32 0)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end
  %11 = load i32, i32* @this_node, align 4
  %12 = load i64, i64* %offset, align 8
  %call12 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call12, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.113, i32 0, i32 0), i32 %11, i64 %12, i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call14 = call i32 @fflush(%struct._IO_FILE* %14)
  call void @terminate(i32 1)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.11, %if.end
  store i32 0, i32* %buf_length, align 4
  store i32 0, i32* %i, align 4
  %15 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %15, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @sites_on_node, align 4
  %cmp16 = icmp slt i32 %16, %17
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* @nx, align 4
  %19 = load i32, i32* @ny, align 4
  %20 = load i32, i32* @nz, align 4
  %21 = load %struct.site*, %struct.site** %s, align 8
  %t = getelementptr inbounds %struct.site, %struct.site* %21, i32 0, i32 3
  %22 = load i16, i16* %t, align 2
  %conv18 = sext i16 %22 to i32
  %mul19 = mul nsw i32 %20, %conv18
  %23 = load %struct.site*, %struct.site** %s, align 8
  %z = getelementptr inbounds %struct.site, %struct.site* %23, i32 0, i32 2
  %24 = load i16, i16* %z, align 2
  %conv20 = sext i16 %24 to i32
  %add21 = add nsw i32 %mul19, %conv20
  %mul22 = mul nsw i32 %19, %add21
  %25 = load %struct.site*, %struct.site** %s, align 8
  %y = getelementptr inbounds %struct.site, %struct.site* %25, i32 0, i32 1
  %26 = load i16, i16* %y, align 2
  %conv23 = sext i16 %26 to i32
  %add24 = add nsw i32 %mul22, %conv23
  %mul25 = mul nsw i32 %18, %add24
  %27 = load %struct.site*, %struct.site** %s, align 8
  %x = getelementptr inbounds %struct.site, %struct.site* %27, i32 0, i32 0
  %28 = load i16, i16* %x, align 2
  %conv26 = sext i16 %28 to i32
  %add27 = add nsw i32 %mul25, %conv26
  store i32 %add27, i32* %coords, align 4
  %29 = load i32, i32* %coords, align 4
  %30 = load i32, i32* %buf_length, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load i32*, i32** %cbuf, align 8
  %arrayidx = getelementptr inbounds i32, i32* %31, i64 %idxprom
  store i32 %29, i32* %arrayidx, align 4
  %32 = load i32, i32* %buf_length, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %buf_length, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %33, 1
  store i32 %inc28, i32* %i, align 4
  %34 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %34, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32*, i32** %cbuf, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load i32, i32* @sites_on_node, align 4
  %conv29 = sext i32 %37 to i64
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call30 = call i64 @g_write(i8* %36, i64 4, i64 %conv29, %struct._IO_FILE* %38)
  %conv31 = trunc i64 %call30 to i32
  %39 = load i32, i32* @sites_on_node, align 4
  %cmp32 = icmp ne i32 %conv31, %39
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %for.end
  %40 = load i32, i32* @this_node, align 4
  %call35 = call i32* @__errno_location() #7
  %41 = load i32, i32* %call35, align 4
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.114, i32 0, i32 0), i32 %40, i32 %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call37 = call i32 @fflush(%struct._IO_FILE* %42)
  call void @terminate(i32 1)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %for.end
  %43 = load i32*, i32** %cbuf, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #5
  ret void
}

declare i32 @g_seek(%struct._IO_FILE*, i64, i32) #3

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @parallel_open(i32 %order, i8* %filename) #0 {
entry:
  %order.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  store i32 %order, i32* %order.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @setup_output_gauge_file()
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %0 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %0, i32 0, i32 1
  %1 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %1, %struct.gauge_header** %gh, align 8
  %2 = load i32, i32* %order.addr, align 4
  %3 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %order1 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %3, i32 0, i32 4
  store i32 %2, i32* %order1, align 4
  %4 = load i8*, i8** %filename.addr, align 8
  %call2 = call %struct._IO_FILE* @g_open(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @this_node, align 4
  %7 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32* @__errno_location() #7
  %8 = load i32, i32* %call3, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.115, i32 0, i32 0), i32 %6, i8* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %9)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* @this_node, align 4
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %12 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  call void @pwrite_gauge_hdr(%struct._IO_FILE* %11, %struct.gauge_header* %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %13 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %13, i32 0, i32 3
  %14 = bitcast i32* %header_bytes to i8*
  call void @broadcast_bytes(i8* %14, i32 4)
  %15 = load i32, i32* %order.addr, align 4
  %cmp9 = icmp ne i32 %15, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %17 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  call void @write_site_list(%struct._IO_FILE* %16, %struct.gauge_header* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %19 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp12 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %19, i32 0, i32 0
  store %struct._IO_FILE* %18, %struct._IO_FILE** %fp12, align 8
  %20 = load i8*, i8** %filename.addr, align 8
  %21 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %filename13 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %21, i32 0, i32 2
  store i8* %20, i8** %filename13, align 8
  %22 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %byterevflag = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %22, i32 0, i32 3
  store i32 0, i32* %byterevflag, align 4
  %23 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %23, i32 0, i32 5
  store i32 1, i32* %parallel, align 4
  %24 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %24
}

declare %struct._IO_FILE* @g_open(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @w_parallel_i(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @parallel_open(i32 0, i8* %0)
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @w_checkpoint_i(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @parallel_open(i32 1, i8* %0)
  ret %struct.gauge_file* %call
}

; Function Attrs: nounwind uwtable
define %struct.su3_matrix* @w_parallel_setup(%struct.gauge_file* %gf, i64* %checksum_offset) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  %checksum_offset.addr = alloca i64*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %lbuf = alloca %struct.su3_matrix*, align 8
  %offset = alloca i64, align 8
  %gauge_node_size = alloca i64, align 8
  %coord_list_size = alloca i64, align 8
  %head_size = alloca i64, align 8
  %gauge_check_size = alloca i64, align 8
  %myname = alloca [17 x i8], align 16
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  store i64* %checksum_offset, i64** %checksum_offset.addr, align 8
  %0 = bitcast [17 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @w_parallel_setup.myname, i32 0, i32 0), i64 17, i32 16, i1 false)
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 5
  %2 = load i32, i32* %parallel, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.116, i32 0, i32 0), i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call noalias i8* @calloc(i64 16384, i64 144) #5
  %3 = bitcast i8* %call1 to %struct.su3_matrix*
  store %struct.su3_matrix* %3, %struct.su3_matrix** %lbuf, align 8
  %4 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %cmp = icmp eq %struct.su3_matrix* %4, null
  br i1 %cmp, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  %5 = load i32, i32* @this_node, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.102, i32 0, i32 0), i8* %arraydecay3, i32 %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %6)
  call void @terminate(i32 1)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp7 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %7, i32 0, i32 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp7, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** %fp, align 8
  %9 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %9, i32 0, i32 1
  %10 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %10, %struct.gauge_header** %gh, align 8
  %11 = load i32, i32* @sites_on_node, align 4
  %mul = mul nsw i32 %11, 4
  %conv = sext i32 %mul to i64
  %mul8 = mul i64 %conv, 144
  store i64 %mul8, i64* %gauge_node_size, align 8
  %12 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header9 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %12, i32 0, i32 1
  %13 = load %struct.gauge_header*, %struct.gauge_header** %header9, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %13, i32 0, i32 4
  %14 = load i32, i32* %order, align 4
  %cmp10 = icmp eq i32 %14, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.6
  store i64 0, i64* %coord_list_size, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end.6
  %15 = load i32, i32* @volume, align 4
  %conv13 = sext i32 %15 to i64
  %mul14 = mul i64 4, %conv13
  store i64 %mul14, i64* %coord_list_size, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %16 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header16 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %16, i32 0, i32 1
  %17 = load %struct.gauge_header*, %struct.gauge_header** %header16, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %17, i32 0, i32 3
  %18 = load i32, i32* %header_bytes, align 4
  %conv17 = sext i32 %18 to i64
  %19 = load i64, i64* %coord_list_size, align 8
  %add = add nsw i64 %conv17, %19
  store i64 %add, i64* %head_size, align 8
  %20 = load i64, i64* %head_size, align 8
  %21 = load i64*, i64** %checksum_offset.addr, align 8
  store i64 %20, i64* %21, align 8
  store i64 8, i64* %gauge_check_size, align 8
  %22 = load i64, i64* %head_size, align 8
  %23 = load i64, i64* %gauge_check_size, align 8
  %add18 = add nsw i64 %22, %23
  store i64 %add18, i64* %offset, align 8
  %24 = load i64, i64* %gauge_node_size, align 8
  %25 = load i32, i32* @this_node, align 4
  %conv19 = sext i32 %25 to i64
  %mul20 = mul nsw i64 %24, %conv19
  %26 = load i64, i64* %offset, align 8
  %add21 = add nsw i64 %26, %mul20
  store i64 %add21, i64* %offset, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %28 = load i64, i64* %offset, align 8
  %call22 = call i32 @g_seek(%struct._IO_FILE* %27, i64 %28, i32 0)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.15
  %arraydecay26 = getelementptr inbounds [17 x i8], [17 x i8]* %myname, i32 0, i32 0
  %29 = load i32, i32* @this_node, align 4
  %30 = load i64, i64* %offset, align 8
  %call27 = call i32* @__errno_location() #7
  %31 = load i32, i32* %call27, align 4
  %32 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %32, i32 0, i32 2
  %33 = load i8*, i8** %filename, align 8
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.117, i32 0, i32 0), i8* %arraydecay26, i32 %29, i64 %30, i32 %31, i8* %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call29 = call i32 @fflush(%struct._IO_FILE* %34)
  call void @terminate(i32 1)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %if.end.15
  %35 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  ret %struct.su3_matrix* %35
}

; Function Attrs: nounwind uwtable
define void @w_parallel(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %lbuf = alloca %struct.su3_matrix*, align 8
  %buf_length = alloca i32, align 4
  %where_in_buf = alloca i32, align 4
  %val = alloca i32*, align 8
  %rank29 = alloca i32, align 4
  %rank31 = alloca i32, align 4
  %checksum_offset = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %msg = alloca %struct.anon.0, align 8
  %isite = alloca i32, align 4
  %ksite = alloca i32, align 4
  %site_block = alloca i32, align 4
  %rcv_coords = alloca i32, align 4
  %rcv_rank = alloca i32, align 4
  %destnode = alloca i32, align 4
  %sendnode = alloca i32, align 4
  %myname = alloca [11 x i8], align 1
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  %0 = bitcast [11 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @w_parallel.myname, i32 0, i32 0), i64 11, i32 1, i1 false)
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp1 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %call = call %struct.su3_matrix* @w_parallel_setup(%struct.gauge_file* %3, i64* %checksum_offset)
  store %struct.su3_matrix* %call, %struct.su3_matrix** %lbuf, align 8
  %4 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %4, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 0
  store i32 0, i32* %sum31, align 4
  %5 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %5, i32 0, i32 6
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check2, i32 0, i32 1
  store i32 0, i32* %sum29, align 4
  call void (...) @g_sync()
  store i32 0, i32* %buf_length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %6 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %6, 4096
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.20, %for.body
  %7 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %7, 3
  br i1 %cmp4, label %for.body.5, label %for.end.22

for.body.5:                                       ; preds = %for.cond.3
  store i32 0, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.5
  %8 = load i32, i32* %k, align 4
  %cmp7 = icmp slt i32 %8, 3
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %9 = load i32, i32* %k, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %12, i64 %idxprom10
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom9
  %arrayidx12 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx11, i32 0, i64 %idxprom
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx12, i32 0, i32 1
  store double 0.000000e+00, double* %imag, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %15 to i64
  %16 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx16 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %16, i64 %idxprom15
  %e17 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e17, i32 0, i64 %idxprom14
  %arrayidx19 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx18, i32 0, i64 %idxprom13
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx19, i32 0, i32 0
  store double 0.000000e+00, double* %real, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %18 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond.3

for.end.22:                                       ; preds = %for.cond.3
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.22
  %19 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %19, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  store i32 4096, i32* %site_block, align 4
  %20 = load i32, i32* %site_block, align 4
  %rem = srem i32 4096, %20
  %cmp26 = icmp ne i32 %rem, 0
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.25
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %myname, i32 0, i32 0
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.118, i32 0, i32 0), i8* %arraydecay)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call28 = call i32 @fflush(%struct._IO_FILE* %21)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.25
  store i32 0, i32* %ksite, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.201, %if.end
  %22 = load i32, i32* %ksite, align 4
  %23 = load i32, i32* @sites_on_node, align 4
  %cmp30 = icmp slt i32 %22, %23
  br i1 %cmp30, label %for.body.31, label %for.end.203

for.body.31:                                      ; preds = %for.cond.29
  store i32 0, i32* %destnode, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.198, %for.body.31
  %24 = load i32, i32* %destnode, align 4
  %25 = load i32, i32* @number_of_nodes, align 4
  %cmp33 = icmp slt i32 %24, %25
  br i1 %cmp33, label %for.body.34, label %for.end.200

for.body.34:                                      ; preds = %for.cond.32
  %26 = load i32, i32* %ksite, align 4
  store i32 %26, i32* %isite, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.195, %for.body.34
  %27 = load i32, i32* %isite, align 4
  %28 = load i32, i32* @sites_on_node, align 4
  %cmp36 = icmp slt i32 %27, %28
  br i1 %cmp36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.35
  %29 = load i32, i32* %isite, align 4
  %30 = load i32, i32* %ksite, align 4
  %31 = load i32, i32* %site_block, align 4
  %add = add nsw i32 %30, %31
  %cmp37 = icmp slt i32 %29, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.35
  %32 = phi i1 [ false, %for.cond.35 ], [ %cmp37, %land.rhs ]
  br i1 %32, label %for.body.38, label %for.end.197

for.body.38:                                      ; preds = %land.end
  %33 = load i32, i32* %destnode, align 4
  %34 = load i32, i32* @sites_on_node, align 4
  %mul = mul nsw i32 %33, %34
  %35 = load i32, i32* %isite, align 4
  %add39 = add nsw i32 %mul, %35
  store i32 %add39, i32* %rcv_coords, align 4
  store i32 %add39, i32* %rcv_rank, align 4
  %36 = load i32, i32* %rcv_coords, align 4
  %37 = load i32, i32* @nx, align 4
  %rem40 = srem i32 %36, %37
  store i32 %rem40, i32* %x, align 4
  %38 = load i32, i32* @nx, align 4
  %39 = load i32, i32* %rcv_coords, align 4
  %div = sdiv i32 %39, %38
  store i32 %div, i32* %rcv_coords, align 4
  %40 = load i32, i32* %rcv_coords, align 4
  %41 = load i32, i32* @ny, align 4
  %rem41 = srem i32 %40, %41
  store i32 %rem41, i32* %y, align 4
  %42 = load i32, i32* @ny, align 4
  %43 = load i32, i32* %rcv_coords, align 4
  %div42 = sdiv i32 %43, %42
  store i32 %div42, i32* %rcv_coords, align 4
  %44 = load i32, i32* %rcv_coords, align 4
  %45 = load i32, i32* @nz, align 4
  %rem43 = srem i32 %44, %45
  store i32 %rem43, i32* %z, align 4
  %46 = load i32, i32* @nz, align 4
  %47 = load i32, i32* %rcv_coords, align 4
  %div44 = sdiv i32 %47, %46
  store i32 %div44, i32* %rcv_coords, align 4
  %48 = load i32, i32* %rcv_coords, align 4
  %49 = load i32, i32* @nt, align 4
  %rem45 = srem i32 %48, %49
  store i32 %rem45, i32* %t, align 4
  %50 = load i32, i32* %x, align 4
  %51 = load i32, i32* %y, align 4
  %52 = load i32, i32* %z, align 4
  %53 = load i32, i32* %t, align 4
  %call46 = call i32 @node_number(i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %call46, i32* %sendnode, align 4
  %54 = load i32, i32* @this_node, align 4
  %55 = load i32, i32* %sendnode, align 4
  %cmp47 = icmp eq i32 %54, %55
  br i1 %cmp47, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.38
  %56 = load i32, i32* %destnode, align 4
  %57 = load i32, i32* %sendnode, align 4
  %cmp48 = icmp ne i32 %56, %57
  br i1 %cmp48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %land.lhs.true
  %58 = load i32, i32* %x, align 4
  %conv = trunc i32 %58 to i16
  %x50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 0
  store i16 %conv, i16* %x50, align 2
  %59 = load i32, i32* %y, align 4
  %conv51 = trunc i32 %59 to i16
  %y52 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 1
  store i16 %conv51, i16* %y52, align 2
  %60 = load i32, i32* %z, align 4
  %conv53 = trunc i32 %60 to i16
  %z54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 2
  store i16 %conv53, i16* %z54, align 2
  %61 = load i32, i32* %t, align 4
  %conv55 = trunc i32 %61 to i16
  %t56 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 3
  store i16 %conv55, i16* %t56, align 2
  %62 = load i32, i32* %x, align 4
  %63 = load i32, i32* %y, align 4
  %64 = load i32, i32* %z, align 4
  %65 = load i32, i32* %t, align 4
  %call57 = call i32 @node_index(i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %call57, i32* %i, align 4
  %link = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 4
  %arraydecay58 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i32 0
  %66 = bitcast %struct.su3_matrix* %arraydecay58 to i8*
  %67 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %67 to i64
  %68 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx60 = getelementptr inbounds %struct.site, %struct.site* %68, i64 %idxprom59
  %link61 = getelementptr inbounds %struct.site, %struct.site* %arrayidx60, i32 0, i32 8
  %arraydecay62 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link61, i32 0, i32 0
  %69 = bitcast %struct.su3_matrix* %arraydecay62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %69, i64 576, i32 1, i1 false)
  %70 = bitcast %struct.anon.0* %msg to i8*
  %71 = load i32, i32* %destnode, align 4
  call void @send_field(i8* %70, i32 584, i32 %71)
  br label %if.end.194

if.else:                                          ; preds = %land.lhs.true, %for.body.38
  %72 = load i32, i32* @this_node, align 4
  %73 = load i32, i32* %destnode, align 4
  %cmp63 = icmp eq i32 %72, %73
  br i1 %cmp63, label %if.then.65, label %if.end.193

if.then.65:                                       ; preds = %if.else
  %74 = load i32, i32* %destnode, align 4
  %75 = load i32, i32* %sendnode, align 4
  %cmp66 = icmp eq i32 %74, %75
  br i1 %cmp66, label %if.then.68, label %if.else.80

if.then.68:                                       ; preds = %if.then.65
  %76 = load i32, i32* %x, align 4
  %77 = load i32, i32* %y, align 4
  %78 = load i32, i32* %z, align 4
  %79 = load i32, i32* %t, align 4
  %call69 = call i32 @node_index(i32 %76, i32 %77, i32 %78, i32 %79)
  store i32 %call69, i32* %i, align 4
  %80 = load i32, i32* %buf_length, align 4
  store i32 %80, i32* %where_in_buf, align 4
  %81 = load i32, i32* %where_in_buf, align 4
  %mul70 = mul nsw i32 4, %81
  %idxprom71 = sext i32 %mul70 to i64
  %82 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx72 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %82, i64 %idxprom71
  %83 = bitcast %struct.su3_matrix* %arrayidx72 to i8*
  %84 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %84 to i64
  %85 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx74 = getelementptr inbounds %struct.site, %struct.site* %85, i64 %idxprom73
  %link75 = getelementptr inbounds %struct.site, %struct.site* %arrayidx74, i32 0, i32 8
  %arraydecay76 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link75, i32 0, i32 0
  %86 = bitcast %struct.su3_matrix* %arraydecay76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %86, i64 576, i32 1, i1 false)
  %87 = load i32, i32* %rcv_rank, align 4
  %conv77 = sext i32 %87 to i64
  %mul78 = mul i64 144, %conv77
  %conv79 = trunc i64 %mul78 to i32
  store i32 %conv79, i32* %rank31, align 4
  store i32 %conv79, i32* %rank29, align 4
  br label %if.end.105

if.else.80:                                       ; preds = %if.then.65
  %88 = bitcast %struct.anon.0* %msg to i8*
  call void @get_field(i8* %88, i32 584)
  %x81 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 0
  %89 = load i16, i16* %x81, align 2
  %conv82 = sext i16 %89 to i32
  %90 = load i32, i32* @nx, align 4
  %y83 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 1
  %91 = load i16, i16* %y83, align 2
  %conv84 = sext i16 %91 to i32
  %92 = load i32, i32* @ny, align 4
  %z85 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 2
  %93 = load i16, i16* %z85, align 2
  %conv86 = sext i16 %93 to i32
  %94 = load i32, i32* @nz, align 4
  %t87 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 3
  %95 = load i16, i16* %t87, align 2
  %conv88 = sext i16 %95 to i32
  %mul89 = mul nsw i32 %94, %conv88
  %add90 = add nsw i32 %conv86, %mul89
  %mul91 = mul nsw i32 %92, %add90
  %add92 = add nsw i32 %conv84, %mul91
  %mul93 = mul nsw i32 %90, %add92
  %add94 = add nsw i32 %conv82, %mul93
  store i32 %add94, i32* %i, align 4
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* @sites_on_node, align 4
  %rem95 = srem i32 %96, %97
  %rem96 = srem i32 %rem95, 4096
  store i32 %rem96, i32* %where_in_buf, align 4
  %98 = load i32, i32* %where_in_buf, align 4
  %mul97 = mul nsw i32 4, %98
  %idxprom98 = sext i32 %mul97 to i64
  %99 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx99 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %99, i64 %idxprom98
  %100 = bitcast %struct.su3_matrix* %arrayidx99 to i8*
  %link100 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %msg, i32 0, i32 4
  %arraydecay101 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link100, i32 0, i32 0
  %101 = bitcast %struct.su3_matrix* %arraydecay101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 576, i32 1, i1 false)
  %102 = load i32, i32* %i, align 4
  %conv102 = sext i32 %102 to i64
  %mul103 = mul i64 144, %conv102
  %conv104 = trunc i64 %mul103 to i32
  store i32 %conv104, i32* %rank31, align 4
  store i32 %conv104, i32* %rank29, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.80, %if.then.68
  %103 = load i32, i32* %rank29, align 4
  %rem106 = srem i32 %103, 29
  store i32 %rem106, i32* %rank29, align 4
  %104 = load i32, i32* %rank31, align 4
  %rem107 = srem i32 %104, 31
  store i32 %rem107, i32* %rank31, align 4
  store i32 0, i32* %k, align 4
  %105 = load i32, i32* %where_in_buf, align 4
  %mul108 = mul nsw i32 4, %105
  %idxprom109 = sext i32 %mul108 to i64
  %106 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx110 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %106, i64 %idxprom109
  %107 = bitcast %struct.su3_matrix* %arrayidx110 to i32*
  store i32* %107, i32** %val, align 8
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.134, %if.end.105
  %108 = load i32, i32* %k, align 4
  %cmp112 = icmp slt i32 %108, 144
  br i1 %cmp112, label %for.body.114, label %for.end.136

for.body.114:                                     ; preds = %for.cond.111
  %109 = load i32*, i32** %val, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %rank29, align 4
  %shl = shl i32 %110, %111
  %112 = load i32*, i32** %val, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %rank29, align 4
  %sub = sub nsw i32 32, %114
  %shr = lshr i32 %113, %sub
  %or = or i32 %shl, %shr
  %115 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check115 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %115, i32 0, i32 6
  %sum29116 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check115, i32 0, i32 1
  %116 = load i32, i32* %sum29116, align 4
  %xor = xor i32 %116, %or
  store i32 %xor, i32* %sum29116, align 4
  %117 = load i32*, i32** %val, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %rank31, align 4
  %shl117 = shl i32 %118, %119
  %120 = load i32*, i32** %val, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %rank31, align 4
  %sub118 = sub nsw i32 32, %122
  %shr119 = lshr i32 %121, %sub118
  %or120 = or i32 %shl117, %shr119
  %123 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check121 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %123, i32 0, i32 6
  %sum31122 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check121, i32 0, i32 0
  %124 = load i32, i32* %sum31122, align 4
  %xor123 = xor i32 %124, %or120
  store i32 %xor123, i32* %sum31122, align 4
  %125 = load i32, i32* %rank29, align 4
  %inc124 = add nsw i32 %125, 1
  store i32 %inc124, i32* %rank29, align 4
  %126 = load i32, i32* %rank29, align 4
  %cmp125 = icmp sge i32 %126, 29
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.body.114
  store i32 0, i32* %rank29, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %for.body.114
  %127 = load i32, i32* %rank31, align 4
  %inc129 = add nsw i32 %127, 1
  store i32 %inc129, i32* %rank31, align 4
  %128 = load i32, i32* %rank31, align 4
  %cmp130 = icmp sge i32 %128, 31
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.end.128
  store i32 0, i32* %rank31, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %if.end.128
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %129 = load i32, i32* %k, align 4
  %inc135 = add nsw i32 %129, 1
  store i32 %inc135, i32* %k, align 4
  %130 = load i32*, i32** %val, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %incdec.ptr, i32** %val, align 8
  br label %for.cond.111

for.end.136:                                      ; preds = %for.cond.111
  %131 = load i32, i32* %buf_length, align 4
  %inc137 = add nsw i32 %131, 1
  store i32 %inc137, i32* %buf_length, align 4
  %132 = load i32, i32* %buf_length, align 4
  %cmp138 = icmp eq i32 %132, 4096
  br i1 %cmp138, label %if.then.143, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.136
  %133 = load i32, i32* %isite, align 4
  %134 = load i32, i32* @sites_on_node, align 4
  %sub140 = sub nsw i32 %134, 1
  %cmp141 = icmp eq i32 %133, %sub140
  br i1 %cmp141, label %if.then.143, label %if.end.192

if.then.143:                                      ; preds = %lor.lhs.false, %for.end.136
  %135 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %136 = bitcast %struct.su3_matrix* %135 to i8*
  %137 = load i32, i32* %buf_length, align 4
  %conv144 = sext i32 %137 to i64
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call145 = call i64 @g_write(i8* %136, i64 576, i64 %conv144, %struct._IO_FILE* %138)
  %conv146 = trunc i64 %call145 to i32
  %139 = load i32, i32* %buf_length, align 4
  %cmp147 = icmp ne i32 %conv146, %139
  br i1 %cmp147, label %if.then.149, label %if.end.154

if.then.149:                                      ; preds = %if.then.143
  %arraydecay150 = getelementptr inbounds [11 x i8], [11 x i8]* %myname, i32 0, i32 0
  %140 = load i32, i32* @this_node, align 4
  %call151 = call i32* @__errno_location() #7
  %141 = load i32, i32* %call151, align 4
  %142 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %142, i32 0, i32 2
  %143 = load i8*, i8** %filename, align 8
  %call152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.119, i32 0, i32 0), i8* %arraydecay150, i32 %140, i32 %141, i8* %143)
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call153 = call i32 @fflush(%struct._IO_FILE* %144)
  call void @terminate(i32 1)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.149, %if.then.143
  store i32 0, i32* %buf_length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.189, %if.end.154
  %145 = load i32, i32* %i, align 4
  %cmp156 = icmp slt i32 %145, 4096
  br i1 %cmp156, label %for.body.158, label %for.end.191

for.body.158:                                     ; preds = %for.cond.155
  store i32 0, i32* %j, align 4
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.186, %for.body.158
  %146 = load i32, i32* %j, align 4
  %cmp160 = icmp slt i32 %146, 3
  br i1 %cmp160, label %for.body.162, label %for.end.188

for.body.162:                                     ; preds = %for.cond.159
  store i32 0, i32* %k, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.183, %for.body.162
  %147 = load i32, i32* %k, align 4
  %cmp164 = icmp slt i32 %147, 3
  br i1 %cmp164, label %for.body.166, label %for.end.185

for.body.166:                                     ; preds = %for.cond.163
  %148 = load i32, i32* %k, align 4
  %idxprom167 = sext i32 %148 to i64
  %149 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %149 to i64
  %150 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %150 to i64
  %151 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx170 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %151, i64 %idxprom169
  %e171 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e171, i32 0, i64 %idxprom168
  %arrayidx173 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx172, i32 0, i64 %idxprom167
  %imag174 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx173, i32 0, i32 1
  store double 0.000000e+00, double* %imag174, align 8
  %152 = load i32, i32* %k, align 4
  %idxprom175 = sext i32 %152 to i64
  %153 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %153 to i64
  %154 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %154 to i64
  %155 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx178 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %155, i64 %idxprom177
  %e179 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx178, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e179, i32 0, i64 %idxprom176
  %arrayidx181 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx180, i32 0, i64 %idxprom175
  %real182 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx181, i32 0, i32 0
  store double 0.000000e+00, double* %real182, align 8
  br label %for.inc.183

for.inc.183:                                      ; preds = %for.body.166
  %156 = load i32, i32* %k, align 4
  %inc184 = add nsw i32 %156, 1
  store i32 %inc184, i32* %k, align 4
  br label %for.cond.163

for.end.185:                                      ; preds = %for.cond.163
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.end.185
  %157 = load i32, i32* %j, align 4
  %inc187 = add nsw i32 %157, 1
  store i32 %inc187, i32* %j, align 4
  br label %for.cond.159

for.end.188:                                      ; preds = %for.cond.159
  br label %for.inc.189

for.inc.189:                                      ; preds = %for.end.188
  %158 = load i32, i32* %i, align 4
  %inc190 = add nsw i32 %158, 1
  store i32 %inc190, i32* %i, align 4
  br label %for.cond.155

for.end.191:                                      ; preds = %for.cond.155
  br label %if.end.192

if.end.192:                                       ; preds = %for.end.191, %lor.lhs.false
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.else
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.49
  br label %for.inc.195

for.inc.195:                                      ; preds = %if.end.194
  %159 = load i32, i32* %isite, align 4
  %inc196 = add nsw i32 %159, 1
  store i32 %inc196, i32* %isite, align 4
  br label %for.cond.35

for.end.197:                                      ; preds = %land.end
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.end.197
  %160 = load i32, i32* %destnode, align 4
  %inc199 = add nsw i32 %160, 1
  store i32 %inc199, i32* %destnode, align 4
  br label %for.cond.32

for.end.200:                                      ; preds = %for.cond.32
  call void (...) @g_sync()
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.200
  %161 = load i32, i32* %site_block, align 4
  %162 = load i32, i32* %ksite, align 4
  %add202 = add nsw i32 %162, %161
  store i32 %add202, i32* %ksite, align 4
  br label %for.cond.29

for.end.203:                                      ; preds = %for.cond.29
  %163 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %164 = bitcast %struct.su3_matrix* %163 to i8*
  call void @free(i8* %164) #5
  %165 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check204 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %165, i32 0, i32 6
  %sum29205 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check204, i32 0, i32 1
  call void @g_xor32(i32* %sum29205)
  %166 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check206 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %166, i32 0, i32 6
  %sum31207 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check206, i32 0, i32 0
  call void @g_xor32(i32* %sum31207)
  %167 = load i32, i32* @this_node, align 4
  %cmp208 = icmp eq i32 %167, 0
  br i1 %cmp208, label %if.then.210, label %if.end.225

if.then.210:                                      ; preds = %for.end.203
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %169 = load i64, i64* %checksum_offset, align 8
  %call211 = call i32 @g_seek(%struct._IO_FILE* %168, i64 %169, i32 0)
  %cmp212 = icmp slt i32 %call211, 0
  br i1 %cmp212, label %if.then.214, label %if.end.220

if.then.214:                                      ; preds = %if.then.210
  %arraydecay215 = getelementptr inbounds [11 x i8], [11 x i8]* %myname, i32 0, i32 0
  %170 = load i32, i32* @this_node, align 4
  %171 = load i64, i64* %checksum_offset, align 8
  %call216 = call i32* @__errno_location() #7
  %172 = load i32, i32* %call216, align 4
  %173 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename217 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %173, i32 0, i32 2
  %174 = load i8*, i8** %filename217, align 8
  %call218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.120, i32 0, i32 0), i8* %arraydecay215, i32 %170, i64 %171, i32 %172, i8* %174)
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call219 = call i32 @fflush(%struct._IO_FILE* %175)
  call void @terminate(i32 1)
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.214, %if.then.210
  %176 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  call void @write_checksum(i32 1, %struct.gauge_file* %176)
  %177 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename221 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %177, i32 0, i32 2
  %178 = load i8*, i8** %filename221, align 8
  %call222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.121, i32 0, i32 0), i8* %178)
  %179 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %179, i32 0, i32 1
  %180 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %180, i32 0, i32 1
  %arraydecay223 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %call224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay223)
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.220, %for.end.203
  ret void
}

; Function Attrs: nounwind uwtable
define void @w_checkpoint(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %lbuf = alloca %struct.su3_matrix*, align 8
  %val = alloca i32*, align 8
  %k = alloca i32, align 4
  %rank29 = alloca i32, align 4
  %rank31 = alloca i32, align 4
  %checksum_offset = alloca i64, align 8
  %buf_length = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %i = alloca i32, align 4
  %myname = alloca [13 x i8], align 1
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  %0 = bitcast [13 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @w_checkpoint.myname, i32 0, i32 0), i64 13, i32 1, i1 false)
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp1 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %call = call %struct.su3_matrix* @w_parallel_setup(%struct.gauge_file* %3, i64* %checksum_offset)
  store %struct.su3_matrix* %call, %struct.su3_matrix** %lbuf, align 8
  %4 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %4, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 0
  store i32 0, i32* %sum31, align 4
  %5 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %5, i32 0, i32 6
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check2, i32 0, i32 1
  store i32 0, i32* %sum29, align 4
  %6 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 144, %conv
  %7 = load i32, i32* @this_node, align 4
  %conv3 = sext i32 %7 to i64
  %mul4 = mul i64 %mul, %conv3
  %rem = urem i64 %mul4, 29
  %conv5 = trunc i64 %rem to i32
  store i32 %conv5, i32* %rank29, align 4
  %8 = load i32, i32* @sites_on_node, align 4
  %conv6 = sext i32 %8 to i64
  %mul7 = mul i64 144, %conv6
  %9 = load i32, i32* @this_node, align 4
  %conv8 = sext i32 %9 to i64
  %mul9 = mul i64 %mul7, %conv8
  %rem10 = urem i64 %mul9, 31
  %conv11 = trunc i64 %rem10 to i32
  store i32 %conv11, i32* %rank31, align 4
  store i32 0, i32* %buf_length, align 4
  store i32 0, i32* %i, align 4
  %10 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %10, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %buf_length, align 4
  %mul13 = mul nsw i32 4, %13
  %idxprom = sext i32 %mul13 to i64
  %14 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %14, i64 %idxprom
  %15 = bitcast %struct.su3_matrix* %arrayidx to i8*
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx15 = getelementptr inbounds %struct.site, %struct.site* %17, i64 %idxprom14
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx15, i32 0, i32 8
  %arraydecay = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i32 0
  %18 = bitcast %struct.su3_matrix* %arraydecay to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %18, i64 576, i32 1, i1 false)
  store i32 0, i32* %k, align 4
  %19 = load i32, i32* %buf_length, align 4
  %mul16 = mul nsw i32 4, %19
  %idxprom17 = sext i32 %mul16 to i64
  %20 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx18 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %20, i64 %idxprom17
  %21 = bitcast %struct.su3_matrix* %arrayidx18 to i32*
  store i32* %21, i32** %val, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body
  %22 = load i32, i32* %k, align 4
  %cmp20 = icmp slt i32 %22, 144
  br i1 %cmp20, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.19
  %23 = load i32*, i32** %val, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %rank29, align 4
  %shl = shl i32 %24, %25
  %26 = load i32*, i32** %val, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %rank29, align 4
  %sub = sub nsw i32 32, %28
  %shr = lshr i32 %27, %sub
  %or = or i32 %shl, %shr
  %29 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check23 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %29, i32 0, i32 6
  %sum2924 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check23, i32 0, i32 1
  %30 = load i32, i32* %sum2924, align 4
  %xor = xor i32 %30, %or
  store i32 %xor, i32* %sum2924, align 4
  %31 = load i32*, i32** %val, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %rank31, align 4
  %shl25 = shl i32 %32, %33
  %34 = load i32*, i32** %val, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %rank31, align 4
  %sub26 = sub nsw i32 32, %36
  %shr27 = lshr i32 %35, %sub26
  %or28 = or i32 %shl25, %shr27
  %37 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check29 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %37, i32 0, i32 6
  %sum3130 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check29, i32 0, i32 0
  %38 = load i32, i32* %sum3130, align 4
  %xor31 = xor i32 %38, %or28
  store i32 %xor31, i32* %sum3130, align 4
  %39 = load i32, i32* %rank29, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %rank29, align 4
  %40 = load i32, i32* %rank29, align 4
  %cmp32 = icmp sge i32 %40, 29
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.22
  store i32 0, i32* %rank29, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.22
  %41 = load i32, i32* %rank31, align 4
  %inc34 = add nsw i32 %41, 1
  store i32 %inc34, i32* %rank31, align 4
  %42 = load i32, i32* %rank31, align 4
  %cmp35 = icmp sge i32 %42, 31
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end
  store i32 0, i32* %rank31, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %43 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %43, 1
  store i32 %inc39, i32* %k, align 4
  %44 = load i32*, i32** %val, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %incdec.ptr, i32** %val, align 8
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  %45 = load i32, i32* %buf_length, align 4
  %inc40 = add nsw i32 %45, 1
  store i32 %inc40, i32* %buf_length, align 4
  %46 = load i32, i32* %buf_length, align 4
  %cmp41 = icmp eq i32 %46, 4096
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %47 = load i32, i32* %i, align 4
  %48 = load i32, i32* @sites_on_node, align 4
  %sub43 = sub nsw i32 %48, 1
  %cmp44 = icmp eq i32 %47, %sub43
  br i1 %cmp44, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %lor.lhs.false, %for.end
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call47 = call i32 @fflush(%struct._IO_FILE* %49)
  %50 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %51 = bitcast %struct.su3_matrix* %50 to i8*
  %52 = load i32, i32* %buf_length, align 4
  %conv48 = sext i32 %52 to i64
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call49 = call i64 @g_write(i8* %51, i64 576, i64 %conv48, %struct._IO_FILE* %53)
  %conv50 = trunc i64 %call49 to i32
  %54 = load i32, i32* %buf_length, align 4
  %cmp51 = icmp ne i32 %conv50, %54
  br i1 %cmp51, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %if.then.46
  %arraydecay54 = getelementptr inbounds [13 x i8], [13 x i8]* %myname, i32 0, i32 0
  %55 = load i32, i32* @this_node, align 4
  %call55 = call i32* @__errno_location() #7
  %56 = load i32, i32* %call55, align 4
  %57 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %57, i32 0, i32 2
  %58 = load i8*, i8** %filename, align 8
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.119, i32 0, i32 0), i8* %arraydecay54, i32 %55, i32 %56, i8* %58)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fflush(%struct._IO_FILE* %59)
  call void @terminate(i32 1)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %if.then.46
  store i32 0, i32* %buf_length, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %lor.lhs.false
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %60 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %60, 1
  store i32 %inc61, i32* %i, align 4
  %61 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr62 = getelementptr inbounds %struct.site, %struct.site* %61, i32 1
  store %struct.site* %incdec.ptr62, %struct.site** %s, align 8
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  %62 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %63 = bitcast %struct.su3_matrix* %62 to i8*
  call void @free(i8* %63) #5
  %64 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check64 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %64, i32 0, i32 6
  %sum2965 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check64, i32 0, i32 1
  call void @g_xor32(i32* %sum2965)
  %65 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %check66 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %65, i32 0, i32 6
  %sum3167 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check66, i32 0, i32 0
  call void @g_xor32(i32* %sum3167)
  %66 = load i32, i32* @this_node, align 4
  %cmp68 = icmp eq i32 %66, 0
  br i1 %cmp68, label %if.then.70, label %if.end.85

if.then.70:                                       ; preds = %for.end.63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %68 = load i64, i64* %checksum_offset, align 8
  %call71 = call i32 @g_seek(%struct._IO_FILE* %67, i64 %68, i32 0)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.80

if.then.74:                                       ; preds = %if.then.70
  %arraydecay75 = getelementptr inbounds [13 x i8], [13 x i8]* %myname, i32 0, i32 0
  %69 = load i32, i32* @this_node, align 4
  %70 = load i64, i64* %checksum_offset, align 8
  %call76 = call i32* @__errno_location() #7
  %71 = load i32, i32* %call76, align 4
  %72 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename77 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %72, i32 0, i32 2
  %73 = load i8*, i8** %filename77, align 8
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.120, i32 0, i32 0), i8* %arraydecay75, i32 %69, i64 %70, i32 %71, i8* %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call79 = call i32 @fflush(%struct._IO_FILE* %74)
  call void @terminate(i32 1)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.74, %if.then.70
  %75 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  call void @write_checksum(i32 1, %struct.gauge_file* %75)
  %76 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename81 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %76, i32 0, i32 2
  %77 = load i8*, i8** %filename81, align 8
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.122, i32 0, i32 0), i8* %77)
  %78 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %78, i32 0, i32 1
  %79 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %79, i32 0, i32 1
  %arraydecay83 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay83)
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.80, %for.end.63
  ret void
}

; Function Attrs: nounwind uwtable
define void @w_parallel_f(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  call void (...) @g_sync()
  %0 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %2, i32 0, i32 5
  %3 = load i32, i32* %parallel, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.123, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %4 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call3 = call i32 @g_close(%struct._IO_FILE* %5)
  %6 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp4 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %6, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %7 = load i32, i32* @this_node, align 4
  %cmp6 = icmp eq i32 %7, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %8 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  call void @write_gauge_info_file(%struct.gauge_file* %8)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  ret void
}

declare i32 @g_close(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @r_parallel_i(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %byterevflag = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @setup_input_gauge_file(i8* %0)
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 1
  %2 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %2, %struct.gauge_header** %gh, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 5
  store i32 1, i32* %parallel, align 4
  %4 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @g_open(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* @this_node, align 4
  %7 = load i8*, i8** %filename.addr, align 8
  %call2 = call i32* @__errno_location() #7
  %8 = load i32, i32* %call2, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.124, i32 0, i32 0), i32 %6, i8* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %9)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %11 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp5 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %11, i32 0, i32 0
  store %struct._IO_FILE* %10, %struct._IO_FILE** %fp5, align 8
  %12 = load i32, i32* @this_node, align 4
  %cmp6 = icmp eq i32 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %13 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %call8 = call i32 @read_gauge_hdr(%struct.gauge_file* %13, i32 1)
  store i32 %call8, i32* %byterevflag, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %14 = bitcast i32* %byterevflag to i8*
  call void @broadcast_bytes(i8* %14, i32 4)
  %15 = load i32, i32* %byterevflag, align 4
  %16 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %byterevflag10 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %16, i32 0, i32 3
  store i32 %15, i32* %byterevflag10, align 4
  %17 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %18 = bitcast %struct.gauge_header* %17 to i8*
  call void @broadcast_bytes(i8* %18, i32 92)
  %19 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @read_site_list(i32 1, %struct.gauge_file* %19)
  %20 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %20
}

; Function Attrs: nounwind uwtable
define void @r_parallel(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %filename = alloca i8*, align 8
  %byterevflag = alloca i32, align 4
  %lbuf = alloca %struct.su3_matrix*, align 8
  %msg = alloca %struct.anon.1, align 8
  %buf_length = alloca i32, align 4
  %where_in_buf = alloca i32, align 4
  %test_gc = alloca %struct.gauge_check, align 4
  %val = alloca i32*, align 8
  %rank29 = alloca i32, align 4
  %rank31 = alloca i32, align 4
  %destnode = alloca i32, align 4
  %sendnode = alloca i32, align 4
  %isite = alloca i32, align 4
  %ksite = alloca i32, align 4
  %site_block = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %rcv_rank = alloca i32, align 4
  %rcv_coords = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %offset = alloca i64, align 8
  %gauge_node_size = alloca i64, align 8
  %gauge_check_size = alloca i64, align 8
  %coord_list_size = alloca i64, align 8
  %head_size = alloca i64, align 8
  %checksum_offset = alloca i64, align 8
  %myname = alloca [11 x i8], align 1
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  %0 = bitcast [11 x i8]* %myname to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @r_parallel.myname, i32 0, i32 0), i64 11, i32 1, i1 false)
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp1 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fp, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 1
  %4 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %4, %struct.gauge_header** %gh, align 8
  %5 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %filename2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %5, i32 0, i32 2
  %6 = load i8*, i8** %filename2, align 8
  store i8* %6, i8** %filename, align 8
  %7 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %byterevflag3 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %7, i32 0, i32 3
  %8 = load i32, i32* %byterevflag3, align 4
  store i32 %8, i32* %byterevflag, align 4
  %9 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %9, i32 0, i32 5
  %10 = load i32, i32* %parallel, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %myname, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.125, i32 0, i32 0), i8* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call4 = call noalias i8* @calloc(i64 16384, i64 144) #5
  %11 = bitcast i8* %call4 to %struct.su3_matrix*
  store %struct.su3_matrix* %11, %struct.su3_matrix** %lbuf, align 8
  %12 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %cmp = icmp eq %struct.su3_matrix* %12, null
  br i1 %cmp, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [11 x i8], [11 x i8]* %myname, i32 0, i32 0
  %13 = load i32, i32* @this_node, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.102, i32 0, i32 0), i8* %arraydecay6, i32 %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %14)
  call void @terminate(i32 1)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  %15 = load i32, i32* @sites_on_node, align 4
  %mul = mul nsw i32 %15, 4
  %conv = sext i32 %mul to i64
  %mul10 = mul i64 %conv, 144
  store i64 %mul10, i64* %gauge_node_size, align 8
  %16 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %16, i32 0, i32 0
  %17 = load i32, i32* %magic_number, align 4
  %cmp11 = icmp eq i32 %17, 20103
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.9
  store i64 8, i64* %gauge_check_size, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.end.9
  %18 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number14 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %18, i32 0, i32 0
  %19 = load i32, i32* %magic_number14, align 4
  %cmp15 = icmp eq i32 %19, 53546
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else
  store i64 4, i64* %gauge_check_size, align 8
  br label %if.end.19

if.else.18:                                       ; preds = %if.else
  store i64 0, i64* %gauge_check_size, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.13
  %20 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header21 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %20, i32 0, i32 1
  %21 = load %struct.gauge_header*, %struct.gauge_header** %header21, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %21, i32 0, i32 4
  %22 = load i32, i32* %order, align 4
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.end.20
  store i64 0, i64* %coord_list_size, align 8
  br label %if.end.28

if.else.25:                                       ; preds = %if.end.20
  %23 = load i32, i32* @volume, align 4
  %conv26 = sext i32 %23 to i64
  %mul27 = mul i64 4, %conv26
  store i64 %mul27, i64* %coord_list_size, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  %24 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header29 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %24, i32 0, i32 1
  %25 = load %struct.gauge_header*, %struct.gauge_header** %header29, align 8
  %header_bytes = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %25, i32 0, i32 3
  %26 = load i32, i32* %header_bytes, align 4
  %conv30 = sext i32 %26 to i64
  %27 = load i64, i64* %coord_list_size, align 8
  %add = add nsw i64 %conv30, %27
  store i64 %add, i64* %checksum_offset, align 8
  %28 = load i64, i64* %checksum_offset, align 8
  %29 = load i64, i64* %gauge_check_size, align 8
  %add31 = add nsw i64 %28, %29
  store i64 %add31, i64* %head_size, align 8
  %30 = load i64, i64* %head_size, align 8
  store i64 %30, i64* %offset, align 8
  %31 = load i64, i64* %gauge_node_size, align 8
  %32 = load i32, i32* @this_node, align 4
  %conv32 = sext i32 %32 to i64
  %mul33 = mul nsw i64 %31, %conv32
  %33 = load i64, i64* %offset, align 8
  %add34 = add nsw i64 %33, %mul33
  store i64 %add34, i64* %offset, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %35 = load i64, i64* %offset, align 8
  %call35 = call i32 @g_seek(%struct._IO_FILE* %34, i64 %35, i32 0)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %if.end.28
  %arraydecay39 = getelementptr inbounds [11 x i8], [11 x i8]* %myname, i32 0, i32 0
  %36 = load i32, i32* @this_node, align 4
  %37 = load i64, i64* %offset, align 8
  %call40 = call i32* @__errno_location() #7
  %38 = load i32, i32* %call40, align 4
  %39 = load i8*, i8** %filename, align 8
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.117, i32 0, i32 0), i8* %arraydecay39, i32 %36, i64 %37, i32 %38, i8* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call42 = call i32 @fflush(%struct._IO_FILE* %40)
  call void @terminate(i32 1)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %if.end.28
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  store i32 0, i32* %sum29, align 4
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  store i32 0, i32* %sum31, align 4
  %41 = load i32, i32* @sites_on_node, align 4
  %conv44 = sext i32 %41 to i64
  %mul45 = mul i64 144, %conv44
  %42 = load i32, i32* @this_node, align 4
  %conv46 = sext i32 %42 to i64
  %mul47 = mul i64 %mul45, %conv46
  %rem = urem i64 %mul47, 29
  %conv48 = trunc i64 %rem to i32
  store i32 %conv48, i32* %rank29, align 4
  %43 = load i32, i32* @sites_on_node, align 4
  %conv49 = sext i32 %43 to i64
  %mul50 = mul i64 144, %conv49
  %44 = load i32, i32* @this_node, align 4
  %conv51 = sext i32 %44 to i64
  %mul52 = mul i64 %mul50, %conv51
  %rem53 = urem i64 %mul52, 31
  %conv54 = trunc i64 %rem53 to i32
  store i32 %conv54, i32* %rank31, align 4
  call void (...) @g_sync()
  store i32 0, i32* %buf_length, align 4
  store i32 0, i32* %where_in_buf, align 4
  store i32 4, i32* %site_block, align 4
  store i32 0, i32* %ksite, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.216, %if.end.43
  %45 = load i32, i32* %ksite, align 4
  %46 = load i32, i32* @sites_on_node, align 4
  %cmp55 = icmp slt i32 %45, %46
  br i1 %cmp55, label %for.body, label %for.end.218

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %sendnode, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.213, %for.body
  %47 = load i32, i32* %sendnode, align 4
  %48 = load i32, i32* @number_of_nodes, align 4
  %cmp58 = icmp slt i32 %47, %48
  br i1 %cmp58, label %for.body.60, label %for.end.215

for.body.60:                                      ; preds = %for.cond.57
  %49 = load i32, i32* %ksite, align 4
  store i32 %49, i32* %isite, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.210, %for.body.60
  %50 = load i32, i32* %isite, align 4
  %51 = load i32, i32* @sites_on_node, align 4
  %cmp62 = icmp slt i32 %50, %51
  br i1 %cmp62, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.61
  %52 = load i32, i32* %isite, align 4
  %53 = load i32, i32* %ksite, align 4
  %54 = load i32, i32* %site_block, align 4
  %add64 = add nsw i32 %53, %54
  %cmp65 = icmp slt i32 %52, %add64
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.61
  %55 = phi i1 [ false, %for.cond.61 ], [ %cmp65, %land.rhs ]
  br i1 %55, label %for.body.67, label %for.end.212

for.body.67:                                      ; preds = %land.end
  %56 = load i32, i32* %sendnode, align 4
  %57 = load i32, i32* @sites_on_node, align 4
  %mul68 = mul nsw i32 %56, %57
  %58 = load i32, i32* %isite, align 4
  %add69 = add nsw i32 %mul68, %58
  store i32 %add69, i32* %rcv_rank, align 4
  %59 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %header70 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %59, i32 0, i32 1
  %60 = load %struct.gauge_header*, %struct.gauge_header** %header70, align 8
  %order71 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %60, i32 0, i32 4
  %61 = load i32, i32* %order71, align 4
  %cmp72 = icmp eq i32 %61, 0
  br i1 %cmp72, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %for.body.67
  %62 = load i32, i32* %rcv_rank, align 4
  store i32 %62, i32* %rcv_coords, align 4
  br label %if.end.76

if.else.75:                                       ; preds = %for.body.67
  %63 = load i32, i32* %rcv_rank, align 4
  %idxprom = sext i32 %63 to i64
  %64 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %rank2rcv = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %64, i32 0, i32 4
  %65 = load i32*, i32** %rank2rcv, align 8
  %arrayidx = getelementptr inbounds i32, i32* %65, i64 %idxprom
  %66 = load i32, i32* %arrayidx, align 4
  store i32 %66, i32* %rcv_coords, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  %67 = load i32, i32* %rcv_coords, align 4
  %68 = load i32, i32* @nx, align 4
  %rem77 = srem i32 %67, %68
  store i32 %rem77, i32* %x, align 4
  %69 = load i32, i32* @nx, align 4
  %70 = load i32, i32* %rcv_coords, align 4
  %div = sdiv i32 %70, %69
  store i32 %div, i32* %rcv_coords, align 4
  %71 = load i32, i32* %rcv_coords, align 4
  %72 = load i32, i32* @ny, align 4
  %rem78 = srem i32 %71, %72
  store i32 %rem78, i32* %y, align 4
  %73 = load i32, i32* @ny, align 4
  %74 = load i32, i32* %rcv_coords, align 4
  %div79 = sdiv i32 %74, %73
  store i32 %div79, i32* %rcv_coords, align 4
  %75 = load i32, i32* %rcv_coords, align 4
  %76 = load i32, i32* @nz, align 4
  %rem80 = srem i32 %75, %76
  store i32 %rem80, i32* %z, align 4
  %77 = load i32, i32* @nz, align 4
  %78 = load i32, i32* %rcv_coords, align 4
  %div81 = sdiv i32 %78, %77
  store i32 %div81, i32* %rcv_coords, align 4
  %79 = load i32, i32* %rcv_coords, align 4
  %80 = load i32, i32* @nt, align 4
  %rem82 = srem i32 %79, %80
  store i32 %rem82, i32* %t, align 4
  %81 = load i32, i32* %x, align 4
  %82 = load i32, i32* %y, align 4
  %83 = load i32, i32* %z, align 4
  %84 = load i32, i32* %t, align 4
  %call83 = call i32 @node_number(i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %call83, i32* %destnode, align 4
  %85 = load i32, i32* @this_node, align 4
  %86 = load i32, i32* %sendnode, align 4
  %cmp84 = icmp eq i32 %85, %86
  br i1 %cmp84, label %if.then.86, label %if.else.166

if.then.86:                                       ; preds = %if.end.76
  %87 = load i32, i32* %where_in_buf, align 4
  %88 = load i32, i32* %buf_length, align 4
  %cmp87 = icmp eq i32 %87, %88
  br i1 %cmp87, label %if.then.89, label %if.end.106

if.then.89:                                       ; preds = %if.then.86
  %89 = load i32, i32* @sites_on_node, align 4
  %90 = load i32, i32* %isite, align 4
  %sub = sub nsw i32 %89, %90
  store i32 %sub, i32* %buf_length, align 4
  %91 = load i32, i32* %buf_length, align 4
  %cmp90 = icmp sgt i32 %91, 4096
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %if.then.89
  store i32 4096, i32* %buf_length, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.92, %if.then.89
  %92 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %93 = bitcast %struct.su3_matrix* %92 to i8*
  %94 = load i32, i32* %buf_length, align 4
  %mul94 = mul nsw i32 %94, 4
  %conv95 = sext i32 %mul94 to i64
  %mul96 = mul i64 %conv95, 144
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call97 = call i64 @g_read(i8* %93, i64 %mul96, i64 1, %struct._IO_FILE* %95)
  %cmp98 = icmp ne i64 %call97, 1
  br i1 %cmp98, label %if.then.100, label %if.end.105

if.then.100:                                      ; preds = %if.end.93
  %arraydecay101 = getelementptr inbounds [11 x i8], [11 x i8]* %myname, i32 0, i32 0
  %96 = load i32, i32* @this_node, align 4
  %call102 = call i32* @__errno_location() #7
  %97 = load i32, i32* %call102, align 4
  %98 = load i8*, i8** %filename, align 8
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.104, i32 0, i32 0), i8* %arraydecay101, i32 %96, i32 %97, i8* %98)
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call104 = call i32 @fflush(%struct._IO_FILE* %99)
  call void @terminate(i32 1)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.100, %if.end.93
  store i32 0, i32* %where_in_buf, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.86
  %100 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %byterevflag107 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %100, i32 0, i32 3
  %101 = load i32, i32* %byterevflag107, align 4
  %cmp108 = icmp eq i32 %101, 1
  br i1 %cmp108, label %if.then.110, label %if.end.114

if.then.110:                                      ; preds = %if.end.106
  %102 = load i32, i32* %where_in_buf, align 4
  %mul111 = mul nsw i32 4, %102
  %idxprom112 = sext i32 %mul111 to i64
  %103 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx113 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %103, i64 %idxprom112
  %104 = bitcast %struct.su3_matrix* %arrayidx113 to i32*
  call void @byterevn(i32* %104, i32 144)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.110, %if.end.106
  store i32 0, i32* %k, align 4
  %105 = load i32, i32* %where_in_buf, align 4
  %mul115 = mul nsw i32 4, %105
  %idxprom116 = sext i32 %mul115 to i64
  %106 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx117 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %106, i64 %idxprom116
  %107 = bitcast %struct.su3_matrix* %arrayidx117 to i32*
  store i32* %107, i32** %val, align 8
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc, %if.end.114
  %108 = load i32, i32* %k, align 4
  %cmp119 = icmp slt i32 %108, 144
  br i1 %cmp119, label %for.body.121, label %for.end

for.body.121:                                     ; preds = %for.cond.118
  %109 = load i32*, i32** %val, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %rank29, align 4
  %shl = shl i32 %110, %111
  %112 = load i32*, i32** %val, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %rank29, align 4
  %sub122 = sub nsw i32 32, %114
  %shr = lshr i32 %113, %sub122
  %or = or i32 %shl, %shr
  %sum29123 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  %115 = load i32, i32* %sum29123, align 4
  %xor = xor i32 %115, %or
  store i32 %xor, i32* %sum29123, align 4
  %116 = load i32*, i32** %val, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %rank31, align 4
  %shl124 = shl i32 %117, %118
  %119 = load i32*, i32** %val, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %rank31, align 4
  %sub125 = sub nsw i32 32, %121
  %shr126 = lshr i32 %120, %sub125
  %or127 = or i32 %shl124, %shr126
  %sum31128 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  %122 = load i32, i32* %sum31128, align 4
  %xor129 = xor i32 %122, %or127
  store i32 %xor129, i32* %sum31128, align 4
  %123 = load i32, i32* %rank29, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %rank29, align 4
  %124 = load i32, i32* %rank29, align 4
  %cmp130 = icmp sge i32 %124, 29
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.body.121
  store i32 0, i32* %rank29, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %for.body.121
  %125 = load i32, i32* %rank31, align 4
  %inc134 = add nsw i32 %125, 1
  store i32 %inc134, i32* %rank31, align 4
  %126 = load i32, i32* %rank31, align 4
  %cmp135 = icmp sge i32 %126, 31
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.133
  store i32 0, i32* %rank31, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.133
  br label %for.inc

for.inc:                                          ; preds = %if.end.138
  %127 = load i32, i32* %k, align 4
  %inc139 = add nsw i32 %127, 1
  store i32 %inc139, i32* %k, align 4
  %128 = load i32*, i32** %val, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %incdec.ptr, i32** %val, align 8
  br label %for.cond.118

for.end:                                          ; preds = %for.cond.118
  %129 = load i32, i32* %destnode, align 4
  %130 = load i32, i32* %sendnode, align 4
  %cmp140 = icmp eq i32 %129, %130
  br i1 %cmp140, label %if.then.142, label %if.else.150

if.then.142:                                      ; preds = %for.end
  %131 = load i32, i32* %x, align 4
  %132 = load i32, i32* %y, align 4
  %133 = load i32, i32* %z, align 4
  %134 = load i32, i32* %t, align 4
  %call143 = call i32 @node_index(i32 %131, i32 %132, i32 %133, i32 %134)
  store i32 %call143, i32* %i, align 4
  %135 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %135 to i64
  %136 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx145 = getelementptr inbounds %struct.site, %struct.site* %136, i64 %idxprom144
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx145, i32 0, i32 8
  %arraydecay146 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i32 0
  %137 = bitcast %struct.su3_matrix* %arraydecay146 to i8*
  %138 = load i32, i32* %where_in_buf, align 4
  %mul147 = mul nsw i32 4, %138
  %idxprom148 = sext i32 %mul147 to i64
  %139 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx149 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %139, i64 %idxprom148
  %140 = bitcast %struct.su3_matrix* %arrayidx149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %140, i64 576, i32 1, i1 false)
  br label %if.end.164

if.else.150:                                      ; preds = %for.end
  %141 = load i32, i32* %x, align 4
  %conv151 = trunc i32 %141 to i16
  %x152 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 0
  store i16 %conv151, i16* %x152, align 2
  %142 = load i32, i32* %y, align 4
  %conv153 = trunc i32 %142 to i16
  %y154 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 1
  store i16 %conv153, i16* %y154, align 2
  %143 = load i32, i32* %z, align 4
  %conv155 = trunc i32 %143 to i16
  %z156 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 2
  store i16 %conv155, i16* %z156, align 2
  %144 = load i32, i32* %t, align 4
  %conv157 = trunc i32 %144 to i16
  %t158 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 3
  store i16 %conv157, i16* %t158, align 2
  %link159 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 4
  %arraydecay160 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link159, i32 0, i32 0
  %145 = bitcast %struct.su3_matrix* %arraydecay160 to i8*
  %146 = load i32, i32* %where_in_buf, align 4
  %mul161 = mul nsw i32 4, %146
  %idxprom162 = sext i32 %mul161 to i64
  %147 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %arrayidx163 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %147, i64 %idxprom162
  %148 = bitcast %struct.su3_matrix* %arrayidx163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %145, i8* %148, i64 576, i32 1, i1 false)
  %149 = bitcast %struct.anon.1* %msg to i8*
  %150 = load i32, i32* %destnode, align 4
  call void @send_field(i8* %149, i32 584, i32 %150)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.150, %if.then.142
  %151 = load i32, i32* %where_in_buf, align 4
  %inc165 = add nsw i32 %151, 1
  store i32 %inc165, i32* %where_in_buf, align 4
  br label %if.end.209

if.else.166:                                      ; preds = %if.end.76
  %152 = load i32, i32* @this_node, align 4
  %153 = load i32, i32* %destnode, align 4
  %cmp167 = icmp eq i32 %152, %153
  br i1 %cmp167, label %if.then.169, label %if.end.208

if.then.169:                                      ; preds = %if.else.166
  %154 = bitcast %struct.anon.1* %msg to i8*
  call void @get_field(i8* %154, i32 584)
  %x170 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 0
  %155 = load i16, i16* %x170, align 2
  %conv171 = sext i16 %155 to i32
  %y172 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 1
  %156 = load i16, i16* %y172, align 2
  %conv173 = sext i16 %156 to i32
  %z174 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 2
  %157 = load i16, i16* %z174, align 2
  %conv175 = sext i16 %157 to i32
  %t176 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 3
  %158 = load i16, i16* %t176, align 2
  %conv177 = sext i16 %158 to i32
  %call178 = call i32 @node_index(i32 %conv171, i32 %conv173, i32 %conv175, i32 %conv177)
  store i32 %call178, i32* %i, align 4
  %159 = load i32, i32* @this_node, align 4
  %x179 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 0
  %160 = load i16, i16* %x179, align 2
  %conv180 = sext i16 %160 to i32
  %y181 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 1
  %161 = load i16, i16* %y181, align 2
  %conv182 = sext i16 %161 to i32
  %z183 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 2
  %162 = load i16, i16* %z183, align 2
  %conv184 = sext i16 %162 to i32
  %t185 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 3
  %163 = load i16, i16* %t185, align 2
  %conv186 = sext i16 %163 to i32
  %call187 = call i32 @node_number(i32 %conv180, i32 %conv182, i32 %conv184, i32 %conv186)
  %cmp188 = icmp ne i32 %159, %call187
  br i1 %cmp188, label %if.then.190, label %if.end.201

if.then.190:                                      ; preds = %if.then.169
  %164 = load i32, i32* @this_node, align 4
  %x191 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 0
  %165 = load i16, i16* %x191, align 2
  %conv192 = sext i16 %165 to i32
  %y193 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 1
  %166 = load i16, i16* %y193, align 2
  %conv194 = sext i16 %166 to i32
  %z195 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 2
  %167 = load i16, i16* %z195, align 2
  %conv196 = sext i16 %167 to i32
  %t197 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 3
  %168 = load i16, i16* %t197, align 2
  %conv198 = sext i16 %168 to i32
  %call199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.126, i32 0, i32 0), i32 %164, i32 %conv192, i32 %conv194, i32 %conv196, i32 %conv198)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call200 = call i32 @fflush(%struct._IO_FILE* %169)
  call void @terminate(i32 1)
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.190, %if.then.169
  %170 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %170 to i64
  %171 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx203 = getelementptr inbounds %struct.site, %struct.site* %171, i64 %idxprom202
  %link204 = getelementptr inbounds %struct.site, %struct.site* %arrayidx203, i32 0, i32 8
  %arraydecay205 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link204, i32 0, i32 0
  %172 = bitcast %struct.su3_matrix* %arraydecay205 to i8*
  %link206 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %msg, i32 0, i32 4
  %arraydecay207 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link206, i32 0, i32 0
  %173 = bitcast %struct.su3_matrix* %arraydecay207 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %172, i8* %173, i64 576, i32 1, i1 false)
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.201, %if.else.166
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.end.164
  br label %for.inc.210

for.inc.210:                                      ; preds = %if.end.209
  %174 = load i32, i32* %isite, align 4
  %inc211 = add nsw i32 %174, 1
  store i32 %inc211, i32* %isite, align 4
  br label %for.cond.61

for.end.212:                                      ; preds = %land.end
  br label %for.inc.213

for.inc.213:                                      ; preds = %for.end.212
  %175 = load i32, i32* %sendnode, align 4
  %inc214 = add nsw i32 %175, 1
  store i32 %inc214, i32* %sendnode, align 4
  br label %for.cond.57

for.end.215:                                      ; preds = %for.cond.57
  call void (...) @g_sync()
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.end.215
  %176 = load i32, i32* %site_block, align 4
  %177 = load i32, i32* %ksite, align 4
  %add217 = add nsw i32 %177, %176
  store i32 %add217, i32* %ksite, align 4
  br label %for.cond

for.end.218:                                      ; preds = %for.cond
  %178 = load %struct.su3_matrix*, %struct.su3_matrix** %lbuf, align 8
  %179 = bitcast %struct.su3_matrix* %178 to i8*
  call void @free(i8* %179) #5
  %sum29219 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 1
  call void @g_xor32(i32* %sum29219)
  %sum31220 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %test_gc, i32 0, i32 0
  call void @g_xor32(i32* %sum31220)
  %180 = load i32, i32* @this_node, align 4
  %cmp221 = icmp eq i32 %180, 0
  br i1 %cmp221, label %if.then.223, label %if.end.242

if.then.223:                                      ; preds = %for.end.218
  %181 = load i8*, i8** %filename, align 8
  %call224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.127, i32 0, i32 0), i8* %181)
  %182 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number225 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %182, i32 0, i32 0
  %183 = load i32, i32* %magic_number225, align 4
  %cmp226 = icmp eq i32 %183, 20103
  br i1 %cmp226, label %if.then.228, label %if.end.240

if.then.228:                                      ; preds = %if.then.223
  %184 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %184, i32 0, i32 1
  %arraydecay229 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %call230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay229)
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %186 = load i64, i64* %checksum_offset, align 8
  %call231 = call i32 @g_seek(%struct._IO_FILE* %185, i64 %186, i32 0)
  %cmp232 = icmp slt i32 %call231, 0
  br i1 %cmp232, label %if.then.234, label %if.end.239

if.then.234:                                      ; preds = %if.then.228
  %arraydecay235 = getelementptr inbounds [11 x i8], [11 x i8]* %myname, i32 0, i32 0
  %187 = load i64, i64* %offset, align 8
  %call236 = call i32* @__errno_location() #7
  %188 = load i32, i32* %call236, align 4
  %189 = load i8*, i8** %filename, align 8
  %call237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.128, i32 0, i32 0), i8* %arraydecay235, i64 %187, i32 %188, i8* %189)
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call238 = call i32 @fflush(%struct._IO_FILE* %190)
  call void @terminate(i32 1)
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.234, %if.then.228
  %191 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  call void @read_checksum(i32 1, %struct.gauge_file* %191, %struct.gauge_check* %test_gc)
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.223
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call241 = call i32 @fflush(%struct._IO_FILE* %192)
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.240, %for.end.218
  ret void
}

; Function Attrs: nounwind uwtable
define void @r_parallel_f(%struct.gauge_file* %gf) #0 {
entry:
  %gf.addr = alloca %struct.gauge_file*, align 8
  store %struct.gauge_file* %gf, %struct.gauge_file** %gf.addr, align 8
  call void (...) @g_sync()
  %0 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %2, i32 0, i32 5
  %3 = load i32, i32* %parallel, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.129, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %4 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp2 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call3 = call i32 @g_close(%struct._IO_FILE* %5)
  %6 = load %struct.gauge_file*, %struct.gauge_file** %gf.addr, align 8
  %fp4 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %6, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @restore_ascii(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %destnode = alloca i32, align 4
  %version_number = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %dir = alloca i32, align 4
  %lbuf = alloca [4 x %struct.su3_matrix], align 16
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @setup_input_gauge_file(i8* %0)
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 1
  %2 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %2, %struct.gauge_header** %gh, align 8
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %3, i32 0, i32 5
  store i32 0, i32* %parallel, align 4
  %4 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else.82

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.130, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32* @__errno_location() #7
  %8 = load i32, i32* %call4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.131, i32 0, i32 0), i8* %7, i32 %8)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %10 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp6 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %10, i32 0, i32 0
  store %struct._IO_FILE* %9, %struct._IO_FILE** %fp6, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %version_number)
  %cmp8 = icmp ne i32 %call7, 1
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.132, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  %12 = load i32, i32* %version_number, align 4
  %13 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %13, i32 0, i32 0
  store i32 %12, i32* %magic_number, align 4
  %14 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number12 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %14, i32 0, i32 0
  %15 = load i32, i32* %magic_number12, align 4
  %cmp13 = icmp ne i32 %15, 20103
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.end.11
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.133, i32 0, i32 0))
  %16 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %magic_number16 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %16, i32 0, i32 0
  %17 = load i32, i32* %magic_number16, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.134, i32 0, i32 0), i32 %17, i32 20103)
  call void @terminate(i32 1)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.end.11
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %19 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %19, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.135, i32 0, i32 0), i8* %arraydecay)
  store i32 %call19, i32* %i, align 4
  %cmp20 = icmp ne i32 %call19, 1
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.18
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.136, i32 0, i32 0))
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp23 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %21, i32 0, i32 1
  %arraydecay24 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp23, i32 0, i32 0
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.137, i32 0, i32 0), i32 %20, i8* %arraydecay24)
  call void @terminate(i32 1)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.end.18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.138, i32 0, i32 0), i32* %x, i32* %y, i32* %z, i32* %t)
  %cmp28 = icmp ne i32 %call27, 4
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.26
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.139, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.26
  %23 = load i32, i32* %x, align 4
  %24 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %24, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 0
  store i32 %23, i32* %arrayidx, align 4
  %25 = load i32, i32* %y, align 4
  %26 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims32 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %26, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [4 x i32], [4 x i32]* %dims32, i32 0, i64 1
  store i32 %25, i32* %arrayidx33, align 4
  %27 = load i32, i32* %z, align 4
  %28 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims34 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %28, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %dims34, i32 0, i64 2
  store i32 %27, i32* %arrayidx35, align 4
  %29 = load i32, i32* %t, align 4
  %30 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims36 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %30, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %dims36, i32 0, i64 3
  store i32 %29, i32* %arrayidx37, align 4
  %31 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims38 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %31, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %dims38, i32 0, i64 0
  %32 = load i32, i32* %arrayidx39, align 4
  %33 = load i32, i32* @nx, align 4
  %cmp40 = icmp ne i32 %32, %33
  br i1 %cmp40, label %if.then.52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %34 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims41 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %34, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [4 x i32], [4 x i32]* %dims41, i32 0, i64 1
  %35 = load i32, i32* %arrayidx42, align 4
  %36 = load i32, i32* @ny, align 4
  %cmp43 = icmp ne i32 %35, %36
  br i1 %cmp43, label %if.then.52, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false
  %37 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims45 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %37, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %dims45, i32 0, i64 2
  %38 = load i32, i32* %arrayidx46, align 4
  %39 = load i32, i32* @nz, align 4
  %cmp47 = icmp ne i32 %38, %39
  br i1 %cmp47, label %if.then.52, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.44
  %40 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims49 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %40, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %dims49, i32 0, i64 3
  %41 = load i32, i32* %arrayidx50, align 4
  %42 = load i32, i32* @nt, align 4
  %cmp51 = icmp ne i32 %41, %42
  br i1 %cmp51, label %if.then.52, label %if.end.81

if.then.52:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false.44, %lor.lhs.false, %if.end.31
  %43 = load i32, i32* @nx, align 4
  %cmp53 = icmp ne i32 %43, -1
  br i1 %cmp53, label %if.then.60, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.then.52
  %44 = load i32, i32* @ny, align 4
  %cmp55 = icmp ne i32 %44, -1
  br i1 %cmp55, label %if.then.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.54
  %45 = load i32, i32* @nz, align 4
  %cmp57 = icmp ne i32 %45, -1
  br i1 %cmp57, label %if.then.60, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.56
  %46 = load i32, i32* @nt, align 4
  %cmp59 = icmp ne i32 %46, -1
  br i1 %cmp59, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %lor.lhs.false.58, %lor.lhs.false.56, %lor.lhs.false.54, %if.then.52
  %47 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims61 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %47, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [4 x i32], [4 x i32]* %dims61, i32 0, i64 0
  %48 = load i32, i32* %arrayidx62, align 4
  %49 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims63 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %49, i32 0, i32 2
  %arrayidx64 = getelementptr inbounds [4 x i32], [4 x i32]* %dims63, i32 0, i64 1
  %50 = load i32, i32* %arrayidx64, align 4
  %51 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims65 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %51, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %dims65, i32 0, i64 2
  %52 = load i32, i32* %arrayidx66, align 4
  %53 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims67 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %53, i32 0, i32 2
  %arrayidx68 = getelementptr inbounds [4 x i32], [4 x i32]* %dims67, i32 0, i64 3
  %54 = load i32, i32* %arrayidx68, align 4
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.140, i32 0, i32 0), i32 %48, i32 %50, i32 %52, i32 %54)
  call void @terminate(i32 1)
  br label %if.end.80

if.else:                                          ; preds = %lor.lhs.false.58
  %55 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims70 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %55, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [4 x i32], [4 x i32]* %dims70, i32 0, i64 0
  %56 = load i32, i32* %arrayidx71, align 4
  store i32 %56, i32* @nx, align 4
  %57 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims72 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %57, i32 0, i32 2
  %arrayidx73 = getelementptr inbounds [4 x i32], [4 x i32]* %dims72, i32 0, i64 1
  %58 = load i32, i32* %arrayidx73, align 4
  store i32 %58, i32* @ny, align 4
  %59 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims74 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %59, i32 0, i32 2
  %arrayidx75 = getelementptr inbounds [4 x i32], [4 x i32]* %dims74, i32 0, i64 2
  %60 = load i32, i32* %arrayidx75, align 4
  store i32 %60, i32* @nz, align 4
  %61 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %dims76 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %61, i32 0, i32 2
  %arrayidx77 = getelementptr inbounds [4 x i32], [4 x i32]* %dims76, i32 0, i64 3
  %62 = load i32, i32* %arrayidx77, align 4
  store i32 %62, i32* @nt, align 4
  %63 = load i32, i32* @nx, align 4
  %64 = load i32, i32* @ny, align 4
  %mul = mul nsw i32 %63, %64
  %65 = load i32, i32* @nz, align 4
  %mul78 = mul nsw i32 %mul, %65
  %66 = load i32, i32* @nt, align 4
  %mul79 = mul nsw i32 %mul78, %66
  store i32 %mul79, i32* @volume, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.60
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %lor.lhs.false.48
  %67 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %order = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %67, i32 0, i32 4
  store i32 0, i32* %order, align 4
  br label %if.end.84

if.else.82:                                       ; preds = %entry
  %68 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp83 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %68, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp83, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.end.81
  %69 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %byterevflag = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %69, i32 0, i32 3
  store i32 0, i32* %byterevflag, align 4
  %70 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %71 = bitcast %struct.gauge_header* %70 to i8*
  call void @broadcast_bytes(i8* %71, i32 92)
  call void (...) @g_sync()
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.177, %if.end.84
  %72 = load i32, i32* %t, align 4
  %73 = load i32, i32* @nt, align 4
  %cmp85 = icmp slt i32 %72, %73
  br i1 %cmp85, label %for.body, label %for.end.179

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %z, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.174, %for.body
  %74 = load i32, i32* %z, align 4
  %75 = load i32, i32* @nz, align 4
  %cmp87 = icmp slt i32 %74, %75
  br i1 %cmp87, label %for.body.88, label %for.end.176

for.body.88:                                      ; preds = %for.cond.86
  store i32 0, i32* %y, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.171, %for.body.88
  %76 = load i32, i32* %y, align 4
  %77 = load i32, i32* @ny, align 4
  %cmp90 = icmp slt i32 %76, %77
  br i1 %cmp90, label %for.body.91, label %for.end.173

for.body.91:                                      ; preds = %for.cond.89
  store i32 0, i32* %x, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.168, %for.body.91
  %78 = load i32, i32* %x, align 4
  %79 = load i32, i32* @nx, align 4
  %cmp93 = icmp slt i32 %78, %79
  br i1 %cmp93, label %for.body.94, label %for.end.170

for.body.94:                                      ; preds = %for.cond.92
  %80 = load i32, i32* %x, align 4
  %81 = load i32, i32* %y, align 4
  %82 = load i32, i32* %z, align 4
  %83 = load i32, i32* %t, align 4
  %call95 = call i32 @node_number(i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %call95, i32* %destnode, align 4
  %84 = load i32, i32* @this_node, align 4
  %cmp96 = icmp eq i32 %84, 0
  br i1 %cmp96, label %if.then.97, label %if.else.148

if.then.97:                                       ; preds = %for.body.94
  store i32 0, i32* %dir, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.127, %if.then.97
  %85 = load i32, i32* %dir, align 4
  %cmp99 = icmp sle i32 %85, 3
  br i1 %cmp99, label %for.body.100, label %for.end.129

for.body.100:                                     ; preds = %for.cond.98
  store i32 0, i32* %i, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.124, %for.body.100
  %86 = load i32, i32* %i, align 4
  %cmp102 = icmp slt i32 %86, 3
  br i1 %cmp102, label %for.body.103, label %for.end.126

for.body.103:                                     ; preds = %for.cond.101
  store i32 0, i32* %j, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc, %for.body.103
  %87 = load i32, i32* %j, align 4
  %cmp105 = icmp slt i32 %87, 3
  br i1 %cmp105, label %for.body.106, label %for.end

for.body.106:                                     ; preds = %for.cond.104
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %89 = load i32, i32* %j, align 4
  %idxprom = sext i32 %89 to i64
  %90 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %90 to i64
  %91 = load i32, i32* %dir, align 4
  %idxprom108 = sext i32 %91 to i64
  %arrayidx109 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom108
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx109, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom107
  %arrayidx111 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx110, i32 0, i64 %idxprom
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx111, i32 0, i32 0
  %92 = load i32, i32* %j, align 4
  %idxprom112 = sext i32 %92 to i64
  %93 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %93 to i64
  %94 = load i32, i32* %dir, align 4
  %idxprom114 = sext i32 %94 to i64
  %arrayidx115 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom114
  %e116 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx115, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e116, i32 0, i64 %idxprom113
  %arrayidx118 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx117, i32 0, i64 %idxprom112
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx118, i32 0, i32 1
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), double* %real, double* %imag)
  %cmp120 = icmp ne i32 %call119, 2
  br i1 %cmp120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %for.body.106
  %call122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.142, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %for.body.106
  br label %for.inc

for.inc:                                          ; preds = %if.end.123
  %95 = load i32, i32* %j, align 4
  %inc = add nsw i32 %95, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.104

for.end:                                          ; preds = %for.cond.104
  br label %for.inc.124

for.inc.124:                                      ; preds = %for.end
  %96 = load i32, i32* %i, align 4
  %inc125 = add nsw i32 %96, 1
  store i32 %inc125, i32* %i, align 4
  br label %for.cond.101

for.end.126:                                      ; preds = %for.cond.101
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end.126
  %97 = load i32, i32* %dir, align 4
  %inc128 = add nsw i32 %97, 1
  store i32 %inc128, i32* %dir, align 4
  br label %for.cond.98

for.end.129:                                      ; preds = %for.cond.98
  %98 = load i32, i32* %destnode, align 4
  %cmp130 = icmp eq i32 %98, 0
  br i1 %cmp130, label %if.then.131, label %if.else.145

if.then.131:                                      ; preds = %for.end.129
  %99 = load i32, i32* %x, align 4
  %100 = load i32, i32* %y, align 4
  %101 = load i32, i32* %z, align 4
  %102 = load i32, i32* %t, align 4
  %call132 = call i32 @node_index(i32 %99, i32 %100, i32 %101, i32 %102)
  store i32 %call132, i32* %i, align 4
  store i32 0, i32* %dir, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.142, %if.then.131
  %103 = load i32, i32* %dir, align 4
  %cmp134 = icmp sle i32 %103, 3
  br i1 %cmp134, label %for.body.135, label %for.end.144

for.body.135:                                     ; preds = %for.cond.133
  %104 = load i32, i32* %dir, align 4
  %idxprom136 = sext i32 %104 to i64
  %105 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %105 to i64
  %106 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx138 = getelementptr inbounds %struct.site, %struct.site* %106, i64 %idxprom137
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx138, i32 0, i32 8
  %arrayidx139 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom136
  %107 = load i32, i32* %dir, align 4
  %idxprom140 = sext i32 %107 to i64
  %arrayidx141 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom140
  %108 = bitcast %struct.su3_matrix* %arrayidx139 to i8*
  %109 = bitcast %struct.su3_matrix* %arrayidx141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %108, i8* %109, i64 144, i32 8, i1 false)
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.body.135
  %110 = load i32, i32* %dir, align 4
  %inc143 = add nsw i32 %110, 1
  store i32 %inc143, i32* %dir, align 4
  br label %for.cond.133

for.end.144:                                      ; preds = %for.cond.133
  br label %if.end.147

if.else.145:                                      ; preds = %for.end.129
  %arraydecay146 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %111 = bitcast %struct.su3_matrix* %arraydecay146 to i8*
  %112 = load i32, i32* %destnode, align 4
  call void @send_field(i8* %111, i32 576, i32 %112)
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.145, %for.end.144
  br label %if.end.167

if.else.148:                                      ; preds = %for.body.94
  %113 = load i32, i32* @this_node, align 4
  %114 = load i32, i32* %destnode, align 4
  %cmp149 = icmp eq i32 %113, %114
  br i1 %cmp149, label %if.then.150, label %if.end.166

if.then.150:                                      ; preds = %if.else.148
  %arraydecay151 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %115 = bitcast %struct.su3_matrix* %arraydecay151 to i8*
  call void @get_field(i8* %115, i32 576)
  %116 = load i32, i32* %x, align 4
  %117 = load i32, i32* %y, align 4
  %118 = load i32, i32* %z, align 4
  %119 = load i32, i32* %t, align 4
  %call152 = call i32 @node_index(i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 %call152, i32* %i, align 4
  store i32 0, i32* %dir, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.163, %if.then.150
  %120 = load i32, i32* %dir, align 4
  %cmp154 = icmp sle i32 %120, 3
  br i1 %cmp154, label %for.body.155, label %for.end.165

for.body.155:                                     ; preds = %for.cond.153
  %121 = load i32, i32* %dir, align 4
  %idxprom156 = sext i32 %121 to i64
  %122 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %122 to i64
  %123 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx158 = getelementptr inbounds %struct.site, %struct.site* %123, i64 %idxprom157
  %link159 = getelementptr inbounds %struct.site, %struct.site* %arrayidx158, i32 0, i32 8
  %arrayidx160 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link159, i32 0, i64 %idxprom156
  %124 = load i32, i32* %dir, align 4
  %idxprom161 = sext i32 %124 to i64
  %arrayidx162 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom161
  %125 = bitcast %struct.su3_matrix* %arrayidx160 to i8*
  %126 = bitcast %struct.su3_matrix* %arrayidx162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 144, i32 8, i1 false)
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.body.155
  %127 = load i32, i32* %dir, align 4
  %inc164 = add nsw i32 %127, 1
  store i32 %inc164, i32* %dir, align 4
  br label %for.cond.153

for.end.165:                                      ; preds = %for.cond.153
  br label %if.end.166

if.end.166:                                       ; preds = %for.end.165, %if.else.148
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.147
  br label %for.inc.168

for.inc.168:                                      ; preds = %if.end.167
  %128 = load i32, i32* %x, align 4
  %inc169 = add nsw i32 %128, 1
  store i32 %inc169, i32* %x, align 4
  br label %for.cond.92

for.end.170:                                      ; preds = %for.cond.92
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.end.170
  %129 = load i32, i32* %y, align 4
  %inc172 = add nsw i32 %129, 1
  store i32 %inc172, i32* %y, align 4
  br label %for.cond.89

for.end.173:                                      ; preds = %for.cond.89
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.end.173
  %130 = load i32, i32* %z, align 4
  %inc175 = add nsw i32 %130, 1
  store i32 %inc175, i32* %z, align 4
  br label %for.cond.86

for.end.176:                                      ; preds = %for.cond.86
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end.176
  %131 = load i32, i32* %t, align 4
  %inc178 = add nsw i32 %131, 1
  store i32 %inc178, i32* %t, align 4
  br label %for.cond

for.end.179:                                      ; preds = %for.cond
  call void (...) @g_sync()
  %132 = load i32, i32* @this_node, align 4
  %cmp180 = icmp eq i32 %132, 0
  br i1 %cmp180, label %if.then.181, label %if.end.189

if.then.181:                                      ; preds = %for.end.179
  %133 = load i8*, i8** %filename.addr, align 8
  %call182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.143, i32 0, i32 0), i8* %133)
  %134 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp183 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %134, i32 0, i32 1
  %arraydecay184 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp183, i32 0, i32 0
  %call185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay184)
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call186 = call i32 @fclose(%struct._IO_FILE* %135)
  %136 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp187 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %136, i32 0, i32 0
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp187, align 8
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call188 = call i32 @fflush(%struct._IO_FILE* %137)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.181, %for.end.179
  %138 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %138
}

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @save_ascii(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %currentnode = alloca i32, align 4
  %newnode = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %t = alloca i32, align 4
  %dir = alloca i32, align 4
  %lbuf = alloca [4 x %struct.su3_matrix], align 16
  %gf = alloca %struct.gauge_file*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @setup_output_gauge_file()
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %0 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %0, i32 0, i32 1
  %1 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %1, %struct.gauge_header** %gh, align 8
  %2 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32* @__errno_location() #7
  %6 = load i32, i32* %call4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.131, i32 0, i32 0), i8* %5, i32 %6)
  call void @terminate(i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %8 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %fp6 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %8, i32 0, i32 0
  store %struct._IO_FILE* %7, %struct._IO_FILE** %fp6, align 8
  %9 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %parallel = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %9, i32 0, i32 5
  store i32 0, i32* %parallel, align 4
  %10 = load i8*, i8** %filename.addr, align 8
  %11 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %filename7 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %11, i32 0, i32 2
  store i8* %10, i8** %filename7, align 8
  %12 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %byterevflag = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %12, i32 0, i32 3
  store i32 0, i32* %byterevflag, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i32 0, i32 0), i32 20103)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.145, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %15 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %15, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.146, i32 0, i32 0), i8* %arraydecay)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.147, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %17 = load i32, i32* @nx, align 4
  %18 = load i32, i32* @ny, align 4
  %19 = load i32, i32* @nz, align 4
  %20 = load i32, i32* @nt, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.148, i32 0, i32 0), i32 %17, i32 %18, i32 %19, i32 %20)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.149, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.17
  %21 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @write_gauge_info_file(%struct.gauge_file* %21)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  call void (...) @g_sync()
  store i32 0, i32* %currentnode, align 4
  store i32 0, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.128, %if.end.23
  %22 = load i32, i32* %t, align 4
  %23 = load i32, i32* @nt, align 4
  %cmp24 = icmp slt i32 %22, %23
  br i1 %cmp24, label %for.body, label %for.end.130

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %z, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.125, %for.body
  %24 = load i32, i32* %z, align 4
  %25 = load i32, i32* @nz, align 4
  %cmp26 = icmp slt i32 %24, %25
  br i1 %cmp26, label %for.body.27, label %for.end.127

for.body.27:                                      ; preds = %for.cond.25
  store i32 0, i32* %y, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.122, %for.body.27
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* @ny, align 4
  %cmp29 = icmp slt i32 %26, %27
  br i1 %cmp29, label %for.body.30, label %for.end.124

for.body.30:                                      ; preds = %for.cond.28
  store i32 0, i32* %x, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.119, %for.body.30
  %28 = load i32, i32* %x, align 4
  %29 = load i32, i32* @nx, align 4
  %cmp32 = icmp slt i32 %28, %29
  br i1 %cmp32, label %for.body.33, label %for.end.121

for.body.33:                                      ; preds = %for.cond.31
  %30 = load i32, i32* %x, align 4
  %31 = load i32, i32* %y, align 4
  %32 = load i32, i32* %z, align 4
  %33 = load i32, i32* %t, align 4
  %call34 = call i32 @node_number(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %call34, i32* %newnode, align 4
  %34 = load i32, i32* %newnode, align 4
  %35 = load i32, i32* %currentnode, align 4
  %cmp35 = icmp ne i32 %34, %35
  br i1 %cmp35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %for.body.33
  %36 = load i32, i32* @this_node, align 4
  %cmp37 = icmp eq i32 %36, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.then.36
  %37 = load i32, i32* %newnode, align 4
  %cmp38 = icmp ne i32 %37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %land.lhs.true
  %arraydecay40 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %38 = bitcast %struct.su3_matrix* %arraydecay40 to i8*
  %39 = load i32, i32* %newnode, align 4
  call void @send_field(i8* %38, i32 4, i32 %39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %land.lhs.true, %if.then.36
  %40 = load i32, i32* @this_node, align 4
  %41 = load i32, i32* %newnode, align 4
  %cmp42 = icmp eq i32 %40, %41
  br i1 %cmp42, label %land.lhs.true.43, label %if.end.47

land.lhs.true.43:                                 ; preds = %if.end.41
  %42 = load i32, i32* %newnode, align 4
  %cmp44 = icmp ne i32 %42, 0
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true.43
  %arraydecay46 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %43 = bitcast %struct.su3_matrix* %arraydecay46 to i8*
  call void @get_field(i8* %43, i32 4)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %land.lhs.true.43, %if.end.41
  %44 = load i32, i32* %newnode, align 4
  store i32 %44, i32* %currentnode, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.body.33
  %45 = load i32, i32* @this_node, align 4
  %cmp49 = icmp eq i32 %45, 0
  br i1 %cmp49, label %if.then.50, label %if.else.99

if.then.50:                                       ; preds = %if.end.48
  %46 = load i32, i32* %currentnode, align 4
  %cmp51 = icmp eq i32 %46, 0
  br i1 %cmp51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.then.50
  %47 = load i32, i32* %x, align 4
  %48 = load i32, i32* %y, align 4
  %49 = load i32, i32* %z, align 4
  %50 = load i32, i32* %t, align 4
  %call53 = call i32 @node_index(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %call53, i32* %i, align 4
  store i32 0, i32* %dir, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc, %if.then.52
  %51 = load i32, i32* %dir, align 4
  %cmp55 = icmp sle i32 %51, 3
  br i1 %cmp55, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.54
  %52 = load i32, i32* %dir, align 4
  %idxprom = sext i32 %52 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom
  %53 = load i32, i32* %dir, align 4
  %idxprom57 = sext i32 %53 to i64
  %54 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %54 to i64
  %55 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx59 = getelementptr inbounds %struct.site, %struct.site* %55, i64 %idxprom58
  %link = getelementptr inbounds %struct.site, %struct.site* %arrayidx59, i32 0, i32 8
  %arrayidx60 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom57
  %56 = bitcast %struct.su3_matrix* %arrayidx to i8*
  %57 = bitcast %struct.su3_matrix* %arrayidx60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 144, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.56
  %58 = load i32, i32* %dir, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %dir, align 4
  br label %for.cond.54

for.end:                                          ; preds = %for.cond.54
  br label %if.end.62

if.else:                                          ; preds = %if.then.50
  %arraydecay61 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %59 = bitcast %struct.su3_matrix* %arraydecay61 to i8*
  call void @get_field(i8* %59, i32 576)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %for.end
  store i32 0, i32* %dir, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.96, %if.end.62
  %60 = load i32, i32* %dir, align 4
  %cmp64 = icmp sle i32 %60, 3
  br i1 %cmp64, label %for.body.65, label %for.end.98

for.body.65:                                      ; preds = %for.cond.63
  store i32 0, i32* %i, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.93, %for.body.65
  %61 = load i32, i32* %i, align 4
  %cmp67 = icmp slt i32 %61, 3
  br i1 %cmp67, label %for.body.68, label %for.end.95

for.body.68:                                      ; preds = %for.cond.66
  store i32 0, i32* %j, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.90, %for.body.68
  %62 = load i32, i32* %j, align 4
  %cmp70 = icmp slt i32 %62, 3
  br i1 %cmp70, label %for.body.71, label %for.end.92

for.body.71:                                      ; preds = %for.cond.69
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %64 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %64 to i64
  %65 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %65 to i64
  %66 = load i32, i32* %dir, align 4
  %idxprom74 = sext i32 %66 to i64
  %arrayidx75 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom74
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx75, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom73
  %arrayidx77 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx76, i32 0, i64 %idxprom72
  %real = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx77, i32 0, i32 0
  %67 = load double, double* %real, align 8
  %68 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %68 to i64
  %69 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %69 to i64
  %70 = load i32, i32* %dir, align 4
  %idxprom80 = sext i32 %70 to i64
  %arrayidx81 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom80
  %e82 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx81, i32 0, i32 0
  %arrayidx83 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e82, i32 0, i64 %idxprom79
  %arrayidx84 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx83, i32 0, i64 %idxprom78
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx84, i32 0, i32 1
  %71 = load double, double* %imag, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.150, i32 0, i32 0), double %67, double %71)
  %cmp86 = icmp eq i32 %call85, -1
  br i1 %cmp86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %for.body.71
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.151, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %for.body.71
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %72 = load i32, i32* %j, align 4
  %inc91 = add nsw i32 %72, 1
  store i32 %inc91, i32* %j, align 4
  br label %for.cond.69

for.end.92:                                       ; preds = %for.cond.69
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.92
  %73 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %73, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.66

for.end.95:                                       ; preds = %for.cond.66
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end.95
  %74 = load i32, i32* %dir, align 4
  %inc97 = add nsw i32 %74, 1
  store i32 %inc97, i32* %dir, align 4
  br label %for.cond.63

for.end.98:                                       ; preds = %for.cond.63
  br label %if.end.118

if.else.99:                                       ; preds = %if.end.48
  %75 = load i32, i32* @this_node, align 4
  %76 = load i32, i32* %currentnode, align 4
  %cmp100 = icmp eq i32 %75, %76
  br i1 %cmp100, label %if.then.101, label %if.end.117

if.then.101:                                      ; preds = %if.else.99
  %77 = load i32, i32* %x, align 4
  %78 = load i32, i32* %y, align 4
  %79 = load i32, i32* %z, align 4
  %80 = load i32, i32* %t, align 4
  %call102 = call i32 @node_index(i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %call102, i32* %i, align 4
  store i32 0, i32* %dir, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.113, %if.then.101
  %81 = load i32, i32* %dir, align 4
  %cmp104 = icmp sle i32 %81, 3
  br i1 %cmp104, label %for.body.105, label %for.end.115

for.body.105:                                     ; preds = %for.cond.103
  %82 = load i32, i32* %dir, align 4
  %idxprom106 = sext i32 %82 to i64
  %arrayidx107 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom106
  %83 = load i32, i32* %dir, align 4
  %idxprom108 = sext i32 %83 to i64
  %84 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %84 to i64
  %85 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx110 = getelementptr inbounds %struct.site, %struct.site* %85, i64 %idxprom109
  %link111 = getelementptr inbounds %struct.site, %struct.site* %arrayidx110, i32 0, i32 8
  %arrayidx112 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link111, i32 0, i64 %idxprom108
  %86 = bitcast %struct.su3_matrix* %arrayidx107 to i8*
  %87 = bitcast %struct.su3_matrix* %arrayidx112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 144, i32 8, i1 false)
  br label %for.inc.113

for.inc.113:                                      ; preds = %for.body.105
  %88 = load i32, i32* %dir, align 4
  %inc114 = add nsw i32 %88, 1
  store i32 %inc114, i32* %dir, align 4
  br label %for.cond.103

for.end.115:                                      ; preds = %for.cond.103
  %arraydecay116 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %89 = bitcast %struct.su3_matrix* %arraydecay116 to i8*
  call void @send_field(i8* %89, i32 576, i32 0)
  br label %if.end.117

if.end.117:                                       ; preds = %for.end.115, %if.else.99
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %for.end.98
  br label %for.inc.119

for.inc.119:                                      ; preds = %if.end.118
  %90 = load i32, i32* %x, align 4
  %inc120 = add nsw i32 %90, 1
  store i32 %inc120, i32* %x, align 4
  br label %for.cond.31

for.end.121:                                      ; preds = %for.cond.31
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.end.121
  %91 = load i32, i32* %y, align 4
  %inc123 = add nsw i32 %91, 1
  store i32 %inc123, i32* %y, align 4
  br label %for.cond.28

for.end.124:                                      ; preds = %for.cond.28
  br label %for.inc.125

for.inc.125:                                      ; preds = %for.end.124
  %92 = load i32, i32* %z, align 4
  %inc126 = add nsw i32 %92, 1
  store i32 %inc126, i32* %z, align 4
  br label %for.cond.25

for.end.127:                                      ; preds = %for.cond.25
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.end.127
  %93 = load i32, i32* %t, align 4
  %inc129 = add nsw i32 %93, 1
  store i32 %inc129, i32* %t, align 4
  br label %for.cond

for.end.130:                                      ; preds = %for.cond
  call void (...) @g_sync()
  %94 = load i32, i32* @this_node, align 4
  %cmp131 = icmp eq i32 %94, 0
  br i1 %cmp131, label %if.then.132, label %if.end.141

if.then.132:                                      ; preds = %for.end.130
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call133 = call i32 @fflush(%struct._IO_FILE* %95)
  %96 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %filename134 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %96, i32 0, i32 2
  %97 = load i8*, i8** %filename134, align 8
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.152, i32 0, i32 0), i8* %97)
  %98 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp136 = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %98, i32 0, i32 1
  %arraydecay137 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp136, i32 0, i32 0
  %call138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay137)
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call139 = call i32 @fclose(%struct._IO_FILE* %99)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call140 = call i32 @fflush(%struct._IO_FILE* %100)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.132, %for.end.130
  %101 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %101
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @restore_serial(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @r_serial_i(i8* %0)
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %1, i32 0, i32 1
  %2 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  %magic_number = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %2, i32 0, i32 0
  %3 = load i32, i32* %magic_number, align 4
  %cmp = icmp eq i32 %3, 1111836489
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @r_serial_arch(%struct.gauge_file* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @r_serial(%struct.gauge_file* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @r_serial_f(%struct.gauge_file* %6)
  %7 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %7
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @restore_parallel(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @r_parallel_i(i8* %0)
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @r_parallel(%struct.gauge_file* %1)
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @r_parallel_f(%struct.gauge_file* %2)
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %3
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @save_serial(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @w_serial_i(i8* %0)
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @w_serial(%struct.gauge_file* %1)
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @w_serial_f(%struct.gauge_file* %2)
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %3
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @save_parallel(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @w_parallel_i(i8* %0)
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @w_parallel(%struct.gauge_file* %1)
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @w_parallel_f(%struct.gauge_file* %2)
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %3
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @save_checkpoint(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %gf = alloca %struct.gauge_file*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct.gauge_file* @w_checkpoint_i(i8* %0)
  store %struct.gauge_file* %call, %struct.gauge_file** %gf, align 8
  %1 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @w_checkpoint(%struct.gauge_file* %1)
  %2 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  call void @w_parallel_f(%struct.gauge_file* %2)
  %3 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %3
}

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @save_serial_archive(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %currentnode = alloca i32, align 4
  %newnode = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %dir = alloca i32, align 4
  %lbuf = alloca [4 x %struct.su3_matrix], align 16
  %gf = alloca %struct.gauge_file*, align 8
  %gh = alloca %struct.gauge_header*, align 8
  %outfile = alloca %struct._IO_FILE*, align 8
  %s = alloca %struct.site*, align 8
  %chksum = alloca i32, align 4
  %utmp = alloca i32, align 4
  %p32 = alloca i32*, align 8
  %sums = alloca [30 x i8], align 16
  %uout = alloca double*, align 8
  %big_end_p = alloca i32, align 4
  %ssplaq = alloca double, align 8
  %stplaq = alloca double, align 8
  %avgtrace = alloca double, align 8
  %avgplaq = alloca double, align 8
  %tmpflt = alloca double, align 8
  %trace = alloca double, align 8
  %mu = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %vol3 = alloca i32, align 4
  %tslice = alloca i32, align 4
  %coerce = alloca %struct.complex, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %call = call i32 @big_endian()
  store i32 %call, i32* %big_end_p, align 4
  %call1 = call %struct.gauge_file* @setup_output_gauge_file()
  store %struct.gauge_file* %call1, %struct.gauge_file** %gf, align 8
  %0 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %header = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %0, i32 0, i32 1
  %1 = load %struct.gauge_header*, %struct.gauge_header** %header, align 8
  store %struct.gauge_header* %1, %struct.gauge_header** %gh, align 8
  call void @d_plaquette(double* %ssplaq, double* %stplaq)
  %2 = load double, double* %ssplaq, align 8
  %3 = load double, double* %stplaq, align 8
  %add = fadd double %2, %3
  %div = fdiv double %add, 6.000000e+00
  store double %div, double* %avgplaq, align 8
  store double 0.000000e+00, double* %trace, align 8
  store i32 0, i32* %chksum, align 4
  store i32 0, i32* %i, align 4
  %4 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %4, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @sites_on_node, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %mu, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.34, %for.body
  %7 = load i32, i32* %mu, align 4
  %cmp3 = icmp slt i32 %7, 4
  br i1 %cmp3, label %for.body.4, label %for.end.36

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i32, i32* %mu, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %9, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom
  %call5 = call { double, double } @trace_su3(%struct.su3_matrix* %arrayidx)
  %10 = bitcast %struct.complex* %coerce to { double, double }*
  %11 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %call5, 0
  store double %12, double* %11, align 8
  %13 = getelementptr { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %call5, 1
  store double %14, double* %13, align 8
  %real = getelementptr inbounds %struct.complex, %struct.complex* %coerce, i32 0, i32 0
  %15 = load double, double* %real, align 8
  %16 = load double, double* %trace, align 8
  %add6 = fadd double %16, %15
  store double %add6, double* %trace, align 8
  store i32 0, i32* %a, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.31, %for.body.4
  %17 = load i32, i32* %a, align 4
  %cmp8 = icmp slt i32 %17, 2
  br i1 %cmp8, label %for.body.9, label %for.end.33

for.body.9:                                       ; preds = %for.cond.7
  store i32 0, i32* %b, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body.9
  %18 = load i32, i32* %b, align 4
  %cmp11 = icmp slt i32 %18, 3
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %19 = load i32, i32* %b, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load i32, i32* %a, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load i32, i32* %mu, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.site*, %struct.site** %s, align 8
  %link16 = getelementptr inbounds %struct.site, %struct.site* %22, i32 0, i32 8
  %arrayidx17 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link16, i32 0, i64 %idxprom15
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx17, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom14
  %arrayidx19 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx18, i32 0, i64 %idxprom13
  %real20 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx19, i32 0, i32 0
  %23 = load double, double* %real20, align 8
  store double %23, double* %tmpflt, align 8
  %24 = bitcast double* %tmpflt to i32*
  store i32* %24, i32** %p32, align 8
  %25 = load i32*, i32** %p32, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %chksum, align 4
  %add21 = add i32 %27, %26
  store i32 %add21, i32* %chksum, align 4
  %28 = load i32, i32* %b, align 4
  %idxprom22 = sext i32 %28 to i64
  %29 = load i32, i32* %a, align 4
  %idxprom23 = sext i32 %29 to i64
  %30 = load i32, i32* %mu, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load %struct.site*, %struct.site** %s, align 8
  %link25 = getelementptr inbounds %struct.site, %struct.site* %31, i32 0, i32 8
  %arrayidx26 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link25, i32 0, i64 %idxprom24
  %e27 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e27, i32 0, i64 %idxprom23
  %arrayidx29 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx28, i32 0, i64 %idxprom22
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx29, i32 0, i32 1
  %32 = load double, double* %imag, align 8
  store double %32, double* %tmpflt, align 8
  %33 = bitcast double* %tmpflt to i32*
  store i32* %33, i32** %p32, align 8
  %34 = load i32*, i32** %p32, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %chksum, align 4
  %add30 = add i32 %36, %35
  store i32 %add30, i32* %chksum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %37 = load i32, i32* %b, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end
  %38 = load i32, i32* %a, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %a, align 4
  br label %for.cond.7

for.end.33:                                       ; preds = %for.cond.7
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %39 = load i32, i32* %mu, align 4
  %inc35 = add nsw i32 %39, 1
  store i32 %inc35, i32* %mu, align 4
  br label %for.cond.2

for.end.36:                                       ; preds = %for.cond.2
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %40 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %40, 1
  store i32 %inc38, i32* %i, align 4
  %41 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %41, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  call void @g_doublesum(double* %trace)
  %42 = load double, double* %trace, align 8
  %43 = load i32, i32* @volume, align 4
  %mul = mul nsw i32 %43, 12
  %conv = sitofp i32 %mul to double
  %div40 = fdiv double %42, %conv
  store double %div40, double* %avgtrace, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.58, %for.end.39
  %44 = load i32, i32* %j, align 4
  %call42 = call i32 (...) @numnodes()
  %cmp43 = icmp slt i32 %44, %call42
  br i1 %cmp43, label %for.body.45, label %for.end.60

for.body.45:                                      ; preds = %for.cond.41
  %45 = load i32, i32* @this_node, align 4
  %cmp46 = icmp eq i32 %45, 0
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.45
  %arraydecay = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %46 = bitcast %struct.su3_matrix* %arraydecay to i8*
  %47 = load i32, i32* %j, align 4
  call void @send_field(i8* %46, i32 4, i32 %47)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.45
  %48 = load i32, i32* @this_node, align 4
  %49 = load i32, i32* %j, align 4
  %cmp48 = icmp eq i32 %48, %49
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end
  %arraydecay51 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %50 = bitcast %struct.su3_matrix* %arraydecay51 to i8*
  call void @get_field(i8* %50, i32 4)
  call void @send_integer(i32 0, i32* %chksum)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end
  %51 = load i32, i32* @this_node, align 4
  %cmp53 = icmp eq i32 %51, 0
  br i1 %cmp53, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.52
  call void @receive_integer(i32* %utmp)
  %52 = load i32, i32* %utmp, align 4
  %53 = load i32, i32* %chksum, align 4
  %add56 = add i32 %53, %52
  store i32 %add56, i32* %chksum, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.52
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %54 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %54, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond.41

for.end.60:                                       ; preds = %for.cond.41
  %55 = load i32, i32* @this_node, align 4
  %cmp61 = icmp eq i32 %55, 0
  br i1 %cmp61, label %if.then.63, label %if.end.110

if.then.63:                                       ; preds = %for.end.60
  %56 = load double, double* %avgtrace, align 8
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), double %56)
  %57 = load i32, i32* %chksum, align 4
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.154, i32 0, i32 0), i32 %57)
  %58 = load i32, i32* %chksum, align 4
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.155, i32 0, i32 0), i32 %58)
  %59 = load double, double* %avgplaq, align 8
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.156, i32 0, i32 0), double %59)
  %60 = load i8*, i8** %filename.addr, align 8
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.157, i32 0, i32 0), i8* %60)
  %61 = load i8*, i8** %filename.addr, align 8
  %call69 = call %struct._IO_FILE* @fopen(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0))
  store %struct._IO_FILE* %call69, %struct._IO_FILE** %outfile, align 8
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %cmp70 = icmp eq %struct._IO_FILE* %62, null
  br i1 %cmp70, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.then.63
  %63 = load i8*, i8** %filename.addr, align 8
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.158, i32 0, i32 0), i8* %63)
  call void @terminate(i32 1)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.then.63
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.159, i32 0, i32 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.160, i32 0, i32 0))
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %67 = load i32, i32* @nx, align 4
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.161, i32 0, i32 0), i32 %67)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %69 = load i32, i32* @ny, align 4
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i32 0, i32 0), i32 %69)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %71 = load i32, i32* @nz, align 4
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.163, i32 0, i32 0), i32 %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %73 = load i32, i32* @nt, align 4
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.164, i32 0, i32 0), i32 %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %75 = load i32, i32* %chksum, align 4
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i32 0, i32 0), i32 %75)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %77 = load double, double* %avgtrace, align 8
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.166, i32 0, i32 0), double %77)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %79 = load double, double* %avgplaq, align 8
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.167, i32 0, i32 0), double %79)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @ensemble_id, i32 0, i32 0))
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %82 = load i32, i32* @sequence_number, align 4
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.169, i32 0, i32 0), i32 %82)
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.170, i32 0, i32 0))
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %85 = load %struct.gauge_header*, %struct.gauge_header** %gh, align 8
  %time_stamp = getelementptr inbounds %struct.gauge_header, %struct.gauge_header* %85, i32 0, i32 1
  %arraydecay87 = getelementptr inbounds [64 x i8], [64 x i8]* %time_stamp, i32 0, i32 0
  %call88 = call i32 @write_gauge_info_item(%struct._IO_FILE* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* %arraydecay87, i32 0, i32 0)
  %arraydecay89 = getelementptr inbounds [30 x i8], [30 x i8]* %sums, i32 0, i32 0
  %86 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %check = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %86, i32 0, i32 6
  %sum29 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check, i32 0, i32 1
  %87 = load i32, i32* %sum29, align 4
  %88 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  %check90 = getelementptr inbounds %struct.gauge_file, %struct.gauge_file* %88, i32 0, i32 6
  %sum31 = getelementptr inbounds %struct.gauge_check, %struct.gauge_check* %check90, i32 0, i32 0
  %89 = load i32, i32* %sum31, align 4
  %call91 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %87, i32 %89) #5
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %arraydecay92 = getelementptr inbounds [30 x i8], [30 x i8]* %sums, i32 0, i32 0
  %call93 = call i32 @write_gauge_info_item(%struct._IO_FILE* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* %arraydecay92, i32 0, i32 0)
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call94 = call i32 @write_gauge_info_item(%struct._IO_FILE* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* bitcast (i32* @nx to i8*), i32 0, i32 0)
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call95 = call i32 @write_gauge_info_item(%struct._IO_FILE* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* bitcast (i32* @ny to i8*), i32 0, i32 0)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call96 = call i32 @write_gauge_info_item(%struct._IO_FILE* %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* bitcast (i32* @nz to i8*), i32 0, i32 0)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call97 = call i32 @write_gauge_info_item(%struct._IO_FILE* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* bitcast (i32* @nt to i8*), i32 0, i32 0)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  call void @write_appl_gauge_info(%struct._IO_FILE* %95)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.171, i32 0, i32 0))
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %98 = load i32, i32* @nx, align 4
  %99 = load i32, i32* @ny, align 4
  %mul100 = mul nsw i32 %98, %99
  %100 = load i32, i32* @nz, align 4
  %mul101 = mul nsw i32 %mul100, %100
  store i32 %mul101, i32* %vol3, align 4
  %101 = load i32, i32* %vol3, align 4
  %mul102 = mul nsw i32 48, %101
  %conv103 = sext i32 %mul102 to i64
  %call104 = call noalias i8* @calloc(i64 %conv103, i64 8) #5
  %102 = bitcast i8* %call104 to double*
  store double* %102, double** %uout, align 8
  %103 = load double*, double** %uout, align 8
  %cmp105 = icmp eq double* %103, null
  br i1 %cmp105, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %if.end.74
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.172, i32 0, i32 0))
  call void @terminate(i32 1)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.107, %if.end.74
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %for.end.60
  call void (...) @g_sync()
  store i32 0, i32* %currentnode, align 4
  store i32 0, i32* %tslice, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.321, %if.end.110
  %104 = load i32, i32* %tslice, align 4
  %105 = load i32, i32* @nt, align 4
  %cmp112 = icmp slt i32 %104, %105
  br i1 %cmp112, label %for.body.114, label %for.end.323

for.body.114:                                     ; preds = %for.cond.111
  store i32 0, i32* %j, align 4
  store i32 0, i32* %z, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.301, %for.body.114
  %106 = load i32, i32* %z, align 4
  %107 = load i32, i32* @nz, align 4
  %cmp116 = icmp slt i32 %106, %107
  br i1 %cmp116, label %for.body.118, label %for.end.303

for.body.118:                                     ; preds = %for.cond.115
  store i32 0, i32* %y, align 4
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.298, %for.body.118
  %108 = load i32, i32* %y, align 4
  %109 = load i32, i32* @ny, align 4
  %cmp120 = icmp slt i32 %108, %109
  br i1 %cmp120, label %for.body.122, label %for.end.300

for.body.122:                                     ; preds = %for.cond.119
  store i32 0, i32* %x, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.295, %for.body.122
  %110 = load i32, i32* %x, align 4
  %111 = load i32, i32* @nx, align 4
  %cmp124 = icmp slt i32 %110, %111
  br i1 %cmp124, label %for.body.126, label %for.end.297

for.body.126:                                     ; preds = %for.cond.123
  %112 = load i32, i32* %x, align 4
  %113 = load i32, i32* %y, align 4
  %114 = load i32, i32* %z, align 4
  %115 = load i32, i32* %tslice, align 4
  %call127 = call i32 @node_number(i32 %112, i32 %113, i32 %114, i32 %115)
  store i32 %call127, i32* %newnode, align 4
  %116 = load i32, i32* %newnode, align 4
  %117 = load i32, i32* %currentnode, align 4
  %cmp128 = icmp ne i32 %116, %117
  br i1 %cmp128, label %if.then.130, label %if.end.146

if.then.130:                                      ; preds = %for.body.126
  %118 = load i32, i32* @this_node, align 4
  %cmp131 = icmp eq i32 %118, 0
  br i1 %cmp131, label %land.lhs.true, label %if.end.137

land.lhs.true:                                    ; preds = %if.then.130
  %119 = load i32, i32* %newnode, align 4
  %cmp133 = icmp ne i32 %119, 0
  br i1 %cmp133, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %land.lhs.true
  %arraydecay136 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %120 = bitcast %struct.su3_matrix* %arraydecay136 to i8*
  %121 = load i32, i32* %newnode, align 4
  call void @send_field(i8* %120, i32 4, i32 %121)
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %land.lhs.true, %if.then.130
  %122 = load i32, i32* @this_node, align 4
  %123 = load i32, i32* %newnode, align 4
  %cmp138 = icmp eq i32 %122, %123
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.145

land.lhs.true.140:                                ; preds = %if.end.137
  %124 = load i32, i32* %newnode, align 4
  %cmp141 = icmp ne i32 %124, 0
  br i1 %cmp141, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %land.lhs.true.140
  %arraydecay144 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %125 = bitcast %struct.su3_matrix* %arraydecay144 to i8*
  call void @get_field(i8* %125, i32 4)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %land.lhs.true.140, %if.end.137
  %126 = load i32, i32* %newnode, align 4
  store i32 %126, i32* %currentnode, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %for.body.126
  %127 = load i32, i32* @this_node, align 4
  %cmp147 = icmp eq i32 %127, 0
  br i1 %cmp147, label %if.then.149, label %if.else.273

if.then.149:                                      ; preds = %if.end.146
  %128 = load i32, i32* %currentnode, align 4
  %cmp150 = icmp eq i32 %128, 0
  br i1 %cmp150, label %if.then.152, label %if.else

if.then.152:                                      ; preds = %if.then.149
  %129 = load i32, i32* %x, align 4
  %130 = load i32, i32* %y, align 4
  %131 = load i32, i32* %z, align 4
  %132 = load i32, i32* %tslice, align 4
  %call153 = call i32 @node_index(i32 %129, i32 %130, i32 %131, i32 %132)
  %idxprom154 = sext i32 %call153 to i64
  %133 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx155 = getelementptr inbounds %struct.site, %struct.site* %133, i64 %idxprom154
  store %struct.site* %arrayidx155, %struct.site** %s, align 8
  store i32 0, i32* %mu, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc.211, %if.then.152
  %134 = load i32, i32* %mu, align 4
  %cmp157 = icmp slt i32 %134, 4
  br i1 %cmp157, label %for.body.159, label %for.end.213

for.body.159:                                     ; preds = %for.cond.156
  store i32 0, i32* %a, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.208, %for.body.159
  %135 = load i32, i32* %a, align 4
  %cmp161 = icmp slt i32 %135, 2
  br i1 %cmp161, label %for.body.163, label %for.end.210

for.body.163:                                     ; preds = %for.cond.160
  store i32 0, i32* %b, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.205, %for.body.163
  %136 = load i32, i32* %b, align 4
  %cmp165 = icmp slt i32 %136, 3
  br i1 %cmp165, label %for.body.167, label %for.end.207

for.body.167:                                     ; preds = %for.cond.164
  %137 = load i32, i32* %b, align 4
  %idxprom168 = sext i32 %137 to i64
  %138 = load i32, i32* %a, align 4
  %idxprom169 = sext i32 %138 to i64
  %139 = load i32, i32* %mu, align 4
  %idxprom170 = sext i32 %139 to i64
  %140 = load %struct.site*, %struct.site** %s, align 8
  %link171 = getelementptr inbounds %struct.site, %struct.site* %140, i32 0, i32 8
  %arrayidx172 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link171, i32 0, i64 %idxprom170
  %e173 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e173, i32 0, i64 %idxprom169
  %arrayidx175 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx174, i32 0, i64 %idxprom168
  %real176 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx175, i32 0, i32 0
  %141 = load double, double* %real176, align 8
  %142 = load i32, i32* %b, align 4
  %143 = load i32, i32* %a, align 4
  %mul177 = mul nsw i32 3, %143
  %add178 = add nsw i32 %142, %mul177
  %mul179 = mul nsw i32 2, %add178
  %144 = load i32, i32* %mu, align 4
  %mul180 = mul nsw i32 12, %144
  %add181 = add nsw i32 %mul179, %mul180
  %145 = load i32, i32* %j, align 4
  %mul182 = mul nsw i32 48, %145
  %add183 = add nsw i32 %add181, %mul182
  %idxprom184 = sext i32 %add183 to i64
  %146 = load double*, double** %uout, align 8
  %arrayidx185 = getelementptr inbounds double, double* %146, i64 %idxprom184
  store double %141, double* %arrayidx185, align 8
  %147 = load i32, i32* %b, align 4
  %idxprom186 = sext i32 %147 to i64
  %148 = load i32, i32* %a, align 4
  %idxprom187 = sext i32 %148 to i64
  %149 = load i32, i32* %mu, align 4
  %idxprom188 = sext i32 %149 to i64
  %150 = load %struct.site*, %struct.site** %s, align 8
  %link189 = getelementptr inbounds %struct.site, %struct.site* %150, i32 0, i32 8
  %arrayidx190 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link189, i32 0, i64 %idxprom188
  %e191 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e191, i32 0, i64 %idxprom187
  %arrayidx193 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx192, i32 0, i64 %idxprom186
  %imag194 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx193, i32 0, i32 1
  %151 = load double, double* %imag194, align 8
  %152 = load i32, i32* %b, align 4
  %153 = load i32, i32* %a, align 4
  %mul195 = mul nsw i32 3, %153
  %add196 = add nsw i32 %152, %mul195
  %mul197 = mul nsw i32 2, %add196
  %add198 = add nsw i32 1, %mul197
  %154 = load i32, i32* %mu, align 4
  %mul199 = mul nsw i32 12, %154
  %add200 = add nsw i32 %add198, %mul199
  %155 = load i32, i32* %j, align 4
  %mul201 = mul nsw i32 48, %155
  %add202 = add nsw i32 %add200, %mul201
  %idxprom203 = sext i32 %add202 to i64
  %156 = load double*, double** %uout, align 8
  %arrayidx204 = getelementptr inbounds double, double* %156, i64 %idxprom203
  store double %151, double* %arrayidx204, align 8
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.body.167
  %157 = load i32, i32* %b, align 4
  %inc206 = add nsw i32 %157, 1
  store i32 %inc206, i32* %b, align 4
  br label %for.cond.164

for.end.207:                                      ; preds = %for.cond.164
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.end.207
  %158 = load i32, i32* %a, align 4
  %inc209 = add nsw i32 %158, 1
  store i32 %inc209, i32* %a, align 4
  br label %for.cond.160

for.end.210:                                      ; preds = %for.cond.160
  br label %for.inc.211

for.inc.211:                                      ; preds = %for.end.210
  %159 = load i32, i32* %mu, align 4
  %inc212 = add nsw i32 %159, 1
  store i32 %inc212, i32* %mu, align 4
  br label %for.cond.156

for.end.213:                                      ; preds = %for.cond.156
  br label %if.end.271

if.else:                                          ; preds = %if.then.149
  %arraydecay214 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %160 = bitcast %struct.su3_matrix* %arraydecay214 to i8*
  call void @get_field(i8* %160, i32 576)
  store i32 0, i32* %mu, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.268, %if.else
  %161 = load i32, i32* %mu, align 4
  %cmp216 = icmp slt i32 %161, 4
  br i1 %cmp216, label %for.body.218, label %for.end.270

for.body.218:                                     ; preds = %for.cond.215
  store i32 0, i32* %a, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.265, %for.body.218
  %162 = load i32, i32* %a, align 4
  %cmp220 = icmp slt i32 %162, 2
  br i1 %cmp220, label %for.body.222, label %for.end.267

for.body.222:                                     ; preds = %for.cond.219
  store i32 0, i32* %b, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.262, %for.body.222
  %163 = load i32, i32* %b, align 4
  %cmp224 = icmp slt i32 %163, 3
  br i1 %cmp224, label %for.body.226, label %for.end.264

for.body.226:                                     ; preds = %for.cond.223
  %164 = load i32, i32* %b, align 4
  %idxprom227 = sext i32 %164 to i64
  %165 = load i32, i32* %a, align 4
  %idxprom228 = sext i32 %165 to i64
  %166 = load i32, i32* %mu, align 4
  %idxprom229 = sext i32 %166 to i64
  %arrayidx230 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom229
  %e231 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx230, i32 0, i32 0
  %arrayidx232 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e231, i32 0, i64 %idxprom228
  %arrayidx233 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx232, i32 0, i64 %idxprom227
  %real234 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx233, i32 0, i32 0
  %167 = load double, double* %real234, align 8
  %168 = load i32, i32* %b, align 4
  %169 = load i32, i32* %a, align 4
  %mul235 = mul nsw i32 3, %169
  %add236 = add nsw i32 %168, %mul235
  %mul237 = mul nsw i32 2, %add236
  %170 = load i32, i32* %mu, align 4
  %mul238 = mul nsw i32 12, %170
  %add239 = add nsw i32 %mul237, %mul238
  %171 = load i32, i32* %j, align 4
  %mul240 = mul nsw i32 48, %171
  %add241 = add nsw i32 %add239, %mul240
  %idxprom242 = sext i32 %add241 to i64
  %172 = load double*, double** %uout, align 8
  %arrayidx243 = getelementptr inbounds double, double* %172, i64 %idxprom242
  store double %167, double* %arrayidx243, align 8
  %173 = load i32, i32* %b, align 4
  %idxprom244 = sext i32 %173 to i64
  %174 = load i32, i32* %a, align 4
  %idxprom245 = sext i32 %174 to i64
  %175 = load i32, i32* %mu, align 4
  %idxprom246 = sext i32 %175 to i64
  %arrayidx247 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom246
  %e248 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %arrayidx247, i32 0, i32 0
  %arrayidx249 = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e248, i32 0, i64 %idxprom245
  %arrayidx250 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx249, i32 0, i64 %idxprom244
  %imag251 = getelementptr inbounds %struct.complex, %struct.complex* %arrayidx250, i32 0, i32 1
  %176 = load double, double* %imag251, align 8
  %177 = load i32, i32* %b, align 4
  %178 = load i32, i32* %a, align 4
  %mul252 = mul nsw i32 3, %178
  %add253 = add nsw i32 %177, %mul252
  %mul254 = mul nsw i32 2, %add253
  %add255 = add nsw i32 1, %mul254
  %179 = load i32, i32* %mu, align 4
  %mul256 = mul nsw i32 12, %179
  %add257 = add nsw i32 %add255, %mul256
  %180 = load i32, i32* %j, align 4
  %mul258 = mul nsw i32 48, %180
  %add259 = add nsw i32 %add257, %mul258
  %idxprom260 = sext i32 %add259 to i64
  %181 = load double*, double** %uout, align 8
  %arrayidx261 = getelementptr inbounds double, double* %181, i64 %idxprom260
  store double %176, double* %arrayidx261, align 8
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.body.226
  %182 = load i32, i32* %b, align 4
  %inc263 = add nsw i32 %182, 1
  store i32 %inc263, i32* %b, align 4
  br label %for.cond.223

for.end.264:                                      ; preds = %for.cond.223
  br label %for.inc.265

for.inc.265:                                      ; preds = %for.end.264
  %183 = load i32, i32* %a, align 4
  %inc266 = add nsw i32 %183, 1
  store i32 %inc266, i32* %a, align 4
  br label %for.cond.219

for.end.267:                                      ; preds = %for.cond.219
  br label %for.inc.268

for.inc.268:                                      ; preds = %for.end.267
  %184 = load i32, i32* %mu, align 4
  %inc269 = add nsw i32 %184, 1
  store i32 %inc269, i32* %mu, align 4
  br label %for.cond.215

for.end.270:                                      ; preds = %for.cond.215
  br label %if.end.271

if.end.271:                                       ; preds = %for.end.270, %for.end.213
  %185 = load i32, i32* %j, align 4
  %inc272 = add nsw i32 %185, 1
  store i32 %inc272, i32* %j, align 4
  br label %if.end.294

if.else.273:                                      ; preds = %if.end.146
  %186 = load i32, i32* @this_node, align 4
  %187 = load i32, i32* %currentnode, align 4
  %cmp274 = icmp eq i32 %186, %187
  br i1 %cmp274, label %if.then.276, label %if.end.293

if.then.276:                                      ; preds = %if.else.273
  %188 = load i32, i32* %x, align 4
  %189 = load i32, i32* %y, align 4
  %190 = load i32, i32* %z, align 4
  %191 = load i32, i32* %tslice, align 4
  %call277 = call i32 @node_index(i32 %188, i32 %189, i32 %190, i32 %191)
  store i32 %call277, i32* %i, align 4
  store i32 0, i32* %dir, align 4
  br label %for.cond.278

for.cond.278:                                     ; preds = %for.inc.289, %if.then.276
  %192 = load i32, i32* %dir, align 4
  %cmp279 = icmp sle i32 %192, 3
  br i1 %cmp279, label %for.body.281, label %for.end.291

for.body.281:                                     ; preds = %for.cond.278
  %193 = load i32, i32* %dir, align 4
  %idxprom282 = sext i32 %193 to i64
  %arrayidx283 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i64 %idxprom282
  %194 = load i32, i32* %dir, align 4
  %idxprom284 = sext i32 %194 to i64
  %195 = load i32, i32* %i, align 4
  %idxprom285 = sext i32 %195 to i64
  %196 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx286 = getelementptr inbounds %struct.site, %struct.site* %196, i64 %idxprom285
  %link287 = getelementptr inbounds %struct.site, %struct.site* %arrayidx286, i32 0, i32 8
  %arrayidx288 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link287, i32 0, i64 %idxprom284
  %197 = bitcast %struct.su3_matrix* %arrayidx283 to i8*
  %198 = bitcast %struct.su3_matrix* %arrayidx288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %198, i64 144, i32 8, i1 false)
  br label %for.inc.289

for.inc.289:                                      ; preds = %for.body.281
  %199 = load i32, i32* %dir, align 4
  %inc290 = add nsw i32 %199, 1
  store i32 %inc290, i32* %dir, align 4
  br label %for.cond.278

for.end.291:                                      ; preds = %for.cond.278
  %arraydecay292 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %lbuf, i32 0, i32 0
  %200 = bitcast %struct.su3_matrix* %arraydecay292 to i8*
  call void @send_field(i8* %200, i32 576, i32 0)
  br label %if.end.293

if.end.293:                                       ; preds = %for.end.291, %if.else.273
  br label %if.end.294

if.end.294:                                       ; preds = %if.end.293, %if.end.271
  br label %for.inc.295

for.inc.295:                                      ; preds = %if.end.294
  %201 = load i32, i32* %x, align 4
  %inc296 = add nsw i32 %201, 1
  store i32 %inc296, i32* %x, align 4
  br label %for.cond.123

for.end.297:                                      ; preds = %for.cond.123
  br label %for.inc.298

for.inc.298:                                      ; preds = %for.end.297
  %202 = load i32, i32* %y, align 4
  %inc299 = add nsw i32 %202, 1
  store i32 %inc299, i32* %y, align 4
  br label %for.cond.119

for.end.300:                                      ; preds = %for.cond.119
  br label %for.inc.301

for.inc.301:                                      ; preds = %for.end.300
  %203 = load i32, i32* %z, align 4
  %inc302 = add nsw i32 %203, 1
  store i32 %inc302, i32* %z, align 4
  br label %for.cond.115

for.end.303:                                      ; preds = %for.cond.115
  %204 = load i32, i32* @this_node, align 4
  %cmp304 = icmp eq i32 %204, 0
  br i1 %cmp304, label %if.then.306, label %if.end.320

if.then.306:                                      ; preds = %for.end.303
  %205 = load i32, i32* %big_end_p, align 4
  %tobool = icmp ne i32 %205, 0
  br i1 %tobool, label %if.end.309, label %if.then.307

if.then.307:                                      ; preds = %if.then.306
  %206 = load double*, double** %uout, align 8
  %207 = bitcast double* %206 to i32*
  %208 = load i32, i32* %vol3, align 4
  %mul308 = mul nsw i32 48, %208
  call void @byterevn(i32* %207, i32 %mul308)
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.307, %if.then.306
  %209 = load double*, double** %uout, align 8
  %210 = bitcast double* %209 to i8*
  %211 = load i32, i32* %vol3, align 4
  %mul310 = mul nsw i32 48, %211
  %conv311 = sext i32 %mul310 to i64
  %mul312 = mul i64 %conv311, 8
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call313 = call i64 @fwrite(i8* %210, i64 %mul312, i64 1, %struct._IO_FILE* %212)
  %cmp314 = icmp ne i64 %call313, 1
  br i1 %cmp314, label %if.then.316, label %if.end.318

if.then.316:                                      ; preds = %if.end.309
  %call317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.173, i32 0, i32 0))
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.316, %if.end.309
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call319 = call i32 @fflush(%struct._IO_FILE* %213)
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.318, %for.end.303
  br label %for.inc.321

for.inc.321:                                      ; preds = %if.end.320
  %214 = load i32, i32* %tslice, align 4
  %inc322 = add nsw i32 %214, 1
  store i32 %inc322, i32* %tslice, align 4
  br label %for.cond.111

for.end.323:                                      ; preds = %for.cond.111
  %215 = load i32, i32* @this_node, align 4
  %cmp324 = icmp eq i32 %215, 0
  br i1 %cmp324, label %if.then.326, label %if.end.329

if.then.326:                                      ; preds = %for.end.323
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile, align 8
  %call327 = call i32 @fclose(%struct._IO_FILE* %216)
  %217 = load i8*, i8** %filename.addr, align 8
  %call328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.174, i32 0, i32 0), i8* %217)
  %218 = load double*, double** %uout, align 8
  %219 = bitcast double* %218 to i8*
  call void @free(i8* %219) #5
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.326, %for.end.323
  call void (...) @g_sync()
  %220 = load %struct.gauge_file*, %struct.gauge_file** %gf, align 8
  ret %struct.gauge_file* %220
}

declare void @d_plaquette(double*, double*) #3

declare { double, double } @trace_su3(%struct.su3_matrix*) #3

declare void @g_doublesum(double*) #3

declare i32 @numnodes(...) #3

declare void @send_integer(i32, i32*) #3

declare void @receive_integer(i32*) #3

; Function Attrs: nounwind uwtable
define %struct.gauge_file* @save_parallel_archive(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.175, i32 0, i32 0))
  ret %struct.gauge_file* null
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
