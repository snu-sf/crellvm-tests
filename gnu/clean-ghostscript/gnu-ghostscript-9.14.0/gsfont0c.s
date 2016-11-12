	.text
	.file	"gsfont0c.bc"
	.globl	gs_font_type0_from_cidfont
	.align	16, 0x90
	.type	gs_font_type0_from_cidfont,@function
gs_font_type0_from_cidfont:             # @gs_font_type0_from_cidfont
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 64
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	8(%rsp), %rdi
	movl	$2, %esi
	movq	%rbx, %rcx
	callq	gs_cmap_create_identity
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_3
# BB#1:                                 # %if.end
	movq	8(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	type0_from_cidfont_cmap
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB0_3
# BB#2:                                 # %if.then.3
	movq	8(%rsp), %rsi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
.LBB0_3:                                # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_font_type0_from_cidfont, .Lfunc_end0-gs_font_type0_from_cidfont
	.cfi_endproc

	.align	16, 0x90
	.type	type0_from_cidfont_cmap,@function
type0_from_cidfont_cmap:                # @type0_from_cidfont_cmap
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
	subq	$24, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 80
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
	movq	%r8, %rbp
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	$st_gs_font_type0, %esi
	movl	$gs_font_procs_default, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r8d
	movq	%rbp, %rdi
	callq	gs_font_alloc
	movq	%rax, %r14
	movq	%r14, %rbx
	movl	$4, %esi
	movl	$.L.str.3, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, %r13
	movl	$1, %esi
	movl	$st_gs_font_ptr_element, %edx
	movl	$.L.str.4, %ecx
	movq	%rbp, %rdi
	callq	*104(%rbp)
	movq	%rax, %r12
	testq	%r14, %r14
	je	.LBB1_3
# BB#1:                                 # %entry
	testq	%r13, %r13
	je	.LBB1_3
# BB#2:                                 # %entry
	testq	%r12, %r12
	je	.LBB1_3
# BB#4:                                 # %if.end
	addq	$80, %r14
	movq	8(%rsp), %rcx           # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB1_6
# BB#5:                                 # %if.then.12
	movq	16(%rcx), %rax
	movq	%rax, 16(%r14)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%r14)
	jmp	.LBB1_7
.LBB1_3:                                # %if.then
	movl	$.L.str.4, %edx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	*24(%rbp)
	movl	$.L.str.3, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	*24(%rbp)
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	movl	$-25, %eax
	jmp	.LBB1_9
.LBB1_6:                                # %if.else
	movq	%r14, %rdi
	callq	gs_make_identity
.LBB1_7:                                # %if.end.14
	movl	$0, 128(%rbx)
	movq	$gs_type0_init_fstack, 248(%rbx)
	movq	$gs_no_define_font, 168(%rbx)
	movq	$0, 176(%rbx)
	movq	$gs_type0_next_char_glyph, 256(%rbx)
	movl	320(%r15), %eax
	movl	%eax, 320(%rbx)
	movups	272(%r15), %xmm0
	movups	288(%r15), %xmm1
	movups	304(%r15), %xmm2
	movups	%xmm2, 304(%rbx)
	movups	%xmm1, 288(%rbx)
	movups	%xmm0, 272(%rbx)
	movl	372(%r15), %eax
	movl	%eax, 372(%rbx)
	movups	324(%r15), %xmm0
	movups	340(%r15), %xmm1
	movups	356(%r15), %xmm2
	movups	%xmm2, 356(%rbx)
	movups	%xmm1, 340(%rbx)
	movups	%xmm0, 324(%rbx)
	movl	$9, 376(%rbx)
	movl	$0, (%r13)
	movq	%r13, 408(%rbx)
	movl	$1, 416(%rbx)
	movq	%r15, (%r12)
	movq	%r12, 424(%rbx)
	movl	$1, 432(%rbx)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 440(%rbx)
	movq	$0, 384(%rbx)
	movl	$0, 392(%rbx)
	movq	24(%r15), %rdi
	movq	%rbx, %rsi
	callq	gs_definefont
	testl	%eax, %eax
	js	.LBB1_9
# BB#8:                                 # %if.end.34
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rbx, (%rax)
	xorl	%eax, %eax
.LBB1_9:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	type0_from_cidfont_cmap, .Lfunc_end1-type0_from_cidfont_cmap
	.cfi_endproc

	.globl	gs_font_type0_from_type42
	.align	16, 0x90
	.type	gs_font_type0_from_type42,@function
gs_font_type0_from_type42:              # @gs_font_type0_from_type42
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 80
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	8(%rsp), %rdi
	movq	%r15, %rcx
	callq	gs_font_cid2_from_type42
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_10
# BB#1:                                 # %if.end
	testl	%r12d, %r12d
	je	.LBB2_4
# BB#2:                                 # %if.then.1
	leaq	16(%rsp), %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	gs_cmap_from_type42_cmap
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_10
# BB#3:                                 # %cleanup.thread
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdx
	leaq	(%rsp), %rdi
	xorl	%ecx, %ecx
	movq	%r15, %r8
	callq	type0_from_cidfont_cmap
	movl	%eax, %ebp
	jmp	.LBB2_7
.LBB2_4:                                # %if.else
	movq	8(%rsp), %r12
	leaq	16(%rsp), %rdi
	movl	$2, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	gs_cmap_create_identity
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_7
# BB#5:                                 # %if.end.i
	movq	16(%rsp), %rdx
	leaq	(%rsp), %rdi
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movq	%r15, %r8
	callq	type0_from_cidfont_cmap
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_7
# BB#6:                                 # %if.then.3.i
	movq	16(%rsp), %rsi
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB2_7:                                # %if.end.8
	testl	%ebp, %ebp
	js	.LBB2_8
# BB#9:                                 # %if.end.11
	movq	(%rsp), %rax
	movq	%rax, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB2_10
.LBB2_8:                                # %if.then.10
	movq	8(%rsp), %rsi
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
.LBB2_10:                               # %cleanup.12
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_font_type0_from_type42, .Lfunc_end2-gs_font_type0_from_type42
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_font_type0_from_cidfont(CMap)"
	.size	.L.str, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_type0_from_type42(CIDFont)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_type0_from_cidfont(font)"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_type0_from_cidfont(Encoding)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_type0_from_cidfont(FDepVector)"
	.size	.L.str.4, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
