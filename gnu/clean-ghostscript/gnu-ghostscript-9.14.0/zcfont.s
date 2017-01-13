	.text
	.file	"zcfont.bc"
	.align	16, 0x90
	.type	zcshow,@function
zcshow:                                 # @zcshow
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-16(%rbx), %rax
	movzwl	-16(%rbx), %ecx
	andl	$15552, %ecx            # imm = 0x3CC0
	cmpl	$1216, %ecx             # imm = 0x4C0
	jne	.LBB0_2
# BB#1:
	movq	%rax, %r15
	jmp	.LBB0_4
.LBB0_2:                                # %if.else
	movzwl	(%rbx), %ecx
	andl	$15552, %ecx            # imm = 0x3CC0
	cmpl	$1216, %ecx             # imm = 0x4C0
	jne	.LBB0_10
# BB#3:
	movq	%rbx, %r15
	movq	%rax, %rbx
.LBB0_4:                                # %if.end.18
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	op_show_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_9
# BB#5:                                 # %lor.lhs.false
	movq	8(%rbx), %rsi
	movl	4(%rbx), %edx
	movq	(%r14), %rdi
	movq	8(%r14), %rcx
	leaq	(%rsp), %r8
	callq	gs_cshow_begin
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_9
# BB#6:                                 # %if.end.26
	movq	(%rsp), %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	op_show_finish_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_7
# BB#8:                                 # %if.end.35
	movq	520(%r14), %rax
	movups	(%r15), %xmm0
	movups	%xmm0, -16(%rax)
	addq	$-32, 624(%r14)
	movq	%r14, %rdi
	callq	cshow_continue
	movl	%eax, %ebp
	jmp	.LBB0_9
.LBB0_10:                               # %if.else.10
	movq	632(%r14), %rax
	addq	$16, %rax
	cmpq	%rax, %rbx
	sbbl	%eax, %eax
	andl	$1, %eax
	leal	-20(%rax,%rax,2), %ebp
	jmp	.LBB0_9
.LBB0_7:                                # %if.then.30
	movq	8(%r14), %rdi
	movq	(%rsp), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB0_9:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zcshow, .Lfunc_end0-zcshow
	.cfi_endproc

	.align	16, 0x90
	.type	zrootfont,@function
zrootfont:                              # @zrootfont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	addq	$16, %rbx
	cmpq	640(%rdi), %rbx
	jbe	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB1_2:                                # %if.else
	movq	%rbx, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_rootfont
	movq	72(%rax), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	zrootfont, .Lfunc_end1-zrootfont
	.cfi_endproc

	.align	16, 0x90
	.type	cshow_continue,@function
cshow_continue:                         # @cshow_continue
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 128
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r15
	leaq	520(%rbx), %rbp
	movq	520(%rbx), %rax
	movq	536(%rbx), %rcx
	movq	8(%rax), %r14
	addq	$-64, %rcx
	cmpq	%rcx, %rax
                                        # implicit-def: R12D
	jbe	.LBB2_2
# BB#1:                                 # %if.then
	movl	$4, %esi
	movq	%rbp, %rdi
	callq	ref_stack_extend
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_15
.LBB2_2:                                # %if.end.12
	movq	%r14, %rdi
	callq	gs_text_process
	cmpl	$2, %eax
	jne	.LBB2_3
