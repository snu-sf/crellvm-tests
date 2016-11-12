	.text
	.file	"gxhldevc.bc"
	.globl	gx_hld_saved_color_init
	.align	16, 0x90
	.type	gx_hld_saved_color_init,@function
gx_hld_saved_color_init:                # @gx_hld_saved_color_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$656, %rsp              # imm = 0x290
.Ltmp1:
	.cfi_def_cfa_offset 672
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	movl	$632, %edx              # imm = 0x278
	callq	memset
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movq	$gx_dc_type_data_null, (%rsp)
	leaq	288(%rbx), %rsi
	leaq	(%rsp), %rdi
	callq	*gx_dc_type_data_null+8(%rip)
	addq	$656, %rsp              # imm = 0x290
	popq	%rbx
	retq
.Lfunc_end0:
	.size	gx_hld_saved_color_init, .Lfunc_end0-gx_hld_saved_color_init
	.cfi_endproc

	.globl	gx_hld_get_gstate_ptr
	.align	16, 0x90
	.type	gx_hld_get_gstate_ptr,@function
gx_hld_get_gstate_ptr:                  # @gx_hld_get_gstate_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB1_4
# BB#1:                                 # %lor.lhs.false
	xorl	%eax, %eax
	cmpl	$0, (%rdi)
	je	.LBB1_3
# BB#2:                                 # %select.mid
	movq	%rdi, %rax
.LBB1_3:                                # %select.end
	retq
.LBB1_4:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	gx_hld_get_gstate_ptr, .Lfunc_end1-gx_hld_get_gstate_ptr
	.cfi_endproc

	.globl	gx_hld_save_color
	.align	16, 0x90
	.type	gx_hld_save_color,@function
gx_hld_save_color:                      # @gx_hld_save_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 40
	subq	$664, %rsp              # imm = 0x298
.Ltmp7:
	.cfi_def_cfa_offset 704
.Ltmp8:
	.cfi_offset %rbx, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	xorl	%ebp, %ebp
	testq	%rdi, %rdi
	je	.LBB2_3
# BB#1:                                 # %lor.lhs.false.i
	xorl	%ebp, %ebp
	cmpl	$0, (%rdi)
	je	.LBB2_3
# BB#2:                                 # %select.mid
	movq	%rdi, %rbp
.LBB2_3:                                # %gx_hld_get_gstate_ptr.exit
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$632, %edx              # imm = 0x278
	movq	%rbx, %rdi
	callq	memset
	testq	%r14, %r14
	je	.LBB2_4
# BB#5:                                 # %if.else
	testq	%rbp, %rbp
	je	.LBB2_6
# BB#7:                                 # %if.else.4
	movq	1744(%rbp), %rbp
	movq	%rbp, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %r15d
	movq	32(%rbp), %rax
	movq	%rax, (%rbx)
	movq	(%r14), %rax
	leaq	288(%rbx), %rsi
	movq	%r14, %rdi
	callq	*8(%rax)
	movq	(%r14), %rax
	movl	$gx_dc_pattern2, %ecx
	cmpq	%rcx, %rax
	je	.LBB2_13
# BB#8:                                 # %for.cond.preheader
	movl	%r15d, %ecx
	sarl	$31, %ecx
	xorl	%r15d, %ecx
	testl	%ecx, %ecx
	jle	.LBB2_11
# BB#9:                                 # %for.body.lr.ph
	movslq	%ecx, %rcx
	.align	16, 0x90
.LBB2_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	372(%r14,%rcx,4), %edx
	movl	%edx, 28(%rbx,%rcx,4)
	cmpq	$1, %rcx
	leaq	-1(%rcx), %rcx
	jg	.LBB2_10
.LBB2_11:                               # %for.end
	movl	$gx_dc_pattern, %ecx
	cmpq	%rcx, %rax
	je	.LBB2_13
# BB#12:                                # %for.end
	movl	$gx_dc_pattern2, %ecx
	cmpq	%rcx, %rax
	jne	.LBB2_15
.LBB2_13:                               # %land.lhs.true
	cmpl	$0, 360(%r14)
	je	.LBB2_15
# BB#14:                                # %if.then.30
	movq	368(%r14), %rax
	movq	40(%rax), %rax
	movq	%rax, 8(%rbx)
	jmp	.LBB2_16
.LBB2_4:                                # %if.then
	xorl	%esi, %esi
	movl	$632, %edx              # imm = 0x278
	movq	%rbx, %rdi
	callq	memset
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movq	$gx_dc_type_data_null, 8(%rsp)
	addq	$288, %rbx              # imm = 0x120
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	*gx_dc_type_data_null+8(%rip)
	jmp	.LBB2_17
