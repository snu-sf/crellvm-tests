	.text
	.file	"gimpdisplayshell-items.bc"
	.globl	gimp_display_shell_items_init
	.align	16, 0x90
	.type	gimp_display_shell_items_init,@function
gimp_display_shell_items_init:          # @gimp_display_shell_items_init
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_items_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_group_new
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movq	%rax, 448(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_canvas_passe_partout_new
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 456(%rdi)
	movq	-8(%rbp), %rax
	movq	456(%rax), %rdi
	callq	gimp_canvas_item_set_visible
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	456(%rax), %rsi
	callq	gimp_display_shell_add_item
	movq	-8(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_group_new
	movq	-8(%rbp), %rsi
	movq	%rax, 464(%rsi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	464(%rax), %rsi
	callq	gimp_display_shell_add_item
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_proxy_group_new
	movq	-8(%rbp), %rsi
	movq	%rax, 472(%rsi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	472(%rax), %rsi
	callq	gimp_display_shell_add_item
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_grid_new
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 480(%rdi)
	movq	-8(%rbp), %rax
	movq	480(%rax), %rdi
	callq	gimp_canvas_item_set_visible
	movabsq	$.L.str.2, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	480(%rcx), %rsi
	callq	gimp_display_shell_add_item
	movq	-8(%rbp), %rcx
	movq	480(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_proxy_group_new
	movq	-8(%rbp), %rcx
	movq	%rax, 488(%rcx)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	488(%rax), %rsi
	callq	gimp_display_shell_add_item
	movq	-8(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_proxy_group_new
	movq	-8(%rbp), %rcx
	movq	%rax, 496(%rcx)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	496(%rax), %rsi
	callq	gimp_display_shell_add_item
	movq	-8(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_layer_boundary_new
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 504(%rcx)
	movq	-8(%rbp), %rax
	movq	504(%rax), %rdi
	callq	gimp_canvas_item_set_visible
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	504(%rax), %rsi
	callq	gimp_display_shell_add_item
	movq	-8(%rbp), %rax
	movq	504(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_group_new
	movq	-8(%rbp), %rcx
	movq	%rax, 512(%rcx)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	512(%rax), %rsi
	callq	gimp_display_shell_add_item
	movq	-8(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	gimp_canvas_cursor_new
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 520(%rcx)
	movq	-8(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_canvas_item_set_visible
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	520(%rax), %rsi
	callq	gimp_display_shell_add_item
	movq	-8(%rbp), %rax
	movq	520(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_display_shell_item_update, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	448(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_items_init, .Lfunc_end0-gimp_display_shell_items_init
	.cfi_endproc

	.globl	gimp_display_shell_add_item
	.align	16, 0x90
	.type	gimp_display_shell_add_item,@function
gimp_display_shell_add_item:            # @gimp_display_shell_add_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L__func__.gimp_display_shell_add_item, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_25
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_add_item, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_25
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_group_add_item
.LBB1_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_add_item, .Lfunc_end1-gimp_display_shell_add_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_item_update,@function
gimp_display_shell_item_update:         # @gimp_display_shell_item_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_expose_region
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_item_update, .Lfunc_end2-gimp_display_shell_item_update
	.cfi_endproc

	.globl	gimp_display_shell_items_free
	.align	16, 0x90
	.type	gimp_display_shell_items_free,@function
gimp_display_shell_items_free:          # @gimp_display_shell_items_free
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_items_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_14
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 448(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.12
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_display_shell_item_update, %rdx
	movq	-8(%rbp), %rdi
	movq	448(%rdi), %rdi
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
	movq	448(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	$0, 448(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 456(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 464(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 472(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 480(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 488(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 496(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 504(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 512(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 520(%rdi)
.LBB3_14:                               # %if.end.17
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_items_free, .Lfunc_end3-gimp_display_shell_items_free
	.cfi_endproc

	.globl	gimp_display_shell_remove_item
	.align	16, 0x90
	.type	gimp_display_shell_remove_item,@function
gimp_display_shell_remove_item:         # @gimp_display_shell_remove_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_remove_item, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_remove_item, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_group_remove_item
.LBB4_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_remove_item, .Lfunc_end4-gimp_display_shell_remove_item
	.cfi_endproc

	.globl	gimp_display_shell_add_preview_item
	.align	16, 0x90
	.type	gimp_display_shell_add_preview_item,@function
gimp_display_shell_add_preview_item:    # @gimp_display_shell_add_preview_item
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_add_preview_item, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_add_preview_item, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_25
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_group_add_item
.LBB5_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_add_preview_item, .Lfunc_end5-gimp_display_shell_add_preview_item
	.cfi_endproc

	.globl	gimp_display_shell_remove_preview_item
	.align	16, 0x90
	.type	gimp_display_shell_remove_preview_item,@function
gimp_display_shell_remove_preview_item: # @gimp_display_shell_remove_preview_item
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_remove_preview_item, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_remove_preview_item, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_25
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_group_remove_item
.LBB6_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_remove_preview_item, .Lfunc_end6-gimp_display_shell_remove_preview_item
	.cfi_endproc

	.globl	gimp_display_shell_add_tool_item
	.align	16, 0x90
	.type	gimp_display_shell_add_tool_item,@function
gimp_display_shell_add_tool_item:       # @gimp_display_shell_add_tool_item
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_add_tool_item, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_25
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_add_tool_item, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_25
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_group_add_item
.LBB7_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_add_tool_item, .Lfunc_end7-gimp_display_shell_add_tool_item
	.cfi_endproc

	.globl	gimp_display_shell_remove_tool_item
	.align	16, 0x90
	.type	gimp_display_shell_remove_tool_item,@function
gimp_display_shell_remove_tool_item:    # @gimp_display_shell_remove_tool_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_remove_tool_item, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_25
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_canvas_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_remove_tool_item, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_25
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_group_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_canvas_group_remove_item
.LBB8_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_remove_tool_item, .Lfunc_end8-gimp_display_shell_remove_tool_item
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_items_init,@object # @__func__.gimp_display_shell_items_init
.L__func__.gimp_display_shell_items_init:
	.asciz	"gimp_display_shell_items_init"
	.size	.L__func__.gimp_display_shell_items_init, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"grid-style"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"update"
	.size	.L.str.3, 7

	.type	.L__func__.gimp_display_shell_items_free,@object # @__func__.gimp_display_shell_items_free
.L__func__.gimp_display_shell_items_free:
	.asciz	"gimp_display_shell_items_free"
	.size	.L__func__.gimp_display_shell_items_free, 30

	.type	.L__func__.gimp_display_shell_add_item,@object # @__func__.gimp_display_shell_add_item
.L__func__.gimp_display_shell_add_item:
	.asciz	"gimp_display_shell_add_item"
	.size	.L__func__.gimp_display_shell_add_item, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CANVAS_ITEM (item)"
	.size	.L.str.4, 27

	.type	.L__func__.gimp_display_shell_remove_item,@object # @__func__.gimp_display_shell_remove_item
.L__func__.gimp_display_shell_remove_item:
	.asciz	"gimp_display_shell_remove_item"
	.size	.L__func__.gimp_display_shell_remove_item, 31

	.type	.L__func__.gimp_display_shell_add_preview_item,@object # @__func__.gimp_display_shell_add_preview_item
.L__func__.gimp_display_shell_add_preview_item:
	.asciz	"gimp_display_shell_add_preview_item"
	.size	.L__func__.gimp_display_shell_add_preview_item, 36

	.type	.L__func__.gimp_display_shell_remove_preview_item,@object # @__func__.gimp_display_shell_remove_preview_item
.L__func__.gimp_display_shell_remove_preview_item:
	.asciz	"gimp_display_shell_remove_preview_item"
	.size	.L__func__.gimp_display_shell_remove_preview_item, 39

	.type	.L__func__.gimp_display_shell_add_tool_item,@object # @__func__.gimp_display_shell_add_tool_item
.L__func__.gimp_display_shell_add_tool_item:
	.asciz	"gimp_display_shell_add_tool_item"
	.size	.L__func__.gimp_display_shell_add_tool_item, 33

	.type	.L__func__.gimp_display_shell_remove_tool_item,@object # @__func__.gimp_display_shell_remove_tool_item
.L__func__.gimp_display_shell_remove_tool_item:
	.asciz	"gimp_display_shell_remove_tool_item"
	.size	.L__func__.gimp_display_shell_remove_tool_item, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
