	.text
	.file	"gscspace.bc"
	.align	16, 0x90
	.type	color_space_enum_ptrs,@function
color_space_enum_ptrs:                  # @color_space_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$2, %ecx
	je	.LBB0_4
# BB#1:                                 # %entry
	cmpl	$1, %ecx
	jne	.LBB0_2
# BB#6:                                 # %if.then.2
	movq	56(%rsi), %rax
	jmp	.LBB0_7
.LBB0_4:                                # %if.then.6
	movq	48(%rsi), %rax
	jmp	.LBB0_7
.LBB0_2:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB0_5
# BB#3:                                 # %if.then
	movq	40(%rsi), %rax
.LBB0_7:                                # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.LBB0_5:                                # %if.end.8
	movq	(%rsi), %rax
	movq	16(%rax), %r9
	movq	32(%r9), %rax
	addl	$-3, %ecx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	color_space_enum_ptrs, .Lfunc_end0-color_space_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	color_space_reloc_ptrs,@function
color_space_reloc_ptrs:                 # @color_space_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	movq	(%rbx), %rax
	movq	40(%rbp), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 40(%rbp)
	movq	(%rbx), %rax
	movq	56(%rbp), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 56(%rbp)
	movq	(%rbx), %rax
	movq	48(%rbp), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 48(%rbp)
	movq	(%rbp), %rax
	movq	16(%rax), %rdx
	movq	40(%rdx), %rax
	movq	%rbp, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	color_space_reloc_ptrs, .Lfunc_end1-color_space_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gs_cspace_final,@function
gs_cspace_final:                        # @gs_cspace_final
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	(%rbx), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*%rax
.LBB2_2:                                # %do.end
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_4
# BB#3:                                 # %do.end.i
	decq	8(%rsi)
	je	.LBB2_5
.LBB2_4:                                # %rc_decrement_only_cs.exit
	popq	%rbx
	retq
.LBB2_5:                                # %do.end.12.i
	movq	16(%rsi), %rdi
	movq	24(%rsi), %rax
	movl	$.L.str.11, %edx
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end2:
	.size	gs_cspace_final, .Lfunc_end2-gs_cspace_final
	.cfi_endproc

	.globl	gs_cspace_alloc
	.align	16, 0x90
	.type	gs_cspace_alloc,@function
gs_cspace_alloc:                        # @gs_cspace_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 32
.Ltmp11:
	.cfi_offset %rbx, -32
.Ltmp12:
	.cfi_offset %r14, -24
.Ltmp13:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, %r15
	movl	$st_color_space, %esi
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB3_2
# BB#1:                                 # %do.body.1.i
	movq	$1, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	$rc_free_struct_only, 24(%rax)
	movq	%r14, (%rax)
	movq	%r15, 32(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rax)
	movq	%rax, %rcx
.LBB3_2:                                # %gs_cspace_alloc_with_id.exit
	movq	%rcx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gs_cspace_alloc, .Lfunc_end3-gs_cspace_alloc
	.cfi_endproc

	.globl	gs_cspace_new_DeviceGray
	.align	16, 0x90
	.type	gs_cspace_new_DeviceGray,@function
