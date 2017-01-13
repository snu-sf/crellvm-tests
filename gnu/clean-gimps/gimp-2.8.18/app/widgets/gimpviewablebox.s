	.text
	.file	"gimpviewablebox.bc"
	.globl	gimp_brush_box_new
	.align	16, 0x90
	.type	gimp_brush_box_new,@function
gimp_brush_box_new:                     # @gimp_brush_box_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_9
.LBB0_4:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_7
# BB#6:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_8:                                # %if.end
	jmp	.LBB0_9
.LBB0_9:                                # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_11
.LBB0_10:                               # %if.then.9
	jmp	.LBB0_12
.LBB0_11:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_26
.LBB0_12:                               # %if.end.11
	jmp	.LBB0_13
.LBB0_13:                               # %do.end
	jmp	.LBB0_14
.LBB0_14:                               # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_23
# BB#22:                                # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_brush_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_26
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	movl	$1, %r8d
	movl	$24, %r9d
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	$0, (%rsp)
	callq	brush_box_new
	movq	%rax, -8(%rbp)
.LBB0_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_box_new, .Lfunc_end0-gimp_brush_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	brush_box_new,@function
brush_box_new:                          # @brush_box_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	%rax, -80(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	464(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -40(%rbp)
.LBB1_2:                                # %if.end
	movabsq	$.L.str.5, %rdi
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	%r9d, -84(%rbp)         # 4-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %r9d
	movabsq	$.L.str.3, %rdx
	movabsq	$.L.str.4, %rsi
	movq	-80(%rbp), %rdi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	-120(%rbp), %r8d        # 4-byte Reload
	movl	-84(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, (%rsp)
	movq	-144(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-136(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	callq	gimp_viewable_box_new
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	brush_box_new, .Lfunc_end1-brush_box_new
	.cfi_endproc

	.globl	gimp_prop_brush_box_new
	.align	16, 0x90
	.type	gimp_prop_brush_box_new,@function
gimp_prop_brush_box_new:                # @gimp_prop_brush_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB2_9
.LBB2_4:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_7
# BB#5:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB2_7
# BB#6:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB2_8
.LBB2_7:                                # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB2_8:                                # %if.end
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.7
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB2_11
.LBB2_10:                               # %if.then.9
	jmp	.LBB2_12
.LBB2_11:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_brush_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_26
.LBB2_12:                               # %if.end.11
	jmp	.LBB2_13
.LBB2_13:                               # %do.end
	jmp	.LBB2_14
.LBB2_14:                               # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then.21
	movl	$0, -116(%rbp)
	jmp	.LBB2_21
.LBB2_16:                               # %if.else.22
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_19
# BB#17:                                # %land.lhs.true.25
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB2_19
# BB#18:                                # %if.then.29
	movl	$1, -116(%rbp)
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.30
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB2_20:                               # %if.end.32
	jmp	.LBB2_21
.LBB2_21:                               # %if.end.33
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB2_23
# BB#22:                                # %if.then.36
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_brush_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_26
.LBB2_24:                               # %if.end.38
	jmp	.LBB2_25
.LBB2_25:                               # %do.end.39
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-64(%rbp), %r10
	movq	%r10, (%rsp)
	callq	brush_box_new
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	view_props_connect
	movq	%rax, -8(%rbp)
.LBB2_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_prop_brush_box_new, .Lfunc_end2-gimp_prop_brush_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	view_props_connect,@function
view_props_connect:                     # @view_props_connect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_connect_full
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rcx
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_connect_full
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	view_props_connect, .Lfunc_end3-view_props_connect
	.cfi_endproc

	.globl	gimp_dynamics_box_new
	.align	16, 0x90
	.type	gimp_dynamics_box_new,@function
gimp_dynamics_box_new:                  # @gimp_dynamics_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_9
.LBB4_4:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_7
# BB#6:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_8:                                # %if.end
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_11
.LBB4_10:                               # %if.then.9
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dynamics_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_26
.LBB4_12:                               # %if.end.11
	jmp	.LBB4_13
.LBB4_13:                               # %do.end
	jmp	.LBB4_14
.LBB4_14:                               # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_23
# BB#22:                                # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dynamics_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_26
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movl	$24, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	dynamics_box_new
	movq	%rax, -8(%rbp)
.LBB4_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dynamics_box_new, .Lfunc_end4-gimp_dynamics_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	dynamics_box_new,@function
dynamics_box_new:                       # @dynamics_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp22:
	.cfi_offset %rbx, -48
.Ltmp23:
	.cfi_offset %r12, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movq	%r9, -72(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	472(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -40(%rbp)
.LBB5_2:                                # %if.end
	movabsq	$.L.str.12, %rdi
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movl	$24, %r9d
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rsi
	movq	-72(%rbp), %rdi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	-76(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, (%rsp)
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	callq	gimp_viewable_box_new
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dynamics_box_new, .Lfunc_end5-dynamics_box_new
	.cfi_endproc

	.globl	gimp_prop_dynamics_box_new
	.align	16, 0x90
	.type	gimp_prop_dynamics_box_new,@function
gimp_prop_dynamics_box_new:             # @gimp_prop_dynamics_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB6_9
.LBB6_4:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_7
# BB#5:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_7
# BB#6:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB6_8:                                # %if.end
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.7
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB6_11
.LBB6_10:                               # %if.then.9
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_dynamics_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_26
.LBB6_12:                               # %if.end.11
	jmp	.LBB6_13
.LBB6_13:                               # %do.end
	jmp	.LBB6_14
.LBB6_14:                               # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB6_16
# BB#15:                                # %if.then.21
	movl	$0, -116(%rbp)
	jmp	.LBB6_21
.LBB6_16:                               # %if.else.22
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.25
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB6_19
# BB#18:                                # %if.then.29
	movl	$1, -116(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.else.30
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB6_20:                               # %if.end.32
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.33
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB6_23
# BB#22:                                # %if.then.36
	jmp	.LBB6_24
.LBB6_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_dynamics_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_26
.LBB6_24:                               # %if.end.38
	jmp	.LBB6_25
.LBB6_25:                               # %do.end.39
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movq	-64(%rbp), %r9
	callq	dynamics_box_new
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	view_props_connect
	movq	%rax, -8(%rbp)
.LBB6_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_prop_dynamics_box_new, .Lfunc_end6-gimp_prop_dynamics_box_new
	.cfi_endproc

	.globl	gimp_pattern_box_new
	.align	16, 0x90
	.type	gimp_pattern_box_new,@function
gimp_pattern_box_new:                   # @gimp_pattern_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_9
.LBB7_4:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_7
# BB#6:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_8:                                # %if.end
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_11
.LBB7_10:                               # %if.then.9
	jmp	.LBB7_12
.LBB7_11:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pattern_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_26
.LBB7_12:                               # %if.end.11
	jmp	.LBB7_13
.LBB7_13:                               # %do.end
	jmp	.LBB7_14
.LBB7_14:                               # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB7_21
.LBB7_16:                               # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_20:                               # %if.end.32
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_23
# BB#22:                                # %if.then.36
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pattern_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_26
.LBB7_24:                               # %if.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.end.39
	movl	$1, %r8d
	movl	$24, %r9d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	pattern_box_new
	movq	%rax, -8(%rbp)
.LBB7_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pattern_box_new, .Lfunc_end7-gimp_pattern_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	pattern_box_new,@function
pattern_box_new:                        # @pattern_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp35:
	.cfi_offset %rbx, -48
.Ltmp36:
	.cfi_offset %r12, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	480(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -40(%rbp)
.LBB8_2:                                # %if.end
	movabsq	$.L.str.15, %rdi
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %r9d
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movl	-72(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, (%rsp)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$0, 32(%rsp)
	callq	gimp_viewable_box_new
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pattern_box_new, .Lfunc_end8-pattern_box_new
	.cfi_endproc

	.globl	gimp_prop_pattern_box_new
	.align	16, 0x90
	.type	gimp_prop_pattern_box_new,@function
gimp_prop_pattern_box_new:              # @gimp_prop_pattern_box_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB9_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB9_9
.LBB9_4:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_7
# BB#5:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB9_7
# BB#6:                                 # %if.then.4
	movl	$1, -84(%rbp)
	jmp	.LBB9_8
.LBB9_7:                                # %if.else.5
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB9_8:                                # %if.end
	jmp	.LBB9_9
.LBB9_9:                                # %if.end.7
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB9_11
.LBB9_10:                               # %if.then.9
	jmp	.LBB9_12
.LBB9_11:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_pattern_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_26
.LBB9_12:                               # %if.end.11
	jmp	.LBB9_13
.LBB9_13:                               # %do.end
	jmp	.LBB9_14
.LBB9_14:                               # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB9_16
# BB#15:                                # %if.then.21
	movl	$0, -108(%rbp)
	jmp	.LBB9_21
.LBB9_16:                               # %if.else.22
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_19
# BB#17:                                # %land.lhs.true.25
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB9_19
# BB#18:                                # %if.then.29
	movl	$1, -108(%rbp)
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.30
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB9_20:                               # %if.end.32
	jmp	.LBB9_21
.LBB9_21:                               # %if.end.33
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB9_23
# BB#22:                                # %if.then.36
	jmp	.LBB9_24
.LBB9_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_pattern_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_26
.LBB9_24:                               # %if.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.end.39
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	callq	pattern_box_new
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	view_props_connect
	movq	%rax, -8(%rbp)
.LBB9_26:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_prop_pattern_box_new, .Lfunc_end9-gimp_prop_pattern_box_new
	.cfi_endproc

	.globl	gimp_gradient_box_new
	.align	16, 0x90
	.type	gimp_gradient_box_new,@function
gimp_gradient_box_new:                  # @gimp_gradient_box_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB10_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_9
.LBB10_4:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_7
# BB#6:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB10_8:                               # %if.end
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_11
.LBB10_10:                              # %if.then.9
	jmp	.LBB10_12
.LBB10_11:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gradient_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_26
.LBB10_12:                              # %if.end.11
	jmp	.LBB10_13
.LBB10_13:                              # %do.end
	jmp	.LBB10_14
.LBB10_14:                              # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_16
# BB#15:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB10_21
.LBB10_16:                              # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_19
# BB#17:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB10_19
# BB#18:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB10_20
.LBB10_19:                              # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB10_20:                              # %if.end.32
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB10_23
# BB#22:                                # %if.then.36
	jmp	.LBB10_24
.LBB10_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_gradient_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_26
.LBB10_24:                              # %if.end.38
	jmp	.LBB10_25
.LBB10_25:                              # %do.end.39
	xorl	%r8d, %r8d
	movl	$48, %r9d
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %r10
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	callq	gradient_box_new
	movq	%rax, -8(%rbp)
.LBB10_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_gradient_box_new, .Lfunc_end10-gimp_gradient_box_new
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1056964608              # float 0.5
.LCPI11_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gradient_box_new,@function
gradient_box_new:                       # @gradient_box_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$352, %rsp              # imm = 0x160
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	488(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -40(%rbp)
.LBB11_2:                               # %if.end
	movabsq	$.L.str.18, %rdi
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, -192(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$48, %r9d
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rsi
	movq	-88(%rbp), %rdi
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-184(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	-192(%rbp), %r8d        # 4-byte Reload
	movl	-156(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movq	-216(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-208(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	callq	gimp_viewable_box_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_list_free
	movq	-104(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_viewable_button_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, 176(%rax)
	cmpq	$0, -80(%rbp)
	je	.LBB11_4
# BB#3:                                 # %if.then.9
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_prop_check_button_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_mode
	movq	-120(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.19, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.20, %rdi
	movl	$1, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI11_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-128(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movabsq	$.L.str.21, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -136(%rbp)
	movq	-80(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rdi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_gradient_box_reverse_notify, %rdx
	xorl	%r8d, %r8d
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-152(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_free
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_gradient_box_reverse_notify
.LBB11_4:                               # %if.end.34
	movq	-96(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gradient_box_new, .Lfunc_end11-gradient_box_new
	.cfi_endproc

	.globl	gimp_prop_gradient_box_new
	.align	16, 0x90
	.type	gimp_prop_gradient_box_new,@function
gimp_prop_gradient_box_new:             # @gimp_prop_gradient_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB12_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB12_9
.LBB12_4:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_7
# BB#5:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_7
# BB#6:                                 # %if.then.4
	movl	$1, -100(%rbp)
	jmp	.LBB12_8
.LBB12_7:                               # %if.else.5
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB12_8:                               # %if.end
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.7
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB12_11
.LBB12_10:                              # %if.then.9
	jmp	.LBB12_12
.LBB12_11:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_gradient_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_26
.LBB12_12:                              # %if.end.11
	jmp	.LBB12_13
.LBB12_13:                              # %do.end
	jmp	.LBB12_14
.LBB12_14:                              # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB12_16
# BB#15:                                # %if.then.21
	movl	$0, -124(%rbp)
	jmp	.LBB12_21
.LBB12_16:                              # %if.else.22
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_19
# BB#17:                                # %land.lhs.true.25
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB12_19
# BB#18:                                # %if.then.29
	movl	$1, -124(%rbp)
	jmp	.LBB12_20
.LBB12_19:                              # %if.else.30
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB12_20:                              # %if.end.32
	jmp	.LBB12_21
.LBB12_21:                              # %if.end.33
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB12_23
# BB#22:                                # %if.then.36
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_gradient_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_26
.LBB12_24:                              # %if.end.38
	jmp	.LBB12_25
.LBB12_25:                              # %do.end.39
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movq	-64(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	callq	gradient_box_new
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	view_props_connect
	movq	%rax, -8(%rbp)
.LBB12_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_prop_gradient_box_new, .Lfunc_end12-gimp_prop_gradient_box_new
	.cfi_endproc

	.globl	gimp_palette_box_new
	.align	16, 0x90
	.type	gimp_palette_box_new,@function
gimp_palette_box_new:                   # @gimp_palette_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB13_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_4
# BB#3:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB13_9
.LBB13_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_7
# BB#6:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB13_8
.LBB13_7:                               # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB13_8:                               # %if.end
	jmp	.LBB13_9
.LBB13_9:                               # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_11
.LBB13_10:                              # %if.then.9
	jmp	.LBB13_12
.LBB13_11:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_26
.LBB13_12:                              # %if.end.11
	jmp	.LBB13_13
.LBB13_13:                              # %do.end
	jmp	.LBB13_14
.LBB13_14:                              # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB13_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB13_21
.LBB13_16:                              # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB13_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB13_20
.LBB13_19:                              # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB13_20:                              # %if.end.32
	jmp	.LBB13_21
.LBB13_21:                              # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB13_23
# BB#22:                                # %if.then.36
	jmp	.LBB13_24
.LBB13_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_26
.LBB13_24:                              # %if.end.38
	jmp	.LBB13_25
.LBB13_25:                              # %do.end.39
	xorl	%r8d, %r8d
	movl	$32, %r9d
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %eax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	$0, (%rsp)
	callq	palette_box_new
	movq	%rax, -8(%rbp)
.LBB13_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_palette_box_new, .Lfunc_end13-gimp_palette_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	palette_box_new,@function
palette_box_new:                        # @palette_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp61:
	.cfi_offset %rbx, -48
.Ltmp62:
	.cfi_offset %r12, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	%rax, -80(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	496(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -40(%rbp)
.LBB14_2:                               # %if.end
	movabsq	$.L.str.25, %rdi
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	%r9d, -84(%rbp)         # 4-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$32, %r9d
	movabsq	$.L.str.23, %rdx
	movabsq	$.L.str.24, %rsi
	movq	-80(%rbp), %rdi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	-120(%rbp), %r8d        # 4-byte Reload
	movl	-84(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, (%rsp)
	movq	-144(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-136(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	callq	gimp_viewable_box_new
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	palette_box_new, .Lfunc_end14-palette_box_new
	.cfi_endproc

	.globl	gimp_prop_palette_box_new
	.align	16, 0x90
	.type	gimp_prop_palette_box_new,@function
gimp_prop_palette_box_new:              # @gimp_prop_palette_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB15_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB15_4
# BB#3:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB15_9
.LBB15_4:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_7
# BB#5:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB15_7
# BB#6:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB15_8
.LBB15_7:                               # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB15_8:                               # %if.end
	jmp	.LBB15_9
.LBB15_9:                               # %if.end.7
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB15_11
.LBB15_10:                              # %if.then.9
	jmp	.LBB15_12
.LBB15_11:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_palette_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_26
.LBB15_12:                              # %if.end.11
	jmp	.LBB15_13
.LBB15_13:                              # %do.end
	jmp	.LBB15_14
.LBB15_14:                              # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB15_16
# BB#15:                                # %if.then.21
	movl	$0, -116(%rbp)
	jmp	.LBB15_21
.LBB15_16:                              # %if.else.22
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_19
# BB#17:                                # %land.lhs.true.25
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB15_19
# BB#18:                                # %if.then.29
	movl	$1, -116(%rbp)
	jmp	.LBB15_20
.LBB15_19:                              # %if.else.30
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB15_20:                              # %if.end.32
	jmp	.LBB15_21
.LBB15_21:                              # %if.end.33
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB15_23
# BB#22:                                # %if.then.36
	jmp	.LBB15_24
.LBB15_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_palette_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_26
.LBB15_24:                              # %if.end.38
	jmp	.LBB15_25
.LBB15_25:                              # %do.end.39
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-64(%rbp), %r10
	movq	%r10, (%rsp)
	callq	palette_box_new
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	view_props_connect
	movq	%rax, -8(%rbp)
.LBB15_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_prop_palette_box_new, .Lfunc_end15-gimp_prop_palette_box_new
	.cfi_endproc

	.globl	gimp_font_box_new
	.align	16, 0x90
	.type	gimp_font_box_new,@function
gimp_font_box_new:                      # @gimp_font_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB16_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB16_9
.LBB16_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_7
# BB#5:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB16_7
# BB#6:                                 # %if.then.4
	movl	$1, -60(%rbp)
	jmp	.LBB16_8
.LBB16_7:                               # %if.else.5
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB16_8:                               # %if.end
	jmp	.LBB16_9
.LBB16_9:                               # %if.end.7
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB16_11
.LBB16_10:                              # %if.then.9
	jmp	.LBB16_12
.LBB16_11:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_font_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_26
.LBB16_12:                              # %if.end.11
	jmp	.LBB16_13
.LBB16_13:                              # %do.end
	jmp	.LBB16_14
.LBB16_14:                              # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB16_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB16_21
.LBB16_16:                              # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB16_20
.LBB16_19:                              # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB16_20:                              # %if.end.32
	jmp	.LBB16_21
.LBB16_21:                              # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB16_23
# BB#22:                                # %if.then.36
	jmp	.LBB16_24
.LBB16_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_font_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_26
.LBB16_24:                              # %if.end.38
	jmp	.LBB16_25
.LBB16_25:                              # %do.end.39
	xorl	%r8d, %r8d
	movl	$24, %r9d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	font_box_new
	movq	%rax, -8(%rbp)
.LBB16_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_font_box_new, .Lfunc_end16-gimp_font_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	font_box_new,@function
font_box_new:                           # @font_box_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp74:
	.cfi_offset %rbx, -48
.Ltmp75:
	.cfi_offset %r12, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	456(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB17_2:                               # %if.end
	movabsq	$.L.str.28, %rdi
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %r9d
	movabsq	$.L.str.26, %rdx
	movabsq	$.L.str.27, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movl	-72(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, (%rsp)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	$0, 32(%rsp)
	callq	gimp_viewable_box_new
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	font_box_new, .Lfunc_end17-font_box_new
	.cfi_endproc

	.globl	gimp_prop_font_box_new
	.align	16, 0x90
	.type	gimp_prop_font_box_new,@function
gimp_prop_font_box_new:                 # @gimp_prop_font_box_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB18_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB18_4
# BB#3:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB18_9
.LBB18_4:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_7
# BB#5:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB18_7
# BB#6:                                 # %if.then.4
	movl	$1, -84(%rbp)
	jmp	.LBB18_8
.LBB18_7:                               # %if.else.5
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB18_8:                               # %if.end
	jmp	.LBB18_9
.LBB18_9:                               # %if.end.7
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB18_11
.LBB18_10:                              # %if.then.9
	jmp	.LBB18_12
.LBB18_11:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_font_box_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_26
.LBB18_12:                              # %if.end.11
	jmp	.LBB18_13
.LBB18_13:                              # %do.end
	jmp	.LBB18_14
.LBB18_14:                              # %do.body.12
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB18_16
# BB#15:                                # %if.then.21
	movl	$0, -108(%rbp)
	jmp	.LBB18_21
.LBB18_16:                              # %if.else.22
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_19
# BB#17:                                # %land.lhs.true.25
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB18_19
# BB#18:                                # %if.then.29
	movl	$1, -108(%rbp)
	jmp	.LBB18_20
.LBB18_19:                              # %if.else.30
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB18_20:                              # %if.end.32
	jmp	.LBB18_21
.LBB18_21:                              # %if.end.33
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB18_23
# BB#22:                                # %if.then.36
	jmp	.LBB18_24
.LBB18_23:                              # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_prop_font_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_26
.LBB18_24:                              # %if.end.38
	jmp	.LBB18_25
.LBB18_25:                              # %do.end.39
	leaq	-60(%rbp), %rdx
	leaq	-64(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	callq	font_box_new
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	view_props_connect
	movq	%rax, -8(%rbp)
.LBB18_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_prop_font_box_new, .Lfunc_end18-gimp_prop_font_box_new
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI19_0:
	.long	1056964608              # float 0.5
.LCPI19_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_viewable_box_new,@function
gimp_viewable_box_new:                  # @gimp_viewable_box_new
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp84:
	.cfi_offset %rbx, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movl	16(%rbp), %r14d
	xorl	%r15d, %r15d
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movl	%r14d, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movl	-52(%rbp), %esi
	movl	%r15d, %edi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movl	$1, %r9d
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %r10
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-176(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movl	-180(%rbp), %edx        # 4-byte Reload
	movl	-184(%rbp), %ecx        # 4-byte Reload
	movl	-188(%rbp), %r8d        # 4-byte Reload
	movq	%rax, (%rsp)
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	callq	gimp_viewable_button_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movq	-112(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movq	-104(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	cmpq	$0, -48(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI19_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-120(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
.LBB19_2:                               # %if.end
	movl	$1, %ecx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-64(%rbp), %edx
	callq	gimp_container_entry_new
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-120(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-136(%rbp), %rsi
	cmpq	$0, -48(%rbp)
	cmovnel	%ecx, %edx
	movq	%rax, %rdi
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	cmpq	$0, -96(%rbp)
	je	.LBB19_4
# BB#3:                                 # %if.then.22
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -144(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_button_new
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-144(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI19_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-152(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_strdup
	movabsq	$.L.str.8, %rsi
	movabsq	$g_free, %rcx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_viewable_box_edit_clicked, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB19_4:                               # %if.end.39
	movq	-104(%rbp), %rax
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_viewable_box_new, .Lfunc_end19-gimp_viewable_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_box_edit_clicked,@function
gimp_viewable_box_edit_clicked:         # @gimp_viewable_box_edit_clicked
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-24(%rbp), %r8
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_viewable_box_edit_clicked, .Lfunc_end20-gimp_viewable_box_edit_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gradient_box_reverse_notify,@function
gimp_gradient_box_reverse_notify:       # @gimp_gradient_box_reverse_notify
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	112(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_gradient_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	leaq	-36(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_view_renderer_gradient_set_reverse
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_gradient_box_reverse_notify, .Lfunc_end21-gimp_gradient_box_reverse_notify
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_brush_box_new,@object # @__func__.gimp_brush_box_new
.L__func__.gimp_brush_box_new:
	.asciz	"gimp_brush_box_new"
	.size	.L__func__.gimp_brush_box_new, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"container == NULL || GIMP_IS_CONTAINER (container)"
	.size	.L.str.1, 51

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L__func__.gimp_prop_brush_box_new,@object # @__func__.gimp_prop_brush_box_new
.L__func__.gimp_prop_brush_box_new:
	.asciz	"gimp_prop_brush_box_new"
	.size	.L__func__.gimp_prop_brush_box_new, 24

	.type	.L__func__.gimp_dynamics_box_new,@object # @__func__.gimp_dynamics_box_new
.L__func__.gimp_dynamics_box_new:
	.asciz	"gimp_dynamics_box_new"
	.size	.L__func__.gimp_dynamics_box_new, 22

	.type	.L__func__.gimp_prop_dynamics_box_new,@object # @__func__.gimp_prop_dynamics_box_new
.L__func__.gimp_prop_dynamics_box_new:
	.asciz	"gimp_prop_dynamics_box_new"
	.size	.L__func__.gimp_prop_dynamics_box_new, 27

	.type	.L__func__.gimp_pattern_box_new,@object # @__func__.gimp_pattern_box_new
.L__func__.gimp_pattern_box_new:
	.asciz	"gimp_pattern_box_new"
	.size	.L__func__.gimp_pattern_box_new, 21

	.type	.L__func__.gimp_prop_pattern_box_new,@object # @__func__.gimp_prop_pattern_box_new
.L__func__.gimp_prop_pattern_box_new:
	.asciz	"gimp_prop_pattern_box_new"
	.size	.L__func__.gimp_prop_pattern_box_new, 26

	.type	.L__func__.gimp_gradient_box_new,@object # @__func__.gimp_gradient_box_new
.L__func__.gimp_gradient_box_new:
	.asciz	"gimp_gradient_box_new"
	.size	.L__func__.gimp_gradient_box_new, 22

	.type	.L__func__.gimp_prop_gradient_box_new,@object # @__func__.gimp_prop_gradient_box_new
.L__func__.gimp_prop_gradient_box_new:
	.asciz	"gimp_prop_gradient_box_new"
	.size	.L__func__.gimp_prop_gradient_box_new, 27

	.type	.L__func__.gimp_palette_box_new,@object # @__func__.gimp_palette_box_new
.L__func__.gimp_palette_box_new:
	.asciz	"gimp_palette_box_new"
	.size	.L__func__.gimp_palette_box_new, 21

	.type	.L__func__.gimp_prop_palette_box_new,@object # @__func__.gimp_prop_palette_box_new
.L__func__.gimp_prop_palette_box_new:
	.asciz	"gimp_prop_palette_box_new"
	.size	.L__func__.gimp_prop_palette_box_new, 26

	.type	.L__func__.gimp_font_box_new,@object # @__func__.gimp_font_box_new
.L__func__.gimp_font_box_new:
	.asciz	"gimp_font_box_new"
	.size	.L__func__.gimp_font_box_new, 18

	.type	.L__func__.gimp_prop_font_box_new,@object # @__func__.gimp_prop_font_box_new
.L__func__.gimp_prop_font_box_new:
	.asciz	"gimp_prop_font_box_new"
	.size	.L__func__.gimp_prop_font_box_new, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-brush-grid|gimp-brush-list"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Open the brush selection dialog"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"viewable-button"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-edit"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-viewable-box-editor"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"clicked"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-dynamics-list"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-dynamics"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Open the dynamics selection dialog"
	.size	.L.str.12, 35

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-pattern-grid|gimp-pattern-list"
	.size	.L.str.13, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Open the pattern selection dialog"
	.size	.L.str.15, 34

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-gradient-list|gimp-gradient-grid"
	.size	.L.str.16, 38

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-tool-blend"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Open the gradient selection dialog"
	.size	.L.str.18, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Reverse"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-flip-horizontal"
	.size	.L.str.20, 21

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"notify::"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gradient-reverse"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-palette-list|gimp-palette-grid"
	.size	.L.str.23, 36

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-select-color"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Open the palette selection dialog"
	.size	.L.str.25, 34

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-font-list|gimp-font-grid"
	.size	.L.str.26, 30

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-select-font"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Open the font selection dialog"
	.size	.L.str.28, 31

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"popup-view-type"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"popup-view-size"
	.size	.L.str.30, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
