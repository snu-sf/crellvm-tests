	.text
	.file	"gsicc_profilecache.bc"
	.globl	gsicc_profilecache_new
	.align	16, 0x90
	.type	gsicc_profilecache_new,@function
gsicc_profilecache_new:                 # @gsicc_profilecache_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movl	$st_profile_cache, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %do.body
	movq	$1, 16(%rax)
	movq	(%rbx), %rcx
	movq	%rcx, 24(%rax)
	movq	$rc_gsicc_profile_cache_free, 32(%rax)
	movq	$0, (%rax)
	movl	$0, 8(%rax)
	movq	%rbx, 40(%rax)
	movq	%rax, %rcx
.LBB0_2:                                # %cleanup
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gsicc_profilecache_new, .Lfunc_end0-gsicc_profilecache_new
	.cfi_endproc

	.align	16, 0x90
	.type	rc_gsicc_profile_cache_free,@function
rc_gsicc_profile_cache_free:            # @rc_gsicc_profile_cache_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 48
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r12, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%r14), %r12
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_5:                                # %do.end.29
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	(%r15), %rdi
	movl	$.L.str.3, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	decl	8(%r14)
.LBB1_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	je	.LBB1_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, %rbx
	movq	(%rbx), %rsi
	movq	8(%rbx), %r12
	testq	%rsi, %rsi
	je	.LBB1_5
# BB#3:                                 # %do.end
                                        #   in Loop: Header=BB1_1 Depth=1
	decq	8(%rsi)
	jne	.LBB1_5
# BB#4:                                 # %do.end.15
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*24(%rsi)
	movq	$0, (%rbx)
	jmp	.LBB1_5
.LBB1_6:                                # %while.end
	movq	(%r15), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.3, %edx
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	rc_gsicc_profile_cache_free, .Lfunc_end1-rc_gsicc_profile_cache_free
	.cfi_endproc

	.globl	gsicc_add_cs
	.align	16, 0x90
	.type	gsicc_add_cs,@function
gsicc_add_cs:                           # @gsicc_add_cs
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	8(%rdi), %rax
	movq	352(%rdi), %r13
	movq	(%rax), %rdi
	movl	$st_profile_entry, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rdi)
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB2_14
# BB#1:                                 # %if.end
	movl	8(%r13), %eax
	cmpl	$50, %eax
	jl	.LBB2_11
# BB#2:                                 # %if.then.4
	movq	(%r13), %rdx
	movq	40(%r13), %rbp
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_3:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rbx
	movq	%rsi, %rcx
	movq	8(%rbx), %rdx
	testq	%rdx, %rdx
	movq	%rbx, %rsi
	jne	.LBB2_3
# BB#4:                                 # %while.end.i
	decl	%eax
	movl	%eax, 8(%r13)
	testq	%rcx, %rcx
	je	.LBB2_5
# BB#6:                                 # %if.else.i
	movq	$0, 8(%rcx)
	jmp	.LBB2_7
.LBB2_5:                                # %if.then.i
	movq	$0, (%r13)
.LBB2_7:                                # %do.body.i
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_10
# BB#8:                                 # %do.end.i
	decq	8(%rsi)
	jne	.LBB2_10
# BB#9:                                 # %do.end.20.i
	movq	16(%rsi), %rdi
	movl	$.L.str.5, %edx
	callq	*24(%rsi)
	movq	$0, (%rbx)
.LBB2_10:                               # %gsicc_remove_cs_entry.exit
	movq	(%rbp), %rdi
	movl	$.L.str.5, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
.LBB2_11:                               # %if.end.5
	movq	(%r13), %rax
	movq	%rax, 8(%r12)
	movq	%r12, (%r13)
	movq	%r15, (%r12)
	testq	%r15, %r15
	je	.LBB2_13
# BB#12:                                # %do.body.8
	incq	8(%r15)
.LBB2_13:                               # %do.end.14
	movq	%r14, 16(%r12)
	incl	8(%r13)
.LBB2_14:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gsicc_add_cs, .Lfunc_end2-gsicc_add_cs
	.cfi_endproc

	.globl	gsicc_find_cs
	.align	16, 0x90
	.type	gsicc_find_cs,@function
gsicc_find_cs:                          # @gsicc_find_cs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	352(%rsi), %r8
	movq	(%r8), %r9
	xorl	%esi, %esi
	testq	%r9, %r9
	movl	$0, %eax
	je	.LBB3_7
# BB#1:
	xorl	%eax, %eax
	movq	%r9, %rdx
	.align	16, 0x90
.LBB3_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rcx
	cmpq	%rdi, 16(%rcx)
	je	.LBB3_3
# BB#6:                                 # %if.end.9
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	movq	%rcx, %rsi
	jne	.LBB3_2
.LBB3_7:                                # %cleanup
	retq
.LBB3_3:                                # %if.then
	cmpq	%r9, %rcx
	je	.LBB3_5
# BB#4:                                 # %if.then.4
	movq	8(%rcx), %rax
	movq	%rax, 8(%rsi)
	movq	%r9, 8(%rcx)
	movq	%rcx, (%r8)
.LBB3_5:                                # %if.end
	movq	(%rcx), %rax
	retq
.Lfunc_end3:
	.size	gsicc_find_cs, .Lfunc_end3-gsicc_find_cs
	.cfi_endproc

	.type	st_profile_cache,@object # @st_profile_cache
	.section	.rodata,"a",@progbits
	.align	8
st_profile_cache:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	profile_list_reloc_ptrs
	.size	st_profile_cache, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gsicc_profilecache_new"
	.size	.L.str, 23

	.type	st_profile_entry,@object # @st_profile_entry
	.section	.rodata,"a",@progbits
	.align	8
st_profile_entry:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	profile_entry_reloc_ptrs
	.size	st_profile_entry, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gsicc_add_cs"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gsicc_profile_cache"
	.size	.L.str.2, 20

	.type	profile_list_reloc_ptrs,@object # @profile_list_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
profile_list_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	profile_list_enum_ptrs
	.size	profile_list_reloc_ptrs, 24

	.type	profile_list_enum_ptrs,@object # @profile_list_enum_ptrs
	.align	2
profile_list_enum_ptrs:
	.zero	4
	.size	profile_list_enum_ptrs, 4

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"rc_gsicc_profile_cache_free"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gsicc_profile_entry"
	.size	.L.str.4, 20

	.type	profile_entry_reloc_ptrs,@object # @profile_entry_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
profile_entry_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	profile_entry_enum_ptrs
	.size	profile_entry_reloc_ptrs, 24

	.type	profile_entry_enum_ptrs,@object # @profile_entry_enum_ptrs
	.align	2
profile_entry_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	profile_entry_enum_ptrs, 8

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"gsicc_remove_cs_entry"
	.size	.L.str.5, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
