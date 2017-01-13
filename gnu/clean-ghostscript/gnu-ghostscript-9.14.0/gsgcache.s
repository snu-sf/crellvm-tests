	.text
	.file	"gsgcache.bc"
	.globl	gs_glyph_cache__alloc
	.align	16, 0x90
	.type	gs_glyph_cache__alloc,@function
gs_glyph_cache__alloc:                  # @gs_glyph_cache__alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
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
	.cfi_offset %r13, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	16(%r12), %rax
	movq	(%rax), %r13
	movl	$st_glyph_cache, %esi
	movl	$.L.str, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#1:                                 # %if.end
	movl	$0, (%rbx)
	movq	$0, 8(%rbx)
	movq	%r12, 24(%rbx)
	movq	%r15, 32(%rbx)
	movq	%r13, 16(%rbx)
	movq	%r14, 40(%rbx)
	movl	$gs_glyph_cache__release, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	gs_font_notify_register
	movq	%rbx, %rax
.LBB0_2:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gs_glyph_cache__alloc, .Lfunc_end0-gs_glyph_cache__alloc
	.cfi_endproc

	.globl	gs_glyph_cache__release
	.align	16, 0x90
	.type	gs_glyph_cache__release,@function
gs_glyph_cache__release:                # @gs_glyph_cache__release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 48
.Ltmp15:
	.cfi_offset %rbx, -40
.Ltmp16:
	.cfi_offset %r12, -32
.Ltmp17:
	.cfi_offset %r14, -24
.Ltmp18:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	8(%r15), %rbx
	movq	24(%r15), %r14
	testq	%rbx, %rbx
	je	.LBB1_2
	.align	16, 0x90
.LBB1_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rax
	movq	56(%rbx), %r12
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	*(%rax)
	movq	16(%r15), %rdi
	movl	$.L.str.2, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	testq	%r12, %r12
	movq	%r12, %rbx
	jne	.LBB1_1
.LBB1_2:                                # %while.end
	movq	$0, 8(%r15)
	movl	$gs_glyph_cache__release, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	gs_font_notify_unregister
	movq	16(%r15), %rdi
	movl	$.L.str.1, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	gs_glyph_cache__release, .Lfunc_end1-gs_glyph_cache__release
	.cfi_endproc

	.globl	gs_get_glyph_data_cached
	.align	16, 0x90
	.type	gs_get_glyph_data_cached,@function
gs_get_glyph_data_cached:               # @gs_get_glyph_data_cached
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 64
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	624(%r14), %r12
	movq	8(%r12), %rcx
	xorl	%edx, %edx
	testq	%rcx, %rcx
	je	.LBB2_12
# BB#1:
	leaq	8(%r12), %rax
	movq	%rax, %rsi
	.align	16, 0x90
.LBB2_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, 48(%rcx)
	je	.LBB2_3
# BB#4:                                 # %if.end.i
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 52(%rcx)
	movq	%rsi, %rbx
	je	.LBB2_6
# BB#5:                                 # %select.mid
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%rdx, %rbx
.LBB2_6:                                # %select.end
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%rcx, %rsi
	movq	56(%rcx), %rcx
	addq	$56, %rsi
	testq	%rcx, %rcx
	movq	%rbx, %rdx
	jne	.LBB2_2
# BB#7:                                 # %gs_glyph_cache_elem__locate.exit
	testq	%rbx, %rbx
	jne	.LBB2_8
	jmp	.LBB2_12
.LBB2_3:
	movq	%rsi, %rbx
.LBB2_8:                                # %lor.lhs.false
	movq	(%rbx), %r13
	cmpl	%ebp, 48(%r13)
	jne	.LBB2_9
# BB#16:                                # %if.else.42
	movq	56(%r13), %rcx
	movq	%rcx, (%rbx)
	movq	(%rax), %rcx
	movq	%rcx, 56(%r13)
	movq	%r13, (%rax)
	jmp	.LBB2_17
.LBB2_9:                                # %land.lhs.true
	movl	(%r12), %eax
	cmpl	$32768, %eax            # imm = 0x8000
	jl	.LBB2_12
# BB#10:                                # %land.lhs.true.6
	cmpl	$0, 52(%r13)
	je	.LBB2_11
.LBB2_12:                               # %if.else
	movq	16(%r12), %rdi
	movl	$st_glyph_cache_elem, %esi
	movl	$.L.str.4, %edx
	callq	*72(%rdi)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB2_18
# BB#13:                                # %if.end
	xorl	%esi, %esi
	movl	$64, %edx
	movq	%r13, %rdi
	callq	memset
	movq	8(%r12), %rax
	movq	%rax, 56(%r13)
	movq	%r13, 8(%r12)
	movq	16(%r12), %rax
	movq	%rax, 40(%r13)
.LBB2_14:                               # %if.end.25
	movq	32(%r12), %rsi
	movq	%r14, %rdi
	movl	%ebp, %edx
	movq	%r13, %rcx
	callq	*40(%r12)
	testl	%eax, %eax
	js	.LBB2_18
