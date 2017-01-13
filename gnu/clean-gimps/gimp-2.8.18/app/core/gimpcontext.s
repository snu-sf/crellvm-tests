	.text
	.file	"gimpcontext.bc"
	.globl	gimp_context_get_type
	.align	16, 0x90
	.type	gimp_context_get_type,@function
gimp_context_get_type:                  # @gimp_context_get_type
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
	movq	gimp_context_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_context_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$424, %edx              # imm = 0x1A8
	movabsq	$gimp_context_class_intern_init, %rdi
	movl	$344, %r8d              # imm = 0x158
	movabsq	$gimp_context_init, %rcx
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
	movabsq	$gimp_context_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_context_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_context_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_context_get_type, .Lfunc_end0-gimp_context_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_class_intern_init,@function
gimp_context_class_intern_init:         # @gimp_context_class_intern_init
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
	movq	%rax, gimp_context_parent_class
	cmpl	$0, GimpContext_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContext_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_context_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_context_class_intern_init, .Lfunc_end1-gimp_context_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_init,@function
gimp_context_init:                      # @gimp_context_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1015804, 48(%rdi)      # imm = 0xF7FFC
	movq	-8(%rbp), %rdi
	movl	$1015804, 52(%rdi)      # imm = 0xF7FFC
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 80(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 88(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 96(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 184(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 192(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 200(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 208(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 216(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 224(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 232(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 240(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 248(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 256(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 264(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 272(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 280(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 288(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 296(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 304(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 312(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 320(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 328(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 336(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_context_init, .Lfunc_end2-gimp_context_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_config_iface_init,@function
gimp_context_config_iface_init:         # @gimp_context_config_iface_init
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
	movabsq	$gimp_context_deserialize_property, %rax
	movabsq	$gimp_context_serialize_property, %rcx
	movabsq	$gimp_context_serialize, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdx, 16(%rdi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_context_config_iface_init, .Lfunc_end3-gimp_context_config_iface_init
	.cfi_endproc

	.globl	gimp_context_new
	.align	16, 0x90
	.type	gimp_context_new,@function
gimp_context_new:                       # @gimp_context_new
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_33
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_33
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB4_27
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_21
# BB#20:                                # %if.then.27
	movl	$0, -84(%rbp)
	jmp	.LBB4_26
.LBB4_21:                               # %if.else.28
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_24
# BB#22:                                # %land.lhs.true.31
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_24
# BB#23:                                # %if.then.35
	movl	$1, -84(%rbp)
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.36
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_25:                               # %if.end.38
	jmp	.LBB4_26
.LBB4_26:                               # %if.end.39
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_28
.LBB4_27:                               # %if.then.42
	jmp	.LBB4_29
.LBB4_28:                               # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_33
.LBB4_29:                               # %if.end.44
	jmp	.LBB4_30
.LBB4_30:                               # %do.end.45
	callq	gimp_context_get_type
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_32
# BB#31:                                # %if.then.49
	movl	$1015804, %edx          # imm = 0xF7FFC
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_context_copy_properties
.LBB4_32:                               # %if.end.51
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_33:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_context_new, .Lfunc_end4-gimp_context_new
	.cfi_endproc

	.globl	gimp_context_copy_properties
	.align	16, 0x90
	.type	gimp_context_copy_properties,@function
gimp_context_copy_properties:           # @gimp_context_copy_properties
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_copy_properties, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_30
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_copy_properties, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_30
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	movl	$2, -24(%rbp)
.LBB5_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -24(%rbp)
	ja	.LBB5_30
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	$1, %eax
	movl	-24(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	andl	-20(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB5_28
# BB#27:                                # %if.then.41
                                        #   in Loop: Header=BB5_25 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %edx
	callq	gimp_context_copy_property
.LBB5_28:                               # %if.end.42
                                        #   in Loop: Header=BB5_25 Depth=1
	jmp	.LBB5_29
.LBB5_29:                               # %for.inc
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_25
.LBB5_30:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_context_copy_properties, .Lfunc_end5-gimp_context_copy_properties
	.cfi_endproc

	.globl	gimp_context_get_parent
	.align	16, 0x90
	.type	gimp_context_get_parent,@function
gimp_context_get_parent:                # @gimp_context_get_parent
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_parent, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_context_get_parent, .Lfunc_end6-gimp_context_get_parent
	.cfi_endproc

	.globl	gimp_context_set_parent
	.align	16, 0x90
	.type	gimp_context_set_parent,@function
gimp_context_set_parent:                # @gimp_context_set_parent
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_parent, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_42
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB7_21
.LBB7_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_20:                               # %if.end.32
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_23
.LBB7_22:                               # %if.then.36
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_parent, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_42
.LBB7_24:                               # %if.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.end.39
	jmp	.LBB7_26
.LBB7_26:                               # %do.body.40
	cmpq	$0, -16(%rbp)
	je	.LBB7_28
# BB#27:                                # %lor.lhs.false.42
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB7_29
.LBB7_28:                               # %if.then.45
	jmp	.LBB7_30
.LBB7_29:                               # %if.else.46
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_parent, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_42
.LBB7_30:                               # %if.end.47
	jmp	.LBB7_31
.LBB7_31:                               # %do.end.48
	jmp	.LBB7_32
.LBB7_32:                               # %do.body.49
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB7_34
# BB#33:                                # %if.then.51
	jmp	.LBB7_35
.LBB7_34:                               # %if.else.52
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_parent, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_42
.LBB7_35:                               # %if.end.53
	jmp	.LBB7_36
.LBB7_36:                               # %do.end.54
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB7_38
# BB#37:                                # %if.then.57
	jmp	.LBB7_42
.LBB7_38:                               # %if.end.58
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB7_40
# BB#39:                                # %if.then.61
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_parent_notify, %rdx
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_40:                               # %if.end.64
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB7_42
# BB#41:                                # %if.then.67
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	xorl	$-1, %ecx
	andl	$1015804, %ecx          # imm = 0xF7FFC
	movl	%ecx, %edx
	callq	gimp_context_copy_properties
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_context_parent_notify, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rax, %rdx
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB7_42:                               # %if.end.69
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_context_set_parent, .Lfunc_end7-gimp_context_set_parent
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_parent_notify,@function
gimp_context_parent_notify:             # @gimp_context_parent_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movq	-24(%rbp), %rdx
	andl	48(%rdx), %eax
	cmpl	$0, %eax
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	68(%rax), %edx
	callq	gimp_context_copy_property
.LBB8_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_context_parent_notify, .Lfunc_end8-gimp_context_parent_notify
	.cfi_endproc

	.globl	gimp_context_define_property
	.align	16, 0x90
	.type	gimp_context_define_property,@function
gimp_context_define_property:           # @gimp_context_define_property
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_define_property, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_27
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpl	$2, -12(%rbp)
	jb	.LBB9_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$19, -12(%rbp)
	ja	.LBB9_16
# BB#15:                                # %if.then.15
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_define_property, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_27
.LBB9_17:                               # %if.end.17
	jmp	.LBB9_18
.LBB9_18:                               # %do.end.18
	movl	$1, %eax
	movl	-12(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB9_22
# BB#19:                                # %if.then.20
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	andl	-20(%rbp), %ecx
	cmpl	$0, %ecx
	jne	.LBB9_21
# BB#20:                                # %if.then.22
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	orl	48(%rcx), %eax
	movl	%eax, 48(%rcx)
.LBB9_21:                               # %if.end.24
	jmp	.LBB9_27
.LBB9_22:                               # %if.else.25
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	andl	-20(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB9_26
# BB#23:                                # %if.then.29
	movl	-20(%rbp), %eax
	xorl	$-1, %eax
	movq	-8(%rbp), %rcx
	andl	48(%rcx), %eax
	movl	%eax, 48(%rcx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	je	.LBB9_25
# BB#24:                                # %if.then.33
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	gimp_context_copy_property
.LBB9_25:                               # %if.end.35
	jmp	.LBB9_26
.LBB9_26:                               # %if.end.36
	jmp	.LBB9_27
.LBB9_27:                               # %if.end.37
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_context_define_property, .Lfunc_end9-gimp_context_define_property
	.cfi_endproc

	.globl	gimp_context_copy_property
	.align	16, 0x90
	.type	gimp_context_copy_property,@function
gimp_context_copy_property:             # @gimp_context_copy_property
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_copy_property, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_57
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_copy_property, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_57
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	jmp	.LBB10_25
.LBB10_25:                              # %do.body.39
	cmpl	$2, -20(%rbp)
	jb	.LBB10_28
# BB#26:                                # %land.lhs.true.41
	cmpl	$19, -20(%rbp)
	ja	.LBB10_28
# BB#27:                                # %if.then.43
	jmp	.LBB10_29
.LBB10_28:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_copy_property, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_57
.LBB10_29:                              # %if.end.45
	jmp	.LBB10_30
.LBB10_30:                              # %do.end.46
	movl	-20(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	subl	$17, %eax
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%eax, -116(%rbp)        # 4-byte Spill
	ja	.LBB10_49
# BB#58:                                # %do.end.46
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_31:                              # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rsi
	callq	gimp_context_real_set_image
	jmp	.LBB10_50
.LBB10_32:                              # %sw.bb.47
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rsi
	callq	gimp_context_real_set_display
	jmp	.LBB10_50
.LBB10_33:                              # %sw.bb.48
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rsi
	callq	gimp_context_real_set_tool
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_tool_info_get_standard
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_50
.LBB10_34:                              # %sw.bb.52
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rsi
	callq	gimp_context_real_set_paint_info
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_paint_info_get_standard
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_50
.LBB10_35:                              # %sw.bb.57
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rsi
	callq	gimp_context_real_set_foreground
	jmp	.LBB10_50
.LBB10_36:                              # %sw.bb.58
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$136, %rax
	movq	%rax, %rsi
	callq	gimp_context_real_set_background
	jmp	.LBB10_50
.LBB10_37:                              # %sw.bb.59
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_context_real_set_opacity
	jmp	.LBB10_50
.LBB10_38:                              # %sw.bb.60
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	176(%rax), %esi
	callq	gimp_context_real_set_paint_mode
	jmp	.LBB10_50
.LBB10_39:                              # %sw.bb.61
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gimp_context_real_set_brush
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_brush_get_standard
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_50
.LBB10_40:                              # %sw.bb.65
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	200(%rax), %rsi
	callq	gimp_context_real_set_dynamics
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_get_standard
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$208, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_50
.LBB10_41:                              # %sw.bb.69
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	216(%rax), %rsi
	callq	gimp_context_real_set_pattern
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_pattern_get_standard
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$224, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_50
.LBB10_42:                              # %sw.bb.73
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	232(%rax), %rsi
	callq	gimp_context_real_set_gradient
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_gradient_get_standard
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$240, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_50
.LBB10_43:                              # %sw.bb.77
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	248(%rax), %rsi
	callq	gimp_context_real_set_palette
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_palette_get_standard
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -56(%rbp)
	jmp	.LBB10_50
.LBB10_44:                              # %sw.bb.81
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	264(%rax), %rsi
	callq	gimp_context_real_set_tool_preset
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$272, %rax              # imm = 0x110
	movq	%rax, -56(%rbp)
	jmp	.LBB10_50
.LBB10_45:                              # %sw.bb.84
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	280(%rax), %rsi
	callq	gimp_context_real_set_font
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_font_get_standard
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	addq	$288, %rax              # imm = 0x120
	movq	%rax, -56(%rbp)
	jmp	.LBB10_50
.LBB10_46:                              # %sw.bb.88
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	296(%rax), %rsi
	callq	gimp_context_real_set_buffer
	jmp	.LBB10_50
.LBB10_47:                              # %sw.bb.89
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	312(%rax), %rsi
	callq	gimp_context_real_set_imagefile
	jmp	.LBB10_50
.LBB10_48:                              # %sw.bb.90
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	328(%rax), %rsi
	callq	gimp_context_real_set_template
	jmp	.LBB10_50
.LBB10_49:                              # %sw.default
	jmp	.LBB10_50
.LBB10_50:                              # %sw.epilog
	cmpq	$0, -48(%rbp)
	je	.LBB10_57
# BB#51:                                # %land.lhs.true.92
	cmpq	$0, -56(%rbp)
	je	.LBB10_57
# BB#52:                                # %if.then.94
	cmpq	$0, -32(%rbp)
	je	.LBB10_55
# BB#53:                                # %lor.lhs.false
	cmpq	$0, -40(%rbp)
	je	.LBB10_56
# BB#54:                                # %land.lhs.true.97
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_56
.LBB10_55:                              # %if.then.99
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB10_56:                              # %if.end.101
	jmp	.LBB10_57
.LBB10_57:                              # %if.end.102
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_context_copy_property, .Lfunc_end10-gimp_context_copy_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_31
	.quad	.LBB10_32
	.quad	.LBB10_33
	.quad	.LBB10_34
	.quad	.LBB10_35
	.quad	.LBB10_36
	.quad	.LBB10_37
	.quad	.LBB10_38
	.quad	.LBB10_39
	.quad	.LBB10_40
	.quad	.LBB10_41
	.quad	.LBB10_42
	.quad	.LBB10_43
	.quad	.LBB10_44
	.quad	.LBB10_45
	.quad	.LBB10_46
	.quad	.LBB10_47
	.quad	.LBB10_48

	.text
	.globl	gimp_context_property_defined
	.align	16, 0x90
	.type	gimp_context_property_defined,@function
gimp_context_property_defined:          # @gimp_context_property_defined
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_property_defined, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %esi
	movl	-20(%rbp), %edi
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-52(%rbp), %edi         # 4-byte Reload
	shll	%cl, %edi
	andl	%edi, %esi
	cmpl	$0, %esi
	movl	-52(%rbp), %esi         # 4-byte Reload
	cmovnel	%esi, %eax
	movl	%eax, -4(%rbp)
.LBB11_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_context_property_defined, .Lfunc_end11-gimp_context_property_defined
	.cfi_endproc

	.globl	gimp_context_define_properties
	.align	16, 0x90
	.type	gimp_context_define_properties,@function
gimp_context_define_properties:         # @gimp_context_define_properties
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_define_properties, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_18
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movl	$2, -20(%rbp)
.LBB12_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -20(%rbp)
	ja	.LBB12_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	$1, %eax
	movl	-20(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	andl	-12(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_16
# BB#15:                                # %if.then.13
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_context_define_property
.LBB12_16:                              # %if.end.14
                                        #   in Loop: Header=BB12_13 Depth=1
	jmp	.LBB12_17
.LBB12_17:                              # %for.inc
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_13
.LBB12_18:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_context_define_properties, .Lfunc_end12-gimp_context_define_properties
	.cfi_endproc

	.globl	gimp_context_set_serialize_properties
	.align	16, 0x90
	.type	gimp_context_set_serialize_properties,@function
gimp_context_set_serialize_properties:  # @gimp_context_set_serialize_properties
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_serialize_properties, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 52(%rcx)
.LBB13_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_context_set_serialize_properties, .Lfunc_end13-gimp_context_set_serialize_properties
	.cfi_endproc

	.globl	gimp_context_get_serialize_properties
	.align	16, 0x90
	.type	gimp_context_get_serialize_properties,@function
gimp_context_get_serialize_properties:  # @gimp_context_get_serialize_properties
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_serialize_properties, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_context_get_serialize_properties, .Lfunc_end14-gimp_context_get_serialize_properties
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_image,@function
gimp_context_real_set_image:            # @gimp_context_real_set_image
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	56(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_3
.LBB15_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 56(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_image_changed
.LBB15_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_context_real_set_image, .Lfunc_end15-gimp_context_real_set_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_display,@function
gimp_context_real_set_display:          # @gimp_context_real_set_display
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	64(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB16_6
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	je	.LBB16_5
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.54, %rsi
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_context_real_set_image
	cmpq	$0, -32(%rbp)
	je	.LBB16_4
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %if.end.5
	jmp	.LBB16_14
.LBB16_6:                               # %if.end.6
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB16_10
# BB#7:                                 # %if.then.11
	movabsq	$.L.str.54, %rsi
	leaq	-40(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_context_real_set_image
	cmpq	$0, -40(%rbp)
	je	.LBB16_9
# BB#8:                                 # %if.then.14
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB16_9:                               # %if.end.15
	jmp	.LBB16_13
.LBB16_10:                              # %if.else
	cmpq	$0, -24(%rbp)
	je	.LBB16_12
# BB#11:                                # %if.then.17
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_context_real_set_image
.LBB16_12:                              # %if.end.18
	jmp	.LBB16_13
.LBB16_13:                              # %if.end.19
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_display_changed
.LBB16_14:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_context_real_set_display, .Lfunc_end16-gimp_context_real_set_display
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_tool,@function
gimp_context_real_set_tool:             # @gimp_context_real_set_tool
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	72(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_14
.LBB17_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB17_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_standard
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
.LBB17_5:                               # %if.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB17_7
# BB#6:                                 # %if.then.9
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_tool_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB17_7:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB17_13
# BB#8:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_tool_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_standard
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_10
# BB#9:                                 # %if.then.22
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 80(%rdi)
.LBB17_10:                              # %if.end.26
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB17_12
# BB#11:                                # %if.then.28
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rsi
	callq	gimp_context_real_set_paint_info
.LBB17_12:                              # %if.end.30
	jmp	.LBB17_13
.LBB17_13:                              # %if.end.31
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_tool_changed
.LBB17_14:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_context_real_set_tool, .Lfunc_end17-gimp_context_real_set_tool
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_paint_info,@function
gimp_context_real_set_paint_info:       # @gimp_context_real_set_paint_info
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	88(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_12
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB18_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_paint_info_get_standard
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
.LBB18_5:                               # %if.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB18_7
# BB#6:                                 # %if.then.9
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_paint_info_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	88(%rdi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB18_7:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 88(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB18_11
# BB#8:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_paint_info_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_paint_info_get_standard
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_10
# BB#9:                                 # %if.then.22
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 96(%rdi)
.LBB18_10:                              # %if.end.26
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.27
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_paint_info_changed
.LBB18_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_context_real_set_paint_info, .Lfunc_end18-gimp_context_real_set_paint_info
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI19_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_context_real_set_foreground,@function
gimp_context_real_set_foreground:       # @gimp_context_real_set_foreground
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$104, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	gimp_rgba_distance
	movsd	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	movsd	.LCPI19_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 104(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 112(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 120(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 128(%rax)
	movq	-8(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_foreground_changed
.LBB19_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_context_real_set_foreground, .Lfunc_end19-gimp_context_real_set_foreground
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI20_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_context_real_set_background,@function
gimp_context_real_set_background:       # @gimp_context_real_set_background
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$136, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	gimp_rgba_distance
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movsd	.LCPI20_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 136(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 144(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 152(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 160(%rax)
	movq	-8(%rbp), %rax
	addq	$136, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_background_changed
.LBB20_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_context_real_set_background, .Lfunc_end20-gimp_context_real_set_background
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_opacity,@function
gimp_context_real_set_opacity:          # @gimp_context_real_set_opacity
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movsd	168(%rdi), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jne	.LBB21_2
	jp	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_3
.LBB21_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 168(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.60, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_opacity_changed
.LBB21_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_context_real_set_opacity, .Lfunc_end21-gimp_context_real_set_opacity
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_paint_mode,@function
gimp_context_real_set_paint_mode:       # @gimp_context_real_set_paint_mode
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	176(%rdi), %esi
	cmpl	-12(%rbp), %esi
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_3
.LBB22_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 176(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_paint_mode_changed
.LBB22_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_context_real_set_paint_mode, .Lfunc_end22-gimp_context_real_set_paint_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_brush,@function
gimp_context_real_set_brush:            # @gimp_context_real_set_brush
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	184(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB23_2
# BB#1:                                 # %if.then
	jmp	.LBB23_12
.LBB23_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB23_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_standard
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB23_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 192(%rax)
.LBB23_5:                               # %if.end.8
	movq	-8(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB23_7
# BB#6:                                 # %if.then.11
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_brush_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	184(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB23_7:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 184(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB23_11
# BB#8:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_brush_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_standard
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB23_10
# BB#9:                                 # %if.then.25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 192(%rdi)
.LBB23_10:                              # %if.end.29
	jmp	.LBB23_11
.LBB23_11:                              # %if.end.30
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_brush_changed
.LBB23_12:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_context_real_set_brush, .Lfunc_end23-gimp_context_real_set_brush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_dynamics,@function
gimp_context_real_set_dynamics:         # @gimp_context_real_set_dynamics
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	200(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_12
.LBB24_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 208(%rax)
	je	.LBB24_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_standard
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB24_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 208(%rax)
.LBB24_5:                               # %if.end.8
	movq	-8(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB24_7
# BB#6:                                 # %if.then.11
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_dynamics_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	200(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB24_7:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB24_11
# BB#8:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_dynamics_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_standard
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_10
# BB#9:                                 # %if.then.25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 208(%rdi)
.LBB24_10:                              # %if.end.29
	jmp	.LBB24_11
.LBB24_11:                              # %if.end.30
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.63, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_dynamics_changed
.LBB24_12:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_context_real_set_dynamics, .Lfunc_end24-gimp_context_real_set_dynamics
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_pattern,@function
gimp_context_real_set_pattern:          # @gimp_context_real_set_pattern
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB25_2
# BB#1:                                 # %if.then
	jmp	.LBB25_12
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB25_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_standard
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB25_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 224(%rax)
.LBB25_5:                               # %if.end.8
	movq	-8(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB25_7
# BB#6:                                 # %if.then.11
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_pattern_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB25_7:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 216(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB25_11
# BB#8:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_pattern_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_standard
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB25_10
# BB#9:                                 # %if.then.25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 224(%rdi)
.LBB25_10:                              # %if.end.29
	jmp	.LBB25_11
.LBB25_11:                              # %if.end.30
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_pattern_changed
.LBB25_12:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_context_real_set_pattern, .Lfunc_end25-gimp_context_real_set_pattern
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_gradient,@function
gimp_context_real_set_gradient:         # @gimp_context_real_set_gradient
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	232(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB26_2
# BB#1:                                 # %if.then
	jmp	.LBB26_12
.LBB26_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB26_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_standard
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 240(%rax)
.LBB26_5:                               # %if.end.8
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB26_7
# BB#6:                                 # %if.then.11
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_gradient_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB26_7:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 232(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB26_11
# BB#8:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_gradient_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_standard
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_10
# BB#9:                                 # %if.then.25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 240(%rdi)
.LBB26_10:                              # %if.end.29
	jmp	.LBB26_11
.LBB26_11:                              # %if.end.30
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.65, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_gradient_changed
.LBB26_12:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_context_real_set_gradient, .Lfunc_end26-gimp_context_real_set_gradient
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_palette,@function
gimp_context_real_set_palette:          # @gimp_context_real_set_palette
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	248(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB27_2
# BB#1:                                 # %if.then
	jmp	.LBB27_12
.LBB27_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB27_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_standard
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB27_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 256(%rax)
.LBB27_5:                               # %if.end.8
	movq	-8(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB27_7
# BB#6:                                 # %if.then.11
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_palette_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	248(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB27_7:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 248(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB27_11
# BB#8:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_palette_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_standard
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB27_10
# BB#9:                                 # %if.then.25
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 256(%rdi)
.LBB27_10:                              # %if.end.29
	jmp	.LBB27_11
.LBB27_11:                              # %if.end.30
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_palette_changed
.LBB27_12:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_context_real_set_palette, .Lfunc_end27-gimp_context_real_set_palette
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_tool_preset,@function
gimp_context_real_set_tool_preset:      # @gimp_context_real_set_tool_preset
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	264(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB28_2
# BB#1:                                 # %if.then
	jmp	.LBB28_9
.LBB28_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB28_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 272(%rax)
.LBB28_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB28_6
# BB#5:                                 # %if.then.8
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_tool_preset_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	264(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	264(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB28_6:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 264(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB28_8
# BB#7:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_tool_preset_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rcx
	movq	%rax, 272(%rcx)
.LBB28_8:                               # %if.end.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.67, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_tool_preset_changed
.LBB28_9:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_context_real_set_tool_preset, .Lfunc_end28-gimp_context_real_set_tool_preset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_font,@function
gimp_context_real_set_font:             # @gimp_context_real_set_font
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	280(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_12
.LBB29_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB29_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_font_get_standard
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 288(%rax)
.LBB29_5:                               # %if.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB29_7
# BB#6:                                 # %if.then.9
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_font_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	280(%rdi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB29_7:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 280(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB29_11
# BB#8:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_font_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_font_get_standard
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_10
# BB#9:                                 # %if.then.21
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 288(%rdi)
.LBB29_10:                              # %if.end.25
	jmp	.LBB29_11
.LBB29_11:                              # %if.end.26
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_font_changed
.LBB29_12:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_context_real_set_font, .Lfunc_end29-gimp_context_real_set_font
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_buffer,@function
gimp_context_real_set_buffer:           # @gimp_context_real_set_buffer
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
	movq	-8(%rbp), %rsi
	movq	296(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB30_2
# BB#1:                                 # %if.then
	jmp	.LBB30_9
.LBB30_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB30_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 304(%rax)
.LBB30_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB30_6
# BB#5:                                 # %if.then.8
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_buffer_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	296(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	296(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB30_6:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 296(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB30_8
# BB#7:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_buffer_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rcx
	movq	%rax, 304(%rcx)
.LBB30_8:                               # %if.end.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_buffer_changed
.LBB30_9:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_context_real_set_buffer, .Lfunc_end30-gimp_context_real_set_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_imagefile,@function
gimp_context_real_set_imagefile:        # @gimp_context_real_set_imagefile
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	312(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB31_2
# BB#1:                                 # %if.then
	jmp	.LBB31_9
.LBB31_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB31_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	320(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
.LBB31_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB31_6
# BB#5:                                 # %if.then.8
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_imagefile_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	312(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	312(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB31_6:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 312(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB31_8
# BB#7:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_imagefile_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rcx
	movq	%rax, 320(%rcx)
.LBB31_8:                               # %if.end.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_imagefile_changed
.LBB31_9:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_context_real_set_imagefile, .Lfunc_end31-gimp_context_real_set_imagefile
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_real_set_template,@function
gimp_context_real_set_template:         # @gimp_context_real_set_template
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	328(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_9
.LBB32_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB32_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	336(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 336(%rax)
.LBB32_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB32_6
# BB#5:                                 # %if.then.8
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_template_dirty, %rdx
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB32_6:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 328(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB32_8
# BB#7:                                 # %if.then.14
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.69, %rsi
	movabsq	$gimp_context_template_dirty, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rcx
	movq	%rax, 336(%rcx)
.LBB32_8:                               # %if.end.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_context_template_changed
.LBB32_9:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_context_real_set_template, .Lfunc_end32-gimp_context_real_set_template
	.cfi_endproc

	.globl	gimp_context_type_to_property
	.align	16, 0x90
	.type	gimp_context_type_to_property,@function
gimp_context_type_to_property:          # @gimp_context_type_to_property
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$2, -20(%rbp)
.LBB33_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -20(%rbp)
	ja	.LBB33_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	gimp_context_prop_types(,%rcx,8), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB33_4
# BB#3:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB33_7
.LBB33_4:                               # %if.end
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_5
.LBB33_5:                               # %for.inc
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB33_1
.LBB33_6:                               # %for.end
	movl	$-1, -4(%rbp)
.LBB33_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_context_type_to_property, .Lfunc_end33-gimp_context_type_to_property
	.cfi_endproc

	.globl	gimp_context_type_to_prop_name
	.align	16, 0x90
	.type	gimp_context_type_to_prop_name,@function
gimp_context_type_to_prop_name:         # @gimp_context_type_to_prop_name
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
	movq	%rdi, -16(%rbp)
	movl	$2, -20(%rbp)
.LBB34_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -20(%rbp)
	ja	.LBB34_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	gimp_context_prop_types(,%rcx,8), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB34_4
# BB#3:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	gimp_context_prop_names(,%rcx,8), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB34_7
.LBB34_4:                               # %if.end
                                        #   in Loop: Header=BB34_1 Depth=1
	jmp	.LBB34_5
.LBB34_5:                               # %for.inc
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB34_1
.LBB34_6:                               # %for.end
	movq	$0, -8(%rbp)
.LBB34_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_context_type_to_prop_name, .Lfunc_end34-gimp_context_type_to_prop_name
	.cfi_endproc

	.globl	gimp_context_type_to_signal_name
	.align	16, 0x90
	.type	gimp_context_type_to_signal_name,@function
gimp_context_type_to_signal_name:       # @gimp_context_type_to_signal_name
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$2, -20(%rbp)
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -20(%rbp)
	ja	.LBB35_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	gimp_context_prop_types(,%rcx,8), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB35_4
# BB#3:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movl	gimp_context_signals(,%rcx,4), %edi
	callq	g_signal_name
	movq	%rax, -8(%rbp)
	jmp	.LBB35_7
.LBB35_4:                               # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	jmp	.LBB35_5
.LBB35_5:                               # %for.inc
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB35_1
.LBB35_6:                               # %for.end
	movq	$0, -8(%rbp)
.LBB35_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_context_type_to_signal_name, .Lfunc_end35-gimp_context_type_to_signal_name
	.cfi_endproc

	.globl	gimp_context_get_by_type
	.align	16, 0x90
	.type	gimp_context_get_by_type,@function
gimp_context_get_by_type:               # @gimp_context_get_by_type
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_by_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB36_20
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	jmp	.LBB36_13
.LBB36_13:                              # %do.body.11
	movq	-24(%rbp), %rdi
	callq	gimp_context_type_to_property
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	je	.LBB36_15
# BB#14:                                # %if.then.14
	jmp	.LBB36_16
.LBB36_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_by_type, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB36_20
.LBB36_16:                              # %if.end.16
	jmp	.LBB36_17
.LBB36_17:                              # %do.end.17
	leaq	-40(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	movq	gimp_context_prop_names(,%rdi,8), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	cmpq	$0, -40(%rbp)
	je	.LBB36_19
# BB#18:                                # %if.then.19
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB36_19:                              # %if.end.20
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB36_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_context_get_by_type, .Lfunc_end36-gimp_context_get_by_type
	.cfi_endproc

	.globl	gimp_context_set_by_type
	.align	16, 0x90
	.type	gimp_context_set_by_type,@function
gimp_context_set_by_type:               # @gimp_context_set_by_type
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_by_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB37_18
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	jmp	.LBB37_13
.LBB37_13:                              # %do.body.11
	movq	-16(%rbp), %rdi
	callq	gimp_context_type_to_property
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	je	.LBB37_15
# BB#14:                                # %if.then.14
	jmp	.LBB37_16
.LBB37_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_by_type, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB37_18
.LBB37_16:                              # %if.end.16
	jmp	.LBB37_17
.LBB37_17:                              # %do.end.17
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movq	gimp_context_prop_names(,%rsi,8), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
.LBB37_18:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_context_set_by_type, .Lfunc_end37-gimp_context_set_by_type
	.cfi_endproc

	.globl	gimp_context_changed_by_type
	.align	16, 0x90
	.type	gimp_context_changed_by_type,@function
gimp_context_changed_by_type:           # @gimp_context_changed_by_type
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_changed_by_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB38_18
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	jmp	.LBB38_13
.LBB38_13:                              # %do.body.11
	movq	-16(%rbp), %rdi
	callq	gimp_context_type_to_property
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	je	.LBB38_15
# BB#14:                                # %if.then.14
	jmp	.LBB38_16
.LBB38_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_changed_by_type, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB38_18
.LBB38_16:                              # %if.end.16
	jmp	.LBB38_17
.LBB38_17:                              # %do.end.17
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_get_by_type
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %ecx
	movl	%ecx, %esi
	movl	gimp_context_signals(,%rsi,4), %esi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB38_18:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_context_changed_by_type, .Lfunc_end38-gimp_context_changed_by_type
	.cfi_endproc

	.globl	gimp_context_get_image
	.align	16, 0x90
	.type	gimp_context_get_image,@function
gimp_context_get_image:                 # @gimp_context_get_image
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB39_8
.LBB39_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB39_7:                               # %if.end
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.8
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_image, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB39_13
.LBB39_11:                              # %if.end.10
	jmp	.LBB39_12
.LBB39_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB39_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_context_get_image, .Lfunc_end39-gimp_context_get_image
	.cfi_endproc

	.globl	gimp_context_set_image
	.align	16, 0x90
	.type	gimp_context_set_image,@function
gimp_context_set_image:                 # @gimp_context_set_image
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_image, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB40_18
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	jmp	.LBB40_13
.LBB40_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB40_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB40_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB40_15:                              # %land.end
                                        #   in Loop: Header=BB40_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB40_16
	jmp	.LBB40_17
.LBB40_16:                              # %while.body
                                        #   in Loop: Header=BB40_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB40_13
.LBB40_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_image
.LBB40_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_context_set_image, .Lfunc_end40-gimp_context_set_image
	.cfi_endproc

	.globl	gimp_context_image_changed
	.align	16, 0x90
	.type	gimp_context_image_changed,@function
gimp_context_image_changed:             # @gimp_context_image_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB41_8
.LBB41_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB41_10
# BB#9:                                 # %if.then.8
	jmp	.LBB41_11
.LBB41_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_image_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB41_13
.LBB41_11:                              # %if.end.10
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+8, %esi
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB41_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_context_image_changed, .Lfunc_end41-gimp_context_image_changed
	.cfi_endproc

	.globl	gimp_context_get_display
	.align	16, 0x90
	.type	gimp_context_get_display,@function
gimp_context_get_display:               # @gimp_context_get_display
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB42_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB42_8
.LBB42_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB42_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB42_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB42_7
.LBB42_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB42_7:                               # %if.end
	jmp	.LBB42_8
.LBB42_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB42_10
# BB#9:                                 # %if.then.8
	jmp	.LBB42_11
.LBB42_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_display, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB42_13
.LBB42_11:                              # %if.end.10
	jmp	.LBB42_12
.LBB42_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB42_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_context_get_display, .Lfunc_end42-gimp_context_get_display
	.cfi_endproc

	.globl	gimp_context_set_display
	.align	16, 0x90
	.type	gimp_context_set_display,@function
gimp_context_set_display:               # @gimp_context_set_display
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB43_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB43_8
.LBB43_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB43_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB43_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB43_7
.LBB43_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB43_7:                               # %if.end
	jmp	.LBB43_8
.LBB43_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB43_10
# BB#9:                                 # %if.then.8
	jmp	.LBB43_11
.LBB43_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_display, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB43_18
.LBB43_11:                              # %if.end.10
	jmp	.LBB43_12
.LBB43_12:                              # %do.end
	jmp	.LBB43_13
.LBB43_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB43_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB43_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB43_15:                              # %land.end
                                        #   in Loop: Header=BB43_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB43_16
	jmp	.LBB43_17
.LBB43_16:                              # %while.body
                                        #   in Loop: Header=BB43_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB43_13
.LBB43_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_display
.LBB43_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_context_set_display, .Lfunc_end43-gimp_context_set_display
	.cfi_endproc

	.globl	gimp_context_display_changed
	.align	16, 0x90
	.type	gimp_context_display_changed,@function
gimp_context_display_changed:           # @gimp_context_display_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB44_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB44_8
.LBB44_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB44_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB44_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB44_7
.LBB44_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB44_7:                               # %if.end
	jmp	.LBB44_8
.LBB44_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB44_10
# BB#9:                                 # %if.then.8
	jmp	.LBB44_11
.LBB44_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_display_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB44_13
.LBB44_11:                              # %if.end.10
	jmp	.LBB44_12
.LBB44_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+12, %esi
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB44_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_context_display_changed, .Lfunc_end44-gimp_context_display_changed
	.cfi_endproc

	.globl	gimp_context_get_tool
	.align	16, 0x90
	.type	gimp_context_get_tool,@function
gimp_context_get_tool:                  # @gimp_context_get_tool
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB45_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB45_8
.LBB45_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB45_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB45_7
.LBB45_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB45_7:                               # %if.end
	jmp	.LBB45_8
.LBB45_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB45_10
# BB#9:                                 # %if.then.8
	jmp	.LBB45_11
.LBB45_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_tool, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB45_13
.LBB45_11:                              # %if.end.10
	jmp	.LBB45_12
.LBB45_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB45_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_context_get_tool, .Lfunc_end45-gimp_context_get_tool
	.cfi_endproc

	.globl	gimp_context_set_tool
	.align	16, 0x90
	.type	gimp_context_set_tool,@function
gimp_context_set_tool:                  # @gimp_context_set_tool
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB46_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB46_8
.LBB46_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB46_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB46_7
.LBB46_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB46_7:                               # %if.end
	jmp	.LBB46_8
.LBB46_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB46_10
# BB#9:                                 # %if.then.8
	jmp	.LBB46_11
.LBB46_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_tool, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_31
.LBB46_11:                              # %if.end.10
	jmp	.LBB46_12
.LBB46_12:                              # %do.end
	jmp	.LBB46_13
.LBB46_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB46_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB46_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB46_21
.LBB46_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB46_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB46_20
.LBB46_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB46_20:                              # %if.end.32
	jmp	.LBB46_21
.LBB46_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB46_23
.LBB46_22:                              # %if.then.36
	jmp	.LBB46_24
.LBB46_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_tool, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_31
.LBB46_24:                              # %if.end.38
	jmp	.LBB46_25
.LBB46_25:                              # %do.end.39
	jmp	.LBB46_26
.LBB46_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB46_28
# BB#27:                                # %land.rhs
                                        #   in Loop: Header=BB46_26 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB46_28:                              # %land.end
                                        #   in Loop: Header=BB46_26 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB46_29
	jmp	.LBB46_30
.LBB46_29:                              # %while.body
                                        #   in Loop: Header=BB46_26 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB46_26
.LBB46_30:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_tool
.LBB46_31:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_context_set_tool, .Lfunc_end46-gimp_context_set_tool
	.cfi_endproc

	.globl	gimp_context_tool_changed
	.align	16, 0x90
	.type	gimp_context_tool_changed,@function
gimp_context_tool_changed:              # @gimp_context_tool_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB47_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB47_8
.LBB47_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB47_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB47_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB47_7
.LBB47_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB47_7:                               # %if.end
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.8
	jmp	.LBB47_11
.LBB47_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_tool_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB47_13
.LBB47_11:                              # %if.end.10
	jmp	.LBB47_12
.LBB47_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+16, %esi
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB47_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_context_tool_changed, .Lfunc_end47-gimp_context_tool_changed
	.cfi_endproc

	.globl	gimp_context_get_paint_info
	.align	16, 0x90
	.type	gimp_context_get_paint_info,@function
gimp_context_get_paint_info:            # @gimp_context_get_paint_info
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB48_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB48_8
.LBB48_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB48_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB48_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB48_7
.LBB48_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB48_7:                               # %if.end
	jmp	.LBB48_8
.LBB48_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB48_10
# BB#9:                                 # %if.then.8
	jmp	.LBB48_11
.LBB48_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_paint_info, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB48_13
.LBB48_11:                              # %if.end.10
	jmp	.LBB48_12
.LBB48_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB48_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_context_get_paint_info, .Lfunc_end48-gimp_context_get_paint_info
	.cfi_endproc

	.globl	gimp_context_set_paint_info
	.align	16, 0x90
	.type	gimp_context_set_paint_info,@function
gimp_context_set_paint_info:            # @gimp_context_set_paint_info
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
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB49_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB49_8
.LBB49_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB49_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB49_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB49_7
.LBB49_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB49_7:                               # %if.end
	jmp	.LBB49_8
.LBB49_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB49_10
# BB#9:                                 # %if.then.8
	jmp	.LBB49_11
.LBB49_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_paint_info, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB49_31
.LBB49_11:                              # %if.end.10
	jmp	.LBB49_12
.LBB49_12:                              # %do.end
	jmp	.LBB49_13
.LBB49_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB49_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_paint_info_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB49_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB49_21
.LBB49_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB49_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB49_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB49_20
.LBB49_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB49_20:                              # %if.end.32
	jmp	.LBB49_21
.LBB49_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB49_23
.LBB49_22:                              # %if.then.36
	jmp	.LBB49_24
.LBB49_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_paint_info, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB49_31
.LBB49_24:                              # %if.end.38
	jmp	.LBB49_25
.LBB49_25:                              # %do.end.39
	jmp	.LBB49_26
.LBB49_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB49_28
# BB#27:                                # %land.rhs
                                        #   in Loop: Header=BB49_26 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB49_28:                              # %land.end
                                        #   in Loop: Header=BB49_26 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB49_29
	jmp	.LBB49_30
.LBB49_29:                              # %while.body
                                        #   in Loop: Header=BB49_26 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB49_26
.LBB49_30:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_paint_info
.LBB49_31:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_context_set_paint_info, .Lfunc_end49-gimp_context_set_paint_info
	.cfi_endproc

	.globl	gimp_context_paint_info_changed
	.align	16, 0x90
	.type	gimp_context_paint_info_changed,@function
gimp_context_paint_info_changed:        # @gimp_context_paint_info_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB50_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB50_8
.LBB50_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB50_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB50_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB50_7
.LBB50_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB50_7:                               # %if.end
	jmp	.LBB50_8
.LBB50_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB50_10
# BB#9:                                 # %if.then.8
	jmp	.LBB50_11
.LBB50_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_paint_info_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB50_13
.LBB50_11:                              # %if.end.10
	jmp	.LBB50_12
.LBB50_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+20, %esi
	movq	-8(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB50_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_context_paint_info_changed, .Lfunc_end50-gimp_context_paint_info_changed
	.cfi_endproc

	.globl	gimp_context_get_foreground
	.align	16, 0x90
	.type	gimp_context_get_foreground,@function
gimp_context_get_foreground:            # @gimp_context_get_foreground
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB51_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB51_8
.LBB51_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB51_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB51_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB51_7
.LBB51_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB51_7:                               # %if.end
	jmp	.LBB51_8
.LBB51_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB51_10
# BB#9:                                 # %if.then.8
	jmp	.LBB51_11
.LBB51_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_foreground, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB51_18
.LBB51_11:                              # %if.end.10
	jmp	.LBB51_12
.LBB51_12:                              # %do.end
	jmp	.LBB51_13
.LBB51_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB51_15
# BB#14:                                # %if.then.13
	jmp	.LBB51_16
.LBB51_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_foreground, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB51_18
.LBB51_16:                              # %if.end.15
	jmp	.LBB51_17
.LBB51_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	112(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	120(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	128(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB51_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_context_get_foreground, .Lfunc_end51-gimp_context_get_foreground
	.cfi_endproc

	.globl	gimp_context_set_foreground
	.align	16, 0x90
	.type	gimp_context_set_foreground,@function
gimp_context_set_foreground:            # @gimp_context_set_foreground
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB52_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB52_8
.LBB52_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB52_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB52_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB52_7
.LBB52_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB52_7:                               # %if.end
	jmp	.LBB52_8
.LBB52_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB52_10
# BB#9:                                 # %if.then.8
	jmp	.LBB52_11
.LBB52_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_foreground, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB52_23
.LBB52_11:                              # %if.end.10
	jmp	.LBB52_12
.LBB52_12:                              # %do.end
	jmp	.LBB52_13
.LBB52_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB52_15
# BB#14:                                # %if.then.13
	jmp	.LBB52_16
.LBB52_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_foreground, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB52_23
.LBB52_16:                              # %if.end.15
	jmp	.LBB52_17
.LBB52_17:                              # %do.end.16
	jmp	.LBB52_18
.LBB52_18:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB52_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB52_18 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB52_20:                              # %land.end
                                        #   in Loop: Header=BB52_18 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB52_21
	jmp	.LBB52_22
.LBB52_21:                              # %while.body
                                        #   in Loop: Header=BB52_18 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB52_18
.LBB52_22:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_foreground
.LBB52_23:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_context_set_foreground, .Lfunc_end52-gimp_context_set_foreground
	.cfi_endproc

	.globl	gimp_context_foreground_changed
	.align	16, 0x90
	.type	gimp_context_foreground_changed,@function
gimp_context_foreground_changed:        # @gimp_context_foreground_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB53_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB53_8
.LBB53_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB53_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB53_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB53_7
.LBB53_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB53_7:                               # %if.end
	jmp	.LBB53_8
.LBB53_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB53_10
# BB#9:                                 # %if.then.8
	jmp	.LBB53_11
.LBB53_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_foreground_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB53_13
.LBB53_11:                              # %if.end.10
	jmp	.LBB53_12
.LBB53_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+24, %esi
	movq	-8(%rbp), %rcx
	addq	$104, %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB53_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_context_foreground_changed, .Lfunc_end53-gimp_context_foreground_changed
	.cfi_endproc

	.globl	gimp_context_get_background
	.align	16, 0x90
	.type	gimp_context_get_background,@function
gimp_context_get_background:            # @gimp_context_get_background
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB54_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB54_8
.LBB54_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB54_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB54_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB54_7
.LBB54_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB54_7:                               # %if.end
	jmp	.LBB54_8
.LBB54_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB54_10
# BB#9:                                 # %if.then.8
	jmp	.LBB54_11
.LBB54_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_background, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB54_18
.LBB54_11:                              # %if.end.10
	jmp	.LBB54_12
.LBB54_12:                              # %do.end
	jmp	.LBB54_13
.LBB54_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB54_15
# BB#14:                                # %if.then.13
	jmp	.LBB54_16
.LBB54_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_background, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB54_18
.LBB54_16:                              # %if.end.15
	jmp	.LBB54_17
.LBB54_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	144(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	152(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	160(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB54_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_context_get_background, .Lfunc_end54-gimp_context_get_background
	.cfi_endproc

	.globl	gimp_context_set_background
	.align	16, 0x90
	.type	gimp_context_set_background,@function
gimp_context_set_background:            # @gimp_context_set_background
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB55_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB55_8
.LBB55_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB55_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB55_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB55_7
.LBB55_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB55_7:                               # %if.end
	jmp	.LBB55_8
.LBB55_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB55_10
# BB#9:                                 # %if.then.8
	jmp	.LBB55_11
.LBB55_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_background, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB55_23
.LBB55_11:                              # %if.end.10
	jmp	.LBB55_12
.LBB55_12:                              # %do.end
	jmp	.LBB55_13
.LBB55_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB55_15
# BB#14:                                # %if.then.13
	jmp	.LBB55_16
.LBB55_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_background, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB55_23
.LBB55_16:                              # %if.end.15
	jmp	.LBB55_17
.LBB55_17:                              # %do.end.16
	jmp	.LBB55_18
.LBB55_18:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB55_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB55_18 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB55_20:                              # %land.end
                                        #   in Loop: Header=BB55_18 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB55_21
	jmp	.LBB55_22
.LBB55_21:                              # %while.body
                                        #   in Loop: Header=BB55_18 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB55_18
.LBB55_22:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_background
.LBB55_23:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_context_set_background, .Lfunc_end55-gimp_context_set_background
	.cfi_endproc

	.globl	gimp_context_background_changed
	.align	16, 0x90
	.type	gimp_context_background_changed,@function
gimp_context_background_changed:        # @gimp_context_background_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB56_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB56_8
.LBB56_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB56_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB56_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB56_7
.LBB56_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB56_7:                               # %if.end
	jmp	.LBB56_8
.LBB56_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB56_10
# BB#9:                                 # %if.then.8
	jmp	.LBB56_11
.LBB56_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_background_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB56_13
.LBB56_11:                              # %if.end.10
	jmp	.LBB56_12
.LBB56_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+28, %esi
	movq	-8(%rbp), %rcx
	addq	$136, %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB56_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_context_background_changed, .Lfunc_end56-gimp_context_background_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI57_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_context_set_default_colors
	.align	16, 0x90
	.type	gimp_context_set_default_colors,@function
gimp_context_set_default_colors:        # @gimp_context_set_default_colors
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB57_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB57_8
.LBB57_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB57_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB57_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB57_7
.LBB57_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB57_7:                               # %if.end
	jmp	.LBB57_8
.LBB57_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB57_10
# BB#9:                                 # %if.then.8
	jmp	.LBB57_11
.LBB57_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_default_colors, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB57_23
.LBB57_11:                              # %if.end.10
	jmp	.LBB57_12
.LBB57_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB57_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jne	.LBB57_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB57_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -105(%rbp)         # 1-byte Spill
.LBB57_15:                              # %land.end
                                        #   in Loop: Header=BB57_13 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB57_16
	jmp	.LBB57_17
.LBB57_16:                              # %while.body
                                        #   in Loop: Header=BB57_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB57_13
.LBB57_17:                              # %while.end
	jmp	.LBB57_18
.LBB57_18:                              # %while.cond.14
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	movb	%cl, -106(%rbp)         # 1-byte Spill
	jne	.LBB57_20
# BB#19:                                # %land.rhs.18
                                        #   in Loop: Header=BB57_18 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -106(%rbp)         # 1-byte Spill
.LBB57_20:                              # %land.end.21
                                        #   in Loop: Header=BB57_18 Depth=1
	movb	-106(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB57_21
	jmp	.LBB57_22
.LBB57_21:                              # %while.body.22
                                        #   in Loop: Header=BB57_18 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB57_18
.LBB57_22:                              # %while.end.24
	leaq	-48(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI57_0, %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-80(%rbp), %rdi
	movsd	.LCPI57_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-128(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_context_real_set_foreground
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_context_real_set_background
.LBB57_23:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_context_set_default_colors, .Lfunc_end57-gimp_context_set_default_colors
	.cfi_endproc

	.globl	gimp_context_swap_colors
	.align	16, 0x90
	.type	gimp_context_swap_colors,@function
gimp_context_swap_colors:               # @gimp_context_swap_colors
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB58_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB58_8
.LBB58_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB58_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB58_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB58_7
.LBB58_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB58_7:                               # %if.end
	jmp	.LBB58_8
.LBB58_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB58_10
# BB#9:                                 # %if.then.8
	jmp	.LBB58_11
.LBB58_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_swap_colors, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB58_23
.LBB58_11:                              # %if.end.10
	jmp	.LBB58_12
.LBB58_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB58_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	movb	%cl, -105(%rbp)         # 1-byte Spill
	jne	.LBB58_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB58_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -105(%rbp)         # 1-byte Spill
.LBB58_15:                              # %land.end
                                        #   in Loop: Header=BB58_13 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_16
	jmp	.LBB58_17
.LBB58_16:                              # %while.body
                                        #   in Loop: Header=BB58_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB58_13
.LBB58_17:                              # %while.end
	jmp	.LBB58_18
.LBB58_18:                              # %while.cond.14
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	movb	%cl, -106(%rbp)         # 1-byte Spill
	jne	.LBB58_20
# BB#19:                                # %land.rhs.18
                                        #   in Loop: Header=BB58_18 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -106(%rbp)         # 1-byte Spill
.LBB58_20:                              # %land.end.21
                                        #   in Loop: Header=BB58_18 Depth=1
	movb	-106(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_21
	jmp	.LBB58_22
.LBB58_21:                              # %while.body.22
                                        #   in Loop: Header=BB58_18 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB58_18
.LBB58_22:                              # %while.end.24
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-80(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_context_real_set_foreground
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_context_real_set_background
.LBB58_23:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_context_swap_colors, .Lfunc_end58-gimp_context_swap_colors
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI59_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_context_get_opacity
	.align	16, 0x90
	.type	gimp_context_get_opacity,@function
gimp_context_get_opacity:               # @gimp_context_get_opacity
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB59_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB59_8
.LBB59_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB59_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB59_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB59_7
.LBB59_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB59_7:                               # %if.end
	jmp	.LBB59_8
.LBB59_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB59_10
# BB#9:                                 # %if.then.8
	jmp	.LBB59_11
.LBB59_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_opacity, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movsd	.LCPI59_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB59_13
.LBB59_11:                              # %if.end.10
	jmp	.LBB59_12
.LBB59_12:                              # %do.end
	movq	-16(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB59_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_context_get_opacity, .Lfunc_end59-gimp_context_get_opacity
	.cfi_endproc

	.globl	gimp_context_set_opacity
	.align	16, 0x90
	.type	gimp_context_set_opacity,@function
gimp_context_set_opacity:               # @gimp_context_set_opacity
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB60_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB60_8
.LBB60_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB60_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB60_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB60_7
.LBB60_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB60_7:                               # %if.end
	jmp	.LBB60_8
.LBB60_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB60_10
# BB#9:                                 # %if.then.8
	jmp	.LBB60_11
.LBB60_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_opacity, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB60_18
.LBB60_11:                              # %if.end.10
	jmp	.LBB60_12
.LBB60_12:                              # %do.end
	jmp	.LBB60_13
.LBB60_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB60_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB60_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB60_15:                              # %land.end
                                        #   in Loop: Header=BB60_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB60_16
	jmp	.LBB60_17
.LBB60_16:                              # %while.body
                                        #   in Loop: Header=BB60_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB60_13
.LBB60_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_context_real_set_opacity
.LBB60_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_context_set_opacity, .Lfunc_end60-gimp_context_set_opacity
	.cfi_endproc

	.globl	gimp_context_opacity_changed
	.align	16, 0x90
	.type	gimp_context_opacity_changed,@function
gimp_context_opacity_changed:           # @gimp_context_opacity_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB61_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB61_8
.LBB61_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB61_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB61_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB61_7
.LBB61_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB61_7:                               # %if.end
	jmp	.LBB61_8
.LBB61_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB61_10
# BB#9:                                 # %if.then.8
	jmp	.LBB61_11
.LBB61_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_opacity_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB61_13
.LBB61_11:                              # %if.end.10
	jmp	.LBB61_12
.LBB61_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+32, %esi
	movq	-8(%rbp), %rcx
	movsd	168(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_signal_emit
.LBB61_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_context_opacity_changed, .Lfunc_end61-gimp_context_opacity_changed
	.cfi_endproc

	.globl	gimp_context_get_paint_mode
	.align	16, 0x90
	.type	gimp_context_get_paint_mode,@function
gimp_context_get_paint_mode:            # @gimp_context_get_paint_mode
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB62_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB62_8
.LBB62_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB62_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB62_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB62_7
.LBB62_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB62_7:                               # %if.end
	jmp	.LBB62_8
.LBB62_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB62_10
# BB#9:                                 # %if.then.8
	jmp	.LBB62_11
.LBB62_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_paint_mode, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB62_13
.LBB62_11:                              # %if.end.10
	jmp	.LBB62_12
.LBB62_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	176(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB62_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_context_get_paint_mode, .Lfunc_end62-gimp_context_get_paint_mode
	.cfi_endproc

	.globl	gimp_context_set_paint_mode
	.align	16, 0x90
	.type	gimp_context_set_paint_mode,@function
gimp_context_set_paint_mode:            # @gimp_context_set_paint_mode
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB63_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB63_8
.LBB63_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB63_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB63_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB63_7
.LBB63_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB63_7:                               # %if.end
	jmp	.LBB63_8
.LBB63_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB63_10
# BB#9:                                 # %if.then.8
	jmp	.LBB63_11
.LBB63_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_paint_mode, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB63_18
.LBB63_11:                              # %if.end.10
	jmp	.LBB63_12
.LBB63_12:                              # %do.end
	jmp	.LBB63_13
.LBB63_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB63_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB63_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB63_15:                              # %land.end
                                        #   in Loop: Header=BB63_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB63_16
	jmp	.LBB63_17
.LBB63_16:                              # %while.body
                                        #   in Loop: Header=BB63_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB63_13
.LBB63_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_context_real_set_paint_mode
.LBB63_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_context_set_paint_mode, .Lfunc_end63-gimp_context_set_paint_mode
	.cfi_endproc

	.globl	gimp_context_paint_mode_changed
	.align	16, 0x90
	.type	gimp_context_paint_mode_changed,@function
gimp_context_paint_mode_changed:        # @gimp_context_paint_mode_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB64_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB64_8
.LBB64_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB64_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB64_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB64_7
.LBB64_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB64_7:                               # %if.end
	jmp	.LBB64_8
.LBB64_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB64_10
# BB#9:                                 # %if.then.8
	jmp	.LBB64_11
.LBB64_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_paint_mode_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB64_13
.LBB64_11:                              # %if.end.10
	jmp	.LBB64_12
.LBB64_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+36, %esi
	movq	-8(%rbp), %rcx
	movl	176(%rcx), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB64_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_context_paint_mode_changed, .Lfunc_end64-gimp_context_paint_mode_changed
	.cfi_endproc

	.globl	gimp_context_get_brush
	.align	16, 0x90
	.type	gimp_context_get_brush,@function
gimp_context_get_brush:                 # @gimp_context_get_brush
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB65_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB65_8
.LBB65_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB65_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB65_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB65_7
.LBB65_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB65_7:                               # %if.end
	jmp	.LBB65_8
.LBB65_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB65_10
# BB#9:                                 # %if.then.8
	jmp	.LBB65_11
.LBB65_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_brush, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB65_13
.LBB65_11:                              # %if.end.10
	jmp	.LBB65_12
.LBB65_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB65_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_context_get_brush, .Lfunc_end65-gimp_context_get_brush
	.cfi_endproc

	.globl	gimp_context_set_brush
	.align	16, 0x90
	.type	gimp_context_set_brush,@function
gimp_context_set_brush:                 # @gimp_context_set_brush
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB66_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB66_8
.LBB66_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB66_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB66_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB66_7
.LBB66_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB66_7:                               # %if.end
	jmp	.LBB66_8
.LBB66_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB66_10
# BB#9:                                 # %if.then.8
	jmp	.LBB66_11
.LBB66_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_brush, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB66_31
.LBB66_11:                              # %if.end.10
	jmp	.LBB66_12
.LBB66_12:                              # %do.end
	jmp	.LBB66_13
.LBB66_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB66_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_brush_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB66_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB66_21
.LBB66_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB66_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB66_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB66_20
.LBB66_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB66_20:                              # %if.end.32
	jmp	.LBB66_21
.LBB66_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB66_23
.LBB66_22:                              # %if.then.36
	jmp	.LBB66_24
.LBB66_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_brush, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB66_31
.LBB66_24:                              # %if.end.38
	jmp	.LBB66_25
.LBB66_25:                              # %do.end.39
	jmp	.LBB66_26
.LBB66_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB66_28
# BB#27:                                # %land.rhs
                                        #   in Loop: Header=BB66_26 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB66_28:                              # %land.end
                                        #   in Loop: Header=BB66_26 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB66_29
	jmp	.LBB66_30
.LBB66_29:                              # %while.body
                                        #   in Loop: Header=BB66_26 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB66_26
.LBB66_30:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_brush
.LBB66_31:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_context_set_brush, .Lfunc_end66-gimp_context_set_brush
	.cfi_endproc

	.globl	gimp_context_brush_changed
	.align	16, 0x90
	.type	gimp_context_brush_changed,@function
gimp_context_brush_changed:             # @gimp_context_brush_changed
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB67_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB67_8
.LBB67_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB67_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB67_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB67_7
.LBB67_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB67_7:                               # %if.end
	jmp	.LBB67_8
.LBB67_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB67_10
# BB#9:                                 # %if.then.8
	jmp	.LBB67_11
.LBB67_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_brush_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB67_13
.LBB67_11:                              # %if.end.10
	jmp	.LBB67_12
.LBB67_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+40, %esi
	movq	-8(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB67_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_context_brush_changed, .Lfunc_end67-gimp_context_brush_changed
	.cfi_endproc

	.globl	gimp_context_get_dynamics
	.align	16, 0x90
	.type	gimp_context_get_dynamics,@function
gimp_context_get_dynamics:              # @gimp_context_get_dynamics
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB68_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB68_8
.LBB68_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB68_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB68_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB68_7
.LBB68_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB68_7:                               # %if.end
	jmp	.LBB68_8
.LBB68_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB68_10
# BB#9:                                 # %if.then.8
	jmp	.LBB68_11
.LBB68_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_dynamics, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB68_13
.LBB68_11:                              # %if.end.10
	jmp	.LBB68_12
.LBB68_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB68_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_context_get_dynamics, .Lfunc_end68-gimp_context_get_dynamics
	.cfi_endproc

	.globl	gimp_context_set_dynamics
	.align	16, 0x90
	.type	gimp_context_set_dynamics,@function
gimp_context_set_dynamics:              # @gimp_context_set_dynamics
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB69_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB69_8
.LBB69_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB69_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB69_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB69_7
.LBB69_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB69_7:                               # %if.end
	jmp	.LBB69_8
.LBB69_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB69_10
# BB#9:                                 # %if.then.8
	jmp	.LBB69_11
.LBB69_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_dynamics, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB69_31
.LBB69_11:                              # %if.end.10
	jmp	.LBB69_12
.LBB69_12:                              # %do.end
	jmp	.LBB69_13
.LBB69_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB69_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_dynamics_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB69_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB69_21
.LBB69_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB69_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB69_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB69_20
.LBB69_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB69_20:                              # %if.end.32
	jmp	.LBB69_21
.LBB69_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB69_23
.LBB69_22:                              # %if.then.36
	jmp	.LBB69_24
.LBB69_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_dynamics, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB69_31
.LBB69_24:                              # %if.end.38
	jmp	.LBB69_25
.LBB69_25:                              # %do.end.39
	jmp	.LBB69_26
.LBB69_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB69_28
# BB#27:                                # %land.rhs
                                        #   in Loop: Header=BB69_26 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB69_28:                              # %land.end
                                        #   in Loop: Header=BB69_26 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB69_29
	jmp	.LBB69_30
.LBB69_29:                              # %while.body
                                        #   in Loop: Header=BB69_26 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB69_26
.LBB69_30:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_dynamics
.LBB69_31:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	gimp_context_set_dynamics, .Lfunc_end69-gimp_context_set_dynamics
	.cfi_endproc

	.globl	gimp_context_dynamics_changed
	.align	16, 0x90
	.type	gimp_context_dynamics_changed,@function
gimp_context_dynamics_changed:          # @gimp_context_dynamics_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB70_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB70_8
.LBB70_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB70_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB70_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB70_7
.LBB70_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB70_7:                               # %if.end
	jmp	.LBB70_8
.LBB70_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB70_10
# BB#9:                                 # %if.then.8
	jmp	.LBB70_11
.LBB70_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_dynamics_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB70_13
.LBB70_11:                              # %if.end.10
	jmp	.LBB70_12
.LBB70_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+44, %esi
	movq	-8(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB70_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	gimp_context_dynamics_changed, .Lfunc_end70-gimp_context_dynamics_changed
	.cfi_endproc

	.globl	gimp_context_get_pattern
	.align	16, 0x90
	.type	gimp_context_get_pattern,@function
gimp_context_get_pattern:               # @gimp_context_get_pattern
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB71_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB71_8
.LBB71_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB71_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB71_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB71_7
.LBB71_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB71_7:                               # %if.end
	jmp	.LBB71_8
.LBB71_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB71_10
# BB#9:                                 # %if.then.8
	jmp	.LBB71_11
.LBB71_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_pattern, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB71_13
.LBB71_11:                              # %if.end.10
	jmp	.LBB71_12
.LBB71_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB71_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	gimp_context_get_pattern, .Lfunc_end71-gimp_context_get_pattern
	.cfi_endproc

	.globl	gimp_context_set_pattern
	.align	16, 0x90
	.type	gimp_context_set_pattern,@function
gimp_context_set_pattern:               # @gimp_context_set_pattern
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB72_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB72_8
.LBB72_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB72_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB72_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB72_7
.LBB72_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB72_7:                               # %if.end
	jmp	.LBB72_8
.LBB72_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB72_10
# BB#9:                                 # %if.then.8
	jmp	.LBB72_11
.LBB72_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_pattern, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB72_18
.LBB72_11:                              # %if.end.10
	jmp	.LBB72_12
.LBB72_12:                              # %do.end
	jmp	.LBB72_13
.LBB72_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB72_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB72_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB72_15:                              # %land.end
                                        #   in Loop: Header=BB72_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB72_16
	jmp	.LBB72_17
.LBB72_16:                              # %while.body
                                        #   in Loop: Header=BB72_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB72_13
.LBB72_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_pattern
.LBB72_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	gimp_context_set_pattern, .Lfunc_end72-gimp_context_set_pattern
	.cfi_endproc

	.globl	gimp_context_pattern_changed
	.align	16, 0x90
	.type	gimp_context_pattern_changed,@function
gimp_context_pattern_changed:           # @gimp_context_pattern_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB73_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB73_8
.LBB73_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB73_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB73_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB73_7
.LBB73_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB73_7:                               # %if.end
	jmp	.LBB73_8
.LBB73_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB73_10
# BB#9:                                 # %if.then.8
	jmp	.LBB73_11
.LBB73_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_pattern_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB73_13
.LBB73_11:                              # %if.end.10
	jmp	.LBB73_12
.LBB73_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+48, %esi
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB73_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gimp_context_pattern_changed, .Lfunc_end73-gimp_context_pattern_changed
	.cfi_endproc

	.globl	gimp_context_get_gradient
	.align	16, 0x90
	.type	gimp_context_get_gradient,@function
gimp_context_get_gradient:              # @gimp_context_get_gradient
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB74_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB74_8
.LBB74_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB74_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB74_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB74_7
.LBB74_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB74_7:                               # %if.end
	jmp	.LBB74_8
.LBB74_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB74_10
# BB#9:                                 # %if.then.8
	jmp	.LBB74_11
.LBB74_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_gradient, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB74_13
.LBB74_11:                              # %if.end.10
	jmp	.LBB74_12
.LBB74_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB74_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	gimp_context_get_gradient, .Lfunc_end74-gimp_context_get_gradient
	.cfi_endproc

	.globl	gimp_context_set_gradient
	.align	16, 0x90
	.type	gimp_context_set_gradient,@function
gimp_context_set_gradient:              # @gimp_context_set_gradient
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB75_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB75_8
.LBB75_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB75_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB75_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB75_7
.LBB75_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB75_7:                               # %if.end
	jmp	.LBB75_8
.LBB75_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB75_10
# BB#9:                                 # %if.then.8
	jmp	.LBB75_11
.LBB75_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_gradient, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB75_18
.LBB75_11:                              # %if.end.10
	jmp	.LBB75_12
.LBB75_12:                              # %do.end
	jmp	.LBB75_13
.LBB75_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$8192, %eax             # imm = 0x2000
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB75_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB75_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB75_15:                              # %land.end
                                        #   in Loop: Header=BB75_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB75_16
	jmp	.LBB75_17
.LBB75_16:                              # %while.body
                                        #   in Loop: Header=BB75_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB75_13
.LBB75_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_gradient
.LBB75_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	gimp_context_set_gradient, .Lfunc_end75-gimp_context_set_gradient
	.cfi_endproc

	.globl	gimp_context_gradient_changed
	.align	16, 0x90
	.type	gimp_context_gradient_changed,@function
gimp_context_gradient_changed:          # @gimp_context_gradient_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB76_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB76_8
.LBB76_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB76_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB76_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB76_7
.LBB76_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB76_7:                               # %if.end
	jmp	.LBB76_8
.LBB76_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB76_10
# BB#9:                                 # %if.then.8
	jmp	.LBB76_11
.LBB76_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_gradient_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB76_13
.LBB76_11:                              # %if.end.10
	jmp	.LBB76_12
.LBB76_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+52, %esi
	movq	-8(%rbp), %rcx
	movq	232(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB76_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	gimp_context_gradient_changed, .Lfunc_end76-gimp_context_gradient_changed
	.cfi_endproc

	.globl	gimp_context_get_palette
	.align	16, 0x90
	.type	gimp_context_get_palette,@function
gimp_context_get_palette:               # @gimp_context_get_palette
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB77_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB77_8
.LBB77_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB77_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB77_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB77_7
.LBB77_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB77_7:                               # %if.end
	jmp	.LBB77_8
.LBB77_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB77_10
# BB#9:                                 # %if.then.8
	jmp	.LBB77_11
.LBB77_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_palette, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB77_13
.LBB77_11:                              # %if.end.10
	jmp	.LBB77_12
.LBB77_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB77_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	gimp_context_get_palette, .Lfunc_end77-gimp_context_get_palette
	.cfi_endproc

	.globl	gimp_context_set_palette
	.align	16, 0x90
	.type	gimp_context_set_palette,@function
gimp_context_set_palette:               # @gimp_context_set_palette
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB78_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB78_8
.LBB78_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB78_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB78_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB78_7
.LBB78_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB78_7:                               # %if.end
	jmp	.LBB78_8
.LBB78_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB78_10
# BB#9:                                 # %if.then.8
	jmp	.LBB78_11
.LBB78_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_palette, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB78_18
.LBB78_11:                              # %if.end.10
	jmp	.LBB78_12
.LBB78_12:                              # %do.end
	jmp	.LBB78_13
.LBB78_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB78_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB78_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB78_15:                              # %land.end
                                        #   in Loop: Header=BB78_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB78_16
	jmp	.LBB78_17
.LBB78_16:                              # %while.body
                                        #   in Loop: Header=BB78_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB78_13
.LBB78_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_palette
.LBB78_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	gimp_context_set_palette, .Lfunc_end78-gimp_context_set_palette
	.cfi_endproc

	.globl	gimp_context_palette_changed
	.align	16, 0x90
	.type	gimp_context_palette_changed,@function
gimp_context_palette_changed:           # @gimp_context_palette_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB79_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB79_8
.LBB79_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB79_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB79_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB79_7
.LBB79_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB79_7:                               # %if.end
	jmp	.LBB79_8
.LBB79_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB79_10
# BB#9:                                 # %if.then.8
	jmp	.LBB79_11
.LBB79_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_palette_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB79_13
.LBB79_11:                              # %if.end.10
	jmp	.LBB79_12
.LBB79_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+56, %esi
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB79_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	gimp_context_palette_changed, .Lfunc_end79-gimp_context_palette_changed
	.cfi_endproc

	.globl	gimp_context_get_tool_preset
	.align	16, 0x90
	.type	gimp_context_get_tool_preset,@function
gimp_context_get_tool_preset:           # @gimp_context_get_tool_preset
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB80_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB80_8
.LBB80_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB80_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB80_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB80_7
.LBB80_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB80_7:                               # %if.end
	jmp	.LBB80_8
.LBB80_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB80_10
# BB#9:                                 # %if.then.8
	jmp	.LBB80_11
.LBB80_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_tool_preset, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB80_13
.LBB80_11:                              # %if.end.10
	jmp	.LBB80_12
.LBB80_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB80_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	gimp_context_get_tool_preset, .Lfunc_end80-gimp_context_get_tool_preset
	.cfi_endproc

	.globl	gimp_context_set_tool_preset
	.align	16, 0x90
	.type	gimp_context_set_tool_preset,@function
gimp_context_set_tool_preset:           # @gimp_context_set_tool_preset
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB81_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB81_8
.LBB81_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB81_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB81_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB81_7
.LBB81_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB81_7:                               # %if.end
	jmp	.LBB81_8
.LBB81_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB81_10
# BB#9:                                 # %if.then.8
	jmp	.LBB81_11
.LBB81_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_tool_preset, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB81_31
.LBB81_11:                              # %if.end.10
	jmp	.LBB81_12
.LBB81_12:                              # %do.end
	jmp	.LBB81_13
.LBB81_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB81_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_preset_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB81_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB81_21
.LBB81_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB81_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB81_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB81_20
.LBB81_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB81_20:                              # %if.end.32
	jmp	.LBB81_21
.LBB81_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB81_23
.LBB81_22:                              # %if.then.36
	jmp	.LBB81_24
.LBB81_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_tool_preset, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB81_31
.LBB81_24:                              # %if.end.38
	jmp	.LBB81_25
.LBB81_25:                              # %do.end.39
	jmp	.LBB81_26
.LBB81_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$32768, %eax            # imm = 0x8000
	cmpl	$0, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jne	.LBB81_28
# BB#27:                                # %land.rhs
                                        #   in Loop: Header=BB81_26 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB81_28:                              # %land.end
                                        #   in Loop: Header=BB81_26 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB81_29
	jmp	.LBB81_30
.LBB81_29:                              # %while.body
                                        #   in Loop: Header=BB81_26 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB81_26
.LBB81_30:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_tool_preset
.LBB81_31:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	gimp_context_set_tool_preset, .Lfunc_end81-gimp_context_set_tool_preset
	.cfi_endproc

	.globl	gimp_context_tool_preset_changed
	.align	16, 0x90
	.type	gimp_context_tool_preset_changed,@function
gimp_context_tool_preset_changed:       # @gimp_context_tool_preset_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB82_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB82_8
.LBB82_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB82_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB82_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB82_7
.LBB82_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB82_7:                               # %if.end
	jmp	.LBB82_8
.LBB82_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB82_10
# BB#9:                                 # %if.then.8
	jmp	.LBB82_11
.LBB82_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_tool_preset_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB82_13
.LBB82_11:                              # %if.end.10
	jmp	.LBB82_12
.LBB82_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+60, %esi
	movq	-8(%rbp), %rcx
	movq	264(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB82_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	gimp_context_tool_preset_changed, .Lfunc_end82-gimp_context_tool_preset_changed
	.cfi_endproc

	.globl	gimp_context_get_font
	.align	16, 0x90
	.type	gimp_context_get_font,@function
gimp_context_get_font:                  # @gimp_context_get_font
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB83_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB83_8
.LBB83_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB83_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB83_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB83_7
.LBB83_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB83_7:                               # %if.end
	jmp	.LBB83_8
.LBB83_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB83_10
# BB#9:                                 # %if.then.8
	jmp	.LBB83_11
.LBB83_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_font, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB83_13
.LBB83_11:                              # %if.end.10
	jmp	.LBB83_12
.LBB83_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB83_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	gimp_context_get_font, .Lfunc_end83-gimp_context_get_font
	.cfi_endproc

	.globl	gimp_context_set_font
	.align	16, 0x90
	.type	gimp_context_set_font,@function
gimp_context_set_font:                  # @gimp_context_set_font
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB84_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB84_8
.LBB84_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB84_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB84_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB84_7
.LBB84_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB84_7:                               # %if.end
	jmp	.LBB84_8
.LBB84_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB84_10
# BB#9:                                 # %if.then.8
	jmp	.LBB84_11
.LBB84_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_font, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB84_18
.LBB84_11:                              # %if.end.10
	jmp	.LBB84_12
.LBB84_12:                              # %do.end
	jmp	.LBB84_13
.LBB84_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$65536, %eax            # imm = 0x10000
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB84_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB84_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB84_15:                              # %land.end
                                        #   in Loop: Header=BB84_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB84_16
	jmp	.LBB84_17
.LBB84_16:                              # %while.body
                                        #   in Loop: Header=BB84_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB84_13
.LBB84_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_font
.LBB84_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	gimp_context_set_font, .Lfunc_end84-gimp_context_set_font
	.cfi_endproc

	.globl	gimp_context_get_font_name
	.align	16, 0x90
	.type	gimp_context_get_font_name,@function
gimp_context_get_font_name:             # @gimp_context_get_font_name
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB85_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB85_8
.LBB85_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB85_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB85_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB85_7
.LBB85_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB85_7:                               # %if.end
	jmp	.LBB85_8
.LBB85_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB85_10
# BB#9:                                 # %if.then.8
	jmp	.LBB85_11
.LBB85_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_font_name, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB85_13
.LBB85_11:                              # %if.end.10
	jmp	.LBB85_12
.LBB85_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB85_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	gimp_context_get_font_name, .Lfunc_end85-gimp_context_get_font_name
	.cfi_endproc

	.globl	gimp_context_set_font_name
	.align	16, 0x90
	.type	gimp_context_set_font_name,@function
gimp_context_set_font_name:             # @gimp_context_set_font_name
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB86_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB86_8
.LBB86_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB86_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB86_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB86_7
.LBB86_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB86_7:                               # %if.end
	jmp	.LBB86_8
.LBB86_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB86_10
# BB#9:                                 # %if.then.8
	jmp	.LBB86_11
.LBB86_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_font_name, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB86_15
.LBB86_11:                              # %if.end.10
	jmp	.LBB86_12
.LBB86_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	456(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB86_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_font_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_font
	jmp	.LBB86_15
.LBB86_14:                              # %if.else.16
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_font_get_standard
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_font
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rsi
	movq	%rax, 288(%rsi)
.LBB86_15:                              # %if.end.20
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	gimp_context_set_font_name, .Lfunc_end86-gimp_context_set_font_name
	.cfi_endproc

	.globl	gimp_context_font_changed
	.align	16, 0x90
	.type	gimp_context_font_changed,@function
gimp_context_font_changed:              # @gimp_context_font_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB87_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB87_8
.LBB87_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB87_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB87_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB87_7
.LBB87_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB87_7:                               # %if.end
	jmp	.LBB87_8
.LBB87_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB87_10
# BB#9:                                 # %if.then.8
	jmp	.LBB87_11
.LBB87_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_font_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB87_13
.LBB87_11:                              # %if.end.10
	jmp	.LBB87_12
.LBB87_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+64, %esi
	movq	-8(%rbp), %rcx
	movq	280(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB87_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	gimp_context_font_changed, .Lfunc_end87-gimp_context_font_changed
	.cfi_endproc

	.globl	gimp_context_get_buffer
	.align	16, 0x90
	.type	gimp_context_get_buffer,@function
gimp_context_get_buffer:                # @gimp_context_get_buffer
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB88_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB88_8
.LBB88_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB88_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB88_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB88_7
.LBB88_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB88_7:                               # %if.end
	jmp	.LBB88_8
.LBB88_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB88_10
# BB#9:                                 # %if.then.8
	jmp	.LBB88_11
.LBB88_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_buffer, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB88_13
.LBB88_11:                              # %if.end.10
	jmp	.LBB88_12
.LBB88_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB88_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	gimp_context_get_buffer, .Lfunc_end88-gimp_context_get_buffer
	.cfi_endproc

	.globl	gimp_context_set_buffer
	.align	16, 0x90
	.type	gimp_context_set_buffer,@function
gimp_context_set_buffer:                # @gimp_context_set_buffer
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB89_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB89_8
.LBB89_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB89_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB89_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB89_7
.LBB89_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB89_7:                               # %if.end
	jmp	.LBB89_8
.LBB89_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB89_10
# BB#9:                                 # %if.then.8
	jmp	.LBB89_11
.LBB89_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_buffer, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB89_18
.LBB89_11:                              # %if.end.10
	jmp	.LBB89_12
.LBB89_12:                              # %do.end
	jmp	.LBB89_13
.LBB89_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$131072, %eax           # imm = 0x20000
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB89_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB89_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB89_15:                              # %land.end
                                        #   in Loop: Header=BB89_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB89_16
	jmp	.LBB89_17
.LBB89_16:                              # %while.body
                                        #   in Loop: Header=BB89_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB89_13
.LBB89_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_buffer
.LBB89_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	gimp_context_set_buffer, .Lfunc_end89-gimp_context_set_buffer
	.cfi_endproc

	.globl	gimp_context_buffer_changed
	.align	16, 0x90
	.type	gimp_context_buffer_changed,@function
gimp_context_buffer_changed:            # @gimp_context_buffer_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB90_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB90_8
.LBB90_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB90_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB90_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB90_7
.LBB90_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB90_7:                               # %if.end
	jmp	.LBB90_8
.LBB90_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB90_10
# BB#9:                                 # %if.then.8
	jmp	.LBB90_11
.LBB90_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_buffer_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB90_13
.LBB90_11:                              # %if.end.10
	jmp	.LBB90_12
.LBB90_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+68, %esi
	movq	-8(%rbp), %rcx
	movq	296(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB90_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	gimp_context_buffer_changed, .Lfunc_end90-gimp_context_buffer_changed
	.cfi_endproc

	.globl	gimp_context_get_imagefile
	.align	16, 0x90
	.type	gimp_context_get_imagefile,@function
gimp_context_get_imagefile:             # @gimp_context_get_imagefile
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB91_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB91_8
.LBB91_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB91_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB91_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB91_7
.LBB91_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB91_7:                               # %if.end
	jmp	.LBB91_8
.LBB91_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB91_10
# BB#9:                                 # %if.then.8
	jmp	.LBB91_11
.LBB91_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_imagefile, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB91_13
.LBB91_11:                              # %if.end.10
	jmp	.LBB91_12
.LBB91_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB91_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	gimp_context_get_imagefile, .Lfunc_end91-gimp_context_get_imagefile
	.cfi_endproc

	.globl	gimp_context_set_imagefile
	.align	16, 0x90
	.type	gimp_context_set_imagefile,@function
gimp_context_set_imagefile:             # @gimp_context_set_imagefile
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB92_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB92_8
.LBB92_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB92_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB92_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB92_7
.LBB92_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB92_7:                               # %if.end
	jmp	.LBB92_8
.LBB92_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB92_10
# BB#9:                                 # %if.then.8
	jmp	.LBB92_11
.LBB92_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_imagefile, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB92_18
.LBB92_11:                              # %if.end.10
	jmp	.LBB92_12
.LBB92_12:                              # %do.end
	jmp	.LBB92_13
.LBB92_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$262144, %eax           # imm = 0x40000
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB92_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB92_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB92_15:                              # %land.end
                                        #   in Loop: Header=BB92_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB92_16
	jmp	.LBB92_17
.LBB92_16:                              # %while.body
                                        #   in Loop: Header=BB92_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB92_13
.LBB92_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_imagefile
.LBB92_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	gimp_context_set_imagefile, .Lfunc_end92-gimp_context_set_imagefile
	.cfi_endproc

	.globl	gimp_context_imagefile_changed
	.align	16, 0x90
	.type	gimp_context_imagefile_changed,@function
gimp_context_imagefile_changed:         # @gimp_context_imagefile_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB93_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB93_8
.LBB93_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB93_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB93_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB93_7
.LBB93_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB93_7:                               # %if.end
	jmp	.LBB93_8
.LBB93_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB93_10
# BB#9:                                 # %if.then.8
	jmp	.LBB93_11
.LBB93_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_imagefile_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB93_13
.LBB93_11:                              # %if.end.10
	jmp	.LBB93_12
.LBB93_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+72, %esi
	movq	-8(%rbp), %rcx
	movq	312(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB93_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	gimp_context_imagefile_changed, .Lfunc_end93-gimp_context_imagefile_changed
	.cfi_endproc

	.globl	gimp_context_get_template
	.align	16, 0x90
	.type	gimp_context_get_template,@function
gimp_context_get_template:              # @gimp_context_get_template
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB94_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB94_8
.LBB94_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB94_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB94_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB94_7
.LBB94_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB94_7:                               # %if.end
	jmp	.LBB94_8
.LBB94_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB94_10
# BB#9:                                 # %if.then.8
	jmp	.LBB94_11
.LBB94_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_get_template, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB94_13
.LBB94_11:                              # %if.end.10
	jmp	.LBB94_12
.LBB94_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB94_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	gimp_context_get_template, .Lfunc_end94-gimp_context_get_template
	.cfi_endproc

	.globl	gimp_context_set_template
	.align	16, 0x90
	.type	gimp_context_set_template,@function
gimp_context_set_template:              # @gimp_context_set_template
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB95_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB95_8
.LBB95_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB95_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB95_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB95_7
.LBB95_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB95_7:                               # %if.end
	jmp	.LBB95_8
.LBB95_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB95_10
# BB#9:                                 # %if.then.8
	jmp	.LBB95_11
.LBB95_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_set_template, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB95_18
.LBB95_11:                              # %if.end.10
	jmp	.LBB95_12
.LBB95_12:                              # %do.end
	jmp	.LBB95_13
.LBB95_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movl	48(%rdx), %eax
	andl	$524288, %eax           # imm = 0x80000
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB95_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB95_13 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB95_15:                              # %land.end
                                        #   in Loop: Header=BB95_13 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB95_16
	jmp	.LBB95_17
.LBB95_16:                              # %while.body
                                        #   in Loop: Header=BB95_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB95_13
.LBB95_17:                              # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_real_set_template
.LBB95_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	gimp_context_set_template, .Lfunc_end95-gimp_context_set_template
	.cfi_endproc

	.globl	gimp_context_template_changed
	.align	16, 0x90
	.type	gimp_context_template_changed,@function
gimp_context_template_changed:          # @gimp_context_template_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB96_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB96_8
.LBB96_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB96_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB96_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB96_7
.LBB96_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB96_7:                               # %if.end
	jmp	.LBB96_8
.LBB96_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB96_10
# BB#9:                                 # %if.then.8
	jmp	.LBB96_11
.LBB96_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_context_template_changed, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB96_13
.LBB96_11:                              # %if.end.10
	jmp	.LBB96_12
.LBB96_12:                              # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_context_signals+76, %esi
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB96_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	gimp_context_template_changed, .Lfunc_end96-gimp_context_template_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI97_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_context_class_init,@function
gimp_context_class_init:                # @gimp_context_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
.Ltmp294:
	.cfi_offset %rbx, -40
.Ltmp295:
	.cfi_offset %r14, -32
.Ltmp296:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI97_0, %xmm3        # xmm3 = mem[0],zero
	movq	%rax, -48(%rbp)
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-112(%rbp), %rdi
	movsd	.LCPI97_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-136(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movabsq	$.L.str.22, %rdi
	movl	$1, %edx
	movl	$280, %ecx              # imm = 0x118
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-160(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -168(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_context_signals+8
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.23, %rdi
	movl	$1, %edx
	movl	$288, %ecx              # imm = 0x120
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-184(%rbp), %r11        # 8-byte Reload
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -200(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-192(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+12
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_tool_info_get_type
	movabsq	$.L.str.24, %rdi
	movl	$1, %edx
	movl	$296, %ecx              # imm = 0x128
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-208(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-216(%rbp), %r11        # 8-byte Reload
	movq	%r8, -224(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+16
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gimp_paint_info_get_type
	movabsq	$.L.str.25, %rdi
	movl	$1, %edx
	movl	$304, %ecx              # imm = 0x130
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-240(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-248(%rbp), %r11        # 8-byte Reload
	movq	%r8, -256(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -264(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-256(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+20
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_rgb_get_type
	movabsq	$.L.str.26, %rdi
	movl	$1, %edx
	movl	$312, %ecx              # imm = 0x138
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__BOXED, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	orq	$1, %rax
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-280(%rbp), %r11        # 8-byte Reload
	movq	%r8, -288(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -296(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-288(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+24
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	gimp_rgb_get_type
	movabsq	$.L.str.27, %rdi
	movl	$1, %edx
	movl	$320, %ecx              # imm = 0x140
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__BOXED, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	orq	$1, %rax
	movq	-304(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-312(%rbp), %r11        # 8-byte Reload
	movq	%r8, -320(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -328(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-320(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$.L.str.28, %rdi
	movl	$1, %edx
	movl	$328, %ecx              # imm = 0x148
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__DOUBLE, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movl	$60, %r15d
	movl	%r15d, %r10d
	movl	%eax, gimp_context_signals+28
	movq	-32(%rbp), %r11
	movq	(%r11), %r11
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-336(%rbp), %r11        # 8-byte Reload
	movq	%r8, -344(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-344(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$60, 24(%rsp)
	movb	$0, %al
	movq	%r10, -360(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_context_signals+32
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.29, %rdi
	movl	$1, %edx
	movl	$336, %ecx              # imm = 0x150
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__ENUM, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-368(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-376(%rbp), %r11        # 8-byte Reload
	movq	%r8, -384(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -392(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-384(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+36
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movabsq	$.L.str.30, %rdi
	movl	$1, %edx
	movl	$344, %ecx              # imm = 0x158
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-400(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-408(%rbp), %r11        # 8-byte Reload
	movq	%r8, -416(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -424(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-416(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+40
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_get_type
	movabsq	$.L.str.31, %rdi
	movl	$1, %edx
	movl	$352, %ecx              # imm = 0x160
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-432(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-440(%rbp), %r11        # 8-byte Reload
	movq	%r8, -448(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -456(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-448(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+44
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	callq	gimp_pattern_get_type
	movabsq	$.L.str.32, %rdi
	movl	$1, %edx
	movl	$360, %ecx              # imm = 0x168
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-464(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-472(%rbp), %r11        # 8-byte Reload
	movq	%r8, -480(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -488(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-480(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+48
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	movabsq	$.L.str.33, %rdi
	movl	$1, %edx
	movl	$368, %ecx              # imm = 0x170
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-496(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-504(%rbp), %r11        # 8-byte Reload
	movq	%r8, -512(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -520(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-512(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+52
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movabsq	$.L.str.34, %rdi
	movl	$1, %edx
	movl	$376, %ecx              # imm = 0x178
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-528(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-536(%rbp), %r11        # 8-byte Reload
	movq	%r8, -544(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -552(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-544(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+56
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movabsq	$.L.str.35, %rdi
	movl	$1, %edx
	movl	$384, %ecx              # imm = 0x180
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-560(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -568(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-568(%rbp), %r11        # 8-byte Reload
	movq	%r8, -576(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -584(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-576(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+60
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	callq	gimp_font_get_type
	movabsq	$.L.str.36, %rdi
	movl	$1, %edx
	movl	$392, %ecx              # imm = 0x188
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-592(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -600(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-600(%rbp), %r11        # 8-byte Reload
	movq	%r8, -608(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -616(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-608(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+64
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -624(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movabsq	$.L.str.37, %rdi
	movl	$1, %edx
	movl	$400, %ecx              # imm = 0x190
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-624(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-632(%rbp), %r11        # 8-byte Reload
	movq	%r8, -640(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -648(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-640(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+68
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	callq	gimp_imagefile_get_type
	movabsq	$.L.str.38, %rdi
	movl	$1, %edx
	movl	$408, %ecx              # imm = 0x198
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-656(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -664(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-664(%rbp), %r11        # 8-byte Reload
	movq	%r8, -672(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -680(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-672(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, gimp_context_signals+72
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -688(%rbp)        # 8-byte Spill
	callq	gimp_template_get_type
	movabsq	$.L.str.39, %rdi
	movl	$1, %edx
	movl	$416, %ecx              # imm = 0x1A0
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	movq	-688(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -696(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-696(%rbp), %r11        # 8-byte Reload
	movq	%r8, -704(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -712(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-704(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$gimp_context_get_memsize, %rsi
	movabsq	$gimp_context_finalize, %rdi
	movabsq	$gimp_context_dispose, %r8
	movabsq	$gimp_context_get_property, %r9
	movabsq	$gimp_context_set_property, %r10
	movabsq	$gimp_context_constructed, %r11
	movl	%eax, gimp_context_signals+76
	movq	-40(%rbp), %rbx
	movq	%r11, 72(%rbx)
	movq	-40(%rbp), %r11
	movq	%r10, 24(%r11)
	movq	-40(%rbp), %r10
	movq	%r9, 32(%r10)
	movq	-40(%rbp), %r9
	movq	%r8, 40(%r9)
	movq	-40(%rbp), %r8
	movq	%rdi, 48(%r8)
	movq	-48(%rbp), %rdi
	movq	%rsi, 152(%rdi)
	movq	-32(%rbp), %rsi
	movq	$0, 280(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 288(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 296(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 304(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 312(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 320(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 328(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 336(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 344(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 352(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 360(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 368(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 376(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 384(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 392(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 400(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 408(%rsi)
	movq	-32(%rbp), %rsi
	movq	$0, 416(%rsi)
	callq	gimp_image_get_type
	movq	%rax, gimp_context_prop_types+16
	callq	gimp_tool_info_get_type
	movq	%rax, gimp_context_prop_types+32
	callq	gimp_paint_info_get_type
	movq	%rax, gimp_context_prop_types+40
	callq	gimp_brush_get_type
	movq	%rax, gimp_context_prop_types+80
	callq	gimp_dynamics_get_type
	movq	%rax, gimp_context_prop_types+88
	callq	gimp_pattern_get_type
	movq	%rax, gimp_context_prop_types+96
	callq	gimp_gradient_get_type
	movq	%rax, gimp_context_prop_types+104
	callq	gimp_palette_get_type
	movq	%rax, gimp_context_prop_types+112
	callq	gimp_tool_preset_get_type
	movq	%rax, gimp_context_prop_types+120
	callq	gimp_font_get_type
	movq	%rax, gimp_context_prop_types+128
	callq	gimp_buffer_get_type
	movq	%rax, gimp_context_prop_types+136
	callq	gimp_imagefile_get_type
	movq	%rax, gimp_context_prop_types+144
	callq	gimp_template_get_type
	movq	%rax, gimp_context_prop_types+152
	movq	-40(%rbp), %rdi
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	movq	-728(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+16, %rax
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+24, %rax
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+32, %rax
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gimp_tool_info_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$4, %esi
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+40, %rax
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gimp_paint_info_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$5, %esi
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	leaq	-80(%rbp), %r8
	movl	$487, %r9d              # imm = 0x1E7
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+48, %rdx
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	gimp_param_spec_rgb
	movl	$6, %esi
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	leaq	-112(%rbp), %r8
	movl	$487, %r9d              # imm = 0x1E7
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+56, %rdx
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	gimp_param_spec_rgb
	movl	$7, %esi
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.40, %rdi
	movq	-40(%rbp), %rax
	movq	gimp_context_prop_names+64, %rdx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI97_0, %xmm1        # xmm1 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm1, -832(%rbp)       # 8-byte Spill
	movsd	-832(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	g_param_spec_double
	movl	$8, %esi
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.41, %rdi
	movq	-40(%rbp), %rax
	movq	gimp_context_prop_names+72, %rdx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	-856(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$9, %esi
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+80, %rax
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$10, %esi
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+88, %rax
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$11, %esi
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+96, %rax
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gimp_pattern_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$12, %esi
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+104, %rax
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gimp_gradient_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$13, %esi
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+112, %rax
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$14, %esi
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+120, %rax
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_tool_preset_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$15, %esi
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+128, %rax
	movq	%rdi, -960(%rbp)        # 8-byte Spill
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gimp_font_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$483, %r8d              # imm = 0x1E3
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$16, %esi
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+136, %rax
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$17, %esi
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+144, %rax
	movq	%rdi, -992(%rbp)        # 8-byte Spill
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gimp_imagefile_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$18, %esi
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-40(%rbp), %rdi
	movq	gimp_context_prop_names+152, %rax
	movq	%rdi, -1008(%rbp)       # 8-byte Spill
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gimp_template_get_type
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$227, %r8d
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$19, %esi
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end97:
	.size	gimp_context_class_init, .Lfunc_end97-gimp_context_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_constructed,@function
gimp_context_constructed:               # @gimp_context_constructed
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
	subq	$480, %rsp              # imm = 0x1E0
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_context_parent_class, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB98_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_context_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB98_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#3:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB98_5
# BB#4:                                 # %if.then.8
	movl	$0, -44(%rbp)
	jmp	.LBB98_10
.LBB98_5:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB98_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB98_8
# BB#7:                                 # %if.then.11
	movl	$1, -44(%rbp)
	jmp	.LBB98_9
.LBB98_8:                               # %if.else.12
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB98_9:                               # %if.end.14
	jmp	.LBB98_10
.LBB98_10:                              # %if.end.15
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB98_12
# BB#11:                                # %if.then.17
	jmp	.LBB98_13
.LBB98_12:                              # %if.else.18
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.42, %rsi
	movl	$782, %edx              # imm = 0x30E
	movabsq	$.L__func__.gimp_context_constructed, %rcx
	movabsq	$.L.str.2, %r8
	callq	g_assertion_message_expr
.LBB98_13:                              # %if.end.19
	jmp	.LBB98_14
.LBB98_14:                              # %do.end
	movq	-16(%rbp), %rax
	movq	568(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_image_removed, %rdi
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, 568(%rcx)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_display_removed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	416(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_tool_removed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	528(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_tool_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	528(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_paint_info_removed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	344(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_paint_info_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	344(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	464(%rcx), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_brush_removed, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_brush_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	472(%rcx), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_dynamics_removed, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_dynamics_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	480(%rcx), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_pattern_removed, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_pattern_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	488(%rcx), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_gradient_removed, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_gradient_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	496(%rcx), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_palette_removed, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_palette_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	504(%rcx), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_tool_preset_removed, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_tool_preset_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_font_removed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	456(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_font_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	456(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_buffer_removed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	448(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_buffer_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	448(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_imagefile_removed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	544(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_imagefile_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	544(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_context_template_removed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	552(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_context_template_list_thaw, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	552(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -472(%rbp)        # 8-byte Spill
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end98:
	.size	gimp_context_constructed, .Lfunc_end98-gimp_context_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_set_property,@function
gimp_context_set_property:              # @gimp_context_set_property
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$18, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB99_20
# BB#24:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI99_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB99_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB99_23
.LBB99_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_image
	jmp	.LBB99_23
.LBB99_3:                               # %sw.bb.5
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_display
	jmp	.LBB99_23
.LBB99_4:                               # %sw.bb.7
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_tool
	jmp	.LBB99_23
.LBB99_5:                               # %sw.bb.9
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_paint_info
	jmp	.LBB99_23
.LBB99_6:                               # %sw.bb.11
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boxed
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_foreground
	jmp	.LBB99_23
.LBB99_7:                               # %sw.bb.13
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_boxed
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_background
	jmp	.LBB99_23
.LBB99_8:                               # %sw.bb.15
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gimp_context_set_opacity
	jmp	.LBB99_23
.LBB99_9:                               # %sw.bb.17
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_context_set_paint_mode
	jmp	.LBB99_23
.LBB99_10:                              # %sw.bb.19
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_brush
	jmp	.LBB99_23
.LBB99_11:                              # %sw.bb.21
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_dynamics
	jmp	.LBB99_23
.LBB99_12:                              # %sw.bb.23
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_pattern
	jmp	.LBB99_23
.LBB99_13:                              # %sw.bb.25
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_gradient
	jmp	.LBB99_23
.LBB99_14:                              # %sw.bb.27
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_palette
	jmp	.LBB99_23
.LBB99_15:                              # %sw.bb.29
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_tool_preset
	jmp	.LBB99_23
.LBB99_16:                              # %sw.bb.31
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_font
	jmp	.LBB99_23
.LBB99_17:                              # %sw.bb.33
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_buffer
	jmp	.LBB99_23
.LBB99_18:                              # %sw.bb.35
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_imagefile
	jmp	.LBB99_23
.LBB99_19:                              # %sw.bb.37
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_template
	jmp	.LBB99_23
.LBB99_20:                              # %sw.default
	jmp	.LBB99_21
.LBB99_21:                              # %do.body
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
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movq	%r9, -248(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.50, %rdi
	movabsq	$.L.str.42, %rsi
	movl	$1123, %edx             # imm = 0x463
	movabsq	$.L.str.51, %rcx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movq	-248(%rbp), %r9         # 8-byte Reload
	movq	-256(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#22:                                # %do.end
	jmp	.LBB99_23
.LBB99_23:                              # %sw.epilog
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end99:
	.size	gimp_context_set_property, .Lfunc_end99-gimp_context_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI99_0:
	.quad	.LBB99_1
	.quad	.LBB99_2
	.quad	.LBB99_3
	.quad	.LBB99_4
	.quad	.LBB99_5
	.quad	.LBB99_6
	.quad	.LBB99_7
	.quad	.LBB99_8
	.quad	.LBB99_9
	.quad	.LBB99_10
	.quad	.LBB99_11
	.quad	.LBB99_12
	.quad	.LBB99_13
	.quad	.LBB99_14
	.quad	.LBB99_15
	.quad	.LBB99_16
	.quad	.LBB99_17
	.quad	.LBB99_18
	.quad	.LBB99_19

	.text
	.align	16, 0x90
	.type	gimp_context_get_property,@function
gimp_context_get_property:              # @gimp_context_get_property
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$18, %r8d
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	ja	.LBB100_20
# BB#24:                                # %entry
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	.LJTI100_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB100_1:                              # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_2:                              # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_image
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_3:                              # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_display
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_4:                              # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_tool
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_5:                              # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_paint_info
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_6:                              # %sw.bb.10
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	g_value_set_boxed
	jmp	.LBB100_23
.LBB100_7:                              # %sw.bb.11
	leaq	-104(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	g_value_set_boxed
	jmp	.LBB100_23
.LBB100_8:                              # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_opacity
	movq	-192(%rbp), %rdi        # 8-byte Reload
	callq	g_value_set_double
	jmp	.LBB100_23
.LBB100_9:                              # %sw.bb.15
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_paint_mode
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_enum
	jmp	.LBB100_23
.LBB100_10:                             # %sw.bb.17
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_brush
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_11:                             # %sw.bb.19
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_dynamics
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_12:                             # %sw.bb.21
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_pattern
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_13:                             # %sw.bb.23
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_gradient
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_14:                             # %sw.bb.25
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_palette
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_15:                             # %sw.bb.27
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_tool_preset
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_16:                             # %sw.bb.29
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_font
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_17:                             # %sw.bb.31
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_buffer
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_18:                             # %sw.bb.33
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_imagefile
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_19:                             # %sw.bb.35
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_context_get_template
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB100_23
.LBB100_20:                             # %sw.default
	jmp	.LBB100_21
.LBB100_21:                             # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	movl	-124(%rbp), %r8d
	movq	-120(%rbp), %rax
	movq	8(%rax), %r9
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -284(%rbp)        # 4-byte Spill
	movq	%r9, -296(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-112(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.50, %rdi
	movabsq	$.L.str.42, %rsi
	movl	$1206, %edx             # imm = 0x4B6
	movabsq	$.L.str.51, %rcx
	movl	-284(%rbp), %r8d        # 4-byte Reload
	movq	-296(%rbp), %r9         # 8-byte Reload
	movq	-304(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#22:                                # %do.end
	jmp	.LBB100_23
.LBB100_23:                             # %sw.epilog
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end100:
	.size	gimp_context_get_property, .Lfunc_end100-gimp_context_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI100_0:
	.quad	.LBB100_1
	.quad	.LBB100_2
	.quad	.LBB100_3
	.quad	.LBB100_4
	.quad	.LBB100_5
	.quad	.LBB100_6
	.quad	.LBB100_7
	.quad	.LBB100_8
	.quad	.LBB100_9
	.quad	.LBB100_10
	.quad	.LBB100_11
	.quad	.LBB100_12
	.quad	.LBB100_13
	.quad	.LBB100_14
	.quad	.LBB100_15
	.quad	.LBB100_16
	.quad	.LBB100_17
	.quad	.LBB100_18
	.quad	.LBB100_19

	.text
	.align	16, 0x90
	.type	gimp_context_dispose,@function
gimp_context_dispose:                   # @gimp_context_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB101_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	568(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 568(%rsi)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB101_2:                              # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB101_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
.LBB101_4:                              # %if.end.11
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB101_6
# BB#5:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
.LBB101_6:                              # %if.end.16
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB101_8
# BB#7:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 184(%rax)
.LBB101_8:                              # %if.end.21
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB101_10
# BB#9:                                 # %if.then.23
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 200(%rax)
.LBB101_10:                             # %if.end.26
	movq	-16(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB101_12
# BB#11:                                # %if.then.28
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 216(%rax)
.LBB101_12:                             # %if.end.31
	movq	-16(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB101_14
# BB#13:                                # %if.then.33
	movq	-16(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 232(%rax)
.LBB101_14:                             # %if.end.36
	movq	-16(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB101_16
# BB#15:                                # %if.then.38
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 248(%rax)
.LBB101_16:                             # %if.end.41
	movq	-16(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB101_18
# BB#17:                                # %if.then.43
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 264(%rax)
.LBB101_18:                             # %if.end.46
	movq	-16(%rbp), %rax
	cmpq	$0, 280(%rax)
	je	.LBB101_20
# BB#19:                                # %if.then.48
	movq	-16(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 280(%rax)
.LBB101_20:                             # %if.end.51
	movq	-16(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB101_22
# BB#21:                                # %if.then.53
	movq	-16(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 296(%rax)
.LBB101_22:                             # %if.end.56
	movq	-16(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB101_24
# BB#23:                                # %if.then.58
	movq	-16(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 312(%rax)
.LBB101_24:                             # %if.end.61
	movq	-16(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB101_26
# BB#25:                                # %if.then.63
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 328(%rax)
.LBB101_26:                             # %if.end.66
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_context_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	gimp_context_dispose, .Lfunc_end101-gimp_context_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_finalize,@function
gimp_context_finalize:                  # @gimp_context_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB102_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
.LBB102_2:                              # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB102_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
.LBB102_4:                              # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB102_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 192(%rax)
.LBB102_6:                              # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 208(%rax)
	je	.LBB102_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	208(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 208(%rax)
.LBB102_8:                              # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB102_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	224(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 224(%rax)
.LBB102_10:                             # %if.end.23
	movq	-16(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB102_12
# BB#11:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 240(%rax)
.LBB102_12:                             # %if.end.28
	movq	-16(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB102_14
# BB#13:                                # %if.then.30
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 256(%rax)
.LBB102_14:                             # %if.end.33
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB102_16
# BB#15:                                # %if.then.35
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 272(%rax)
.LBB102_16:                             # %if.end.38
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB102_18
# BB#17:                                # %if.then.40
	movq	-16(%rbp), %rax
	movq	288(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 288(%rax)
.LBB102_18:                             # %if.end.43
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB102_20
# BB#19:                                # %if.then.45
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
.LBB102_20:                             # %if.end.48
	movq	-16(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB102_22
# BB#21:                                # %if.then.50
	movq	-16(%rbp), %rax
	movq	320(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 320(%rax)
.LBB102_22:                             # %if.end.53
	movq	-16(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB102_24
# BB#23:                                # %if.then.55
	movq	-16(%rbp), %rax
	movq	336(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 336(%rax)
.LBB102_24:                             # %if.end.58
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_context_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	gimp_context_finalize, .Lfunc_end102-gimp_context_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_get_memsize,@function
gimp_context_get_memsize:               # @gimp_context_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	272(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	304(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	320(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rdi
	callq	gimp_string_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_context_parent_class, %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	gimp_context_get_memsize, .Lfunc_end103-gimp_context_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_image_removed,@function
gimp_context_image_removed:             # @gimp_context_image_removed
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	56(%rdx), %rdx
	cmpq	-16(%rbp), %rdx
	jne	.LBB104_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_context_real_set_image
.LBB104_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	gimp_context_image_removed, .Lfunc_end104-gimp_context_image_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_display_removed,@function
gimp_context_display_removed:           # @gimp_context_display_removed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	64(%rdx), %rdx
	cmpq	-16(%rbp), %rdx
	jne	.LBB105_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_context_real_set_display
.LBB105_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	gimp_context_display_removed, .Lfunc_end105-gimp_context_display_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_tool_removed,@function
gimp_context_tool_removed:              # @gimp_context_tool_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	72(%rsi), %rdx
	jne	.LBB106_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_tool_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 72(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB106_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_tool_list_thaw
.LBB106_3:                              # %if.end
	jmp	.LBB106_4
.LBB106_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	gimp_context_tool_removed, .Lfunc_end106-gimp_context_tool_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_tool_list_thaw,@function
gimp_context_tool_list_thaw:            # @gimp_context_tool_list_thaw
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
	movq	-16(%rbp), %rsi
	cmpq	$0, 80(%rsi)
	jne	.LBB107_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.45, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 80(%rdi)
.LBB107_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_standard
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_tool
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	gimp_context_tool_list_thaw, .Lfunc_end107-gimp_context_tool_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_paint_info_removed,@function
gimp_context_paint_info_removed:        # @gimp_context_paint_info_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	88(%rsi), %rdx
	jne	.LBB108_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_paint_info_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 88(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB108_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_paint_info_list_thaw
.LBB108_3:                              # %if.end
	jmp	.LBB108_4
.LBB108_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	gimp_context_paint_info_removed, .Lfunc_end108-gimp_context_paint_info_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_paint_info_list_thaw,@function
gimp_context_paint_info_list_thaw:      # @gimp_context_paint_info_list_thaw
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 96(%rsi)
	jne	.LBB109_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.46, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 96(%rdi)
.LBB109_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_paint_info_get_standard
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_paint_info
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end109:
	.size	gimp_context_paint_info_list_thaw, .Lfunc_end109-gimp_context_paint_info_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_brush_removed,@function
gimp_context_brush_removed:             # @gimp_context_brush_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	184(%rsi), %rdx
	jne	.LBB110_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_brush_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 184(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB110_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_brush_list_thaw
.LBB110_3:                              # %if.end
	jmp	.LBB110_4
.LBB110_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end110:
	.size	gimp_context_brush_removed, .Lfunc_end110-gimp_context_brush_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_brush_list_thaw,@function
gimp_context_brush_list_thaw:           # @gimp_context_brush_list_thaw
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 192(%rsi)
	jne	.LBB111_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	216(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 192(%rdi)
.LBB111_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_standard
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_brush
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end111:
	.size	gimp_context_brush_list_thaw, .Lfunc_end111-gimp_context_brush_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_dynamics_removed,@function
gimp_context_dynamics_removed:          # @gimp_context_dynamics_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	200(%rsi), %rdx
	jne	.LBB112_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_dynamics_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 200(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB112_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_dynamics_list_thaw
.LBB112_3:                              # %if.end
	jmp	.LBB112_4
.LBB112_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	gimp_context_dynamics_removed, .Lfunc_end112-gimp_context_dynamics_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_dynamics_list_thaw,@function
gimp_context_dynamics_list_thaw:        # @gimp_context_dynamics_list_thaw
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
	movq	-16(%rbp), %rsi
	cmpq	$0, 208(%rsi)
	jne	.LBB113_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	224(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 208(%rdi)
.LBB113_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_get_standard
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_dynamics
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end113:
	.size	gimp_context_dynamics_list_thaw, .Lfunc_end113-gimp_context_dynamics_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_pattern_removed,@function
gimp_context_pattern_removed:           # @gimp_context_pattern_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	216(%rsi), %rdx
	jne	.LBB114_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_pattern_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 216(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB114_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_pattern_list_thaw
.LBB114_3:                              # %if.end
	jmp	.LBB114_4
.LBB114_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	gimp_context_pattern_removed, .Lfunc_end114-gimp_context_pattern_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_pattern_list_thaw,@function
gimp_context_pattern_list_thaw:         # @gimp_context_pattern_list_thaw
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 224(%rsi)
	jne	.LBB115_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	232(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 224(%rdi)
.LBB115_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	224(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_standard
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_pattern
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end115:
	.size	gimp_context_pattern_list_thaw, .Lfunc_end115-gimp_context_pattern_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_gradient_removed,@function
gimp_context_gradient_removed:          # @gimp_context_gradient_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	232(%rsi), %rdx
	jne	.LBB116_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_gradient_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 232(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB116_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_gradient_list_thaw
.LBB116_3:                              # %if.end
	jmp	.LBB116_4
.LBB116_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	gimp_context_gradient_removed, .Lfunc_end116-gimp_context_gradient_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_gradient_list_thaw,@function
gimp_context_gradient_list_thaw:        # @gimp_context_gradient_list_thaw
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
	movq	-16(%rbp), %rsi
	cmpq	$0, 240(%rsi)
	jne	.LBB117_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	256(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 240(%rdi)
.LBB117_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_standard
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_gradient
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	gimp_context_gradient_list_thaw, .Lfunc_end117-gimp_context_gradient_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_palette_removed,@function
gimp_context_palette_removed:           # @gimp_context_palette_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	248(%rsi), %rdx
	jne	.LBB118_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_palette_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 248(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB118_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_palette_list_thaw
.LBB118_3:                              # %if.end
	jmp	.LBB118_4
.LBB118_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	gimp_context_palette_removed, .Lfunc_end118-gimp_context_palette_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_palette_list_thaw,@function
gimp_context_palette_list_thaw:         # @gimp_context_palette_list_thaw
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 256(%rsi)
	jne	.LBB119_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	240(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 256(%rdi)
.LBB119_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_standard
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_palette
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end119:
	.size	gimp_context_palette_list_thaw, .Lfunc_end119-gimp_context_palette_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_tool_preset_removed,@function
gimp_context_tool_preset_removed:       # @gimp_context_tool_preset_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	264(%rsi), %rdx
	jne	.LBB120_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_tool_preset_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 264(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB120_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_tool_preset_list_thaw
.LBB120_3:                              # %if.end
	jmp	.LBB120_4
.LBB120_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end120:
	.size	gimp_context_tool_preset_removed, .Lfunc_end120-gimp_context_tool_preset_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_tool_preset_list_thaw,@function
gimp_context_tool_preset_list_thaw:     # @gimp_context_tool_preset_list_thaw
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	272(%rdx), %rdx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_tool_preset
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end121:
	.size	gimp_context_tool_preset_list_thaw, .Lfunc_end121-gimp_context_tool_preset_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_font_removed,@function
gimp_context_font_removed:              # @gimp_context_font_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	280(%rsi), %rdx
	jne	.LBB122_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_font_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 280(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB122_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_font_list_thaw
.LBB122_3:                              # %if.end
	jmp	.LBB122_4
.LBB122_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	gimp_context_font_removed, .Lfunc_end122-gimp_context_font_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_font_list_thaw,@function
gimp_context_font_list_thaw:            # @gimp_context_font_list_thaw
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
	movq	-16(%rbp), %rsi
	cmpq	$0, 288(%rsi)
	jne	.LBB123_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	264(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 288(%rdi)
.LBB123_2:                              # %if.end
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	288(%rax), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_font_get_standard
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_font
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end123:
	.size	gimp_context_font_list_thaw, .Lfunc_end123-gimp_context_font_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_buffer_removed,@function
gimp_context_buffer_removed:            # @gimp_context_buffer_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	296(%rsi), %rdx
	jne	.LBB124_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_buffer_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 296(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB124_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_buffer_list_thaw
.LBB124_3:                              # %if.end
	jmp	.LBB124_4
.LBB124_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	gimp_context_buffer_removed, .Lfunc_end124-gimp_context_buffer_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_buffer_list_thaw,@function
gimp_context_buffer_list_thaw:          # @gimp_context_buffer_list_thaw
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	304(%rdx), %rdx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB125_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_buffer
	jmp	.LBB125_3
.LBB125_2:                              # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-16(%rbp), %rdi
	callq	gimp_context_buffer_changed
.LBB125_3:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	gimp_context_buffer_list_thaw, .Lfunc_end125-gimp_context_buffer_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_imagefile_removed,@function
gimp_context_imagefile_removed:         # @gimp_context_imagefile_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	312(%rsi), %rdx
	jne	.LBB126_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_imagefile_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 312(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB126_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_imagefile_list_thaw
.LBB126_3:                              # %if.end
	jmp	.LBB126_4
.LBB126_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	gimp_context_imagefile_removed, .Lfunc_end126-gimp_context_imagefile_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_imagefile_list_thaw,@function
gimp_context_imagefile_list_thaw:       # @gimp_context_imagefile_list_thaw
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	320(%rdx), %rdx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB127_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_imagefile
	jmp	.LBB127_3
.LBB127_2:                              # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-16(%rbp), %rdi
	callq	gimp_context_imagefile_changed
.LBB127_3:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	gimp_context_imagefile_list_thaw, .Lfunc_end127-gimp_context_imagefile_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_template_removed,@function
gimp_context_template_removed:          # @gimp_context_template_removed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	cmpq	328(%rsi), %rdx
	jne	.LBB128_4
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_context_template_dirty, %rdx
	movq	-24(%rbp), %rdi
	movq	$0, 328(%rdi)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB128_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_template_list_thaw
.LBB128_3:                              # %if.end
	jmp	.LBB128_4
.LBB128_4:                              # %if.end.5
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	gimp_context_template_removed, .Lfunc_end128-gimp_context_template_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_template_list_thaw,@function
gimp_context_template_list_thaw:        # @gimp_context_template_list_thaw
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	336(%rdx), %rdx
	callq	gimp_context_find_object
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB129_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_context_real_set_template
	jmp	.LBB129_3
.LBB129_2:                              # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-16(%rbp), %rdi
	callq	gimp_context_template_changed
.LBB129_3:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	gimp_context_template_list_thaw, .Lfunc_end129-gimp_context_template_list_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_tool_dirty,@function
gimp_context_tool_dirty:                # @gimp_context_tool_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	80(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 80(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end130:
	.size	gimp_context_tool_dirty, .Lfunc_end130-gimp_context_tool_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_find_object,@function
gimp_context_find_object:               # @gimp_context_find_object
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB131_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -40(%rbp)
.LBB131_2:                              # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB131_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	jne	.LBB131_5
# BB#4:                                 # %if.then.4
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_container_get_child_by_index
	movq	%rax, -40(%rbp)
.LBB131_5:                              # %if.end.6
	cmpq	$0, -40(%rbp)
	jne	.LBB131_7
# BB#6:                                 # %if.then.8
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB131_7:                              # %if.end.9
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end131:
	.size	gimp_context_find_object, .Lfunc_end131-gimp_context_find_object
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_paint_info_dirty,@function
gimp_context_paint_info_dirty:          # @gimp_context_paint_info_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	96(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 96(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end132:
	.size	gimp_context_paint_info_dirty, .Lfunc_end132-gimp_context_paint_info_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_brush_dirty,@function
gimp_context_brush_dirty:               # @gimp_context_brush_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	192(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 192(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end133:
	.size	gimp_context_brush_dirty, .Lfunc_end133-gimp_context_brush_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_dynamics_dirty,@function
gimp_context_dynamics_dirty:            # @gimp_context_dynamics_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	208(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 208(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	gimp_context_dynamics_dirty, .Lfunc_end134-gimp_context_dynamics_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_pattern_dirty,@function
gimp_context_pattern_dirty:             # @gimp_context_pattern_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	224(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 224(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end135:
	.size	gimp_context_pattern_dirty, .Lfunc_end135-gimp_context_pattern_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_gradient_dirty,@function
gimp_context_gradient_dirty:            # @gimp_context_gradient_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	240(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 240(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end136:
	.size	gimp_context_gradient_dirty, .Lfunc_end136-gimp_context_gradient_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_palette_dirty,@function
gimp_context_palette_dirty:             # @gimp_context_palette_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	256(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 256(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end137:
	.size	gimp_context_palette_dirty, .Lfunc_end137-gimp_context_palette_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_tool_preset_dirty,@function
gimp_context_tool_preset_dirty:         # @gimp_context_tool_preset_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	272(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 272(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end138:
	.size	gimp_context_tool_preset_dirty, .Lfunc_end138-gimp_context_tool_preset_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_font_dirty,@function
gimp_context_font_dirty:                # @gimp_context_font_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	288(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 288(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	gimp_context_font_dirty, .Lfunc_end139-gimp_context_font_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_buffer_dirty,@function
gimp_context_buffer_dirty:              # @gimp_context_buffer_dirty
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	304(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 304(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	gimp_context_buffer_dirty, .Lfunc_end140-gimp_context_buffer_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_imagefile_dirty,@function
gimp_context_imagefile_dirty:           # @gimp_context_imagefile_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	320(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 320(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end141:
	.size	gimp_context_imagefile_dirty, .Lfunc_end141-gimp_context_imagefile_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_template_dirty,@function
gimp_context_template_dirty:            # @gimp_context_template_dirty
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	336(%rsi), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, 336(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end142:
	.size	gimp_context_template_dirty, .Lfunc_end142-gimp_context_template_dirty
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB143_2
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
.LBB143_2:                              # %entry
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
.Lfunc_end143:
	.size	g_warning, .Lfunc_end143-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_serialize,@function
gimp_context_serialize:                 # @gimp_context_serialize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_config_serialize_changed_properties
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end144:
	.size	gimp_context_serialize, .Lfunc_end144-gimp_context_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_serialize_property,@function
gimp_context_serialize_property:        # @gimp_context_serialize_property
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %r9d
	movq	-56(%rbp), %rax
	andl	52(%rax), %r9d
	cmpl	$0, %r9d
	jne	.LBB145_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB145_9
.LBB145_2:                              # %if.end
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-4, %ecx
	subl	$2, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jb	.LBB145_3
	jmp	.LBB145_10
.LBB145_10:                             # %if.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	addl	$-10, %eax
	subl	$6, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	ja	.LBB145_4
	jmp	.LBB145_3
.LBB145_3:                              # %sw.bb
	movq	-32(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -64(%rbp)
	jmp	.LBB145_5
.LBB145_4:                              # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB145_9
.LBB145_5:                              # %sw.epilog
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_config_writer_open
	cmpq	$0, -64(%rbp)
	je	.LBB145_7
# BB#6:                                 # %if.then.4
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	jmp	.LBB145_8
.LBB145_7:                              # %if.else
	movabsq	$.L.str.52, %rsi
	movl	$4, %edx
	movq	-48(%rbp), %rdi
	callq	gimp_config_writer_print
.LBB145_8:                              # %if.end.6
	movq	-48(%rbp), %rdi
	callq	gimp_config_writer_close
	movl	$1, -4(%rbp)
.LBB145_9:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end145:
	.size	gimp_context_serialize_property, .Lfunc_end145-gimp_context_serialize_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_context_deserialize_property,@function
gimp_context_deserialize_property:      # @gimp_context_deserialize_property
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movl	$0, -92(%rbp)
	movl	-20(%rbp), %r10d
	addl	$-4, %r10d
	movl	%r10d, %eax
	subl	$12, %r10d
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%r10d, -132(%rbp)       # 4-byte Spill
	ja	.LBB146_10
# BB#28:                                # %entry
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI146_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB146_1:                              # %sw.bb
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	528(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$80, %rax
	movq	%rax, -88(%rbp)
	movl	$1, -92(%rbp)
	jmp	.LBB146_11
.LBB146_2:                              # %sw.bb.2
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	344(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -88(%rbp)
	movl	$1, -92(%rbp)
	jmp	.LBB146_11
.LBB146_3:                              # %sw.bb.4
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	464(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB146_11
.LBB146_4:                              # %sw.bb.7
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	472(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$208, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB146_11
.LBB146_5:                              # %sw.bb.10
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	480(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$224, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB146_11
.LBB146_6:                              # %sw.bb.13
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	488(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$240, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB146_11
.LBB146_7:                              # %sw.bb.16
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	496(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, -88(%rbp)
	jmp	.LBB146_11
.LBB146_8:                              # %sw.bb.19
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	504(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$272, %rax              # imm = 0x110
	movq	%rax, -88(%rbp)
	jmp	.LBB146_11
.LBB146_9:                              # %sw.bb.22
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	456(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	addq	$288, %rax              # imm = 0x120
	movq	%rax, -88(%rbp)
	jmp	.LBB146_11
.LBB146_10:                             # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB146_27
.LBB146_11:                             # %sw.epilog
	cmpl	$0, -92(%rbp)
	jne	.LBB146_13
# BB#12:                                # %if.then
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -92(%rbp)
.LBB146_13:                             # %if.end
	movabsq	$.L.str.52, %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_scanner_parse_identifier
	cmpl	$0, %eax
	je	.LBB146_15
# BB#14:                                # %if.then.28
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	g_value_set_object
	jmp	.LBB146_26
.LBB146_15:                             # %if.else
	leaq	-104(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	je	.LBB146_24
# BB#16:                                # %if.then.31
	cmpq	$0, -104(%rbp)
	jne	.LBB146_18
# BB#17:                                # %if.then.33
	movabsq	$.L.str.53, %rdi
	callq	g_strdup
	movq	%rax, -104(%rbp)
.LBB146_18:                             # %if.end.35
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB146_23
# BB#19:                                # %if.then.38
	cmpl	$0, -92(%rbp)
	je	.LBB146_21
# BB#20:                                # %if.then.40
	movq	-88(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_strdup
	movq	-88(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB146_22
.LBB146_21:                             # %if.else.42
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB146_22:                             # %if.end.43
	jmp	.LBB146_23
.LBB146_23:                             # %if.end.44
	movq	-32(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	movq	-104(%rbp), %rdi
	callq	g_free
	jmp	.LBB146_25
.LBB146_24:                             # %if.else.45
	movq	-56(%rbp), %rax
	movl	$264, (%rax)            # imm = 0x108
.LBB146_25:                             # %if.end.46
	jmp	.LBB146_26
.LBB146_26:                             # %if.end.47
	movl	$1, -4(%rbp)
.LBB146_27:                             # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end146:
	.size	gimp_context_deserialize_property, .Lfunc_end146-gimp_context_deserialize_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI146_0:
	.quad	.LBB146_1
	.quad	.LBB146_2
	.quad	.LBB146_10
	.quad	.LBB146_10
	.quad	.LBB146_10
	.quad	.LBB146_10
	.quad	.LBB146_3
	.quad	.LBB146_4
	.quad	.LBB146_5
	.quad	.LBB146_6
	.quad	.LBB146_7
	.quad	.LBB146_8
	.quad	.LBB146_9

	.type	gimp_context_get_type.g_define_type_id__volatile,@object # @gimp_context_get_type.g_define_type_id__volatile
	.local	gimp_context_get_type.g_define_type_id__volatile
	.comm	gimp_context_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContext"
	.size	.L.str, 12

	.type	gimp_context_get_type.g_implement_interface_info,@object # @gimp_context_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_context_get_type.g_implement_interface_info:
	.quad	gimp_context_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_context_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_context_new,@object # @__func__.gimp_context_new
.L__func__.gimp_context_new:
	.asciz	"gimp_context_new"
	.size	.L__func__.gimp_context_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name != NULL"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"! template || GIMP_IS_CONTEXT (template)"
	.size	.L.str.4, 41

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"name"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp"
	.size	.L.str.6, 5

	.type	.L__func__.gimp_context_get_parent,@object # @__func__.gimp_context_get_parent
.L__func__.gimp_context_get_parent:
	.asciz	"gimp_context_get_parent"
	.size	.L__func__.gimp_context_get_parent, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.7, 26

	.type	.L__func__.gimp_context_set_parent,@object # @__func__.gimp_context_set_parent
.L__func__.gimp_context_set_parent:
	.asciz	"gimp_context_set_parent"
	.size	.L__func__.gimp_context_set_parent, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"parent == NULL || GIMP_IS_CONTEXT (parent)"
	.size	.L.str.8, 43

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"parent == NULL || parent->parent != context"
	.size	.L.str.9, 44

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"context != parent"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"notify"
	.size	.L.str.11, 7

	.type	.L__func__.gimp_context_define_property,@object # @__func__.gimp_context_define_property
.L__func__.gimp_context_define_property:
	.asciz	"gimp_context_define_property"
	.size	.L__func__.gimp_context_define_property, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"(prop >= GIMP_CONTEXT_FIRST_PROP) && (prop <= GIMP_CONTEXT_LAST_PROP)"
	.size	.L.str.12, 70

	.type	.L__func__.gimp_context_property_defined,@object # @__func__.gimp_context_property_defined
.L__func__.gimp_context_property_defined:
	.asciz	"gimp_context_property_defined"
	.size	.L__func__.gimp_context_property_defined, 30

	.type	.L__func__.gimp_context_define_properties,@object # @__func__.gimp_context_define_properties
.L__func__.gimp_context_define_properties:
	.asciz	"gimp_context_define_properties"
	.size	.L__func__.gimp_context_define_properties, 31

	.type	.L__func__.gimp_context_set_serialize_properties,@object # @__func__.gimp_context_set_serialize_properties
.L__func__.gimp_context_set_serialize_properties:
	.asciz	"gimp_context_set_serialize_properties"
	.size	.L__func__.gimp_context_set_serialize_properties, 38

	.type	.L__func__.gimp_context_get_serialize_properties,@object # @__func__.gimp_context_get_serialize_properties
.L__func__.gimp_context_get_serialize_properties:
	.asciz	"gimp_context_get_serialize_properties"
	.size	.L__func__.gimp_context_get_serialize_properties, 38

	.type	.L__func__.gimp_context_copy_property,@object # @__func__.gimp_context_copy_property
.L__func__.gimp_context_copy_property:
	.asciz	"gimp_context_copy_property"
	.size	.L__func__.gimp_context_copy_property, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_CONTEXT (src)"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_IS_CONTEXT (dest)"
	.size	.L.str.14, 23

	.type	.L__func__.gimp_context_copy_properties,@object # @__func__.gimp_context_copy_properties
.L__func__.gimp_context_copy_properties:
	.asciz	"gimp_context_copy_properties"
	.size	.L__func__.gimp_context_copy_properties, 29

	.type	gimp_context_prop_types,@object # @gimp_context_prop_types
	.data
	.align	16
gimp_context_prop_types:
	.quad	4                       # 0x4
	.quad	4                       # 0x4
	.quad	0                       # 0x0
	.quad	4                       # 0x4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4                       # 0x4
	.quad	4                       # 0x4
	.quad	4                       # 0x4
	.quad	4                       # 0x4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.size	gimp_context_prop_types, 160

	.type	gimp_context_prop_names,@object # @gimp_context_prop_names
	.section	.rodata,"a",@progbits
	.align	16
gimp_context_prop_names:
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.size	gimp_context_prop_names, 160

	.type	gimp_context_signals,@object # @gimp_context_signals
	.local	gimp_context_signals
	.comm	gimp_context_signals,80,16
	.type	.L__func__.gimp_context_get_by_type,@object # @__func__.gimp_context_get_by_type
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_context_get_by_type:
	.asciz	"gimp_context_get_by_type"
	.size	.L__func__.gimp_context_get_by_type, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"(prop = gimp_context_type_to_property (type)) != -1"
	.size	.L.str.15, 52

	.type	.L__func__.gimp_context_set_by_type,@object # @__func__.gimp_context_set_by_type
.L__func__.gimp_context_set_by_type:
	.asciz	"gimp_context_set_by_type"
	.size	.L__func__.gimp_context_set_by_type, 25

	.type	.L__func__.gimp_context_changed_by_type,@object # @__func__.gimp_context_changed_by_type
.L__func__.gimp_context_changed_by_type:
	.asciz	"gimp_context_changed_by_type"
	.size	.L__func__.gimp_context_changed_by_type, 29

	.type	.L__func__.gimp_context_get_image,@object # @__func__.gimp_context_get_image
.L__func__.gimp_context_get_image:
	.asciz	"gimp_context_get_image"
	.size	.L__func__.gimp_context_get_image, 23

	.type	.L__func__.gimp_context_set_image,@object # @__func__.gimp_context_set_image
.L__func__.gimp_context_set_image:
	.asciz	"gimp_context_set_image"
	.size	.L__func__.gimp_context_set_image, 23

	.type	.L__func__.gimp_context_image_changed,@object # @__func__.gimp_context_image_changed
.L__func__.gimp_context_image_changed:
	.asciz	"gimp_context_image_changed"
	.size	.L__func__.gimp_context_image_changed, 27

	.type	.L__func__.gimp_context_get_display,@object # @__func__.gimp_context_get_display
.L__func__.gimp_context_get_display:
	.asciz	"gimp_context_get_display"
	.size	.L__func__.gimp_context_get_display, 25

	.type	.L__func__.gimp_context_set_display,@object # @__func__.gimp_context_set_display
.L__func__.gimp_context_set_display:
	.asciz	"gimp_context_set_display"
	.size	.L__func__.gimp_context_set_display, 25

	.type	.L__func__.gimp_context_display_changed,@object # @__func__.gimp_context_display_changed
.L__func__.gimp_context_display_changed:
	.asciz	"gimp_context_display_changed"
	.size	.L__func__.gimp_context_display_changed, 29

	.type	.L__func__.gimp_context_get_tool,@object # @__func__.gimp_context_get_tool
.L__func__.gimp_context_get_tool:
	.asciz	"gimp_context_get_tool"
	.size	.L__func__.gimp_context_get_tool, 22

	.type	.L__func__.gimp_context_set_tool,@object # @__func__.gimp_context_set_tool
.L__func__.gimp_context_set_tool:
	.asciz	"gimp_context_set_tool"
	.size	.L__func__.gimp_context_set_tool, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"! tool_info || GIMP_IS_TOOL_INFO (tool_info)"
	.size	.L.str.16, 45

	.type	.L__func__.gimp_context_tool_changed,@object # @__func__.gimp_context_tool_changed
.L__func__.gimp_context_tool_changed:
	.asciz	"gimp_context_tool_changed"
	.size	.L__func__.gimp_context_tool_changed, 26

	.type	.L__func__.gimp_context_get_paint_info,@object # @__func__.gimp_context_get_paint_info
.L__func__.gimp_context_get_paint_info:
	.asciz	"gimp_context_get_paint_info"
	.size	.L__func__.gimp_context_get_paint_info, 28

	.type	.L__func__.gimp_context_set_paint_info,@object # @__func__.gimp_context_set_paint_info
.L__func__.gimp_context_set_paint_info:
	.asciz	"gimp_context_set_paint_info"
	.size	.L__func__.gimp_context_set_paint_info, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"! paint_info || GIMP_IS_PAINT_INFO (paint_info)"
	.size	.L.str.17, 48

	.type	.L__func__.gimp_context_paint_info_changed,@object # @__func__.gimp_context_paint_info_changed
.L__func__.gimp_context_paint_info_changed:
	.asciz	"gimp_context_paint_info_changed"
	.size	.L__func__.gimp_context_paint_info_changed, 32

	.type	.L__func__.gimp_context_get_foreground,@object # @__func__.gimp_context_get_foreground
.L__func__.gimp_context_get_foreground:
	.asciz	"gimp_context_get_foreground"
	.size	.L__func__.gimp_context_get_foreground, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"color != NULL"
	.size	.L.str.18, 14

	.type	.L__func__.gimp_context_set_foreground,@object # @__func__.gimp_context_set_foreground
.L__func__.gimp_context_set_foreground:
	.asciz	"gimp_context_set_foreground"
	.size	.L__func__.gimp_context_set_foreground, 28

	.type	.L__func__.gimp_context_foreground_changed,@object # @__func__.gimp_context_foreground_changed
.L__func__.gimp_context_foreground_changed:
	.asciz	"gimp_context_foreground_changed"
	.size	.L__func__.gimp_context_foreground_changed, 32

	.type	.L__func__.gimp_context_get_background,@object # @__func__.gimp_context_get_background
.L__func__.gimp_context_get_background:
	.asciz	"gimp_context_get_background"
	.size	.L__func__.gimp_context_get_background, 28

	.type	.L__func__.gimp_context_set_background,@object # @__func__.gimp_context_set_background
.L__func__.gimp_context_set_background:
	.asciz	"gimp_context_set_background"
	.size	.L__func__.gimp_context_set_background, 28

	.type	.L__func__.gimp_context_background_changed,@object # @__func__.gimp_context_background_changed
.L__func__.gimp_context_background_changed:
	.asciz	"gimp_context_background_changed"
	.size	.L__func__.gimp_context_background_changed, 32

	.type	.L__func__.gimp_context_set_default_colors,@object # @__func__.gimp_context_set_default_colors
.L__func__.gimp_context_set_default_colors:
	.asciz	"gimp_context_set_default_colors"
	.size	.L__func__.gimp_context_set_default_colors, 32

	.type	.L__func__.gimp_context_swap_colors,@object # @__func__.gimp_context_swap_colors
.L__func__.gimp_context_swap_colors:
	.asciz	"gimp_context_swap_colors"
	.size	.L__func__.gimp_context_swap_colors, 25

	.type	.L__func__.gimp_context_get_opacity,@object # @__func__.gimp_context_get_opacity
.L__func__.gimp_context_get_opacity:
	.asciz	"gimp_context_get_opacity"
	.size	.L__func__.gimp_context_get_opacity, 25

	.type	.L__func__.gimp_context_set_opacity,@object # @__func__.gimp_context_set_opacity
.L__func__.gimp_context_set_opacity:
	.asciz	"gimp_context_set_opacity"
	.size	.L__func__.gimp_context_set_opacity, 25

	.type	.L__func__.gimp_context_opacity_changed,@object # @__func__.gimp_context_opacity_changed
.L__func__.gimp_context_opacity_changed:
	.asciz	"gimp_context_opacity_changed"
	.size	.L__func__.gimp_context_opacity_changed, 29

	.type	.L__func__.gimp_context_get_paint_mode,@object # @__func__.gimp_context_get_paint_mode
.L__func__.gimp_context_get_paint_mode:
	.asciz	"gimp_context_get_paint_mode"
	.size	.L__func__.gimp_context_get_paint_mode, 28

	.type	.L__func__.gimp_context_set_paint_mode,@object # @__func__.gimp_context_set_paint_mode
.L__func__.gimp_context_set_paint_mode:
	.asciz	"gimp_context_set_paint_mode"
	.size	.L__func__.gimp_context_set_paint_mode, 28

	.type	.L__func__.gimp_context_paint_mode_changed,@object # @__func__.gimp_context_paint_mode_changed
.L__func__.gimp_context_paint_mode_changed:
	.asciz	"gimp_context_paint_mode_changed"
	.size	.L__func__.gimp_context_paint_mode_changed, 32

	.type	.L__func__.gimp_context_get_brush,@object # @__func__.gimp_context_get_brush
.L__func__.gimp_context_get_brush:
	.asciz	"gimp_context_get_brush"
	.size	.L__func__.gimp_context_get_brush, 23

	.type	.L__func__.gimp_context_set_brush,@object # @__func__.gimp_context_set_brush
.L__func__.gimp_context_set_brush:
	.asciz	"gimp_context_set_brush"
	.size	.L__func__.gimp_context_set_brush, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"! brush || GIMP_IS_BRUSH (brush)"
	.size	.L.str.19, 33

	.type	.L__func__.gimp_context_brush_changed,@object # @__func__.gimp_context_brush_changed
.L__func__.gimp_context_brush_changed:
	.asciz	"gimp_context_brush_changed"
	.size	.L__func__.gimp_context_brush_changed, 27

	.type	.L__func__.gimp_context_get_dynamics,@object # @__func__.gimp_context_get_dynamics
.L__func__.gimp_context_get_dynamics:
	.asciz	"gimp_context_get_dynamics"
	.size	.L__func__.gimp_context_get_dynamics, 26

	.type	.L__func__.gimp_context_set_dynamics,@object # @__func__.gimp_context_set_dynamics
.L__func__.gimp_context_set_dynamics:
	.asciz	"gimp_context_set_dynamics"
	.size	.L__func__.gimp_context_set_dynamics, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"! dynamics || GIMP_IS_DYNAMICS (dynamics)"
	.size	.L.str.20, 42

	.type	.L__func__.gimp_context_dynamics_changed,@object # @__func__.gimp_context_dynamics_changed
.L__func__.gimp_context_dynamics_changed:
	.asciz	"gimp_context_dynamics_changed"
	.size	.L__func__.gimp_context_dynamics_changed, 30

	.type	.L__func__.gimp_context_get_pattern,@object # @__func__.gimp_context_get_pattern
.L__func__.gimp_context_get_pattern:
	.asciz	"gimp_context_get_pattern"
	.size	.L__func__.gimp_context_get_pattern, 25

	.type	.L__func__.gimp_context_set_pattern,@object # @__func__.gimp_context_set_pattern
.L__func__.gimp_context_set_pattern:
	.asciz	"gimp_context_set_pattern"
	.size	.L__func__.gimp_context_set_pattern, 25

	.type	.L__func__.gimp_context_pattern_changed,@object # @__func__.gimp_context_pattern_changed
.L__func__.gimp_context_pattern_changed:
	.asciz	"gimp_context_pattern_changed"
	.size	.L__func__.gimp_context_pattern_changed, 29

	.type	.L__func__.gimp_context_get_gradient,@object # @__func__.gimp_context_get_gradient
.L__func__.gimp_context_get_gradient:
	.asciz	"gimp_context_get_gradient"
	.size	.L__func__.gimp_context_get_gradient, 26

	.type	.L__func__.gimp_context_set_gradient,@object # @__func__.gimp_context_set_gradient
.L__func__.gimp_context_set_gradient:
	.asciz	"gimp_context_set_gradient"
	.size	.L__func__.gimp_context_set_gradient, 26

	.type	.L__func__.gimp_context_gradient_changed,@object # @__func__.gimp_context_gradient_changed
.L__func__.gimp_context_gradient_changed:
	.asciz	"gimp_context_gradient_changed"
	.size	.L__func__.gimp_context_gradient_changed, 30

	.type	.L__func__.gimp_context_get_palette,@object # @__func__.gimp_context_get_palette
.L__func__.gimp_context_get_palette:
	.asciz	"gimp_context_get_palette"
	.size	.L__func__.gimp_context_get_palette, 25

	.type	.L__func__.gimp_context_set_palette,@object # @__func__.gimp_context_set_palette
.L__func__.gimp_context_set_palette:
	.asciz	"gimp_context_set_palette"
	.size	.L__func__.gimp_context_set_palette, 25

	.type	.L__func__.gimp_context_palette_changed,@object # @__func__.gimp_context_palette_changed
.L__func__.gimp_context_palette_changed:
	.asciz	"gimp_context_palette_changed"
	.size	.L__func__.gimp_context_palette_changed, 29

	.type	.L__func__.gimp_context_get_tool_preset,@object # @__func__.gimp_context_get_tool_preset
.L__func__.gimp_context_get_tool_preset:
	.asciz	"gimp_context_get_tool_preset"
	.size	.L__func__.gimp_context_get_tool_preset, 29

	.type	.L__func__.gimp_context_set_tool_preset,@object # @__func__.gimp_context_set_tool_preset
.L__func__.gimp_context_set_tool_preset:
	.asciz	"gimp_context_set_tool_preset"
	.size	.L__func__.gimp_context_set_tool_preset, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"! tool_preset || GIMP_IS_TOOL_PRESET (tool_preset)"
	.size	.L.str.21, 51

	.type	.L__func__.gimp_context_tool_preset_changed,@object # @__func__.gimp_context_tool_preset_changed
.L__func__.gimp_context_tool_preset_changed:
	.asciz	"gimp_context_tool_preset_changed"
	.size	.L__func__.gimp_context_tool_preset_changed, 33

	.type	.L__func__.gimp_context_get_font,@object # @__func__.gimp_context_get_font
.L__func__.gimp_context_get_font:
	.asciz	"gimp_context_get_font"
	.size	.L__func__.gimp_context_get_font, 22

	.type	.L__func__.gimp_context_set_font,@object # @__func__.gimp_context_set_font
.L__func__.gimp_context_set_font:
	.asciz	"gimp_context_set_font"
	.size	.L__func__.gimp_context_set_font, 22

	.type	.L__func__.gimp_context_get_font_name,@object # @__func__.gimp_context_get_font_name
.L__func__.gimp_context_get_font_name:
	.asciz	"gimp_context_get_font_name"
	.size	.L__func__.gimp_context_get_font_name, 27

	.type	.L__func__.gimp_context_set_font_name,@object # @__func__.gimp_context_set_font_name
.L__func__.gimp_context_set_font_name:
	.asciz	"gimp_context_set_font_name"
	.size	.L__func__.gimp_context_set_font_name, 27

	.type	.L__func__.gimp_context_font_changed,@object # @__func__.gimp_context_font_changed
.L__func__.gimp_context_font_changed:
	.asciz	"gimp_context_font_changed"
	.size	.L__func__.gimp_context_font_changed, 26

	.type	.L__func__.gimp_context_get_buffer,@object # @__func__.gimp_context_get_buffer
.L__func__.gimp_context_get_buffer:
	.asciz	"gimp_context_get_buffer"
	.size	.L__func__.gimp_context_get_buffer, 24

	.type	.L__func__.gimp_context_set_buffer,@object # @__func__.gimp_context_set_buffer
.L__func__.gimp_context_set_buffer:
	.asciz	"gimp_context_set_buffer"
	.size	.L__func__.gimp_context_set_buffer, 24

	.type	.L__func__.gimp_context_buffer_changed,@object # @__func__.gimp_context_buffer_changed
.L__func__.gimp_context_buffer_changed:
	.asciz	"gimp_context_buffer_changed"
	.size	.L__func__.gimp_context_buffer_changed, 28

	.type	.L__func__.gimp_context_get_imagefile,@object # @__func__.gimp_context_get_imagefile
.L__func__.gimp_context_get_imagefile:
	.asciz	"gimp_context_get_imagefile"
	.size	.L__func__.gimp_context_get_imagefile, 27

	.type	.L__func__.gimp_context_set_imagefile,@object # @__func__.gimp_context_set_imagefile
.L__func__.gimp_context_set_imagefile:
	.asciz	"gimp_context_set_imagefile"
	.size	.L__func__.gimp_context_set_imagefile, 27

	.type	.L__func__.gimp_context_imagefile_changed,@object # @__func__.gimp_context_imagefile_changed
.L__func__.gimp_context_imagefile_changed:
	.asciz	"gimp_context_imagefile_changed"
	.size	.L__func__.gimp_context_imagefile_changed, 31

	.type	.L__func__.gimp_context_get_template,@object # @__func__.gimp_context_get_template
.L__func__.gimp_context_get_template:
	.asciz	"gimp_context_get_template"
	.size	.L__func__.gimp_context_get_template, 26

	.type	.L__func__.gimp_context_set_template,@object # @__func__.gimp_context_set_template
.L__func__.gimp_context_set_template:
	.asciz	"gimp_context_set_template"
	.size	.L__func__.gimp_context_set_template, 26

	.type	.L__func__.gimp_context_template_changed,@object # @__func__.gimp_context_template_changed
.L__func__.gimp_context_template_changed:
	.asciz	"gimp_context_template_changed"
	.size	.L__func__.gimp_context_template_changed, 30

	.type	gimp_context_parent_class,@object # @gimp_context_parent_class
	.local	gimp_context_parent_class
	.comm	gimp_context_parent_class,8,8
	.type	GimpContext_private_offset,@object # @GimpContext_private_offset
	.local	GimpContext_private_offset
	.comm	GimpContext_private_offset,4,4
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"image-changed"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"display-changed"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"tool-changed"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"paint-info-changed"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"foreground-changed"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"background-changed"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"opacity-changed"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"paint-mode-changed"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"brush-changed"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"dynamics-changed"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"pattern-changed"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gradient-changed"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"palette-changed"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"tool-preset-changed"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"font-changed"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"buffer-changed"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"imagefile-changed"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"template-changed"
	.size	.L.str.39, 17

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Opacity"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Paint Mode"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimpcontext.c"
	.size	.L.str.42, 14

	.type	.L__func__.gimp_context_constructed,@object # @__func__.gimp_context_constructed
.L__func__.gimp_context_constructed:
	.asciz	"gimp_context_constructed"
	.size	.L__func__.gimp_context_constructed, 25

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"remove"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"thaw"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-paintbrush-tool"
	.size	.L.str.45, 21

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-paintbrush"
	.size	.L.str.46, 16

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"buffer"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"imagefile"
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"template"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.50, 54

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"property"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"NULL"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.zero	1
	.size	.L.str.53, 1

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"image"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"display"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"tool"
	.size	.L.str.56, 5

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"paint-info"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"foreground"
	.size	.L.str.58, 11

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"background"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"opacity"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"paint-mode"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"brush"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"dynamics"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"pattern"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gradient"
	.size	.L.str.65, 9

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"palette"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"tool-preset"
	.size	.L.str.67, 12

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"font"
	.size	.L.str.68, 5

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"name-changed"
	.size	.L.str.69, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
