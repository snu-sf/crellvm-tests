	.text
	.file	"gimpparamspecs.bc"
	.globl	gimp_int32_get_type
	.align	16, 0x90
	.type	gimp_int32_get_type,@function
gimp_int32_get_type:                    # @gimp_int32_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_int32_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str, %rsi
	movabsq	$gimp_int32_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_int32_get_type.type
.LBB0_2:                                # %if.end
	movq	gimp_int32_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_int32_get_type, .Lfunc_end0-gimp_int32_get_type
	.cfi_endproc

	.globl	gimp_param_int32_get_type
	.align	16, 0x90
	.type	gimp_param_int32_get_type,@function
gimp_param_int32_get_type:              # @gimp_param_int32_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_int32_get_type.type
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rsi
	movabsq	$gimp_param_int32_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_int32_get_type.type
.LBB1_2:                                # %if.end
	movq	gimp_param_int32_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_param_int32_get_type, .Lfunc_end1-gimp_param_int32_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int32_class_init,@function
gimp_param_int32_class_init:            # @gimp_param_int32_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_int32_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_param_int32_class_init, .Lfunc_end2-gimp_param_int32_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int32_init,@function
gimp_param_int32_init:                  # @gimp_param_int32_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_param_int32_init, .Lfunc_end3-gimp_param_int32_init
	.cfi_endproc

	.globl	gimp_param_spec_int32
	.align	16, 0x90
	.type	gimp_param_spec_int32,@function
gimp_param_spec_int32:                  # @gimp_param_spec_int32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-2147483648, -36(%rbp) # imm = 0xFFFFFFFF80000000
	jl	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_int32, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_17
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpl	$2147483647, -40(%rbp)  # imm = 0x7FFFFFFF
	jg	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_int32, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_17
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.7
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB4_14
# BB#12:                                # %land.lhs.true
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB4_14
# BB#13:                                # %if.then.10
	jmp	.LBB4_15
.LBB4_14:                               # %if.else.11
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_int32, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_17
.LBB4_15:                               # %if.end.12
	jmp	.LBB4_16
