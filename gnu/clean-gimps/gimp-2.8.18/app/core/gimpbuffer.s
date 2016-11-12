	.text
	.file	"gimpbuffer.bc"
	.globl	gimp_buffer_get_type
	.align	16, 0x90
	.type	gimp_buffer_get_type,@function
gimp_buffer_get_type:                   # @gimp_buffer_get_type
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
	movq	gimp_buffer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_buffer_get_type.g_define_type_id__volatile, %rax
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
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_buffer_class_intern_init, %rdi
	movl	$48, %r8d
	movabsq	$gimp_buffer_init, %rcx
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
	movabsq	$gimp_buffer_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_buffer_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_buffer_get_type, .Lfunc_end0-gimp_buffer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_class_intern_init,@function
gimp_buffer_class_intern_init:          # @gimp_buffer_class_intern_init
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
	movq	%rax, gimp_buffer_parent_class
	cmpl	$0, GimpBuffer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBuffer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_buffer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_buffer_class_intern_init, .Lfunc_end1-gimp_buffer_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_init,@function
gimp_buffer_init:                       # @gimp_buffer_init
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
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_buffer_init, .Lfunc_end2-gimp_buffer_init
	.cfi_endproc

	.globl	gimp_buffer_new
	.align	16, 0x90
	.type	gimp_buffer_new,@function