gs_cspace_new_DeviceGray:               # @gs_cspace_new_DeviceGray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$st_color_space, %esi
	movl	$.L.str.12, %edx
	callq	*72(%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB4_2
# BB#1:                                 # %do.body.1.i
	movq	$1, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	$rc_free_struct_only, 24(%rax)
	movq	$gs_color_space_type_DeviceGray, (%rax)
	movq	$1, 32(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rax)
	movq	%rax, %rcx
.LBB4_2:                                # %gs_cspace_alloc_with_id.exit
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	gs_cspace_new_DeviceGray, .Lfunc_end4-gs_cspace_new_DeviceGray
	.cfi_endproc

	.globl	gs_cspace_new_DeviceRGB
	.align	16, 0x90
	.type	gs_cspace_new_DeviceRGB,@function
gs_cspace_new_DeviceRGB:                # @gs_cspace_new_DeviceRGB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$st_color_space, %esi
	movl	$.L.str.12, %edx
	callq	*72(%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB5_2
# BB#1:                                 # %do.body.1.i
	movq	$1, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	$rc_free_struct_only, 24(%rax)
	movq	$gs_color_space_type_DeviceRGB, (%rax)
	movq	$3, 32(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rax)
	movq	%rax, %rcx
.LBB5_2:                                # %gs_cspace_alloc_with_id.exit
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	gs_cspace_new_DeviceRGB, .Lfunc_end5-gs_cspace_new_DeviceRGB
	.cfi_endproc

	.globl	gs_cspace_new_DeviceCMYK
	.align	16, 0x90
	.type	gs_cspace_new_DeviceCMYK,@function
gs_cspace_new_DeviceCMYK:               # @gs_cspace_new_DeviceCMYK
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$st_color_space, %esi
	movl	$.L.str.12, %edx
	callq	*72(%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB6_2
# BB#1:                                 # %do.body.1.i
	movq	$1, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	$rc_free_struct_only, 24(%rax)
	movq	$gs_color_space_type_DeviceCMYK, (%rax)
	movq	$4, 32(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rax)
	movq	%rax, %rcx
.LBB6_2:                                # %gs_cspace_alloc_with_id.exit
	movq	%rcx, %rax
	popq	%rbx
	retq
.Lfunc_end6:
	.size	gs_cspace_new_DeviceCMYK, .Lfunc_end6-gs_cspace_new_DeviceCMYK
	.cfi_endproc

	.globl	gs_cspace_new_ICC
	.align	16, 0x90
	.type	gs_cspace_new_ICC,@function
gs_cspace_new_ICC:                      # @gs_cspace_new_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 48
.Ltmp25:
	.cfi_offset %rbx, -48
.Ltmp26:
	.cfi_offset %r12, -40
.Ltmp27:
	.cfi_offset %r13, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movl	%edx, %r12d
	movq	%rdi, %rbx
	movq	336(%rsi), %r14
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, %r13
	movl	$st_color_space, %esi
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB7_2
# BB#1:                                 # %do.body.1.i.i
	movq	$1, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	$rc_free_struct_only, 24(%rax)
	movq	$gs_color_space_type_ICC, (%rax)
	movq	%r13, 32(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rax)
	movq	%rax, %r15
.LBB7_2:                                # %gs_cspace_alloc.exit
	addl	$3, %r12d
	cmpl	$7, %r12d
	ja	.LBB7_14
# BB#3:                                 # %gs_cspace_alloc.exit
	jmpq	*.LJTI7_0(,%r12,8)
.LBB7_8:                                # %sw.bb.7
	movq	56(%r14), %rax
	testq	%rax, %rax
	jne	.LBB7_11
# BB#9:                                 # %if.end.12
	movq	%r14, %rdi
	callq	gsicc_initialize_iccsmask
	testl	%eax, %eax
	je	.LBB7_10
.LBB7_12:                               # %if.else.17
	movq	16(%r14), %rax
	jmp	.LBB7_18
.LBB7_14:                               # %do.body
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB7_21
# BB#15:                                # %do.end
	xorl	%eax, %eax
	decq	8(%r15)
	jne	.LBB7_21
# BB#16:                                # %do.end.40
	movq	16(%r15), %rdi
	movl	$.L.str.2, %edx
	movq	%r15, %rsi
	callq	*24(%r15)
	xorl	%eax, %eax
	jmp	.LBB7_21
.LBB7_4:                                # %sw.bb
	movq	56(%r14), %rax
	testq	%rax, %rax
	jne	.LBB7_7
# BB#5:                                 # %if.end
	movq	%r14, %rdi
	callq	gsicc_initialize_iccsmask
	testl	%eax, %eax
	je	.LBB7_6
.LBB7_17:                               # %if.else
	movq	8(%r14), %rax
	jmp	.LBB7_18
.LBB7_13:                               # %sw.bb.26
	movq	24(%r14), %rax
	jmp	.LBB7_18
.LBB7_10:                               # %if.end.12.if.then.14_crit_edge
	movq	56(%r14), %rax
.LBB7_11:                               # %if.then.14
	movq	8(%rax), %rax
	jmp	.LBB7_18
.LBB7_6:                                # %if.end.if.then.3_crit_edge
	movq	56(%r14), %rax
.LBB7_7:                                # %if.then.3
	movq	(%rax), %rax
.LBB7_18:                               # %do.body.53
	movq	%rax, 64(%r15)
	testq	%rax, %rax
	je	.LBB7_20
# BB#19:                                # %do.body.57
	incq	288(%rax)
.LBB7_20:                               # %cleanup
	movq	%r15, %rax
.LBB7_21:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	gs_cspace_new_ICC, .Lfunc_end7-gs_cspace_new_ICC
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_8
	.quad	.LBB7_14
	.quad	.LBB7_4
	.quad	.LBB7_14
	.quad	.LBB7_17
	.quad	.LBB7_14
	.quad	.LBB7_12
	.quad	.LBB7_13

	.text
	.globl	gs_color_space_get_index
	.align	16, 0x90
	.type	gs_color_space_get_index,@function
gs_color_space_get_index:               # @gs_color_space_get_index
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	(%rax), %eax
	retq
.Lfunc_end8:
	.size	gs_color_space_get_index, .Lfunc_end8-gs_color_space_get_index
	.cfi_endproc

	.globl	gs_color_space_is_CIE
	.align	16, 0x90
	.type	gs_color_space_is_CIE,@function
gs_color_space_is_CIE:                  # @gs_color_space_is_CIE
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	(%rax), %eax
	addl	$-5, %eax
	cmpl	$7, %eax
	ja	.LBB9_2
# BB#1:                                 # %switch.lookup
	cltq
	movl	.Lswitch.table(,%rax,4), %eax
	retq
.LBB9_2:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	gs_color_space_is_CIE, .Lfunc_end9-gs_color_space_is_CIE
	.cfi_endproc

	.globl	gs_color_space_is_PSCIE
	.align	16, 0x90
	.type	gs_color_space_is_PSCIE,@function
gs_color_space_is_PSCIE:                # @gs_color_space_is_PSCIE
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movl	(%rax), %eax
	addl	$-5, %eax
	cmpl	$4, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	retq
.Lfunc_end10:
	.size	gs_color_space_is_PSCIE, .Lfunc_end10-gs_color_space_is_PSCIE
	.cfi_endproc

	.globl	gs_color_space_is_ICC
	.align	16, 0x90
	.type	gs_color_space_is_ICC,@function
gs_color_space_is_ICC:                  # @gs_color_space_is_ICC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	cmpl	$12, (%rax)
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end11:
	.size	gs_color_space_is_ICC, .Lfunc_end11-gs_color_space_is_ICC
	.cfi_endproc

	.globl	gs_color_space_num_components
	.align	16, 0x90
	.type	gs_color_space_num_components,@function
gs_color_space_num_components:          # @gs_color_space_num_components
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	jmpq	*24(%rax)               # TAILCALL
.Lfunc_end12:
	.size	gs_color_space_num_components, .Lfunc_end12-gs_color_space_num_components
	.cfi_endproc

	.globl	gs_color_space_restrict_color
	.align	16, 0x90
	.type	gs_color_space_restrict_color,@function
gs_color_space_restrict_color:          # @gs_color_space_restrict_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	40(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end13:
	.size	gs_color_space_restrict_color, .Lfunc_end13-gs_color_space_restrict_color
	.cfi_endproc

	.globl	gx_num_components_1
	.align	16, 0x90
	.type	gx_num_components_1,@function
gx_num_components_1:                    # @gx_num_components_1
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end14:
	.size	gx_num_components_1, .Lfunc_end14-gx_num_components_1
	.cfi_endproc

	.globl	gx_num_components_3
	.align	16, 0x90
	.type	gx_num_components_3,@function
gx_num_components_3:                    # @gx_num_components_3
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$3, %eax
	retq
.Lfunc_end15:
	.size	gx_num_components_3, .Lfunc_end15-gx_num_components_3
	.cfi_endproc

	.globl	gx_num_components_4
	.align	16, 0x90
	.type	gx_num_components_4,@function
gx_num_components_4:                    # @gx_num_components_4
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$4, %eax
	retq
.Lfunc_end16:
	.size	gx_num_components_4, .Lfunc_end16-gx_num_components_4
	.cfi_endproc

	.globl	gx_polarity_subtractive
	.align	16, 0x90
	.type	gx_polarity_subtractive,@function
gx_polarity_subtractive:                # @gx_polarity_subtractive
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	gx_polarity_subtractive, .Lfunc_end17-gx_polarity_subtractive
	.cfi_endproc

	.globl	gx_polarity_additive
	.align	16, 0x90
	.type	gx_polarity_additive,@function
gx_polarity_additive:                   # @gx_polarity_additive
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end18:
	.size	gx_polarity_additive, .Lfunc_end18-gx_polarity_additive
	.cfi_endproc

	.globl	gx_polarity_unknown
	.align	16, 0x90
	.type	gx_polarity_unknown,@function
gx_polarity_unknown:                    # @gx_polarity_unknown
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end19:
	.size	gx_polarity_unknown, .Lfunc_end19-gx_polarity_unknown
	.cfi_endproc

	.globl	gs_cspace_base_space
	.align	16, 0x90
	.type	gs_cspace_base_space,@function
gs_cspace_base_space:                   # @gs_cspace_base_space
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rax
	retq
.Lfunc_end20:
	.size	gs_cspace_base_space, .Lfunc_end20-gs_cspace_base_space
	.cfi_endproc

	.globl	rc_increment_cs
	.align	16, 0x90
	.type	rc_increment_cs,@function
rc_increment_cs:                        # @rc_increment_cs
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB21_2
# BB#1:                                 # %do.body.1
	incq	8(%rdi)
.LBB21_2:                               # %do.end.4
	retq
.Lfunc_end21:
	.size	rc_increment_cs, .Lfunc_end21-rc_increment_cs
	.cfi_endproc

	.globl	rc_decrement_cs
	.align	16, 0x90
	.type	rc_decrement_cs,@function
rc_decrement_cs:                        # @rc_decrement_cs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	testq	%rcx, %rcx
	je	.LBB22_2
# BB#1:                                 # %do.end
	decq	8(%rcx)
	je	.LBB22_3
.LBB22_2:                               # %if.end.20
	retq
.LBB22_3:                               # %do.end.12
	movq	16(%rcx), %rdi
	movq	24(%rcx), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmpq	*%r8                    # TAILCALL
.Lfunc_end22:
	.size	rc_decrement_cs, .Lfunc_end22-rc_decrement_cs
	.cfi_endproc

	.globl	rc_decrement_only_cs
	.align	16, 0x90
	.type	rc_decrement_only_cs,@function
rc_decrement_only_cs:                   # @rc_decrement_only_cs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	testq	%rcx, %rcx
	je	.LBB23_2
# BB#1:                                 # %do.end
	decq	8(%rcx)
	je	.LBB23_3
.LBB23_2:                               # %if.end.22
	retq
.LBB23_3:                               # %do.end.12
	movq	16(%rcx), %rdi
	movq	24(%rcx), %r8
	movq	%rcx, %rsi
	movq	%rax, %rdx
	jmpq	*%r8                    # TAILCALL
.Lfunc_end23:
	.size	rc_decrement_only_cs, .Lfunc_end23-rc_decrement_only_cs
	.cfi_endproc

	.globl	cs_adjust_counts_icc
	.align	16, 0x90
	.type	cs_adjust_counts_icc,@function
cs_adjust_counts_icc:                   # @cs_adjust_counts_icc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 32
.Ltmp33:
	.cfi_offset %rbx, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	1744(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB24_3
# BB#1:                                 # %if.then
	movq	(%rsi), %rax
	movq	1752(%rbx), %rdi
	movl	%ebp, %edx
	callq	*104(%rax)
	movq	1744(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB24_3
# BB#2:                                 # %do.end
	movslq	%ebp, %rax
	addq	8(%rsi), %rax
	movq	%rax, 8(%rsi)
	je	.LBB24_4
.LBB24_3:                               # %if.end.54
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB24_4:                               # %do.end.31
	movq	16(%rsi), %rdi
	movq	24(%rsi), %rax
	movl	$.L.str.3, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end24:
	.size	cs_adjust_counts_icc, .Lfunc_end24-cs_adjust_counts_icc
	.cfi_endproc

	.globl	gx_no_install_cspace
	.align	16, 0x90
	.type	gx_no_install_cspace,@function
gx_no_install_cspace:                   # @gx_no_install_cspace
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end25:
	.size	gx_no_install_cspace, .Lfunc_end25-gx_no_install_cspace
	.cfi_endproc

	.globl	gx_spot_colors_set_overprint
	.align	16, 0x90
	.type	gx_spot_colors_set_overprint,@function
gx_spot_colors_set_overprint:           # @gx_spot_colors_set_overprint
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 48
	movl	272(%rsi), %eax
	movl	%eax, 8(%rsp)
	testl	%eax, %eax
	je	.LBB26_2
# BB#1:                                 # %if.then
	movl	$1, 12(%rsp)
.LBB26_2:                               # %if.end
	movl	$0, 280(%rsi)
	movw	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	leaq	8(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gs_state_update_overprint
	addq	$40, %rsp
	retq
.Lfunc_end26:
	.size	gx_spot_colors_set_overprint, .Lfunc_end26-gx_spot_colors_set_overprint
	.cfi_endproc

	.globl	gx_simulated_set_overprint
	.align	16, 0x90
	.type	gx_simulated_set_overprint,@function
gx_simulated_set_overprint:             # @gx_simulated_set_overprint
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 48
	movl	272(%rsi), %eax
	movl	%eax, 8(%rsp)
	testl	%eax, %eax
	je	.LBB27_2
# BB#1:                                 # %if.then
	movl	$1, 12(%rsp)
.LBB27_2:                               # %if.end
	movl	$0, 280(%rsi)
	movw	$0, 32(%rsp)
	movl	$1, 36(%rsp)
	leaq	8(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gs_state_update_overprint
	addq	$40, %rsp
	retq
.Lfunc_end27:
	.size	gx_simulated_set_overprint, .Lfunc_end27-gx_simulated_set_overprint
	.cfi_endproc

	.globl	check_cmyk_color_model_comps
	.align	16, 0x90
	.type	check_cmyk_color_model_comps,@function
check_cmyk_color_model_comps:           # @check_cmyk_color_model_comps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 208
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	100(%rbx), %r13
	xorl	%r14d, %r14d
	cmpq	$4, %r13
	jl	.LBB28_32
# BB#1:                                 # %lor.lhs.false
	xorl	%r14d, %r14d
	movl	$.L.str.4, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1544(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB28_32
# BB#2:                                 # %lor.lhs.false
	cmpl	$64, %ebp
	je	.LBB28_32
# BB#3:                                 # %lor.lhs.false.4
	xorl	%r14d, %r14d
	movl	$.L.str.5, %esi
	movl	$7, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1544(%rbx)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB28_32
# BB#4:                                 # %lor.lhs.false.4
	cmpl	$64, %r15d
	je	.LBB28_32
# BB#5:                                 # %lor.lhs.false.11
	xorl	%r14d, %r14d
	movl	$.L.str.6, %esi
	movl	$6, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1544(%rbx)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB28_32
# BB#6:                                 # %lor.lhs.false.11
	cmpl	$64, %r12d
	je	.LBB28_32
# BB#7:                                 # %lor.lhs.false.18
	xorl	%r14d, %r14d
	movl	$.L.str.7, %esi
	movl	$5, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1544(%rbx)
	movl	%eax, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	js	.LBB28_32
# BB#8:                                 # %lor.lhs.false.18
	cmpl	$64, %eax
	je	.LBB28_32
# BB#9:                                 # %if.end
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB28_32
# BB#10:                                # %lor.lhs.false.28
	movq	16(%rax), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB28_32
# BB#11:                                # %for.body.lr.ph.i
	xorl	%r14d, %r14d
	leaq	16(%rsp), %r9
	movl	$8190, %esi             # imm = 0x1FFE
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	*(%rsp)                 # 8-byte Folded Reload
	movl	%ebp, %eax
	xorl	%ecx, %ecx
.LBB28_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %eax
	movzwl	16(%rsp,%rcx,2), %edx
	jne	.LBB28_13
# BB#14:                                # %land.lhs.true.6.i
                                        #   in Loop: Header=BB28_12 Depth=1
	movzwl	%dx, %edx
	cmpl	$8190, %edx             # imm = 0x1FFE
	je	.LBB28_15
	jmp	.LBB28_32
.LBB28_13:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB28_12 Depth=1
	testw	%dx, %dx
	jne	.LBB28_32
.LBB28_15:                              # %for.inc.i
                                        #   in Loop: Header=BB28_12 Depth=1
	incq	%rcx
	cmpq	%r13, %rcx
	jl	.LBB28_12
# BB#16:                                # %for.body.lr.ph.i.71
	xorl	%r14d, %r14d
	leaq	16(%rsp), %r9
	xorl	%esi, %esi
	movl	$8190, %edx             # imm = 0x1FFE
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	*(%rsp)                 # 8-byte Folded Reload
	movl	%r15d, %eax
	xorl	%ecx, %ecx
.LBB28_17:                              # %for.body.i.75
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %eax
	movzwl	16(%rsp,%rcx,2), %edx
	jne	.LBB28_18
# BB#19:                                # %land.lhs.true.6.i.79
                                        #   in Loop: Header=BB28_17 Depth=1
	movzwl	%dx, %edx
	cmpl	$8190, %edx             # imm = 0x1FFE
	je	.LBB28_20
	jmp	.LBB28_32
.LBB28_18:                              # %land.lhs.true.i.77
                                        #   in Loop: Header=BB28_17 Depth=1
	testw	%dx, %dx
	jne	.LBB28_32
.LBB28_20:                              # %for.inc.i.82
                                        #   in Loop: Header=BB28_17 Depth=1
	incq	%rcx
	cmpq	%r13, %rcx
	jl	.LBB28_17
# BB#21:                                # %for.body.lr.ph.i.86
	xorl	%r14d, %r14d
	leaq	16(%rsp), %r9
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$8190, %ecx             # imm = 0x1FFE
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	*(%rsp)                 # 8-byte Folded Reload
	movl	%r12d, %eax
	xorl	%ecx, %ecx
.LBB28_22:                              # %for.body.i.90
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %eax
	movzwl	16(%rsp,%rcx,2), %edx
	jne	.LBB28_23
# BB#24:                                # %land.lhs.true.6.i.94
                                        #   in Loop: Header=BB28_22 Depth=1
	movzwl	%dx, %edx
	cmpl	$8190, %edx             # imm = 0x1FFE
	je	.LBB28_25
	jmp	.LBB28_32
.LBB28_23:                              # %land.lhs.true.i.92
                                        #   in Loop: Header=BB28_22 Depth=1
	testw	%dx, %dx
	jne	.LBB28_32
.LBB28_25:                              # %for.inc.i.97
                                        #   in Loop: Header=BB28_22 Depth=1
	incq	%rcx
	cmpq	%r13, %rcx
	jl	.LBB28_22
# BB#26:                                # %for.body.lr.ph.i.56
	xorl	%r14d, %r14d
	leaq	16(%rsp), %r9
	movl	$0, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$8190, %r8d             # imm = 0x1FFE
	movq	%rbx, %rdi
	callq	*(%rsp)                 # 8-byte Folded Reload
	xorl	%eax, %eax
.LBB28_27:                              # %for.body.i.60
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
	cmpl	%eax, %ecx
	movzwl	16(%rsp,%rax,2), %ecx
	jne	.LBB28_28
# BB#29:                                # %land.lhs.true.6.i.64
                                        #   in Loop: Header=BB28_27 Depth=1
	movzwl	%cx, %ecx
	cmpl	$8190, %ecx             # imm = 0x1FFE
	je	.LBB28_30
	jmp	.LBB28_32
.LBB28_28:                              # %land.lhs.true.i.62
                                        #   in Loop: Header=BB28_27 Depth=1
	testw	%cx, %cx
	jne	.LBB28_32
.LBB28_30:                              # %for.inc.i.67
                                        #   in Loop: Header=BB28_27 Depth=1
	incq	%rax
	cmpq	%r13, %rax
	jl	.LBB28_27
# BB#31:                                # %if.end.54
	movl	$1, %r14d
	movl	$1, %eax
	movb	%bpl, %cl
	shlq	%cl, %rax
	movl	$1, %edx
	movb	%r15b, %cl
	shlq	%cl, %rdx
	orq	%rax, %rdx
	movl	$1, %eax
	movb	%r12b, %cl
	shlq	%cl, %rax
	orq	%rdx, %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	shlq	%cl, %r14
	orq	%rax, %r14
	movl	$1, 792(%rbx)
	movq	%r14, 800(%rbx)
	movl	%ecx, 808(%rbx)
.LBB28_32:                              # %cleanup
	movq	%r14, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	check_cmyk_color_model_comps, .Lfunc_end28-check_cmyk_color_model_comps
	.cfi_endproc

	.globl	check_rgb_color_model_comps
	.align	16, 0x90
	.type	check_rgb_color_model_comps,@function
check_rgb_color_model_comps:            # @check_rgb_color_model_comps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 208
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	100(%rbx), %rbp
	xorl	%r14d, %r14d
	cmpq	$3, %rbp
	jl	.LBB29_25
# BB#1:                                 # %lor.lhs.false
	xorl	%r14d, %r14d
	movl	$.L.str.8, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1544(%rbx)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB29_25
# BB#2:                                 # %lor.lhs.false
	cmpl	$64, %r13d
	je	.LBB29_25
# BB#3:                                 # %lor.lhs.false.4
	xorl	%r14d, %r14d
	movl	$.L.str.9, %esi
	movl	$5, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1544(%rbx)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB29_25
# BB#4:                                 # %lor.lhs.false.4
	cmpl	$64, %r15d
	je	.LBB29_25
# BB#5:                                 # %lor.lhs.false.11
	xorl	%r14d, %r14d
	movl	$.L.str.10, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1544(%rbx)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB29_25
# BB#6:                                 # %lor.lhs.false.11
	cmpl	$64, %r12d
	je	.LBB29_25
# BB#7:                                 # %if.end
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB29_25
# BB#8:                                 # %lor.lhs.false.21
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB29_25
# BB#9:                                 # %for.body.lr.ph.i
	xorl	%r14d, %r14d
	leaq	16(%rsp), %r9
	movl	$0, %esi
	movl	$8190, %edx             # imm = 0x1FFE
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	*8(%rsp)                # 8-byte Folded Reload
	movl	%r13d, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB29_10:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %eax
	movzwl	16(%rsp,%rcx,2), %edx
	jne	.LBB29_11
# BB#12:                                # %land.lhs.true.6.i
                                        #   in Loop: Header=BB29_10 Depth=1
	movzwl	%dx, %edx
	cmpl	$8190, %edx             # imm = 0x1FFE
	je	.LBB29_13
	jmp	.LBB29_25
.LBB29_11:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB29_10 Depth=1
	testw	%dx, %dx
	jne	.LBB29_25
.LBB29_13:                              # %for.inc.i
                                        #   in Loop: Header=BB29_10 Depth=1
	incq	%rcx
	cmpq	%rbp, %rcx
	jl	.LBB29_10
# BB#14:                                # %for.body.lr.ph.i.58
	xorl	%r14d, %r14d
	leaq	16(%rsp), %r9
	movl	$0, %esi
	xorl	%edx, %edx
	movl	$8190, %ecx             # imm = 0x1FFE
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	*8(%rsp)                # 8-byte Folded Reload
	movl	%r15d, %eax
	xorl	%ecx, %ecx
.LBB29_15:                              # %for.body.i.62
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %eax
	movzwl	16(%rsp,%rcx,2), %edx
	jne	.LBB29_16
# BB#17:                                # %land.lhs.true.6.i.66
                                        #   in Loop: Header=BB29_15 Depth=1
	movzwl	%dx, %edx
	cmpl	$8190, %edx             # imm = 0x1FFE
	je	.LBB29_18
	jmp	.LBB29_25
.LBB29_16:                              # %land.lhs.true.i.64
                                        #   in Loop: Header=BB29_15 Depth=1
	testw	%dx, %dx
	jne	.LBB29_25
.LBB29_18:                              # %for.inc.i.69
                                        #   in Loop: Header=BB29_15 Depth=1
	incq	%rcx
	cmpq	%rbp, %rcx
	jl	.LBB29_15
# BB#19:                                # %for.body.lr.ph.i.43
	xorl	%r14d, %r14d
	leaq	16(%rsp), %r9
	movl	$0, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$8190, %r8d             # imm = 0x1FFE
	movq	%rbx, %rdi
	callq	*8(%rsp)                # 8-byte Folded Reload
	movl	%r12d, %eax
	xorl	%ecx, %ecx
.LBB29_20:                              # %for.body.i.47
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %eax
	movzwl	16(%rsp,%rcx,2), %edx
	jne	.LBB29_21
# BB#22:                                # %land.lhs.true.6.i.51
                                        #   in Loop: Header=BB29_20 Depth=1
	movzwl	%dx, %edx
	cmpl	$8190, %edx             # imm = 0x1FFE
	je	.LBB29_23
	jmp	.LBB29_25
.LBB29_21:                              # %land.lhs.true.i.49
                                        #   in Loop: Header=BB29_20 Depth=1
	testw	%dx, %dx
	jne	.LBB29_25
.LBB29_23:                              # %for.inc.i.54
                                        #   in Loop: Header=BB29_20 Depth=1
	incq	%rcx
	cmpq	%rbp, %rcx
	jl	.LBB29_20
# BB#24:                                # %if.end.41
	movl	$1, %r14d
	movl	$1, %eax
	movb	%r13b, %cl
	shlq	%cl, %rax
	movl	$1, %edx
	movb	%r15b, %cl
	shlq	%cl, %rdx
	orq	%rax, %rdx
	movb	%r12b, %cl
	shlq	%cl, %r14
	orq	%rdx, %r14
	movl	$3, 792(%rbx)
	movq	%r14, 800(%rbx)
.LBB29_25:                              # %cleanup
	movq	%r14, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	check_rgb_color_model_comps, .Lfunc_end29-check_rgb_color_model_comps
	.cfi_endproc

	.globl	gx_set_overprint_cmyk
	.align	16, 0x90
	.type	gx_set_overprint_cmyk,@function
gx_set_overprint_cmyk:                  # @gx_set_overprint_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 176
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	1872(%r15), %rbx
	leaq	96(%rbx), %rbp
	testq	%rbx, %rbx
	cmoveq	%rbx, %rbp
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movl	1112(%rbx), %edi
	movq	48(%rsp), %rsi
	leaq	40(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	gsicc_extract_profile
	cmpl	$-1, 696(%rbp)
	je	.LBB30_1
# BB#2:                                 # %if.else
	movq	704(%rbp), %r14
	jmp	.LBB30_3
.LBB30_1:                               # %if.then
	movq	%rbx, %rdi
	callq	check_cmyk_color_model_comps
	movq	%rax, %r14
.LBB30_3:                               # %if.end
	testq	%r14, %r14
	je	.LBB30_4
# BB#7:                                 # %if.end.6
	movq	64(%r12), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB30_10
# BB#8:                                 # %if.end.6
	movq	40(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB30_10
# BB#9:                                 # %if.then.9
	movq	144(%rdx), %rax
	cmpq	144(%rcx), %rax
	sete	%al
.LBB30_10:                              # %if.end.15
	movl	$1, 280(%r15)
	testb	%al, %al
	je	.LBB30_22
# BB#11:                                # %if.end.15
	movq	1760(%r15), %r12
	movq	(%r12), %rax
	movl	$gx_dc_type_data_none, %ecx
	cmpq	%rcx, %rax
	je	.LBB30_22
# BB#12:                                # %if.then.18
	movq	80(%rax), %rax
	cmpl	$0, 360(%r12)
	je	.LBB30_19
# BB#13:                                # %if.then.22
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	1544(%rbx), %rbp
	movl	$.L.str.4, %edi
	callq	strlen
	movl	$.L.str.4, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*%rbp
	movl	%eax, %r13d
	movq	1544(%rbx), %rbp
	movl	$.L.str.5, %edi
	callq	strlen
	movl	$.L.str.5, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*%rbp
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	1544(%rbx), %rbp
	movl	$.L.str.6, %edi
	callq	strlen
	movl	$.L.str.6, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*%rbp
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	1544(%rbx), %rbp
	movl	$.L.str.7, %edi
	callq	strlen
	movl	$.L.str.7, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*%rbp
	movq	$0, 88(%rsp)
	movss	376(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB30_15
	jp	.LBB30_15
	jmp	.LBB30_14
.LBB30_15:                              # %if.then.50
	cmpl	$-1, %r13d
	movl	$0, %edx
	movl	$0, %edi
	je	.LBB30_18
# BB#16:                                # %if.else.56
	movl	$1, %edx
	movb	%r13b, %cl
	shlq	%cl, %rdx
	movq	%rdx, 88(%rsp)
	jmp	.LBB30_17
.LBB30_4:                               # %if.then.4
	movl	272(%r15), %eax
	movl	%eax, 88(%rsp)
	testl	%eax, %eax
	je	.LBB30_6
# BB#5:                                 # %if.then.i
	movl	$1, 92(%rsp)
.LBB30_6:                               # %gx_spot_colors_set_overprint.exit
	movl	$0, 280(%r15)
	movw	$0, 112(%rsp)
	movl	$0, 116(%rsp)
	leaq	88(%rsp), %rsi
	jmp	.LBB30_23
.LBB30_19:                              # %if.else.69
	leaq	88(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*%rax
	jmp	.LBB30_20
.LBB30_14:
	xorl	%edx, %edx
.LBB30_17:                              # %for.inc
	movl	$1, %edi
.LBB30_18:                              # %for.inc
	movss	380(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB30_25
	jnp	.LBB30_28
	jmp	.LBB30_25
.LBB30_25:                              # %if.then.50.1
	movl	8(%rsp), %ecx           # 4-byte Reload
	cmpl	$-1, %ecx
	je	.LBB30_26
# BB#27:                                # %if.else.56.1
	movl	$1, %esi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 88(%rsp)
	jmp	.LBB30_28
.LBB30_26:
	xorl	%edi, %edi
.LBB30_28:                              # %for.inc.1
	movss	384(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB30_29
	jnp	.LBB30_32
.LBB30_29:                              # %if.then.50.2
	movl	12(%rsp), %ecx          # 4-byte Reload
	cmpl	$-1, %ecx
	je	.LBB30_30
# BB#31:                                # %if.else.56.2
	movl	$1, %esi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 88(%rsp)
	jmp	.LBB30_32
.LBB30_30:
	xorl	%edi, %edi
.LBB30_32:                              # %for.inc.2
	movss	388(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB30_33
	jnp	.LBB30_35
.LBB30_33:                              # %if.then.50.3
	cmpl	$-1, %eax
	je	.LBB30_36
# BB#34:                                # %if.else.56.3
	movl	$1, %esi
	movb	%al, %cl
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 88(%rsp)
.LBB30_35:                              # %for.inc.3
	testl	%edi, %edi
	jne	.LBB30_21
.LBB30_36:                              # %if.then.62
	leaq	88(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*(%rsp)                 # 8-byte Folded Reload
.LBB30_20:                              # %if.else.69
	testl	%eax, %eax
	js	.LBB30_24
.LBB30_21:                              # %cleanup
	andq	88(%rsp), %r14
.LBB30_22:                              # %if.end.83
	movl	$1, 56(%rsp)
	movl	$0, 60(%rsp)
	movq	%r14, 72(%rsp)
	movw	$0, 80(%rsp)
	movl	$0, 84(%rsp)
	leaq	56(%rsp), %rsi
.LBB30_23:                              # %cleanup.86
	movq	%r15, %rdi
	callq	gs_state_update_overprint
.LBB30_24:                              # %cleanup.86
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gx_set_overprint_cmyk, .Lfunc_end30-gx_set_overprint_cmyk
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI31_0:
	.long	1132462080              # float 256
	.text
	.globl	gx_set_overprint_rgb
	.align	16, 0x90
	.type	gx_set_overprint_rgb,@function
gx_set_overprint_rgb:                   # @gx_set_overprint_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp80:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp82:
	.cfi_def_cfa_offset 144
.Ltmp83:
	.cfi_offset %rbx, -56
.Ltmp84:
	.cfi_offset %r12, -48
.Ltmp85:
	.cfi_offset %r13, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	1872(%r15), %rbx
	leaq	96(%rbx), %rax
	testq	%rbx, %rbx
	cmoveq	%rbx, %rax
	cmpl	$2, 696(%rax)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	check_rgb_color_model_comps
	movq	%rax, %r14
	jmp	.LBB31_3
.LBB31_2:                               # %if.else
	movq	704(%rax), %r14
.LBB31_3:                               # %if.end
	testq	%r14, %r14
	je	.LBB31_4
# BB#7:                                 # %if.end.5
	movl	$1, 280(%r15)
	movq	1760(%r15), %r12
	movw	$0, 48(%rsp)
	movl	$0, 52(%rsp)
	movq	(%r12), %rax
	movl	$gx_dc_type_data_none, %ecx
	cmpq	%rcx, %rax
	je	.LBB31_18
# BB#8:                                 # %if.then.7
	movq	80(%rax), %rax
	cmpl	$0, 360(%r12)
	je	.LBB31_15
# BB#9:                                 # %if.then.9
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	1544(%rbx), %rbp
	movl	$.L.str.8, %edi
	callq	strlen
	movl	$.L.str.8, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*%rbp
	movl	%eax, %r13d
	movq	1544(%rbx), %rbp
	movl	$.L.str.9, %edi
	callq	strlen
	movl	$.L.str.9, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*%rbp
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	1544(%rbx), %rbp
	movl	$.L.str.10, %edi
	callq	strlen
	movl	$.L.str.10, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	*%rbp
	movq	$0, 56(%rsp)
	movss	376(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB31_11
	jp	.LBB31_11
	jmp	.LBB31_10
.LBB31_11:                              # %if.then.30
	cmpl	$-1, %r13d
	movl	$0, %edx
	movl	$0, %edi
	je	.LBB31_14
# BB#12:                                # %if.else.36
	movl	$1, %edx
	movb	%r13b, %cl
	shlq	%cl, %rdx
	movq	%rdx, 56(%rsp)
	jmp	.LBB31_13
.LBB31_4:                               # %if.then.3
	movl	272(%r15), %eax
	movl	%eax, 56(%rsp)
	testl	%eax, %eax
	je	.LBB31_6
# BB#5:                                 # %if.then.i
	movl	$1, 60(%rsp)
.LBB31_6:                               # %gx_spot_colors_set_overprint.exit
	movl	$0, 280(%r15)
	movw	$0, 80(%rsp)
	movl	$0, 84(%rsp)
	leaq	56(%rsp), %rsi
	jmp	.LBB31_19
.LBB31_15:                              # %if.else.55
	leaq	56(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*%rax
	jmp	.LBB31_16
.LBB31_10:
	xorl	%edx, %edx
.LBB31_13:                              # %for.inc
	movl	$1, %edi
.LBB31_14:                              # %for.inc
	movss	380(%r12), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB31_21
	jnp	.LBB31_24
	jmp	.LBB31_21
.LBB31_21:                              # %if.then.30.1
	movl	20(%rsp), %ecx          # 4-byte Reload
	cmpl	$-1, %ecx
	je	.LBB31_22
# BB#23:                                # %if.else.36.1
	movl	$1, %esi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 56(%rsp)
	jmp	.LBB31_24
.LBB31_22:
	xorl	%edi, %edi
.LBB31_24:                              # %for.inc.1
	movss	384(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB31_25
	jnp	.LBB31_28
.LBB31_25:                              # %if.then.30.2
	cmpl	$-1, %eax
	je	.LBB31_26
# BB#27:                                # %if.else.36.2
	movl	$1, %esi
	movb	%al, %cl
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 56(%rsp)
.LBB31_28:                              # %for.inc.2
	movss	388(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI31_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movw	%ax, 48(%rsp)
	testl	%edi, %edi
	jne	.LBB31_17
	jmp	.LBB31_29
.LBB31_26:                              # %for.inc.2.thread
	movss	388(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI31_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movw	%ax, 48(%rsp)
.LBB31_29:                              # %if.then.48
	leaq	56(%rsp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*8(%rsp)                # 8-byte Folded Reload
.LBB31_16:                              # %if.else.55
	testl	%eax, %eax
	js	.LBB31_20
.LBB31_17:                              # %cleanup
	andq	56(%rsp), %r14
.LBB31_18:                              # %if.end.69
	movl	$1, 24(%rsp)
	movl	$0, 28(%rsp)
	movq	%r14, 40(%rsp)
	leaq	24(%rsp), %rsi
.LBB31_19:                              # %cleanup.72
	movq	%r15, %rdi
	callq	gs_state_update_overprint
.LBB31_20:                              # %cleanup.72
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gx_set_overprint_rgb, .Lfunc_end31-gx_set_overprint_rgb
	.cfi_endproc

	.globl	gx_cspace_no_linear
	.align	16, 0x90
	.type	gx_cspace_no_linear,@function
gx_cspace_no_linear:                    # @gx_cspace_no_linear
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	retq
.Lfunc_end32:
	.size	gx_cspace_no_linear, .Lfunc_end32-gx_cspace_no_linear
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI33_0:
	.quad	4599075939470750515     # double 3.000000e-01
	.quad	4599075939470750515     # double 3.000000e-01
.LCPI33_1:
	.quad	4604480259023595110     # double 7.000000e-01
	.quad	4604480259023595110     # double 7.000000e-01
.LCPI33_5:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI33_6:
	.quad	4599075939470750516     # double 3.000000e-01
	.quad	4599075939470750516     # double 3.000000e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_2:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI33_3:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI33_7:
	.quad	4599075939470750516     # double 0.30000000000000004
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI33_4:
	.long	1065353216              # float 1
	.text
	.globl	gx_cspace_is_linear_default
	.align	16, 0x90
	.type	gx_cspace_is_linear_default,@function
gx_cspace_is_linear_default:            # @gx_cspace_is_linear_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp90:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp92:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp93:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 56
	subq	$3224, %rsp             # imm = 0xC98
.Ltmp95:
	.cfi_def_cfa_offset 3280
.Ltmp96:
	.cfi_offset %rbx, -56
.Ltmp97:
	.cfi_offset %r12, -48
.Ltmp98:
	.cfi_offset %r13, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$-15, %eax
	cmpl	$1, 136(%r13)
	jne	.LBB33_35
# BB#1:                                 # %if.end
	testq	%rbp, %rbp
	je	.LBB33_2
# BB#33:                                # %if.end.3
	movq	3280(%rsp), %r12
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	%r8, %rbx
	movq	%rbp, %r9
	movss	%xmm0, 60(%rsp)         # 4-byte Spill
	callq	gx_cspace_is_linear_in_triangle
	movq	%rbx, %rcx
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	testl	%eax, %eax
	jle	.LBB33_35
# BB#34:                                # %if.end.7
	movl	$1, %eax
	testq	%r12, %r12
	je	.LBB33_35
# BB#36:                                # %if.end.10
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%rbp, %r8
	movq	%r12, %r9
	addq	$3224, %rsp             # imm = 0xC98
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_cspace_is_linear_in_triangle # TAILCALL
.LBB33_2:                               # %if.then.2
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movss	%xmm0, 60(%rsp)         # 4-byte Spill
	movq	(%r15), %rax
	movq	%r15, %rdi
	callq	*24(%rax)
	movl	%eax, %ebp
	movslq	100(%r13), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	(%r15), %rax
	leaq	1376(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB33_35
# BB#3:                                 # %if.end.i
	leaq	2032(%rsp), %rdx
	movq	(%r15), %rax
	xorl	%r9d, %r9d
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB33_35
# BB#4:                                 # %if.end.7.i
	movabsq	$8589934588, %r9        # imm = 0x1FFFFFFFC
	testl	%ebp, %ebp
	jle	.LBB33_12
# BB#5:                                 # %for.body.i.i.preheader
	leal	-1(%rbp), %ecx
	leaq	1(%rcx), %r8
	xorl	%esi, %esi
	movq	%r8, %rdx
	andq	%r9, %rdx
	je	.LBB33_9
# BB#6:                                 # %vector.body.preheader
	leaq	16(%rbx), %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	16(%rax), %rdi
	leaq	2976(%rsp), %rax
	incq	%rcx
	andq	%r9, %rcx
	movapd	.LCPI33_0(%rip), %xmm0  # xmm0 = [3.000000e-01,3.000000e-01]
	movapd	.LCPI33_1(%rip), %xmm1  # xmm1 = [7.000000e-01,7.000000e-01]
	.align	16, 0x90
.LBB33_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rsi), %xmm2
	cvtps2pd	(%rsi), %xmm3
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	cvtps2pd	-8(%rdi), %xmm4
	cvtps2pd	(%rdi), %xmm5
	mulpd	%xmm1, %xmm4
	mulpd	%xmm1, %xmm5
	addpd	%xmm2, %xmm4
	addpd	%xmm3, %xmm5
	cvtpd2ps	%xmm4, %xmm2
	cvtpd2ps	%xmm5, %xmm3
	movlpd	%xmm2, -8(%rax)
	movlpd	%xmm3, (%rax)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rax
	addq	$-4, %rcx
	jne	.LBB33_7
# BB#8:
	movq	%rdx, %rsi
.LBB33_9:                               # %middle.block
	cmpq	%rsi, %r8
	je	.LBB33_12
# BB#10:                                # %for.body.i.i.preheader54
	movl	%ebp, %eax
	subl	%esi, %eax
	leaq	2968(%rsp,%rsi,4), %rcx
	movq	40(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rdx,%rsi,4), %rdx
	leaq	8(%rbx,%rsi,4), %rsi
	movsd	.LCPI33_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI33_3(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB33_11:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	movss	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm3, %xmm2
	movss	%xmm2, (%rcx)
	addq	$4, %rcx
	addq	$4, %rdx
	addq	$4, %rsi
	decl	%eax
	jne	.LBB33_11
.LBB33_12:                              # %interpolate_cc.exit.i
	movq	(%r15), %rax
	leaq	2960(%rsp), %rdi
	leaq	720(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB33_35
# BB#13:                                # %if.end.11.i
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, 1376(%rsp)
	movl	$0, %eax
	jne	.LBB33_35
# BB#14:                                # %if.then.i.58.i
	movq	48(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movss	60(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jle	.LBB33_18
# BB#15:                                # %for.body.lr.ph.i.63.i
	movq	1384(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	2040(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	728(%rsp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	112(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	116(%r13), %rdi
	movzbl	110(%r13), %esi
	xorl	%eax, %eax
	movss	.LCPI33_4(%rip), %xmm8  # xmm8 = mem[0],zero,zero,zero
	movsd	.LCPI33_2(%rip), %xmm9  # xmm9 = mem[0],zero
	movsd	.LCPI33_3(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	.LCPI33_5(%rip), %xmm3  # xmm3 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm4, %xmm4
	xorl	%r12d, %r12d
.LBB33_17:                              # %for.body.i.103.i
                                        # =>This Inner Loop Header: Depth=1
	movb	140(%r13,%r12), %dl
	movb	204(%r13,%r12), %cl
	movl	$1, %r8d
	shll	%cl, %r8d
	decl	%r8d
	cmpl	%r12d, %esi
	movq	%rdi, %rcx
	cmoveq	8(%rsp), %rcx           # 8-byte Folded Reload
	cvtsi2ssl	(%rcx), %xmm6
	mulss	%xmm1, %xmm6
	movaps	%xmm8, %xmm5
	maxss	%xmm6, %xmm5
	movq	32(%rsp), %r9           # 8-byte Reload
	movb	%dl, %cl
	shrq	%cl, %r9
	andl	%r8d, %r9d
	movq	24(%rsp), %r10          # 8-byte Reload
	movb	%dl, %cl
	shrq	%cl, %r10
	andl	%r8d, %r10d
	movq	16(%rsp), %r11          # 8-byte Reload
	movb	%dl, %cl
	shrq	%cl, %r11
	andl	%r8d, %r11d
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%r9d, %xmm6
	mulsd	%xmm9, %xmm6
	cvtsi2sdl	%r10d, %xmm7
	mulsd	%xmm2, %xmm7
	addsd	%xmm6, %xmm7
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%r11d, %xmm6
	subsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm7
	cmpltsd	%xmm4, %xmm7
	movapd	%xmm7, %xmm0
	andnpd	%xmm6, %xmm0
	xorpd	%xmm3, %xmm6
	andpd	%xmm6, %xmm7
	orpd	%xmm0, %xmm7
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	ucomisd	%xmm0, %xmm7
	ja	.LBB33_35
# BB#16:                                # %for.cond.i.65.i
                                        #   in Loop: Header=BB33_17 Depth=1
	incq	%r12
	cmpq	48(%rsp), %r12          # 8-byte Folded Reload
	jl	.LBB33_17
.LBB33_18:                              # %if.end.16.i
	testl	%ebp, %ebp
	movq	40(%rsp), %r9           # 8-byte Reload
	jle	.LBB33_26
# BB#19:                                # %for.body.i.121.i.preheader
	leal	-1(%rbp), %ecx
	leaq	1(%rcx), %r8
	xorl	%esi, %esi
	movq	%r8, %r10
	movabsq	$8589934588, %rdx       # imm = 0x1FFFFFFFC
	andq	%rdx, %r10
	je	.LBB33_23
# BB#20:                                # %vector.body25.preheader
	leaq	16(%rbx), %rsi
	leaq	16(%r9), %rdi
	leaq	2712(%rsp), %rax
	incq	%rcx
	andq	%rdx, %rcx
	movapd	.LCPI33_1(%rip), %xmm0  # xmm0 = [7.000000e-01,7.000000e-01]
	movapd	.LCPI33_6(%rip), %xmm1  # xmm1 = [3.000000e-01,3.000000e-01]
.LBB33_21:                              # %vector.body25
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rsi), %xmm2
	cvtps2pd	(%rsi), %xmm3
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	cvtps2pd	-8(%rdi), %xmm4
	cvtps2pd	(%rdi), %xmm5
	mulpd	%xmm1, %xmm4
	mulpd	%xmm1, %xmm5
	addpd	%xmm2, %xmm4
	addpd	%xmm3, %xmm5
	cvtpd2ps	%xmm4, %xmm2
	cvtpd2ps	%xmm5, %xmm3
	movlpd	%xmm2, -8(%rax)
	movlpd	%xmm3, (%rax)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rax
	addq	$-4, %rcx
	jne	.LBB33_21
# BB#22:
	movq	%r10, %rsi
.LBB33_23:                              # %middle.block26
	cmpq	%rsi, %r8
	je	.LBB33_26
# BB#24:                                # %for.body.i.121.i.preheader52
	subl	%esi, %ebp
	leaq	2704(%rsp,%rsi,4), %rax
	leaq	8(%r9,%rsi,4), %rcx
	leaq	8(%rbx,%rsi,4), %rdx
	movsd	.LCPI33_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI33_7(%rip), %xmm1  # xmm1 = mem[0],zero
.LBB33_25:                              # %for.body.i.121.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	movss	(%rcx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm3, %xmm2
	movss	%xmm2, (%rax)
	addq	$4, %rax
	addq	$4, %rcx
	addq	$4, %rdx
	decl	%ebp
	jne	.LBB33_25
.LBB33_26:                              # %interpolate_cc.exit122.i
	movq	(%r15), %rax
	leaq	2696(%rsp), %rdi
	leaq	64(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB33_35
# BB#27:                                # %if.end.20.i
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, 1376(%rsp)
	movl	$0, %eax
	jne	.LBB33_35
# BB#28:                                # %if.then.i.i
	movl	$1, %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB33_35
# BB#29:                                # %for.body.lr.ph.i.36.i
	movq	1384(%rsp), %r8
	movq	2040(%rsp), %r9
	movq	72(%rsp), %r11
	leaq	112(%r13), %r10
	leaq	116(%r13), %r15
	movzbl	110(%r13), %r14d
	xorl	%ebp, %ebp
	movss	.LCPI33_4(%rip), %xmm8  # xmm8 = mem[0],zero,zero,zero
	movsd	.LCPI33_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI33_7(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	.LCPI33_5(%rip), %xmm3  # xmm3 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm4, %xmm4
.LBB33_31:                              # %for.body.i.42.i
                                        # =>This Inner Loop Header: Depth=1
	movb	140(%r13,%rbp), %r12b
	movb	204(%r13,%rbp), %cl
	movl	$1, %edi
	shll	%cl, %edi
	decl	%edi
	cmpl	%ebp, %r14d
	movq	%r15, %rcx
	cmoveq	%r10, %rcx
	cvtsi2ssl	(%rcx), %xmm6
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm6
	movaps	%xmm8, %xmm5
	maxss	%xmm6, %xmm5
	movq	%r8, %rsi
	movb	%r12b, %cl
	shrq	%cl, %rsi
	andl	%edi, %esi
	movq	%r9, %rdx
	movb	%r12b, %cl
	shrq	%cl, %rdx
	andl	%edi, %edx
	movq	%r11, %rax
	movb	%r12b, %cl
	shrq	%cl, %rax
	andl	%edi, %eax
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%esi, %xmm6
	mulsd	%xmm1, %xmm6
	cvtsi2sdl	%edx, %xmm7
	mulsd	%xmm2, %xmm7
	addsd	%xmm6, %xmm7
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%eax, %xmm6
	subsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm7
	cmpltsd	%xmm4, %xmm7
	movapd	%xmm7, %xmm0
	andnpd	%xmm6, %xmm0
	xorpd	%xmm3, %xmm6
	andpd	%xmm6, %xmm7
	orpd	%xmm0, %xmm7
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	ucomisd	%xmm0, %xmm7
	ja	.LBB33_32
# BB#30:                                # %for.cond.i.i
                                        #   in Loop: Header=BB33_31 Depth=1
	incq	%rbp
	movl	$1, %eax
	cmpq	48(%rsp), %rbp          # 8-byte Folded Reload
	jl	.LBB33_31
	jmp	.LBB33_35
.LBB33_32:
	xorl	%eax, %eax
.LBB33_35:                              # %cleanup
	addq	$3224, %rsp             # imm = 0xC98
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gx_cspace_is_linear_default, .Lfunc_end33-gx_cspace_is_linear_default
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI34_0:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI34_3:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI34_4:
	.quad	4604180019048437077     # double 6.666667e-01
	.quad	4604180019048437077     # double 6.666667e-01
.LCPI34_5:
	.quad	4599676419421066582     # double 3.333333e-01
	.quad	4599676419421066582     # double 3.333333e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_1:
	.quad	4602678819172646912     # double 0.5
.LCPI34_6:
	.quad	4604180019048437077     # double 0.66666666666666663
.LCPI34_7:
	.quad	4599676419421066582     # double 0.33333333333333337
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI34_2:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gx_cspace_is_linear_in_triangle,@function
gx_cspace_is_linear_in_triangle:        # @gx_cspace_is_linear_in_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp103:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp104:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp105:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp106:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp107:
	.cfi_def_cfa_offset 56
	subq	$5736, %rsp             # imm = 0x1668
.Ltmp108:
	.cfi_def_cfa_offset 5792
.Ltmp109:
	.cfi_offset %rbx, -56
.Ltmp110:
	.cfi_offset %r12, -48
.Ltmp111:
	.cfi_offset %r13, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	movq	%r9, %r15
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	%rcx, %rbp
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	(%r13), %rax
	callq	*24(%rax)
	movl	%eax, %r14d
	movslq	100(%r12), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	(%r13), %rax
	leaq	2704(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB34_60
# BB#1:                                 # %if.end
	leaq	3360(%rsp), %rdx
	movq	(%r13), %rax
	xorl	%r9d, %r9d
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB34_60
# BB#2:                                 # %if.end.7
	leaq	4016(%rsp), %rdx
	movq	(%r13), %rax
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB34_60
# BB#3:                                 # %if.end.12
	movabsq	$8589934588, %r9        # imm = 0x1FFFFFFFC
	testl	%r14d, %r14d
	jle	.LBB34_11
# BB#4:                                 # %for.body.i.preheader
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r9, %rdx
	je	.LBB34_8
# BB#5:                                 # %vector.body.preheader
	movq	%r15, %r8
	movq	56(%rsp), %rsi          # 8-byte Reload
	leaq	16(%rsi), %rsi
	movq	72(%rsp), %rdi          # 8-byte Reload
	leaq	16(%rdi), %rdi
	leaq	5488(%rsp), %rbp
	incq	%rcx
	andq	%r9, %rcx
	movapd	.LCPI34_0(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB34_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rsi), %xmm1
	cvtps2pd	(%rsi), %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	cvtps2pd	-8(%rdi), %xmm3
	cvtps2pd	(%rdi), %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	movlpd	%xmm1, -8(%rbp)
	movlpd	%xmm2, (%rbp)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rbp
	addq	$-4, %rcx
	jne	.LBB34_6
# BB#7:
	movq	%rdx, %rsi
	movq	%r8, %r15
.LBB34_8:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB34_11
# BB#9:                                 # %for.body.i.preheader429
	movl	%r14d, %eax
	subl	%esi, %eax
	leaq	5480(%rsp,%rsi,4), %rcx
	movq	72(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rdx,%rsi,4), %rdx
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	8(%rdi,%rsi,4), %rsi
	movsd	.LCPI34_1(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB34_10:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	(%rdx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, (%rcx)
	addq	$4, %rcx
	addq	$4, %rdx
	addq	$4, %rsi
	decl	%eax
	jne	.LBB34_10
.LBB34_11:                              # %interpolate_cc.exit
	movq	(%r13), %rax
	leaq	5472(%rsp), %rdi
	leaq	2048(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r13, %rsi
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB34_60
# BB#12:                                # %if.end.16
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, 2704(%rsp)
	movl	$0, %eax
	jne	.LBB34_60
# BB#13:                                # %if.then.i.87
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jle	.LBB34_17
# BB#14:                                # %for.body.lr.ph.i.92
	movq	2712(%rsp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	3368(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	2056(%rsp), %r15
	leaq	112(%r12), %r10
	leaq	116(%r12), %rdi
	movzbl	110(%r12), %esi
	xorl	%eax, %eax
	movss	.LCPI34_2(%rip), %xmm8  # xmm8 = mem[0],zero,zero,zero
	movsd	.LCPI34_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	.LCPI34_3(%rip), %xmm2  # xmm2 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm3, %xmm3
	xorl	%ebp, %ebp
	movq	64(%rsp), %r14          # 8-byte Reload
	.align	16, 0x90
.LBB34_16:                              # %for.body.i.132
                                        # =>This Inner Loop Header: Depth=1
	movb	140(%r12,%rbp), %dl
	movb	204(%r12,%rbp), %cl
	movq	%r12, %rbx
	movl	$1, %r12d
	shll	%cl, %r12d
	decl	%r12d
	cmpl	%ebp, %esi
	movq	%rdi, %rcx
	cmoveq	%r10, %rcx
	cvtsi2ssl	(%rcx), %xmm5
	mulss	%xmm0, %xmm5
	movaps	%xmm8, %xmm4
	maxss	%xmm5, %xmm4
	movq	40(%rsp), %r8           # 8-byte Reload
	movb	%dl, %cl
	shrq	%cl, %r8
	andl	%r12d, %r8d
	movq	32(%rsp), %r9           # 8-byte Reload
	movb	%dl, %cl
	shrq	%cl, %r9
	andl	%r12d, %r9d
	movq	%r15, %r11
	movb	%dl, %cl
	shrq	%cl, %r11
	andl	%r12d, %r11d
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%r8d, %xmm5
	mulsd	%xmm1, %xmm5
	cvtsi2sdl	%r9d, %xmm6
	mulsd	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%r11d, %xmm5
	subsd	%xmm6, %xmm5
	movapd	%xmm5, %xmm6
	cmpltsd	%xmm3, %xmm6
	movapd	%xmm6, %xmm7
	andnpd	%xmm5, %xmm7
	xorpd	%xmm2, %xmm5
	andpd	%xmm5, %xmm6
	orpd	%xmm7, %xmm6
	cvtss2sd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm6
	ja	.LBB34_60
# BB#15:                                # %for.cond.i.94
                                        #   in Loop: Header=BB34_16 Depth=1
	incq	%rbp
	cmpq	%r14, %rbp
	movq	%rbx, %r12
	jl	.LBB34_16
.LBB34_17:                              # %if.end.21
	movq	8(%rsp), %r8            # 8-byte Reload
	testl	%r8d, %r8d
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	jle	.LBB34_25
# BB#18:                                # %for.body.i.227.preheader
	leal	-1(%r8), %ebx
	leaq	1(%rbx), %r10
	xorl	%esi, %esi
	movq	%r10, %rdx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rdx
	je	.LBB34_22
# BB#19:                                # %vector.body340.preheader
	leaq	16(%rbp), %rsi
	movq	%rbp, %r9
	leaq	5488(%rsp), %rdi
	leaq	4696(%rsp), %rbp
	incq	%rbx
	andq	%rax, %rbx
	movapd	.LCPI34_4(%rip), %xmm0  # xmm0 = [6.666667e-01,6.666667e-01]
	movapd	.LCPI34_5(%rip), %xmm1  # xmm1 = [3.333333e-01,3.333333e-01]
	.align	16, 0x90
.LBB34_20:                              # %vector.body340
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rsi), %xmm2
	cvtps2pd	(%rsi), %xmm3
	mulpd	%xmm0, %xmm2
	mulpd	%xmm0, %xmm3
	cvtps2pd	-8(%rdi), %xmm4
	cvtps2pd	(%rdi), %xmm5
	mulpd	%xmm1, %xmm4
	mulpd	%xmm1, %xmm5
	addpd	%xmm2, %xmm4
	addpd	%xmm3, %xmm5
	cvtpd2ps	%xmm4, %xmm2
	cvtpd2ps	%xmm5, %xmm3
	movlpd	%xmm2, -8(%rbp)
	movlpd	%xmm3, (%rbp)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rbp
	addq	$-4, %rbx
	jne	.LBB34_20
# BB#21:
	movq	%rdx, %rsi
	movq	%r9, %rbp
.LBB34_22:                              # %middle.block341
	cmpq	%rsi, %r10
	je	.LBB34_25
# BB#23:                                # %for.body.i.227.preheader427
	movl	%r8d, %eax
	subl	%esi, %eax
	leaq	4688(%rsp,%rsi,4), %rdi
	leaq	5480(%rsp,%rsi,4), %rdx
	leaq	8(%rbp,%rsi,4), %rsi
	movsd	.LCPI34_6(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI34_7(%rip), %xmm1  # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB34_24:                              # %for.body.i.227
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	movss	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm1, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm3, %xmm2
	movss	%xmm2, (%rdi)
	addq	$4, %rdi
	addq	$4, %rdx
	addq	$4, %rsi
	decl	%eax
	jne	.LBB34_24
.LBB34_25:                              # %interpolate_cc.exit228
	movq	(%r13), %rax
	leaq	4680(%rsp), %rdi
	leaq	80(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r13, %rsi
	movq	%r12, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB34_60
# BB#26:                                # %if.end.25
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, 4016(%rsp)
	movl	$0, %eax
	jne	.LBB34_60
# BB#27:                                # %if.then.i.255
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movss	52(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	jle	.LBB34_31
# BB#28:                                # %for.body.lr.ph.i.260
	movq	4024(%rsp), %r14
	movq	2056(%rsp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	88(%rsp), %r11
	leaq	112(%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	116(%r12), %r15
	movzbl	110(%r12), %r10d
	xorl	%eax, %eax
	movss	.LCPI34_2(%rip), %xmm8  # xmm8 = mem[0],zero,zero,zero
	movsd	.LCPI34_6(%rip), %xmm9  # xmm9 = mem[0],zero
	movsd	.LCPI34_7(%rip), %xmm2  # xmm2 = mem[0],zero
	movapd	.LCPI34_3(%rip), %xmm3  # xmm3 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm4, %xmm4
	xorl	%esi, %esi
	movq	64(%rsp), %r9           # 8-byte Reload
.LBB34_30:                              # %for.body.i.300
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %r8
	movb	140(%r8,%rsi), %r12b
	movb	204(%r8,%rsi), %cl
	movl	$1, %ebp
	shll	%cl, %ebp
	decl	%ebp
	cmpl	%esi, %r10d
	movq	%r15, %rcx
	cmoveq	32(%rsp), %rcx          # 8-byte Folded Reload
	cvtsi2ssl	(%rcx), %xmm6
	mulss	%xmm1, %xmm6
	movaps	%xmm8, %xmm5
	maxss	%xmm6, %xmm5
	movq	%r14, %rdi
	movb	%r12b, %cl
	shrq	%cl, %rdi
	andl	%ebp, %edi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movb	%r12b, %cl
	shrq	%cl, %rdx
	andl	%ebp, %edx
	movq	%r11, %rbx
	movb	%r12b, %cl
	shrq	%cl, %rbx
	andl	%ebp, %ebx
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%edi, %xmm6
	mulsd	%xmm9, %xmm6
	cvtsi2sdl	%edx, %xmm7
	mulsd	%xmm2, %xmm7
	addsd	%xmm6, %xmm7
	xorps	%xmm6, %xmm6
	cvtsi2sdl	%ebx, %xmm6
	subsd	%xmm7, %xmm6
	movapd	%xmm6, %xmm7
	cmpltsd	%xmm4, %xmm7
	movapd	%xmm7, %xmm0
	andnpd	%xmm6, %xmm0
	xorpd	%xmm3, %xmm6
	andpd	%xmm6, %xmm7
	orpd	%xmm0, %xmm7
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	ucomisd	%xmm0, %xmm7
	ja	.LBB34_60
# BB#29:                                # %for.cond.i.262
                                        #   in Loop: Header=BB34_30 Depth=1
	incq	%rsi
	cmpq	%r9, %rsi
	movq	%r8, %r12
	jl	.LBB34_30
.LBB34_31:                              # %if.end.30
	movq	8(%rsp), %r8            # 8-byte Reload
	testl	%r8d, %r8d
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	jle	.LBB34_39
# BB#32:                                # %for.body.i.244.preheader
	leal	-1(%r8), %ebx
	leaq	1(%rbx), %r10
	xorl	%esi, %esi
	movq	%r10, %rdx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rdx
	je	.LBB34_36
# BB#33:                                # %vector.body368.preheader
	movq	72(%rsp), %rsi          # 8-byte Reload
	leaq	16(%rsi), %rsi
	leaq	16(%rbp), %rdi
	movq	%rbp, %r9
	leaq	5224(%rsp), %rbp
	incq	%rbx
	andq	%rax, %rbx
	movapd	.LCPI34_0(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB34_34:                              # %vector.body368
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rsi), %xmm1
	cvtps2pd	(%rsi), %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	cvtps2pd	-8(%rdi), %xmm3
	cvtps2pd	(%rdi), %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	movlpd	%xmm1, -8(%rbp)
	movlpd	%xmm2, (%rbp)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rbp
	addq	$-4, %rbx
	jne	.LBB34_34
# BB#35:
	movq	%rdx, %rsi
	movq	%r9, %rbp
.LBB34_36:                              # %middle.block369
	cmpq	%rsi, %r10
	je	.LBB34_39
# BB#37:                                # %for.body.i.244.preheader425
	movl	%r8d, %eax
	subl	%esi, %eax
	leaq	5216(%rsp,%rsi,4), %rdi
	leaq	8(%rbp,%rsi,4), %rdx
	movq	72(%rsp), %rbp          # 8-byte Reload
	leaq	8(%rbp,%rsi,4), %rsi
	movsd	.LCPI34_1(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB34_38:                              # %for.body.i.244
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	(%rdx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, (%rdi)
	addq	$4, %rdi
	addq	$4, %rdx
	addq	$4, %rsi
	decl	%eax
	jne	.LBB34_38
.LBB34_39:                              # %interpolate_cc.exit245
	movq	(%r13), %rax
	leaq	5208(%rsp), %rdi
	leaq	1392(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r13, %rsi
	movq	%r12, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB34_60
# BB#40:                                # %if.end.34
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, 3360(%rsp)
	movl	$0, %eax
	jne	.LBB34_60
# BB#41:                                # %if.then.i.161
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movss	52(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jle	.LBB34_45
# BB#42:                                # %for.body.lr.ph.i.166
	movq	3368(%rsp), %r14
	movq	4024(%rsp), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	1400(%rsp), %r11
	leaq	112(%r12), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	116(%r12), %r15
	movzbl	110(%r12), %r10d
	xorl	%eax, %eax
	movss	.LCPI34_2(%rip), %xmm8  # xmm8 = mem[0],zero,zero,zero
	movsd	.LCPI34_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	.LCPI34_3(%rip), %xmm2  # xmm2 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm3, %xmm3
	xorl	%ebp, %ebp
	movq	64(%rsp), %r9           # 8-byte Reload
.LBB34_44:                              # %for.body.i.206
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %r8
	movb	140(%r8,%rbp), %r12b
	movb	204(%r8,%rbp), %cl
	movl	$1, %ebx
	shll	%cl, %ebx
	decl	%ebx
	cmpl	%ebp, %r10d
	movq	%r15, %rcx
	cmoveq	40(%rsp), %rcx          # 8-byte Folded Reload
	cvtsi2ssl	(%rcx), %xmm5
	mulss	%xmm0, %xmm5
	movaps	%xmm8, %xmm4
	maxss	%xmm5, %xmm4
	movq	%r14, %rsi
	movb	%r12b, %cl
	shrq	%cl, %rsi
	andl	%ebx, %esi
	movq	72(%rsp), %rdi          # 8-byte Reload
	movb	%r12b, %cl
	shrq	%cl, %rdi
	andl	%ebx, %edi
	movq	%r11, %rdx
	movb	%r12b, %cl
	shrq	%cl, %rdx
	andl	%ebx, %edx
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%esi, %xmm5
	mulsd	%xmm1, %xmm5
	cvtsi2sdl	%edi, %xmm6
	mulsd	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%edx, %xmm5
	subsd	%xmm6, %xmm5
	movapd	%xmm5, %xmm6
	cmpltsd	%xmm3, %xmm6
	movapd	%xmm6, %xmm7
	andnpd	%xmm5, %xmm7
	xorpd	%xmm2, %xmm5
	andpd	%xmm5, %xmm6
	orpd	%xmm7, %xmm6
	cvtss2sd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm6
	ja	.LBB34_60
# BB#43:                                # %for.cond.i.168
                                        #   in Loop: Header=BB34_44 Depth=1
	incq	%rbp
	cmpq	%r9, %rbp
	movq	%r8, %r12
	jl	.LBB34_44
.LBB34_45:                              # %if.end.40
	movq	8(%rsp), %r8            # 8-byte Reload
	testl	%r8d, %r8d
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %rbp          # 8-byte Reload
	jle	.LBB34_53
# BB#46:                                # %for.body.i.150.preheader
	leal	-1(%r8), %ebx
	leaq	1(%rbx), %r10
	xorl	%esi, %esi
	movq	%r10, %rdx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rdx
	je	.LBB34_50
# BB#47:                                # %vector.body396.preheader
	leaq	16(%rbp), %rsi
	movq	%rbp, %r9
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	16(%rdi), %rdi
	leaq	4960(%rsp), %rbp
	incq	%rbx
	andq	%rax, %rbx
	movapd	.LCPI34_0(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB34_48:                              # %vector.body396
                                        # =>This Inner Loop Header: Depth=1
	cvtps2pd	-8(%rsi), %xmm1
	cvtps2pd	(%rsi), %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	cvtps2pd	-8(%rdi), %xmm3
	cvtps2pd	(%rdi), %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	movlpd	%xmm1, -8(%rbp)
	movlpd	%xmm2, (%rbp)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$16, %rbp
	addq	$-4, %rbx
	jne	.LBB34_48
# BB#49:
	movq	%rdx, %rsi
	movq	%r9, %rbp
.LBB34_50:                              # %middle.block397
	cmpq	%rsi, %r10
	je	.LBB34_53
# BB#51:                                # %for.body.i.150.preheader423
	subl	%esi, %r8d
	leaq	4952(%rsp,%rsi,4), %rax
	movq	56(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rdx,%rsi,4), %rdi
	leaq	8(%rbp,%rsi,4), %rdx
	movsd	.LCPI34_1(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB34_52:                              # %for.body.i.150
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, (%rax)
	addq	$4, %rax
	addq	$4, %rdi
	addq	$4, %rdx
	decl	%r8d
	jne	.LBB34_52
.LBB34_53:                              # %interpolate_cc.exit151
	movq	(%r13), %rax
	leaq	4944(%rsp), %rdi
	leaq	736(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r13, %rsi
	movq	%r12, %r8
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB34_60
# BB#54:                                # %if.end.44
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, 4016(%rsp)
	movl	$0, %eax
	jne	.LBB34_60
# BB#55:                                # %if.then.i
	movl	$1, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB34_60
# BB#56:                                # %for.body.lr.ph.i.65
	movq	4024(%rsp), %r14
	movq	2712(%rsp), %r9
	movq	744(%rsp), %r11
	leaq	112(%r12), %r10
	leaq	116(%r12), %r15
	movzbl	110(%r12), %r8d
	xorl	%esi, %esi
	movss	.LCPI34_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movsd	.LCPI34_1(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	.LCPI34_3(%rip), %xmm2  # xmm2 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm3, %xmm3
	movq	64(%rsp), %r13          # 8-byte Reload
.LBB34_58:                              # %for.body.i.71
                                        # =>This Inner Loop Header: Depth=1
	movb	140(%r12,%rsi), %bl
	movb	204(%r12,%rsi), %cl
	movl	$1, %ebp
	shll	%cl, %ebp
	decl	%ebp
	cmpl	%esi, %r8d
	movq	%r15, %rcx
	cmoveq	%r10, %rcx
	cvtsi2ssl	(%rcx), %xmm5
	mulss	52(%rsp), %xmm5         # 4-byte Folded Reload
	movaps	%xmm0, %xmm4
	maxss	%xmm5, %xmm4
	movq	%r14, %rdi
	movb	%bl, %cl
	shrq	%cl, %rdi
	andl	%ebp, %edi
	movq	%r9, %rdx
	movb	%bl, %cl
	shrq	%cl, %rdx
	andl	%ebp, %edx
	movq	%r11, %rax
	movb	%bl, %cl
	shrq	%cl, %rax
	andl	%ebp, %eax
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%edi, %xmm5
	mulsd	%xmm1, %xmm5
	cvtsi2sdl	%edx, %xmm6
	mulsd	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%eax, %xmm5
	subsd	%xmm6, %xmm5
	movapd	%xmm5, %xmm6
	cmpltsd	%xmm3, %xmm6
	movapd	%xmm6, %xmm7
	andnpd	%xmm5, %xmm7
	xorpd	%xmm2, %xmm5
	andpd	%xmm5, %xmm6
	orpd	%xmm7, %xmm6
	cvtss2sd	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm6
	ja	.LBB34_59
# BB#57:                                # %for.cond.i
                                        #   in Loop: Header=BB34_58 Depth=1
	incq	%rsi
	movl	$1, %eax
	cmpq	%r13, %rsi
	jl	.LBB34_58
	jmp	.LBB34_60
.LBB34_59:
	xorl	%eax, %eax
.LBB34_60:                              # %cleanup
	addq	$5736, %rsp             # imm = 0x1668
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gx_cspace_is_linear_in_triangle, .Lfunc_end34-gx_cspace_is_linear_in_triangle
	.cfi_endproc

	.globl	gx_serialize_cspace_type
	.align	16, 0x90
	.type	gx_serialize_cspace_type,@function
gx_serialize_cspace_type:               # @gx_serialize_cspace_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp115:
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rax
	leaq	4(%rsp), %rcx
	movl	$4, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	sputs
	popq	%rdx
	retq
.Lfunc_end35:
	.size	gx_serialize_cspace_type, .Lfunc_end35-gx_serialize_cspace_type
	.cfi_endproc

	.align	16, 0x90
	.type	gx_install_DeviceGray,@function
gx_install_DeviceGray:                  # @gx_install_DeviceGray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp118:
	.cfi_def_cfa_offset 32
.Ltmp119:
	.cfi_offset %rbx, -24
.Ltmp120:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 64(%rbx)
	jne	.LBB36_6
# BB#1:                                 # %if.end
	movq	336(%r14), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB36_3
# BB#2:                                 # %if.then.2
	movq	%r14, %rdi
	callq	gsicc_init_iccmanager
	movq	336(%r14), %rax
.LBB36_3:                               # %if.end.3
	movq	8(%rax), %rax
	movq	%rax, 64(%rbx)
	testq	%rax, %rax
	je	.LBB36_5
# BB#4:                                 # %do.body.10
	incq	288(%rax)
.LBB36_5:                               # %do.end.16
	movq	$gs_color_space_type_ICC, (%rbx)
.LBB36_6:                               # %return
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end36:
	.size	gx_install_DeviceGray, .Lfunc_end36-gx_install_DeviceGray
	.cfi_endproc

	.align	16, 0x90
	.type	gx_install_DeviceRGB,@function
gx_install_DeviceRGB:                   # @gx_install_DeviceRGB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp123:
	.cfi_def_cfa_offset 32
.Ltmp124:
	.cfi_offset %rbx, -24
.Ltmp125:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 64(%rbx)
	jne	.LBB37_6
# BB#1:                                 # %if.end
	movq	336(%r14), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB37_3
# BB#2:                                 # %if.end.3.thread
	movq	%rax, 64(%rbx)
	jmp	.LBB37_4
.LBB37_3:                               # %if.end.3
	movq	%r14, %rdi
	callq	gsicc_init_iccmanager
	movq	336(%r14), %rax
	movq	16(%rax), %rax
	movq	%rax, 64(%rbx)
	testq	%rax, %rax
	je	.LBB37_5
.LBB37_4:                               # %do.body.9
	incq	288(%rax)
.LBB37_5:                               # %do.end.14
	movq	$gs_color_space_type_ICC, (%rbx)
.LBB37_6:                               # %return
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end37:
	.size	gx_install_DeviceRGB, .Lfunc_end37-gx_install_DeviceRGB
	.cfi_endproc

	.align	16, 0x90
	.type	gx_install_DeviceCMYK,@function
gx_install_DeviceCMYK:                  # @gx_install_DeviceCMYK
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp128:
	.cfi_def_cfa_offset 32
.Ltmp129:
	.cfi_offset %rbx, -24
.Ltmp130:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$0, 64(%rbx)
	jne	.LBB38_6
# BB#1:                                 # %if.end
	movq	336(%r14), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB38_3
# BB#2:                                 # %if.end.3.thread
	movq	%rax, 64(%rbx)
	jmp	.LBB38_4
.LBB38_3:                               # %if.end.3
	movq	%r14, %rdi
	callq	gsicc_init_iccmanager
	movq	336(%r14), %rax
	movq	24(%rax), %rax
	movq	%rax, 64(%rbx)
	testq	%rax, %rax
	je	.LBB38_5
.LBB38_4:                               # %do.body.9
	incq	288(%rax)
.LBB38_5:                               # %do.end.14
	movq	$gs_color_space_type_ICC, (%rbx)
.LBB38_6:                               # %return
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end38:
	.size	gx_install_DeviceCMYK, .Lfunc_end38-gx_install_DeviceCMYK
	.cfi_endproc

	.align	16, 0x90
	.type	gx_set_overprint_DeviceCMYK,@function
gx_set_overprint_DeviceCMYK:            # @gx_set_overprint_DeviceCMYK
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp131:
	.cfi_def_cfa_offset 48
	movq	1872(%rsi), %rdx
	leaq	96(%rdx), %rcx
	testq	%rdx, %rdx
	cmoveq	%rdx, %rcx
	movl	272(%rsi), %eax
	testl	%eax, %eax
	je	.LBB39_6
# BB#1:                                 # %lor.lhs.false
	testq	%rdx, %rdx
	je	.LBB39_4
# BB#2:                                 # %lor.lhs.false
	cmpl	$1, 276(%rsi)
	jne	.LBB39_4
# BB#3:                                 # %lor.lhs.false.4
	cmpl	$0, 696(%rcx)
	je	.LBB39_4
# BB#5:                                 # %if.end
	addq	$40, %rsp
	jmp	gx_set_overprint_cmyk   # TAILCALL
.LBB39_4:                               # %if.then.i
	movl	%eax, 8(%rsp)
	movl	$1, 12(%rsp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.then
	movl	%eax, 8(%rsp)
.LBB39_7:                               # %cleanup
	movl	$0, 280(%rsi)
	movw	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	leaq	8(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gs_state_update_overprint
	addq	$40, %rsp
	retq
.Lfunc_end39:
	.size	gx_set_overprint_DeviceCMYK, .Lfunc_end39-gx_set_overprint_DeviceCMYK
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_color_space"
	.size	.L.str, 15

	.type	st_color_space,@object  # @st_color_space
	.section	.rodata,"a",@progbits
	.globl	st_color_space
	.align	8
st_color_space:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	color_space_enum_ptrs
	.quad	color_space_reloc_ptrs
	.quad	gs_cspace_final
	.quad	0
	.size	st_color_space, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_base_color_space"
	.size	.L.str.1, 20

	.type	st_base_color_space,@object # @st_base_color_space
	.section	.rodata,"a",@progbits
	.globl	st_base_color_space
	.align	8
st_base_color_space:
	.long	120                     # 0x78
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_base_color_space, 64

	.type	gs_color_space_type_DeviceGray,@object # @gs_color_space_type_DeviceGray
	.align	8
gs_color_space_type_DeviceGray:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	st_base_color_space
	.quad	gx_num_components_1
	.quad	gx_init_paint_1
	.quad	gx_restrict01_paint_1
	.quad	gx_same_concrete_space
	.quad	gx_concretize_DeviceGray
	.quad	gx_remap_concrete_DGray
	.quad	gx_remap_DeviceGray
	.quad	gx_install_DeviceGray
	.quad	gx_spot_colors_set_overprint
	.quad	0
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_cspace_type
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_additive
	.size	gs_color_space_type_DeviceGray, 136

	.type	gs_color_space_type_DeviceRGB,@object # @gs_color_space_type_DeviceRGB
	.align	8
gs_color_space_type_DeviceRGB:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	st_base_color_space
	.quad	gx_num_components_3
	.quad	gx_init_paint_3
	.quad	gx_restrict01_paint_3
	.quad	gx_same_concrete_space
	.quad	gx_concretize_DeviceRGB
	.quad	gx_remap_concrete_DRGB
	.quad	gx_remap_DeviceRGB
	.quad	gx_install_DeviceRGB
	.quad	gx_spot_colors_set_overprint
	.quad	0
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_cspace_type
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_additive
	.size	gs_color_space_type_DeviceRGB, 136

	.type	gs_color_space_type_DeviceCMYK,@object # @gs_color_space_type_DeviceCMYK
	.align	8
gs_color_space_type_DeviceCMYK:
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.quad	st_base_color_space
	.quad	gx_num_components_4
	.quad	gx_init_paint_4
	.quad	gx_restrict01_paint_4
	.quad	gx_same_concrete_space
	.quad	gx_concretize_DeviceCMYK
	.quad	gx_remap_concrete_DCMYK
	.quad	gx_remap_DeviceCMYK
	.quad	gx_install_DeviceCMYK
	.quad	gx_set_overprint_DeviceCMYK
	.quad	0
	.quad	gx_no_adjust_color_count
	.quad	gx_serialize_cspace_type
	.quad	gx_cspace_is_linear_default
	.quad	gx_polarity_subtractive
	.size	gs_color_space_type_DeviceCMYK, 136

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_cspace_new_ICC"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cs_adjust_counts"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Cyan"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Magenta"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Yellow"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Black"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Red"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Green"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Blue"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gs_cspace_final"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gs_cspace_alloc_with_id"
	.size	.L.str.12, 24

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	.Lswitch.table, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
