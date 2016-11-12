	.text
	.file	"scfetab.bc"
	.globl	scfetab_dummy
	.align	16, 0x90
	.type	scfetab_dummy,@function
scfetab_dummy:                          # @scfetab_dummy
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end0:
	.size	scfetab_dummy, .Lfunc_end0-scfetab_dummy
	.cfi_endproc

	.type	cf_run_eol,@object      # @cf_run_eol
	.section	.rodata,"a",@progbits
	.globl	cf_run_eol
	.align	2
cf_run_eol:
	.short	1                       # 0x1
	.short	12                      # 0xc
	.size	cf_run_eol, 4

	.type	cf1_run_uncompressed,@object # @cf1_run_uncompressed
	.globl	cf1_run_uncompressed
	.align	2
cf1_run_uncompressed:
	.short	15                      # 0xf
	.short	12                      # 0xc
	.size	cf1_run_uncompressed, 4

	.type	cf2_run_pass,@object    # @cf2_run_pass
	.globl	cf2_run_pass
	.align	2
cf2_run_pass:
	.short	1                       # 0x1
	.short	4                       # 0x4
	.size	cf2_run_pass, 4

	.type	cf2_run_vertical,@object # @cf2_run_vertical
	.globl	cf2_run_vertical
	.align	16
cf2_run_vertical:
	.short	3                       # 0x3
	.short	7                       # 0x7
	.short	3                       # 0x3
	.short	6                       # 0x6
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	6                       # 0x6
	.short	2                       # 0x2
	.short	7                       # 0x7
	.size	cf2_run_vertical, 28

	.type	cf2_run_horizontal,@object # @cf2_run_horizontal
	.globl	cf2_run_horizontal
	.align	2
cf2_run_horizontal:
	.short	1                       # 0x1
	.short	3                       # 0x3
	.size	cf2_run_horizontal, 4

	.type	cf2_run_uncompressed,@object # @cf2_run_uncompressed
	.globl	cf2_run_uncompressed
	.align	2
cf2_run_uncompressed:
	.short	15                      # 0xf
	.short	10                      # 0xa
	.size	cf2_run_uncompressed, 4

	.type	cf2_run_eol_1d,@object  # @cf2_run_eol_1d
	.globl	cf2_run_eol_1d
	.align	2
cf2_run_eol_1d:
	.short	3                       # 0x3
	.short	13                      # 0xd
	.size	cf2_run_eol_1d, 4

	.type	cf2_run_eol_2d,@object  # @cf2_run_eol_2d
	.globl	cf2_run_eol_2d
	.align	2
cf2_run_eol_2d:
	.short	2                       # 0x2
	.short	13                      # 0xd
	.size	cf2_run_eol_2d, 4

	.type	cf_white_runs,@object   # @cf_white_runs
	.globl	cf_white_runs
	.align	2
