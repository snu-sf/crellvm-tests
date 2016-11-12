	.text
	.file	"gimpscrolledpreview.bc"
	.globl	gimp_scrolled_preview_get_type
	.align	16, 0x90
	.type	gimp_scrolled_preview_get_type,@function
gimp_scrolled_preview_get_type:         # @gimp_scrolled_preview_get_type
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
	cmpq	$0, gimp_scrolled_preview_get_type.preview_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	callq	gimp_preview_get_type@PLT
	leaq	.L.str(%rip), %rsi
	leaq	gimp_scrolled_preview_get_type.preview_info(%rip), %rdx
	movl	$16, %ecx
	movq	%rax, %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_scrolled_preview_get_type.preview_type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_scrolled_preview_get_type.preview_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_scrolled_preview_get_type, .Lfunc_end0-gimp_scrolled_preview_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scrolled_preview_class_init,@function
gimp_scrolled_preview_class_init:       # @gimp_scrolled_preview_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent@PLT
	movl	$32, %ecx
	movl	%ecx, %esi
	leaq	gimp_scrolled_preview_set_cursor(%rip), %rdi
	leaq	gimp_scrolled_preview_dispose(%rip), %rdx
	movq	%rax, parent_class(%rip)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 848(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_scrolled_preview_class_init, .Lfunc_end1-gimp_scrolled_preview_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_scrolled_preview_init,@function
gimp_scrolled_preview_init:             # @gimp_scrolled_preview_init
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
	pushq	%r14
	pushq	%rbx
	subq	$400, %rsp              # imm = 0x190
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_scrolled_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 272(%rsi)
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 248(%rax)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-32(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	208(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-24(%rbp), %rax
	movsd	%xmm2, -72(%rbp)        # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cvtsi2sdl	208(%rax), %xmm4
	movq	-24(%rbp), %rax
	movsd	%xmm4, -88(%rbp)        # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm2, %xmm2
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	cvtsi2sdl	208(%rax), %xmm5
	movaps	%xmm2, %xmm0
	movaps	%xmm2, %xmm1
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new@PLT
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_scrolled_preview_h_scroll(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	xorl	%edi, %edi
	movq	-48(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_scrollbar_new@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	144(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$2, %r10d
	movl	$5, %r11d
	movl	$4, %ebx
	movq	-24(%rbp), %rcx
	movq	224(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	movl	%r11d, -152(%rbp)       # 4-byte Spill
	callq	gtk_table_attach@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	212(%rax), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movq	-24(%rbp), %rax
	movsd	%xmm2, -168(%rbp)       # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cvtsi2sdl	212(%rax), %xmm4
	movq	-24(%rbp), %rax
	movsd	%xmm4, -184(%rbp)       # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	cvtsi2sdl	212(%rax), %xmm5
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-184(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_new@PLT
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_scrolled_preview_v_scroll(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %r14
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data@PLT
	movl	$1, %edi
	movq	-48(%rbp), %rsi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_scrollbar_new@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, 232(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	144(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$4, %r10d
	movl	$5, %r11d
	movq	-24(%rbp), %rdx
	movq	232(%rdx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$4, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -244(%rbp)       # 4-byte Spill
	movl	%r10d, -248(%rbp)       # 4-byte Spill
	callq	gtk_table_attach@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.5(%rip), %rsi
	leaq	gimp_scrolled_preview_area_event(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	movq	136(%rax), %rax
	movq	-24(%rbp), %r14
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_scrolled_preview_area_realize(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	136(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_scrolled_preview_area_unrealize(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	136(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	leaq	gimp_scrolled_preview_area_size_allocate(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	136(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_event_box_new@PLT
	movq	-24(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	144(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	movl	$2, %r10d
	xorl	%r11d, %r11d
	movq	-24(%rbp), %rcx
	movq	240(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -364(%rbp)       # 4-byte Spill
	callq	gtk_table_attach@PLT
	leaq	.L.str.9(%rip), %rdi
	movl	$1, %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	gimp_scrolled_preview_nav_button_press(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	240(%rdi), %rdi
	movq	-24(%rbp), %r14
	movq	%rax, %rdx
	movq	%r14, %rcx
	callq	g_signal_connect_data@PLT
	movq	-32(%rbp), %rcx
	movl	$0, 28(%rcx)
	movq	%rax, -384(%rbp)        # 8-byte Spill
	addq	$400, %rsp              # imm = 0x190
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_scrolled_preview_init, .Lfunc_end2-gimp_scrolled_preview_init
	.cfi_endproc

	.globl	gimp_scrolled_preview_set_position
	.align	16, 0x90
	.type	gimp_scrolled_preview_set_position,@function
gimp_scrolled_preview_set_position:     # @gimp_scrolled_preview_set_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_scrolled_preview_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_scrolled_preview_set_position(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_scrolled_preview_freeze@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_scrolled_preview_hscr_update
	movq	-8(%rbp), %rdi
	callq	gimp_scrolled_preview_vscr_update
	movq	-8(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-68(%rbp), %ecx         # 4-byte Reload
	subl	192(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_value@PLT
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-100(%rbp), %ecx        # 4-byte Reload
	subl	200(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_value@PLT
	movq	-8(%rbp), %rdi
	callq	gimp_scrolled_preview_thaw@PLT
.LBB3_13:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_scrolled_preview_set_position, .Lfunc_end3-gimp_scrolled_preview_set_position
	.cfi_endproc

	.globl	gimp_scrolled_preview_freeze
	.align	16, 0x90
	.type	gimp_scrolled_preview_freeze,@function
gimp_scrolled_preview_freeze:           # @gimp_scrolled_preview_freeze
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_scrolled_preview_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_scrolled_preview_freeze(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rax)
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_scrolled_preview_freeze, .Lfunc_end4-gimp_scrolled_preview_freeze
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_scrolled_preview_hscr_update,@function
gimp_scrolled_preview_hscr_update:      # @gimp_scrolled_preview_hscr_update
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	196(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-44(%rbp), %ecx         # 4-byte Reload
	subl	192(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value@PLT
	cvtsi2sdl	-20(%rbp), %xmm2
	movq	-8(%rbp), %rax
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	%xmm2, -80(%rbp)        # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI5_1(%rip), %xmm2   # xmm2 = mem[0],zero
	cvtsi2sdl	208(%rax), %xmm1
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movsd	.LCPI5_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	208(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm1, %xmm1
	movsd	.LCPI5_0(%rip), %xmm3   # xmm3 = mem[0],zero
	cvtsi2sdl	208(%rax), %xmm5
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_configure@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_scrolled_preview_hscr_update, .Lfunc_end5-gimp_scrolled_preview_hscr_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_scrolled_preview_vscr_update,@function
gimp_scrolled_preview_vscr_update:      # @gimp_scrolled_preview_vscr_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	204(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-44(%rbp), %ecx         # 4-byte Reload
	subl	200(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value@PLT
	cvtsi2sdl	-20(%rbp), %xmm2
	movq	-8(%rbp), %rax
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	%xmm2, -80(%rbp)        # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI6_1(%rip), %xmm2   # xmm2 = mem[0],zero
	cvtsi2sdl	212(%rax), %xmm1
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movsd	.LCPI6_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	212(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_0(%rip), %xmm3   # xmm3 = mem[0],zero
	cvtsi2sdl	212(%rax), %xmm5
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	callq	gtk_adjustment_configure@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_scrolled_preview_vscr_update, .Lfunc_end6-gimp_scrolled_preview_vscr_update
	.cfi_endproc

	.globl	gimp_scrolled_preview_thaw
	.align	16, 0x90
	.type	gimp_scrolled_preview_thaw,@function
gimp_scrolled_preview_thaw:             # @gimp_scrolled_preview_thaw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_scrolled_preview_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_scrolled_preview_thaw(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_19
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.12
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	jle	.LBB7_15
# BB#14:                                # %if.then.14
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_scrolled_preview_thaw(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_19
.LBB7_16:                               # %if.end.16
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.17
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 28(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB7_19
# BB#18:                                # %if.then.21
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_preview_draw@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_preview_invalidate@PLT
.LBB7_19:                               # %if.end.26
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_scrolled_preview_thaw, .Lfunc_end7-gimp_scrolled_preview_thaw
	.cfi_endproc

	.globl	gimp_scrolled_preview_set_policy
	.align	16, 0x90
	.type	gimp_scrolled_preview_set_policy,@function
gimp_scrolled_preview_set_policy:       # @gimp_scrolled_preview_set_policy
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_scrolled_preview_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_scrolled_preview_set_policy(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	136(%rax), %rdi
	callq	gtk_widget_queue_resize@PLT
.LBB8_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_scrolled_preview_set_policy, .Lfunc_end8-gimp_scrolled_preview_set_policy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scrolled_preview_dispose,@function
gimp_scrolled_preview_dispose:          # @gimp_scrolled_preview_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_scrolled_preview_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_widget_destroy@PLT
	movq	-16(%rbp), %rax
	movq	$0, 248(%rax)
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_scrolled_preview_dispose, .Lfunc_end9-gimp_scrolled_preview_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scrolled_preview_set_cursor,@function
gimp_scrolled_preview_set_cursor:       # @gimp_scrolled_preview_set_cursor
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	callq	gtk_widget_get_realized@PLT
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_6
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	196(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	192(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	208(%rax), %ecx
	jg	.LBB10_4
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movl	204(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	200(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	212(%rax), %ecx
	jle	.LBB10_5
.LBB10_4:                               # %if.then.3
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_scrolled_preview_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	256(%rax), %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	gdk_window_set_cursor@PLT
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor@PLT
.LBB10_6:                               # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_scrolled_preview_set_cursor, .Lfunc_end10-gimp_scrolled_preview_set_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scrolled_preview_h_scroll,@function
gimp_scrolled_preview_h_scroll:         # @gimp_scrolled_preview_h_scroll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	272(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 184(%rsi)
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movl	184(%rsi), %esi
	movq	-16(%rbp), %rdi
	movl	188(%rdi), %edx
	movq	%rax, %rdi
	callq	gimp_preview_area_set_offsets@PLT
	movq	-24(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB11_3
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_preview_draw@PLT
	movq	-16(%rbp), %rdi
	callq	gimp_preview_invalidate@PLT
.LBB11_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_scrolled_preview_h_scroll, .Lfunc_end11-gimp_scrolled_preview_h_scroll
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scrolled_preview_v_scroll,@function
gimp_scrolled_preview_v_scroll:         # @gimp_scrolled_preview_v_scroll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	272(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	cvttsd2si	%xmm0, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 188(%rsi)
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movl	184(%rsi), %esi
	movq	-16(%rbp), %rdi
	movl	188(%rdi), %edx
	movq	%rax, %rdi
	callq	gimp_preview_area_set_offsets@PLT
	movq	-24(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB12_3
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_preview_draw@PLT
	movq	-16(%rbp), %rdi
	callq	gimp_preview_invalidate@PLT
.LBB12_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_scrolled_preview_v_scroll, .Lfunc_end12-gimp_scrolled_preview_v_scroll
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_scrolled_preview_area_event,@function
gimp_scrolled_preview_area_event:       # @gimp_scrolled_preview_area_event
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
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	272(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	je	.LBB13_12
	jmp	.LBB13_56
.LBB13_56:                              # %entry
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB13_1
	jmp	.LBB13_57
.LBB13_57:                              # %entry
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB13_7
	jmp	.LBB13_58
.LBB13_58:                              # %entry
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$31, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB13_30
	jmp	.LBB13_53
.LBB13_1:                               # %sw.bb
	movq	-48(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, %edx
	decl	%edx
	subl	$2, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%edx, -144(%rbp)        # 4-byte Spill
	jb	.LBB13_2
	jmp	.LBB13_62
.LBB13_62:                              # %sw.bb
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB13_5
	jmp	.LBB13_6
.LBB13_2:                               # %sw.bb.2
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movl	$52, %esi
	movq	%rax, %rdi
	callq	gdk_cursor_new_for_display@PLT
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-56(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%r8, -168(%rbp)         # 8-byte Spill
	callq	gdk_event_get_time@PLT
	movl	$1, %esi
	movl	$536, %edx              # imm = 0x218
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	movl	%eax, %r9d
	callq	gdk_pointer_grab@PLT
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	-40(%rbp), %rcx
	addq	$12, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gtk_widget_get_pointer@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	184(%rax), %r8d
	movq	-40(%rbp), %rax
	movl	%r8d, 16(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	188(%rax), %r8d
	movq	-40(%rbp), %rax
	movl	%r8d, 20(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add@PLT
.LBB13_4:                               # %if.end
	movq	-56(%rbp), %rdi
	callq	gdk_cursor_unref@PLT
	jmp	.LBB13_6
.LBB13_5:                               # %sw.bb.11
	movl	$1, -4(%rbp)
	jmp	.LBB13_55
.LBB13_6:                               # %sw.epilog
	jmp	.LBB13_54
.LBB13_7:                               # %sw.bb.12
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB13_11
# BB#8:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB13_10
# BB#9:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB13_11
.LBB13_10:                              # %if.then.18
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movq	-24(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gdk_event_get_time@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gdk_display_pointer_ungrab@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove@PLT
	movq	-40(%rbp), %rdi
	movl	$0, 24(%rdi)
.LBB13_11:                              # %if.end.22
	jmp	.LBB13_54
.LBB13_12:                              # %sw.bb.23
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB13_29
# BB#13:                                # %if.then.26
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_pointer@PLT
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	movl	-84(%rbp), %r8d
	movq	-40(%rbp), %rax
	subl	8(%rax), %r8d
	subl	%r8d, %ecx
	movl	%ecx, -84(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %ecx
	movl	-88(%rbp), %r8d
	movq	-40(%rbp), %rax
	subl	12(%rax), %r8d
	subl	%r8d, %ecx
	movl	%ecx, -88(%rbp)
	cvtsi2sdl	-84(%rbp), %xmm0
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_15
# BB#14:                                # %cond.true
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_upper@PLT
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -240(%rbp)       # 8-byte Spill
	jmp	.LBB13_19
.LBB13_15:                              # %cond.false
	cvtsi2sdl	-84(%rbp), %xmm0
	movq	-72(%rbp), %rdi
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_17
# BB#16:                                # %cond.true.52
	movq	-72(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB13_18
.LBB13_17:                              # %cond.false.54
	cvtsi2sdl	-84(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB13_18:                              # %cond.end
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB13_19:                              # %cond.end.56
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -84(%rbp)
	cvtsi2sdl	-88(%rbp), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-264(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_21
# BB#20:                                # %cond.true.65
	movq	-80(%rbp), %rdi
	callq	gtk_adjustment_get_upper@PLT
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	jmp	.LBB13_25
.LBB13_21:                              # %cond.false.69
	cvtsi2sdl	-88(%rbp), %xmm0
	movq	-80(%rbp), %rdi
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_23
# BB#22:                                # %cond.true.74
	movq	-80(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB13_24
.LBB13_23:                              # %cond.false.76
	cvtsi2sdl	-88(%rbp), %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
.LBB13_24:                              # %cond.end.78
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB13_25:                              # %cond.end.80
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -88(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	184(%rax), %edx
	cmpl	-84(%rbp), %edx
	jne	.LBB13_27
# BB#26:                                # %lor.lhs.false.88
	movq	-32(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	188(%rax), %ecx
	cmpl	-88(%rbp), %ecx
	je	.LBB13_28
.LBB13_27:                              # %if.then.94
	movq	-72(%rbp), %rdi
	cvtsi2sdl	-84(%rbp), %xmm0
	callq	gtk_adjustment_set_value@PLT
	movq	-80(%rbp), %rdi
	cvtsi2sdl	-88(%rbp), %xmm0
	callq	gtk_adjustment_set_value@PLT
	movq	-32(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_preview_draw@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_preview_invalidate@PLT
.LBB13_28:                              # %if.end.101
	movq	-64(%rbp), %rdi
	callq	gdk_event_request_motions@PLT
.LBB13_29:                              # %if.end.102
	jmp	.LBB13_54
.LBB13_30:                              # %sw.bb.103
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movq	-96(%rbp), %rax
	movl	40(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB13_32
# BB#31:                                # %if.then.106
	movl	$0, -4(%rbp)
	jmp	.LBB13_55
.LBB13_32:                              # %if.end.107
	movq	-96(%rbp), %rax
	movl	40(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB13_39
# BB#33:                                # %if.then.111
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	ja	.LBB13_38
# BB#59:                                # %if.then.111
	leaq	.LJTI13_0(%rip), %rax
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB13_34:                              # %sw.bb.112
	movl	$2, -100(%rbp)
	jmp	.LBB13_38
.LBB13_35:                              # %sw.bb.113
	movl	$3, -100(%rbp)
	jmp	.LBB13_38
.LBB13_36:                              # %sw.bb.114
	movl	$0, -100(%rbp)
	jmp	.LBB13_38
.LBB13_37:                              # %sw.bb.115
	movl	$1, -100(%rbp)
.LBB13_38:                              # %sw.epilog.116
	jmp	.LBB13_39
.LBB13_39:                              # %if.end.117
	movl	-100(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movl	%ecx, -360(%rbp)        # 4-byte Spill
	jb	.LBB13_40
	jmp	.LBB13_60
.LBB13_60:                              # %if.end.117
	movl	-356(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jb	.LBB13_42
	jmp	.LBB13_41
.LBB13_40:                              # %sw.bb.118
	jmp	.LBB13_41
.LBB13_41:                              # %sw.default
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -112(%rbp)
	jmp	.LBB13_43
.LBB13_42:                              # %sw.bb.123
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -112(%rbp)
.LBB13_43:                              # %sw.epilog.128
	movq	-112(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -116(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$3, %rcx
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	ja	.LBB13_46
# BB#61:                                # %sw.epilog.128
	leaq	.LJTI13_1(%rip), %rax
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB13_44:                              # %sw.bb.131
	movq	-112(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment@PLT
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtss2sd	-116(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -116(%rbp)
	jmp	.LBB13_46
.LBB13_45:                              # %sw.bb.136
	movq	-112(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment@PLT
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtss2sd	-116(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -116(%rbp)
.LBB13_46:                              # %sw.epilog.141
	movq	-112(%rbp), %rdi
	cvtss2sd	-116(%rbp), %xmm0
	movq	-112(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-112(%rbp), %rdi
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-416(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_48
# BB#47:                                # %cond.true.148
	movq	-112(%rbp), %rdi
	callq	gtk_adjustment_get_upper@PLT
	movq	-112(%rbp), %rdi
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-432(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -440(%rbp)       # 8-byte Spill
	jmp	.LBB13_52
.LBB13_48:                              # %cond.false.152
	cvtss2sd	-116(%rbp), %xmm0
	movq	-112(%rbp), %rdi
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_50
# BB#49:                                # %cond.true.157
	movq	-112(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	jmp	.LBB13_51
.LBB13_50:                              # %cond.false.159
	cvtss2sd	-116(%rbp), %xmm0
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
.LBB13_51:                              # %cond.end.161
	movsd	-456(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
.LBB13_52:                              # %cond.end.163
	movsd	-440(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-408(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_value@PLT
	jmp	.LBB13_54
.LBB13_53:                              # %sw.default.165
	jmp	.LBB13_54
.LBB13_54:                              # %sw.epilog.166
	movl	$0, -4(%rbp)
.LBB13_55:                              # %return
	movl	-4(%rbp), %eax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_scrolled_preview_area_event, .Lfunc_end13-gimp_scrolled_preview_area_event
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI13_0:
	.long	.LBB13_34-.LJTI13_0
	.long	.LBB13_35-.LJTI13_0
	.long	.LBB13_36-.LJTI13_0
	.long	.LBB13_37-.LJTI13_0
.LJTI13_1:
	.long	.LBB13_44-.LJTI13_1
	.long	.LBB13_45-.LJTI13_1
	.long	.LBB13_44-.LJTI13_1
	.long	.LBB13_45-.LJTI13_1

	.text
	.align	16, 0x90
	.type	gimp_scrolled_preview_area_realize,@function
gimp_scrolled_preview_area_realize:     # @gimp_scrolled_preview_area_realize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movq	%rax, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, 256(%rax)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_scrolled_preview_area_realize(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_6
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	movl	$58, %esi
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_new_for_display@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, 256(%rdi)
.LBB14_6:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_scrolled_preview_area_realize, .Lfunc_end14-gimp_scrolled_preview_area_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scrolled_preview_area_unrealize,@function
gimp_scrolled_preview_area_unrealize:   # @gimp_scrolled_preview_area_unrealize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 256(%rsi)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gdk_cursor_unref@PLT
	movq	-16(%rbp), %rax
	movq	$0, 256(%rax)
.LBB15_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_scrolled_preview_area_unrealize, .Lfunc_end15-gimp_scrolled_preview_area_unrealize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_scrolled_preview_area_size_allocate,@function
gimp_scrolled_preview_area_size_allocate: # @gimp_scrolled_preview_area_size_allocate
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	272(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	196(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-52(%rbp), %ecx         # 4-byte Reload
	subl	192(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	204(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-76(%rbp), %ecx         # 4-byte Reload
	subl	200(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_scrolled_preview_freeze@PLT
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rax
	cmpl	8(%rax), %ecx
	jge	.LBB16_2
# BB#1:                                 # %cond.true
	movl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB16_3:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-96(%rbp), %edx         # 4-byte Reload
	movl	%edx, 208(%rax)
	movl	-40(%rbp), %edx
	movq	-16(%rbp), %rax
	cmpl	12(%rax), %edx
	jge	.LBB16_5
# BB#4:                                 # %cond.true.17
	movl	-40(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB16_6
.LBB16_5:                               # %cond.false.18
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB16_6:                               # %cond.end.20
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 212(%rax)
	movq	-24(%rbp), %rdi
	callq	gimp_scrolled_preview_hscr_update
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	je	.LBB16_8
	jmp	.LBB16_18
.LBB16_18:                              # %cond.end.20
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB16_7
	jmp	.LBB16_19
.LBB16_19:                              # %cond.end.20
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB16_9
	jmp	.LBB16_10
.LBB16_7:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	movl	-36(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-148(%rbp), %ecx        # 4-byte Reload
	cmpl	208(%rax), %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gtk_widget_set_visible@PLT
	jmp	.LBB16_10
.LBB16_8:                               # %sw.bb.29
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show@PLT
	jmp	.LBB16_10
.LBB16_9:                               # %sw.bb.31
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_hide@PLT
.LBB16_10:                              # %sw.epilog
	movq	-24(%rbp), %rdi
	callq	gimp_scrolled_preview_vscr_update
	movq	-32(%rbp), %rdi
	movl	4(%rdi), %eax
	testl	%eax, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	je	.LBB16_12
	jmp	.LBB16_20
.LBB16_20:                              # %sw.epilog
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB16_11
	jmp	.LBB16_21
.LBB16_21:                              # %sw.epilog
	movl	-164(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB16_13
	jmp	.LBB16_14
.LBB16_11:                              # %sw.bb.33
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdi
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-188(%rbp), %ecx        # 4-byte Reload
	cmpl	212(%rax), %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	callq	gtk_widget_set_visible@PLT
	jmp	.LBB16_14
.LBB16_12:                              # %sw.bb.39
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_show@PLT
	jmp	.LBB16_14
.LBB16_13:                              # %sw.bb.41
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_hide@PLT
.LBB16_14:                              # %sw.epilog.43
	movq	-24(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_visible@PLT
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -209(%rbp)         # 1-byte Spill
	je	.LBB16_17
# BB#15:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_get_visible@PLT
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -209(%rbp)         # 1-byte Spill
	je	.LBB16_17
# BB#16:                                # %land.rhs
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 832(%rax)
	setne	%cl
	movb	%cl, -209(%rbp)         # 1-byte Spill
.LBB16_17:                              # %land.end
	movb	-209(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	callq	gtk_widget_set_visible@PLT
	movq	-24(%rbp), %rdi
	callq	gimp_scrolled_preview_thaw@PLT
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_scrolled_preview_area_size_allocate, .Lfunc_end16-gimp_scrolled_preview_area_size_allocate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_scrolled_preview_nav_button_press,@function
gimp_scrolled_preview_nav_button_press: # @gimp_scrolled_preview_nav_button_press
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB17_6
.LBB17_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB17_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB17_5
# BB#4:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style@PLT
	movl	$1, %edi
	movq	%rax, -56(%rbp)
	callq	gtk_window_new@PLT
	movq	-32(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_screen@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen@PLT
	xorl	%edx, %edx
	movl	%edx, %edi
	callq	gtk_frame_new@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	xorl	%edx, %edx
	movl	%edx, %edi
	callq	gtk_frame_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_preview_area_get_type@PLT
	movq	-40(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	xorl	%edx, %edx
	leaq	.L.str.13(%rip), %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	108(%rax), %r8d
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	leaq	.L.str.5(%rip), %rsi
	leaq	gimp_scrolled_preview_nav_popup_event(%rip), %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.14(%rip), %rsi
	leaq	gimp_scrolled_preview_nav_popup_expose(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$1, %r9d
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	832(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$100, %r9d
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movq	-232(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-80(%rbp), %rdi
	callq	gtk_widget_realize@PLT
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_origin@PLT
	movq	-32(%rbp), %rdx
	movq	224(%rdx), %rdx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-48(%rbp), %rdi
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movsd	.LCPI17_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-288(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-48(%rbp), %rdi
	movsd	%xmm1, -312(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movsd	.LCPI17_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-320(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movsd	%xmm1, -336(%rbp)       # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cvtsi2sdl	112(%rax), %xmm0
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -92(%rbp)
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movsd	%xmm1, -360(%rbp)       # 8-byte Spill
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type@PLT
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cvtsi2sdl	116(%rax), %xmm0
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-96(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-92(%rbp), %ecx
	movq	-56(%rbp), %rdx
	movl	536(%rdx), %r9d
	shll	$1, %r9d
	subl	%r9d, %ecx
	movl	-96(%rbp), %r9d
	movq	-56(%rbp), %rdx
	movl	540(%rdx), %r10d
	shll	$1, %r10d
	subl	%r10d, %r9d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%r9d, %edx
	callq	gtk_window_move@PLT
	movq	-32(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-80(%rbp), %rdi
	callq	gtk_grab_add@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movl	$52, %esi
	movq	%rax, %rdi
	callq	gdk_cursor_new_for_display@PLT
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	-80(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window@PLT
	movl	$1, %esi
	movl	$536, %edx              # imm = 0x218
	movq	-88(%rbp), %r8
	movq	-24(%rbp), %rdi
	movl	20(%rdi), %r9d
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gdk_pointer_grab@PLT
	movq	-88(%rbp), %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	gdk_cursor_unref@PLT
.LBB17_5:                               # %if.end.83
	movl	$1, -4(%rbp)
.LBB17_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_scrolled_preview_nav_button_press, .Lfunc_end17-gimp_scrolled_preview_nav_button_press
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gimp_scrolled_preview_nav_popup_event,@function
gimp_scrolled_preview_nav_popup_event:  # @gimp_scrolled_preview_nav_popup_event
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	je	.LBB18_4
	jmp	.LBB18_19
.LBB18_19:                              # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jne	.LBB18_17
	jmp	.LBB18_1
.LBB18_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movq	-32(%rbp), %rdi
	movl	20(%rdi), %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab@PLT
	movq	-24(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_widget_destroy@PLT
	movq	-24(%rbp), %rax
	movq	$0, 248(%rax)
.LBB18_3:                               # %if.end
	jmp	.LBB18_18
.LBB18_4:                               # %sw.bb.2
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	leaq	-72(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_pointer@PLT
	cvtsi2sdl	-76(%rbp), %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	cvtsi2sdl	-80(%rbp), %xmm0
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	addsd	-88(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	addsd	-96(%rbp), %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-48(%rbp), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_get_upper@PLT
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	jmp	.LBB18_10
.LBB18_6:                               # %cond.false
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_8
# BB#7:                                 # %cond.true.39
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB18_9
.LBB18_8:                               # %cond.false.41
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB18_9:                               # %cond.end
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB18_10:                              # %cond.end.42
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-184(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_value@PLT
	movq	-56(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_12
# BB#11:                                # %cond.true.49
	movq	-56(%rbp), %rdi
	callq	gtk_adjustment_get_upper@PLT
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	jmp	.LBB18_16
.LBB18_12:                              # %cond.false.53
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_14
# BB#13:                                # %cond.true.57
	movq	-56(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jmp	.LBB18_15
.LBB18_14:                              # %cond.false.59
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
.LBB18_15:                              # %cond.end.60
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
.LBB18_16:                              # %cond.end.62
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-240(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_value@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_queue_draw@PLT
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_window_process_updates@PLT
	movq	-40(%rbp), %rdi
	callq	gdk_event_request_motions@PLT
	jmp	.LBB18_18
.LBB18_17:                              # %sw.default
	jmp	.LBB18_18
.LBB18_18:                              # %sw.epilog
	xorl	%eax, %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_scrolled_preview_nav_popup_event, .Lfunc_end18-gimp_scrolled_preview_nav_popup_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
.LCPI19_1:
	.quad	4611686018427387904     # double 2
.LCPI19_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_scrolled_preview_nav_popup_expose,@function
gimp_scrolled_preview_nav_popup_expose: # @gimp_scrolled_preview_nav_popup_expose
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	224(%rdx), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_adjustment_get_page_size@PLT
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_adjustment_get_page_size@PLT
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-176(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB19_3
# BB#1:                                 # %land.lhs.true
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB19_10
.LBB19_3:                               # %if.end
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor@PLT
	movsd	%xmm0, -72(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	callq	floor@PLT
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	callq	ceil@PLT
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_5
# BB#4:                                 # %cond.true
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	callq	ceil@PLT
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB19_6:                               # %cond.end
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI19_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	callq	ceil@PLT
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB19_8
# BB#7:                                 # %cond.true.45
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB19_9
.LBB19_8:                               # %cond.false.46
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	callq	ceil@PLT
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB19_9:                               # %cond.end.51
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	gdk_cairo_create@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region@PLT
	movq	-64(%rbp), %rdi
	callq	cairo_clip@PLT
	xorps	%xmm0, %xmm0
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm2
	cvtsi2sdl	-44(%rbp), %xmm3
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movsd	-216(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle@PLT
	movq	-64(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	cairo_rectangle@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI19_2(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba@PLT
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	callq	cairo_set_fill_rule@PLT
	movq	-64(%rbp), %rdi
	callq	cairo_fill@PLT
	movq	-64(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	cairo_rectangle@PLT
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-232(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb@PLT
	movsd	.LCPI19_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	callq	cairo_set_line_width@PLT
	movq	-64(%rbp), %rdi
	callq	cairo_stroke@PLT
	movq	-64(%rbp), %rdi
	callq	cairo_destroy@PLT
	movl	$0, -4(%rbp)
.LBB19_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_scrolled_preview_nav_popup_expose, .Lfunc_end19-gimp_scrolled_preview_nav_popup_expose
	.cfi_endproc

	.type	gimp_scrolled_preview_get_type.preview_type,@object # @gimp_scrolled_preview_get_type.preview_type
	.local	gimp_scrolled_preview_get_type.preview_type
	.comm	gimp_scrolled_preview_get_type.preview_type,8,8
	.type	gimp_scrolled_preview_get_type.preview_info,@object # @gimp_scrolled_preview_get_type.preview_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_scrolled_preview_get_type.preview_info:
	.short	928                     # 0x3a0
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_scrolled_preview_class_init
	.quad	0
	.quad	0
	.short	280                     # 0x118
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_scrolled_preview_init
	.quad	0
	.size	gimp_scrolled_preview_get_type.preview_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpScrolledPreview"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_scrolled_preview_set_position,@object # @__func__.gimp_scrolled_preview_set_position
.L__func__.gimp_scrolled_preview_set_position:
	.asciz	"gimp_scrolled_preview_set_position"
	.size	.L__func__.gimp_scrolled_preview_set_position, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_SCROLLED_PREVIEW (preview)"
	.size	.L.str.2, 35

	.type	.L__func__.gimp_scrolled_preview_set_policy,@object # @__func__.gimp_scrolled_preview_set_policy
.L__func__.gimp_scrolled_preview_set_policy:
	.asciz	"gimp_scrolled_preview_set_policy"
	.size	.L__func__.gimp_scrolled_preview_set_policy, 33

	.type	.L__func__.gimp_scrolled_preview_freeze,@object # @__func__.gimp_scrolled_preview_freeze
.L__func__.gimp_scrolled_preview_freeze:
	.asciz	"gimp_scrolled_preview_freeze"
	.size	.L__func__.gimp_scrolled_preview_freeze, 29

	.type	.L__func__.gimp_scrolled_preview_thaw,@object # @__func__.gimp_scrolled_preview_thaw
.L__func__.gimp_scrolled_preview_thaw:
	.asciz	"gimp_scrolled_preview_thaw"
	.size	.L__func__.gimp_scrolled_preview_thaw, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"priv->frozen > 0"
	.size	.L.str.3, 17

	.type	parent_class,@object    # @parent_class
	.local	parent_class
	.comm	parent_class,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"value-changed"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"event"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"realize"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"unrealize"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"size-allocate"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-navigation"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"button-press-event"
	.size	.L.str.10, 19

	.type	.L__func__.gimp_scrolled_preview_area_realize,@object # @__func__.gimp_scrolled_preview_area_realize
.L__func__.gimp_scrolled_preview_area_realize:
	.asciz	"gimp_scrolled_preview_area_realize"
	.size	.L__func__.gimp_scrolled_preview_area_realize, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"preview->cursor_move == NULL"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"check-size"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"check-type"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"expose-event"
	.size	.L.str.14, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
