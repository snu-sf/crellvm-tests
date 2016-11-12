	.text
	.file	"gsgdata.bc"
	.align	16, 0x90
	.type	gs_glyph_data_enum_ptrs,@function
gs_glyph_data_enum_ptrs:                # @gs_glyph_data_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB0_2
# BB#1:                                 # %cleanup
	movq	32(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_2:                                # %sw.bb
	movq	%r8, %rdi
	jmp	enum_const_bytestring   # TAILCALL
.Lfunc_end0:
	.size	gs_glyph_data_enum_ptrs, .Lfunc_end0-gs_glyph_data_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gs_glyph_data_reloc_ptrs,@function
gs_glyph_data_reloc_ptrs:               # @gs_glyph_data_reloc_ptrs
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
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rsi
	callq	reloc_const_bytestring
	movq	(%rbx), %rax
	movq	32(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 32(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	gs_glyph_data_reloc_ptrs, .Lfunc_end1-gs_glyph_data_reloc_ptrs
	.cfi_endproc

	.globl	gs_glyph_data_substring
	.align	16, 0x90
	.type	gs_glyph_data_substring,@function
gs_glyph_data_substring:                # @gs_glyph_data_substring
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rdi), %eax
	subl	%esi, %eax
	jb	.LBB2_2
# BB#1:                                 # %entry
	cmpl	%edx, %eax
	jb	.LBB2_2
# BB#3:                                 # %if.end
	movq	24(%rdi), %rax
	movq	8(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.LBB2_2:                                # %return
	movl	$-15, %eax
	retq
.Lfunc_end2:
	.size	gs_glyph_data_substring, .Lfunc_end2-gs_glyph_data_substring
	.cfi_endproc

	.globl	gs_glyph_data_free
	.align	16, 0x90
	.type	gs_glyph_data_free,@function
gs_glyph_data_free:                     # @gs_glyph_data_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB3_4
# BB#1:                                 # %if.then
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB3_3
# BB#2:                                 # %if.then.2
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB3_3:                                # %if.end
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 32(%rbx)
	movq	$no_free_procs, 24(%rbx)
.LBB3_4:                                # %if.end.4
	popq	%rbx
	retq
.Lfunc_end3:
	.size	gs_glyph_data_free, .Lfunc_end3-gs_glyph_data_free
	.cfi_endproc

	.globl	gs_glyph_data_from_null
	.align	16, 0x90
	.type	gs_glyph_data_from_null,@function
gs_glyph_data_from_null:                # @gs_glyph_data_from_null
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, (%rdi)
	movl	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 32(%rdi)
	movq	$no_free_procs, 24(%rdi)
	retq
.Lfunc_end4:
	.size	gs_glyph_data_from_null, .Lfunc_end4-gs_glyph_data_from_null
	.cfi_endproc

	.globl	gs_glyph_data_from_string
	.align	16, 0x90
	.type	gs_glyph_data_from_string,@function
gs_glyph_data_from_string:              # @gs_glyph_data_from_string
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movl	%edx, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	%rcx, 32(%rdi)
	testq	%rcx, %rcx
	movl	$free_by_font_procs, %eax
	movl	$no_free_procs, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 24(%rdi)
	retq
.Lfunc_end5:
	.size	gs_glyph_data_from_string, .Lfunc_end5-gs_glyph_data_from_string
	.cfi_endproc

	.globl	gs_glyph_data_from_bytes
	.align	16, 0x90
	.type	gs_glyph_data_from_bytes,@function
gs_glyph_data_from_bytes:               # @gs_glyph_data_from_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 16(%rdi)
	movl	%edx, %eax
	addq	%rsi, %rax
	movq	%rax, (%rdi)
	movl	%ecx, 8(%rdi)
	movq	%r8, 32(%rdi)
	testq	%r8, %r8
	movl	$free_by_font_procs, %eax
	movl	$no_free_procs, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 24(%rdi)
	retq
.Lfunc_end6:
	.size	gs_glyph_data_from_bytes, .Lfunc_end6-gs_glyph_data_from_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	glyph_data_free_by_font,@function
glyph_data_free_by_font:                # @glyph_data_free_by_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	32(%rcx), %rdx
	movq	16(%rdx), %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmp	gs_free_const_bytestring # TAILCALL
.Lfunc_end7:
	.size	glyph_data_free_by_font, .Lfunc_end7-glyph_data_free_by_font
	.cfi_endproc

	.align	16, 0x90
	.type	glyph_data_substring_by_font,@function
glyph_data_substring_by_font:           # @glyph_data_substring_by_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp11:
	.cfi_def_cfa_offset 48
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movq	(%rbx), %rbp
	cmpq	$0, 16(%rbx)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	addq	%rax, %rbp
	movq	%rbp, (%rbx)
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movq	32(%rbx), %r15
	testl	%esi, %esi
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	movl	%esi, %eax
	leaq	(%rax,%rbp), %rsi
	movl	%r14d, %edx
	movq	%rbp, %rdi
	callq	memmove
.LBB8_4:                                # %if.end.5
	movq	16(%r15), %rdi
	movl	8(%rbx), %edx
	movl	$.L.str.1, %r8d
	movq	%rbp, %rsi
	movl	%r14d, %ecx
	callq	*152(%rdi)
	movq	%rax, (%rbx)
.LBB8_5:                                # %cleanup
	movl	%r14d, 8(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	glyph_data_substring_by_font, .Lfunc_end8-glyph_data_substring_by_font
	.cfi_endproc

	.align	16, 0x90
	.type	glyph_data_substring_permanent,@function
glyph_data_substring_permanent:         # @glyph_data_substring_permanent
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	addq	%rax, (%rdi)
	movl	%edx, 8(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	glyph_data_substring_permanent, .Lfunc_end9-glyph_data_substring_permanent
	.cfi_endproc

	.align	16, 0x90
	.type	glyph_data_free_permanent,@function
glyph_data_free_permanent:              # @glyph_data_free_permanent
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end10:
	.size	glyph_data_free_permanent, .Lfunc_end10-glyph_data_free_permanent
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_glyph_data_t"
	.size	.L.str, 16

	.type	st_glyph_data,@object   # @st_glyph_data
	.section	.rodata,"a",@progbits
	.globl	st_glyph_data
	.align	8
st_glyph_data:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_glyph_data_enum_ptrs
	.quad	gs_glyph_data_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_glyph_data, 64

	.type	free_by_font_procs,@object # @free_by_font_procs
	.align	8
free_by_font_procs:
	.quad	glyph_data_free_by_font
	.quad	glyph_data_substring_by_font
	.size	free_by_font_procs, 16

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"glyph_data_substring"
	.size	.L.str.1, 21

	.type	no_free_procs,@object   # @no_free_procs
	.section	.rodata,"a",@progbits
	.align	8
no_free_procs:
	.quad	glyph_data_free_permanent
	.quad	glyph_data_substring_permanent
	.size	no_free_procs, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
