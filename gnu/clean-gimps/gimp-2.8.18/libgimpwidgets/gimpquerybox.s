	.text
	.file	"gimpquerybox.bc"
	.globl	gimp_query_string_box
	.align	16, 0x90
	.type	gimp_query_string_box,@function
gimp_query_string_box:                  # @gimp_query_string_box
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	leaq	string_query_box_response(%rip), %r14
	leaq	.L.str(%rip), %r15
	leaq	.L.str.1(%rip), %r12
	leaq	.L.str.2(%rip), %r13
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%rbx, -104(%rbp)
	movq	%r11, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	-104(%rbp), %r8
	movq	-112(%rbp), %r9
	movq	-120(%rbp), %r10
	movq	-128(%rbp), %r11
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	%rax, (%rsp)
	movq	%r12, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	%r11, 48(%rsp)
	callq	create_query_box
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	jmp	.LBB0_6
.LBB0_2:                                # %if.end
	callq	gtk_entry_new@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpq	$0, -96(%rbp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	je	.LBB0_4
# BB#3:                                 # %cond.true
	movq	-96(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %cond.false
	leaq	.L.str.3(%rip), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB0_5
.LBB0_5:                                # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default@PLT
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-144(%rbp), %rdi
	callq	gtk_widget_grab_focus@PLT
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB0_6:                                # %return
	movq	-48(%rbp), %rax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_query_string_box, .Lfunc_end0-gimp_query_string_box
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	create_query_box,@function
create_query_box:                       # @create_query_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$400, %rsp              # imm = 0x190
.Ltmp11:
	.cfi_offset %rbx, -48
.Ltmp12:
	.cfi_offset %r12, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	64(%rbp), %rax
	movq	56(%rbp), %r10
	movq	48(%rbp), %r11
	movq	40(%rbp), %rbx
	movq	32(%rbp), %r14
	movq	24(%rbp), %r15
	movq	16(%rbp), %r12
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r12, -96(%rbp)
	movq	%r15, -104(%rbp)
	movq	%r14, -112(%rbp)
	movq	%rbx, -120(%rbp)
	movq	%r11, -128(%rbp)
	movq	%r10, -136(%rbp)
	movq	%rax, -144(%rbp)
	movq	$0, -160(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB1_10
# BB#2:                                 # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then
	movl	$0, -188(%rbp)
	jmp	.LBB1_9
.LBB1_4:                                # %if.else
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_7
# BB#5:                                 # %land.lhs.true
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB1_7
# BB#6:                                 # %if.then.4
	movl	$1, -188(%rbp)
	jmp	.LBB1_8
.LBB1_7:                                # %if.else.5
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -188(%rbp)
.LBB1_8:                                # %if.end
	jmp	.LBB1_9
.LBB1_9:                                # %if.end.7
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB1_11
.LBB1_10:                               # %if.then.9
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.create_query_box(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -40(%rbp)
	jmp	.LBB1_35
.LBB1_12:                               # %if.end.11
	jmp	.LBB1_13
.LBB1_13:                               # %do.end
	jmp	.LBB1_14
.LBB1_14:                               # %do.body.12
	cmpq	$0, -120(%rbp)
	je	.LBB1_16
# BB#15:                                # %lor.lhs.false.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a@PLT
	cmpl	$0, %eax
	je	.LBB1_17
.LBB1_16:                               # %if.then.17
	jmp	.LBB1_18
.LBB1_17:                               # %if.else.18
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.create_query_box(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -40(%rbp)
	jmp	.LBB1_35
.LBB1_18:                               # %if.end.19
	jmp	.LBB1_19
.LBB1_19:                               # %do.end.20
	jmp	.LBB1_20
.LBB1_20:                               # %do.body.21
	cmpq	$0, -120(%rbp)
	je	.LBB1_22
# BB#21:                                # %lor.lhs.false.23
	cmpq	$0, -128(%rbp)
	je	.LBB1_23
.LBB1_22:                               # %if.then.25
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.26
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.create_query_box(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -40(%rbp)
	jmp	.LBB1_35
.LBB1_24:                               # %if.end.27
	jmp	.LBB1_25
.LBB1_25:                               # %do.end.28
	movl	$56, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	leaq	.L.str.9(%rip), %rsi
	xorl	%ecx, %ecx
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967291, %r8d       # imm = 0xFFFFFFFB
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %r10
	movq	-64(%rbp), %r11
	movq	-72(%rbp), %r9
	movq	-112(%rbp), %rbx
	movq	-104(%rbp), %r14
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movl	%r8d, -240(%rbp)        # 4-byte Spill
	movq	%r11, %r8
	movq	%rbx, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r14, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	callq	gimp_dialog_new@PLT
	movq	-152(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order@PLT
	leaq	.L.str.10(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-80(%rbp), %rdx
	movq	-152(%rbp), %r10
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.11(%rip), %rsi
	movq	gtk_widget_destroyed@GOTPCREL(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	cmpq	$0, -120(%rbp)
	movq	%rax, -264(%rbp)        # 8-byte Spill
	je	.LBB1_27
# BB#26:                                # %if.then.40
	leaq	query_box_cancel_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_cclosure_new_swap@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -200(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	-200(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_watch_closure@PLT
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rax
	movq	-128(%rbp), %rsi
	movq	-200(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_signal_connect_closure@PLT
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB1_27:                               # %if.end.46
	cmpq	$0, -88(%rbp)
	je	.LBB1_29
# BB#28:                                # %if.then.48
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area@PLT
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -208(%rbp)
	callq	gtk_box_new@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$6, %esi
	movq	-88(%rbp), %rdi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-216(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-216(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB1_29:                               # %if.end.65
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-152(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.12(%rip), %rsi
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	cmpq	$0, -160(%rbp)
	je	.LBB1_31
# BB#30:                                # %if.then.71
	movq	-160(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.75
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area@PLT
	movq	%rax, -224(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width@PLT
	movq	-224(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
.LBB1_32:                               # %if.end.88
	movq	-152(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show@PLT
	cmpq	$0, -96(%rbp)
	je	.LBB1_34
# BB#33:                                # %if.then.91
	movq	-96(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movss	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-168(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB1_34:                               # %if.end.100
	movq	-152(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-120(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-144(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-152(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB1_35:                               # %return
	movq	-40(%rbp), %rax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	create_query_box, .Lfunc_end1-create_query_box
	.cfi_endproc

	.align	16, 0x90
	.type	string_query_box_response,@function
string_query_box_response:              # @string_query_box_response
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	query_box_disconnect
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_entry_get_text@PLT
	movq	%rax, -32(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdx
	callq	*%rax
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	query_box_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	string_query_box_response, .Lfunc_end2-string_query_box_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gimp_query_int_box
	.align	16, 0x90
	.type	gimp_query_int_box,@function
gimp_query_int_box:                     # @gimp_query_int_box
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	leaq	int_query_box_response(%rip), %r12
	leaq	.L.str(%rip), %r13
	movq	%rax, -168(%rbp)        # 8-byte Spill
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	leaq	.L.str.2(%rip), %rax
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movl	%r15d, -96(%rbp)
	movl	%r14d, -100(%rbp)
	movq	%rbx, -112(%rbp)
	movq	%r11, -120(%rbp)
	movq	%r10, -128(%rbp)
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -136(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-112(%rbp), %r10
	movq	-120(%rbp), %r11
	movq	-128(%rbp), %rbx
	movq	-136(%rbp), %r9
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%r12, %r8
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movq	%r13, %r9
	movq	-184(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	callq	create_query_box
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	leaq	-160(%rbp), %rdi
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_1(%rip), %xmm4   # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	-92(%rbp), %xmm1
	cvtsi2sdl	-96(%rbp), %xmm2
	cvtsi2sdl	-100(%rbp), %xmm3
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-200(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-200(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default@PLT
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-152(%rbp), %rdi
	callq	gtk_widget_grab_focus@PLT
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-152(%rbp), %rax
	movq	-144(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB3_3:                                # %return
	movq	-48(%rbp), %rax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_query_int_box, .Lfunc_end3-gimp_query_int_box
	.cfi_endproc

	.align	16, 0x90
	.type	int_query_box_response,@function
int_query_box_response:                 # @int_query_box_response
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	query_box_disconnect
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdx
	callq	*%rax
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	query_box_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	int_query_box_response, .Lfunc_end4-int_query_box_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gimp_query_double_box
	.align	16, 0x90
	.type	gimp_query_double_box,@function
gimp_query_double_box:                  # @gimp_query_double_box
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	leaq	double_query_box_response(%rip), %r14
	leaq	.L.str(%rip), %r15
	leaq	.L.str.1(%rip), %r12
	leaq	.L.str.2(%rip), %r13
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm1, -104(%rbp)
	movsd	%xmm2, -112(%rbp)
	movl	%r9d, -116(%rbp)
	movq	%rbx, -128(%rbp)
	movq	%r11, -136(%rbp)
	movq	%r10, -144(%rbp)
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	-128(%rbp), %r8
	movq	-136(%rbp), %r10
	movq	-144(%rbp), %r11
	movq	-152(%rbp), %rbx
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	%r15, %r9
	movq	%rax, (%rsp)
	movq	%r12, 8(%rsp)
	movq	%r13, 16(%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	callq	create_query_box
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	leaq	-176(%rbp), %rdi
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI5_1(%rip), %xmm4   # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movl	-116(%rbp), %esi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-192(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-192(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new@PLT
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default@PLT
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-168(%rbp), %rdi
	callq	gtk_widget_grab_focus@PLT
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB5_3:                                # %return
	movq	-48(%rbp), %rax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_query_double_box, .Lfunc_end5-gimp_query_double_box
	.cfi_endproc

	.align	16, 0x90
	.type	double_query_box_response,@function
double_query_box_response:              # @double_query_box_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	query_box_disconnect
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value@PLT
	movsd	%xmm0, -32(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rsi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	query_box_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	double_query_box_response, .Lfunc_end6-double_query_box_response
	.cfi_endproc

	.globl	gimp_query_size_box
	.align	16, 0x90
	.type	gimp_query_size_box,@function
gimp_query_size_box:                    # @gimp_query_size_box
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movl	24(%rbp), %r14d
	movl	16(%rbp), %r15d
	leaq	size_query_box_response(%rip), %r12
	leaq	.L.str(%rip), %r13
	movq	%rax, -200(%rbp)        # 8-byte Spill
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	leaq	.L.str.2(%rip), %rax
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm1, -104(%rbp)
	movsd	%xmm2, -112(%rbp)
	movl	%r9d, -116(%rbp)
	movl	%r15d, -120(%rbp)
	movsd	%xmm3, -128(%rbp)
	movl	%r14d, -132(%rbp)
	movq	%rbx, -144(%rbp)
	movq	%r11, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -168(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-144(%rbp), %r10
	movq	-152(%rbp), %r11
	movq	-160(%rbp), %rbx
	movq	-168(%rbp), %r9
	movq	%r8, -216(%rbp)         # 8-byte Spill
	movq	%r12, %r8
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movq	%r13, %r9
	movq	-216(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	-208(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	callq	create_query_box
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movl	$1, %eax
	leaq	.L.str.4(%rip), %rdx
	xorl	%ecx, %ecx
	movl	$12, %esi
	movl	-120(%rbp), %edi
	movl	%edi, -228(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	-228(%rbp), %r8d        # 4-byte Reload
	movl	%esi, -232(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	-236(%rbp), %r9d        # 4-byte Reload
	movl	$12, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_size_entry_new@PLT
	movq	%rax, -184(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.3
	movq	-184(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_set_unit@PLT
.LBB7_4:                                # %if.end.6
	movq	-184(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution@PLT
	movq	-184(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movl	-116(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_digits@PLT
	movq	-184(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries@PLT
	movq	-184(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	movq	-184(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_help_widget@PLT
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default@PLT
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-184(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_size_entry_grab_focus@PLT
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-184(%rbp), %rax
	movq	-176(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB7_5:                                # %return
	movq	-48(%rbp), %rax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_query_size_box, .Lfunc_end7-gimp_query_size_box
	.cfi_endproc

	.align	16, 0x90
	.type	size_query_box_response,@function
size_query_box_response:                # @size_query_box_response
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	query_box_disconnect
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval@PLT
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_size_entry_get_unit@PLT
	movl	%eax, -36(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %esi
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdx
	callq	*%rax
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	query_box_destroy
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	size_query_box_response, .Lfunc_end8-size_query_box_response
	.cfi_endproc

	.globl	gimp_query_boolean_box
	.align	16, 0x90
	.type	gimp_query_boolean_box,@function
gimp_query_boolean_box:                 # @gimp_query_boolean_box
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp54:
	.cfi_offset %rbx, -48
.Ltmp55:
	.cfi_offset %r12, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movq	24(%rbp), %r14
	movq	16(%rbp), %r15
	leaq	boolean_query_box_response(%rip), %r12
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r15, -96(%rbp)
	movq	%r14, -104(%rbp)
	movq	%rbx, -112(%rbp)
	movq	%r11, -120(%rbp)
	movq	%r10, -128(%rbp)
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %r9
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %r8
	movq	-104(%rbp), %r10
	movq	-112(%rbp), %r11
	movq	-120(%rbp), %rbx
	movq	-128(%rbp), %r14
	movq	-136(%rbp), %r15
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%r12, %r8
	movq	%rax, (%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	callq	create_query_box
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	$0, -40(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB9_3:                                # %return
	movq	-40(%rbp), %rax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_query_boolean_box, .Lfunc_end9-gimp_query_boolean_box
	.cfi_endproc

	.align	16, 0x90
	.type	boolean_query_box_response,@function
boolean_query_box_response:             # @boolean_query_box_response
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	query_box_disconnect
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpl	$-5, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	*%rcx
	movq	-24(%rbp), %rdi
	callq	query_box_destroy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	boolean_query_box_response, .Lfunc_end10-boolean_query_box_response
	.cfi_endproc

	.align	16, 0x90
	.type	query_box_cancel_callback,@function
query_box_cancel_callback:              # @query_box_cancel_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	query_box_disconnect
	movq	-8(%rbp), %rdi
	callq	query_box_destroy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	query_box_cancel_callback, .Lfunc_end11-query_box_cancel_callback
	.cfi_endproc

	.align	16, 0x90
	.type	query_box_disconnect,@function
query_box_disconnect:                   # @query_box_disconnect
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
	subq	$48, %rsp
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect@PLT
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB12_4
# BB#3:                                 # %if.then.5
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	query_box_cancel_callback(%rip), %rdx
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movq	%r9, -24(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-24(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched@PLT
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB12_4:                               # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	query_box_disconnect, .Lfunc_end12-query_box_disconnect
	.cfi_endproc

	.align	16, 0x90
	.type	query_box_destroy,@function
query_box_destroy:                      # @query_box_destroy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy@PLT
.LBB13_2:                               # %if.end
	jmp	.LBB13_3
.LBB13_3:                               # %do.body
	movl	$56, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#4:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	query_box_destroy, .Lfunc_end13-query_box_destroy
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gtk-dialog-question"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gtk-ok"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-cancel"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%p"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LibGimpWidgets"
	.size	.L.str.5, 15

	.type	.L__func__.create_query_box,@object # @__func__.create_query_box
.L__func__.create_query_box:
	.asciz	"create_query_box"
	.size	.L__func__.create_query_box, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"parent == NULL || GTK_IS_WIDGET (parent)"
	.size	.L.str.6, 41

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"object == NULL || G_IS_OBJECT (object)"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"object == NULL || signal != NULL"
	.size	.L.str.8, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-query-box"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"response"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"destroy"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-query-box-vbox"
	.size	.L.str.12, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
