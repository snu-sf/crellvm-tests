	.text
	.file	"gimpmemsizeentry.bc"
	.globl	gimp_memsize_entry_get_type
	.align	16, 0x90
	.type	gimp_memsize_entry_get_type,@function
gimp_memsize_entry_get_type:            # @gimp_memsize_entry_get_type
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
	movq	gimp_memsize_entry_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_memsize_entry_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gtk_box_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_memsize_entry_class_intern_init(%rip), %rdi
	movl	$184, %r8d
	leaq	gimp_memsize_entry_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_memsize_entry_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_memsize_entry_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_memsize_entry_get_type, .Lfunc_end0-gimp_memsize_entry_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_memsize_entry_class_intern_init,@function
gimp_memsize_entry_class_intern_init:   # @gimp_memsize_entry_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_memsize_entry_parent_class(%rip)
	cmpl	$0, GimpMemsizeEntry_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpMemsizeEntry_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_memsize_entry_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_memsize_entry_class_intern_init, .Lfunc_end1-gimp_memsize_entry_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_memsize_entry_init,@function
gimp_memsize_entry_init:                # @gimp_memsize_entry_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing@PLT
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_memsize_entry_init, .Lfunc_end2-gimp_memsize_entry_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4620693217682128896     # double 8
	.text
	.globl	gimp_memsize_entry_new
	.align	16, 0x90
	.type	gimp_memsize_entry_new,@function
gimp_memsize_entry_new:                 # @gimp_memsize_entry_new
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.LBB3_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	.LBB3_4
# BB#3:                                 # %if.then
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_memsize_entry_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_14
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	callq	gimp_memsize_entry_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -40(%rbp)
	movl	$30, -52(%rbp)
.LBB3_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -52(%rbp)
	jbe	.LBB3_13
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-64(%rbp), %rsi         # 8-byte Reload
	shlq	%cl, %rsi
	cmpq	%rsi, %rdx
	jbe	.LBB3_11
# BB#9:                                 # %land.lhs.true.6
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-72(%rbp), %rsi         # 8-byte Reload
	shlq	%cl, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rsi
	cmpq	$0, %rdx
	jne	.LBB3_11