# BB#15:                                # %cleanup
	movl	8(%r13), %eax
	movl	(%r12), %ecx
	leal	64(%rax,%rcx), %eax
	movl	%eax, (%r12)
	movl	%ebp, 48(%r13)
.LBB2_17:                               # %if.end.43
	movq	16(%r13), %rax
	movq	%rax, 16(%r15)
	movups	(%r13), %xmm0
	movups	%xmm0, (%r15)
	movq	%r13, 32(%r15)
	movq	$gs_glyph_cache_elem_procs, 24(%r15)
	incl	52(%r13)
	xorl	%eax, %eax
.LBB2_18:                               # %cleanup.49
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_11:                               # %if.then.8
	addl	$-64, %eax
	subl	8(%r13), %eax
	movl	%eax, (%r12)
	movq	24(%r13), %rax
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	callq	*(%rax)
	movq	(%rbx), %rax
	movq	56(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	8(%r12), %rcx
	movq	%rcx, 56(%rax)
	movq	%rax, 8(%r12)
	jmp	.LBB2_14
.Lfunc_end2:
	.size	gs_get_glyph_data_cached, .Lfunc_end2-gs_get_glyph_data_cached
	.cfi_endproc

	.align	16, 0x90
	.type	gs_glyph_cache_elem_enum_ptrs,@function
gs_glyph_cache_elem_enum_ptrs:          # @gs_glyph_cache_elem_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	je	.LBB3_3
# BB#1:                                 # %sw.default
	xorl	%eax, %eax
	cmpl	$2, %ecx
	jg	.LBB3_4
# BB#2:                                 # %if.then
	decl	%ecx
	movl	$48, %edx
	movl	$st_glyph_data, %r9d
	jmpq	*st_glyph_data+32(%rip) # TAILCALL
.LBB3_3:                                # %sw.bb
	movq	56(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB3_4:                                # %cleanup
	retq
.Lfunc_end3:
	.size	gs_glyph_cache_elem_enum_ptrs, .Lfunc_end3-gs_glyph_cache_elem_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gs_glyph_cache_elem_reloc_ptrs,@function
gs_glyph_cache_elem_reloc_ptrs:         # @gs_glyph_cache_elem_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 32
.Ltmp35:
	.cfi_offset %rbx, -24
.Ltmp36:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	56(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 56(%rbx)
	movl	$48, %esi
	movl	$st_glyph_data, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*st_glyph_data+40(%rip) # TAILCALL
.Lfunc_end4:
	.size	gs_glyph_cache_elem_reloc_ptrs, .Lfunc_end4-gs_glyph_cache_elem_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gs_glyph_cache_elem__free_data,@function
gs_glyph_cache_elem__free_data:         # @gs_glyph_cache_elem__free_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rax
	decl	52(%rax)
	retq
.Lfunc_end5:
	.size	gs_glyph_cache_elem__free_data, .Lfunc_end5-gs_glyph_cache_elem__free_data
	.cfi_endproc

	.align	16, 0x90
	.type	gs_glyph_cache_elem__substring,@function
gs_glyph_cache_elem__substring:         # @gs_glyph_cache_elem__substring
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rax
	incl	52(%rax)
	movl	$-28, %eax
	retq
.Lfunc_end6:
	.size	gs_glyph_cache_elem__substring, .Lfunc_end6-gs_glyph_cache_elem__substring
	.cfi_endproc

	.type	st_glyph_cache,@object  # @st_glyph_cache
	.section	.rodata,"a",@progbits
	.align	8
st_glyph_cache:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gs_glyph_cache_reloc_ptrs
	.size	st_glyph_cache, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_glyph_cache"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_glyph_cache__release"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_glyph_cache_elem__release"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_get_glyph_data_cached"
	.size	.L.str.3, 25

	.type	st_glyph_cache_elem,@object # @st_glyph_cache_elem
	.section	.rodata,"a",@progbits
	.align	8
st_glyph_cache_elem:
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	gs_glyph_cache_elem_enum_ptrs
	.quad	gs_glyph_cache_elem_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_glyph_cache_elem, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_glyph_cache_elem"
	.size	.L.str.4, 20

	.type	gs_glyph_cache_elem_procs,@object # @gs_glyph_cache_elem_procs
	.section	.rodata,"a",@progbits
	.align	8
gs_glyph_cache_elem_procs:
	.quad	gs_glyph_cache_elem__free_data
	.quad	gs_glyph_cache_elem__substring
	.size	gs_glyph_cache_elem_procs, 16

	.type	gs_glyph_cache_reloc_ptrs,@object # @gs_glyph_cache_reloc_ptrs
	.align	8
gs_glyph_cache_reloc_ptrs:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gs_glyph_cache_enum_ptrs
	.size	gs_glyph_cache_reloc_ptrs, 24

	.type	gs_glyph_cache_enum_ptrs,@object # @gs_glyph_cache_enum_ptrs
	.align	16
gs_glyph_cache_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	gs_glyph_cache_enum_ptrs, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
