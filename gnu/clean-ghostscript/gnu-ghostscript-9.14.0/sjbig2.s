	.text
	.file	"sjbig2.bc"
	.globl	s_jbig2decode_make_global_data
	.align	16, 0x90
	.type	s_jbig2decode_make_global_data,@function
s_jbig2decode_make_global_data:         # @s_jbig2decode_make_global_data
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
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %r15
	testl	%ebp, %ebp
	je	.LBB0_1
# BB#2:                                 # %if.end
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	movl	$s_jbig2decode_error, %ecx
	xorl	%r8d, %r8d
	callq	jbig2_ctx_new
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_6
# BB#3:                                 # %if.end.3
	movl	%ebp, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	jbig2_data_in
	testl	%eax, %eax
	je	.LBB0_5
# BB#4:                                 # %if.then.5
	movq	$0, (%r14)
	movl	%eax, %r12d
	jmp	.LBB0_6
.LBB0_1:                                # %do.end
	movq	$0, (%r14)
	xorl	%r12d, %r12d
	jmp	.LBB0_6
.LBB0_5:                                # %if.end.6
	movq	%rbx, %rdi
	callq	jbig2_make_global_ctx
	movq	%rax, (%r14)
.LBB0_6:                                # %cleanup
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	s_jbig2decode_make_global_data, .Lfunc_end0-s_jbig2decode_make_global_data
	.cfi_endproc

	.align	16, 0x90
	.type	s_jbig2decode_error,@function
s_jbig2decode_error:                    # @s_jbig2decode_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
.Ltmp16:
	.cfi_offset %rbx, -48
.Ltmp17:
	.cfi_offset %r12, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movl	$.L.str, %r12d
	xorl	%r15d, %r15d
	movl	%ebx, %eax
	cmpl	$3, %ebx
	jbe	.LBB1_1
# BB#6:                                 # %sw.default
	movl	$.L.str.4, %r12d
	jmp	.LBB1_7
.LBB1_1:                                # %entry
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_2:                                # %sw.bb.1
	movl	$.L.str.1, %r12d
	jmp	.LBB1_7
.LBB1_3:                                # %sw.bb.2
	movl	$.L.str.2, %r12d
	jmp	.LBB1_7
.LBB1_4:                                # %sw.bb.3
	movl	$.L.str.3, %r12d
	movl	$-12, %r15d
	testq	%rbp, %rbp
	je	.LBB1_7
# BB#5:                                 # %if.then
	movl	$-12, 152(%rbp)
	movl	$.L.str.3, %r12d
.LBB1_7:                                # %sw.epilog
	cmpl	$-1, %ecx
	je	.LBB1_8
# BB#9:                                 # %if.else
	leaq	(%rsp), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	callq	gs_sprintf
	jmp	.LBB1_10
.LBB1_8:                                # %if.then.5
	movb	$0, (%rsp)
.LBB1_10:                               # %if.end.6
	testq	%rbp, %rbp
	je	.LBB1_13
# BB#11:                                # %if.then.7
	cmpl	$3, %ebx
	jne	.LBB1_15
# BB#12:                                # %if.then.9
	movq	8(%rbp), %rdi
	movl	$.L.str.6, %esi
	movl	$73, %edx
	callq	dmprintf_file_and_line
	movq	8(%rbp), %rdi
	leaq	(%rsp), %r8
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	errprintf
	jmp	.LBB1_15
.LBB1_13:                               # %if.else.15
	cmpl	$3, %ebx
	jne	.LBB1_15
# BB#14:                                # %if.then.17
	movl	$.L.str.6, %edi
	movl	$85, %esi
	callq	dprintf_file_and_line
	leaq	(%rsp), %rcx
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	errprintf_nomem
.LBB1_15:                               # %if.end.25
	movl	%r15d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_jbig2decode_error, .Lfunc_end1-s_jbig2decode_error
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_7
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_4

	.text
	.globl	s_jbig2decode_free_global_data
	.align	16, 0x90
	.type	s_jbig2decode_free_global_data,@function
s_jbig2decode_free_global_data:         # @s_jbig2decode_free_global_data
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	jbig2_global_ctx_free   # TAILCALL
.Lfunc_end2:
	.size	s_jbig2decode_free_global_data, .Lfunc_end2-s_jbig2decode_free_global_data
	.cfi_endproc

	.globl	s_jbig2decode_set_global_data
	.align	16, 0x90
	.type	s_jbig2decode_set_global_data,@function
