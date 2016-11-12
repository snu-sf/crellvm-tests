	.text
	.file	"gsdps.bc"
	.globl	gs_initviewclip
	.align	16, 0x90
	.type	gs_initviewclip,@function
gs_initviewclip:                        # @gs_initviewclip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	1704(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB0_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 232(%rbx)
	je	.LBB0_3
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	callq	gx_cpath_reset
	movl	$0, 232(%rbx)
.LBB0_3:                                # %if.end
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gs_initviewclip, .Lfunc_end0-gs_initviewclip
	.cfi_endproc

	.globl	gs_viewclip
	.align	16, 0x90
	.type	gs_viewclip,@function
gs_viewclip:                            # @gs_viewclip
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %esi
	jmp	common_viewclip         # TAILCALL
.Lfunc_end1:
	.size	gs_viewclip, .Lfunc_end1-gs_viewclip
	.cfi_endproc

	.align	16, 0x90
	.type	common_viewclip,@function
common_viewclip:                        # @common_viewclip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 40
	subq	$328, %rsp              # imm = 0x148
.Ltmp6:
	.cfi_def_cfa_offset 368
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	1704(%rbx), %r15
	testq	%r15, %r15
	jne	.LBB2_3
# BB#1:                                 # %if.then
	movq	8(%rbx), %rsi
	xorl	%edi, %edi
	movl	$.L.str, %edx
	callq	gx_cpath_alloc_shared
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB2_8
# BB#2:                                 # %if.end
	movq	%r15, 1704(%rbx)
.LBB2_3:                                # %if.end.4
	movq	1680(%rbx), %rdi
	leaq	312(%rsp), %rsi
	callq	gx_path_bbox
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_8
# BB#4:                                 # %if.end.8
	movq	8(%rbx), %rdx
	leaq	8(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_cpath_init_local_shared
	leaq	312(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gx_cpath_from_rectangle
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_6
# BB#5:                                 # %if.end.16
	movq	1680(%rbx), %rdx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%r14d, %ecx
	callq	gx_cpath_clip
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_6
# BB#7:                                 # %if.end.19
	movl	%r14d, 240(%rsp)
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	gx_cpath_assign_free
	movq	%rbx, %rdi
	callq	gs_newpath
	xorl	%ebp, %ebp
	jmp	.LBB2_8
.LBB2_6:                                # %if.then.18
	leaq	8(%rsp), %rdi
	movl	$.L.str, %esi
	callq	gx_cpath_free
.LBB2_8:                                # %cleanup
	movl	%ebp, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	common_viewclip, .Lfunc_end2-common_viewclip
	.cfi_endproc

	.globl	gs_eoviewclip
	.align	16, 0x90
	.type	gs_eoviewclip,@function
gs_eoviewclip:                          # @gs_eoviewclip
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	jmp	common_viewclip         # TAILCALL
.Lfunc_end3:
	.size	gs_eoviewclip, .Lfunc_end3-gs_eoviewclip
	.cfi_endproc

	.globl	gs_viewclippath
	.align	16, 0x90
	.type	gs_viewclippath,@function
gs_viewclippath:                        # @gs_viewclippath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 176
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	1704(%r14), %rbx
	movq	8(%r14), %rdx
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_path_init_local_shared
	testq	%rbx, %rbx
	je	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, 232(%rbx)
	je	.LBB4_2
# BB#4:                                 # %if.else
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_cpath_to_path
	jmp	.LBB4_5
.LBB4_2:                                # %if.then
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_default_clip_box
	testl	%eax, %eax
	js	.LBB4_7
# BB#3:                                 # %cleanup.thread
	movl	8(%rsp), %esi
	movl	12(%rsp), %edx
	movl	16(%rsp), %ecx
	movl	20(%rsp), %r8d
	leaq	24(%rsp), %rdi
	callq	gx_path_add_rectangle
.LBB4_5:                                # %if.end.11
	testl	%eax, %eax
	js	.LBB4_7
# BB#6:                                 # %if.end.14
	movq	1680(%r14), %rdi
	leaq	24(%rsp), %rsi
	callq	gx_path_assign_free
.LBB4_7:                                # %cleanup.16
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	gs_viewclippath, .Lfunc_end4-gs_viewclippath
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_[eo]viewclip"
	.size	.L.str, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
