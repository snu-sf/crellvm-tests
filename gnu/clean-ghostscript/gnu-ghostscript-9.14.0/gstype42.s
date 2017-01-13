	.text
	.file	"gstype42.bc"
	.globl	gs_type42_read_data
	.align	16, 0x90
	.type	gs_type42_read_data,@function
gs_type42_read_data:                    # @gs_type42_read_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdi, %r12
	movq	448(%r12), %r13
	movl	%edx, %eax
	addq	%rax, %r14
	leaq	(%rsi,%rax), %rbp
	.align	16, 0x90
.LBB0_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r15d
	movq	%rbp, %rsi
	subq	%r15, %rsi
	movq	%r12, %rdi
	leaq	(%rsp), %rcx
	callq	*%r13
	testl	%eax, %eax
	js	.LBB0_3
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	cmovel	%r15d, %eax
	movq	%r14, %rdi
	subq	%r15, %rdi
	movq	(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	xorl	%eax, %eax
	subl	%ebx, %r15d
	movl	%r15d, %edx
	jne	.LBB0_1
.LBB0_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_type42_read_data, .Lfunc_end0-gs_type42_read_data
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	65280                   # 0xff00
	.long	65280                   # 0xff00
	.long	65280                   # 0xff00
	.long	65280                   # 0xff00
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_1:
	.quad	4602678819172646912     # double 0.5
.LCPI1_2:
	.quad	-4620693217682128896    # double -0.5
	.text
	.globl	gs_type42_font_init
	.align	16, 0x90
	.type	gs_type42_font_init,@function
gs_type42_font_init:                    # @gs_type42_font_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$776, %rsp              # imm = 0x308
.Ltmp19:
	.cfi_def_cfa_offset 832
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	leaq	448(%r13), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	448(%r13), %r14
	movl	$12, %edx
	leaq	764(%rsp), %r15
	leaq	48(%rsp), %rbp
	.align	16, 0x90
.LBB1_1:                                # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r12d
	movl	$12, %esi
	subq	%r12, %rsi
	movq	%r13, %rdi
	movq	%rbp, %rcx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB1_107
# BB#2:                                 # %if.end.i
                                        #   in Loop: Header=BB1_1 Depth=1
	cmovel	%r12d, %eax
	movq	%r15, %rdi
	subq	%r12, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %r12d
	movl	%r12d, %edx
	jne	.LBB1_1
# BB#3:                                 # %do.end
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	leaq	752(%rsp), %rdi
	movl	$gs_type42_font_init.version_ttcf, %esi
	movl	$4, %edx
	callq	memcmp
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB1_16
# BB#4:                                 # %if.then.4
	leaq	756(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %rbp
	cmpl	$65536, %ebp            # imm = 0x10000
	je	.LBB1_7
# BB#5:                                 # %if.then.4
	cmpl	$131072, %ebp           # imm = 0x20000
	jne	.LBB1_6
.LBB1_7:                                # %if.end.17
	leaq	760(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %rcx
	movl	$-15, %eax
	movq	40(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	js	.LBB1_107
# BB#8:                                 # %if.end.17
	cmpl	%edx, %ecx
	jbe	.LBB1_107
# BB#9:                                 # %do.body.28
	leal	12(,%rdx,4), %eax
	movslq	%eax, %rbp
	movq	448(%r13), %r12
	movq	%r13, 40(%rsp)          # 8-byte Spill
	addq	$4, %rbp
	movl	$4, %edx
	.align	16, 0x90
.LBB1_10:                               # %do.body.i.302
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r13d
	movq	%rbp, %rsi
	subq	%r13, %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	leaq	48(%rsp), %rcx
	callq	*%r12
	testl	%eax, %eax
	js	.LBB1_107
# BB#11:                                # %if.end.i.311
                                        #   in Loop: Header=BB1_10 Depth=1
	cmovel	%r13d, %eax
	leaq	756(%rsp), %rdi
	subq	%r13, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %r13d
	movl	%r13d, %edx
	jne	.LBB1_10
# BB#12:                                # %do.end.37
	leaq	752(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %r12
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %r12
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	448(%rax), %r13
	addq	$12, %r12
	movl	$12, %edx
	.align	16, 0x90
.LBB1_13:                               # %do.body.i.323
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebp
	movq	%r12, %rsi
	subq	%rbp, %rsi
	movq	40(%rsp), %rdi          # 8-byte Reload
	leaq	48(%rsp), %rcx
	callq	*%r13
	testl	%eax, %eax
	js	.LBB1_107
# BB#14:                                # %if.end.i.332
                                        #   in Loop: Header=BB1_13 Depth=1
	cmovel	%ebp, %eax
	movq	%r15, %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_13
# BB#15:                                # %gs_type42_read_data.exit334.thread750
	movq	40(%rsp), %r13          # 8-byte Reload
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB1_16:                               # %if.end.51
	leaq	752(%rsp), %rdi
	movl	$gs_type42_font_init.version1_0, %esi
	movl	$4, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_18
# BB#17:                                # %land.lhs.true.55
	leaq	752(%rsp), %rdi
	movl	$gs_type42_font_init.version_true, %esi
	movl	$4, %edx
	callq	memcmp
	movl	%eax, %ecx
	movl	$-10, %eax
	testl	%ecx, %ecx
	jne	.LBB1_107
.LBB1_18:                               # %if.end.60
	movzbl	756(%rsp), %eax
	shll	$8, %eax
	movzbl	757(%rsp), %ecx
	orl	%eax, %ecx
	cmpl	$40, %ecx
	jbe	.LBB1_20
# BB#19:
	movl	$-10, %eax
	jmp	.LBB1_107
.LBB1_20:                               # %do.body.73
	movl	%ecx, %edx
	shll	$4, %edx
	movl	$-28, %eax
	cmpl	$640, %edx              # imm = 0x280
	ja	.LBB1_107
# BB#21:                                # %if.end.79
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	addl	$12, %ebp
	andq	%rbx, %rbp
	movq	448(%r13), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	leaq	112(%rsp,%rax), %r12
	leaq	(%rbp,%rax), %r15
	.align	16, 0x90
.LBB1_22:                               # %do.body.i.344
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebp
	movq	%r15, %rsi
	subq	%rbp, %rsi
	movq	%r13, %rdi
	leaq	48(%rsp), %rcx
	callq	*40(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB1_107
# BB#23:                                # %if.end.i.353
                                        #   in Loop: Header=BB1_22 Depth=1
	cmovel	%ebp, %eax
	movq	%r12, %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_22
# BB#24:                                # %do.end.90
	movq	456(%r13), %rbx
	xorl	%esi, %esi
	movl	$208, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	memset
	movq	%r14, 448(%r13)
	movq	%rbx, 456(%r13)
	movq	24(%rsp), %rbx          # 8-byte Reload
	testl	%ebx, %ebx
	je	.LBB1_25
# BB#26:                                # %for.body.lr.ph
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB1_27:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_62 Depth 2
                                        #     Child Loop BB1_55 Depth 2
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_40 Depth 2
                                        #     Child Loop BB1_35 Depth 2
	movq	%r15, %rax
	shlq	$4, %rax
	leaq	112(%rsp,%rax), %r14
	leaq	120(%rsp,%rax), %rdi
	callq	get_u32_msb
	movq	%rax, %rbp
	movl	$.L.str.2, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_28
# BB#29:                                # %if.else.110
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.3, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_30
# BB#31:                                # %if.else.119
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.4, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_32
# BB#38:                                # %if.else.154
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.6, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_39
# BB#43:                                # %if.else.193
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.7, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_44
# BB#49:                                # %if.else.221
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.8, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_50
# BB#51:                                # %if.else.235
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.9, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_52
# BB#53:                                # %if.else.242
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.10, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_54
# BB#58:                                # %if.else.313
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.11, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_59
# BB#60:                                # %if.else.318
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.12, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_61
# BB#65:                                # %if.else.348
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.13, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_66
# BB#67:                                # %if.else.363
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$.L.str.14, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB1_69
# BB#68:                                # %if.then.366
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%rbp, 584(%r13)
	jmp	.LBB1_69
.LBB1_28:                               # %if.then.108
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%rbp, 496(%r13)
	jmp	.LBB1_69
.LBB1_30:                               # %if.then.113
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%rbp, 504(%r13)
	addq	$12, %r14
	movq	%r14, %rdi
	callq	get_u32_msb
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB1_69
.LBB1_32:                               # %if.then.122
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%r15, 16(%rsp)          # 8-byte Spill
	addq	$12, %r14
	movq	%r14, %rdi
	callq	get_u32_msb
	movq	%rax, 648(%r13)
	movq	16(%r13), %rdi
	movl	$1, %edx
	movl	$.L.str.5, %ecx
	movl	%eax, %esi
	callq	*88(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 640(%r13)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB1_107
# BB#33:                                # %if.end.138
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	$gs_gsub_release, %esi
	movq	%r13, %rdi
	movq	%r13, %rdx
	callq	gs_font_notify_register
	testl	%eax, %eax
	js	.LBB1_107
# BB#34:                                # %if.end.143
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	448(%r13), %r14
	movq	648(%r13), %rdx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rdx, %r12
	andq	%rax, %r12
	movq	640(%r13), %r15
	addq	%r12, %r15
	addq	%rbp, %r12
.LBB1_35:                               # %do.body.i.366
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%r12, %rsi
	subq	%rbp, %rsi
	movq	%r13, %rdi
	leaq	48(%rsp), %rcx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB1_107
# BB#36:                                # %if.end.i.375
                                        #   in Loop: Header=BB1_35 Depth=2
	cmovel	%ebp, %eax
	movq	%r15, %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_35
# BB#37:                                # %gs_type42_read_data.exit377.thread756
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	16(%rsp), %r15          # 8-byte Reload
	jmp	.LBB1_69
.LBB1_39:                               # %if.then.157
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
	movq	448(%r13), %r14
	movq	%rbp, %rbx
	addq	$54, %rbx
	movl	$54, %edx
.LBB1_40:                               # %do.body.i.387
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%rbx, %rsi
	subq	%rbp, %rsi
	movq	%r13, %rdi
	leaq	768(%rsp), %rcx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB1_107
# BB#41:                                # %if.end.i.396
                                        #   in Loop: Header=BB1_40 Depth=2
	cmovel	%ebp, %eax
	leaq	102(%rsp), %rdi
	subq	%rbp, %rdi
	movq	768(%rsp), %rsi
	movq	%rbx, %r12
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movq	%r12, %rbx
	movl	%ebp, %edx
	jne	.LBB1_40
# BB#42:                                # %cleanup.thread
                                        #   in Loop: Header=BB1_27 Depth=1
	movzwl	66(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	movl	%eax, 512(%r13)
	movl	$8, %edx
	leaq	104(%rsp), %rdi
	leaq	84(%rsp), %rsi
	callq	memcpy
	movzwl	98(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	movl	%eax, 516(%r13)
	jmp	.LBB1_48
.LBB1_44:                               # %if.then.196
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
	movq	448(%r13), %r14
	movq	%rbp, %rbx
	addq	$36, %rbx
	movl	$36, %edx
.LBB1_45:                               # %do.body.i.408
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%rbx, %rsi
	subq	%rbp, %rsi
	movq	%r13, %rdi
	leaq	768(%rsp), %rcx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB1_107
# BB#46:                                # %if.end.i.417
                                        #   in Loop: Header=BB1_45 Depth=2
	cmovel	%ebp, %eax
	leaq	84(%rsp), %rdi
	subq	%rbp, %rdi
	movq	768(%rsp), %rsi
	movq	%rbx, %r12
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movq	%r12, %rbx
	movl	%ebp, %edx
	jne	.LBB1_45
# BB#47:                                # %cleanup.218.thread
                                        #   in Loop: Header=BB1_27 Depth=1
	movzwl	82(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	movl	%eax, 520(%r13)
.LBB1_48:                               # %for.inc
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%r15, %rbx
	movq	16(%rsp), %r15          # 8-byte Reload
	jmp	.LBB1_69
.LBB1_50:                               # %if.then.224
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%rbp, 528(%r13)
	addq	$12, %r14
	movq	%r14, %rdi
	callq	get_u32_msb
	movl	%eax, 536(%r13)
	jmp	.LBB1_69
.LBB1_52:                               # %if.then.238
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%rbp, 568(%r13)
	addq	$12, %r14
	movq	%r14, %rdi
	callq	get_u32_msb
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB1_69
.LBB1_54:                               # %if.then.245
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	448(%r13), %r14
	movq	%rbp, %rbx
	addq	$30, %rbx
	movl	$30, %edx
.LBB1_55:                               # %do.body.i.429
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%rbx, %rsi
	subq	%rbp, %rsi
	movq	%r13, %rdi
	leaq	768(%rsp), %rcx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB1_107
# BB#56:                                # %if.end.i.438
                                        #   in Loop: Header=BB1_55 Depth=2
	cmovel	%ebp, %eax
	leaq	78(%rsp), %rdi
	subq	%rbp, %rdi
	movq	768(%rsp), %rsi
	movq	%rbx, %r12
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movq	%r12, %rbx
	movl	%ebp, %edx
	jne	.LBB1_55
# BB#57:                                # %cleanup.310.thread
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	52(%rsp), %eax
	movl	%eax, %esi
	shll	$8, %esi
	movl	%eax, %edi
	shrl	$8, %edi
	movzbl	%dil, %r8d
	shrl	$24, %eax
	movq	56(%rsp), %rbx
	movl	%ebx, %ebp
	shll	$8, %ebp
	movzbl	%bh, %edx  # NOREX
	movq	%rbx, %rcx
	shrq	$24, %rcx
	movd	%edi, %xmm0
	movd	%ecx, %xmm1
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movd	%esi, %xmm1
	movd	%ebp, %xmm2
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pand	.LCPI1_0(%rip), %xmm1
	shrq	$40, %rbx
	movzbl	%bl, %ecx
	movd	%eax, %xmm0
	movd	%ecx, %xmm2
	punpckldq	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movd	%r8d, %xmm2
	movd	%edx, %xmm3
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	por	%xmm1, %xmm2
	movdqu	%xmm2, 596(%r13)
	movzwl	64(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	movl	%eax, 612(%r13)
	movq	24(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB1_69
.LBB1_59:                               # %if.then.316
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%rbp, 576(%r13)
	jmp	.LBB1_69
.LBB1_61:                               # %if.then.321
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
	movq	448(%r13), %r14
	movq	%rbp, %rbx
	addq	$36, %rbx
	movl	$36, %edx
.LBB1_62:                               # %do.body.i.450
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%rbx, %rsi
	subq	%rbp, %rsi
	movq	%r13, %rdi
	leaq	768(%rsp), %rcx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB1_107
# BB#63:                                # %if.end.i.459
                                        #   in Loop: Header=BB1_62 Depth=2
	cmovel	%ebp, %eax
	leaq	84(%rsp), %rdi
	subq	%rbp, %rdi
	movq	768(%rsp), %rsi
	movq	%rbx, %r12
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movq	%r12, %rbx
	movl	%ebp, %edx
	jne	.LBB1_62
# BB#64:                                # %cleanup.345.thread
                                        #   in Loop: Header=BB1_27 Depth=1
	movzwl	82(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	movl	%eax, 544(%r13)
	jmp	.LBB1_48
.LBB1_66:                               # %if.then.351
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	%rbp, 552(%r13)
	addq	$12, %r14
	movq	%r14, %rdi
	callq	get_u32_msb
	movl	%eax, 560(%r13)
.LBB1_69:                               # %for.inc
                                        #   in Loop: Header=BB1_27 Depth=1
	incq	%r15
	cmpq	%rbx, %r15
	jb	.LBB1_27
	jmp	.LBB1_70
.LBB1_6:                                # %if.then.11
	movq	16(%r13), %r14
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%r13), %rdi
	addq	$272, %r13              # imm = 0x110
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	movq	%r13, %rcx
	callq	errprintf
	movl	$-10, %eax
.LBB1_107:                              # %cleanup.800
	addq	$776, %rsp              # imm = 0x308
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_25:                               # %do.end.90.for.end_crit_edge
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB1_70:                               # %for.end
	movl	516(%r13), %ecx
	incl	%ecx
	movq	32(%rsp), %rbx          # 8-byte Reload
	shrq	%cl, %rbx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leal	(%rax,%rbx), %r15d
	xorl	%eax, %eax
	testq	%rbx, %rbx
	cmovnel	%r15d, %eax
	movl	%eax, 592(%r13)
	cmpl	596(%r13), %eax
	jbe	.LBB1_96
# BB#71:                                # %if.then.397
	movl	320(%r13), %eax
	testl	%eax, %eax
	je	.LBB1_74
# BB#72:                                # %if.then.400
	cmpl	$48, %eax
	movl	$48, %ecx
	cmovbel	%eax, %ecx
	leaq	272(%r13), %rsi
	jmp	.LBB1_73
.LBB1_74:                               # %if.else.421
	movl	372(%r13), %eax
	testl	%eax, %eax
	je	.LBB1_76
# BB#75:                                # %if.then.424
	cmpl	$48, %eax
	movl	$48, %ecx
	cmovbel	%eax, %ecx
	leaq	324(%r13), %rsi
.LBB1_73:                               # %if.end.450
	movslq	%ecx, %rbp
	leaq	48(%rsp), %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, 48(%rsp,%rbp)
.LBB1_77:                               # %if.end.450
	movq	16(%r13), %r14
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%r13), %rdi
	movl	592(%r13), %edx
	incl	%edx
	movl	596(%r13), %ecx
	leaq	48(%rsp), %r8
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	596(%r13), %eax
	leal	1(%rax), %ecx
	cmpq	%rcx, %rbx
	jbe	.LBB1_95
# BB#78:                                # %for.cond.471.preheader
	cmpl	%eax, %r15d
	movl	%r15d, %edx
	movl	%r15d, 24(%rsp)         # 4-byte Spill
	jbe	.LBB1_93
# BB#79:                                # %for.body.476.lr.ph
	leaq	768(%rsp), %r15
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, %edx
.LBB1_80:                               # %for.body.476
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_82 Depth 2
                                        #     Child Loop BB1_87 Depth 2
	cmpl	$0, 516(%r13)
	movq	568(%r13), %rax
	je	.LBB1_86
# BB#81:                                # %if.then.i
                                        #   in Loop: Header=BB1_80 Depth=1
	leal	(,%rdx,4), %ecx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	448(%r13), %r14
	movq	%r13, %r12
	leaq	4(%rcx,%rax), %r13
	movl	$4, %edx
	.align	16, 0x90
.LBB1_82:                               # %do.body.i.i
                                        #   Parent Loop BB1_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%r13, %rsi
	subq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB1_83
# BB#84:                                # %if.end.i.i
                                        #   in Loop: Header=BB1_82 Depth=2
	cmovel	%ebp, %eax
	leaq	768(%rsp), %rdi
	subq	%rbp, %rdi
	movq	768(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_82
# BB#85:                                # %cond.false.i
                                        #   in Loop: Header=BB1_80 Depth=1
	leaq	764(%rsp), %rdi
	callq	get_u32_msb
	jmp	.LBB1_90
.LBB1_86:                               # %if.else.i
                                        #   in Loop: Header=BB1_80 Depth=1
	leal	(%rdx,%rdx), %ecx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	448(%r13), %r14
	movq	%r13, %r12
	leaq	2(%rcx,%rax), %r13
	movl	$2, %edx
.LBB1_87:                               # %do.body.i.647
                                        #   Parent Loop BB1_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%r13, %rsi
	subq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB1_83
# BB#88:                                # %if.end.i.656
                                        #   in Loop: Header=BB1_87 Depth=2
	cmovel	%ebp, %eax
	leaq	766(%rsp), %rdi
	subq	%rbp, %rdi
	movq	768(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_87
# BB#89:                                # %cond.false.15.i
                                        #   in Loop: Header=BB1_80 Depth=1
	movzbl	764(%rsp), %ecx
	shlq	$8, %rcx
	movzbl	765(%rsp), %eax
	orq	%rcx, %rax
	addq	%rax, %rax
	jmp	.LBB1_90
.LBB1_83:                               # %gs_type42_read_data.exit.thread.i
                                        #   in Loop: Header=BB1_80 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
.LBB1_90:                               # %get_glyph_offset.exit
                                        #   in Loop: Header=BB1_80 Depth=1
	movq	32(%rsp), %rdx          # 8-byte Reload
	cmpq	40(%rsp), %rax          # 8-byte Folded Reload
	movq	%r12, %r13
	jb	.LBB1_92
# BB#91:                                # %for.inc.482
                                        #   in Loop: Header=BB1_80 Depth=1
	decl	%edx
	movl	596(%r13), %eax
	cmpl	%eax, %edx
	ja	.LBB1_80
	jmp	.LBB1_93
.LBB1_76:                               # %if.else.447
	movb	$0, 48(%rsp)
	jmp	.LBB1_77
.LBB1_92:                               # %get_glyph_offset.exit.for.end.483_crit_edge
	movl	596(%r13), %eax
.LBB1_93:                               # %for.end.483
	cmpl	%eax, %edx
	jbe	.LBB1_95
# BB#94:                                # %if.then.488
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 596(%r13)
	movl	%eax, 592(%r13)
.LBB1_95:                               # %if.end.496
	movl	%eax, 592(%r13)
	incl	%eax
	movq	%rax, %rbx
.LBB1_96:                               # %if.end.505
	movl	$0, 632(%r13)
	movl	$0, 636(%r13)
	movq	$gs_type42_glyph_outline, 232(%r13)
	movq	$gs_type42_glyph_info, 224(%r13)
	movq	$gs_type42_enumerate_glyph, 216(%r13)
	movq	$gs_type42_font_info, 184(%r13)
	movq	$default_get_glyph_index, 464(%r13)
	movq	$default_get_outline, 472(%r13)
	movq	$gs_type42_default_get_metrics, 480(%r13)
	cmpl	$11, 128(%r13)
	jne	.LBB1_108
# BB#97:                                # %land.lhs.true.517
	cmpl	$0, 32(%r13)
	je	.LBB1_108
# BB#98:                                # %if.then.519
	movq	$0, 616(%r13)
	jmp	.LBB1_99
.LBB1_108:                              # %if.else.521
	movq	16(%r13), %rdi
	movl	$4, %edx
	movl	$.L.str.16, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 616(%r13)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB1_107
# BB#109:                               # %if.end.535
	movl	$gs_len_glyphs_release, %esi
	movq	%r13, %rdi
	movq	%r13, %rdx
	callq	gs_font_notify_register
	testl	%eax, %eax
	js	.LBB1_107
# BB#110:                               # %if.end.540
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 516(%r13)
	movq	448(%r13), %r15
	movq	%r13, %r12
	movq	568(%r12), %r13
	je	.LBB1_116
# BB#111:                               # %if.then.i.474
	addq	$4, %r13
	movl	$4, %edx
	leaq	48(%rsp), %r14
.LBB1_112:                              # %do.body.i.i.480
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebp
	movq	%r13, %rsi
	subq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%r14, %rcx
	callq	*%r15
	testl	%eax, %eax
	js	.LBB1_113
# BB#114:                               # %if.end.i.i.490
                                        #   in Loop: Header=BB1_112 Depth=1
	cmovel	%ebp, %eax
	leaq	768(%rsp), %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_112
# BB#115:                               # %cond.false.i.492
	leaq	764(%rsp), %rdi
	callq	get_u32_msb
	jmp	.LBB1_121
.LBB1_116:                              # %if.else.i.495
	addq	$2, %r13
	movl	$2, %edx
	leaq	48(%rsp), %r14
.LBB1_117:                              # %do.body.i.668
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebp
	movq	%r13, %rsi
	subq	%rbp, %rsi
	movq	%r12, %rdi
	movq	%r14, %rcx
	callq	*%r15
	testl	%eax, %eax
	js	.LBB1_118
# BB#119:                               # %if.end.i.677
                                        #   in Loop: Header=BB1_117 Depth=1
	cmovel	%ebp, %eax
	leaq	766(%rsp), %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_117
# BB#120:                               # %cond.false.15.i.502
	movzbl	764(%rsp), %ecx
	shlq	$8, %rcx
	movzbl	765(%rsp), %eax
	orq	%rcx, %rax
	addq	%rax, %rax
	jmp	.LBB1_121
.LBB1_113:                              # %gs_type42_read_data.exit.thread.i.481
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB1_121
.LBB1_118:                              # %gs_type42_read_data.exit679.thread
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
.LBB1_121:                              # %get_glyph_offset.exit505
	cmpq	$2, 32(%rsp)            # 8-byte Folded Reload
	movq	%r12, %r13
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	jb	.LBB1_99
# BB#122:                               # %for.body.546.lr.ph
	movl	$1, %r15d
	leaq	-2147483647(%rcx), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
.LBB1_123:                              # %for.body.546
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_125 Depth 2
                                        #     Child Loop BB1_130 Depth 2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cmpl	$0, 516(%r13)
	movq	568(%r13), %rax
	je	.LBB1_129
# BB#124:                               # %if.then.i.517
                                        #   in Loop: Header=BB1_123 Depth=1
	leal	(,%r15,4), %ecx
	movq	448(%r13), %r12
	movq	%r13, %r14
	leaq	4(%rcx,%rax), %r13
	movl	$4, %edx
	.align	16, 0x90
.LBB1_125:                              # %do.body.i.i.523
                                        #   Parent Loop BB1_123 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%r13, %rsi
	subq	%rbp, %rsi
	movq	%r14, %rdi
	leaq	48(%rsp), %rcx
	callq	*%r12
	testl	%eax, %eax
	js	.LBB1_126
# BB#127:                               # %if.end.i.i.533
                                        #   in Loop: Header=BB1_125 Depth=2
	cmovel	%ebp, %eax
	leaq	768(%rsp), %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_125
# BB#128:                               # %cond.false.i.535
                                        #   in Loop: Header=BB1_123 Depth=1
	leaq	764(%rsp), %rdi
	callq	get_u32_msb
	jmp	.LBB1_134
.LBB1_129:                              # %if.else.i.541
                                        #   in Loop: Header=BB1_123 Depth=1
	leal	(%r15,%r15), %ecx
	movq	448(%r13), %r12
	movq	%r13, %r14
	leaq	2(%rcx,%rax), %r13
	movl	$2, %edx
.LBB1_130:                              # %do.body.i.689
                                        #   Parent Loop BB1_123 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%r13, %rsi
	subq	%rbp, %rsi
	movq	%r14, %rdi
	leaq	48(%rsp), %rcx
	callq	*%r12
	testl	%eax, %eax
	js	.LBB1_131
# BB#132:                               # %if.end.i.698
                                        #   in Loop: Header=BB1_130 Depth=2
	cmovel	%ebp, %eax
	leaq	766(%rsp), %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_130
# BB#133:                               # %cond.false.15.i.548
                                        #   in Loop: Header=BB1_123 Depth=1
	movzbl	764(%rsp), %ecx
	shlq	$8, %rcx
	movzbl	765(%rsp), %eax
	orq	%rcx, %rax
	addq	%rax, %rax
	jmp	.LBB1_134
.LBB1_126:                              # %gs_type42_read_data.exit.thread.i.524
                                        #   in Loop: Header=BB1_123 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB1_134
.LBB1_131:                              # %gs_type42_read_data.exit700.thread
                                        #   in Loop: Header=BB1_123 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
.LBB1_134:                              # %get_glyph_offset.exit551
                                        #   in Loop: Header=BB1_123 Depth=1
	cmpq	40(%rsp), %rax          # 8-byte Folded Reload
	movq	%r14, %r13
	movq	32(%rsp), %rsi          # 8-byte Reload
	ja	.LBB1_137
# BB#135:                               # %get_glyph_offset.exit551
                                        #   in Loop: Header=BB1_123 Depth=1
	movq	%rax, %rcx
	subq	24(%rsp), %rcx          # 8-byte Folded Reload
	cmpq	16(%rsp), %rcx          # 8-byte Folded Reload
	ja	.LBB1_137
# BB#136:                               # %if.end.556
                                        #   in Loop: Header=BB1_123 Depth=1
	leal	-1(%r15), %edx
	movq	616(%r13), %rdi
	movl	%ecx, (%rdi,%rdx,4)
	incl	%r15d
	cmpq	%rsi, %r15
	jb	.LBB1_123
	jmp	.LBB1_99
.LBB1_137:                              # %if.then.569
	movq	16(%r13), %rdi
	movl	$16, %edx
	movl	$.L.str.17, %ecx
	callq	*88(%rdi)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movl	$-25, %eax
	je	.LBB1_107
# BB#138:                               # %if.end.579
	movl	$0, 8(%rcx)
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	cmpl	$0, 516(%r13)
	movq	448(%r13), %r15
	movq	568(%r13), %r12
	je	.LBB1_144
# BB#139:                               # %if.then.i.560
	addq	$4, %r12
	movl	$4, %edx
	leaq	48(%rsp), %r14
.LBB1_140:                              # %do.body.i.i.566
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebp
	movq	%r12, %rsi
	subq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%r14, %rcx
	callq	*%r15
	testl	%eax, %eax
	js	.LBB1_141
# BB#142:                               # %if.end.i.i.576
                                        #   in Loop: Header=BB1_140 Depth=1
	cmovel	%ebp, %eax
	leaq	768(%rsp), %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_140
# BB#143:                               # %cond.false.i.578
	leaq	764(%rsp), %rdi
	callq	get_u32_msb
	jmp	.LBB1_148
.LBB1_144:                              # %if.else.i.581
	addq	$2, %r12
	movl	$2, %edx
	leaq	48(%rsp), %r14
.LBB1_145:                              # %do.body.i.710
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebp
	movq	%r12, %rsi
	subq	%rbp, %rsi
	movq	%r13, %rdi
	movq	%r14, %rcx
	callq	*%r15
	testl	%eax, %eax
	js	.LBB1_141
# BB#146:                               # %if.end.i.719
                                        #   in Loop: Header=BB1_145 Depth=1
	cmovel	%ebp, %eax
	leaq	766(%rsp), %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_145
# BB#147:                               # %cond.false.15.i.588
	movzbl	764(%rsp), %ecx
	shlq	$8, %rcx
	movzbl	765(%rsp), %eax
	orq	%rcx, %rax
	addq	%rax, %rax
	jmp	.LBB1_148
.LBB1_141:                              # %gs_type42_read_data.exit.thread.i.567
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
.LBB1_148:                              # %for.body.587.lr.ph
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rax, (%rcx)
	leaq	16(%rcx), %rcx
	movl	$1, %r12d
	xorl	%eax, %eax
.LBB1_149:                              # %for.body.587
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_151 Depth 2
                                        #     Child Loop BB1_156 Depth 2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%r12d, 8(%rcx)
	cmpl	$0, 516(%r13)
	movq	568(%r13), %rax
	je	.LBB1_155
# BB#150:                               # %if.then.i.603
                                        #   in Loop: Header=BB1_149 Depth=1
	leal	(,%r12,4), %ecx
	movq	%r13, %r15
	movq	448(%r15), %r13
	leaq	4(%rcx,%rax), %r14
	movl	$4, %edx
.LBB1_151:                              # %do.body.i.i.609
                                        #   Parent Loop BB1_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%r14, %rsi
	subq	%rbp, %rsi
	movq	%r15, %rdi
	leaq	48(%rsp), %rcx
	callq	*%r13
	testl	%eax, %eax
	js	.LBB1_152
# BB#153:                               # %if.end.i.i.619
                                        #   in Loop: Header=BB1_151 Depth=2
	cmovel	%ebp, %eax
	leaq	768(%rsp), %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_151
# BB#154:                               # %cond.false.i.621
                                        #   in Loop: Header=BB1_149 Depth=1
	leaq	764(%rsp), %rdi
	callq	get_u32_msb
	jmp	.LBB1_159
.LBB1_155:                              # %if.else.i.627
                                        #   in Loop: Header=BB1_149 Depth=1
	leal	(%r12,%r12), %ecx
	movq	448(%r13), %r14
	movq	%r13, %r15
	leaq	2(%rcx,%rax), %r13
	movl	$2, %edx
.LBB1_156:                              # %do.body.i.731
                                        #   Parent Loop BB1_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebp
	movq	%r13, %rsi
	subq	%rbp, %rsi
	movq	%r15, %rdi
	leaq	48(%rsp), %rcx
	callq	*%r14
	testl	%eax, %eax
	js	.LBB1_152
# BB#157:                               # %if.end.i.740
                                        #   in Loop: Header=BB1_156 Depth=2
	cmovel	%ebp, %eax
	leaq	766(%rsp), %rdi
	subq	%rbp, %rdi
	movq	48(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %ebp
	movl	%ebp, %edx
	jne	.LBB1_156
# BB#158:                               # %cond.false.15.i.634
                                        #   in Loop: Header=BB1_149 Depth=1
	movzbl	764(%rsp), %ecx
	shlq	$8, %rcx
	movzbl	765(%rsp), %eax
	orq	%rcx, %rax
	addq	%rax, %rax
	jmp	.LBB1_159
.LBB1_152:                              # %gs_type42_read_data.exit.thread.i.610
                                        #   in Loop: Header=BB1_149 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
.LBB1_159:                              # %get_glyph_offset.exit637
                                        #   in Loop: Header=BB1_149 Depth=1
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%rax, (%rdx)
	movl	%eax, %ecx
	movq	24(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %ecx
	movl	%ecx, -4(%rdx)
	incl	%r12d
	leaq	16(%rdx), %rcx
	cmpq	32(%rsp), %r12          # 8-byte Folded Reload
	movq	%r15, %r13
	jb	.LBB1_149
# BB#160:                               # %for.end.599
	movl	$0, 12(%rdx)
	movl	$16, %edx
	movl	$gs_type42_font_init_compare, %ecx
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%r15, %rdi
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rsi
	callq	qsort
	leaq	1(%r14), %rax
	movq	%r14, %rcx
	shlq	$4, %rcx
	leaq	-16(%rcx,%r15), %rcx
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
.LBB1_161:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$1, %rax
	je	.LBB1_162
# BB#163:                               # %land.rhs
                                        #   in Loop: Header=BB1_161 Depth=1
	decq	%rax
	movq	40(%rsp), %rdx          # 8-byte Reload
	cmpq	%rdx, (%rcx)
	leaq	-16(%rcx), %rcx
	ja	.LBB1_161
# BB#164:                               # %if.end.613
	testl	%eax, %eax
	je	.LBB1_168
# BB#165:                               # %for.body.618.lr.ph
	leal	-1(%rax), %ecx
	shlq	$4, %rcx
	leaq	12(%rcx,%r15), %rcx
	movl	%eax, %edx
	negl	%edx
.LBB1_166:                              # %for.body.618
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edi
	movslq	-4(%rcx), %rsi
	cmpl	$2001, %edi             # imm = 0x7D1
	jb	.LBB1_172
# BB#167:                               # %if.then.628
                                        #   in Loop: Header=BB1_166 Depth=1
	movq	-12(%rcx), %r8
	movq	40(%rsp), %rdi          # 8-byte Reload
	subl	%r8d, %edi
	movq	616(%r13), %rbp
	movl	%edi, (%rbp,%rsi,4)
	movq	%r8, 40(%rsp)           # 8-byte Spill
	jmp	.LBB1_173
.LBB1_172:                              # %if.else.637
                                        #   in Loop: Header=BB1_166 Depth=1
	movq	616(%r13), %rbp
	movl	%edi, (%rbp,%rsi,4)
	movq	-12(%rcx), %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
.LBB1_173:                              # %if.end.644
                                        #   in Loop: Header=BB1_166 Depth=1
	addq	$-16, %rcx
	incl	%edx
	jne	.LBB1_166
.LBB1_168:                              # %for.cond.648.preheader
	andq	%rax, %rbx
	cmpq	%r14, %rbx
	jae	.LBB1_171
# BB#169:                               # %for.body.652.lr.ph
	movq	616(%r13), %rcx
	incl	%eax
.LBB1_170:                              # %for.body.652
                                        # =>This Inner Loop Header: Depth=1
	shlq	$4, %rbx
	movslq	8(%r15,%rbx), %rdx
	movl	$0, (%rcx,%rdx,4)
	movl	%eax, %ebx
	incl	%eax
	cmpq	%r14, %rbx
	jb	.LBB1_170
.LBB1_171:                              # %cleanup.666
	movq	16(%r13), %rdi
	movl	$.L.str.17, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
.LBB1_99:                               # %if.end.674
	movsd	376(%r13), %xmm0        # xmm0 = mem[0],zero
	ucomisd	392(%r13), %xmm0
	jae	.LBB1_105
# BB#100:                               # %lor.lhs.false.679
	movsd	384(%r13), %xmm1        # xmm1 = mem[0],zero
	ucomisd	.LCPI1_1(%rip), %xmm1
	ja	.LBB1_105
# BB#101:                               # %lor.lhs.false.679
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	ja	.LBB1_105
# BB#102:                               # %lor.lhs.false.679
	ucomisd	.LCPI1_1(%rip), %xmm0
	ja	.LBB1_105
# BB#103:                               # %lor.lhs.false.679
	ucomisd	%xmm0, %xmm2
	ja	.LBB1_105
# BB#104:                               # %lor.lhs.false.679
	ucomisd	400(%r13), %xmm1
	jb	.LBB1_106
.LBB1_105:                              # %if.then.711
	movl	512(%r13), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	movzbl	104(%rsp), %eax
	shll	$8, %eax
	movzbl	105(%rsp), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 376(%r13)
	movzbl	106(%rsp), %eax
	shll	$8, %eax
	movzbl	107(%rsp), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 384(%r13)
	movzbl	108(%rsp), %eax
	shll	$8, %eax
	movzbl	109(%rsp), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 392(%r13)
	movzbl	110(%rsp), %eax
	shll	$8, %eax
	movzbl	111(%rsp), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 400(%r13)
.LBB1_106:                              # %if.end.781
	movl	$0, 632(%r13)
	movl	$0, 636(%r13)
	movq	$default_get_glyph_index, 464(%r13)
	movq	$default_get_outline, 472(%r13)
	movq	$gs_type42_default_get_metrics, 480(%r13)
	movq	$gs_type42_glyph_outline, 232(%r13)
	movq	$gs_type42_glyph_info, 224(%r13)
	movq	$gs_type42_enumerate_glyph, 216(%r13)
	movq	$gs_type42_font_info, 184(%r13)
	xorl	%eax, %eax
	jmp	.LBB1_107
.LBB1_162:
	movl	$-10, %eax
	jmp	.LBB1_107
.Lfunc_end1:
	.size	gs_type42_font_init, .Lfunc_end1-gs_type42_font_init
	.cfi_endproc

	.globl	gs_gsub_release
	.align	16, 0x90
	.type	gs_gsub_release,@function
gs_gsub_release:                        # @gs_gsub_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$gs_gsub_release, %esi
	movq	%rbx, %rdx
	callq	gs_font_notify_unregister
	movq	16(%rbx), %rdi
	movq	640(%rbx), %rsi
	movl	$.L.str.19, %edx
	callq	*24(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	gs_gsub_release, .Lfunc_end2-gs_gsub_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_type42_glyph_outline
	.align	16, 0x90
	.type	gs_type42_glyph_outline,@function
gs_type42_glyph_outline:                # @gs_type42_glyph_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 224
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movl	%esi, %ebx
	movq	%rdi, %r13
	movq	%rbp, %rax
	shrq	$30, %rax
	cmpq	$3, %rax
	jb	.LBB3_2
# BB#1:                                 # %if.then
	leal	1073741824(%rbp), %eax
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*464(%r13)
	cmpq	$0, 648(%r13)
	je	.LBB3_3
# BB#4:                                 # %if.then.2
	movq	488(%r13), %r8
	testq	%r8, %r8
	je	.LBB3_6
# BB#5:                                 # %if.then.6
	movq	%r13, %rdi
	movl	%eax, %esi
	movl	%ebx, %edx
	movq	%rbp, %rcx
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	callq	*%r8
	jmp	.LBB3_7
.LBB3_3:
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	jmp	.LBB3_8
.LBB3_6:                                # %if.else.10
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	movl	%eax, %esi
	movl	%ebx, %edx
	callq	gs_type42_substitute_glyph_index_vertical
.LBB3_7:                                # %if.end.13
	movl	%eax, 44(%rsp)          # 4-byte Spill
.LBB3_8:                                # %if.end.13
	movq	%r14, %rbp
	leaq	48(%rsp), %r8
	movl	$gs_type42_glyph_outline.log2_scale, %edx
	movl	$1, %ecx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	gx_lookup_fm_pair
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_13
# BB#9:                                 # %if.end.18
	testq	%r12, %r12
	movl	$gs_type42_glyph_outline.imat, %r14d
	cmovneq	%r12, %r14
	leaq	160(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_path_current_point
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_13
# BB#10:                                # %lor.lhs.false
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	48(%rsp), %r12
	movq	(%r12), %rbx
	movq	88(%r12), %rdi
	movq	%rbx, %rsi
	callq	gx_ttfReader__set_font
	movq	80(%r12), %rdi
	movq	88(%r12), %rsi
	movq	%rbp, (%rsp)
	movl	$1, 8(%rsp)
	movl	$gs_type42_glyph_outline.log2_scale, %r9d
	movq	%rbx, %rdx
	movl	44(%rsp), %ecx          # 4-byte Reload
	movq	%r14, %r8
	callq	gx_ttf_outline
	movl	%eax, %r15d
	movq	88(%r12), %rdi
	movl	28(%rsp), %ebx          # 4-byte Reload
	xorl	%esi, %esi
	callq	gx_ttfReader__set_font
	testl	%r15d, %r15d
	js	.LBB3_13
# BB#11:                                # %lor.lhs.false.29
	movl	$1, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	leaq	56(%rsp), %r8
	movq	%r13, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	*224(%r13)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB3_13
# BB#12:                                # %if.end.34
	movslq	%ebx, %rax
	shlq	$4, %rax
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	64(%rsp,%rax), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	addl	160(%rsp), %esi
	mulsd	72(%rsp,%rax), %xmm0
	cvttsd2si	%xmm0, %edx
	addl	164(%rsp), %edx
	movq	%rbp, %rdi
	callq	gx_path_add_point
	movl	%eax, %r15d
.LBB3_13:                               # %cleanup
	movl	%r15d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gs_type42_glyph_outline, .Lfunc_end3-gs_type42_glyph_outline
	.cfi_endproc

	.globl	gs_type42_glyph_info
	.align	16, 0x90
	.type	gs_type42_glyph_info,@function
gs_type42_glyph_info:                   # @gs_type42_glyph_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 48
.Ltmp46:
	.cfi_offset %rbx, -48
.Ltmp47:
	.cfi_offset %r12, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	%rbx, %rax
	shrq	$30, %rax
	cmpq	$3, %rax
	jb	.LBB4_2
# BB#1:                                 # %if.then
	leal	1073741824(%rbx), %r9d
	jmp	.LBB4_8
.LBB4_2:                                # %if.else
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*464(%rbp)
	movl	%eax, %r9d
	cmpl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	jne	.LBB4_3
# BB#9:                                 # %cleanup
	movl	$-21, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_3:                                # %if.end
	cmpq	$0, 648(%rbp)
	je	.LBB4_8
# BB#4:                                 # %if.then.6
	testb	$-126, %r12b
	setne	%al
	movzbl	%al, %edx
	movq	488(%rbp), %rax
	movq	%rbp, %rdi
	movl	%r9d, %esi
	testq	%rax, %rax
	je	.LBB4_6
# BB#5:                                 # %if.then.11
	movq	%rbx, %rcx
	callq	*%rax
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.15
	callq	gs_type42_substitute_glyph_index_vertical
.LBB4_7:                                # %if.end.19
	movl	%eax, %r9d
.LBB4_8:                                # %if.end.19
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	movq	%r14, %r8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_type42_glyph_info_by_gid # TAILCALL
.Lfunc_end4:
	.size	gs_type42_glyph_info, .Lfunc_end4-gs_type42_glyph_info
	.cfi_endproc

	.globl	gs_type42_enumerate_glyph
	.align	16, 0x90
	.type	gs_type42_enumerate_glyph,@function
gs_type42_enumerate_glyph:              # @gs_type42_enumerate_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 96
.Ltmp57:
	.cfi_offset %rbx, -48
.Ltmp58:
	.cfi_offset %r12, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	(%r15), %ebp
	incl	%ebp
	movl	%ebp, (%r15)
	cmpl	592(%rbx), %ebp
	ja	.LBB5_6
# BB#1:                                 # %while.body.lr.ph
	leaq	(%rsp), %r12
	.align	16, 0x90
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%ebp
	movq	16(%rbx), %rax
	movq	%rax, 40(%rsp)
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	*472(%rbx)
	testl	%eax, %eax
	js	.LBB5_8
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpq	$0, (%rsp)
	jne	.LBB5_4
# BB#5:                                 # %cleanup
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	(%r15), %ebp
	incl	%ebp
	movl	%ebp, (%r15)
	cmpl	592(%rbx), %ebp
	jbe	.LBB5_2
.LBB5_6:                                # %while.end
	movl	$0, (%r15)
	jmp	.LBB5_7
.LBB5_4:                                # %if.end.7
	movl	%ebp, %eax
	movl	$3221225472, %ecx       # imm = 0xC0000000
	addq	%rax, %rcx
	movq	%rcx, (%r14)
	leaq	(%rsp), %rdi
	movl	$.L.str.22, %esi
	callq	gs_glyph_data_free
.LBB5_7:                                # %cleanup.10
	xorl	%eax, %eax
.LBB5_8:                                # %cleanup.10
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_type42_enumerate_glyph, .Lfunc_end5-gs_type42_enumerate_glyph
	.cfi_endproc

	.globl	gs_type42_font_info
	.align	16, 0x90
	.type	gs_type42_font_info,@function
gs_type42_font_info:                    # @gs_type42_font_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -32
.Ltmp66:
	.cfi_offset %r14, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebp
	movq	%rdi, %rbx
	callq	gs_default_font_info
	testl	%eax, %eax
	js	.LBB6_1
# BB#2:                                 # %if.end
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gs_truetype_font_info   # TAILCALL
.LBB6_1:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gs_type42_font_info, .Lfunc_end6-gs_type42_font_info
	.cfi_endproc

	.align	16, 0x90
	.type	default_get_glyph_index,@function
default_get_glyph_index:                # @default_get_glyph_index
	.cfi_startproc
# BB#0:                                 # %entry
	leal	-2147483648(%rsi), %ecx
	xorl	%eax, %eax
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	cmovnel	%ecx, %eax
	retq
.Lfunc_end7:
	.size	default_get_glyph_index, .Lfunc_end7-default_get_glyph_index
	.cfi_endproc

	.align	16, 0x90
	.type	default_get_outline,@function
default_get_outline:                    # @default_get_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp71:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp74:
	.cfi_def_cfa_offset 96
.Ltmp75:
	.cfi_offset %rbx, -56
.Ltmp76:
	.cfi_offset %r12, -48
.Ltmp77:
	.cfi_offset %r13, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	$-10, %ebp
	cmpl	%esi, 596(%r13)
	jbe	.LBB8_19
# BB#1:                                 # %if.end
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	448(%r13), %r15
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cmpl	$0, 516(%r13)
	movq	568(%r13), %rax
	je	.LBB8_6
# BB#2:                                 # %if.then.i
	leal	(,%rsi,4), %ecx
	movq	%rsi, (%rsp)            # 8-byte Spill
	leaq	4(%rcx,%rax), %r12
	movl	$4, %edx
	leaq	32(%rsp), %rbx
	.align	16, 0x90
.LBB8_3:                                # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r14d
	movq	%r12, %rsi
	subq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rcx
	callq	*%r15
	testl	%eax, %eax
	js	.LBB8_10
# BB#4:                                 # %if.end.i.i
                                        #   in Loop: Header=BB8_3 Depth=1
	cmovel	%r14d, %eax
	leaq	28(%rsp), %rdi
	subq	%r14, %rdi
	movq	32(%rsp), %rsi
	movslq	%eax, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	subl	%ebp, %r14d
	movl	%r14d, %edx
	jne	.LBB8_3
# BB#5:                                 # %cond.false.i
	leaq	24(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jmp	.LBB8_10
.LBB8_6:                                # %if.else.i
	leal	(%rsi,%rsi), %ecx
	movq	%rsi, (%rsp)            # 8-byte Spill
	leaq	2(%rcx,%rax), %rbx
	movl	$2, %edx
	leaq	32(%rsp), %r12
	.align	16, 0x90
.LBB8_7:                                # %do.body.i.45
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r14d
	movq	%rbx, %rsi
	subq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	*%r15
	testl	%eax, %eax
	js	.LBB8_10
# BB#8:                                 # %if.end.i.54
                                        #   in Loop: Header=BB8_7 Depth=1
	cmovel	%r14d, %eax
	leaq	26(%rsp), %rdi
	subq	%r14, %rdi
	movq	32(%rsp), %rsi
	movslq	%eax, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	subl	%ebp, %r14d
	movl	%r14d, %edx
	jne	.LBB8_7
# BB#9:                                 # %cond.false.15.i
	movzbl	24(%rsp), %eax
	shlq	$8, %rax
	movzbl	25(%rsp), %ecx
	orq	%rax, %rcx
	addq	%rcx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
.LBB8_10:                               # %get_glyph_offset.exit
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%eax, %eax
	movq	616(%r13), %rcx
	movl	(%rcx,%rax,4), %r14d
	testl	%r14d, %r14d
	je	.LBB8_11
# BB#12:                                # %if.else
	movq	504(%r13), %rsi
	addq	8(%rsp), %rsi           # 8-byte Folded Reload
	leaq	24(%rsp), %rcx
	movq	%r13, %rdi
	movl	%r14d, %edx
	callq	*%r15
	movl	%eax, %r15d
	testl	%r15d, %r15d
	movl	%r15d, %ebp
	js	.LBB8_19
# BB#13:                                # %if.end.11
	je	.LBB8_18
# BB#14:                                # %if.else.14
	movq	40(%rbx), %rdi
	movl	$.L.str.20, %edx
	movl	%r14d, %esi
	callq	*136(%rdi)
	movq	%rax, %r12
	movl	$-25, %ebp
	testq	%r12, %r12
	je	.LBB8_19
# BB#15:                                # %if.end.19
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r14d, %edx
	movq	%r13, %rcx
	callq	gs_glyph_data_from_string
	movq	24(%rsp), %rsi
	movslq	%r15d, %rbp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	subl	%r15d, %r14d
	addq	%rbp, %r12
	movq	448(%r13), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	8(%rsp), %r15           # 8-byte Reload
	addq	%rbp, %r15
	addq	%r14, %r15
	addq	504(%r13), %r15
	addq	%r14, %r12
	.align	16, 0x90
.LBB8_16:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %ebx
	movq	%r15, %rsi
	subq	%rbx, %rsi
	movq	%r13, %rdi
	movl	%r14d, %edx
	leaq	32(%rsp), %rcx
	callq	*16(%rsp)               # 8-byte Folded Reload
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB8_19
# BB#17:                                # %if.end.i
                                        #   in Loop: Header=BB8_16 Depth=1
	cmovel	%ebx, %ebp
	movq	%r12, %rdi
	subq	%rbx, %rdi
	movq	32(%rsp), %rsi
	movslq	%ebp, %r14
	movq	%r14, %rdx
	callq	memcpy
	xorl	%ebp, %ebp
	subl	%r14d, %ebx
	movl	%ebx, %r14d
	jne	.LBB8_16
	jmp	.LBB8_19
.LBB8_11:                               # %if.then.5
	movq	%rbx, %rdi
	callq	gs_glyph_data_from_null
	xorl	%ebp, %ebp
	jmp	.LBB8_19
.LBB8_18:                               # %cleanup
	movq	24(%rsp), %rsi
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	gs_glyph_data_from_string
.LBB8_19:                               # %cleanup.30
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	default_get_outline, .Lfunc_end8-default_get_outline
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	gs_type42_default_get_metrics
	.align	16, 0x90
	.type	gs_type42_default_get_metrics,@function
gs_type42_default_get_metrics:          # @gs_type42_default_get_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp87:
	.cfi_def_cfa_offset 224
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movl	%edx, %ebx
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	16(%r12), %rax
	movq	%rax, 160(%rsp)
	leaq	120(%rsp), %rdx
	callq	*472(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_31
# BB#1:                                 # %if.end
	movl	%ebx, %eax
	andl	$2, %eax
	testb	$6, %bl
	je	.LBB9_5
# BB#2:                                 # %if.then.4
	cmpl	$10, 128(%rsp)
	jb	.LBB9_4
# BB#3:                                 # %if.then.7
	movl	512(%r12), %ecx
	cvtsi2sdq	%rcx, %xmm1
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	120(%rsp), %rcx
	movzbl	2(%rcx), %edx
	shll	$8, %edx
	movzbl	3(%rcx), %esi
	orl	%edx, %esi
	movswl	%si, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 16(%r13)
	movzbl	4(%rcx), %edx
	shll	$8, %edx
	movzbl	5(%rcx), %esi
	orl	%edx, %esi
	movswl	%si, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 20(%r13)
	movzbl	6(%rcx), %edx
	shll	$8, %edx
	movzbl	7(%rcx), %esi
	orl	%edx, %esi
	movswl	%si, %edx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 24(%r13)
	movzbl	8(%rcx), %edx
	shll	$8, %edx
	movzbl	9(%rcx), %ecx
	orl	%edx, %ecx
	movswl	%cx, %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 28(%r13)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r13)
.LBB9_5:                                # %if.end.79
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB9_30
# BB#6:                                 # %if.then.81
	andl	$1, %ebx
	cmpl	$0, 128(%rsp)
	je	.LBB9_14
# BB#7:                                 # %land.lhs.true.86
	movq	120(%rsp), %rbp
	movzbl	(%rbp), %eax
	shll	$8, %eax
	movzbl	1(%rbp), %ecx
	orl	%eax, %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	jne	.LBB9_14
# BB#8:                                 # %if.then.101
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	leaq	10(%rbp), %rax
	movq	%rax, 104(%rsp)
	leaq	64(%rsp), %r14
	xorl	%esi, %esi
	movl	$36, %edx
	movq	%r14, %rdi
	callq	memset
	movb	12(%rbp), %bl
	movb	13(%rbp), %r15b
	leaq	104(%rsp), %rdi
	leaq	116(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%r12, %r8
	movq	%r14, %r9
	callq	gs_type42_parse_component
	movl	116(%rsp), %eax
	testb	$2, %ah
	jne	.LBB9_12
# BB#9:
	leaq	116(%rsp), %r14
	leaq	64(%rsp), %rbp
	.align	16, 0x90
.LBB9_10:                               # %do.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	$32, %al
	je	.LBB9_13
# BB#11:                                # %do.cond.do.body_crit_edge
                                        #   in Loop: Header=BB9_10 Depth=1
	movq	104(%rsp), %rax
	movb	2(%rax), %bl
	movb	3(%rax), %r15b
	xorl	%ecx, %ecx
	leaq	104(%rsp), %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%r12, %r8
	movq	%rbp, %r9
	callq	gs_type42_parse_component
	movl	116(%rsp), %eax
	testb	$2, %ah
	je	.LBB9_10
.LBB9_12:                               # %cleanup.122
	movzbl	%bl, %eax
	shll	$8, %eax
	movzbl	%r15b, %esi
	orl	%eax, %esi
	movq	%r12, %rdi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	%r13, %rcx
	callq	*480(%r12)
	movl	%eax, %ebp
	jmp	.LBB9_30
.LBB9_13:                               # %cleanup.122.thread
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	48(%rsp), %r14          # 8-byte Reload
.LBB9_14:                               # %if.end.127
	movl	512(%r12), %ecx
	leaq	(%rbx,%rbx,2), %rdx
	movl	$-15, %eax
	cmpl	$0, 536(%r12,%rdx,8)
	je	.LBB9_32
# BB#15:                                # %if.end.i
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	520(%r12,%rdx,8), %ecx
	movq	528(%r12,%rdx,8), %rax
	cmpl	%r14d, %ecx
	jbe	.LBB9_20
# BB#16:                                # %do.body.i
	shll	$2, %r14d
	movq	448(%r12), %rbx
	leaq	4(%r14,%rax), %r15
	movl	$4, %edx
	leaq	64(%rsp), %r14
	.align	16, 0x90
.LBB9_17:                               # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r13d
	movq	%r15, %rsi
	subq	%r13, %rsi
	movq	%r12, %rdi
	movq	%r14, %rcx
	callq	*%rbx
	testl	%eax, %eax
	js	.LBB9_32
# BB#18:                                # %if.end.i.i
                                        #   in Loop: Header=BB9_17 Depth=1
	cmovel	%r13d, %eax
	leaq	108(%rsp), %rdi
	subq	%r13, %rdi
	movq	64(%rsp), %rsi
	movslq	%eax, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	subl	%ebp, %r13d
	movl	%r13d, %edx
	jne	.LBB9_17
# BB#19:                                # %do.end.i
	movzbl	104(%rsp), %eax
	shll	$8, %eax
	movzbl	105(%rsp), %edx
	orl	%eax, %edx
	movzbl	106(%rsp), %ecx
	shll	$8, %ecx
	movzbl	107(%rsp), %eax
	orl	%ecx, %eax
	jmp	.LBB9_27
.LBB9_20:                               # %if.else.i
	leaq	536(%r12,%rdx,8), %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	leal	(%rax,%rcx,4), %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	subl	%ecx, %r14d
	addl	%r14d, %r14d
	movq	%r14, 48(%rsp)          # 8-byte Spill
	leal	-4(%rax,%rcx,4), %eax
	movl	$4294967292, %r15d      # imm = 0xFFFFFFFC
	orq	$3, %r15
	andq	%rax, %r15
	movq	448(%r12), %r13
	addq	$4, %r15
	movl	$4, %edx
	leaq	64(%rsp), %r14
	.align	16, 0x90
.LBB9_21:                               # %do.body.i.55.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebx
	movq	%r15, %rsi
	subq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%r14, %rcx
	callq	*%r13
	testl	%eax, %eax
	js	.LBB9_32
# BB#22:                                # %if.end.i.64.i
                                        #   in Loop: Header=BB9_21 Depth=1
	cmovel	%ebx, %eax
	leaq	108(%rsp), %rdi
	subq	%rbx, %rdi
	movq	64(%rsp), %rsi
	movslq	%eax, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	subl	%ebp, %ebx
	movl	%ebx, %edx
	jne	.LBB9_21
# BB#23:                                # %do.end.43.i
	movzbl	104(%rsp), %eax
	shll	$8, %eax
	movzbl	105(%rsp), %ecx
	orl	%eax, %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	leal	-2(%rax), %r14d
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	%eax, %ecx
	cmovbl	%ecx, %r14d
	addl	28(%rsp), %r14d         # 4-byte Folded Reload
	movq	448(%r12), %r13
	addq	$2, %r14
	movl	$2, %edx
	leaq	64(%rsp), %r15
	.align	16, 0x90
.LBB9_24:                               # %do.body.i.76.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebx
	movq	%r14, %rsi
	subq	%rbx, %rsi
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	*%r13
	testl	%eax, %eax
	js	.LBB9_32
# BB#25:                                # %if.end.i.85.i
                                        #   in Loop: Header=BB9_24 Depth=1
	cmovel	%ebx, %eax
	leaq	118(%rsp), %rdi
	subq	%rbx, %rdi
	movq	64(%rsp), %rsi
	movslq	%eax, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	subl	%ebp, %ebx
	movl	%ebx, %edx
	jne	.LBB9_24
# BB#26:                                # %cleanup.i
	movzbl	116(%rsp), %ecx
	shll	$8, %ecx
	movzbl	117(%rsp), %eax
	orl	%ecx, %eax
	movl	12(%rsp), %edx          # 4-byte Reload
.LBB9_27:                               # %cleanup.cont.83.i
	movq	32(%rsp), %rcx          # 8-byte Reload
	cvtsi2sdq	%rcx, %xmm1
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cwtl
	movq	56(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	$0, %ebp
	jne	.LBB9_28
# BB#29:                                # %if.else.96.i
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rcx)
	movl	$0, 4(%rcx)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 8(%rcx)
	movl	$0, 12(%rcx)
	jmp	.LBB9_30
.LBB9_32:                               # %cleanup.79.thread.i
	movl	%eax, %ebp
.LBB9_30:                               # %done
	leaq	120(%rsp), %rdi
	movl	$.L.str.23, %esi
	callq	gs_glyph_data_free
.LBB9_31:                               # %cleanup.130
	movl	%ebp, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_28:                               # %if.then.84.i
	xorpd	.LCPI9_1(%rip), %xmm0
	movl	$0, (%rcx)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 4(%rcx)
	movl	$0, 8(%rcx)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 12(%rcx)
	jmp	.LBB9_30
.Lfunc_end9:
	.size	gs_type42_default_get_metrics, .Lfunc_end9-gs_type42_default_get_metrics
	.cfi_endproc

	.globl	gs_len_glyphs_release
	.align	16, 0x90
	.type	gs_len_glyphs_release,@function
gs_len_glyphs_release:                  # @gs_len_glyphs_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$gs_len_glyphs_release, %esi
	movq	%rbx, %rdx
	callq	gs_font_notify_unregister
	movq	16(%rbx), %rdi
	movq	616(%rbx), %rsi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end10:
	.size	gs_len_glyphs_release, .Lfunc_end10-gs_len_glyphs_release
	.cfi_endproc

	.align	16, 0x90
	.type	gs_type42_font_init_compare,@function
gs_type42_font_init_compare:            # @gs_type42_font_init_compare
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rcx
	movl	$-1, %eax
	cmpq	%rcx, (%rdi)
	jb	.LBB11_3
# BB#1:                                 # %if.else
	movl	$1, %eax
	ja	.LBB11_3
# BB#2:                                 # %if.else.4
	movl	8(%rdi), %eax
	subl	8(%rsi), %eax
.LBB11_3:                               # %cleanup
	retq
.Lfunc_end11:
	.size	gs_type42_font_init_compare, .Lfunc_end11-gs_type42_font_init_compare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
.LCPI12_1:
	.quad	4571153621781053440     # double 0.00390625
.LCPI12_2:
	.quad	4544132024016830464     # double 6.103515625E-5
	.text
	.globl	gs_type42_parse_component
	.align	16, 0x90
	.type	gs_type42_parse_component,@function
gs_type42_parse_component:              # @gs_type42_parse_component
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 144
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdx, %r12
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
	movq	(%r15), %rbx
	movl	512(%r8), %eax
	movzbl	(%rbx), %ebp
	shll	$8, %ebp
	movzbl	1(%rbx), %r14d
	movl	32(%r9), %ecx
	movl	%ecx, 80(%rsp)
	movups	(%r9), %xmm0
	movupd	16(%r9), %xmm1
	movapd	%xmm1, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	testb	$2, %r14b
	jne	.LBB12_1
# BB#6:                                 # %if.else.52
	testb	$1, %r14b
	jne	.LBB12_7
# BB#10:                                # %if.else.78
	testq	%r13, %r13
	je	.LBB12_12
# BB#11:                                # %if.then.80
	movzbl	4(%rbx), %eax
	movl	%eax, (%r13)
	movzbl	5(%rbx), %eax
	movl	%eax, 4(%r13)
.LBB12_12:                              # %if.end.88
	addq	$6, %rbx
	jmp	.LBB12_13
.LBB12_1:                               # %if.then
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI12_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	testb	$1, %r14b
	movzbl	4(%rbx), %eax
	movzbl	5(%rbx), %ecx
	jne	.LBB12_2
# BB#3:                                 # %if.else
	movsbl	%al, %eax
	movsbl	%cl, %ecx
	addq	$6, %rbx
	jmp	.LBB12_4
.LBB12_7:                               # %if.then.55
	testq	%r13, %r13
	je	.LBB12_9
# BB#8:                                 # %if.then.57
	movzbl	4(%rbx), %eax
	shll	$8, %eax
	movzbl	5(%rbx), %ecx
	orl	%eax, %ecx
	movl	%ecx, (%r13)
	movzbl	6(%rbx), %eax
	shll	$8, %eax
	movzbl	7(%rbx), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	movl	%eax, 4(%r13)
.LBB12_9:                               # %if.end.76
	addq	$8, %rbx
	jmp	.LBB12_13
.LBB12_2:                               # %if.then.6
	shll	$8, %eax
	orl	%eax, %ecx
	movswl	%cx, %eax
	movzbl	6(%rbx), %ecx
	shll	$8, %ecx
	movzbl	7(%rbx), %edx
	orl	%ecx, %edx
	movswl	%dx, %ecx
	addq	$8, %rbx
.LBB12_4:                               # %if.end
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm2, %xmm1
	leaq	16(%rsp), %rsi
	movq	%r9, %rdi
	callq	gs_point_transform2fixed
	movl	16(%rsp), %eax
	movl	%eax, 72(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI12_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 64(%rsp)
	movl	20(%rsp), %eax
	movl	%eax, 76(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 68(%rsp)
	testq	%r13, %r13
	je	.LBB12_13
# BB#5:                                 # %if.then.48
	movq	$-1, (%r13)
.LBB12_13:                              # %if.end.91
	orl	%r14d, %ebp
	testb	$8, %r14b
	jne	.LBB12_14
# BB#15:                                # %if.else.107
	testb	$64, %r14b
	jne	.LBB12_16
# BB#17:                                # %if.else.140
	testb	$-128, %r14b
	movq	8(%rsp), %r14           # 8-byte Reload
	je	.LBB12_20
# BB#18:                                # %if.then.143
	movzbl	(%rbx), %eax
	shll	$8, %eax
	movzbl	1(%rbx), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI12_2(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 24(%rsp)
	movzbl	2(%rbx), %eax
	shll	$8, %eax
	movzbl	3(%rbx), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 28(%rsp)
	movzbl	4(%rbx), %eax
	shll	$8, %eax
	movzbl	5(%rbx), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, 32(%rsp)
	movzbl	6(%rbx), %eax
	shll	$8, %eax
	movzbl	7(%rbx), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 36(%rsp)
	addq	$8, %rbx
	jmp	.LBB12_19
.LBB12_14:                              # %if.then.94
	movzbl	(%rbx), %eax
	shll	$8, %eax
	movzbl	1(%rbx), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI12_2(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 36(%rsp)
	movss	%xmm0, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 28(%rsp)
	addq	$2, %rbx
	movq	8(%rsp), %r14           # 8-byte Reload
	jmp	.LBB12_19
.LBB12_16:                              # %if.then.110
	movzbl	(%rbx), %eax
	shll	$8, %eax
	movzbl	1(%rbx), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI12_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%rsp)
	movzbl	2(%rbx), %eax
	shll	$8, %eax
	movzbl	3(%rbx), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 36(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 28(%rsp)
	addq	$4, %rbx
	movq	8(%rsp), %r14           # 8-byte Reload
.LBB12_19:                              # %if.end.202
	movq	$0, 40(%rsp)
	leaq	24(%rsp), %rdi
	leaq	48(%rsp), %rsi
	movq	%rsi, %rdx
	callq	gs_matrix_multiply
.LBB12_20:                              # %no_scale
	movq	%rbx, (%r15)
	movl	%ebp, (%r14)
	movl	80(%rsp), %eax
	movl	%eax, 32(%r12)
	movaps	48(%rsp), %xmm0
	movaps	64(%rsp), %xmm1
	movups	%xmm1, 16(%r12)
	movups	%xmm0, (%r12)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gs_type42_parse_component, .Lfunc_end12-gs_type42_parse_component
	.cfi_endproc

	.globl	gs_type42_get_outline_from_TT_file
	.align	16, 0x90
	.type	gs_type42_get_outline_from_TT_file,@function
gs_type42_get_outline_from_TT_file:     # @gs_type42_get_outline_from_TT_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp114:
	.cfi_def_cfa_offset 64
.Ltmp115:
	.cfi_offset %rbx, -48
.Ltmp116:
	.cfi_offset %r12, -40
.Ltmp117:
	.cfi_offset %r13, -32
.Ltmp118:
	.cfi_offset %r14, -24
.Ltmp119:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	cmpl	$0, 516(%r12)
	movq	568(%r12), %rsi
	je	.LBB13_3
# BB#1:                                 # %if.then
	shll	$2, %edx
	addq	%rdx, %rsi
	movq	%r15, %rdi
	callq	spseek
	leaq	8(%rsp), %rsi
	leaq	4(%rsp), %rcx
	movl	$8, %edx
	movq	%r15, %rdi
	callq	sgets
	movl	$-10, %eax
	cmpl	$8, 4(%rsp)
	jb	.LBB13_10
# BB#2:                                 # %if.end
	leaq	8(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %r13
	leaq	12(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %rbx
	jmp	.LBB13_5
.LBB13_3:                               # %if.else
	addl	%edx, %edx
	addq	%rdx, %rsi
	movq	%r15, %rdi
	callq	spseek
	leaq	8(%rsp), %rsi
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%r15, %rdi
	callq	sgets
	movl	$-10, %eax
	cmpl	$4, 4(%rsp)
	jb	.LBB13_10
# BB#4:                                 # %if.end.21
	movzbl	8(%rsp), %eax
	shlq	$8, %rax
	movzbl	9(%rsp), %r13d
	orq	%rax, %r13
	addq	%r13, %r13
	movzbl	10(%rsp), %eax
	shlq	$8, %rax
	movzbl	11(%rsp), %ebx
	orq	%rax, %rbx
	addq	%rbx, %rbx
.LBB13_5:                               # %if.end.42
	subq	%r13, %rbx
	testl	%ebx, %ebx
	je	.LBB13_6
# BB#7:                                 # %if.else.46
	addq	504(%r12), %r13
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	spseek
	movq	40(%r14), %rdi
	movl	$.L.str.20, %edx
	movl	%ebx, %esi
	callq	*136(%rdi)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB13_10
# BB#8:                                 # %cleanup
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	movq	%r12, %rcx
	callq	gs_glyph_data_from_string
	leaq	4(%rsp), %rcx
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%ebx, %edx
	callq	sgets
	movl	$-10, %eax
	cmpl	%ebx, 4(%rsp)
	jb	.LBB13_10
	jmp	.LBB13_9
.LBB13_6:                               # %if.then.45
	movq	%r14, %rdi
	callq	gs_glyph_data_from_null
.LBB13_9:                               # %if.end.61
	xorl	%eax, %eax
.LBB13_10:                              # %cleanup.62
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	gs_type42_get_outline_from_TT_file, .Lfunc_end13-gs_type42_get_outline_from_TT_file
	.cfi_endproc

	.globl	gs_type42_substitute_glyph_index_vertical
	.align	16, 0x90
	.type	gs_type42_substitute_glyph_index_vertical,@function
gs_type42_substitute_glyph_index_vertical: # @gs_type42_substitute_glyph_index_vertical
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp121:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp123:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp124:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp126:
	.cfi_def_cfa_offset 80
.Ltmp127:
	.cfi_offset %rbx, -56
.Ltmp128:
	.cfi_offset %r12, -48
.Ltmp129:
	.cfi_offset %r13, -40
.Ltmp130:
	.cfi_offset %r14, -32
.Ltmp131:
	.cfi_offset %r15, -24
.Ltmp132:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	testl	%edx, %edx
	je	.LBB14_25
# BB#1:                                 # %if.end
	movq	640(%rdi), %rbx
	movq	%rbx, %rdi
	callq	get_u32_msb
	movzbl	8(%rbx), %ecx
	shlq	$8, %rcx
	movzbl	9(%rbx), %eax
	orq	%rcx, %rax
	movzbl	(%rbx,%rax), %edx
	shll	$8, %edx
	movzbl	1(%rbx,%rax), %ecx
	orl	%edx, %ecx
	je	.LBB14_25
# BB#2:                                 # %for.body.lr.ph
	addq	%rax, %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	%ecx, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB14_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_6 Depth 2
                                        #       Child Loop BB14_11 Depth 3
                                        #       Child Loop BB14_17 Depth 3
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movzbl	2(%rbx,%rax,2), %ecx
	shlq	$8, %rcx
	movzbl	3(%rbx,%rax,2), %eax
	orq	%rcx, %rax
	movzbl	(%rbx,%rax), %ecx
	shll	$8, %ecx
	movzbl	1(%rbx,%rax), %edx
	orl	%ecx, %edx
	cmpl	$1, %edx
	jne	.LBB14_24
# BB#4:                                 # %if.then.84
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rcx, %rdx
	movzbl	4(%rdx,%rax), %ecx
	shll	$8, %ecx
	movzbl	5(%rdx,%rax), %r10d
	orl	%ecx, %r10d
	testl	%r10d, %r10d
	je	.LBB14_24
# BB#5:                                 # %for.body.91.lr.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB14_6:                               # %for.body.91
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_11 Depth 3
                                        #       Child Loop BB14_17 Depth 3
	movzbl	6(%r12,%r13,2), %ecx
	shlq	$8, %rcx
	movzbl	7(%r12,%r13,2), %eax
	orq	%rcx, %rax
	movzbl	(%r12,%rax), %ecx
	shll	$8, %ecx
	movzbl	1(%r12,%rax), %edx
	orl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB14_23
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB14_6 Depth=2
	leaq	(%rax,%r12), %r15
	movzbl	2(%r15), %eax
	shlq	$8, %rax
	movzbl	3(%r15), %edx
	orq	%rax, %rdx
	leaq	(%r15,%rdx), %r9
	movzbl	(%r15,%rdx), %esi
	shll	$8, %esi
	movzbl	1(%r15,%rdx), %eax
	orl	%esi, %eax
	cmpl	$2, %eax
	jne	.LBB14_8
# BB#16:                                # %if.then.253
                                        #   in Loop: Header=BB14_6 Depth=2
	movzbl	2(%r9), %eax
	shll	$8, %eax
	movzbl	3(%r9), %r11d
	orl	%eax, %r11d
	xorl	%eax, %eax
	movl	%r11d, %edx
	jmp	.LBB14_17
	.align	16, 0x90
.LBB14_22:                              # %cleanup.382
                                        #   in Loop: Header=BB14_17 Depth=3
	leal	1(%rsi), %ecx
	cmpl	%r14d, %ebp
	cmoval	%eax, %ecx
	cmoval	%esi, %edx
	movl	%ecx, %eax
.LBB14_17:                              # %for.cond.269
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdx,%rax), %edi
	movl	%edi, %esi
	shrl	$31, %esi
	addl	%edi, %esi
	sarl	%esi
	movslq	%esi, %rdi
	addq	%rdi, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	movzbl	4(%r9,%rdi), %ebx
	shll	$8, %ebx
	movzbl	5(%r9,%rdi), %ebp
	orl	%ebx, %ebp
	cmpl	%r14d, %ebp
	ja	.LBB14_21
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB14_17 Depth=3
	movzbl	6(%r9,%rdi), %ebx
	shll	$8, %ebx
	movzbl	7(%r9,%rdi), %ecx
	orl	%ebx, %ecx
	cmpl	%r14d, %ecx
	jae	.LBB14_19
.LBB14_21:                              # %if.else.365
                                        #   in Loop: Header=BB14_17 Depth=3
	leal	-1(%rdx), %ecx
	cmpl	%ecx, %eax
	jl	.LBB14_22
	jmp	.LBB14_23
	.align	16, 0x90
.LBB14_8:                               # %if.else
                                        #   in Loop: Header=BB14_6 Depth=2
	cmpl	$1, %eax
	jne	.LBB14_23
# BB#9:                                 # %if.then.170
                                        #   in Loop: Header=BB14_6 Depth=2
	movzbl	2(%r9), %eax
	shll	$8, %eax
	movzbl	3(%r9), %r11d
	orl	%eax, %r11d
	movl	%r11d, %edx
	shrl	%edx
	leal	(%rdx,%rdx), %eax
	movzbl	4(%r9,%rax), %esi
	shll	$8, %esi
	movzbl	5(%r9,%rax), %ebp
	orl	%esi, %ebp
	cmpl	%r14d, %ebp
	je	.LBB14_14
# BB#10:                                #   in Loop: Header=BB14_6 Depth=2
	addq	$4, %r9
	xorl	%edi, %edi
	movl	%r11d, %esi
	.align	16, 0x90
.LBB14_11:                              # %if.else.226
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	-1(%rsi), %eax
	cmpl	%eax, %edi
	jge	.LBB14_23
# BB#12:                                # %cleanup
                                        #   in Loop: Header=BB14_11 Depth=3
	leal	1(%rdx), %r8d
	cmpl	%r14d, %ebp
	cmoval	%edx, %esi
	cmoval	%edi, %r8d
	leal	(%r8,%rsi), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movslq	%edx, %rax
	movzbl	(%r9,%rax,2), %edi
	shll	$8, %edi
	movzbl	1(%r9,%rax,2), %ebp
	orl	%edi, %ebp
	cmpl	%r14d, %ebp
	movl	%r8d, %edi
	jne	.LBB14_11
# BB#13:                                #   in Loop: Header=BB14_6 Depth=2
	addq	%rax, %rax
.LBB14_14:                              # %if.then.203
                                        #   in Loop: Header=BB14_6 Depth=2
	cmpl	%r11d, %edx
	jge	.LBB14_23
	jmp	.LBB14_15
.LBB14_19:                              # %if.then.332
                                        #   in Loop: Header=BB14_6 Depth=2
	cmpl	%r11d, %esi
	jl	.LBB14_20
	.align	16, 0x90
.LBB14_23:                              # %for.inc
                                        #   in Loop: Header=BB14_6 Depth=2
	incq	%r13
	cmpq	%r10, %r13
	jl	.LBB14_6
.LBB14_24:                              # %for.inc.417
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	incq	%rax
	cmpq	(%rsp), %rax            # 8-byte Folded Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	jl	.LBB14_3
	jmp	.LBB14_25
.LBB14_15:                              # %cleanup.242
	movzbl	6(%r15,%rax), %ecx
	shll	$8, %ecx
	movzbl	7(%r15,%rax), %r14d
	orl	%ecx, %r14d
	jmp	.LBB14_25
.LBB14_20:                              # %cleanup.387
	movzbl	8(%r9,%rdi), %eax
	shll	$8, %eax
	movzbl	9(%r9,%rdi), %ecx
	orl	%eax, %ecx
	subl	%ebp, %r14d
	addl	%ecx, %r14d
	addl	%r14d, %r14d
	andl	$131070, %r14d          # imm = 0x1FFFE
	movzbl	6(%r15,%r14), %eax
	shll	$8, %eax
	movzbl	7(%r15,%r14), %r14d
	orl	%eax, %r14d
.LBB14_25:                              # %cleanup.420
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gs_type42_substitute_glyph_index_vertical, .Lfunc_end14-gs_type42_substitute_glyph_index_vertical
	.cfi_endproc

	.globl	gs_type42_glyph_info_by_gid
	.align	16, 0x90
	.type	gs_type42_glyph_info_by_gid,@function
gs_type42_glyph_info_by_gid:            # @gs_type42_glyph_info_by_gid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp136:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp137:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp138:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp139:
	.cfi_def_cfa_offset 240
.Ltmp140:
	.cfi_offset %rbx, -56
.Ltmp141:
	.cfi_offset %r12, -48
.Ltmp142:
	.cfi_offset %r13, -40
.Ltmp143:
	.cfi_offset %r14, -32
.Ltmp144:
	.cfi_offset %r15, -24
.Ltmp145:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%r8, %r12
	movl	%ecx, %r14d
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %rbx
	andl	$-252, %ecx
	movq	16(%rbx), %rax
	movq	%rax, 64(%rsp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%r12, %r8
	callq	gs_default_glyph_info
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jns	.LBB15_4
	jmp	.LBB15_31
.LBB15_2:                               # %if.else
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	%ebp, %r15d
	movq	%r13, %rbp
	leaq	24(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*472(%rbx)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB15_31
# BB#3:                                 # %if.else.6
	leaq	24(%rsp), %rdi
	movl	$.L.str.21, %esi
	movl	%ecx, %r13d
	callq	gs_glyph_data_free
	movl	%r13d, %ecx
	movl	$0, (%r12)
	movq	%rbp, %r13
	movl	%r15d, %ebp
	movq	16(%rsp), %r15          # 8-byte Reload
.LBB15_4:                               # %if.end.9
	testb	$3, %r14b
	je	.LBB15_14
# BB#5:                                 # %for.cond.preheader
	leaq	40(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testb	$1, %r14b
	je	.LBB15_13
# BB#6:                                 # %if.then.16
	movl	$0, 16(%rsp)            # 4-byte Folded Spill
	leaq	128(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*480(%rbx)
	testl	%eax, %eax
	js	.LBB15_12
# BB#7:                                 # %if.end.21
	testq	%r13, %r13
	movss	136(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	je	.LBB15_10
# BB#8:                                 # %if.then.23
	movss	140(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	leaq	8(%r12), %rsi
	movq	%r13, %rdi
	callq	gs_point_transform
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB15_31
# BB#9:                                 # %if.end.31
	movss	128(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	132(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movq	%r13, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	gs_point_transform
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.37
	movsd	%xmm0, 8(%r12)
	movss	140(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 16(%r12)
	cvtps2pd	128(%rsp), %xmm0
	movupd	%xmm0, 40(%r12)
.LBB15_11:                              # %if.end.56
	movl	%eax, 16(%rsp)          # 4-byte Spill
	orb	$65, (%r12)
.LBB15_12:                              # %cleanup.thread
	movl	16(%rsp), %ecx          # 4-byte Reload
.LBB15_13:                              # %for.inc
	testb	$2, %r14b
	je	.LBB15_14
# BB#32:                                # %if.then.16.1
	leaq	128(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*480(%rbx)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB15_14
# BB#33:                                # %if.end.21.1
	testq	%r13, %r13
	movss	136(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	je	.LBB15_36
# BB#34:                                # %if.then.23.1
	movss	140(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	leaq	24(%r12), %rsi
	movq	%r13, %rdi
	callq	gs_point_transform
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB15_31
# BB#35:                                # %if.end.31.1
	movss	128(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	132(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	movq	%r13, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	gs_point_transform
	jmp	.LBB15_37
.LBB15_36:                              # %if.else.37.1
	movsd	%xmm0, 24(%r12)
	movss	128(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	140(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	movups	%xmm0, 32(%r12)
	movss	132(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 48(%r12)
.LBB15_37:                              # %if.end.56.1
	movl	%eax, %ecx
	orb	$-126, (%r12)
.LBB15_14:                              # %if.end.66
	movl	%r14d, %ebp
	andl	$24, %ebp
	je	.LBB15_31
# BB#15:                                # %if.then.69
	xorl	%r13d, %r13d
	testb	$16, %r14b
	movl	$3221225471, %eax       # imm = 0xBFFFFFFF
	je	.LBB15_17
# BB#16:                                # %cond.true
	movq	96(%r12), %r13
.LBB15_17:                              # %cond.end
	cmpq	%rax, %r15
	jbe	.LBB15_19
# BB#18:                                # %cond.true.i
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movabsq	$-3221225472, %rax      # imm = 0xFFFFFFFF40000000
	addq	%rax, %r15
	jmp	.LBB15_20
.LBB15_19:                              # %cond.false.i
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*464(%rbx)
	movl	%eax, %r15d
.LBB15_20:                              # %cond.end.i
	movq	16(%rbx), %rax
	movq	%rax, 168(%rsp)
	leaq	128(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*472(%rbx)
	testl	%eax, %eax
	js	.LBB15_30
# BB#21:                                # %if.end.i
	movl	$3221225471, %r14d      # imm = 0xBFFFFFFF
	cmpl	$0, 136(%rsp)
	je	.LBB15_28
# BB#22:                                # %land.lhs.true.i
	movq	128(%rsp), %rax
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movzbl	1(%rax), %edx
	orl	%ecx, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	jne	.LBB15_28
# BB#23:                                # %for.body.lr.ph.i
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movq	%r12, 8(%rsp)           # 8-byte Spill
	movl	$32, 124(%rsp)
	addq	$10, %rax
	movq	%rax, 112(%rsp)
	leaq	72(%rsp), %rbp
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$36, %edx
	movq	%rbp, %rdi
	callq	memset
	leaq	124(%rsp), %r15
	incq	%r14
	.align	16, 0x90
.LBB15_24:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testq	%r13, %r13
	je	.LBB15_26
# BB#25:                                # %if.then.24.i
                                        #   in Loop: Header=BB15_24 Depth=1
	movq	112(%rsp), %rax
	movzbl	2(%rax), %ecx
	shlq	$8, %rcx
	movzbl	3(%rax), %eax
	orq	%rcx, %rax
	orq	%r14, %rax
	movq	%rax, (%r13,%r12,8)
.LBB15_26:                              # %if.end.36.i
                                        #   in Loop: Header=BB15_24 Depth=1
	xorl	%ecx, %ecx
	leaq	112(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%rbx, %r8
	movq	%rbp, %r9
	callq	gs_type42_parse_component
	incq	%r12
	testb	$32, 124(%rsp)
	jne	.LBB15_24
# BB#27:                                # %for.end.i
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%r12d, 88(%rax)
	movq	%rax, %r12
	movl	4(%rsp), %ebp           # 4-byte Reload
	jmp	.LBB15_29
.LBB15_28:                              # %if.else.i
	movl	$0, 88(%r12)
.LBB15_29:                              # %cleanup.82.thread
	leaq	128(%rsp), %rdi
	movl	$.L.str.24, %esi
	callq	gs_glyph_data_free
	orl	%ebp, (%r12)
	movl	16(%rsp), %ecx          # 4-byte Reload
	jmp	.LBB15_31
.LBB15_30:                              # %cleanup.82
	movl	%eax, %ecx
.LBB15_31:                              # %cleanup.87
	movl	%ecx, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gs_type42_glyph_info_by_gid, .Lfunc_end15-gs_type42_glyph_info_by_gid
	.cfi_endproc

	.globl	gs_type42_get_metrics
	.align	16, 0x90
	.type	gs_type42_get_metrics,@function
gs_type42_get_metrics:                  # @gs_type42_get_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	movq	480(%rdi), %rax
	movl	148(%rdi), %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end16:
	.size	gs_type42_get_metrics, .Lfunc_end16-gs_type42_get_metrics
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gs_type42_append
	.align	16, 0x90
	.type	gs_type42_append,@function
gs_type42_append:                       # @gs_type42_append
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp147:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp148:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp149:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp150:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp152:
	.cfi_def_cfa_offset 112
.Ltmp153:
	.cfi_offset %rbx, -56
.Ltmp154:
	.cfi_offset %r12, -48
.Ltmp155:
	.cfi_offset %r13, -40
.Ltmp156:
	.cfi_offset %r14, -32
.Ltmp157:
	.cfi_offset %r15, -24
.Ltmp158:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	%edi, 36(%rsp)          # 4-byte Spill
	leaq	212(%r13), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	224(%r13), %r15
	leaq	132(%rsi), %r12
	movq	(%r15), %r14
	movq	88(%r15), %rdi
	movq	%r14, %rsi
	callq	gx_ttfReader__set_font
	movq	80(%r15), %rdi
	movq	88(%r15), %rsi
	movl	%ebp, 8(%rsp)
	movq	%rbx, (%rsp)
	movq	%r14, %rdx
	movl	36(%rsp), %ecx          # 4-byte Reload
	movq	%r12, %r8
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	gx_ttf_outline
	movl	%eax, %ebp
	movq	88(%r15), %rdi
	xorl	%esi, %esi
	callq	gx_ttfReader__set_font
	testl	%ebp, %ebp
	js	.LBB17_1
# BB#4:                                 # %if.end.9
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	gx_setcurrentpoint_from_path
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB17_5
# BB#6:                                 # %if.end.13
	movsd	.LCPI17_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_char_flatness
	movq	%rbx, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_imager_setflat       # TAILCALL
.LBB17_1:                               # %if.then
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$3, 1848(%rax)
	jne	.LBB17_5
# BB#2:                                 # %if.then.3
	movq	600(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB17_5
# BB#3:                                 # %if.then.5
	movq	24(%rcx), %rdi
	callq	gx_free_cached_char
	movq	$0, 600(%r13)
.LBB17_5:                               # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gs_type42_append, .Lfunc_end17-gs_type42_append
	.cfi_endproc

	.globl	gs_truetype_font_info
	.align	16, 0x90
	.type	gs_truetype_font_info,@function
gs_truetype_font_info:                  # @gs_truetype_font_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp160:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp162:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp163:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp164:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp165:
	.cfi_def_cfa_offset 96
.Ltmp166:
	.cfi_offset %rbx, -56
.Ltmp167:
	.cfi_offset %r12, -48
.Ltmp168:
	.cfi_offset %r13, -40
.Ltmp169:
	.cfi_offset %r14, -32
.Ltmp170:
	.cfi_offset %r15, -24
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdi, %r15
	movl	(%rbx), %ecx
	testb	$64, %dh
	je	.LBB18_7
# BB#1:                                 # %entry
	movl	%ecx, %eax
	andl	$16384, %eax            # imm = 0x4000
	jne	.LBB18_7
# BB#2:                                 # %if.then
	movq	584(%r15), %r13
	testq	%r13, %r13
	je	.LBB18_7
# BB#3:                                 # %if.then.4
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	448(%r15), %rbp
	addq	$10, %r13
	movl	$2, %edx
	leaq	32(%rsp), %r12
	.align	16, 0x90
.LBB18_4:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r14d
	movq	%r13, %rsi
	subq	%r14, %rsi
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	*%rbp
	testl	%eax, %eax
	js	.LBB18_20
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB18_4 Depth=1
	cmovel	%r14d, %eax
	leaq	32(%rsp), %rdi
	subq	%r14, %rdi
	movq	32(%rsp), %rsi
	movslq	%eax, %rbx
	movq	%rbx, %rdx
	callq	memcpy
	subl	%ebx, %r14d
	movl	%r14d, %edx
	jne	.LBB18_4
# BB#6:                                 # %do.end
	movzbl	30(%rsp), %eax
	shll	$8, %eax
	movzbl	31(%rsp), %ecx
	orl	%eax, %ecx
	movq	16(%rsp), %rbx          # 8-byte Reload
	movl	%ecx, 152(%rbx)
	movl	$16384, %ecx            # imm = 0x4000
	orl	(%rbx), %ecx
	movl	%ecx, (%rbx)
	movl	12(%rsp), %edx          # 4-byte Reload
.LBB18_7:                               # %if.end.14
	xorl	%eax, %eax
	cmpq	$0, 576(%r15)
	je	.LBB18_20
# BB#8:                                 # %if.end.19
	testb	$64, %dl
	je	.LBB18_12
# BB#9:                                 # %if.end.19
	movl	%ecx, %eax
	andl	$64, %eax
	jne	.LBB18_12
# BB#10:                                # %if.then.26
	movl	%edx, %ebp
	leaq	88(%rbx), %rdx
	movl	$64, %ecx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	get_from_names_table
	testl	%eax, %eax
	js	.LBB18_20
# BB#11:                                # %if.then.26.if.end.32_crit_edge
	movl	(%rbx), %ecx
	movl	%ebp, %edx
.LBB18_12:                              # %if.end.32
	testb	$16, %dh
	je	.LBB18_16
# BB#13:                                # %if.end.32
	movl	%ecx, %eax
	andl	$4096, %eax             # imm = 0x1000
	jne	.LBB18_16
# BB#14:                                # %if.then.39
	movl	%edx, %ebp
	leaq	120(%rbx), %rdx
	movl	$4096, %ecx             # imm = 0x1000
	movl	$1, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	get_from_names_table
	testl	%eax, %eax
	js	.LBB18_20
# BB#15:                                # %if.then.39.if.end.45_crit_edge
	movl	(%rbx), %ecx
	movl	%ebp, %edx
.LBB18_16:                              # %if.end.45
	testb	$32, %dh
	je	.LBB18_19
# BB#17:                                # %if.end.45
	andl	$8192, %ecx             # imm = 0x2000
	jne	.LBB18_19
# BB#18:                                # %if.then.52
	leaq	136(%rbx), %rdx
	movl	$8192, %ecx             # imm = 0x2000
	movl	$4, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	get_from_names_table
	testl	%eax, %eax
	js	.LBB18_20
.LBB18_19:                              # %if.end.58
	xorl	%eax, %eax
.LBB18_20:                              # %cleanup.59
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gs_truetype_font_info, .Lfunc_end18-gs_truetype_font_info
	.cfi_endproc

	.align	16, 0x90
	.type	get_from_names_table,@function
get_from_names_table:                   # @get_from_names_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp173:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp174:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp175:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp176:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp177:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp178:
	.cfi_def_cfa_offset 160
.Ltmp179:
	.cfi_offset %rbx, -56
.Ltmp180:
	.cfi_offset %r12, -48
.Ltmp181:
	.cfi_offset %r13, -40
.Ltmp182:
	.cfi_offset %r14, -32
.Ltmp183:
	.cfi_offset %r15, -24
.Ltmp184:
	.cfi_offset %rbp, -16
	movl	%r8d, 68(%rsp)          # 4-byte Spill
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdi, %r13
	movq	448(%r13), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	576(%r13), %rbx
	addq	$6, %rbx
	movl	$4, %edx
	leaq	88(%rsp), %r12
	leaq	96(%rsp), %rbp
	.align	16, 0x90
.LBB19_1:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %r15d
	movq	%rbx, %rsi
	subq	%r15, %rsi
	movq	%r13, %rdi
	movq	%rbp, %rcx
	callq	*72(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB19_12
# BB#2:                                 # %if.end.i
                                        #   in Loop: Header=BB19_1 Depth=1
	cmovel	%r15d, %eax
	movq	%r12, %rdi
	subq	%r15, %rdi
	movq	96(%rsp), %rsi
	movslq	%eax, %r14
	movq	%r14, %rdx
	callq	memcpy
	subl	%r14d, %r15d
	movl	%r15d, %edx
	jne	.LBB19_1
# BB#3:                                 # %do.end
	movzbl	84(%rsp), %edx
	shll	$8, %edx
	movzbl	85(%rsp), %edi
	movzbl	86(%rsp), %esi
	movzbl	87(%rsp), %ecx
	xorl	%eax, %eax
	orl	%edx, %edi
	movl	%edi, 8(%rsp)           # 4-byte Spill
	je	.LBB19_12
# BB#4:                                 # %for.body.lr.ph
	shlq	$8, %rsi
	orq	%rcx, %rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	movw	$-1, %bp
	xorl	%eax, %eax
	leaq	96(%rsp), %r14
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%edi, %edi
.LBB19_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_6 Depth 2
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movq	448(%r13), %r12
	movq	576(%r13), %rcx
	shll	$2, %eax
	leal	(%rax,%rax,2), %eax
	leaq	18(%rax,%rcx), %r15
	movl	$12, %edx
	.align	16, 0x90
.LBB19_6:                               # %do.body.i.40
                                        #   Parent Loop BB19_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %ebx
	movq	%r15, %rsi
	subq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%r14, %rcx
	callq	*%r12
	testl	%eax, %eax
	js	.LBB19_12
# BB#7:                                 # %if.end.i.49
                                        #   in Loop: Header=BB19_6 Depth=2
	cmovel	%ebx, %eax
	leaq	96(%rsp), %rdi
	subq	%rbx, %rdi
	movq	96(%rsp), %rsi
	movslq	%eax, %rbp
	movq	%rbp, %rdx
	callq	memcpy
	subl	%ebp, %ebx
	movl	%ebx, %edx
	jne	.LBB19_6
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB19_5 Depth=1
	movzbl	88(%rsp), %eax
	shll	$8, %eax
	movzbl	89(%rsp), %ecx
	orl	%eax, %ecx
	movzbl	90(%rsp), %eax
	shll	$8, %eax
	movzbl	91(%rsp), %edx
	orl	%eax, %edx
	movzbl	92(%rsp), %eax
	shll	$8, %eax
	movzbl	93(%rsp), %esi
	orl	%eax, %esi
	movzbl	94(%rsp), %eax
	shll	$8, %eax
	movzbl	95(%rsp), %edi
	orl	%eax, %edi
	cmpl	68(%rsp), %edx          # 4-byte Folded Reload
	sete	%al
	movzwl	%cx, %ecx
	movl	36(%rsp), %ebp          # 4-byte Reload
	movzwl	%bp, %ebp
	cmpl	%ebp, %ecx
	setb	%dl
	andb	%al, %dl
	movq	16(%rsp), %rax          # 8-byte Reload
	cmovnew	%di, %ax
	movq	%rax, %rdi
	cmovnew	%cx, %bp
	testb	%dl, %dl
	movq	24(%rsp), %rdx          # 8-byte Reload
	cmovnew	%si, %dx
	movl	12(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movzwl	%cx, %eax
	cmpl	8(%rsp), %eax           # 4-byte Folded Reload
	jb	.LBB19_5
# BB#9:                                 # %for.end
	movzwl	%bp, %ecx
	xorl	%eax, %eax
	cmpl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB19_12
# BB#10:                                # %if.end.122
	movzwl	%dx, %ebp
	movzwl	%di, %esi
	addq	(%rsp), %rsi            # 8-byte Folded Reload
	addq	576(%r13), %rsi
	movq	%r13, %rdi
	movl	%ebp, %edx
	movq	56(%rsp), %rcx          # 8-byte Reload
	callq	*72(%rsp)               # 8-byte Folded Reload
	movl	%eax, %ecx
	movl	$-10, %eax
	testl	%ecx, %ecx
	jne	.LBB19_12
# BB#11:                                # %if.end.135
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%ebp, 8(%rax)
	movl	52(%rsp), %eax          # 4-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	orl	%eax, (%rcx)
	xorl	%eax, %eax
.LBB19_12:                              # %cleanup.137
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	get_from_names_table, .Lfunc_end19-get_from_names_table
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_font_type42"
	.size	.L.str, 15

	.type	font_type42_reloc_ptrs,@object # @font_type42_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
font_type42_reloc_ptrs:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_font_base
	.quad	font_type42_enum_ptrs
	.size	font_type42_reloc_ptrs, 24

	.type	st_gs_font_type42,@object # @st_gs_font_type42
	.globl	st_gs_font_type42
	.align	8
st_gs_font_type42:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gs_font_finalize
	.quad	font_type42_reloc_ptrs
	.size	st_gs_font_type42, 64

	.type	gs_type42_font_init.version1_0,@object # @gs_type42_font_init.version1_0
gs_type42_font_init.version1_0:
	.asciz	"\000\001\000"
	.size	gs_type42_font_init.version1_0, 4

	.type	gs_type42_font_init.version_true,@object # @gs_type42_font_init.version_true
gs_type42_font_init.version_true:
	.ascii	"true"
	.size	gs_type42_font_init.version_true, 4

	.type	gs_type42_font_init.version_ttcf,@object # @gs_type42_font_init.version_ttcf
gs_type42_font_init.version_ttcf:
	.ascii	"ttcf"
	.size	gs_type42_font_init.version_ttcf, 4

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Unknown TTC header version %08X in the font %s.\n"
	.size	.L.str.1, 49

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cmap"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"glyf"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GSUB"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gs_type42_font_init(GSUB)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"head"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"hhea"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"hmtx"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"loca"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"maxp"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"name"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"vhea"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"vmtx"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"OS/2"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Warning: 'loca' length %d is greater than numGlyphs %d in the font %s.\n"
	.size	.L.str.15, 72

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gs_type42_font_init"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gs_type42_font_init(sort loca)"
	.size	.L.str.17, 31

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gs_len_glyphs_release"
	.size	.L.str.18, 22

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gs_gsub_release"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"default_get_outline"
	.size	.L.str.20, 20

	.type	gs_type42_glyph_outline.imat,@object # @gs_type42_glyph_outline.imat
	.section	.rodata,"a",@progbits
	.align	4
gs_type42_glyph_outline.imat:
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.size	gs_type42_glyph_outline.imat, 24

	.type	gs_type42_glyph_outline.log2_scale,@object # @gs_type42_glyph_outline.log2_scale
	.align	4
gs_type42_glyph_outline.log2_scale:
	.zero	8
	.size	gs_type42_glyph_outline.log2_scale, 8

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"gs_type42_glyph_info"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gs_type42_enumerate_glyph"
	.size	.L.str.22, 26

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gs_type42_default_get_metrics"
	.size	.L.str.23, 30

	.type	font_type42_enum_ptrs,@object # @font_type42_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	16
font_type42_enum_ptrs:
	.short	0                       # 0x0
	.short	456                     # 0x1c8
	.short	0                       # 0x0
	.short	616                     # 0x268
	.short	0                       # 0x0
	.short	624                     # 0x270
	.short	0                       # 0x0
	.short	640                     # 0x280
	.size	font_type42_enum_ptrs, 16

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"parse_pieces"
	.size	.L.str.24, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
