	.text
	.file	"pclcap.bc"
	.globl	pcl3_fill_defaults
	.align	16, 0x90
	.type	pcl3_fill_defaults,@function
pcl3_fill_defaults:                     # @pcl3_fill_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %ebp
	movb	checked(%rip), %al
	andb	$1, %al
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movb	$1, checked(%rip)
.LBB0_2:                                # %if.end
	xorl	%esi, %esi
	movl	$184, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$1, 100(%rbx)
	movl	$300, 116(%rbx)         # imm = 0x12C
	movl	$300, 112(%rbx)         # imm = 0x12C
	movl	$2, 120(%rbx)
	movl	%ebp, %eax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	movl	pcl3_printers+4(%rax), %eax
	movl	%eax, (%rbx)
	movl	$-1, 72(%rbx)
	movl	$-1, 164(%rbx)
	cmpl	$25, %ebp
	ja	.LBB0_6
# BB#3:                                 # %if.end
	movl	$131, %eax
	btl	%ebp, %eax
	jae	.LBB0_4
# BB#8:                                 # %sw.bb
	movl	$3, 168(%rbx)
	jmp	.LBB0_7
.LBB0_4:                                # %if.end
	movl	$33570816, %eax         # imm = 0x2004000
	btl	%ebp, %eax
	jae	.LBB0_6
# BB#5:                                 # %sw.bb.7
	movl	$2, 168(%rbx)
	jmp	.LBB0_7
.LBB0_6:                                # %sw.default
	movl	$9, 168(%rbx)
.LBB0_7:                                # %sw.epilog
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	pcl3_set_oldquality     # TAILCALL
.Lfunc_end0:
	.size	pcl3_fill_defaults, .Lfunc_end0-pcl3_fill_defaults
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HP DeskJet"
	.size	.L.str, 11

	.type	hpdj500_sizes,@object   # @hpdj500_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj500_sizes:
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1109666038              # float 41.0400009
	.long	1099956224              # float 18
	.long	1088841318              # float 7.1999998
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1109666038              # float 41.0400009
	.long	1099956224              # float 18
	.long	1088841318              # float 7.1999998
	.long	39                      # 0x27
	.long	1091344690              # float 8.78740119
	.long	1109666038              # float 41.0400009
	.long	1092830861              # float 10.2047243
	.long	1088841318              # float 7.1999998
	.long	16407                   # 0x4017
	.long	1113063424              # float 54
	.long	1109666038              # float 41.0400009
	.long	1113063424              # float 54
	.long	1088841318              # float 7.1999998
	.zero	20
	.size	hpdj500_sizes, 100

	.type	ci_old_mono,@object     # @ci_old_mono
	.align	16
ci_old_mono:
	.long	0                       # 0x0
	.zero	4
	.quad	rl_basic
	.quad	0
	.zero	24
	.size	ci_old_mono, 48

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"HP DeskJet Plus"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"HP DeskJet Portable"
	.size	.L.str.2, 20

	.type	hpdj3xx_sizes,@object   # @hpdj3xx_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj3xx_sizes:
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1105618534              # float 28.7999992
	.long	1099956224              # float 18
	.long	1088841318              # float 7.1999998
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1105618534              # float 28.7999992
	.long	1099956224              # float 18
	.long	1088841318              # float 7.1999998
	.long	39                      # 0x27
	.long	1091441787              # float 8.88000011
	.long	1105618534              # float 28.7999992
	.long	1092951736              # float 10.3199997
	.long	1088841318              # float 7.1999998
	.long	38                      # 0x26
	.long	1099956224              # float 18
	.long	1105618534              # float 28.7999992
	.long	1099956224              # float 18
	.long	1088841318              # float 7.1999998
	.zero	20
	.size	hpdj3xx_sizes, 100

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"HP DeskJet 310"
	.size	.L.str.3, 15

	.type	ci_hpdj500c,@object     # @ci_hpdj500c
	.section	.rodata,"a",@progbits
	.align	16
