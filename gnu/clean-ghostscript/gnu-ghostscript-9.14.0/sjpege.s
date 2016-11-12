	.text
	.file	"sjpege.bc"
	.globl	gs_jpeg_create_compress
	.align	16, 0x90
	.type	gs_jpeg_create_compress,@function
gs_jpeg_create_compress:                # @gs_jpeg_create_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	gs_jpeg_error_setup
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB0_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB0_1:                                # %return
	movq	152(%rbx), %rax
	movl	$0, 456(%rax)
	movl	$0, 460(%rax)
	movq	$0, 448(%rax)
	movq	152(%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	$90, %esi
	movl	$584, %edx              # imm = 0x248
	callq	jpeg_CreateCompress
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gs_jpeg_create_compress, .Lfunc_end0-gs_jpeg_create_compress
	.cfi_endproc

	.globl	gs_jpeg_set_defaults
	.align	16, 0x90
	.type	gs_jpeg_set_defaults,@function
gs_jpeg_set_defaults:                   # @gs_jpeg_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB1_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB1_1:                                # %return
	movq	152(%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	callq	jpeg_set_defaults
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gs_jpeg_set_defaults, .Lfunc_end1-gs_jpeg_set_defaults
	.cfi_endproc

	.globl	gs_jpeg_set_colorspace
	.align	16, 0x90
	.type	gs_jpeg_set_colorspace,@function
gs_jpeg_set_colorspace:                 # @gs_jpeg_set_colorspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB2_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB2_1:                                # %return
	movq	152(%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	%ebp, %esi
	callq	jpeg_set_colorspace
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_jpeg_set_colorspace, .Lfunc_end2-gs_jpeg_set_colorspace
	.cfi_endproc

	.globl	gs_jpeg_set_linear_quality
	.align	16, 0x90
	.type	gs_jpeg_set_linear_quality,@function
gs_jpeg_set_linear_quality:             # @gs_jpeg_set_linear_quality
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB3_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB3_1:                                # %return
	movq	152(%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	jpeg_set_linear_quality
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gs_jpeg_set_linear_quality, .Lfunc_end3-gs_jpeg_set_linear_quality
	.cfi_endproc

	.globl	gs_jpeg_set_quality
	.align	16, 0x90
	.type	gs_jpeg_set_quality,@function
gs_jpeg_set_quality:                    # @gs_jpeg_set_quality
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB4_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB4_1:                                # %return
	movq	152(%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	jpeg_set_quality
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gs_jpeg_set_quality, .Lfunc_end4-gs_jpeg_set_quality
	.cfi_endproc

	.globl	gs_jpeg_start_compress
	.align	16, 0x90
	.type	gs_jpeg_start_compress,@function
gs_jpeg_start_compress:                 # @gs_jpeg_start_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB5_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB5_1:                                # %return
	movq	152(%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	movl	%ebp, %esi
	callq	jpeg_start_compress
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_jpeg_start_compress, .Lfunc_end5-gs_jpeg_start_compress
	.cfi_endproc

	.globl	gs_jpeg_write_scanlines
	.align	16, 0x90
	.type	gs_jpeg_write_scanlines,@function
gs_jpeg_write_scanlines:                # @gs_jpeg_write_scanlines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$232, %edi
	addq	152(%rbp), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	%rbp, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB6_2:                                # %if.end
	movl	$464, %edi              # imm = 0x1D0
	addq	152(%rbp), %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	jpeg_write_scanlines    # TAILCALL
.Lfunc_end6:
	.size	gs_jpeg_write_scanlines, .Lfunc_end6-gs_jpeg_write_scanlines
	.cfi_endproc

	.globl	gs_jpeg_finish_compress
	.align	16, 0x90
	.type	gs_jpeg_finish_compress,@function
gs_jpeg_finish_compress:                # @gs_jpeg_finish_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB7_1
# BB#2:                                 # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB7_1:                                # %return
	movq	152(%rbx), %rdi
	addq	$464, %rdi              # imm = 0x1D0
	callq	jpeg_finish_compress
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	gs_jpeg_finish_compress, .Lfunc_end7-gs_jpeg_finish_compress
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
