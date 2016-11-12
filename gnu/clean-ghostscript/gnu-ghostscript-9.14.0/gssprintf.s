	.text
	.file	"gssprintf.bc"
	.globl	gs_vsnprintf
	.align	16, 0x90
	.type	gs_vsnprintf,@function
gs_vsnprintf:                           # @gs_vsnprintf
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%esi, %rsi
	jmp	trio_vsnprintf          # TAILCALL
.Lfunc_end0:
	.size	gs_vsnprintf, .Lfunc_end0-gs_vsnprintf
	.cfi_endproc

	.globl	gs_snprintf
	.align	16, 0x90
	.type	gs_snprintf,@function
gs_snprintf:                            # @gs_snprintf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp0:
	.cfi_def_cfa_offset 208
	testb	%al, %al
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB1_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$24, 176(%rsp)
	movslq	%esi, %rsi
	leaq	176(%rsp), %rcx
	callq	trio_vsnprintf
	addq	$200, %rsp
	retq
.Lfunc_end1:
	.size	gs_snprintf, .Lfunc_end1-gs_snprintf
	.cfi_endproc

	.globl	gs_vsprintf
	.align	16, 0x90
	.type	gs_vsprintf,@function
gs_vsprintf:                            # @gs_vsprintf
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	trio_vsprintf           # TAILCALL
.Lfunc_end2:
	.size	gs_vsprintf, .Lfunc_end2-gs_vsprintf
	.cfi_endproc

	.globl	gs_sprintf
	.align	16, 0x90
	.type	gs_sprintf,@function
gs_sprintf:                             # @gs_sprintf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 208
	testb	%al, %al
	je	.LBB3_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB3_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	176(%rsp), %rdx
	callq	trio_vsprintf
	addq	$200, %rsp
	retq
.Lfunc_end3:
	.size	gs_sprintf, .Lfunc_end3-gs_sprintf
	.cfi_endproc

	.globl	gs_sscanf
	.align	16, 0x90
	.type	gs_sscanf,@function
gs_sscanf:                              # @gs_sscanf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 208
	testb	%al, %al
	je	.LBB4_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB4_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	leaq	176(%rsp), %rdx
	callq	trio_vsscanf
	addq	$200, %rsp
	retq
.Lfunc_end4:
	.size	gs_sscanf, .Lfunc_end4-gs_sscanf
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