# BB#10:                                # %if.then.10
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.11
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-52(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_7
.LBB3_13:                               # %for.end
	leaq	-48(%rbp), %rdi
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_1(%rip), %xmm4   # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 152(%rax)
	movq	-16(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cvtsi2sdq	%rax, %xmm1
	movq	-24(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cvtsi2sdq	%rax, %xmm2
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cvtsi2sdq	%rax, %xmm3
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-80(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, 168(%rdi)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, 160(%rsi)
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref_sink@PLT
	movq	-40(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$7, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_memsize_entry_adj_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-40(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movl	$10, %esi
	movl	$20, %ecx
	movl	$30, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new@PLT
	movq	-40(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active@PLT
	leaq	.L.str.8(%rip), %rsi
	leaq	gimp_memsize_entry_unit_callback(%rip), %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	-40(%rbp), %r10
	movq	%r10, %rcx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data@PLT
	movq	-40(%rbp), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	176(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -8(%rbp)
.LBB3_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_memsize_entry_new, .Lfunc_end3-gimp_memsize_entry_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.align	16, 0x90
	.type	gimp_memsize_entry_adj_callback,@function
gimp_memsize_entry_adj_callback:        # @gimp_memsize_entry_adj_callback
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
	subq	$32, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_value@PLT
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rsi
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	xorq	%rdi, %rsi
	cvttsd2si	%xmm0, %rdi
	ucomisd	%xmm1, %xmm0
	cmovbq	%rdi, %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	152(%rdi), %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, 128(%rdi)
	movq	-16(%rbp), %rsi
	movl	gimp_memsize_entry_signals(%rip), %edx
	movq	%rsi, %rdi
	movl	%edx, %esi
	movl	-28(%rbp), %edx         # 4-byte Reload
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_memsize_entry_adj_callback, .Lfunc_end4-gimp_memsize_entry_adj_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_memsize_entry_unit_callback,@function
gimp_memsize_entry_unit_callback:       # @gimp_memsize_entry_unit_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active@PLT
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rsi
	cmpl	152(%rsi), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-48(%rbp), %rdx         # 8-byte Reload
	sarq	%cl, %rdx
	cvtsi2sdq	%rdx, %xmm0
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> RCX<kill>
	sarq	%cl, %rdx
	cvtsi2sdq	%rdx, %xmm1
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> RCX<kill>
	sarq	%cl, %rdx
	cvtsi2sdq	%rdx, %xmm2
	movq	-16(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_step_increment@PLT
	movq	-16(%rbp), %rdx
	movq	160(%rdx), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_increment@PLT
	movq	-16(%rbp), %rdx
	movq	160(%rdx), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_page_size@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-104(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_configure@PLT
.LBB5_2:                                # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_memsize_entry_unit_callback, .Lfunc_end5-gimp_memsize_entry_unit_callback
	.cfi_endproc

	.globl	gimp_memsize_entry_set_value
	.align	16, 0x90
	.type	gimp_memsize_entry_set_value,@function
gimp_memsize_entry_set_value:           # @gimp_memsize_entry_set_value
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
	movq	%rax, -32(%rbp)
	callq	gimp_memsize_entry_get_type@PLT
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
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.9
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_memsize_entry_set_value(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_28
.LBB6_11:                               # %if.end.11
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.12
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	136(%rcx), %rax
	jb	.LBB6_16
# BB#14:                                # %land.lhs.true.14
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	144(%rcx), %rax
	ja	.LBB6_16
# BB#15:                                # %if.then.16
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.17
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_memsize_entry_set_value(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_28
.LBB6_17:                               # %if.end.18
	jmp	.LBB6_18
.LBB6_18:                               # %do.end.19
	movl	$30, -20(%rbp)
.LBB6_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -20(%rbp)
	jbe	.LBB6_25
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB6_19 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	%cl, %rsi
	cmpq	%rsi, %rdx
	jbe	.LBB6_23
# BB#21:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB6_19 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-64(%rbp), %rsi         # 8-byte Reload
	shlq	%cl, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rsi
	cmpq	$0, %rdx
	jne	.LBB6_23
# BB#22:                                # %if.then.26
	jmp	.LBB6_25
.LBB6_23:                               # %if.end.27
                                        #   in Loop: Header=BB6_19 Depth=1
	jmp	.LBB6_24
.LBB6_24:                               # %for.inc
                                        #   in Loop: Header=BB6_19 Depth=1
	movl	-20(%rbp), %eax
	subl	$10, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_19
.LBB6_25:                               # %for.end
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	152(%rcx), %eax
	je	.LBB6_27
# BB#26:                                # %if.then.30
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 128(%rdx)
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active@PLT
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB6_27:                               # %if.end.36
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cvtsi2sdq	%rax, %xmm0
	callq	gtk_adjustment_set_value@PLT
.LBB6_28:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_memsize_entry_set_value, .Lfunc_end6-gimp_memsize_entry_set_value
	.cfi_endproc

	.globl	gimp_memsize_entry_get_value
	.align	16, 0x90
	.type	gimp_memsize_entry_get_value,@function
gimp_memsize_entry_get_value:           # @gimp_memsize_entry_get_value
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
	callq	gimp_memsize_entry_get_type@PLT
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
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.9
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_memsize_entry_get_value(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.11
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_memsize_entry_get_value, .Lfunc_end7-gimp_memsize_entry_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_memsize_entry_class_init,@function
gimp_memsize_entry_class_init:          # @gimp_memsize_entry_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.3(%rip), %rdi
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	leaq	gimp_memsize_entry_finalize(%rip), %r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 824(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -28(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -48(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, gimp_memsize_entry_signals(%rip)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_memsize_entry_class_init, .Lfunc_end8-gimp_memsize_entry_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_memsize_entry_finalize,@function
gimp_memsize_entry_finalize:            # @gimp_memsize_entry_finalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 160(%rdi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-16(%rbp), %rax
	movq	$0, 160(%rax)
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_memsize_entry_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_memsize_entry_finalize, .Lfunc_end9-gimp_memsize_entry_finalize
	.cfi_endproc

	.type	gimp_memsize_entry_get_type.g_define_type_id__volatile,@object # @gimp_memsize_entry_get_type.g_define_type_id__volatile
	.local	gimp_memsize_entry_get_type.g_define_type_id__volatile
	.comm	gimp_memsize_entry_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMemsizeEntry"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_memsize_entry_new,@object # @__func__.gimp_memsize_entry_new
.L__func__.gimp_memsize_entry_new:
	.asciz	"gimp_memsize_entry_new"
	.size	.L__func__.gimp_memsize_entry_new, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"value >= lower && value <= upper"
	.size	.L.str.2, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"value-changed"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp20-libgimp"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Kilobytes"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Megabytes"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gigabytes"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"changed"
	.size	.L.str.8, 8

	.type	.L__func__.gimp_memsize_entry_set_value,@object # @__func__.gimp_memsize_entry_set_value
.L__func__.gimp_memsize_entry_set_value:
	.asciz	"gimp_memsize_entry_set_value"
	.size	.L__func__.gimp_memsize_entry_set_value, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_MEMSIZE_ENTRY (entry)"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"value >= entry->lower && value <= entry->upper"
	.size	.L.str.10, 47

	.type	.L__func__.gimp_memsize_entry_get_value,@object # @__func__.gimp_memsize_entry_get_value
.L__func__.gimp_memsize_entry_get_value:
	.asciz	"gimp_memsize_entry_get_value"
	.size	.L__func__.gimp_memsize_entry_get_value, 29

	.type	gimp_memsize_entry_parent_class,@object # @gimp_memsize_entry_parent_class
	.local	gimp_memsize_entry_parent_class
	.comm	gimp_memsize_entry_parent_class,8,8
	.type	GimpMemsizeEntry_private_offset,@object # @GimpMemsizeEntry_private_offset
	.local	GimpMemsizeEntry_private_offset
	.comm	GimpMemsizeEntry_private_offset,4,4
	.type	gimp_memsize_entry_signals,@object # @gimp_memsize_entry_signals
	.local	gimp_memsize_entry_signals
	.comm	gimp_memsize_entry_signals,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
