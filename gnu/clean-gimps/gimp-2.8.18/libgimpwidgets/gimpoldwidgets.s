	.text
	.file	"gimpoldwidgets.bc"
	.globl	gimp_option_menu_new
	.align	16, 0x90
	.type	gimp_option_menu_new,@function
gimp_option_menu_new:                   # @gimp_option_menu_new
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
	subq	$688, %rsp              # imm = 0x2B0
	testb	%al, %al
	movaps	%xmm7, -320(%rbp)       # 16-byte Spill
	movaps	%xmm6, -336(%rbp)       # 16-byte Spill
	movaps	%xmm5, -352(%rbp)       # 16-byte Spill
	movaps	%xmm4, -368(%rbp)       # 16-byte Spill
	movaps	%xmm3, -384(%rbp)       # 16-byte Spill
	movaps	%xmm2, -400(%rbp)       # 16-byte Spill
	movaps	%xmm1, -416(%rbp)       # 16-byte Spill
	movaps	%xmm0, -432(%rbp)       # 16-byte Spill
	movl	%edi, -436(%rbp)        # 4-byte Spill
	movq	%r9, -448(%rbp)         # 8-byte Spill
	movq	%r8, -456(%rbp)         # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	je	.LBB0_39
# BB#38:                                # %entry
	movaps	-432(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -256(%rbp)
	movaps	-416(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -240(%rbp)
	movaps	-400(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -224(%rbp)
	movaps	-384(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -208(%rbp)
	movaps	-368(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -192(%rbp)
	movaps	-352(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -176(%rbp)
	movaps	-336(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -160(%rbp)
	movaps	-320(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -144(%rbp)
.LBB0_39:                               # %entry
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -272(%rbp)
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -280(%rbp)
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -288(%rbp)
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -296(%rbp)
	movl	-436(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -12(%rbp)
	callq	gtk_menu_new@PLT
	leaq	-112(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movl	$0, -120(%rbp)
	movq	%rcx, %rax
	leaq	-304(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$8, (%rax)
	movl	-112(%rbp), %r8d
	cmpl	$40, %r8d
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	movl	%r8d, -492(%rbp)        # 4-byte Spill
	ja	.LBB0_2
# BB#1:                                 # %vaarg.in_reg
	movl	-492(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-488(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %vaarg.in_mem
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -504(%rbp)        # 8-byte Spill
.LBB0_3:                                # %vaarg.end
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -116(%rbp)
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_34
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	leaq	-112(%rbp), %rax
	movl	-112(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	ja	.LBB0_7
# BB#6:                                 # %vaarg.in_reg.7
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-516(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-512(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                # %vaarg.in_mem.9
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -528(%rbp)        # 8-byte Spill
.LBB0_8:                                # %vaarg.end.13
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	leaq	-112(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-112(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	movl	%edx, -540(%rbp)        # 4-byte Spill
	ja	.LBB0_10
# BB#9:                                 # %vaarg.in_reg.19
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-540(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               # %vaarg.in_mem.21
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -552(%rbp)        # 8-byte Spill
.LBB0_11:                               # %vaarg.end.25
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	leaq	-112(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-112(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	movl	%edx, -564(%rbp)        # 4-byte Spill
	ja	.LBB0_13
# BB#12:                                # %vaarg.in_reg.31
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-564(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-560(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB0_14
.LBB0_13:                               # %vaarg.in_mem.33
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -576(%rbp)        # 8-byte Spill
.LBB0_14:                               # %vaarg.end.37
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	leaq	-112(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-112(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	movl	%edx, -588(%rbp)        # 4-byte Spill
	ja	.LBB0_16
# BB#15:                                # %vaarg.in_reg.43
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-588(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-584(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB0_17
.LBB0_16:                               # %vaarg.in_mem.45
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -600(%rbp)        # 8-byte Spill
.LBB0_17:                               # %vaarg.end.49
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-600(%rbp), %rax        # 8-byte Reload
	leaq	-112(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-112(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	movl	%edx, -612(%rbp)        # 4-byte Spill
	ja	.LBB0_19
# BB#18:                                # %vaarg.in_reg.55
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-612(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-608(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB0_20
.LBB0_19:                               # %vaarg.in_mem.57
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -624(%rbp)        # 8-byte Spill
.LBB0_20:                               # %vaarg.end.61
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-40(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB0_24
# BB#21:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_menu_item_new_with_label@PLT
	leaq	.L.str.1(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data@PLT
	cmpq	$0, -64(%rbp)
	movq	%rax, -632(%rbp)        # 8-byte Spill
	je	.LBB0_23
# BB#22:                                # %if.then.68
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB0_23:                               # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_25
.LBB0_24:                               # %if.else
                                        #   in Loop: Header=BB0_4 Depth=1
	callq	gtk_menu_item_new@PLT
	xorl	%esi, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
.LBB0_25:                               # %if.end.72
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	cmpq	$0, -72(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.76
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB0_27:                               # %if.end.77
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	cmpl	$0, -76(%rbp)
	je	.LBB0_29
# BB#28:                                # %if.then.79
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB0_29:                               # %if.end.80
                                        #   in Loop: Header=BB0_4 Depth=1
	leaq	-112(%rbp), %rax
	movl	-112(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -648(%rbp)        # 8-byte Spill
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	ja	.LBB0_31
# BB#30:                                # %vaarg.in_reg.85
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-652(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-648(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB0_32
.LBB0_31:                               # %vaarg.in_mem.87
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -664(%rbp)        # 8-byte Spill
.LBB0_32:                               # %vaarg.end.91
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_4
.LBB0_34:                               # %for.end
	leaq	-112(%rbp), %rax
	cmpl	$0, -12(%rbp)
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jne	.LBB0_36
# BB#35:                                # %if.then.96
	callq	gtk_option_menu_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_option_menu_set_menu@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-120(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_option_menu_set_history@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_37
.LBB0_36:                               # %if.end.102
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_37:                               # %return
	movq	-8(%rbp), %rax
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_option_menu_new, .Lfunc_end0-gimp_option_menu_new
	.cfi_endproc

	.globl	gimp_option_menu_new2
	.align	16, 0x90
	.type	gimp_option_menu_new2,@function
gimp_option_menu_new2:                  # @gimp_option_menu_new2
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
	subq	$624, %rsp              # imm = 0x270
	testb	%al, %al
	movaps	%xmm7, -320(%rbp)       # 16-byte Spill
	movaps	%xmm6, -336(%rbp)       # 16-byte Spill
	movaps	%xmm5, -352(%rbp)       # 16-byte Spill
	movaps	%xmm4, -368(%rbp)       # 16-byte Spill
	movaps	%xmm3, -384(%rbp)       # 16-byte Spill
	movaps	%xmm2, -400(%rbp)       # 16-byte Spill
	movaps	%xmm1, -416(%rbp)       # 16-byte Spill
	movaps	%xmm0, -432(%rbp)       # 16-byte Spill
	movl	%edi, -436(%rbp)        # 4-byte Spill
	movq	%r9, -448(%rbp)         # 8-byte Spill
	movq	%r8, -456(%rbp)         # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	je	.LBB1_30
# BB#29:                                # %entry
	movaps	-432(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -256(%rbp)
	movaps	-416(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -240(%rbp)
	movaps	-400(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -224(%rbp)
	movaps	-384(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -208(%rbp)
	movaps	-368(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -192(%rbp)
	movaps	-352(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -176(%rbp)
	movaps	-336(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -160(%rbp)
	movaps	-320(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -144(%rbp)
.LBB1_30:                               # %entry
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -272(%rbp)
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movl	-436(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -12(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	callq	gtk_menu_new@PLT
	leaq	-112(%rbp), %rcx
	movq	%rax, -48(%rbp)
	movl	$0, -120(%rbp)
	movq	%rcx, %rax
	leaq	-304(%rbp), %rdx
	movq	%rdx, 16(%rax)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$32, (%rax)
	movl	-112(%rbp), %r8d
	cmpl	$40, %r8d
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	movl	%r8d, -492(%rbp)        # 4-byte Spill
	ja	.LBB1_2
# BB#1:                                 # %vaarg.in_reg
	movl	-492(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-488(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %vaarg.in_mem
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -504(%rbp)        # 8-byte Spill
.LBB1_3:                                # %vaarg.end
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -116(%rbp)
.LBB1_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB1_25
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB1_4 Depth=1
	leaq	-112(%rbp), %rax
	movl	-112(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	ja	.LBB1_7
# BB#6:                                 # %vaarg.in_reg.7
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-516(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-512(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %vaarg.in_mem.9
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -528(%rbp)        # 8-byte Spill
.LBB1_8:                                # %vaarg.end.13
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	leaq	-112(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-112(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	movl	%edx, -540(%rbp)        # 4-byte Spill
	ja	.LBB1_10
# BB#9:                                 # %vaarg.in_reg.19
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-540(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %vaarg.in_mem.21
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -552(%rbp)        # 8-byte Spill
.LBB1_11:                               # %vaarg.end.25
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB1_15
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %rdi
	callq	gtk_menu_item_new_with_label@PLT
	leaq	.L.str.1(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data@PLT
	cmpq	$0, -72(%rbp)
	movq	%rax, -560(%rbp)        # 8-byte Spill
	je	.LBB1_14
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB1_14:                               # %if.end
                                        #   in Loop: Header=BB1_4 Depth=1
	jmp	.LBB1_16
.LBB1_15:                               # %if.else
                                        #   in Loop: Header=BB1_4 Depth=1
	callq	gtk_menu_item_new@PLT
	xorl	%esi, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
.LBB1_16:                               # %if.end.36
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	cmpq	$0, -80(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.40
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB1_18:                               # %if.end.41
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-72(%rbp), %rdi
	cmpq	-40(%rbp), %rdi
	jne	.LBB1_20
# BB#19:                                # %if.then.42
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB1_20:                               # %if.end.43
                                        #   in Loop: Header=BB1_4 Depth=1
	leaq	-112(%rbp), %rax
	movl	-112(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	ja	.LBB1_22
# BB#21:                                # %vaarg.in_reg.48
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-580(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-576(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %vaarg.in_mem.50
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -592(%rbp)        # 8-byte Spill
.LBB1_23:                               # %vaarg.end.54
                                        #   in Loop: Header=BB1_4 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB1_4 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB1_4
.LBB1_25:                               # %for.end
	leaq	-112(%rbp), %rax
	cmpl	$0, -12(%rbp)
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jne	.LBB1_27
# BB#26:                                # %if.then.59
	callq	gtk_option_menu_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_option_menu_set_menu@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-120(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_option_menu_set_history@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_28
.LBB1_27:                               # %if.end.65
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_option_menu_new2, .Lfunc_end1-gimp_option_menu_new2
	.cfi_endproc

	.globl	gimp_int_option_menu_new
	.align	16, 0x90
	.type	gimp_int_option_menu_new,@function
gimp_int_option_menu_new:               # @gimp_int_option_menu_new
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
	subq	$624, %rsp              # imm = 0x270
	testb	%al, %al
	movaps	%xmm7, -320(%rbp)       # 16-byte Spill
	movaps	%xmm6, -336(%rbp)       # 16-byte Spill
	movaps	%xmm5, -352(%rbp)       # 16-byte Spill
	movaps	%xmm4, -368(%rbp)       # 16-byte Spill
	movaps	%xmm3, -384(%rbp)       # 16-byte Spill
	movaps	%xmm2, -400(%rbp)       # 16-byte Spill
	movaps	%xmm1, -416(%rbp)       # 16-byte Spill
	movaps	%xmm0, -432(%rbp)       # 16-byte Spill
	movl	%edi, -436(%rbp)        # 4-byte Spill
	movq	%r9, -448(%rbp)         # 8-byte Spill
	movq	%r8, -456(%rbp)         # 8-byte Spill
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	je	.LBB2_30
# BB#29:                                # %entry
	movaps	-432(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -256(%rbp)
	movaps	-416(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -240(%rbp)
	movaps	-400(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -224(%rbp)
	movaps	-384(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -208(%rbp)
	movaps	-368(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -192(%rbp)
	movaps	-352(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -176(%rbp)
	movaps	-336(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -160(%rbp)
	movaps	-320(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -144(%rbp)
.LBB2_30:                               # %entry
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -272(%rbp)
	movl	-460(%rbp), %edx        # 4-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movl	-436(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -12(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	callq	gtk_menu_new@PLT
	leaq	-112(%rbp), %rcx
	movq	%rax, -48(%rbp)
	movl	$0, -120(%rbp)
	movq	%rcx, %rax
	leaq	-304(%rbp), %rsi
	movq	%rsi, 16(%rax)
	leaq	16(%rbp), %rsi
	movq	%rsi, 8(%rax)
	movl	$48, 4(%rax)
	movl	$32, (%rax)
	movl	-112(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	movl	%edx, -492(%rbp)        # 4-byte Spill
	ja	.LBB2_2
# BB#1:                                 # %vaarg.in_reg
	movl	-492(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-488(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %vaarg.in_mem
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -504(%rbp)        # 8-byte Spill
.LBB2_3:                                # %vaarg.end
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -116(%rbp)
.LBB2_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB2_25
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	-112(%rbp), %rax
	movl	-112(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	ja	.LBB2_7
# BB#6:                                 # %vaarg.in_reg.7
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-516(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-512(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %vaarg.in_mem.9
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -528(%rbp)        # 8-byte Spill
.LBB2_8:                                # %vaarg.end.13
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	leaq	-112(%rbp), %rcx
	movl	(%rax), %edx
	movl	%edx, -68(%rbp)
	movl	-112(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	movl	%edx, -540(%rbp)        # 4-byte Spill
	ja	.LBB2_10
# BB#9:                                 # %vaarg.in_reg.19
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-540(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %vaarg.in_mem.21
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -552(%rbp)        # 8-byte Spill
.LBB2_11:                               # %vaarg.end.25
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movslq	-68(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB2_15
# BB#12:                                # %if.then
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-64(%rbp), %rdi
	callq	gtk_menu_item_new_with_label@PLT
	leaq	.L.str.1(%rip), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data@PLT
	cmpl	$0, -68(%rbp)
	movq	%rax, -560(%rbp)        # 8-byte Spill
	je	.LBB2_14
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB2_14:                               # %if.end
                                        #   in Loop: Header=BB2_4 Depth=1
	jmp	.LBB2_16
.LBB2_15:                               # %if.else
                                        #   in Loop: Header=BB2_4 Depth=1
	callq	gtk_menu_item_new@PLT
	xorl	%esi, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
.LBB2_16:                               # %if.end.36
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type@PLT
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append@PLT
	cmpq	$0, -88(%rbp)
	je	.LBB2_18
# BB#17:                                # %if.then.40
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_18:                               # %if.end.41
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB2_20
# BB#19:                                # %if.then.43
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB2_20:                               # %if.end.44
                                        #   in Loop: Header=BB2_4 Depth=1
	leaq	-112(%rbp), %rax
	movl	-112(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	ja	.LBB2_22
# BB#21:                                # %vaarg.in_reg.49
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-580(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-576(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB2_23
.LBB2_22:                               # %vaarg.in_mem.51
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -592(%rbp)        # 8-byte Spill
.LBB2_23:                               # %vaarg.end.55
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB2_4
.LBB2_25:                               # %for.end
	leaq	-112(%rbp), %rax
	cmpl	$0, -12(%rbp)
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jne	.LBB2_27
# BB#26:                                # %if.then.60
	callq	gtk_option_menu_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_option_menu_set_menu@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_option_menu_get_type@PLT
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-120(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_option_menu_set_history@PLT
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_28
.LBB2_27:                               # %if.end.66
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_int_option_menu_new, .Lfunc_end2-gimp_int_option_menu_new
	.cfi_endproc

	.globl	gimp_option_menu_set_history
	.align	16, 0x90
	.type	gimp_option_menu_set_history,@function
gimp_option_menu_set_history:           # @gimp_option_menu_set_history
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_option_menu_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_option_menu_set_history(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_32
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_children@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB3_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_29
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -80(%rbp)
	callq	gtk_label_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.29
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB3_21
.LBB3_16:                               # %if.else.30
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_19
# BB#17:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_19
# BB#18:                                # %if.then.37
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.38
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB3_20:                               # %if.end.40
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.41
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_24
# BB#22:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	cmpq	-16(%rbp), %rax
	jne	.LBB3_24
# BB#23:                                # %if.then.48
	jmp	.LBB3_29
.LBB3_24:                               # %if.end.49
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_28
.LBB3_27:                               # %cond.false
                                        #   in Loop: Header=BB3_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_28
.LBB3_28:                               # %cond.end
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB3_13
.LBB3_29:                               # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB3_31
# BB#30:                                # %if.then.52
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_option_menu_set_history@PLT
.LBB3_31:                               # %if.end.53
	movq	-24(%rbp), %rdi
	callq	g_list_free@PLT
.LBB3_32:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_option_menu_set_history, .Lfunc_end3-gimp_option_menu_set_history
	.cfi_endproc

	.globl	gimp_int_option_menu_set_history
	.align	16, 0x90
	.type	gimp_int_option_menu_set_history,@function
gimp_int_option_menu_set_history:       # @gimp_int_option_menu_set_history
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
	callq	gtk_option_menu_get_type@PLT
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
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_int_option_menu_set_history(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	callq	gimp_option_menu_set_history@PLT
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_int_option_menu_set_history, .Lfunc_end4-gimp_int_option_menu_set_history
	.cfi_endproc

	.globl	gimp_option_menu_set_sensitive
	.align	16, 0x90
	.type	gimp_option_menu_set_sensitive,@function
gimp_option_menu_set_sensitive:         # @gimp_option_menu_set_sensitive
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_option_menu_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_option_menu_set_sensitive(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_34
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_option_menu_set_sensitive(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_34
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_children@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB5_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB5_33
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -80(%rbp)
	callq	gtk_label_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_21
# BB#20:                                # %if.then.35
                                        #   in Loop: Header=BB5_18 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB5_26
.LBB5_21:                               # %if.else.36
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_24
# BB#22:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_24
# BB#23:                                # %if.then.43
                                        #   in Loop: Header=BB5_18 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.44
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB5_25:                               # %if.end.46
                                        #   in Loop: Header=BB5_18 Depth=1
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.47
                                        #   in Loop: Header=BB5_18 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB5_28
# BB#27:                                # %if.then.50
                                        #   in Loop: Header=BB5_18 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -108(%rbp)
	movq	-72(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gtk_widget_set_sensitive@PLT
.LBB5_28:                               # %if.end.56
                                        #   in Loop: Header=BB5_18 Depth=1
	jmp	.LBB5_29
.LBB5_29:                               # %for.inc
                                        #   in Loop: Header=BB5_18 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB5_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB5_32
.LBB5_31:                               # %cond.false
                                        #   in Loop: Header=BB5_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB5_32
.LBB5_32:                               # %cond.end
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB5_18
.LBB5_33:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free@PLT
.LBB5_34:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_option_menu_set_sensitive, .Lfunc_end5-gimp_option_menu_set_sensitive
	.cfi_endproc

	.globl	gimp_int_option_menu_set_sensitive
	.align	16, 0x90
	.type	gimp_int_option_menu_set_sensitive,@function
gimp_int_option_menu_set_sensitive:     # @gimp_int_option_menu_set_sensitive
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_option_menu_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_int_option_menu_set_sensitive(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_34
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	leaq	.L.str.4(%rip), %rdi
	leaq	.L__func__.gimp_int_option_menu_set_sensitive(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_34
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_children@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB6_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB6_33
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -80(%rbp)
	callq	gtk_label_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_21
# BB#20:                                # %if.then.35
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB6_26
.LBB6_21:                               # %if.else.36
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_24
# BB#22:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_24
# BB#23:                                # %if.then.43
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB6_25
.LBB6_24:                               # %if.else.44
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB6_25:                               # %if.end.46
                                        #   in Loop: Header=BB6_18 Depth=1
	jmp	.LBB6_26
.LBB6_26:                               # %if.end.47
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB6_28
# BB#27:                                # %if.then.50
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %edx
	movl	%edx, -100(%rbp)
	movq	-16(%rbp), %rax
	movl	-100(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -104(%rbp)
	movq	-72(%rbp), %rdi
	movl	-104(%rbp), %esi
	callq	gtk_widget_set_sensitive@PLT
.LBB6_28:                               # %if.end.56
                                        #   in Loop: Header=BB6_18 Depth=1
	jmp	.LBB6_29
.LBB6_29:                               # %for.inc
                                        #   in Loop: Header=BB6_18 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB6_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB6_32
.LBB6_31:                               # %cond.false
                                        #   in Loop: Header=BB6_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB6_32
.LBB6_32:                               # %cond.end
                                        #   in Loop: Header=BB6_18 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB6_18
.LBB6_33:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free@PLT
.LBB6_34:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_int_option_menu_set_sensitive, .Lfunc_end6-gimp_int_option_menu_set_sensitive
	.cfi_endproc

	.globl	gimp_menu_item_update
	.align	16, 0x90
	.type	gimp_menu_item_update,@function
gimp_menu_item_update:                  # @gimp_menu_item_update
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_menu_item_update, .Lfunc_end7-gimp_menu_item_update
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1056964608              # float 0.5
	.text
	.globl	gimp_pixmap_button_new
	.align	16, 0x90
	.type	gimp_pixmap_button_new,@function
gimp_pixmap_button_new:                 # @gimp_pixmap_button_new
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gtk_button_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_pixmap_new@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movss	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -60(%rbp)        # 4-byte Spill
	movss	-60(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -64(%rbp)        # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-64(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-64(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$4, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$4, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB8_3:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_pixmap_button_new, .Lfunc_end8-gimp_pixmap_button_new
	.cfi_endproc

	.globl	gimp_unit_menu_update
	.align	16, 0x90
	.type	gimp_unit_menu_update,@function
gimp_unit_menu_update:                  # @gimp_unit_menu_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_unit_menu_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_unit_menu_get_unit@PLT
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-24(%rbp), %rsi
	cmpl	$0, (%rsi)
	jne	.LBB9_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB9_15
.LBB9_2:                                # %cond.false
	movq	-24(%rbp), %rax
	cmpl	$65536, (%rax)          # imm = 0x10000
	jne	.LBB9_4
# BB#3:                                 # %cond.true.4
	movl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB9_14
.LBB9_4:                                # %cond.false.5
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_unit_get_digits@PLT
	movl	$3, %edi
	cmpl	%eax, %edi
	jle	.LBB9_6
# BB#5:                                 # %cond.true.8
	movl	$3, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB9_7
.LBB9_6:                                # %cond.false.9
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_unit_get_digits@PLT
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB9_7:                                # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	$6, %ecx
	cmpl	%eax, %ecx
	jge	.LBB9_9
# BB#8:                                 # %cond.true.12
	movl	$6, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB9_13
.LBB9_9:                                # %cond.false.13
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_unit_get_digits@PLT
	movl	$3, %edi
	cmpl	%eax, %edi
	jle	.LBB9_11
# BB#10:                                # %cond.true.16
	movl	$3, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false.17
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_unit_get_digits@PLT
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB9_12:                               # %cond.end.19
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB9_13:                               # %cond.end.21
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB9_14:                               # %cond.end.23
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB9_15:                               # %cond.end.25
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_unit_menu_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_unit_menu_get_pixel_digits@PLT
	movl	$80, %edx
	movl	%edx, %esi
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -32(%rbp)
.LBB9_16:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_18
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_digits@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -32(%rbp)
	jmp	.LBB9_16
.LBB9_18:                               # %while.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_unit_menu_update, .Lfunc_end9-gimp_unit_menu_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"---"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"activate"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-item-data"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"user_data"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"LibGimpWidgets"
	.size	.L.str.4, 15

	.type	.L__func__.gimp_option_menu_set_history,@object # @__func__.gimp_option_menu_set_history
.L__func__.gimp_option_menu_set_history:
	.asciz	"gimp_option_menu_set_history"
	.size	.L__func__.gimp_option_menu_set_history, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GTK_IS_OPTION_MENU (option_menu)"
	.size	.L.str.5, 33

	.type	.L__func__.gimp_int_option_menu_set_history,@object # @__func__.gimp_int_option_menu_set_history
.L__func__.gimp_int_option_menu_set_history:
	.asciz	"gimp_int_option_menu_set_history"
	.size	.L__func__.gimp_int_option_menu_set_history, 33

	.type	.L__func__.gimp_option_menu_set_sensitive,@object # @__func__.gimp_option_menu_set_sensitive
.L__func__.gimp_option_menu_set_sensitive:
	.asciz	"gimp_option_menu_set_sensitive"
	.size	.L__func__.gimp_option_menu_set_sensitive, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"callback != NULL"
	.size	.L.str.6, 17

	.type	.L__func__.gimp_int_option_menu_set_sensitive,@object # @__func__.gimp_int_option_menu_set_sensitive
.L__func__.gimp_int_option_menu_set_sensitive:
	.asciz	"gimp_int_option_menu_set_sensitive"
	.size	.L__func__.gimp_int_option_menu_set_sensitive, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"set_digits"
	.size	.L.str.7, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
