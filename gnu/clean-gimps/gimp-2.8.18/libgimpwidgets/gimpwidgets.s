	.text
	.file	"gimpwidgets.bc"
	.globl	gimp_radio_group_new
	.align	16, 0x90
	.type	gimp_radio_group_new,@function
gimp_radio_group_new:                   # @gimp_radio_group_new
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
	subq	$736, %rsp              # imm = 0x2E0
	testb	%al, %al
	movaps	%xmm7, -336(%rbp)       # 16-byte Spill
	movaps	%xmm6, -352(%rbp)       # 16-byte Spill
	movaps	%xmm5, -368(%rbp)       # 16-byte Spill
	movaps	%xmm4, -384(%rbp)       # 16-byte Spill
	movaps	%xmm3, -400(%rbp)       # 16-byte Spill
	movaps	%xmm2, -416(%rbp)       # 16-byte Spill
	movaps	%xmm1, -432(%rbp)       # 16-byte Spill
	movaps	%xmm0, -448(%rbp)       # 16-byte Spill
	movl	%edi, -452(%rbp)        # 4-byte Spill
	movq	%r9, -464(%rbp)         # 8-byte Spill
	movq	%r8, -472(%rbp)         # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	je	.LBB0_38
# BB#37:                                # %entry
	movaps	-448(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -272(%rbp)
	movaps	-432(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -256(%rbp)
	movaps	-416(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -240(%rbp)
	movaps	-400(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -224(%rbp)
	movaps	-384(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -208(%rbp)
	movaps	-368(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -192(%rbp)
	movaps	-352(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -176(%rbp)
	movaps	-336(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -160(%rbp)
.LBB0_38:                               # %entry
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -280(%rbp)
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -288(%rbp)
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -296(%rbp)
	movq	-488(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -304(%rbp)
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movl	-452(%rbp), %r8d        # 4-byte Reload
	movl	$1, %r9d
	movl	$2, %esi
	movl	%r8d, -12(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%r9d, %edi
	callq	gtk_box_new@PLT
	leaq	-128(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	%rcx, %rax
	leaq	-320(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$16, (%rax)
	movl	-128(%rbp), %esi
	cmpl	$40, %esi
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	movl	%esi, -508(%rbp)        # 4-byte Spill
	ja	.LBB0_2
# BB#1:                                 # %vaarg.in_reg
	movl	-508(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-504(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %vaarg.in_mem
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -520(%rbp)        # 8-byte Spill
.LBB0_3:                                # %vaarg.end
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB0_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_33
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB0_4 Depth=1
	leaq	-128(%rbp), %rax
	movl	-128(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	ja	.LBB0_7
# BB#6:                                 # %vaarg.in_reg.7
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-532(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-528(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                # %vaarg.in_mem.9
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -544(%rbp)        # 8-byte Spill
.LBB0_8:                                # %vaarg.end.13
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	leaq	-128(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-128(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movl	%edx, -556(%rbp)        # 4-byte Spill
	ja	.LBB0_10
# BB#9:                                 # %vaarg.in_reg.19
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-556(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-552(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               # %vaarg.in_mem.21
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -568(%rbp)        # 8-byte Spill
.LBB0_11:                               # %vaarg.end.25
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-568(%rbp), %rax        # 8-byte Reload
	leaq	-128(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-128(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	movl	%edx, -580(%rbp)        # 4-byte Spill
	ja	.LBB0_13
# BB#12:                                # %vaarg.in_reg.31
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-580(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-576(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB0_14
.LBB0_13:                               # %vaarg.in_mem.33
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -592(%rbp)        # 8-byte Spill
.LBB0_14:                               # %vaarg.end.37
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	leaq	-128(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-128(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	movl	%edx, -604(%rbp)        # 4-byte Spill
	ja	.LBB0_16
# BB#15:                                # %vaarg.in_reg.43
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-604(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-600(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB0_17
.LBB0_16:                               # %vaarg.in_mem.45
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -616(%rbp)        # 8-byte Spill
.LBB0_17:                               # %vaarg.end.49
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-616(%rbp), %rax        # 8-byte Reload
	leaq	-128(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	-128(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	movl	%edx, -628(%rbp)        # 4-byte Spill
	ja	.LBB0_19
# BB#18:                                # %vaarg.in_reg.55
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-628(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB0_20
.LBB0_19:                               # %vaarg.in_mem.57
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -640(%rbp)        # 8-byte Spill
.LBB0_20:                               # %vaarg.end.61
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
	cmpq	%rdx, -56(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_radio_button_new_with_mnemonic@PLT
	movq	%rax, -40(%rbp)
	jmp	.LBB0_23
.LBB0_22:                               # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-48(%rbp), %rdi
	callq	gtk_radio_button_new@PLT
	movq	%rax, -40(%rbp)
.LBB0_23:                               # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	movl	-660(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	cmpq	$0, -80(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.71
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str(%rip), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB0_25:                               # %if.end.74
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.76
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_27:                               # %if.end.77
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB0_29
# BB#28:                                # %if.then.79
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
.LBB0_29:                               # %if.end.82
                                        #   in Loop: Header=BB0_4 Depth=1
	leaq	.L.str.2(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-680(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-40(%rbp), %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_widget_show@PLT
	leaq	-128(%rbp), %rax
	movl	-128(%rbp), %r9d
	cmpl	$40, %r9d
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movl	%r9d, -700(%rbp)        # 4-byte Spill
	ja	.LBB0_31
# BB#30:                                # %vaarg.in_reg.88
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-700(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-696(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB0_32
.LBB0_31:                               # %vaarg.in_mem.90
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -712(%rbp)        # 8-byte Spill
.LBB0_32:                               # %vaarg.end.94
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_4
.LBB0_33:                               # %while.end
	leaq	-128(%rbp), %rax
	cmpl	$0, -12(%rbp)
	movq	%rax, -720(%rbp)        # 8-byte Spill
	je	.LBB0_35
# BB#34:                                # %if.then.99
	movq	-24(%rbp), %rdi
	callq	gimp_frame_new@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-136(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_36
.LBB0_35:                               # %if.end.103
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_36:                               # %return
	movq	-8(%rbp), %rax
	addq	$736, %rsp              # imm = 0x2E0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_radio_group_new, .Lfunc_end0-gimp_radio_group_new
	.cfi_endproc

	.globl	gimp_radio_group_new2
	.align	16, 0x90
	.type	gimp_radio_group_new2,@function
gimp_radio_group_new2:                  # @gimp_radio_group_new2
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
	subq	$656, %rsp              # imm = 0x290
	testb	%al, %al
	movaps	%xmm7, -336(%rbp)       # 16-byte Spill
	movaps	%xmm6, -352(%rbp)       # 16-byte Spill
	movaps	%xmm5, -368(%rbp)       # 16-byte Spill
	movaps	%xmm4, -384(%rbp)       # 16-byte Spill
	movaps	%xmm3, -400(%rbp)       # 16-byte Spill
	movaps	%xmm2, -416(%rbp)       # 16-byte Spill
	movaps	%xmm1, -432(%rbp)       # 16-byte Spill
	movaps	%xmm0, -448(%rbp)       # 16-byte Spill
	movl	%edi, -452(%rbp)        # 4-byte Spill
	movq	%r9, -464(%rbp)         # 8-byte Spill
	movq	%r8, -472(%rbp)         # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	je	.LBB1_29
# BB#28:                                # %entry
	movaps	-448(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -272(%rbp)
	movaps	-432(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -256(%rbp)
	movaps	-416(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -240(%rbp)
	movaps	-400(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -224(%rbp)
	movaps	-384(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -208(%rbp)
	movaps	-368(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -192(%rbp)
	movaps	-352(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -176(%rbp)
	movaps	-336(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -160(%rbp)
.LBB1_29:                               # %entry
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -280(%rbp)
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	-488(%rbp), %rsi        # 8-byte Reload
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movl	-452(%rbp), %r8d        # 4-byte Reload
	movl	$1, %r9d
	movl	$2, %r10d
	movl	%r8d, -12(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r9d, %edi
	movl	%r10d, %esi
	callq	gtk_box_new@PLT
	leaq	-128(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	%rcx, %rax
	leaq	-320(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$40, (%rax)
	movl	-128(%rbp), %esi
	cmpl	$40, %esi
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	movl	%esi, -508(%rbp)        # 4-byte Spill
	ja	.LBB1_2
# BB#1:                                 # %vaarg.in_reg
	movl	-508(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-504(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %vaarg.in_mem
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -520(%rbp)        # 8-byte Spill
.LBB1_3:                                # %vaarg.end
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB1_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB1_24
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB1_4 Depth=1
	leaq	-128(%rbp), %rax
	movl	-128(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	ja	.LBB1_7
# BB#6:                                 # %vaarg.in_reg.7
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-532(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-528(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %vaarg.in_mem.9
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -544(%rbp)        # 8-byte Spill
.LBB1_8:                                # %vaarg.end.13
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	leaq	-128(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	-128(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movl	%edx, -556(%rbp)        # 4-byte Spill
	ja	.LBB1_10
# BB#9:                                 # %vaarg.in_reg.19
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-556(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-552(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %vaarg.in_mem.21
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -568(%rbp)        # 8-byte Spill
.LBB1_11:                               # %vaarg.end.25
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	%rdx, -80(%rbp)
	je	.LBB1_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_radio_button_new_with_mnemonic@PLT
	movq	%rax, -64(%rbp)
	jmp	.LBB1_14
.LBB1_13:                               # %if.else
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-72(%rbp), %rdi
	callq	gtk_radio_button_new@PLT
	movq	%rax, -64(%rbp)
.LBB1_14:                               # %if.end
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	cmpq	$0, -88(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.35
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str(%rip), %rsi
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rsi
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB1_16:                               # %if.end.38
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.40
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB1_18:                               # %if.end.41
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB1_20
# BB#19:                                # %if.then.43
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
.LBB1_20:                               # %if.end.46
                                        #   in Loop: Header=BB1_4 Depth=1
	leaq	.L.str.2(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-608(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-64(%rbp), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_widget_show@PLT
	leaq	-128(%rbp), %rax
	movl	-128(%rbp), %r9d
	cmpl	$40, %r9d
	movq	%rax, -624(%rbp)        # 8-byte Spill
	movl	%r9d, -628(%rbp)        # 4-byte Spill
	ja	.LBB1_22
# BB#21:                                # %vaarg.in_reg.52
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-628(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %vaarg.in_mem.54
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -640(%rbp)        # 8-byte Spill
.LBB1_23:                               # %vaarg.end.58
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB1_4
.LBB1_24:                               # %while.end
	leaq	-128(%rbp), %rax
	cmpl	$0, -12(%rbp)
	movq	%rax, -648(%rbp)        # 8-byte Spill
	je	.LBB1_26
# BB#25:                                # %if.then.63
	movq	-24(%rbp), %rdi
	callq	gimp_frame_new@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-136(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_27
.LBB1_26:                               # %if.end.67
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_radio_group_new2, .Lfunc_end1-gimp_radio_group_new2
	.cfi_endproc

	.globl	gimp_int_radio_group_new
	.align	16, 0x90
	.type	gimp_int_radio_group_new,@function
gimp_int_radio_group_new:               # @gimp_int_radio_group_new
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
	subq	$656, %rsp              # imm = 0x290
	testb	%al, %al
	movaps	%xmm7, -336(%rbp)       # 16-byte Spill
	movaps	%xmm6, -352(%rbp)       # 16-byte Spill
	movaps	%xmm5, -368(%rbp)       # 16-byte Spill
	movaps	%xmm4, -384(%rbp)       # 16-byte Spill
	movaps	%xmm3, -400(%rbp)       # 16-byte Spill
	movaps	%xmm2, -416(%rbp)       # 16-byte Spill
	movaps	%xmm1, -432(%rbp)       # 16-byte Spill
	movaps	%xmm0, -448(%rbp)       # 16-byte Spill
	movl	%edi, -452(%rbp)        # 4-byte Spill
	movq	%r9, -464(%rbp)         # 8-byte Spill
	movl	%r8d, -468(%rbp)        # 4-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	je	.LBB2_29
# BB#28:                                # %entry
	movaps	-448(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -272(%rbp)
	movaps	-432(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -256(%rbp)
	movaps	-416(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -240(%rbp)
	movaps	-400(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -224(%rbp)
	movaps	-384(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -208(%rbp)
	movaps	-368(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -192(%rbp)
	movaps	-352(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -176(%rbp)
	movaps	-336(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -160(%rbp)
.LBB2_29:                               # %entry
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -280(%rbp)
	movl	-468(%rbp), %ecx        # 4-byte Reload
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movq	-488(%rbp), %rsi        # 8-byte Reload
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movl	-452(%rbp), %r8d        # 4-byte Reload
	movl	$1, %r9d
	movl	$2, %r10d
	movl	%r8d, -12(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r9d, %edi
	movl	%r10d, %esi
	callq	gtk_box_new@PLT
	leaq	-128(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	%rdx, %rax
	leaq	-320(%rbp), %r11
	movq	%r11, 16(%rax)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%rax)
	movl	$48, 4(%rax)
	movl	$40, (%rax)
	movl	-128(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	ja	.LBB2_2
# BB#1:                                 # %vaarg.in_reg
	movl	-508(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-504(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %vaarg.in_mem
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -520(%rbp)        # 8-byte Spill
.LBB2_3:                                # %vaarg.end
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB2_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB2_24
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	-128(%rbp), %rax
	movl	-128(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	ja	.LBB2_7
# BB#6:                                 # %vaarg.in_reg.7
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-532(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-528(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %vaarg.in_mem.9
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -544(%rbp)        # 8-byte Spill
.LBB2_8:                                # %vaarg.end.13
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	leaq	-128(%rbp), %rcx
	movl	(%rax), %edx
	movl	%edx, -84(%rbp)
	movl	-128(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movl	%edx, -556(%rbp)        # 4-byte Spill
	ja	.LBB2_10
# BB#9:                                 # %vaarg.in_reg.19
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-556(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-552(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %vaarg.in_mem.21
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -568(%rbp)        # 8-byte Spill
.LBB2_11:                               # %vaarg.end.25
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movslq	-84(%rbp), %rax
	movq	%rax, -96(%rbp)
	cmpq	%rdx, -80(%rbp)
	je	.LBB2_13
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_radio_button_new_with_mnemonic@PLT
	movq	%rax, -64(%rbp)
	jmp	.LBB2_14
.LBB2_13:                               # %if.else
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-72(%rbp), %rdi
	callq	gtk_radio_button_new@PLT
	movq	%rax, -64(%rbp)
.LBB2_14:                               # %if.end
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	cmpl	$0, -84(%rbp)
	je	.LBB2_16
# BB#15:                                # %if.then.36
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str(%rip), %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB2_16:                               # %if.end.39
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB2_18
# BB#17:                                # %if.then.41
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_18:                               # %if.end.42
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jne	.LBB2_20
# BB#19:                                # %if.then.45
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
.LBB2_20:                               # %if.end.48
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	.L.str.2(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-608(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-64(%rbp), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_widget_show@PLT
	leaq	-128(%rbp), %rax
	movl	-128(%rbp), %r9d
	cmpl	$40, %r9d
	movq	%rax, -624(%rbp)        # 8-byte Spill
	movl	%r9d, -628(%rbp)        # 4-byte Spill
	ja	.LBB2_22
# BB#21:                                # %vaarg.in_reg.54
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-628(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB2_23
.LBB2_22:                               # %vaarg.in_mem.56
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -640(%rbp)        # 8-byte Spill
.LBB2_23:                               # %vaarg.end.60
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB2_4
.LBB2_24:                               # %while.end
	leaq	-128(%rbp), %rax
	cmpl	$0, -12(%rbp)
	movq	%rax, -648(%rbp)        # 8-byte Spill
	je	.LBB2_26
# BB#25:                                # %if.then.65
	movq	-24(%rbp), %rdi
	callq	gimp_frame_new@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-136(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_27
.LBB2_26:                               # %if.end.69
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_int_radio_group_new, .Lfunc_end2-gimp_int_radio_group_new
	.cfi_endproc

	.globl	gimp_radio_group_set_active
	.align	16, 0x90
	.type	gimp_radio_group_set_active,@function
gimp_radio_group_set_active:            # @gimp_radio_group_set_active
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_radio_button_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_radio_group_set_active(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_21
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -32(%rbp)
.LBB3_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_21
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	cmpq	-16(%rbp), %rax
	jne	.LBB3_16
# BB#15:                                # %if.then.18
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	jmp	.LBB3_21
.LBB3_16:                               # %if.end.21
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_17
.LBB3_17:                               # %for.inc
                                        #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %cond.false
                                        #   in Loop: Header=BB3_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_20
.LBB3_20:                               # %cond.end
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB3_13
.LBB3_21:                               # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_radio_group_set_active, .Lfunc_end3-gimp_radio_group_set_active
	.cfi_endproc

	.globl	gimp_int_radio_group_set_active
	.align	16, 0x90
	.type	gimp_int_radio_group_set_active,@function
gimp_int_radio_group_set_active:        # @gimp_int_radio_group_set_active
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_radio_button_get_type@PLT
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
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_int_radio_group_set_active(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	callq	gimp_radio_group_set_active@PLT
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_int_radio_group_set_active, .Lfunc_end4-gimp_int_radio_group_set_active
	.cfi_endproc

	.globl	gimp_spin_button_new
	.align	16, 0x90
	.type	gimp_spin_button_new,@function
gimp_spin_button_new:                   # @gimp_spin_button_new
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
	subq	$96, %rsp
	xorps	%xmm7, %xmm7
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	%xmm6, -64(%rbp)
	movl	%esi, -68(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movaps	%xmm7, %xmm5
	callq	gtk_adjustment_new@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric@PLT
	movq	-80(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_spin_button_new, .Lfunc_end5-gimp_spin_button_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4751297606873776128     # double 4294967295
.LCPI6_1:
	.quad	4607182418800017408     # double 1
.LCPI6_2:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gimp_random_seed_new
	.align	16, 0x90
	.type	gimp_random_seed_new,@function
gimp_random_seed_new:                   # @gimp_random_seed_new
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_random_seed_new(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.4
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_random_seed_new(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.6
	xorl	%edi, %edi
	movl	$4, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB6_12
# BB#11:                                # %if.then.7
	callq	g_random_int@PLT
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB6_12:                               # %if.end.9
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm4   # xmm4 = mem[0],zero
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm3
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-72(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-80(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	gimp_uint_adjustment_update@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.9(%rip), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_misc_set_padding@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_random_seed_update(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
	leaq	.L.str.8(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rcx
	movl	(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	gimp_toggle_button_update@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.2(%rip), %rsi
	leaq	gimp_random_seed_update(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.14(%rip), %rsi
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.15(%rip), %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.16(%rip), %rsi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	leaq	.L.str.17(%rip), %rsi
	leaq	.L.str.18(%rip), %rcx
	movl	$6, %r8d
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_bind_property@PLT
	leaq	.L.str.17(%rip), %rsi
	leaq	.L.str.18(%rip), %rcx
	movl	$6, %r8d
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_object_bind_property@PLT
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_random_seed_new, .Lfunc_end6-gimp_random_seed_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_uint_adjustment_update
	.align	16, 0x90
	.type	gimp_uint_adjustment_update,@function
gimp_uint_adjustment_update:            # @gimp_uint_adjustment_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rsi
	movl	%esi, %eax
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_uint_adjustment_update, .Lfunc_end7-gimp_uint_adjustment_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_random_seed_update,@function
gimp_random_seed_update:                # @gimp_random_seed_update
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	callq	gtk_toggle_button_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_7
.LBB8_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_5
# BB#4:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB8_6:                                # %if.end
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_9
# BB#8:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB8_10
.LBB8_9:                                # %if.then.12
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_random_int@PLT
	movl	%eax, %eax
	movl	%eax, %esi
	cvtsi2sdq	%rsi, %xmm0
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	gtk_spin_button_set_value@PLT
.LBB8_10:                               # %if.end.16
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_random_seed_update, .Lfunc_end8-gimp_random_seed_update
	.cfi_endproc

	.globl	gimp_toggle_button_update
	.align	16, 0x90
	.type	gimp_toggle_button_update,@function
gimp_toggle_button_update:              # @gimp_toggle_button_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB9_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_toggle_button_sensitive_update@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_toggle_button_update, .Lfunc_end9-gimp_toggle_button_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gimp_coordinates_new
	.align	16, 0x90
	.type	gimp_coordinates_new,@function
gimp_coordinates_new:                   # @gimp_coordinates_new
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$488, %rsp              # imm = 0x1E8
.Ltmp33:
	.cfi_offset %rbx, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
	movsd	72(%rbp), %xmm8         # xmm8 = mem[0],zero
	movsd	64(%rbp), %xmm9         # xmm9 = mem[0],zero
	movsd	56(%rbp), %xmm10        # xmm10 = mem[0],zero
	movsd	48(%rbp), %xmm11        # xmm11 = mem[0],zero
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	leaq	-192(%rbp), %r14
	movsd	.LCPI10_0(%rip), %xmm12 # xmm12 = mem[0],zero
	xorps	%xmm13, %xmm13
	movsd	.LCPI10_1(%rip), %xmm14 # xmm14 = mem[0],zero
	movl	$2, %r15d
	movl	%edi, -28(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movl	%ebx, -60(%rbp)
	movl	%r11d, -64(%rbp)
	movq	%r10, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
	movsd	%xmm2, -96(%rbp)
	movsd	%xmm3, -104(%rbp)
	movsd	%xmm4, -112(%rbp)
	movsd	%xmm5, -120(%rbp)
	movq	%rax, -128(%rbp)
	movsd	%xmm6, -136(%rbp)
	movsd	%xmm7, -144(%rbp)
	movsd	%xmm11, -152(%rbp)
	movsd	%xmm10, -160(%rbp)
	movsd	%xmm9, -168(%rbp)
	movsd	%xmm8, -176(%rbp)
	movq	%r14, %rdi
	movaps	%xmm12, %xmm0
	movaps	%xmm13, %xmm1
	movaps	%xmm12, %xmm2
	movaps	%xmm12, %xmm3
	movaps	%xmm14, %xmm4
	movaps	%xmm13, %xmm5
	movaps	%xmm12, %xmm6
	movl	%r15d, %esi
	callq	gimp_spin_button_new@PLT
	movq	%rax, -200(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.LBB10_5
# BB#1:                                 # %if.then
	cmpl	$17, -52(%rbp)
	jge	.LBB10_3
# BB#2:                                 # %if.then.2
	movq	-200(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-52(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars@PLT
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-200(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gtk_widget_set_size_request@PLT
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %if.end.5
	movl	$1, %edi
	xorl	%r9d, %r9d
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_size_entry_new@PLT
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-200(%rbp), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_size_entry_add_field@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	movq	-200(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-276(%rbp), %r9d        # 4-byte Reload
	callq	gtk_table_attach_defaults@PLT
	movq	-200(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movb	$1, %r11b
	cmpl	$2, -56(%rbp)
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movb	%r11b, -297(%rbp)       # 1-byte Spill
	je	.LBB10_7
# BB#6:                                 # %lor.rhs
	cmpl	$0, -44(%rbp)
	sete	%al
	movb	%al, -297(%rbp)         # 1-byte Spill
.LBB10_7:                               # %lor.end
	movb	-297(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	gimp_size_entry_set_unit@PLT
	movq	-208(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movl	$1, %edx
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_size_entry_set_resolution@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval_boundaries@PLT
	cmpl	$0, -48(%rbp)
	je	.LBB10_9
# BB#8:                                 # %if.then.29
	movq	-208(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_size@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_size@PLT
.LBB10_9:                               # %if.end.34
	movq	-208(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	movq	-208(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_size_entry_attach_label@PLT
	movq	-208(%rbp), %rsi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_size_entry_attach_label@PLT
	movl	$3, %edi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_new@PLT
	movq	%rax, -216(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB10_11
# BB#10:                                # %if.then.47
	movq	-216(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type@PLT
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_chain_button_set_active@PLT
.LBB10_11:                              # %if.end.50
	movq	-208(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type@PLT
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %ecx
	movl	$3, %edx
	xorl	%r8d, %r8d
	movl	$6, %r9d
	movl	$5, %r10d
	movq	-216(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-420(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -424(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-424(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -428(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$6, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -432(%rbp)       # 4-byte Spill
	callq	gtk_table_attach@PLT
	movq	-216(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$48, %ecx
	movl	%ecx, %edi
	callq	g_slice_alloc@PLT
	movq	%rax, -184(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type@PLT
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-184(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	-64(%rbp), %ecx
	movq	-184(%rbp), %rax
	movl	%ecx, 8(%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-184(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-184(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-184(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-184(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.19(%rip), %rsi
	leaq	gimp_coordinates_data_free(%rip), %rdi
	movq	-184(%rbp), %r14
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r14, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	g_object_set_data_full@PLT
	leaq	.L.str.7(%rip), %rsi
	leaq	gimp_coordinates_callback(%rip), %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-208(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-208(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.20(%rip), %rsi
	movq	-216(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data@PLT
	leaq	.L.str.2(%rip), %rsi
	leaq	gimp_coordinates_chainbutton_toggled(%rip), %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-216(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	-208(%rbp), %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_coordinates_new, .Lfunc_end10-gimp_coordinates_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_coordinates_data_free,@function
gimp_coordinates_data_free:             # @gimp_coordinates_data_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$48, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_coordinates_data_free, .Lfunc_end11-gimp_coordinates_data_free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_coordinates_callback,@function
gimp_coordinates_callback:              # @gimp_coordinates_callback
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval@PLT
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval@PLT
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_chain_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB12_18
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB12_11
# BB#2:                                 # %if.then.8
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_3
	jp	.LBB12_3
	jmp	.LBB12_10
.LBB12_3:                               # %land.lhs.true
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_4
	jp	.LBB12_4
	jmp	.LBB12_10
.LBB12_4:                               # %if.then.10
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_coordinates_callback(%rip), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	-16(%rbp), %rdi
	addsd	32(%rdi), %xmm0
	cvttsd2si	%xmm0, %edx
	cmpl	%edx, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB12_6
# BB#5:                                 # %if.then.16
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	24(%rax), %xmm0
	movq	-16(%rbp), %rax
	divsd	16(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval@PLT
	movq	-16(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	jmp	.LBB12_9
.LBB12_6:                               # %if.else
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-32(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-16(%rbp), %rcx
	addsd	40(%rcx), %xmm0
	cvttsd2si	%xmm0, %edx
	cmpl	%edx, %eax
	je	.LBB12_8
# BB#7:                                 # %if.then.32
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	16(%rax), %xmm0
	movq	-16(%rbp), %rax
	divsd	24(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval@PLT
	movq	-16(%rbp), %rax
	movsd	%xmm0, 32(%rax)
.LBB12_8:                               # %if.end
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.44
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_coordinates_callback(%rip), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB12_10:                              # %if.end.46
	jmp	.LBB12_17
.LBB12_11:                              # %if.else.47
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	jne	.LBB12_12
	jp	.LBB12_12
	jmp	.LBB12_13
.LBB12_12:                              # %if.then.51
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval@PLT
	movq	-16(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	jmp	.LBB12_16
.LBB12_13:                              # %if.else.59
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	40(%rax), %xmm0
	jne	.LBB12_14
	jp	.LBB12_14
	jmp	.LBB12_15
.LBB12_14:                              # %if.then.63
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval@PLT
	movq	-16(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 32(%rax)
.LBB12_15:                              # %if.end.71
	jmp	.LBB12_16
.LBB12_16:                              # %if.end.72
	jmp	.LBB12_17
.LBB12_17:                              # %if.end.73
	jmp	.LBB12_23
.LBB12_18:                              # %if.else.74
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	jne	.LBB12_19
	jp	.LBB12_19
	jmp	.LBB12_20
.LBB12_19:                              # %if.then.78
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 32(%rax)
.LBB12_20:                              # %if.end.80
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	40(%rax), %xmm0
	jne	.LBB12_21
	jp	.LBB12_21
	jmp	.LBB12_22
.LBB12_21:                              # %if.then.84
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.LBB12_22:                              # %if.end.86
	jmp	.LBB12_23
.LBB12_23:                              # %if.end.87
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_coordinates_callback, .Lfunc_end12-gimp_coordinates_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_coordinates_chainbutton_toggled,@function
gimp_coordinates_chainbutton_toggled:   # @gimp_coordinates_chainbutton_toggled
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_chain_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.19(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_size_entry_get_refval@PLT
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_size_entry_get_refval@PLT
	movq	-24(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB13_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_coordinates_chainbutton_toggled, .Lfunc_end13-gimp_coordinates_chainbutton_toggled
	.cfi_endproc

	.globl	gimp_toggle_button_sensitive_update
	.align	16, 0x90
	.type	gimp_toggle_button_sensitive_update,@function
gimp_toggle_button_sensitive_update:    # @gimp_toggle_button_sensitive_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_toggle_button_get_active@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.21(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -16(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB14_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_widget_set_sensitive@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.21(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB14_1
.LBB14_3:                               # %while.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -16(%rbp)
.LBB14_4:                               # %while.cond.7
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB14_6
# BB#5:                                 # %while.body.9
                                        #   in Loop: Header=BB14_4 Depth=1
	movq	-16(%rbp), %rdi
	cmpl	$0, -20(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_widget_set_sensitive@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.22(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB14_4
.LBB14_6:                               # %while.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_toggle_button_sensitive_update, .Lfunc_end14-gimp_toggle_button_sensitive_update
	.cfi_endproc

	.globl	gimp_radio_button_update
	.align	16, 0x90
	.type	gimp_radio_button_update,@function
gimp_radio_button_update:               # @gimp_radio_button_update
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active@PLT
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.LBB15_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_toggle_button_sensitive_update@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_radio_button_update, .Lfunc_end15-gimp_radio_button_update
	.cfi_endproc

	.globl	gimp_int_adjustment_update
	.align	16, 0x90
	.type	gimp_int_adjustment_update,@function
gimp_int_adjustment_update:             # @gimp_int_adjustment_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	callq	rint@PLT
	cvttsd2si	%xmm0, %eax
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_int_adjustment_update, .Lfunc_end16-gimp_int_adjustment_update
	.cfi_endproc

	.globl	gimp_float_adjustment_update
	.align	16, 0x90
	.type	gimp_float_adjustment_update,@function
gimp_float_adjustment_update:           # @gimp_float_adjustment_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rsi
	movss	%xmm0, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_float_adjustment_update, .Lfunc_end17-gimp_float_adjustment_update
	.cfi_endproc

	.globl	gimp_double_adjustment_update
	.align	16, 0x90
	.type	gimp_double_adjustment_update,@function
gimp_double_adjustment_update:          # @gimp_double_adjustment_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value@PLT
	movq	-24(%rbp), %rsi
	movsd	%xmm0, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_double_adjustment_update, .Lfunc_end18-gimp_double_adjustment_update
	.cfi_endproc

	.globl	gimp_table_attach_aligned
	.align	16, 0x90
	.type	gimp_table_attach_aligned,@function
gimp_table_attach_aligned:              # @gimp_table_attach_aligned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movss	%xmm0, -28(%rbp)
	movss	%xmm1, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%eax, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify@PLT
	movl	$4, %esi
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	-12(%rbp), %r8d
	addl	$1, %r8d
	movl	-16(%rbp), %r9d
	movl	-16(%rbp), %r10d
	addl	$1, %r10d
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	find_mnemonic_widget
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then.8
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
.LBB19_3:                               # %if.end
	jmp	.LBB19_4
.LBB19_4:                               # %if.end.11
	cmpl	$0, -48(%rbp)
	je	.LBB19_6
# BB#5:                                 # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB19_6:                               # %if.end.17
	movl	$5, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movl	-12(%rbp), %r8d
	addl	$1, %r8d
	addl	-44(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movl	-16(%rbp), %r10d
	addl	$1, %r10d
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gtk_table_attach@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-56(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_table_attach_aligned, .Lfunc_end19-gimp_table_attach_aligned
	.cfi_endproc

	.align	16, 0x90
	.type	find_mnemonic_widget,@function
find_mnemonic_widget:                   # @find_mnemonic_widget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	.L.str.25(%rip), %rax
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_object_get@PLT
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpl	$0, 160(%rcx)
	jne	.LBB20_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %lor.lhs.false.2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	312(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	%rax, %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	312(%rax), %rsi
	je	.LBB20_4
.LBB20_3:                               # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_33
.LBB20_4:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_size_entry_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_6
# BB#5:                                 # %if.then.10
	movl	$0, -44(%rbp)
	jmp	.LBB20_11
.LBB20_6:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_9
# BB#7:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB20_9
# BB#8:                                 # %if.then.15
	movl	$1, -44(%rbp)
	jmp	.LBB20_10
.LBB20_9:                               # %if.else.16
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB20_10:                              # %if.end.18
	jmp	.LBB20_11
.LBB20_11:                              # %if.end.19
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB20_13
# BB#12:                                # %if.then.21
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	160(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	gimp_size_entry_get_help_widget@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB20_33
.LBB20_13:                              # %if.else.27
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_container_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB20_15
# BB#14:                                # %if.then.36
	movl	$0, -76(%rbp)
	jmp	.LBB20_20
.LBB20_15:                              # %if.else.37
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_18
# BB#16:                                # %land.lhs.true.40
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB20_18
# BB#17:                                # %if.then.44
	movl	$1, -76(%rbp)
	jmp	.LBB20_19
.LBB20_18:                              # %if.else.45
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB20_19:                              # %if.end.47
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.48
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB20_31
# BB#21:                                # %if.then.51
	movq	$0, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_children@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB20_22:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB20_30
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB20_22 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	find_mnemonic_widget
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB20_25
# BB#24:                                # %if.then.61
	jmp	.LBB20_30
.LBB20_25:                              # %if.end.62
                                        #   in Loop: Header=BB20_22 Depth=1
	jmp	.LBB20_26
.LBB20_26:                              # %for.inc
                                        #   in Loop: Header=BB20_22 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB20_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB20_22 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB20_29
.LBB20_28:                              # %cond.false
                                        #   in Loop: Header=BB20_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB20_29
.LBB20_29:                              # %cond.end
                                        #   in Loop: Header=BB20_22 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB20_22
.LBB20_30:                              # %for.end
	movq	-96(%rbp), %rdi
	callq	g_list_free@PLT
	movq	-88(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB20_33
.LBB20_31:                              # %if.end.64
	jmp	.LBB20_32
.LBB20_32:                              # %if.end.65
	movq	$0, -8(%rbp)
.LBB20_33:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	find_mnemonic_widget, .Lfunc_end20-find_mnemonic_widget
	.cfi_endproc

	.globl	gimp_label_set_attributes
	.align	16, 0x90
	.type	gimp_label_set_attributes,@function
gimp_label_set_attributes:              # @gimp_label_set_attributes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$848, %rsp              # imm = 0x350
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       # 16-byte Spill
	movaps	%xmm6, -304(%rbp)       # 16-byte Spill
	movaps	%xmm5, -320(%rbp)       # 16-byte Spill
	movaps	%xmm4, -336(%rbp)       # 16-byte Spill
	movaps	%xmm3, -352(%rbp)       # 16-byte Spill
	movaps	%xmm2, -368(%rbp)       # 16-byte Spill
	movaps	%xmm1, -384(%rbp)       # 16-byte Spill
	movaps	%xmm0, -400(%rbp)       # 16-byte Spill
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r9, -416(%rbp)         # 8-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	je	.LBB21_85
# BB#84:                                # %entry
	movaps	-400(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -112(%rbp)
.LBB21_85:                              # %entry
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -256(%rbp)
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -264(%rbp)
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	$0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_label_get_type@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -68(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	leaq	.L.str.3(%rip), %rdi
	leaq	.L__func__.gimp_label_set_attributes(%rip), %rsi
	leaq	.L.str.23(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB21_82
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	callq	pango_attr_list_new@PLT
	leaq	-48(%rbp), %rcx
	movq	%rax, -24(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$8, (%rcx)
.LBB21_13:                              # %do.body.13
                                        # =>This Inner Loop Header: Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	ja	.LBB21_15
# BB#14:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-460(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-456(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB21_16
.LBB21_15:                              # %vaarg.in_mem
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -472(%rbp)        # 8-byte Spill
.LBB21_16:                              # %vaarg.end
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$-1, -76(%rbp)
	jne	.LBB21_18
# BB#17:                                # %if.then.17
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	$0, -76(%rbp)
.LBB21_18:                              # %if.end.18
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$15, %rdx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	ja	.LBB21_75
# BB#83:                                # %if.end.18
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	.LJTI21_0(%rip), %rax
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB21_19:                              # %sw.bb
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	ja	.LBB21_21
# BB#20:                                # %vaarg.in_reg.23
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-500(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-496(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB21_22
.LBB21_21:                              # %vaarg.in_mem.25
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -512(%rbp)        # 8-byte Spill
.LBB21_22:                              # %vaarg.end.29
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rdi
	callq	pango_attr_language_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_23:                              # %sw.bb.32
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	ja	.LBB21_25
# BB#24:                                # %vaarg.in_reg.37
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-524(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-520(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB21_26
.LBB21_25:                              # %vaarg.in_mem.39
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -536(%rbp)        # 8-byte Spill
.LBB21_26:                              # %vaarg.end.43
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rdi
	callq	pango_attr_family_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_27:                              # %sw.bb.46
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	ja	.LBB21_29
# BB#28:                                # %vaarg.in_reg.51
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-548(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-544(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB21_30
.LBB21_29:                              # %vaarg.in_mem.53
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -560(%rbp)        # 8-byte Spill
.LBB21_30:                              # %vaarg.end.57
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	callq	pango_attr_style_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_31:                              # %sw.bb.60
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	ja	.LBB21_33
# BB#32:                                # %vaarg.in_reg.65
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-572(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-568(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB21_34
.LBB21_33:                              # %vaarg.in_mem.67
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -584(%rbp)        # 8-byte Spill
.LBB21_34:                              # %vaarg.end.71
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	callq	pango_attr_weight_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_35:                              # %sw.bb.74
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	ja	.LBB21_37
# BB#36:                                # %vaarg.in_reg.79
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-592(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB21_38
.LBB21_37:                              # %vaarg.in_mem.81
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -608(%rbp)        # 8-byte Spill
.LBB21_38:                              # %vaarg.end.85
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-608(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	callq	pango_attr_variant_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_39:                              # %sw.bb.88
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	ja	.LBB21_41
# BB#40:                                # %vaarg.in_reg.93
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-620(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-616(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB21_42
.LBB21_41:                              # %vaarg.in_mem.95
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-616(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -632(%rbp)        # 8-byte Spill
.LBB21_42:                              # %vaarg.end.99
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-632(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	callq	pango_attr_stretch_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_43:                              # %sw.bb.102
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movl	%ecx, -644(%rbp)        # 4-byte Spill
	ja	.LBB21_45
# BB#44:                                # %vaarg.in_reg.107
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-644(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-640(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB21_46
.LBB21_45:                              # %vaarg.in_mem.109
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -656(%rbp)        # 8-byte Spill
.LBB21_46:                              # %vaarg.end.113
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-656(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	callq	pango_attr_size_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_47:                              # %sw.bb.116
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movl	%ecx, -668(%rbp)        # 4-byte Spill
	ja	.LBB21_49
# BB#48:                                # %vaarg.in_reg.121
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-668(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-664(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB21_50
.LBB21_49:                              # %vaarg.in_mem.123
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -680(%rbp)        # 8-byte Spill
.LBB21_50:                              # %vaarg.end.127
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rdi
	callq	pango_attr_font_desc_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_51:                              # %sw.bb.130
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -688(%rbp)        # 8-byte Spill
	movl	%ecx, -692(%rbp)        # 4-byte Spill
	ja	.LBB21_53
# BB#52:                                # %vaarg.in_reg.136
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-692(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-688(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	jmp	.LBB21_54
.LBB21_53:                              # %vaarg.in_mem.138
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -704(%rbp)        # 8-byte Spill
.LBB21_54:                              # %vaarg.end.142
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movw	(%rax), %cx
	movq	-88(%rbp), %rax
	movw	2(%rax), %dx
	movq	-88(%rbp), %rax
	movzwl	%cx, %edi
	movzwl	%dx, %esi
	movzwl	4(%rax), %edx
	callq	pango_attr_foreground_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_55:                              # %sw.bb.145
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	ja	.LBB21_57
# BB#56:                                # %vaarg.in_reg.152
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-716(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-712(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	jmp	.LBB21_58
.LBB21_57:                              # %vaarg.in_mem.154
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -728(%rbp)        # 8-byte Spill
.LBB21_58:                              # %vaarg.end.158
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-728(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movw	(%rax), %cx
	movq	-96(%rbp), %rax
	movw	2(%rax), %dx
	movq	-96(%rbp), %rax
	movzwl	%cx, %edi
	movzwl	%dx, %esi
	movzwl	4(%rax), %edx
	callq	pango_attr_background_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_59:                              # %sw.bb.164
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	movl	%ecx, -740(%rbp)        # 4-byte Spill
	ja	.LBB21_61
# BB#60:                                # %vaarg.in_reg.169
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-740(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-736(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	jmp	.LBB21_62
.LBB21_61:                              # %vaarg.in_mem.171
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-736(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -752(%rbp)        # 8-byte Spill
.LBB21_62:                              # %vaarg.end.175
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-752(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	callq	pango_attr_underline_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_63:                              # %sw.bb.178
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	ja	.LBB21_65
# BB#64:                                # %vaarg.in_reg.183
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-764(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-760(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	jmp	.LBB21_66
.LBB21_65:                              # %vaarg.in_mem.185
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-760(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -776(%rbp)        # 8-byte Spill
.LBB21_66:                              # %vaarg.end.189
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-776(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	callq	pango_attr_strikethrough_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_67:                              # %sw.bb.192
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movl	-48(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -784(%rbp)        # 8-byte Spill
	movl	%ecx, -788(%rbp)        # 4-byte Spill
	ja	.LBB21_69
# BB#68:                                # %vaarg.in_reg.197
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-788(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-784(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	jmp	.LBB21_70
.LBB21_69:                              # %vaarg.in_mem.199
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-784(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -800(%rbp)        # 8-byte Spill
.LBB21_70:                              # %vaarg.end.203
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	callq	pango_attr_rise_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_71:                              # %sw.bb.206
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	-44(%rbp), %edx
	cmpl	$160, %edx
	movq	%rax, -808(%rbp)        # 8-byte Spill
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	movl	%edx, -820(%rbp)        # 4-byte Spill
	ja	.LBB21_73
# BB#72:                                # %vaarg.in_reg.208
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-820(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-808(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-816(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB21_74
.LBB21_73:                              # %vaarg.in_mem.210
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-808(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -832(%rbp)        # 8-byte Spill
.LBB21_74:                              # %vaarg.end.214
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-832(%rbp), %rax        # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	pango_attr_scale_new@PLT
	movq	%rax, -16(%rbp)
	jmp	.LBB21_77
.LBB21_75:                              # %sw.default
                                        #   in Loop: Header=BB21_13 Depth=1
	leaq	.L.str.24(%rip), %rdi
	leaq	.L__func__.gimp_label_set_attributes(%rip), %rsi
	movl	-76(%rbp), %edx
	movb	$0, %al
	callq	g_warning
.LBB21_76:                              # %sw.bb.217
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	$0, -16(%rbp)
.LBB21_77:                              # %sw.epilog
                                        #   in Loop: Header=BB21_13 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB21_79
# BB#78:                                # %if.then.219
                                        #   in Loop: Header=BB21_13 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pango_attr_list_insert@PLT
.LBB21_79:                              # %if.end.220
                                        #   in Loop: Header=BB21_13 Depth=1
	jmp	.LBB21_80
.LBB21_80:                              # %do.cond
                                        #   in Loop: Header=BB21_13 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB21_13
# BB#81:                                # %do.end.222
	leaq	-48(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_label_set_attributes@PLT
	movq	-24(%rbp), %rdi
	callq	pango_attr_list_unref@PLT
.LBB21_82:                              # %return
	addq	$848, %rsp              # imm = 0x350
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_label_set_attributes, .Lfunc_end21-gimp_label_set_attributes
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI21_0:
	.long	.LBB21_76-.LJTI21_0
	.long	.LBB21_19-.LJTI21_0
	.long	.LBB21_23-.LJTI21_0
	.long	.LBB21_27-.LJTI21_0
	.long	.LBB21_31-.LJTI21_0
	.long	.LBB21_35-.LJTI21_0
	.long	.LBB21_39-.LJTI21_0
	.long	.LBB21_43-.LJTI21_0
	.long	.LBB21_47-.LJTI21_0
	.long	.LBB21_51-.LJTI21_0
	.long	.LBB21_55-.LJTI21_0
	.long	.LBB21_59-.LJTI21_0
	.long	.LBB21_63-.LJTI21_0
	.long	.LBB21_67-.LJTI21_0
	.long	.LBB21_75-.LJTI21_0
	.long	.LBB21_71-.LJTI21_0

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB22_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB22_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.L.str.3(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end22:
	.size	g_warning, .Lfunc_end22-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-item-data"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"user_data"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"toggled"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"LibGimpWidgets"
	.size	.L.str.3, 15

	.type	.L__func__.gimp_radio_group_set_active,@object # @__func__.gimp_radio_group_set_active
.L__func__.gimp_radio_group_set_active:
	.asciz	"gimp_radio_group_set_active"
	.size	.L__func__.gimp_radio_group_set_active, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GTK_IS_RADIO_BUTTON (radio_button)"
	.size	.L.str.4, 35

	.type	.L__func__.gimp_int_radio_group_set_active,@object # @__func__.gimp_int_radio_group_set_active
.L__func__.gimp_int_radio_group_set_active:
	.asciz	"gimp_int_radio_group_set_active"
	.size	.L__func__.gimp_int_radio_group_set_active, 32

	.type	.L__func__.gimp_random_seed_new,@object # @__func__.gimp_random_seed_new
.L__func__.gimp_random_seed_new:
	.asciz	"gimp_random_seed_new"
	.size	.L__func__.gimp_random_seed_new, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"seed != NULL"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"random_seed != NULL"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"value-changed"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp20-libgimp"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Use this value for random number generator seed - this allows you to repeat a given \"random\" operation"
	.size	.L.str.9, 103

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"_New Seed"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"clicked"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Seed random number generator with a generated random number"
	.size	.L.str.12, 60

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Randomize"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"spinbutton"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"button"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"toggle"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"active"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"sensitive"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"coordinates-data"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"chainbutton"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"set_sensitive"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"inverse_sensitive"
	.size	.L.str.22, 18

	.type	.L__func__.gimp_label_set_attributes,@object # @__func__.gimp_label_set_attributes
.L__func__.gimp_label_set_attributes:
	.asciz	"gimp_label_set_attributes"
	.size	.L__func__.gimp_label_set_attributes, 26

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GTK_IS_LABEL (label)"
	.size	.L.str.23, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s: invalid PangoAttribute type %d"
	.size	.L.str.24, 35

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"can-focus"
	.size	.L.str.25, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