cf_white_runs:
	.short	53                      # 0x35
	.short	8                       # 0x8
	.short	7                       # 0x7
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	8                       # 0x8
	.short	4                       # 0x4
	.short	11                      # 0xb
	.short	4                       # 0x4
	.short	12                      # 0xc
	.short	4                       # 0x4
	.short	14                      # 0xe
	.short	4                       # 0x4
	.short	15                      # 0xf
	.short	4                       # 0x4
	.short	19                      # 0x13
	.short	5                       # 0x5
	.short	20                      # 0x14
	.short	5                       # 0x5
	.short	7                       # 0x7
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	6                       # 0x6
	.short	3                       # 0x3
	.short	6                       # 0x6
	.short	52                      # 0x34
	.short	6                       # 0x6
	.short	53                      # 0x35
	.short	6                       # 0x6
	.short	42                      # 0x2a
	.short	6                       # 0x6
	.short	43                      # 0x2b
	.short	6                       # 0x6
	.short	39                      # 0x27
	.short	7                       # 0x7
	.short	12                      # 0xc
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	7                       # 0x7
	.short	23                      # 0x17
	.short	7                       # 0x7
	.short	3                       # 0x3
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	40                      # 0x28
	.short	7                       # 0x7
	.short	43                      # 0x2b
	.short	7                       # 0x7
	.short	19                      # 0x13
	.short	7                       # 0x7
	.short	36                      # 0x24
	.short	7                       # 0x7
	.short	24                      # 0x18
	.short	7                       # 0x7
	.short	2                       # 0x2
	.short	8                       # 0x8
	.short	3                       # 0x3
	.short	8                       # 0x8
	.short	26                      # 0x1a
	.short	8                       # 0x8
	.short	27                      # 0x1b
	.short	8                       # 0x8
	.short	18                      # 0x12
	.short	8                       # 0x8
	.short	19                      # 0x13
	.short	8                       # 0x8
	.short	20                      # 0x14
	.short	8                       # 0x8
	.short	21                      # 0x15
	.short	8                       # 0x8
	.short	22                      # 0x16
	.short	8                       # 0x8
	.short	23                      # 0x17
	.short	8                       # 0x8
	.short	40                      # 0x28
	.short	8                       # 0x8
	.short	41                      # 0x29
	.short	8                       # 0x8
	.short	42                      # 0x2a
	.short	8                       # 0x8
	.short	43                      # 0x2b
	.short	8                       # 0x8
	.short	44                      # 0x2c
	.short	8                       # 0x8
	.short	45                      # 0x2d
	.short	8                       # 0x8
	.short	4                       # 0x4
	.short	8                       # 0x8
	.short	5                       # 0x5
	.short	8                       # 0x8
	.short	10                      # 0xa
	.short	8                       # 0x8
	.short	11                      # 0xb
	.short	8                       # 0x8
	.short	82                      # 0x52
	.short	8                       # 0x8
	.short	83                      # 0x53
	.short	8                       # 0x8
	.short	84                      # 0x54
	.short	8                       # 0x8
	.short	85                      # 0x55
	.short	8                       # 0x8
	.short	36                      # 0x24
	.short	8                       # 0x8
	.short	37                      # 0x25
	.short	8                       # 0x8
	.short	88                      # 0x58
	.short	8                       # 0x8
	.short	89                      # 0x59
	.short	8                       # 0x8
	.short	90                      # 0x5a
	.short	8                       # 0x8
	.short	91                      # 0x5b
	.short	8                       # 0x8
	.short	74                      # 0x4a
	.short	8                       # 0x8
	.short	75                      # 0x4b
	.short	8                       # 0x8
	.short	50                      # 0x32
	.short	8                       # 0x8
	.short	51                      # 0x33
	.short	8                       # 0x8
	.short	52                      # 0x34
	.short	8                       # 0x8
	.zero	4
	.short	27                      # 0x1b
	.short	5                       # 0x5
	.short	18                      # 0x12
	.short	5                       # 0x5
	.short	23                      # 0x17
	.short	6                       # 0x6
	.short	55                      # 0x37
	.short	7                       # 0x7
	.short	54                      # 0x36
	.short	8                       # 0x8
	.short	55                      # 0x37
	.short	8                       # 0x8
	.short	100                     # 0x64
	.short	8                       # 0x8
	.short	101                     # 0x65
	.short	8                       # 0x8
	.short	104                     # 0x68
	.short	8                       # 0x8
	.short	103                     # 0x67
	.short	8                       # 0x8
	.short	204                     # 0xcc
	.short	9                       # 0x9
	.short	205                     # 0xcd
	.short	9                       # 0x9
	.short	210                     # 0xd2
	.short	9                       # 0x9
	.short	211                     # 0xd3
	.short	9                       # 0x9
	.short	212                     # 0xd4
	.short	9                       # 0x9
	.short	213                     # 0xd5
	.short	9                       # 0x9
	.short	214                     # 0xd6
	.short	9                       # 0x9
	.short	215                     # 0xd7
	.short	9                       # 0x9
	.short	216                     # 0xd8
	.short	9                       # 0x9
	.short	217                     # 0xd9
	.short	9                       # 0x9
	.short	218                     # 0xda
	.short	9                       # 0x9
	.short	219                     # 0xdb
	.short	9                       # 0x9
	.short	152                     # 0x98
	.short	9                       # 0x9
	.short	153                     # 0x99
	.short	9                       # 0x9
	.short	154                     # 0x9a
	.short	9                       # 0x9
	.short	24                      # 0x18
	.short	6                       # 0x6
	.short	155                     # 0x9b
	.short	9                       # 0x9
	.short	8                       # 0x8
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	11                      # 0xb
	.short	13                      # 0xd
	.short	11                      # 0xb
	.short	18                      # 0x12
	.short	12                      # 0xc
	.short	19                      # 0x13
	.short	12                      # 0xc
	.short	20                      # 0x14
	.short	12                      # 0xc
	.short	21                      # 0x15
	.short	12                      # 0xc
	.short	22                      # 0x16
	.short	12                      # 0xc
	.short	23                      # 0x17
	.short	12                      # 0xc
	.short	28                      # 0x1c
	.short	12                      # 0xc
	.short	29                      # 0x1d
	.short	12                      # 0xc
	.short	30                      # 0x1e
	.short	12                      # 0xc
	.short	31                      # 0x1f
	.short	12                      # 0xc
	.size	cf_white_runs, 420

	.type	cf_black_runs,@object   # @cf_black_runs
	.globl	cf_black_runs
	.align	2