ci_hpdj500c:
	.long	0                       # 0x0
	.zero	4
	.quad	rl_basic
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	rl_basic
	.quad	0
	.zero	24
	.size	ci_hpdj500c, 72

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"HP DeskJet 320"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"HP DeskJet 340"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"HP DeskJet 400"
	.size	.L.str.6, 15

	.type	hpdj400_sizes,@object   # @hpdj400_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj400_sizes:
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1106373509              # float 30.2399998
	.long	1099956224              # float 18
	.long	1085821420              # float 5.76000023
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1106373509              # float 30.2399998
	.long	1099956224              # float 18
	.long	1085821420              # float 5.76000023
	.long	39                      # 0x27
	.long	1091567616              # float 9
	.long	1106373509              # float 30.2399998
	.long	1092830861              # float 10.2047243
	.long	1085821420              # float 5.76000023
	.long	38                      # 0x26
	.long	1099956224              # float 18
	.long	1106373509              # float 30.2399998
	.long	1099956224              # float 18
	.long	1085821420              # float 5.76000023
	.long	37                      # 0x25
	.long	1091567616              # float 9
	.long	1106373509              # float 30.2399998
	.long	1091790542              # float 9.2125988
	.long	1085821420              # float 5.76000023
	.long	16407                   # 0x4017
	.long	1091567616              # float 9
	.long	1106373509              # float 30.2399998
	.long	1085821420              # float 5.76000023
	.long	1085821420              # float 5.76000023
	.long	16409                   # 0x4019
	.long	1091567616              # float 9
	.long	1106373509              # float 30.2399998
	.long	1090351268              # float 7.92000007
	.long	1085821420              # float 5.76000023
	.zero	20
	.size	hpdj400_sizes, 160

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"HP DeskJet 500"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"HP DeskJet 500C"
	.size	.L.str.8, 16

	.type	hpdj500c_sizes,@object  # @hpdj500c_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj500c_sizes:
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1105618534              # float 28.7999992
	.long	1099956224              # float 18
	.long	1088841318              # float 7.1999998
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1105618534              # float 28.7999992
	.long	1099956224              # float 18
	.long	1088841318              # float 7.1999998
	.long	39                      # 0x27
	.long	1091344690              # float 8.78740119
	.long	1105618534              # float 28.7999992
	.long	1092830861              # float 10.2047243
	.long	1088841318              # float 7.1999998
	.long	16407                   # 0x4017
	.long	1113063424              # float 54
	.long	1105618534              # float 28.7999992
	.long	1113063424              # float 54
	.long	1088841318              # float 7.1999998
	.zero	20
	.size	hpdj500c_sizes, 100

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"HP DeskJet 510"
	.size	.L.str.9, 15

	.type	common_sizes,@object    # @common_sizes
	.section	.rodata,"a",@progbits
	.align	16
common_sizes:
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	38                      # 0x26
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1097229926              # float 14.3999996
	.long	1077432812              # float 2.88000011
	.long	39                      # 0x27
	.long	1091344690              # float 8.78740119
	.long	1107589857              # float 33.1199989
	.long	1092830861              # float 10.2047243
	.long	1077432812              # float 2.88000011
	.long	23                      # 0x17
	.long	1091416621              # float 8.85599994
	.long	1112308449              # float 51.1199989
	.long	1091567616              # float 9
	.long	1077432812              # float 2.88000011
	.long	25                      # 0x19
	.long	1091344690              # float 8.78740119
	.long	1112283184              # float 51.0236206
	.long	1092830861              # float 10.2047243
	.long	1077242582              # float 2.83464575
	.zero	20
	.size	common_sizes, 140

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"HP DeskJet 520"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"HP DeskJet 540"
	.size	.L.str.11, 15

	.type	hpdj540_sizes,@object   # @hpdj540_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj540_sizes:
	.long	38                      # 0x26
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	39                      # 0x27
	.long	1091641925              # float 9.07086658
	.long	1107601747              # float 33.1653557
	.long	1091641925              # float 9.07086658
	.long	1077432812              # float 2.88000011
	.long	34                      # 0x22
	.long	1091641925              # float 9.07086658
	.long	1112283184              # float 51.0236206
	.long	1091641925              # float 9.07086658
	.long	1077432812              # float 2.88000011
	.long	37                      # 0x25
	.long	1094614266              # float 11.9055119
	.long	1107601747              # float 33.1653557
	.long	1094614266              # float 11.9055119
	.long	1077432812              # float 2.88000011
	.long	22                      # 0x16
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	30                      # 0x1e
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	536                     # 0x218
	.long	1091641925              # float 9.07086658
	.long	1112283184              # float 51.0236206
	.long	1091641925              # float 9.07086658
	.long	1077432812              # float 2.88000011
	.long	23                      # 0x17
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	25                      # 0x19
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	27                      # 0x1b
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	21                      # 0x15
	.long	1094614266              # float 11.9055119
	.long	1112283184              # float 51.0236206
	.long	1094614266              # float 11.9055119
	.long	1077432812              # float 2.88000011
	.zero	20
	.size	hpdj540_sizes, 280

	.type	hpdj540_custom_sizes,@object # @hpdj540_custom_sizes
	.align	16
hpdj540_custom_sizes:
	.long	76                      # 0x4c
	.long	1091945103              # float 9.35999965
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1077432812              # float 2.88000011
	.long	1140861174              # float 512.640015
	.long	1142489088              # float 612
	.long	1137828168              # float 419.76001
	.long	1148977152              # float 1008
	.long	76                      # 0x4c
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091567616              # float 9
	.long	1077432812              # float 2.88000011
	.long	1135869952              # float 360
	.long	1140861174              # float 512.640015
	.long	1137828168              # float 419.76001
	.long	1148977152              # float 1008
	.zero	36
	.size	hpdj540_custom_sizes, 108

	.type	ci_hpdj540,@object      # @ci_hpdj540
	.align	16