.LBB2_6:                                # %if.then.3
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movq	(%r14), %rax
	addq	$288, %rbx              # imm = 0x120
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*8(%rax)
	xorl	%r15d, %r15d
	jmp	.LBB2_17
.LBB2_15:                               # %if.else.34
	movq	$0, 8(%rbx)
.LBB2_16:                               # %cleanup
	movl	$1, %r15d
.LBB2_17:                               # %cleanup
	movl	%r15d, %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gx_hld_save_color, .Lfunc_end2-gx_hld_save_color
	.cfi_endproc

	.globl	gx_hld_saved_color_equal
	.align	16, 0x90
	.type	gx_hld_saved_color_equal,@function
gx_hld_saved_color_equal:               # @gx_hld_saved_color_equal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 48
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r12, -32
.Ltmp19:
	.cfi_offset %r14, -24
.Ltmp20:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	288(%rbx), %rax
	xorl	%r14d, %r14d
	cmpq	288(%r15), %rax
	jne	.LBB3_38
# BB#1:                                 # %lor.lhs.false
	movq	(%rbx), %rcx
	cmpq	(%r15), %rcx
	jne	.LBB3_38
# BB#2:                                 # %lor.lhs.false.5
	movq	8(%rbx), %rcx
	cmpq	8(%r15), %rcx
	jne	.LBB3_38
# BB#3:                                 # %lor.lhs.false.8
	movl	16(%rbx), %ecx
	cmpl	16(%r15), %ecx
	jne	.LBB3_38
# BB#4:                                 # %lor.lhs.false.11
	movq	24(%rbx), %rcx
	cmpq	24(%r15), %rcx
	jne	.LBB3_38
# BB#5:                                 # %lor.lhs.false.15
	movl	624(%rbx), %ecx
	cmpl	624(%r15), %ecx
	jne	.LBB3_38
# BB#6:                                 # %lor.lhs.false.21
	movl	628(%rbx), %ecx
	cmpl	628(%r15), %ecx
	jne	.LBB3_38
