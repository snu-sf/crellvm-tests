	.text
	.file	"sjpegc.bc"
	.globl	gs_jpeg_error_setup
	.align	16, 0x90
	.type	gs_jpeg_error_setup,@function
gs_jpeg_error_setup:                    # @gs_jpeg_error_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	152(%r14), %rbx
	leaq	56(%rbx), %r15
	movq	%r15, %rdi
	callq	jpeg_std_error
	movq	$gs_jpeg_error_exit, 56(%rbx)
	movq	$gs_jpeg_emit_message, 64(%rbx)
	movq	152(%r14), %rax
	movq	%r15, 464(%rax)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gs_jpeg_error_setup, .Lfunc_end0-gs_jpeg_error_setup
	.cfi_endproc

	.align	16, 0x90
	.type	gs_jpeg_error_exit,@function
gs_jpeg_error_exit:                     # @gs_jpeg_error_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 16
	addq	$-232, %rdi
	andq	$-8, %rdi
	movl	$1, %esi
	callq	longjmp
.Lfunc_end1:
	.size	gs_jpeg_error_exit, .Lfunc_end1-gs_jpeg_error_exit
	.cfi_endproc

	.align	16, 0x90
	.type	gs_jpeg_emit_message,@function
gs_jpeg_emit_message:                   # @gs_jpeg_emit_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 16
	testl	%esi, %esi
	jns	.LBB2_2
# BB#1:                                 # %if.then
	cmpl	$0, -8(%rdi)
	jne	.LBB2_3
.LBB2_2:                                # %if.end.2
	popq	%rax
	retq
.LBB2_3:                                # %if.then.1
	callq	gs_jpeg_error_exit
.Lfunc_end2:
	.size	gs_jpeg_emit_message, .Lfunc_end2-gs_jpeg_emit_message
	.cfi_endproc

	.globl	gs_jpeg_log_error
	.align	16, 0x90
	.type	gs_jpeg_log_error,@function
gs_jpeg_log_error:                      # @gs_jpeg_log_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 224
.Ltmp11:
	.cfi_offset %rbx, -24
.Ltmp12:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	152(%rbx), %rdi
	movq	464(%rdi), %rax
	addq	$464, %rdi              # imm = 0x1D0
	leaq	(%rsp), %r14
	movq	%r14, %rsi
	callq	*24(%rax)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%rbx)
	movl	$-12, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	gs_jpeg_log_error, .Lfunc_end3-gs_jpeg_log_error
	.cfi_endproc

	.globl	gs_jpeg_alloc_quant_table
	.align	16, 0x90
	.type	gs_jpeg_alloc_quant_table,@function
gs_jpeg_alloc_quant_table:              # @gs_jpeg_alloc_quant_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 224
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	movl	$464, %edi              # imm = 0x1D0
	addq	152(%rbx), %rdi
	testl	%eax, %eax
	je	.LBB4_2
# BB#1:                                 # %return
	movq	(%rdi), %rax
	leaq	(%rsp), %r14
	movq	%r14, %rsi
	callq	*24(%rax)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%rbx)
	xorl	%eax, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB4_2:                                # %if.end
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	jmp	jpeg_alloc_quant_table  # TAILCALL
.Lfunc_end4:
	.size	gs_jpeg_alloc_quant_table, .Lfunc_end4-gs_jpeg_alloc_quant_table
	.cfi_endproc

	.globl	gs_jpeg_alloc_huff_table
	.align	16, 0x90
	.type	gs_jpeg_alloc_huff_table,@function
gs_jpeg_alloc_huff_table:               # @gs_jpeg_alloc_huff_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 224
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	$232, %edi
	addq	152(%rbx), %rdi
	andq	$-8, %rdi
	callq	_setjmp
	movl	$464, %edi              # imm = 0x1D0
	addq	152(%rbx), %rdi
	testl	%eax, %eax
	je	.LBB5_2
# BB#1:                                 # %return
	movq	(%rdi), %rax
	leaq	(%rsp), %r14
	movq	%r14, %rsi
	callq	*24(%rax)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%rbx)
	xorl	%eax, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB5_2:                                # %if.end
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	jmp	jpeg_alloc_huff_table   # TAILCALL
.Lfunc_end5:
	.size	gs_jpeg_alloc_huff_table, .Lfunc_end5-gs_jpeg_alloc_huff_table
	.cfi_endproc

	.globl	gs_jpeg_destroy
	.align	16, 0x90
	.type	gs_jpeg_destroy,@function