ci_hpdj540:
	.long	0                       # 0x0
	.zero	4
	.quad	rl_basic_without_100
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	rl_basic_without_100
	.quad	0
	.zero	24
	.size	ci_hpdj540, 72

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"HP DeskJet 550C"
	.size	.L.str.12, 16

	.type	ci_hpdj5xx_cmyk,@object # @ci_hpdj5xx_cmyk
	.section	.rodata,"a",@progbits
	.align	16
ci_hpdj5xx_cmyk:
	.long	0                       # 0x0
	.zero	4
	.quad	rl_basic
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	rl_basic
	.quad	0
	.long	3                       # 0x3
	.zero	4
	.quad	rl_basic
	.quad	0
	.zero	24
	.size	ci_hpdj5xx_cmyk, 96

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"HP DeskJet 560C"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"unspecified PCL-3+ printer (old)"
	.size	.L.str.14, 33

	.type	ci_any,@object          # @ci_any
	.section	.rodata,"a",@progbits
	.align	16
ci_any:
	.long	0                       # 0x0
	.zero	4
	.quad	rl_any
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	rl_any_two_levels
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	rl_any
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	rl_any
	.quad	rl_any
	.zero	24
	.size	ci_any, 120

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"HP DeskJet 600"
	.size	.L.str.15, 15

	.type	hpdj6xx_and_8xx_sizes,@object # @hpdj6xx_and_8xx_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj6xx_and_8xx_sizes:
	.long	38                      # 0x26
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	34                      # 0x22
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	39                      # 0x27
	.long	1091945103              # float 9.35999965
	.long	1107589857              # float 33.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	37                      # 0x25
	.long	1094965002              # float 12.2399998
	.long	1107589857              # float 33.1199989
	.long	1094965002              # float 12.2399998
	.long	1077432812              # float 2.88000011
	.long	21                      # 0x15
	.long	1094965002              # float 12.2399998
	.long	1112308449              # float 51.1199989
	.long	1094965002              # float 12.2399998
	.long	1077432812              # float 2.88000011
	.long	33                      # 0x21
	.long	1094965002              # float 12.2399998
	.long	1112308449              # float 51.1199989
	.long	1094965002              # float 12.2399998
	.long	1077432812              # float 2.88000011
	.long	536                     # 0x218
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	22                      # 0x16
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	30                      # 0x1e
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	23                      # 0x17
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	25                      # 0x19
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	27                      # 0x1b
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	26                      # 0x1a
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.zero	20
	.size	hpdj6xx_and_8xx_sizes, 320

	.type	hpdj_6xx_and_8xx_custom_sizes,@object # @hpdj_6xx_and_8xx_custom_sizes
	.align	16
hpdj_6xx_and_8xx_custom_sizes:
	.long	76                      # 0x4c
	.long	1091945103              # float 9.35999965
	.long	1107589857              # float 33.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	1135869952              # float 360
	.long	1142489088              # float 612
	.long	1137820551              # float 419.527557
	.long	1148977152              # float 1008
	.zero	36
	.size	hpdj_6xx_and_8xx_custom_sizes, 72

	.type	ci_hpdj600,@object      # @ci_hpdj600
	.align	16
ci_hpdj600:
	.long	0                       # 0x0
	.zero	4
	.quad	rl_hpdj6xx_black
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	rl_hpdj6xx_colour
	.quad	0
	.zero	24
	.size	ci_hpdj600, 72

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"HP DeskJet 660C"
	.size	.L.str.16, 16

	.type	hpdj660c_sizes,@object  # @hpdj660c_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj660c_sizes:
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	38                      # 0x26
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	39                      # 0x27
	.long	1091945103              # float 9.35999965
	.long	1107589857              # float 33.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	34                      # 0x22
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	37                      # 0x25
	.long	1094965002              # float 12.2399998
	.long	1107589857              # float 33.1199989
	.long	1094965002              # float 12.2399998
	.long	1077432812              # float 2.88000011
	.long	23                      # 0x17
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	25                      # 0x19
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	27                      # 0x1b
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	22                      # 0x16
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	30                      # 0x1e
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	536                     # 0x218
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	21                      # 0x15
	.long	1094965002              # float 12.2399998
	.long	1112308449              # float 51.1199989
	.long	1094965002              # float 12.2399998
	.long	1077432812              # float 2.88000011
	.long	26                      # 0x1a
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.zero	20
	.size	hpdj660c_sizes, 300

	.type	ci_hpdj6xx,@object      # @ci_hpdj6xx
	.align	16
