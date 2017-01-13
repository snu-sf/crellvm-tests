	.text
	.file	"jdmaster.bc"
	.globl	jpeg_calc_output_dimensions
	.align	16, 0x90
	.type	jpeg_calc_output_dimensions,@function
jpeg_calc_output_dimensions:            # @jpeg_calc_output_dimensions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	36(%rbx), %eax
	cmpl	$202, %eax
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB0_2:                                # %if.end
	movq	%rbx, %rdi
	callq	jpeg_core_output_dimensions
	movl	64(%rbx), %eax
	decl	%eax
	cmpl	$6, %eax
	jbe	.LBB0_3
# BB#7:                                 # %sw.default
	movl	56(%rbx), %eax
	movl	%eax, 144(%rbx)
	jmp	.LBB0_8
.LBB0_3:                                # %if.end
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_5:                                # %sw.bb.6
	movl	$3, 144(%rbx)
	movl	$3, %eax
	jmp	.LBB0_8
.LBB0_6:                                # %sw.bb.8
	movl	$4, 144(%rbx)
	movl	$4, %eax
	jmp	.LBB0_8
.LBB0_4:                                # %sw.bb
	movl	$1, 144(%rbx)
	movl	$1, %eax
.LBB0_8:                                # %sw.epilog
	cmpl	$0, 108(%rbx)
	je	.LBB0_10
# BB#9:                                 # %select.mid
	movl	$1, %eax
.LBB0_10:                               # %select.end
	movl	%eax, 148(%rbx)
	movl	$1, 152(%rbx)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	jpeg_calc_output_dimensions, .Lfunc_end0-jpeg_calc_output_dimensions
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_6
	.quad	.LBB0_5
	.quad	.LBB0_5

	.text
	.globl	jpeg_new_colormap
	.align	16, 0x90
	.type	jpeg_new_colormap,@function
jpeg_new_colormap:                      # @jpeg_new_colormap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -24
.Ltmp6:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	792(%rbx), %r14
	movl	36(%rbx), %eax
	cmpl	$207, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%rbx, %rdi
	callq	*(%rcx)
.LBB1_2:                                # %if.end
	cmpl	$0, 108(%rbx)
	je	.LBB1_6
# BB#3:                                 # %land.lhs.true
	cmpl	$0, 128(%rbx)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true.6
	cmpq	$0, 160(%rbx)
	je	.LBB1_6