s_jbig2decode_set_global_data:          # @s_jbig2decode_set_global_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 112(%rdi)
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movq	(%rsi), %rax
.LBB3_2:                                # %cond.end
	movq	%rax, 120(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	s_jbig2decode_set_global_data, .Lfunc_end3-s_jbig2decode_set_global_data
	.cfi_endproc

	.align	16, 0x90
	.type	s_jbig2decode_init,@function
s_jbig2decode_init:                     # @s_jbig2decode_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	120(%rbx), %rdx
	movl	$0, 152(%rbx)
	xorl	%edi, %edi
	movl	$1, %esi
	movl	$s_jbig2decode_error, %ecx
	movq	%rbx, %r8
	callq	jbig2_ctx_new
	movq	%rax, 128(%rbx)
	movq	$0, 136(%rbx)
	movl	152(%rbx), %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	s_jbig2decode_init, .Lfunc_end4-s_jbig2decode_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_jbig2decode_process,@function
s_jbig2decode_process:                  # @s_jbig2decode_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 80
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	136(%r12), %r15
	movq	(%rbx), %rsi
	movq	8(%rbx), %rbp
	subq	%rsi, %rbp
	movq	8(%r14), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	16(%r14), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testq	%rbp, %rbp
	jle	.LBB5_4
# BB#1:                                 # %if.then
	movq	128(%r12), %rdi
	incq	%rsi
	movq	%rbp, %rdx
	callq	jbig2_data_in
	addq	%rbp, (%rbx)
	cmpl	$1, %r13d
	jne	.LBB5_3
# BB#2:                                 # %if.then.11
	movq	128(%r12), %rdi
	callq	jbig2_complete_page
.LBB5_3:                                # %if.end
	movl	152(%r12), %ebp
	testl	%ebp, %ebp
	jne	.LBB5_19
.LBB5_4:                                # %if.end.17
	movq	8(%rsp), %r13           # 8-byte Reload
	subq	16(%rsp), %r13          # 8-byte Folded Reload
	xorl	%ebp, %ebp
	testq	%r13, %r13
	jle	.LBB5_19
# BB#5:                                 # %if.then.19
	testq	%r15, %r15
	je	.LBB5_7
# BB#6:                                 # %if.then.19.if.then.30_crit_edge
	movq	144(%r12), %rbx
	addq	$144, %r12
	jmp	.LBB5_9
.LBB5_7:                                # %if.then.21
	movq	128(%r12), %rdi
	callq	jbig2_page_out
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB5_19
# BB#8:                                 # %if.then.25
	movq	%r15, 136(%r12)
	movq	$0, 144(%r12)
	addq	$144, %r12
	xorl	%ebx, %ebx
.LBB5_9:                                # %if.then.30
	movl	4(%r15), %eax
	imull	8(%r15), %eax
	movslq	%eax, %rbp
	movq	%rbp, %rax
	subq	%rbx, %rax
	movq	8(%r14), %rdi
	incq	%rdi
	movq	16(%r15), %rsi
	addq	%rbx, %rsi
	cmpq	%r13, %rax
	movq	%r13, %r15
	cmovleq	%rax, %r15
	cmovll	%eax, %r13d
	movq	%r15, %rdx
	callq	memcpy
	movq	%rbp, %r11
	testl	%r13d, %r13d
	jle	.LBB5_18
# BB#10:                                # %for.body.i.preheader
	movq	8(%r14), %rcx
	movq	16(%rsp), %rax          # 8-byte Reload
	decq	%rax
	subq	8(%rsp), %rax           # 8-byte Folded Reload
	decq	%rbx
	subq	%r11, %rbx
	cmpq	%rbx, %rax
	movq	%rbx, %rsi
	cmovgeq	%rax, %rsi
	movq	%rax, %r10
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorq	%r8, %rsi
	leal	-1(%rsi), %edx
	incq	%rdx
	movl	%esi, %edi
	andl	$31, %edi
	movq	%rdx, %rax
	subq	%rdi, %rax
	xorl	%ebp, %ebp
	movq	%rdx, %r9
	subq	%rdi, %r9
	jne	.LBB5_12
# BB#11:
	xorl	%r9d, %r9d
	movq	%rcx, %rax
	jmp	.LBB5_15
.LBB5_12:                               # %vector.body.preheader
	leaq	(%rax,%rcx), %rax
	addq	$17, %rcx
	leal	(%r8,%rsi), %ebp
	incq	%rbp
	andl	$31, %esi
	subq	%rsi, %rbp
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB5_13:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-16(%rcx), %xmm1
	movdqu	(%rcx), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rcx)
	movdqu	%xmm2, (%rcx)
	addq	$32, %rcx
	addq	$-32, %rbp
	jne	.LBB5_13