ci_hpdj6xx:
	.long	0                       # 0x0
	.zero	4
	.quad	rl_hpdj6xx_black
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	rl_hpdj6xx_colour
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	rl_hpdj6xx_colour
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	rl_six
	.quad	rl_three
	.zero	24
	.size	ci_hpdj6xx, 120

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"HP DeskJet 670C"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"HP DeskJet 680C"
	.size	.L.str.18, 16

	.type	hpdj680c_sizes,@object  # @hpdj680c_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj680c_sizes:
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	39                      # 0x27
	.long	1091945103              # float 9.35999965
	.long	1107589857              # float 33.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	23                      # 0x17
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	38                      # 0x26
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	25                      # 0x19
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	34                      # 0x22
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	37                      # 0x25
	.long	1094965002              # float 12.2399998
	.long	1107589857              # float 33.1199989
	.long	1094965002              # float 12.2399998
	.long	1077432812              # float 2.88000011
	.long	27                      # 0x1b
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	22                      # 0x16
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	30                      # 0x1e
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	536                     # 0x218
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	21                      # 0x15
	.long	1094965002              # float 12.2399998
	.long	1112308449              # float 51.1199989
	.long	1094965002              # float 12.2399998
	.long	1077432812              # float 2.88000011
	.long	26                      # 0x1a
	.long	1091945103              # float 9.35999965
	.long	1112308449              # float 51.1199989
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.long	2090                    # 0x82a
	.long	1099956224              # float 18
	.long	0                       # float 0
	.long	1099956224              # float 18
	.long	0                       # float 0
	.long	2087                    # 0x827
	.long	1091945103              # float 9.35999965
	.long	0                       # float 0
	.long	1091945103              # float 9.35999965
	.long	0                       # float 0
	.zero	20
	.size	hpdj680c_sizes, 340

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"HP DeskJet 690C"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"HP DeskJet 850C"
	.size	.L.str.20, 16

	.type	hpdj850c_sizes,@object  # @hpdj850c_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj850c_sizes:
	.long	42                      # 0x2a
	.long	1100030533              # float 18.1417332
	.long	1107601747              # float 33.1653557
	.long	1100030533              # float 18.1417332
	.long	1077242582              # float 2.83464575
	.long	43                      # 0x2b
	.long	1100030533              # float 18.1417332
	.long	1107601747              # float 33.1653557
	.long	1100030533              # float 18.1417332
	.long	1077242582              # float 2.83464575
	.long	38                      # 0x26
	.long	1100030533              # float 18.1417332
	.long	1107601747              # float 33.1653557
	.long	1100030533              # float 18.1417332
	.long	1077242582              # float 2.83464575
	.long	39                      # 0x27
	.long	1092236393              # float 9.63779544
	.long	1107601747              # float 33.1653557
	.long	1092236393              # float 9.63779544
	.long	1077242582              # float 2.83464575
	.long	34                      # 0x22
	.long	1092236393              # float 9.63779544
	.long	1107601747              # float 33.1653557
	.long	1092236393              # float 9.63779544
	.long	1077242582              # float 2.83464575
	.long	37                      # 0x25
	.long	1091641925              # float 9.07086658
	.long	1107601747              # float 33.1653557
	.long	1091641925              # float 9.07086658
	.long	1077242582              # float 2.83464575
	.long	22                      # 0x16
	.long	1091641925              # float 9.07086658
	.long	1107601747              # float 33.1653557
	.long	1091641925              # float 9.07086658
	.long	1077242582              # float 2.83464575
	.long	30                      # 0x1e
	.long	1091641925              # float 9.07086658
	.long	1107601747              # float 33.1653557
	.long	1091641925              # float 9.07086658
	.long	1077242582              # float 2.83464575
	.long	536                     # 0x218
	.long	1091641925              # float 9.07086658
	.long	1107601747              # float 33.1653557
	.long	1091641925              # float 9.07086658
	.long	1077242582              # float 2.83464575
	.long	21                      # 0x15
	.long	1091641925              # float 9.07086658
	.long	1107601747              # float 33.1653557
	.long	1091641925              # float 9.07086658
	.long	1077242582              # float 2.83464575
	.long	23                      # 0x17
	.long	1091641925              # float 9.07086658
	.long	1115255526              # float 62.3622055
	.long	1091641925              # float 9.07086658
	.long	1077242582              # float 2.83464575
	.long	25                      # 0x19
	.long	1091641925              # float 9.07086658
	.long	1115255526              # float 62.3622055
	.long	1091641925              # float 9.07086658
	.long	1077242582              # float 2.83464575
	.long	27                      # 0x1b
	.long	1091641925              # float 9.07086658
	.long	1115255526              # float 62.3622055
	.long	1091641925              # float 9.07086658
	.long	1077242582              # float 2.83464575
	.zero	20
	.size	hpdj850c_sizes, 280

	.type	hpdj850c_custom_sizes,@object # @hpdj850c_custom_sizes
	.align	16
