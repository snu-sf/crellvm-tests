	.text
	.file	"gimpselection.bc"
	.globl	gimp_selection_get_type
	.align	16, 0x90
	.type	gimp_selection_get_type,@function
gimp_selection_get_type:                # @gimp_selection_get_type
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
	movq	gimp_selection_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_selection_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_channel_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$840, %edx              # imm = 0x348
	movabsq	$gimp_selection_class_intern_init, %rdi
	movl	$168, %r8d
	movabsq	$gimp_selection_init, %rcx
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
	movabsq	$gimp_selection_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_selection_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_selection_get_type, .Lfunc_end0-gimp_selection_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_class_intern_init,@function
gimp_selection_class_intern_init:       # @gimp_selection_class_intern_init
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
	movq	%rax, gimp_selection_parent_class
	cmpl	$0, GimpSelection_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSelection_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_selection_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_selection_class_intern_init, .Lfunc_end1-gimp_selection_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_init,@function
gimp_selection_init:                    # @gimp_selection_init
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
	movl	$0, 160(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_selection_init, .Lfunc_end2-gimp_selection_init
	.cfi_endproc

	.globl	gimp_selection_new
	.align	16, 0x90
	.type	gimp_selection_new,@function
gimp_selection_new:                     # @gimp_selection_new
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	.Lgimp_selection_new.black, %rdi
	movq	%rdi, -56(%rbp)
	movq	.Lgimp_selection_new.black+8, %rdi
	movq	%rdi, -48(%rbp)
	movq	.Lgimp_selection_new.black+16, %rdi
	movq	%rdi, -40(%rbp)
	movq	.Lgimp_selection_new.black+24, %rdi
	movq	%rdi, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_19
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jle	.LBB3_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$0, -24(%rbp)
	jle	.LBB3_16
# BB#15:                                # %if.then.15
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_19
.LBB3_17:                               # %if.end.17
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.18
	callq	gimp_selection_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	$2, %esi
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r8d
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movl	-104(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	-108(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	$2, 8(%rsp)
	callq	gimp_drawable_new
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_channel_set_color
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	callq	gimp_channel_set_show_masked
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 152(%rax)
	movl	-24(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 156(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_selection_new, .Lfunc_end3-gimp_selection_new
	.cfi_endproc

	.globl	gimp_selection_push_stroking
	.align	16, 0x90
	.type	gimp_selection_push_stroking,@function
gimp_selection_push_stroking:           # @gimp_selection_push_stroking
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_push_stroking, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	160(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 160(%rax)
	movq	-16(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_selection_push_stroking, .Lfunc_end4-gimp_selection_push_stroking
	.cfi_endproc

	.globl	gimp_selection_pop_stroking
	.align	16, 0x90
	.type	gimp_selection_pop_stroking,@function
gimp_selection_pop_stroking:            # @gimp_selection_pop_stroking
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_pop_stroking, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	cmpl	$0, 160(%rax)
	jle	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_pop_stroking, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movl	160(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 160(%rax)
	movq	-16(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB5_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_selection_pop_stroking, .Lfunc_end5-gimp_selection_pop_stroking
	.cfi_endproc

	.globl	gimp_selection_load
	.align	16, 0x90
	.type	gimp_selection_load,@function
gimp_selection_load:                    # @gimp_selection_load
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -172(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -172(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_load, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_35
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -196(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -196(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_load, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_35
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -148(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -152(%rbp)
# BB#25:                                # %do.body.45
	movl	-148(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-220(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB6_27
# BB#26:                                # %if.then.50
	jmp	.LBB6_28
.LBB6_27:                               # %if.else.51
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_load, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_35
.LBB6_28:                               # %if.end.52
	jmp	.LBB6_29
.LBB6_29:                               # %do.end.53
	jmp	.LBB6_30
.LBB6_30:                               # %do.body.54
	movl	-152(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-236(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB6_32
# BB#31:                                # %if.then.59
	jmp	.LBB6_33
.LBB6_32:                               # %if.else.60
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_load, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_35
.LBB6_33:                               # %if.end.61
	jmp	.LBB6_34
.LBB6_34:                               # %do.end.62
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.9, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_channel_push_undo
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movq	%rax, %rsi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	movq	%rax, %rsi
	movl	%edx, -284(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-80(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	copy_region
	movq	-8(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 140(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-308(%rbp), %ecx        # 4-byte Reload
	callq	gimp_drawable_update
.LBB6_35:                               # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_selection_load, .Lfunc_end6-gimp_selection_load
	.cfi_endproc

	.globl	gimp_selection_save
	.align	16, 0x90
	.type	gimp_selection_save,@function
gimp_selection_save:                    # @gimp_selection_save
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_save, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_duplicate
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_item_set_visible
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_add_channel
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_selection_save, .Lfunc_end7-gimp_selection_save
	.cfi_endproc

	.globl	gimp_selection_extract
	.align	16, 0x90
	.type	gimp_selection_extract,@function
gimp_selection_extract:                 # @gimp_selection_extract
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
	pushq	%rbx
	subq	$840, %rsp              # imm = 0x348
.Ltmp27:
	.cfi_offset %rbx, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%r11, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	$0, -244(%rbp)
	movl	$0, -248(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -300(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -300(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_extract, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB8_178
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)
	callq	gimp_pickable_interface_get_type
	movq	%rax, -320(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -324(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-312(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -324(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -324(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-324(%rbp), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_extract, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB8_178
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -344(%rbp)
	cmpq	$0, -336(%rbp)
	jne	.LBB8_26
# BB#25:                                # %if.then.47
	movl	$0, -348(%rbp)
	jmp	.LBB8_31
.LBB8_26:                               # %if.else.48
	movq	-336(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_29
# BB#27:                                # %land.lhs.true.51
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-344(%rbp), %rax
	jne	.LBB8_29
# BB#28:                                # %if.then.55
	movl	$1, -348(%rbp)
	jmp	.LBB8_30
.LBB8_29:                               # %if.else.56
	movq	-336(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -348(%rbp)
.LBB8_30:                               # %if.end.58
	jmp	.LBB8_31
.LBB8_31:                               # %if.end.59
	movl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
	cmpl	$0, -352(%rbp)
	je	.LBB8_38
# BB#32:                                # %if.then.62
	jmp	.LBB8_33
.LBB8_33:                               # %do.body.63
	movq	-32(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB8_35
# BB#34:                                # %if.then.68
	jmp	.LBB8_36
.LBB8_35:                               # %if.else.69
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_extract, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB8_178
.LBB8_36:                               # %if.end.70
	jmp	.LBB8_37
.LBB8_37:                               # %do.end.71
	jmp	.LBB8_38
.LBB8_38:                               # %if.end.72
	jmp	.LBB8_39
.LBB8_39:                               # %do.body.73
	movq	-40(%rbp), %rax
	movq	%rax, -360(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -368(%rbp)
	cmpq	$0, -360(%rbp)
	jne	.LBB8_41
# BB#40:                                # %if.then.82
	movl	$0, -372(%rbp)
	jmp	.LBB8_46
.LBB8_41:                               # %if.else.83
	movq	-360(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_44
# BB#42:                                # %land.lhs.true.86
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-368(%rbp), %rax
	jne	.LBB8_44
# BB#43:                                # %if.then.90
	movl	$1, -372(%rbp)
	jmp	.LBB8_45
.LBB8_44:                               # %if.else.91
	movq	-360(%rbp), %rdi
	movq	-368(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -372(%rbp)
.LBB8_45:                               # %if.end.93
	jmp	.LBB8_46
.LBB8_46:                               # %if.end.94
	movl	-372(%rbp), %eax
	movl	%eax, -376(%rbp)
	cmpl	$0, -376(%rbp)
	je	.LBB8_48
# BB#47:                                # %if.then.97
	jmp	.LBB8_49
.LBB8_48:                               # %if.else.98
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_extract, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB8_178
.LBB8_49:                               # %if.end.99
	jmp	.LBB8_50
.LBB8_50:                               # %do.end.100
	jmp	.LBB8_51
.LBB8_51:                               # %do.body.101
	cmpq	$0, -80(%rbp)
	je	.LBB8_53
# BB#52:                                # %lor.lhs.false
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_54
.LBB8_53:                               # %if.then.104
	jmp	.LBB8_55
.LBB8_54:                               # %if.else.105
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_extract, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB8_178
.LBB8_55:                               # %if.end.106
	jmp	.LBB8_56
.LBB8_56:                               # %do.end.107
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -392(%rbp)
	cmpq	$0, -384(%rbp)
	jne	.LBB8_58
# BB#57:                                # %if.then.117
	movl	$0, -396(%rbp)
	jmp	.LBB8_63
.LBB8_58:                               # %if.else.118
	movq	-384(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_61
# BB#59:                                # %land.lhs.true.121
	movq	-384(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-392(%rbp), %rax
	jne	.LBB8_61
# BB#60:                                # %if.then.125
	movl	$1, -396(%rbp)
	jmp	.LBB8_62
.LBB8_61:                               # %if.else.126
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -396(%rbp)
.LBB8_62:                               # %if.end.128
	jmp	.LBB8_63
.LBB8_63:                               # %if.end.129
	movl	-396(%rbp), %eax
	movl	%eax, -400(%rbp)
	cmpl	$0, -400(%rbp)
	je	.LBB8_65
# BB#64:                                # %if.then.132
	movq	-32(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-252(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	leaq	-260(%rbp), %rcx
	leaq	-264(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_bounds
	movl	%eax, -268(%rbp)
	jmp	.LBB8_66
.LBB8_65:                               # %if.else.136
	movq	-24(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-252(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	leaq	-260(%rbp), %rcx
	leaq	-264(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	movl	%eax, -268(%rbp)
.LBB8_66:                               # %if.end.140
	cmpl	$0, -268(%rbp)
	je	.LBB8_70
# BB#67:                                # %land.lhs.true.142
	movl	-252(%rbp), %eax
	cmpl	-260(%rbp), %eax
	je	.LBB8_69
# BB#68:                                # %lor.lhs.false.144
	movl	-256(%rbp), %eax
	cmpl	-264(%rbp), %eax
	jne	.LBB8_70
.LBB8_69:                               # %if.then.146
	movq	-80(%rbp), %rdi
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.14, %rdi
	movl	%eax, -644(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movl	-644(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -16(%rbp)
	jmp	.LBB8_178
.LBB8_70:                               # %if.end.149
	cmpl	$0, -268(%rbp)
	je	.LBB8_72
# BB#71:                                # %if.then.151
	movl	$1, -52(%rbp)
.LBB8_72:                               # %if.end.152
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	cmpl	$0, %eax
	je	.LBB8_74
# BB#73:                                # %lor.lhs.false.155
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	cmpl	$1, %eax
	jne	.LBB8_75
.LBB8_74:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	jmp	.LBB8_82
.LBB8_75:                               # %cond.false
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	cmpl	$2, %eax
	je	.LBB8_77
# BB#76:                                # %lor.lhs.false.160
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	cmpl	$3, %eax
	jne	.LBB8_78
.LBB8_77:                               # %cond.true.163
	movl	$1, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB8_81
.LBB8_78:                               # %cond.false.164
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -653(%rbp)         # 1-byte Spill
	je	.LBB8_80
# BB#79:                                # %lor.rhs
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -653(%rbp)         # 1-byte Spill
.LBB8_80:                               # %lor.end
	movb	-653(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -652(%rbp)        # 4-byte Spill
.LBB8_81:                               # %cond.end
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	%eax, -648(%rbp)        # 4-byte Spill
.LBB8_82:                               # %cond.end.170
	movl	-648(%rbp), %eax        # 4-byte Reload
	testl	%eax, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	je	.LBB8_83
	jmp	.LBB8_179
.LBB8_179:                              # %cond.end.170
	movl	-660(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -664(%rbp)        # 4-byte Spill
	je	.LBB8_87
	jmp	.LBB8_180
.LBB8_180:                              # %cond.end.170
	movl	-660(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -668(%rbp)        # 4-byte Spill
	je	.LBB8_91
	jmp	.LBB8_103
.LBB8_83:                               # %sw.bb
	cmpl	$0, -52(%rbp)
	je	.LBB8_85
# BB#84:                                # %cond.true.173
	movl	$4, %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
	jmp	.LBB8_86
.LBB8_85:                               # %cond.false.174
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_bytes
	movl	%eax, -672(%rbp)        # 4-byte Spill
.LBB8_86:                               # %cond.end.176
	movl	-672(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)
	movl	$0, -244(%rbp)
	jmp	.LBB8_105
.LBB8_87:                               # %sw.bb.178
	cmpl	$0, -52(%rbp)
	je	.LBB8_89
# BB#88:                                # %cond.true.180
	movl	$2, %eax
	movl	%eax, -676(%rbp)        # 4-byte Spill
	jmp	.LBB8_90
.LBB8_89:                               # %cond.false.181
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_bytes
	movl	%eax, -676(%rbp)        # 4-byte Spill
.LBB8_90:                               # %cond.end.183
	movl	-676(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)
	movl	$1, -244(%rbp)
	jmp	.LBB8_105
.LBB8_91:                               # %sw.bb.185
	cmpl	$0, -48(%rbp)
	je	.LBB8_96
# BB#92:                                # %if.then.187
	cmpl	$0, -52(%rbp)
	je	.LBB8_94
# BB#93:                                # %cond.true.189
	movl	$2, %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
	jmp	.LBB8_95
.LBB8_94:                               # %cond.false.190
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_bytes
	movl	%eax, -680(%rbp)        # 4-byte Spill
.LBB8_95:                               # %cond.end.192
	movl	-680(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)
	movl	$1, -244(%rbp)
	jmp	.LBB8_102
.LBB8_96:                               # %if.else.194
	movb	$1, %al
	cmpl	$0, -52(%rbp)
	movb	%al, -681(%rbp)         # 1-byte Spill
	jne	.LBB8_101
# BB#97:                                # %lor.rhs.196
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movb	$1, %cl
	cmpl	$1, %eax
	movb	%cl, -682(%rbp)         # 1-byte Spill
	je	.LBB8_100
# BB#98:                                # %lor.lhs.false.199
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movb	$1, %cl
	cmpl	$3, %eax
	movb	%cl, -682(%rbp)         # 1-byte Spill
	je	.LBB8_100
# BB#99:                                # %lor.rhs.202
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -682(%rbp)         # 1-byte Spill
.LBB8_100:                              # %lor.end.205
	movb	-682(%rbp), %al         # 1-byte Reload
	movb	%al, -681(%rbp)         # 1-byte Spill
.LBB8_101:                              # %lor.end.206
	movb	-681(%rbp), %al         # 1-byte Reload
	movl	$3, %ecx
	movl	$4, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -248(%rbp)
	movl	$2, -244(%rbp)
.LBB8_102:                              # %if.end.208
	jmp	.LBB8_105
.LBB8_103:                              # %sw.default
	jmp	.LBB8_104
.LBB8_104:                              # %do.body.209
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$709, %edx              # imm = 0x2C5
	movabsq	$.L__func__.gimp_selection_extract, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB8_105:                              # %sw.epilog
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -704(%rbp)        # 8-byte Spill
	callq	gimp_pickable_get_image_type
	leaq	-228(%rbp), %rcx
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	-704(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_get_background
	movq	-32(%rbp), %rcx
	movq	%rcx, -408(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -416(%rbp)
	cmpq	$0, -408(%rbp)
	jne	.LBB8_107
# BB#106:                               # %if.then.220
	movl	$0, -420(%rbp)
	jmp	.LBB8_112
.LBB8_107:                              # %if.else.221
	movq	-408(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_110
# BB#108:                               # %land.lhs.true.224
	movq	-408(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-416(%rbp), %rax
	jne	.LBB8_110
# BB#109:                               # %if.then.228
	movl	$1, -420(%rbp)
	jmp	.LBB8_111
.LBB8_110:                              # %if.else.229
	movq	-408(%rbp), %rdi
	movq	-416(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -420(%rbp)
.LBB8_111:                              # %if.end.231
	jmp	.LBB8_112
.LBB8_112:                              # %if.end.232
	movl	-420(%rbp), %eax
	movl	%eax, -424(%rbp)
	cmpl	$0, -424(%rbp)
	je	.LBB8_117
# BB#113:                               # %if.then.235
	cmpl	$0, -44(%rbp)
	je	.LBB8_116
# BB#114:                               # %land.lhs.true.237
	cmpl	$0, -268(%rbp)
	je	.LBB8_116
# BB#115:                               # %if.then.239
	movq	-32(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	-252(%rbp), %edx
	movl	-256(%rbp), %r8d
	movl	-260(%rbp), %r9d
	subl	-252(%rbp), %r9d
	movl	-264(%rbp), %r10d
	subl	-256(%rbp), %r10d
	movq	%rax, %rdi
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_drawable_push_undo
.LBB8_116:                              # %if.end.243
	movq	-32(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-272(%rbp), %rsi
	leaq	-276(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-32(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -240(%rbp)
	jmp	.LBB8_118
.LBB8_117:                              # %if.else.249
	movl	$0, -276(%rbp)
	movl	$0, -272(%rbp)
	movq	$0, -240(%rbp)
.LBB8_118:                              # %if.end.250
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_flush
	movl	-260(%rbp), %eax
	subl	-252(%rbp), %eax
	movl	-264(%rbp), %ecx
	subl	-256(%rbp), %ecx
	movl	-248(%rbp), %edx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	tile_manager_new
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	leaq	-160(%rbp), %rdi
	movl	-252(%rbp), %edx
	movl	-256(%rbp), %ecx
	movl	-260(%rbp), %esi
	subl	-252(%rbp), %esi
	movl	-264(%rbp), %r8d
	subl	-256(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	%esi, -740(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-740(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -744(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	-744(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -748(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	-748(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	callq	pixel_region_init
	leaq	-224(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-96(%rbp), %rsi
	movl	-260(%rbp), %r8d
	subl	-252(%rbp), %r8d
	movl	-264(%rbp), %r9d
	subl	-256(%rbp), %r9d
	movl	%edx, -752(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	cmpl	$0, -268(%rbp)
	je	.LBB8_130
# BB#119:                               # %if.then.260
	movq	-24(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-488(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-252(%rbp), %edx
	addl	-272(%rbp), %edx
	movl	-256(%rbp), %r8d
	addl	-276(%rbp), %r8d
	movl	-260(%rbp), %r9d
	subl	-252(%rbp), %r9d
	movl	-264(%rbp), %r10d
	subl	-256(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-160(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	leaq	-488(%rbp), %rdx
	leaq	-228(%rbp), %r8
	movq	-240(%rbp), %rcx
	movl	-244(%rbp), %r9d
	movl	-44(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	extract_from_region
	movq	-32(%rbp), %rax
	movq	%rax, -496(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -504(%rbp)
	cmpq	$0, -496(%rbp)
	jne	.LBB8_121
# BB#120:                               # %if.then.277
	movl	$0, -508(%rbp)
	jmp	.LBB8_126
.LBB8_121:                              # %if.else.278
	movq	-496(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_124
# BB#122:                               # %land.lhs.true.281
	movq	-496(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-504(%rbp), %rax
	jne	.LBB8_124
# BB#123:                               # %if.then.285
	movl	$1, -508(%rbp)
	jmp	.LBB8_125
.LBB8_124:                              # %if.else.286
	movq	-496(%rbp), %rdi
	movq	-504(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -508(%rbp)
.LBB8_125:                              # %if.end.288
	jmp	.LBB8_126
.LBB8_126:                              # %if.end.289
	movl	-508(%rbp), %eax
	movl	%eax, -512(%rbp)
	cmpl	$0, -512(%rbp)
	je	.LBB8_129
# BB#127:                               # %land.lhs.true.292
	cmpl	$0, -44(%rbp)
	je	.LBB8_129
# BB#128:                               # %if.then.294
	movq	-32(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-252(%rbp), %esi
	movl	-256(%rbp), %edx
	movl	-260(%rbp), %ecx
	subl	-252(%rbp), %ecx
	movl	-264(%rbp), %r8d
	subl	-256(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_drawable_update
.LBB8_129:                              # %if.end.299
	jmp	.LBB8_177
.LBB8_130:                              # %if.else.300
	cmpl	$2, -244(%rbp)
	jne	.LBB8_133
# BB#131:                               # %land.lhs.true.302
	cmpl	$0, -48(%rbp)
	jne	.LBB8_133
# BB#132:                               # %if.then.304
	leaq	-160(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%eax, %eax
	leaq	-228(%rbp), %r8
	movq	-240(%rbp), %rcx
	movl	-244(%rbp), %r9d
	movl	$0, (%rsp)
	movl	%eax, -780(%rbp)        # 4-byte Spill
	callq	extract_from_region
	jmp	.LBB8_137
.LBB8_133:                              # %if.else.306
	movl	-248(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jle	.LBB8_135
# BB#134:                               # %if.then.309
	leaq	-160(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	callq	add_alpha_region
	jmp	.LBB8_136
.LBB8_135:                              # %if.else.310
	leaq	-160(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	callq	copy_region
.LBB8_136:                              # %if.end.311
	jmp	.LBB8_137
.LBB8_137:                              # %if.end.312
	movq	-32(%rbp), %rax
	movq	%rax, -520(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -528(%rbp)
	cmpq	$0, -520(%rbp)
	jne	.LBB8_139
# BB#138:                               # %if.then.321
	movl	$0, -532(%rbp)
	jmp	.LBB8_144
.LBB8_139:                              # %if.else.322
	movq	-520(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_142
# BB#140:                               # %land.lhs.true.325
	movq	-520(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-528(%rbp), %rax
	jne	.LBB8_142
# BB#141:                               # %if.then.329
	movl	$1, -532(%rbp)
	jmp	.LBB8_143
.LBB8_142:                              # %if.else.330
	movq	-520(%rbp), %rdi
	movq	-528(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -532(%rbp)
.LBB8_143:                              # %if.end.332
	jmp	.LBB8_144
.LBB8_144:                              # %if.end.333
	movl	-532(%rbp), %eax
	movl	%eax, -536(%rbp)
	cmpl	$0, -536(%rbp)
	je	.LBB8_176
# BB#145:                               # %land.lhs.true.336
	cmpl	$0, -44(%rbp)
	je	.LBB8_176
# BB#146:                               # %if.then.338
	movq	-32(%rbp), %rax
	movq	%rax, -544(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -552(%rbp)
	cmpq	$0, -544(%rbp)
	jne	.LBB8_148
# BB#147:                               # %if.then.347
	movl	$0, -556(%rbp)
	jmp	.LBB8_153
.LBB8_148:                              # %if.else.348
	movq	-544(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_151
# BB#149:                               # %land.lhs.true.351
	movq	-544(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-552(%rbp), %rax
	jne	.LBB8_151
# BB#150:                               # %if.then.355
	movl	$1, -556(%rbp)
	jmp	.LBB8_152
.LBB8_151:                              # %if.else.356
	movq	-544(%rbp), %rdi
	movq	-552(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -556(%rbp)
.LBB8_152:                              # %if.end.358
	jmp	.LBB8_153
.LBB8_153:                              # %if.end.359
	movl	-556(%rbp), %eax
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	.LBB8_155
# BB#154:                               # %if.then.362
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_remove_layer
	jmp	.LBB8_175
.LBB8_155:                              # %if.else.365
	movq	-32(%rbp), %rax
	movq	%rax, -568(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -576(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.LBB8_157
# BB#156:                               # %if.then.374
	movl	$0, -580(%rbp)
	jmp	.LBB8_162
.LBB8_157:                              # %if.else.375
	movq	-568(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_160
# BB#158:                               # %land.lhs.true.378
	movq	-568(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-576(%rbp), %rax
	jne	.LBB8_160
# BB#159:                               # %if.then.382
	movl	$1, -580(%rbp)
	jmp	.LBB8_161
.LBB8_160:                              # %if.else.383
	movq	-568(%rbp), %rdi
	movq	-576(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -580(%rbp)
.LBB8_161:                              # %if.end.385
	jmp	.LBB8_162
.LBB8_162:                              # %if.end.386
	movl	-580(%rbp), %eax
	movl	%eax, -584(%rbp)
	cmpl	$0, -584(%rbp)
	je	.LBB8_164
# BB#163:                               # %if.then.389
	movq	-32(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_layer
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_layer_apply_mask
	jmp	.LBB8_174
.LBB8_164:                              # %if.else.393
	movq	-32(%rbp), %rax
	movq	%rax, -592(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -600(%rbp)
	cmpq	$0, -592(%rbp)
	jne	.LBB8_166
# BB#165:                               # %if.then.402
	movl	$0, -604(%rbp)
	jmp	.LBB8_171
.LBB8_166:                              # %if.else.403
	movq	-592(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_169
# BB#167:                               # %land.lhs.true.406
	movq	-592(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-600(%rbp), %rax
	jne	.LBB8_169
# BB#168:                               # %if.then.410
	movl	$1, -604(%rbp)
	jmp	.LBB8_170
.LBB8_169:                              # %if.else.411
	movq	-592(%rbp), %rdi
	movq	-600(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -604(%rbp)
.LBB8_170:                              # %if.end.413
	jmp	.LBB8_171
.LBB8_171:                              # %if.end.414
	movl	-604(%rbp), %eax
	movl	%eax, -608(%rbp)
	cmpl	$0, -608(%rbp)
	je	.LBB8_173
# BB#172:                               # %if.then.417
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_remove_channel
.LBB8_173:                              # %if.end.420
	jmp	.LBB8_174
.LBB8_174:                              # %if.end.421
	jmp	.LBB8_175
.LBB8_175:                              # %if.end.422
	jmp	.LBB8_176
.LBB8_176:                              # %if.end.423
	jmp	.LBB8_177
.LBB8_177:                              # %if.end.424
	movl	-252(%rbp), %eax
	addl	-272(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-256(%rbp), %eax
	addl	-276(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-96(%rbp), %rcx
	movq	%rcx, -16(%rbp)
.LBB8_178:                              # %return
	movq	-16(%rbp), %rax
	addq	$840, %rsp              # imm = 0x348
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_selection_extract, .Lfunc_end8-gimp_selection_extract
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_selection_float
	.align	16, 0x90
	.type	gimp_selection_float,@function
gimp_selection_float:                   # @gimp_selection_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$352, %rsp              # imm = 0x160
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
	movq	16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_selection_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_float, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB9_52
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -156(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -156(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_float, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB9_52
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	jmp	.LBB9_25
.LBB9_25:                               # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB9_27
# BB#26:                                # %if.then.44
	jmp	.LBB9_28
.LBB9_27:                               # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_float, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB9_52
.LBB9_28:                               # %if.end.46
	jmp	.LBB9_29
.LBB9_29:                               # %do.end.47
	jmp	.LBB9_30
.LBB9_30:                               # %do.body.48
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB9_32
# BB#31:                                # %if.then.57
	movl	$0, -180(%rbp)
	jmp	.LBB9_37
.LBB9_32:                               # %if.else.58
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_35
# BB#33:                                # %land.lhs.true.61
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB9_35
# BB#34:                                # %if.then.65
	movl	$1, -180(%rbp)
	jmp	.LBB9_36
.LBB9_35:                               # %if.else.66
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB9_36:                               # %if.end.68
	jmp	.LBB9_37
.LBB9_37:                               # %if.end.69
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB9_39
# BB#38:                                # %if.then.72
	jmp	.LBB9_40
.LBB9_39:                               # %if.else.73
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_float, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB9_52
.LBB9_40:                               # %if.end.74
	jmp	.LBB9_41
.LBB9_41:                               # %do.end.75
	jmp	.LBB9_42
.LBB9_42:                               # %do.body.76
	cmpq	$0, -72(%rbp)
	je	.LBB9_44
# BB#43:                                # %lor.lhs.false
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB9_45
.LBB9_44:                               # %if.then.79
	jmp	.LBB9_46
.LBB9_45:                               # %if.else.80
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_float, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB9_52
.LBB9_46:                               # %if.end.81
	jmp	.LBB9_47
.LBB9_47:                               # %do.end.82
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-108(%rbp), %rcx
	leaq	-112(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_bounds
	cmpl	$0, %eax
	je	.LBB9_50
# BB#48:                                # %lor.lhs.false.90
	movl	-100(%rbp), %eax
	cmpl	-108(%rbp), %eax
	je	.LBB9_50
# BB#49:                                # %lor.lhs.false.92
	movl	-104(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jne	.LBB9_51
.LBB9_50:                               # %if.then.94
	movq	-72(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.18, %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -24(%rbp)
	jmp	.LBB9_52
.LBB9_51:                               # %if.end.97
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.19, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$27, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	$1, %r9d
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %r10d
	movq	-248(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	-288(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-280(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gimp_selection_extract
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gimp_channel_clear
	movq	-96(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type_with_alpha
	movabsq	$.L.str.20, %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movl	-316(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_layer_new_from_tiles
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-100(%rbp), %edx
	addl	-56(%rbp), %edx
	movl	-104(%rbp), %r8d
	addl	-60(%rbp), %r8d
	movq	%rax, %rdi
	movl	%edx, %esi
	movl	%r8d, %edx
	callq	gimp_item_set_offset
	movq	-96(%rbp), %rdi
	callq	tile_manager_unref
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	floating_sel_attach
	movq	-80(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-32(%rbp), %rcx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 104(%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB9_52:                               # %return
	movq	-24(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_selection_float, .Lfunc_end9-gimp_selection_float
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_class_init,@function
gimp_selection_class_init:              # @gimp_selection_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.22, %rdi
	movabsq	$gimp_selection_stroke, %rsi
	movabsq	$gimp_selection_rotate, %rcx
	movabsq	$gimp_selection_flip, %rdx
	movabsq	$gimp_selection_resize, %r8
	movabsq	$gimp_selection_scale, %r9
	movabsq	$gimp_selection_translate, %r10
	movabsq	$gimp_selection_get_tree, %r11
	movabsq	$gimp_selection_is_attached, %rbx
	movabsq	$.L.str.21, %r14
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%r14, 160(%rax)
	movq	-64(%rbp), %rax
	movq	%rbx, 320(%rax)
	movq	-64(%rbp), %rax
	movq	%r11, 336(%rax)
	movq	-64(%rbp), %rax
	movq	%r10, 368(%rax)
	movq	-64(%rbp), %rax
	movq	%r9, 376(%rax)
	movq	-64(%rbp), %rax
	movq	%r8, 384(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 392(%rax)
	movq	-64(%rbp), %rax
	movq	%rcx, 400(%rax)
	movq	-64(%rbp), %rax
	movq	%rsi, 416(%rax)
	callq	gettext
	xorl	%r15d, %r15d
	movl	%r15d, %edi
	movabsq	$.L.str.23, %rsi
	movl	$10, %r15d
	movl	%r15d, %edx
	movq	-64(%rbp), %rcx
	movq	%rax, 440(%rcx)
	callq	g_dpgettext
	xorl	%r15d, %r15d
	movl	%r15d, %edi
	movabsq	$.L.str.24, %rsi
	movl	$10, %r15d
	movl	%r15d, %edx
	movq	-64(%rbp), %rcx
	movq	%rax, 456(%rcx)
	callq	g_dpgettext
	xorl	%r15d, %r15d
	movl	%r15d, %edi
	movabsq	$.L.str.25, %rsi
	movl	$10, %r15d
	movl	%r15d, %edx
	movabsq	$gimp_selection_shrink, %rcx
	movabsq	$gimp_selection_grow, %r8
	movabsq	$gimp_selection_border, %r9
	movabsq	$gimp_selection_invert, %r10
	movabsq	$gimp_selection_all, %r11
	movabsq	$gimp_selection_clear, %rbx
	movabsq	$gimp_selection_sharpen, %r14
	movabsq	$gimp_selection_feather, %r12
	movabsq	$gimp_selection_is_empty, %r13
	movabsq	$gimp_selection_bounds, %r15
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$gimp_selection_boundary, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$gimp_selection_invalidate_boundary, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rax
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 512(%rax)
	movq	-72(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 600(%rax)
	movq	-80(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 688(%rax)
	movq	-80(%rbp), %rax
	movq	%r15, 696(%rax)
	movq	-80(%rbp), %rax
	movq	%r13, 704(%rax)
	movq	-80(%rbp), %rax
	movq	%r12, 712(%rax)
	movq	-80(%rbp), %rax
	movq	%r14, 720(%rax)
	movq	-80(%rbp), %rax
	movq	%rbx, 728(%rax)
	movq	-80(%rbp), %rax
	movq	%r11, 736(%rax)
	movq	-80(%rbp), %rax
	movq	%r10, 744(%rax)
	movq	-80(%rbp), %rax
	movq	%r9, 752(%rax)
	movq	-80(%rbp), %rax
	movq	%r8, 760(%rax)
	movq	-80(%rbp), %rax
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%r8, 768(%rax)
	callq	g_dpgettext
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$.L.str.26, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 776(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.27, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 784(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.28, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 792(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.29, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 800(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.30, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 808(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.31, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 816(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.32, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 824(%rcx)
	callq	g_dpgettext
	movq	-80(%rbp), %rcx
	movq	%rax, 832(%rcx)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_selection_class_init, .Lfunc_end10-gimp_selection_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_is_attached,@function
gimp_selection_is_attached:             # @gimp_selection_is_attached
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -16(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB11_7
.LBB11_2:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB11_5
# BB#4:                                 # %if.then.4
	movl	$1, -28(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.5
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB11_6:                               # %if.end
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.7
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB11_9
# BB#8:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_mask
	movq	-8(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB11_9:                               # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_selection_is_attached, .Lfunc_end11-gimp_selection_is_attached
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_get_tree,@function
gimp_selection_get_tree:                # @gimp_selection_get_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_selection_get_tree, .Lfunc_end12-gimp_selection_get_tree
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_translate,@function
gimp_selection_translate:               # @gimp_selection_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	gimp_selection_parent_class, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	368(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_selection_translate, .Lfunc_end13-gimp_selection_translate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_scale,@function
gimp_selection_scale:                   # @gimp_selection_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	movq	gimp_selection_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	376(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movq	-40(%rbp), %r10
	movq	%r10, (%rsp)
	callq	*%rax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_item_set_offset
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_selection_scale, .Lfunc_end14-gimp_selection_scale
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_resize,@function
gimp_selection_resize:                  # @gimp_selection_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	gimp_selection_parent_class, %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	384(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	*%rax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_item_set_offset
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_selection_resize, .Lfunc_end15-gimp_selection_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_flip,@function
gimp_selection_flip:                    # @gimp_selection_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	gimp_selection_parent_class, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movl	$1, %ecx
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_selection_flip, .Lfunc_end16-gimp_selection_flip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_rotate,@function
gimp_selection_rotate:                  # @gimp_selection_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	gimp_selection_parent_class, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	400(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_selection_rotate, .Lfunc_end17-gimp_selection_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_stroke,@function
gimp_selection_stroke:                  # @gimp_selection_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	leaq	-88(%rbp), %r8
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_channel_boundary
	cmpl	$0, %eax
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.33, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB18_3
.LBB18_2:                               # %if.end
	movq	-64(%rbp), %rdi
	callq	gimp_selection_push_stroking
	movq	gimp_selection_parent_class, %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	416(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	callq	*%rax
	movl	%eax, -92(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_selection_pop_stroking
	movl	-92(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB18_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_selection_stroke, .Lfunc_end18-gimp_selection_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_invalidate_boundary,@function
gimp_selection_invalidate_boundary:     # @gimp_selection_invalidate_boundary
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_selection_invalidate
	movq	gimp_selection_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	600(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB19_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-24(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB19_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 96(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_selection_invalidate_boundary, .Lfunc_end19-gimp_selection_invalidate_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_boundary,@function
gimp_selection_boundary:                # @gimp_selection_boundary
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
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp71:
	.cfi_offset %rbx, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movl	%r11d, -64(%rbp)
	movl	%r10d, -68(%rbp)
	movl	%eax, -72(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -96(%rbp)
	cmpq	$0, %rax
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	gimp_selection_parent_class, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	xorl	%r9d, %r9d
	movq	688(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	*%rax
	movq	-96(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	floating_sel_boundary
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -12(%rbp)
	jmp	.LBB20_41
.LBB20_2:                               # %if.else
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -88(%rbp)
	cmpq	$0, %rax
	je	.LBB20_12
# BB#3:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB20_5
# BB#4:                                 # %if.then.12
	movl	$0, -116(%rbp)
	jmp	.LBB20_10
.LBB20_5:                               # %if.else.13
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_8
# BB#6:                                 # %land.lhs.true.15
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB20_8
# BB#7:                                 # %if.then.17
	movl	$1, -116(%rbp)
	jmp	.LBB20_9
.LBB20_8:                               # %if.else.18
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB20_9:                               # %if.end
	jmp	.LBB20_10
.LBB20_10:                              # %if.end.20
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB20_12
# BB#11:                                # %if.then.22
	movq	gimp_selection_parent_class, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	688(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-80(%rbp), %r9
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-80(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movl	$0, (%rsp)
	movl	-228(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movq	-192(%rbp), %r11        # 8-byte Reload
	callq	*%r11
	movl	%eax, -12(%rbp)
	jmp	.LBB20_41
.LBB20_12:                              # %if.else.29
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -96(%rbp)
	cmpq	$0, %rax
	je	.LBB20_38
# BB#13:                                # %if.then.32
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-140(%rbp), %ecx
	movq	-80(%rbp), %rdi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-244(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB20_15
# BB#14:                                # %cond.true
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB20_19
.LBB20_15:                              # %cond.false
	cmpl	$0, -140(%rbp)
	jge	.LBB20_17
# BB#16:                                # %cond.true.45
	xorl	%eax, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB20_18
.LBB20_17:                              # %cond.false.46
	movl	-140(%rbp), %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB20_18:                              # %cond.end
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB20_19:                              # %cond.end.47
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
	movl	-144(%rbp), %eax
	movq	-80(%rbp), %rdi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-256(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB20_21
# BB#20:                                # %cond.true.51
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB20_25
.LBB20_21:                              # %cond.false.53
	cmpl	$0, -144(%rbp)
	jge	.LBB20_23
# BB#22:                                # %cond.true.55
	xorl	%eax, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB20_24
.LBB20_23:                              # %cond.false.56
	movl	-144(%rbp), %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB20_24:                              # %cond.end.57
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB20_25:                              # %cond.end.59
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)
	movl	-140(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-268(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movq	-80(%rbp), %rdi
	movl	%edx, -284(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-284(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB20_27
# BB#26:                                # %cond.true.66
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB20_31
.LBB20_27:                              # %cond.false.68
	movl	-140(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-292(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	cmpl	$0, %edx
	jge	.LBB20_29
# BB#28:                                # %cond.true.74
	xorl	%eax, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB20_30
.LBB20_29:                              # %cond.false.75
	movl	-140(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, -312(%rbp)        # 4-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-312(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -308(%rbp)        # 4-byte Spill
.LBB20_30:                              # %cond.end.80
	movl	-308(%rbp), %eax        # 4-byte Reload
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB20_31:                              # %cond.end.82
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-144(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-324(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movq	-80(%rbp), %rdi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-340(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB20_33
# BB#32:                                # %cond.true.90
	movq	-80(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB20_37
.LBB20_33:                              # %cond.false.92
	movl	-144(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-348(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	cmpl	$0, %edx
	jge	.LBB20_35
# BB#34:                                # %cond.true.98
	xorl	%eax, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB20_36
.LBB20_35:                              # %cond.false.99
	movl	-144(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, -368(%rbp)        # 4-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-368(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -364(%rbp)        # 4-byte Spill
.LBB20_36:                              # %cond.end.104
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB20_37:                              # %cond.end.106
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -136(%rbp)
	movq	gimp_selection_parent_class, %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	688(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movl	-124(%rbp), %r9d
	movl	-128(%rbp), %r10d
	movl	-132(%rbp), %r11d
	movl	-136(%rbp), %ebx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	*%rax
	movl	%eax, -12(%rbp)
	jmp	.LBB20_41
.LBB20_38:                              # %if.end.112
	jmp	.LBB20_39
.LBB20_39:                              # %if.end.113
	jmp	.LBB20_40
.LBB20_40:                              # %if.end.114
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -12(%rbp)
.LBB20_41:                              # %return
	movl	-12(%rbp), %eax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_selection_boundary, .Lfunc_end20-gimp_selection_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_bounds,@function
gimp_selection_bounds:                  # @gimp_selection_bounds
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	gimp_selection_parent_class, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	696(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_selection_bounds, .Lfunc_end21-gimp_selection_bounds
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_is_empty,@function
gimp_selection_is_empty:                # @gimp_selection_is_empty
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 160(%rax)
	jle	.LBB22_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB22_3
.LBB22_2:                               # %if.end
	movq	gimp_selection_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	704(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB22_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_selection_is_empty, .Lfunc_end22-gimp_selection_is_empty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_feather,@function
gimp_selection_feather:                 # @gimp_selection_feather
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	gimp_selection_parent_class, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	712(%rax), %rax
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-28(%rbp), %esi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_selection_feather, .Lfunc_end23-gimp_selection_feather
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_sharpen,@function
gimp_selection_sharpen:                 # @gimp_selection_sharpen
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
	movl	%esi, -12(%rbp)
	movq	gimp_selection_parent_class, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	720(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_selection_sharpen, .Lfunc_end24-gimp_selection_sharpen
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_clear,@function
gimp_selection_clear:                   # @gimp_selection_clear
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	gimp_selection_parent_class, %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	728(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_selection_clear, .Lfunc_end25-gimp_selection_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_all,@function
gimp_selection_all:                     # @gimp_selection_all
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	gimp_selection_parent_class, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	736(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_selection_all, .Lfunc_end26-gimp_selection_all
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_invert,@function
gimp_selection_invert:                  # @gimp_selection_invert
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	gimp_selection_parent_class, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	744(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_selection_invert, .Lfunc_end27-gimp_selection_invert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_border,@function
gimp_selection_border:                  # @gimp_selection_border
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	gimp_selection_parent_class, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	752(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_selection_border, .Lfunc_end28-gimp_selection_border
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_grow,@function
gimp_selection_grow:                    # @gimp_selection_grow
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	gimp_selection_parent_class, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	760(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_selection_grow, .Lfunc_end29-gimp_selection_grow
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_shrink,@function
gimp_selection_shrink:                  # @gimp_selection_shrink
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	gimp_selection_parent_class, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	768(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_selection_shrink, .Lfunc_end30-gimp_selection_shrink
	.cfi_endproc

	.type	gimp_selection_get_type.g_define_type_id__volatile,@object # @gimp_selection_get_type.g_define_type_id__volatile
	.local	gimp_selection_get_type.g_define_type_id__volatile
	.comm	gimp_selection_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSelection"
	.size	.L.str, 14

	.type	.Lgimp_selection_new.black,@object # @gimp_selection_new.black
	.section	.rodata,"a",@progbits
	.align	8
.Lgimp_selection_new.black:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.size	.Lgimp_selection_new.black, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_selection_new,@object # @__func__.gimp_selection_new
.L__func__.gimp_selection_new:
	.asciz	"gimp_selection_new"
	.size	.L__func__.gimp_selection_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"width > 0 && height > 0"
	.size	.L.str.3, 24

	.type	.L__func__.gimp_selection_push_stroking,@object # @__func__.gimp_selection_push_stroking
.L__func__.gimp_selection_push_stroking:
	.asciz	"gimp_selection_push_stroking"
	.size	.L__func__.gimp_selection_push_stroking, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_SELECTION (selection)"
	.size	.L.str.4, 30

	.type	.L__func__.gimp_selection_pop_stroking,@object # @__func__.gimp_selection_pop_stroking
.L__func__.gimp_selection_pop_stroking:
	.asciz	"gimp_selection_pop_stroking"
	.size	.L__func__.gimp_selection_pop_stroking, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"selection->stroking_count > 0"
	.size	.L.str.5, 30

	.type	.L__func__.gimp_selection_load,@object # @__func__.gimp_selection_load
.L__func__.gimp_selection_load:
	.asciz	"gimp_selection_load"
	.size	.L__func__.gimp_selection_load, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_CHANNEL (channel)"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"width == gimp_item_get_width (GIMP_ITEM (channel))"
	.size	.L.str.7, 51

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"height == gimp_item_get_height (GIMP_ITEM (channel))"
	.size	.L.str.8, 53

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"undo-type\004Channel to Selection"
	.size	.L.str.9, 31

	.type	.L__func__.gimp_selection_save,@object # @__func__.gimp_selection_save
.L__func__.gimp_selection_save:
	.asciz	"gimp_selection_save"
	.size	.L__func__.gimp_selection_save, 20

	.type	.L__func__.gimp_selection_extract,@object # @__func__.gimp_selection_extract
.L__func__.gimp_selection_extract:
	.asciz	"gimp_selection_extract"
	.size	.L__func__.gimp_selection_extract, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_PICKABLE (pickable)"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (pickable))"
	.size	.L.str.11, 45

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.13, 32

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Unable to cut or copy because the selected region is empty."
	.size	.L.str.14, 60

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimpselection.c"
	.size	.L.str.15, 16

	.type	.L__func__.gimp_selection_float,@object # @__func__.gimp_selection_float
.L__func__.gimp_selection_float:
	.asciz	"gimp_selection_float"
	.size	.L__func__.gimp_selection_float, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.16, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.17, 45

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Cannot float selection because the selected region is empty."
	.size	.L.str.18, 61

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"undo-type\004Float Selection"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Floated Layer"
	.size	.L.str.20, 14

	.type	gimp_selection_parent_class,@object # @gimp_selection_parent_class
	.local	gimp_selection_parent_class
	.comm	gimp_selection_parent_class,8,8
	.type	GimpSelection_private_offset,@object # @GimpSelection_private_offset
	.local	GimpSelection_private_offset
	.comm	GimpSelection_private_offset,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-selection"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Selection Mask"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"undo-type\004Move Selection"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"undo-type\004Stroke Selection"
	.size	.L.str.24, 27

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"undo-type\004Feather Selection"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"undo-type\004Sharpen Selection"
	.size	.L.str.26, 28

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"undo-type\004Select None"
	.size	.L.str.27, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"undo-type\004Select All"
	.size	.L.str.28, 21

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"undo-type\004Invert Selection"
	.size	.L.str.29, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"undo-type\004Border Selection"
	.size	.L.str.30, 27

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"undo-type\004Grow Selection"
	.size	.L.str.31, 25

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"undo-type\004Shrink Selection"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"There is no selection to stroke."
	.size	.L.str.33, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
