	.text
	.file	"gspcolor.bc"
	.align	16, 0x90
	.type	gx_num_components_Pattern,@function
gx_num_components_Pattern:              # @gx_num_components_Pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	cmpl	$0, 72(%rdi)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	40(%rdi), %rdi
	movq	(%rdi), %rax
	callq	*24(%rax)
	notl	%eax
.LBB0_2:                                # %cond.end
	popq	%rdx
	retq
.Lfunc_end0:
	.size	gx_num_components_Pattern, .Lfunc_end0-gx_num_components_Pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gx_init_Pattern,@function
gx_init_Pattern:                        # @gx_init_Pattern
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 72(%rsi)
	je	.LBB1_1
# BB#2:                                 # %if.then
	movq	40(%rsi), %rsi
	movq	(%rsi), %rax
	movq	32(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.LBB1_1:                                # %if.end
	retq
.Lfunc_end1:
	.size	gx_init_Pattern, .Lfunc_end1-gx_init_Pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gx_restrict_Pattern,@function
gx_restrict_Pattern:                    # @gx_restrict_Pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 32
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_3
# BB#1:                                 # %gs_get_pattern.exit
	movq	24(%rdi), %rax
	movq	8(%rax), %r15
	callq	*24(%rax)
	movq	%rax, %rdi
	callq	*%r15
	testl	%eax, %eax
	je	.LBB2_3
# BB#2:                                 # %land.lhs.true.4
	cmpl	$0, 72(%r14)
	je	.LBB2_3
# BB#4:                                 # %if.then
	movq	40(%r14), %rsi
	movq	(%rsi), %rax
	movq	40(%rax), %rax
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.LBB2_3:                                # %if.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	gx_restrict_Pattern, .Lfunc_end2-gx_restrict_Pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gx_remap_Pattern,@function
gx_remap_Pattern:                       # @gx_remap_Pattern
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_1
# BB#2:                                 # %if.end
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.LBB3_1:                                # %return
	movl	$0, 360(%rdx)
	movq	$0, 368(%rdx)
	movq	$0, 640(%rdx)
	movq	$0, 648(%rdx)
	movq	$0, 8(%rdx)
	movq	$gx_dc_pattern, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gx_remap_Pattern, .Lfunc_end3-gx_remap_Pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gx_install_Pattern,@function
gx_install_Pattern:                     # @gx_install_Pattern
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 72(%rdi)
	je	.LBB4_1
# BB#2:                                 # %if.end
	movq	40(%rdi), %rdi
	movq	(%rdi), %rax
	movq	80(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.LBB4_1:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gx_install_Pattern, .Lfunc_end4-gx_install_Pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gx_set_overprint_Pattern,@function
gx_set_overprint_Pattern:               # @gx_set_overprint_Pattern
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	gx_set_overprint_Pattern, .Lfunc_end5-gx_set_overprint_Pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gx_final_Pattern,@function
gx_final_Pattern:                       # @gx_final_Pattern
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end6:
	.size	gx_final_Pattern, .Lfunc_end6-gx_final_Pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gx_adjust_color_Pattern,@function
gx_adjust_color_Pattern:                # @gx_adjust_color_Pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -32
.Ltmp11:
	.cfi_offset %r14, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_3
# BB#1:                                 # %do.end
	movslq	%r14d, %rax
	addq	(%rsi), %rax
	movq	%rax, (%rsi)
	jne	.LBB7_3
# BB#2:                                 # %do.end.12
	movq	8(%rsi), %rdi
	movl	$.L.str.5, %edx
	callq	*16(%rsi)
.LBB7_3:                                # %do.end.25
	testq	%rbp, %rbp
	je	.LBB7_5
# BB#4:                                 # %land.lhs.true
	cmpl	$0, 72(%rbp)
	je	.LBB7_5
# BB#6:                                 # %if.then.29
	movq	40(%rbp), %rsi
	movq	(%rsi), %rax
	movq	104(%rax), %rax
	movq	%rbx, %rdi
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB7_5:                                # %if.end.31
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gx_adjust_color_Pattern, .Lfunc_end7-gx_adjust_color_Pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gx_serialize_Pattern,@function
gx_serialize_Pattern:                   # @gx_serialize_Pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 48
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_serialize_cspace_type
	testl	%eax, %eax
	js	.LBB8_4
# BB#1:                                 # %if.end
	leaq	72(%rbx), %r15
	leaq	12(%rsp), %rcx
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	sputs
	testl	%eax, %eax
	js	.LBB8_4
# BB#2:                                 # %if.end.4
	xorl	%eax, %eax
	cmpl	$0, (%r15)
	je	.LBB8_4
# BB#3:                                 # %if.end.7
	movq	40(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%r14, %rsi
	callq	*112(%rax)
.LBB8_4:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	gx_serialize_Pattern, .Lfunc_end8-gx_serialize_Pattern
	.cfi_endproc

	.globl	gs_pattern_common_init
	.align	16, 0x90
	.type	gs_pattern_common_init,@function
gs_pattern_common_init:                 # @gs_pattern_common_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movl	(%rsi), %eax
	movl	%eax, 8(%rdi)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, 16(%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 32(%rdi)
	retq
.Lfunc_end9:
	.size	gs_pattern_common_init, .Lfunc_end9-gs_pattern_common_init
	.cfi_endproc

	.globl	gs_make_pattern
	.align	16, 0x90
	.type	gs_make_pattern,@function
gs_make_pattern:                        # @gs_make_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	16(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end10:
	.size	gs_make_pattern, .Lfunc_end10-gs_make_pattern
	.cfi_endproc

	.globl	gs_make_pattern_common
	.align	16, 0x90
	.type	gs_make_pattern_common,@function
gs_make_pattern_common:                 # @gs_make_pattern_common
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 80
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r12
	movq	%rcx, %r13
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbp
	testq	%r12, %r12
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	%r13, %rdi
	callq	gs_state_memory
	movq	%rax, %r12
.LBB11_2:                               # %do.body
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*72(%r12)
	movq	%rax, %rbx
	movl	$-25, %r14d
	testq	%rbx, %rbx
	je	.LBB11_6
# BB#3:                                 # %do.body.4
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	$1, (%rbx)
	movq	%r12, 8(%rbx)
	movq	$rc_free_pattern_instance, 16(%rbx)
	movq	(%r15), %rax
	movq	%rax, 24(%rbx)
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	gs_state_copy
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB11_4
# BB#5:                                 # %if.end.20
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	gs_concat
	movq	%rbp, %rdi
	callq	gs_newpath
	movq	%rbp, 32(%rbx)
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbx, (%rbp)
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gs_next_ids
	movq	(%rbp), %rcx
	movq	%rax, 40(%rcx)
	xorl	%r14d, %r14d
	jmp	.LBB11_6
.LBB11_4:                               # %if.then.18
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*24(%r12)
.LBB11_6:                               # %cleanup
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gs_make_pattern_common, .Lfunc_end11-gs_make_pattern_common
	.cfi_endproc

	.globl	rc_free_pattern_instance
	.align	16, 0x90
	.type	rc_free_pattern_instance,@function
rc_free_pattern_instance:               # @rc_free_pattern_instance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 32
.Ltmp36:
	.cfi_offset %rbx, -32
.Ltmp37:
	.cfi_offset %r14, -24
.Ltmp38:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	32(%rbx), %rdi
	callq	gs_state_free
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	rc_free_struct_only     # TAILCALL
.Lfunc_end12:
	.size	rc_free_pattern_instance, .Lfunc_end12-rc_free_pattern_instance
	.cfi_endproc

	.globl	gs_setpattern
	.align	16, 0x90
	.type	gs_setpattern,@function
gs_setpattern:                          # @gs_setpattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
.Ltmp42:
	.cfi_offset %rbx, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$-21, %ecx
	cmpl	$0, 1848(%rbx)
	jne	.LBB13_5
# BB#1:                                 # %if.end.i
	movq	1744(%rbx), %r15
	movq	(%r15), %rax
	cmpl	$11, (%rax)
	je	.LBB13_4
# BB#2:                                 # %if.then.1.i
	movq	8(%rbx), %rdi
	movl	$gs_color_space_type_Pattern, %esi
	callq	gs_cspace_alloc
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB13_5
# BB#3:                                 # %if.end.4.i
	movq	%r15, 40(%rax)
	movl	$1, 72(%rax)
	movq	%rax, 1744(%rbx)
	movq	1752(%rbx), %rdi
	movq	$0, (%rdi)
	movq	(%rax), %rcx
	movq	%rax, %rsi
	callq	*32(%rcx)
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
.LBB13_4:                               # %if.end
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_setcolor             # TAILCALL
.LBB13_5:                               # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	gs_setpattern, .Lfunc_end13-gs_setpattern
	.cfi_endproc

	.globl	gs_setpatternspace
	.align	16, 0x90
	.type	gs_setpatternspace,@function
gs_setpatternspace:                     # @gs_setpatternspace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 32
.Ltmp48:
	.cfi_offset %rbx, -24
.Ltmp49:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	$-21, %eax
	cmpl	$0, 1848(%rbx)
	jne	.LBB14_4
# BB#1:                                 # %if.end
	movq	1744(%rbx), %r14
	movq	(%r14), %rcx
	xorl	%eax, %eax
	cmpl	$11, (%rcx)
	je	.LBB14_4
# BB#2:                                 # %if.then.1
	movq	8(%rbx), %rdi
	movl	$gs_color_space_type_Pattern, %esi
	callq	gs_cspace_alloc
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB14_4
# BB#3:                                 # %if.end.4
	movq	%r14, 40(%rcx)
	movl	$1, 72(%rcx)
	movq	%rcx, 1744(%rbx)
	movq	1752(%rbx), %rdi
	movq	$0, (%rdi)
	movq	(%rcx), %rax
	movq	%rcx, %rsi
	callq	*32(%rax)
	movq	1760(%rbx), %rax
	movq	$gx_dc_type_data_none, (%rax)
	xorl	%eax, %eax
.LBB14_4:                               # %cleanup.19
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	gs_setpatternspace, .Lfunc_end14-gs_setpatternspace
	.cfi_endproc

	.globl	gs_pattern_reference
	.align	16, 0x90
	.type	gs_pattern_reference,@function
gs_pattern_reference:                   # @gs_pattern_reference
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbx, -16
	movl	%esi, %eax
	movq	%rdi, %rbx
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_3
# BB#1:                                 # %do.end
	cltq
	addq	(%rsi), %rax
	movq	%rax, (%rsi)
	jne	.LBB15_3
# BB#2:                                 # %do.end.14
	movq	8(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*16(%rsi)
	movq	$0, (%rbx)
.LBB15_3:                               # %if.end.26
	popq	%rbx
	retq
.Lfunc_end15:
	.size	gs_pattern_reference, .Lfunc_end15-gs_pattern_reference
	.cfi_endproc

	.globl	gs_get_pattern
	.align	16, 0x90
	.type	gs_get_pattern,@function
gs_get_pattern:                         # @gs_get_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB16_1
# BB#2:                                 # %cond.false
	movq	24(%rdi), %rax
	jmpq	*24(%rax)               # TAILCALL
.LBB16_1:                               # %cond.end
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	gs_get_pattern, .Lfunc_end16-gs_get_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	cs_Pattern_enum_ptrs,@function
cs_Pattern_enum_ptrs:                   # @cs_Pattern_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	cs_Pattern_enum_ptrs, .Lfunc_end17-cs_Pattern_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	cs_Pattern_reloc_ptrs,@function
cs_Pattern_reloc_ptrs:                  # @cs_Pattern_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end18:
	.size	cs_Pattern_reloc_ptrs, .Lfunc_end18-cs_Pattern_reloc_ptrs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_pattern_template_t"
	.size	.L.str, 22

	.type	pattern_template_reloc_ptrs,@object # @pattern_template_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pattern_template_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pattern_template_enum_ptrs
	.size	pattern_template_reloc_ptrs, 24

	.type	st_pattern_template,@object # @st_pattern_template
	.globl	st_pattern_template
	.align	8
st_pattern_template:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pattern_template_reloc_ptrs
	.size	st_pattern_template, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_pattern_instance_t"
	.size	.L.str.1, 22

	.type	pattern_instance_reloc_ptrs,@object # @pattern_instance_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pattern_instance_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pattern_instance_enum_ptrs
	.size	pattern_instance_reloc_ptrs, 24

	.type	st_pattern_instance,@object # @st_pattern_instance
	.globl	st_pattern_instance
	.align	8
st_pattern_instance:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pattern_instance_reloc_ptrs
	.size	st_pattern_instance, 64

	.type	gs_color_space_type_Pattern,@object # @gs_color_space_type_Pattern
	.globl	gs_color_space_type_Pattern
	.align	8
gs_color_space_type_Pattern:
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	st_color_space_Pattern
	.quad	gx_num_components_Pattern
	.quad	gx_init_Pattern
	.quad	gx_restrict_Pattern
	.quad	gx_no_concrete_space
	.quad	gx_no_concretize_color
	.quad	0
	.quad	gx_remap_Pattern
	.quad	gx_install_Pattern
	.quad	gx_set_overprint_Pattern
	.quad	gx_final_Pattern
	.quad	gx_adjust_color_Pattern
	.quad	gx_serialize_Pattern
	.quad	gx_cspace_no_linear
	.quad	gx_polarity_unknown
	.size	gs_color_space_type_Pattern, 136

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_make_pattern_common"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gs_pattern_reference"
	.size	.L.str.3, 21

	.type	pattern_template_enum_ptrs,@object # @pattern_template_enum_ptrs
	.section	.rodata,"a",@progbits
	.align	2
pattern_template_enum_ptrs:
	.short	0                       # 0x0
	.short	24                      # 0x18
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	pattern_template_enum_ptrs, 8

	.type	pattern_instance_enum_ptrs,@object # @pattern_instance_enum_ptrs
	.align	2
pattern_instance_enum_ptrs:
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	pattern_instance_enum_ptrs, 4

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"gs_color_space_Pattern"
	.size	.L.str.4, 23

	.type	st_color_space_Pattern,@object # @st_color_space_Pattern
	.section	.rodata,"a",@progbits
	.align	8
st_color_space_Pattern:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	cs_Pattern_enum_ptrs
	.quad	cs_Pattern_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_color_space_Pattern, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"gx_adjust_color_Pattern"
	.size	.L.str.5, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