hpdj850c_custom_sizes:
	.long	76                      # 0x4c
	.long	1092236393              # float 9.63779544
	.long	1107601747              # float 33.1653557
	.long	1092236393              # float 9.63779544
	.long	1077242582              # float 2.83464575
	.long	1133362039              # float 283.464569
	.long	1142493732              # float 612.283447
	.long	1137820551              # float 419.527557
	.long	1148995729              # float 1009.13385
	.zero	36
	.size	hpdj850c_custom_sizes, 72

	.type	ci_hpdj85x,@object      # @ci_hpdj85x
	.align	16
ci_hpdj85x:
	.long	0                       # 0x0
	.zero	4
	.quad	rl_hpdj85x_black
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	rl_basic_without_100
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	rl_basic_without_100
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	rl_three_with_levels_4
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	rl_six
	.quad	rl_three_with_levels_2_4
	.long	4                       # 0x4
	.zero	4
	.quad	rl_three_with_levels_4
	.quad	rl_three_with_levels_3_4
	.zero	24
	.size	ci_hpdj85x, 168

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"HP DeskJet 855C"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"HP DeskJet 870C"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"HP DeskJet 890C"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"HP DeskJet 1120C"
	.size	.L.str.24, 17

	.type	hpdj1120c_sizes,@object # @hpdj1120c_sizes
	.section	.rodata,"a",@progbits
	.align	16
hpdj1120c_sizes:
	.long	38                      # 0x26
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1091190129              # float 8.64000034
	.long	42                      # 0x2a
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1091190129              # float 8.64000034
	.long	43                      # 0x2b
	.long	1099956224              # float 18
	.long	1107589857              # float 33.1199989
	.long	1099956224              # float 18
	.long	1091190129              # float 8.64000034
	.long	51                      # 0x33
	.long	1097229926              # float 14.3999996
	.long	1107589857              # float 33.1199989
	.long	1097229926              # float 14.3999996
	.long	1091190129              # float 8.64000034
	.long	32                      # 0x20
	.long	1097229926              # float 14.3999996
	.long	1107589857              # float 33.1199989
	.long	1097229926              # float 14.3999996
	.long	1091190129              # float 8.64000034
	.long	56                      # 0x38
	.long	1097229926              # float 14.3999996
	.long	1107589857              # float 33.1199989
	.long	1097229926              # float 14.3999996
	.long	1091190129              # float 8.64000034
	.long	24                      # 0x18
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	34                      # 0x22
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	39                      # 0x27
	.long	1097229926              # float 14.3999996
	.long	1107589857              # float 33.1199989
	.long	1097229926              # float 14.3999996
	.long	1091190129              # float 8.64000034
	.long	52                      # 0x34
	.long	1097229926              # float 14.3999996
	.long	1107589857              # float 33.1199989
	.long	1097229926              # float 14.3999996
	.long	1091190129              # float 8.64000034
	.long	37                      # 0x25
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	50                      # 0x32
	.long	1097229926              # float 14.3999996
	.long	1107589857              # float 33.1199989
	.long	1097229926              # float 14.3999996
	.long	1091190129              # float 8.64000034
	.long	21                      # 0x15
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	536                     # 0x218
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	22                      # 0x16
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	30                      # 0x1e
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	23                      # 0x17
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	25                      # 0x19
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	27                      # 0x1b
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	26                      # 0x1a
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	28                      # 0x1c
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	17                      # 0x11
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	48                      # 0x30
	.long	1097229926              # float 14.3999996
	.long	1107589857              # float 33.1199989
	.long	1097229926              # float 14.3999996
	.long	1091190129              # float 8.64000034
	.long	2090                    # 0x82a
	.long	1099956224              # float 18
	.long	0                       # float 0
	.long	1099956224              # float 18
	.long	1077432812              # float 2.88000011
	.long	2087                    # 0x827
	.long	1091945103              # float 9.35999965
	.long	0                       # float 0
	.long	1091945103              # float 9.35999965
	.long	1077432812              # float 2.88000011
	.zero	20
	.size	hpdj1120c_sizes, 520

	.type	hpdj1120c_custom_sizes,@object # @hpdj1120c_custom_sizes
	.align	16
hpdj1120c_custom_sizes:
	.long	76                      # 0x4c
	.long	1091567616              # float 9
	.long	1107589857              # float 33.1199989
	.long	1091567616              # float 9
	.long	1091190129              # float 8.64000034
	.long	1132404284              # float 255.118103
	.long	1147797504              # float 936
	.long	1137634780              # float 413.858276
	.long	1152057344              # float 1368
	.zero	36
	.size	hpdj1120c_custom_sizes, 72

	.type	ci_hpdj1120c,@object    # @ci_hpdj1120c
	.align	16
