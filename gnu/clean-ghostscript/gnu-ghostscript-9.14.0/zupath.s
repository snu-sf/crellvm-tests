	.text
	.file	"zupath.bc"
	.globl	make_upath
	.align	16, 0x90
	.type	make_upath,@function
make_upath:                             # @make_upath
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
	subq	$232, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 288
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
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	cmpl	$1, %r8d
	movl	$5, %r15d
	sbbl	$-1, %r15d
	leaq	32(%rsp), %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	gs_upathbbox
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB0_4
# BB#1:                                 # %if.then
	cmpl	$-14, %r12d
	jne	.LBB0_28
# BB#2:                                 # %lor.lhs.false
	movq	8(%r14), %rdi
	callq	gs_currentcpsimode
	movl	$-14, %r12d
	testl	%eax, %eax
	jne	.LBB0_28
# BB#3:                                 # %if.end
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
.LBB0_4:                                # %if.end.9
	movq	%r14, 8(%rsp)           # 8-byte Spill
	leaq	160(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	gx_path_enum_init
	xorl	%r14d, %r14d
	leaq	128(%rsp), %r12
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_8:                                # %sw.bb.i
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$3, %r14d
.LBB0_5:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	gx_path_enum_next
	movl	%eax, %ecx
	cmpl	$4, %eax
	ja	.LBB0_7
# BB#6:                                 # %while.cond.i
                                        #   in Loop: Header=BB0_5 Depth=1
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_9:                                # %sw.bb.2.i
                                        #   in Loop: Header=BB0_5 Depth=1
	addl	$7, %r14d
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_10:                               # %sw.bb.4.i
                                        #   in Loop: Header=BB0_5 Depth=1
	incl	%r14d
	jmp	.LBB0_5
.LBB0_7:                                # %path_length_for_upath.exit.thread
	movl	$-28, %r12d
.LBB0_28:                               # %cleanup.235
	movl	%r12d, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_11:                               # %path_length_for_upath.exit
	testl	%r14d, %r14d
	js	.LBB0_12
# BB#13:                                # %if.end.13
	addl	%r15d, %r14d
	movl	$-13, %r12d
	cmpl	$65535, %r14d           # imm = 0xFFFF
	movq	8(%rsp), %r13           # 8-byte Reload
	jg	.LBB0_28
# BB#14:                                # %if.end.16
	movq	8(%r13), %rdi
	movl	$240, %edx
	movl	$.L.str, %r8d
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	%r14d, %ecx
	callq	gs_alloc_ref_array
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_28
# BB#15:                                # %if.end.22
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r15
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB0_18
# BB#16:                                # %if.then.24
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.1, %esi
	movq	%r15, %rdx
	callq	names_enter_string
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_28
# BB#17:                                # %if.end.29
	orb	$-126, (%r15)
	addq	$16, %r15
.LBB0_18:                               # %if.end.31
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%r15)
	movl	$4096, %ecx             # imm = 0x1000
	movl	76(%r13), %eax
	addl	%ecx, %eax
	movw	%ax, (%r15)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%r15)
	movw	%ax, 16(%r15)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%r15)
	movw	%ax, 32(%r15)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 56(%r15)
	movw	%ax, 48(%r15)
	leaq	64(%r15), %rdx
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.2, %esi
	callq	names_enter_string
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_28
# BB#19:                                # %if.end.91
	movq	%r13, %r14
	orb	$-126, 64(%r15)
	addq	$80, %r15
	movq	1680(%rbx), %r13
	movq	%rbp, 1680(%rbx)
	movq	8(%rbx), %rdi
	leaq	64(%rsp), %rbp
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	gs_path_enum_copy_init
	movq	%r13, 1680(%rbx)
	leaq	160(%rsp), %r13
	jmp	.LBB0_20
.LBB0_26:                               # %cleanup
                                        #   in Loop: Header=BB0_20 Depth=1
	orb	$-128, (%r15)
	addq	$16, %r15
.LBB0_20:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	gs_path_enum_next
	movl	%eax, %ecx
	movl	$.L.str.6, %esi
	movl	$.L.str.3, %edx
	movl	$-28, %eax
	movl	%ecx, %edi
	cmpl	$4, %ecx
	ja	.LBB0_27
# BB#21:                                # %while.cond
                                        #   in Loop: Header=BB0_20 Depth=1
	jmpq	*.LJTI0_1(,%rdi,8)
.LBB0_22:                               # %sw.bb.105
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$.L.str.4, %edx
.LBB0_23:                               # %ml
                                        #   in Loop: Header=BB0_20 Depth=1
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%r15)
	movl	76(%r14), %eax
	movl	$4096, %ecx             # imm = 0x1000
	addl	%ecx, %eax
	movw	%ax, (%r15)
	movsd	168(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%r15)
	movw	%ax, 16(%r15)
	addq	$32, %r15
	movq	%rdx, %rsi
	jmp	.LBB0_25