# BB#7:                                 # %for.body.preheader
	leaq	288(%rbx), %r12
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
.LBB3_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	32(%rbx,%rcx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	32(%r15,%rcx,4), %xmm0
	jne	.LBB3_38
	jnp	.LBB3_39
	jmp	.LBB3_38
.LBB3_39:                               # %for.cond
                                        #   in Loop: Header=BB3_8 Depth=1
	movss	36(%rbx,%rcx,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	36(%r15,%rcx,4), %xmm0
	jne	.LBB3_38
	jnp	.LBB3_9
	jmp	.LBB3_38
.LBB3_9:                                # %for.cond.1
                                        #   in Loop: Header=BB3_8 Depth=1
	addq	$2, %rcx
	cmpq	$64, %rcx
	jl	.LBB3_8
# BB#10:                                # %for.end
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	je	.LBB3_12
# BB#11:                                # %for.end
	movl	$gx_dc_pure_masked, %ecx
	cmpq	%rcx, %rax
	je	.LBB3_12
# BB#13:                                # %if.else
	movl	$gx_dc_type_data_ht_binary, %ecx
	cmpq	%rcx, %rax
	je	.LBB3_14
# BB#18:                                # %if.else.98
	movl	$gx_dc_type_data_ht_colored, %ecx
	cmpq	%rcx, %rax
	je	.LBB3_19
# BB#25:                                # %if.else.138
	movl	$gx_dc_type_data_devn, %ecx
	cmpq	%rcx, %rax
	je	.LBB3_26
# BB#30:                                # %if.else.168
	movq	%r12, %rdi
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB3_34
# BB#31:                                # %if.then.171
	movq	296(%rbx), %rax
	cmpq	296(%r15), %rax
	jne	.LBB3_38
# BB#32:                                # %lor.lhs.false.181
	movl	304(%rbx), %eax
	cmpl	304(%r15), %eax
	jne	.LBB3_38
# BB#33:                                # %lor.lhs.false.194
	movl	308(%rbx), %eax
	cmpl	308(%r15), %eax
	je	.LBB3_37
	jmp	.LBB3_38
.LBB3_12:                               # %if.then.45
	movq	296(%rbx), %rax
	cmpq	296(%r15), %rax
	je	.LBB3_37
	jmp	.LBB3_38
.LBB3_14:                               # %if.then.56
	movq	296(%rbx), %rax
	cmpq	296(%r15), %rax
	jne	.LBB3_38
# BB#15:                                # %lor.lhs.false.66
	movq	304(%rbx), %rax
	cmpq	304(%r15), %rax
	jne	.LBB3_38
# BB#16:                                # %lor.lhs.false.78
	movl	312(%rbx), %eax
	cmpl	312(%r15), %eax
	jne	.LBB3_38
# BB#17:                                # %lor.lhs.false.87
	movl	316(%rbx), %eax
	cmpl	316(%r15), %eax
	je	.LBB3_37
	jmp	.LBB3_38
.LBB3_19:                               # %for.cond.103.preheader
	xorl	%r14d, %r14d
	xorl	%eax, %eax
.LBB3_20:                               # %for.body.105
                                        # =>This Inner Loop Header: Depth=1
	movzbl	296(%r15,%rax), %ecx
	movzbl	296(%rbx,%rax), %edx
	cmpl	%ecx, %edx
	jne	.LBB3_38
# BB#21:                                # %lor.lhs.false.119
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	360(%rbx,%rax,4), %ecx
	cmpl	360(%r15,%rax,4), %ecx
	jne	.LBB3_38
# BB#22:                                # %for.cond.103
                                        #   in Loop: Header=BB3_20 Depth=1
	movzbl	297(%r15,%rax), %ecx
	movzbl	297(%rbx,%rax), %edx
	cmpl	%ecx, %edx
	jne	.LBB3_38
# BB#23:                                # %lor.lhs.false.119.1
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	364(%rbx,%rax,4), %ecx
	cmpl	364(%r15,%rax,4), %ecx
	jne	.LBB3_38
# BB#24:                                # %for.cond.103.1
                                        #   in Loop: Header=BB3_20 Depth=1
	addq	$2, %rax
	cmpq	$64, %rax
	jl	.LBB3_20
	jmp	.LBB3_37
.LBB3_26:                               # %for.cond.144.preheader
	xorl	%r14d, %r14d
	xorl	%eax, %eax
.LBB3_27:                               # %for.body.147
                                        # =>This Inner Loop Header: Depth=1
	movzwl	296(%r15,%rax,2), %ecx
	movzwl	296(%rbx,%rax,2), %edx
	cmpl	%ecx, %edx
	jne	.LBB3_38
# BB#28:                                # %for.cond.144
                                        #   in Loop: Header=BB3_27 Depth=1
	movzwl	298(%r15,%rax,2), %ecx
	movzwl	298(%rbx,%rax,2), %edx
	cmpl	%ecx, %edx
	jne	.LBB3_38
# BB#29:                                # %for.cond.144.1
                                        #   in Loop: Header=BB3_27 Depth=1
	addq	$2, %rax
	cmpq	$64, %rax
	jl	.LBB3_27
	jmp	.LBB3_37
.LBB3_34:                               # %if.else.209
	movq	%r12, %rdi
	callq	gx_dc_is_pattern2_color
	testl	%eax, %eax
	je	.LBB3_37
# BB#35:                                # %if.then.214
	movq	296(%rbx), %rax
	cmpq	296(%r15), %rax
	jne	.LBB3_38
# BB#36:                                # %lor.lhs.false.224
	movl	304(%rbx), %eax
	cmpl	304(%r15), %eax
	jne	.LBB3_38
.LBB3_37:                               # %if.end.241
	movl	$1, %r14d
.LBB3_38:                               # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	gx_hld_saved_color_equal, .Lfunc_end3-gx_hld_saved_color_equal
	.cfi_endproc

	.globl	gx_hld_saved_color_same_cspace
	.align	16, 0x90
	.type	gx_hld_saved_color_same_cspace,@function
gx_hld_saved_color_same_cspace:         # @gx_hld_saved_color_same_cspace
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	jne	.LBB4_3
# BB#1:                                 # %if.end
	movq	8(%rdi), %rax
	cmpq	8(%rsi), %rax
	jne	.LBB4_3
# BB#2:                                 # %if.end.5
	movl	16(%rdi), %eax
	cmpl	16(%rsi), %eax
	sete	%al
	movzbl	%al, %eax
	retq
.LBB4_3:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	gx_hld_saved_color_same_cspace, .Lfunc_end4-gx_hld_saved_color_same_cspace
	.cfi_endproc

	.globl	gx_hld_is_hl_color_available
	.align	16, 0x90
	.type	gx_hld_is_hl_color_available,@function
gx_hld_is_hl_color_available:           # @gx_hld_is_hl_color_available
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB5_4
# BB#1:                                 # %gx_hld_get_gstate_ptr.exit
	testq	%rsi, %rsi
	je	.LBB5_4
# BB#2:                                 # %gx_hld_get_gstate_ptr.exit
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.LBB5_4
# BB#3:                                 # %land.lhs.true.2
	movl	$1, %eax
	cmpl	$0, 360(%rsi)
	jne	.LBB5_5
.LBB5_4:                                # %if.end
	xorl	%eax, %eax
.LBB5_5:                                # %cleanup
	retq
.Lfunc_end5:
	.size	gx_hld_is_hl_color_available, .Lfunc_end5-gx_hld_is_hl_color_available
	.cfi_endproc

	.globl	gx_hld_get_color_space_and_ccolor
	.align	16, 0x90
	.type	gx_hld_get_color_space_and_ccolor,@function
gx_hld_get_color_space_and_ccolor:      # @gx_hld_get_color_space_and_ccolor
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB6_5
# BB#1:                                 # %gx_hld_get_gstate_ptr.exit.i
	testq	%rsi, %rsi
	je	.LBB6_5
# BB#2:                                 # %gx_hld_get_gstate_ptr.exit.i
	movl	(%rdi), %eax
	testl	%eax, %eax
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true.2.i
	cmpl	$0, 360(%rsi)
	je	.LBB6_5
# BB#4:                                 # %gx_hld_get_gstate_ptr.exit
	movq	1744(%rdi), %rax
	movq	%rax, (%rdx)
	leaq	368(%rsi), %rax
	movq	%rax, (%rcx)
	movq	(%rsi), %rax
	movl	$gx_dc_pattern, %ecx
	cmpq	%rcx, %rax
	sete	%cl
	movl	$gx_dc_pure_masked, %edx
	cmpq	%rdx, %rax
	sete	%dl
	orb	%cl, %dl
	movl	$gx_dc_pattern2, %ecx
	cmpq	%rcx, %rax
	sete	%al
	orb	%dl, %al
	movzbl	%al, %eax
	retq
.LBB6_5:                                # %if.end
	movq	$0, (%rdx)
	movq	$0, (%rcx)
	movl	$2, %eax
	retq
.Lfunc_end6:
	.size	gx_hld_get_color_space_and_ccolor, .Lfunc_end6-gx_hld_get_color_space_and_ccolor
	.cfi_endproc

	.globl	gx_hld_get_number_color_components
	.align	16, 0x90
	.type	gx_hld_get_number_color_components,@function
gx_hld_get_number_color_components:     # @gx_hld_get_number_color_components
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	testq	%rdi, %rdi
	je	.LBB7_3
# BB#1:                                 # %lor.lhs.false.i
	cmpl	$0, (%rdi)
	je	.LBB7_3
# BB#2:                                 # %if.then
	movq	1744(%rdi), %rdi
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	sarl	$31, %eax
	xorl	%ecx, %eax
.LBB7_3:                                # %cleanup
	popq	%rdx
	retq
.Lfunc_end7:
	.size	gx_hld_get_number_color_components, .Lfunc_end7-gx_hld_get_number_color_components
	.cfi_endproc

	.globl	gx_hld_get_color_component
	.align	16, 0x90
	.type	gx_hld_get_color_component,@function
gx_hld_get_color_component:             # @gx_hld_get_color_component
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 48
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movl	$2, %ebp
	testq	%rbx, %rbx
	je	.LBB8_8
# BB#1:                                 # %land.lhs.true
	testq	%rdi, %rdi
	je	.LBB8_8
# BB#2:                                 # %land.lhs.true
	movl	360(%rbx), %eax
	testl	%eax, %eax
	je	.LBB8_8
# BB#3:                                 # %lor.lhs.false.i.i
	cmpl	$0, (%rdi)
	je	.LBB8_8
# BB#4:                                 # %gx_hld_get_number_color_components.exit
	movq	1744(%rdi), %rdi
	callq	gs_color_space_num_components
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%eax, %ecx
	js	.LBB8_8
# BB#5:                                 # %if.end
	movl	$3, %ebp
	testl	%r15d, %r15d
	js	.LBB8_8
# BB#6:                                 # %if.end
	cmpl	%r15d, %ecx
	jle	.LBB8_8
# BB#7:                                 # %if.end.6
	movslq	%r15d, %rax
	movl	376(%rbx,%rax,4), %eax
	movl	%eax, (%r14)
	movl	$1, %ebp
.LBB8_8:                                # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gx_hld_get_color_component, .Lfunc_end8-gx_hld_get_color_component
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