ci_hpdj1120c:
	.long	0                       # 0x0
	.zero	4
	.quad	rl_hpdj1120c_black
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	rl_six
	.quad	rl_three_with_levels_4
	.long	4                       # 0x4
	.zero	4
	.quad	rl_six
	.quad	rl_three
	.long	4                       # 0x4
	.zero	4
	.quad	rl_three_with_levels_4
	.quad	rl_three_with_levels_3_4
	.long	4                       # 0x4
	.zero	4
	.quad	rl_150_and_300
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	rl_hpdj85x_black
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.quad	rl_basic_without_100
	.quad	0
	.long	4                       # 0x4
	.zero	4
	.quad	rl_basic_without_100
	.quad	0
	.zero	24
	.size	ci_hpdj1120c, 216

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"unspecified PCL-3+ printer"
	.size	.L.str.25, 27

	.type	any_custom_sizes,@object # @any_custom_sizes
	.section	.rodata,"a",@progbits
	.align	16
any_custom_sizes:
	.long	76                      # 0x4c
	.long	1092236393              # float 9.63779544
	.long	1107601747              # float 33.1653557
	.long	1092236393              # float 9.63779544
	.long	1077242582              # float 2.83464575
	.long	34086122                # float 9.99999991E-38
	.long	2096152002              # float 9.99999993E+36
	.long	34086122                # float 9.99999991E-38
	.long	2096152002              # float 9.99999993E+36
	.zero	36
	.size	any_custom_sizes, 72

	.type	pcl3_printers,@object   # @pcl3_printers
	.globl	pcl3_printers
	.align	16
pcl3_printers:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str
	.quad	hpdj500_sizes
	.quad	0
	.long	0                       # float 0
	.zero	4
	.quad	ci_old_mono
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.1
	.quad	hpdj500_sizes
	.quad	0
	.long	0                       # float 0
	.zero	4
	.quad	ci_old_mono
	.long	2                       # 0x2
	.long	2                       # 0x2
	.quad	.L.str.2
	.quad	hpdj3xx_sizes
	.quad	0
	.long	0                       # float 0
	.zero	4
	.quad	ci_old_mono
	.long	3                       # 0x3
	.long	2                       # 0x2
	.quad	.L.str.3
	.quad	hpdj3xx_sizes
	.quad	0
	.long	1094713344              # float 12
	.zero	4
	.quad	ci_hpdj500c
	.long	4                       # 0x4
	.long	2                       # 0x2
	.quad	.L.str.4
	.quad	hpdj3xx_sizes
	.quad	0
	.long	1094713344              # float 12
	.zero	4
	.quad	ci_hpdj500c
	.long	5                       # 0x5
	.long	2                       # 0x2
	.quad	.L.str.5
	.quad	hpdj3xx_sizes
	.quad	0
	.long	1094713344              # float 12
	.zero	4
	.quad	ci_hpdj500c
	.long	6                       # 0x6
	.long	2                       # 0x2
	.quad	.L.str.6
	.quad	hpdj400_sizes
	.quad	0
	.long	0                       # float 0
	.zero	4
	.quad	ci_hpdj500c
	.long	7                       # 0x7
	.long	0                       # 0x0
	.quad	.L.str.7
	.quad	hpdj500_sizes
	.quad	0
	.long	0                       # float 0
	.zero	4
	.quad	ci_old_mono
	.long	8                       # 0x8
	.long	2                       # 0x2
	.quad	.L.str.8
	.quad	hpdj500c_sizes
	.quad	0
	.long	1094965002              # float 12.2399998
	.zero	4
	.quad	ci_hpdj500c
	.long	9                       # 0x9
	.long	2                       # 0x2
	.quad	.L.str.9
	.quad	common_sizes
	.quad	0
	.long	0                       # float 0
	.zero	4
	.quad	ci_old_mono
	.long	10                      # 0xa
	.long	2                       # 0x2
	.quad	.L.str.10
	.quad	common_sizes
	.quad	0
	.long	0                       # float 0
	.zero	4
	.quad	ci_old_mono
	.long	11                      # 0xb
	.long	3                       # 0x3
	.quad	.L.str.11
	.quad	hpdj540_sizes
	.quad	hpdj540_custom_sizes
	.long	1091945103              # float 9.35999965
	.zero	4
	.quad	ci_hpdj540
	.long	12                      # 0xc
	.long	2                       # 0x2
	.quad	.L.str.12
	.quad	common_sizes
	.quad	0
	.long	1091945103              # float 9.35999965
	.zero	4
	.quad	ci_hpdj5xx_cmyk
	.long	13                      # 0xd
	.long	2                       # 0x2
	.quad	.L.str.13
	.quad	common_sizes
	.quad	0
	.long	1091945103              # float 9.35999965
	.zero	4
	.quad	ci_hpdj5xx_cmyk
	.long	14                      # 0xe
	.long	1                       # 0x1
	.quad	.L.str.14
	.quad	common_sizes
	.quad	0
	.long	0                       # float 0
	.zero	4
	.quad	ci_any
	.long	15                      # 0xf
	.long	3                       # 0x3
	.quad	.L.str.15
	.quad	hpdj6xx_and_8xx_sizes
	.quad	hpdj_6xx_and_8xx_custom_sizes
	.long	1091945103              # float 9.35999965
	.zero	4
	.quad	ci_hpdj600
	.long	16                      # 0x10
	.long	3                       # 0x3
	.quad	.L.str.16
	.quad	hpdj660c_sizes
	.quad	hpdj_6xx_and_8xx_custom_sizes
	.long	1091945103              # float 9.35999965
	.zero	4
	.quad	ci_hpdj6xx
	.long	17                      # 0x11
	.long	3                       # 0x3
	.quad	.L.str.17
	.quad	hpdj660c_sizes
	.quad	hpdj_6xx_and_8xx_custom_sizes
	.long	1091945103              # float 9.35999965
	.zero	4
	.quad	ci_hpdj6xx
	.long	18                      # 0x12
	.long	3                       # 0x3
	.quad	.L.str.18
	.quad	hpdj680c_sizes
	.quad	hpdj_6xx_and_8xx_custom_sizes
	.long	1091945103              # float 9.35999965
	.zero	4
	.quad	ci_hpdj6xx
	.long	19                      # 0x13
	.long	3                       # 0x3
	.quad	.L.str.19
	.quad	hpdj680c_sizes
	.quad	hpdj_6xx_and_8xx_custom_sizes
	.long	1091945103              # float 9.35999965
	.zero	4
	.quad	ci_hpdj6xx
	.long	20                      # 0x14
	.long	3                       # 0x3
	.quad	.L.str.20
	.quad	hpdj850c_sizes
	.quad	hpdj850c_custom_sizes
	.long	0                       # float 0
	.zero	4
	.quad	ci_hpdj85x
	.long	21                      # 0x15
	.long	3                       # 0x3
	.quad	.L.str.21
	.quad	hpdj850c_sizes
	.quad	hpdj850c_custom_sizes
	.long	0                       # float 0
	.zero	4
	.quad	ci_hpdj85x
	.long	22                      # 0x16
	.long	3                       # 0x3
	.quad	.L.str.22
	.quad	hpdj850c_sizes
	.quad	hpdj850c_custom_sizes
	.long	0                       # float 0
	.zero	4
	.quad	ci_hpdj85x
	.long	23                      # 0x17
	.long	3                       # 0x3
	.quad	.L.str.23
	.quad	hpdj850c_sizes
	.quad	hpdj850c_custom_sizes
	.long	0                       # float 0
	.zero	4
	.quad	ci_hpdj85x
	.long	24                      # 0x18
	.long	3                       # 0x3
	.quad	.L.str.24
	.quad	hpdj1120c_sizes
	.quad	hpdj1120c_custom_sizes
	.long	0                       # float 0
	.zero	4
	.quad	ci_hpdj1120c
	.long	25                      # 0x19
	.long	3                       # 0x3
	.quad	.L.str.25
	.quad	hpdj850c_sizes
	.quad	any_custom_sizes
	.long	0                       # float 0
	.zero	4
	.quad	ci_any
	.size	pcl3_printers, 1248

	.type	checked,@object         # @checked
	.local	checked
	.comm	checked,1,1
	.type	rl_basic,@object        # @rl_basic
	.align	16
