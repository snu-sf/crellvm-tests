	.text
	.file	"gimpmaskundo.bc"
	.globl	gimp_mask_undo_get_type
	.align	16, 0x90
	.type	gimp_mask_undo_get_type,@function
gimp_mask_undo_get_type:                # @gimp_mask_undo_get_type
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
	movq	gimp_mask_undo_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_mask_undo_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_item_undo_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$296, %edx              # imm = 0x128
	movabsq	$gimp_mask_undo_class_intern_init, %rdi
	movl	$96, %r8d
	movabsq	$gimp_mask_undo_init, %rcx
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
	movabsq	$gimp_mask_undo_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_mask_undo_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_mask_undo_get_type, .Lfunc_end0-gimp_mask_undo_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_mask_undo_class_intern_init,@function
gimp_mask_undo_class_intern_init:       # @gimp_mask_undo_class_intern_init
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
	movq	%rax, gimp_mask_undo_parent_class
	cmpl	$0, GimpMaskUndo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMaskUndo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_mask_undo_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_mask_undo_class_intern_init, .Lfunc_end1-gimp_mask_undo_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_mask_undo_init,@function
gimp_mask_undo_init:                    # @gimp_mask_undo_init
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
	.size	gimp_mask_undo_init, .Lfunc_end2-gimp_mask_undo_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_mask_undo_class_init,@function
