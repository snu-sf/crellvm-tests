	.text
	.file	"gimpgrid.bc"
	.globl	gimp_grid_get_type
	.align	16, 0x90
	.type	gimp_grid_get_type,@function
gimp_grid_get_type:                     # @gimp_grid_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_grid_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_grid_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$160, %edx
	movabsq	$gimp_grid_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_grid_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$gimp_grid_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_grid_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_grid_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_grid_get_type, .Lfunc_end0-gimp_grid_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_grid_class_intern_init,@function
gimp_grid_class_intern_init:            # @gimp_grid_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_grid_parent_class
	cmpl	$0, GimpGrid_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpGrid_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_grid_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_grid_class_intern_init, .Lfunc_end1-gimp_grid_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_grid_init,@function
gimp_grid_init:                         # @gimp_grid_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_grid_init, .Lfunc_end2-gimp_grid_init
	.cfi_endproc

	.globl	gimp_grid_get_spacing
	.align	16, 0x90
	.type	gimp_grid_get_spacing,@function
gimp_grid_get_spacing:                  # @gimp_grid_get_spacing
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_grid_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_grid_get_spacing, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_16
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB3_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB3_14:                               # %if.end.15
	cmpq	$0, -24(%rbp)
	je	.LBB3_16
# BB#15:                                # %if.then.17
	movq	-8(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB3_16:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_grid_get_spacing, .Lfunc_end3-gimp_grid_get_spacing
	.cfi_endproc

	.globl	gimp_grid_get_offset
	.align	16, 0x90
	.type	gimp_grid_get_offset,@function
gimp_grid_get_offset:                   # @gimp_grid_get_offset
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_grid_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_grid_get_offset, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_16
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB4_14:                               # %if.end.15
	cmpq	$0, -24(%rbp)
	je	.LBB4_16
# BB#15:                                # %if.then.17
	movq	-8(%rbp), %rax
	movsd	136(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	rint
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB4_16:                               # %if.end.20
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_grid_get_offset, .Lfunc_end4-gimp_grid_get_offset
	.cfi_endproc

	.globl	gimp_grid_parasite_name
	.align	16, 0x90
	.type	gimp_grid_parasite_name,@function
gimp_grid_parasite_name:                # @gimp_grid_parasite_name
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
	movabsq	$.L.str.3, %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_grid_parasite_name, .Lfunc_end5-gimp_grid_parasite_name
	.cfi_endproc

	.globl	gimp_grid_to_parasite
	.align	16, 0x90
	.type	gimp_grid_to_parasite,@function
gimp_grid_to_parasite:                  # @gimp_grid_to_parasite
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_grid_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_grid_to_parasite, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_string
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.14
	cmpq	$0, -32(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.16
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_grid_to_parasite, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.18
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.19
	callq	gimp_grid_parasite_name
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %edx         # 4-byte Reload
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-80(%rbp), %edx         # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_grid_to_parasite, .Lfunc_end6-gimp_grid_to_parasite
	.cfi_endproc

	.globl	gimp_grid_from_parasite
	.align	16, 0x90
	.type	gimp_grid_from_parasite,@function
gimp_grid_from_parasite:                # @gimp_grid_from_parasite
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_grid_from_parasite, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_18
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.1
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_name
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_grid_parasite_name
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB7_8
# BB#7:                                 # %if.then.5
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.6
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_grid_from_parasite, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_18
.LBB7_9:                                # %if.end.7
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.8
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_data
	movq	%rax, -32(%rbp)
# BB#11:                                # %do.body.10
	cmpq	$0, -32(%rbp)
	je	.LBB7_13
# BB#12:                                # %if.then.12
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.13
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_grid_from_parasite, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_18
.LBB7_14:                               # %if.end.14
	jmp	.LBB7_15
.LBB7_15:                               # %do.end.15
	callq	gimp_grid_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_parasite_data_size
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-40(%rbp), %r8
	movl	%eax, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	gimp_config_deserialize_string
	cmpl	$0, %eax
	jne	.LBB7_17
# BB#16:                                # %if.then.22
	movabsq	$.L.str.7, %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	movq	-40(%rbp), %rdi
	callq	g_error_free
.LBB7_17:                               # %if.end.23
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_grid_from_parasite, .Lfunc_end7-gimp_grid_from_parasite
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB8_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB8_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end8:
	.size	g_warning, .Lfunc_end8-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	-4535124824762089472    # double -262144
.LCPI9_1:
	.quad	4688247212092686336     # double 262144
.LCPI9_2:
	.quad	4607182418800017408     # double 1
.LCPI9_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_grid_class_init,@function
gimp_grid_class_init:                   # @gimp_grid_class_init
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
	subq	$208, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	leaq	-48(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_2, %xmm3         # xmm3 = mem[0],zero
	movabsq	$gimp_grid_set_property, %rsi
	movabsq	$gimp_grid_get_property, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 24(%rax)
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-80(%rbp), %rdi
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_grid_style_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	movabsq	$.L.str.9, %rdx
	movl	$4, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.11, %rdx
	movl	$1, %ecx
	leaq	-48(%rbp), %r8
	movl	$487, %r9d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_rgb
	movl	$2, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.13, %rdx
	movl	$1, %ecx
	leaq	-80(%rbp), %r8
	movl	$487, %r9d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_param_spec_rgb
	movl	$3, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.15, %rdx
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_3, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.17, %rdx
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_3, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$5, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.18, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	gimp_param_spec_unit
	movl	$6, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.20, %rdx
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$7, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.21, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.22, %rdx
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$8, %esi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.23, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	gimp_param_spec_unit
	movl	$9, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_grid_class_init, .Lfunc_end9-gimp_grid_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_grid_get_property,@function
gimp_grid_get_property:                 # @gimp_grid_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_grid_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$8, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB10_10
# BB#14:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB10_13
.LBB10_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB10_13
.LBB10_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB10_13
.LBB10_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB10_13
.LBB10_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	112(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB10_13
.LBB10_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	120(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB10_13
.LBB10_7:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB10_13
.LBB10_8:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	136(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB10_13
.LBB10_9:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	144(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB10_13
.LBB10_10:                              # %sw.default
	jmp	.LBB10_11
.LBB10_11:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movl	$177, %edx
	movabsq	$.L.str.26, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#12:                                # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_grid_get_property, .Lfunc_end10-gimp_grid_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_1
	.quad	.LBB10_2
	.quad	.LBB10_3
	.quad	.LBB10_4
	.quad	.LBB10_5
	.quad	.LBB10_6
	.quad	.LBB10_7
	.quad	.LBB10_8
	.quad	.LBB10_9

	.text
	.align	16, 0x90
	.type	gimp_grid_set_property,@function
gimp_grid_set_property:                 # @gimp_grid_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_grid_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$8, %r8d
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	ja	.LBB11_10
# BB#14:                                # %entry
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 32(%rdi)
	jmp	.LBB11_13
.LBB11_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	%rcx, 40(%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 48(%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 56(%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 64(%rax)
	jmp	.LBB11_13
.LBB11_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boxed
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	%rcx, 72(%rax)
	movq	8(%rdi), %rcx
	movq	%rcx, 80(%rax)
	movq	16(%rdi), %rcx
	movq	%rcx, 88(%rax)
	movq	24(%rdi), %rcx
	movq	%rcx, 96(%rax)
	jmp	.LBB11_13
.LBB11_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 104(%rdi)
	jmp	.LBB11_13
.LBB11_5:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 112(%rdi)
	jmp	.LBB11_13
.LBB11_6:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 120(%rdi)
	jmp	.LBB11_13
.LBB11_7:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 128(%rdi)
	jmp	.LBB11_13
.LBB11_8:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 136(%rdi)
	jmp	.LBB11_13
.LBB11_9:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 144(%rdi)
	jmp	.LBB11_13
.LBB11_10:                              # %sw.default
	jmp	.LBB11_11
.LBB11_11:                              # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movl	$223, %edx
	movabsq	$.L.str.26, %rcx
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#12:                                # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_grid_set_property, .Lfunc_end11-gimp_grid_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_1
	.quad	.LBB11_2
	.quad	.LBB11_3
	.quad	.LBB11_4
	.quad	.LBB11_5
	.quad	.LBB11_6
	.quad	.LBB11_7
	.quad	.LBB11_8
	.quad	.LBB11_9

	.type	gimp_grid_get_type.g_define_type_id__volatile,@object # @gimp_grid_get_type.g_define_type_id__volatile
	.local	gimp_grid_get_type.g_define_type_id__volatile
	.comm	gimp_grid_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpGrid"
	.size	.L.str, 9

	.type	gimp_grid_get_type.g_implement_interface_info,@object # @gimp_grid_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_grid_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_grid_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_grid_get_spacing,@object # @__func__.gimp_grid_get_spacing
.L__func__.gimp_grid_get_spacing:
	.asciz	"gimp_grid_get_spacing"
	.size	.L__func__.gimp_grid_get_spacing, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GRID (grid)"
	.size	.L.str.2, 20

	.type	.L__func__.gimp_grid_get_offset,@object # @__func__.gimp_grid_get_offset
.L__func__.gimp_grid_get_offset:
	.asciz	"gimp_grid_get_offset"
	.size	.L__func__.gimp_grid_get_offset, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-image-grid"
	.size	.L.str.3, 16

	.type	.L__func__.gimp_grid_to_parasite,@object # @__func__.gimp_grid_to_parasite
.L__func__.gimp_grid_to_parasite:
	.asciz	"gimp_grid_to_parasite"
	.size	.L__func__.gimp_grid_to_parasite, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"str != NULL"
	.size	.L.str.4, 12

	.type	.L__func__.gimp_grid_from_parasite,@object # @__func__.gimp_grid_from_parasite
.L__func__.gimp_grid_from_parasite:
	.asciz	"gimp_grid_from_parasite"
	.size	.L__func__.gimp_grid_from_parasite, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"parasite != NULL"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"strcmp (gimp_parasite_name (parasite), gimp_grid_parasite_name ()) == 0"
	.size	.L.str.6, 72

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Failed to deserialize grid parasite: %s"
	.size	.L.str.7, 40

	.type	gimp_grid_parent_class,@object # @gimp_grid_parent_class
	.local	gimp_grid_parent_class
	.comm	gimp_grid_parent_class,8,8
	.type	GimpGrid_private_offset,@object # @GimpGrid_private_offset
	.local	GimpGrid_private_offset
	.comm	GimpGrid_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"style"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Line style used for the grid."
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fgcolor"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The foreground color of the grid."
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"bgcolor"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The background color of the grid; only used in double dashed line style."
	.size	.L.str.13, 73

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"xspacing"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Horizontal spacing of grid lines."
	.size	.L.str.15, 34

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"yspacing"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Vertical spacing of grid lines."
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"spacing-unit"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"xoffset"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Horizontal offset of the first grid line; this may be a negative number."
	.size	.L.str.20, 73

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"yoffset"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Vertical offset of the first grid line; this may be a negative number."
	.size	.L.str.22, 71

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"offset-unit"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.24, 54

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimpgrid.c"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"property"
	.size	.L.str.26, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