.LBB0_24:                               # %sw.bb.132
                                        #   in Loop: Header=BB0_20 Depth=1
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%r15)
	movl	76(%r14), %eax
	movl	$4096, %ecx             # imm = 0x1000
	addl	%ecx, %eax
	movw	%ax, (%r15)
	movsd	168(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%r15)
	movw	%ax, 16(%r15)
	movsd	176(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%r15)
	movw	%ax, 32(%r15)
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 56(%r15)
	movw	%ax, 48(%r15)
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 72(%r15)
	movw	%ax, 64(%r15)
	movsd	200(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 88(%r15)
	movw	%ax, 80(%r15)
	addq	$96, %r15
	movl	$.L.str.5, %esi
.LBB0_25:                               # %sw.epilog
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r15, %rdx
	callq	names_enter_string
	testl	%eax, %eax
	jns	.LBB0_26
.LBB0_27:                               # %cleanup.231.loopexit86
	movl	%eax, %r12d
	jmp	.LBB0_28
.LBB0_12:
	movl	%r14d, %r12d
	jmp	.LBB0_28
.Lfunc_end0:
	.size	make_upath, .Lfunc_end0-make_upath
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_11
	.quad	.LBB0_8
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_10
.LJTI0_1:
	.quad	.LBB0_28
	.quad	.LBB0_23
	.quad	.LBB0_22
	.quad	.LBB0_24
	.quad	.LBB0_25

	.text
	.align	16, 0x90
	.type	zineofill,@function
zineofill:                              # @zineofill
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
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	subq	$1736, %rsp             # imm = 0x6C8
.Ltmp17:
	.cfi_def_cfa_offset 1776
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	in_path
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	js	.LBB1_5
# BB#1:                                 # %if.end.i
	movq	(%rbx), %rdi
	callq	gs_eofill
	movl	%eax, %ebp
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_grestore
	movw	$1, %ax
	cmpl	%ebp, gs_hit_detected(%rip)
	je	.LBB1_4
# BB#2:                                 # %if.else.i.i
	testl	%ebp, %ebp
	jne	.LBB1_5
# BB#3:
	xorl	%eax, %eax
.LBB1_4:                                # %if.end.4.i.i
	decl	%r14d
	movslq	%r14d, %rcx
	shlq	$4, %rcx
	subq	%rcx, 624(%rbx)
	subq	%rcx, %r15
	movw	%ax, 8(%r15)
	movw	$256, (%r15)            # imm = 0x100
	xorl	%ebp, %ebp
.LBB1_5:                                # %in_test.exit
	movl	%ebp, %eax
	addq	$1736, %rsp             # imm = 0x6C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zineofill, .Lfunc_end1-zineofill
	.cfi_endproc

	.align	16, 0x90
	.type	zinfill,@function
zinfill:                                # @zinfill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 40
	subq	$1736, %rsp             # imm = 0x6C8
.Ltmp26:
	.cfi_def_cfa_offset 1776
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	in_path
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	js	.LBB2_5
# BB#1:                                 # %if.end.i
	movq	(%rbx), %rdi
	callq	gs_fill
	movl	%eax, %ebp
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_grestore
	movw	$1, %ax
	cmpl	%ebp, gs_hit_detected(%rip)
	je	.LBB2_4
# BB#2:                                 # %if.else.i.i
	testl	%ebp, %ebp
	jne	.LBB2_5
# BB#3:
	xorl	%eax, %eax
.LBB2_4:                                # %if.end.4.i.i
	decl	%r14d
	movslq	%r14d, %rcx
	shlq	$4, %rcx
	subq	%rcx, 624(%rbx)
	subq	%rcx, %r15
	movw	%ax, 8(%r15)
	movw	$256, (%r15)            # imm = 0x100
	xorl	%ebp, %ebp
.LBB2_5:                                # %in_test.exit
	movl	%ebp, %eax
	addq	$1736, %rsp             # imm = 0x6C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zinfill, .Lfunc_end2-zinfill
	.cfi_endproc

	.align	16, 0x90
	.type	zinstroke,@function
zinstroke:                              # @zinstroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 40
	subq	$1736, %rsp             # imm = 0x6C8
.Ltmp35:
	.cfi_def_cfa_offset 1776
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	in_path
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	js	.LBB3_5
# BB#1:                                 # %if.end.i
	movq	(%rbx), %rdi
	callq	gs_stroke
	movl	%eax, %ebp
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_grestore
	movw	$1, %ax
	cmpl	%ebp, gs_hit_detected(%rip)
	je	.LBB3_4
# BB#2:                                 # %if.else.i.i
	testl	%ebp, %ebp
	jne	.LBB3_5
# BB#3:
	xorl	%eax, %eax
.LBB3_4:                                # %if.end.4.i.i
	decl	%r14d
	movslq	%r14d, %rcx
	shlq	$4, %rcx
	subq	%rcx, 624(%rbx)
	subq	%rcx, %r15
	movw	%ax, 8(%r15)
	movw	$256, (%r15)            # imm = 0x100
	xorl	%ebp, %ebp
.LBB3_5:                                # %in_test.exit
	movl	%ebp, %eax
	addq	$1736, %rsp             # imm = 0x6C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zinstroke, .Lfunc_end3-zinstroke
	.cfi_endproc

	.align	16, 0x90
	.type	zinueofill,@function
zinueofill:                             # @zinueofill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 40
	subq	$1736, %rsp             # imm = 0x6C8
.Ltmp44:
	.cfi_def_cfa_offset 1776
.Ltmp45:
	.cfi_offset %rbx, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_8
# BB#1:                                 # %if.end.i.i
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	upath_append
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB4_3
# BB#2:                                 # %lor.lhs.false.i.i
	addq	$-16, %r15
	leaq	8(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	in_path
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB4_3
# BB#4:                                 # %if.end.i
	movq	(%rbx), %rdi
	callq	gs_eofill
	movl	%eax, %ebp
	movq	(%rbx), %rdi
	callq	gs_grestore
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_grestore
	movw	$1, %ax
	cmpl	%ebp, gs_hit_detected(%rip)
	je	.LBB4_7
# BB#5:                                 # %if.else.i.i
	testl	%ebp, %ebp
	jne	.LBB4_8
# BB#6:
	xorl	%eax, %eax
.LBB4_7:                                # %if.end.4.i.i
	movslq	%r14d, %rcx
	shlq	$4, %rcx
	subq	%rcx, 624(%rbx)
	subq	%rcx, %r15
	movw	%ax, 8(%r15)
	movw	$256, (%r15)            # imm = 0x100
	xorl	%ebp, %ebp
	jmp	.LBB4_8
.LBB4_3:                                # %if.then.5.i.i
	movq	(%rbx), %rdi
	callq	gs_grestore
	movl	%r14d, %ebp
.LBB4_8:                                # %in_utest.exit
	movl	%ebp, %eax
	addq	$1736, %rsp             # imm = 0x6C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	zinueofill, .Lfunc_end4-zinueofill
	.cfi_endproc

	.align	16, 0x90
	.type	zinufill,@function
zinufill:                               # @zinufill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 40
	subq	$1736, %rsp             # imm = 0x6C8
.Ltmp53:
	.cfi_def_cfa_offset 1776
.Ltmp54:
	.cfi_offset %rbx, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_8
# BB#1:                                 # %if.end.i.i
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	upath_append
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_3
# BB#2:                                 # %lor.lhs.false.i.i
	addq	$-16, %r15
	leaq	8(%rsp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	in_path
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB5_3
# BB#4:                                 # %if.end.i
	movq	(%rbx), %rdi
	callq	gs_fill
	movl	%eax, %ebp
	movq	(%rbx), %rdi
	callq	gs_grestore
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_grestore
	movw	$1, %ax
	cmpl	%ebp, gs_hit_detected(%rip)
	je	.LBB5_7
# BB#5:                                 # %if.else.i.i
	testl	%ebp, %ebp
	jne	.LBB5_8
# BB#6:
	xorl	%eax, %eax
.LBB5_7:                                # %if.end.4.i.i
	movslq	%r14d, %rcx
	shlq	$4, %rcx
	subq	%rcx, 624(%rbx)
	subq	%rcx, %r15
	movw	%ax, 8(%r15)
	movw	$256, (%r15)            # imm = 0x100
	xorl	%ebp, %ebp
	jmp	.LBB5_8
.LBB5_3:                                # %if.then.5.i.i
	movq	(%rbx), %rdi
	callq	gs_grestore
	movl	%r14d, %ebp
.LBB5_8:                                # %in_utest.exit
	movl	%ebp, %eax
	addq	$1736, %rsp             # imm = 0x6C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	zinufill, .Lfunc_end5-zinufill
	.cfi_endproc

	.align	16, 0x90
	.type	zinustroke,@function
zinustroke:                             # @zinustroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 48
	subq	$1776, %rsp             # imm = 0x6F0
.Ltmp63:
	.cfi_def_cfa_offset 1824
.Ltmp64:
	.cfi_offset %rbx, -48
.Ltmp65:
	.cfi_offset %r12, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_15
# BB#1:                                 # %if.end
	movq	624(%rbx), %rbp
	movq	8(%rbx), %rdi
	leaq	1752(%rsp), %rdx
	movq	%rbp, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB6_4
# BB#2:                                 # %if.then.i
	addq	$-16, %rbp
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	upath_append
	movl	%eax, %r15d
	movl	$2, %ebp
	testl	%r15d, %r15d
	js	.LBB6_16
# BB#3:                                 # %if.then.3.i
	movq	1768(%rsp), %rax
	movq	%rax, 1744(%rsp)
	movups	1752(%rsp), %xmm0
	movaps	%xmm0, 1728(%rsp)
	movl	$2, %r12d
	jmp	.LBB6_6
.LBB6_4:                                # %if.else.7.i
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	upath_append
	movl	%eax, %r15d
	movl	$1, %ebp
	testl	%r15d, %r15d
	js	.LBB6_16
# BB#5:                                 # %if.then.12.i
	leaq	1728(%rsp), %rdi
	callq	gs_make_identity
	movl	$1, %r12d
.LBB6_6:                                # %if.end.6
	testl	%r15d, %r15d
	cmovsl	%r15d, %r12d
	movslq	%r12d, %rax
	shlq	$4, %rax
	subq	%rax, %r14
	leaq	(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	in_path
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB6_7
# BB#8:                                 # %if.end.12
	cmpl	$2, %r14d
	jl	.LBB6_10
# BB#9:                                 # %if.end.17
	movq	(%rbx), %rdi
	leaq	1728(%rsp), %rsi
	callq	gs_concat
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_11
.LBB6_10:                               # %if.then.19
	movq	(%rbx), %rdi
	callq	gs_stroke
	movl	%eax, %ebp
.LBB6_11:                               # %if.end.22
	movq	(%rbx), %rdi
	callq	gs_grestore
	movq	624(%rbx), %r15
	movq	(%rbx), %rdi
	callq	gs_grestore
	movw	$1, %ax
	cmpl	%ebp, gs_hit_detected(%rip)
	je	.LBB6_14
# BB#12:                                # %if.else.i.i
	testl	%ebp, %ebp
	jne	.LBB6_15
# BB#13:
	xorl	%eax, %eax
.LBB6_14:                               # %if.end.4.i.i
	leal	-1(%r12,%r14), %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	subq	%rcx, 624(%rbx)
	subq	%rcx, %r15
	movw	%ax, 8(%r15)
	movw	$256, (%r15)            # imm = 0x100
	xorl	%ebp, %ebp
	jmp	.LBB6_15
.LBB6_16:                               # %if.then.3
	testl	%r15d, %r15d
	cmovsl	%r15d, %ebp
	movq	(%rbx), %rdi
	callq	gs_grestore
	jmp	.LBB6_15
.LBB6_7:                                # %if.then.9
	movq	(%rbx), %rdi
	callq	gs_grestore
	movl	%r14d, %ebp
.LBB6_15:                               # %cleanup
	movl	%ebp, %eax
	addq	$1776, %rsp             # imm = 0x6F0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	zinustroke, .Lfunc_end6-zinustroke
	.cfi_endproc

	.align	16, 0x90
	.type	zuappend,@function
zuappend:                               # @zuappend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -32
.Ltmp73:
	.cfi_offset %r14, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_5
# BB#1:                                 # %if.end
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	upath_append
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	(%rbx), %rdi
	js	.LBB7_2
# BB#3:                                 # %if.end.6
	callq	gs_upmergepath
	movl	%eax, %ebp
	movq	(%rbx), %rdi
	callq	gs_grestore
	testl	%ebp, %ebp
	js	.LBB7_5
# BB#4:                                 # %if.end.11
	addq	$-16, 624(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB7_5
.LBB7_2:                                # %if.end.6.thread
	callq	gs_grestore
.LBB7_5:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zuappend, .Lfunc_end7-zuappend
	.cfi_endproc

	.align	16, 0x90
	.type	zucache,@function
zucache:                                # @zucache
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	zucache, .Lfunc_end8-zucache
	.cfi_endproc

	.align	16, 0x90
	.type	zueofill,@function
zueofill:                               # @zueofill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 32
.Ltmp78:
	.cfi_offset %rbx, -32
.Ltmp79:
	.cfi_offset %r14, -24
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_5
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	callq	gs_currentcpsimode
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	upath_append
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	(%rbx), %rdi
	js	.LBB9_2
# BB#3:                                 # %if.end.7
	callq	gs_eofill
	movl	%eax, %ebp
	movq	(%rbx), %rdi
	callq	gs_grestore
	testl	%ebp, %ebp
	js	.LBB9_5
# BB#4:                                 # %if.end.12
	addq	$-16, 624(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB9_5
.LBB9_2:                                # %if.end.7.thread
	callq	gs_grestore
.LBB9_5:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	zueofill, .Lfunc_end9-zueofill
	.cfi_endproc

	.align	16, 0x90
	.type	zufill,@function
zufill:                                 # @zufill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 32
.Ltmp84:
	.cfi_offset %rbx, -32
.Ltmp85:
	.cfi_offset %r14, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB10_5
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	callq	gs_currentcpsimode
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	upath_append
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	(%rbx), %rdi
	js	.LBB10_2
# BB#3:                                 # %if.end.7
	callq	gs_fill
	movl	%eax, %ebp
	movq	(%rbx), %rdi
	callq	gs_grestore
	testl	%ebp, %ebp
	js	.LBB10_5
# BB#4:                                 # %if.end.12
	addq	$-16, 624(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB10_5
.LBB10_2:                               # %if.end.7.thread
	callq	gs_grestore
.LBB10_5:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	zufill, .Lfunc_end10-zufill
	.cfi_endproc

	.align	16, 0x90
	.type	zupath,@function
zupath:                                 # @zupath
	.cfi_startproc
# BB#0:                                 # %entry
	movq	624(%rdi), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB11_1
# BB#2:                                 # %if.end
	movq	(%rdi), %rdx
	movq	1680(%rdx), %rcx
	movzwl	8(%rax), %r8d
	movq	%rax, %rsi
	jmp	make_upath              # TAILCALL
.LBB11_1:                               # %if.then
	movq	%rax, %rdi
	jmp	check_type_failed       # TAILCALL
.Lfunc_end11:
	.size	zupath, .Lfunc_end11-zupath
	.cfi_endproc

	.align	16, 0x90
	.type	zustroke,@function
zustroke:                               # @zustroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp90:
	.cfi_def_cfa_offset 64
.Ltmp91:
	.cfi_offset %rbx, -32
.Ltmp92:
	.cfi_offset %r14, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB12_9
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdi
	callq	gs_currentcpsimode
	movl	%eax, %r14d
	movq	624(%rbx), %rbp
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movq	%rbp, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB12_4
# BB#2:                                 # %if.then.i
	addq	$-16, %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	upath_append
	movl	$2, %r14d
	testl	%eax, %eax
	js	.LBB12_5
# BB#3:                                 # %if.then.3.i
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_concat
	jmp	.LBB12_5
.LBB12_4:                               # %if.else.7.i
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	upath_append
	movl	$1, %r14d
.LBB12_5:                               # %upath_stroke.exit
	testl	%eax, %eax
	cmovsl	%eax, %r14d
	testl	%r14d, %r14d
	movl	%r14d, %ebp
	js	.LBB12_7
# BB#6:                                 # %if.then.4
	movq	(%rbx), %rdi
	callq	gs_stroke
	movl	%eax, %ebp
.LBB12_7:                               # %if.end.7
	movq	(%rbx), %rdi
	callq	gs_grestore
	testl	%ebp, %ebp
	js	.LBB12_9
# BB#8:                                 # %if.end.12
	movslq	%r14d, %rax
	shlq	$4, %rax
	subq	%rax, 624(%rbx)
	xorl	%ebp, %ebp
.LBB12_9:                               # %cleanup
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	zustroke, .Lfunc_end12-zustroke
	.cfi_endproc

	.align	16, 0x90
	.type	zustrokepath,@function
zustrokepath:                           # @zustrokepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 32
	subq	$176, %rsp
.Ltmp97:
	.cfi_def_cfa_offset 208
.Ltmp98:
	.cfi_offset %rbx, -32
.Ltmp99:
	.cfi_offset %r14, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_currentmatrix
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_11
# BB#1:                                 # %if.end
	movq	8(%rbx), %rdx
	leaq	24(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movq	(%rbx), %rax
	movq	1680(%rax), %rsi
	movq	%rbp, %rdi
	callq	gx_path_assign_preserve
	movq	624(%rbx), %rbp
	movq	8(%rbx), %rdi
	leaq	152(%rsp), %rdx
	movq	%rbp, %rsi
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB13_4
# BB#2:                                 # %if.then.i
	addq	$-16, %rbp
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	upath_append
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_7
# BB#3:                                 # %if.then.3.i
	movq	(%rbx), %rdi
	leaq	152(%rsp), %rsi
	callq	gs_concat
	movl	%eax, %ebp
	movl	$2, %r14d
	jmp	.LBB13_5
.LBB13_4:                               # %if.else.7.i
	xorl	%edx, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	upath_append
	movl	%eax, %ebp
	movl	$1, %r14d
.LBB13_5:                               # %upath_stroke.exit
	testl	%ebp, %ebp
	cmovsl	%ebp, %r14d
	js	.LBB13_7
# BB#6:                                 # %lor.lhs.false
	movq	(%rbx), %rdi
	callq	gs_strokepath
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_7
# BB#8:                                 # %if.end.13
	cmpl	$2, %r14d
	jl	.LBB13_10
# BB#9:                                 # %if.then.15
	movq	(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_setmatrix
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_7
.LBB13_10:                              # %if.end.24
	leaq	24(%rsp), %rdi
	movl	$.L.str.22, %esi
	callq	gx_path_free
	movslq	%r14d, %rax
	shlq	$4, %rax
	subq	%rax, 624(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB13_11
.LBB13_7:                               # %if.then.9
	movq	(%rbx), %rax
	movq	1680(%rax), %rdi
	leaq	24(%rsp), %rsi
	callq	gx_path_assign_free
.LBB13_11:                              # %cleanup
	movl	%ebp, %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	zustrokepath, .Lfunc_end13-zustrokepath
	.cfi_endproc

	.align	16, 0x90
	.type	zgetpath,@function
zgetpath:                               # @zgetpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp104:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp105:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp107:
	.cfi_def_cfa_offset 304
.Ltmp108:
	.cfi_offset %rbx, -56
.Ltmp109:
	.cfi_offset %r12, -48
.Ltmp110:
	.cfi_offset %r13, -40
.Ltmp111:
	.cfi_offset %r14, -32
.Ltmp112:
	.cfi_offset %r15, -24
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	624(%r13), %r12
	leaq	16(%r12), %rbp
	cmpq	640(%r13), %rbp
	jbe	.LBB14_2
# BB#1:                                 # %if.then
	movl	$1, 688(%r13)
	movl	$-16, %ebp
	jmp	.LBB14_33
.LBB14_2:                               # %if.else
	movq	%rbp, 624(%r13)
	movq	(%r13), %rax
	movq	1680(%rax), %rsi
	leaq	184(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gx_path_enum_init
	xorl	%r14d, %r14d
	leaq	96(%rsp), %r15
	jmp	.LBB14_3
	.align	16, 0x90
.LBB14_6:                               # %sw.bb.i
                                        #   in Loop: Header=BB14_3 Depth=1
	addl	$3, %r14d
.LBB14_3:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_path_enum_next
	movl	%eax, %ecx
	cmpl	$4, %eax
	ja	.LBB14_5
# BB#4:                                 # %while.cond.i
                                        #   in Loop: Header=BB14_3 Depth=1
	jmpq	*.LJTI14_0(,%rcx,8)
.LBB14_7:                               # %sw.bb.2.i
                                        #   in Loop: Header=BB14_3 Depth=1
	addl	$7, %r14d
	jmp	.LBB14_3
	.align	16, 0x90
.LBB14_8:                               # %sw.bb.4.i
                                        #   in Loop: Header=BB14_3 Depth=1
	incl	%r14d
	jmp	.LBB14_3
.LBB14_5:                               # %path_length_for_upath.exit.thread
	movl	$-28, %ebp
.LBB14_33:                              # %cleanup.144
	movl	%ebp, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_9:                               # %path_length_for_upath.exit
	testl	%r14d, %r14d
	js	.LBB14_10
# BB#11:                                # %if.end.10
	leal	16777215(%r14), %eax
	sarl	$31, %eax
	shrl	$8, %eax
	leal	16777215(%r14,%rax), %ecx
	sarl	$24, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	8(%r13), %rdi
	movl	$112, %edx
	movl	$.L.str.23, %r8d
	movq	%rbp, %rsi
	callq	gs_alloc_ref_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_33
# BB#12:                                # %if.end.14
	xorl	%ebp, %ebp
	testl	%r14d, %r14d
	je	.LBB14_33
# BB#13:                                # %if.end.17
	leaq	504(%r13), %rbx
	leaq	152(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-21, %ebp
	testl	%eax, %eax
	jle	.LBB14_33
# BB#14:                                # %lor.lhs.false
	leaq	160(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_33
# BB#15:                                # %lor.lhs.false.25
	leaq	168(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_33
# BB#16:                                # %lor.lhs.false.31
	leaq	176(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_33
# BB#17:                                # %for.body.lr.ph
	movq	24(%r12), %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	decl	%eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	movl	%r14d, %edx
.LBB14_19:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpl	%ecx, %eax
	movl	$16777216, %ecx         # imm = 0x1000000
	cmovel	%edx, %ecx
	movq	8(%r13), %rdi
	movl	$240, %edx
	movl	$.L.str.24, %r8d
	movq	%rsi, %rbx
	callq	gs_alloc_ref_array
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_33
# BB#18:                                # %for.cond
                                        #   in Loop: Header=BB14_19 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movq	%rbx, %rsi
	addq	$16, %rsi
	movl	24(%rsp), %edx          # 4-byte Reload
	addl	$-16777216, %edx        # imm = 0xFFFFFFFFFF000000
	cmpq	16(%rsp), %rcx          # 8-byte Folded Reload
	jl	.LBB14_19
# BB#20:                                # %for.end
	movq	24(%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r15, 48(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 56(%rsp)
	leaq	112(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	(%r13), %rdx
	movq	8(%rdx), %rdi
	leaq	184(%rsp), %rbp
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%rbp, %rsi
	callq	gs_path_enum_copy_init
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	gs_path_enum_next
	testl	%eax, %eax
	js	.LBB14_21
# BB#22:                                # %for.body.78.lr.ph
	movl	%r14d, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
.LBB14_23:                              # %for.body.78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_26 Depth 2
	movq	%rcx, %rsi
	movq	%rsi, %rdx
	shlq	$24, %rdx
	movq	24(%rsp), %rcx          # 8-byte Reload
	subl	%edx, %ecx
	movq	40(%rsp), %rdx          # 8-byte Reload
	cmpl	%edx, %esi
	movl	$16777216, %edx         # imm = 0x1000000
	cmovnel	%edx, %ecx
	testl	%ecx, %ecx
	jle	.LBB14_24
# BB#25:                                # %for.body.94.lr.ph
                                        #   in Loop: Header=BB14_23 Depth=1
	movq	%rsi, %rdx
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	shlq	$4, %rdx
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	8(%rsi,%rdx), %r15
	movslq	%ecx, %r12
	xorl	%r14d, %r14d
.LBB14_26:                              # %for.body.94
                                        #   Parent Loop BB14_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %rcx
	cmpl	zgetpath.oper_count(,%rcx,4), %ebx
	jge	.LBB14_28
# BB#27:                                # %if.then.98
                                        #   in Loop: Header=BB14_26 Depth=2
	movslq	%ebx, %rcx
	incl	%ebx
	movq	48(%rsp,%rcx,8), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 8(%r15)
	movl	76(%r13), %ecx
	movl	$4096, %edx             # imm = 0x1000
	addl	%edx, %ecx
	movw	%cx, (%r15)
	jmp	.LBB14_31
.LBB14_28:                              # %if.else.110
                                        #   in Loop: Header=BB14_26 Depth=2
	movq	144(%rsp,%rcx,8), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%r15)
	leaq	184(%rsp), %rdi
	leaq	96(%rsp), %rsi
	callq	gs_path_enum_next
	testl	%eax, %eax
	jle	.LBB14_29
# BB#30:                                # %if.end.120
                                        #   in Loop: Header=BB14_26 Depth=2
	xorl	%ebx, %ebx
	movl	$-28, %ebp
	cmpl	$4, %eax
	jg	.LBB14_33
.LBB14_31:                              # %for.inc.126
                                        #   in Loop: Header=BB14_26 Depth=2
	incq	%r14
	addq	$16, %r15
	cmpq	%r12, %r14
	jl	.LBB14_26
	jmp	.LBB14_32
.LBB14_24:                              #   in Loop: Header=BB14_23 Depth=1
	movq	%rsi, 32(%rsp)          # 8-byte Spill
.LBB14_32:                              # %for.inc.133
                                        #   in Loop: Header=BB14_23 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	xorl	%ebp, %ebp
	cmpq	16(%rsp), %rcx          # 8-byte Folded Reload
	jl	.LBB14_23
	jmp	.LBB14_33
.LBB14_10:
	movl	%r14d, %ebp
	jmp	.LBB14_33
.LBB14_21:
	movl	%eax, %ebp
	jmp	.LBB14_33
.LBB14_29:
	movl	%eax, %ebp
	jmp	.LBB14_33
.Lfunc_end14:
	.size	zgetpath, .Lfunc_end14-zgetpath
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_9
	.quad	.LBB14_6
	.quad	.LBB14_6
	.quad	.LBB14_7
	.quad	.LBB14_8

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	in_path,@function
in_path:                                # @in_path
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp115:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp117:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 48
	subq	$160, %rsp
.Ltmp119:
	.cfi_def_cfa_offset 208
.Ltmp120:
	.cfi_offset %rbx, -48
.Ltmp121:
	.cfi_offset %r12, -40
.Ltmp122:
	.cfi_offset %r14, -32
.Ltmp123:
	.cfi_offset %r15, -24
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	(%rbx), %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB15_10
# BB#1:                                 # %if.end
	movl	$2, %ebp
	leaq	144(%rsp), %rdx
	movl	$2, %esi
	movq	%r15, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB15_3
# BB#2:                                 # %if.then.3
	movq	(%rbx), %rdi
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	152(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	(%rsp), %rsi
	callq	gs_transform
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	andl	$-256, %eax
	movl	%eax, 128(%rsp)
	mulsd	8(%rsp), %xmm0
	cvttsd2si	%xmm0, %ecx
	andl	$-256, %ecx
	movl	%ecx, 132(%rsp)
	addl	$256, %eax              # imm = 0x100
	movl	%eax, 136(%rsp)
	addl	$256, %ecx              # imm = 0x100
	movl	%ecx, 140(%rsp)
	movq	(%rbx), %rdi
	leaq	128(%rsp), %rsi
	callq	gx_clip_to_rectangle
	movl	%eax, %r12d
	jmp	.LBB15_7
.LBB15_3:                               # %if.else
	cmpl	$-17, %eax
	movq	(%rbx), %rdi
	movl	$-17, %r12d
	je	.LBB15_8
# BB#4:                                 # %if.else.34
	movq	1680(%rdi), %rbp
	movq	8(%rbx), %rdx
	leaq	(%rsp), %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_path_init_local_shared
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	gx_path_assign_preserve
	movq	(%rbx), %rdi
	callq	gs_newpath
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	upath_append
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB15_6
# BB#5:                                 # %if.then.43
	movq	(%rbx), %rdi
	callq	gx_clip_to_path
	movl	%eax, %r12d
.LBB15_6:                               # %if.end.46
	movq	(%rbx), %rax
	movq	1680(%rax), %rdi
	leaq	(%rsp), %rsi
	callq	gx_path_assign_free
	movl	$1, %ebp
.LBB15_7:                               # %if.end.51
	movq	(%rbx), %rdi
	testl	%r12d, %r12d
	js	.LBB15_8
# BB#9:                                 # %if.end.57
	callq	gx_set_device_color_1
	movq	8(%rbx), %rdx
	movl	$gs_hit_device, %esi
	movq	%r14, %rdi
	callq	gx_device_init_on_stack
	movabsq	$9223372034707292159, %rax # imm = 0x7FFFFFFF7FFFFFFF
	movq	%rax, 832(%r14)
	movq	%r14, %rdi
	callq	gx_device_fill_in_procs
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	gx_set_device_only
	jmp	.LBB15_10
.LBB15_8:                               # %if.then.54
	callq	gs_grestore
	movl	%r12d, %ebp
.LBB15_10:                              # %cleanup
	movl	%ebp, %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	in_path, .Lfunc_end15-in_path
	.cfi_endproc

	.align	16, 0x90
	.type	upath_append,@function
upath_append:                           # @upath_append
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp126:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp127:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp128:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp129:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp130:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp131:
	.cfi_def_cfa_offset 160
.Ltmp132:
	.cfi_offset %rbx, -56
.Ltmp133:
	.cfi_offset %r12, -48
.Ltmp134:
	.cfi_offset %r13, -40
.Ltmp135:
	.cfi_offset %r14, -32
.Ltmp136:
	.cfi_offset %r15, -24
.Ltmp137:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %r15
	movl	$-17, %ebx
	xorl	%r13d, %r13d
	cmpb	$0, 1(%r15)
	je	.LBB16_83
# BB#1:                                 # %if.end.i
	movzwl	(%r15), %eax
	movl	%eax, %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB16_2
# BB#3:                                 # %do.body.i
	movl	$-7, %ebx
	testb	$32, %al
	je	.LBB16_83
# BB#4:                                 # %do.end.i
	movq	(%rsi), %rdi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	callq	gs_newpath
	movl	4(%r15), %eax
	cmpl	$2, %eax
	jne	.LBB16_40
# BB#5:                                 # %land.lhs.true.i
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	leaq	88(%rsp), %rcx
	movl	$1, %edx
	movq	%r15, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB16_39
# BB#6:                                 # %land.lhs.true.21.i
	movzbl	89(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB16_39
# BB#7:                                 # %if.then.28.i
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	xorl	%r13d, %r13d
	leaq	72(%rsp), %rbx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%rbx, %rcx
	callq	array_get
	movq	%rbx, %rdi
	callq	num_array_format
	testl	%eax, %eax
	js	.LBB16_8
# BB#9:                                 # %if.end.36.i
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movq	88(%rsp), %rdx
	testb	$32, %dl
	movl	$-7, %ebx
	je	.LBB16_31
# BB#10:                                # %do.end.46.i
	shrq	$32, %rdx
	testl	%edx, %edx
	movl	%eax, %ebx
	movl	$1, %eax
	je	.LBB16_11
# BB#12:                                # %while.body.lr.ph.lr.ph.i
	xorl	%r13d, %r13d
	movq	96(%rsp), %rsi
	xorl	%r15d, %r15d
.LBB16_14:                              # %while.body.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_15 Depth 2
                                        #     Child Loop BB16_26 Depth 2
                                        #       Child Loop BB16_29 Depth 3
	decl	%edx
	incq	%rsi
	movl	$1, %ebp
.LBB16_15:                              # %while.body.i
                                        #   Parent Loop BB16_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rsi), %r14d
	cmpl	$32, %r14d
	jbe	.LBB16_18
# BB#16:                                # %while.cond.i
                                        #   in Loop: Header=BB16_15 Depth=2
	addl	$-32, %r14d
	decl	%edx
	incq	%rsi
	cmpl	$-1, %edx
	movl	%r14d, %ebp
	jne	.LBB16_15
	jmp	.LBB16_17
.LBB16_18:                              # %if.else.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movl	%ebx, %edi
	movl	$-15, %ebx
	cmpl	$11, %r14d
	ja	.LBB16_31
# BB#19:                                # %if.else.59.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movzbl	up_data+2(%r14,%r14,2), %r8d
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	movl	%edi, %ebx
	je	.LBB16_22
# BB#20:                                # %if.else.59.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movzbl	%r14b, %edi
	cmpl	$11, %edi
	jne	.LBB16_22
# BB#21:                                # %if.then.66.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	cmpl	$2, %eax
	cmovbel	%r8d, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	jmp	.LBB16_25
.LBB16_22:                              # %if.else.70.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movzbl	up_data+1(%r14,%r14,2), %edx
	testl	%eax, %edx
	je	.LBB16_23
# BB#24:                                # %if.end.75.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movl	%r8d, 44(%rsp)          # 4-byte Spill
.LBB16_25:                              # %do.body.79.preheader.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movb	up_data(%r14,%r14,2), %dl
	movb	%dl, 16(%rsp)           # 1-byte Spill
	movl	%r14d, %edx
	andl	$254, %edx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
.LBB16_26:                              # %do.body.79.i
                                        #   Parent Loop BB16_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_29 Depth 3
	cmpq	$10, %rdx
	jne	.LBB16_28
# BB#27:                                #   in Loop: Header=BB16_26 Depth=2
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	jmp	.LBB16_37
.LBB16_28:                              # %do.body.84.lr.ph.i
                                        #   in Loop: Header=BB16_26 Depth=2
	movl	%ebp, 48(%rsp)          # 4-byte Spill
	movq	624(%rax), %r12
	addq	$16, %r12
	movb	16(%rsp), %bpl          # 1-byte Reload
.LBB16_29:                              # %do.body.84.i
                                        #   Parent Loop BB16_14 Depth=1
                                        #     Parent Loop BB16_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	640(%rax), %r12
	ja	.LBB16_30
# BB#32:                                # %if.else.92.i
                                        #   in Loop: Header=BB16_29 Depth=3
	movq	%r12, 624(%rax)
	incl	%r13d
	movq	8(%rax), %rdi
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	72(%rsp), %rsi
	movl	%ebx, %edx
	movl	%r15d, %ecx
	movq	%r12, %r8
	callq	num_array_get
	cmpl	$16, %eax
	jne	.LBB16_33
# BB#35:                                # %sw.bb.105.i
                                        #   in Loop: Header=BB16_29 Depth=3
	movw	$4096, (%r12)           # imm = 0x1000
	jmp	.LBB16_36
.LBB16_33:                              # %if.else.92.i
                                        #   in Loop: Header=BB16_29 Depth=3
	movl	%ebx, %ecx
	movl	$-20, %ebx
	cmpl	$11, %eax
	jne	.LBB16_31
# BB#34:                                # %sw.bb.i
                                        #   in Loop: Header=BB16_29 Depth=3
	movw	$2816, (%r12)           # imm = 0xB00
	movl	%ecx, %ebx
.LBB16_36:                              # %while.cond.80.backedge.i
                                        #   in Loop: Header=BB16_29 Depth=3
	decb	%bpl
	incl	%r15d
	addq	$16, %r12
	testb	%bpl, %bpl
	movq	56(%rsp), %rax          # 8-byte Reload
	jne	.LBB16_29
.LBB16_37:                              # %while.end.i
                                        #   in Loop: Header=BB16_26 Depth=2
	movl	%ebx, %r12d
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rax, %rdi
	callq	*up_ops(,%r14,8)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB16_31
# BB#38:                                # %do.cond.116.i
                                        #   in Loop: Header=BB16_26 Depth=2
	movl	48(%rsp), %ebp          # 4-byte Reload
	decl	%ebp
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%r12d, %ebx
	movq	32(%rsp), %rdx          # 8-byte Reload
	jne	.LBB16_26
# BB#13:                                # %while.cond.loopexit.i
                                        #   in Loop: Header=BB16_14 Depth=1
	movq	8(%rsp), %rdx           # 8-byte Reload
	testl	%edx, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	movl	44(%rsp), %eax          # 4-byte Reload
	jne	.LBB16_14
	jmp	.LBB16_17
.LBB16_2:
	movl	$-20, %ebx
.LBB16_83:                              # %if.then
	movslq	%r13d, %rax
	shlq	$4, %rax
	subq	%rax, 624(%rsi)
	movl	%ebx, %eax
.LBB16_84:                              # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_39:                              # %if.else.138thread-pre-split.i
	movl	4(%r15), %eax
.LBB16_40:                              # %if.else.138.i
	movl	%eax, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	je	.LBB16_41
# BB#42:                                # %for.body.lr.ph.i
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	movq	56(%rsp), %rsi          # 8-byte Reload
	leaq	504(%rsi), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	movl	$1, 44(%rsp)            # 4-byte Folded Spill
	xorl	%r12d, %r12d
.LBB16_43:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	624(%rsi), %r14
	movq	8(%rsi), %rdi
	movq	%rsi, %rbp
	movq	%r15, %rsi
	movq	%r12, %rdx
	leaq	72(%rsp), %rcx
	callq	array_get
	movl	$-20, %ebx
	movzbl	73(%rsp), %eax
	addl	$-11, %eax
	cmpl	$5, %eax
	ja	.LBB16_82
# BB#44:                                # %for.body.i
                                        #   in Loop: Header=BB16_43 Depth=1
	jmpq	*.LJTI16_0(,%rax,8)
.LBB16_45:                              # %sw.bb.159.i
                                        #   in Loop: Header=BB16_43 Depth=1
	addq	$16, %r14
	movq	%rbp, %rsi
	cmpq	640(%rsi), %r14
	ja	.LBB16_46
# BB#63:                                # %if.else.172.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movq	%r13, 32(%rsp)          # 8-byte Spill
	leal	1(%r13), %r13d
	movq	%r14, 624(%rsi)
	movups	72(%rsp), %xmm0
	movups	%xmm0, (%r14)
	jmp	.LBB16_64
.LBB16_47:                              # %sw.bb.179.i
                                        #   in Loop: Header=BB16_43 Depth=1
	testb	$-128, 72(%rsp)
	je	.LBB16_82
# BB#48:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	leaq	72(%rsp), %rsi
	leaq	64(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB16_82
# BB#49:                                # %lor.lhs.false.188.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movq	64(%rsp), %rax
	movzwl	(%rax), %ecx
	cmpl	$5375, %ecx             # imm = 0x14FF
	ja	.LBB16_52
# BB#50:                                # %cond.end.200.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movzbl	1(%rax), %edx
	cmpl	$15, %edx
	je	.LBB16_52
	jmp	.LBB16_82
.LBB16_51:                              # %sw.bb.206.i
                                        #   in Loop: Header=BB16_43 Depth=1
	leaq	72(%rsp), %rax
	movq	%rax, 64(%rsp)
	movzwl	72(%rsp), %ecx
.LBB16_52:                              # %xop.i
                                        #   in Loop: Header=BB16_43 Depth=1
	testb	$-128, %cl
	je	.LBB16_82
# BB#53:                                # %if.end.213.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movq	8(%rax), %rax
	xorl	%ecx, %ecx
	movl	$zsetbbox, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#54:                                # %for.inc.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$1, %ecx
	movl	$zmoveto, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#71:                                # %for.inc.1.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$2, %ecx
	movl	$zrmoveto, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#72:                                # %for.inc.2.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$3, %ecx
	movl	$zlineto, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#73:                                # %for.inc.3.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$4, %ecx
	movl	$zrlineto, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#74:                                # %for.inc.4.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$5, %ecx
	movl	$zcurveto, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#75:                                # %for.inc.5.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$6, %ecx
	movl	$zrcurveto, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#76:                                # %for.inc.6.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$7, %ecx
	movl	$zarc, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#77:                                # %for.inc.7.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$8, %ecx
	movl	$zarcn, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#78:                                # %for.inc.8.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$9, %ecx
	movl	$zarct, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#79:                                # %for.inc.9.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$10, %ecx
	movl	$zclosepath, %edx
	cmpq	%rdx, %rax
	je	.LBB16_55
# BB#80:                                # %for.inc.10.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	$11, %ecx
	movl	$zucache, %edx
	cmpq	%rdx, %rax
	jne	.LBB16_82
.LBB16_55:                              # %if.end.229.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movl	%ecx, %ecx
	movzbl	up_data(%rcx,%rcx,2), %eax
	cmpl	%eax, %r13d
	movl	28(%rsp), %edx          # 4-byte Reload
	jne	.LBB16_82
# BB#56:                                # %if.end.237.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movzbl	up_data+2(%rcx,%rcx,2), %eax
	testl	%edx, %edx
	je	.LBB16_59
# BB#57:                                # %if.end.237.i
                                        #   in Loop: Header=BB16_43 Depth=1
	cmpl	$11, %ecx
	jne	.LBB16_59
# BB#58:                                # %if.then.242.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	44(%rsp), %edx          # 4-byte Reload
	cmpl	$2, %edx
	cmovbel	%eax, %edx
	movl	%edx, 44(%rsp)          # 4-byte Spill
	jmp	.LBB16_61
.LBB16_59:                              # %if.else.251.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movzbl	up_data+1(%rcx,%rcx,2), %edx
	testl	44(%rsp), %edx          # 4-byte Folded Reload
	je	.LBB16_82
# BB#60:                                # %if.end.257.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	%eax, 44(%rsp)          # 4-byte Spill
.LBB16_61:                              # %if.end.260.i
                                        #   in Loop: Header=BB16_43 Depth=1
	movq	%rbp, %rdi
	movq	%rdi, %rbx
	callq	*up_ops(,%rcx,8)
	movq	%rbx, %rsi
	xorl	%r13d, %r13d
	testl	%eax, %eax
	js	.LBB16_62
.LBB16_64:                              # %for.inc.280.i
                                        #   in Loop: Header=BB16_43 Depth=1
	incq	%r12
	cmpq	48(%rsp), %r12          # 8-byte Folded Reload
	jl	.LBB16_43
# BB#65:                                # %for.end.282.i
	movl	$-20, %ebx
	testl	%r13d, %r13d
	movl	44(%rsp), %eax          # 4-byte Reload
	jne	.LBB16_83
	jmp	.LBB16_66
.LBB16_41:
	movl	$-20, %ebx
	movq	56(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB16_83
.LBB16_8:
	movl	%eax, %ebx
	movq	56(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB16_83
.LBB16_46:                              # %if.then.168.i
	movl	$1, 688(%rsi)
	movq	%rsi, %rbp
	movl	$-16, %ebx
	jmp	.LBB16_82
.LBB16_11:
	xorl	%r13d, %r13d
.LBB16_17:                              # %cleanup.129.thread112.i
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rsi          # 8-byte Reload
.LBB16_66:                              # %if.end.295.i
	cmpl	$4, %eax
	jae	.LBB16_68
# BB#67:
	movq	32(%rsp), %r13          # 8-byte Reload
	movl	$-20, %ebx
	jmp	.LBB16_83
.LBB16_68:                              # %if.end.299.i
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	je	.LBB16_70
# BB#69:                                # %if.end.299.i
	cmpl	$4, %eax
	jne	.LBB16_70
# BB#81:                                # %if.then.304.i
	addq	$32, 624(%rsi)
	movq	%rsi, %rdi
	movq	%rsi, %rbp
	callq	zmoveto
	movl	%eax, %ebx
	jmp	.LBB16_82
.LBB16_62:                              # %if.then.266.i
	movq	%rsi, %rbp
	cmpl	$-14, %eax
	movl	$-15, %ebx
	cmovnel	%eax, %ebx
	movq	32(%rsp), %r13          # 8-byte Reload
.LBB16_82:                              # %upath_append_aux.exit
	xorl	%eax, %eax
	testl	%ebx, %ebx
	movq	%rbp, %rsi
	jns	.LBB16_84
	jmp	.LBB16_83
.LBB16_70:                              # %upath_append_aux.exit.thread8
	xorl	%eax, %eax
	jmp	.LBB16_84
.LBB16_30:                              # %if.then.89.i
	movl	$1, 688(%rax)
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$-16, %ebx
.LBB16_31:                              # %cleanup.129.thread.i
	movq	56(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB16_83
.LBB16_23:
	movl	$-20, %ebx
	xorl	%r13d, %r13d
	movq	56(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB16_83
.Lfunc_end16:
	.size	upath_append, .Lfunc_end16-upath_append
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_45
	.quad	.LBB16_82
	.quad	.LBB16_47
	.quad	.LBB16_82
	.quad	.LBB16_51
	.quad	.LBB16_45

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"make_upath"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ucache"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"setbbox"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"moveto"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"lineto"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"curveto"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"closepath"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"level2dict"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1ineofill"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"1infill"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1instroke"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"2inueofill"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"2inufill"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"2inustroke"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1uappend"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"0ucache"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1ueofill"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1ufill"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1upath"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1ustroke"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"1ustrokepath"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"0.getpath"
	.size	.L.str.21, 10

	.type	zupath_l2_op_defs,@object # @zupath_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zupath_l2_op_defs
	.align	16
zupath_l2_op_defs:
	.quad	.L.str.7
	.quad	0
	.quad	.L.str.8
	.quad	zineofill
	.quad	.L.str.9
	.quad	zinfill
	.quad	.L.str.10
	.quad	zinstroke
	.quad	.L.str.11
	.quad	zinueofill
	.quad	.L.str.12
	.quad	zinufill
	.quad	.L.str.13
	.quad	zinustroke
	.quad	.L.str.14
	.quad	zuappend
	.quad	.L.str.15
	.quad	zucache
	.quad	.L.str.16
	.quad	zueofill
	.quad	.L.str.17
	.quad	zufill
	.quad	.L.str.18
	.quad	zupath
	.quad	.L.str.19
	.quad	zustroke
	.quad	.L.str.20
	.quad	zustrokepath
	.quad	.L.str.21
	.quad	zgetpath
	.zero	16
	.size	zupath_l2_op_defs, 256

	.type	up_data,@object         # @up_data
	.align	16
up_data:
	.byte	4                       # 0x4
	.byte	3                       # 0x3
	.byte	4                       # 0x4
	.byte	2                       # 0x2
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	2                       # 0x2
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	2                       # 0x2
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	2                       # 0x2
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	6                       # 0x6
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	6                       # 0x6
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	5                       # 0x5
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	5                       # 0x5
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	5                       # 0x5
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	12                      # 0xc
	.byte	8                       # 0x8
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.size	up_data, 36

	.type	up_ops,@object          # @up_ops
	.align	16
up_ops:
	.quad	zsetbbox
	.quad	zmoveto
	.quad	zrmoveto
	.quad	zlineto
	.quad	zrlineto
	.quad	zcurveto
	.quad	zrcurveto
	.quad	zarc
	.quad	zarcn
	.quad	zarct
	.quad	zclosepath
	.quad	zucache
	.size	up_ops, 96

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"ustrokepath"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"zgetpath_master"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"zgetpath_leaf"
	.size	.L.str.24, 14

	.type	zgetpath.oper_count,@object # @zgetpath.oper_count
	.section	.rodata,"a",@progbits
	.align	16
zgetpath.oper_count:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	6                       # 0x6
	.long	0                       # 0x0
	.size	zgetpath.oper_count, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
