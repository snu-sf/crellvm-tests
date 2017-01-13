	.text
	.file	"g3.bc"
	.globl	tree_add_node
	.align	16, 0x90
	.type	tree_add_node,@function
tree_add_node:                          # @tree_add_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	cmpl	$8, -24(%rbp)
	jg	.LBB0_9
# BB#1:                                 # %if.then
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$8, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movl	$0, -28(%rbp)
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	$8, %ecx
	movl	-28(%rbp), %edx
	subl	-24(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	cmpl	%eax, %edx
	jge	.LBB0_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	movl	-44(%rbp), %esi         # 4-byte Reload
	addl	%edx, %esi
	movslq	%esi, %rdi
	movq	-8(%rbp), %r8
	movq	%rax, 8(%r8,%rdi,8)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_4
.LBB0_7:                                # %for.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end
	jmp	.LBB0_16
.LBB0_9:                                # %if.else.8
	movl	-20(%rbp), %eax
	andl	$255, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx,%rcx,8), %rcx
	movq	%rcx, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_13
# BB#10:                                # %if.then.13
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2056, %eax             # imm = 0x808
	movl	%eax, %esi
	callq	calloc
	movl	-20(%rbp), %ecx
	andl	$255, %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi,%rsi,8)
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_12
# BB#11:                                # %if.then.19
	movabsq	$.L.str, %rdi
	callq	perror
	movl	$11, %edi
	callq	exit
.LBB0_12:                               # %if.end.20
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB0_13:                               # %if.end.22
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_15
# BB#14:                                # %if.then.25
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$6, %edi
	callq	exit
.LBB0_15:                               # %if.end.26
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %eax
	sarl	$8, %eax
	movl	-24(%rbp), %ecx
	subl	$8, %ecx
	movl	%eax, %edx
	callq	tree_add_node
.LBB0_16:                               # %if.end.28
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tree_add_node, .Lfunc_end0-tree_add_node
	.cfi_endproc

	.globl	build_tree
	.align	16, 0x90
	.type	build_tree,@function
build_tree:                             # @build_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, (%rsi)
	jne	.LBB1_4
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2056, %eax             # imm = 0x808
	movl	%eax, %esi
	callq	calloc
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.2, %rdi
	callq	perror
	movl	$10, %edi
	callq	exit
.LBB1_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
.LBB1_4:                                # %if.end.3
	jmp	.LBB1_5
.LBB1_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB1_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	callq	tree_add_node
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_5
.LBB1_7:                                # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	build_tree, .Lfunc_end1-build_tree
	.cfi_endproc

	.globl	init_byte_tab
	.align	16, 0x90
	.type	init_byte_tab,@function