# BB#14:
	movl	%r9d, %ebp
.LBB5_15:                               # %middle.block
	cmpq	%r9, %rdx
	je	.LBB5_18
# BB#16:                                # %for.body.i.preheader114
	cmpq	%rbx, %r10
	cmovgl	%r10d, %ebx
	notl	%ebx
	subl	%ebp, %ebx
	incq	%rax
	.align	16, 0x90
.LBB5_17:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	notb	(%rax)
	incq	%rax
	decl	%ebx
	jne	.LBB5_17
.LBB5_18:                               # %s_jbig2decode_invert_buffer.exit
	movq	(%r12), %rax
	addq	%r15, %rax
	movq	%rax, (%r12)
	addq	%r15, 8(%r14)
	cmpq	%r11, %rax
	setl	%al
	movzbl	%al, %ebp
.LBB5_19:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	s_jbig2decode_process, .Lfunc_end5-s_jbig2decode_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_jbig2decode_release,@function
s_jbig2decode_release:                  # @s_jbig2decode_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB6_4
# BB#1:                                 # %if.then
	movq	136(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_3
# BB#2:                                 # %if.then.2
	callq	jbig2_release_page
	movq	128(%rbx), %rdi
.LBB6_3:                                # %if.end
	popq	%rbx
	jmp	jbig2_ctx_free          # TAILCALL
.LBB6_4:                                # %if.end.6
	popq	%rbx
	retq
.Lfunc_end6:
	.size	s_jbig2decode_release, .Lfunc_end6-s_jbig2decode_release
	.cfi_endproc

	.align	16, 0x90
	.type	s_jbig2decode_set_defaults,@function
s_jbig2decode_set_defaults:             # @s_jbig2decode_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 112(%rdi)
	movq	$0, 120(%rdi)
	movq	$0, 128(%rdi)
	movq	$0, 136(%rdi)
	movq	$0, 144(%rdi)
	movl	$0, 152(%rdi)
	retq
.Lfunc_end7:
	.size	s_jbig2decode_set_defaults, .Lfunc_end7-s_jbig2decode_set_defaults
	.cfi_endproc

	.type	st_jbig2decode_state,@object # @st_jbig2decode_state
	.section	.rodata,"a",@progbits
	.align	8
st_jbig2decode_state:
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	jbig2decode_state_reloc_ptrs
	.size	st_jbig2decode_state, 64

	.type	s_jbig2decode_template,@object # @s_jbig2decode_template
	.globl	s_jbig2decode_template
	.align	8
s_jbig2decode_template:
	.quad	st_jbig2decode_state
	.quad	s_jbig2decode_init
	.quad	s_jbig2decode_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	s_jbig2decode_release
	.quad	s_jbig2decode_set_defaults
	.quad	0
	.size	s_jbig2decode_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"DEBUG"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"info"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"WARNING"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"FATAL ERROR decoding image:"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"unknown message:"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(segment 0x%02x)"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"./base/sjbig2.c"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"jbig2dec %s %s %s\n"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"jbig2decode filter state"
	.size	.L.str.8, 25

	.type	jbig2decode_state_reloc_ptrs,@object # @jbig2decode_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
jbig2decode_state_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	jbig2decode_state_enum_ptrs
	.size	jbig2decode_state_reloc_ptrs, 24

	.type	jbig2decode_state_enum_ptrs,@object # @jbig2decode_state_enum_ptrs
	.align	2
jbig2decode_state_enum_ptrs:
	.short	0                       # 0x0
	.short	112                     # 0x70
	.size	jbig2decode_state_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