gimp_mask_undo_class_init:              # @gimp_mask_undo_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_mask_undo_free, %rsi
	movabsq	$gimp_mask_undo_pop, %rdi
	movabsq	$gimp_mask_undo_get_memsize, %rcx
	movabsq	$gimp_mask_undo_constructed, %rdx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 152(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 280(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 288(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_mask_undo_class_init, .Lfunc_end3-gimp_mask_undo_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_mask_undo_constructed,@function
gimp_mask_undo_constructed:             # @gimp_mask_undo_constructed
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_mask_undo_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_mask_undo_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_mask_undo_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	jmp	.LBB4_3
.LBB4_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.9
	movl	$0, -60(%rbp)
	jmp	.LBB4_10
.LBB4_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_8
# BB#7:                                 # %if.then.12
	movl	$1, -60(%rbp)
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.13
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_9:                                # %if.end.15
	jmp	.LBB4_10
.LBB4_10:                               # %if.end.16
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_12
# BB#11:                                # %if.then.18
	jmp	.LBB4_13
.LBB4_12:                               # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$80, %edx
	movabsq	$.L__func__.gimp_mask_undo_constructed, %rcx
	movabsq	$.L.str.3, %r8
	callq	g_assertion_message_expr
.LBB4_13:                               # %if.end.20
	jmp	.LBB4_14
.LBB4_14:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	je	.LBB4_16
# BB#15:                                # %if.then.28
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movl	-36(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movl	-40(%rbp), %edx
	subl	-32(%rbp), %edx
	movq	-72(%rbp), %rdi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	%edx, -248(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-244(%rbp), %edi        # 4-byte Reload
	movl	-248(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	-16(%rbp), %r8
	movq	%rax, 80(%r8)
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 88(%rax)
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %r9d
	subl	-28(%rbp), %r9d
	movl	-40(%rbp), %r10d
	subl	-32(%rbp), %r10d
	movl	%esi, -252(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-252(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-200(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rsi
	movl	-36(%rbp), %r8d
	subl	-28(%rbp), %r8d
	movl	-40(%rbp), %r9d
	subl	-32(%rbp), %r9d
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-136(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	callq	copy_region
.LBB4_16:                               # %if.end.43
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_mask_undo_constructed, .Lfunc_end4-gimp_mask_undo_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_mask_undo_get_memsize,@function
gimp_mask_undo_get_memsize:             # @gimp_mask_undo_get_memsize
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_mask_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	tile_manager_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_mask_undo_parent_class, %rdi
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
.Lfunc_end5:
	.size	gimp_mask_undo_get_memsize, .Lfunc_end5-gimp_mask_undo_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_mask_undo_pop,@function
gimp_mask_undo_pop:                     # @gimp_mask_undo_pop
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	gimp_mask_undo_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -196(%rbp)
	movl	$0, -200(%rbp)
	movq	gimp_mask_undo_parent_class, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	leaq	-180(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	leaq	-188(%rbp), %rcx
	leaq	-192(%rbp), %r8
	movq	-40(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	movl	-188(%rbp), %eax
	subl	-180(%rbp), %eax
	movl	-192(%rbp), %ecx
	subl	-184(%rbp), %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	tile_manager_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %r8d
	movl	-188(%rbp), %r9d
	subl	-180(%rbp), %r9d
	movl	-192(%rbp), %r10d
	subl	-184(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-48(%rbp), %rsi
	movl	-188(%rbp), %r8d
	subl	-180(%rbp), %r8d
	movl	-192(%rbp), %r9d
	subl	-184(%rbp), %r9d
	movl	%edx, -248(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	copy_region
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-112(%rbp), %rdi
	movl	$1, %ecx
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %r8d
	movl	-188(%rbp), %r9d
	subl	-180(%rbp), %r9d
	movl	-192(%rbp), %r10d
	subl	-184(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-112(%rbp), %rdi
	callq	clear_region
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	$0, -48(%rbp)
.LBB6_3:                                # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB6_5
# BB#4:                                 # %if.then.24
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	tile_manager_width
	movl	%eax, -196(%rbp)
	movq	-32(%rbp), %rdi
	movq	80(%rdi), %rdi
	callq	tile_manager_height
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -200(%rbp)
	movq	-32(%rbp), %rdx
	movq	80(%rdx), %rsi
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-40(%rbp), %rsi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-176(%rbp), %rdi
	movl	$1, %ecx
	movq	-32(%rbp), %rsi
	movl	88(%rsi), %edx
	movq	-32(%rbp), %rsi
	movl	92(%rsi), %r8d
	movl	-196(%rbp), %r9d
	movl	-200(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	copy_region
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	callq	tile_manager_unref
.LBB6_5:                                # %if.end.34
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB6_7
# BB#6:                                 # %if.then.39
	movq	-40(%rbp), %rax
	movl	$0, 136(%rax)
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 144(%rax)
	movq	-32(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 148(%rax)
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	addl	-196(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 152(%rax)
	movq	-32(%rbp), %rax
	movl	92(%rax), %ecx
	addl	-200(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 156(%rax)
	jmp	.LBB6_8
.LBB6_7:                                # %if.else.49
	movq	-40(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 148(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-40(%rbp), %rsi
	movl	%eax, 152(%rsi)
	movq	-40(%rbp), %rsi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-40(%rbp), %rsi
	movl	%eax, 156(%rsi)
.LBB6_8:                                # %if.end.61
	movq	-40(%rbp), %rax
	movl	$1, 140(%rax)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movl	-180(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 88(%rax)
	movl	-184(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 92(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-40(%rbp), %rcx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%edx, %edx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-332(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_mask_undo_pop, .Lfunc_end6-gimp_mask_undo_pop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_mask_undo_free,@function
gimp_mask_undo_free:                    # @gimp_mask_undo_free
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_mask_undo_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	tile_manager_unref
	movq	-24(%rbp), %rax
	movq	$0, 80(%rax)
.LBB7_2:                                # %if.end
	movq	gimp_mask_undo_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_undo_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	288(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_mask_undo_free, .Lfunc_end7-gimp_mask_undo_free
	.cfi_endproc

	.type	gimp_mask_undo_get_type.g_define_type_id__volatile,@object # @gimp_mask_undo_get_type.g_define_type_id__volatile
	.local	gimp_mask_undo_get_type.g_define_type_id__volatile
	.comm	gimp_mask_undo_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMaskUndo"
	.size	.L.str, 13

	.type	gimp_mask_undo_parent_class,@object # @gimp_mask_undo_parent_class
	.local	gimp_mask_undo_parent_class
	.comm	gimp_mask_undo_parent_class,8,8
	.type	GimpMaskUndo_private_offset,@object # @GimpMaskUndo_private_offset
	.local	GimpMaskUndo_private_offset
	.comm	GimpMaskUndo_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimpmaskundo.c"
	.size	.L.str.2, 15

	.type	.L__func__.gimp_mask_undo_constructed,@object # @__func__.gimp_mask_undo_constructed
.L__func__.gimp_mask_undo_constructed:
	.asciz	"gimp_mask_undo_constructed"
	.size	.L__func__.gimp_mask_undo_constructed, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CHANNEL (GIMP_ITEM_UNDO (object)->item)"
	.size	.L.str.3, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