gs_jpeg_destroy:                        # @gs_jpeg_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 224
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	152(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB6_3
# BB#1:                                 # %land.lhs.true
	addq	$232, %rdi
	andq	$-8, %rdi
	callq	_setjmp
	testl	%eax, %eax
	movq	152(%rbx), %rdi
	je	.LBB6_3
# BB#2:                                 # %if.then
	movq	464(%rdi), %rax
	addq	$464, %rdi              # imm = 0x1D0
	leaq	(%rsp), %r14
	movq	%r14, %rsi
	callq	*24(%rax)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%rbx)
	movl	$-12, %ebx
	jmp	.LBB6_5
.LBB6_3:                                # %if.end
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	.LBB6_5
# BB#4:                                 # %if.then.8
	addq	$464, %rdi              # imm = 0x1D0
	callq	jpeg_destroy
.LBB6_5:                                # %return
	movl	%ebx, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	gs_jpeg_destroy, .Lfunc_end6-gs_jpeg_destroy
	.cfi_endproc

	.globl	jpeg_get_small
	.align	16, 0x90
	.type	jpeg_get_small,@function
jpeg_get_small:                         # @jpeg_get_small
	.cfi_startproc
# BB#0:                                 # %entry
	movq	-24(%rdi), %rdi
	movq	64(%rdi), %rax
	movl	$.L.str, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	jpeg_get_small, .Lfunc_end7-jpeg_get_small
	.cfi_endproc

	.globl	jpeg_free_small
	.align	16, 0x90
	.type	jpeg_free_small,@function
jpeg_free_small:                        # @jpeg_free_small
	.cfi_startproc
# BB#0:                                 # %entry
	movq	-24(%rdi), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.1, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end8:
	.size	jpeg_free_small, .Lfunc_end8-jpeg_free_small
	.cfi_endproc

	.globl	jpeg_get_large
	.align	16, 0x90
	.type	jpeg_get_large,@function
jpeg_get_large:                         # @jpeg_get_large
	.cfi_startproc
# BB#0:                                 # %entry
	movq	-24(%rdi), %rdi
	movq	64(%rdi), %rax
	movl	$.L.str.2, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end9:
	.size	jpeg_get_large, .Lfunc_end9-jpeg_get_large
	.cfi_endproc

	.globl	jpeg_free_large
	.align	16, 0x90
	.type	jpeg_free_large,@function
jpeg_free_large:                        # @jpeg_free_large
	.cfi_startproc
# BB#0:                                 # %entry
	movq	-24(%rdi), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.3, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end10:
	.size	jpeg_free_large, .Lfunc_end10-jpeg_free_large
	.cfi_endproc

	.globl	jpeg_mem_available
	.align	16, 0x90
	.type	jpeg_mem_available,@function
jpeg_mem_available:                     # @jpeg_mem_available
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	retq
.Lfunc_end11:
	.size	jpeg_mem_available, .Lfunc_end11-jpeg_mem_available
	.cfi_endproc

	.globl	jpeg_open_backing_store
	.align	16, 0x90
	.type	jpeg_open_backing_store,@function
jpeg_open_backing_store:                # @jpeg_open_backing_store
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	$51, 40(%rax)
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end12:
	.size	jpeg_open_backing_store, .Lfunc_end12-jpeg_open_backing_store
	.cfi_endproc

	.globl	jpeg_mem_init
	.align	16, 0x90
	.type	jpeg_mem_init,@function
jpeg_mem_init:                          # @jpeg_mem_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 32
.Ltmp30:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	-32(%rbx), %rax
	movq	200(%rax), %rsi
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	gs_memory_chunk_wrap
	testl	%eax, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	cltq
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movq	8(%rsp), %rax
	movq	%rax, -24(%rbx)
	xorl	%eax, %eax
.LBB13_3:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end13:
	.size	jpeg_mem_init, .Lfunc_end13-jpeg_mem_init
	.cfi_endproc

	.globl	jpeg_mem_term
	.align	16, 0x90
	.type	jpeg_mem_term,@function
jpeg_mem_term:                          # @jpeg_mem_term
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	-24(%rbx), %rdi
	callq	gs_memory_chunk_release
	movq	$0, -24(%rbx)
	popq	%rbx
	retq
.Lfunc_end14:
	.size	jpeg_mem_term, .Lfunc_end14-jpeg_mem_term
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"JPEG small internal data allocation"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Freeing JPEG small internal data"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"JPEG large internal data allocation"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Freeing JPEG large internal data"
	.size	.L.str.3, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
