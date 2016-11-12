	.text
	.file	"gsclipsr.bc"
	.globl	gs_clipsave
	.align	16, 0x90
	.type	gs_clipsave,@function
gs_clipsave:                            # @gs_clipsave
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
	movq	%rdi, %r15
	movq	8(%r15), %rbx
	movq	1688(%r15), %rdi
	movl	$.L.str, %edx
	movq	%rbx, %rsi
	callq	gx_cpath_alloc_shared
	movq	%rax, %r14
	movl	$st_clip_stack, %esi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	testq	%r14, %r14
	je	.LBB0_2
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB0_2
# BB#3:                                 # %do.body
	movq	$1, (%rax)
	movq	%rbx, 8(%rax)
	movq	$rc_free_clip_stack, 16(%rax)
	movq	%r14, 24(%rax)
	movq	1696(%r15), %rcx
	movq	%rcx, 32(%rax)
	movq	%rax, 1696(%r15)
	xorl	%eax, %eax
	jmp	.LBB0_4
.LBB0_2:                                # %if.then
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movl	$-25, %eax
.LBB0_4:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gs_clipsave, .Lfunc_end0-gs_clipsave
	.cfi_endproc

	.align	16, 0x90
	.type	rc_free_clip_stack,@function
rc_free_clip_stack:                     # @rc_free_clip_stack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	cmpq	$1, (%rsi)
	jg	.LBB1_1
# BB#2:                                 # %if.then
	movq	8(%rsi), %rdi
	movq	24(%rsi), %rbx
	callq	*24(%rdi)
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gx_cpath_free           # TAILCALL
.LBB1_1:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end1:
	.size	rc_free_clip_stack, .Lfunc_end1-rc_free_clip_stack
	.cfi_endproc

	.globl	gs_cliprestore
	.align	16, 0x90
	.type	gs_cliprestore,@function
gs_cliprestore:                         # @gs_cliprestore
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 48
.Ltmp13:
	.cfi_offset %rbx, -40
.Ltmp14:
	.cfi_offset %r12, -32
.Ltmp15:
	.cfi_offset %r14, -24
.Ltmp16:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	1696(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB2_7
# BB#1:                                 # %if.then
	movq	32(%rbx), %r12
	movq	24(%rbx), %r15
	cmpq	$1, (%rbx)
	jne	.LBB2_3
# BB#2:                                 # %if.then.2
	movq	8(%rbx), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	1688(%r14), %rdi
	movq	%r15, %rsi
	callq	gx_cpath_assign_free
	jmp	.LBB2_5
.LBB2_7:                                # %if.else.17
	movq	1616(%r14), %rax
	movq	1688(%r14), %rdi
	movq	1688(%rax), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	gx_cpath_assign_preserve # TAILCALL
.LBB2_3:                                # %if.else
	movq	1688(%r14), %rdi
	movq	%r15, %rsi
	callq	gx_cpath_assign_preserve
	testl	%eax, %eax
	js	.LBB2_6
# BB#4:                                 # %if.end
	decq	(%rbx)
.LBB2_5:                                # %cleanup.21
	movq	%r12, 1696(%r14)
.LBB2_6:                                # %cleanup.21
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	gs_cliprestore, .Lfunc_end2-gs_cliprestore
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_clipsave(clip_path)"
	.size	.L.str, 23

	.type	st_clip_stack,@object   # @st_clip_stack
	.section	.rodata,"a",@progbits
	.align	8
st_clip_stack:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clip_stack_reloc_ptrs
	.size	st_clip_stack, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_clipsave(stack)"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cliprestore"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gx_clip_stack_t"
	.size	.L.str.3, 16

	.type	clip_stack_reloc_ptrs,@object # @clip_stack_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
clip_stack_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	clip_stack_enum_ptrs
	.size	clip_stack_reloc_ptrs, 24

	.type	clip_stack_enum_ptrs,@object # @clip_stack_enum_ptrs
	.align	2
clip_stack_enum_ptrs:
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	clip_stack_enum_ptrs, 8

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"rc_free_clip_stack"
	.size	.L.str.4, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
