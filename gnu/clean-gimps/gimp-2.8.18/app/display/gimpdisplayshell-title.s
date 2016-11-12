	.text
	.file	"gimpdisplayshell-title.bc"
	.globl	gimp_display_shell_title_update
	.align	16, 0x90
	.type	gimp_display_shell_title_update,@function
gimp_display_shell_title_update:        # @gimp_display_shell_title_update
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
	movabsq	$.L__func__.gimp_display_shell_title_update, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_15
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 528(%rax)
	je	.LBB0_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	528(%rax), %edi
	callq	g_source_remove
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB0_14:                               # %if.end.15
	movabsq	$gimp_display_shell_update_title_idle, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_idle_add
	movq	-8(%rbp), %rsi
	movl	%eax, 528(%rsi)
.LBB0_15:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_title_update, .Lfunc_end0-gimp_display_shell_title_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_update_title_idle,@function
gimp_display_shell_update_title_idle:   # @gimp_display_shell_update_title_idle
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
	subq	$1104, %rsp             # imm = 0x450
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 528(%rax)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB1_4
# BB#1:                                 # %if.then
	movl	$512, %edx              # imm = 0x200
	leaq	-544(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	480(%rax), %rcx
	callq	gimp_display_shell_format_title
	movl	%eax, -1060(%rbp)
	cmpl	$0, -1060(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.7
	movabsq	$.L.str.2, %rsi
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %ecx
	leaq	-544(%rbp), %rdx
	movslq	-1060(%rbp), %rdi
	addq	%rdi, %rdx
	movslq	-1060(%rbp), %rdi
	subq	%rdi, %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	g_strlcpy
	movslq	-1060(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %r8d
	movl	%r8d, -1060(%rbp)
.LBB1_3:                                # %if.end
	movabsq	$.L.str.3, %rdi
	leaq	-544(%rbp), %rax
	movslq	-1060(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$512, %edx              # imm = 0x200
	movl	%edx, %ecx
	movslq	-1060(%rbp), %rdi
	subq	%rdi, %rcx
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_strlcpy
	movl	$512, %edx              # imm = 0x200
	leaq	-1056(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	488(%rcx), %rcx
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	gimp_display_shell_format_title
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	leaq	-1056(%rbp), %r8
	leaq	-544(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movabsq	$.L.str.6, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.7, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set
.LBB1_5:                                # %if.end.24
	xorl	%eax, %eax
	addq	$1104, %rsp             # imm = 0x450
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_update_title_idle, .Lfunc_end1-gimp_display_shell_update_title_idle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI2_1:
	.quad	4636737291354636288     # double 100
.LCPI2_2:
	.quad	4594572339843380019     # double 0.14999999999999999
	.text
	.align	16, 0x90
	.type	gimp_display_shell_format_title,@function
gimp_display_shell_format_title:        # @gimp_display_shell_format_title
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
	subq	$768, %rsp              # imm = 0x300
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -60(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_format_title, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_78
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movb	$10, (%rax)
	movl	$0, -4(%rbp)
	jmp	.LBB2_78
.LBB2_14:                               # %if.end.14
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_fraction
.LBB2_15:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	movb	%cl, -201(%rbp)         # 1-byte Spill
	jge	.LBB2_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -201(%rbp)         # 1-byte Spill
.LBB2_17:                               # %land.end
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	-201(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_18
	jmp	.LBB2_74
.LBB2_18:                               # %while.body
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	subl	$37, %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	jne	.LBB2_72
	jmp	.LBB2_19
.LBB2_19:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -40(%rbp)
	movsbl	1(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
	je	.LBB2_20
	jmp	.LBB2_79
.LBB2_79:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$37, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB2_20
	jmp	.LBB2_80
.LBB2_80:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$65, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB2_45
	jmp	.LBB2_81
.LBB2_81:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$66, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	je	.LBB2_42
	jmp	.LBB2_82
.LBB2_82:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$67, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	je	.LBB2_37
	jmp	.LBB2_83
.LBB2_83:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$68, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	je	.LBB2_32
	jmp	.LBB2_84
.LBB2_84:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$70, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB2_22
	jmp	.LBB2_85
.LBB2_85:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$72, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB2_64
	jmp	.LBB2_86
.LBB2_86:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$76, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB2_51
	jmp	.LBB2_87
.LBB2_87:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$77, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB2_49
	jmp	.LBB2_88
.LBB2_88:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$80, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	je	.LBB2_56
	jmp	.LBB2_89
.LBB2_89:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$84, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	je	.LBB2_26
	jmp	.LBB2_90
.LBB2_90:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$85, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	je	.LBB2_69
	jmp	.LBB2_91
.LBB2_91:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$87, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	je	.LBB2_60
	jmp	.LBB2_92
.LBB2_92:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	je	.LBB2_30
	jmp	.LBB2_93
.LBB2_93:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	je	.LBB2_21
	jmp	.LBB2_94
.LBB2_94:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$104, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	je	.LBB2_67
	jmp	.LBB2_95
.LBB2_95:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	je	.LBB2_24
	jmp	.LBB2_96
.LBB2_96:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	je	.LBB2_50
	jmp	.LBB2_97
.LBB2_97:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$109, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	je	.LBB2_48
	jmp	.LBB2_98
.LBB2_98:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB2_52
	jmp	.LBB2_99
.LBB2_99:                               # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB2_23
	jmp	.LBB2_100
.LBB2_100:                              # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB2_29
	jmp	.LBB2_101
.LBB2_101:                              # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	je	.LBB2_25
	jmp	.LBB2_102
.LBB2_102:                              # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$117, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	je	.LBB2_68
	jmp	.LBB2_103
.LBB2_103:                              # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	je	.LBB2_63
	jmp	.LBB2_104
.LBB2_104:                              # %sw.bb
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$122, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	je	.LBB2_31
	jmp	.LBB2_70
.LBB2_20:                               # %sw.bb.19
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rsi
	movb	$37, (%rsi,%rdx)
	jmp	.LBB2_71
.LBB2_21:                               # %sw.bb.21
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -332(%rbp)        # 4-byte Spill
	movl	%esi, -336(%rbp)        # 4-byte Spill
	callq	gimp_image_get_display_name
	movabsq	$.L.str.8, %rcx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-336(%rbp), %esi        # 4-byte Reload
	movl	-332(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_22:                               # %sw.bb.24
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -348(%rbp)        # 4-byte Spill
	movl	%esi, -352(%rbp)        # 4-byte Spill
	callq	gimp_image_get_display_path
	movabsq	$.L.str.8, %rcx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movl	-352(%rbp), %esi        # 4-byte Reload
	movl	-348(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_23:                               # %sw.bb.28
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%esi, -368(%rbp)        # 4-byte Spill
	callq	gimp_image_get_ID
	movabsq	$.L.str.9, %rcx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movl	-368(%rbp), %esi        # 4-byte Reload
	movl	-364(%rbp), %edx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_24:                               # %sw.bb.32
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movl	%esi, -384(%rbp)        # 4-byte Spill
	callq	gimp_display_get_instance
	movabsq	$.L.str.9, %rcx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movl	-384(%rbp), %esi        # 4-byte Reload
	movl	-380(%rbp), %edx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_25:                               # %sw.bb.37
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -396(%rbp)        # 4-byte Spill
	movl	%esi, -400(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_title_image_type
	movabsq	$.L.str.8, %rcx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	-400(%rbp), %esi        # 4-byte Reload
	movl	-396(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_26:                               # %sw.bb.41
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB2_28
# BB#27:                                # %if.then.45
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-96(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -412(%rbp)        # 4-byte Spill
	movl	%esi, -416(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_title_drawable_type
	movabsq	$.L.str.8, %rcx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	-416(%rbp), %esi        # 4-byte Reload
	movl	-412(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB2_28:                               # %if.end.49
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_71
.LBB2_29:                               # %sw.bb.50
                                        #   in Loop: Header=BB2_15 Depth=1
	movabsq	$.L.str.9, %rcx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-56(%rbp), %r8d
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_30:                               # %sw.bb.53
                                        #   in Loop: Header=BB2_15 Depth=1
	movabsq	$.L.str.9, %rcx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-52(%rbp), %r8d
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_31:                               # %sw.bb.56
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.10, %rdi
	movsd	%xmm0, -104(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	cmovaeq	%rdi, %rax
	mulsd	-104(%rbp), %xmm1
	movq	%rcx, %rdi
	movq	%rax, %rcx
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_32:                               # %sw.bb.64
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_34
# BB#33:                                # %if.then.69
                                        #   in Loop: Header=BB2_15 Depth=1
	movabsq	$.L.str.12, %rcx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_34:                               # %if.end.72
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	je	.LBB2_36
# BB#35:                                # %if.then.75
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	movb	1(%rax), %cl
	movl	-60(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -60(%rbp)
	movslq	%edx, %rax
	movq	-24(%rbp), %rdi
	movb	%cl, (%rdi,%rax)
.LBB2_36:                               # %if.end.80
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB2_71
.LBB2_37:                               # %sw.bb.82
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_39
# BB#38:                                # %if.then.87
                                        #   in Loop: Header=BB2_15 Depth=1
	movabsq	$.L.str.13, %rcx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_39:                               # %if.end.90
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	jne	.LBB2_41
# BB#40:                                # %if.then.93
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	movb	1(%rax), %cl
	movl	-60(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -60(%rbp)
	movslq	%edx, %rax
	movq	-24(%rbp), %rdi
	movb	%cl, (%rdi,%rax)
.LBB2_41:                               # %if.end.98
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB2_71
.LBB2_42:                               # %sw.bb.100
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	je	.LBB2_44
# BB#43:                                # %if.then.103
                                        #   in Loop: Header=BB2_15 Depth=1
	movabsq	$.L.str.14, %rdi
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movl	%esi, -436(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rcx
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movl	-436(%rbp), %esi        # 4-byte Reload
	movl	-420(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB2_44:                               # %if.end.107
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_71
.LBB2_45:                               # %sw.bb.108
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	jne	.LBB2_47
# BB#46:                                # %if.then.111
                                        #   in Loop: Header=BB2_15 Depth=1
	movabsq	$.L.str.15, %rdi
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	%edx, -440(%rbp)        # 4-byte Spill
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movl	%esi, -452(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rcx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movl	-452(%rbp), %esi        # 4-byte Reload
	movl	-440(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB2_47:                               # %if.end.115
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_71
.LBB2_48:                               # %sw.bb.116
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_object_get_memsize
	movq	%rax, %rdi
	callq	g_format_size
	movabsq	$.L.str.8, %rcx
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-120(%rbp), %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_free
	jmp	.LBB2_71
.LBB2_49:                               # %sw.bb.125
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -476(%rbp)        # 4-byte Spill
	movl	%esi, -480(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	movabsq	$.L.str.16, %rcx
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-488(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	-480(%rbp), %esi        # 4-byte Reload
	movl	-476(%rbp), %edx        # 4-byte Reload
	movaps	%xmm2, %xmm0
	movb	$1, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_50:                               # %sw.bb.133
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -500(%rbp)        # 4-byte Spill
	movl	%esi, -504(%rbp)        # 4-byte Spill
	callq	gimp_image_get_n_layers
	movabsq	$.L.str.9, %rcx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movl	-504(%rbp), %esi        # 4-byte Reload
	movl	-500(%rbp), %edx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_51:                               # %sw.bb.137
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_n_layers
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movl	%eax, -124(%rbp)
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %eax
	movl	-60(%rbp), %edx
	movslq	-124(%rbp), %r8
	movl	%edx, -508(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	movl	%eax, -524(%rbp)        # 4-byte Spill
	callq	ngettext
	movl	-124(%rbp), %r8d
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movl	-524(%rbp), %esi        # 4-byte Reload
	movl	-508(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_52:                               # %sw.bb.145
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.LBB2_54
# BB#53:                                # %if.then.150
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_viewable_get_description
	movabsq	$.L.str.8, %rcx
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-144(%rbp), %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-144(%rbp), %rdi
	callq	g_free
	jmp	.LBB2_55
.LBB2_54:                               # %if.else.157
                                        #   in Loop: Header=BB2_15 Depth=1
	movabsq	$.L.str.19, %rdi
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	%edx, -540(%rbp)        # 4-byte Spill
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movl	%esi, -556(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rcx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movl	-556(%rbp), %esi        # 4-byte Reload
	movl	-540(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB2_55:                               # %if.end.161
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_71
.LBB2_56:                               # %sw.bb.162
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB2_58
# BB#57:                                # %if.then.167
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-152(%rbp), %rax
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movl	%esi, -572(%rbp)        # 4-byte Spill
	movl	%edx, -576(%rbp)        # 4-byte Spill
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_ID
	movabsq	$.L.str.9, %rcx
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	-572(%rbp), %esi        # 4-byte Reload
	movl	-576(%rbp), %edx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_59
.LBB2_58:                               # %if.else.173
                                        #   in Loop: Header=BB2_15 Depth=1
	movabsq	$.L.str.19, %rdi
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	%edx, -588(%rbp)        # 4-byte Spill
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movl	%esi, -604(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rcx
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movl	-604(%rbp), %esi        # 4-byte Reload
	movl	-588(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB2_59:                               # %if.end.177
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_71
.LBB2_60:                               # %sw.bb.178
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 184(%rax)
	je	.LBB2_62
# BB#61:                                # %if.then.181
                                        #   in Loop: Header=BB2_15 Depth=1
	leaq	-160(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_resolution
	leaq	-176(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	184(%rdx), %eax
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_digits
	movl	$8, %edi
	movl	%edi, %esi
	movabsq	$.L.str.20, %rdx
	addl	$1, %eax
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	leaq	-176(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %r8
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -628(%rbp)        # 4-byte Spill
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	movl	%edx, -644(%rbp)        # 4-byte Spill
	movl	%esi, -648(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movq	-16(%rbp), %rcx
	movl	184(%rcx), %edi
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movl	-648(%rbp), %esi        # 4-byte Reload
	movl	-644(%rbp), %edx        # 4-byte Reload
	movq	-640(%rbp), %rcx        # 8-byte Reload
	movb	$1, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_62:                               # %if.end.196
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_63
.LBB2_63:                               # %sw.bb.197
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -660(%rbp)        # 4-byte Spill
	movl	%esi, -664(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movabsq	$.L.str.9, %rcx
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movl	-664(%rbp), %esi        # 4-byte Reload
	movl	-660(%rbp), %edx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_64:                               # %sw.bb.201
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 184(%rax)
	je	.LBB2_66
# BB#65:                                # %if.then.205
                                        #   in Loop: Header=BB2_15 Depth=1
	leaq	-184(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_resolution
	leaq	-200(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	184(%rdx), %eax
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_unit_get_digits
	movl	$8, %edi
	movl	%edi, %esi
	movabsq	$.L.str.20, %rdx
	addl	$1, %eax
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	leaq	-200(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %r8
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -684(%rbp)        # 4-byte Spill
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	movl	%edx, -700(%rbp)        # 4-byte Spill
	movl	%esi, -704(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movq	-16(%rbp), %rcx
	movl	184(%rcx), %edi
	movsd	-192(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_pixels_to_units
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movl	-704(%rbp), %esi        # 4-byte Reload
	movl	-700(%rbp), %edx        # 4-byte Reload
	movq	-696(%rbp), %rcx        # 8-byte Reload
	movb	$1, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_66:                               # %if.end.224
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_67
.LBB2_67:                               # %sw.bb.225
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -716(%rbp)        # 4-byte Spill
	movl	%esi, -720(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movabsq	$.L.str.9, %rcx
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	-720(%rbp), %esi        # 4-byte Reload
	movl	-716(%rbp), %edx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_68:                               # %sw.bb.229
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	184(%rax), %ecx
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	%edx, -732(%rbp)        # 4-byte Spill
	movl	%esi, -736(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_symbol
	movabsq	$.L.str.8, %rcx
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movl	-736(%rbp), %esi        # 4-byte Reload
	movl	-732(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_69:                               # %sw.bb.234
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	184(%rax), %ecx
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	%edx, -748(%rbp)        # 4-byte Spill
	movl	%esi, -752(%rbp)        # 4-byte Spill
	callq	gimp_unit_get_abbreviation
	movabsq	$.L.str.8, %rcx
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movl	-752(%rbp), %esi        # 4-byte Reload
	movl	-748(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_71
.LBB2_70:                               # %sw.default
                                        #   in Loop: Header=BB2_15 Depth=1
	movabsq	$.L.str.21, %rcx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-40(%rbp), %rax
	movsbl	(%rax), %r8d
	movb	$0, %al
	callq	print
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB2_71:                               # %sw.epilog
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_73
.LBB2_72:                               # %sw.default.242
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	movb	(%rax), %cl
	movl	-60(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -60(%rbp)
	movslq	%edx, %rax
	movq	-24(%rbp), %rdi
	movb	%cl, (%rdi,%rax)
.LBB2_73:                               # %sw.epilog.246
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB2_15
.LBB2_74:                               # %while.end
	movl	-60(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_76
# BB#75:                                # %cond.true
	movl	-60(%rbp), %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
	jmp	.LBB2_77
.LBB2_76:                               # %cond.false
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -756(%rbp)        # 4-byte Spill
.LBB2_77:                               # %cond.end
	movl	-756(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_78:                               # %return
	movl	-4(%rbp), %eax
	addq	$768, %rsp              # imm = 0x300
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_format_title, .Lfunc_end2-gimp_display_shell_format_title
	.cfi_endproc

	.align	16, 0x90
	.type	print,@function
print:                                  # @print
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
	subq	$416, %rsp              # imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movl	%edx, -404(%rbp)        # 4-byte Spill
	movl	%esi, -408(%rbp)        # 4-byte Spill
	je	.LBB3_4
# BB#3:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB3_4:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movl	-404(%rbp), %esi        # 4-byte Reload
	movl	-408(%rbp), %edi        # 4-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	leaq	-48(%rbp), %r9
	movq	%r8, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%r9, %rdx
	leaq	-240(%rbp), %r8
	movq	%r8, 16(%rdx)
	leaq	16(%rbp), %r8
	movq	%r8, 8(%rdx)
	movl	$48, 4(%rdx)
	movl	$32, (%rdx)
	movq	-8(%rbp), %rdx
	movslq	-16(%rbp), %r8
	addq	%r8, %rdx
	movl	-12(%rbp), %esi
	subl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	-24(%rbp), %r8
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movq	%r9, %rcx
	callq	g_vsnprintf
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB3_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB3_2:                                # %if.end
	movl	-52(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	print, .Lfunc_end3-print
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_title_image_type,@function
gimp_display_shell_title_image_type:    # @gimp_display_shell_title_image_type
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
	movabsq	$.L.str.22, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)
	callq	gimp_image_base_type_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_base_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	-16(%rbp), %r8
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %esi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %r9          # 8-byte Reload
	callq	gimp_enum_get_value
	movq	-16(%rbp), %rcx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_title_image_type, .Lfunc_end4-gimp_display_shell_title_image_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_title_drawable_type,@function
gimp_display_shell_title_drawable_type: # @gimp_display_shell_title_drawable_type
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
	movabsq	$.L.str.22, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)
	callq	gimp_image_type_get_type
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_drawable_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	-16(%rbp), %r8
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %esi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %r9          # 8-byte Reload
	callq	gimp_enum_get_value
	movq	-16(%rbp), %rcx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_title_drawable_type, .Lfunc_end5-gimp_display_shell_title_drawable_type
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_title_update,@object # @__func__.gimp_display_shell_title_update
.L__func__.gimp_display_shell_title_update:
	.asciz	"gimp_display_shell_title_update"
	.size	.L__func__.gimp_display_shell_title_update, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" \342\200\223 "
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"title"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"status"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GNU Image Manipulation Program"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" "
	.size	.L.str.7, 2

	.type	.L__func__.gimp_display_shell_format_title,@object # @__func__.gimp_display_shell_format_title
.L__func__.gimp_display_shell_format_title:
	.asciz	"gimp_display_shell_format_title"
	.size	.L__func__.gimp_display_shell_format_title, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%.0f"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%.2f"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%%D"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%%C"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"(modified)"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"(clean)"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%.1f"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%d layer"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%d layers"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"(none)"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%%.%df"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%%%c"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.zero	1
	.size	.L.str.22, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