rl_basic:
	.quad	basic_resolutions
	.quad	two_levels
	.zero	16
	.size	rl_basic, 32

	.type	basic_resolutions,@object # @basic_resolutions
	.align	16
basic_resolutions:
	.long	1117126656              # float 75
	.long	1117126656              # float 75
	.long	1120403456              # float 100
	.long	1120403456              # float 100
	.long	1125515264              # float 150
	.long	1125515264              # float 150
	.long	1133903872              # float 300
	.long	1133903872              # float 300
	.zero	8
	.size	basic_resolutions, 40

	.type	two_levels,@object      # @two_levels
	.align	2
two_levels:
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.size	two_levels, 8

	.type	rl_basic_without_100,@object # @rl_basic_without_100
	.align	16
rl_basic_without_100:
	.quad	basic_without_100
	.quad	two_levels
	.zero	16
	.size	rl_basic_without_100, 32

	.type	basic_without_100,@object # @basic_without_100
	.align	16
basic_without_100:
	.long	1117126656              # float 75
	.long	1117126656              # float 75
	.long	1125515264              # float 150
	.long	1125515264              # float 150
	.long	1133903872              # float 300
	.long	1133903872              # float 300
	.zero	8
	.size	basic_without_100, 32

	.type	rl_any,@object          # @rl_any
	.align	16
rl_any:
	.quad	0
	.quad	any_levels
	.zero	16
	.size	rl_any, 32

	.type	rl_any_two_levels,@object # @rl_any_two_levels
	.align	16
