	.text
	.file	"szlibc.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	8                       # 0x8
	.text
	.globl	s_zlib_set_defaults
	.align	16, 0x90
	.type	s_zlib_set_defaults,@function
s_zlib_set_defaults:                    # @s_zlib_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [15,0,4294967295,8]
	movups	%xmm0, 108(%rdi)
	movl	$8, 124(%rdi)
	movl	$0, 128(%rdi)
	movq	$0, 136(%rdi)
	retq
.Lfunc_end0:
	.size	s_zlib_set_defaults, .Lfunc_end0-s_zlib_set_defaults
	.cfi_endproc

	.globl	s_zlib_alloc_dynamic_state
	.align	16, 0x90
	.type	s_zlib_alloc_dynamic_state,@function
s_zlib_alloc_dynamic_state:             # @s_zlib_alloc_dynamic_state
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
	movq	%rdi, %r14
	movq	8(%r14), %rbx
	movl	$st_zlib_dynamic_state, %esi
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	callq	*80(%rbx)
	movq	%rax, 136(%r14)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %if.end
	movq	$0, 8(%rax)
	movq	%rbx, (%rax)
	movq	$s_zlib_alloc, 80(%rax)
	movq	$s_zlib_free, 88(%rax)
	movq	%rax, 96(%rax)
	xorl	%ecx, %ecx
.LBB1_2:                                # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	s_zlib_alloc_dynamic_state, .Lfunc_end1-s_zlib_alloc_dynamic_state
	.cfi_endproc

	.globl	s_zlib_alloc
	.align	16, 0x90
	.type	s_zlib_alloc,@function
s_zlib_alloc:                           # @s_zlib_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -48
.Ltmp11:
	.cfi_offset %r12, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %r15
	movq	(%r15), %rax
	movq	(%rax), %rbx
	movl	$st_zlib_block, %esi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r14
	movl	$.L.str.4, %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r12d, %edx
	callq	*96(%rbx)
	testq	%r14, %r14
	je	.LBB2_2
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB2_2
# BB#3:                                 # %if.end
	movq	%rax, (%r14)
	movq	8(%r15), %rcx
	movq	%rcx, 8(%r14)
	movq	$0, 16(%r14)
	testq	%rcx, %rcx
	je	.LBB2_5
# BB#4:                                 # %if.then.9
	movq	%r14, 16(%rcx)
.LBB2_5:                                # %if.end.12
	movq	%r14, 8(%r15)
	jmp	.LBB2_6
.LBB2_2:                                # %if.then
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%eax, %eax
.LBB2_6:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	s_zlib_alloc, .Lfunc_end2-s_zlib_alloc
	.cfi_endproc

	.globl	s_zlib_free
	.align	16, 0x90
	.type	s_zlib_free,@function
s_zlib_free:                            # @s_zlib_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r12, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	(%r15), %rax
	movq	8(%r15), %rbx
	movq	(%rax), %r14
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	.align	16, 0x90
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rsi
	testq	%rsi, %rsi
	je	.LBB3_9
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	8(%rsi), %rbx
	cmpq	%r12, (%rsi)
	jne	.LBB3_1
# BB#3:                                 # %for.end
	testq	%rbx, %rbx
	je	.LBB3_5
# BB#4:                                 # %if.then.8
	movq	16(%rsi), %rax
	movq	%rax, 16(%rbx)
.LBB3_5:                                # %if.end.11
	movq	16(%rsi), %rax
	testq	%rax, %rax
	je	.LBB3_7
# BB#6:                                 # %if.then.14
	movq	%rbx, 8(%rax)
	jmp	.LBB3_8
.LBB3_9:                                # %if.then
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.6, %edi
	movl	$113, %esi
	callq	lprintf_file_and_line
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	errprintf_nomem         # TAILCALL
.LBB3_7:                                # %if.else
	movq	%rbx, 8(%r15)
.LBB3_8:                                # %if.end.20
	movq	24(%r14), %rax
	movl	$.L.str.8, %edx
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	s_zlib_free, .Lfunc_end3-s_zlib_free
	.cfi_endproc

	.globl	s_zlib_free_dynamic_state
	.align	16, 0x90
	.type	s_zlib_free_dynamic_state,@function
s_zlib_free_dynamic_state:              # @s_zlib_free_dynamic_state
	.cfi_startproc
# BB#0:                                 # %entry
	movq	136(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB4_1
# BB#2:                                 # %if.then
	movq	(%rsi), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.2, %edx
	jmpq	*%rax                   # TAILCALL
.LBB4_1:                                # %if.end
	retq
.Lfunc_end4:
	.size	s_zlib_free_dynamic_state, .Lfunc_end4-s_zlib_free_dynamic_state
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"zlibEncode/Decode state"
	.size	.L.str, 24

	.type	zlib_state_reloc_ptrs,@object # @zlib_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
zlib_state_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	zlib_state_enum_ptrs
	.size	zlib_state_reloc_ptrs, 24

	.type	st_zlib_state,@object   # @st_zlib_state
	.globl	st_zlib_state
	.align	8
st_zlib_state:
	.long	144                     # 0x90
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	zlib_state_reloc_ptrs
	.size	st_zlib_state, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"s_zlib_alloc_dynamic_state"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"s_zlib_free_dynamic_state"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"s_zlib_alloc(block)"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"s_zlib_alloc(data)"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"s_zlib_free(data)"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"./base/szlibc.c"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Freeing unrecorded data 0x%lx!\n"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"s_zlib_free(block)"
	.size	.L.str.8, 19

	.type	zlib_state_enum_ptrs,@object # @zlib_state_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
zlib_state_enum_ptrs:
	.short	0                       # 0x0
	.short	136                     # 0x88
	.size	zlib_state_enum_ptrs, 4

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"zlib_dynamic_state_t"
	.size	.L.str.9, 21

	.type	zlib_dynamic_reloc_ptrs,@object # @zlib_dynamic_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
zlib_dynamic_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	zlib_dynamic_enum_ptrs
	.size	zlib_dynamic_reloc_ptrs, 24

	.type	st_zlib_dynamic_state,@object # @st_zlib_dynamic_state
	.align	8
st_zlib_dynamic_state:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	zlib_dynamic_reloc_ptrs
	.size	st_zlib_dynamic_state, 64

	.type	zlib_dynamic_enum_ptrs,@object # @zlib_dynamic_enum_ptrs
	.align	2
zlib_dynamic_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.size	zlib_dynamic_enum_ptrs, 4

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"zlib_block_t"
	.size	.L.str.10, 13

	.type	zlib_block_reloc_ptrs,@object # @zlib_block_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
zlib_block_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	zlib_block_enum_ptrs
	.size	zlib_block_reloc_ptrs, 24

	.type	st_zlib_block,@object   # @st_zlib_block
	.align	8
st_zlib_block:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	zlib_block_reloc_ptrs
	.size	st_zlib_block, 64

	.type	zlib_block_enum_ptrs,@object # @zlib_block_enum_ptrs
	.align	2
zlib_block_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	16                      # 0x10
	.zero	4
	.size	zlib_block_enum_ptrs, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