# BB#5:                                 # %if.end.15
	movq	40(%r14), %rax
	movq	%rax, 872(%rbx)
	movq	%rbx, %rdi
	callq	*24(%rax)
	movl	$0, 16(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB1_6:                                # %if.else
	movq	(%rbx), %rax
	movl	$47, 40(%rax)
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end1:
	.size	jpeg_new_colormap, .Lfunc_end1-jpeg_new_colormap
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	10                      # 0xa
	.byte	11                      # 0xb
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	14                      # 0xe
	.byte	15                      # 0xf
.LCPI2_1:
	.byte	16                      # 0x10
	.byte	17                      # 0x11
	.byte	18                      # 0x12
	.byte	19                      # 0x13
	.byte	20                      # 0x14
	.byte	21                      # 0x15
	.byte	22                      # 0x16
	.byte	23                      # 0x17
	.byte	24                      # 0x18
	.byte	25                      # 0x19
	.byte	26                      # 0x1a
	.byte	27                      # 0x1b
	.byte	28                      # 0x1c
	.byte	29                      # 0x1d
	.byte	30                      # 0x1e
	.byte	31                      # 0x1f
.LCPI2_2:
	.byte	32                      # 0x20
	.byte	33                      # 0x21
	.byte	34                      # 0x22
	.byte	35                      # 0x23
	.byte	36                      # 0x24
	.byte	37                      # 0x25
	.byte	38                      # 0x26
	.byte	39                      # 0x27
	.byte	40                      # 0x28
	.byte	41                      # 0x29
	.byte	42                      # 0x2a
	.byte	43                      # 0x2b
	.byte	44                      # 0x2c
	.byte	45                      # 0x2d
	.byte	46                      # 0x2e
	.byte	47                      # 0x2f
.LCPI2_3:
	.byte	48                      # 0x30
	.byte	49                      # 0x31
	.byte	50                      # 0x32
	.byte	51                      # 0x33
	.byte	52                      # 0x34
	.byte	53                      # 0x35
	.byte	54                      # 0x36
	.byte	55                      # 0x37
	.byte	56                      # 0x38
	.byte	57                      # 0x39
	.byte	58                      # 0x3a
	.byte	59                      # 0x3b
	.byte	60                      # 0x3c
	.byte	61                      # 0x3d
	.byte	62                      # 0x3e
	.byte	63                      # 0x3f
.LCPI2_4:
	.byte	64                      # 0x40
	.byte	65                      # 0x41
	.byte	66                      # 0x42
	.byte	67                      # 0x43
	.byte	68                      # 0x44
	.byte	69                      # 0x45
	.byte	70                      # 0x46
	.byte	71                      # 0x47
	.byte	72                      # 0x48
	.byte	73                      # 0x49
	.byte	74                      # 0x4a
	.byte	75                      # 0x4b
	.byte	76                      # 0x4c
	.byte	77                      # 0x4d
	.byte	78                      # 0x4e
	.byte	79                      # 0x4f
.LCPI2_5:
	.byte	80                      # 0x50
	.byte	81                      # 0x51
	.byte	82                      # 0x52
	.byte	83                      # 0x53
	.byte	84                      # 0x54
	.byte	85                      # 0x55
	.byte	86                      # 0x56
	.byte	87                      # 0x57
	.byte	88                      # 0x58
	.byte	89                      # 0x59
	.byte	90                      # 0x5a
	.byte	91                      # 0x5b
	.byte	92                      # 0x5c
	.byte	93                      # 0x5d
	.byte	94                      # 0x5e
	.byte	95                      # 0x5f
.LCPI2_6:
	.byte	96                      # 0x60
	.byte	97                      # 0x61
	.byte	98                      # 0x62
	.byte	99                      # 0x63
	.byte	100                     # 0x64
	.byte	101                     # 0x65
	.byte	102                     # 0x66
	.byte	103                     # 0x67
	.byte	104                     # 0x68
	.byte	105                     # 0x69
	.byte	106                     # 0x6a
	.byte	107                     # 0x6b
	.byte	108                     # 0x6c
	.byte	109                     # 0x6d
	.byte	110                     # 0x6e
	.byte	111                     # 0x6f
.LCPI2_7:
	.byte	112                     # 0x70
	.byte	113                     # 0x71
	.byte	114                     # 0x72
	.byte	115                     # 0x73
	.byte	116                     # 0x74
	.byte	117                     # 0x75
	.byte	118                     # 0x76
	.byte	119                     # 0x77
	.byte	120                     # 0x78
	.byte	121                     # 0x79
	.byte	122                     # 0x7a
	.byte	123                     # 0x7b
	.byte	124                     # 0x7c
	.byte	125                     # 0x7d
	.byte	126                     # 0x7e
	.byte	127                     # 0x7f
.LCPI2_8:
	.byte	128                     # 0x80
	.byte	129                     # 0x81
	.byte	130                     # 0x82
	.byte	131                     # 0x83
	.byte	132                     # 0x84
	.byte	133                     # 0x85
	.byte	134                     # 0x86
	.byte	135                     # 0x87
	.byte	136                     # 0x88
	.byte	137                     # 0x89
	.byte	138                     # 0x8a
	.byte	139                     # 0x8b
	.byte	140                     # 0x8c
	.byte	141                     # 0x8d
	.byte	142                     # 0x8e
	.byte	143                     # 0x8f
.LCPI2_9:
	.byte	144                     # 0x90
	.byte	145                     # 0x91
	.byte	146                     # 0x92
	.byte	147                     # 0x93
	.byte	148                     # 0x94
	.byte	149                     # 0x95
	.byte	150                     # 0x96
	.byte	151                     # 0x97
	.byte	152                     # 0x98
	.byte	153                     # 0x99
	.byte	154                     # 0x9a
	.byte	155                     # 0x9b
	.byte	156                     # 0x9c
	.byte	157                     # 0x9d
	.byte	158                     # 0x9e
	.byte	159                     # 0x9f
.LCPI2_10:
	.byte	160                     # 0xa0
	.byte	161                     # 0xa1
	.byte	162                     # 0xa2
	.byte	163                     # 0xa3
	.byte	164                     # 0xa4
	.byte	165                     # 0xa5
	.byte	166                     # 0xa6
	.byte	167                     # 0xa7
	.byte	168                     # 0xa8
	.byte	169                     # 0xa9
	.byte	170                     # 0xaa
	.byte	171                     # 0xab
	.byte	172                     # 0xac
	.byte	173                     # 0xad
	.byte	174                     # 0xae
	.byte	175                     # 0xaf
.LCPI2_11:
	.byte	176                     # 0xb0
	.byte	177                     # 0xb1
	.byte	178                     # 0xb2
	.byte	179                     # 0xb3
	.byte	180                     # 0xb4
	.byte	181                     # 0xb5
	.byte	182                     # 0xb6
	.byte	183                     # 0xb7
	.byte	184                     # 0xb8
	.byte	185                     # 0xb9
	.byte	186                     # 0xba
	.byte	187                     # 0xbb
	.byte	188                     # 0xbc
	.byte	189                     # 0xbd
	.byte	190                     # 0xbe
	.byte	191                     # 0xbf
.LCPI2_12:
	.byte	192                     # 0xc0
	.byte	193                     # 0xc1
	.byte	194                     # 0xc2
	.byte	195                     # 0xc3
	.byte	196                     # 0xc4
	.byte	197                     # 0xc5
	.byte	198                     # 0xc6
	.byte	199                     # 0xc7
	.byte	200                     # 0xc8
	.byte	201                     # 0xc9
	.byte	202                     # 0xca
	.byte	203                     # 0xcb
	.byte	204                     # 0xcc
	.byte	205                     # 0xcd
	.byte	206                     # 0xce
	.byte	207                     # 0xcf
.LCPI2_13:
	.byte	208                     # 0xd0
	.byte	209                     # 0xd1
	.byte	210                     # 0xd2
	.byte	211                     # 0xd3
	.byte	212                     # 0xd4
	.byte	213                     # 0xd5
	.byte	214                     # 0xd6
	.byte	215                     # 0xd7
	.byte	216                     # 0xd8
	.byte	217                     # 0xd9
	.byte	218                     # 0xda
	.byte	219                     # 0xdb
	.byte	220                     # 0xdc
	.byte	221                     # 0xdd
	.byte	222                     # 0xde
	.byte	223                     # 0xdf
.LCPI2_14:
	.byte	224                     # 0xe0
	.byte	225                     # 0xe1
	.byte	226                     # 0xe2
	.byte	227                     # 0xe3
	.byte	228                     # 0xe4
	.byte	229                     # 0xe5
	.byte	230                     # 0xe6
	.byte	231                     # 0xe7
	.byte	232                     # 0xe8
	.byte	233                     # 0xe9
	.byte	234                     # 0xea
	.byte	235                     # 0xeb
	.byte	236                     # 0xec
	.byte	237                     # 0xed
	.byte	238                     # 0xee
	.byte	239                     # 0xef
.LCPI2_15:
	.byte	240                     # 0xf0
	.byte	241                     # 0xf1
	.byte	242                     # 0xf2
	.byte	243                     # 0xf3
	.byte	244                     # 0xf4
	.byte	245                     # 0xf5
	.byte	246                     # 0xf6
	.byte	247                     # 0xf7
	.byte	248                     # 0xf8
	.byte	249                     # 0xf9
	.byte	250                     # 0xfa
	.byte	251                     # 0xfb
	.byte	252                     # 0xfc
	.byte	253                     # 0xfd
	.byte	254                     # 0xfe
	.byte	255                     # 0xff
	.text
	.globl	jinit_master_decompress
	.align	16, 0x90
	.type	jinit_master_decompress,@function
jinit_master_decompress:                # @jinit_master_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -32
.Ltmp11:
	.cfi_offset %r14, -24
.Ltmp12:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$48, %edx
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 792(%r15)
	movl	$finish_output_pass, %eax
	movd	%rax, %xmm0
	movl	$prepare_for_output_pass, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, (%r14)
	movl	$0, 16(%r14)
	movl	296(%r15), %eax
	cmpl	$8, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then.i
	movq	(%r15), %rcx
	movl	$16, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r15, %rdi
	callq	*(%rcx)
.LBB2_2:                                # %if.end.i
	movl	36(%r15), %eax
	cmpl	$202, %eax
	je	.LBB2_4
# BB#3:                                 # %if.then.i.i
	movq	(%r15), %rcx
	movl	$21, 40(%rcx)
	movl	%eax, 44(%rcx)
	movq	%r15, %rdi
	callq	*(%rcx)
.LBB2_4:                                # %if.end.i.i
	movq	%r15, %rdi
	callq	jpeg_core_output_dimensions
	movl	64(%r15), %eax
	decl	%eax
	cmpl	$6, %eax
	jbe	.LBB2_5
# BB#9:                                 # %sw.default.i.i
	movl	56(%r15), %eax
	movl	%eax, 144(%r15)
	jmp	.LBB2_10
.LBB2_5:                                # %if.end.i.i
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_7:                                # %sw.bb.6.i.i
	movl	$3, 144(%r15)
	movl	$3, %eax
	jmp	.LBB2_10
.LBB2_8:                                # %sw.bb.8.i.i
	movl	$4, 144(%r15)
	movl	$4, %eax
	jmp	.LBB2_10
.LBB2_6:                                # %sw.bb.i.i
	movl	$1, 144(%r15)
	movl	$1, %eax
.LBB2_10:                               # %jpeg_calc_output_dimensions.exit.i
	cmpl	$0, 108(%r15)
	je	.LBB2_12
# BB#11:                                # %select.mid
	movl	$1, %eax
.LBB2_12:                               # %vector.body14
	movl	%eax, 148(%r15)
	movl	$1, 152(%r15)
	movq	8(%r15), %rax
	movl	$1, %esi
	movl	$1280, %edx             # imm = 0x500
	movq	%r15, %rdi
	callq	*(%rax)
	movq	%rax, %rbx
	xorl	%esi, %esi
	movl	$512, %edx              # imm = 0x200
	movq	%rbx, %rdi
	callq	memset
	leaq	512(%rbx), %rax
	movq	%rax, 440(%r15)
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	movups	%xmm0, 512(%rbx)
	movaps	.LCPI2_1(%rip), %xmm0   # xmm0 = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
	movups	%xmm0, 528(%rbx)
	movaps	.LCPI2_2(%rip), %xmm0   # xmm0 = [32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47]
	movups	%xmm0, 544(%rbx)
	movaps	.LCPI2_3(%rip), %xmm0   # xmm0 = [48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	movups	%xmm0, 560(%rbx)
	movaps	.LCPI2_4(%rip), %xmm0   # xmm0 = [64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79]
	movups	%xmm0, 576(%rbx)
	movaps	.LCPI2_5(%rip), %xmm0   # xmm0 = [80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95]
	movups	%xmm0, 592(%rbx)
	movaps	.LCPI2_6(%rip), %xmm0   # xmm0 = [96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111]
	movups	%xmm0, 608(%rbx)
	movaps	.LCPI2_7(%rip), %xmm0   # xmm0 = [112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127]
	movups	%xmm0, 624(%rbx)
	movaps	.LCPI2_8(%rip), %xmm0   # xmm0 = [128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143]
	movups	%xmm0, 640(%rbx)
	movaps	.LCPI2_9(%rip), %xmm0   # xmm0 = [144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]
	movups	%xmm0, 656(%rbx)
	movaps	.LCPI2_10(%rip), %xmm0  # xmm0 = [160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175]
	movups	%xmm0, 672(%rbx)
	movaps	.LCPI2_11(%rip), %xmm0  # xmm0 = [176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191]
	movups	%xmm0, 688(%rbx)
	movaps	.LCPI2_12(%rip), %xmm0  # xmm0 = [192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207]
	movups	%xmm0, 704(%rbx)
	movaps	.LCPI2_13(%rip), %xmm0  # xmm0 = [208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223]
	movups	%xmm0, 720(%rbx)
	movaps	.LCPI2_14(%rip), %xmm0  # xmm0 = [224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239]
	movups	%xmm0, 736(%rbx)
	movdqa	.LCPI2_15(%rip), %xmm0  # xmm0 = [240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255]
	movdqu	%xmm0, 752(%rbx)
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 768(%rbx)
	movdqu	%xmm0, 784(%rbx)
	movdqu	%xmm0, 800(%rbx)
	movdqu	%xmm0, 816(%rbx)
	movdqu	%xmm0, 832(%rbx)
	movdqu	%xmm0, 848(%rbx)
	movdqu	%xmm0, 864(%rbx)
	movdqu	%xmm0, 880(%rbx)
	movdqu	%xmm0, 896(%rbx)
	movdqu	%xmm0, 912(%rbx)
	movdqu	%xmm0, 928(%rbx)
	movdqu	%xmm0, 944(%rbx)
	movdqu	%xmm0, 960(%rbx)
	movdqu	%xmm0, 976(%rbx)
	movdqu	%xmm0, 992(%rbx)
	movdqu	%xmm0, 1008(%rbx)
	movdqu	%xmm0, 1024(%rbx)
	movdqu	%xmm0, 1040(%rbx)
	movdqu	%xmm0, 1056(%rbx)
	movdqu	%xmm0, 1072(%rbx)
	movdqu	%xmm0, 1088(%rbx)
	movdqu	%xmm0, 1104(%rbx)
	movdqu	%xmm0, 1120(%rbx)
	movdqu	%xmm0, 1136(%rbx)
	movdqu	%xmm0, 1152(%rbx)
	movdqu	%xmm0, 1168(%rbx)
	movdqu	%xmm0, 1184(%rbx)
	movdqu	%xmm0, 1200(%rbx)
	movdqu	%xmm0, 1216(%rbx)
	movdqu	%xmm0, 1232(%rbx)
	movdqu	%xmm0, 1248(%rbx)
	movdqu	%xmm0, 1264(%rbx)
	cmpl	$0, 140(%r15)
	je	.LBB2_15
# BB#13:                                # %lor.lhs.false.i
	movl	136(%r15), %eax
	testl	%eax, %eax
	je	.LBB2_15
# BB#14:                                # %lor.lhs.false.7.i
	movl	144(%r15), %ecx
	testl	%ecx, %ecx
	jg	.LBB2_16
.LBB2_15:                               # %if.then.9.i
	movq	(%r15), %rax
	movl	$33, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	movl	136(%r15), %eax
	movl	144(%r15), %ecx
.LBB2_16:                               # %if.end.14.i
	leaq	144(%r15), %rbx
	movl	%eax, %eax
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	movl	%ecx, %eax
	cmpq	%rcx, %rax
	je	.LBB2_18
# BB#17:                                # %if.then.22.i
	movq	(%r15), %rax
	movl	$72, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB2_18:                               # %if.end.27.i
	movl	$0, 24(%r14)
	movl	$0, 28(%r14)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 32(%r14)
	cmpl	$0, 108(%r15)
	je	.LBB2_56
# BB#19:                                # %lor.lhs.false.28.i
	cmpl	$0, 88(%r15)
	jne	.LBB2_21
# BB#20:                                # %if.end.31.i
	movq	$0, 124(%r15)
	movl	$0, 132(%r15)
.LBB2_21:                               # %if.then.34.i
	cmpl	$0, 92(%r15)
	je	.LBB2_23
# BB#22:                                # %if.then.36.i
	movq	(%r15), %rax
	movl	$48, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB2_23:                               # %if.end.41.i
	cmpl	$3, (%rbx)
	jne	.LBB2_24
# BB#25:                                # %if.else.i
	cmpq	$0, 160(%r15)
	je	.LBB2_27
# BB#26:                                # %if.then.52.i
	movl	$1, 128(%r15)
	jmp	.LBB2_30
.LBB2_56:                               # %if.end.31.if.end.82_crit_edge.i
	movq	$0, 124(%r15)
	movl	$0, 132(%r15)
	leaq	92(%r15), %rbx
	jmp	.LBB2_35
.LBB2_24:                               # %if.then.45.i
	movl	$1, 124(%r15)
	movl	$0, 128(%r15)
	movl	$0, 132(%r15)
	movq	$0, 160(%r15)
	jmp	.LBB2_30
.LBB2_27:                               # %if.else.54.i
	cmpl	$0, 116(%r15)
	je	.LBB2_29
# BB#28:                                # %if.then.56.i
	movl	$1, 132(%r15)
	jmp	.LBB2_30
.LBB2_29:                               # %if.else.58.i
	movl	$1, 124(%r15)
.LBB2_30:                               # %if.end.62.i
	cmpl	$0, 124(%r15)
	je	.LBB2_32
# BB#31:                                # %if.then.65.i
	movq	(%r15), %rax
	movl	$49, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB2_32:                               # %if.end.70.i
	leaq	92(%r15), %rbx
	cmpl	$0, 132(%r15)
	jne	.LBB2_34
# BB#33:                                # %lor.lhs.false.73.i
	cmpl	$0, 128(%r15)
	je	.LBB2_35
.LBB2_34:                               # %if.then.76.i
	movq	(%r15), %rax
	movl	$49, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
.LBB2_35:                               # %if.end.82.i
	cmpl	$0, (%rbx)
	jne	.LBB2_40
# BB#36:                                # %if.then.85.i
	cmpl	$0, 28(%r14)
	je	.LBB2_38
# BB#37:                                # %if.then.88.i
	movq	(%r15), %rax
	movl	$49, 40(%rax)
	movq	%r15, %rdi
	callq	*(%rax)
	jmp	.LBB2_39
.LBB2_38:                               # %if.else.93.i
	movq	%r15, %rdi
	callq	jinit_color_deconverter
	movq	%r15, %rdi
	callq	jinit_upsampler
.LBB2_39:                               # %if.end.94.i
	movl	132(%r15), %esi
	movq	%r15, %rdi
	callq	jinit_d_post_controller
.LBB2_40:                               # %if.end.96.i
	movq	%r15, %rdi
	callq	jinit_inverse_dct
	cmpl	$0, 320(%r15)
	je	.LBB2_42
# BB#41:                                # %if.then.98.i
	movq	%r15, %rdi
	callq	jinit_arith_decoder
	jmp	.LBB2_43
.LBB2_42:                               # %if.else.99.i
	movq	%r15, %rdi
	callq	jinit_huff_decoder
.LBB2_43:                               # %if.end.100.i
	movq	824(%r15), %rcx
	movb	$1, %al
	cmpl	$0, 32(%rcx)
	jne	.LBB2_45
# BB#44:                                # %lor.rhs.i
	cmpl	$0, 88(%r15)
	setne	%al
.LBB2_45:                               # %lor.end.i
	movzbl	%al, %esi
	movq	%r15, %rdi
	callq	jinit_d_coef_controller
	cmpl	$0, (%rbx)
	jne	.LBB2_47
# BB#46:                                # %if.then.106.i
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	jinit_d_main_controller
.LBB2_47:                               # %if.end.107.i
	movq	8(%r15), %rax
	movq	%r15, %rdi
	callq	*48(%rax)
	movq	824(%r15), %rax
	movq	%r15, %rdi
	callq	*16(%rax)
	movq	16(%r15), %rax
	testq	%rax, %rax
	je	.LBB2_55
# BB#48:                                # %land.lhs.true.i
	cmpl	$0, 88(%r15)
	jne	.LBB2_55
# BB#49:                                # %land.lhs.true.115.i
	movq	824(%r15), %rcx
	cmpl	$0, 32(%rcx)
	je	.LBB2_55
# BB#50:                                # %if.then.119.i
	cmpl	$0, 316(%r15)
	movl	56(%r15), %ecx
	je	.LBB2_52
# BB#51:                                # %select.mid71
	leal	2(%rcx,%rcx,2), %ecx
.LBB2_52:                               # %select.end70
	movq	$0, 8(%rax)
	movl	432(%r15), %edx
	movslq	%ecx, %rcx
	imulq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movl	$0, 24(%rax)
	movl	$3, %ecx
	cmpl	$0, 132(%r15)
	jne	.LBB2_54
# BB#53:                                # %select.mid77
	movl	$2, %ecx
.LBB2_54:                               # %select.end76
	movl	%ecx, 28(%rax)
	incl	24(%r14)
.LBB2_55:                               # %master_selection.exit
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	jinit_master_decompress, .Lfunc_end2-jinit_master_decompress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_6
	.quad	.LBB2_7
	.quad	.LBB2_7
	.quad	.LBB2_8
	.quad	.LBB2_8
	.quad	.LBB2_7
	.quad	.LBB2_7

	.text
	.align	16, 0x90
	.type	prepare_for_output_pass,@function
prepare_for_output_pass:                # @prepare_for_output_pass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	792(%rbx), %r14
	cmpl	$0, 16(%r14)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rax
	movl	$49, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
	jmp	.LBB3_18
.LBB3_2:                                # %if.else
	cmpl	$0, 108(%rbx)
	je	.LBB3_10
# BB#3:                                 # %land.lhs.true
	cmpq	$0, 160(%rbx)
	jne	.LBB3_10
# BB#4:                                 # %if.then.4
	cmpl	$0, 116(%rbx)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true.6
	cmpl	$0, 132(%rbx)
	je	.LBB3_7
# BB#6:                                 # %if.then.8
	movq	40(%r14), %rax
	movq	%rax, 872(%rbx)
	movl	$1, 16(%r14)
	jmp	.LBB3_10
.LBB3_7:                                # %if.else.11
	cmpl	$0, 124(%rbx)
	je	.LBB3_9
# BB#8:                                 # %if.then.13
	movq	32(%r14), %rax
	movq	%rax, 872(%rbx)
	jmp	.LBB3_10
.LBB3_9:                                # %if.else.15
	movq	(%rbx), %rax
	movl	$47, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB3_10:                               # %if.end.21
	movq	848(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	808(%rbx), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	cmpl	$0, 92(%rbx)
	jne	.LBB3_18
# BB#11:                                # %if.then.25
	cmpl	$0, 28(%r14)
	jne	.LBB3_13
# BB#12:                                # %if.then.27
	movq	864(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB3_13:                               # %if.end.30
	movq	856(%rbx), %rax
	movq	%rbx, %rdi
	callq	*(%rax)
	cmpl	$0, 108(%rbx)
	je	.LBB3_15
# BB#14:                                # %if.then.35
	movq	872(%rbx), %rax
	movl	16(%r14), %esi
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB3_15:                               # %if.end.40
	movq	816(%rbx), %rax
	movq	(%rax), %rax
	movl	$3, %esi
	cmpl	$0, 16(%r14)
	jne	.LBB3_17
# BB#16:                                # %select.mid
	xorl	%esi, %esi
.LBB3_17:                               # %select.end
	movq	%rbx, %rdi
	callq	*%rax
	movq	800(%rbx), %rax
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB3_18:                               # %if.end.47
	movq	16(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_26
# BB#19:                                # %if.then.49
	movl	24(%r14), %edx
	movl	%edx, 24(%rax)
	movl	$2, %ecx
	cmpl	$0, 16(%r14)
	jne	.LBB3_21
# BB#20:                                # %select.mid67
	movl	$1, %ecx
.LBB3_21:                               # %select.end66
	addl	%edx, %ecx
	movl	%ecx, 28(%rax)
	cmpl	$0, 88(%rbx)
	je	.LBB3_26
# BB#22:                                # %land.lhs.true.58
	movq	824(%rbx), %rdx
	cmpl	$0, 36(%rdx)
	jne	.LBB3_26
# BB#23:                                # %if.then.60
	movl	$2, %edx
	cmpl	$0, 132(%rbx)
	jne	.LBB3_25
# BB#24:                                # %select.mid69
	movl	$1, %edx
.LBB3_25:                               # %select.end68
	addl	%edx, %ecx
	movl	%ecx, 28(%rax)
.LBB3_26:                               # %if.end.68
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	prepare_for_output_pass, .Lfunc_end3-prepare_for_output_pass
	.cfi_endproc

	.align	16, 0x90
	.type	finish_output_pass,@function
finish_output_pass:                     # @finish_output_pass
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	792(%rdi), %rbx
	cmpl	$0, 108(%rdi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	872(%rdi), %rax
	callq	*16(%rax)
.LBB4_2:                                # %if.end
	incl	24(%rbx)
	popq	%rbx
	retq
.Lfunc_end4:
	.size	finish_output_pass, .Lfunc_end4-finish_output_pass
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
