	.text
	.file	"colormap-remap.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	subq	$152, %rsp
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
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.21, %r8
	movl	$1, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.remap_args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.22, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.23, %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.15, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.24, %rdx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_plugin_icon_register
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	movabsq	$.L.str.18, %rcx
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.28, %r8
	movabsq	$.L.str.21, %r14
	movl	$1, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.swap_args, %r12
	xorl	%r15d, %r15d
	movl	%r15d, %r13d
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r12, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%r13, -120(%rbp)        # 8-byte Spill
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	movl	%r11d, -128(%rbp)       # 4-byte Spill
	movl	%r10d, -132(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.29, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -368(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -52(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-48(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	movl	%edx, -44(%rbp)
	movl	$0, -324(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -324(%rbp)        # imm = 0x100
	jge	.LBB1_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-324(%rbp), %eax
	movb	%al, %cl
	movslq	-324(%rbp), %rdx
	movb	%cl, -320(%rbp,%rdx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
	movq	-8(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_40
# BB#7:                                 # %if.then
	movl	-44(%rbp), %edi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	je	.LBB1_9
# BB#8:                                 # %if.then.13
	movl	$0, -48(%rbp)
.LBB1_9:                                # %if.end
	cmpl	$3, -48(%rbp)
	jne	.LBB1_39
# BB#10:                                # %if.then.16
	movl	-44(%rbp), %edi
	leaq	-328(%rbp), %rsi
	callq	gimp_image_get_colormap
	movq	%rax, %rdi
	callq	g_free
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_60
.LBB1_60:                               # %if.then.16
	movl	-372(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_61
.LBB1_61:                               # %if.then.16
	movl	-372(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	je	.LBB1_27
	jmp	.LBB1_28
.LBB1_11:                               # %sw.bb
	leaq	-320(%rbp), %rsi
	movl	-44(%rbp), %edi
	callq	remap_dialog
	cmpl	$0, %eax
	jne	.LBB1_13
# BB#12:                                # %if.then.19
	movl	$4, -48(%rbp)
.LBB1_13:                               # %if.end.20
	jmp	.LBB1_28
.LBB1_14:                               # %sw.bb.21
	cmpl	$5, -12(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.24
	movl	$1, -48(%rbp)
.LBB1_16:                               # %if.end.25
	cmpl	$3, -48(%rbp)
	jne	.LBB1_26
# BB#17:                                # %if.then.28
	movl	-328(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	128(%rcx), %eax
	je	.LBB1_19
# BB#18:                                # %if.then.34
	movl	$1, -48(%rbp)
.LBB1_19:                               # %if.end.35
	cmpl	$3, -48(%rbp)
	jne	.LBB1_25
# BB#20:                                # %if.then.38
	movl	$0, -324(%rbp)
.LBB1_21:                               # %for.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movl	-324(%rbp), %eax
	cmpl	-328(%rbp), %eax
	jge	.LBB1_24
# BB#22:                                # %for.body.42
                                        #   in Loop: Header=BB1_21 Depth=1
	movslq	-324(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	168(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-324(%rbp), %rax
	movb	%dl, -320(%rbp,%rax)
# BB#23:                                # %for.inc.49
                                        #   in Loop: Header=BB1_21 Depth=1
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB1_21
.LBB1_24:                               # %for.end.51
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.52
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.53
	jmp	.LBB1_28
.LBB1_27:                               # %sw.bb.54
	movabsq	$.L.str.15, %rdi
	leaq	-320(%rbp), %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB1_28:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_38
# BB#29:                                # %if.then.59
	leaq	-320(%rbp), %rdx
	movl	-44(%rbp), %edi
	movl	-328(%rbp), %esi
	callq	remap
	cmpl	$0, %eax
	jne	.LBB1_31
# BB#30:                                # %if.then.63
	movl	$0, -48(%rbp)
.LBB1_31:                               # %if.end.64
	cmpl	$3, -48(%rbp)
	jne	.LBB1_37
# BB#32:                                # %if.then.67
	cmpl	$0, -52(%rbp)
	jne	.LBB1_34
# BB#33:                                # %if.then.70
	movabsq	$.L.str.15, %rdi
	movl	$256, %edx              # imm = 0x100
	leaq	-320(%rbp), %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB1_34:                               # %if.end.73
	cmpl	$1, -52(%rbp)
	je	.LBB1_36
# BB#35:                                # %if.then.76
	callq	gimp_displays_flush
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB1_36:                               # %if.end.78
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.79
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.80
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.81
	jmp	.LBB1_59
.LBB1_40:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.25, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_57
# BB#41:                                # %if.then.85
	movl	-44(%rbp), %edi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	je	.LBB1_43
# BB#42:                                # %if.then.89
	movl	$0, -48(%rbp)
.LBB1_43:                               # %if.end.90
	cmpl	$3, -48(%rbp)
	jne	.LBB1_56
# BB#44:                                # %if.then.93
	cmpl	$1, -52(%rbp)
	jne	.LBB1_54
# BB#45:                                # %land.lhs.true
	cmpl	$5, -12(%rbp)
	jne	.LBB1_54
# BB#46:                                # %if.then.98
	leaq	-336(%rbp), %rsi
	movq	-24(%rbp), %rax
	movb	128(%rax), %cl
	movb	%cl, -329(%rbp)
	movq	-24(%rbp), %rax
	movb	168(%rax), %cl
	movb	%cl, -330(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, %rdi
	callq	g_free
	movzbl	-329(%rbp), %edx
	cmpl	-336(%rbp), %edx
	jge	.LBB1_48
# BB#47:                                # %lor.lhs.false
	movzbl	-330(%rbp), %eax
	cmpl	-336(%rbp), %eax
	jl	.LBB1_49
.LBB1_48:                               # %if.then.112
	movl	$1, -48(%rbp)
.LBB1_49:                               # %if.end.113
	cmpl	$3, -48(%rbp)
	jne	.LBB1_53
# BB#50:                                # %if.then.116
	leaq	-320(%rbp), %rdx
	movzbl	-329(%rbp), %eax
	movl	%eax, %ecx
	movb	-320(%rbp,%rcx), %sil
	movb	%sil, -337(%rbp)
	movzbl	-330(%rbp), %eax
	movl	%eax, %ecx
	movb	-320(%rbp,%rcx), %sil
	movzbl	-329(%rbp), %eax
	movl	%eax, %ecx
	movb	%sil, -320(%rbp,%rcx)
	movb	-337(%rbp), %sil
	movzbl	-330(%rbp), %eax
	movl	%eax, %ecx
	movb	%sil, -320(%rbp,%rcx)
	movl	-44(%rbp), %edi
	movl	-336(%rbp), %esi
	callq	remap
	cmpl	$0, %eax
	jne	.LBB1_52
# BB#51:                                # %if.then.128
	movl	$0, -48(%rbp)
.LBB1_52:                               # %if.end.129
	jmp	.LBB1_53
.LBB1_53:                               # %if.end.130
	jmp	.LBB1_55
.LBB1_54:                               # %if.else.131
	movl	$1, -48(%rbp)
.LBB1_55:                               # %if.end.132
	jmp	.LBB1_56
.LBB1_56:                               # %if.end.133
	jmp	.LBB1_58
.LBB1_57:                               # %if.else.134
	movl	$1, -48(%rbp)
.LBB1_58:                               # %if.end.135
	jmp	.LBB1_59
.LBB1_59:                               # %if.end.136
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4618441417868443648     # double 6
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	remap_dialog,@function
remap_dialog:                           # @remap_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.31, %rax
	xorl	%ecx, %ecx
	movl	%edi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movabsq	$.L.str.33, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.34, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.35, %r11
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.36, %r14
	movl	$4294967291, %r15d      # imm = 0xFFFFFFFB
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -244(%rbp)       # 4-byte Spill
	movl	%ebx, -248(%rbp)        # 4-byte Spill
	movl	%r10d, -252(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	leaq	-132(%rbp), %rsi
	movl	-32(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -128(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -132(%rbp)
	jle	.LBB3_4
# BB#2:                                 # %land.lhs.true
	cmpl	$256, -132(%rbp)        # imm = 0x100
	jg	.LBB3_4
# BB#3:                                 # %if.then
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.remap_dialog, %rsi
	movabsq	$.L.str.37, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -28(%rbp)
	jmp	.LBB3_15
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	callq	gimp_rgb_get_type
	movl	$6, %edi
	movl	$24, %ecx
	movl	%ecx, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	movl	$60, %ecx
	movl	%ecx, %r8d
	movq	%rax, %rcx
	movq	%r8, -304(%rbp)         # 8-byte Spill
	movq	-304(%rbp), %r9         # 8-byte Reload
	movq	$60, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -80(%rbp)
	movl	$0, -136(%rbp)
.LBB3_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-136(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB3_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.38, %rdi
	movslq	-136(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -212(%rbp)
	movl	-212(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	leaq	-176(%rbp), %rdi
	movq	%rax, -224(%rbp)
	imull	$3, -212(%rbp), %edx
	movslq	%edx, %rax
	movq	-128(%rbp), %rcx
	movb	(%rcx,%rax), %r8b
	imull	$3, -212(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-128(%rbp), %rcx
	movb	(%rcx,%rax), %r9b
	imull	$3, -212(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-128(%rbp), %rcx
	movzbl	%r8b, %esi
	movzbl	%r9b, %edx
	movzbl	(%rcx,%rax), %ecx
	callq	gimp_rgb_set_uchar
	leaq	-176(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	leaq	-120(%rbp), %rsi
	movl	-132(%rbp), %ecx
	subl	-136(%rbp), %ecx
	subl	$1, %ecx
	movslq	-136(%rbp), %rax
	movl	%ecx, reverse_order(,%rax,4)
	movq	-80(%rbp), %rdi
	callq	gtk_list_store_append
	leaq	-120(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %ecx
	leaq	-176(%rbp), %rax
	movl	$3, %r10d
	movl	$4, %r11d
	movl	$5, %ebx
	movl	$4294967295, %r14d      # imm = 0xFFFFFFFF
	movq	-80(%rbp), %rdi
	movl	-212(%rbp), %r15d
	movq	-224(%rbp), %r9
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-192(%rbp), %xmm2       # xmm2 = mem[0],zero
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	%r15d, %ecx
	movl	$2, (%rsp)
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$5, 32(%rsp)
	movl	$-1, 40(%rsp)
	movb	$3, %al
	movl	%r10d, -312(%rbp)       # 4-byte Spill
	movl	%r11d, -316(%rbp)       # 4-byte Spill
	movl	%ebx, -320(%rbp)        # 4-byte Spill
	movl	%r14d, -324(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set
	movq	-224(%rbp), %rdi
	callq	g_free
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB3_7
.LBB3_10:                               # %for.end
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	remap_ui_manager_new
	movq	%rax, remap_ui
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_icon_view_new_with_model
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_selection_mode
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_orientation
	movq	-72(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$16, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_columns
	movq	-72(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_row_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_column_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_reorderable
	callq	gimp_cell_renderer_color_new
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdx
	movl	$2, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes
	movabsq	$.L.str.40, %rsi
	movl	$24, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-88(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	callq	gtk_cell_renderer_text_new
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes
	movabsq	$.L.str.42, %rsi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str.43, %rdx
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movabsq	$.L.str.44, %rcx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-88(%rbp), %rdi
	movb	$2, %al
	callq	g_object_set
	movabsq	$.L.str.45, %rsi
	movabsq	$remap_popup_menu, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	movq	-432(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rsi
	movabsq	$remap_button_press, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	-440(%rbp), %r8         # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.47, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_hint_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.48, %rsi
	movabsq	$remap_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_widget_show_all
	callq	gtk_main
	movl	$0, -136(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -140(%rbp)
.LBB3_11:                               # %for.cond.70
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -140(%rbp)
	je	.LBB3_14
# BB#12:                                # %for.body.71
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-228(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movl	-228(%rbp), %edx
	movb	%dl, %al
	movl	-136(%rbp), %edx
	movl	%edx, %r8d
	addl	$1, %r8d
	movl	%r8d, -136(%rbp)
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movb	%al, (%rsi,%rcx)
# BB#13:                                # %for.inc.79
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -140(%rbp)
	jmp	.LBB3_11
.LBB3_14:                               # %for.end.83
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	remap_run, %eax
	movl	%eax, -28(%rbp)
.LBB3_15:                               # %return
	movl	-28(%rbp), %eax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	remap_dialog, .Lfunc_end3-remap_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	remap,@function
remap:                                  # @remap
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
	subq	$1616, %rsp             # imm = 0x650
	leaq	-52(%rbp), %rax
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	-8(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_get_colormap
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.remap, %rsi
	movabsq	$.L.str.68, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_62
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpl	$0, -52(%rbp)
	jle	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.remap, %rsi
	movabsq	$.L.str.69, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_62
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	je	.LBB4_12
# BB#11:                                # %if.then.8
	movabsq	$.L.str.70, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_62
.LBB4_12:                               # %if.end.10
	movl	$0, -68(%rbp)
.LBB4_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB4_13 Depth=1
	movslq	-68(%rbp), %rax
	movl	$0, -1376(%rbp,%rax,4)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_13
.LBB4_16:                               # %for.end
	movl	$0, -68(%rbp)
.LBB4_17:                               # %for.cond.12
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_22
# BB#18:                                # %for.body.14
                                        #   in Loop: Header=BB4_17 Depth=1
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	-52(%rbp), %edx
	jl	.LBB4_20
# BB#19:                                # %if.then.19
	movabsq	$.L.str.70, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_62
.LBB4_20:                               # %if.end.21
                                        #   in Loop: Header=BB4_17 Depth=1
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movl	$1, -1376(%rbp,%rax,4)
	movl	-68(%rbp), %edx
	movb	%dl, %sil
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movb	%sil, -352(%rbp,%rax)
# BB#21:                                # %for.inc.31
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_17
.LBB4_22:                               # %for.end.33
	movl	$0, -68(%rbp)
.LBB4_23:                               # %for.cond.34
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_28
# BB#24:                                # %for.body.37
                                        #   in Loop: Header=BB4_23 Depth=1
	movslq	-68(%rbp), %rax
	cmpl	$0, -1376(%rbp,%rax,4)
	jne	.LBB4_26
# BB#25:                                # %if.then.42
	movabsq	$.L.str.70, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_62
.LBB4_26:                               # %if.end.44
                                        #   in Loop: Header=BB4_23 Depth=1
	jmp	.LBB4_27
.LBB4_27:                               # %for.inc.45
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_23
.LBB4_28:                               # %for.end.47
	movl	$1, %eax
	movl	%eax, %esi
	imull	$3, -52(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -68(%rbp)
.LBB4_29:                               # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB4_32
# BB#30:                                # %for.body.53
                                        #   in Loop: Header=BB4_29 Depth=1
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	imull	$3, %edx, %edx
	movl	%edx, -72(%rbp)
	movslq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	(%rcx,%rax), %sil
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%sil, (%rax)
	movl	-72(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rcx
	movb	(%rcx,%rax), %sil
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%sil, (%rax)
	movl	-72(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movq	-32(%rbp), %rcx
	movb	(%rcx,%rax), %sil
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%sil, (%rax)
# BB#31:                                # %for.inc.67
                                        #   in Loop: Header=BB4_29 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_29
.LBB4_32:                               # %for.end.69
	movl	-8(%rbp), %edi
	callq	gimp_image_undo_group_start
	movl	-8(%rbp), %edi
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	%eax, -1540(%rbp)       # 4-byte Spill
	callq	gimp_image_set_colormap
	movq	-32(%rbp), %rdi
	movl	%eax, -1544(%rbp)       # 4-byte Spill
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.71, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-56(%rbp), %rsi
	movl	-8(%rbp), %edi
	movl	%eax, -1548(%rbp)       # 4-byte Spill
	callq	gimp_image_get_layers
	movq	%rax, -64(%rbp)
	movl	$0, -76(%rbp)
.LBB4_33:                               # %for.cond.75
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB4_36
# BB#34:                                # %for.body.78
                                        #   in Loop: Header=BB4_33 Depth=1
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_width
	movslq	-76(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movl	%eax, -1552(%rbp)       # 4-byte Spill
	callq	gimp_drawable_height
	movl	-1552(%rbp), %edi       # 4-byte Reload
	imull	%eax, %edi
	movslq	%edi, %rcx
	addq	-88(%rbp), %rcx
	movq	%rcx, -88(%rbp)
# BB#35:                                # %for.inc.88
                                        #   in Loop: Header=BB4_33 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_33
.LBB4_36:                               # %for.end.90
	movl	$0, -76(%rbp)
.LBB4_37:                               # %for.cond.91
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_39 Depth 2
                                        #       Child Loop BB4_41 Depth 3
                                        #         Child Loop BB4_44 Depth 4
                                        #         Child Loop BB4_49 Depth 4
	movl	-76(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB4_61
# BB#38:                                # %for.body.94
                                        #   in Loop: Header=BB4_37 Depth=1
	movslq	-76(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_get
	leaq	-1432(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movl	4(%rax), %esi
	movl	%esi, -1484(%rbp)
	movq	-1384(%rbp), %rax
	movl	8(%rax), %esi
	movl	%esi, -1488(%rbp)
	movq	-1384(%rbp), %rax
	movl	12(%rax), %esi
	movl	%esi, -1492(%rbp)
	movq	-1384(%rbp), %rsi
	movl	-1484(%rbp), %r8d
	movl	-1488(%rbp), %r9d
	movl	%edx, -1556(%rbp)       # 4-byte Spill
	movl	-1556(%rbp), %ecx       # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-1480(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-1384(%rbp), %rsi
	movl	-1484(%rbp), %r8d
	movl	-1488(%rbp), %r9d
	movl	%edx, -1560(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-1432(%rbp), %rsi
	leaq	-1480(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -1504(%rbp)
	movl	$0, -1496(%rbp)
.LBB4_39:                               # %for.cond.101
                                        #   Parent Loop BB4_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_41 Depth 3
                                        #         Child Loop BB4_44 Depth 4
                                        #         Child Loop BB4_49 Depth 4
	cmpq	$0, -1504(%rbp)
	je	.LBB4_59
# BB#40:                                # %for.body.104
                                        #   in Loop: Header=BB4_39 Depth=2
	movq	-1432(%rbp), %rax
	movq	%rax, -1512(%rbp)
	movq	-1480(%rbp), %rax
	movq	%rax, -1520(%rbp)
	movl	$0, -68(%rbp)
.LBB4_41:                               # %for.cond.106
                                        #   Parent Loop BB4_37 Depth=1
                                        #     Parent Loop BB4_39 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_44 Depth 4
                                        #         Child Loop BB4_49 Depth 4
	movl	-68(%rbp), %eax
	cmpl	-1396(%rbp), %eax
	jge	.LBB4_55
# BB#42:                                # %for.body.109
                                        #   in Loop: Header=BB4_41 Depth=3
	movq	-1512(%rbp), %rax
	movq	%rax, -1528(%rbp)
	movq	-1520(%rbp), %rax
	movq	%rax, -1536(%rbp)
	cmpl	$1, -1492(%rbp)
	jne	.LBB4_48
# BB#43:                                # %if.then.112
                                        #   in Loop: Header=BB4_41 Depth=3
	movl	$0, -72(%rbp)
.LBB4_44:                               # %for.cond.113
                                        #   Parent Loop BB4_37 Depth=1
                                        #     Parent Loop BB4_39 Depth=2
                                        #       Parent Loop BB4_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-72(%rbp), %eax
	cmpl	-1400(%rbp), %eax
	jge	.LBB4_47
# BB#45:                                # %for.body.116
                                        #   in Loop: Header=BB4_44 Depth=4
	movq	-1528(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1528(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movb	-352(%rbp,%rax), %sil
	movq	-1536(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1536(%rbp)
	movb	%sil, (%rax)
# BB#46:                                # %for.inc.121
                                        #   in Loop: Header=BB4_44 Depth=4
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB4_44
.LBB4_47:                               # %for.end.123
                                        #   in Loop: Header=BB4_41 Depth=3
	jmp	.LBB4_53
.LBB4_48:                               # %if.else.124
                                        #   in Loop: Header=BB4_41 Depth=3
	movl	$0, -72(%rbp)
.LBB4_49:                               # %for.cond.125
                                        #   Parent Loop BB4_37 Depth=1
                                        #     Parent Loop BB4_39 Depth=2
                                        #       Parent Loop BB4_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-72(%rbp), %eax
	cmpl	-1400(%rbp), %eax
	jge	.LBB4_52
# BB#50:                                # %for.body.129
                                        #   in Loop: Header=BB4_49 Depth=4
	movq	-1528(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1528(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movb	-352(%rbp,%rax), %sil
	movq	-1536(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1536(%rbp)
	movb	%sil, (%rax)
	movq	-1528(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1528(%rbp)
	movb	(%rax), %sil
	movq	-1536(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1536(%rbp)
	movb	%sil, (%rax)
# BB#51:                                # %for.inc.136
                                        #   in Loop: Header=BB4_49 Depth=4
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB4_49
.LBB4_52:                               # %for.end.138
                                        #   in Loop: Header=BB4_41 Depth=3
	jmp	.LBB4_53
.LBB4_53:                               # %if.end.139
                                        #   in Loop: Header=BB4_41 Depth=3
	movl	-1412(%rbp), %eax
	movq	-1512(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1512(%rbp)
	movl	-1460(%rbp), %eax
	movq	-1520(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1520(%rbp)
# BB#54:                                # %for.inc.143
                                        #   in Loop: Header=BB4_41 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB4_41
.LBB4_55:                               # %for.end.145
                                        #   in Loop: Header=BB4_39 Depth=2
	movl	$16, %eax
	movl	-1400(%rbp), %ecx
	imull	-1396(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	-96(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	movl	-1496(%rbp), %ecx
	movl	%eax, -1564(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1564(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%edx, -1496(%rbp)
	cmpl	$0, -1496(%rbp)
	jne	.LBB4_57
# BB#56:                                # %if.then.153
                                        #   in Loop: Header=BB4_39 Depth=2
	cvtsi2sdq	-96(%rbp), %xmm0
	cvtsi2sdq	-88(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1568(%rbp)       # 4-byte Spill
.LBB4_57:                               # %if.end.157
                                        #   in Loop: Header=BB4_39 Depth=2
	jmp	.LBB4_58
.LBB4_58:                               # %for.inc.158
                                        #   in Loop: Header=BB4_39 Depth=2
	movq	-1504(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -1504(%rbp)
	movl	-1496(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1496(%rbp)
	jmp	.LBB4_39
.LBB4_59:                               # %for.end.161
                                        #   in Loop: Header=BB4_37 Depth=1
	movq	-1384(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-1384(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%esi, %esi
	movq	-1384(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-1484(%rbp), %ecx
	movl	-1488(%rbp), %r8d
	movl	%esi, -1572(%rbp)       # 4-byte Spill
	movl	-1572(%rbp), %edx       # 4-byte Reload
	movl	%eax, -1576(%rbp)       # 4-byte Spill
	callq	gimp_drawable_update
	movq	-1384(%rbp), %rdi
	movl	%eax, -1580(%rbp)       # 4-byte Spill
	callq	gimp_drawable_detach
# BB#60:                                # %for.inc.165
                                        #   in Loop: Header=BB4_37 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB4_37
.LBB4_61:                               # %for.end.167
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	-8(%rbp), %edi
	movl	%eax, -1584(%rbp)       # 4-byte Spill
	callq	gimp_image_undo_group_end
	movl	$1, -4(%rbp)
	movl	%eax, -1588(%rbp)       # 4-byte Spill
.LBB4_62:                               # %return
	movl	-4(%rbp), %eax
	addq	$1616, %rsp             # imm = 0x650
	popq	%rbp
	retq
.Lfunc_end4:
	.size	remap, .Lfunc_end4-remap
	.cfi_endproc

	.align	16, 0x90
	.type	remap_ui_manager_new,@function
remap_ui_manager_new:                   # @remap_ui_manager_new
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gtk_ui_manager_new
	movabsq	$.L.str.59, %rdi
	movq	%rax, -24(%rbp)
	callq	gtk_action_group_new
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_action_group_set_translation_domain
	movabsq	$remap_ui_manager_new.actions, %rsi
	movl	$5, %edx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_action_group_add_actions
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_ui_manager_insert_action_group
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.60, %rsi
	movq	$-1, %rdx
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdi
	callq	gtk_ui_manager_add_ui_from_string
	cmpq	$0, -40(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.61, %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	remap_ui_manager_new, .Lfunc_end5-remap_ui_manager_new
	.cfi_endproc

	.align	16, 0x90
	.type	remap_popup_menu,@function
remap_popup_menu:                       # @remap_popup_menu
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
	subq	$96, %rsp
	movabsq	$.L.str.67, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	remap_ui, %rdi
	movq	%rax, %rsi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_menu_set_screen
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, -16(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB6_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpq	$0, -16(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB6_5
# BB#4:                                 # %cond.true.7
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false.8
	callq	gtk_get_current_event_time
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB6_6:                                # %cond.end.10
	movl	-68(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gtk_menu_popup
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	remap_popup_menu, .Lfunc_end6-remap_popup_menu
	.cfi_endproc

	.align	16, 0x90
	.type	remap_button_press,@function
remap_button_press:                     # @remap_button_press
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	remap_popup_menu
	movl	%eax, -4(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB7_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	remap_button_press, .Lfunc_end7-remap_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	remap_response,@function
remap_response:                         # @remap_response
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_5
.LBB8_5:                                # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB8_3
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	callq	remap_reset_callback
	jmp	.LBB8_4
.LBB8_2:                                # %sw.bb.1
	movl	$1, remap_run
.LBB8_3:                                # %sw.default
	callq	gtk_main_quit
.LBB8_4:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	remap_response, .Lfunc_end8-remap_response
	.cfi_endproc

	.align	16, 0x90
	.type	remap_sort_callback,@function
remap_sort_callback:                    # @remap_sort_callback
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
	movq	-8(%rbp), %rdi
	callq	gtk_action_get_name
	movq	%rax, -24(%rbp)
	movl	$-2, -28(%rbp)
# BB#1:                                 # %do.body
	movabsq	$.L.str.62, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.remap_sort_callback, %rsi
	movabsq	$.L.str.63, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_14
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movabsq	$.L.str.64, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	addq	$5, %rcx
	movq	%rcx, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_7
# BB#6:                                 # %if.then.3
	movl	$3, -28(%rbp)
	jmp	.LBB9_13
.LBB9_7:                                # %if.else.4
	movabsq	$.L.str.65, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	addq	$5, %rcx
	movq	%rcx, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_9
# BB#8:                                 # %if.then.8
	movl	$4, -28(%rbp)
	jmp	.LBB9_12
.LBB9_9:                                # %if.else.9
	movabsq	$.L.str.66, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	addq	$5, %rcx
	movq	%rcx, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_11
# BB#10:                                # %if.then.13
	movl	$5, -28(%rbp)
.LBB9_11:                               # %if.end.14
	jmp	.LBB9_12
.LBB9_12:                               # %if.end.15
	jmp	.LBB9_13
.LBB9_13:                               # %if.end.16
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	remap_sort
.LBB9_14:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	remap_sort_callback, .Lfunc_end9-remap_sort_callback
	.cfi_endproc

	.align	16, 0x90
	.type	remap_reverse_callback,@function
remap_reverse_callback:                 # @remap_reverse_callback
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
	subq	$16, %rsp
	movabsq	$reverse_order, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_list_store_reorder
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	remap_reverse_callback, .Lfunc_end10-remap_reverse_callback
	.cfi_endproc

	.align	16, 0x90
	.type	remap_reset_callback,@function
remap_reset_callback:                   # @remap_reset_callback
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	remap_sort
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	remap_reset_callback, .Lfunc_end11-remap_reset_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	remap_sort,@function
remap_sort:                             # @remap_sort
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gtk_tree_sortable_set_sort_column_id
	movl	$4294967294, %esi       # imm = 0xFFFFFFFE
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gtk_tree_sortable_set_sort_column_id
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	remap_sort, .Lfunc_end13-remap_sort
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end14:
	.size	g_message, .Lfunc_end14-g_message
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.remap_args,@object # @query.remap_args
	.align	16
query.remap_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.remap_args, 120

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"num-colors"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Length of 'map' argument (should be equal to colormap size)"
	.size	.L.str.7, 60

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"map"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Remap array for the colormap"
	.size	.L.str.9, 29

	.type	query.swap_args,@object # @query.swap_args
	.section	.rodata,"a",@progbits
	.align	16
query.swap_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.10
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.size	query.swap_args, 120

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"The run mode { RUN-NONINTERACTIVE (1) }"
	.size	.L.str.10, 40

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"index1"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"First index in the colormap"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"index2"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Second (other) index in the colormap"
	.size	.L.str.14, 37

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"plug-in-colormap-remap"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Rearrange the colormap"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"This procedure takes an indexed image and lets you alter the positions of colors in the colormap without visually changing the image."
	.size	.L.str.17, 134

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Mukund Sivaraman <muks@mukund.org>"
	.size	.L.str.18, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"June 2006"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"R_earrange Colormap..."
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"INDEXED*"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"<Image>/Colors/Map/Colormap"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<Colormap>"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-colormap"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"plug-in-colormap-swap"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Swap two colors in the colormap"
	.size	.L.str.26, 32

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"This procedure takes an indexed image and lets you swap the positions of two colors in the colormap without visually changing the image."
	.size	.L.str.27, 137

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Swap Colors"
	.size	.L.str.28, 13

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"UTF-8"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"colormap-remap"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Rearrange Colormap"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-colormap-remap"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-reset"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gtk-cancel"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gtk-ok"
	.size	.L.str.36, 7

	.type	.L__func__.remap_dialog,@object # @__func__.remap_dialog
.L__func__.remap_dialog:
	.asciz	"remap_dialog"
	.size	.L__func__.remap_dialog, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"(ncols > 0) && (ncols <= 256)"
	.size	.L.str.37, 30

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%d"
	.size	.L.str.38, 3

	.type	reverse_order,@object   # @reverse_order
	.local	reverse_order
	.comm	reverse_order,1024,16
	.type	remap_ui,@object        # @remap_ui
	.local	remap_ui
	.comm	remap_ui,8,8
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"color"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"width"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"text"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"size-points"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"xalign"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"ypad"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"popup-menu"
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"button-press-event"
	.size	.L.str.46, 19

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Drag and drop colors to rearrange the colormap.  The numbers shown are the original indices.  Right-click for a menu with sort options."
	.size	.L.str.47, 136

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"response"
	.size	.L.str.48, 9

	.type	remap_run,@object       # @remap_run
	.local	remap_run
	.comm	remap_run,4,4
	.type	remap_ui_manager_new.actions,@object # @remap_ui_manager_new.actions
	.section	.rodata,"a",@progbits
	.align	16
remap_ui_manager_new.actions:
	.quad	.L.str.49
	.quad	0
	.quad	.L.str.50
	.quad	0
	.quad	0
	.quad	remap_sort_callback
	.quad	.L.str.51
	.quad	0
	.quad	.L.str.52
	.quad	0
	.quad	0
	.quad	remap_sort_callback
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.54
	.quad	0
	.quad	0
	.quad	remap_sort_callback
	.quad	.L.str.55
	.quad	0
	.quad	.L.str.56
	.quad	0
	.quad	0
	.quad	remap_reverse_callback
	.quad	.L.str.57
	.quad	.L.str.34
	.quad	.L.str.58
	.quad	0
	.quad	0
	.quad	remap_reset_callback
	.size	remap_ui_manager_new.actions, 240

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"sort-hue"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Sort on Hue"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"sort-sat"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Sort on Saturation"
	.size	.L.str.52, 19

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"sort-val"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Sort on Value"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"reverse"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Reverse Order"
	.size	.L.str.56, 14

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"reset"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Reset Order"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Actions"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"<ui>  <popup name=\"remap-popup\">    <menuitem action=\"sort-hue\" />    <menuitem action=\"sort-sat\" />    <menuitem action=\"sort-val\" />    <separator />    <menuitem action=\"reverse\" />    <menuitem action=\"reset\" />  </popup></ui>"
	.size	.L.str.60, 231

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"error parsing ui: %s"
	.size	.L.str.61, 21

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"sort-"
	.size	.L.str.62, 6

	.type	.L__func__.remap_sort_callback,@object # @__func__.remap_sort_callback
.L__func__.remap_sort_callback:
	.asciz	"remap_sort_callback"
	.size	.L__func__.remap_sort_callback, 20

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"g_str_has_prefix (name, \"sort-\")"
	.size	.L.str.63, 33

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"hue"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"sat"
	.size	.L.str.65, 4

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"val"
	.size	.L.str.66, 4

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"/remap-popup"
	.size	.L.str.67, 13

	.type	.L__func__.remap,@object # @__func__.remap
.L__func__.remap:
	.asciz	"remap"
	.size	.L__func__.remap, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"cmap != NULL"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"ncols > 0"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Invalid remap array was passed to remap function"
	.size	.L.str.70, 49

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Rearranging the colormap"
	.size	.L.str.71, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
