	.text
	.file	"gimpsizeentry.bc"
	.globl	gimp_size_entry_get_type
	.align	16, 0x90
	.type	gimp_size_entry_get_type,@function
gimp_size_entry_get_type:               # @gimp_size_entry_get_type
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
	movq	gimp_size_entry_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_size_entry_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_table_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$880, %edx              # imm = 0x370
	leaq	gimp_size_entry_class_intern_init(%rip), %rdi
	movl	$200, %r8d
	leaq	gimp_size_entry_init(%rip), %rcx
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
	leaq	gimp_size_entry_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_size_entry_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_size_entry_get_type, .Lfunc_end0-gimp_size_entry_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_entry_class_intern_init,@function
gimp_size_entry_class_intern_init:      # @gimp_size_entry_class_intern_init
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
	movq	%rax, gimp_size_entry_parent_class(%rip)
	cmpl	$0, GimpSizeEntry_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpSizeEntry_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_size_entry_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_size_entry_class_intern_init, .Lfunc_end1-gimp_size_entry_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_entry_init,@function
gimp_size_entry_init:                   # @gimp_size_entry_init
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
	movq	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 160(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 168(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 176(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 180(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 184(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 188(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 192(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_size_entry_init, .Lfunc_end2-gimp_size_entry_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4692333547057315840     # double 5.0E+5
.LCPI3_1:
	.quad	4636737291354636288     # double 100
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gimp_size_entry_new
	.align	16, 0x90
	.type	gimp_size_entry_new,@function
gimp_size_entry_new:                    # @gimp_size_entry_new
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
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp12:
	.cfi_offset %rbx, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r10d, -48(%rbp)
	movl	%eax, -52(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -20(%rbp)
	jl	.LBB3_4
# BB#2:                                 # %land.lhs.true
	cmpl	$16, -20(%rbp)
	jg	.LBB3_4
# BB#3:                                 # %if.then
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -16(%rbp)
	jmp	.LBB3_44
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	callq	gimp_size_entry_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 160(%rax)
	movl	-24(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 176(%rax)
	movl	-44(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 188(%rax)
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 192(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movl	188(%rsi), %ecx
	addl	$1, %ecx
	addl	$2, %ecx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	addl	$3, %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_table_resize@PLT
	cmpl	$2, -52(%rbp)
	je	.LBB3_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$1, -44(%rbp)
	jne	.LBB3_9
.LBB3_8:                                # %if.then.15
	movq	-64(%rbp), %rax
	movl	$0, 180(%rax)
	jmp	.LBB3_10
.LBB3_9:                                # %if.else.17
	movl	-36(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 180(%rcx)
.LBB3_10:                               # %if.end.19
	cmpl	$2, -52(%rbp)
	jne	.LBB3_12
# BB#11:                                # %if.then.21
	movq	-64(%rbp), %rax
	movl	$0, 184(%rax)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.23
	movl	-40(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 184(%rcx)
.LBB3_13:                               # %if.end.25
	movl	$0, -76(%rbp)
.LBB3_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_37
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$120, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append@PLT
	movl	$3, %ecx
	xorl	%edx, %edx
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI3_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI3_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	-64(%rbp), %rsi
	movq	%rax, 152(%rsi)
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-88(%rbp), %rax
	movsd	%xmm3, 8(%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm2, 24(%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm1, 48(%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm1, 56(%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm1, 88(%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm1, 96(%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm0, 104(%rax)
	cmpl	$1, -52(%rbp)
	cmovel	%edx, %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 112(%rax)
	movq	-88(%rbp), %rax
	movl	$0, 116(%rax)
	cmpl	$0, -24(%rbp)
	jne	.LBB3_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-88(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB3_24
.LBB3_17:                               # %cond.false
                                        #   in Loop: Header=BB3_14 Depth=1
	cmpl	$65536, -24(%rbp)       # imm = 0x10000
	jne	.LBB3_19
# BB#18:                                # %cond.true.35
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$2, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB3_23
.LBB3_19:                               # %cond.false.36
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	-24(%rbp), %edi
	callq	gimp_unit_get_digits@PLT
	cmpl	$5, %eax
	jge	.LBB3_21
# BB#20:                                # %cond.true.39
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	-24(%rbp), %edi
	callq	gimp_unit_get_digits@PLT
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB3_22
.LBB3_21:                               # %cond.false.41
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$5, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB3_22
.LBB3_22:                               # %cond.end
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB3_23:                               # %cond.end.44
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB3_24:                               # %cond.end.46
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI3_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_3(%rip), %xmm4   # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	%eax, -92(%rbp)
	movq	-88(%rbp), %rcx
	addq	$32, %rcx
	movq	-88(%rbp), %rdx
	movsd	48(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-88(%rbp), %rdx
	movsd	56(%rdx), %xmm2         # xmm2 = mem[0],zero
	movq	-88(%rbp), %rdx
	movsd	64(%rdx), %xmm3         # xmm3 = mem[0],zero
	movl	-92(%rbp), %esi
	movq	%rcx, %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-144(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-144(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new@PLT
	movq	-88(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_size_entry_attach_eevl
	cmpl	$0, -48(%rbp)
	jle	.LBB3_29
# BB#25:                                # %if.then.57
                                        #   in Loop: Header=BB3_14 Depth=1
	cmpl	$17, -48(%rbp)
	jge	.LBB3_27
# BB#26:                                # %if.then.59
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-48(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars@PLT
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.63
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	gtk_widget_set_size_request@PLT
.LBB3_28:                               # %if.end.65
                                        #   in Loop: Header=BB3_14 Depth=1
	jmp	.LBB3_29
.LBB3_29:                               # %if.end.66
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-88(%rbp), %rsi
	movq	40(%rsi), %rsi
	movl	-76(%rbp), %ecx
	addl	$1, %ecx
	movl	-76(%rbp), %edx
	addl	$2, %edx
	movq	-64(%rbp), %rdi
	movl	188(%rdi), %r8d
	addl	$1, %r8d
	movq	-64(%rbp), %rdi
	movl	188(%rdi), %r9d
	addl	$2, %r9d
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-172(%rbp), %ecx        # 4-byte Reload
	callq	gtk_table_attach_defaults@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_size_entry_value_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-88(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	-88(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_show@PLT
	movq	-64(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB3_31
# BB#30:                                # %if.then.80
                                        #   in Loop: Header=BB3_14 Depth=1
	movsd	.LCPI3_2(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI3_3(%rip), %xmm4   # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movq	-88(%rbp), %rax
	addq	$72, %rax
	movq	-88(%rbp), %rcx
	movsd	88(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	-88(%rbp), %rcx
	movsd	96(%rcx), %xmm2         # xmm2 = mem[0],zero
	movq	-88(%rbp), %rcx
	movsd	104(%rcx), %xmm3        # xmm3 = mem[0],zero
	movq	-88(%rbp), %rcx
	movl	112(%rcx), %esi
	movq	%rax, %rdi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-192(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-192(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new@PLT
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-88(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-88(%rbp), %rax
	movq	80(%rax), %rdi
	movl	-48(%rbp), %esi
	callq	gtk_widget_set_size_request@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rcx
	movq	80(%rcx), %rsi
	movl	-76(%rbp), %edx
	addl	$1, %edx
	movl	-76(%rbp), %r10d
	addl	$2, %r10d
	movq	%rax, %rdi
	movl	%r10d, %ecx
	callq	gtk_table_attach_defaults@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_size_entry_refval_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	-88(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data@PLT
	movq	-88(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_widget_show@PLT
.LBB3_31:                               # %if.end.96
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$0, 180(%rax)
	je	.LBB3_35
# BB#32:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB3_14 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB3_35
# BB#33:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-64(%rbp), %rax
	cmpl	$0, 188(%rax)
	jne	.LBB3_35
# BB#34:                                # %if.then.104
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-88(%rbp), %rsi
	movl	112(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_digits@PLT
.LBB3_35:                               # %if.end.109
                                        #   in Loop: Header=BB3_14 Depth=1
	jmp	.LBB3_36
.LBB3_36:                               # %for.inc
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB3_14
.LBB3_37:                               # %for.end
	movq	-64(%rbp), %rax
	movl	160(%rax), %edi
	callq	gimp_unit_store_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	180(%rax), %esi
	callq	gimp_unit_store_set_has_pixels@PLT
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	184(%rax), %esi
	callq	gimp_unit_store_set_has_percent@PLT
	cmpq	$0, -32(%rbp)
	je	.LBB3_43
# BB#38:                                # %if.then.115
	movq	-32(%rbp), %rdi
	callq	g_strdup@PLT
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	strstr@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB3_40
# BB#39:                                # %if.then.119
	movq	-112(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	strcpy@PLT
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB3_40:                               # %if.end.121
	leaq	.L.str.6(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	strstr@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB3_42
# BB#41:                                # %if.then.124
	movq	-112(%rbp), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	strcpy@PLT
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB3_42:                               # %if.end.126
	leaq	.L.str.7(%rip), %rsi
	leaq	.L.str.8(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set@PLT
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
.LBB3_43:                               # %if.end.127
	movq	-72(%rbp), %rdi
	callq	gimp_unit_combo_box_new_with_model@PLT
	movq	-64(%rbp), %rdi
	movq	%rax, 168(%rdi)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-64(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_unit_combo_box_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-24(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_unit_combo_box_set_active@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$6, %ecx
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	168(%rsi), %rsi
	movl	-76(%rbp), %r8d
	addl	$2, %r8d
	movl	-76(%rbp), %r9d
	addl	$3, %r9d
	movq	-64(%rbp), %rdi
	movl	188(%rdi), %r10d
	addl	$1, %r10d
	movq	-64(%rbp), %rdi
	movl	188(%rdi), %r11d
	addl	$2, %r11d
	movq	%rax, %rdi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	leaq	.L.str.9(%rip), %rsi
	leaq	gimp_size_entry_unit_callback(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-64(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data@PLT
	movq	-64(%rbp), %rcx
	movq	168(%rcx), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_show@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
.LBB3_44:                               # %return
	movq	-16(%rbp), %rax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_size_entry_new, .Lfunc_end3-gimp_size_entry_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_entry_attach_eevl,@function
gimp_size_entry_attach_eevl:            # @gimp_size_entry_attach_eevl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gtk_spin_button_set_numeric@PLT
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_spin_button_set_update_policy@PLT
	leaq	.L.str.24(%rip), %rsi
	leaq	gimp_size_entry_eevl_input_callback(%rip), %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_size_entry_attach_eevl, .Lfunc_end4-gimp_size_entry_attach_eevl
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_entry_value_callback,@function
gimp_size_entry_value_callback:         # @gimp_size_entry_value_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value@PLT
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB5_1
	jp	.LBB5_1
	jmp	.LBB5_2
.LBB5_1:                                # %if.then
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_update_value
.LBB5_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_size_entry_value_callback, .Lfunc_end5-gimp_size_entry_value_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_entry_refval_callback,@function
gimp_size_entry_refval_callback:        # @gimp_size_entry_refval_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value@PLT
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB6_1
	jp	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:                                # %if.then
	movq	-24(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_update_refval
.LBB6_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_size_entry_refval_callback, .Lfunc_end6-gimp_size_entry_refval_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_entry_unit_callback,@function
gimp_size_entry_unit_callback:          # @gimp_size_entry_unit_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_unit_combo_box_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_unit_combo_box_get_active@PLT
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	176(%rsi), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_size_entry_update_unit
.LBB7_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_size_entry_unit_callback, .Lfunc_end7-gimp_size_entry_unit_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4692333547057315840     # double 5.0E+5
.LCPI8_1:
	.quad	4636737291354636288     # double 100
.LCPI8_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_size_entry_add_field
	.align	16, 0x90
	.type	gimp_size_entry_add_field,@function
gimp_size_entry_add_field:              # @gimp_size_entry_add_field
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_add_field(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_53
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_spin_button_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_add_field(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_53
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB8_38
# BB#25:                                # %if.then.40
	jmp	.LBB8_26
.LBB8_26:                               # %do.body.41
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gtk_spin_button_get_type@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB8_28
# BB#27:                                # %if.then.50
	movl	$0, -108(%rbp)
	jmp	.LBB8_33
.LBB8_28:                               # %if.else.51
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_31
# BB#29:                                # %land.lhs.true.54
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB8_31
# BB#30:                                # %if.then.58
	movl	$1, -108(%rbp)
	jmp	.LBB8_32
.LBB8_31:                               # %if.else.59
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -108(%rbp)
.LBB8_32:                               # %if.end.61
	jmp	.LBB8_33
.LBB8_33:                               # %if.end.62
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB8_35
# BB#34:                                # %if.then.65
	jmp	.LBB8_36
.LBB8_35:                               # %if.else.66
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_add_field(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_53
.LBB8_36:                               # %if.end.67
	jmp	.LBB8_37
.LBB8_37:                               # %do.end.68
	jmp	.LBB8_38
.LBB8_38:                               # %if.end.69
	movl	$120, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movl	$3, %ecx
	xorl	%edx, %edx
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI8_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI8_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	-8(%rbp), %rsi
	movq	%rax, 152(%rsi)
	movq	-8(%rbp), %rax
	movl	160(%rax), %r8d
	addl	$1, %r8d
	movl	%r8d, 160(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movsd	%xmm3, 8(%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm2, 24(%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm1, 48(%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm1, 56(%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm1, 88(%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm1, 96(%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm0, 104(%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, 192(%rax)
	cmovel	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 112(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_spin_button_get_adjustment@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_size_entry_value_callback(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %r10
	movq	%rax, 40(%r10)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	-32(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_size_entry_attach_eevl
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB8_40
# BB#39:                                # %if.then.86
	movq	-24(%rbp), %rdi
	callq	gtk_spin_button_get_adjustment@PLT
	movq	-32(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	leaq	gimp_size_entry_refval_callback(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	%rax, 80(%rdx)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB8_40:                               # %if.end.93
	movq	-8(%rbp), %rax
	cmpl	$0, 176(%rax)
	jne	.LBB8_42
# BB#41:                                # %cond.true
	movq	-32(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	jmp	.LBB8_49
.LBB8_42:                               # %cond.false
	movq	-8(%rbp), %rax
	cmpl	$65536, 176(%rax)       # imm = 0x10000
	jne	.LBB8_44
# BB#43:                                # %cond.true.98
	movl	$2, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB8_48
.LBB8_44:                               # %cond.false.99
	movq	-8(%rbp), %rax
	movl	176(%rax), %edi
	callq	gimp_unit_get_digits@PLT
	cmpl	$5, %eax
	jge	.LBB8_46
# BB#45:                                # %cond.true.103
	movq	-8(%rbp), %rax
	movl	176(%rax), %edi
	callq	gimp_unit_get_digits@PLT
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB8_47
.LBB8_46:                               # %cond.false.106
	movl	$5, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB8_47
.LBB8_47:                               # %cond.end
	movl	-188(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB8_48:                               # %cond.end.108
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB8_49:                               # %cond.end.110
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_digits@PLT
	movq	-8(%rbp), %rax
	cmpl	$0, 180(%rax)
	je	.LBB8_53
# BB#50:                                # %land.lhs.true.115
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	jne	.LBB8_53
# BB#51:                                # %land.lhs.true.118
	movq	-8(%rbp), %rax
	cmpl	$0, 176(%rax)
	jne	.LBB8_53
# BB#52:                                # %if.then.121
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movl	112(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_digits@PLT
.LBB8_53:                               # %if.end.126
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_size_entry_add_field, .Lfunc_end8-gimp_size_entry_add_field
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1056964608              # float 0.5
	.text
	.globl	gimp_size_entry_attach_label
	.align	16, 0x90
	.type	gimp_size_entry_attach_label,@function
gimp_size_entry_attach_label:           # @gimp_size_entry_attach_label
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movss	%xmm0, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_attach_label(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB9_30
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_attach_label(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB9_30
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-24(%rbp), %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -48(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB9_29
# BB#18:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_children@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB9_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB9_28
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB9_19 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.14(%rip), %rdx
	leaq	-100(%rbp), %rcx
	leaq	.L.str.15(%rip), %r8
	leaq	-104(%rbp), %r9
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-96(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_container_child_get@PLT
	cmpl	$1, -100(%rbp)
	jne	.LBB9_23
# BB#21:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB9_19 Depth=1
	movl	-104(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB9_23
# BB#22:                                # %if.then.34
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	jmp	.LBB9_28
.LBB9_23:                               # %if.end.37
                                        #   in Loop: Header=BB9_19 Depth=1
	jmp	.LBB9_24
.LBB9_24:                               # %for.inc
                                        #   in Loop: Header=BB9_19 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB9_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB9_19 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_26:                               # %cond.false
                                        #   in Loop: Header=BB9_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_27:                               # %cond.end
                                        #   in Loop: Header=BB9_19 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB9_19
.LBB9_28:                               # %for.end
	movq	-80(%rbp), %rdi
	callq	g_list_free@PLT
.LBB9_29:                               # %if.end.39
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$6, %ecx
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movl	-32(%rbp), %r8d
	movl	-32(%rbp), %r9d
	addl	$1, %r9d
	movl	-28(%rbp), %r10d
	movl	-28(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_size_entry_attach_label, .Lfunc_end9-gimp_size_entry_attach_label
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4679240012837945344     # double 65536
.LCPI10_1:
	.quad	4572414629676717179     # double 0.0050000000000000001
	.text
	.globl	gimp_size_entry_set_resolution
	.align	16, 0x90
	.type	gimp_size_entry_set_resolution,@function
gimp_size_entry_set_resolution:         # @gimp_size_entry_set_resolution
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_resolution(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_26
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB10_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB10_16
# BB#15:                                # %if.then.15
	jmp	.LBB10_17
.LBB10_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_resolution(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_26
.LBB10_17:                              # %if.end.17
	jmp	.LBB10_18
.LBB10_18:                              # %do.end.18
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_20
# BB#19:                                # %cond.true
	movsd	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB10_24
.LBB10_20:                              # %cond.false
	movsd	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB10_22
# BB#21:                                # %cond.true.21
	movsd	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB10_23
.LBB10_22:                              # %cond.false.22
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB10_23:                              # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB10_24:                              # %cond.end.23
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-40(%rbp), %rax
	cvtsd2ss	48(%rax), %xmm0
	movss	%xmm0, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries@PLT
	cmpl	$0, -28(%rbp)
	jne	.LBB10_26
# BB#25:                                # %if.then.28
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	cvtss2sd	-44(%rbp), %xmm0
	callq	gimp_size_entry_set_value@PLT
.LBB10_26:                              # %if.end.30
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_size_entry_set_resolution, .Lfunc_end10-gimp_size_entry_set_resolution
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gimp_size_entry_set_refval_boundaries
	.align	16, 0x90
	.type	gimp_size_entry_set_refval_boundaries,@function
gimp_size_entry_set_refval_boundaries:  # @gimp_size_entry_set_refval_boundaries
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_refval_boundaries(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_40
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB11_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB11_16
# BB#15:                                # %if.then.15
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_refval_boundaries(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_40
.LBB11_17:                              # %if.end.17
	jmp	.LBB11_18
.LBB11_18:                              # %do.end.18
	jmp	.LBB11_19
.LBB11_19:                              # %do.body.19
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB11_21
# BB#20:                                # %if.then.21
	jmp	.LBB11_22
.LBB11_21:                              # %if.else.22
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_refval_boundaries(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_40
.LBB11_22:                              # %if.end.23
	jmp	.LBB11_23
.LBB11_23:                              # %do.end.24
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 96(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 104(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB11_25
# BB#24:                                # %if.then.27
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_lower@PLT
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_upper@PLT
.LBB11_25:                              # %if.end.33
	movq	-40(%rbp), %rax
	cmpl	$0, 116(%rax)
	je	.LBB11_29
# BB#26:                                # %if.then.35
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB11_28
# BB#27:                                # %if.then.38
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
.LBB11_28:                              # %if.end.41
	jmp	.LBB11_40
.LBB11_29:                              # %if.end.42
	movq	-40(%rbp), %rax
	movl	116(%rax), %ecx
	incl	%ecx
	movl	%ecx, 116(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	192(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB11_30
	jmp	.LBB11_41
.LBB11_41:                              # %if.end.42
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB11_31
	jmp	.LBB11_42
.LBB11_42:                              # %if.end.42
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB11_36
	jmp	.LBB11_37
.LBB11_30:                              # %sw.bb
	jmp	.LBB11_38
.LBB11_31:                              # %sw.bb.45
	movq	-8(%rbp), %rax
	movl	176(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	je	.LBB11_32
	jmp	.LBB11_43
.LBB11_43:                              # %sw.bb.45
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$65536, %eax            # imm = 0x10000
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB11_33
	jmp	.LBB11_34
.LBB11_32:                              # %sw.bb.46
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_size_entry_set_value_boundaries@PLT
	jmp	.LBB11_35
.LBB11_33:                              # %sw.bb.49
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	16(%rax), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	16(%rax), %xmm1
	divsd	%xmm1, %xmm2
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	16(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	16(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_size_entry_set_value_boundaries@PLT
	jmp	.LBB11_35
.LBB11_34:                              # %sw.default
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	176(%rax), %ecx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	divsd	8(%rax), %xmm1
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	176(%rax), %edi
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	divsd	8(%rax), %xmm1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_value_boundaries@PLT
.LBB11_35:                              # %sw.epilog
	jmp	.LBB11_38
.LBB11_36:                              # %sw.bb.74
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	176(%rax), %ecx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movl	%esi, -156(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	176(%rax), %edi
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_value_boundaries@PLT
	jmp	.LBB11_38
.LBB11_37:                              # %sw.default.83
	jmp	.LBB11_38
.LBB11_38:                              # %sw.epilog.84
	movq	-40(%rbp), %rax
	movl	116(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 116(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval@PLT
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB11_40
# BB#39:                                # %if.then.88
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
.LBB11_40:                              # %if.end.91
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_size_entry_set_refval_boundaries, .Lfunc_end11-gimp_size_entry_set_refval_boundaries
	.cfi_endproc

	.globl	gimp_size_entry_set_value
	.align	16, 0x90
	.type	gimp_size_entry_set_value,@function
gimp_size_entry_set_value:              # @gimp_size_entry_set_value
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_value(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_25
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB12_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB12_16
# BB#15:                                # %if.then.15
	jmp	.LBB12_17
.LBB12_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_value(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_25
.LBB12_17:                              # %if.end.17
	jmp	.LBB12_18
.LBB12_18:                              # %do.end.18
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	64(%rax), %xmm0
	jbe	.LBB12_20
# BB#19:                                # %cond.true
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB12_24
.LBB12_20:                              # %cond.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_22
# BB#21:                                # %cond.true.23
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB12_23
.LBB12_22:                              # %cond.false.25
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB12_23:                              # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB12_24:                              # %cond.end.26
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value@PLT
	movq	-32(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_update_value
.LBB12_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_size_entry_set_value, .Lfunc_end12-gimp_size_entry_set_value
	.cfi_endproc

	.globl	gimp_size_entry_set_size
	.align	16, 0x90
	.type	gimp_size_entry_set_size,@function
gimp_size_entry_set_size:               # @gimp_size_entry_set_size
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_size(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_24
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB13_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB13_16
# BB#15:                                # %if.then.15
	jmp	.LBB13_17
.LBB13_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_size(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_24
.LBB13_17:                              # %if.end.17
	jmp	.LBB13_18
.LBB13_18:                              # %do.end.18
	jmp	.LBB13_19
.LBB13_19:                              # %do.body.19
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB13_21
# BB#20:                                # %if.then.21
	jmp	.LBB13_22
.LBB13_21:                              # %if.else.22
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_size(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_24
.LBB13_22:                              # %if.end.23
	jmp	.LBB13_23
.LBB13_23:                              # %do.end.24
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval@PLT
.LBB13_24:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_size_entry_set_size, .Lfunc_end13-gimp_size_entry_set_size
	.cfi_endproc

	.globl	gimp_size_entry_set_refval
	.align	16, 0x90
	.type	gimp_size_entry_set_refval,@function
gimp_size_entry_set_refval:             # @gimp_size_entry_set_refval
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_refval(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_27
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB14_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB14_16
# BB#15:                                # %if.then.15
	jmp	.LBB14_17
.LBB14_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_refval(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_27
.LBB14_17:                              # %if.end.17
	jmp	.LBB14_18
.LBB14_18:                              # %do.end.18
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	ucomisd	104(%rax), %xmm0
	jbe	.LBB14_20
# BB#19:                                # %cond.true
	movq	-32(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB14_24
.LBB14_20:                              # %cond.false
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	96(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_22
# BB#21:                                # %cond.true.23
	movq	-32(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB14_23
.LBB14_22:                              # %cond.false.25
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB14_23:                              # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB14_24:                              # %cond.end.26
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB14_26
# BB#25:                                # %if.then.29
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value@PLT
.LBB14_26:                              # %if.end.30
	movq	-32(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_size_entry_update_refval
.LBB14_27:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_size_entry_set_refval, .Lfunc_end14-gimp_size_entry_set_refval
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	gimp_size_entry_set_value_boundaries
	.align	16, 0x90
	.type	gimp_size_entry_set_value_boundaries,@function
gimp_size_entry_set_value_boundaries:   # @gimp_size_entry_set_value_boundaries
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_size_entry_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_value_boundaries(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_35
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB15_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB15_16
# BB#15:                                # %if.then.15
	jmp	.LBB15_17
.LBB15_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_value_boundaries(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_35
.LBB15_17:                              # %if.end.17
	jmp	.LBB15_18
.LBB15_18:                              # %do.end.18
	jmp	.LBB15_19
.LBB15_19:                              # %do.body.19
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB15_21
# BB#20:                                # %if.then.21
	jmp	.LBB15_22
.LBB15_21:                              # %if.else.22
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_value_boundaries(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_35
.LBB15_22:                              # %if.end.23
	jmp	.LBB15_23
.LBB15_23:                              # %do.end.24
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -40(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_lower@PLT
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_upper@PLT
	movq	-40(%rbp), %rax
	cmpl	$0, 116(%rax)
	je	.LBB15_25
# BB#24:                                # %if.then.32
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	jmp	.LBB15_35
.LBB15_25:                              # %if.end.35
	movq	-40(%rbp), %rax
	movl	116(%rax), %ecx
	incl	%ecx
	movl	%ecx, 116(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	192(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB15_26
	jmp	.LBB15_36
.LBB15_36:                              # %if.end.35
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB15_27
	jmp	.LBB15_37
.LBB15_37:                              # %if.end.35
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB15_32
	jmp	.LBB15_33
.LBB15_26:                              # %sw.bb
	jmp	.LBB15_34
.LBB15_27:                              # %sw.bb.38
	movq	-8(%rbp), %rax
	movl	176(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	je	.LBB15_28
	jmp	.LBB15_38
.LBB15_38:                              # %sw.bb.38
	movl	-80(%rbp), %eax         # 4-byte Reload
	subl	$65536, %eax            # imm = 0x10000
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB15_29
	jmp	.LBB15_30
.LBB15_28:                              # %sw.bb.39
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries@PLT
	jmp	.LBB15_31
.LBB15_29:                              # %sw.bb.42
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	16(%rax), %xmm2
	movq	-40(%rbp), %rax
	mulsd	56(%rax), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	16(%rax), %xmm3
	movq	-40(%rbp), %rax
	mulsd	64(%rax), %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_size_entry_set_refval_boundaries@PLT
	jmp	.LBB15_31
.LBB15_30:                              # %sw.default
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	movl	176(%rax), %ecx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movl	%esi, -108(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	movl	176(%rax), %edi
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries@PLT
.LBB15_31:                              # %sw.epilog
	jmp	.LBB15_34
.LBB15_32:                              # %sw.bb.66
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	176(%rax), %ecx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movl	%esi, -148(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	176(%rax), %edi
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries@PLT
	jmp	.LBB15_34
.LBB15_33:                              # %sw.default.75
	jmp	.LBB15_34
.LBB15_34:                              # %sw.epilog.76
	movq	-40(%rbp), %rax
	movl	116(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 116(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_size_entry_set_value@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
.LBB15_35:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_size_entry_set_value_boundaries, .Lfunc_end15-gimp_size_entry_set_value_boundaries
	.cfi_endproc

	.globl	gimp_size_entry_get_value
	.align	16, 0x90
	.type	gimp_size_entry_get_value,@function
gimp_size_entry_get_value:              # @gimp_size_entry_get_value
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_get_value(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB16_19
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	jmp	.LBB16_13
.LBB16_13:                              # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB16_16
# BB#14:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB16_16
# BB#15:                                # %if.then.15
	jmp	.LBB16_17
.LBB16_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_get_value(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB16_19
.LBB16_17:                              # %if.end.17
	jmp	.LBB16_18
.LBB16_18:                              # %do.end.18
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB16_19:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_size_entry_get_value, .Lfunc_end16-gimp_size_entry_get_value
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_size_entry_update_value,@function
gimp_size_entry_update_value:           # @gimp_size_entry_update_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 116(%rdi)
	jle	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_34
.LBB17_2:                               # %if.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	192(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	je	.LBB17_3
	jmp	.LBB17_35
.LBB17_35:                              # %if.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB17_4
	jmp	.LBB17_36
.LBB17_36:                              # %if.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB17_23
	jmp	.LBB17_32
.LBB17_3:                               # %sw.bb
	jmp	.LBB17_33
.LBB17_4:                               # %sw.bb.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	je	.LBB17_5
	jmp	.LBB17_37
.LBB17_37:                              # %sw.bb.2
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$65536, %eax            # imm = 0x10000
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB17_6
	jmp	.LBB17_13
.LBB17_5:                               # %sw.bb.4
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 88(%rax)
	jmp	.LBB17_20
.LBB17_6:                               # %sw.bb.5
	movsd	.LCPI17_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm2
	mulsd	-16(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rax
	ucomisd	104(%rax), %xmm1
	jbe	.LBB17_8
# BB#7:                                 # %cond.true
	movq	-8(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB17_12
.LBB17_8:                               # %cond.false
	movsd	.LCPI17_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm2
	mulsd	-16(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movq	-8(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB17_10
# BB#9:                                 # %cond.true.17
	movq	-8(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB17_11
.LBB17_10:                              # %cond.false.19
	movsd	.LCPI17_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm2
	mulsd	-16(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
.LBB17_11:                              # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB17_12:                              # %cond.end.27
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 88(%rax)
	jmp	.LBB17_20
.LBB17_13:                              # %sw.default
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	ucomisd	104(%rax), %xmm1
	jbe	.LBB17_15
# BB#14:                                # %cond.true.36
	movq	-8(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB17_19
.LBB17_15:                              # %cond.false.38
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB17_17
# BB#16:                                # %cond.true.47
	movq	-8(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB17_18
.LBB17_17:                              # %cond.false.49
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
.LBB17_18:                              # %cond.end.56
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB17_19:                              # %cond.end.58
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 88(%rax)
.LBB17_20:                              # %sw.epilog
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 188(%rax)
	je	.LBB17_22
# BB#21:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value@PLT
.LBB17_22:                              # %if.end.64
	jmp	.LBB17_33
.LBB17_23:                              # %sw.bb.65
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	ucomisd	104(%rax), %xmm1
	jbe	.LBB17_25
# BB#24:                                # %cond.true.72
	movq	-8(%rbp), %rax
	movsd	104(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB17_29
.LBB17_25:                              # %cond.false.74
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB17_27
# BB#26:                                # %cond.true.81
	movq	-8(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB17_28
.LBB17_27:                              # %cond.false.83
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
.LBB17_28:                              # %cond.end.88
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB17_29:                              # %cond.end.90
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 188(%rax)
	je	.LBB17_31
# BB#30:                                # %if.then.96
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value@PLT
.LBB17_31:                              # %if.end.99
	jmp	.LBB17_33
.LBB17_32:                              # %sw.default.100
	jmp	.LBB17_33
.LBB17_33:                              # %sw.epilog.101
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	gimp_size_entry_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB17_34:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_size_entry_update_value, .Lfunc_end17-gimp_size_entry_update_value
	.cfi_endproc

	.globl	gimp_size_entry_set_refval_digits
	.align	16, 0x90
	.type	gimp_size_entry_set_refval_digits,@function
gimp_size_entry_set_refval_digits:      # @gimp_size_entry_set_refval_digits
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_refval_digits(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB18_31
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB18_16
# BB#14:                                # %land.lhs.true.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB18_16
# BB#15:                                # %if.then.15
	jmp	.LBB18_17
.LBB18_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_refval_digits(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB18_31
.LBB18_17:                              # %if.end.17
	jmp	.LBB18_18
.LBB18_18:                              # %do.end.18
	jmp	.LBB18_19
.LBB18_19:                              # %do.body.19
	cmpl	$0, -16(%rbp)
	jl	.LBB18_22
# BB#20:                                # %land.lhs.true.21
	cmpl	$6, -16(%rbp)
	jg	.LBB18_22
# BB#21:                                # %if.then.23
	jmp	.LBB18_23
.LBB18_22:                              # %if.else.24
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_refval_digits(%rip), %rsi
	leaq	.L.str.18(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB18_31
.LBB18_23:                              # %if.end.25
	jmp	.LBB18_24
.LBB18_24:                              # %do.end.26
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -24(%rbp)
	movl	-16(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	%esi, 112(%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, 192(%rax)
	jne	.LBB18_31
# BB#25:                                # %if.then.29
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB18_27
# BB#26:                                # %if.then.31
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movl	112(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_digits@PLT
	jmp	.LBB18_30
.LBB18_27:                              # %if.else.35
	movq	-8(%rbp), %rax
	cmpl	$0, 176(%rax)
	jne	.LBB18_29
# BB#28:                                # %if.then.37
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movl	112(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_digits@PLT
.LBB18_29:                              # %if.end.41
	jmp	.LBB18_30
.LBB18_30:                              # %if.end.42
	jmp	.LBB18_31
.LBB18_31:                              # %if.end.43
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_size_entry_set_refval_digits, .Lfunc_end18-gimp_size_entry_set_refval_digits
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_size_entry_get_refval
	.align	16, 0x90
	.type	gimp_size_entry_get_refval,@function
gimp_size_entry_get_refval:             # @gimp_size_entry_get_refval
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_get_refval(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB19_19
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB19_16
# BB#14:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB19_16
# BB#15:                                # %if.then.15
	jmp	.LBB19_17
.LBB19_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_get_refval(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movsd	.LCPI19_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB19_19
.LBB19_17:                              # %if.end.17
	jmp	.LBB19_18
.LBB19_18:                              # %do.end.18
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB19_19:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_size_entry_get_refval, .Lfunc_end19-gimp_size_entry_get_refval
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_size_entry_update_refval,@function
gimp_size_entry_update_refval:          # @gimp_size_entry_update_refval
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$1, 116(%rdi)
	jle	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_30
.LBB20_2:                               # %if.end
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 88(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	192(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	je	.LBB20_3
	jmp	.LBB20_31
.LBB20_31:                              # %if.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB20_4
	jmp	.LBB20_32
.LBB20_32:                              # %if.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB20_21
	jmp	.LBB20_28
.LBB20_3:                               # %sw.bb
	jmp	.LBB20_29
.LBB20_4:                               # %sw.bb.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	je	.LBB20_5
	jmp	.LBB20_33
.LBB20_33:                              # %sw.bb.2
	movl	-32(%rbp), %eax         # 4-byte Reload
	subl	$65536, %eax            # imm = 0x10000
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB20_6
	jmp	.LBB20_13
.LBB20_5:                               # %sw.bb.4
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	jmp	.LBB20_20
.LBB20_6:                               # %sw.bb.5
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	ucomisd	64(%rax), %xmm0
	jbe	.LBB20_8
# BB#7:                                 # %cond.true
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB20_12
.LBB20_8:                               # %cond.false
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_10
# BB#9:                                 # %cond.true.18
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB20_11
.LBB20_10:                              # %cond.false.20
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB20_11:                              # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB20_12:                              # %cond.end.28
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	jmp	.LBB20_20
.LBB20_13:                              # %sw.default
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	divsd	8(%rax), %xmm1
	movq	-8(%rbp), %rax
	ucomisd	64(%rax), %xmm1
	jbe	.LBB20_15
# BB#14:                                # %cond.true.37
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB20_19
.LBB20_15:                              # %cond.false.39
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	divsd	8(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB20_17
# BB#16:                                # %cond.true.48
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB20_18
.LBB20_17:                              # %cond.false.50
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	divsd	8(%rax), %xmm1
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
.LBB20_18:                              # %cond.end.57
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB20_19:                              # %cond.end.59
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
.LBB20_20:                              # %sw.epilog
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value@PLT
	jmp	.LBB20_29
.LBB20_21:                              # %sw.bb.63
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	ucomisd	64(%rax), %xmm1
	jbe	.LBB20_23
# BB#22:                                # %cond.true.70
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB20_27
.LBB20_23:                              # %cond.false.72
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB20_25
# BB#24:                                # %cond.true.79
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB20_26
.LBB20_25:                              # %cond.false.81
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gimp_unit_get_factor@PLT
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
.LBB20_26:                              # %cond.end.86
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
.LBB20_27:                              # %cond.end.88
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value@PLT
	jmp	.LBB20_29
.LBB20_28:                              # %sw.default.93
	jmp	.LBB20_29
.LBB20_29:                              # %sw.epilog.94
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	gimp_size_entry_signals+4(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB20_30:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_size_entry_update_refval, .Lfunc_end20-gimp_size_entry_update_refval
	.cfi_endproc

	.globl	gimp_size_entry_get_unit
	.align	16, 0x90
	.type	gimp_size_entry_get_unit,@function
gimp_size_entry_get_unit:               # @gimp_size_entry_get_unit
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_size_entry_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_get_unit(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	176(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB21_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_size_entry_get_unit, .Lfunc_end21-gimp_size_entry_get_unit
	.cfi_endproc

	.globl	gimp_size_entry_set_unit
	.align	16, 0x90
	.type	gimp_size_entry_set_unit,@function
gimp_size_entry_set_unit:               # @gimp_size_entry_set_unit
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_unit(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB22_25
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	jmp	.LBB22_13
.LBB22_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 180(%rax)
	jne	.LBB22_15
# BB#14:                                # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	je	.LBB22_16
.LBB22_15:                              # %if.then.14
	jmp	.LBB22_17
.LBB22_16:                              # %if.else.15
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_unit(%rip), %rsi
	leaq	.L.str.19(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB22_25
.LBB22_17:                              # %if.end.16
	jmp	.LBB22_18
.LBB22_18:                              # %do.end.17
	jmp	.LBB22_19
.LBB22_19:                              # %do.body.18
	movq	-8(%rbp), %rax
	cmpl	$0, 184(%rax)
	jne	.LBB22_21
# BB#20:                                # %lor.lhs.false.20
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	je	.LBB22_22
.LBB22_21:                              # %if.then.22
	jmp	.LBB22_23
.LBB22_22:                              # %if.else.23
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_unit(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB22_25
.LBB22_23:                              # %if.end.24
	jmp	.LBB22_24
.LBB22_24:                              # %do.end.25
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_unit_combo_box_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_unit_combo_box_set_active@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_size_entry_update_unit
.LBB22_25:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_size_entry_set_unit, .Lfunc_end22-gimp_size_entry_set_unit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_entry_update_unit,@function
gimp_size_entry_update_unit:            # @gimp_size_entry_update_unit
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
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 176(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.21(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %edx
	movl	%edx, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB23_21
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-28(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, 192(%rax)
	jne	.LBB23_13
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB23_5
# BB#4:                                 # %if.then.9
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movl	112(%rsi), %ecx
	addl	-32(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_spin_button_set_digits@PLT
	jmp	.LBB23_12
.LBB23_5:                               # %if.else
                                        #   in Loop: Header=BB23_1 Depth=1
	cmpl	$65536, -12(%rbp)       # imm = 0x10000
	jne	.LBB23_7
# BB#6:                                 # %if.then.14
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-32(%rbp), %ecx
	addl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_spin_button_set_digits@PLT
	jmp	.LBB23_11
.LBB23_7:                               # %if.else.19
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-12(%rbp), %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_unit_get_digits@PLT
	cmpl	$5, %eax
	jge	.LBB23_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-12(%rbp), %edi
	callq	gimp_unit_get_digits@PLT
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB23_10
.LBB23_9:                               # %cond.false
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$5, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB23_10
.LBB23_10:                              # %cond.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	addl	-32(%rbp), %eax
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_spin_button_set_digits@PLT
.LBB23_11:                              # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_12
.LBB23_12:                              # %if.end.29
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_19
.LBB23_13:                              # %if.else.30
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$2, 192(%rax)
	jne	.LBB23_18
# BB#14:                                # %if.then.34
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$1, %edi
	callq	gimp_unit_get_digits@PLT
	movl	-12(%rbp), %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_digits@PLT
	movl	-72(%rbp), %edi         # 4-byte Reload
	subl	%eax, %edi
	movl	%edi, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-32(%rbp), %edx
	addl	$3, %edx
	cmpl	$3, %edx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jle	.LBB23_16
# BB#15:                                # %cond.true.43
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB23_17
.LBB23_16:                              # %cond.false.45
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	$3, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB23_17
.LBB23_17:                              # %cond.end.46
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_spin_button_set_digits@PLT
.LBB23_18:                              # %if.end.48
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_19
.LBB23_19:                              # %if.end.49
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	104(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_size_entry_set_refval_boundaries@PLT
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB23_1
.LBB23_21:                              # %for.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_size_entry_signals+8(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_size_entry_update_unit, .Lfunc_end23-gimp_size_entry_update_unit
	.cfi_endproc

	.globl	gimp_size_entry_show_unit_menu
	.align	16, 0x90
	.type	gimp_size_entry_show_unit_menu,@function
gimp_size_entry_show_unit_menu:         # @gimp_size_entry_show_unit_menu
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_show_unit_menu(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB24_13
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_widget_set_visible@PLT
.LBB24_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_size_entry_show_unit_menu, .Lfunc_end24-gimp_size_entry_show_unit_menu
	.cfi_endproc

	.globl	gimp_size_entry_set_pixel_digits
	.align	16, 0x90
	.type	gimp_size_entry_set_pixel_digits,@function
gimp_size_entry_set_pixel_digits:       # @gimp_size_entry_set_pixel_digits
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_pixel_digits(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB25_13
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_unit_combo_box_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.21(%rip), %rsi
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_unit_combo_box_get_active@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_size_entry_update_unit
.LBB25_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_size_entry_set_pixel_digits, .Lfunc_end25-gimp_size_entry_set_pixel_digits
	.cfi_endproc

	.globl	gimp_size_entry_grab_focus
	.align	16, 0x90
	.type	gimp_size_entry_grab_focus,@function
gimp_size_entry_grab_focus:             # @gimp_size_entry_grab_focus
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_grab_focus(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB26_17
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB26_17
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	cmpl	$0, 188(%rax)
	je	.LBB26_15
# BB#14:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB26_16
.LBB26_15:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB26_16:                              # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	gtk_widget_grab_focus@PLT
.LBB26_17:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_size_entry_grab_focus, .Lfunc_end26-gimp_size_entry_grab_focus
	.cfi_endproc

	.globl	gimp_size_entry_set_activates_default
	.align	16, 0x90
	.type	gimp_size_entry_set_activates_default,@function
gimp_size_entry_set_activates_default:  # @gimp_size_entry_set_activates_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_set_activates_default(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB27_23
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB27_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB27_23
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB27_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB27_16
# BB#15:                                # %if.then.14
                                        #   in Loop: Header=BB27_13 Depth=1
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default@PLT
.LBB27_16:                              # %if.end.18
                                        #   in Loop: Header=BB27_13 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB27_18
# BB#17:                                # %if.then.20
                                        #   in Loop: Header=BB27_13 Depth=1
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default@PLT
.LBB27_18:                              # %if.end.24
                                        #   in Loop: Header=BB27_13 Depth=1
	jmp	.LBB27_19
.LBB27_19:                              # %for.inc
                                        #   in Loop: Header=BB27_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB27_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB27_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB27_22
.LBB27_21:                              # %cond.false
                                        #   in Loop: Header=BB27_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB27_22
.LBB27_22:                              # %cond.end
                                        #   in Loop: Header=BB27_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB27_13
.LBB27_23:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_size_entry_set_activates_default, .Lfunc_end27-gimp_size_entry_set_activates_default
	.cfi_endproc

	.globl	gimp_size_entry_get_help_widget
	.align	16, 0x90
	.type	gimp_size_entry_get_help_widget,@function
gimp_size_entry_get_help_widget:        # @gimp_size_entry_get_help_widget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_get_help_widget(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB28_24
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	jmp	.LBB28_13
.LBB28_13:                              # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB28_16
# BB#14:                                # %land.lhs.true.13
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB28_16
# BB#15:                                # %if.then.15
	jmp	.LBB28_17
.LBB28_16:                              # %if.else.16
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_get_help_widget(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB28_24
.LBB28_17:                              # %if.end.17
	jmp	.LBB28_18
.LBB28_18:                              # %do.end.18
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	g_slist_nth_data@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB28_20
# BB#19:                                # %if.then.21
	movq	$0, -8(%rbp)
	jmp	.LBB28_24
.LBB28_20:                              # %if.end.22
	movq	-32(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB28_22
# BB#21:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB28_23
.LBB28_22:                              # %cond.false
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB28_23:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB28_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_size_entry_get_help_widget, .Lfunc_end28-gimp_size_entry_get_help_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_entry_class_init,@function
gimp_size_entry_class_init:             # @gimp_size_entry_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$136, %rsp
.Ltmp91:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
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
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -36(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.22(%rip), %rdi
	movl	$1, %edx
	movl	$832, %ecx              # imm = 0x340
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_size_entry_signals(%rip)
	movq	-16(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.23(%rip), %rdi
	movl	$1, %edx
	movl	$840, %ecx              # imm = 0x348
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, gimp_size_entry_signals+4(%rip)
	movq	-16(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	callq	g_signal_new@PLT
	leaq	gimp_size_entry_finalize(%rip), %rsi
	movl	%eax, gimp_size_entry_signals+8(%rip)
	movq	-24(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-16(%rbp), %rsi
	movq	$0, 824(%rsi)
	movq	-16(%rbp), %rsi
	movq	$0, 832(%rsi)
	movq	-16(%rbp), %rsi
	movq	$0, 840(%rsi)
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_size_entry_class_init, .Lfunc_end29-gimp_size_entry_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_size_entry_finalize,@function
gimp_size_entry_finalize:               # @gimp_size_entry_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB30_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB30_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB30_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB30_2 Depth=1
	jmp	.LBB30_4
.LBB30_4:                               # %do.body
                                        #   in Loop: Header=BB30_2 Depth=1
	movl	$120, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	g_slice_free1@PLT
# BB#5:                                 # %do.end
                                        #   in Loop: Header=BB30_2 Depth=1
	jmp	.LBB30_6
.LBB30_6:                               # %for.inc
                                        #   in Loop: Header=BB30_2 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB30_2
.LBB30_7:                               # %for.end
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_slist_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
.LBB30_8:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_size_entry_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_size_entry_finalize, .Lfunc_end30-gimp_size_entry_finalize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_size_entry_eevl_input_callback,@function
gimp_size_entry_eevl_input_callback:    # @gimp_size_entry_eevl_input_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_spin_button_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_eevl_input_callback(%rip), %rsi
	leaq	.L.str.25(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB31_52
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	jmp	.LBB31_13
.LBB31_13:                              # %do.body.11
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB31_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB31_20
.LBB31_15:                              # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB31_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB31_19
.LBB31_18:                              # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -124(%rbp)
.LBB31_19:                              # %if.end.31
	jmp	.LBB31_20
.LBB31_20:                              # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB31_22
# BB#21:                                # %if.then.35
	jmp	.LBB31_23
.LBB31_22:                              # %if.else.36
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_eevl_input_callback(%rip), %rsi
	leaq	.L.str.26(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB31_52
.LBB31_23:                              # %if.end.37
	jmp	.LBB31_24
.LBB31_24:                              # %do.end.38
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_entry_get_text@PLT
	leaq	gimp_size_entry_eevl_unit_resolver(%rip), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-56(%rbp), %r8
	leaq	-64(%rbp), %r9
	movq	-32(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	gimp_eevl_evaluate@PLT
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB31_33
# BB#25:                                # %if.then.44
	cmpq	$0, -64(%rbp)
	je	.LBB31_31
# BB#26:                                # %land.lhs.true.46
	cmpq	$0, -56(%rbp)
	je	.LBB31_31
# BB#27:                                # %if.then.48
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	je	.LBB31_29
# BB#28:                                # %cond.true
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB31_30
.LBB31_29:                              # %cond.false
	leaq	.L.str.28(%rip), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB31_30
.LBB31_30:                              # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	leaq	.L.str.27(%rip), %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr@PLT
	jmp	.LBB31_32
.LBB31_31:                              # %if.else.50
	leaq	.L.str.29(%rip), %rdi
	movb	$0, %al
	callq	g_printerr@PLT
.LBB31_32:                              # %if.end.51
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_error_bell@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB31_52
.LBB31_33:                              # %if.else.54
	cmpl	$1, -72(%rbp)
	je	.LBB31_36
# BB#34:                                # %land.lhs.true.57
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$65536, 176(%rax)       # imm = 0x10000
	je	.LBB31_36
# BB#35:                                # %if.then.61
	leaq	.L.str.30(%rip), %rdi
	movl	-72(%rbp), %esi
	movb	$0, %al
	callq	g_printerr@PLT
	movq	-16(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_error_bell@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB31_52
.LBB31_36:                              # %if.else.65
	cmpl	$0, -72(%rbp)
	je	.LBB31_39
# BB#37:                                # %land.lhs.true.69
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$65536, 176(%rax)       # imm = 0x10000
	jne	.LBB31_39
# BB#38:                                # %if.then.74
	leaq	.L.str.31(%rip), %rdi
	movl	-72(%rbp), %esi
	movb	$0, %al
	callq	g_printerr@PLT
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_error_bell@PLT
	movl	$-1, -4(%rbp)
	jmp	.LBB31_52
.LBB31_39:                              # %if.else.78
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	je	.LBB31_40
	jmp	.LBB31_53
.LBB31_53:                              # %if.else.78
	movl	-220(%rbp), %eax        # 4-byte Reload
	subl	$65536, %eax            # imm = 0x10000
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB31_41
	jmp	.LBB31_42
.LBB31_40:                              # %sw.bb
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movl	$1, -136(%rbp)
	jmp	.LBB31_43
.LBB31_41:                              # %sw.bb.85
	movsd	.LCPI31_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movl	$0, -136(%rbp)
	jmp	.LBB31_43
.LBB31_42:                              # %sw.default
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	176(%rax), %edi
	callq	gimp_unit_get_factor@PLT
	movsd	%xmm0, -144(%rbp)
	movl	$1, -136(%rbp)
.LBB31_43:                              # %sw.epilog
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_spin_button_get_adjustment@PLT
	movq	%rax, -152(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-152(%rbp), %rdi
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper@PLT
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB31_45
# BB#44:                                # %cond.true.99
	movq	-152(%rbp), %rdi
	callq	gtk_adjustment_get_upper@PLT
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB31_49
.LBB31_45:                              # %cond.false.101
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-152(%rbp), %rdi
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower@PLT
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB31_47
# BB#46:                                # %cond.true.105
	movq	-152(%rbp), %rdi
	callq	gtk_adjustment_get_lower@PLT
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB31_48
.LBB31_47:                              # %cond.false.107
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB31_48:                              # %cond.end.108
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB31_49:                              # %cond.end.110
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jne	.LBB31_50
	jp	.LBB31_50
	jmp	.LBB31_51
.LBB31_50:                              # %if.then.114
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_error_bell@PLT
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB31_51:                              # %if.end.117
	movl	$1, -4(%rbp)
.LBB31_52:                              # %return
	movl	-4(%rbp), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_size_entry_eevl_input_callback, .Lfunc_end31-gimp_size_entry_eevl_input_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4636737291354636288     # double 100
.LCPI32_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_size_entry_eevl_unit_resolver,@function
gimp_size_entry_eevl_unit_resolver:     # @gimp_size_entry_eevl_unit_resolver
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	cmpq	$0, -16(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -44(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB32_3
# BB#2:                                 # %if.then
	jmp	.LBB32_4
.LBB32_3:                               # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_eevl_unit_resolver(%rip), %rsi
	leaq	.L.str.32(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB32_45
.LBB32_4:                               # %if.end
	jmp	.LBB32_5
.LBB32_5:                               # %do.end
	jmp	.LBB32_6
.LBB32_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB32_8
# BB#7:                                 # %if.then.4
	jmp	.LBB32_9
.LBB32_8:                               # %if.else.5
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_eevl_unit_resolver(%rip), %rsi
	leaq	.L.str.33(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB32_45
.LBB32_9:                               # %if.end.6
	jmp	.LBB32_10
.LBB32_10:                              # %do.end.7
	jmp	.LBB32_11
.LBB32_11:                              # %do.body.8
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB32_13
# BB#12:                                # %if.then.10
	movl	$0, -68(%rbp)
	jmp	.LBB32_18
.LBB32_13:                              # %if.else.11
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_16
# BB#14:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB32_16
# BB#15:                                # %if.then.16
	movl	$1, -68(%rbp)
	jmp	.LBB32_17
.LBB32_16:                              # %if.else.17
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB32_17:                              # %if.end.19
	jmp	.LBB32_18
.LBB32_18:                              # %if.end.20
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB32_20
# BB#19:                                # %if.then.22
	jmp	.LBB32_21
.LBB32_20:                              # %if.else.23
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_size_entry_eevl_unit_resolver(%rip), %rsi
	leaq	.L.str.26(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB32_45
.LBB32_21:                              # %if.end.24
	jmp	.LBB32_22
.LBB32_22:                              # %do.end.25
	movl	$0, -48(%rbp)
.LBB32_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	ja	.LBB32_44
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB32_23 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_unit_get_number_of_units@PLT
	movl	-80(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB32_26
# BB#25:                                # %if.then.32
                                        #   in Loop: Header=BB32_23 Depth=1
	movl	$65536, -48(%rbp)       # imm = 0x10000
.LBB32_26:                              # %if.end.33
                                        #   in Loop: Header=BB32_23 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB32_28
# BB#27:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB32_23 Depth=1
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	176(%rcx), %eax
	je	.LBB32_31
.LBB32_28:                              # %lor.lhs.false
                                        #   in Loop: Header=BB32_23 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB32_42
# BB#29:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB32_23 Depth=1
	movl	-48(%rbp), %edi
	callq	gimp_unit_get_symbol@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB32_31
# BB#30:                                # %lor.lhs.false.46
                                        #   in Loop: Header=BB32_23 Depth=1
	movl	-48(%rbp), %edi
	callq	gimp_unit_get_abbreviation@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB32_42
.LBB32_31:                              # %if.then.51
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB32_36
	jmp	.LBB32_46
.LBB32_46:                              # %if.then.51
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$65536, %eax            # imm = 0x10000
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jne	.LBB32_37
	jmp	.LBB32_32
.LBB32_32:                              # %sw.bb
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$65536, 176(%rax)       # imm = 0x10000
	jne	.LBB32_34
# BB#33:                                # %if.then.56
	movsd	.LCPI32_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.LBB32_35
.LBB32_34:                              # %if.else.57
	movsd	.LCPI32_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	8(%rax), %xmm0
	movq	-40(%rbp), %rax
	divsd	24(%rax), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movl	$1, 8(%rax)
.LBB32_35:                              # %if.end.60
	movl	$1, -4(%rbp)
	jmp	.LBB32_45
.LBB32_36:                              # %sw.bb.61
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB32_38
.LBB32_37:                              # %sw.default
	movl	-48(%rbp), %edi
	callq	gimp_unit_get_factor@PLT
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB32_38:                              # %sw.epilog
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$65536, 176(%rax)       # imm = 0x10000
	jne	.LBB32_40
# BB#39:                                # %if.then.70
	movsd	.LCPI32_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	mulsd	8(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.LBB32_41
.LBB32_40:                              # %if.else.77
	movq	-24(%rbp), %rax
	movl	$1, 8(%rax)
.LBB32_41:                              # %if.end.79
	movl	$1, -4(%rbp)
	jmp	.LBB32_45
.LBB32_42:                              # %if.end.80
                                        #   in Loop: Header=BB32_23 Depth=1
	jmp	.LBB32_43
.LBB32_43:                              # %for.inc
                                        #   in Loop: Header=BB32_23 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB32_23
.LBB32_44:                              # %for.end
	movl	$0, -4(%rbp)
.LBB32_45:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_size_entry_eevl_unit_resolver, .Lfunc_end32-gimp_size_entry_eevl_unit_resolver
	.cfi_endproc

	.type	gimp_size_entry_get_type.g_define_type_id__volatile,@object # @gimp_size_entry_get_type.g_define_type_id__volatile
	.local	gimp_size_entry_get_type.g_define_type_id__volatile
	.comm	gimp_size_entry_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSizeEntry"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_size_entry_new,@object # @__func__.gimp_size_entry_new
.L__func__.gimp_size_entry_new:
	.asciz	"gimp_size_entry_new"
	.size	.L__func__.gimp_size_entry_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(number_of_fields >= 0) && (number_of_fields <= 16)"
	.size	.L.str.2, 52

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"value-changed"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%a"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%p"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"short-format"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"long-format"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"changed"
	.size	.L.str.9, 8

	.type	.L__func__.gimp_size_entry_add_field,@object # @__func__.gimp_size_entry_add_field
.L__func__.gimp_size_entry_add_field:
	.asciz	"gimp_size_entry_add_field"
	.size	.L__func__.gimp_size_entry_add_field, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_SIZE_ENTRY (gse)"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GTK_IS_SPIN_BUTTON (value_spinbutton)"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GTK_IS_SPIN_BUTTON (refval_spinbutton)"
	.size	.L.str.12, 39

	.type	.L__func__.gimp_size_entry_attach_label,@object # @__func__.gimp_size_entry_attach_label
.L__func__.gimp_size_entry_attach_label:
	.asciz	"gimp_size_entry_attach_label"
	.size	.L__func__.gimp_size_entry_attach_label, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"text != NULL"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"left-attach"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"top-attach"
	.size	.L.str.15, 11

	.type	.L__func__.gimp_size_entry_set_resolution,@object # @__func__.gimp_size_entry_set_resolution
.L__func__.gimp_size_entry_set_resolution:
	.asciz	"gimp_size_entry_set_resolution"
	.size	.L__func__.gimp_size_entry_set_resolution, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"(field >= 0) && (field < gse->number_of_fields)"
	.size	.L.str.16, 48

	.type	.L__func__.gimp_size_entry_set_size,@object # @__func__.gimp_size_entry_set_size
.L__func__.gimp_size_entry_set_size:
	.asciz	"gimp_size_entry_set_size"
	.size	.L__func__.gimp_size_entry_set_size, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"lower <= upper"
	.size	.L.str.17, 15

	.type	.L__func__.gimp_size_entry_set_value_boundaries,@object # @__func__.gimp_size_entry_set_value_boundaries
.L__func__.gimp_size_entry_set_value_boundaries:
	.asciz	"gimp_size_entry_set_value_boundaries"
	.size	.L__func__.gimp_size_entry_set_value_boundaries, 37

	.type	.L__func__.gimp_size_entry_get_value,@object # @__func__.gimp_size_entry_get_value
.L__func__.gimp_size_entry_get_value:
	.asciz	"gimp_size_entry_get_value"
	.size	.L__func__.gimp_size_entry_get_value, 26

	.type	.L__func__.gimp_size_entry_set_value,@object # @__func__.gimp_size_entry_set_value
.L__func__.gimp_size_entry_set_value:
	.asciz	"gimp_size_entry_set_value"
	.size	.L__func__.gimp_size_entry_set_value, 26

	.type	.L__func__.gimp_size_entry_set_refval_boundaries,@object # @__func__.gimp_size_entry_set_refval_boundaries
.L__func__.gimp_size_entry_set_refval_boundaries:
	.asciz	"gimp_size_entry_set_refval_boundaries"
	.size	.L__func__.gimp_size_entry_set_refval_boundaries, 38

	.type	.L__func__.gimp_size_entry_set_refval_digits,@object # @__func__.gimp_size_entry_set_refval_digits
.L__func__.gimp_size_entry_set_refval_digits:
	.asciz	"gimp_size_entry_set_refval_digits"
	.size	.L__func__.gimp_size_entry_set_refval_digits, 34

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"(digits >= 0) && (digits <= 6)"
	.size	.L.str.18, 31

	.type	.L__func__.gimp_size_entry_get_refval,@object # @__func__.gimp_size_entry_get_refval
.L__func__.gimp_size_entry_get_refval:
	.asciz	"gimp_size_entry_get_refval"
	.size	.L__func__.gimp_size_entry_get_refval, 27

	.type	.L__func__.gimp_size_entry_set_refval,@object # @__func__.gimp_size_entry_set_refval
.L__func__.gimp_size_entry_set_refval:
	.asciz	"gimp_size_entry_set_refval"
	.size	.L__func__.gimp_size_entry_set_refval, 27

	.type	.L__func__.gimp_size_entry_get_unit,@object # @__func__.gimp_size_entry_get_unit
.L__func__.gimp_size_entry_get_unit:
	.asciz	"gimp_size_entry_get_unit"
	.size	.L__func__.gimp_size_entry_get_unit, 25

	.type	.L__func__.gimp_size_entry_set_unit,@object # @__func__.gimp_size_entry_set_unit
.L__func__.gimp_size_entry_set_unit:
	.asciz	"gimp_size_entry_set_unit"
	.size	.L__func__.gimp_size_entry_set_unit, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gse->menu_show_pixels || (unit != GIMP_UNIT_PIXEL)"
	.size	.L.str.19, 51

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gse->menu_show_percent || (unit != GIMP_UNIT_PERCENT)"
	.size	.L.str.20, 54

	.type	.L__func__.gimp_size_entry_show_unit_menu,@object # @__func__.gimp_size_entry_show_unit_menu
.L__func__.gimp_size_entry_show_unit_menu:
	.asciz	"gimp_size_entry_show_unit_menu"
	.size	.L__func__.gimp_size_entry_show_unit_menu, 31

	.type	.L__func__.gimp_size_entry_set_pixel_digits,@object # @__func__.gimp_size_entry_set_pixel_digits
.L__func__.gimp_size_entry_set_pixel_digits:
	.asciz	"gimp_size_entry_set_pixel_digits"
	.size	.L__func__.gimp_size_entry_set_pixel_digits, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-pixel-digits"
	.size	.L.str.21, 18

	.type	.L__func__.gimp_size_entry_grab_focus,@object # @__func__.gimp_size_entry_grab_focus
.L__func__.gimp_size_entry_grab_focus:
	.asciz	"gimp_size_entry_grab_focus"
	.size	.L__func__.gimp_size_entry_grab_focus, 27

	.type	.L__func__.gimp_size_entry_set_activates_default,@object # @__func__.gimp_size_entry_set_activates_default
.L__func__.gimp_size_entry_set_activates_default:
	.asciz	"gimp_size_entry_set_activates_default"
	.size	.L__func__.gimp_size_entry_set_activates_default, 38

	.type	.L__func__.gimp_size_entry_get_help_widget,@object # @__func__.gimp_size_entry_get_help_widget
.L__func__.gimp_size_entry_get_help_widget:
	.asciz	"gimp_size_entry_get_help_widget"
	.size	.L__func__.gimp_size_entry_get_help_widget, 32

	.type	gimp_size_entry_parent_class,@object # @gimp_size_entry_parent_class
	.local	gimp_size_entry_parent_class
	.comm	gimp_size_entry_parent_class,8,8
	.type	GimpSizeEntry_private_offset,@object # @GimpSizeEntry_private_offset
	.local	GimpSizeEntry_private_offset
	.comm	GimpSizeEntry_private_offset,4,4
	.type	gimp_size_entry_signals,@object # @gimp_size_entry_signals
	.local	gimp_size_entry_signals
	.comm	gimp_size_entry_signals,12,4
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"refval-changed"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"unit-changed"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"input"
	.size	.L.str.24, 6

	.type	.L__func__.gimp_size_entry_eevl_input_callback,@object # @__func__.gimp_size_entry_eevl_input_callback
.L__func__.gimp_size_entry_eevl_input_callback:
	.asciz	"gimp_size_entry_eevl_input_callback"
	.size	.L__func__.gimp_size_entry_eevl_input_callback, 36

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"GTK_IS_SPIN_BUTTON (spinner)"
	.size	.L.str.25, 29

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"GIMP_IS_SIZE_ENTRY (gsef->gse)"
	.size	.L.str.26, 31

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"ERROR: %s at '%s'\n"
	.size	.L.str.27, 19

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"<End of input>"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"ERROR: Expression evaluation failed without error.\n"
	.size	.L.str.29, 52

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"ERROR: result has wrong dimension (expected 1, got %d)\n"
	.size	.L.str.30, 56

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"ERROR: result has wrong dimension (expected 0, got %d)\n"
	.size	.L.str.31, 56

	.type	.L__func__.gimp_size_entry_eevl_unit_resolver,@object # @__func__.gimp_size_entry_eevl_unit_resolver
.L__func__.gimp_size_entry_eevl_unit_resolver:
	.asciz	"gimp_size_entry_eevl_unit_resolver"
	.size	.L__func__.gimp_size_entry_eevl_unit_resolver, 35

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gsef"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"result != NULL"
	.size	.L.str.33, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
