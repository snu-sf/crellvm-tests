	.text
	.file	"sjpegd.bc"
	.globl	gs_jpeg_create_decompress
	.align	16, 0x90
	.type	gs_jpeg_create_decompress,@function
gs_jpeg_create_decompress:              # @gs_jpeg_create_decompress
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
	movl	$880, %edx              # imm = 0x370
	callq	jpeg_CreateDecompress
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gs_jpeg_create_decompress, .Lfunc_end0-gs_jpeg_create_decompress
	.cfi_endproc

	.globl	gs_jpeg_read_header
	.align	16, 0x90
	.type	gs_jpeg_read_header,@function
gs_jpeg_read_header:                    # @gs_jpeg_read_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB1_2:                                # %if.end
	movl	$464, %edi              # imm = 0x1D0
	addq	152(%rbx), %rdi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	jpeg_read_header        # TAILCALL
.Lfunc_end1:
	.size	gs_jpeg_read_header, .Lfunc_end1-gs_jpeg_read_header
	.cfi_endproc

	.globl	gs_jpeg_start_decompress
	.align	16, 0x90
	.type	gs_jpeg_start_decompress,@function
gs_jpeg_start_decompress:               # @gs_jpeg_start_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB2_2:                                # %if.end
	movl	$464, %edi              # imm = 0x1D0
	addq	152(%rbx), %rdi
	popq	%rbx
	jmp	jpeg_start_decompress   # TAILCALL
.Lfunc_end2:
	.size	gs_jpeg_start_decompress, .Lfunc_end2-gs_jpeg_start_decompress
	.cfi_endproc

	.globl	gs_jpeg_read_scanlines
	.align	16, 0x90
	.type	gs_jpeg_read_scanlines,@function
gs_jpeg_read_scanlines:                 # @gs_jpeg_read_scanlines
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
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$232, %edi
	addq	152(%rbp), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	%rbp, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB3_2:                                # %if.end
	movl	$464, %edi              # imm = 0x1D0
	addq	152(%rbp), %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	jpeg_read_scanlines     # TAILCALL
.Lfunc_end3:
	.size	gs_jpeg_read_scanlines, .Lfunc_end3-gs_jpeg_read_scanlines
	.cfi_endproc

	.globl	gs_jpeg_finish_decompress
	.align	16, 0x90
	.type	gs_jpeg_finish_decompress,@function
gs_jpeg_finish_decompress:              # @gs_jpeg_finish_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gs_jpeg_log_error       # TAILCALL
.LBB4_2:                                # %if.end
	movl	$464, %edi              # imm = 0x1D0
	addq	152(%rbx), %rdi
	popq	%rbx
	jmp	jpeg_finish_decompress  # TAILCALL
.Lfunc_end4:
	.size	gs_jpeg_finish_decompress, .Lfunc_end4-gs_jpeg_finish_decompress
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