rl_any_two_levels:
	.quad	0
	.quad	two_levels
	.zero	16
	.size	rl_any_two_levels, 32

	.type	any_levels,@object      # @any_levels
	.align	2
any_levels:
	.short	2                       # 0x2
	.short	65535                   # 0xffff
	.zero	4
	.size	any_levels, 8

	.type	rl_hpdj6xx_black,@object # @rl_hpdj6xx_black
	.align	16
rl_hpdj6xx_black:
	.quad	basic_resolutions
	.quad	two_levels
	.quad	six_by_three
	.quad	two_levels
	.quad	sixhundred
	.quad	two_levels
	.zero	16
	.size	rl_hpdj6xx_black, 64

	.type	rl_hpdj6xx_colour,@object # @rl_hpdj6xx_colour
	.align	16
rl_hpdj6xx_colour:
	.quad	basic_resolutions
	.quad	two_levels
	.quad	six_by_three
	.quad	two_levels
	.zero	16
	.size	rl_hpdj6xx_colour, 48

	.type	six_by_three,@object    # @six_by_three
	.align	16
six_by_three:
	.long	1142292480              # float 600
	.long	1133903872              # float 300
	.zero	8
	.size	six_by_three, 16

	.type	sixhundred,@object      # @sixhundred
	.align	16
sixhundred:
	.long	1142292480              # float 600
	.long	1142292480              # float 600
	.zero	8
	.size	sixhundred, 16

	.type	rl_six,@object          # @rl_six
	.align	16
rl_six:
	.quad	sixhundred
	.quad	two_levels
	.zero	16
	.size	rl_six, 32

	.type	rl_three,@object        # @rl_three
	.align	16
rl_three:
	.quad	threehundred
	.quad	two_levels
	.zero	16
	.size	rl_three, 32

	.type	threehundred,@object    # @threehundred
	.align	16
threehundred:
	.long	1133903872              # float 300
	.long	1133903872              # float 300
	.zero	8
	.size	threehundred, 16

	.type	rl_hpdj85x_black,@object # @rl_hpdj85x_black
	.align	16
rl_hpdj85x_black:
	.quad	basic_without_100
	.quad	two_levels
	.quad	sixhundred
	.quad	two_levels
	.zero	16
	.size	rl_hpdj85x_black, 48

	.type	rl_three_with_levels_4,@object # @rl_three_with_levels_4
	.align	16
rl_three_with_levels_4:
	.quad	threehundred
	.quad	four_levels
	.zero	16
	.size	rl_three_with_levels_4, 32

	.type	rl_three_with_levels_2_4,@object # @rl_three_with_levels_2_4
	.align	16
rl_three_with_levels_2_4:
	.quad	threehundred
	.quad	two_to_four_levels
	.zero	16
	.size	rl_three_with_levels_2_4, 32

	.type	rl_three_with_levels_3_4,@object # @rl_three_with_levels_3_4
	.align	16
rl_three_with_levels_3_4:
	.quad	threehundred
	.quad	three_to_four_levels
	.zero	16
	.size	rl_three_with_levels_3_4, 32

	.type	four_levels,@object     # @four_levels
	.align	2
four_levels:
	.short	4                       # 0x4
	.short	4                       # 0x4
	.zero	4
	.size	four_levels, 8

	.type	two_to_four_levels,@object # @two_to_four_levels
	.align	2
two_to_four_levels:
	.short	2                       # 0x2
	.short	4                       # 0x4
	.zero	4
	.size	two_to_four_levels, 8

	.type	three_to_four_levels,@object # @three_to_four_levels
	.align	2
three_to_four_levels:
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.size	three_to_four_levels, 8

	.type	rl_hpdj1120c_black,@object # @rl_hpdj1120c_black
	.align	16
rl_hpdj1120c_black:
	.quad	rel_hpdj1120c_black
	.quad	two_levels
	.quad	threehundred
	.quad	four_levels
	.zero	16
	.size	rl_hpdj1120c_black, 48

	.type	rl_150_and_300,@object  # @rl_150_and_300
	.align	16
rl_150_and_300:
	.quad	rel_150_and_300
	.quad	two_levels
	.zero	16
	.size	rl_150_and_300, 32

	.type	rel_hpdj1120c_black,@object # @rel_hpdj1120c_black
	.align	16
rel_hpdj1120c_black:
	.long	1125515264              # float 150
	.long	1125515264              # float 150
	.long	1133903872              # float 300
	.long	1133903872              # float 300
	.long	1142292480              # float 600
	.long	1142292480              # float 600
	.zero	8
	.size	rel_hpdj1120c_black, 32

	.type	rel_150_and_300,@object # @rel_150_and_300
	.align	16
rel_150_and_300:
	.long	1125515264              # float 150
	.long	1125515264              # float 150
	.long	1133903872              # float 300
	.long	1133903872              # float 300
	.zero	8
	.size	rel_150_and_300, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
