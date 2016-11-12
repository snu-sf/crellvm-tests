	.text
	.file	"gimpdisplay-foreach.bc"
	.globl	gimp_displays_dirty
	.align	16, 0x90
	.type	gimp_displays_dirty,@function
gimp_displays_dirty:                    # @gimp_displays_dirty
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_displays_dirty, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_23
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -24(%rbp)
.LBB0_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB0_17
# BB#15:                                # %land.lhs.true.17
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-64(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	je	.LBB0_17
# BB#16:                                # %if.then.20
	movl	$1, -4(%rbp)
	jmp	.LBB0_23
.LBB0_17:                               # %if.end.21
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               # %for.inc
                                        #   in Loop: Header=BB0_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_21
.LBB0_20:                               # %cond.false
                                        #   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_21
.LBB0_21:                               # %cond.end
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB0_13
.LBB0_22:                               # %for.end
	movl	$0, -4(%rbp)
.LBB0_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_displays_dirty, .Lfunc_end0-gimp_displays_dirty
	.cfi_endproc

	.globl	gimp_displays_get_dirty_images
	.align	16, 0x90
	.type	gimp_displays_get_dirty_images,@function
gimp_displays_get_dirty_images:         # @gimp_displays_get_dirty_images
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_displays_get_dirty_images, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_25
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_displays_dirty
	cmpl	$0, %eax
	je	.LBB1_24
# BB#13:                                # %if.then.13
	callq	gimp_image_get_type
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_list_new_weak
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_displays_image_dirty_callback, %rdi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	gimp_container_add_handler
	movl	$80, %r8d
	movl	%r8d, %esi
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movl	-60(%rbp), %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_displays_image_dirty_callback, %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_container_add_handler
	movl	$80, %r8d
	movl	%r8d, %esi
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movl	-60(%rbp), %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_displays_dirty_images_disconnect, %rcx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_displays_image_clean_callback, %rcx
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_add_handler
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_displays_image_clean_callback, %rcx
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_container_add_handler
	movq	-16(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_get_image_iter
	movq	%rax, -56(%rbp)
.LBB1_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_23
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_display_count
	cmpl	$0, %eax
	jle	.LBB1_18
# BB#17:                                # %if.then.39
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.43
                                        #   in Loop: Header=BB1_14 Depth=1
	jmp	.LBB1_19
.LBB1_19:                               # %for.inc
                                        #   in Loop: Header=BB1_14 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_22
.LBB1_21:                               # %cond.false
                                        #   in Loop: Header=BB1_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_22
.LBB1_22:                               # %cond.end
                                        #   in Loop: Header=BB1_14 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB1_14
.LBB1_23:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_25
.LBB1_24:                               # %if.end.45
	movq	$0, -8(%rbp)
.LBB1_25:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_displays_get_dirty_images, .Lfunc_end1-gimp_displays_get_dirty_images
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_displays_image_dirty_callback,@function
gimp_displays_image_dirty_callback:     # @gimp_displays_image_dirty_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	je	.LBB2_4
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_display_count
	cmpl	$0, %eax
	jle	.LBB2_4
# BB#2:                                 # %land.lhs.true.2
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB2_4:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_displays_image_dirty_callback, .Lfunc_end2-gimp_displays_image_dirty_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_displays_dirty_images_disconnect,@function
gimp_displays_dirty_images_disconnect:  # @gimp_displays_dirty_images_disconnect
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_container_remove_handler
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_container_remove_handler
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_displays_dirty_images_disconnect, .Lfunc_end3-gimp_displays_dirty_images_disconnect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_displays_image_clean_callback,@function
gimp_displays_image_clean_callback:     # @gimp_displays_image_clean_callback
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB4_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_displays_image_clean_callback, .Lfunc_end4-gimp_displays_image_clean_callback
	.cfi_endproc

	.globl	gimp_displays_delete
	.align	16, 0x90
	.type	gimp_displays_delete,@function
gimp_displays_delete:                   # @gimp_displays_delete
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	416(%rax), %rdi
	callq	gimp_container_is_empty
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB5_2
	jmp	.LBB5_3
.LBB5_2:                                # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_delete
	jmp	.LBB5_1
.LBB5_3:                                # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_displays_delete, .Lfunc_end5-gimp_displays_delete
	.cfi_endproc

	.globl	gimp_displays_close
	.align	16, 0x90
	.type	gimp_displays_close,@function
gimp_displays_close:                    # @gimp_displays_close
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_displays_close, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_20
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	%rax, %rdi
	callq	g_list_copy
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB6_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_display_close
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB6_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB6_18
.LBB6_17:                               # %cond.false
                                        #   in Loop: Header=BB6_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB6_18
.LBB6_18:                               # %cond.end
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB6_13
.LBB6_19:                               # %for.end
	movq	-16(%rbp), %rdi
	callq	g_list_free
.LBB6_20:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_displays_close, .Lfunc_end6-gimp_displays_close
	.cfi_endproc

	.globl	gimp_displays_reconnect
	.align	16, 0x90
	.type	gimp_displays_reconnect,@function
gimp_displays_reconnect:                # @gimp_displays_reconnect
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_displays_reconnect, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_55
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_displays_reconnect, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_55
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.body.39
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB7_27
# BB#26:                                # %if.then.48
	movl	$0, -108(%rbp)
	jmp	.LBB7_32
.LBB7_27:                               # %if.else.49
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_30
# BB#28:                                # %land.lhs.true.52
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB7_30
# BB#29:                                # %if.then.56
	movl	$1, -108(%rbp)
	jmp	.LBB7_31
.LBB7_30:                               # %if.else.57
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB7_31:                               # %if.end.59
	jmp	.LBB7_32
.LBB7_32:                               # %if.end.60
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB7_34
# BB#33:                                # %if.then.63
	jmp	.LBB7_35
.LBB7_34:                               # %if.else.64
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_displays_reconnect, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_55
.LBB7_35:                               # %if.end.65
	jmp	.LBB7_36
.LBB7_36:                               # %do.end.66
	movq	-8(%rbp), %rax
	movq	568(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB7_37:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_45
# BB#38:                                # %for.body
                                        #   in Loop: Header=BB7_37 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_context_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB7_40
# BB#39:                                # %if.then.71
                                        #   in Loop: Header=BB7_37 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_prepend
	movq	%rax, -32(%rbp)
.LBB7_40:                               # %if.end.74
                                        #   in Loop: Header=BB7_37 Depth=1
	jmp	.LBB7_41
.LBB7_41:                               # %for.inc
                                        #   in Loop: Header=BB7_37 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_43
# BB#42:                                # %cond.true
                                        #   in Loop: Header=BB7_37 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_44
.LBB7_43:                               # %cond.false
                                        #   in Loop: Header=BB7_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB7_44
.LBB7_44:                               # %cond.end
                                        #   in Loop: Header=BB7_37 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB7_37
.LBB7_45:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -40(%rbp)
.LBB7_46:                               # %for.cond.77
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_54
# BB#47:                                # %for.body.79
                                        #   in Loop: Header=BB7_46 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB7_49
# BB#48:                                # %if.then.84
                                        #   in Loop: Header=BB7_46 Depth=1
	movq	-128(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_set_image
.LBB7_49:                               # %if.end.85
                                        #   in Loop: Header=BB7_46 Depth=1
	jmp	.LBB7_50
.LBB7_50:                               # %for.inc.86
                                        #   in Loop: Header=BB7_46 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB7_52
# BB#51:                                # %cond.true.88
                                        #   in Loop: Header=BB7_46 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB7_53
.LBB7_52:                               # %cond.false.90
                                        #   in Loop: Header=BB7_46 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB7_53
.LBB7_53:                               # %cond.end.91
                                        #   in Loop: Header=BB7_46 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB7_46
.LBB7_54:                               # %for.end.93
	movabsq	$gimp_context_set_image, %rax
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_list_foreach
	movq	-32(%rbp), %rdi
	callq	g_list_free
.LBB7_55:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_displays_reconnect, .Lfunc_end7-gimp_displays_reconnect
	.cfi_endproc

	.globl	gimp_displays_get_num_visible
	.align	16, 0x90
	.type	gimp_displays_get_num_visible,@function
gimp_displays_get_num_visible:          # @gimp_displays_get_num_visible
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_displays_get_num_visible, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_33
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -24(%rbp)
.LBB8_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB8_32
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB8_27
# BB#15:                                # %if.then.20
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB8_17
# BB#16:                                # %if.then.33
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	$0, -100(%rbp)
	jmp	.LBB8_22
.LBB8_17:                               # %if.else.34
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_20
# BB#18:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB8_20
# BB#19:                                # %if.then.41
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	$1, -100(%rbp)
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.42
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB8_21:                               # %if.end.44
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_22
.LBB8_22:                               # %if.end.45
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB8_26
# BB#23:                                # %if.then.48
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-80(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gdk_window_get_state
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	jne	.LBB8_25
# BB#24:                                # %if.then.54
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB8_25:                               # %if.end.55
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_26
.LBB8_26:                               # %if.end.56
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_27
.LBB8_27:                               # %if.end.57
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_28
.LBB8_28:                               # %for.inc
                                        #   in Loop: Header=BB8_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB8_30
# BB#29:                                # %cond.true
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB8_31
.LBB8_30:                               # %cond.false
                                        #   in Loop: Header=BB8_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB8_31
.LBB8_31:                               # %cond.end
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB8_13
.LBB8_32:                               # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_displays_get_num_visible, .Lfunc_end8-gimp_displays_get_num_visible
	.cfi_endproc

	.globl	gimp_displays_set_busy
	.align	16, 0x90
	.type	gimp_displays_set_busy,@function
gimp_displays_set_busy:                 # @gimp_displays_set_busy
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_displays_set_busy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_19
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -16(%rbp)
.LBB9_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB9_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_display_get_shell
	movl	$150, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_set_override_cursor
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB9_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB9_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB9_18
.LBB9_17:                               # %cond.false
                                        #   in Loop: Header=BB9_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB9_18
.LBB9_18:                               # %cond.end
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB9_13
.LBB9_19:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_displays_set_busy, .Lfunc_end9-gimp_displays_set_busy
	.cfi_endproc

	.globl	gimp_displays_unset_busy
	.align	16, 0x90
	.type	gimp_displays_unset_busy,@function
gimp_displays_unset_busy:               # @gimp_displays_unset_busy
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_displays_unset_busy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_19
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -16(%rbp)
.LBB10_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB10_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_display_get_shell
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_shell_unset_override_cursor
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB10_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB10_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_18
.LBB10_17:                              # %cond.false
                                        #   in Loop: Header=BB10_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_18
.LBB10_18:                              # %cond.end
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB10_13
.LBB10_19:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_displays_unset_busy, .Lfunc_end10-gimp_displays_unset_busy
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_displays_dirty,@object # @__func__.gimp_displays_dirty
.L__func__.gimp_displays_dirty:
	.asciz	"gimp_displays_dirty"
	.size	.L__func__.gimp_displays_dirty, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L__func__.gimp_displays_get_dirty_images,@object # @__func__.gimp_displays_get_dirty_images
.L__func__.gimp_displays_get_dirty_images:
	.asciz	"gimp_displays_get_dirty_images"
	.size	.L__func__.gimp_displays_get_dirty_images, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"clean"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"clean-handler"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dirty"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"dirty-handler"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"disconnect"
	.size	.L.str.6, 11

	.type	.L__func__.gimp_displays_close,@object # @__func__.gimp_displays_close
.L__func__.gimp_displays_close:
	.asciz	"gimp_displays_close"
	.size	.L__func__.gimp_displays_close, 20

	.type	.L__func__.gimp_displays_reconnect,@object # @__func__.gimp_displays_reconnect
.L__func__.gimp_displays_reconnect:
	.asciz	"gimp_displays_reconnect"
	.size	.L__func__.gimp_displays_reconnect, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_IMAGE (old)"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_IMAGE (new)"
	.size	.L.str.8, 20

	.type	.L__func__.gimp_displays_get_num_visible,@object # @__func__.gimp_displays_get_num_visible
.L__func__.gimp_displays_get_num_visible:
	.asciz	"gimp_displays_get_num_visible"
	.size	.L__func__.gimp_displays_get_num_visible, 30

	.type	.L__func__.gimp_displays_set_busy,@object # @__func__.gimp_displays_set_busy
.L__func__.gimp_displays_set_busy:
	.asciz	"gimp_displays_set_busy"
	.size	.L__func__.gimp_displays_set_busy, 23

	.type	.L__func__.gimp_displays_unset_busy,@object # @__func__.gimp_displays_unset_busy
.L__func__.gimp_displays_unset_busy:
	.asciz	"gimp_displays_unset_busy"
	.size	.L__func__.gimp_displays_unset_busy, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
