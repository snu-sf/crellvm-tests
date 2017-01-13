	.text
	.file	"gimpdrawable.bc"
	.globl	gimp_drawable_get_type
	.align	16, 0x90
	.type	gimp_drawable_get_type,@function
gimp_drawable_get_type:                 # @gimp_drawable_get_type
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
	movq	gimp_drawable_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_drawable_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_item_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$680, %edx              # imm = 0x2A8
	movabsq	$gimp_drawable_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_drawable_init, %rcx
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
	callq	gimp_pickable_interface_get_type
	movabsq	$gimp_drawable_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_drawable_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_drawable_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_get_type, .Lfunc_end0-gimp_drawable_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_class_intern_init,@function
gimp_drawable_class_intern_init:        # @gimp_drawable_class_intern_init
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
	movq	%rax, gimp_drawable_parent_class
	cmpl	$0, GimpDrawable_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDrawable_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_drawable_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_class_intern_init, .Lfunc_end1-gimp_drawable_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_init,@function
gimp_drawable_init:                     # @gimp_drawable_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$-1, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_init, .Lfunc_end2-gimp_drawable_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_pickable_iface_init,@function
gimp_drawable_pickable_iface_init:      # @gimp_drawable_pickable_iface_init
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
	movabsq	$gimp_drawable_get_pixel_at, %rax
	movabsq	$gimp_drawable_get_tiles, %rcx
	movabsq	$gimp_drawable_bytes, %rdx
	movabsq	$gimp_drawable_type, %rsi
	movabsq	$gimp_item_get_image, %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r8, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 40(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 48(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_pickable_iface_init, .Lfunc_end3-gimp_drawable_pickable_iface_init
	.cfi_endproc

	.globl	gimp_drawable_new
	.align	16, 0x90
	.type	gimp_drawable_new,@function
gimp_drawable_new:                      # @gimp_drawable_new
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
	subq	$128, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r10d, -48(%rbp)
	movl	%eax, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_24
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB4_15
# BB#14:                                # %if.then.15
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_24
.LBB4_16:                               # %if.end.17
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.18
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.19
	cmpl	$0, -44(%rbp)
	jle	.LBB4_21
# BB#19:                                # %land.lhs.true.21
	cmpl	$0, -48(%rbp)
	jle	.LBB4_21
# BB#20:                                # %if.then.23
	jmp	.LBB4_22
.LBB4_21:                               # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_24
.LBB4_22:                               # %if.end.25
	jmp	.LBB4_23
.LBB4_23:                               # %do.end.26
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_item_new
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	%ecx, (%rax)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movq	-64(%rbp), %rax
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -112(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-108(%rbp), %edi        # 4-byte Reload
	movl	-112(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	-64(%rbp), %r10
	movq	32(%r10), %r10
	movq	%rax, 8(%r10)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_new, .Lfunc_end4-gimp_drawable_new
	.cfi_endproc

	.globl	gimp_drawable_bytes
	.align	16, 0x90
	.type	gimp_drawable_bytes,@function
gimp_drawable_bytes:                    # @gimp_drawable_bytes
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
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
	movabsq	$.L__func__.gimp_drawable_bytes, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB5_28
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$1, (%rax)
	jne	.LBB5_14
# BB#13:                                # %cond.true
	movl	$4, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB5_27
.LBB5_14:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, (%rax)
	jne	.LBB5_16
# BB#15:                                # %cond.true.15
	movl	$3, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB5_26
.LBB5_16:                               # %cond.false.16
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$3, (%rax)
	jne	.LBB5_18
# BB#17:                                # %cond.true.20
	movl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB5_25
.LBB5_18:                               # %cond.false.21
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$2, (%rax)
	jne	.LBB5_20
# BB#19:                                # %cond.true.25
	movl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB5_24
.LBB5_20:                               # %cond.false.26
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$5, (%rax)
	jne	.LBB5_22
# BB#21:                                # %cond.true.30
	movl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB5_23
.LBB5_22:                               # %cond.false.31
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpl	$4, (%rdx)
	cmovel	%ecx, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB5_23:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB5_24:                               # %cond.end.36
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB5_25:                               # %cond.end.38
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB5_26:                               # %cond.end.40
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB5_27:                               # %cond.end.42
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB5_28:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_bytes, .Lfunc_end5-gimp_drawable_bytes
	.cfi_endproc

	.globl	gimp_drawable_estimate_memsize
	.align	16, 0x90
	.type	gimp_drawable_estimate_memsize,@function
gimp_drawable_estimate_memsize:         # @gimp_drawable_estimate_memsize
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
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_estimate_memsize, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	592(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_estimate_memsize, .Lfunc_end6-gimp_drawable_estimate_memsize
	.cfi_endproc

	.globl	gimp_drawable_update
	.align	16, 0x90
	.type	gimp_drawable_update,@function
gimp_drawable_update:                   # @gimp_drawable_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_update, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_drawable_signals, %esi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movb	$0, %al
	callq	g_signal_emit
.LBB7_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_drawable_update, .Lfunc_end7-gimp_drawable_update
	.cfi_endproc

	.globl	gimp_drawable_alpha_changed
	.align	16, 0x90
	.type	gimp_drawable_alpha_changed,@function
gimp_drawable_alpha_changed:            # @gimp_drawable_alpha_changed
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_alpha_changed, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_drawable_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB8_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_drawable_alpha_changed, .Lfunc_end8-gimp_drawable_alpha_changed
	.cfi_endproc

	.globl	gimp_drawable_invalidate_boundary
	.align	16, 0x90
	.type	gimp_drawable_invalidate_boundary,@function
gimp_drawable_invalidate_boundary:      # @gimp_drawable_invalidate_boundary
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_invalidate_boundary, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_14
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 600(%rax)
	je	.LBB9_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rax
	movq	600(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB9_14:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_drawable_invalidate_boundary, .Lfunc_end9-gimp_drawable_invalidate_boundary
	.cfi_endproc

	.globl	gimp_drawable_get_active_components
	.align	16, 0x90
	.type	gimp_drawable_get_active_components,@function
gimp_drawable_get_active_components:    # @gimp_drawable_get_active_components
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_get_active_components, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_19
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_get_active_components, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_19
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 608(%rax)
	je	.LBB10_19
# BB#18:                                # %if.then.19
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB10_19:                              # %if.end.21
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_drawable_get_active_components, .Lfunc_end10-gimp_drawable_get_active_components
	.cfi_endproc

	.globl	gimp_drawable_convert_type
	.align	16, 0x90
	.type	gimp_drawable_convert_type,@function
gimp_drawable_convert_type:             # @gimp_drawable_convert_type
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_type, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_56
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB11_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_16
# BB#15:                                # %if.then.21
	movl	$0, -76(%rbp)
	jmp	.LBB11_21
.LBB11_16:                              # %if.else.22
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_19
# BB#17:                                # %land.lhs.true.25
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB11_19
# BB#18:                                # %if.then.29
	movl	$1, -76(%rbp)
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.30
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB11_20:                              # %if.end.32
	jmp	.LBB11_21
.LBB11_21:                              # %if.end.33
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB11_23
.LBB11_22:                              # %if.then.36
	jmp	.LBB11_24
.LBB11_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_type, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_56
.LBB11_24:                              # %if.end.38
	jmp	.LBB11_25
.LBB11_25:                              # %do.end.39
	jmp	.LBB11_26
.LBB11_26:                              # %do.body.40
	cmpl	$2, -20(%rbp)
	jne	.LBB11_35
# BB#27:                                # %lor.lhs.false.42
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB11_29
# BB#28:                                # %if.then.51
	movl	$0, -100(%rbp)
	jmp	.LBB11_34
.LBB11_29:                              # %if.else.52
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_32
# BB#30:                                # %land.lhs.true.55
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB11_32
# BB#31:                                # %if.then.59
	movl	$1, -100(%rbp)
	jmp	.LBB11_33
.LBB11_32:                              # %if.else.60
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB11_33:                              # %if.end.62
	jmp	.LBB11_34
.LBB11_34:                              # %if.end.63
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB11_36
.LBB11_35:                              # %if.then.66
	jmp	.LBB11_37
.LBB11_36:                              # %if.else.67
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_type, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_56
.LBB11_37:                              # %if.end.68
	jmp	.LBB11_38
.LBB11_38:                              # %do.end.69
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB11_40
# BB#39:                                # %if.then.74
	movl	$0, -24(%rbp)
.LBB11_40:                              # %if.end.75
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -28(%rbp)
# BB#41:                                # %do.body.77
	movl	-20(%rbp), %eax
	cmpl	$0, -28(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB11_43
# BB#42:                                # %lor.lhs.false.79
	cmpl	$1, -28(%rbp)
	jne	.LBB11_44
.LBB11_43:                              # %cond.true
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB11_51
.LBB11_44:                              # %cond.false
	cmpl	$2, -28(%rbp)
	je	.LBB11_46
# BB#45:                                # %lor.lhs.false.82
	cmpl	$3, -28(%rbp)
	jne	.LBB11_47
.LBB11_46:                              # %cond.true.84
	movl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB11_50
.LBB11_47:                              # %cond.false.85
	movb	$1, %al
	cmpl	$4, -28(%rbp)
	movb	%al, -125(%rbp)         # 1-byte Spill
	je	.LBB11_49
# BB#48:                                # %lor.rhs
	cmpl	$5, -28(%rbp)
	sete	%al
	movb	%al, -125(%rbp)         # 1-byte Spill
.LBB11_49:                              # %lor.end
	movb	-125(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB11_50:                              # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB11_51:                              # %cond.end.89
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB11_53
# BB#52:                                # %if.then.92
	jmp	.LBB11_54
.LBB11_53:                              # %if.else.93
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_convert_type, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_56
.LBB11_54:                              # %if.end.94
	jmp	.LBB11_55
.LBB11_55:                              # %do.end.95
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	616(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	*%rax
.LBB11_56:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_drawable_convert_type, .Lfunc_end11-gimp_drawable_convert_type
	.cfi_endproc

	.globl	gimp_drawable_type
	.align	16, 0x90
	.type	gimp_drawable_type,@function
gimp_drawable_type:                     # @gimp_drawable_type
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_type, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB12_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_drawable_type, .Lfunc_end12-gimp_drawable_type
	.cfi_endproc

	.globl	gimp_drawable_apply_region
	.align	16, 0x90
	.type	gimp_drawable_apply_region,@function
gimp_drawable_apply_region:             # @gimp_drawable_apply_region
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp42:
	.cfi_offset %rbx, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	%r11, -72(%rbp)
	movl	%r10d, -76(%rbp)
	movl	%eax, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_region, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_23
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB13_15
# BB#14:                                # %if.then.16
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_region, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_23
.LBB13_16:                              # %if.end.18
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.19
	jmp	.LBB13_18
.LBB13_18:                              # %do.body.20
	cmpq	$0, -24(%rbp)
	je	.LBB13_20
# BB#19:                                # %if.then.22
	jmp	.LBB13_21
.LBB13_20:                              # %if.else.23
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_region, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_23
.LBB13_21:                              # %if.end.24
	jmp	.LBB13_22
.LBB13_22:                              # %do.end.25
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	624(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %r8d
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %r10
	movl	-76(%rbp), %r11d
	movl	-80(%rbp), %ebx
	movq	%r10, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	*%rax
.LBB13_23:                              # %return
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_drawable_apply_region, .Lfunc_end13-gimp_drawable_apply_region
	.cfi_endproc

	.globl	gimp_drawable_replace_region
	.align	16, 0x90
	.type	gimp_drawable_replace_region,@function
gimp_drawable_replace_region:           # @gimp_drawable_replace_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%eax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_replace_region, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_28
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB14_15
# BB#14:                                # %if.then.16
	jmp	.LBB14_16
.LBB14_15:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_replace_region, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_28
.LBB14_16:                              # %if.end.18
	jmp	.LBB14_17
.LBB14_17:                              # %do.end.19
	jmp	.LBB14_18
.LBB14_18:                              # %do.body.20
	cmpq	$0, -16(%rbp)
	je	.LBB14_20
# BB#19:                                # %if.then.22
	jmp	.LBB14_21
.LBB14_20:                              # %if.else.23
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_replace_region, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_28
.LBB14_21:                              # %if.end.24
	jmp	.LBB14_22
.LBB14_22:                              # %do.end.25
	jmp	.LBB14_23
.LBB14_23:                              # %do.body.26
	cmpq	$0, -48(%rbp)
	je	.LBB14_25
# BB#24:                                # %if.then.28
	jmp	.LBB14_26
.LBB14_25:                              # %if.else.29
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_replace_region, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_28
.LBB14_26:                              # %if.end.30
	jmp	.LBB14_27
.LBB14_27:                              # %do.end.31
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	632(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
.LBB14_28:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_drawable_replace_region, .Lfunc_end14-gimp_drawable_replace_region
	.cfi_endproc

	.globl	gimp_drawable_project_region
	.align	16, 0x90
	.type	gimp_drawable_project_region,@function
gimp_drawable_project_region:           # @gimp_drawable_project_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%eax, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_project_region, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_23
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB15_15
# BB#14:                                # %if.then.16
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_project_region, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_23
.LBB15_16:                              # %if.end.18
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.19
	jmp	.LBB15_18
.LBB15_18:                              # %do.body.20
	cmpq	$0, -32(%rbp)
	je	.LBB15_20
# BB#19:                                # %if.then.22
	jmp	.LBB15_21
.LBB15_20:                              # %if.else.23
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_project_region, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_23
.LBB15_21:                              # %if.end.24
	jmp	.LBB15_22
.LBB15_22:                              # %do.end.25
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	640(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	-32(%rbp), %r9
	movl	-36(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
.LBB15_23:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_drawable_project_region, .Lfunc_end15-gimp_drawable_project_region
	.cfi_endproc

	.globl	gimp_drawable_init_src_region
	.align	16, 0x90
	.type	gimp_drawable_init_src_region,@function
gimp_drawable_init_src_region:          # @gimp_drawable_init_src_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$600, %rsp              # imm = 0x258
.Ltmp52:
	.cfi_offset %rbx, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_init_src_region, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_46
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB16_15
# BB#14:                                # %if.then.16
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_init_src_region, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_46
.LBB16_16:                              # %if.end.18
	jmp	.LBB16_17
.LBB16_17:                              # %do.end.19
	jmp	.LBB16_18
.LBB16_18:                              # %do.body.20
	cmpq	$0, -40(%rbp)
	je	.LBB16_20
# BB#19:                                # %if.then.22
	jmp	.LBB16_21
.LBB16_20:                              # %if.else.23
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_init_src_region, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_46
.LBB16_21:                              # %if.end.24
	jmp	.LBB16_22
.LBB16_22:                              # %do.end.25
	jmp	.LBB16_23
.LBB16_23:                              # %do.body.26
	cmpq	$0, -64(%rbp)
	je	.LBB16_25
# BB#24:                                # %if.then.28
	jmp	.LBB16_26
.LBB16_25:                              # %if.else.29
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_init_src_region, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_46
.LBB16_26:                              # %if.end.30
	jmp	.LBB16_27
.LBB16_27:                              # %do.end.31
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_get_floating_sel
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB16_45
# BB#28:                                # %if.then.34
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-72(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-72(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB16_44
# BB#29:                                # %land.lhs.true.51
	movl	-44(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %esi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movq	-72(%rbp), %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	movl	%edx, -396(%rbp)        # 4-byte Spill
	movl	%esi, -400(%rbp)        # 4-byte Spill
	movl	%r8d, -404(%rbp)        # 4-byte Spill
	movl	%r9d, -408(%rbp)        # 4-byte Spill
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-72(%rbp), %rsi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdi
	leaq	-124(%rbp), %r10
	leaq	-128(%rbp), %r11
	movl	-388(%rbp), %ecx        # 4-byte Reload
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	-392(%rbp), %edx        # 4-byte Reload
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movl	-396(%rbp), %edx        # 4-byte Reload
	movl	-400(%rbp), %ecx        # 4-byte Reload
	movl	-404(%rbp), %r8d        # 4-byte Reload
	movl	-408(%rbp), %r9d        # 4-byte Reload
	movl	-420(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-448(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-440(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB16_44
# BB#30:                                # %if.then.61
	movl	$0, -324(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	%edi, -452(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -456(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-452(%rbp), %edi        # 4-byte Reload
	movl	-456(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-192(%rbp), %rdi
	xorl	%edx, %edx
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%esi, -460(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-460(%rbp), %r10d       # 4-byte Reload
	movl	%edx, -464(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-256(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%edx, -468(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-192(%rbp), %rdi
	leaq	-256(%rbp), %rsi
	callq	copy_region
	movq	-72(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-320(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-116(%rbp), %edx
	subl	-108(%rbp), %edx
	movl	-120(%rbp), %r8d
	subl	-112(%rbp), %r8d
	movl	-124(%rbp), %r9d
	movl	-128(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-256(%rbp), %rdi
	movl	$1, %ecx
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	movl	-116(%rbp), %edx
	subl	-44(%rbp), %edx
	subl	-100(%rbp), %edx
	movl	-120(%rbp), %r8d
	subl	-48(%rbp), %r8d
	subl	-104(%rbp), %r8d
	movl	-124(%rbp), %r9d
	movl	-128(%rbp), %r10d
	movl	%ecx, -488(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -344(%rbp)
	cmpq	$0, -336(%rbp)
	jne	.LBB16_32
# BB#31:                                # %if.then.85
	movl	$0, -348(%rbp)
	jmp	.LBB16_37
.LBB16_32:                              # %if.else.86
	movq	-336(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_35
# BB#33:                                # %land.lhs.true.89
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-344(%rbp), %rax
	jne	.LBB16_35
# BB#34:                                # %if.then.93
	movl	$1, -348(%rbp)
	jmp	.LBB16_36
.LBB16_35:                              # %if.else.94
	movq	-336(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -348(%rbp)
.LBB16_36:                              # %if.end.96
	jmp	.LBB16_37
.LBB16_37:                              # %if.end.97
	movl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
	cmpl	$0, -352(%rbp)
	je	.LBB16_41
# BB#38:                                # %if.then.100
	movq	-32(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_lock_alpha
	movl	%eax, -324(%rbp)
	cmpl	$0, -324(%rbp)
	je	.LBB16_40
# BB#39:                                # %if.then.105
	movq	-32(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_layer_set_lock_alpha
.LBB16_40:                              # %if.end.108
	jmp	.LBB16_41
.LBB16_41:                              # %if.end.109
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_opacity
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	callq	gimp_layer_get_mode
	leaq	-320(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	-256(%rbp), %r8
	movl	-116(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	-120(%rbp), %r9d
	subl	-104(%rbp), %r9d
	movq	-512(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-528(%rbp), %r11        # 8-byte Reload
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movsd	-520(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r8, -544(%rbp)         # 8-byte Spill
	movl	%eax, %r8d
	movl	%r9d, -548(%rbp)        # 4-byte Spill
	movq	%r11, %r9
	movq	-544(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	callq	gimp_drawable_apply_region
	cmpl	$0, -324(%rbp)
	je	.LBB16_43
# BB#42:                                # %if.then.115
	movq	-32(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_layer_set_lock_alpha
.LBB16_43:                              # %if.end.118
	xorl	%eax, %eax
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rsi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	jmp	.LBB16_46
.LBB16_44:                              # %if.end.119
	jmp	.LBB16_45
.LBB16_45:                              # %if.end.120
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	xorl	%ecx, %ecx
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -572(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-572(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -576(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.LBB16_46:                              # %return
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_drawable_init_src_region, .Lfunc_end16-gimp_drawable_init_src_region
	.cfi_endproc

	.globl	gimp_drawable_get_floating_sel
	.align	16, 0x90
	.type	gimp_drawable_get_floating_sel,@function
gimp_drawable_get_floating_sel:         # @gimp_drawable_get_floating_sel
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_get_floating_sel, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB17_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_drawable_get_floating_sel, .Lfunc_end17-gimp_drawable_get_floating_sel
	.cfi_endproc

	.globl	gimp_drawable_get_tiles
	.align	16, 0x90
	.type	gimp_drawable_get_tiles,@function
gimp_drawable_get_tiles:                # @gimp_drawable_get_tiles
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_get_tiles, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	648(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB18_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_drawable_get_tiles, .Lfunc_end18-gimp_drawable_get_tiles
	.cfi_endproc

	.globl	gimp_drawable_set_tiles
	.align	16, 0x90
	.type	gimp_drawable_set_tiles,@function
gimp_drawable_set_tiles:                # @gimp_drawable_set_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_set_tiles, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_20
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB19_15
# BB#14:                                # %if.then.13
	jmp	.LBB19_16
.LBB19_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_set_tiles, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_20
.LBB19_16:                              # %if.end.15
	jmp	.LBB19_17
.LBB19_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB19_19
# BB#18:                                # %if.then.21
	movl	$0, -12(%rbp)
.LBB19_19:                              # %if.end.22
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	gimp_drawable_set_tiles_full
.LBB19_20:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_drawable_set_tiles, .Lfunc_end19-gimp_drawable_set_tiles
	.cfi_endproc

	.globl	gimp_drawable_set_tiles_full
	.align	16, 0x90
	.type	gimp_drawable_set_tiles_full,@function
gimp_drawable_set_tiles_full:           # @gimp_drawable_set_tiles_full
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%eax, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_set_tiles_full, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_45
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB20_15
# BB#14:                                # %if.then.13
	jmp	.LBB20_16
.LBB20_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_set_tiles_full, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_45
.LBB20_16:                              # %if.end.15
	jmp	.LBB20_17
.LBB20_17:                              # %do.end.16
	jmp	.LBB20_18
.LBB20_18:                              # %do.body.17
	movq	-32(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, -36(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jne	.LBB20_20
# BB#19:                                # %cond.true
	movl	$4, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB20_33
.LBB20_20:                              # %cond.false
	cmpl	$0, -36(%rbp)
	jne	.LBB20_22
# BB#21:                                # %cond.true.21
	movl	$3, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB20_32
.LBB20_22:                              # %cond.false.22
	cmpl	$3, -36(%rbp)
	jne	.LBB20_24
# BB#23:                                # %cond.true.24
	movl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB20_31
.LBB20_24:                              # %cond.false.25
	cmpl	$2, -36(%rbp)
	jne	.LBB20_26
# BB#25:                                # %cond.true.27
	movl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB20_30
.LBB20_26:                              # %cond.false.28
	cmpl	$5, -36(%rbp)
	jne	.LBB20_28
# BB#27:                                # %cond.true.30
	movl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB20_29
.LBB20_28:                              # %cond.false.31
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -36(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB20_29:                              # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB20_30:                              # %cond.end.34
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB20_31:                              # %cond.end.36
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB20_32:                              # %cond.end.38
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB20_33:                              # %cond.end.40
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB20_35
# BB#34:                                # %if.then.43
	jmp	.LBB20_36
.LBB20_35:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_set_tiles_full, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_45
.LBB20_36:                              # %if.end.45
	jmp	.LBB20_37
.LBB20_37:                              # %do.end.46
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB20_39
# BB#38:                                # %if.then.53
	movl	$0, -12(%rbp)
.LBB20_39:                              # %if.end.54
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	tile_manager_width
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB20_43
# BB#40:                                # %lor.lhs.false
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_height
	movq	-32(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movl	-128(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB20_43
# BB#41:                                # %lor.lhs.false.61
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_offset_x
	cmpl	-40(%rbp), %eax
	jne	.LBB20_43
# BB#42:                                # %lor.lhs.false.64
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_offset_y
	cmpl	-44(%rbp), %eax
	je	.LBB20_44
.LBB20_43:                              # %if.then.67
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB20_44:                              # %if.end.70
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	656(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movl	%r8d, %edx
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB20_45:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_drawable_set_tiles_full, .Lfunc_end20-gimp_drawable_set_tiles_full
	.cfi_endproc

	.globl	gimp_drawable_get_source_node
	.align	16, 0x90
	.type	gimp_drawable_get_source_node,@function
gimp_drawable_get_source_node:          # @gimp_drawable_get_source_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_get_source_node, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB21_15
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB21_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_15
.LBB21_14:                              # %if.end.15
	callq	gegl_node_new
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.21, %r9
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gegl_node_new_child
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_sync_source_node
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB21_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_drawable_get_source_node, .Lfunc_end21-gimp_drawable_get_source_node
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_sync_source_node,@function
gimp_drawable_sync_source_node:         # @gimp_drawable_sync_source_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_floating_sel
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_14
.LBB22_2:                               # %if.end
	movabsq	$.L.str.37, %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdi
	callq	gegl_node_get_output_proxy
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB22_9
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -12(%rbp)
	jne	.LBB22_9
# BB#4:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 48(%rax)
	jne	.LBB22_8
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_source_node
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB22_7
# BB#6:                                 # %if.then.14
	movabsq	$.L.str.36, %rsi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gegl_node_disconnect
	movq	-24(%rbp), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gegl_node_remove_child
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB22_7:                               # %if.end.21
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gegl_node_add_child
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.52, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, 48(%rdx)
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.53, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	24(%rdi), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, 56(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.54, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	24(%rdi), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, 64(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	64(%rax), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.55, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	24(%rdi), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, 72(%rdx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	72(%rax), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.56, %rcx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	64(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	72(%rdx), %rdx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gegl_node_connect_to
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	72(%rdx), %rdi
	movq	-32(%rbp), %rdx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gegl_node_connect_to
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_drawable_fs_notify, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB22_8:                               # %if.end.68
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_opacity
	movabsq	$.L.str.58, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movb	$1, %al
	callq	gegl_node_set
	movq	-8(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	movl	-36(%rbp), %ecx
	subl	-44(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-40(%rbp), %ecx
	subl	-48(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movq	-8(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm2
	movq	-8(%rbp), %rdx
	movsd	%xmm2, -216(%rbp)       # 8-byte Spill
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movabsq	$.L.str.44, %rsi
	movabsq	$.L.str.45, %rdx
	movabsq	$.L.str.59, %rcx
	movabsq	$.L.str.60, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	cvtsi2sdl	%eax, %xmm3
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-216(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movb	$4, %al
	callq	gegl_node_set
	movabsq	$.L.str.44, %rsi
	movabsq	$.L.str.45, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	64(%rdi), %rdi
	movl	-44(%rbp), %r10d
	subl	-36(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm0
	movl	-48(%rbp), %r10d
	subl	-40(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm1
	movb	$2, %al
	callq	gegl_node_set
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	72(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_layer_get_mode
	movabsq	$.L.str.61, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	gegl_node_set
	jmp	.LBB22_14
.LBB22_9:                               # %if.else
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB22_13
# BB#10:                                # %if.then.100
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rdi
	callq	gegl_node_disconnect
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	56(%rdi), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gegl_node_disconnect
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	64(%rdi), %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gegl_node_disconnect
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	72(%rdi), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gegl_node_disconnect
	movabsq	$.L.str.56, %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	72(%rdi), %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gegl_node_disconnect
	movq	-24(%rbp), %rsi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_source_node
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gegl_node_remove_child
	movq	-24(%rbp), %rsi
	cmpq	$0, 64(%rsi)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	je	.LBB22_12
# BB#11:                                # %if.then.125
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gegl_node_add_child
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gegl_node_connect_to
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB22_12:                              # %if.end.132
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	48(%rax), %rsi
	callq	gegl_node_remove_child
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	$0, 48(%rsi)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	24(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gegl_node_remove_child
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	$0, 56(%rsi)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	24(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	64(%rsi), %rsi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gegl_node_remove_child
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	$0, 64(%rsi)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	24(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	72(%rsi), %rsi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gegl_node_remove_child
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_drawable_fs_notify, %rdi
	movq	-8(%rbp), %r9
	movq	32(%r9), %r9
	movq	$0, 72(%r9)
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-328(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB22_13:                              # %if.end.162
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB22_14:                              # %if.end.166
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_drawable_sync_source_node, .Lfunc_end22-gimp_drawable_sync_source_node
	.cfi_endproc

	.globl	gimp_drawable_get_mode_node
	.align	16, 0x90
	.type	gimp_drawable_get_mode_node,@function
gimp_drawable_get_mode_node:            # @gimp_drawable_get_mode_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_get_mode_node, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB23_15
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB23_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB23_14:                              # %if.end.16
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB23_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_drawable_get_mode_node, .Lfunc_end23-gimp_drawable_get_mode_node
	.cfi_endproc

	.globl	gimp_drawable_swap_pixels
	.align	16, 0x90
	.type	gimp_drawable_swap_pixels,@function
gimp_drawable_swap_pixels:              # @gimp_drawable_swap_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_swap_pixels, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_18
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_swap_pixels, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_18
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	672(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
.LBB24_18:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_drawable_swap_pixels, .Lfunc_end24-gimp_drawable_swap_pixels
	.cfi_endproc

	.globl	gimp_drawable_push_undo
	.align	16, 0x90
	.type	gimp_drawable_push_undo,@function
gimp_drawable_push_undo:                # @gimp_drawable_push_undo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movq	%r10, -80(%rbp)
	movl	%eax, -84(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_push_undo, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_38
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	cmpl	$0, -84(%rbp)
	je	.LBB25_15
# BB#14:                                # %lor.lhs.false
	cmpq	$0, -80(%rbp)
	je	.LBB25_16
.LBB25_15:                              # %if.then.14
	jmp	.LBB25_17
.LBB25_16:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_push_undo, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_38
.LBB25_17:                              # %if.end.16
	jmp	.LBB25_18
.LBB25_18:                              # %do.end.17
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
# BB#19:                                # %do.body.20
	movq	-96(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB25_21
# BB#20:                                # %if.then.23
	jmp	.LBB25_22
.LBB25_21:                              # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_push_undo, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_38
.LBB25_22:                              # %if.end.25
	jmp	.LBB25_23
.LBB25_23:                              # %do.end.26
	jmp	.LBB25_24
.LBB25_24:                              # %do.body.27
	cmpl	$0, -84(%rbp)
	je	.LBB25_26
# BB#25:                                # %lor.lhs.false.29
	movq	-80(%rbp), %rdi
	callq	tile_manager_width
	movq	-96(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB25_27
.LBB25_26:                              # %if.then.33
	jmp	.LBB25_28
.LBB25_27:                              # %if.else.34
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_push_undo, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_38
.LBB25_28:                              # %if.end.35
	jmp	.LBB25_29
.LBB25_29:                              # %do.end.36
	jmp	.LBB25_30
.LBB25_30:                              # %do.body.37
	cmpl	$0, -84(%rbp)
	je	.LBB25_32
# BB#31:                                # %lor.lhs.false.39
	movq	-80(%rbp), %rdi
	callq	tile_manager_height
	movq	-96(%rbp), %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-136(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB25_33
.LBB25_32:                              # %if.then.43
	jmp	.LBB25_34
.LBB25_33:                              # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_push_undo, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_38
.LBB25_34:                              # %if.end.45
	jmp	.LBB25_35
.LBB25_35:                              # %do.end.46
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movq	-96(%rbp), %rax
	movl	%edi, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movl	%edx, -152(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-96(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	leaq	-60(%rbp), %rdi
	leaq	-64(%rbp), %r8
	leaq	-68(%rbp), %r9
	leaq	-72(%rbp), %r10
	movl	-140(%rbp), %edx        # 4-byte Reload
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%edx, %edi
	movl	-148(%rbp), %esi        # 4-byte Reload
	movl	-152(%rbp), %edx        # 4-byte Reload
	movl	-144(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-172(%rbp), %ebx        # 4-byte Reload
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movl	%ebx, %r8d
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movl	-156(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-184(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-192(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	jne	.LBB25_37
# BB#36:                                # %if.then.51
	movabsq	$.L.str.26, %rdi
	movabsq	$.L__func__.gimp_drawable_push_undo, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB25_38
.LBB25_37:                              # %if.end.52
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	664(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	-84(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	*%rax
.LBB25_38:                              # %return
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_drawable_push_undo, .Lfunc_end25-gimp_drawable_push_undo
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB26_2
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
.LBB26_2:                               # %entry
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
.Lfunc_end26:
	.size	g_warning, .Lfunc_end26-g_warning
	.cfi_endproc

	.globl	gimp_drawable_fill
	.align	16, 0x90
	.type	gimp_drawable_fill,@function
gimp_drawable_fill:                     # @gimp_drawable_fill
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_fill, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_72
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	jne	.LBB27_15
# BB#14:                                # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	je	.LBB27_16
.LBB27_15:                              # %if.then.14
	jmp	.LBB27_17
.LBB27_16:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_fill, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_72
.LBB27_17:                              # %if.end.16
	jmp	.LBB27_18
.LBB27_18:                              # %do.end.17
	jmp	.LBB27_19
.LBB27_19:                              # %do.body.18
	cmpq	$0, -24(%rbp)
	je	.LBB27_28
# BB#20:                                # %lor.lhs.false.20
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_pattern_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB27_22
# BB#21:                                # %if.then.29
	movl	$0, -156(%rbp)
	jmp	.LBB27_27
.LBB27_22:                              # %if.else.30
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_25
# BB#23:                                # %land.lhs.true.33
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB27_25
# BB#24:                                # %if.then.37
	movl	$1, -156(%rbp)
	jmp	.LBB27_26
.LBB27_25:                              # %if.else.38
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB27_26:                              # %if.end.40
	jmp	.LBB27_27
.LBB27_27:                              # %if.end.41
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB27_29
.LBB27_28:                              # %if.then.44
	jmp	.LBB27_30
.LBB27_29:                              # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_fill, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_72
.LBB27_30:                              # %if.end.46
	jmp	.LBB27_31
.LBB27_31:                              # %do.end.47
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-32(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -208(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-204(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	cmpq	$0, -16(%rbp)
	je	.LBB27_68
# BB#32:                                # %if.then.56
	leaq	-164(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rax, %rdx
	addq	$2, %rdx
	movq	%rax, %rsi
	addq	$3, %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	callq	gimp_rgba_get_uchar
	xorl	%ecx, %ecx
	leaq	-164(%rbp), %r8
	leaq	-168(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_image_transform_color
	cmpl	$1, -44(%rbp)
	je	.LBB27_35
# BB#33:                                # %lor.lhs.false.65
	cmpl	$3, -44(%rbp)
	je	.LBB27_35
# BB#34:                                # %lor.lhs.false.67
	cmpl	$5, -44(%rbp)
	jne	.LBB27_51
.LBB27_35:                              # %if.then.69
	movb	-161(%rbp), %al
	cmpl	$1, -44(%rbp)
	movb	%al, -225(%rbp)         # 1-byte Spill
	jne	.LBB27_37
# BB#36:                                # %cond.true
	movl	$4, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB27_50
.LBB27_37:                              # %cond.false
	cmpl	$0, -44(%rbp)
	jne	.LBB27_39
# BB#38:                                # %cond.true.73
	movl	$3, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB27_49
.LBB27_39:                              # %cond.false.74
	cmpl	$3, -44(%rbp)
	jne	.LBB27_41
# BB#40:                                # %cond.true.76
	movl	$2, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB27_48
.LBB27_41:                              # %cond.false.77
	cmpl	$2, -44(%rbp)
	jne	.LBB27_43
# BB#42:                                # %cond.true.79
	movl	$1, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB27_47
.LBB27_43:                              # %cond.false.80
	cmpl	$5, -44(%rbp)
	jne	.LBB27_45
# BB#44:                                # %cond.true.82
	movl	$2, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB27_46
.LBB27_45:                              # %cond.false.83
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -44(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB27_46:                              # %cond.end
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB27_47:                              # %cond.end.86
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB27_48:                              # %cond.end.88
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB27_49:                              # %cond.end.90
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB27_50:                              # %cond.end.92
	movl	-232(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movslq	%eax, %rcx
	movb	-225(%rbp), %dl         # 1-byte Reload
	movb	%dl, -168(%rbp,%rcx)
	jmp	.LBB27_67
.LBB27_51:                              # %if.else.95
	cmpl	$1, -44(%rbp)
	jne	.LBB27_53
# BB#52:                                # %cond.true.97
	movl	$4, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB27_66
.LBB27_53:                              # %cond.false.98
	cmpl	$0, -44(%rbp)
	jne	.LBB27_55
# BB#54:                                # %cond.true.100
	movl	$3, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB27_65
.LBB27_55:                              # %cond.false.101
	cmpl	$3, -44(%rbp)
	jne	.LBB27_57
# BB#56:                                # %cond.true.103
	movl	$2, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB27_64
.LBB27_57:                              # %cond.false.104
	cmpl	$2, -44(%rbp)
	jne	.LBB27_59
# BB#58:                                # %cond.true.106
	movl	$1, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB27_63
.LBB27_59:                              # %cond.false.107
	cmpl	$5, -44(%rbp)
	jne	.LBB27_61
# BB#60:                                # %cond.true.109
	movl	$2, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB27_62
.LBB27_61:                              # %cond.false.110
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -44(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB27_62:                              # %cond.end.113
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB27_63:                              # %cond.end.115
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB27_64:                              # %cond.end.117
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB27_65:                              # %cond.end.119
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB27_66:                              # %cond.end.121
	movl	-252(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movb	$-1, -168(%rbp,%rcx)
.LBB27_67:                              # %if.end.125
	leaq	-112(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	color_region
	jmp	.LBB27_71
.LBB27_68:                              # %if.else.127
	leaq	-180(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	callq	gimp_image_transform_temp_buf
	leaq	-112(%rbp), %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	xorl	%r8d, %r8d
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdx
	movl	%r8d, %ecx
	callq	pattern_region
	cmpl	$0, -180(%rbp)
	je	.LBB27_70
# BB#69:                                # %if.then.132
	movq	-176(%rbp), %rdi
	callq	temp_buf_free
.LBB27_70:                              # %if.end.133
	jmp	.LBB27_71
.LBB27_71:                              # %if.end.134
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-284(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB27_72:                              # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_drawable_fill, .Lfunc_end27-gimp_drawable_fill
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_drawable_fill_by_type
	.align	16, 0x90
	.type	gimp_drawable_fill_by_type,@function
gimp_drawable_fill_by_type:             # @gimp_drawable_fill_by_type
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_by_type, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_24
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	ja	.LBB28_19
# BB#25:                                # %do.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI28_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB28_13:                              # %sw.bb
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_foreground
	jmp	.LBB28_20
.LBB28_14:                              # %sw.bb.11
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_background
	jmp	.LBB28_20
.LBB28_15:                              # %sw.bb.12
	leaq	-56(%rbp), %rdi
	movsd	.LCPI28_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	jmp	.LBB28_20
.LBB28_16:                              # %sw.bb.13
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-120(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	jmp	.LBB28_20
.LBB28_17:                              # %sw.bb.14
	movq	-16(%rbp), %rdi
	callq	gimp_context_get_pattern
	movq	%rax, -64(%rbp)
	jmp	.LBB28_20
.LBB28_18:                              # %sw.bb.16
	jmp	.LBB28_24
.LBB28_19:                              # %sw.default
	movabsq	$.L.str.29, %rdi
	movabsq	$.L__func__.gimp_drawable_fill_by_type, %rsi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB28_24
.LBB28_20:                              # %sw.epilog
	movq	-8(%rbp), %rdi
	cmpq	$0, -64(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	je	.LBB28_22
# BB#21:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB28_23
.LBB28_22:                              # %cond.false
	leaq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB28_23
.LBB28_23:                              # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_fill
.LBB28_24:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_drawable_fill_by_type, .Lfunc_end28-gimp_drawable_fill_by_type
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI28_0:
	.quad	.LBB28_13
	.quad	.LBB28_14
	.quad	.LBB28_15
	.quad	.LBB28_16
	.quad	.LBB28_17
	.quad	.LBB28_18

	.text
	.globl	gimp_drawable_has_alpha
	.align	16, 0x90
	.type	gimp_drawable_has_alpha,@function
gimp_drawable_has_alpha:                # @gimp_drawable_has_alpha
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_has_alpha, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB29_16
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$1, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB29_15
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB29_15
# BB#14:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB29_15:                              # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB29_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_drawable_has_alpha, .Lfunc_end29-gimp_drawable_has_alpha
	.cfi_endproc

	.globl	gimp_drawable_type_with_alpha
	.align	16, 0x90
	.type	gimp_drawable_type_with_alpha,@function
gimp_drawable_type_with_alpha:          # @gimp_drawable_type_with_alpha
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_type_with_alpha, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB30_23
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB30_14
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB30_15
.LBB30_14:                              # %cond.true
	movl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB30_22
.LBB30_15:                              # %cond.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB30_17
# BB#16:                                # %lor.lhs.false.17
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB30_18
.LBB30_17:                              # %cond.true.20
	movl	$3, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB30_21
.LBB30_18:                              # %cond.false.21
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB30_20
# BB#19:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB30_20:                              # %lor.end
	movb	-49(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
.LBB30_21:                              # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB30_22:                              # %cond.end.27
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB30_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_drawable_type_with_alpha, .Lfunc_end30-gimp_drawable_type_with_alpha
	.cfi_endproc

	.globl	gimp_drawable_type_without_alpha
	.align	16, 0x90
	.type	gimp_drawable_type_without_alpha,@function
gimp_drawable_type_without_alpha:       # @gimp_drawable_type_without_alpha
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_type_without_alpha, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB31_23
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB31_14
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB31_15
.LBB31_14:                              # %cond.true
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB31_22
.LBB31_15:                              # %cond.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB31_17
# BB#16:                                # %lor.lhs.false.17
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB31_18
.LBB31_17:                              # %cond.true.20
	movl	$2, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB31_21
.LBB31_18:                              # %cond.false.21
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB31_20
# BB#19:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB31_20:                              # %lor.end
	movb	-49(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$4, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
.LBB31_21:                              # %cond.end
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB31_22:                              # %cond.end.27
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB31_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_drawable_type_without_alpha, .Lfunc_end31-gimp_drawable_type_without_alpha
	.cfi_endproc

	.globl	gimp_drawable_is_rgb
	.align	16, 0x90
	.type	gimp_drawable_is_rgb,@function
gimp_drawable_is_rgb:                   # @gimp_drawable_is_rgb
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_is_rgb, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB32_15
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB32_14
# BB#13:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB32_14:                              # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB32_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_drawable_is_rgb, .Lfunc_end32-gimp_drawable_is_rgb
	.cfi_endproc

	.globl	gimp_drawable_is_gray
	.align	16, 0x90
	.type	gimp_drawable_is_gray,@function
gimp_drawable_is_gray:                  # @gimp_drawable_is_gray
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_is_gray, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB33_15
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$2, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB33_14
# BB#13:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB33_14:                              # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB33_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_drawable_is_gray, .Lfunc_end33-gimp_drawable_is_gray
	.cfi_endproc

	.globl	gimp_drawable_is_indexed
	.align	16, 0x90
	.type	gimp_drawable_is_indexed,@function
gimp_drawable_is_indexed:               # @gimp_drawable_is_indexed
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_is_indexed, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB34_15
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB34_14
# BB#13:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB34_14:                              # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB34_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_drawable_is_indexed, .Lfunc_end34-gimp_drawable_is_indexed
	.cfi_endproc

	.globl	gimp_drawable_bytes_with_alpha
	.align	16, 0x90
	.type	gimp_drawable_bytes_with_alpha,@function
gimp_drawable_bytes_with_alpha:         # @gimp_drawable_bytes_with_alpha
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_bytes_with_alpha, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB35_38
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB35_14
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB35_15
.LBB35_14:                              # %cond.true
	movl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB35_22
.LBB35_15:                              # %cond.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB35_17
# BB#16:                                # %lor.lhs.false.17
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB35_18
.LBB35_17:                              # %cond.true.20
	movl	$3, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB35_21
.LBB35_18:                              # %cond.false.21
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB35_20
# BB#19:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB35_20:                              # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB35_21:                              # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB35_22:                              # %cond.end.27
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB35_24
# BB#23:                                # %cond.true.30
	movl	$4, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB35_37
.LBB35_24:                              # %cond.false.31
	cmpl	$0, -20(%rbp)
	jne	.LBB35_26
# BB#25:                                # %cond.true.33
	movl	$3, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB35_36
.LBB35_26:                              # %cond.false.34
	cmpl	$3, -20(%rbp)
	jne	.LBB35_28
# BB#27:                                # %cond.true.36
	movl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB35_35
.LBB35_28:                              # %cond.false.37
	cmpl	$2, -20(%rbp)
	jne	.LBB35_30
# BB#29:                                # %cond.true.39
	movl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB35_34
.LBB35_30:                              # %cond.false.40
	cmpl	$5, -20(%rbp)
	jne	.LBB35_32
# BB#31:                                # %cond.true.42
	movl	$2, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB35_33
.LBB35_32:                              # %cond.false.43
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB35_33:                              # %cond.end.46
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB35_34:                              # %cond.end.48
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB35_35:                              # %cond.end.50
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB35_36:                              # %cond.end.52
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB35_37:                              # %cond.end.54
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB35_38:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_drawable_bytes_with_alpha, .Lfunc_end35-gimp_drawable_bytes_with_alpha
	.cfi_endproc

	.globl	gimp_drawable_bytes_without_alpha
	.align	16, 0x90
	.type	gimp_drawable_bytes_without_alpha,@function
gimp_drawable_bytes_without_alpha:      # @gimp_drawable_bytes_without_alpha
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_bytes_without_alpha, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB36_38
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB36_14
# BB#13:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB36_15
.LBB36_14:                              # %cond.true
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB36_22
.LBB36_15:                              # %cond.false
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB36_17
# BB#16:                                # %lor.lhs.false.17
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB36_18
.LBB36_17:                              # %cond.true.20
	movl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB36_21
.LBB36_18:                              # %cond.false.21
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB36_20
# BB#19:                                # %lor.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB36_20:                              # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$4, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB36_21:                              # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB36_22:                              # %cond.end.27
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB36_24
# BB#23:                                # %cond.true.30
	movl	$4, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB36_37
.LBB36_24:                              # %cond.false.31
	cmpl	$0, -20(%rbp)
	jne	.LBB36_26
# BB#25:                                # %cond.true.33
	movl	$3, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB36_36
.LBB36_26:                              # %cond.false.34
	cmpl	$3, -20(%rbp)
	jne	.LBB36_28
# BB#27:                                # %cond.true.36
	movl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB36_35
.LBB36_28:                              # %cond.false.37
	cmpl	$2, -20(%rbp)
	jne	.LBB36_30
# BB#29:                                # %cond.true.39
	movl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB36_34
.LBB36_30:                              # %cond.false.40
	cmpl	$5, -20(%rbp)
	jne	.LBB36_32
# BB#31:                                # %cond.true.42
	movl	$2, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB36_33
.LBB36_32:                              # %cond.false.43
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB36_33:                              # %cond.end.46
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB36_34:                              # %cond.end.48
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB36_35:                              # %cond.end.50
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB36_36:                              # %cond.end.52
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB36_37:                              # %cond.end.54
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB36_38:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_drawable_bytes_without_alpha, .Lfunc_end36-gimp_drawable_bytes_without_alpha
	.cfi_endproc

	.globl	gimp_drawable_get_colormap
	.align	16, 0x90
	.type	gimp_drawable_get_colormap,@function
gimp_drawable_get_colormap:             # @gimp_drawable_get_colormap
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_get_colormap, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB37_16
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB37_14
# BB#13:                                # %cond.true
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB37_15
.LBB37_14:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB37_15
.LBB37_15:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB37_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_drawable_get_colormap, .Lfunc_end37-gimp_drawable_get_colormap
	.cfi_endproc

	.globl	gimp_drawable_attach_floating_sel
	.align	16, 0x90
	.type	gimp_drawable_attach_floating_sel,@function
gimp_drawable_attach_floating_sel:      # @gimp_drawable_attach_floating_sel
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_attach_floating_sel, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB38_39
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	jmp	.LBB38_13
.LBB38_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB38_15
# BB#14:                                # %if.then.16
	jmp	.LBB38_16
.LBB38_15:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_attach_floating_sel, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB38_39
.LBB38_16:                              # %if.end.18
	jmp	.LBB38_17
.LBB38_17:                              # %do.end.19
	jmp	.LBB38_18
.LBB38_18:                              # %do.body.20
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_floating_sel
	cmpq	$0, %rax
	jne	.LBB38_20
# BB#19:                                # %if.then.23
	jmp	.LBB38_21
.LBB38_20:                              # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_attach_floating_sel, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB38_39
.LBB38_21:                              # %if.end.25
	jmp	.LBB38_22
.LBB38_22:                              # %do.end.26
	jmp	.LBB38_23
.LBB38_23:                              # %do.body.27
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB38_25
# BB#24:                                # %if.then.36
	movl	$0, -68(%rbp)
	jmp	.LBB38_30
.LBB38_25:                              # %if.else.37
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_28
# BB#26:                                # %land.lhs.true.40
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB38_28
# BB#27:                                # %if.then.44
	movl	$1, -68(%rbp)
	jmp	.LBB38_29
.LBB38_28:                              # %if.else.45
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB38_29:                              # %if.end.47
	jmp	.LBB38_30
.LBB38_30:                              # %if.end.48
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB38_32
# BB#31:                                # %if.then.51
	jmp	.LBB38_33
.LBB38_32:                              # %if.else.52
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_attach_floating_sel, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB38_39
.LBB38_33:                              # %if.end.53
	jmp	.LBB38_34
.LBB38_34:                              # %do.end.54
	jmp	.LBB38_35
.LBB38_35:                              # %do.body.55
	movl	gimp_log_flags, %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	je	.LBB38_37
# BB#36:                                # %if.then.57
	movl	$2048, %edi             # imm = 0x800
	movabsq	$.L__func__.gimp_drawable_attach_floating_sel, %rax
	movl	$1854, %edx             # imm = 0x73E
	movabsq	$.L.str.32, %rcx
	movq	%rax, %rsi
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB38_37:                              # %if.end.58
	jmp	.LBB38_38
.LBB38_38:                              # %do.end.59
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_floating_selection
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_sync_source_node
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_drawable_fs_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rcx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movl	-132(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	%eax, %r8d
	movq	-152(%rbp), %r9         # 8-byte Reload
	callq	gimp_drawable_fs_update
.LBB38_39:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_drawable_attach_floating_sel, .Lfunc_end38-gimp_drawable_attach_floating_sel
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_fs_update,@function
gimp_drawable_fs_update:                # @gimp_drawable_fs_update
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
.Ltmp129:
	.cfi_offset %rbx, -48
.Ltmp130:
	.cfi_offset %r12, -40
.Ltmp131:
	.cfi_offset %r14, -32
.Ltmp132:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-44(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movl	-48(%rbp), %r8d
	addl	-72(%rbp), %r8d
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %r10d
	movl	-76(%rbp), %r11d
	movl	-80(%rbp), %r9d
	movq	-64(%rbp), %rax
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	movl	%r9d, -136(%rbp)        # 4-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-64(%rbp), %rsi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdi
	leaq	-92(%rbp), %rbx
	leaq	-96(%rbp), %r14
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	-120(%rbp), %edx        # 4-byte Reload
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	-128(%rbp), %ecx        # 4-byte Reload
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	-136(%rbp), %r9d        # 4-byte Reload
	movl	-148(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-176(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-168(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r14, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB39_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movl	-84(%rbp), %eax
	subl	-76(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	-80(%rbp), %ecx
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %r8d
	movl	%eax, %esi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-180(%rbp), %ecx        # 4-byte Reload
	callq	gimp_drawable_update
.LBB39_2:                               # %if.end
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_drawable_fs_update, .Lfunc_end39-gimp_drawable_fs_update
	.cfi_endproc

	.globl	gimp_drawable_detach_floating_sel
	.align	16, 0x90
	.type	gimp_drawable_detach_floating_sel,@function
gimp_drawable_detach_floating_sel:      # @gimp_drawable_detach_floating_sel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_detach_floating_sel, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB40_22
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	jmp	.LBB40_13
.LBB40_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_floating_sel
	cmpq	$0, %rax
	je	.LBB40_15
# BB#14:                                # %if.then.14
	jmp	.LBB40_16
.LBB40_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_detach_floating_sel, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB40_22
.LBB40_16:                              # %if.end.16
	jmp	.LBB40_17
.LBB40_17:                              # %do.end.17
	jmp	.LBB40_18
.LBB40_18:                              # %do.body.18
	movl	gimp_log_flags, %eax
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	je	.LBB40_20
# BB#19:                                # %if.then.20
	movl	$2048, %edi             # imm = 0x800
	movabsq	$.L__func__.gimp_drawable_detach_floating_sel, %rax
	movl	$1886, %edx             # imm = 0x75E
	movabsq	$.L.str.32, %rcx
	movq	%rax, %rsi
	movq	%rax, %r8
	movb	$0, %al
	callq	gimp_log
.LBB40_20:                              # %if.end.21
	jmp	.LBB40_21
.LBB40_21:                              # %do.end.22
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_sync_source_node
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_drawable_fs_update, %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r8, -88(%rbp)          # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-24(%rbp), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-8(%rbp), %r9
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_fs_update
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_image_set_floating_selection
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 40(%rax)
.LBB40_22:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_drawable_detach_floating_sel, .Lfunc_end40-gimp_drawable_detach_floating_sel
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_class_init,@function
gimp_drawable_class_init:               # @gimp_drawable_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp139:
	.cfi_offset %rbx, -56
.Ltmp140:
	.cfi_offset %r12, -48
.Ltmp141:
	.cfi_offset %r13, -40
.Ltmp142:
	.cfi_offset %r14, -32
.Ltmp143:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.33, %rdi
	movl	$1, %edx
	movl	$576, %ecx              # imm = 0x240
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__INT_INT_INT_INT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$4, %r8d
	movl	$24, %r11d
	movl	%r11d, %ebx
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	$24, 24(%rsp)
	movq	$24, 32(%rsp)
	movq	$24, 40(%rsp)
	movq	$24, 48(%rsp)
	movb	$0, %al
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	movq	%r10, -144(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.35, %rdi
	movl	$1, %edx
	movl	$584, %ecx              # imm = 0x248
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	xorl	%r11d, %r11d
	movl	%eax, gimp_drawable_signals
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r11d, -172(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movl	$104, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_drawable_real_swap_pixels, %rdi
	movabsq	$gimp_drawable_real_push_undo, %r8
	movabsq	$gimp_drawable_real_set_tiles, %r9
	movabsq	$gimp_drawable_real_get_tiles, %r10
	movabsq	$gimp_drawable_real_replace_region, %rbx
	movabsq	$gimp_drawable_real_apply_region, %r14
	movabsq	$gimp_drawable_real_convert_type, %r15
	movabsq	$gimp_drawable_real_estimate_memsize, %r12
	movabsq	$gimp_drawable_real_update, %r13
	movabsq	$gimp_drawable_get_node, %r11
	movabsq	$gimp_drawable_transform, %rcx
	movabsq	$gimp_drawable_rotate, %rdx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_flip, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_resize, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_scale, %rcx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_duplicate, %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_visibility_changed, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_removed, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_get_preview, %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_invalidate_preview, %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_get_size, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_get_memsize, %rcx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_finalize, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movabsq	$gimp_drawable_dispose, %rcx
	movl	%eax, gimp_drawable_signals+4
	movq	-56(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 152(%rax)
	movq	-72(%rbp), %rax
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 192(%rax)
	movq	-72(%rbp), %rax
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 176(%rax)
	movq	-72(%rbp), %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 216(%rax)
	movq	-80(%rbp), %rax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 280(%rax)
	movq	-80(%rbp), %rax
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 288(%rax)
	movq	-80(%rbp), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 344(%rax)
	movq	-80(%rbp), %rax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 376(%rax)
	movq	-80(%rbp), %rax
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 384(%rax)
	movq	-80(%rbp), %rax
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 392(%rax)
	movq	-80(%rbp), %rax
	movq	%rdx, 400(%rax)
	movq	-80(%rbp), %rax
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 408(%rax)
	movq	-80(%rbp), %rax
	movq	%r11, 432(%rax)
	movq	-48(%rbp), %rax
	movq	%r13, 576(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 584(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 592(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 600(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 608(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 616(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 624(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 632(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 648(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 656(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 664(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, 672(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_drawable_class_init, .Lfunc_end41-gimp_drawable_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_dispose,@function
gimp_drawable_dispose:                  # @gimp_drawable_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_floating_sel
	cmpq	$0, %rax
	je	.LBB42_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_detach_floating_sel
.LBB42_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_drawable_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_drawable_dispose, .Lfunc_end42-gimp_drawable_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_finalize,@function
gimp_drawable_finalize:                 # @gimp_drawable_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB43_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	tile_manager_unref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 8(%rax)
.LBB43_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_free_shadow_tiles
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB43_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	$0, 24(%rax)
.LBB43_4:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.LBB43_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	callq	gimp_preview_cache_invalidate
.LBB43_6:                               # %if.end.19
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_drawable_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_drawable_finalize, .Lfunc_end43-gimp_drawable_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_get_memsize,@function
gimp_drawable_get_memsize:              # @gimp_drawable_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	tile_manager_get_memsize
	xorl	%esi, %esi
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	callq	tile_manager_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	88(%rax), %rdi
	callq	gimp_preview_cache_get_memsize
	movq	-16(%rbp), %rdi
	addq	(%rdi), %rax
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	movq	gimp_drawable_parent_class, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
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
.Lfunc_end44:
	.size	gimp_drawable_get_memsize, .Lfunc_end44-gimp_drawable_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_get_size,@function
gimp_drawable_get_size:                 # @gimp_drawable_get_size
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_height
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_drawable_get_size, .Lfunc_end45-gimp_drawable_get_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_invalidate_preview,@function
gimp_drawable_invalidate_preview:       # @gimp_drawable_invalidate_preview
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
	callq	gimp_drawable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_drawable_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, 96(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.LBB46_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	callq	gimp_preview_cache_invalidate
.LBB46_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_drawable_invalidate_preview, .Lfunc_end46-gimp_drawable_invalidate_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_removed,@function
gimp_drawable_removed:                  # @gimp_drawable_removed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_free_shadow_tiles
	movq	gimp_drawable_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 280(%rax)
	je	.LBB47_2
# BB#1:                                 # %if.then
	movq	gimp_drawable_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB47_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_drawable_removed, .Lfunc_end47-gimp_drawable_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_visibility_changed,@function
gimp_drawable_visibility_changed:       # @gimp_drawable_visibility_changed
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_peek_node
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB48_14
# BB#1:                                 # %if.then
	movabsq	$.L.str.36, %rsi
	movq	-24(%rbp), %rdi
	callq	gegl_node_get_input_proxy
	movabsq	$.L.str.37, %rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gegl_node_get_output_proxy
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB48_12
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB48_4
# BB#3:                                 # %if.then.9
	movl	$0, -60(%rbp)
	jmp	.LBB48_9
.LBB48_4:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB48_7
# BB#5:                                 # %land.lhs.true.11
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB48_7
# BB#6:                                 # %if.then.13
	movl	$1, -60(%rbp)
	jmp	.LBB48_8
.LBB48_7:                               # %if.else.14
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB48_8:                               # %if.end
	jmp	.LBB48_9
.LBB48_9:                               # %if.end.16
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB48_11
# BB#10:                                # %land.lhs.true.18
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	jne	.LBB48_12
.LBB48_11:                              # %if.then.23
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	80(%rax), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	80(%rdx), %rdi
	movq	-40(%rbp), %rdx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gegl_node_connect_to
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB48_13
.LBB48_12:                              # %if.else.28
	movabsq	$.L.str.36, %rsi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	80(%rax), %rdi
	callq	gegl_node_disconnect
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gegl_node_connect_to
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB48_13:                              # %if.end.33
	jmp	.LBB48_15
.LBB48_14:                              # %if.end.34
	movq	gimp_drawable_parent_class, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	288(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB48_15:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_drawable_visibility_changed, .Lfunc_end48-gimp_drawable_visibility_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_duplicate,@function
gimp_drawable_duplicate:                # @gimp_drawable_duplicate
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB49_3
# BB#2:                                 # %if.then
	jmp	.LBB49_4
.LBB49_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_duplicate, %rsi
	movabsq	$.L.str.38, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB49_17
.LBB49_4:                               # %if.end
	jmp	.LBB49_5
.LBB49_5:                               # %do.end
	movq	gimp_drawable_parent_class, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB49_7
# BB#6:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB49_12
.LBB49_7:                               # %if.else.8
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB49_10
# BB#8:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB49_10
# BB#9:                                 # %if.then.11
	movl	$1, -52(%rbp)
	jmp	.LBB49_11
.LBB49_10:                              # %if.else.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB49_11:                              # %if.end.14
	jmp	.LBB49_12
.LBB49_12:                              # %if.end.15
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB49_16
# BB#13:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movq	-72(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	%eax, (%rsi)
	movq	-72(%rbp), %rsi
	movq	32(%rsi), %rsi
	cmpq	$0, 8(%rsi)
	je	.LBB49_15
# BB#14:                                # %if.then.30
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	tile_manager_unref
.LBB49_15:                              # %if.end.33
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-72(%rbp), %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-244(%rbp), %edi        # 4-byte Reload
	movl	-248(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	-72(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-144(%rbp), %rdi
	xorl	%edx, %edx
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -264(%rbp)        # 4-byte Spill
	movl	-264(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-32(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-208(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -280(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-276(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-144(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	callq	copy_region
.LBB49_16:                              # %if.end.46
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB49_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_drawable_duplicate, .Lfunc_end49-gimp_drawable_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_scale,@function
gimp_drawable_scale:                    # @gimp_drawable_scale
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$400, %rsp              # imm = 0x190
.Ltmp171:
	.cfi_offset %rbx, -48
.Ltmp172:
	.cfi_offset %r12, -40
.Ltmp173:
	.cfi_offset %r14, -32
.Ltmp174:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movq	-80(%rbp), %rax
	movl	%edi, -236(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -240(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-236(%rbp), %edi        # 4-byte Reload
	movl	-240(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_get_image
	movq	32(%rax), %rdi
	callq	gimp_use_gegl
	cmpl	$0, %eax
	je	.LBB50_4
# BB#1:                                 # %land.lhs.true
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	jne	.LBB50_4
# BB#2:                                 # %land.lhs.true.8
	cmpl	$3, -60(%rbp)
	je	.LBB50_4
# BB#3:                                 # %if.then
	callq	gegl_node_get_type
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.39, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movl	-60(%rbp), %r8d
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movl	%r8d, %edi
	callq	gimp_interpolation_to_gegl_filter
	cvtsi2sdl	-44(%rbp), %xmm0
	movq	-40(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	cvtsi2sdl	-48(%rbp), %xmm0
	movq	-40(%rbp), %rdi
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movabsq	$.L.str.40, %rsi
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.41, %rdx
	movabsq	$.L.str.42, %rcx
	movabsq	$.L.str.43, %r9
	xorl	%r8d, %r8d
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.45, %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	cvtsi2sdl	%eax, %xmm1
	movsd	-280(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movq	-248(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-256(%rbp), %r15        # 8-byte Reload
	movl	%r8d, -300(%rbp)        # 4-byte Spill
	movq	%r15, %r8
	movl	$0, (%rsp)
	movq	-288(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm2, -312(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm2
	movq	%r10, 16(%rsp)
	movsd	-312(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	$0, 24(%rsp)
	movb	$4, %al
	movq	%rbx, -320(%rbp)        # 8-byte Spill
	callq	gegl_node_set
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movabsq	$.L.str.46, %rsi
	movl	$10, %r11d
	movl	%r11d, %edx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %r8
	movq	%r8, -328(%rbp)         # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$1, %r8d
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %r9
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_apply_operation_to_tiles
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB50_8
.LBB50_4:                               # %if.else
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-40(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-40(%rbp), %rdi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-348(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-224(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-88(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB50_6
# BB#5:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB50_7
.LBB50_6:                               # %cond.false
	movl	-60(%rbp), %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB50_7:                               # %cond.end
	movl	-356(%rbp), %eax        # 4-byte Reload
	leaq	-160(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$gimp_progress_update_and_flush, %r8
	cmpq	$0, -72(%rbp)
	cmovneq	%r8, %rdx
	movq	-72(%rbp), %r8
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	scale_region
.LBB50_8:                               # %if.end
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %esi
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movl	-380(%rbp), %r8d        # 4-byte Reload
	movl	%esi, -396(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_drawable_set_tiles_full
	movq	-88(%rbp), %rdi
	callq	tile_manager_unref
	addq	$400, %rsp              # imm = 0x190
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_drawable_scale, .Lfunc_end50-gimp_drawable_scale
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_resize,@function
gimp_drawable_resize:                   # @gimp_drawable_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp178:
	.cfi_offset %rbx, -56
.Ltmp179:
	.cfi_offset %r12, -48
.Ltmp180:
	.cfi_offset %r13, -40
.Ltmp181:
	.cfi_offset %r14, -32
.Ltmp182:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movl	-60(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-284(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB51_5
# BB#1:                                 # %land.lhs.true
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-288(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB51_5
# BB#2:                                 # %land.lhs.true.5
	cmpl	$0, -68(%rbp)
	jne	.LBB51_5
# BB#3:                                 # %land.lhs.true.7
	cmpl	$0, -72(%rbp)
	jne	.LBB51_5
# BB#4:                                 # %if.then
	jmp	.LBB51_24
.LBB51_5:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_offset_x
	subl	-68(%rbp), %eax
	movl	%eax, -220(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_offset_y
	subl	-72(%rbp), %eax
	movl	%eax, -224(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_offset_x
	movq	-48(%rbp), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_y
	movq	-48(%rbp), %rdi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-48(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-228(%rbp), %rdi
	leaq	-232(%rbp), %rcx
	leaq	-236(%rbp), %rdx
	leaq	-240(%rbp), %rsi
	movl	-220(%rbp), %r8d
	movl	-224(%rbp), %r9d
	movl	-60(%rbp), %r10d
	movl	-64(%rbp), %r11d
	movl	-292(%rbp), %ebx        # 4-byte Reload
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movl	%ebx, %edi
	movl	-296(%rbp), %r14d       # 4-byte Reload
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movl	%r14d, %esi
	movl	-300(%rbp), %r15d       # 4-byte Reload
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movl	%r15d, %edx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	-312(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-336(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movq	-328(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	-320(%rbp), %r10        # 8-byte Reload
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	movl	%eax, -244(%rbp)
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	movq	-80(%rbp), %r10
	movl	%edi, -340(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movl	%esi, -344(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-340(%rbp), %edi        # 4-byte Reload
	movl	-344(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -216(%rbp)
	cmpl	$0, -244(%rbp)
	je	.LBB51_8
# BB#6:                                 # %lor.lhs.false
	movl	-236(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB51_8
# BB#7:                                 # %lor.lhs.false.20
	movl	-240(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB51_19
.LBB51_8:                               # %if.then.22
	leaq	-208(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$4, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-248(%rbp), %rsi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	%eax, -360(%rbp)        # 4-byte Spill
	callq	memset
	movq	-216(%rbp), %rsi
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	-360(%rbp), %edx        # 4-byte Reload
	movl	-360(%rbp), %ecx        # 4-byte Reload
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB51_18
# BB#9:                                 # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	%rax, -256(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -264(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.LBB51_11
# BB#10:                                # %if.then.28
	movl	$0, -268(%rbp)
	jmp	.LBB51_16
.LBB51_11:                              # %if.else
	movq	-256(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB51_14
# BB#12:                                # %land.lhs.true.30
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-264(%rbp), %rax
	jne	.LBB51_14
# BB#13:                                # %if.then.33
	movl	$1, -268(%rbp)
	jmp	.LBB51_15
.LBB51_14:                              # %if.else.34
	movq	-256(%rbp), %rdi
	movq	-264(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -268(%rbp)
.LBB51_15:                              # %if.end.36
	jmp	.LBB51_16
.LBB51_16:                              # %if.end.37
	movl	-268(%rbp), %eax
	movl	%eax, -272(%rbp)
	cmpl	$0, -272(%rbp)
	jne	.LBB51_18
# BB#17:                                # %if.then.39
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-56(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	leaq	-248(%rbp), %rcx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_get_background
.LBB51_18:                              # %if.end.42
	leaq	-208(%rbp), %rdi
	leaq	-248(%rbp), %rsi
	callq	color_region
.LBB51_19:                              # %if.end.44
	cmpl	$0, -244(%rbp)
	je	.LBB51_23
# BB#20:                                # %land.lhs.true.46
	cmpl	$0, -236(%rbp)
	je	.LBB51_23
# BB#21:                                # %land.lhs.true.48
	cmpl	$0, -240(%rbp)
	je	.LBB51_23
# BB#22:                                # %if.then.50
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	-228(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_x
	movl	-388(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	-232(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_y
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-396(%rbp), %edx        # 4-byte Reload
	subl	%eax, %edx
	movl	-236(%rbp), %r8d
	movl	-240(%rbp), %r9d
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	%edx, -400(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-400(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-208(%rbp), %rdi
	movl	$1, %eax
	movq	-216(%rbp), %rsi
	movl	-228(%rbp), %ecx
	subl	-220(%rbp), %ecx
	movl	-232(%rbp), %edx
	subl	-224(%rbp), %edx
	movl	-236(%rbp), %r8d
	movl	-240(%rbp), %r9d
	movl	%edx, -408(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-408(%rbp), %ecx        # 4-byte Reload
	movl	$1, (%rsp)
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	leaq	-144(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	callq	copy_region
.LBB51_23:                              # %if.end.58
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	movq	-216(%rbp), %rcx
	movq	-80(%rbp), %rdi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	-220(%rbp), %r9d
	movl	-224(%rbp), %esi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movl	-428(%rbp), %r8d        # 4-byte Reload
	movl	%esi, -444(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movl	-444(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_drawable_set_tiles_full
	movq	-216(%rbp), %rdi
	callq	tile_manager_unref
.LBB51_24:                              # %return
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_drawable_resize, .Lfunc_end51-gimp_drawable_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_flip,@function
gimp_drawable_flip:                     # @gimp_drawable_flip
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp186:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_tiles
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %r10d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%r10d, (%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	gimp_drawable_transform_tiles_flip
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB52_2
# BB#1:                                 # %if.then
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	callq	gimp_drawable_transform_paste
	movq	-64(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	tile_manager_unref
.LBB52_2:                               # %if.end
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_drawable_flip, .Lfunc_end52-gimp_drawable_flip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_rotate,@function
gimp_drawable_rotate:                   # @gimp_drawable_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$152, %rsp
.Ltmp190:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_tiles
	leaq	-84(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-52(%rbp), %r10d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%r10d, (%rsp)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	gimp_drawable_transform_tiles_rotate
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB53_2
# BB#1:                                 # %if.then
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	callq	gimp_drawable_transform_paste
	movq	-72(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	tile_manager_unref
.LBB53_2:                               # %if.end
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_drawable_rotate, .Lfunc_end53-gimp_drawable_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_transform,@function
gimp_drawable_transform:                # @gimp_drawable_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
.Ltmp194:
	.cfi_offset %rbx, -56
.Ltmp195:
	.cfi_offset %r12, -48
.Ltmp196:
	.cfi_offset %r13, -40
.Ltmp197:
	.cfi_offset %r14, -32
.Ltmp198:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movl	%r10d, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-96(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_tiles
	leaq	-116(%rbp), %rdx
	leaq	-120(%rbp), %rsi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movq	-64(%rbp), %r9
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movl	-76(%rbp), %ebx
	movl	-80(%rbp), %r14d
	movq	-88(%rbp), %rdi
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-144(%rbp), %r12        # 8-byte Reload
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	-160(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	callq	gimp_drawable_transform_tiles_affine
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB54_2
# BB#1:                                 # %if.then
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	callq	gimp_drawable_transform_paste
	movq	-104(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	tile_manager_unref
.LBB54_2:                               # %if.end
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_drawable_transform, .Lfunc_end54-gimp_drawable_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_get_node,@function
gimp_drawable_get_node:                 # @gimp_drawable_get_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_drawable_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	432(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB55_3
# BB#2:                                 # %if.then
	jmp	.LBB55_4
.LBB55_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.47, %rsi
	movl	$857, %edx              # imm = 0x359
	movabsq	$.L__func__.gimp_drawable_get_node, %rcx
	movabsq	$.L.str.48, %r8
	callq	g_warn_message
.LBB55_4:                               # %if.end
	jmp	.LBB55_5
.LBB55_5:                               # %do.end
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.49, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.36, %rsi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 80(%rcx)
	movq	-24(%rbp), %rdi
	callq	gegl_node_get_input_proxy
	movabsq	$.L.str.37, %rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gegl_node_get_output_proxy
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB55_16
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB55_8
# BB#7:                                 # %if.then.15
	movl	$0, -60(%rbp)
	jmp	.LBB55_13
.LBB55_8:                               # %if.else.16
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB55_11
# BB#9:                                 # %land.lhs.true.18
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB55_11
# BB#10:                                # %if.then.21
	movl	$1, -60(%rbp)
	jmp	.LBB55_12
.LBB55_11:                              # %if.else.22
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB55_12:                              # %if.end.24
	jmp	.LBB55_13
.LBB55_13:                              # %if.end.25
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB55_15
# BB#14:                                # %land.lhs.true.27
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	jne	.LBB55_16
.LBB55_15:                              # %if.then.32
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	80(%rax), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	80(%rdx), %rdi
	movq	-40(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gegl_node_connect_to
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB55_17
.LBB55_16:                              # %if.else.39
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.36, %rcx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB55_17:                              # %if.end.41
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_drawable_get_node, .Lfunc_end55-gimp_drawable_get_node
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_real_update,@function
gimp_drawable_real_update:              # @gimp_drawable_real_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB56_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.50, %rsi
	leaq	-32(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	32(%rdi), %rdi
	movb	$0, %al
	callq	g_object_get
	movl	-12(%rbp), %r8d
	movl	%r8d, -48(%rbp)
	movl	-16(%rbp), %r8d
	movl	%r8d, -44(%rbp)
	movl	-20(%rbp), %r8d
	movl	%r8d, -40(%rbp)
	movl	-24(%rbp), %r8d
	movl	%r8d, -36(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gegl_operation_invalidate
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB56_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_drawable_real_update, .Lfunc_end56-gimp_drawable_real_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_real_estimate_memsize,@function
gimp_drawable_real_estimate_memsize:    # @gimp_drawable_real_estimate_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_bytes
	movslq	%eax, %rdi
	movslq	-12(%rbp), %rcx
	imulq	%rcx, %rdi
	movslq	-16(%rbp), %rcx
	imulq	%rcx, %rdi
	movq	%rdi, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_drawable_real_estimate_memsize, .Lfunc_end57-gimp_drawable_real_estimate_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_real_convert_type,@function
gimp_drawable_real_convert_type:        # @gimp_drawable_real_convert_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$2, -20(%rbp)
	je	.LBB58_3
# BB#2:                                 # %if.then
	jmp	.LBB58_4
.LBB58_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_real_convert_type, %rsi
	movabsq	$.L.str.51, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB58_9
.LBB58_4:                               # %if.end
	jmp	.LBB58_5
.LBB58_5:                               # %do.end
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB58_6
	jmp	.LBB58_10
.LBB58_10:                              # %do.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB58_7
	jmp	.LBB58_8
.LBB58_6:                               # %sw.bb
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gimp_drawable_convert_rgb
	jmp	.LBB58_9
.LBB58_7:                               # %sw.bb.1
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	gimp_drawable_convert_grayscale
	jmp	.LBB58_9
.LBB58_8:                               # %sw.default
	jmp	.LBB58_9
.LBB58_9:                               # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_drawable_real_convert_type, .Lfunc_end58-gimp_drawable_real_convert_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_real_get_tiles,@function
gimp_drawable_real_get_tiles:           # @gimp_drawable_real_get_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	8(%rdi), %rax
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_drawable_real_get_tiles, .Lfunc_end59-gimp_drawable_real_get_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_real_set_tiles,@function
gimp_drawable_real_set_tiles:           # @gimp_drawable_real_set_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%eax, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, -36(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jne	.LBB60_3
# BB#2:                                 # %cond.true
	movl	$4, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB60_16
.LBB60_3:                               # %cond.false
	cmpl	$0, -36(%rbp)
	jne	.LBB60_5
# BB#4:                                 # %cond.true.2
	movl	$3, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB60_15
.LBB60_5:                               # %cond.false.3
	cmpl	$3, -36(%rbp)
	jne	.LBB60_7
# BB#6:                                 # %cond.true.5
	movl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB60_14
.LBB60_7:                               # %cond.false.6
	cmpl	$2, -36(%rbp)
	jne	.LBB60_9
# BB#8:                                 # %cond.true.8
	movl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB60_13
.LBB60_9:                               # %cond.false.9
	cmpl	$5, -36(%rbp)
	jne	.LBB60_11
# BB#10:                                # %cond.true.11
	movl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB60_12
.LBB60_11:                              # %cond.false.12
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -36(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB60_12:                              # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB60_13:                              # %cond.end.15
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB60_14:                              # %cond.end.17
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB60_15:                              # %cond.end.19
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB60_16:                              # %cond.end.21
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	-64(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB60_18
# BB#17:                                # %if.then
	jmp	.LBB60_19
.LBB60_18:                              # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_real_set_tiles, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB60_28
.LBB60_19:                              # %if.end
	jmp	.LBB60_20
.LBB60_20:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_invalidate_boundary
	cmpl	$0, -12(%rbp)
	je	.LBB60_22
# BB#21:                                # %if.then.27
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_undo_push_drawable_mod
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB60_22:                              # %if.end.30
	movq	-32(%rbp), %rdi
	callq	tile_manager_ref
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	cmpq	$0, 8(%rdi)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	je	.LBB60_24
# BB#23:                                # %if.then.34
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	callq	tile_manager_unref
.LBB60_24:                              # %if.end.37
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	gimp_item_set_offset
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	tile_manager_width
	movq	-32(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_item_set_size
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	movl	-128(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	je	.LBB60_26
# BB#25:                                # %if.then.46
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_alpha_changed
.LBB60_26:                              # %if.end.47
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB60_28
# BB#27:                                # %if.then.50
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movabsq	$.L.str.20, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gegl_node_set
.LBB60_28:                              # %if.end.54
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_drawable_real_set_tiles, .Lfunc_end60-gimp_drawable_real_set_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_real_push_undo,@function
gimp_drawable_real_push_undo:           # @gimp_drawable_real_push_undo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$248, %rsp
.Ltmp220:
	.cfi_offset %rbx, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r10d, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	$0, -56(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB61_2
# BB#1:                                 # %if.then
	movl	-48(%rbp), %edi
	movl	-52(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%edi, -188(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -192(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-188(%rbp), %edi        # 4-byte Reload
	movl	-192(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-120(%rbp), %rdi
	xorl	%edx, %edx
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-196(%rbp), %r10d       # 4-byte Reload
	movl	%edx, -200(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-184(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-120(%rbp), %rdi
	leaq	-184(%rbp), %rsi
	callq	copy_region
	movl	$1, -56(%rbp)
.LBB61_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %r10d
	movl	-48(%rbp), %r11d
	movl	-52(%rbp), %ebx
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	gimp_image_undo_push_drawable
	cmpl	$0, -56(%rbp)
	movq	%rax, -224(%rbp)        # 8-byte Spill
	je	.LBB61_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	tile_manager_unref
.LBB61_4:                               # %if.end.9
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_drawable_real_push_undo, .Lfunc_end61-gimp_drawable_real_push_undo
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_real_swap_pixels,@function
gimp_drawable_real_swap_pixels:         # @gimp_drawable_real_swap_pixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp221:
	.cfi_def_cfa_offset 16
.Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp223:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB62_12
# BB#1:                                 # %if.then
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB62_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_4 Depth 2
	movl	-40(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	-36(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB62_11
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB62_2 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB62_4:                               # %for.cond.1
                                        #   Parent Loop BB62_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB62_9
# BB#5:                                 # %for.body.4
                                        #   in Loop: Header=BB62_4 Depth=2
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	tile_is_valid
	cmpl	$0, %eax
	je	.LBB62_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB62_4 Depth=2
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	%rax, %rdi
	callq	tile_manager_get_tile
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	-64(%rbp), %rcx
	callq	tile_manager_map_tile
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	tile_manager_map_tile
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	callq	tile_release
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	tile_release
.LBB62_7:                               # %if.end
                                        #   in Loop: Header=BB62_4 Depth=2
	jmp	.LBB62_8
.LBB62_8:                               # %for.inc
                                        #   in Loop: Header=BB62_4 Depth=2
	movl	$64, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-196(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB62_4
.LBB62_9:                               # %for.end
                                        #   in Loop: Header=BB62_2 Depth=1
	jmp	.LBB62_10
.LBB62_10:                              # %for.inc.13
                                        #   in Loop: Header=BB62_2 Depth=1
	movl	$64, %eax
	movl	-40(%rbp), %ecx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-200(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-40(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	jmp	.LBB62_2
.LBB62_11:                              # %for.end.17
	jmp	.LBB62_13
.LBB62_12:                              # %if.else
	leaq	-128(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-192(%rbp), %rdi
	movl	$1, %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-128(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	callq	swap_region
.LBB62_13:                              # %if.end.19
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	-36(%rbp), %r8d
	callq	gimp_drawable_update
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_drawable_real_swap_pixels, .Lfunc_end62-gimp_drawable_real_swap_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_get_pixel_at,@function
gimp_drawable_get_pixel_at:             # @gimp_drawable_get_pixel_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp224:
	.cfi_def_cfa_offset 16
.Ltmp225:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp226:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB63_4
# BB#1:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-52(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB63_4
# BB#2:                                 # %lor.lhs.false.6
	cmpl	$0, -24(%rbp)
	jl	.LBB63_4
# BB#3:                                 # %lor.lhs.false.8
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-68(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB63_5
.LBB63_4:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB63_6
.LBB63_5:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	tile_manager_read_pixel_data_1
	movl	$1, -4(%rbp)
.LBB63_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_drawable_get_pixel_at, .Lfunc_end63-gimp_drawable_get_pixel_at
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_fs_notify,@function
gimp_drawable_fs_notify:                # @gimp_drawable_fs_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp227:
	.cfi_def_cfa_offset 16
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp229:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdi
	movl	$.L.str.62, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB64_5
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.63, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB64_5
# BB#2:                                 # %lor.lhs.false.4
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.64, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB64_5
# BB#3:                                 # %lor.lhs.false.8
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.65, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB64_5
# BB#4:                                 # %lor.lhs.false.12
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.66, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB64_6
.LBB64_5:                               # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_sync_source_node
.LBB64_6:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_drawable_fs_notify, .Lfunc_end64-gimp_drawable_fs_notify
	.cfi_endproc

	.type	gimp_drawable_get_type.g_define_type_id__volatile,@object # @gimp_drawable_get_type.g_define_type_id__volatile
	.local	gimp_drawable_get_type.g_define_type_id__volatile
	.comm	gimp_drawable_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDrawable"
	.size	.L.str, 13

	.type	gimp_drawable_get_type.g_implement_interface_info,@object # @gimp_drawable_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_drawable_get_type.g_implement_interface_info:
	.quad	gimp_drawable_pickable_iface_init
	.quad	0
	.quad	0
	.size	gimp_drawable_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_drawable_new,@object # @__func__.gimp_drawable_new
.L__func__.gimp_drawable_new:
	.asciz	"gimp_drawable_new"
	.size	.L__func__.gimp_drawable_new, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_type_is_a (type, GIMP_TYPE_DRAWABLE)"
	.size	.L.str.3, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"width > 0 && height > 0"
	.size	.L.str.4, 24

	.type	.L__func__.gimp_drawable_estimate_memsize,@object # @__func__.gimp_drawable_estimate_memsize
.L__func__.gimp_drawable_estimate_memsize:
	.asciz	"gimp_drawable_estimate_memsize"
	.size	.L__func__.gimp_drawable_estimate_memsize, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.5, 28

	.type	.L__func__.gimp_drawable_update,@object # @__func__.gimp_drawable_update
.L__func__.gimp_drawable_update:
	.asciz	"gimp_drawable_update"
	.size	.L__func__.gimp_drawable_update, 21

	.type	gimp_drawable_signals,@object # @gimp_drawable_signals
	.local	gimp_drawable_signals
	.comm	gimp_drawable_signals,8,4
	.type	.L__func__.gimp_drawable_alpha_changed,@object # @__func__.gimp_drawable_alpha_changed
.L__func__.gimp_drawable_alpha_changed:
	.asciz	"gimp_drawable_alpha_changed"
	.size	.L__func__.gimp_drawable_alpha_changed, 28

	.type	.L__func__.gimp_drawable_invalidate_boundary,@object # @__func__.gimp_drawable_invalidate_boundary
.L__func__.gimp_drawable_invalidate_boundary:
	.asciz	"gimp_drawable_invalidate_boundary"
	.size	.L__func__.gimp_drawable_invalidate_boundary, 34

	.type	.L__func__.gimp_drawable_get_active_components,@object # @__func__.gimp_drawable_get_active_components
.L__func__.gimp_drawable_get_active_components:
	.asciz	"gimp_drawable_get_active_components"
	.size	.L__func__.gimp_drawable_get_active_components, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"active != NULL"
	.size	.L.str.6, 15

	.type	.L__func__.gimp_drawable_convert_type,@object # @__func__.gimp_drawable_convert_type
.L__func__.gimp_drawable_convert_type:
	.asciz	"gimp_drawable_convert_type"
	.size	.L__func__.gimp_drawable_convert_type, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dest_image == NULL || GIMP_IS_IMAGE (dest_image)"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"new_base_type != GIMP_INDEXED || GIMP_IS_IMAGE (dest_image)"
	.size	.L.str.8, 60

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"new_base_type != GIMP_IMAGE_TYPE_BASE_TYPE (type)"
	.size	.L.str.9, 50

	.type	.L__func__.gimp_drawable_apply_region,@object # @__func__.gimp_drawable_apply_region
.L__func__.gimp_drawable_apply_region:
	.asciz	"gimp_drawable_apply_region"
	.size	.L__func__.gimp_drawable_apply_region, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.10, 45

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"src2PR != NULL"
	.size	.L.str.11, 15

	.type	.L__func__.gimp_drawable_replace_region,@object # @__func__.gimp_drawable_replace_region
.L__func__.gimp_drawable_replace_region:
	.asciz	"gimp_drawable_replace_region"
	.size	.L__func__.gimp_drawable_replace_region, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"maskPR != NULL"
	.size	.L.str.12, 15

	.type	.L__func__.gimp_drawable_project_region,@object # @__func__.gimp_drawable_project_region
.L__func__.gimp_drawable_project_region:
	.asciz	"gimp_drawable_project_region"
	.size	.L__func__.gimp_drawable_project_region, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"projPR != NULL"
	.size	.L.str.13, 15

	.type	.L__func__.gimp_drawable_init_src_region,@object # @__func__.gimp_drawable_init_src_region
.L__func__.gimp_drawable_init_src_region:
	.asciz	"gimp_drawable_init_src_region"
	.size	.L__func__.gimp_drawable_init_src_region, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"srcPR != NULL"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"temp_tiles != NULL"
	.size	.L.str.15, 19

	.type	.L__func__.gimp_drawable_get_tiles,@object # @__func__.gimp_drawable_get_tiles
.L__func__.gimp_drawable_get_tiles:
	.asciz	"gimp_drawable_get_tiles"
	.size	.L__func__.gimp_drawable_get_tiles, 24

	.type	.L__func__.gimp_drawable_set_tiles,@object # @__func__.gimp_drawable_set_tiles
.L__func__.gimp_drawable_set_tiles:
	.asciz	"gimp_drawable_set_tiles"
	.size	.L__func__.gimp_drawable_set_tiles, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"tiles != NULL"
	.size	.L.str.16, 14

	.type	.L__func__.gimp_drawable_set_tiles_full,@object # @__func__.gimp_drawable_set_tiles_full
.L__func__.gimp_drawable_set_tiles_full:
	.asciz	"gimp_drawable_set_tiles_full"
	.size	.L__func__.gimp_drawable_set_tiles_full, 29

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"tile_manager_bpp (tiles) == GIMP_IMAGE_TYPE_BYTES (type)"
	.size	.L.str.17, 57

	.type	.L__func__.gimp_drawable_get_source_node,@object # @__func__.gimp_drawable_get_source_node
.L__func__.gimp_drawable_get_source_node:
	.asciz	"gimp_drawable_get_source_node"
	.size	.L__func__.gimp_drawable_get_source_node, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"operation"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp:tilemanager-source"
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tile-manager"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"linear"
	.size	.L.str.21, 7

	.type	.L__func__.gimp_drawable_get_mode_node,@object # @__func__.gimp_drawable_get_mode_node
.L__func__.gimp_drawable_get_mode_node:
	.asciz	"gimp_drawable_get_mode_node"
	.size	.L__func__.gimp_drawable_get_mode_node, 28

	.type	.L__func__.gimp_drawable_swap_pixels,@object # @__func__.gimp_drawable_swap_pixels
.L__func__.gimp_drawable_swap_pixels:
	.asciz	"gimp_drawable_swap_pixels"
	.size	.L__func__.gimp_drawable_swap_pixels, 26

	.type	.L__func__.gimp_drawable_push_undo,@object # @__func__.gimp_drawable_push_undo
.L__func__.gimp_drawable_push_undo:
	.asciz	"gimp_drawable_push_undo"
	.size	.L__func__.gimp_drawable_push_undo, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"sparse == FALSE || tiles != NULL"
	.size	.L.str.22, 33

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp_item_is_attached (item)"
	.size	.L.str.23, 29

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"sparse == FALSE || tile_manager_width (tiles) == gimp_item_get_width (item)"
	.size	.L.str.24, 76

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"sparse == FALSE || tile_manager_height (tiles) == gimp_item_get_height (item)"
	.size	.L.str.25, 78

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s: tried to push empty region"
	.size	.L.str.26, 31

	.type	.L__func__.gimp_drawable_fill,@object # @__func__.gimp_drawable_fill
.L__func__.gimp_drawable_fill:
	.asciz	"gimp_drawable_fill"
	.size	.L__func__.gimp_drawable_fill, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"color != NULL || pattern != NULL"
	.size	.L.str.27, 33

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"pattern == NULL || GIMP_IS_PATTERN (pattern)"
	.size	.L.str.28, 45

	.type	.L__func__.gimp_drawable_fill_by_type,@object # @__func__.gimp_drawable_fill_by_type
.L__func__.gimp_drawable_fill_by_type:
	.asciz	"gimp_drawable_fill_by_type"
	.size	.L__func__.gimp_drawable_fill_by_type, 27

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%s: unknown fill type %d"
	.size	.L.str.29, 25

	.type	.L__func__.gimp_drawable_has_alpha,@object # @__func__.gimp_drawable_has_alpha
.L__func__.gimp_drawable_has_alpha:
	.asciz	"gimp_drawable_has_alpha"
	.size	.L__func__.gimp_drawable_has_alpha, 24

	.type	.L__func__.gimp_drawable_type,@object # @__func__.gimp_drawable_type
.L__func__.gimp_drawable_type:
	.asciz	"gimp_drawable_type"
	.size	.L__func__.gimp_drawable_type, 19

	.type	.L__func__.gimp_drawable_type_with_alpha,@object # @__func__.gimp_drawable_type_with_alpha
.L__func__.gimp_drawable_type_with_alpha:
	.asciz	"gimp_drawable_type_with_alpha"
	.size	.L__func__.gimp_drawable_type_with_alpha, 30

	.type	.L__func__.gimp_drawable_type_without_alpha,@object # @__func__.gimp_drawable_type_without_alpha
.L__func__.gimp_drawable_type_without_alpha:
	.asciz	"gimp_drawable_type_without_alpha"
	.size	.L__func__.gimp_drawable_type_without_alpha, 33

	.type	.L__func__.gimp_drawable_is_rgb,@object # @__func__.gimp_drawable_is_rgb
.L__func__.gimp_drawable_is_rgb:
	.asciz	"gimp_drawable_is_rgb"
	.size	.L__func__.gimp_drawable_is_rgb, 21

	.type	.L__func__.gimp_drawable_is_gray,@object # @__func__.gimp_drawable_is_gray
.L__func__.gimp_drawable_is_gray:
	.asciz	"gimp_drawable_is_gray"
	.size	.L__func__.gimp_drawable_is_gray, 22

	.type	.L__func__.gimp_drawable_is_indexed,@object # @__func__.gimp_drawable_is_indexed
.L__func__.gimp_drawable_is_indexed:
	.asciz	"gimp_drawable_is_indexed"
	.size	.L__func__.gimp_drawable_is_indexed, 25

	.type	.L__func__.gimp_drawable_bytes,@object # @__func__.gimp_drawable_bytes
.L__func__.gimp_drawable_bytes:
	.asciz	"gimp_drawable_bytes"
	.size	.L__func__.gimp_drawable_bytes, 20

	.type	.L__func__.gimp_drawable_bytes_with_alpha,@object # @__func__.gimp_drawable_bytes_with_alpha
.L__func__.gimp_drawable_bytes_with_alpha:
	.asciz	"gimp_drawable_bytes_with_alpha"
	.size	.L__func__.gimp_drawable_bytes_with_alpha, 31

	.type	.L__func__.gimp_drawable_bytes_without_alpha,@object # @__func__.gimp_drawable_bytes_without_alpha
.L__func__.gimp_drawable_bytes_without_alpha:
	.asciz	"gimp_drawable_bytes_without_alpha"
	.size	.L__func__.gimp_drawable_bytes_without_alpha, 34

	.type	.L__func__.gimp_drawable_get_colormap,@object # @__func__.gimp_drawable_get_colormap
.L__func__.gimp_drawable_get_colormap:
	.asciz	"gimp_drawable_get_colormap"
	.size	.L__func__.gimp_drawable_get_colormap, 27

	.type	.L__func__.gimp_drawable_get_floating_sel,@object # @__func__.gimp_drawable_get_floating_sel
.L__func__.gimp_drawable_get_floating_sel:
	.asciz	"gimp_drawable_get_floating_sel"
	.size	.L__func__.gimp_drawable_get_floating_sel, 31

	.type	.L__func__.gimp_drawable_attach_floating_sel,@object # @__func__.gimp_drawable_attach_floating_sel
.L__func__.gimp_drawable_attach_floating_sel:
	.asciz	"gimp_drawable_attach_floating_sel"
	.size	.L__func__.gimp_drawable_attach_floating_sel, 34

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp_drawable_get_floating_sel (drawable) == NULL"
	.size	.L.str.30, 50

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"GIMP_IS_LAYER (floating_sel)"
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"update"
	.size	.L.str.33, 7

	.type	.L__func__.gimp_drawable_detach_floating_sel,@object # @__func__.gimp_drawable_detach_floating_sel
.L__func__.gimp_drawable_detach_floating_sel:
	.asciz	"gimp_drawable_detach_floating_sel"
	.size	.L__func__.gimp_drawable_detach_floating_sel, 34

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp_drawable_get_floating_sel (drawable) != NULL"
	.size	.L.str.34, 50

	.type	gimp_drawable_parent_class,@object # @gimp_drawable_parent_class
	.local	gimp_drawable_parent_class
	.comm	gimp_drawable_parent_class,8,8
	.type	GimpDrawable_private_offset,@object # @GimpDrawable_private_offset
	.local	GimpDrawable_private_offset
	.comm	GimpDrawable_private_offset,4,4
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"alpha-changed"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"input"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"output"
	.size	.L.str.37, 7

	.type	.L__func__.gimp_drawable_duplicate,@object # @__func__.gimp_drawable_duplicate
.L__func__.gimp_drawable_duplicate:
	.asciz	"gimp_drawable_duplicate"
	.size	.L__func__.gimp_drawable_duplicate, 24

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)"
	.size	.L.str.38, 43

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gegl:scale"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"origin-x"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"origin-y"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"filter"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"hard-edges"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"x"
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"y"
	.size	.L.str.45, 2

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"undo-type\004Scale"
	.size	.L.str.46, 16

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimpdrawable.c"
	.size	.L.str.47, 15

	.type	.L__func__.gimp_drawable_get_node,@object # @__func__.gimp_drawable_get_node
.L__func__.gimp_drawable_get_node:
	.asciz	"gimp_drawable_get_node"
	.size	.L__func__.gimp_drawable_get_node, 23

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"drawable->private->mode_node == NULL"
	.size	.L.str.48, 37

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gegl:over"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gegl-operation"
	.size	.L.str.50, 15

	.type	.L__func__.gimp_drawable_real_convert_type,@object # @__func__.gimp_drawable_real_convert_type
.L__func__.gimp_drawable_real_convert_type:
	.asciz	"gimp_drawable_real_convert_type"
	.size	.L__func__.gimp_drawable_real_convert_type, 32

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"new_base_type != GIMP_INDEXED"
	.size	.L.str.51, 30

	.type	.L__func__.gimp_drawable_real_set_tiles,@object # @__func__.gimp_drawable_real_set_tiles
.L__func__.gimp_drawable_real_set_tiles:
	.asciz	"gimp_drawable_real_set_tiles"
	.size	.L__func__.gimp_drawable_real_set_tiles, 29

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gegl:crop"
	.size	.L.str.52, 10

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gegl:opacity"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gegl:translate"
	.size	.L.str.54, 15

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp:point-layer-mode"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"aux"
	.size	.L.str.56, 4

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"notify"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"value"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"width"
	.size	.L.str.59, 6

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"height"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"blend-mode"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"offset-x"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"offset-y"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"visible"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"mode"
	.size	.L.str.65, 5

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"opacity"
	.size	.L.str.66, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