init_byte_tab:                          # @init_byte_tab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB2_6
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB2_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-20(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_2
.LBB2_5:                                # %for.end
	jmp	.LBB2_11
.LBB2_6:                                # %if.else
	movl	$0, -20(%rbp)
.LBB2_7:                                # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -20(%rbp)         # imm = 0x100
	jge	.LBB2_10
# BB#8:                                 # %for.body.3
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-20(%rbp), %eax
	andl	$1, %eax
	shll	$7, %eax
	movl	-20(%rbp), %ecx
	andl	$2, %ecx
	shll	$5, %ecx
	orl	%ecx, %eax
	movl	-20(%rbp), %ecx
	andl	$4, %ecx
	shll	$3, %ecx
	orl	%ecx, %eax
	movl	-20(%rbp), %ecx
	andl	$8, %ecx
	shll	$1, %ecx
	orl	%ecx, %eax
	movl	-20(%rbp), %ecx
	andl	$16, %ecx
	sarl	$1, %ecx
	orl	%ecx, %eax
	movl	-20(%rbp), %ecx
	andl	$32, %ecx
	sarl	$3, %ecx
	orl	%ecx, %eax
	movl	-20(%rbp), %ecx
	andl	$64, %ecx
	sarl	$5, %ecx
	orl	%ecx, %eax
	movl	-20(%rbp), %ecx
	andl	$128, %ecx
	sarl	$7, %ecx
	orl	%ecx, %eax
	movslq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
# BB#9:                                 # %for.inc.25
                                        #   in Loop: Header=BB2_7 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_7
.LBB2_10:                               # %for.end.27
	jmp	.LBB2_11
.LBB2_11:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end2:
	.size	init_byte_tab, .Lfunc_end2-init_byte_tab
	.cfi_endproc

	.type	t_white,@object         # @t_white
	.data
	.globl	t_white
	.align	16
t_white:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	172                     # 0xac
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	56                      # 0x38
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	14                      # 0xe
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	13                      # 0xd
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	7                       # 0x7
	.long	15                      # 0xf
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	25                      # 0x19
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	9                       # 0x9
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	10                      # 0xa
	.long	28                      # 0x1c
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	11                      # 0xb
	.long	2                       # 0x2
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	12                      # 0xc
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	13                      # 0xd
	.long	48                      # 0x30
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	14                      # 0xe
	.long	11                      # 0xb
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	15                      # 0xf
	.long	43                      # 0x2b
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	21                      # 0x15
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	17                      # 0x11
	.long	53                      # 0x35
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	18                      # 0x12
	.long	114                     # 0x72
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	19                      # 0x13
	.long	24                      # 0x18
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	20                      # 0x14
	.long	8                       # 0x8
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	21                      # 0x15
	.long	116                     # 0x74
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	22                      # 0x16
	.long	96                      # 0x60
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	23                      # 0x17
	.long	16                      # 0x10
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	24                      # 0x18
	.long	10                      # 0xa
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	106                     # 0x6a
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	26                      # 0x1a
	.long	100                     # 0x64
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	27                      # 0x1b
	.long	18                      # 0x12
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	28                      # 0x1c
	.long	12                      # 0xc
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	29                      # 0x1d
	.long	64                      # 0x40
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	30                      # 0x1e
	.long	192                     # 0xc0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	31                      # 0x1f
	.long	88                      # 0x58
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	216                     # 0xd8
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	33                      # 0x21
	.long	72                      # 0x48
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	34                      # 0x22
	.long	200                     # 0xc8
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	35                      # 0x23
	.long	40                      # 0x28
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	36                      # 0x24
	.long	168                     # 0xa8
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	37                      # 0x25
	.long	104                     # 0x68
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	38                      # 0x26
	.long	232                     # 0xe8
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	39                      # 0x27
	.long	20                      # 0x14
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	40                      # 0x28
	.long	148                     # 0x94
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	41                      # 0x29
	.long	84                      # 0x54
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	42                      # 0x2a
	.long	212                     # 0xd4
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	43                      # 0x2b
	.long	52                      # 0x34
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	44                      # 0x2c
	.long	180                     # 0xb4
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	45                      # 0x2d
	.long	32                      # 0x20
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	46                      # 0x2e
	.long	160                     # 0xa0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	47                      # 0x2f
	.long	80                      # 0x50
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	48                      # 0x30
	.long	208                     # 0xd0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	49                      # 0x31
	.long	74                      # 0x4a
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	50                      # 0x32
	.long	202                     # 0xca
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	51                      # 0x33
	.long	42                      # 0x2a
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	52                      # 0x34
	.long	170                     # 0xaa
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	53                      # 0x35
	.long	36                      # 0x24
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	54                      # 0x36
	.long	164                     # 0xa4
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	55                      # 0x37
	.long	26                      # 0x1a
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	56                      # 0x38
	.long	154                     # 0x9a
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	57                      # 0x39
	.long	90                      # 0x5a
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	58                      # 0x3a
	.long	218                     # 0xda
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	59                      # 0x3b
	.long	82                      # 0x52
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	60                      # 0x3c
	.long	210                     # 0xd2
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	61                      # 0x3d
	.long	76                      # 0x4c
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	62                      # 0x3e
	.long	204                     # 0xcc
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	63                      # 0x3f
	.long	44                      # 0x2c
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	t_white, 1056

	.type	m_white,@object         # @m_white
	.globl	m_white
	.align	16
m_white:
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	27                      # 0x1b
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	9                       # 0x9
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	192                     # 0xc0
	.long	58                      # 0x3a
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	118                     # 0x76
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	320                     # 0x140
	.long	108                     # 0x6c
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	384                     # 0x180
	.long	236                     # 0xec
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	448                     # 0x1c0
	.long	38                      # 0x26
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	512                     # 0x200
	.long	166                     # 0xa6
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	576                     # 0x240
	.long	22                      # 0x16
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	640                     # 0x280
	.long	230                     # 0xe6
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	704                     # 0x2c0
	.long	102                     # 0x66
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	768                     # 0x300
	.long	358                     # 0x166
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	832                     # 0x340
	.long	150                     # 0x96
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	896                     # 0x380
	.long	406                     # 0x196
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	960                     # 0x3c0
	.long	86                      # 0x56
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1024                    # 0x400
	.long	342                     # 0x156
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1088                    # 0x440
	.long	214                     # 0xd6
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1152                    # 0x480
	.long	470                     # 0x1d6
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1216                    # 0x4c0
	.long	54                      # 0x36
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1280                    # 0x500
	.long	310                     # 0x136
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1344                    # 0x540
	.long	182                     # 0xb6
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1408                    # 0x580
	.long	438                     # 0x1b6
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1472                    # 0x5c0
	.long	50                      # 0x32
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1536                    # 0x600
	.long	306                     # 0x132
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1600                    # 0x640
	.long	178                     # 0xb2
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1664                    # 0x680
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	1728                    # 0x6c0
	.long	434                     # 0x1b2
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	m_white, 448

	.type	t_black,@object         # @t_black
	.globl	t_black
	.align	16
t_black:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	944                     # 0x3b0
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	12                      # 0xc
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	6                       # 0x6
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	7                       # 0x7
	.long	24                      # 0x18
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	40                      # 0x28
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	9                       # 0x9
	.long	8                       # 0x8
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	10                      # 0xa
	.long	16                      # 0x10
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	11                      # 0xb
	.long	80                      # 0x50
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	12                      # 0xc
	.long	112                     # 0x70
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	13                      # 0xd
	.long	32                      # 0x20
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	14                      # 0xe
	.long	224                     # 0xe0
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	15                      # 0xf
	.long	48                      # 0x30
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	928                     # 0x3a0
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	17                      # 0x11
	.long	96                      # 0x60
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	18                      # 0x12
	.long	64                      # 0x40
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	19                      # 0x13
	.long	1840                    # 0x730
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	20                      # 0x14
	.long	176                     # 0xb0
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	21                      # 0x15
	.long	432                     # 0x1b0
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	22                      # 0x16
	.long	1888                    # 0x760
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	23                      # 0x17
	.long	160                     # 0xa0
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	24                      # 0x18
	.long	1856                    # 0x740
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	192                     # 0xc0
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	26                      # 0x1a
	.long	1328                    # 0x530
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	27                      # 0x1b
	.long	3376                    # 0xd30
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	28                      # 0x1c
	.long	816                     # 0x330
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	29                      # 0x1d
	.long	2864                    # 0xb30
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	30                      # 0x1e
	.long	352                     # 0x160
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	31                      # 0x1f
	.long	2400                    # 0x960
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	1376                    # 0x560
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	33                      # 0x21
	.long	3424                    # 0xd60
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	34                      # 0x22
	.long	1200                    # 0x4b0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	35                      # 0x23
	.long	3248                    # 0xcb0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	36                      # 0x24
	.long	688                     # 0x2b0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	37                      # 0x25
	.long	2736                    # 0xab0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	38                      # 0x26
	.long	1712                    # 0x6b0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	39                      # 0x27
	.long	3760                    # 0xeb0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	40                      # 0x28
	.long	864                     # 0x360
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	41                      # 0x29
	.long	2912                    # 0xb60
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	42                      # 0x2a
	.long	1456                    # 0x5b0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	43                      # 0x2b
	.long	3504                    # 0xdb0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	44                      # 0x2c
	.long	672                     # 0x2a0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	45                      # 0x2d
	.long	2720                    # 0xaa0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	46                      # 0x2e
	.long	1696                    # 0x6a0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	47                      # 0x2f
	.long	3744                    # 0xea0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	48                      # 0x30
	.long	608                     # 0x260
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	49                      # 0x31
	.long	2656                    # 0xa60
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	50                      # 0x32
	.long	1184                    # 0x4a0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	51                      # 0x33
	.long	3232                    # 0xca0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	52                      # 0x34
	.long	576                     # 0x240
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	53                      # 0x35
	.long	3776                    # 0xec0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	54                      # 0x36
	.long	448                     # 0x1c0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	55                      # 0x37
	.long	3648                    # 0xe40
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	56                      # 0x38
	.long	320                     # 0x140
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	57                      # 0x39
	.long	416                     # 0x1a0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	58                      # 0x3a
	.long	2464                    # 0x9a0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	59                      # 0x3b
	.long	3392                    # 0xd40
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	60                      # 0x3c
	.long	832                     # 0x340
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	61                      # 0x3d
	.long	1440                    # 0x5a0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	62                      # 0x3e
	.long	1632                    # 0x660
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	63                      # 0x3f
	.long	3680                    # 0xe60
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	t_black, 1056

	.type	m_black,@object         # @m_black
	.globl	m_black
	.align	16
m_black:
	.long	0                       # 0x0
	.long	64                      # 0x40
	.long	960                     # 0x3c0
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	128                     # 0x80
	.long	304                     # 0x130
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	192                     # 0xc0
	.long	2352                    # 0x930
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	3488                    # 0xda0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	320                     # 0x140
	.long	3264                    # 0xcc0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	384                     # 0x180
	.long	704                     # 0x2c0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	448                     # 0x1c0
	.long	2752                    # 0xac0
	.long	12                      # 0xc
	.long	0                       # 0x0
	.long	512                     # 0x200
	.long	1728                    # 0x6c0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	576                     # 0x240
	.long	5824                    # 0x16c0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	640                     # 0x280
	.long	2624                    # 0xa40
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	704                     # 0x2c0
	.long	6720                    # 0x1a40
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	768                     # 0x300
	.long	1600                    # 0x640
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	832                     # 0x340
	.long	5696                    # 0x1640
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	896                     # 0x380
	.long	2496                    # 0x9c0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	960                     # 0x3c0
	.long	6592                    # 0x19c0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1024                    # 0x400
	.long	1472                    # 0x5c0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1088                    # 0x440
	.long	5568                    # 0x15c0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1152                    # 0x480
	.long	3520                    # 0xdc0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1216                    # 0x4c0
	.long	7616                    # 0x1dc0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1280                    # 0x500
	.long	2368                    # 0x940
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1344                    # 0x540
	.long	6464                    # 0x1940
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1408                    # 0x580
	.long	1344                    # 0x540
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1472                    # 0x5c0
	.long	5440                    # 0x1540
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1536                    # 0x600
	.long	2880                    # 0xb40
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1600                    # 0x640
	.long	6976                    # 0x1b40
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1664                    # 0x680
	.long	1216                    # 0x4c0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	1728                    # 0x6c0
	.long	5312                    # 0x14c0
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	m_black, 448

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc 3"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"internal table setup error\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"malloc(1)"
	.size	.L.str.2, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
