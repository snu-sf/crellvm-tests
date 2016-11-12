	.text
	.file	"gimpprocview.bc"
	.globl	gimp_proc_view_new
	.align	16, 0x90
	.type	gimp_proc_view_new,@function
gimp_proc_view_new:                     # @gimp_proc_view_new
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
	pushq	%rbx
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movl	40(%rbp), %r11d
	movl	32(%rbp), %ebx
	movl	24(%rbp), %r14d
	movq	16(%rbp), %r15
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r15, -88(%rbp)
	movl	%r14d, -92(%rbp)
	movl	%ebx, -96(%rbp)
	movl	%r11d, -100(%rbp)
	movq	%r10, -112(%rbp)
	movq	%rax, -120(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_3
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$2, %rax
	jae	.LBB0_3
# BB#2:                                 # %if.then
	movq	$0, -56(%rbp)
.LBB0_3:                                # %if.end
	cmpq	$0, -64(%rbp)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true.2
	movq	-64(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$2, %rax
	jae	.LBB0_6
# BB#5:                                 # %if.then.5
	movq	$0, -64(%rbp)
.LBB0_6:                                # %if.end.6
	cmpq	$0, -72(%rbp)
	je	.LBB0_9
# BB#7:                                 # %land.lhs.true.8
	movq	-72(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$2, %rax
	jae	.LBB0_9
# BB#8:                                 # %if.then.11
	movq	$0, -72(%rbp)
.LBB0_9:                                # %if.end.12
	cmpq	$0, -88(%rbp)
	je	.LBB0_12
# BB#10:                                # %land.lhs.true.14
	movq	-88(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$2, %rax
	jae	.LBB0_12
# BB#11:                                # %if.then.17
	movq	$0, -88(%rbp)
.LBB0_12:                               # %if.end.18
	cmpq	$0, -80(%rbp)
	je	.LBB0_15
# BB#13:                                # %land.lhs.true.20
	movq	-80(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$2, %rax
	jae	.LBB0_15
# BB#14:                                # %if.then.23
	movq	$0, -80(%rbp)
.LBB0_15:                               # %if.end.24
	cmpq	$0, -56(%rbp)
	je	.LBB0_19
# BB#16:                                # %land.lhs.true.26
	cmpq	$0, -64(%rbp)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.28
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_19
# BB#18:                                # %if.then.31
	movq	$0, -64(%rbp)
.LBB0_19:                               # %if.end.32
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_frame_new@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_frame_get_label_widget@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	movl	$8, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_pdb_proc_type_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-192(%rbp), %r8
	movl	-92(%rbp), %ecx
	movq	%rax, %rdi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	-248(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value@PLT
	cmpl	$0, %eax
	jne	.LBB0_21
# BB#20:                                # %if.then.48
	leaq	.L.str(%rip), %rax
	movq	%rax, -192(%rbp)
.LBB0_21:                               # %if.end.49
	movq	-192(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes@PLT
	movq	-160(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -268(%rbp)       # 4-byte Spill
	movss	-268(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show@PLT
	cmpq	$0, -48(%rbp)
	je	.LBB0_23
# BB#22:                                # %if.then.58
	movq	-48(%rbp), %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -308(%rbp)       # 4-byte Spill
	movss	-308(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB0_23:                               # %if.end.68
	cmpq	$0, -56(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.70
	movq	-56(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -356(%rbp)       # 4-byte Spill
	movss	-356(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	-380(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB0_25:                               # %if.end.80
	movl	$1, %edi
	callq	gtk_size_group_new@PLT
	movl	$1, %edi
	movq	%rax, -168(%rbp)
	callq	gtk_size_group_new@PLT
	movl	$1, %edi
	movq	%rax, -176(%rbp)
	callq	gtk_size_group_new@PLT
	movq	%rax, -184(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.85
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gimp_frame_new@PLT
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-112(%rbp), %rdi
	movl	-96(%rbp), %esi
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %r8
	callq	gimp_proc_view_create_params
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB0_27:                               # %if.end.93
	cmpl	$0, -100(%rbp)
	je	.LBB0_29
# BB#28:                                # %if.then.95
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gimp_frame_new@PLT
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-120(%rbp), %rdi
	movl	-100(%rbp), %esi
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %r8
	callq	gimp_proc_view_create_params
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB0_29:                               # %if.end.103
	cmpq	$0, -64(%rbp)
	jne	.LBB0_34
# BB#30:                                # %land.lhs.true.105
	cmpq	$0, -72(%rbp)
	jne	.LBB0_34
# BB#31:                                # %land.lhs.true.107
	cmpq	$0, -88(%rbp)
	jne	.LBB0_34
# BB#32:                                # %land.lhs.true.109
	cmpq	$0, -80(%rbp)
	jne	.LBB0_34
# BB#33:                                # %if.then.111
	movq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_47
.LBB0_34:                               # %if.end.112
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gimp_frame_new@PLT
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	movl	-444(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	movl	$8, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show@PLT
	cmpq	$0, -64(%rbp)
	je	.LBB0_36
# BB#35:                                # %if.then.121
	movq	-64(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -476(%rbp)       # 4-byte Spill
	movss	-476(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB0_36:                               # %if.end.131
	cmpq	$0, -72(%rbp)
	jne	.LBB0_40
# BB#37:                                # %land.lhs.true.133
	cmpq	$0, -88(%rbp)
	jne	.LBB0_40
# BB#38:                                # %land.lhs.true.135
	cmpq	$0, -80(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.137
	movq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_47
.LBB0_40:                               # %if.end.138
	xorl	%eax, %eax
	movl	$2, %esi
	movl	%eax, %edi
	movl	%eax, %edx
	callq	gtk_table_new@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings@PLT
	movq	-152(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings@PLT
	movq	-144(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -532(%rbp)        # 4-byte Spill
	movl	-532(%rbp), %ecx        # 4-byte Reload
	movl	-532(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$0, -196(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_42
# BB#41:                                # %if.then.147
	movq	-72(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -556(%rbp)       # 4-byte Spill
	movss	-556(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-152(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	-196(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -196(%rbp)
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	callq	dgettext@PLT
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movl	$3, %r9d
	movq	-160(%rbp), %r8
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movl	-588(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movss	%xmm0, -592(%rbp)       # 4-byte Spill
	movss	-592(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned@PLT
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB0_42:                               # %if.end.159
	cmpq	$0, -88(%rbp)
	je	.LBB0_44
# BB#43:                                # %if.then.161
	movq	-88(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -620(%rbp)       # 4-byte Spill
	movss	-620(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-152(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movl	-196(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -196(%rbp)
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	callq	dgettext@PLT
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movl	$3, %r9d
	movq	-160(%rbp), %r8
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movl	-652(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movss	%xmm0, -656(%rbp)       # 4-byte Spill
	movss	-656(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned@PLT
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB0_44:                               # %if.end.174
	cmpq	$0, -80(%rbp)
	je	.LBB0_46
# BB#45:                                # %if.then.176
	movq	-80(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -684(%rbp)       # 4-byte Spill
	movss	-684(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-160(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-152(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	-196(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -196(%rbp)
	movq	%rax, -712(%rbp)        # 8-byte Spill
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	callq	dgettext@PLT
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movl	$3, %r9d
	movq	-160(%rbp), %r8
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	-716(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movss	%xmm0, -720(%rbp)       # 4-byte Spill
	movss	-720(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned@PLT
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB0_46:                               # %if.end.189
	movq	-128(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_47:                               # %return
	movq	-32(%rbp), %rax
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_proc_view_new, .Lfunc_end0-gimp_proc_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_proc_view_create_params,@function
gimp_proc_view_create_params:           # @gimp_proc_view_create_params
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
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp9:
	.cfi_offset %rbx, -24
	movl	$3, %eax
	xorl	%r9d, %r9d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	-20(%rbp), %edi
	movl	%eax, %esi
	movl	%r9d, %edx
	callq	gtk_table_new@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings@PLT
	movl	$0, -60(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-60(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -116(%rbp)       # 4-byte Spill
	movss	-116(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_size_group_add_widget@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-72(%rbp), %rsi
	movl	-60(%rbp), %r9d
	movl	-60(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_pdb_arg_type_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-80(%rbp), %rcx
	movslq	-60(%rbp), %rdi
	imulq	$24, %rdi, %rdi
	addq	-16(%rbp), %rdi
	movl	(%rdi), %edx
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value@PLT
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	g_strdup@PLT
	movq	%rax, -88(%rbp)
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	$-1, %rsi
	movq	-80(%rbp), %rdi
	callq	g_ascii_strup@PLT
	movq	%rax, -88(%rbp)
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %ecx
	leaq	.L.str.8(%rip), %rdx
	movl	$3, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-156(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	gimp_label_set_attributes@PLT
	movq	-72(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -172(%rbp)       # 4-byte Spill
	movss	-172(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_size_group_add_widget@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movl	$2, %ecx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movl	-60(%rbp), %r10d
	movl	-60(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r8d, -188(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -192(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movslq	-60(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_selectable@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -212(%rbp)       # 4-byte Spill
	movss	-212(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap@PLT
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_size_group_add_widget@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %edx
	movl	$3, %ecx
	movl	$6, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	-72(%rbp), %rsi
	movl	-60(%rbp), %r11d
	movl	-60(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r9d, -240(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$6, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -244(%rbp)       # 4-byte Spill
	callq	gtk_table_attach@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_1
.LBB1_7:                                # %for.end
	movq	-56(%rbp), %rax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_proc_view_create_params, .Lfunc_end1-gimp_proc_view_create_params
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"UNKNOWN"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp20-libgimp"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Parameters"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Return Values"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Additional Information"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Author:"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Date:"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Copyright:"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"monospace"
	.size	.L.str.8, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
