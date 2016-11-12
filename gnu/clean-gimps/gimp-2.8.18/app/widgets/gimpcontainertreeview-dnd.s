	.text
	.file	"gimpcontainertreeview-dnd.bc"
	.globl	gimp_container_tree_view_drag_failed
	.align	16, 0x90
	.type	gimp_container_tree_view_drag_failed,@function
gimp_container_tree_view_drag_failed:   # @gimp_container_tree_view_drag_failed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	320(%rcx), %rcx
	cmpl	$0, 48(%rcx)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movl	48(%rax), %edi
	callq	g_source_remove
	movq	-32(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	$0, 48(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rcx
	movq	288(%rcx), %rdi
	callq	gtk_tree_view_set_drag_dest_row
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_tree_view_drag_failed, .Lfunc_end0-gimp_container_tree_view_drag_failed
	.cfi_endproc

	.globl	gimp_container_tree_view_drag_leave
	.align	16, 0x90
	.type	gimp_container_tree_view_drag_leave,@function
gimp_container_tree_view_drag_leave:    # @gimp_container_tree_view_drag_leave
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	320(%rcx), %rcx
	cmpl	$0, 48(%rcx)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movl	48(%rax), %edi
	callq	g_source_remove
	movq	-32(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	$0, 48(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rcx
	movq	288(%rcx), %rdi
	callq	gtk_tree_view_set_drag_dest_row
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_tree_view_drag_leave, .Lfunc_end1-gimp_container_tree_view_drag_leave
	.cfi_endproc

	.globl	gimp_container_tree_view_drag_motion
	.align	16, 0x90
	.type	gimp_container_tree_view_drag_motion,@function
gimp_container_tree_view_drag_motion:   # @gimp_container_tree_view_drag_motion
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
	subq	$144, %rsp
	leaq	-56(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation
	cmpl	$30, -24(%rbp)
	jl	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	$30, %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_17
.LBB2_2:                                # %if.then
	cmpl	$30, -24(%rbp)
	jge	.LBB2_7
# BB#3:                                 # %if.then.3
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	$0, 56(%rcx)
	subl	-24(%rbp), %eax
	cmpl	$-1, %eax
	jge	.LBB2_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB2_6
.LBB2_6:                                # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)
	jmp	.LBB2_11
.LBB2_7:                                # %if.else
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	movl	$1, 56(%rax)
	movl	-44(%rbp), %ecx
	subl	-24(%rbp), %ecx
	cmpl	$1, %ecx
	jle	.LBB2_9
# BB#8:                                 # %cond.true.12
	movl	-44(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB2_10
.LBB2_9:                                # %cond.false.15
	movl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB2_10
.LBB2_10:                               # %cond.end.16
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)
.LBB2_11:                               # %if.end
	cmpl	$0, -72(%rbp)
	jge	.LBB2_13
# BB#12:                                # %cond.true.19
	xorl	%eax, %eax
	subl	-72(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false.21
	movl	-72(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB2_14:                               # %cond.end.22
	movl	-84(%rbp), %eax         # 4-byte Reload
	imull	$5, %eax, %eax
	movq	-40(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	%eax, 52(%rcx)
	movq	-40(%rbp), %rcx
	movq	320(%rcx), %rcx
	cmpl	$0, 48(%rcx)
	jne	.LBB2_16
# BB#15:                                # %if.then.26
	movabsq	$gimp_container_tree_view_scroll_timeout, %rsi
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	movl	52(%rax), %edi
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-40(%rbp), %rdx
	movq	320(%rdx), %rdx
	movl	%eax, 48(%rdx)
.LBB2_16:                               # %if.end.31
	jmp	.LBB2_20
.LBB2_17:                               # %if.else.32
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	cmpl	$0, 48(%rax)
	je	.LBB2_19
# BB#18:                                # %if.then.36
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	movl	48(%rax), %edi
	callq	g_source_remove
	movq	-40(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	$0, 48(%rcx)
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB2_19:                               # %if.end.42
	jmp	.LBB2_20
.LBB2_20:                               # %if.end.43
	leaq	-64(%rbp), %r9
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-68(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r10d
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, 32(%rsp)
	callq	gimp_container_tree_view_drop_status
	cmpl	$0, %eax
	je	.LBB2_22
# BB#21:                                # %if.then.46
	movq	-40(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edx
	callq	gtk_tree_view_set_drag_dest_row
	movq	-64(%rbp), %rdi
	callq	gtk_tree_path_free
	jmp	.LBB2_23
.LBB2_22:                               # %if.else.47
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-40(%rbp), %rcx
	movq	288(%rcx), %rdi
	callq	gtk_tree_view_set_drag_dest_row
.LBB2_23:                               # %if.end.49
	movl	$1, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_container_tree_view_drag_motion, .Lfunc_end2-gimp_container_tree_view_drag_motion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_container_tree_view_scroll_timeout,@function
gimp_container_tree_view_scroll_timeout: # @gimp_container_tree_view_scroll_timeout
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_vadjustment
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB3_3:                                # %if.end
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_5
# BB#4:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	jmp	.LBB3_9
.LBB3_5:                                # %cond.false
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB3_7
# BB#6:                                 # %cond.true.16
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_get_lower
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false.18
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB3_8:                                # %cond.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB3_9:                                # %cond.end.19
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	-16(%rbp), %rdi
	movq	320(%rdi), %rdi
	cmpl	$0, 48(%rdi)
	je	.LBB3_11
# BB#10:                                # %if.then.22
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movl	48(%rax), %edi
	callq	g_source_remove
	movabsq	$gimp_container_tree_view_scroll_timeout, %rsi
	movq	-16(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	52(%rcx), %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_timeout_add
	movq	-16(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	%eax, 48(%rcx)
.LBB3_11:                               # %if.end.30
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_tree_view_scroll_timeout, .Lfunc_end3-gimp_container_tree_view_scroll_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_drop_status,@function
gimp_container_tree_view_drop_status:   # @gimp_container_tree_view_drop_status
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
	pushq	%r14
	pushq	%rbx
	subq	$416, %rsp              # imm = 0x1A0
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movq	48(%rbp), %rax
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movq	16(%rbp), %r14
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	%r14, -72(%rbp)
	movq	%rbx, -80(%rbp)
	movq	%r11, -88(%rbp)
	movq	%r10, -96(%rbp)
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -156(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_container
	cmpq	$0, %rax
	je	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_reorderable
	cmpl	$0, %eax
	jne	.LBB4_3
.LBB4_2:                                # %if.then
	jmp	.LBB4_60
.LBB4_3:                                # %if.end
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_drag_dest_get_target_list
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_drag_dest_find_target
	leaq	-148(%rbp), %rdx
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	gtk_target_list_find
	cmpl	$0, %eax
	jne	.LBB4_5
# BB#4:                                 # %if.then.16
	jmp	.LBB4_60
.LBB4_5:                                # %if.end.17
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	decl	%ecx
	subl	$3, %ecx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	jb	.LBB4_6
	jmp	.LBB4_62
.LBB4_62:                               # %if.end.17
	movl	-332(%rbp), %eax        # 4-byte Reload
	addl	$-5, %eax
	subl	$4, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jb	.LBB4_6
	jmp	.LBB4_63
.LBB4_63:                               # %if.end.17
	movl	-332(%rbp), %eax        # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jne	.LBB4_7
	jmp	.LBB4_6
.LBB4_6:                                # %sw.bb
	jmp	.LBB4_19
.LBB4_7:                                # %sw.default
	movq	-40(%rbp), %rdi
	callq	gtk_drag_get_source_widget
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB4_9
# BB#8:                                 # %if.then.20
	jmp	.LBB4_60
.LBB4_9:                                # %if.end.21
	movq	-168(%rbp), %rdi
	callq	gimp_dnd_get_drag_data
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB4_11
# BB#10:                                # %if.then.25
	movl	$0, -188(%rbp)
	jmp	.LBB4_16
.LBB4_11:                               # %if.else
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_14
# BB#12:                                # %land.lhs.true
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB4_14
# BB#13:                                # %if.then.28
	movl	$1, -188(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               # %if.else.29
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB4_15:                               # %if.end.31
	jmp	.LBB4_16
.LBB4_16:                               # %if.end.32
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	jne	.LBB4_18
# BB#17:                                # %if.then.34
	jmp	.LBB4_60
.LBB4_18:                               # %if.end.35
	jmp	.LBB4_19
.LBB4_19:                               # %sw.epilog
	leaq	-128(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	movq	288(%rsi), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %eax
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-352(%rbp), %r8         # 8-byte Reload
	movq	-352(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gtk_tree_view_get_path_at_pos
	cmpl	$0, %eax
	je	.LBB4_39
# BB#20:                                # %if.then.39
	leaq	-232(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-128(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	leaq	-232(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-200(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-200(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -120(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-248(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	288(%rsi), %rdi
	movq	-128(%rbp), %rsi
	callq	gtk_tree_view_get_cell_area
	movq	-120(%rbp), %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB4_34
# BB#21:                                # %if.then.48
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-128(%rbp), %rsi
	callq	gtk_tree_view_row_expanded
	cmpl	$0, %eax
	je	.LBB4_26
# BB#22:                                # %if.then.52
	movl	$2, %eax
	movl	-48(%rbp), %ecx
	movl	-244(%rbp), %edx
	movl	-236(%rbp), %esi
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -364(%rbp)        # 4-byte Spill
	cltd
	movl	-360(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-364(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	cmpl	%edi, %ecx
	jl	.LBB4_24
# BB#23:                                # %if.then.55
	movl	$3, -152(%rbp)
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.56
	movl	$0, -152(%rbp)
.LBB4_25:                               # %if.end.57
	jmp	.LBB4_33
.LBB4_26:                               # %if.else.58
	movl	$3, %eax
	movl	-48(%rbp), %ecx
	movl	-244(%rbp), %edx
	movl	-236(%rbp), %esi
	movl	%eax, -368(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -372(%rbp)        # 4-byte Spill
	cltd
	movl	-368(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	shll	$1, %eax
	movl	-372(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	cmpl	%edi, %ecx
	jl	.LBB4_28
# BB#27:                                # %if.then.64
	movl	$1, -152(%rbp)
	jmp	.LBB4_32
.LBB4_28:                               # %if.else.65
	movl	$3, %eax
	movl	-48(%rbp), %ecx
	movl	-244(%rbp), %edx
	movl	-236(%rbp), %esi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -380(%rbp)        # 4-byte Spill
	cltd
	movl	-376(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-380(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	cmpl	%edi, %ecx
	jg	.LBB4_30
# BB#29:                                # %if.then.71
	movl	$0, -152(%rbp)
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.72
	movl	$3, -152(%rbp)
.LBB4_31:                               # %if.end.73
	jmp	.LBB4_32
.LBB4_32:                               # %if.end.74
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.75
	jmp	.LBB4_38
.LBB4_34:                               # %if.else.76
	movl	$2, %eax
	movl	-48(%rbp), %ecx
	movl	-244(%rbp), %edx
	movl	-236(%rbp), %esi
	movl	%eax, -384(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -388(%rbp)        # 4-byte Spill
	cltd
	movl	-384(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-388(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	cmpl	%edi, %ecx
	jl	.LBB4_36
# BB#35:                                # %if.then.82
	movl	$1, -152(%rbp)
	jmp	.LBB4_37
.LBB4_36:                               # %if.else.83
	movl	$0, -152(%rbp)
.LBB4_37:                               # %if.end.84
	jmp	.LBB4_38
.LBB4_38:                               # %if.end.85
	jmp	.LBB4_43
.LBB4_39:                               # %if.else.86
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rdi
	callq	gtk_tree_model_iter_n_children
	movl	%eax, -284(%rbp)
	cmpl	$0, -284(%rbp)
	jle	.LBB4_42
# BB#40:                                # %land.lhs.true.93
	leaq	-280(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rdi
	movl	-284(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	callq	gtk_tree_model_iter_nth_child
	cmpl	$0, %eax
	je	.LBB4_42
# BB#41:                                # %if.then.97
	leaq	-280(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-296(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	leaq	-280(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -128(%rbp)
	movq	-296(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$1, -152(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_42:                               # %if.end.104
	jmp	.LBB4_43
.LBB4_43:                               # %if.end.105
	cmpq	$0, -120(%rbp)
	jne	.LBB4_45
# BB#44:                                # %lor.lhs.false.107
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	cmpl	$0, 60(%rax)
	je	.LBB4_59
.LBB4_45:                               # %if.then.109
	leaq	-152(%rbp), %rax
	leaq	-156(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	832(%rdx), %rdx
	movq	-32(%rbp), %rdi
	movl	-148(%rbp), %esi
	movq	-112(%rbp), %r8
	movq	-120(%rbp), %r9
	movq	-128(%rbp), %r10
	movl	-152(%rbp), %r11d
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	%r10, %r8
	movl	%r11d, %r9d
	movq	%rax, (%rsp)
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-400(%rbp), %r10        # 8-byte Reload
	callq	*%r10
	cmpl	$0, %eax
	je	.LBB4_58
# BB#46:                                # %if.then.113
	movq	-40(%rbp), %rdi
	movl	-156(%rbp), %esi
	movl	-52(%rbp), %edx
	callq	gdk_drag_status
	cmpq	$0, -64(%rbp)
	je	.LBB4_48
# BB#47:                                # %if.then.115
	movq	-128(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB4_49
.LBB4_48:                               # %if.else.116
	movq	-128(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB4_49:                               # %if.end.117
	cmpq	$0, -72(%rbp)
	je	.LBB4_51
# BB#50:                                # %if.then.119
	movq	-144(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_51:                               # %if.end.120
	cmpq	$0, -88(%rbp)
	je	.LBB4_53
# BB#52:                                # %if.then.122
	movq	-112(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_53:                               # %if.end.123
	cmpq	$0, -96(%rbp)
	je	.LBB4_55
# BB#54:                                # %if.then.125
	movq	-120(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_55:                               # %if.end.126
	cmpq	$0, -104(%rbp)
	je	.LBB4_57
# BB#56:                                # %if.then.128
	movl	-152(%rbp), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB4_57:                               # %if.end.129
	movl	$1, -20(%rbp)
	jmp	.LBB4_61
.LBB4_58:                               # %if.end.130
	movq	-128(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB4_59:                               # %if.end.131
	jmp	.LBB4_60
.LBB4_60:                               # %drop_impossible
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %edx
	callq	gdk_drag_status
	movl	$0, -20(%rbp)
.LBB4_61:                               # %return
	movl	-20(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_tree_view_drop_status, .Lfunc_end4-gimp_container_tree_view_drop_status
	.cfi_endproc

	.globl	gimp_container_tree_view_drag_drop
	.align	16, 0x90
	.type	gimp_container_tree_view_drag_drop,@function
gimp_container_tree_view_drag_drop:     # @gimp_container_tree_view_drag_drop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movq	%r9, -88(%rbp)
	movq	-88(%rbp), %rsi
	movq	320(%rsi), %rsi
	cmpl	$0, 48(%rsi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rax
	movq	320(%rax), %rax
	movl	48(%rax), %edi
	callq	g_source_remove
	movq	-88(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	$0, 48(%rcx)
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB5_2:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %r9d
	leaq	-120(%rbp), %rcx
	leaq	-92(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	leaq	-124(%rbp), %r8
	movq	-88(%rbp), %r10
	movq	-64(%rbp), %r11
	movl	-68(%rbp), %eax
	movl	-72(%rbp), %ebx
	movl	-76(%rbp), %r14d
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movl	%r14d, %r8d
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-160(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-152(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-184(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	callq	gimp_container_tree_view_drop_status
	cmpl	$0, %eax
	je	.LBB5_7
# BB#3:                                 # %if.then.7
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB5_5
# BB#4:                                 # %if.then.9
	movl	$1, -140(%rbp)
	movq	-136(%rbp), %rax
	movq	840(%rax), %rax
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movl	-124(%rbp), %ecx
	callq	*%rax
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-76(%rbp), %ecx
	callq	gtk_drag_finish
	jmp	.LBB5_6
.LBB5_5:                                # %if.else
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movl	-76(%rbp), %ecx
	callq	gtk_drag_get_data
.LBB5_6:                                # %if.end.10
	movl	$1, -44(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %if.end.11
	movl	$0, -44(%rbp)
.LBB5_8:                                # %return
	movl	-44(%rbp), %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_tree_view_drag_drop, .Lfunc_end5-gimp_container_tree_view_drag_drop
	.cfi_endproc

	.globl	gimp_container_tree_view_drag_data_received
	.align	16, 0x90
	.type	gimp_container_tree_view_drag_data_received,@function
gimp_container_tree_view_drag_data_received: # @gimp_container_tree_view_drag_data_received
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
.Ltmp28:
	.cfi_offset %rbx, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	leaq	-80(%rbp), %r14
	leaq	-84(%rbp), %r15
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movl	%r10d, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	$0, -88(%rbp)
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	%rbx, %r9
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%r14, 24(%rsp)
	movq	%r15, 32(%rsp)
	callq	gimp_container_tree_view_drop_status
	cmpl	$0, %eax
	je	.LBB6_31
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	-60(%rbp), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$9, %ecx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	ja	.LBB6_29
# BB#32:                                # %if.then
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_2:                                # %sw.bb
	movq	-96(%rbp), %rax
	cmpq	$0, 856(%rax)
	je	.LBB6_6
# BB#3:                                 # %if.then.2
	movq	-56(%rbp), %rdi
	callq	gimp_selection_data_get_uri_list
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.5
	movq	-96(%rbp), %rax
	movq	856(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	-84(%rbp), %ecx
	callq	*%rax
	movabsq	$g_free, %rsi
	movq	-104(%rbp), %rdi
	callq	g_list_free_full
	movl	$1, -88(%rbp)
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %if.end.7
	jmp	.LBB6_30
.LBB6_7:                                # %sw.bb.8
	movq	-96(%rbp), %rax
	cmpq	$0, 848(%rax)
	je	.LBB6_11
# BB#8:                                 # %if.then.10
	leaq	-136(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gimp_selection_data_get_color
	cmpl	$0, %eax
	je	.LBB6_10
# BB#9:                                 # %if.then.13
	leaq	-136(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	848(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movl	-84(%rbp), %ecx
	callq	*%rax
	movl	$1, -88(%rbp)
.LBB6_10:                               # %if.end.15
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.16
	jmp	.LBB6_30
.LBB6_12:                               # %sw.bb.17
	movq	-96(%rbp), %rax
	cmpq	$0, 864(%rax)
	je	.LBB6_16
# BB#13:                                # %if.then.19
	leaq	-152(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gimp_selection_data_get_stream
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.22
	movq	-96(%rbp), %rax
	movq	864(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %r8d
	callq	*%rax
	movl	$1, -88(%rbp)
.LBB6_15:                               # %if.end.24
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.25
	jmp	.LBB6_30
.LBB6_17:                               # %sw.bb.26
	movq	-96(%rbp), %rax
	cmpq	$0, 872(%rax)
	je	.LBB6_23
# BB#18:                                # %if.then.28
	movq	$0, -160(%rbp)
	movq	-72(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB6_20
# BB#19:                                # %if.then.30
	leaq	-164(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	312(%rax), %rsi
	callq	gimp_selection_data_get_component
	movq	%rax, -160(%rbp)
.LBB6_20:                               # %if.end.33
	cmpq	$0, -160(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	movq	-96(%rbp), %rax
	movq	872(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-164(%rbp), %edx
	movq	-80(%rbp), %rcx
	movl	-84(%rbp), %r8d
	callq	*%rax
	movl	$1, -88(%rbp)
.LBB6_22:                               # %if.end.37
	jmp	.LBB6_23
.LBB6_23:                               # %if.end.38
	jmp	.LBB6_30
.LBB6_24:                               # %sw.bb.39
	movq	-96(%rbp), %rax
	cmpq	$0, 880(%rax)
	je	.LBB6_28
# BB#25:                                # %if.then.41
	movq	-56(%rbp), %rdi
	callq	gtk_selection_data_get_pixbuf
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	je	.LBB6_27
# BB#26:                                # %if.then.44
	movq	-96(%rbp), %rax
	movq	880(%rax), %rax
	movq	-72(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	-84(%rbp), %ecx
	callq	*%rax
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, -88(%rbp)
.LBB6_27:                               # %if.end.46
	jmp	.LBB6_28
.LBB6_28:                               # %if.end.47
	jmp	.LBB6_30
.LBB6_29:                               # %sw.default
	jmp	.LBB6_30
.LBB6_30:                               # %sw.epilog
	jmp	.LBB6_31
.LBB6_31:                               # %if.end.48
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movl	-88(%rbp), %esi
	movl	-64(%rbp), %ecx
	callq	gtk_drag_finish
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_tree_view_drag_data_received, .Lfunc_end6-gimp_container_tree_view_drag_data_received
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_2
	.quad	.LBB6_2
	.quad	.LBB6_2
	.quad	.LBB6_29
	.quad	.LBB6_7
	.quad	.LBB6_12
	.quad	.LBB6_12
	.quad	.LBB6_24
	.quad	.LBB6_29
	.quad	.LBB6_17

	.text
	.globl	gimp_container_tree_view_real_drop_possible
	.align	16, 0x90
	.type	gimp_container_tree_view_real_drop_possible,@function
gimp_container_tree_view_real_drop_possible: # @gimp_container_tree_view_real_drop_possible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movl	$-1, -108(%rbp)
	movl	$-1, -112(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB7_9
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then.5
	movq	-120(%rbp), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -96(%rbp)
	jmp	.LBB7_6
.LBB7_3:                                # %if.else
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.11
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.12
	cmpq	$0, -96(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.14
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -108(%rbp)
.LBB7_8:                                # %if.end.18
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.19
	cmpq	$0, -40(%rbp)
	je	.LBB7_23
# BB#10:                                # %if.then.21
	cmpl	$3, -52(%rbp)
	jne	.LBB7_13
# BB#11:                                # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB7_13
# BB#12:                                # %if.then.25
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.26
	movq	-40(%rbp), %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -128(%rbp)
.LBB7_14:                               # %if.end.28
	cmpq	$0, -128(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.30
	movq	-128(%rbp), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -104(%rbp)
	jmp	.LBB7_19
.LBB7_16:                               # %if.else.32
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB7_18
# BB#17:                                # %if.then.37
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB7_18:                               # %if.end.38
	jmp	.LBB7_19
.LBB7_19:                               # %if.end.39
	movq	-128(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_21
# BB#20:                                # %if.then.41
	movl	$0, -112(%rbp)
	jmp	.LBB7_22
.LBB7_21:                               # %if.else.42
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -112(%rbp)
.LBB7_22:                               # %if.end.46
	jmp	.LBB7_23
.LBB7_23:                               # %if.end.47
	cmpq	$0, -32(%rbp)
	je	.LBB7_33
# BB#24:                                # %land.lhs.true.49
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB7_33
# BB#25:                                # %if.then.53
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_27
# BB#26:                                # %if.then.55
	movl	$0, -4(%rbp)
	jmp	.LBB7_53
.LBB7_27:                               # %if.end.56
	cmpl	$-1, -108(%rbp)
	je	.LBB7_29
# BB#28:                                # %lor.lhs.false
	cmpl	$-1, -112(%rbp)
	jne	.LBB7_30
.LBB7_29:                               # %if.then.59
	movl	$0, -4(%rbp)
	jmp	.LBB7_53
.LBB7_30:                               # %if.end.60
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_viewable_is_ancestor
	cmpl	$0, %eax
	je	.LBB7_32
# BB#31:                                # %if.then.63
	movl	$0, -4(%rbp)
	jmp	.LBB7_53
.LBB7_32:                               # %if.end.64
	jmp	.LBB7_33
.LBB7_33:                               # %if.end.65
	movq	-96(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB7_44
# BB#34:                                # %if.then.67
	cmpl	$0, -52(%rbp)
	jne	.LBB7_38
# BB#35:                                # %if.then.69
	movl	-112(%rbp), %eax
	movl	-108(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB7_37
# BB#36:                                # %if.then.71
	movl	$0, -4(%rbp)
	jmp	.LBB7_53
.LBB7_37:                               # %if.end.72
	jmp	.LBB7_43
.LBB7_38:                               # %if.else.73
	cmpl	$1, -52(%rbp)
	jne	.LBB7_42
# BB#39:                                # %if.then.75
	movl	-112(%rbp), %eax
	movl	-108(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB7_41
# BB#40:                                # %if.then.77
	movl	$0, -4(%rbp)
	jmp	.LBB7_53
.LBB7_41:                               # %if.end.78
	jmp	.LBB7_42
.LBB7_42:                               # %if.end.79
	jmp	.LBB7_43
.LBB7_43:                               # %if.end.80
	jmp	.LBB7_44
.LBB7_44:                               # %if.end.81
	cmpq	$0, -64(%rbp)
	je	.LBB7_46
# BB#45:                                # %if.then.83
	movl	-52(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_46:                               # %if.end.84
	cmpq	$0, -72(%rbp)
	je	.LBB7_52
# BB#47:                                # %if.then.86
	cmpq	$0, -32(%rbp)
	je	.LBB7_50
# BB#48:                                # %land.lhs.true.88
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB7_50
# BB#49:                                # %if.then.94
	movq	-72(%rbp), %rax
	movl	$4, (%rax)
	jmp	.LBB7_51
.LBB7_50:                               # %if.else.95
	movq	-72(%rbp), %rax
	movl	$2, (%rax)
.LBB7_51:                               # %if.end.96
	jmp	.LBB7_52
.LBB7_52:                               # %if.end.97
	movl	$1, -4(%rbp)
.LBB7_53:                               # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_tree_view_real_drop_possible, .Lfunc_end7-gimp_container_tree_view_real_drop_possible
	.cfi_endproc

	.globl	gimp_container_tree_view_real_drop_viewable
	.align	16, 0x90
	.type	gimp_container_tree_view_real_drop_viewable,@function
gimp_container_tree_view_real_drop_viewable: # @gimp_container_tree_view_real_drop_viewable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -56(%rbp)
	cmpl	$1, -28(%rbp)
	jne	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB8_3
# BB#2:                                 # %if.then
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB8_7
.LBB8_3:                                # %if.else
	cmpl	$0, -28(%rbp)
	jne	.LBB8_6
# BB#4:                                 # %land.lhs.true.11
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB8_6
# BB#5:                                 # %if.then.13
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
.LBB8_6:                                # %if.end
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.14
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-56(%rbp), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_reorder
	movl	%eax, -116(%rbp)        # 4-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_tree_view_real_drop_viewable, .Lfunc_end8-gimp_container_tree_view_real_drop_viewable
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
