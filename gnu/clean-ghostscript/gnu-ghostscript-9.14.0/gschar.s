	.text
	.file	"gschar.bc"
	.globl	gs_show_enum_release
	.align	16, 0x90
	.type	gs_show_enum_release,@function
gs_show_enum_release:                   # @gs_show_enum_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
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
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, (%rbx)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	152(%rbx), %rax
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_2:                                # %if.end
	testq	%r14, %r14
	je	.LBB0_3
# BB#4:                                 # %if.then.1
	movq	24(%r14), %rax
	movl	$.L.str, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB0_3:                                # %if.end.3
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gs_show_enum_release, .Lfunc_end0-gs_show_enum_release
	.cfi_endproc

	.globl	gs_setcachedevice_double
	.align	16, 0x90
	.type	gs_setcachedevice_double,@function
gs_setcachedevice_double:               # @gs_setcachedevice_double
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	%rsi, 456(%rdi)
	je	.LBB1_2
# BB#1:                                 # %return
	movl	$-15, %eax
	retq
.LBB1_2:                                # %if.end
	movq	%rdx, %rsi
	jmp	gs_text_setcachedevice  # TAILCALL
.Lfunc_end1:
	.size	gs_setcachedevice_double, .Lfunc_end1-gs_setcachedevice_double
	.cfi_endproc

	.globl	gs_setcachedevice_float
	.align	16, 0x90
	.type	gs_setcachedevice_float,@function
gs_setcachedevice_float:                # @gs_setcachedevice_float
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 64
	cvtps2pd	(%rdx), %xmm0
	movaps	%xmm0, (%rsp)
	cvtps2pd	8(%rdx), %xmm0
	movaps	%xmm0, 16(%rsp)
	cvtps2pd	16(%rdx), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	$-15, %eax
	cmpq	%rsi, 456(%rdi)
	jne	.LBB2_2
# BB#1:                                 # %if.end.i
	leaq	(%rsp), %rsi
	callq	gs_text_setcachedevice
.LBB2_2:                                # %gs_setcachedevice_double.exit
	addq	$56, %rsp
	retq
.Lfunc_end2:
	.size	gs_setcachedevice_float, .Lfunc_end2-gs_setcachedevice_float
	.cfi_endproc

	.globl	gs_setcachedevice2_double
	.align	16, 0x90
	.type	gs_setcachedevice2_double,@function
gs_setcachedevice2_double:              # @gs_setcachedevice2_double
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	%rsi, 456(%rdi)
	je	.LBB3_2
# BB#1:                                 # %return
	movl	$-15, %eax
	retq
.LBB3_2:                                # %if.end
	movq	%rdx, %rsi
	jmp	gs_text_setcachedevice2 # TAILCALL
.Lfunc_end3:
	.size	gs_setcachedevice2_double, .Lfunc_end3-gs_setcachedevice2_double
	.cfi_endproc

	.globl	gs_setcachedevice2_float
	.align	16, 0x90
	.type	gs_setcachedevice2_float,@function
gs_setcachedevice2_float:               # @gs_setcachedevice2_float
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
	cvtps2pd	(%rdx), %xmm0
	movaps	%xmm0, (%rsp)
	cvtps2pd	8(%rdx), %xmm0
	movaps	%xmm0, 16(%rsp)
	cvtps2pd	16(%rdx), %xmm0
	movaps	%xmm0, 32(%rsp)
	cvtps2pd	24(%rdx), %xmm0
	movaps	%xmm0, 48(%rsp)
	cvtps2pd	32(%rdx), %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	$-15, %eax
	cmpq	%rsi, 456(%rdi)
	jne	.LBB4_2
# BB#1:                                 # %if.end.i
	leaq	(%rsp), %rsi
	callq	gs_text_setcachedevice2
.LBB4_2:                                # %gs_setcachedevice2_double.exit
	addq	$88, %rsp
	retq
.Lfunc_end4:
	.size	gs_setcachedevice2_float, .Lfunc_end4-gs_setcachedevice2_float
	.cfi_endproc

	.globl	gs_setcharwidth
	.align	16, 0x90
	.type	gs_setcharwidth,@function
gs_setcharwidth:                        # @gs_setcharwidth
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 32
	movl	$-15, %eax
	cmpq	%rsi, 456(%rdi)
	jne	.LBB5_2
# BB#1:                                 # %if.end
	movsd	%xmm0, (%rsp)
	movsd	%xmm1, 8(%rsp)
	leaq	(%rsp), %rsi
	callq	gs_text_setcharwidth
.LBB5_2:                                # %cleanup
	addq	$24, %rsp
	retq
.Lfunc_end5:
	.size	gs_setcharwidth, .Lfunc_end5-gs_setcharwidth
	.cfi_endproc

	.globl	gs_show_next
	.align	16, 0x90
	.type	gs_show_next,@function
gs_show_next:                           # @gs_show_next
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_process         # TAILCALL
.Lfunc_end6:
	.size	gs_show_next, .Lfunc_end6-gs_show_next
	.cfi_endproc

	.globl	gs_show_width_only
	.align	16, 0x90
	.type	gs_show_width_only,@function
gs_show_width_only:                     # @gs_show_width_only
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_is_width_only   # TAILCALL
.Lfunc_end7:
	.size	gs_show_width_only, .Lfunc_end7-gs_show_width_only
	.cfi_endproc

	.globl	gs_show_current_char
	.align	16, 0x90
	.type	gs_show_current_char,@function
gs_show_current_char:                   # @gs_show_current_char
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_current_char    # TAILCALL
.Lfunc_end8:
	.size	gs_show_current_char, .Lfunc_end8-gs_show_current_char
	.cfi_endproc

	.globl	gs_show_current_glyph
	.align	16, 0x90
	.type	gs_show_current_glyph,@function
gs_show_current_glyph:                  # @gs_show_current_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_current_glyph   # TAILCALL
.Lfunc_end9:
	.size	gs_show_current_glyph, .Lfunc_end9-gs_show_current_glyph
	.cfi_endproc

	.globl	gs_show_current_width
	.align	16, 0x90
	.type	gs_show_current_width,@function
gs_show_current_width:                  # @gs_show_current_width
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_current_width   # TAILCALL
.Lfunc_end10:
	.size	gs_show_current_width, .Lfunc_end10-gs_show_current_width
	.cfi_endproc

	.globl	gs_kshow_previous_char
	.align	16, 0x90
	.type	gs_kshow_previous_char,@function
gs_kshow_previous_char:                 # @gs_kshow_previous_char
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_current_char    # TAILCALL
.Lfunc_end11:
	.size	gs_kshow_previous_char, .Lfunc_end11-gs_kshow_previous_char
	.cfi_endproc

	.globl	gs_kshow_next_char
	.align	16, 0x90
	.type	gs_kshow_next_char,@function
gs_kshow_next_char:                     # @gs_kshow_next_char
	.cfi_startproc
# BB#0:                                 # %entry
	movl	232(%rdi), %eax
	movq	8(%rdi), %rcx
	movzbl	(%rcx,%rax), %eax
	retq
.Lfunc_end12:
	.size	gs_kshow_next_char, .Lfunc_end12-gs_kshow_next_char
	.cfi_endproc

	.globl	gs_show_width
	.align	16, 0x90
	.type	gs_show_width,@function
gs_show_width:                          # @gs_show_width
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gs_text_total_width     # TAILCALL
.Lfunc_end13:
	.size	gs_show_width, .Lfunc_end13-gs_show_width
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_show_enum_release"
	.size	.L.str, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