cf_black_runs:
	.short	55                      # 0x37
	.short	10                      # 0xa
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	2                       # 0x2
	.short	4                       # 0x4
	.short	3                       # 0x3
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	6                       # 0x6
	.short	4                       # 0x4
	.short	7                       # 0x7
	.short	5                       # 0x5
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	4                       # 0x4
	.short	8                       # 0x8
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	24                      # 0x18
	.short	9                       # 0x9
	.short	23                      # 0x17
	.short	10                      # 0xa
	.short	24                      # 0x18
	.short	10                      # 0xa
	.short	8                       # 0x8
	.short	10                      # 0xa
	.short	103                     # 0x67
	.short	11                      # 0xb
	.short	104                     # 0x68
	.short	11                      # 0xb
	.short	108                     # 0x6c
	.short	11                      # 0xb
	.short	55                      # 0x37
	.short	11                      # 0xb
	.short	40                      # 0x28
	.short	11                      # 0xb
	.short	23                      # 0x17
	.short	11                      # 0xb
	.short	24                      # 0x18
	.short	11                      # 0xb
	.short	202                     # 0xca
	.short	12                      # 0xc
	.short	203                     # 0xcb
	.short	12                      # 0xc
	.short	204                     # 0xcc
	.short	12                      # 0xc
	.short	205                     # 0xcd
	.short	12                      # 0xc
	.short	104                     # 0x68
	.short	12                      # 0xc
	.short	105                     # 0x69
	.short	12                      # 0xc
	.short	106                     # 0x6a
	.short	12                      # 0xc
	.short	107                     # 0x6b
	.short	12                      # 0xc
	.short	210                     # 0xd2
	.short	12                      # 0xc
	.short	211                     # 0xd3
	.short	12                      # 0xc
	.short	212                     # 0xd4
	.short	12                      # 0xc
	.short	213                     # 0xd5
	.short	12                      # 0xc
	.short	214                     # 0xd6
	.short	12                      # 0xc
	.short	215                     # 0xd7
	.short	12                      # 0xc
	.short	108                     # 0x6c
	.short	12                      # 0xc
	.short	109                     # 0x6d
	.short	12                      # 0xc
	.short	218                     # 0xda
	.short	12                      # 0xc
	.short	219                     # 0xdb
	.short	12                      # 0xc
	.short	84                      # 0x54
	.short	12                      # 0xc
	.short	85                      # 0x55
	.short	12                      # 0xc
	.short	86                      # 0x56
	.short	12                      # 0xc
	.short	87                      # 0x57
	.short	12                      # 0xc
	.short	100                     # 0x64
	.short	12                      # 0xc
	.short	101                     # 0x65
	.short	12                      # 0xc
	.short	82                      # 0x52
	.short	12                      # 0xc
	.short	83                      # 0x53
	.short	12                      # 0xc
	.short	36                      # 0x24
	.short	12                      # 0xc
	.short	55                      # 0x37
	.short	12                      # 0xc
	.short	56                      # 0x38
	.short	12                      # 0xc
	.short	39                      # 0x27
	.short	12                      # 0xc
	.short	40                      # 0x28
	.short	12                      # 0xc
	.short	88                      # 0x58
	.short	12                      # 0xc
	.short	89                      # 0x59
	.short	12                      # 0xc
	.short	43                      # 0x2b
	.short	12                      # 0xc
	.short	44                      # 0x2c
	.short	12                      # 0xc
	.short	90                      # 0x5a
	.short	12                      # 0xc
	.short	102                     # 0x66
	.short	12                      # 0xc
	.short	103                     # 0x67
	.short	12                      # 0xc
	.zero	4
	.short	15                      # 0xf
	.short	10                      # 0xa
	.short	200                     # 0xc8
	.short	12                      # 0xc
	.short	201                     # 0xc9
	.short	12                      # 0xc
	.short	91                      # 0x5b
	.short	12                      # 0xc
	.short	51                      # 0x33
	.short	12                      # 0xc
	.short	52                      # 0x34
	.short	12                      # 0xc
	.short	53                      # 0x35
	.short	12                      # 0xc
	.short	108                     # 0x6c
	.short	13                      # 0xd
	.short	109                     # 0x6d
	.short	13                      # 0xd
	.short	74                      # 0x4a
	.short	13                      # 0xd
	.short	75                      # 0x4b
	.short	13                      # 0xd
	.short	76                      # 0x4c
	.short	13                      # 0xd
	.short	77                      # 0x4d
	.short	13                      # 0xd
	.short	114                     # 0x72
	.short	13                      # 0xd
	.short	115                     # 0x73
	.short	13                      # 0xd
	.short	116                     # 0x74
	.short	13                      # 0xd
	.short	117                     # 0x75
	.short	13                      # 0xd
	.short	118                     # 0x76
	.short	13                      # 0xd
	.short	119                     # 0x77
	.short	13                      # 0xd
	.short	82                      # 0x52
	.short	13                      # 0xd
	.short	83                      # 0x53
	.short	13                      # 0xd
	.short	84                      # 0x54
	.short	13                      # 0xd
	.short	85                      # 0x55
	.short	13                      # 0xd
	.short	90                      # 0x5a
	.short	13                      # 0xd
	.short	91                      # 0x5b
	.short	13                      # 0xd
	.short	100                     # 0x64
	.short	13                      # 0xd
	.short	101                     # 0x65
	.short	13                      # 0xd
	.short	8                       # 0x8
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	11                      # 0xb
	.short	13                      # 0xd
	.short	11                      # 0xb
	.short	18                      # 0x12
	.short	12                      # 0xc
	.short	19                      # 0x13
	.short	12                      # 0xc
	.short	20                      # 0x14
	.short	12                      # 0xc
	.short	21                      # 0x15
	.short	12                      # 0xc
	.short	22                      # 0x16
	.short	12                      # 0xc
	.short	23                      # 0x17
	.short	12                      # 0xc
	.short	28                      # 0x1c
	.short	12                      # 0xc
	.short	29                      # 0x1d
	.short	12                      # 0xc
	.short	30                      # 0x1e
	.short	12                      # 0xc
	.short	31                      # 0x1f
	.short	12                      # 0xc
	.size	cf_black_runs, 420

	.type	cf_uncompressed,@object # @cf_uncompressed
	.globl	cf_uncompressed
	.align	16
cf_uncompressed:
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	1                       # 0x1
	.short	3                       # 0x3
	.short	1                       # 0x1
	.short	4                       # 0x4
	.short	1                       # 0x1
	.short	5                       # 0x5
	.short	1                       # 0x1
	.short	6                       # 0x6
	.size	cf_uncompressed, 24

	.type	cf_uncompressed_exit,@object # @cf_uncompressed_exit
	.globl	cf_uncompressed_exit
	.align	16
cf_uncompressed_exit:
	.short	2                       # 0x2
	.short	8                       # 0x8
	.short	3                       # 0x3
	.short	8                       # 0x8
	.short	2                       # 0x2
	.short	9                       # 0x9
	.short	3                       # 0x3
	.short	9                       # 0x9
	.short	2                       # 0x2
	.short	10                      # 0xa
	.short	3                       # 0x3
	.short	10                      # 0xa
	.short	2                       # 0x2
	.short	11                      # 0xb
	.short	3                       # 0x3
	.short	11                      # 0xb
	.short	2                       # 0x2
	.short	12                      # 0xc
	.short	3                       # 0x3
	.short	12                      # 0xc
	.size	cf_uncompressed_exit, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