# BB#5:                                 # %if.end.34
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	520(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	gs_text_current_font
	movq	%rax, %r15
	movq	(%rbx), %rdi
	callq	gs_rootfont
	movq	%rax, %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	72(%r15), %rax
	movzwl	(%rax), %eax
	andl	$12, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	72(%rbp), %rax
	movzwl	(%rax), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movslq	240(%r14), %r13
	leaq	56(%rsp), %rsi
	movq	%r14, %rdi
	callq	gs_text_current_width
	cmpq	%rbp, %r15
	je	.LBB2_6
# BB#7:                                 # %if.else
	leaq	8(%rbx), %rcx
	movl	56(%rbx), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	testl	%r13d, %r13d
	jle	.LBB2_9
# BB#8:                                 # %if.then.54
	shlq	$4, %r13
	movq	232(%r13,%r14), %rbp
	movq	%rcx, %r13
	movq	%r13, %rdi
	movl	44(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
	movq	24(%r15), %rdi
	addq	$80, %rbp
	leaq	48(%rsp), %rcx
	movq	%r15, %rsi
	movq	%rbp, %rdx
	jmp	.LBB2_10
.LBB2_3:                                # %if.then.15
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	op_show_continue_dispatch
	movl	%eax, %r12d
	cmpl	$5, %r12d
	jne	.LBB2_15
# BB#4:                                 # %if.then.18
	movq	(%rbp), %rax
	movq	$cshow_continue, -8(%rax)
	movq	(%rbp), %rax
	movw	$3968, -16(%rax)        # imm = 0xF80
	movl	$0, -12(%rax)
	jmp	.LBB2_14
.LBB2_6:                                # %if.then.51
	movq	%r15, 48(%rsp)
	jmp	.LBB2_11
.LBB2_9:                                # %if.else.69
	movq	%rcx, %r13
	movq	%r13, %rdi
	movl	44(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
	movq	24(%r15), %rdi
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	80(%rax), %rdx
	leaq	48(%rsp), %rcx
	movq	%r15, %rsi
.LBB2_10:                               # %if.else.69
	callq	gs_makefont
	movl	%eax, %ebp
	movq	%r13, %rdi
	movl	8(%rsp), %esi           # 4-byte Reload
	callq	ialloc_set_space
	testl	%ebp, %ebp
	cmovsl	%ebp, %r12d
	js	.LBB2_15
.LBB2_11:                               # %do.body
	movq	32(%rsp), %rbp          # 8-byte Reload
	leaq	48(%rbp), %rax
	cmpq	640(%rbx), %rax
	jbe	.LBB2_13
# BB#12:                                # %if.then.93
	movl	$3, 688(%rbx)
	movl	$-16, %r12d
	jmp	.LBB2_15
.LBB2_13:                               # %if.else.96
	movq	16(%rsp), %r13          # 8-byte Reload
	addq	$-16, %r13
	movl	12(%rsp), %r12d         # 4-byte Reload
	andl	$12, %r12d
	movq	%rax, 624(%rbx)
	movq	%r14, %rdi
	callq	gs_text_current_char
	movzbl	%al, %eax
	movq	%rax, 24(%rbp)
	movw	$2816, 16(%rbp)         # imm = 0xB00
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rbp)
	movw	$4096, 32(%rbp)         # imm = 0x1000
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 56(%rbp)
	movw	$4096, 48(%rbp)         # imm = 0x1000
	movq	520(%rbx), %rax
	movq	%r15, -72(%rax)
	movl	44(%rsp), %ecx          # 4-byte Reload
	orl	$2048, %ecx             # imm = 0x800
	movq	520(%rbx), %rax
	movw	%cx, -80(%rax)
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, -88(%rax)
	movswl	%r12w, %eax
	orl	$2048, %eax             # imm = 0x800
	movq	520(%rbx), %rcx
	movw	%ax, -96(%rcx)
	leaq	16(%rcx), %rax
	movq	%rax, 520(%rbx)
	movq	$cshow_restore_font, 24(%rcx)
	movq	520(%rbx), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movq	(%rbx), %rdi
	movq	48(%rsp), %rsi
	callq	gs_set_currentfont
	movq	520(%rbx), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movups	(%r13), %xmm0
	movups	%xmm0, 16(%rax)
.LBB2_14:                               # %cleanup.179
	movl	$5, %r12d
.LBB2_15:                               # %cleanup.179
	movl	%r12d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cshow_continue, .Lfunc_end2-cshow_continue
	.cfi_endproc

	.align	16, 0x90
	.type	cshow_restore_font,@function
cshow_restore_font:                     # @cshow_restore_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movq	520(%rbx), %rax
	movq	-88(%rax), %rsi
	callq	gs_setfont
	movq	(%rbx), %rdi
	movq	520(%rbx), %rax
	movq	-72(%rax), %rsi
	callq	gs_set_currentfont
	movq	%rbx, %rdi
	popq	%rbx
	jmp	cshow_continue          # TAILCALL
.Lfunc_end3:
	.size	cshow_restore_font, .Lfunc_end3-cshow_restore_font
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2cshow"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0rootfont"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0%cshow_continue"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0%cshow_restore_font"
	.size	.L.str.3, 21

	.type	zcfont_op_defs,@object  # @zcfont_op_defs
	.section	.rodata,"a",@progbits
	.globl	zcfont_op_defs
	.align	16
zcfont_op_defs:
	.quad	.L.str
	.quad	zcshow
	.quad	.L.str.1
	.quad	zrootfont
	.quad	.L.str.2
	.quad	cshow_continue
	.quad	.L.str.3
	.quad	cshow_restore_font
	.zero	16
	.size	zcfont_op_defs, 80

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"op_show_enum_setup"
	.size	.L.str.4, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