gimp_buffer_new:                        # @gimp_buffer_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_buffer_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_14
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_buffer_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_14
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	callq	gimp_buffer_get_type
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB3_12
# BB#11:                                # %if.then.8
	movq	-16(%rbp), %rdi
	callq	tile_manager_duplicate
	movq	-48(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.11
	movq	-16(%rbp), %rdi
	callq	tile_manager_ref
	movq	-48(%rbp), %rdi
	movq	%rax, 32(%rdi)
.LBB3_13:                               # %if.end.14
	movl	-28(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-32(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-48(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB3_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_buffer_new, .Lfunc_end3-gimp_buffer_new
	.cfi_endproc

	.globl	gimp_buffer_new_from_pixbuf
	.align	16, 0x90
	.type	gimp_buffer_new_from_pixbuf,@function
gimp_buffer_new_from_pixbuf:            # @gimp_buffer_new_from_pixbuf
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gdk_pixbuf_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -164(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -164(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_buffer_new_from_pixbuf, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
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
	movabsq	$.L__func__.gimp_buffer_new_from_pixbuf, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_22
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_width
	movl	%eax, -124(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_height
	movl	%eax, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_rowstride
	movl	%eax, -132(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_n_channels
	movl	%eax, -136(%rbp)
	movl	-124(%rbp), %edi
	movl	-128(%rbp), %esi
	movl	-136(%rbp), %edx
	callq	tile_manager_new
	leaq	-120(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	%esi, -172(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -176(%rbp)        # 4-byte Spill
	movl	-176(%rbp), %ecx        # 4-byte Reload
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$0, -140(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels
	movq	%rax, -56(%rbp)
.LBB4_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-140(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB4_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	leaq	-120(%rbp), %rdi
	xorl	%esi, %esi
	movl	-140(%rbp), %edx
	movl	-124(%rbp), %ecx
	movq	-56(%rbp), %r8
	callq	pixel_region_set_row
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB4_18 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	movl	-132(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB4_18
.LBB4_21:                               # %for.end
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	gimp_buffer_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	tile_manager_unref
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_buffer_new_from_pixbuf, .Lfunc_end4-gimp_buffer_new_from_pixbuf
	.cfi_endproc

	.globl	gimp_buffer_get_width
	.align	16, 0x90
	.type	gimp_buffer_get_width,@function
gimp_buffer_get_width:                  # @gimp_buffer_get_width
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
	callq	gimp_buffer_get_type
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
	movabsq	$.L__func__.gimp_buffer_get_width, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_width
	movl	%eax, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_buffer_get_width, .Lfunc_end5-gimp_buffer_get_width
	.cfi_endproc

	.globl	gimp_buffer_get_height
	.align	16, 0x90
	.type	gimp_buffer_get_height,@function
gimp_buffer_get_height:                 # @gimp_buffer_get_height
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
	callq	gimp_buffer_get_type
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
	movabsq	$.L__func__.gimp_buffer_get_height, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_height
	movl	%eax, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_buffer_get_height, .Lfunc_end6-gimp_buffer_get_height
	.cfi_endproc

	.globl	gimp_buffer_get_bytes
	.align	16, 0x90
	.type	gimp_buffer_get_bytes,@function
gimp_buffer_get_bytes:                  # @gimp_buffer_get_bytes
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_buffer_get_type
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
	movabsq	$.L__func__.gimp_buffer_get_bytes, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_bpp
	movl	%eax, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_buffer_get_bytes, .Lfunc_end7-gimp_buffer_get_bytes
	.cfi_endproc

	.globl	gimp_buffer_get_image_type
	.align	16, 0x90
	.type	gimp_buffer_get_image_type,@function
gimp_buffer_get_image_type:             # @gimp_buffer_get_image_type
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_buffer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_buffer_get_image_type, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_18
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_bpp
	decl	%eax
	movl	%eax, %edi
	subl	$3, %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	ja	.LBB8_17
# BB#19:                                # %do.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_13:                               # %sw.bb
	movl	$2, -4(%rbp)
	jmp	.LBB8_18
.LBB8_14:                               # %sw.bb.12
	movl	$3, -4(%rbp)
	jmp	.LBB8_18
.LBB8_15:                               # %sw.bb.13
	movl	$0, -4(%rbp)
	jmp	.LBB8_18
.LBB8_16:                               # %sw.bb.14
	movl	$1, -4(%rbp)
	jmp	.LBB8_18
.LBB8_17:                               # %sw.epilog
	movl	$0, -4(%rbp)
.LBB8_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_buffer_get_image_type, .Lfunc_end8-gimp_buffer_get_image_type
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_13
	.quad	.LBB8_14
	.quad	.LBB8_15
	.quad	.LBB8_16

	.text
	.globl	gimp_buffer_get_tiles
	.align	16, 0x90
	.type	gimp_buffer_get_tiles,@function
gimp_buffer_get_tiles:                  # @gimp_buffer_get_tiles
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_buffer_get_type
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
	movabsq	$.L__func__.gimp_buffer_get_tiles, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_buffer_get_tiles, .Lfunc_end9-gimp_buffer_get_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_class_init,@function
gimp_buffer_class_init:                 # @gimp_buffer_class_init
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
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_buffer_get_description, %rsi
	movabsq	$gimp_buffer_get_new_preview, %rdi
	movabsq	$gimp_buffer_get_popup_size, %rcx
	movabsq	$gimp_buffer_get_preview_size, %rdx
	movabsq	$gimp_buffer_get_size, %r8
	movabsq	$.L.str.7, %r9
	movabsq	$gimp_buffer_get_memsize, %r10
	movabsq	$gimp_buffer_finalize, %r11
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 152(%rax)
	movq	-32(%rbp), %rax
	movq	%r9, 160(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 192(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 208(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 224(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 248(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_buffer_class_init, .Lfunc_end10-gimp_buffer_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_finalize,@function
gimp_buffer_finalize:                   # @gimp_buffer_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB11_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_buffer_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_buffer_finalize, .Lfunc_end11-gimp_buffer_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_get_memsize,@function
gimp_buffer_get_memsize:                # @gimp_buffer_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_buffer_parent_class, %rdi
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
.Lfunc_end12:
	.size	gimp_buffer_get_memsize, .Lfunc_end12-gimp_buffer_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_get_size,@function
gimp_buffer_get_size:                   # @gimp_buffer_get_size
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_buffer_get_width
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rdi
	callq	gimp_buffer_get_height
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_buffer_get_size, .Lfunc_end13-gimp_buffer_get_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_buffer_get_preview_size,@function
gimp_buffer_get_preview_size:           # @gimp_buffer_get_preview_size
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_buffer_get_width
	movq	-48(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_buffer_get_height
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	-12(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%r10d, %edi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_buffer_get_preview_size, .Lfunc_end14-gimp_buffer_get_preview_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_buffer_get_popup_size,@function
gimp_buffer_get_popup_size:             # @gimp_buffer_get_popup_size
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_buffer_get_width
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_buffer_get_height
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	movl	-64(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB15_5
.LBB15_2:                               # %if.then
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-68(%rbp), %rax
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movl	-24(%rbp), %edx
	shll	$1, %edx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %r10
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	cmpl	$0, -68(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then.6
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB15_4:                               # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB15_6
.LBB15_5:                               # %if.end.7
	movl	$0, -4(%rbp)
.LBB15_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_buffer_get_popup_size, .Lfunc_end15-gimp_buffer_get_popup_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_get_new_preview,@function
gimp_buffer_get_new_preview:            # @gimp_buffer_get_new_preview
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	tile_manager_get_preview
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_buffer_get_new_preview, .Lfunc_end16-gimp_buffer_get_new_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_buffer_get_description,@function
gimp_buffer_get_description:            # @gimp_buffer_get_description
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_buffer_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_buffer_get_height
	movabsq	$.L.str.8, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_strdup_printf
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_buffer_get_description, .Lfunc_end17-gimp_buffer_get_description
	.cfi_endproc

	.type	gimp_buffer_get_type.g_define_type_id__volatile,@object # @gimp_buffer_get_type.g_define_type_id__volatile
	.local	gimp_buffer_get_type.g_define_type_id__volatile
	.comm	gimp_buffer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBuffer"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_buffer_new,@object # @__func__.gimp_buffer_new
.L__func__.gimp_buffer_new:
	.asciz	"gimp_buffer_new"
	.size	.L__func__.gimp_buffer_new, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tiles != NULL"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name != NULL"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"name"
	.size	.L.str.4, 5

	.type	.L__func__.gimp_buffer_new_from_pixbuf,@object # @__func__.gimp_buffer_new_from_pixbuf
.L__func__.gimp_buffer_new_from_pixbuf:
	.asciz	"gimp_buffer_new_from_pixbuf"
	.size	.L__func__.gimp_buffer_new_from_pixbuf, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GDK_IS_PIXBUF (pixbuf)"
	.size	.L.str.5, 23

	.type	.L__func__.gimp_buffer_get_width,@object # @__func__.gimp_buffer_get_width
.L__func__.gimp_buffer_get_width:
	.asciz	"gimp_buffer_get_width"
	.size	.L__func__.gimp_buffer_get_width, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_BUFFER (buffer)"
	.size	.L.str.6, 24

	.type	.L__func__.gimp_buffer_get_height,@object # @__func__.gimp_buffer_get_height
.L__func__.gimp_buffer_get_height:
	.asciz	"gimp_buffer_get_height"
	.size	.L__func__.gimp_buffer_get_height, 23

	.type	.L__func__.gimp_buffer_get_bytes,@object # @__func__.gimp_buffer_get_bytes
.L__func__.gimp_buffer_get_bytes:
	.asciz	"gimp_buffer_get_bytes"
	.size	.L__func__.gimp_buffer_get_bytes, 22

	.type	.L__func__.gimp_buffer_get_image_type,@object # @__func__.gimp_buffer_get_image_type
.L__func__.gimp_buffer_get_image_type:
	.asciz	"gimp_buffer_get_image_type"
	.size	.L__func__.gimp_buffer_get_image_type, 27

	.type	.L__func__.gimp_buffer_get_tiles,@object # @__func__.gimp_buffer_get_tiles
.L__func__.gimp_buffer_get_tiles:
	.asciz	"gimp_buffer_get_tiles"
	.size	.L__func__.gimp_buffer_get_tiles, 22

	.type	gimp_buffer_parent_class,@object # @gimp_buffer_parent_class
	.local	gimp_buffer_parent_class
	.comm	gimp_buffer_parent_class,8,8
	.type	GimpBuffer_private_offset,@object # @GimpBuffer_private_offset
	.local	GimpBuffer_private_offset
	.comm	GimpBuffer_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-paste"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s (%d \303\227 %d)"
	.size	.L.str.8, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
