	.text
	.file	"gsdfilt.bc"
	.globl	gs_push_device_filter
	.align	16, 0x90
	.type	gs_push_device_filter,@function
gs_push_device_filter:                  # @gs_push_device_filter
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
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	$0, 8(%rsp)
	movl	$st_gs_device_filter_stack, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rbx)
	movq	%rax, %rbp
	movl	$-25, %r14d
	testq	%rbp, %rbp
	je	.LBB0_8
# BB#1:                                 # %do.body
	movq	1872(%r12), %r8
	testq	%r8, %r8
	je	.LBB0_3
# BB#2:                                 # %do.body.2
	incq	56(%r8)
.LBB0_3:                                # %do.end.9
	movq	%r8, 16(%rbp)
	leaq	8(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*(%r15)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB0_4
# BB#5:                                 # %if.end.16
	movq	1880(%r12), %rax
	movq	%rax, (%rbp)
	movq	%rbp, 1880(%r12)
	movq	%r15, 8(%rbp)
	movq	$1, 24(%rbp)
	movq	%rbx, 32(%rbp)
	movq	$rc_free_struct_only, 40(%rbp)
	movq	8(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_setdevice_no_init
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_8
# BB#6:                                 # %do.end.36
	decq	56(%rsi)
	jne	.LBB0_8
# BB#7:                                 # %do.end.48
	movq	64(%rsi), %rdi
	movl	$.L.str.1, %edx
	callq	*72(%rsi)
	jmp	.LBB0_8
.LBB0_4:                                # %if.then.14
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
.LBB0_8:                                # %cleanup
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_push_device_filter, .Lfunc_end0-gs_push_device_filter
	.cfi_endproc

	.globl	gs_pop_device_filter
	.align	16, 0x90
	.type	gs_pop_device_filter,@function
gs_pop_device_filter:                   # @gs_pop_device_filter
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
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 64
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
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	1880(%r12), %rbx
	movl	$-15, %ebp
	testq	%rbx, %rbx
	je	.LBB1_11
# BB#1:                                 # %if.end
	movq	1872(%r12), %r14
	movq	(%rbx), %rax
	movq	8(%rbx), %r13
	movq	%rax, 1880(%r12)
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	*8(%r13)
	testq	%r14, %r14
	je	.LBB1_3
# BB#2:                                 # %do.body.4
	incq	56(%r14)
.LBB1_3:                                # %do.end.10
	movq	16(%rbx), %rsi
	movq	%r12, %rdi
	callq	gs_setdevice_no_init
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_6
# BB#4:                                 # %do.end.19
	decq	56(%rsi)
	jne	.LBB1_6
# BB#5:                                 # %do.end.33
	movq	64(%rsi), %rdi
	movl	$.L.str.2, %edx
	callq	*72(%rsi)
.LBB1_6:                                # %do.end.58
	movq	$0, 8(%rbx)
	decq	24(%rbx)
	jne	.LBB1_8
# BB#7:                                 # %do.end.71
	movq	32(%rbx), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	*40(%rbx)
.LBB1_8:                                # %do.end.88
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	*16(%r13)
	movl	%eax, %ebp
	testq	%r14, %r14
	je	.LBB1_11
# BB#9:                                 # %do.end.96
	decq	56(%r14)
	jne	.LBB1_11
# BB#10:                                # %do.end.109
	movq	64(%r14), %rdi
	movl	$.L.str.2, %edx
	movq	%r14, %rsi
	callq	*72(%r14)
.LBB1_11:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_pop_device_filter, .Lfunc_end1-gs_pop_device_filter
	.cfi_endproc

	.globl	gs_clear_device_filters
	.align	16, 0x90
	.type	gs_clear_device_filters,@function
gs_clear_device_filters:                # @gs_clear_device_filters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -24
.Ltmp28:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	.align	16, 0x90
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpq	$0, 1880(%rbx)
	je	.LBB2_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_pop_device_filter
	testl	%eax, %eax
	jns	.LBB2_1
.LBB2_3:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	gs_clear_device_filters, .Lfunc_end2-gs_clear_device_filters
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_device_filter"
	.size	.L.str, 17

	.type	st_gs_device_filter,@object # @st_gs_device_filter
	.section	.rodata,"a",@progbits
	.globl	st_gs_device_filter
	.align	8
st_gs_device_filter:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_device_filter, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_push_device_filter"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_pop_device_filter"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_device_filter_stack"
	.size	.L.str.3, 23

	.type	gs_device_filter_stack_reloc_ptrs,@object # @gs_device_filter_stack_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
gs_device_filter_stack_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gs_device_filter_stack_enum_ptrs
	.size	gs_device_filter_stack_reloc_ptrs, 24

	.type	st_gs_device_filter_stack,@object # @st_gs_device_filter_stack
	.align	8
st_gs_device_filter_stack:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gs_device_filter_stack_reloc_ptrs
	.size	st_gs_device_filter_stack, 64

	.type	gs_device_filter_stack_enum_ptrs,@object # @gs_device_filter_stack_enum_ptrs
	.align	2
gs_device_filter_stack_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	gs_device_filter_stack_enum_ptrs, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