.LBB4_16:                               # %do.end.13
	callq	gimp_param_int32_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 72(%rax)
	movl	-40(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 76(%rax)
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 80(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_param_spec_int32, .Lfunc_end4-gimp_param_spec_int32
	.cfi_endproc

	.globl	gimp_int16_get_type
	.align	16, 0x90
	.type	gimp_int16_get_type,@function
gimp_int16_get_type:                    # @gimp_int16_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_int16_get_type.type
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_int16_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_int16_get_type.type
.LBB5_2:                                # %if.end
	movq	gimp_int16_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_int16_get_type, .Lfunc_end5-gimp_int16_get_type
	.cfi_endproc

	.globl	gimp_param_int16_get_type
	.align	16, 0x90
	.type	gimp_param_int16_get_type,@function
gimp_param_int16_get_type:              # @gimp_param_int16_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_int16_get_type.type
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_param_int16_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_int16_get_type.type
.LBB6_2:                                # %if.end
	movq	gimp_param_int16_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_param_int16_get_type, .Lfunc_end6-gimp_param_int16_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int16_class_init,@function
gimp_param_int16_class_init:            # @gimp_param_int16_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_int16_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_param_int16_class_init, .Lfunc_end7-gimp_param_int16_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int16_init,@function
gimp_param_int16_init:                  # @gimp_param_int16_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_param_int16_init, .Lfunc_end8-gimp_param_int16_init
	.cfi_endproc

	.globl	gimp_param_spec_int16
	.align	16, 0x90
	.type	gimp_param_spec_int16,@function
gimp_param_spec_int16:                  # @gimp_param_spec_int16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-32768, -36(%rbp)      # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_int16, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_17
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.body.1
	cmpl	$32767, -40(%rbp)       # imm = 0x7FFF
	jg	.LBB9_8
# BB#7:                                 # %if.then.3
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.4
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_int16, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_17
.LBB9_9:                                # %if.end.5
	jmp	.LBB9_10
.LBB9_10:                               # %do.end.6
	jmp	.LBB9_11
.LBB9_11:                               # %do.body.7
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB9_14
# BB#12:                                # %land.lhs.true
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB9_14
# BB#13:                                # %if.then.10
	jmp	.LBB9_15
.LBB9_14:                               # %if.else.11
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_int16, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_17
.LBB9_15:                               # %if.end.12
	jmp	.LBB9_16
.LBB9_16:                               # %do.end.13
	callq	gimp_param_int16_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 72(%rax)
	movl	-40(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 76(%rax)
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 80(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB9_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_param_spec_int16, .Lfunc_end9-gimp_param_spec_int16
	.cfi_endproc

	.globl	gimp_int8_get_type
	.align	16, 0x90
	.type	gimp_int8_get_type,@function
gimp_int8_get_type:                     # @gimp_int8_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_int8_get_type.type
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$28, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_int8_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_int8_get_type.type
.LBB10_2:                               # %if.end
	movq	gimp_int8_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_int8_get_type, .Lfunc_end10-gimp_int8_get_type
	.cfi_endproc

	.globl	gimp_param_int8_get_type
	.align	16, 0x90
	.type	gimp_param_int8_get_type,@function
gimp_param_int8_get_type:               # @gimp_param_int8_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_int8_get_type.type
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_param_int8_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	32(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_int8_get_type.type
.LBB11_2:                               # %if.end
	movq	gimp_param_int8_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_param_int8_get_type, .Lfunc_end11-gimp_param_int8_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int8_class_init,@function
gimp_param_int8_class_init:             # @gimp_param_int8_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_int8_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_param_int8_class_init, .Lfunc_end12-gimp_param_int8_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int8_init,@function
gimp_param_int8_init:                   # @gimp_param_int8_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_param_int8_init, .Lfunc_end13-gimp_param_int8_init
	.cfi_endproc

	.globl	gimp_param_spec_int8
	.align	16, 0x90
	.type	gimp_param_spec_int8,@function
gimp_param_spec_int8:                   # @gimp_param_spec_int8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
# BB#1:                                 # %do.body
	cmpl	$255, -40(%rbp)
	ja	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_int8, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_12
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.body.1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.LBB14_9
# BB#7:                                 # %land.lhs.true
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	ja	.LBB14_9
# BB#8:                                 # %if.then.4
	jmp	.LBB14_10
.LBB14_9:                               # %if.else.5
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_int8, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_12
.LBB14_10:                              # %if.end.6
	jmp	.LBB14_11
.LBB14_11:                              # %do.end.7
	callq	gimp_param_int8_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -56(%rbp)
	movl	-36(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 72(%rax)
	movl	-40(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 76(%rax)
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 80(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB14_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_param_spec_int8, .Lfunc_end14-gimp_param_spec_int8
	.cfi_endproc

	.globl	gimp_param_string_get_type
	.align	16, 0x90
	.type	gimp_param_string_get_type,@function
gimp_param_string_get_type:             # @gimp_param_string_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_string_get_type.type
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_param_string_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	112(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_string_get_type.type
.LBB15_2:                               # %if.end
	movq	gimp_param_string_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_param_string_get_type, .Lfunc_end15-gimp_param_string_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_string_class_init,@function
gimp_param_string_class_init:           # @gimp_param_string_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movabsq	$gimp_param_string_validate, %rdi
	movq	%rax, gimp_param_string_parent_class
	movq	-8(%rbp), %rax
	movq	$64, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 32(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_param_string_class_init, .Lfunc_end16-gimp_param_string_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_string_init,@function
gimp_param_string_init:                 # @gimp_param_string_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_string_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	g_param_spec_types, %rsi
	movq	112(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movb	97(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 97(%rax)
	movq	-16(%rbp), %rax
	movb	104(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 104(%rax)
	movq	-16(%rbp), %rax
	movb	104(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 104(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_param_string_init, .Lfunc_end17-gimp_param_string_init
	.cfi_endproc

	.globl	gimp_param_spec_string
	.align	16, 0x90
	.type	gimp_param_spec_string,@function
gimp_param_spec_string:                 # @gimp_param_spec_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	%r10, -56(%rbp)
	movl	%eax, -60(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -40(%rbp)
	je	.LBB18_3
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	jne	.LBB18_4
.LBB18_3:                               # %if.then
	jmp	.LBB18_5
.LBB18_4:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_string, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_9
.LBB18_5:                               # %if.end
	jmp	.LBB18_6
.LBB18_6:                               # %do.end
	callq	gimp_param_string_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB18_8
# BB#7:                                 # %if.then.4
	movq	-72(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	112(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-72(%rbp), %rcx
	movq	g_param_spec_types, %rsi
	movq	112(%rsi), %rsi
	movq	%rcx, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 72(%rax)
	cmpl	$0, -40(%rbp)
	cmovnel	%r8d, %edx
	movq	-72(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	112(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movb	%r9b, %r10b
	movb	97(%rax), %r11b
	andb	$1, %r10b
	shlb	$1, %r10b
	andb	$-3, %r11b
	orb	%r10b, %r11b
	movb	%r11b, 97(%rax)
	cmpl	$0, -36(%rbp)
	movl	%edx, %r9d
	cmovnel	%r8d, %r9d
	movq	-72(%rbp), %rax
	movb	%r9b, %r10b
	movb	104(%rax), %r11b
	andb	$1, %r10b
	andb	$-2, %r11b
	orb	%r10b, %r11b
	movb	%r11b, 104(%rax)
	cmpl	$0, -44(%rbp)
	cmovnel	%r8d, %edx
	movq	-72(%rbp), %rax
	movb	%dl, %r10b
	movb	104(%rax), %r11b
	andb	$1, %r10b
	shlb	$1, %r10b
	andb	$-3, %r11b
	orb	%r10b, %r11b
	movb	%r11b, 104(%rax)
.LBB18_8:                               # %if.end.31
	movl	$76, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB18_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_param_spec_string, .Lfunc_end18-gimp_param_spec_string
	.cfi_endproc

	.globl	gimp_param_enum_get_type
	.align	16, 0x90
	.type	gimp_param_enum_get_type,@function
gimp_param_enum_get_type:               # @gimp_param_enum_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_enum_get_type.type
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_param_enum_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	80(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_enum_get_type.type
.LBB19_2:                               # %if.end
	movq	gimp_param_enum_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_param_enum_get_type, .Lfunc_end19-gimp_param_enum_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_enum_class_init,@function
gimp_param_enum_class_init:             # @gimp_param_enum_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	movabsq	$gimp_param_enum_validate, %rax
	movabsq	$gimp_param_enum_finalize, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$48, 8(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rcx, 16(%rdi)
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_param_enum_class_init, .Lfunc_end20-gimp_param_enum_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_enum_init,@function
gimp_param_enum_init:                   # @gimp_param_enum_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_param_enum_init, .Lfunc_end21-gimp_param_enum_init
	.cfi_endproc

	.globl	gimp_param_spec_enum
	.align	16, 0x90
	.type	gimp_param_spec_enum,@function
gimp_param_spec_enum:                   # @gimp_param_spec_enum
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rdi
	callq	g_type_fundamental
	cmpq	$48, %rax
	jne	.LBB22_3
# BB#2:                                 # %if.then
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_enum, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_11
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %do.end
	movq	-40(%rbp), %rdi
	callq	g_type_class_ref
	movq	%rax, -64(%rbp)
# BB#6:                                 # %do.body.2
	movq	-64(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	g_enum_get_value
	cmpq	$0, %rax
	je	.LBB22_8
# BB#7:                                 # %if.then.5
	jmp	.LBB22_9
.LBB22_8:                               # %if.else.6
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_enum, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB22_11
.LBB22_9:                               # %if.end.7
	jmp	.LBB22_10
.LBB22_10:                              # %do.end.8
	callq	gimp_param_enum_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	g_param_spec_types, %rdx
	movq	80(%rdx), %rsi
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 72(%rax)
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	80(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movl	$76, %r8d
	movl	%r8d, %esi
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movl	%r8d, 80(%rax)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB22_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_param_spec_enum, .Lfunc_end22-gimp_param_spec_enum
	.cfi_endproc

	.globl	gimp_param_spec_enum_exclude_value
	.align	16, 0x90
	.type	gimp_param_spec_enum_exclude_value,@function
gimp_param_spec_enum_exclude_value:     # @gimp_param_spec_enum_exclude_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_param_enum_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_enum_exclude_value, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_18
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	80(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	g_enum_get_value
	cmpq	$0, %rax
	je	.LBB23_15
# BB#14:                                # %if.then.15
	jmp	.LBB23_16
.LBB23_15:                              # %if.else.16
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_enum_exclude_value, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_18
.LBB23_16:                              # %if.end.17
	jmp	.LBB23_17
.LBB23_17:                              # %do.end.18
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	movslq	-12(%rbp), %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 88(%rsi)
.LBB23_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_param_spec_enum_exclude_value, .Lfunc_end23-gimp_param_spec_enum_exclude_value
	.cfi_endproc

	.globl	gimp_image_id_get_type
	.align	16, 0x90
	.type	gimp_image_id_get_type,@function
gimp_image_id_get_type:                 # @gimp_image_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_image_id_get_type.type
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_image_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_image_id_get_type.type
.LBB24_2:                               # %if.end
	movq	gimp_image_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_image_id_get_type, .Lfunc_end24-gimp_image_id_get_type
	.cfi_endproc

	.globl	gimp_param_image_id_get_type
	.align	16, 0x90
	.type	gimp_param_image_id_get_type,@function
gimp_param_image_id_get_type:           # @gimp_param_image_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_image_id_get_type.type
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_param_image_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_image_id_get_type.type
.LBB25_2:                               # %if.end
	movq	gimp_param_image_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_param_image_id_get_type, .Lfunc_end25-gimp_param_image_id_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_image_id_class_init,@function
gimp_param_image_id_class_init:         # @gimp_param_image_id_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_image_id_get_type
	movabsq	$gimp_param_image_id_values_cmp, %rdi
	movabsq	$gimp_param_image_id_validate, %rcx
	movabsq	$gimp_param_image_id_set_default, %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_param_image_id_class_init, .Lfunc_end26-gimp_param_image_id_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_image_id_init,@function
gimp_param_image_id_init:               # @gimp_param_image_id_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_image_id_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 96(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_param_image_id_init, .Lfunc_end27-gimp_param_image_id_init
	.cfi_endproc

	.globl	gimp_param_spec_image_id
	.align	16, 0x90
	.type	gimp_param_spec_image_id,@function
gimp_param_spec_image_id:               # @gimp_param_spec_image_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_image_id, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB28_13
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	callq	gimp_param_image_id_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpl	$0, -44(%rbp)
	cmovnel	%r9d, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 96(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB28_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_param_spec_image_id, .Lfunc_end28-gimp_param_spec_image_id
	.cfi_endproc

	.globl	gimp_value_get_image
	.align	16, 0x90
	.type	gimp_value_get_image,@function
gimp_value_get_image:                   # @gimp_value_get_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_id_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB29_7
.LBB29_3:                               # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB29_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB29_6
.LBB29_5:                               # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB29_6:                               # %if.end
	jmp	.LBB29_7
.LBB29_7:                               # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB29_9
# BB#8:                                 # %if.then.6
	jmp	.LBB29_10
.LBB29_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_image, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB29_24
.LBB29_10:                              # %if.end.8
	jmp	.LBB29_11
.LBB29_11:                              # %do.end
	jmp	.LBB29_12
.LBB29_12:                              # %do.body.9
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB29_14
# BB#13:                                # %if.then.17
	movl	$0, -68(%rbp)
	jmp	.LBB29_19
.LBB29_14:                              # %if.else.18
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_17
# BB#15:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB29_17
# BB#16:                                # %if.then.23
	movl	$1, -68(%rbp)
	jmp	.LBB29_18
.LBB29_17:                              # %if.else.24
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB29_18:                              # %if.end.26
	jmp	.LBB29_19
.LBB29_19:                              # %if.end.27
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB29_21
# BB#20:                                # %if.then.30
	jmp	.LBB29_22
.LBB29_21:                              # %if.else.31
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_image, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB29_24
.LBB29_22:                              # %if.end.32
	jmp	.LBB29_23
.LBB29_23:                              # %do.end.33
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_image_get_by_ID
	movq	%rax, -8(%rbp)
.LBB29_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_value_get_image, .Lfunc_end29-gimp_value_get_image
	.cfi_endproc

	.globl	gimp_value_set_image
	.align	16, 0x90
	.type	gimp_value_set_image,@function
gimp_value_set_image:                   # @gimp_value_set_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_id_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB30_7
.LBB30_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB30_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB30_6
.LBB30_5:                               # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB30_6:                               # %if.end
	jmp	.LBB30_7
.LBB30_7:                               # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB30_9
# BB#8:                                 # %if.then.6
	jmp	.LBB30_10
.LBB30_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_image, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_28
.LBB30_10:                              # %if.end.8
	jmp	.LBB30_11
.LBB30_11:                              # %do.end
	jmp	.LBB30_12
.LBB30_12:                              # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB30_21
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB30_15
# BB#14:                                # %if.then.18
	movl	$0, -60(%rbp)
	jmp	.LBB30_20
.LBB30_15:                              # %if.else.19
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_18
# BB#16:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB30_18
# BB#17:                                # %if.then.24
	movl	$1, -60(%rbp)
	jmp	.LBB30_19
.LBB30_18:                              # %if.else.25
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB30_19:                              # %if.end.27
	jmp	.LBB30_20
.LBB30_20:                              # %if.end.28
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB30_22
.LBB30_21:                              # %if.then.31
	jmp	.LBB30_23
.LBB30_22:                              # %if.else.32
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_image, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_28
.LBB30_23:                              # %if.end.33
	jmp	.LBB30_24
.LBB30_24:                              # %do.end.34
	cmpq	$0, -16(%rbp)
	je	.LBB30_26
# BB#25:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_ID
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB30_27
.LBB30_26:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB30_27
.LBB30_27:                              # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB30_28:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_value_set_image, .Lfunc_end30-gimp_value_set_image
	.cfi_endproc

	.globl	gimp_item_id_get_type
	.align	16, 0x90
	.type	gimp_item_id_get_type,@function
gimp_item_id_get_type:                  # @gimp_item_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_item_id_get_type.type
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_item_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_item_id_get_type.type
.LBB31_2:                               # %if.end
	movq	gimp_item_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_item_id_get_type, .Lfunc_end31-gimp_item_id_get_type
	.cfi_endproc

	.globl	gimp_param_item_id_get_type
	.align	16, 0x90
	.type	gimp_param_item_id_get_type,@function
gimp_param_item_id_get_type:            # @gimp_param_item_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_item_id_get_type.type
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_param_item_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_item_id_get_type.type
.LBB32_2:                               # %if.end
	movq	gimp_param_item_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_param_item_id_get_type, .Lfunc_end32-gimp_param_item_id_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_item_id_class_init,@function
gimp_param_item_id_class_init:          # @gimp_param_item_id_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_item_id_get_type
	movabsq	$gimp_param_item_id_values_cmp, %rdi
	movabsq	$gimp_param_item_id_validate, %rcx
	movabsq	$gimp_param_item_id_set_default, %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_param_item_id_class_init, .Lfunc_end33-gimp_param_item_id_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_item_id_init,@function
gimp_param_item_id_init:                # @gimp_param_item_id_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_item_id_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	callq	gimp_item_get_type
	movq	-16(%rbp), %rsi
	movq	%rax, 96(%rsi)
	movq	-16(%rbp), %rax
	movl	$0, 104(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_param_item_id_init, .Lfunc_end34-gimp_param_item_id_init
	.cfi_endproc

	.globl	gimp_param_spec_item_id
	.align	16, 0x90
	.type	gimp_param_spec_item_id,@function
gimp_param_spec_item_id:                # @gimp_param_spec_item_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_item_id, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB35_13
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	callq	gimp_param_item_id_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 104(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB35_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_param_spec_item_id, .Lfunc_end35-gimp_param_spec_item_id
	.cfi_endproc

	.globl	gimp_value_get_item
	.align	16, 0x90
	.type	gimp_value_get_item,@function
gimp_value_get_item:                    # @gimp_value_get_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_id_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB36_7
.LBB36_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB36_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB36_6
.LBB36_5:                               # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB36_6:                               # %if.end
	jmp	.LBB36_7
.LBB36_7:                               # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB36_9
# BB#8:                                 # %if.then.6
	jmp	.LBB36_10
.LBB36_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_item, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB36_34
.LBB36_10:                              # %if.end.8
	jmp	.LBB36_11
.LBB36_11:                              # %do.end
	jmp	.LBB36_12
.LBB36_12:                              # %do.body.9
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB36_14
# BB#13:                                # %if.then.17
	movl	$0, -76(%rbp)
	jmp	.LBB36_19
.LBB36_14:                              # %if.else.18
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_17
# BB#15:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB36_17
# BB#16:                                # %if.then.23
	movl	$1, -76(%rbp)
	jmp	.LBB36_18
.LBB36_17:                              # %if.else.24
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB36_18:                              # %if.end.26
	jmp	.LBB36_19
.LBB36_19:                              # %if.end.27
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB36_21
# BB#20:                                # %if.then.30
	jmp	.LBB36_22
.LBB36_21:                              # %if.else.31
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_item, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB36_34
.LBB36_22:                              # %if.end.32
	jmp	.LBB36_23
.LBB36_23:                              # %do.end.33
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB36_33
# BB#24:                                # %land.lhs.true.36
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB36_26
# BB#25:                                # %if.then.45
	movl	$0, -100(%rbp)
	jmp	.LBB36_31
.LBB36_26:                              # %if.else.46
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_29
# BB#27:                                # %land.lhs.true.49
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB36_29
# BB#28:                                # %if.then.53
	movl	$1, -100(%rbp)
	jmp	.LBB36_30
.LBB36_29:                              # %if.else.54
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB36_30:                              # %if.end.56
	jmp	.LBB36_31
.LBB36_31:                              # %if.end.57
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB36_33
# BB#32:                                # %if.then.60
	movq	$0, -8(%rbp)
	jmp	.LBB36_34
.LBB36_33:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB36_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_value_get_item, .Lfunc_end36-gimp_value_get_item
	.cfi_endproc

	.globl	gimp_value_set_item
	.align	16, 0x90
	.type	gimp_value_set_item,@function
gimp_value_set_item:                    # @gimp_value_set_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB37_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB37_4
# BB#3:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB37_9
.LBB37_4:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_7
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB37_7
# BB#6:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB37_8
.LBB37_7:                               # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB37_8:                               # %if.end
	jmp	.LBB37_9
.LBB37_9:                               # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB37_11
.LBB37_10:                              # %if.then.9
	jmp	.LBB37_12
.LBB37_11:                              # %if.else.10
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_item, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB37_134
.LBB37_12:                              # %if.end.11
	jmp	.LBB37_13
.LBB37_13:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_id_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB37_15
# BB#14:                                # %if.then.19
	movl	$0, -60(%rbp)
	jmp	.LBB37_19
.LBB37_15:                              # %if.else.20
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB37_17
# BB#16:                                # %if.then.23
	movl	$1, -60(%rbp)
	jmp	.LBB37_18
.LBB37_17:                              # %if.else.24
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -60(%rbp)
.LBB37_18:                              # %if.end.26
	jmp	.LBB37_19
.LBB37_19:                              # %if.end.27
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB37_24
# BB#20:                                # %if.then.30
	cmpq	$0, -16(%rbp)
	je	.LBB37_22
# BB#21:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_ID
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB37_23
.LBB37_22:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB37_23
.LBB37_23:                              # %cond.end
	movl	-356(%rbp), %eax        # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	jmp	.LBB37_134
.LBB37_24:                              # %if.else.33
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_id_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB37_26
# BB#25:                                # %if.then.42
	movl	$0, -84(%rbp)
	jmp	.LBB37_30
.LBB37_26:                              # %if.else.43
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB37_28
# BB#27:                                # %if.then.46
	movl	$1, -84(%rbp)
	jmp	.LBB37_29
.LBB37_28:                              # %if.else.47
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -84(%rbp)
.LBB37_29:                              # %if.end.49
	jmp	.LBB37_30
.LBB37_30:                              # %if.end.50
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB37_41
# BB#31:                                # %land.lhs.true.53
	cmpq	$0, -16(%rbp)
	je	.LBB37_40
# BB#32:                                # %lor.lhs.false.55
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB37_34
# BB#33:                                # %if.then.64
	movl	$0, -108(%rbp)
	jmp	.LBB37_39
.LBB37_34:                              # %if.else.65
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_37
# BB#35:                                # %land.lhs.true.68
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB37_37
# BB#36:                                # %if.then.72
	movl	$1, -108(%rbp)
	jmp	.LBB37_38
.LBB37_37:                              # %if.else.73
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB37_38:                              # %if.end.75
	jmp	.LBB37_39
.LBB37_39:                              # %if.end.76
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB37_41
.LBB37_40:                              # %if.then.79
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_value_set_drawable
	jmp	.LBB37_133
.LBB37_41:                              # %if.else.82
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_layer_id_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB37_43
# BB#42:                                # %if.then.91
	movl	$0, -132(%rbp)
	jmp	.LBB37_47
.LBB37_43:                              # %if.else.92
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB37_45
# BB#44:                                # %if.then.95
	movl	$1, -132(%rbp)
	jmp	.LBB37_46
.LBB37_45:                              # %if.else.96
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -132(%rbp)
.LBB37_46:                              # %if.end.98
	jmp	.LBB37_47
.LBB37_47:                              # %if.end.99
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB37_58
# BB#48:                                # %land.lhs.true.102
	cmpq	$0, -16(%rbp)
	je	.LBB37_57
# BB#49:                                # %lor.lhs.false.104
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB37_51
# BB#50:                                # %if.then.113
	movl	$0, -156(%rbp)
	jmp	.LBB37_56
.LBB37_51:                              # %if.else.114
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_54
# BB#52:                                # %land.lhs.true.117
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB37_54
# BB#53:                                # %if.then.121
	movl	$1, -156(%rbp)
	jmp	.LBB37_55
.LBB37_54:                              # %if.else.122
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB37_55:                              # %if.end.124
	jmp	.LBB37_56
.LBB37_56:                              # %if.end.125
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB37_58
.LBB37_57:                              # %if.then.128
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_value_set_layer
	jmp	.LBB37_132
.LBB37_58:                              # %if.else.131
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_channel_id_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB37_60
# BB#59:                                # %if.then.140
	movl	$0, -180(%rbp)
	jmp	.LBB37_64
.LBB37_60:                              # %if.else.141
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB37_62
# BB#61:                                # %if.then.144
	movl	$1, -180(%rbp)
	jmp	.LBB37_63
.LBB37_62:                              # %if.else.145
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -180(%rbp)
.LBB37_63:                              # %if.end.147
	jmp	.LBB37_64
.LBB37_64:                              # %if.end.148
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB37_75
# BB#65:                                # %land.lhs.true.151
	cmpq	$0, -16(%rbp)
	je	.LBB37_74
# BB#66:                                # %lor.lhs.false.153
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB37_68
# BB#67:                                # %if.then.162
	movl	$0, -204(%rbp)
	jmp	.LBB37_73
.LBB37_68:                              # %if.else.163
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_71
# BB#69:                                # %land.lhs.true.166
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB37_71
# BB#70:                                # %if.then.170
	movl	$1, -204(%rbp)
	jmp	.LBB37_72
.LBB37_71:                              # %if.else.171
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB37_72:                              # %if.end.173
	jmp	.LBB37_73
.LBB37_73:                              # %if.end.174
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB37_75
.LBB37_74:                              # %if.then.177
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_value_set_channel
	jmp	.LBB37_131
.LBB37_75:                              # %if.else.180
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_layer_mask_id_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB37_77
# BB#76:                                # %if.then.189
	movl	$0, -228(%rbp)
	jmp	.LBB37_81
.LBB37_77:                              # %if.else.190
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB37_79
# BB#78:                                # %if.then.193
	movl	$1, -228(%rbp)
	jmp	.LBB37_80
.LBB37_79:                              # %if.else.194
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -228(%rbp)
.LBB37_80:                              # %if.end.196
	jmp	.LBB37_81
.LBB37_81:                              # %if.end.197
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB37_92
# BB#82:                                # %land.lhs.true.200
	cmpq	$0, -16(%rbp)
	je	.LBB37_91
# BB#83:                                # %lor.lhs.false.202
	movq	-16(%rbp), %rax
	movq	%rax, -240(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -248(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB37_85
# BB#84:                                # %if.then.211
	movl	$0, -252(%rbp)
	jmp	.LBB37_90
.LBB37_85:                              # %if.else.212
	movq	-240(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_88
# BB#86:                                # %land.lhs.true.215
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-248(%rbp), %rax
	jne	.LBB37_88
# BB#87:                                # %if.then.219
	movl	$1, -252(%rbp)
	jmp	.LBB37_89
.LBB37_88:                              # %if.else.220
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -252(%rbp)
.LBB37_89:                              # %if.end.222
	jmp	.LBB37_90
.LBB37_90:                              # %if.end.223
	movl	-252(%rbp), %eax
	movl	%eax, -256(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB37_92
.LBB37_91:                              # %if.then.226
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_value_set_layer_mask
	jmp	.LBB37_130
.LBB37_92:                              # %if.else.229
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)
	callq	gimp_selection_id_get_type
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB37_94
# BB#93:                                # %if.then.238
	movl	$0, -276(%rbp)
	jmp	.LBB37_98
.LBB37_94:                              # %if.else.239
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB37_96
# BB#95:                                # %if.then.242
	movl	$1, -276(%rbp)
	jmp	.LBB37_97
.LBB37_96:                              # %if.else.243
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -276(%rbp)
.LBB37_97:                              # %if.end.245
	jmp	.LBB37_98
.LBB37_98:                              # %if.end.246
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB37_109
# BB#99:                                # %land.lhs.true.249
	cmpq	$0, -16(%rbp)
	je	.LBB37_108
# BB#100:                               # %lor.lhs.false.251
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB37_102
# BB#101:                               # %if.then.260
	movl	$0, -300(%rbp)
	jmp	.LBB37_107
.LBB37_102:                             # %if.else.261
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_105
# BB#103:                               # %land.lhs.true.264
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB37_105
# BB#104:                               # %if.then.268
	movl	$1, -300(%rbp)
	jmp	.LBB37_106
.LBB37_105:                             # %if.else.269
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB37_106:                             # %if.end.271
	jmp	.LBB37_107
.LBB37_107:                             # %if.end.272
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB37_109
.LBB37_108:                             # %if.then.275
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_value_set_selection
	jmp	.LBB37_129
.LBB37_109:                             # %if.else.278
	movq	-8(%rbp), %rax
	movq	%rax, -312(%rbp)
	callq	gimp_vectors_id_get_type
	movq	%rax, -320(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.LBB37_111
# BB#110:                               # %if.then.287
	movl	$0, -324(%rbp)
	jmp	.LBB37_115
.LBB37_111:                             # %if.else.288
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB37_113
# BB#112:                               # %if.then.291
	movl	$1, -324(%rbp)
	jmp	.LBB37_114
.LBB37_113:                             # %if.else.292
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -324(%rbp)
.LBB37_114:                             # %if.end.294
	jmp	.LBB37_115
.LBB37_115:                             # %if.end.295
	movl	-324(%rbp), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB37_126
# BB#116:                               # %land.lhs.true.298
	cmpq	$0, -16(%rbp)
	je	.LBB37_125
# BB#117:                               # %lor.lhs.false.300
	movq	-16(%rbp), %rax
	movq	%rax, -336(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -344(%rbp)
	cmpq	$0, -336(%rbp)
	jne	.LBB37_119
# BB#118:                               # %if.then.309
	movl	$0, -348(%rbp)
	jmp	.LBB37_124
.LBB37_119:                             # %if.else.310
	movq	-336(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_122
# BB#120:                               # %land.lhs.true.313
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-344(%rbp), %rax
	jne	.LBB37_122
# BB#121:                               # %if.then.317
	movl	$1, -348(%rbp)
	jmp	.LBB37_123
.LBB37_122:                             # %if.else.318
	movq	-336(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -348(%rbp)
.LBB37_123:                             # %if.end.320
	jmp	.LBB37_124
.LBB37_124:                             # %if.end.321
	movl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
	cmpl	$0, -352(%rbp)
	je	.LBB37_126
.LBB37_125:                             # %if.then.324
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_value_set_vectors
	jmp	.LBB37_128
.LBB37_126:                             # %if.else.327
	jmp	.LBB37_127
.LBB37_127:                             # %do.body.328
	movabsq	$.L.str.2, %rdi
	movl	$8, %esi
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.30, %rcx
	movl	$953, %r8d              # imm = 0x3B9
	movabsq	$.L__func__.gimp_value_set_item, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB37_134
.LBB37_128:                             # %if.end.330
	jmp	.LBB37_129
.LBB37_129:                             # %if.end.331
	jmp	.LBB37_130
.LBB37_130:                             # %if.end.332
	jmp	.LBB37_131
.LBB37_131:                             # %if.end.333
	jmp	.LBB37_132
.LBB37_132:                             # %if.end.334
	jmp	.LBB37_133
.LBB37_133:                             # %if.end.335
	jmp	.LBB37_134
.LBB37_134:                             # %if.end.336
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_value_set_item, .Lfunc_end37-gimp_value_set_item
	.cfi_endproc

	.globl	gimp_drawable_id_get_type
	.align	16, 0x90
	.type	gimp_drawable_id_get_type,@function
gimp_drawable_id_get_type:              # @gimp_drawable_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_drawable_id_get_type.type
	jne	.LBB38_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_drawable_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_drawable_id_get_type.type
.LBB38_2:                               # %if.end
	movq	gimp_drawable_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_drawable_id_get_type, .Lfunc_end38-gimp_drawable_id_get_type
	.cfi_endproc

	.globl	gimp_value_set_drawable
	.align	16, 0x90
	.type	gimp_value_set_drawable,@function
gimp_value_set_drawable:                # @gimp_value_set_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_id_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB39_7
.LBB39_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB39_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB39_6
.LBB39_5:                               # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB39_6:                               # %if.end
	jmp	.LBB39_7
.LBB39_7:                               # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB39_9
# BB#8:                                 # %if.then.6
	jmp	.LBB39_10
.LBB39_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_drawable, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB39_28
.LBB39_10:                              # %if.end.8
	jmp	.LBB39_11
.LBB39_11:                              # %do.end
	jmp	.LBB39_12
.LBB39_12:                              # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB39_21
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB39_15
# BB#14:                                # %if.then.18
	movl	$0, -60(%rbp)
	jmp	.LBB39_20
.LBB39_15:                              # %if.else.19
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_18
# BB#16:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB39_18
# BB#17:                                # %if.then.24
	movl	$1, -60(%rbp)
	jmp	.LBB39_19
.LBB39_18:                              # %if.else.25
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB39_19:                              # %if.end.27
	jmp	.LBB39_20
.LBB39_20:                              # %if.end.28
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB39_22
.LBB39_21:                              # %if.then.31
	jmp	.LBB39_23
.LBB39_22:                              # %if.else.32
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_drawable, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB39_28
.LBB39_23:                              # %if.end.33
	jmp	.LBB39_24
.LBB39_24:                              # %do.end.34
	cmpq	$0, -16(%rbp)
	je	.LBB39_26
# BB#25:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB39_27
.LBB39_26:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB39_27
.LBB39_27:                              # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB39_28:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_value_set_drawable, .Lfunc_end39-gimp_value_set_drawable
	.cfi_endproc

	.globl	gimp_layer_id_get_type
	.align	16, 0x90
	.type	gimp_layer_id_get_type,@function
gimp_layer_id_get_type:                 # @gimp_layer_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_layer_id_get_type.type
	jne	.LBB40_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_layer_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_layer_id_get_type.type
.LBB40_2:                               # %if.end
	movq	gimp_layer_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_layer_id_get_type, .Lfunc_end40-gimp_layer_id_get_type
	.cfi_endproc

	.globl	gimp_value_set_layer
	.align	16, 0x90
	.type	gimp_value_set_layer,@function
gimp_value_set_layer:                   # @gimp_value_set_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_id_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB41_7
.LBB41_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB41_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB41_6
.LBB41_5:                               # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB41_6:                               # %if.end
	jmp	.LBB41_7
.LBB41_7:                               # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB41_9
# BB#8:                                 # %if.then.6
	jmp	.LBB41_10
.LBB41_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_layer, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB41_28
.LBB41_10:                              # %if.end.8
	jmp	.LBB41_11
.LBB41_11:                              # %do.end
	jmp	.LBB41_12
.LBB41_12:                              # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB41_21
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB41_15
# BB#14:                                # %if.then.18
	movl	$0, -60(%rbp)
	jmp	.LBB41_20
.LBB41_15:                              # %if.else.19
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_18
# BB#16:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB41_18
# BB#17:                                # %if.then.24
	movl	$1, -60(%rbp)
	jmp	.LBB41_19
.LBB41_18:                              # %if.else.25
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB41_19:                              # %if.end.27
	jmp	.LBB41_20
.LBB41_20:                              # %if.end.28
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB41_22
.LBB41_21:                              # %if.then.31
	jmp	.LBB41_23
.LBB41_22:                              # %if.else.32
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_layer, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB41_28
.LBB41_23:                              # %if.end.33
	jmp	.LBB41_24
.LBB41_24:                              # %do.end.34
	cmpq	$0, -16(%rbp)
	je	.LBB41_26
# BB#25:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB41_27
.LBB41_26:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB41_27
.LBB41_27:                              # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB41_28:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_value_set_layer, .Lfunc_end41-gimp_value_set_layer
	.cfi_endproc

	.globl	gimp_channel_id_get_type
	.align	16, 0x90
	.type	gimp_channel_id_get_type,@function
gimp_channel_id_get_type:               # @gimp_channel_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_channel_id_get_type.type
	jne	.LBB42_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_channel_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_channel_id_get_type.type
.LBB42_2:                               # %if.end
	movq	gimp_channel_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_channel_id_get_type, .Lfunc_end42-gimp_channel_id_get_type
	.cfi_endproc

	.globl	gimp_value_set_channel
	.align	16, 0x90
	.type	gimp_value_set_channel,@function
gimp_value_set_channel:                 # @gimp_value_set_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_id_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB43_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB43_7
.LBB43_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB43_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB43_6
.LBB43_5:                               # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB43_6:                               # %if.end
	jmp	.LBB43_7
.LBB43_7:                               # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB43_9
# BB#8:                                 # %if.then.6
	jmp	.LBB43_10
.LBB43_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_channel, %rsi
	movabsq	$.L.str.41, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB43_28
.LBB43_10:                              # %if.end.8
	jmp	.LBB43_11
.LBB43_11:                              # %do.end
	jmp	.LBB43_12
.LBB43_12:                              # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB43_21
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB43_15
# BB#14:                                # %if.then.18
	movl	$0, -60(%rbp)
	jmp	.LBB43_20
.LBB43_15:                              # %if.else.19
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB43_18
# BB#16:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB43_18
# BB#17:                                # %if.then.24
	movl	$1, -60(%rbp)
	jmp	.LBB43_19
.LBB43_18:                              # %if.else.25
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB43_19:                              # %if.end.27
	jmp	.LBB43_20
.LBB43_20:                              # %if.end.28
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB43_22
.LBB43_21:                              # %if.then.31
	jmp	.LBB43_23
.LBB43_22:                              # %if.else.32
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_channel, %rsi
	movabsq	$.L.str.42, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB43_28
.LBB43_23:                              # %if.end.33
	jmp	.LBB43_24
.LBB43_24:                              # %do.end.34
	cmpq	$0, -16(%rbp)
	je	.LBB43_26
# BB#25:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB43_27
.LBB43_26:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB43_27
.LBB43_27:                              # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB43_28:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_value_set_channel, .Lfunc_end43-gimp_value_set_channel
	.cfi_endproc

	.globl	gimp_layer_mask_id_get_type
	.align	16, 0x90
	.type	gimp_layer_mask_id_get_type,@function
gimp_layer_mask_id_get_type:            # @gimp_layer_mask_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_layer_mask_id_get_type.type
	jne	.LBB44_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_layer_mask_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_layer_mask_id_get_type.type
.LBB44_2:                               # %if.end
	movq	gimp_layer_mask_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_layer_mask_id_get_type, .Lfunc_end44-gimp_layer_mask_id_get_type
	.cfi_endproc

	.globl	gimp_value_set_layer_mask
	.align	16, 0x90
	.type	gimp_value_set_layer_mask,@function
gimp_value_set_layer_mask:              # @gimp_value_set_layer_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_mask_id_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB45_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB45_7
.LBB45_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB45_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB45_6
.LBB45_5:                               # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB45_6:                               # %if.end
	jmp	.LBB45_7
.LBB45_7:                               # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB45_9
# BB#8:                                 # %if.then.6
	jmp	.LBB45_10
.LBB45_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_layer_mask, %rsi
	movabsq	$.L.str.45, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_28
.LBB45_10:                              # %if.end.8
	jmp	.LBB45_11
.LBB45_11:                              # %do.end
	jmp	.LBB45_12
.LBB45_12:                              # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB45_21
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB45_15
# BB#14:                                # %if.then.18
	movl	$0, -60(%rbp)
	jmp	.LBB45_20
.LBB45_15:                              # %if.else.19
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_18
# BB#16:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB45_18
# BB#17:                                # %if.then.24
	movl	$1, -60(%rbp)
	jmp	.LBB45_19
.LBB45_18:                              # %if.else.25
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB45_19:                              # %if.end.27
	jmp	.LBB45_20
.LBB45_20:                              # %if.end.28
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB45_22
.LBB45_21:                              # %if.then.31
	jmp	.LBB45_23
.LBB45_22:                              # %if.else.32
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_layer_mask, %rsi
	movabsq	$.L.str.46, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB45_28
.LBB45_23:                              # %if.end.33
	jmp	.LBB45_24
.LBB45_24:                              # %do.end.34
	cmpq	$0, -16(%rbp)
	je	.LBB45_26
# BB#25:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB45_27
.LBB45_26:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB45_27
.LBB45_27:                              # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB45_28:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_value_set_layer_mask, .Lfunc_end45-gimp_value_set_layer_mask
	.cfi_endproc

	.globl	gimp_selection_id_get_type
	.align	16, 0x90
	.type	gimp_selection_id_get_type,@function
gimp_selection_id_get_type:             # @gimp_selection_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_selection_id_get_type.type
	jne	.LBB46_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_selection_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_selection_id_get_type.type
.LBB46_2:                               # %if.end
	movq	gimp_selection_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_selection_id_get_type, .Lfunc_end46-gimp_selection_id_get_type
	.cfi_endproc

	.globl	gimp_value_set_selection
	.align	16, 0x90
	.type	gimp_value_set_selection,@function
gimp_value_set_selection:               # @gimp_value_set_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_selection_id_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB47_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB47_7
.LBB47_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB47_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB47_6
.LBB47_5:                               # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB47_6:                               # %if.end
	jmp	.LBB47_7
.LBB47_7:                               # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB47_9
# BB#8:                                 # %if.then.6
	jmp	.LBB47_10
.LBB47_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_selection, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB47_28
.LBB47_10:                              # %if.end.8
	jmp	.LBB47_11
.LBB47_11:                              # %do.end
	jmp	.LBB47_12
.LBB47_12:                              # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB47_21
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB47_15
# BB#14:                                # %if.then.18
	movl	$0, -60(%rbp)
	jmp	.LBB47_20
.LBB47_15:                              # %if.else.19
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB47_18
# BB#16:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB47_18
# BB#17:                                # %if.then.24
	movl	$1, -60(%rbp)
	jmp	.LBB47_19
.LBB47_18:                              # %if.else.25
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB47_19:                              # %if.end.27
	jmp	.LBB47_20
.LBB47_20:                              # %if.end.28
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB47_22
.LBB47_21:                              # %if.then.31
	jmp	.LBB47_23
.LBB47_22:                              # %if.else.32
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_selection, %rsi
	movabsq	$.L.str.50, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB47_28
.LBB47_23:                              # %if.end.33
	jmp	.LBB47_24
.LBB47_24:                              # %do.end.34
	cmpq	$0, -16(%rbp)
	je	.LBB47_26
# BB#25:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB47_27
.LBB47_26:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB47_27
.LBB47_27:                              # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB47_28:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_value_set_selection, .Lfunc_end47-gimp_value_set_selection
	.cfi_endproc

	.globl	gimp_vectors_id_get_type
	.align	16, 0x90
	.type	gimp_vectors_id_get_type,@function
gimp_vectors_id_get_type:               # @gimp_vectors_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_vectors_id_get_type.type
	jne	.LBB48_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_vectors_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_vectors_id_get_type.type
.LBB48_2:                               # %if.end
	movq	gimp_vectors_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_vectors_id_get_type, .Lfunc_end48-gimp_vectors_id_get_type
	.cfi_endproc

	.globl	gimp_value_set_vectors
	.align	16, 0x90
	.type	gimp_value_set_vectors,@function
gimp_value_set_vectors:                 # @gimp_value_set_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_vectors_id_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB49_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB49_7
.LBB49_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB49_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB49_6
.LBB49_5:                               # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB49_6:                               # %if.end
	jmp	.LBB49_7
.LBB49_7:                               # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB49_9
# BB#8:                                 # %if.then.6
	jmp	.LBB49_10
.LBB49_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_vectors, %rsi
	movabsq	$.L.str.53, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB49_28
.LBB49_10:                              # %if.end.8
	jmp	.LBB49_11
.LBB49_11:                              # %do.end
	jmp	.LBB49_12
.LBB49_12:                              # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB49_21
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB49_15
# BB#14:                                # %if.then.18
	movl	$0, -60(%rbp)
	jmp	.LBB49_20
.LBB49_15:                              # %if.else.19
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB49_18
# BB#16:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB49_18
# BB#17:                                # %if.then.24
	movl	$1, -60(%rbp)
	jmp	.LBB49_19
.LBB49_18:                              # %if.else.25
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB49_19:                              # %if.end.27
	jmp	.LBB49_20
.LBB49_20:                              # %if.end.28
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB49_22
.LBB49_21:                              # %if.then.31
	jmp	.LBB49_23
.LBB49_22:                              # %if.else.32
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_vectors, %rsi
	movabsq	$.L.str.54, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB49_28
.LBB49_23:                              # %if.end.33
	jmp	.LBB49_24
.LBB49_24:                              # %do.end.34
	cmpq	$0, -16(%rbp)
	je	.LBB49_26
# BB#25:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB49_27
.LBB49_26:                              # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB49_27
.LBB49_27:                              # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB49_28:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_value_set_vectors, .Lfunc_end49-gimp_value_set_vectors
	.cfi_endproc

	.globl	gimp_param_drawable_id_get_type
	.align	16, 0x90
	.type	gimp_param_drawable_id_get_type,@function
gimp_param_drawable_id_get_type:        # @gimp_param_drawable_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_drawable_id_get_type.type
	jne	.LBB50_2
# BB#1:                                 # %if.then
	callq	gimp_param_item_id_get_type
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_param_drawable_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_drawable_id_get_type.type
.LBB50_2:                               # %if.end
	movq	gimp_param_drawable_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_param_drawable_id_get_type, .Lfunc_end50-gimp_param_drawable_id_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_drawable_id_class_init,@function
gimp_param_drawable_id_class_init:      # @gimp_param_drawable_id_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_drawable_id_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_param_drawable_id_class_init, .Lfunc_end51-gimp_param_drawable_id_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_drawable_id_init,@function
gimp_param_drawable_id_init:            # @gimp_param_drawable_id_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_item_id_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_drawable_get_type
	movq	-16(%rbp), %rsi
	movq	%rax, 96(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_param_drawable_id_init, .Lfunc_end52-gimp_param_drawable_id_init
	.cfi_endproc

	.globl	gimp_param_spec_drawable_id
	.align	16, 0x90
	.type	gimp_param_spec_drawable_id,@function
gimp_param_spec_drawable_id:            # @gimp_param_spec_drawable_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB53_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB53_8
.LBB53_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB53_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB53_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB53_7
.LBB53_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB53_7:                               # %if.end
	jmp	.LBB53_8
.LBB53_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB53_10
# BB#9:                                 # %if.then.8
	jmp	.LBB53_11
.LBB53_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_drawable_id, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB53_13
.LBB53_11:                              # %if.end.10
	jmp	.LBB53_12
.LBB53_12:                              # %do.end
	callq	gimp_param_drawable_id_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpl	$0, -44(%rbp)
	cmovnel	%r9d, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 104(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB53_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_param_spec_drawable_id, .Lfunc_end53-gimp_param_spec_drawable_id
	.cfi_endproc

	.globl	gimp_value_get_drawable
	.align	16, 0x90
	.type	gimp_value_get_drawable,@function
gimp_value_get_drawable:                # @gimp_value_get_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_drawable_id_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB54_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB54_7
.LBB54_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB54_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB54_6
.LBB54_5:                               # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB54_6:                               # %if.end
	jmp	.LBB54_7
.LBB54_7:                               # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB54_9
# BB#8:                                 # %if.then.6
	jmp	.LBB54_10
.LBB54_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_drawable, %rsi
	movabsq	$.L.str.33, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB54_34
.LBB54_10:                              # %if.end.8
	jmp	.LBB54_11
.LBB54_11:                              # %do.end
	jmp	.LBB54_12
.LBB54_12:                              # %do.body.9
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB54_14
# BB#13:                                # %if.then.17
	movl	$0, -76(%rbp)
	jmp	.LBB54_19
.LBB54_14:                              # %if.else.18
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB54_17
# BB#15:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB54_17
# BB#16:                                # %if.then.23
	movl	$1, -76(%rbp)
	jmp	.LBB54_18
.LBB54_17:                              # %if.else.24
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB54_18:                              # %if.end.26
	jmp	.LBB54_19
.LBB54_19:                              # %if.end.27
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB54_21
# BB#20:                                # %if.then.30
	jmp	.LBB54_22
.LBB54_21:                              # %if.else.31
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_drawable, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB54_34
.LBB54_22:                              # %if.end.32
	jmp	.LBB54_23
.LBB54_23:                              # %do.end.33
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB54_33
# BB#24:                                # %land.lhs.true.36
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB54_26
# BB#25:                                # %if.then.45
	movl	$0, -100(%rbp)
	jmp	.LBB54_31
.LBB54_26:                              # %if.else.46
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB54_29
# BB#27:                                # %land.lhs.true.49
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB54_29
# BB#28:                                # %if.then.53
	movl	$1, -100(%rbp)
	jmp	.LBB54_30
.LBB54_29:                              # %if.else.54
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB54_30:                              # %if.end.56
	jmp	.LBB54_31
.LBB54_31:                              # %if.end.57
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB54_33
# BB#32:                                # %if.then.60
	movq	$0, -8(%rbp)
	jmp	.LBB54_34
.LBB54_33:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB54_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_value_get_drawable, .Lfunc_end54-gimp_value_get_drawable
	.cfi_endproc

	.globl	gimp_param_layer_id_get_type
	.align	16, 0x90
	.type	gimp_param_layer_id_get_type,@function
gimp_param_layer_id_get_type:           # @gimp_param_layer_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_layer_id_get_type.type
	jne	.LBB55_2
# BB#1:                                 # %if.then
	callq	gimp_param_drawable_id_get_type
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_param_layer_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_layer_id_get_type.type
.LBB55_2:                               # %if.end
	movq	gimp_param_layer_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_param_layer_id_get_type, .Lfunc_end55-gimp_param_layer_id_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_layer_id_class_init,@function
gimp_param_layer_id_class_init:         # @gimp_param_layer_id_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_layer_id_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_param_layer_id_class_init, .Lfunc_end56-gimp_param_layer_id_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_layer_id_init,@function
gimp_param_layer_id_init:               # @gimp_param_layer_id_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_item_id_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_layer_get_type
	movq	-16(%rbp), %rsi
	movq	%rax, 96(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_param_layer_id_init, .Lfunc_end57-gimp_param_layer_id_init
	.cfi_endproc

	.globl	gimp_param_spec_layer_id
	.align	16, 0x90
	.type	gimp_param_spec_layer_id,@function
gimp_param_spec_layer_id:               # @gimp_param_spec_layer_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB58_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB58_8
.LBB58_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB58_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB58_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB58_7
.LBB58_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB58_7:                               # %if.end
	jmp	.LBB58_8
.LBB58_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB58_10
# BB#9:                                 # %if.then.8
	jmp	.LBB58_11
.LBB58_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_layer_id, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB58_13
.LBB58_11:                              # %if.end.10
	jmp	.LBB58_12
.LBB58_12:                              # %do.end
	callq	gimp_param_layer_id_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpl	$0, -44(%rbp)
	cmovnel	%r9d, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 104(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB58_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_param_spec_layer_id, .Lfunc_end58-gimp_param_spec_layer_id
	.cfi_endproc

	.globl	gimp_value_get_layer
	.align	16, 0x90
	.type	gimp_value_get_layer,@function
gimp_value_get_layer:                   # @gimp_value_get_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_layer_id_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB59_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB59_7
.LBB59_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB59_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB59_6
.LBB59_5:                               # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB59_6:                               # %if.end
	jmp	.LBB59_7
.LBB59_7:                               # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB59_9
# BB#8:                                 # %if.then.6
	jmp	.LBB59_10
.LBB59_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_layer, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB59_34
.LBB59_10:                              # %if.end.8
	jmp	.LBB59_11
.LBB59_11:                              # %do.end
	jmp	.LBB59_12
.LBB59_12:                              # %do.body.9
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB59_14
# BB#13:                                # %if.then.17
	movl	$0, -76(%rbp)
	jmp	.LBB59_19
.LBB59_14:                              # %if.else.18
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB59_17
# BB#15:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB59_17
# BB#16:                                # %if.then.23
	movl	$1, -76(%rbp)
	jmp	.LBB59_18
.LBB59_17:                              # %if.else.24
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB59_18:                              # %if.end.26
	jmp	.LBB59_19
.LBB59_19:                              # %if.end.27
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB59_21
# BB#20:                                # %if.then.30
	jmp	.LBB59_22
.LBB59_21:                              # %if.else.31
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_layer, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB59_34
.LBB59_22:                              # %if.end.32
	jmp	.LBB59_23
.LBB59_23:                              # %do.end.33
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB59_33
# BB#24:                                # %land.lhs.true.36
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB59_26
# BB#25:                                # %if.then.45
	movl	$0, -100(%rbp)
	jmp	.LBB59_31
.LBB59_26:                              # %if.else.46
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB59_29
# BB#27:                                # %land.lhs.true.49
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB59_29
# BB#28:                                # %if.then.53
	movl	$1, -100(%rbp)
	jmp	.LBB59_30
.LBB59_29:                              # %if.else.54
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB59_30:                              # %if.end.56
	jmp	.LBB59_31
.LBB59_31:                              # %if.end.57
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB59_33
# BB#32:                                # %if.then.60
	movq	$0, -8(%rbp)
	jmp	.LBB59_34
.LBB59_33:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB59_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_value_get_layer, .Lfunc_end59-gimp_value_get_layer
	.cfi_endproc

	.globl	gimp_param_channel_id_get_type
	.align	16, 0x90
	.type	gimp_param_channel_id_get_type,@function
gimp_param_channel_id_get_type:         # @gimp_param_channel_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_channel_id_get_type.type
	jne	.LBB60_2
# BB#1:                                 # %if.then
	callq	gimp_param_drawable_id_get_type
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_param_channel_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_channel_id_get_type.type
.LBB60_2:                               # %if.end
	movq	gimp_param_channel_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_param_channel_id_get_type, .Lfunc_end60-gimp_param_channel_id_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_channel_id_class_init,@function
gimp_param_channel_id_class_init:       # @gimp_param_channel_id_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_channel_id_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_param_channel_id_class_init, .Lfunc_end61-gimp_param_channel_id_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_channel_id_init,@function
gimp_param_channel_id_init:             # @gimp_param_channel_id_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_item_id_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_channel_get_type
	movq	-16(%rbp), %rsi
	movq	%rax, 96(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_param_channel_id_init, .Lfunc_end62-gimp_param_channel_id_init
	.cfi_endproc

	.globl	gimp_param_spec_channel_id
	.align	16, 0x90
	.type	gimp_param_spec_channel_id,@function
gimp_param_spec_channel_id:             # @gimp_param_spec_channel_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB63_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB63_8
.LBB63_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB63_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB63_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB63_7
.LBB63_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB63_7:                               # %if.end
	jmp	.LBB63_8
.LBB63_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB63_10
# BB#9:                                 # %if.then.8
	jmp	.LBB63_11
.LBB63_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_channel_id, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB63_13
.LBB63_11:                              # %if.end.10
	jmp	.LBB63_12
.LBB63_12:                              # %do.end
	callq	gimp_param_channel_id_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpl	$0, -44(%rbp)
	cmovnel	%r9d, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 104(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB63_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_param_spec_channel_id, .Lfunc_end63-gimp_param_spec_channel_id
	.cfi_endproc

	.globl	gimp_value_get_channel
	.align	16, 0x90
	.type	gimp_value_get_channel,@function
gimp_value_get_channel:                 # @gimp_value_get_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_channel_id_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB64_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB64_7
.LBB64_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB64_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB64_6
.LBB64_5:                               # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB64_6:                               # %if.end
	jmp	.LBB64_7
.LBB64_7:                               # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB64_9
# BB#8:                                 # %if.then.6
	jmp	.LBB64_10
.LBB64_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_channel, %rsi
	movabsq	$.L.str.41, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB64_34
.LBB64_10:                              # %if.end.8
	jmp	.LBB64_11
.LBB64_11:                              # %do.end
	jmp	.LBB64_12
.LBB64_12:                              # %do.body.9
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB64_14
# BB#13:                                # %if.then.17
	movl	$0, -76(%rbp)
	jmp	.LBB64_19
.LBB64_14:                              # %if.else.18
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_17
# BB#15:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB64_17
# BB#16:                                # %if.then.23
	movl	$1, -76(%rbp)
	jmp	.LBB64_18
.LBB64_17:                              # %if.else.24
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB64_18:                              # %if.end.26
	jmp	.LBB64_19
.LBB64_19:                              # %if.end.27
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB64_21
# BB#20:                                # %if.then.30
	jmp	.LBB64_22
.LBB64_21:                              # %if.else.31
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_channel, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB64_34
.LBB64_22:                              # %if.end.32
	jmp	.LBB64_23
.LBB64_23:                              # %do.end.33
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB64_33
# BB#24:                                # %land.lhs.true.36
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB64_26
# BB#25:                                # %if.then.45
	movl	$0, -100(%rbp)
	jmp	.LBB64_31
.LBB64_26:                              # %if.else.46
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_29
# BB#27:                                # %land.lhs.true.49
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB64_29
# BB#28:                                # %if.then.53
	movl	$1, -100(%rbp)
	jmp	.LBB64_30
.LBB64_29:                              # %if.else.54
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB64_30:                              # %if.end.56
	jmp	.LBB64_31
.LBB64_31:                              # %if.end.57
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB64_33
# BB#32:                                # %if.then.60
	movq	$0, -8(%rbp)
	jmp	.LBB64_34
.LBB64_33:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB64_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_value_get_channel, .Lfunc_end64-gimp_value_get_channel
	.cfi_endproc

	.globl	gimp_param_layer_mask_id_get_type
	.align	16, 0x90
	.type	gimp_param_layer_mask_id_get_type,@function
gimp_param_layer_mask_id_get_type:      # @gimp_param_layer_mask_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_layer_mask_id_get_type.type
	jne	.LBB65_2
# BB#1:                                 # %if.then
	callq	gimp_param_channel_id_get_type
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_param_layer_mask_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_layer_mask_id_get_type.type
.LBB65_2:                               # %if.end
	movq	gimp_param_layer_mask_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_param_layer_mask_id_get_type, .Lfunc_end65-gimp_param_layer_mask_id_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_layer_mask_id_class_init,@function
gimp_param_layer_mask_id_class_init:    # @gimp_param_layer_mask_id_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_layer_mask_id_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_param_layer_mask_id_class_init, .Lfunc_end66-gimp_param_layer_mask_id_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_layer_mask_id_init,@function
gimp_param_layer_mask_id_init:          # @gimp_param_layer_mask_id_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_item_id_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_layer_mask_get_type
	movq	-16(%rbp), %rsi
	movq	%rax, 96(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_param_layer_mask_id_init, .Lfunc_end67-gimp_param_layer_mask_id_init
	.cfi_endproc

	.globl	gimp_param_spec_layer_mask_id
	.align	16, 0x90
	.type	gimp_param_spec_layer_mask_id,@function
gimp_param_spec_layer_mask_id:          # @gimp_param_spec_layer_mask_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB68_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB68_8
.LBB68_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB68_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB68_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB68_7
.LBB68_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB68_7:                               # %if.end
	jmp	.LBB68_8
.LBB68_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB68_10
# BB#9:                                 # %if.then.8
	jmp	.LBB68_11
.LBB68_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_layer_mask_id, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB68_13
.LBB68_11:                              # %if.end.10
	jmp	.LBB68_12
.LBB68_12:                              # %do.end
	callq	gimp_param_layer_mask_id_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpl	$0, -44(%rbp)
	cmovnel	%r9d, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 104(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB68_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_param_spec_layer_mask_id, .Lfunc_end68-gimp_param_spec_layer_mask_id
	.cfi_endproc

	.globl	gimp_value_get_layer_mask
	.align	16, 0x90
	.type	gimp_value_get_layer_mask,@function
gimp_value_get_layer_mask:              # @gimp_value_get_layer_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_layer_mask_id_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB69_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB69_7
.LBB69_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB69_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB69_6
.LBB69_5:                               # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB69_6:                               # %if.end
	jmp	.LBB69_7
.LBB69_7:                               # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB69_9
# BB#8:                                 # %if.then.6
	jmp	.LBB69_10
.LBB69_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_layer_mask, %rsi
	movabsq	$.L.str.45, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB69_34
.LBB69_10:                              # %if.end.8
	jmp	.LBB69_11
.LBB69_11:                              # %do.end
	jmp	.LBB69_12
.LBB69_12:                              # %do.body.9
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB69_14
# BB#13:                                # %if.then.17
	movl	$0, -76(%rbp)
	jmp	.LBB69_19
.LBB69_14:                              # %if.else.18
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB69_17
# BB#15:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB69_17
# BB#16:                                # %if.then.23
	movl	$1, -76(%rbp)
	jmp	.LBB69_18
.LBB69_17:                              # %if.else.24
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB69_18:                              # %if.end.26
	jmp	.LBB69_19
.LBB69_19:                              # %if.end.27
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB69_21
# BB#20:                                # %if.then.30
	jmp	.LBB69_22
.LBB69_21:                              # %if.else.31
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_layer_mask, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB69_34
.LBB69_22:                              # %if.end.32
	jmp	.LBB69_23
.LBB69_23:                              # %do.end.33
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB69_33
# BB#24:                                # %land.lhs.true.36
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB69_26
# BB#25:                                # %if.then.45
	movl	$0, -100(%rbp)
	jmp	.LBB69_31
.LBB69_26:                              # %if.else.46
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB69_29
# BB#27:                                # %land.lhs.true.49
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB69_29
# BB#28:                                # %if.then.53
	movl	$1, -100(%rbp)
	jmp	.LBB69_30
.LBB69_29:                              # %if.else.54
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB69_30:                              # %if.end.56
	jmp	.LBB69_31
.LBB69_31:                              # %if.end.57
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB69_33
# BB#32:                                # %if.then.60
	movq	$0, -8(%rbp)
	jmp	.LBB69_34
.LBB69_33:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB69_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	gimp_value_get_layer_mask, .Lfunc_end69-gimp_value_get_layer_mask
	.cfi_endproc

	.globl	gimp_param_selection_id_get_type
	.align	16, 0x90
	.type	gimp_param_selection_id_get_type,@function
gimp_param_selection_id_get_type:       # @gimp_param_selection_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_selection_id_get_type.type
	jne	.LBB70_2
# BB#1:                                 # %if.then
	callq	gimp_param_channel_id_get_type
	movabsq	$.L.str.48, %rsi
	movabsq	$gimp_param_selection_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_selection_id_get_type.type
.LBB70_2:                               # %if.end
	movq	gimp_param_selection_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end70:
	.size	gimp_param_selection_id_get_type, .Lfunc_end70-gimp_param_selection_id_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_selection_id_class_init,@function
gimp_param_selection_id_class_init:     # @gimp_param_selection_id_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_selection_id_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	gimp_param_selection_id_class_init, .Lfunc_end71-gimp_param_selection_id_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_selection_id_init,@function
gimp_param_selection_id_init:           # @gimp_param_selection_id_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_item_id_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_selection_get_type
	movq	-16(%rbp), %rsi
	movq	%rax, 96(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	gimp_param_selection_id_init, .Lfunc_end72-gimp_param_selection_id_init
	.cfi_endproc

	.globl	gimp_param_spec_selection_id
	.align	16, 0x90
	.type	gimp_param_spec_selection_id,@function
gimp_param_spec_selection_id:           # @gimp_param_spec_selection_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB73_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB73_8
.LBB73_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB73_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB73_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB73_7
.LBB73_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB73_7:                               # %if.end
	jmp	.LBB73_8
.LBB73_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB73_10
# BB#9:                                 # %if.then.8
	jmp	.LBB73_11
.LBB73_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_selection_id, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB73_13
.LBB73_11:                              # %if.end.10
	jmp	.LBB73_12
.LBB73_12:                              # %do.end
	callq	gimp_param_selection_id_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpl	$0, -44(%rbp)
	cmovnel	%r9d, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 104(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB73_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gimp_param_spec_selection_id, .Lfunc_end73-gimp_param_spec_selection_id
	.cfi_endproc

	.globl	gimp_value_get_selection
	.align	16, 0x90
	.type	gimp_value_get_selection,@function
gimp_value_get_selection:               # @gimp_value_get_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_selection_id_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB74_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB74_7
.LBB74_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB74_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB74_6
.LBB74_5:                               # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB74_6:                               # %if.end
	jmp	.LBB74_7
.LBB74_7:                               # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB74_9
# BB#8:                                 # %if.then.6
	jmp	.LBB74_10
.LBB74_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_selection, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB74_34
.LBB74_10:                              # %if.end.8
	jmp	.LBB74_11
.LBB74_11:                              # %do.end
	jmp	.LBB74_12
.LBB74_12:                              # %do.body.9
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB74_14
# BB#13:                                # %if.then.17
	movl	$0, -76(%rbp)
	jmp	.LBB74_19
.LBB74_14:                              # %if.else.18
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB74_17
# BB#15:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB74_17
# BB#16:                                # %if.then.23
	movl	$1, -76(%rbp)
	jmp	.LBB74_18
.LBB74_17:                              # %if.else.24
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB74_18:                              # %if.end.26
	jmp	.LBB74_19
.LBB74_19:                              # %if.end.27
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB74_21
# BB#20:                                # %if.then.30
	jmp	.LBB74_22
.LBB74_21:                              # %if.else.31
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_selection, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB74_34
.LBB74_22:                              # %if.end.32
	jmp	.LBB74_23
.LBB74_23:                              # %do.end.33
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB74_33
# BB#24:                                # %land.lhs.true.36
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB74_26
# BB#25:                                # %if.then.45
	movl	$0, -100(%rbp)
	jmp	.LBB74_31
.LBB74_26:                              # %if.else.46
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB74_29
# BB#27:                                # %land.lhs.true.49
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB74_29
# BB#28:                                # %if.then.53
	movl	$1, -100(%rbp)
	jmp	.LBB74_30
.LBB74_29:                              # %if.else.54
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB74_30:                              # %if.end.56
	jmp	.LBB74_31
.LBB74_31:                              # %if.end.57
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB74_33
# BB#32:                                # %if.then.60
	movq	$0, -8(%rbp)
	jmp	.LBB74_34
.LBB74_33:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB74_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	gimp_value_get_selection, .Lfunc_end74-gimp_value_get_selection
	.cfi_endproc

	.globl	gimp_param_vectors_id_get_type
	.align	16, 0x90
	.type	gimp_param_vectors_id_get_type,@function
gimp_param_vectors_id_get_type:         # @gimp_param_vectors_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_vectors_id_get_type.type
	jne	.LBB75_2
# BB#1:                                 # %if.then
	callq	gimp_param_item_id_get_type
	movabsq	$.L.str.52, %rsi
	movabsq	$gimp_param_vectors_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_vectors_id_get_type.type
.LBB75_2:                               # %if.end
	movq	gimp_param_vectors_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end75:
	.size	gimp_param_vectors_id_get_type, .Lfunc_end75-gimp_param_vectors_id_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_vectors_id_class_init,@function
gimp_param_vectors_id_class_init:       # @gimp_param_vectors_id_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_vectors_id_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	gimp_param_vectors_id_class_init, .Lfunc_end76-gimp_param_vectors_id_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_vectors_id_init,@function
gimp_param_vectors_id_init:             # @gimp_param_vectors_id_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_item_id_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_vectors_get_type
	movq	-16(%rbp), %rsi
	movq	%rax, 96(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	gimp_param_vectors_id_init, .Lfunc_end77-gimp_param_vectors_id_init
	.cfi_endproc

	.globl	gimp_param_spec_vectors_id
	.align	16, 0x90
	.type	gimp_param_spec_vectors_id,@function
gimp_param_spec_vectors_id:             # @gimp_param_spec_vectors_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB78_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB78_8
.LBB78_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB78_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB78_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB78_7
.LBB78_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB78_7:                               # %if.end
	jmp	.LBB78_8
.LBB78_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB78_10
# BB#9:                                 # %if.then.8
	jmp	.LBB78_11
.LBB78_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_vectors_id, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB78_13
.LBB78_11:                              # %if.end.10
	jmp	.LBB78_12
.LBB78_12:                              # %do.end
	callq	gimp_param_vectors_id_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpl	$0, -44(%rbp)
	cmovnel	%r9d, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 104(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB78_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	gimp_param_spec_vectors_id, .Lfunc_end78-gimp_param_spec_vectors_id
	.cfi_endproc

	.globl	gimp_value_get_vectors
	.align	16, 0x90
	.type	gimp_value_get_vectors,@function
gimp_value_get_vectors:                 # @gimp_value_get_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_vectors_id_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB79_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB79_7
.LBB79_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB79_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB79_6
.LBB79_5:                               # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB79_6:                               # %if.end
	jmp	.LBB79_7
.LBB79_7:                               # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB79_9
# BB#8:                                 # %if.then.6
	jmp	.LBB79_10
.LBB79_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_vectors, %rsi
	movabsq	$.L.str.53, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB79_34
.LBB79_10:                              # %if.end.8
	jmp	.LBB79_11
.LBB79_11:                              # %do.end
	jmp	.LBB79_12
.LBB79_12:                              # %do.body.9
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB79_14
# BB#13:                                # %if.then.17
	movl	$0, -76(%rbp)
	jmp	.LBB79_19
.LBB79_14:                              # %if.else.18
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB79_17
# BB#15:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB79_17
# BB#16:                                # %if.then.23
	movl	$1, -76(%rbp)
	jmp	.LBB79_18
.LBB79_17:                              # %if.else.24
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB79_18:                              # %if.end.26
	jmp	.LBB79_19
.LBB79_19:                              # %if.end.27
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB79_21
# BB#20:                                # %if.then.30
	jmp	.LBB79_22
.LBB79_21:                              # %if.else.31
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_vectors, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB79_34
.LBB79_22:                              # %if.end.32
	jmp	.LBB79_23
.LBB79_23:                              # %do.end.33
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB79_33
# BB#24:                                # %land.lhs.true.36
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB79_26
# BB#25:                                # %if.then.45
	movl	$0, -100(%rbp)
	jmp	.LBB79_31
.LBB79_26:                              # %if.else.46
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB79_29
# BB#27:                                # %land.lhs.true.49
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB79_29
# BB#28:                                # %if.then.53
	movl	$1, -100(%rbp)
	jmp	.LBB79_30
.LBB79_29:                              # %if.else.54
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB79_30:                              # %if.end.56
	jmp	.LBB79_31
.LBB79_31:                              # %if.end.57
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.LBB79_33
# BB#32:                                # %if.then.60
	movq	$0, -8(%rbp)
	jmp	.LBB79_34
.LBB79_33:                              # %if.end.61
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB79_34:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	gimp_value_get_vectors, .Lfunc_end79-gimp_value_get_vectors
	.cfi_endproc

	.globl	gimp_display_id_get_type
	.align	16, 0x90
	.type	gimp_display_id_get_type,@function
gimp_display_id_get_type:               # @gimp_display_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_display_id_get_type.type
	jne	.LBB80_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	%eax, %edi
	movabsq	$.L.str.55, %rsi
	movabsq	$gimp_display_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static
	movq	%rax, gimp_display_id_get_type.type
.LBB80_2:                               # %if.end
	movq	gimp_display_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end80:
	.size	gimp_display_id_get_type, .Lfunc_end80-gimp_display_id_get_type
	.cfi_endproc

	.globl	gimp_param_display_id_get_type
	.align	16, 0x90
	.type	gimp_param_display_id_get_type,@function
gimp_param_display_id_get_type:         # @gimp_param_display_id_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_display_id_get_type.type
	jne	.LBB81_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.56, %rsi
	movabsq	$gimp_param_display_id_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_display_id_get_type.type
.LBB81_2:                               # %if.end
	movq	gimp_param_display_id_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end81:
	.size	gimp_param_display_id_get_type, .Lfunc_end81-gimp_param_display_id_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_display_id_class_init,@function
gimp_param_display_id_class_init:       # @gimp_param_display_id_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_display_id_get_type
	movabsq	$gimp_param_display_id_values_cmp, %rdi
	movabsq	$gimp_param_display_id_validate, %rcx
	movabsq	$gimp_param_display_id_set_default, %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	gimp_param_display_id_class_init, .Lfunc_end82-gimp_param_display_id_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_display_id_init,@function
gimp_param_display_id_init:             # @gimp_param_display_id_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_display_id_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 96(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	gimp_param_display_id_init, .Lfunc_end83-gimp_param_display_id_init
	.cfi_endproc

	.globl	gimp_param_spec_display_id
	.align	16, 0x90
	.type	gimp_param_spec_display_id,@function
gimp_param_spec_display_id:             # @gimp_param_spec_display_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB84_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB84_8
.LBB84_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB84_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB84_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB84_7
.LBB84_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB84_7:                               # %if.end
	jmp	.LBB84_8
.LBB84_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB84_10
# BB#9:                                 # %if.then.8
	jmp	.LBB84_11
.LBB84_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_param_spec_display_id, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB84_13
.LBB84_11:                              # %if.end.10
	jmp	.LBB84_12
.LBB84_12:                              # %do.end
	callq	gimp_param_display_id_get_type
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-48(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpl	$0, -44(%rbp)
	cmovnel	%r9d, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 96(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB84_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	gimp_param_spec_display_id, .Lfunc_end84-gimp_param_spec_display_id
	.cfi_endproc

	.globl	gimp_value_get_display
	.align	16, 0x90
	.type	gimp_value_get_display,@function
gimp_value_get_display:                 # @gimp_value_get_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_id_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB85_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB85_7
.LBB85_3:                               # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB85_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB85_6
.LBB85_5:                               # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB85_6:                               # %if.end
	jmp	.LBB85_7
.LBB85_7:                               # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB85_9
# BB#8:                                 # %if.then.6
	jmp	.LBB85_10
.LBB85_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_display, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB85_24
.LBB85_10:                              # %if.end.8
	jmp	.LBB85_11
.LBB85_11:                              # %do.end
	jmp	.LBB85_12
.LBB85_12:                              # %do.body.9
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB85_14
# BB#13:                                # %if.then.17
	movl	$0, -68(%rbp)
	jmp	.LBB85_19
.LBB85_14:                              # %if.else.18
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB85_17
# BB#15:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB85_17
# BB#16:                                # %if.then.23
	movl	$1, -68(%rbp)
	jmp	.LBB85_18
.LBB85_17:                              # %if.else.24
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB85_18:                              # %if.end.26
	jmp	.LBB85_19
.LBB85_19:                              # %if.end.27
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB85_21
# BB#20:                                # %if.then.30
	jmp	.LBB85_22
.LBB85_21:                              # %if.else.31
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_display, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB85_24
.LBB85_22:                              # %if.end.32
	jmp	.LBB85_23
.LBB85_23:                              # %do.end.33
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_get_display_by_ID
	movq	%rax, -8(%rbp)
.LBB85_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	gimp_value_get_display, .Lfunc_end85-gimp_value_get_display
	.cfi_endproc

	.globl	gimp_value_set_display
	.align	16, 0x90
	.type	gimp_value_set_display,@function
gimp_value_set_display:                 # @gimp_value_set_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_id_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB86_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB86_7
.LBB86_3:                               # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB86_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB86_6
.LBB86_5:                               # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB86_6:                               # %if.end
	jmp	.LBB86_7
.LBB86_7:                               # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB86_9
# BB#8:                                 # %if.then.6
	jmp	.LBB86_10
.LBB86_9:                               # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_display, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB86_27
.LBB86_10:                              # %if.end.8
	jmp	.LBB86_11
.LBB86_11:                              # %do.end
	jmp	.LBB86_12
.LBB86_12:                              # %do.body.9
	cmpq	$0, -16(%rbp)
	je	.LBB86_21
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB86_15
# BB#14:                                # %if.then.18
	movl	$0, -68(%rbp)
	jmp	.LBB86_20
.LBB86_15:                              # %if.else.19
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB86_18
# BB#16:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB86_18
# BB#17:                                # %if.then.24
	movl	$1, -68(%rbp)
	jmp	.LBB86_19
.LBB86_18:                              # %if.else.25
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB86_19:                              # %if.end.27
	jmp	.LBB86_20
.LBB86_20:                              # %if.end.28
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB86_22
.LBB86_21:                              # %if.then.31
	jmp	.LBB86_23
.LBB86_22:                              # %if.else.32
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_display, %rsi
	movabsq	$.L.str.58, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB86_27
.LBB86_23:                              # %if.end.33
	jmp	.LBB86_24
.LBB86_24:                              # %do.end.34
	cmpq	$0, -16(%rbp)
	je	.LBB86_26
# BB#25:                                # %if.then.36
	movabsq	$.L.str.59, %rsi
	leaq	-20(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
.LBB86_26:                              # %if.end.37
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB86_27:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	gimp_value_set_display, .Lfunc_end86-gimp_value_set_display
	.cfi_endproc

	.globl	gimp_array_new
	.align	16, 0x90
	.type	gimp_array_new,@function
gimp_array_new:                         # @gimp_array_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	jne	.LBB87_3
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB87_5
.LBB87_3:                               # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	je	.LBB87_6
# BB#4:                                 # %land.lhs.true.3
	cmpq	$0, -24(%rbp)
	jbe	.LBB87_6
.LBB87_5:                               # %if.then
	jmp	.LBB87_7
.LBB87_6:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_array_new, %rsi
	movabsq	$.L.str.60, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB87_12
.LBB87_7:                               # %if.end
	jmp	.LBB87_8
.LBB87_8:                               # %do.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB87_10
# BB#9:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB87_11
.LBB87_10:                              # %cond.false
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	g_memdup
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB87_11:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB87_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	gimp_array_new, .Lfunc_end87-gimp_array_new
	.cfi_endproc

	.globl	gimp_array_copy
	.align	16, 0x90
	.type	gimp_array_copy,@function
gimp_array_copy:                        # @gimp_array_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB88_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_array_new
	movq	%rax, -8(%rbp)
	jmp	.LBB88_3
.LBB88_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB88_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	gimp_array_copy, .Lfunc_end88-gimp_array_copy
	.cfi_endproc

	.globl	gimp_array_free
	.align	16, 0x90
	.type	gimp_array_free,@function
gimp_array_free:                        # @gimp_array_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB89_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB89_3
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
.LBB89_3:                               # %if.end
	jmp	.LBB89_4
.LBB89_4:                               # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#5:                                 # %do.end
	jmp	.LBB89_6
.LBB89_6:                               # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	gimp_array_free, .Lfunc_end89-gimp_array_free
	.cfi_endproc

	.globl	gimp_array_get_type
	.align	16, 0x90
	.type	gimp_array_get_type,@function
gimp_array_get_type:                    # @gimp_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_array_get_type.type
	jne	.LBB90_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.61, %rdi
	movabsq	$gimp_array_copy, %rax
	movabsq	$gimp_array_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_array_get_type.type
.LBB90_2:                               # %if.end
	movq	gimp_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end90:
	.size	gimp_array_get_type, .Lfunc_end90-gimp_array_get_type
	.cfi_endproc

	.globl	gimp_param_array_get_type
	.align	16, 0x90
	.type	gimp_param_array_get_type,@function
gimp_param_array_get_type:              # @gimp_param_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_array_get_type.type
	jne	.LBB91_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.62, %rsi
	movabsq	$gimp_param_array_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	128(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_array_get_type.type
.LBB91_2:                               # %if.end
	movq	gimp_param_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end91:
	.size	gimp_param_array_get_type, .Lfunc_end91-gimp_param_array_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_array_class_init,@function
gimp_param_array_class_init:            # @gimp_param_array_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_array_get_type
	movabsq	$gimp_param_array_values_cmp, %rdi
	movabsq	$gimp_param_array_validate, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	gimp_param_array_class_init, .Lfunc_end92-gimp_param_array_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_array_init,@function
gimp_param_array_init:                  # @gimp_param_array_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end93:
	.size	gimp_param_array_init, .Lfunc_end93-gimp_param_array_init
	.cfi_endproc

	.globl	gimp_param_spec_array
	.align	16, 0x90
	.type	gimp_param_spec_array,@function
gimp_param_spec_array:                  # @gimp_param_spec_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_param_array_get_type
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	gimp_param_spec_array, .Lfunc_end94-gimp_param_spec_array
	.cfi_endproc

	.globl	gimp_int8_array_get_type
	.align	16, 0x90
	.type	gimp_int8_array_get_type,@function
gimp_int8_array_get_type:               # @gimp_int8_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_int8_array_get_type.type
	jne	.LBB95_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.63, %rdi
	movabsq	$gimp_array_copy, %rax
	movabsq	$gimp_array_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_int8_array_get_type.type
.LBB95_2:                               # %if.end
	movq	gimp_int8_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end95:
	.size	gimp_int8_array_get_type, .Lfunc_end95-gimp_int8_array_get_type
	.cfi_endproc

	.globl	gimp_param_int8_array_get_type
	.align	16, 0x90
	.type	gimp_param_int8_array_get_type,@function
gimp_param_int8_array_get_type:         # @gimp_param_int8_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_int8_array_get_type.type
	jne	.LBB96_2
# BB#1:                                 # %if.then
	callq	gimp_param_array_get_type
	movabsq	$.L.str.64, %rsi
	movabsq	$gimp_param_int8_array_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_int8_array_get_type.type
.LBB96_2:                               # %if.end
	movq	gimp_param_int8_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end96:
	.size	gimp_param_int8_array_get_type, .Lfunc_end96-gimp_param_int8_array_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int8_array_class_init,@function
gimp_param_int8_array_class_init:       # @gimp_param_int8_array_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_int8_array_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	gimp_param_int8_array_class_init, .Lfunc_end97-gimp_param_int8_array_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int8_array_init,@function
gimp_param_int8_array_init:             # @gimp_param_int8_array_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end98:
	.size	gimp_param_int8_array_init, .Lfunc_end98-gimp_param_int8_array_init
	.cfi_endproc

	.globl	gimp_param_spec_int8_array
	.align	16, 0x90
	.type	gimp_param_spec_int8_array,@function
gimp_param_spec_int8_array:             # @gimp_param_spec_int8_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_param_int8_array_get_type
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	gimp_param_spec_int8_array, .Lfunc_end99-gimp_param_spec_int8_array
	.cfi_endproc

	.globl	gimp_value_get_int8array
	.align	16, 0x90
	.type	gimp_value_get_int8array,@function
gimp_value_get_int8array:               # @gimp_value_get_int8array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_int8_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB100_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB100_7
.LBB100_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB100_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB100_6
.LBB100_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB100_6:                              # %if.end
	jmp	.LBB100_7
.LBB100_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB100_9
# BB#8:                                 # %if.then.6
	jmp	.LBB100_10
.LBB100_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_int8array, %rsi
	movabsq	$.L.str.65, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB100_12
.LBB100_10:                             # %if.end.8
	jmp	.LBB100_11
.LBB100_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_get_array
	movq	%rax, -8(%rbp)
.LBB100_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	gimp_value_get_int8array, .Lfunc_end100-gimp_value_get_int8array
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_value_get_array,@function
gimp_value_get_array:                   # @gimp_value_get_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB101_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB101_3
.LBB101_2:                              # %if.end
	movq	$0, -8(%rbp)
.LBB101_3:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end101:
	.size	gimp_value_get_array, .Lfunc_end101-gimp_value_get_array
	.cfi_endproc

	.globl	gimp_value_dup_int8array
	.align	16, 0x90
	.type	gimp_value_dup_int8array,@function
gimp_value_dup_int8array:               # @gimp_value_dup_int8array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_int8_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB102_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB102_7
.LBB102_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB102_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB102_6
.LBB102_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB102_6:                              # %if.end
	jmp	.LBB102_7
.LBB102_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB102_9
# BB#8:                                 # %if.then.6
	jmp	.LBB102_10
.LBB102_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_dup_int8array, %rsi
	movabsq	$.L.str.65, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB102_12
.LBB102_10:                             # %if.end.8
	jmp	.LBB102_11
.LBB102_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_dup_array
	movq	%rax, -8(%rbp)
.LBB102_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	gimp_value_dup_int8array, .Lfunc_end102-gimp_value_dup_int8array
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_value_dup_array,@function
gimp_value_dup_array:                   # @gimp_value_dup_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB103_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	g_memdup
	movq	%rax, -8(%rbp)
	jmp	.LBB103_3
.LBB103_2:                              # %if.end
	movq	$0, -8(%rbp)
.LBB103_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	gimp_value_dup_array, .Lfunc_end103-gimp_value_dup_array
	.cfi_endproc

	.globl	gimp_value_set_int8array
	.align	16, 0x90
	.type	gimp_value_set_int8array,@function
gimp_value_set_int8array:               # @gimp_value_set_int8array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp314:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_int8_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB104_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB104_7
.LBB104_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB104_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB104_6
.LBB104_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB104_6:                              # %if.end
	jmp	.LBB104_7
.LBB104_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB104_9
# BB#8:                                 # %if.then.6
	jmp	.LBB104_10
.LBB104_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_int8array, %rsi
	movabsq	$.L.str.65, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB104_12
.LBB104_10:                             # %if.end.8
	jmp	.LBB104_11
.LBB104_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_value_set_array
.LBB104_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	gimp_value_set_int8array, .Lfunc_end104-gimp_value_set_int8array
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_value_set_array,@function
gimp_value_set_array:                   # @gimp_value_set_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp317:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	callq	gimp_array_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	gimp_value_set_array, .Lfunc_end105-gimp_value_set_array
	.cfi_endproc

	.globl	gimp_value_set_static_int8array
	.align	16, 0x90
	.type	gimp_value_set_static_int8array,@function
gimp_value_set_static_int8array:        # @gimp_value_set_static_int8array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp318:
	.cfi_def_cfa_offset 16
.Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp320:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_int8_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB106_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB106_7
.LBB106_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB106_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB106_6
.LBB106_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB106_6:                              # %if.end
	jmp	.LBB106_7
.LBB106_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB106_9
# BB#8:                                 # %if.then.6
	jmp	.LBB106_10
.LBB106_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_static_int8array, %rsi
	movabsq	$.L.str.65, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB106_12
.LBB106_10:                             # %if.end.8
	jmp	.LBB106_11
.LBB106_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_value_set_static_array
.LBB106_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	gimp_value_set_static_int8array, .Lfunc_end106-gimp_value_set_static_int8array
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_value_set_static_array,@function
gimp_value_set_static_array:            # @gimp_value_set_static_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp321:
	.cfi_def_cfa_offset 16
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp323:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	callq	gimp_array_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	gimp_value_set_static_array, .Lfunc_end107-gimp_value_set_static_array
	.cfi_endproc

	.globl	gimp_value_take_int8array
	.align	16, 0x90
	.type	gimp_value_take_int8array,@function
gimp_value_take_int8array:              # @gimp_value_take_int8array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_int8_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB108_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB108_7
.LBB108_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB108_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB108_6
.LBB108_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB108_6:                              # %if.end
	jmp	.LBB108_7
.LBB108_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB108_9
# BB#8:                                 # %if.then.6
	jmp	.LBB108_10
.LBB108_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_take_int8array, %rsi
	movabsq	$.L.str.65, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB108_12
.LBB108_10:                             # %if.end.8
	jmp	.LBB108_11
.LBB108_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_value_take_array
.LBB108_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	gimp_value_take_int8array, .Lfunc_end108-gimp_value_take_int8array
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_value_take_array,@function
gimp_value_take_array:                  # @gimp_value_take_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	callq	gimp_array_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	gimp_value_take_array, .Lfunc_end109-gimp_value_take_array
	.cfi_endproc

	.globl	gimp_int16_array_get_type
	.align	16, 0x90
	.type	gimp_int16_array_get_type,@function
gimp_int16_array_get_type:              # @gimp_int16_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
.Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp332:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_int16_array_get_type.type
	jne	.LBB110_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.66, %rdi
	movabsq	$gimp_array_copy, %rax
	movabsq	$gimp_array_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_int16_array_get_type.type
.LBB110_2:                              # %if.end
	movq	gimp_int16_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end110:
	.size	gimp_int16_array_get_type, .Lfunc_end110-gimp_int16_array_get_type
	.cfi_endproc

	.globl	gimp_param_int16_array_get_type
	.align	16, 0x90
	.type	gimp_param_int16_array_get_type,@function
gimp_param_int16_array_get_type:        # @gimp_param_int16_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp333:
	.cfi_def_cfa_offset 16
.Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp335:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_int16_array_get_type.type
	jne	.LBB111_2
# BB#1:                                 # %if.then
	callq	gimp_param_array_get_type
	movabsq	$.L.str.67, %rsi
	movabsq	$gimp_param_int16_array_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_int16_array_get_type.type
.LBB111_2:                              # %if.end
	movq	gimp_param_int16_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end111:
	.size	gimp_param_int16_array_get_type, .Lfunc_end111-gimp_param_int16_array_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int16_array_class_init,@function
gimp_param_int16_array_class_init:      # @gimp_param_int16_array_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp336:
	.cfi_def_cfa_offset 16
.Ltmp337:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp338:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_int16_array_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	gimp_param_int16_array_class_init, .Lfunc_end112-gimp_param_int16_array_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int16_array_init,@function
gimp_param_int16_array_init:            # @gimp_param_int16_array_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp339:
	.cfi_def_cfa_offset 16
.Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp341:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end113:
	.size	gimp_param_int16_array_init, .Lfunc_end113-gimp_param_int16_array_init
	.cfi_endproc

	.globl	gimp_param_spec_int16_array
	.align	16, 0x90
	.type	gimp_param_spec_int16_array,@function
gimp_param_spec_int16_array:            # @gimp_param_spec_int16_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp342:
	.cfi_def_cfa_offset 16
.Ltmp343:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp344:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_param_int16_array_get_type
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	gimp_param_spec_int16_array, .Lfunc_end114-gimp_param_spec_int16_array
	.cfi_endproc

	.globl	gimp_value_get_int16array
	.align	16, 0x90
	.type	gimp_value_get_int16array,@function
gimp_value_get_int16array:              # @gimp_value_get_int16array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp345:
	.cfi_def_cfa_offset 16
.Ltmp346:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp347:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_int16_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB115_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB115_7
.LBB115_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB115_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB115_6
.LBB115_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB115_6:                              # %if.end
	jmp	.LBB115_7
.LBB115_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB115_9
# BB#8:                                 # %if.then.6
	jmp	.LBB115_10
.LBB115_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_int16array, %rsi
	movabsq	$.L.str.68, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB115_12
.LBB115_10:                             # %if.end.8
	jmp	.LBB115_11
.LBB115_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_get_array
	movq	%rax, -8(%rbp)
.LBB115_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	gimp_value_get_int16array, .Lfunc_end115-gimp_value_get_int16array
	.cfi_endproc

	.globl	gimp_value_dup_int16array
	.align	16, 0x90
	.type	gimp_value_dup_int16array,@function
gimp_value_dup_int16array:              # @gimp_value_dup_int16array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp348:
	.cfi_def_cfa_offset 16
.Ltmp349:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp350:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_int16_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB116_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB116_7
.LBB116_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB116_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB116_6
.LBB116_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB116_6:                              # %if.end
	jmp	.LBB116_7
.LBB116_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB116_9
# BB#8:                                 # %if.then.6
	jmp	.LBB116_10
.LBB116_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_dup_int16array, %rsi
	movabsq	$.L.str.68, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB116_12
.LBB116_10:                             # %if.end.8
	jmp	.LBB116_11
.LBB116_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_dup_array
	movq	%rax, -8(%rbp)
.LBB116_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	gimp_value_dup_int16array, .Lfunc_end116-gimp_value_dup_int16array
	.cfi_endproc

	.globl	gimp_value_set_int16array
	.align	16, 0x90
	.type	gimp_value_set_int16array,@function
gimp_value_set_int16array:              # @gimp_value_set_int16array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp351:
	.cfi_def_cfa_offset 16
.Ltmp352:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp353:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_int16_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB117_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB117_7
.LBB117_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB117_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB117_6
.LBB117_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB117_6:                              # %if.end
	jmp	.LBB117_7
.LBB117_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB117_9
# BB#8:                                 # %if.then.6
	jmp	.LBB117_10
.LBB117_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_int16array, %rsi
	movabsq	$.L.str.68, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB117_12
.LBB117_10:                             # %if.end.8
	jmp	.LBB117_11
.LBB117_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_set_array
.LBB117_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	gimp_value_set_int16array, .Lfunc_end117-gimp_value_set_int16array
	.cfi_endproc

	.globl	gimp_value_set_static_int16array
	.align	16, 0x90
	.type	gimp_value_set_static_int16array,@function
gimp_value_set_static_int16array:       # @gimp_value_set_static_int16array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
.Ltmp355:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp356:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_int16_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB118_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB118_7
.LBB118_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB118_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB118_6
.LBB118_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB118_6:                              # %if.end
	jmp	.LBB118_7
.LBB118_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB118_9
# BB#8:                                 # %if.then.6
	jmp	.LBB118_10
.LBB118_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_static_int16array, %rsi
	movabsq	$.L.str.68, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB118_12
.LBB118_10:                             # %if.end.8
	jmp	.LBB118_11
.LBB118_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_set_static_array
.LBB118_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	gimp_value_set_static_int16array, .Lfunc_end118-gimp_value_set_static_int16array
	.cfi_endproc

	.globl	gimp_value_take_int16array
	.align	16, 0x90
	.type	gimp_value_take_int16array,@function
gimp_value_take_int16array:             # @gimp_value_take_int16array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp357:
	.cfi_def_cfa_offset 16
.Ltmp358:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp359:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_int16_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB119_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB119_7
.LBB119_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB119_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB119_6
.LBB119_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB119_6:                              # %if.end
	jmp	.LBB119_7
.LBB119_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB119_9
# BB#8:                                 # %if.then.6
	jmp	.LBB119_10
.LBB119_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_take_int16array, %rsi
	movabsq	$.L.str.68, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB119_12
.LBB119_10:                             # %if.end.8
	jmp	.LBB119_11
.LBB119_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$1, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_take_array
.LBB119_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	gimp_value_take_int16array, .Lfunc_end119-gimp_value_take_int16array
	.cfi_endproc

	.globl	gimp_int32_array_get_type
	.align	16, 0x90
	.type	gimp_int32_array_get_type,@function
gimp_int32_array_get_type:              # @gimp_int32_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp360:
	.cfi_def_cfa_offset 16
.Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp362:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_int32_array_get_type.type
	jne	.LBB120_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.69, %rdi
	movabsq	$gimp_array_copy, %rax
	movabsq	$gimp_array_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_int32_array_get_type.type
.LBB120_2:                              # %if.end
	movq	gimp_int32_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end120:
	.size	gimp_int32_array_get_type, .Lfunc_end120-gimp_int32_array_get_type
	.cfi_endproc

	.globl	gimp_param_int32_array_get_type
	.align	16, 0x90
	.type	gimp_param_int32_array_get_type,@function
gimp_param_int32_array_get_type:        # @gimp_param_int32_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp363:
	.cfi_def_cfa_offset 16
.Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp365:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_int32_array_get_type.type
	jne	.LBB121_2
# BB#1:                                 # %if.then
	callq	gimp_param_array_get_type
	movabsq	$.L.str.70, %rsi
	movabsq	$gimp_param_int32_array_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_int32_array_get_type.type
.LBB121_2:                              # %if.end
	movq	gimp_param_int32_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end121:
	.size	gimp_param_int32_array_get_type, .Lfunc_end121-gimp_param_int32_array_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int32_array_class_init,@function
gimp_param_int32_array_class_init:      # @gimp_param_int32_array_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp366:
	.cfi_def_cfa_offset 16
.Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp368:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_int32_array_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	gimp_param_int32_array_class_init, .Lfunc_end122-gimp_param_int32_array_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_int32_array_init,@function
gimp_param_int32_array_init:            # @gimp_param_int32_array_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
.Ltmp370:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp371:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end123:
	.size	gimp_param_int32_array_init, .Lfunc_end123-gimp_param_int32_array_init
	.cfi_endproc

	.globl	gimp_param_spec_int32_array
	.align	16, 0x90
	.type	gimp_param_spec_int32_array,@function
gimp_param_spec_int32_array:            # @gimp_param_spec_int32_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp372:
	.cfi_def_cfa_offset 16
.Ltmp373:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp374:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_param_int32_array_get_type
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	gimp_param_spec_int32_array, .Lfunc_end124-gimp_param_spec_int32_array
	.cfi_endproc

	.globl	gimp_value_get_int32array
	.align	16, 0x90
	.type	gimp_value_get_int32array,@function
gimp_value_get_int32array:              # @gimp_value_get_int32array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp375:
	.cfi_def_cfa_offset 16
.Ltmp376:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp377:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_int32_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB125_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB125_7
.LBB125_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB125_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB125_6
.LBB125_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB125_6:                              # %if.end
	jmp	.LBB125_7
.LBB125_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB125_9
# BB#8:                                 # %if.then.6
	jmp	.LBB125_10
.LBB125_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_int32array, %rsi
	movabsq	$.L.str.71, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB125_12
.LBB125_10:                             # %if.end.8
	jmp	.LBB125_11
.LBB125_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_get_array
	movq	%rax, -8(%rbp)
.LBB125_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	gimp_value_get_int32array, .Lfunc_end125-gimp_value_get_int32array
	.cfi_endproc

	.globl	gimp_value_dup_int32array
	.align	16, 0x90
	.type	gimp_value_dup_int32array,@function
gimp_value_dup_int32array:              # @gimp_value_dup_int32array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp378:
	.cfi_def_cfa_offset 16
.Ltmp379:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp380:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_int32_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB126_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB126_7
.LBB126_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB126_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB126_6
.LBB126_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB126_6:                              # %if.end
	jmp	.LBB126_7
.LBB126_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB126_9
# BB#8:                                 # %if.then.6
	jmp	.LBB126_10
.LBB126_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_dup_int32array, %rsi
	movabsq	$.L.str.71, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB126_12
.LBB126_10:                             # %if.end.8
	jmp	.LBB126_11
.LBB126_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_dup_array
	movq	%rax, -8(%rbp)
.LBB126_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	gimp_value_dup_int32array, .Lfunc_end126-gimp_value_dup_int32array
	.cfi_endproc

	.globl	gimp_value_set_int32array
	.align	16, 0x90
	.type	gimp_value_set_int32array,@function
gimp_value_set_int32array:              # @gimp_value_set_int32array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp381:
	.cfi_def_cfa_offset 16
.Ltmp382:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp383:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_int32_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB127_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB127_7
.LBB127_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB127_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB127_6
.LBB127_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB127_6:                              # %if.end
	jmp	.LBB127_7
.LBB127_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB127_9
# BB#8:                                 # %if.then.6
	jmp	.LBB127_10
.LBB127_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_int32array, %rsi
	movabsq	$.L.str.71, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB127_12
.LBB127_10:                             # %if.end.8
	jmp	.LBB127_11
.LBB127_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_set_array
.LBB127_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	gimp_value_set_int32array, .Lfunc_end127-gimp_value_set_int32array
	.cfi_endproc

	.globl	gimp_value_set_static_int32array
	.align	16, 0x90
	.type	gimp_value_set_static_int32array,@function
gimp_value_set_static_int32array:       # @gimp_value_set_static_int32array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp384:
	.cfi_def_cfa_offset 16
.Ltmp385:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp386:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_int32_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB128_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB128_7
.LBB128_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB128_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB128_6
.LBB128_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB128_6:                              # %if.end
	jmp	.LBB128_7
.LBB128_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB128_9
# BB#8:                                 # %if.then.6
	jmp	.LBB128_10
.LBB128_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_static_int32array, %rsi
	movabsq	$.L.str.71, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB128_12
.LBB128_10:                             # %if.end.8
	jmp	.LBB128_11
.LBB128_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_set_static_array
.LBB128_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	gimp_value_set_static_int32array, .Lfunc_end128-gimp_value_set_static_int32array
	.cfi_endproc

	.globl	gimp_value_take_int32array
	.align	16, 0x90
	.type	gimp_value_take_int32array,@function
gimp_value_take_int32array:             # @gimp_value_take_int32array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp387:
	.cfi_def_cfa_offset 16
.Ltmp388:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp389:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_int32_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB129_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB129_7
.LBB129_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB129_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB129_6
.LBB129_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB129_6:                              # %if.end
	jmp	.LBB129_7
.LBB129_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB129_9
# BB#8:                                 # %if.then.6
	jmp	.LBB129_10
.LBB129_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_take_int32array, %rsi
	movabsq	$.L.str.71, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB129_12
.LBB129_10:                             # %if.end.8
	jmp	.LBB129_11
.LBB129_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_take_array
.LBB129_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	gimp_value_take_int32array, .Lfunc_end129-gimp_value_take_int32array
	.cfi_endproc

	.globl	gimp_float_array_get_type
	.align	16, 0x90
	.type	gimp_float_array_get_type,@function
gimp_float_array_get_type:              # @gimp_float_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp390:
	.cfi_def_cfa_offset 16
.Ltmp391:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp392:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_float_array_get_type.type
	jne	.LBB130_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.72, %rdi
	movabsq	$gimp_array_copy, %rax
	movabsq	$gimp_array_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_float_array_get_type.type
.LBB130_2:                              # %if.end
	movq	gimp_float_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end130:
	.size	gimp_float_array_get_type, .Lfunc_end130-gimp_float_array_get_type
	.cfi_endproc

	.globl	gimp_param_float_array_get_type
	.align	16, 0x90
	.type	gimp_param_float_array_get_type,@function
gimp_param_float_array_get_type:        # @gimp_param_float_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp393:
	.cfi_def_cfa_offset 16
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp395:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_float_array_get_type.type
	jne	.LBB131_2
# BB#1:                                 # %if.then
	callq	gimp_param_array_get_type
	movabsq	$.L.str.73, %rsi
	movabsq	$gimp_param_float_array_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_float_array_get_type.type
.LBB131_2:                              # %if.end
	movq	gimp_param_float_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end131:
	.size	gimp_param_float_array_get_type, .Lfunc_end131-gimp_param_float_array_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_float_array_class_init,@function
gimp_param_float_array_class_init:      # @gimp_param_float_array_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp396:
	.cfi_def_cfa_offset 16
.Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp398:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_float_array_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end132:
	.size	gimp_param_float_array_class_init, .Lfunc_end132-gimp_param_float_array_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_float_array_init,@function
gimp_param_float_array_init:            # @gimp_param_float_array_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
.Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp401:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end133:
	.size	gimp_param_float_array_init, .Lfunc_end133-gimp_param_float_array_init
	.cfi_endproc

	.globl	gimp_param_spec_float_array
	.align	16, 0x90
	.type	gimp_param_spec_float_array,@function
gimp_param_spec_float_array:            # @gimp_param_spec_float_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp402:
	.cfi_def_cfa_offset 16
.Ltmp403:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp404:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_param_float_array_get_type
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	gimp_param_spec_float_array, .Lfunc_end134-gimp_param_spec_float_array
	.cfi_endproc

	.globl	gimp_value_get_floatarray
	.align	16, 0x90
	.type	gimp_value_get_floatarray,@function
gimp_value_get_floatarray:              # @gimp_value_get_floatarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp405:
	.cfi_def_cfa_offset 16
.Ltmp406:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp407:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_float_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB135_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB135_7
.LBB135_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB135_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB135_6
.LBB135_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB135_6:                              # %if.end
	jmp	.LBB135_7
.LBB135_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB135_9
# BB#8:                                 # %if.then.6
	jmp	.LBB135_10
.LBB135_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_floatarray, %rsi
	movabsq	$.L.str.74, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB135_12
.LBB135_10:                             # %if.end.8
	jmp	.LBB135_11
.LBB135_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_get_array
	movq	%rax, -8(%rbp)
.LBB135_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end135:
	.size	gimp_value_get_floatarray, .Lfunc_end135-gimp_value_get_floatarray
	.cfi_endproc

	.globl	gimp_value_dup_floatarray
	.align	16, 0x90
	.type	gimp_value_dup_floatarray,@function
gimp_value_dup_floatarray:              # @gimp_value_dup_floatarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp408:
	.cfi_def_cfa_offset 16
.Ltmp409:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp410:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_float_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB136_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB136_7
.LBB136_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB136_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB136_6
.LBB136_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB136_6:                              # %if.end
	jmp	.LBB136_7
.LBB136_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB136_9
# BB#8:                                 # %if.then.6
	jmp	.LBB136_10
.LBB136_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_dup_floatarray, %rsi
	movabsq	$.L.str.74, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB136_12
.LBB136_10:                             # %if.end.8
	jmp	.LBB136_11
.LBB136_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_dup_array
	movq	%rax, -8(%rbp)
.LBB136_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	gimp_value_dup_floatarray, .Lfunc_end136-gimp_value_dup_floatarray
	.cfi_endproc

	.globl	gimp_value_set_floatarray
	.align	16, 0x90
	.type	gimp_value_set_floatarray,@function
gimp_value_set_floatarray:              # @gimp_value_set_floatarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp411:
	.cfi_def_cfa_offset 16
.Ltmp412:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp413:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_float_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB137_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB137_7
.LBB137_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB137_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB137_6
.LBB137_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB137_6:                              # %if.end
	jmp	.LBB137_7
.LBB137_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB137_9
# BB#8:                                 # %if.then.6
	jmp	.LBB137_10
.LBB137_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_floatarray, %rsi
	movabsq	$.L.str.74, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB137_12
.LBB137_10:                             # %if.end.8
	jmp	.LBB137_11
.LBB137_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_set_array
.LBB137_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	gimp_value_set_floatarray, .Lfunc_end137-gimp_value_set_floatarray
	.cfi_endproc

	.globl	gimp_value_set_static_floatarray
	.align	16, 0x90
	.type	gimp_value_set_static_floatarray,@function
gimp_value_set_static_floatarray:       # @gimp_value_set_static_floatarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp414:
	.cfi_def_cfa_offset 16
.Ltmp415:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp416:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_float_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB138_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB138_7
.LBB138_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB138_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB138_6
.LBB138_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB138_6:                              # %if.end
	jmp	.LBB138_7
.LBB138_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB138_9
# BB#8:                                 # %if.then.6
	jmp	.LBB138_10
.LBB138_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_static_floatarray, %rsi
	movabsq	$.L.str.74, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB138_12
.LBB138_10:                             # %if.end.8
	jmp	.LBB138_11
.LBB138_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_set_static_array
.LBB138_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	gimp_value_set_static_floatarray, .Lfunc_end138-gimp_value_set_static_floatarray
	.cfi_endproc

	.globl	gimp_value_take_floatarray
	.align	16, 0x90
	.type	gimp_value_take_floatarray,@function
gimp_value_take_floatarray:             # @gimp_value_take_floatarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp417:
	.cfi_def_cfa_offset 16
.Ltmp418:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp419:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_float_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB139_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB139_7
.LBB139_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB139_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB139_6
.LBB139_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB139_6:                              # %if.end
	jmp	.LBB139_7
.LBB139_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB139_9
# BB#8:                                 # %if.then.6
	jmp	.LBB139_10
.LBB139_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_take_floatarray, %rsi
	movabsq	$.L.str.74, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB139_12
.LBB139_10:                             # %if.end.8
	jmp	.LBB139_11
.LBB139_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_take_array
.LBB139_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	gimp_value_take_floatarray, .Lfunc_end139-gimp_value_take_floatarray
	.cfi_endproc

	.globl	gimp_string_array_new
	.align	16, 0x90
	.type	gimp_string_array_new,@function
gimp_string_array_new:                  # @gimp_string_array_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
.Ltmp421:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp422:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	jne	.LBB140_3
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB140_5
.LBB140_3:                              # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	je	.LBB140_6
# BB#4:                                 # %land.lhs.true.3
	cmpq	$0, -24(%rbp)
	jbe	.LBB140_6
.LBB140_5:                              # %if.then
	jmp	.LBB140_7
.LBB140_6:                              # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_string_array_new, %rsi
	movabsq	$.L.str.60, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB140_16
.LBB140_7:                              # %if.end
	jmp	.LBB140_8
.LBB140_8:                              # %do.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB140_14
# BB#9:                                 # %if.then.5
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB140_10:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB140_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB140_10 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB140_10 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB140_10
.LBB140_13:                             # %for.end
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB140_15
.LBB140_14:                             # %if.else.14
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB140_15:                             # %if.end.16
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB140_16:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	gimp_string_array_new, .Lfunc_end140-gimp_string_array_new
	.cfi_endproc

	.globl	gimp_string_array_copy
	.align	16, 0x90
	.type	gimp_string_array_copy,@function
gimp_string_array_copy:                 # @gimp_string_array_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp423:
	.cfi_def_cfa_offset 16
.Ltmp424:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp425:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB141_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_string_array_new
	movq	%rax, -8(%rbp)
	jmp	.LBB141_3
.LBB141_2:                              # %if.end
	movq	$0, -8(%rbp)
.LBB141_3:                              # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end141:
	.size	gimp_string_array_copy, .Lfunc_end141-gimp_string_array_copy
	.cfi_endproc

	.globl	gimp_string_array_free
	.align	16, 0x90
	.type	gimp_string_array_free,@function
gimp_string_array_free:                 # @gimp_string_array_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp426:
	.cfi_def_cfa_offset 16
.Ltmp427:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp428:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB142_10
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB142_7
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB142_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB142_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB142_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB142_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB142_3
.LBB142_6:                              # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
.LBB142_7:                              # %if.end
	jmp	.LBB142_8
.LBB142_8:                              # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#9:                                 # %do.end
	jmp	.LBB142_10
.LBB142_10:                             # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end142:
	.size	gimp_string_array_free, .Lfunc_end142-gimp_string_array_free
	.cfi_endproc

	.globl	gimp_string_array_get_type
	.align	16, 0x90
	.type	gimp_string_array_get_type,@function
gimp_string_array_get_type:             # @gimp_string_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp429:
	.cfi_def_cfa_offset 16
.Ltmp430:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp431:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_string_array_get_type.type
	jne	.LBB143_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.75, %rdi
	movabsq	$gimp_string_array_copy, %rax
	movabsq	$gimp_string_array_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_string_array_get_type.type
.LBB143_2:                              # %if.end
	movq	gimp_string_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end143:
	.size	gimp_string_array_get_type, .Lfunc_end143-gimp_string_array_get_type
	.cfi_endproc

	.globl	gimp_param_string_array_get_type
	.align	16, 0x90
	.type	gimp_param_string_array_get_type,@function
gimp_param_string_array_get_type:       # @gimp_param_string_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp432:
	.cfi_def_cfa_offset 16
.Ltmp433:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp434:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_string_array_get_type.type
	jne	.LBB144_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.76, %rsi
	movabsq	$gimp_param_string_array_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	128(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_string_array_get_type.type
.LBB144_2:                              # %if.end
	movq	gimp_param_string_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end144:
	.size	gimp_param_string_array_get_type, .Lfunc_end144-gimp_param_string_array_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_string_array_class_init,@function
gimp_param_string_array_class_init:     # @gimp_param_string_array_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp435:
	.cfi_def_cfa_offset 16
.Ltmp436:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp437:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_string_array_get_type
	movabsq	$gimp_param_string_array_values_cmp, %rdi
	movabsq	$gimp_param_string_array_validate, %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end145:
	.size	gimp_param_string_array_class_init, .Lfunc_end145-gimp_param_string_array_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_string_array_init,@function
gimp_param_string_array_init:           # @gimp_param_string_array_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp438:
	.cfi_def_cfa_offset 16
.Ltmp439:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp440:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end146:
	.size	gimp_param_string_array_init, .Lfunc_end146-gimp_param_string_array_init
	.cfi_endproc

	.globl	gimp_param_spec_string_array
	.align	16, 0x90
	.type	gimp_param_spec_string_array,@function
gimp_param_spec_string_array:           # @gimp_param_spec_string_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp441:
	.cfi_def_cfa_offset 16
.Ltmp442:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp443:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_param_string_array_get_type
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end147:
	.size	gimp_param_spec_string_array, .Lfunc_end147-gimp_param_spec_string_array
	.cfi_endproc

	.globl	gimp_value_get_stringarray
	.align	16, 0x90
	.type	gimp_value_get_stringarray,@function
gimp_value_get_stringarray:             # @gimp_value_get_stringarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp444:
	.cfi_def_cfa_offset 16
.Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp446:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_string_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB148_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB148_7
.LBB148_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB148_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB148_6
.LBB148_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB148_6:                              # %if.end
	jmp	.LBB148_7
.LBB148_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB148_9
# BB#8:                                 # %if.then.6
	jmp	.LBB148_10
.LBB148_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_stringarray, %rsi
	movabsq	$.L.str.77, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB148_14
.LBB148_10:                             # %if.end.8
	jmp	.LBB148_11
.LBB148_11:                             # %do.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB148_13
# BB#12:                                # %if.then.10
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB148_14
.LBB148_13:                             # %if.end.12
	movq	$0, -8(%rbp)
.LBB148_14:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end148:
	.size	gimp_value_get_stringarray, .Lfunc_end148-gimp_value_get_stringarray
	.cfi_endproc

	.globl	gimp_value_dup_stringarray
	.align	16, 0x90
	.type	gimp_value_dup_stringarray,@function
gimp_value_dup_stringarray:             # @gimp_value_dup_stringarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp447:
	.cfi_def_cfa_offset 16
.Ltmp448:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp449:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_string_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB149_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB149_7
.LBB149_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB149_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB149_6
.LBB149_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB149_6:                              # %if.end
	jmp	.LBB149_7
.LBB149_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB149_9
# BB#8:                                 # %if.then.6
	jmp	.LBB149_10
.LBB149_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_dup_stringarray, %rsi
	movabsq	$.L.str.77, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB149_18
.LBB149_10:                             # %if.end.8
	jmp	.LBB149_11
.LBB149_11:                             # %do.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB149_17
# BB#12:                                # %if.then.10
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	shlq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	g_memdup
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB149_13:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB149_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB149_13 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup
	movslq	-60(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB149_13 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB149_13
.LBB149_16:                             # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB149_18
.LBB149_17:                             # %if.end.23
	movq	$0, -8(%rbp)
.LBB149_18:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end149:
	.size	gimp_value_dup_stringarray, .Lfunc_end149-gimp_value_dup_stringarray
	.cfi_endproc

	.globl	gimp_value_set_stringarray
	.align	16, 0x90
	.type	gimp_value_set_stringarray,@function
gimp_value_set_stringarray:             # @gimp_value_set_stringarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp450:
	.cfi_def_cfa_offset 16
.Ltmp451:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp452:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_string_array_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB150_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB150_7
.LBB150_3:                              # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB150_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB150_6
.LBB150_5:                              # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB150_6:                              # %if.end
	jmp	.LBB150_7
.LBB150_7:                              # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB150_9
# BB#8:                                 # %if.then.6
	jmp	.LBB150_10
.LBB150_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_stringarray, %rsi
	movabsq	$.L.str.77, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB150_12
.LBB150_10:                             # %if.end.8
	jmp	.LBB150_11
.LBB150_11:                             # %do.end
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_string_array_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
.LBB150_12:                             # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end150:
	.size	gimp_value_set_stringarray, .Lfunc_end150-gimp_value_set_stringarray
	.cfi_endproc

	.globl	gimp_value_set_static_stringarray
	.align	16, 0x90
	.type	gimp_value_set_static_stringarray,@function
gimp_value_set_static_stringarray:      # @gimp_value_set_static_stringarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp453:
	.cfi_def_cfa_offset 16
.Ltmp454:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp455:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_string_array_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB151_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB151_7
.LBB151_3:                              # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB151_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB151_6
.LBB151_5:                              # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB151_6:                              # %if.end
	jmp	.LBB151_7
.LBB151_7:                              # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB151_9
# BB#8:                                 # %if.then.6
	jmp	.LBB151_10
.LBB151_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_static_stringarray, %rsi
	movabsq	$.L.str.77, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB151_12
.LBB151_10:                             # %if.end.8
	jmp	.LBB151_11
.LBB151_11:                             # %do.end
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_string_array_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
.LBB151_12:                             # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end151:
	.size	gimp_value_set_static_stringarray, .Lfunc_end151-gimp_value_set_static_stringarray
	.cfi_endproc

	.globl	gimp_value_take_stringarray
	.align	16, 0x90
	.type	gimp_value_take_stringarray,@function
gimp_value_take_stringarray:            # @gimp_value_take_stringarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp456:
	.cfi_def_cfa_offset 16
.Ltmp457:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp458:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_string_array_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB152_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB152_7
.LBB152_3:                              # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB152_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB152_6
.LBB152_5:                              # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -52(%rbp)
.LBB152_6:                              # %if.end
	jmp	.LBB152_7
.LBB152_7:                              # %if.end.4
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB152_9
# BB#8:                                 # %if.then.6
	jmp	.LBB152_10
.LBB152_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_take_stringarray, %rsi
	movabsq	$.L.str.77, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB152_12
.LBB152_10:                             # %if.end.8
	jmp	.LBB152_11
.LBB152_11:                             # %do.end
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_string_array_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed
.LBB152_12:                             # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end152:
	.size	gimp_value_take_stringarray, .Lfunc_end152-gimp_value_take_stringarray
	.cfi_endproc

	.globl	gimp_color_array_get_type
	.align	16, 0x90
	.type	gimp_color_array_get_type,@function
gimp_color_array_get_type:              # @gimp_color_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp459:
	.cfi_def_cfa_offset 16
.Ltmp460:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp461:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_color_array_get_type.type
	jne	.LBB153_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.78, %rdi
	movabsq	$gimp_array_copy, %rax
	movabsq	$gimp_array_free, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_color_array_get_type.type
.LBB153_2:                              # %if.end
	movq	gimp_color_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end153:
	.size	gimp_color_array_get_type, .Lfunc_end153-gimp_color_array_get_type
	.cfi_endproc

	.globl	gimp_param_color_array_get_type
	.align	16, 0x90
	.type	gimp_param_color_array_get_type,@function
gimp_param_color_array_get_type:        # @gimp_param_color_array_get_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp462:
	.cfi_def_cfa_offset 16
.Ltmp463:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp464:
	.cfi_def_cfa_register %rbp
	cmpq	$0, gimp_param_color_array_get_type.type
	jne	.LBB154_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.79, %rsi
	movabsq	$gimp_param_color_array_get_type.info, %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types, %rax
	movq	128(%rax), %rdi
	callq	g_type_register_static
	movq	%rax, gimp_param_color_array_get_type.type
.LBB154_2:                              # %if.end
	movq	gimp_param_color_array_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end154:
	.size	gimp_param_color_array_get_type, .Lfunc_end154-gimp_param_color_array_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_color_array_class_init,@function
gimp_param_color_array_class_init:      # @gimp_param_color_array_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp465:
	.cfi_def_cfa_offset 16
.Ltmp466:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp467:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_color_array_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end155:
	.size	gimp_param_color_array_class_init, .Lfunc_end155-gimp_param_color_array_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_color_array_init,@function
gimp_param_color_array_init:            # @gimp_param_color_array_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp468:
	.cfi_def_cfa_offset 16
.Ltmp469:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp470:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end156:
	.size	gimp_param_color_array_init, .Lfunc_end156-gimp_param_color_array_init
	.cfi_endproc

	.globl	gimp_param_spec_color_array
	.align	16, 0x90
	.type	gimp_param_spec_color_array,@function
gimp_param_spec_color_array:            # @gimp_param_spec_color_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp471:
	.cfi_def_cfa_offset 16
.Ltmp472:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp473:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	gimp_param_color_array_get_type
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end157:
	.size	gimp_param_spec_color_array, .Lfunc_end157-gimp_param_spec_color_array
	.cfi_endproc

	.globl	gimp_value_get_colorarray
	.align	16, 0x90
	.type	gimp_value_get_colorarray,@function
gimp_value_get_colorarray:              # @gimp_value_get_colorarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp474:
	.cfi_def_cfa_offset 16
.Ltmp475:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp476:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB158_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB158_7
.LBB158_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB158_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB158_6
.LBB158_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB158_6:                              # %if.end
	jmp	.LBB158_7
.LBB158_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB158_9
# BB#8:                                 # %if.then.6
	jmp	.LBB158_10
.LBB158_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_get_colorarray, %rsi
	movabsq	$.L.str.80, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB158_12
.LBB158_10:                             # %if.end.8
	jmp	.LBB158_11
.LBB158_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_get_array
	movq	%rax, -8(%rbp)
.LBB158_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end158:
	.size	gimp_value_get_colorarray, .Lfunc_end158-gimp_value_get_colorarray
	.cfi_endproc

	.globl	gimp_value_dup_colorarray
	.align	16, 0x90
	.type	gimp_value_dup_colorarray,@function
gimp_value_dup_colorarray:              # @gimp_value_dup_colorarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp477:
	.cfi_def_cfa_offset 16
.Ltmp478:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp479:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_array_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB159_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB159_7
.LBB159_3:                              # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB159_5
# BB#4:                                 # %if.then.1
	movl	$1, -36(%rbp)
	jmp	.LBB159_6
.LBB159_5:                              # %if.else.2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -36(%rbp)
.LBB159_6:                              # %if.end
	jmp	.LBB159_7
.LBB159_7:                              # %if.end.4
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB159_9
# BB#8:                                 # %if.then.6
	jmp	.LBB159_10
.LBB159_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_dup_colorarray, %rsi
	movabsq	$.L.str.80, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB159_12
.LBB159_10:                             # %if.end.8
	jmp	.LBB159_11
.LBB159_11:                             # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_value_dup_array
	movq	%rax, -8(%rbp)
.LBB159_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end159:
	.size	gimp_value_dup_colorarray, .Lfunc_end159-gimp_value_dup_colorarray
	.cfi_endproc

	.globl	gimp_value_set_colorarray
	.align	16, 0x90
	.type	gimp_value_set_colorarray,@function
gimp_value_set_colorarray:              # @gimp_value_set_colorarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp480:
	.cfi_def_cfa_offset 16
.Ltmp481:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp482:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB160_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB160_7
.LBB160_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB160_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB160_6
.LBB160_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB160_6:                              # %if.end
	jmp	.LBB160_7
.LBB160_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB160_9
# BB#8:                                 # %if.then.6
	jmp	.LBB160_10
.LBB160_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_colorarray, %rsi
	movabsq	$.L.str.80, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB160_12
.LBB160_10:                             # %if.end.8
	jmp	.LBB160_11
.LBB160_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_set_array
.LBB160_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end160:
	.size	gimp_value_set_colorarray, .Lfunc_end160-gimp_value_set_colorarray
	.cfi_endproc

	.globl	gimp_value_set_static_colorarray
	.align	16, 0x90
	.type	gimp_value_set_static_colorarray,@function
gimp_value_set_static_colorarray:       # @gimp_value_set_static_colorarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp483:
	.cfi_def_cfa_offset 16
.Ltmp484:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp485:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB161_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB161_7
.LBB161_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB161_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB161_6
.LBB161_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB161_6:                              # %if.end
	jmp	.LBB161_7
.LBB161_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB161_9
# BB#8:                                 # %if.then.6
	jmp	.LBB161_10
.LBB161_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_set_static_colorarray, %rsi
	movabsq	$.L.str.80, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB161_12
.LBB161_10:                             # %if.end.8
	jmp	.LBB161_11
.LBB161_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_set_static_array
.LBB161_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end161:
	.size	gimp_value_set_static_colorarray, .Lfunc_end161-gimp_value_set_static_colorarray
	.cfi_endproc

	.globl	gimp_value_take_colorarray
	.align	16, 0x90
	.type	gimp_value_take_colorarray,@function
gimp_value_take_colorarray:             # @gimp_value_take_colorarray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp486:
	.cfi_def_cfa_offset 16
.Ltmp487:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp488:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_color_array_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB162_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB162_7
.LBB162_3:                              # %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB162_5
# BB#4:                                 # %if.then.1
	movl	$1, -44(%rbp)
	jmp	.LBB162_6
.LBB162_5:                              # %if.else.2
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -44(%rbp)
.LBB162_6:                              # %if.end
	jmp	.LBB162_7
.LBB162_7:                              # %if.end.4
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB162_9
# BB#8:                                 # %if.then.6
	jmp	.LBB162_10
.LBB162_9:                              # %if.else.7
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_value_take_colorarray, %rsi
	movabsq	$.L.str.80, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB162_12
.LBB162_10:                             # %if.end.8
	jmp	.LBB162_11
.LBB162_11:                             # %do.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_value_take_array
.LBB162_12:                             # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end162:
	.size	gimp_value_take_colorarray, .Lfunc_end162-gimp_value_take_colorarray
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_string_validate,@function
gimp_param_string_validate:             # @gimp_param_string_validate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp489:
	.cfi_def_cfa_offset 16
.Ltmp490:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp491:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_param_string_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	gimp_param_string_parent_class, %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB163_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB163_25
.LBB163_2:                              # %if.end
	cmpq	$0, -40(%rbp)
	je	.LBB163_21
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movb	104(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB163_9
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB163_9
# BB#5:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$134217728, %ecx        # imm = 0x8000000
	cmpl	$0, %ecx
	jne	.LBB163_7
# BB#6:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB163_8
.LBB163_7:                              # %if.else
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$-134217729, %ecx       # imm = 0xFFFFFFFFF7FFFFFF
	movl	%ecx, 16(%rax)
.LBB163_8:                              # %if.end.17
	movabsq	$.L.str.81, %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movl	$1, -4(%rbp)
	jmp	.LBB163_25
.LBB163_9:                              # %if.end.22
	movq	-32(%rbp), %rax
	movb	104(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB163_20
# BB#10:                                # %land.lhs.true.27
	movq	$-1, %rsi
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	jne	.LBB163_20
# BB#11:                                # %if.then.30
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$134217728, %ecx        # imm = 0x8000000
	cmpl	$0, %ecx
	je	.LBB163_13
# BB#12:                                # %if.then.36
	movq	-40(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$-134217729, %ecx       # imm = 0xFFFFFFFFF7FFFFFF
	movl	%ecx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB163_13:                             # %if.end.48
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB163_14:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB163_19
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB163_14 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jge	.LBB163_17
# BB#16:                                # %if.then.51
                                        #   in Loop: Header=BB163_14 Depth=1
	movq	-48(%rbp), %rax
	movb	$63, (%rax)
.LBB163_17:                             # %if.end.52
                                        #   in Loop: Header=BB163_14 Depth=1
	jmp	.LBB163_18
.LBB163_18:                             # %for.inc
                                        #   in Loop: Header=BB163_14 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB163_14
.LBB163_19:                             # %for.end
	movl	$1, -4(%rbp)
	jmp	.LBB163_25
.LBB163_20:                             # %if.end.53
	jmp	.LBB163_24
.LBB163_21:                             # %if.else.54
	movq	-32(%rbp), %rax
	movb	104(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB163_23
# BB#22:                                # %if.then.61
	movabsq	$.L.str.81, %rdi
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$-134217729, %ecx       # imm = 0xFFFFFFFFF7FFFFFF
	movl	%ecx, 16(%rax)
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movl	$1, -4(%rbp)
	jmp	.LBB163_25
.LBB163_23:                             # %if.end.70
	jmp	.LBB163_24
.LBB163_24:                             # %if.end.71
	movl	$0, -4(%rbp)
.LBB163_25:                             # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end163:
	.size	gimp_param_string_validate, .Lfunc_end163-gimp_param_string_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_enum_finalize,@function
gimp_param_enum_finalize:               # @gimp_param_enum_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp492:
	.cfi_def_cfa_offset 16
.Ltmp493:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp494:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gimp_param_enum_get_type
	movq	%rax, %rdi
	callq	g_type_parent
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_slist_free
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end164:
	.size	gimp_param_enum_finalize, .Lfunc_end164-gimp_param_enum_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_enum_validate,@function
gimp_param_enum_validate:               # @gimp_param_enum_validate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp495:
	.cfi_def_cfa_offset 16
.Ltmp496:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp497:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	callq	gimp_param_enum_get_type
	movq	%rax, %rdi
	callq	g_type_parent
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB165_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB165_12
.LBB165_2:                              # %if.end
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB165_3:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB165_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB165_3 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rdx
	cmpq	8(%rdx), %rax
	jne	.LBB165_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	80(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movslq	80(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB165_12
.LBB165_6:                              # %if.end.17
                                        #   in Loop: Header=BB165_3 Depth=1
	jmp	.LBB165_7
.LBB165_7:                              # %for.inc
                                        #   in Loop: Header=BB165_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB165_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB165_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB165_10
.LBB165_9:                              # %cond.false
                                        #   in Loop: Header=BB165_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB165_10
.LBB165_10:                             # %cond.end
                                        #   in Loop: Header=BB165_3 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB165_3
.LBB165_11:                             # %for.end
	movl	$0, -4(%rbp)
.LBB165_12:                             # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end165:
	.size	gimp_param_enum_validate, .Lfunc_end165-gimp_param_enum_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_image_id_set_default,@function
gimp_param_image_id_set_default:        # @gimp_param_image_id_set_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp498:
	.cfi_def_cfa_offset 16
.Ltmp499:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp500:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	$-1, 8(%rsi)
	popq	%rbp
	retq
.Lfunc_end166:
	.size	gimp_param_image_id_set_default, .Lfunc_end166-gimp_param_image_id_set_default
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_image_id_validate,@function
gimp_param_image_id_validate:           # @gimp_param_image_id_validate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp501:
	.cfi_def_cfa_offset 16
.Ltmp502:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp503:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_param_image_id_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB167_4
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -36(%rbp)
	je	.LBB167_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$-1, -36(%rbp)
	jne	.LBB167_4
.LBB167_3:                              # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB167_14
.LBB167_4:                              # %if.end
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_image_get_by_ID
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB167_6
# BB#5:                                 # %if.then.6
	movl	$0, -68(%rbp)
	jmp	.LBB167_11
.LBB167_6:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB167_9
# BB#7:                                 # %land.lhs.true.8
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB167_9
# BB#8:                                 # %if.then.11
	movl	$1, -68(%rbp)
	jmp	.LBB167_10
.LBB167_9:                              # %if.else.12
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB167_10:                             # %if.end.14
	jmp	.LBB167_11
.LBB167_11:                             # %if.end.15
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.LBB167_13
# BB#12:                                # %if.then.17
	movq	-24(%rbp), %rax
	movl	$-1, 8(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB167_14
.LBB167_13:                             # %if.end.21
	movl	$0, -4(%rbp)
.LBB167_14:                             # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end167:
	.size	gimp_param_image_id_validate, .Lfunc_end167-gimp_param_image_id_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_image_id_values_cmp,@function
gimp_param_image_id_values_cmp:         # @gimp_param_image_id_values_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp504:
	.cfi_def_cfa_offset 16
.Ltmp505:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp506:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB168_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB168_5
.LBB168_2:                              # %if.else
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB168_4
# BB#3:                                 # %if.then.5
	movl	$1, -4(%rbp)
	jmp	.LBB168_5
.LBB168_4:                              # %if.else.6
	movl	$0, -4(%rbp)
.LBB168_5:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end168:
	.size	gimp_param_image_id_values_cmp, .Lfunc_end168-gimp_param_image_id_values_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_item_id_set_default,@function
gimp_param_item_id_set_default:         # @gimp_param_item_id_set_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp507:
	.cfi_def_cfa_offset 16
.Ltmp508:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp509:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	$-1, 8(%rsi)
	popq	%rbp
	retq
.Lfunc_end169:
	.size	gimp_param_item_id_set_default, .Lfunc_end169-gimp_param_item_id_set_default
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_item_id_validate,@function
gimp_param_item_id_validate:            # @gimp_param_item_id_validate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp510:
	.cfi_def_cfa_offset 16
.Ltmp511:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp512:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_param_item_id_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 104(%rax)
	je	.LBB170_4
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -36(%rbp)
	je	.LBB170_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$-1, -36(%rbp)
	jne	.LBB170_4
.LBB170_3:                              # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB170_11
.LBB170_4:                              # %if.end
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_item_get_by_ID
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB170_6
# BB#5:                                 # %lor.lhs.false.5
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	96(%rax), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	jne	.LBB170_7
.LBB170_6:                              # %if.then.8
	movq	-24(%rbp), %rax
	movl	$-1, 8(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB170_11
.LBB170_7:                              # %if.else
	movq	-48(%rbp), %rdi
	callq	gimp_item_is_removed
	cmpl	$0, %eax
	je	.LBB170_9
# BB#8:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movl	$-1, 8(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB170_11
.LBB170_9:                              # %if.end.18
	jmp	.LBB170_10
.LBB170_10:                             # %if.end.19
	movl	$0, -4(%rbp)
.LBB170_11:                             # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end170:
	.size	gimp_param_item_id_validate, .Lfunc_end170-gimp_param_item_id_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_item_id_values_cmp,@function
gimp_param_item_id_values_cmp:          # @gimp_param_item_id_values_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp513:
	.cfi_def_cfa_offset 16
.Ltmp514:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp515:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB171_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB171_5
.LBB171_2:                              # %if.else
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB171_4
# BB#3:                                 # %if.then.5
	movl	$1, -4(%rbp)
	jmp	.LBB171_5
.LBB171_4:                              # %if.else.6
	movl	$0, -4(%rbp)
.LBB171_5:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end171:
	.size	gimp_param_item_id_values_cmp, .Lfunc_end171-gimp_param_item_id_values_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_display_id_set_default,@function
gimp_param_display_id_set_default:      # @gimp_param_display_id_set_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp516:
	.cfi_def_cfa_offset 16
.Ltmp517:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp518:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	$-1, 8(%rsi)
	popq	%rbp
	retq
.Lfunc_end172:
	.size	gimp_param_display_id_set_default, .Lfunc_end172-gimp_param_display_id_set_default
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_display_id_validate,@function
gimp_param_display_id_validate:         # @gimp_param_display_id_validate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp519:
	.cfi_def_cfa_offset 16
.Ltmp520:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp521:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_param_display_id_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB173_4
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -36(%rbp)
	je	.LBB173_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$-1, -36(%rbp)
	jne	.LBB173_4
.LBB173_3:                              # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB173_14
.LBB173_4:                              # %if.end
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_get_display_by_ID
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB173_6
# BB#5:                                 # %if.then.6
	movl	$0, -68(%rbp)
	jmp	.LBB173_11
.LBB173_6:                              # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB173_9
# BB#7:                                 # %land.lhs.true.8
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB173_9
# BB#8:                                 # %if.then.11
	movl	$1, -68(%rbp)
	jmp	.LBB173_10
.LBB173_9:                              # %if.else.12
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB173_10:                             # %if.end.14
	jmp	.LBB173_11
.LBB173_11:                             # %if.end.15
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.LBB173_13
# BB#12:                                # %if.then.17
	movq	-24(%rbp), %rax
	movl	$-1, 8(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB173_14
.LBB173_13:                             # %if.end.21
	movl	$0, -4(%rbp)
.LBB173_14:                             # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end173:
	.size	gimp_param_display_id_validate, .Lfunc_end173-gimp_param_display_id_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_display_id_values_cmp,@function
gimp_param_display_id_values_cmp:       # @gimp_param_display_id_values_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp522:
	.cfi_def_cfa_offset 16
.Ltmp523:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp524:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB174_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB174_5
.LBB174_2:                              # %if.else
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB174_4
# BB#3:                                 # %if.then.5
	movl	$1, -4(%rbp)
	jmp	.LBB174_5
.LBB174_4:                              # %if.else.6
	movl	$0, -4(%rbp)
.LBB174_5:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end174:
	.size	gimp_param_display_id_values_cmp, .Lfunc_end174-gimp_param_display_id_values_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_array_validate,@function
gimp_param_array_validate:              # @gimp_param_array_validate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp525:
	.cfi_def_cfa_offset 16
.Ltmp526:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp527:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB175_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB175_3
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB175_5
.LBB175_3:                              # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB175_6
# BB#4:                                 # %land.lhs.true.5
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB175_6
.LBB175_5:                              # %if.then.8
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_value_set_boxed
	movl	$1, -4(%rbp)
	jmp	.LBB175_8
.LBB175_6:                              # %if.end
	jmp	.LBB175_7
.LBB175_7:                              # %if.end.9
	movl	$0, -4(%rbp)
.LBB175_8:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end175:
	.size	gimp_param_array_validate, .Lfunc_end175-gimp_param_array_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_array_values_cmp,@function
gimp_param_array_values_cmp:            # @gimp_param_array_values_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp528:
	.cfi_def_cfa_offset 16
.Ltmp529:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp530:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB176_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpq	$0, -48(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB176_12
.LBB176_2:                              # %if.else
	cmpq	$0, -48(%rbp)
	jne	.LBB176_4
# BB#3:                                 # %if.then.5
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, -40(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB176_12
.LBB176_4:                              # %if.else.8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB176_6
# BB#5:                                 # %if.then.11
	movl	$-1, -4(%rbp)
	jmp	.LBB176_12
.LBB176_6:                              # %if.else.12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB176_8
# BB#7:                                 # %if.then.16
	movl	$1, -4(%rbp)
	jmp	.LBB176_12
.LBB176_8:                              # %if.end
	jmp	.LBB176_9
.LBB176_9:                              # %if.end.17
	jmp	.LBB176_10
.LBB176_10:                             # %if.end.18
	jmp	.LBB176_11
.LBB176_11:                             # %if.end.19
	movl	$0, -4(%rbp)
.LBB176_12:                             # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end176:
	.size	gimp_param_array_values_cmp, .Lfunc_end176-gimp_param_array_values_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_string_array_validate,@function
gimp_param_string_array_validate:       # @gimp_param_string_array_validate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp531:
	.cfi_def_cfa_offset 16
.Ltmp532:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp533:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB177_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB177_3
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB177_5
.LBB177_3:                              # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB177_6
# BB#4:                                 # %land.lhs.true.5
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB177_6
.LBB177_5:                              # %if.then.8
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	g_value_set_boxed
	movl	$1, -4(%rbp)
	jmp	.LBB177_8
.LBB177_6:                              # %if.end
	jmp	.LBB177_7
.LBB177_7:                              # %if.end.9
	movl	$0, -4(%rbp)
.LBB177_8:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end177:
	.size	gimp_param_string_array_validate, .Lfunc_end177-gimp_param_string_array_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_string_array_values_cmp,@function
gimp_param_string_array_values_cmp:     # @gimp_param_string_array_values_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp534:
	.cfi_def_cfa_offset 16
.Ltmp535:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp536:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB178_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpq	$0, -48(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB178_12
.LBB178_2:                              # %if.else
	cmpq	$0, -48(%rbp)
	jne	.LBB178_4
# BB#3:                                 # %if.then.5
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, -40(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB178_12
.LBB178_4:                              # %if.else.8
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB178_6
# BB#5:                                 # %if.then.11
	movl	$-1, -4(%rbp)
	jmp	.LBB178_12
.LBB178_6:                              # %if.else.12
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jbe	.LBB178_8
# BB#7:                                 # %if.then.16
	movl	$1, -4(%rbp)
	jmp	.LBB178_12
.LBB178_8:                              # %if.end
	jmp	.LBB178_9
.LBB178_9:                              # %if.end.17
	jmp	.LBB178_10
.LBB178_10:                             # %if.end.18
	jmp	.LBB178_11
.LBB178_11:                             # %if.end.19
	movl	$0, -4(%rbp)
.LBB178_12:                             # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end178:
	.size	gimp_param_string_array_values_cmp, .Lfunc_end178-gimp_param_string_array_values_cmp
	.cfi_endproc

	.type	gimp_int32_get_type.type,@object # @gimp_int32_get_type.type
	.local	gimp_int32_get_type.type
	.comm	gimp_int32_get_type.type,8,8
	.type	gimp_int32_get_type.info,@object # @gimp_int32_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_int32_get_type.info:
	.zero	72
	.size	gimp_int32_get_type.info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpInt32"
	.size	.L.str, 10

	.type	gimp_param_int32_get_type.type,@object # @gimp_param_int32_get_type.type
	.local	gimp_param_int32_get_type.type
	.comm	gimp_param_int32_get_type.type,8,8
	.type	gimp_param_int32_get_type.info,@object # @gimp_param_int32_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_int32_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_int32_class_init
	.quad	0
	.quad	0
	.short	88                      # 0x58
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_int32_init
	.quad	0
	.size	gimp_param_int32_get_type.info, 72

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"GimpParamInt32"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Core"
	.size	.L.str.2, 10

	.type	.L__func__.gimp_param_spec_int32,@object # @__func__.gimp_param_spec_int32
.L__func__.gimp_param_spec_int32:
	.asciz	"gimp_param_spec_int32"
	.size	.L__func__.gimp_param_spec_int32, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"minimum >= G_MININT32"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"maximum <= G_MAXINT32"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"default_value >= minimum && default_value <= maximum"
	.size	.L.str.5, 53

	.type	gimp_int16_get_type.type,@object # @gimp_int16_get_type.type
	.local	gimp_int16_get_type.type
	.comm	gimp_int16_get_type.type,8,8
	.type	gimp_int16_get_type.info,@object # @gimp_int16_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_int16_get_type.info:
	.zero	72
	.size	gimp_int16_get_type.info, 72

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"GimpInt16"
	.size	.L.str.6, 10

	.type	gimp_param_int16_get_type.type,@object # @gimp_param_int16_get_type.type
	.local	gimp_param_int16_get_type.type
	.comm	gimp_param_int16_get_type.type,8,8
	.type	gimp_param_int16_get_type.info,@object # @gimp_param_int16_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_int16_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_int16_class_init
	.quad	0
	.quad	0
	.short	88                      # 0x58
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_int16_init
	.quad	0
	.size	gimp_param_int16_get_type.info, 72

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"GimpParamInt16"
	.size	.L.str.7, 15

	.type	.L__func__.gimp_param_spec_int16,@object # @__func__.gimp_param_spec_int16
.L__func__.gimp_param_spec_int16:
	.asciz	"gimp_param_spec_int16"
	.size	.L__func__.gimp_param_spec_int16, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"minimum >= G_MININT16"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"maximum <= G_MAXINT16"
	.size	.L.str.9, 22

	.type	gimp_int8_get_type.type,@object # @gimp_int8_get_type.type
	.local	gimp_int8_get_type.type
	.comm	gimp_int8_get_type.type,8,8
	.type	gimp_int8_get_type.info,@object # @gimp_int8_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_int8_get_type.info:
	.zero	72
	.size	gimp_int8_get_type.info, 72

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"GimpInt8"
	.size	.L.str.10, 9

	.type	gimp_param_int8_get_type.type,@object # @gimp_param_int8_get_type.type
	.local	gimp_param_int8_get_type.type
	.comm	gimp_param_int8_get_type.type,8,8
	.type	gimp_param_int8_get_type.info,@object # @gimp_param_int8_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_int8_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_int8_class_init
	.quad	0
	.quad	0
	.short	88                      # 0x58
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_int8_init
	.quad	0
	.size	gimp_param_int8_get_type.info, 72

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"GimpParamInt8"
	.size	.L.str.11, 14

	.type	.L__func__.gimp_param_spec_int8,@object # @__func__.gimp_param_spec_int8
.L__func__.gimp_param_spec_int8:
	.asciz	"gimp_param_spec_int8"
	.size	.L__func__.gimp_param_spec_int8, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"maximum <= G_MAXUINT8"
	.size	.L.str.12, 22

	.type	gimp_param_string_get_type.type,@object # @gimp_param_string_get_type.type
	.local	gimp_param_string_get_type.type
	.comm	gimp_param_string_get_type.type,8,8
	.type	gimp_param_string_get_type.info,@object # @gimp_param_string_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_string_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_string_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_string_init
	.quad	0
	.size	gimp_param_string_get_type.info, 72

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"GimpParamString"
	.size	.L.str.13, 16

	.type	.L__func__.gimp_param_spec_string,@object # @__func__.gimp_param_spec_string
.L__func__.gimp_param_spec_string:
	.asciz	"gimp_param_spec_string"
	.size	.L__func__.gimp_param_spec_string, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"! (null_ok && non_empty)"
	.size	.L.str.14, 25

	.type	gimp_param_enum_get_type.type,@object # @gimp_param_enum_get_type.type
	.local	gimp_param_enum_get_type.type
	.comm	gimp_param_enum_get_type.type,8,8
	.type	gimp_param_enum_get_type.info,@object # @gimp_param_enum_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_enum_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_enum_class_init
	.quad	0
	.quad	0
	.short	96                      # 0x60
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_enum_init
	.quad	0
	.size	gimp_param_enum_get_type.info, 72

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"GimpParamEnum"
	.size	.L.str.15, 14

	.type	.L__func__.gimp_param_spec_enum,@object # @__func__.gimp_param_spec_enum
.L__func__.gimp_param_spec_enum:
	.asciz	"gimp_param_spec_enum"
	.size	.L__func__.gimp_param_spec_enum, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"G_TYPE_IS_ENUM (enum_type)"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"g_enum_get_value (enum_class, default_value) != NULL"
	.size	.L.str.17, 53

	.type	.L__func__.gimp_param_spec_enum_exclude_value,@object # @__func__.gimp_param_spec_enum_exclude_value
.L__func__.gimp_param_spec_enum_exclude_value:
	.asciz	"gimp_param_spec_enum_exclude_value"
	.size	.L__func__.gimp_param_spec_enum_exclude_value, 35

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_PARAM_SPEC_ENUM (espec)"
	.size	.L.str.18, 32

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"g_enum_get_value (G_PARAM_SPEC_ENUM (espec)->enum_class, value) != NULL"
	.size	.L.str.19, 72

	.type	gimp_image_id_get_type.type,@object # @gimp_image_id_get_type.type
	.local	gimp_image_id_get_type.type
	.comm	gimp_image_id_get_type.type,8,8
	.type	gimp_image_id_get_type.info,@object # @gimp_image_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_image_id_get_type.info:
	.zero	72
	.size	gimp_image_id_get_type.info, 72

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"GimpImageID"
	.size	.L.str.20, 12

	.type	gimp_param_image_id_get_type.type,@object # @gimp_param_image_id_get_type.type
	.local	gimp_param_image_id_get_type.type
	.comm	gimp_param_image_id_get_type.type,8,8
	.type	gimp_param_image_id_get_type.info,@object # @gimp_param_image_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_image_id_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_image_id_class_init
	.quad	0
	.quad	0
	.short	104                     # 0x68
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_image_id_init
	.quad	0
	.size	gimp_param_image_id_get_type.info, 72

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"GimpParamImageID"
	.size	.L.str.21, 17

	.type	.L__func__.gimp_param_spec_image_id,@object # @__func__.gimp_param_spec_image_id
.L__func__.gimp_param_spec_image_id:
	.asciz	"gimp_param_spec_image_id"
	.size	.L__func__.gimp_param_spec_image_id, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.22, 20

	.type	.L__func__.gimp_value_get_image,@object # @__func__.gimp_value_get_image
.L__func__.gimp_value_get_image:
	.asciz	"gimp_value_get_image"
	.size	.L__func__.gimp_value_get_image, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GIMP_VALUE_HOLDS_IMAGE_ID (value)"
	.size	.L.str.23, 34

	.type	.L__func__.gimp_value_set_image,@object # @__func__.gimp_value_set_image
.L__func__.gimp_value_set_image:
	.asciz	"gimp_value_set_image"
	.size	.L__func__.gimp_value_set_image, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.24, 39

	.type	gimp_item_id_get_type.type,@object # @gimp_item_id_get_type.type
	.local	gimp_item_id_get_type.type
	.comm	gimp_item_id_get_type.type,8,8
	.type	gimp_item_id_get_type.info,@object # @gimp_item_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_item_id_get_type.info:
	.zero	72
	.size	gimp_item_id_get_type.info, 72

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"GimpItemID"
	.size	.L.str.25, 11

	.type	gimp_param_item_id_get_type.type,@object # @gimp_param_item_id_get_type.type
	.local	gimp_param_item_id_get_type.type
	.comm	gimp_param_item_id_get_type.type,8,8
	.type	gimp_param_item_id_get_type.info,@object # @gimp_param_item_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_item_id_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_item_id_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_item_id_init
	.quad	0
	.size	gimp_param_item_id_get_type.info, 72

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"GimpParamItemID"
	.size	.L.str.26, 16

	.type	.L__func__.gimp_param_spec_item_id,@object # @__func__.gimp_param_spec_item_id
.L__func__.gimp_param_spec_item_id:
	.asciz	"gimp_param_spec_item_id"
	.size	.L__func__.gimp_param_spec_item_id, 24

	.type	.L__func__.gimp_value_get_item,@object # @__func__.gimp_value_get_item
.L__func__.gimp_value_get_item:
	.asciz	"gimp_value_get_item"
	.size	.L__func__.gimp_value_get_item, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"GIMP_VALUE_HOLDS_ITEM_ID (value)"
	.size	.L.str.27, 33

	.type	.L__func__.gimp_value_set_item,@object # @__func__.gimp_value_set_item
.L__func__.gimp_value_set_item:
	.asciz	"gimp_value_set_item"
	.size	.L__func__.gimp_value_set_item, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"item == NULL || GIMP_IS_ITEM (item)"
	.size	.L.str.28, 36

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.29, 45

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimpparamspecs.c"
	.size	.L.str.30, 17

	.type	gimp_drawable_id_get_type.type,@object # @gimp_drawable_id_get_type.type
	.local	gimp_drawable_id_get_type.type
	.comm	gimp_drawable_id_get_type.type,8,8
	.type	gimp_drawable_id_get_type.info,@object # @gimp_drawable_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_drawable_id_get_type.info:
	.zero	72
	.size	gimp_drawable_id_get_type.info, 72

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"GimpDrawableID"
	.size	.L.str.31, 15

	.type	gimp_param_drawable_id_get_type.type,@object # @gimp_param_drawable_id_get_type.type
	.local	gimp_param_drawable_id_get_type.type
	.comm	gimp_param_drawable_id_get_type.type,8,8
	.type	gimp_param_drawable_id_get_type.info,@object # @gimp_param_drawable_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_drawable_id_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_drawable_id_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_drawable_id_init
	.quad	0
	.size	gimp_param_drawable_id_get_type.info, 72

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"GimpParamDrawableID"
	.size	.L.str.32, 20

	.type	.L__func__.gimp_param_spec_drawable_id,@object # @__func__.gimp_param_spec_drawable_id
.L__func__.gimp_param_spec_drawable_id:
	.asciz	"gimp_param_spec_drawable_id"
	.size	.L__func__.gimp_param_spec_drawable_id, 28

	.type	.L__func__.gimp_value_get_drawable,@object # @__func__.gimp_value_get_drawable
.L__func__.gimp_value_get_drawable:
	.asciz	"gimp_value_get_drawable"
	.size	.L__func__.gimp_value_get_drawable, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"GIMP_VALUE_HOLDS_DRAWABLE_ID (value)"
	.size	.L.str.33, 37

	.type	.L__func__.gimp_value_set_drawable,@object # @__func__.gimp_value_set_drawable
.L__func__.gimp_value_set_drawable:
	.asciz	"gimp_value_set_drawable"
	.size	.L__func__.gimp_value_set_drawable, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"drawable == NULL || GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.34, 48

	.type	gimp_layer_id_get_type.type,@object # @gimp_layer_id_get_type.type
	.local	gimp_layer_id_get_type.type
	.comm	gimp_layer_id_get_type.type,8,8
	.type	gimp_layer_id_get_type.info,@object # @gimp_layer_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_layer_id_get_type.info:
	.zero	72
	.size	gimp_layer_id_get_type.info, 72

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"GimpLayerID"
	.size	.L.str.35, 12

	.type	gimp_param_layer_id_get_type.type,@object # @gimp_param_layer_id_get_type.type
	.local	gimp_param_layer_id_get_type.type
	.comm	gimp_param_layer_id_get_type.type,8,8
	.type	gimp_param_layer_id_get_type.info,@object # @gimp_param_layer_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_layer_id_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_layer_id_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_layer_id_init
	.quad	0
	.size	gimp_param_layer_id_get_type.info, 72

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"GimpParamLayerID"
	.size	.L.str.36, 17

	.type	.L__func__.gimp_param_spec_layer_id,@object # @__func__.gimp_param_spec_layer_id
.L__func__.gimp_param_spec_layer_id:
	.asciz	"gimp_param_spec_layer_id"
	.size	.L__func__.gimp_param_spec_layer_id, 25

	.type	.L__func__.gimp_value_get_layer,@object # @__func__.gimp_value_get_layer
.L__func__.gimp_value_get_layer:
	.asciz	"gimp_value_get_layer"
	.size	.L__func__.gimp_value_get_layer, 21

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"GIMP_VALUE_HOLDS_LAYER_ID (value)"
	.size	.L.str.37, 34

	.type	.L__func__.gimp_value_set_layer,@object # @__func__.gimp_value_set_layer
.L__func__.gimp_value_set_layer:
	.asciz	"gimp_value_set_layer"
	.size	.L__func__.gimp_value_set_layer, 21

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"layer == NULL || GIMP_IS_LAYER (layer)"
	.size	.L.str.38, 39

	.type	gimp_channel_id_get_type.type,@object # @gimp_channel_id_get_type.type
	.local	gimp_channel_id_get_type.type
	.comm	gimp_channel_id_get_type.type,8,8
	.type	gimp_channel_id_get_type.info,@object # @gimp_channel_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_channel_id_get_type.info:
	.zero	72
	.size	gimp_channel_id_get_type.info, 72

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"GimpChannelID"
	.size	.L.str.39, 14

	.type	gimp_param_channel_id_get_type.type,@object # @gimp_param_channel_id_get_type.type
	.local	gimp_param_channel_id_get_type.type
	.comm	gimp_param_channel_id_get_type.type,8,8
	.type	gimp_param_channel_id_get_type.info,@object # @gimp_param_channel_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_channel_id_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_channel_id_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_channel_id_init
	.quad	0
	.size	gimp_param_channel_id_get_type.info, 72

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"GimpParamChannelID"
	.size	.L.str.40, 19

	.type	.L__func__.gimp_param_spec_channel_id,@object # @__func__.gimp_param_spec_channel_id
.L__func__.gimp_param_spec_channel_id:
	.asciz	"gimp_param_spec_channel_id"
	.size	.L__func__.gimp_param_spec_channel_id, 27

	.type	.L__func__.gimp_value_get_channel,@object # @__func__.gimp_value_get_channel
.L__func__.gimp_value_get_channel:
	.asciz	"gimp_value_get_channel"
	.size	.L__func__.gimp_value_get_channel, 23

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"GIMP_VALUE_HOLDS_CHANNEL_ID (value)"
	.size	.L.str.41, 36

	.type	.L__func__.gimp_value_set_channel,@object # @__func__.gimp_value_set_channel
.L__func__.gimp_value_set_channel:
	.asciz	"gimp_value_set_channel"
	.size	.L__func__.gimp_value_set_channel, 23

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"channel == NULL || GIMP_IS_CHANNEL (channel)"
	.size	.L.str.42, 45

	.type	gimp_layer_mask_id_get_type.type,@object # @gimp_layer_mask_id_get_type.type
	.local	gimp_layer_mask_id_get_type.type
	.comm	gimp_layer_mask_id_get_type.type,8,8
	.type	gimp_layer_mask_id_get_type.info,@object # @gimp_layer_mask_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_layer_mask_id_get_type.info:
	.zero	72
	.size	gimp_layer_mask_id_get_type.info, 72

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"GimpLayerMaskID"
	.size	.L.str.43, 16

	.type	gimp_param_layer_mask_id_get_type.type,@object # @gimp_param_layer_mask_id_get_type.type
	.local	gimp_param_layer_mask_id_get_type.type
	.comm	gimp_param_layer_mask_id_get_type.type,8,8
	.type	gimp_param_layer_mask_id_get_type.info,@object # @gimp_param_layer_mask_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_layer_mask_id_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_layer_mask_id_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_layer_mask_id_init
	.quad	0
	.size	gimp_param_layer_mask_id_get_type.info, 72

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"GimpParamLayerMaskID"
	.size	.L.str.44, 21

	.type	.L__func__.gimp_param_spec_layer_mask_id,@object # @__func__.gimp_param_spec_layer_mask_id
.L__func__.gimp_param_spec_layer_mask_id:
	.asciz	"gimp_param_spec_layer_mask_id"
	.size	.L__func__.gimp_param_spec_layer_mask_id, 30

	.type	.L__func__.gimp_value_get_layer_mask,@object # @__func__.gimp_value_get_layer_mask
.L__func__.gimp_value_get_layer_mask:
	.asciz	"gimp_value_get_layer_mask"
	.size	.L__func__.gimp_value_get_layer_mask, 26

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"GIMP_VALUE_HOLDS_LAYER_MASK_ID (value)"
	.size	.L.str.45, 39

	.type	.L__func__.gimp_value_set_layer_mask,@object # @__func__.gimp_value_set_layer_mask
.L__func__.gimp_value_set_layer_mask:
	.asciz	"gimp_value_set_layer_mask"
	.size	.L__func__.gimp_value_set_layer_mask, 26

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"layer_mask == NULL || GIMP_IS_LAYER_MASK (layer_mask)"
	.size	.L.str.46, 54

	.type	gimp_selection_id_get_type.type,@object # @gimp_selection_id_get_type.type
	.local	gimp_selection_id_get_type.type
	.comm	gimp_selection_id_get_type.type,8,8
	.type	gimp_selection_id_get_type.info,@object # @gimp_selection_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_selection_id_get_type.info:
	.zero	72
	.size	gimp_selection_id_get_type.info, 72

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"GimpSelectionID"
	.size	.L.str.47, 16

	.type	gimp_param_selection_id_get_type.type,@object # @gimp_param_selection_id_get_type.type
	.local	gimp_param_selection_id_get_type.type
	.comm	gimp_param_selection_id_get_type.type,8,8
	.type	gimp_param_selection_id_get_type.info,@object # @gimp_param_selection_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_selection_id_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_selection_id_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_selection_id_init
	.quad	0
	.size	gimp_param_selection_id_get_type.info, 72

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"GimpParamSelectionID"
	.size	.L.str.48, 21

	.type	.L__func__.gimp_param_spec_selection_id,@object # @__func__.gimp_param_spec_selection_id
.L__func__.gimp_param_spec_selection_id:
	.asciz	"gimp_param_spec_selection_id"
	.size	.L__func__.gimp_param_spec_selection_id, 29

	.type	.L__func__.gimp_value_get_selection,@object # @__func__.gimp_value_get_selection
.L__func__.gimp_value_get_selection:
	.asciz	"gimp_value_get_selection"
	.size	.L__func__.gimp_value_get_selection, 25

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GIMP_VALUE_HOLDS_SELECTION_ID (value)"
	.size	.L.str.49, 38

	.type	.L__func__.gimp_value_set_selection,@object # @__func__.gimp_value_set_selection
.L__func__.gimp_value_set_selection:
	.asciz	"gimp_value_set_selection"
	.size	.L__func__.gimp_value_set_selection, 25

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"selection == NULL || GIMP_IS_SELECTION (selection)"
	.size	.L.str.50, 51

	.type	gimp_vectors_id_get_type.type,@object # @gimp_vectors_id_get_type.type
	.local	gimp_vectors_id_get_type.type
	.comm	gimp_vectors_id_get_type.type,8,8
	.type	gimp_vectors_id_get_type.info,@object # @gimp_vectors_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_vectors_id_get_type.info:
	.zero	72
	.size	gimp_vectors_id_get_type.info, 72

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"GimpVectorsID"
	.size	.L.str.51, 14

	.type	gimp_param_vectors_id_get_type.type,@object # @gimp_param_vectors_id_get_type.type
	.local	gimp_param_vectors_id_get_type.type
	.comm	gimp_param_vectors_id_get_type.type,8,8
	.type	gimp_param_vectors_id_get_type.info,@object # @gimp_param_vectors_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_vectors_id_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_vectors_id_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_vectors_id_init
	.quad	0
	.size	gimp_param_vectors_id_get_type.info, 72

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"GimpParamVectorsID"
	.size	.L.str.52, 19

	.type	.L__func__.gimp_param_spec_vectors_id,@object # @__func__.gimp_param_spec_vectors_id
.L__func__.gimp_param_spec_vectors_id:
	.asciz	"gimp_param_spec_vectors_id"
	.size	.L__func__.gimp_param_spec_vectors_id, 27

	.type	.L__func__.gimp_value_get_vectors,@object # @__func__.gimp_value_get_vectors
.L__func__.gimp_value_get_vectors:
	.asciz	"gimp_value_get_vectors"
	.size	.L__func__.gimp_value_get_vectors, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"GIMP_VALUE_HOLDS_VECTORS_ID (value)"
	.size	.L.str.53, 36

	.type	.L__func__.gimp_value_set_vectors,@object # @__func__.gimp_value_set_vectors
.L__func__.gimp_value_set_vectors:
	.asciz	"gimp_value_set_vectors"
	.size	.L__func__.gimp_value_set_vectors, 23

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"vectors == NULL || GIMP_IS_VECTORS (vectors)"
	.size	.L.str.54, 45

	.type	gimp_display_id_get_type.type,@object # @gimp_display_id_get_type.type
	.local	gimp_display_id_get_type.type
	.comm	gimp_display_id_get_type.type,8,8
	.type	gimp_display_id_get_type.info,@object # @gimp_display_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_display_id_get_type.info:
	.zero	72
	.size	gimp_display_id_get_type.info, 72

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"GimpDisplayID"
	.size	.L.str.55, 14

	.type	gimp_param_display_id_get_type.type,@object # @gimp_param_display_id_get_type.type
	.local	gimp_param_display_id_get_type.type
	.comm	gimp_param_display_id_get_type.type,8,8
	.type	gimp_param_display_id_get_type.info,@object # @gimp_param_display_id_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_display_id_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_display_id_class_init
	.quad	0
	.quad	0
	.short	104                     # 0x68
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_display_id_init
	.quad	0
	.size	gimp_param_display_id_get_type.info, 72

	.type	.L.str.56,@object       # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"GimpParamDisplayID"
	.size	.L.str.56, 19

	.type	.L__func__.gimp_param_spec_display_id,@object # @__func__.gimp_param_spec_display_id
.L__func__.gimp_param_spec_display_id:
	.asciz	"gimp_param_spec_display_id"
	.size	.L__func__.gimp_param_spec_display_id, 27

	.type	.L__func__.gimp_value_get_display,@object # @__func__.gimp_value_get_display
.L__func__.gimp_value_get_display:
	.asciz	"gimp_value_get_display"
	.size	.L__func__.gimp_value_get_display, 23

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"GIMP_VALUE_HOLDS_DISPLAY_ID (value)"
	.size	.L.str.57, 36

	.type	.L__func__.gimp_value_set_display,@object # @__func__.gimp_value_set_display
.L__func__.gimp_value_set_display:
	.asciz	"gimp_value_set_display"
	.size	.L__func__.gimp_value_set_display, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"display == NULL || GIMP_IS_OBJECT (display)"
	.size	.L.str.58, 44

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"id"
	.size	.L.str.59, 3

	.type	.L__func__.gimp_array_new,@object # @__func__.gimp_array_new
.L__func__.gimp_array_new:
	.asciz	"gimp_array_new"
	.size	.L__func__.gimp_array_new, 15

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"(data == NULL && length == 0) || (data != NULL && length > 0)"
	.size	.L.str.60, 62

	.type	gimp_array_get_type.type,@object # @gimp_array_get_type.type
	.local	gimp_array_get_type.type
	.comm	gimp_array_get_type.type,8,8
	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"GimpArray"
	.size	.L.str.61, 10

	.type	gimp_param_array_get_type.type,@object # @gimp_param_array_get_type.type
	.local	gimp_param_array_get_type.type
	.comm	gimp_param_array_get_type.type,8,8
	.type	gimp_param_array_get_type.info,@object # @gimp_param_array_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_array_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_array_class_init
	.quad	0
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_array_init
	.quad	0
	.size	gimp_param_array_get_type.info, 72

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"GimpParamArray"
	.size	.L.str.62, 15

	.type	gimp_int8_array_get_type.type,@object # @gimp_int8_array_get_type.type
	.local	gimp_int8_array_get_type.type
	.comm	gimp_int8_array_get_type.type,8,8
	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"GimpInt8Array"
	.size	.L.str.63, 14

	.type	gimp_param_int8_array_get_type.type,@object # @gimp_param_int8_array_get_type.type
	.local	gimp_param_int8_array_get_type.type
	.comm	gimp_param_int8_array_get_type.type,8,8
	.type	gimp_param_int8_array_get_type.info,@object # @gimp_param_int8_array_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_int8_array_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_int8_array_class_init
	.quad	0
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_int8_array_init
	.quad	0
	.size	gimp_param_int8_array_get_type.info, 72

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"GimpParamInt8Array"
	.size	.L.str.64, 19

	.type	.L__func__.gimp_value_get_int8array,@object # @__func__.gimp_value_get_int8array
.L__func__.gimp_value_get_int8array:
	.asciz	"gimp_value_get_int8array"
	.size	.L__func__.gimp_value_get_int8array, 25

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"GIMP_VALUE_HOLDS_INT8_ARRAY (value)"
	.size	.L.str.65, 36

	.type	.L__func__.gimp_value_dup_int8array,@object # @__func__.gimp_value_dup_int8array
.L__func__.gimp_value_dup_int8array:
	.asciz	"gimp_value_dup_int8array"
	.size	.L__func__.gimp_value_dup_int8array, 25

	.type	.L__func__.gimp_value_set_int8array,@object # @__func__.gimp_value_set_int8array
.L__func__.gimp_value_set_int8array:
	.asciz	"gimp_value_set_int8array"
	.size	.L__func__.gimp_value_set_int8array, 25

	.type	.L__func__.gimp_value_set_static_int8array,@object # @__func__.gimp_value_set_static_int8array
.L__func__.gimp_value_set_static_int8array:
	.asciz	"gimp_value_set_static_int8array"
	.size	.L__func__.gimp_value_set_static_int8array, 32

	.type	.L__func__.gimp_value_take_int8array,@object # @__func__.gimp_value_take_int8array
.L__func__.gimp_value_take_int8array:
	.asciz	"gimp_value_take_int8array"
	.size	.L__func__.gimp_value_take_int8array, 26

	.type	gimp_int16_array_get_type.type,@object # @gimp_int16_array_get_type.type
	.local	gimp_int16_array_get_type.type
	.comm	gimp_int16_array_get_type.type,8,8
	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"GimpInt16Array"
	.size	.L.str.66, 15

	.type	gimp_param_int16_array_get_type.type,@object # @gimp_param_int16_array_get_type.type
	.local	gimp_param_int16_array_get_type.type
	.comm	gimp_param_int16_array_get_type.type,8,8
	.type	gimp_param_int16_array_get_type.info,@object # @gimp_param_int16_array_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_int16_array_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_int16_array_class_init
	.quad	0
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_int16_array_init
	.quad	0
	.size	gimp_param_int16_array_get_type.info, 72

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"GimpParamInt16Array"
	.size	.L.str.67, 20

	.type	.L__func__.gimp_value_get_int16array,@object # @__func__.gimp_value_get_int16array
.L__func__.gimp_value_get_int16array:
	.asciz	"gimp_value_get_int16array"
	.size	.L__func__.gimp_value_get_int16array, 26

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"GIMP_VALUE_HOLDS_INT16_ARRAY (value)"
	.size	.L.str.68, 37

	.type	.L__func__.gimp_value_dup_int16array,@object # @__func__.gimp_value_dup_int16array
.L__func__.gimp_value_dup_int16array:
	.asciz	"gimp_value_dup_int16array"
	.size	.L__func__.gimp_value_dup_int16array, 26

	.type	.L__func__.gimp_value_set_int16array,@object # @__func__.gimp_value_set_int16array
.L__func__.gimp_value_set_int16array:
	.asciz	"gimp_value_set_int16array"
	.size	.L__func__.gimp_value_set_int16array, 26

	.type	.L__func__.gimp_value_set_static_int16array,@object # @__func__.gimp_value_set_static_int16array
.L__func__.gimp_value_set_static_int16array:
	.asciz	"gimp_value_set_static_int16array"
	.size	.L__func__.gimp_value_set_static_int16array, 33

	.type	.L__func__.gimp_value_take_int16array,@object # @__func__.gimp_value_take_int16array
.L__func__.gimp_value_take_int16array:
	.asciz	"gimp_value_take_int16array"
	.size	.L__func__.gimp_value_take_int16array, 27

	.type	gimp_int32_array_get_type.type,@object # @gimp_int32_array_get_type.type
	.local	gimp_int32_array_get_type.type
	.comm	gimp_int32_array_get_type.type,8,8
	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"GimpInt32Array"
	.size	.L.str.69, 15

	.type	gimp_param_int32_array_get_type.type,@object # @gimp_param_int32_array_get_type.type
	.local	gimp_param_int32_array_get_type.type
	.comm	gimp_param_int32_array_get_type.type,8,8
	.type	gimp_param_int32_array_get_type.info,@object # @gimp_param_int32_array_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_int32_array_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_int32_array_class_init
	.quad	0
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_int32_array_init
	.quad	0
	.size	gimp_param_int32_array_get_type.info, 72

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"GimpParamInt32Array"
	.size	.L.str.70, 20

	.type	.L__func__.gimp_value_get_int32array,@object # @__func__.gimp_value_get_int32array
.L__func__.gimp_value_get_int32array:
	.asciz	"gimp_value_get_int32array"
	.size	.L__func__.gimp_value_get_int32array, 26

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"GIMP_VALUE_HOLDS_INT32_ARRAY (value)"
	.size	.L.str.71, 37

	.type	.L__func__.gimp_value_dup_int32array,@object # @__func__.gimp_value_dup_int32array
.L__func__.gimp_value_dup_int32array:
	.asciz	"gimp_value_dup_int32array"
	.size	.L__func__.gimp_value_dup_int32array, 26

	.type	.L__func__.gimp_value_set_int32array,@object # @__func__.gimp_value_set_int32array
.L__func__.gimp_value_set_int32array:
	.asciz	"gimp_value_set_int32array"
	.size	.L__func__.gimp_value_set_int32array, 26

	.type	.L__func__.gimp_value_set_static_int32array,@object # @__func__.gimp_value_set_static_int32array
.L__func__.gimp_value_set_static_int32array:
	.asciz	"gimp_value_set_static_int32array"
	.size	.L__func__.gimp_value_set_static_int32array, 33

	.type	.L__func__.gimp_value_take_int32array,@object # @__func__.gimp_value_take_int32array
.L__func__.gimp_value_take_int32array:
	.asciz	"gimp_value_take_int32array"
	.size	.L__func__.gimp_value_take_int32array, 27

	.type	gimp_float_array_get_type.type,@object # @gimp_float_array_get_type.type
	.local	gimp_float_array_get_type.type
	.comm	gimp_float_array_get_type.type,8,8
	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"GimpFloatArray"
	.size	.L.str.72, 15

	.type	gimp_param_float_array_get_type.type,@object # @gimp_param_float_array_get_type.type
	.local	gimp_param_float_array_get_type.type
	.comm	gimp_param_float_array_get_type.type,8,8
	.type	gimp_param_float_array_get_type.info,@object # @gimp_param_float_array_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_float_array_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_float_array_class_init
	.quad	0
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_float_array_init
	.quad	0
	.size	gimp_param_float_array_get_type.info, 72

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"GimpParamFloatArray"
	.size	.L.str.73, 20

	.type	.L__func__.gimp_value_get_floatarray,@object # @__func__.gimp_value_get_floatarray
.L__func__.gimp_value_get_floatarray:
	.asciz	"gimp_value_get_floatarray"
	.size	.L__func__.gimp_value_get_floatarray, 26

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"GIMP_VALUE_HOLDS_FLOAT_ARRAY (value)"
	.size	.L.str.74, 37

	.type	.L__func__.gimp_value_dup_floatarray,@object # @__func__.gimp_value_dup_floatarray
.L__func__.gimp_value_dup_floatarray:
	.asciz	"gimp_value_dup_floatarray"
	.size	.L__func__.gimp_value_dup_floatarray, 26

	.type	.L__func__.gimp_value_set_floatarray,@object # @__func__.gimp_value_set_floatarray
.L__func__.gimp_value_set_floatarray:
	.asciz	"gimp_value_set_floatarray"
	.size	.L__func__.gimp_value_set_floatarray, 26

	.type	.L__func__.gimp_value_set_static_floatarray,@object # @__func__.gimp_value_set_static_floatarray
.L__func__.gimp_value_set_static_floatarray:
	.asciz	"gimp_value_set_static_floatarray"
	.size	.L__func__.gimp_value_set_static_floatarray, 33

	.type	.L__func__.gimp_value_take_floatarray,@object # @__func__.gimp_value_take_floatarray
.L__func__.gimp_value_take_floatarray:
	.asciz	"gimp_value_take_floatarray"
	.size	.L__func__.gimp_value_take_floatarray, 27

	.type	.L__func__.gimp_string_array_new,@object # @__func__.gimp_string_array_new
.L__func__.gimp_string_array_new:
	.asciz	"gimp_string_array_new"
	.size	.L__func__.gimp_string_array_new, 22

	.type	gimp_string_array_get_type.type,@object # @gimp_string_array_get_type.type
	.local	gimp_string_array_get_type.type
	.comm	gimp_string_array_get_type.type,8,8
	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"GimpStringArray"
	.size	.L.str.75, 16

	.type	gimp_param_string_array_get_type.type,@object # @gimp_param_string_array_get_type.type
	.local	gimp_param_string_array_get_type.type
	.comm	gimp_param_string_array_get_type.type,8,8
	.type	gimp_param_string_array_get_type.info,@object # @gimp_param_string_array_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_string_array_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_string_array_class_init
	.quad	0
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_string_array_init
	.quad	0
	.size	gimp_param_string_array_get_type.info, 72

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"GimpParamStringArray"
	.size	.L.str.76, 21

	.type	.L__func__.gimp_value_get_stringarray,@object # @__func__.gimp_value_get_stringarray
.L__func__.gimp_value_get_stringarray:
	.asciz	"gimp_value_get_stringarray"
	.size	.L__func__.gimp_value_get_stringarray, 27

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"GIMP_VALUE_HOLDS_STRING_ARRAY (value)"
	.size	.L.str.77, 38

	.type	.L__func__.gimp_value_dup_stringarray,@object # @__func__.gimp_value_dup_stringarray
.L__func__.gimp_value_dup_stringarray:
	.asciz	"gimp_value_dup_stringarray"
	.size	.L__func__.gimp_value_dup_stringarray, 27

	.type	.L__func__.gimp_value_set_stringarray,@object # @__func__.gimp_value_set_stringarray
.L__func__.gimp_value_set_stringarray:
	.asciz	"gimp_value_set_stringarray"
	.size	.L__func__.gimp_value_set_stringarray, 27

	.type	.L__func__.gimp_value_set_static_stringarray,@object # @__func__.gimp_value_set_static_stringarray
.L__func__.gimp_value_set_static_stringarray:
	.asciz	"gimp_value_set_static_stringarray"
	.size	.L__func__.gimp_value_set_static_stringarray, 34

	.type	.L__func__.gimp_value_take_stringarray,@object # @__func__.gimp_value_take_stringarray
.L__func__.gimp_value_take_stringarray:
	.asciz	"gimp_value_take_stringarray"
	.size	.L__func__.gimp_value_take_stringarray, 28

	.type	gimp_color_array_get_type.type,@object # @gimp_color_array_get_type.type
	.local	gimp_color_array_get_type.type
	.comm	gimp_color_array_get_type.type,8,8
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"GimpColorArray"
	.size	.L.str.78, 15

	.type	gimp_param_color_array_get_type.type,@object # @gimp_param_color_array_get_type.type
	.local	gimp_param_color_array_get_type.type
	.comm	gimp_param_color_array_get_type.type,8,8
	.type	gimp_param_color_array_get_type.info,@object # @gimp_param_color_array_get_type.info
	.section	.rodata,"a",@progbits
	.align	8
gimp_param_color_array_get_type.info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_color_array_class_init
	.quad	0
	.quad	0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_color_array_init
	.quad	0
	.size	gimp_param_color_array_get_type.info, 72

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"GimpParamColorArray"
	.size	.L.str.79, 20

	.type	.L__func__.gimp_value_get_colorarray,@object # @__func__.gimp_value_get_colorarray
.L__func__.gimp_value_get_colorarray:
	.asciz	"gimp_value_get_colorarray"
	.size	.L__func__.gimp_value_get_colorarray, 26

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"GIMP_VALUE_HOLDS_COLOR_ARRAY (value)"
	.size	.L.str.80, 37

	.type	.L__func__.gimp_value_dup_colorarray,@object # @__func__.gimp_value_dup_colorarray
.L__func__.gimp_value_dup_colorarray:
	.asciz	"gimp_value_dup_colorarray"
	.size	.L__func__.gimp_value_dup_colorarray, 26

	.type	.L__func__.gimp_value_set_colorarray,@object # @__func__.gimp_value_set_colorarray
.L__func__.gimp_value_set_colorarray:
	.asciz	"gimp_value_set_colorarray"
	.size	.L__func__.gimp_value_set_colorarray, 26

	.type	.L__func__.gimp_value_set_static_colorarray,@object # @__func__.gimp_value_set_static_colorarray
.L__func__.gimp_value_set_static_colorarray:
	.asciz	"gimp_value_set_static_colorarray"
	.size	.L__func__.gimp_value_set_static_colorarray, 33

	.type	.L__func__.gimp_value_take_colorarray,@object # @__func__.gimp_value_take_colorarray
.L__func__.gimp_value_take_colorarray:
	.asciz	"gimp_value_take_colorarray"
	.size	.L__func__.gimp_value_take_colorarray, 27

	.type	gimp_param_string_parent_class,@object # @gimp_param_string_parent_class
	.local	gimp_param_string_parent_class
	.comm	gimp_param_string_parent_class,8,8
	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"none"
	.size	.L.str.81, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
