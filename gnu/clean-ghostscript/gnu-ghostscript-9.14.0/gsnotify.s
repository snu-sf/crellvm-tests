	.text
	.file	"gsnotify.bc"
	.globl	gs_notify_init
	.align	16, 0x90
	.type	gs_notify_init,@function
gs_notify_init:                         # @gs_notify_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 8(%rdi)
	movq	%rsi, (%rdi)
	retq
.Lfunc_end0:
	.size	gs_notify_init, .Lfunc_end0-gs_notify_init
	.cfi_endproc

	.globl	gs_notify_register
	.align	16, 0x90
	.type	gs_notify_register,@function
gs_notify_register:                     # @gs_notify_register
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movl	$st_gs_notify_registration, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rdi)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %if.end
	movq	%r15, (%rax)
	movq	%r14, 8(%rax)
	movq	8(%rbx), %rcx
	movq	%rcx, 16(%rax)
	movq	%rax, 8(%rbx)
	xorl	%ecx, %ecx
.LBB1_2:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gs_notify_register, .Lfunc_end1-gs_notify_register
	.cfi_endproc

	.globl	gs_notify_unregister_calling
	.align	16, 0x90
	.type	gs_notify_unregister_calling,@function
gs_notify_unregister_calling:           # @gs_notify_unregister_calling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 64
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	8(%r12), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB2_8
# BB#1:                                 # %while.body.lr.ph.lr.ph
	leaq	8(%r12), %rbp
	xorl	%eax, %eax
.LBB2_2:                                # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movq	%rcx, %rbx
	.align	16, 0x90
.LBB2_3:                                # %while.body
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r15, (%rbx)
	jne	.LBB2_7
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_3 Depth=2
	testq	%r13, %r13
	je	.LBB2_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB2_3 Depth=2
	cmpq	%r13, 8(%rbx)
	jne	.LBB2_7
.LBB2_6:                                # %if.then
                                        #   in Loop: Header=BB2_3 Depth=2
	movq	16(%rbx), %rax
	movq	%rax, (%rbp)
	movq	8(%rbx), %rdi
	callq	*%r14
	movq	(%r12), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	(%rbp), %rbx
	movl	$1, %eax
	testq	%rbx, %rbx
	jne	.LBB2_3
	jmp	.LBB2_8
	.align	16, 0x90
.LBB2_7:                                # %if.else
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	16(%rbx), %rcx
	addq	$16, %rbx
	testq	%rcx, %rcx
	movq	%rbx, %rbp
	jne	.LBB2_2
.LBB2_8:                                # %while.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_notify_unregister_calling, .Lfunc_end2-gs_notify_unregister_calling
	.cfi_endproc

	.globl	gs_notify_unregister
	.align	16, 0x90
	.type	gs_notify_unregister,@function
gs_notify_unregister:                   # @gs_notify_unregister
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 48
.Ltmp24:
	.cfi_offset %rbx, -40
.Ltmp25:
	.cfi_offset %r12, -32
.Ltmp26:
	.cfi_offset %r14, -24
.Ltmp27:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	8(%r15), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB3_8
# BB#1:                                 # %while.body.lr.ph.lr.ph.i
	leaq	8(%r15), %rbx
	xorl	%eax, %eax
.LBB3_2:                                # %while.body.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movq	%rcx, %rsi
	.align	16, 0x90
.LBB3_3:                                # %while.body.i
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, (%rsi)
	jne	.LBB3_7
# BB#4:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB3_3 Depth=2
	testq	%r12, %r12
	je	.LBB3_6
# BB#5:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB3_3 Depth=2
	cmpq	%r12, 8(%rsi)
	jne	.LBB3_7
.LBB3_6:                                # %if.then.i
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	16(%rsi), %rax
	movq	%rax, (%rbx)
	movq	(%r15), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	movq	(%rbx), %rsi
	movl	$1, %eax
	testq	%rsi, %rsi
	jne	.LBB3_3
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_7:                                # %if.else.i
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	16(%rsi), %rcx
	addq	$16, %rsi
	testq	%rcx, %rcx
	movq	%rsi, %rbx
	jne	.LBB3_2
.LBB3_8:                                # %gs_notify_unregister_calling.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gs_notify_unregister, .Lfunc_end3-gs_notify_unregister
	.cfi_endproc

	.globl	gs_notify_all
	.align	16, 0x90
	.type	gs_notify_all,@function
gs_notify_all:                          # @gs_notify_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	8(%rdi), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB4_2
	.align	16, 0x90
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rdi
	movq	16(%rax), %r15
	movq	%r14, %rsi
	callq	*(%rax)
	testl	%eax, %eax
	cmovnsl	%ebx, %eax
	testl	%ebx, %ebx
	cmovel	%eax, %ebx
	testq	%r15, %r15
	movq	%r15, %rax
	jne	.LBB4_1
.LBB4_2:                                # %for.end
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	gs_notify_all, .Lfunc_end4-gs_notify_all
	.cfi_endproc

	.globl	gs_notify_release
	.align	16, 0x90
	.type	gs_notify_release,@function
gs_notify_release:                      # @gs_notify_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB5_3
# BB#1:                                 # %while.body.lr.ph
	movq	(%r14), %r15
	.align	16, 0x90
.LBB5_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rbx
	movl	$.L.str.3, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	%rbx, 8(%r14)
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB5_2
.LBB5_3:                                # %while.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	gs_notify_release, .Lfunc_end5-gs_notify_release
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_notify_list_t"
	.size	.L.str, 17

	.type	notify_list_reloc_ptrs,@object # @notify_list_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
notify_list_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	notify_list_enum_ptrs
	.size	notify_list_reloc_ptrs, 24

	.type	st_gs_notify_list,@object # @st_gs_notify_list
	.globl	st_gs_notify_list
	.align	8
st_gs_notify_list:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	notify_list_reloc_ptrs
	.size	st_gs_notify_list, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_notify_register"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_notify_unregister"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_notify_release"
	.size	.L.str.3, 18

	.type	notify_list_enum_ptrs,@object # @notify_list_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
notify_list_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	notify_list_enum_ptrs, 4

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_notify_registration_t"
	.size	.L.str.4, 25

	.type	notify_registration_reloc_ptrs,@object # @notify_registration_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
notify_registration_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	notify_registration_enum_ptrs
	.size	notify_registration_reloc_ptrs, 24

	.type	st_gs_notify_registration,@object # @st_gs_notify_registration
	.align	8
st_gs_notify_registration:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	notify_registration_reloc_ptrs
	.size	st_gs_notify_registration, 64

	.type	notify_registration_enum_ptrs,@object # @notify_registration_enum_ptrs
	.align	2
notify_registration_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	notify_registration_enum_ptrs, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
