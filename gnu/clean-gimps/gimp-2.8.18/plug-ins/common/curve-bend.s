	.text
	.file	"curve-bend.bc"
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
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$.L.str.44, %rdx
	movabsq	$.L.str.45, %rcx
	movabsq	$.L.str.46, %r8
	movabsq	$.L.str.47, %r9
	movabsq	$.L.str.48, %rax
	movabsq	$.L.str.49, %r10
	movl	$1, %r11d
	movl	$20, %ebx
	movabsq	$query.args, %r14
	movabsq	$query.return_vals, %r15
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$20, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%ebx, -36(%rbp)         # 4-byte Spill
	movl	%r11d, -40(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.50, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.51, %rdi
	movabsq	$.L.str.52, %rsi
	movabsq	$.L.str.53, %rdx
	movabsq	$.L.str.45, %rcx
	movabsq	$.L.str.46, %r8
	movabsq	$.L.str.47, %r9
	xorl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	$1, %r11d
	movl	$4, %ebx
	xorl	%r12d, %r12d
	movabsq	$query.args_iter, %r14
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%r10, -56(%rbp)         # 8-byte Spill
	movl	%r12d, -60(%rbp)        # 4-byte Spill
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
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
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$3520, %rsp             # imm = 0xDC0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	$-1, -68(%rbp)
	movl	$-1, -72(%rbp)
	movl	$-1, -76(%rbp)
	movl	$-1, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -92(%rbp)
	movl	$3, -96(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.54, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.54, %rdi
	movabsq	$.L.str.55, %rsi
	movq	%rax, -3416(%rbp)       # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.54, %rdi
	movq	%rax, -3424(%rbp)       # 8-byte Spill
	callq	textdomain
	movq	%rax, -3432(%rbp)       # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$.L.str.56, %rdi
	movq	$0, -56(%rbp)
	callq	g_getenv
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_7
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$110, %ecx
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$78, %ecx
	je	.LBB1_6
# BB#5:                                 # %if.then.10
	movl	$1, gb_debug
.LBB1_6:                                # %if.end
	jmp	.LBB1_7
.LBB1_7:                                # %if.end.11
	cmpl	$0, gb_debug
	je	.LBB1_9
# BB#8:                                 # %if.then.12
	movabsq	$.L.str.57, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB1_9:                                # %if.end.13
	movabsq	$run.values, %rax
	movl	$21, run.values
	movl	-96(%rbp), %ecx
	movl	%ecx, run.values+8
	movl	$14, run.values+40
	movl	$-1, run.values+48
	movq	-32(%rbp), %rdx
	movl	$2, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rdi
	movl	$.L.str.51, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#10:                                # %if.then.17
	cmpl	$1, -92(%rbp)
	jne	.LBB1_16
# BB#11:                                # %land.lhs.true.20
	cmpl	$4, -12(%rbp)
	jne	.LBB1_16
# BB#12:                                # %if.then.23
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movq	-24(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movslq	-100(%rbp), %rax
	cmpq	$1096, %rax             # imm = 0x448
	jne	.LBB1_14
# BB#13:                                # %if.then.35
	movabsq	$.L.str.58, %rdi
	leaq	-2304(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$.L.str.59, %rdi
	leaq	-3400(%rbp), %rsi
	movl	%eax, -3436(%rbp)       # 4-byte Spill
	callq	gimp_procedural_db_get_data
	leaq	-1208(%rbp), %rsi
	movl	$1096, %ecx             # imm = 0x448
	movl	%ecx, %edx
	leaq	-2304(%rbp), %rdi
	movq	%rsi, %r8
	movq	%rdi, -3448(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	-3448(%rbp), %r8        # 8-byte Reload
	movq	%rsi, -3456(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movl	%eax, -3460(%rbp)       # 4-byte Spill
	callq	memcpy
	movq	-3456(%rbp), %rdx       # 8-byte Reload
	addq	$1072, %rdx             # imm = 0x430
	movsd	-1232(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-2328(%rbp), %xmm1      # xmm1 = mem[0],zero
	movl	-104(%rbp), %esi
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	%rdx, %rdi
	callq	p_delta_gdouble
	movabsq	$.L.str.42, %rdi
	movl	$1096, %edx             # imm = 0x448
	leaq	-1208(%rbp), %r8
	movl	-104(%rbp), %eax
	movl	%eax, -128(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	%r8, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -3464(%rbp)       # 4-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %if.else
	movl	$1, -96(%rbp)
.LBB1_15:                               # %if.end.43
	jmp	.LBB1_17
.LBB1_16:                               # %if.else.44
	movl	$1, -96(%rbp)
.LBB1_17:                               # %if.end.45
	movl	-96(%rbp), %eax
	movl	%eax, run.values+8
	jmp	.LBB1_50
.LBB1_18:                               # %if.end.46
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %edi
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	jne	.LBB1_20
# BB#19:                                # %if.then.54
	movabsq	$.L.str.61, %rdi
	callq	gettext
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movabsq	$.L.str.60, %rdx
	movl	%ecx, %esi
	movq	%rdx, -3472(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-3472(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -96(%rbp)
.LBB1_20:                               # %if.end.56
	movl	-76(%rbp), %edi
	callq	gimp_layer_get_mask
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	jl	.LBB1_22
# BB#21:                                # %if.then.60
	movabsq	$.L.str.62, %rdi
	callq	gettext
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movabsq	$.L.str.60, %rdx
	movl	%ecx, %esi
	movq	%rdx, -3480(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-3480(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -96(%rbp)
.LBB1_22:                               # %if.end.62
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %esi
	callq	p_if_selection_float_it
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB1_24
# BB#23:                                # %if.then.66
	movabsq	$.L.str.63, %rdi
	callq	gettext
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movabsq	$.L.str.60, %rdx
	movl	%ecx, %esi
	movq	%rdx, -3488(%rbp)       # 8-byte Spill
	movl	%ecx, %edx
	movq	-3488(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -96(%rbp)
	jmp	.LBB1_25
.LBB1_24:                               # %if.else.68
	movl	-68(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -64(%rbp)
.LBB1_25:                               # %if.end.70
	cmpl	$3, -96(%rbp)
	jne	.LBB1_35
# BB#26:                                # %if.then.73
	movl	-92(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -3492(%rbp)       # 4-byte Spill
	je	.LBB1_27
	jmp	.LBB1_51
.LBB1_51:                               # %if.then.73
	movl	-3492(%rbp), %eax       # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -3496(%rbp)       # 4-byte Spill
	je	.LBB1_28
	jmp	.LBB1_52
.LBB1_52:                               # %if.then.73
	movl	-3492(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -3500(%rbp)       # 4-byte Spill
	je	.LBB1_32
	jmp	.LBB1_33
.LBB1_27:                               # %sw.bb
	movq	-64(%rbp), %rdi
	callq	do_dialog
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, 1200(%rax)
	jmp	.LBB1_34
.LBB1_28:                               # %sw.bb.75
	cmpl	$20, -12(%rbp)
	jl	.LBB1_30
# BB#29:                                # %if.then.78
	movl	$1, %eax
	movl	%eax, %edi
	movl	$1272, %eax             # imm = 0x4F8
	movl	%eax, %esi
	callq	g_malloc_n
	xorl	%ecx, %ecx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, 1264(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 1200(%rax)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rax
	movsd	%xmm0, 1216(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 168(%rax)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 1204(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 208(%rax)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 1208(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 248(%rax)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 1212(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 288(%rax)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, 100(%rax)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	328(%rax), %r8d
	movq	-24(%rbp), %rax
	movq	368(%rax), %rax
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movq	%rax, %r8
	callq	p_copy_points
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	408(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	448(%rax), %r8
	callq	p_copy_points
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	488(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	528(%rax), %r8
	callq	p_copy_points
	movl	$1, %ecx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	568(%rax), %edx
	movq	-24(%rbp), %rax
	movq	608(%rax), %r8
	movl	%ecx, %esi
	movl	%edx, -3504(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	-3504(%rbp), %ecx       # 4-byte Reload
	callq	p_copy_points
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	648(%rax), %edx
	movq	-24(%rbp), %rax
	movq	688(%rax), %rcx
	callq	p_copy_yval
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	728(%rax), %edx
	movq	-24(%rbp), %rax
	movq	768(%rax), %rcx
	callq	p_copy_yval
	jmp	.LBB1_31
.LBB1_30:                               # %if.else.139
	movl	$1, -96(%rbp)
.LBB1_31:                               # %if.end.140
	jmp	.LBB1_34
.LBB1_32:                               # %sw.bb.141
	movl	$1, %eax
	movl	%eax, %edi
	movl	$1272, %eax             # imm = 0x4F8
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, 1264(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 1200(%rax)
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-56(%rbp), %rdi
	callq	p_retrieve_values
	jmp	.LBB1_34
.LBB1_33:                               # %sw.default
	jmp	.LBB1_34
.LBB1_34:                               # %sw.epilog
	jmp	.LBB1_35
.LBB1_35:                               # %if.end.146
	cmpq	$0, -56(%rbp)
	jne	.LBB1_37
# BB#36:                                # %if.then.148
	movl	$0, -96(%rbp)
.LBB1_37:                               # %if.end.149
	cmpl	$3, -96(%rbp)
	jne	.LBB1_46
# BB#38:                                # %if.then.152
	movq	-56(%rbp), %rax
	cmpl	$0, 1264(%rax)
	je	.LBB1_42
# BB#39:                                # %if.then.155
	movl	-72(%rbp), %edi
	callq	gimp_image_undo_group_start
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	-56(%rbp), %rcx
	movl	1212(%rcx), %edx
	movl	%eax, -3508(%rbp)       # 4-byte Spill
	callq	p_main_bend
	movl	%eax, -3404(%rbp)
	movl	-72(%rbp), %edi
	callq	gimp_image_undo_group_end
	cmpl	$0, -92(%rbp)
	movl	%eax, -3512(%rbp)       # 4-byte Spill
	jne	.LBB1_41
# BB#40:                                # %if.then.163
	movq	-56(%rbp), %rdi
	callq	p_store_values
.LBB1_41:                               # %if.end.164
	movl	-3404(%rbp), %eax
	movl	%eax, run.values+48
	jmp	.LBB1_43
.LBB1_42:                               # %if.else.165
	movl	$4, -96(%rbp)
.LBB1_43:                               # %if.end.166
	cmpl	$1, -92(%rbp)
	je	.LBB1_45
# BB#44:                                # %if.then.169
	callq	gimp_displays_flush
	movl	%eax, -3516(%rbp)       # 4-byte Spill
.LBB1_45:                               # %if.end.171
	jmp	.LBB1_46
.LBB1_46:                               # %if.end.172
	cmpl	$3, -96(%rbp)
	je	.LBB1_49
# BB#47:                                # %land.lhs.true.175
	cmpq	$0, -88(%rbp)
	je	.LBB1_49
# BB#48:                                # %if.then.177
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_49:                               # %if.end.178
	movl	-96(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_50:                               # %return
	addq	$3520, %rsp             # imm = 0xDC0
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
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
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

	.align	16, 0x90
	.type	p_delta_gdouble,@function
p_delta_gdouble:                        # @p_delta_gdouble
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movsd	%xmm2, -40(%rbp)
	cmpl	$1, -28(%rbp)
	jge	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-16(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	subsd	-40(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB3_3:                                # %return
	popq	%rbp
	retq
.Lfunc_end3:
	.size	p_delta_gdouble, .Lfunc_end3-p_delta_gdouble
	.cfi_endproc

	.align	16, 0x90
	.type	p_if_selection_float_it,@function
p_if_selection_float_it:                # @p_if_selection_float_it
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	jne	.LBB4_8
# BB#1:                                 # %if.then
	movl	-8(%rbp), %edi
	callq	gimp_image_get_selection
	leaq	-36(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	leaq	-24(%rbp), %r8
	leaq	-32(%rbp), %r9
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_selection_bounds
	cmpl	$0, -36(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB4_7
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -16(%rbp)
	jl	.LBB4_7
# BB#3:                                 # %if.then.4
	movl	-12(%rbp), %edi
	callq	gimp_edit_copy
	cmpl	$0, %eax
	je	.LBB4_5
# BB#4:                                 # %if.then.7
	xorl	%esi, %esi
	movl	-12(%rbp), %edi
	callq	gimp_edit_paste
	movl	%eax, -12(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movl	$-1, -4(%rbp)
	jmp	.LBB4_9
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.9
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.10
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	p_if_selection_float_it, .Lfunc_end4-p_if_selection_float_it
	.cfi_endproc

	.align	16, 0x90
	.type	do_dialog,@function
do_dialog:                              # @do_dialog
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
	subq	$32, %rsp
	movabsq	$.L.str.64, %rax
	movl	$1, %esi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movq	-8(%rbp), %rdi
	callq	bender_new_dialog
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$1228, %rax             # imm = 0x4CC
	movq	%rax, %rsi
	callq	p_create_pv_image
	movq	-16(%rbp), %rsi
	movl	%eax, 1224(%rsi)
	movq	-16(%rbp), %rsi
	movl	$-1, 1232(%rsi)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
.LBB5_2:                                # %if.end
	movl	$21, %esi
	movq	-16(%rbp), %rdi
	callq	bender_update
	callq	gtk_main
	callq	gdk_flush
	movq	-16(%rbp), %rdi
	movl	1224(%rdi), %edi
	callq	gimp_image_delete
	movq	-16(%rbp), %rcx
	movl	$-1, 1224(%rcx)
	movq	-16(%rbp), %rcx
	movl	$-1, 1228(%rcx)
	movq	-16(%rbp), %rcx
	movl	$-1, 1232(%rcx)
	movq	-16(%rbp), %rcx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	do_dialog, .Lfunc_end5-do_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	p_copy_points,@function
p_copy_points:                          # @p_copy_points
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -36(%rbp)
	jge	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$104, %rsi
	imulq	$272, %rdx, %rdx        # imm = 0x110
	addq	%rdx, %rsi
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movsd	%xmm0, (%rsi,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	movl	$0, -36(%rbp)
.LBB6_5:                                # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_8
# BB#6:                                 # %for.body.7
                                        #   in Loop: Header=BB6_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$104, %rsi
	imulq	$272, %rdx, %rdx        # imm = 0x110
	addq	%rdx, %rsi
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movsd	%xmm0, (%rsi,%rax,8)
# BB#7:                                 # %for.inc.17
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end.19
	popq	%rbp
	retq
.Lfunc_end6:
	.size	p_copy_points, .Lfunc_end6-p_copy_points
	.cfi_endproc

	.align	16, 0x90
	.type	p_copy_yval,@function
p_copy_yval:                            # @p_copy_yval
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movb	$127, -29(%rbp)
	movl	$0, -28(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB7_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-28(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rsi
	addq	$648, %rsi              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rsi
	movb	%dl, (%rsi,%rax)
	movb	%dl, -29(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movb	-29(%rbp), %al
	movslq	-28(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$648, %rsi              # imm = 0x288
	shlq	$8, %rdx
	addq	%rdx, %rsi
	movb	%al, (%rsi,%rcx)
.LBB7_5:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_6
.LBB7_6:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_1
.LBB7_7:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end7:
	.size	p_copy_yval, .Lfunc_end7-p_copy_yval
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	-4576846453185026458    # double -444.39999999999998
	.text
	.align	16, 0x90
	.type	p_retrieve_values,@function
p_retrieve_values:                      # @p_retrieve_values
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
	subq	$1136, %rsp             # imm = 0x470
	movabsq	$.L.str.42, %rax
	leaq	-1104(%rbp), %rcx
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	$0, -24(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$0, -24(%rbp)
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	jne	.LBB8_4
# BB#1:                                 # %if.then
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movq	$0, 1240(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 1248(%rax)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_2
	jp	.LBB8_2
	jmp	.LBB8_3
.LBB8_2:                                # %if.then.4
	leaq	-1104(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	p_cd_from_bval
.LBB8_3:                                # %if.end
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movl	$1, %eax
	movl	%eax, %edi
	movl	$1096, %eax             # imm = 0x448
	movl	%eax, %esi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$1096, %ecx             # imm = 0x448
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	%rax, 1240(%rdx)
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$1096, %ecx             # imm = 0x448
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	%rax, 1248(%rdx)
	callq	g_malloc_n
	movabsq	$.L.str.58, %rdi
	movl	$1096, %ecx             # imm = 0x448
	movl	%ecx, %edx
	leaq	-1104(%rbp), %rsi
	movq	-8(%rbp), %r8
	movq	%rax, 1256(%r8)
	movq	-8(%rbp), %rax
	movq	1256(%rax), %rax
	movq	%rdi, -1120(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	memcpy
	movq	-8(%rbp), %rax
	movq	1240(%rax), %rax
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$.L.str.59, %rdi
	movq	-8(%rbp), %rdx
	movq	1248(%rdx), %rdx
	movq	%rdx, %rsi
	movl	%eax, -1124(%rbp)       # 4-byte Spill
	callq	gimp_procedural_db_get_data
	movl	$1096, %ecx             # imm = 0x448
	movl	%ecx, %edx
	leaq	-1104(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	1256(%rdi), %rdi
	movl	%eax, -1128(%rbp)       # 4-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	1256(%rdx), %rsi
	callq	p_cd_from_bval
	movq	-8(%rbp), %rdx
	movl	$0, 1212(%rdx)
.LBB8_5:                                # %if.end.17
	addq	$1136, %rsp             # imm = 0x470
	popq	%rbp
	retq
.Lfunc_end8:
	.size	p_retrieve_values, .Lfunc_end8-p_retrieve_values
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	p_main_bend,@function
p_main_bend:                            # @p_main_bend
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	1204(%rsi), %edx
	movl	%edx, -152(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_item_get_image
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movl	%eax, -144(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_offsets
	movl	-156(%rbp), %edi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %r8d
	movl	%edi, -180(%rbp)        # 4-byte Spill
	movl	%r8d, %edi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gimp_drawable_width
	movl	$2, %edi
	cltd
	idivl	%edi
	movl	-180(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -164(%rbp)
	movl	-160(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	movl	$2, %edi
	cltd
	idivl	%edi
	movl	-188(%rbp), %edi        # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -168(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_layer_copy
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -148(%rbp)
	movl	-144(%rbp), %eax
	movl	-148(%rbp), %esi
	movl	%edi, -192(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_image_insert_layer
	xorl	%esi, %esi
	movl	-148(%rbp), %edi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_item_set_visible
	movabsq	$.L.str.132, %rsi
	movl	-148(%rbp), %edi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_item_set_name
	cmpl	$0, gb_debug
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.133, %rdi
	movl	-148(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB9_2:                                # %if.end
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	1216(%rax), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_3
	jp	.LBB9_3
	jmp	.LBB9_6
.LBB9_3:                                # %if.then.15
	cmpl	$0, gb_debug
	je	.LBB9_5
# BB#4:                                 # %if.then.17
	movabsq	$.L.str.134, %rdi
	movq	-8(%rbp), %rax
	cvtsd2ss	1216(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB9_5:                                # %if.end.21
	movl	-144(%rbp), %edi
	movl	-148(%rbp), %esi
	movl	-152(%rbp), %edx
	movq	-8(%rbp), %rax
	movsd	1216(%rax), %xmm0       # xmm0 = mem[0],zero
	callq	p_gimp_rotate
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB9_6:                                # %if.end.24
	movl	-148(%rbp), %edi
	callq	gimp_drawable_get
	movl	$4, %edi
	movl	%edi, %esi
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	4(%rax), %edi
	subl	$1, %edi
	movl	%edi, -176(%rbp)
	movl	%edi, -172(%rbp)
	movl	-172(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 1160(%rdi)
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	-8(%rbp), %rsi
	movq	%rax, 1168(%rsi)
	movq	-8(%rbp), %rdi
	movl	-172(%rbp), %esi
	movl	-176(%rbp), %edx
	callq	p_bender_calculate_iter_curve
	movq	-8(%rbp), %rdi
	movl	-172(%rbp), %esi
	callq	bender_init_min_max
	movq	-136(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rax
	movl	4(%rax), %esi
	movq	-136(%rbp), %rax
	movl	8(%rax), %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	callq	p_upper_curve_extend
	movl	-220(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %r8
	movl	4(%r8), %esi
	movq	-136(%rbp), %r8
	movl	8(%r8), %edx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	callq	p_lower_curve_extend
	movl	-224(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -140(%rbp)
	cmpl	$0, gb_debug
	je	.LBB9_8
# BB#7:                                 # %if.then.43
	movabsq	$.L.str.135, %rdi
	movl	-140(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB9_8:                                # %if.end.45
	cmpl	$0, -20(%rbp)
	je	.LBB9_12
# BB#9:                                 # %if.then.47
	movq	-136(%rbp), %rax
	movl	4(%rax), %edi
	movl	-140(%rbp), %esi
	movq	-136(%rbp), %rdx
	callq	p_add_layer
	movq	%rax, -128(%rbp)
	cmpl	$0, gb_debug
	je	.LBB9_11
# BB#10:                                # %if.then.51
	movabsq	$.L.str.136, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB9_11:                               # %if.end.53
	jmp	.LBB9_17
.LBB9_12:                               # %if.else
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-136(%rbp), %rax
	movl	4(%rax), %esi
	movl	-140(%rbp), %edx
	movl	-156(%rbp), %ecx
	movl	-160(%rbp), %r8d
	callq	gimp_layer_resize
	cmpl	$0, gb_debug
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB9_14
# BB#13:                                # %if.then.58
	movabsq	$.L.str.137, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB9_14:                               # %if.end.60
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB9_16
# BB#15:                                # %if.then.64
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_layer_add_alpha
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB9_16:                               # %if.end.67
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -128(%rbp)
.LBB9_17:                               # %if.end.70
	movq	-128(%rbp), %rdi
	callq	p_clear_drawable
	leaq	-72(%rbp), %rdi
	xorl	%eax, %eax
	movq	-136(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	p_init_gdrw
	leaq	-120(%rbp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rsi
	callq	p_init_gdrw
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	p_vertical_bend
	cmpl	$0, gb_debug
	je	.LBB9_19
# BB#18:                                # %if.then.72
	movabsq	$.L.str.138, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB9_19:                               # %if.end.74
	leaq	-72(%rbp), %rdi
	callq	p_end_gdrw
	leaq	-120(%rbp), %rdi
	callq	p_end_gdrw
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movsd	1216(%rdi), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_20
	jp	.LBB9_20
	jmp	.LBB9_21
.LBB9_20:                               # %if.then.78
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	-144(%rbp), %edi
	movq	-128(%rbp), %rax
	movl	(%rax), %esi
	movl	-152(%rbp), %edx
	movq	-8(%rbp), %rax
	subsd	1216(%rax), %xmm0
	callq	p_gimp_rotate
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB9_21:                               # %if.end.83
	movl	-164(%rbp), %eax
	movq	-128(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_drawable_width
	movl	$2, %edi
	cltd
	idivl	%edi
	movl	-256(%rbp), %edi        # 4-byte Reload
	subl	%eax, %edi
	movl	%edi, -156(%rbp)
	movl	-168(%rbp), %eax
	movq	-128(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	movl	$2, %edi
	cltd
	idivl	%edi
	movl	-260(%rbp), %edi        # 4-byte Reload
	subl	%eax, %edi
	movl	%edi, -160(%rbp)
	movq	-128(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-156(%rbp), %esi
	movl	-160(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_layer_set_offsets
	movl	-144(%rbp), %edi
	movl	-148(%rbp), %esi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_image_remove_layer
	movq	-8(%rbp), %rcx
	movq	1160(%rcx), %rcx
	movq	%rcx, %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-8(%rbp), %rcx
	movq	1168(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_free
	cmpl	$0, gb_debug
	je	.LBB9_23
# BB#22:                                # %if.then.100
	movabsq	$.L.str.139, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB9_23:                               # %if.end.102
	movq	-128(%rbp), %rax
	movl	(%rax), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end9:
	.size	p_main_bend, .Lfunc_end9-p_main_bend
	.cfi_endproc

	.align	16, 0x90
	.type	p_store_values,@function
p_store_values:                         # @p_store_values
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
	subq	$1120, %rsp             # imm = 0x460
	leaq	-1104(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	p_cd_to_bval
	movabsq	$.L.str.42, %rdi
	movl	$1096, %edx             # imm = 0x448
	leaq	-1104(%rbp), %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	addq	$1120, %rsp             # imm = 0x460
	popq	%rbp
	retq
.Lfunc_end10:
	.size	p_store_values, .Lfunc_end10-p_store_values
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_1:
	.quad	4645040803167600640     # double 360
.LCPI11_2:
	.quad	4607182418800017408     # double 1
.LCPI11_3:
	.quad	4631530004285489152     # double 45
.LCPI11_4:
	.quad	4636033603912859648     # double 90
.LCPI11_5:
	.quad	4602678819172646912     # double 0.5
.LCPI11_6:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	bender_new_dialog,@function
bender_new_dialog:                      # @bender_new_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$984, %rsp              # imm = 0x3D8
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$1272, %eax             # imm = 0x4F8
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	xorps	%xmm0, %xmm0
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 80(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 100(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 1200(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 1204(%rax)
	movq	-56(%rbp), %rax
	movl	$1, 1208(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 1212(%rax)
	movq	-56(%rbp), %rax
	movsd	%xmm0, 1216(%rax)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	movq	-56(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-56(%rbp), %rcx
	movl	$0, 1264(%rcx)
	movq	-56(%rbp), %rcx
	movq	$0, 1240(%rcx)
	movq	-56(%rbp), %rcx
	movq	$0, 1248(%rcx)
	movq	-56(%rbp), %rcx
	movq	$0, 1256(%rcx)
	movl	$0, -188(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	cmpl	$2, -188(%rbp)
	jge	.LBB11_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$0, -192(%rbp)
.LBB11_3:                               # %for.cond.4
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -192(%rbp)        # imm = 0x100
	jge	.LBB11_6
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB11_3 Depth=2
	movslq	-192(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	$127, (%rdx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc.9
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB11_1
.LBB11_8:                               # %for.end.11
	movq	-56(%rbp), %rax
	movl	$-1, 84(%rax)
	movl	$0, -188(%rbp)
.LBB11_9:                               # %for.cond.12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_11 Depth 2
	cmpl	$2, -188(%rbp)
	jge	.LBB11_16
# BB#10:                                # %for.body.14
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	$0, -192(%rbp)
.LBB11_11:                              # %for.cond.15
                                        #   Parent Loop BB11_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$17, -192(%rbp)
	jge	.LBB11_14
# BB#12:                                # %for.body.17
                                        #   in Loop: Header=BB11_11 Depth=2
	movsd	.LCPI11_6, %xmm0        # xmm0 = mem[0],zero
	movslq	-192(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, (%rdx)
	movslq	-192(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	-56(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, 8(%rdx)
# BB#13:                                # %for.inc.29
                                        #   in Loop: Header=BB11_11 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB11_11
.LBB11_14:                              # %for.end.31
                                        #   in Loop: Header=BB11_9 Depth=1
	movsd	.LCPI11_5, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_2, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movslq	-188(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$104, %rcx
	imulq	$272, %rax, %rax        # imm = 0x110
	addq	%rax, %rcx
	movsd	%xmm2, (%rcx)
	movslq	-188(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$104, %rcx
	imulq	$272, %rax, %rax        # imm = 0x110
	addq	%rax, %rcx
	movsd	%xmm0, 8(%rcx)
	movslq	-188(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$104, %rcx
	imulq	$272, %rax, %rax        # imm = 0x110
	addq	%rax, %rcx
	movsd	%xmm1, 256(%rcx)
	movslq	-188(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$104, %rcx
	imulq	$272, %rax, %rax        # imm = 0x110
	addq	%rax, %rcx
	movsd	%xmm0, 264(%rcx)
# BB#15:                                # %for.inc.52
                                        #   in Loop: Header=BB11_9 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB11_9
.LBB11_16:                              # %for.end.54
	movq	-56(%rbp), %rdi
	callq	p_retrieve_values
	movabsq	$.L.str.65, %rdi
	callq	gettext
	movabsq	$.L.str.66, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.42, %r9
	movabsq	$.L.str.67, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.68, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -204(%rbp)        # 4-byte Spill
	movl	%r10d, -208(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movabsq	$.L.str.69, %rsi
	movabsq	$bender_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_display
	movl	$150, %esi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	xorl	%edi, %edi
	movl	$12, %esi
	movq	-56(%rbp), %rcx
	movq	%rax, 56(%rcx)
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.70, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movss	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -284(%rbp)       # 4-byte Spill
	movss	-284(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -288(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-288(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-288(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-96(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$256, %ecx              # imm = 0x100
	movq	-56(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-104(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.71, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.72, %rsi
	movabsq	$bender_preview_update_once, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.73, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movl	80(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-80(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.74, %rsi
	movabsq	$bender_preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.75, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.76, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -168(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-176(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_3, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI11_4, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI11_5, %xmm6        # xmm6 = mem[0],zero
	movl	$1, %esi
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -160(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rax
	movsd	1216(%rax), %xmm0       # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	-80(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	-468(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movq	-168(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.77, %rsi
	movabsq	$bender_rotate_adj_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.78, %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movl	1204(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.74, %rsi
	movabsq	$bender_smoothing_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.79, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movl	1208(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.74, %rsi
	movabsq	$bender_antialias_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.80, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movl	1212(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.74, %rsi
	movabsq	$bender_work_on_copy_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.81, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movss	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movss	%xmm0, -580(%rbp)       # 4-byte Spill
	movss	-580(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -584(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-584(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-584(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -596(%rbp)        # 4-byte Spill
	movl	-596(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_drawing_area_new
	movl	$262, %ecx              # imm = 0x106
	movq	-56(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movl	$4910, %esi             # imm = 0x132E
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_set_events
	movq	-96(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.82, %rsi
	movabsq	$bender_graph_events, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.83, %rdi
	callq	gettext
	movabsq	$.L.str.84, %rdi
	movq	-56(%rbp), %rsi
	addq	$76, %rsi
	movq	-56(%rbp), %r11
	movl	76(%r11), %r8d
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movl	%r8d, -636(%rbp)        # 4-byte Spill
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.85, %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$bender_border_callback, %rsi
	xorl	%ecx, %ecx
	leaq	-112(%rbp), %r11
	leaq	-120(%rbp), %r14
	xorl	%edx, %edx
	movl	%edx, %r15d
	movq	-632(%rbp), %r12        # 8-byte Reload
	movq	%rsi, -664(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movq	-664(%rbp), %rdx        # 8-byte Reload
	movq	-648(%rbp), %r13        # 8-byte Reload
	movl	%ecx, -668(%rbp)        # 4-byte Spill
	movq	%r13, %rcx
	movl	-636(%rbp), %r8d        # 4-byte Reload
	movq	-656(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r14, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r15, -680(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movl	$80, %edi
	movl	%edi, %esi
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.86, %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.86, %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-80(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.87, %rdi
	callq	gettext
	movabsq	$.L.str.88, %rdi
	movq	-56(%rbp), %rsi
	addq	$100, %rsi
	movq	-56(%rbp), %r9
	movl	100(%r9), %r8d
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movl	%r8d, -700(%rbp)        # 4-byte Spill
	movq	%rsi, -712(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.89, %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$bender_type_callback, %rsi
	xorl	%ecx, %ecx
	leaq	-128(%rbp), %r9
	leaq	-136(%rbp), %r11
	xorl	%edx, %edx
	movl	%edx, %r14d
	movq	-696(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-728(%rbp), %rdx        # 8-byte Reload
	movq	-712(%rbp), %r12        # 8-byte Reload
	movl	%ecx, -732(%rbp)        # 4-byte Spill
	movq	%r12, %rcx
	movl	-700(%rbp), %r8d        # 4-byte Reload
	movq	-720(%rbp), %r13        # 8-byte Reload
	movq	%r9, -744(%rbp)         # 8-byte Spill
	movq	%r13, %r9
	movl	$0, (%rsp)
	movq	-744(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r14, -752(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movl	$80, %edi
	movl	%edi, %esi
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.86, %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.86, %rsi
	movq	-56(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-80(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%ebx, %r8d
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -772(%rbp)        # 4-byte Spill
	movl	-772(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.90, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.91, %rdi
	movq	-152(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$bender_copy_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-800(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.92, %rdi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.93, %rdi
	movq	-152(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$bender_copy_inv_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-832(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.94, %rdi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.95, %rdi
	movq	-152(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$bender_swap_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.96, %rdi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.97, %rdi
	movq	-152(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$bender_reset_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-896(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$4, %esi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.98, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.99, %rdi
	movq	-152(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$bender_load_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-936(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.100, %rdi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gtk_button_new_from_stock
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.101, %rdi
	movq	-152(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.72, %rsi
	movabsq	$bender_save_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-152(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-968(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	addq	$984, %rsp              # imm = 0x3D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	bender_new_dialog, .Lfunc_end11-bender_new_dialog
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_0:
	.long	1124073472              # float 128
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	p_create_pv_image,@function
p_create_pv_image:                      # @p_create_pv_image
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_item_get_image
	movl	%eax, %edi
	callq	gimp_image_base_type
	movl	$256, %edi              # imm = 0x100
	movl	%edi, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_undo_disable
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jbe	.LBB12_2
# BB#1:                                 # %if.then
	movss	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$128, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	8(%rax), %edx
	shll	$7, %ecx
	xorl	%esi, %esi
	movl	%ecx, %eax
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%esi, %edx
	movl	-172(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, %edi
	cvtsi2ssq	%rdi, %xmm1
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.else
	movss	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$128, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movl	8(%rax), %edx
	shll	$7, %edx
	xorl	%esi, %esi
	movl	%edx, %eax
	movl	%esi, %edx
	divl	%ecx
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %eax
	movl	%eax, %edi
	cvtsi2ssq	%rdi, %xmm1
	divss	%xmm0, %xmm1
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB12_3:                               # %if.end
	movabsq	$.L.str.131, %rsi
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	gimp_layer_new
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB12_5
# BB#4:                                 # %if.then.21
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_layer_add_alpha
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB12_5:                               # %if.end.23
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_image_insert_layer
	movq	-16(%rbp), %r8
	movl	(%r8), %edi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rsi
	movl	%ecx, %edx
	callq	p_init_gdrw
	leaq	-160(%rbp), %rdi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	callq	p_init_gdrw
	movl	$0, -40(%rbp)
.LBB12_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_8 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB12_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	$0, -36(%rbp)
.LBB12_8:                               # %for.cond.28
                                        #   Parent Loop BB12_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB12_11
# BB#9:                                 # %for.body.31
                                        #   in Loop: Header=BB12_8 Depth=2
	leaq	-112(%rbp), %rdi
	leaq	-52(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm0
	mulsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	callq	p_get_pixel
	leaq	-160(%rbp), %rdi
	leaq	-52(%rbp), %rcx
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	p_put_pixel
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB12_8 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_8
.LBB12_11:                              # %for.end
                                        #   in Loop: Header=BB12_6 Depth=1
	jmp	.LBB12_12
.LBB12_12:                              # %for.inc.39
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB12_6
.LBB12_13:                              # %for.end.41
	leaq	-112(%rbp), %rdi
	callq	p_end_gdrw
	leaq	-160(%rbp), %rdi
	callq	p_end_gdrw
	movl	-20(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	p_create_pv_image, .Lfunc_end12-p_create_pv_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
.LCPI13_1:
	.quad	4607182418800017408     # double 1
.LCPI13_2:
	.quad	4613937818241073152     # double 3
.LCPI13_3:
	.quad	-4616189618054758400    # double -1
.LCPI13_4:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI13_5:
	.quad	4643176031446892544     # double 255
.LCPI13_6:
	.quad	4643263992377114624     # double 259
	.text
	.align	16, 0x90
	.type	bender_update,@function
bender_update:                          # @bender_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	je	.LBB13_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	-8(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	callq	gdk_flush
	movq	-8(%rbp), %rax
	cmpl	$0, 1232(%rax)
	jl	.LBB13_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movl	1224(%rax), %edi
	movq	-8(%rbp), %rax
	movl	1232(%rax), %esi
	callq	gimp_image_remove_layer
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB13_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	1228(%rax), %ecx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	gimp_drawable_get
	movl	$1, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	p_main_bend
	movq	-8(%rbp), %rsi
	movl	%eax, 1232(%rsi)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	1232(%rsi), %esi
	callq	p_render_preview
	movl	-12(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB13_5
# BB#4:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_queue_draw
.LBB13_5:                               # %if.end.14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
.LBB13_6:                               # %if.end.19
	movl	-12(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB13_12
# BB#7:                                 # %if.then.22
	movq	-8(%rbp), %rax
	cmpl	$0, 1232(%rax)
	jge	.LBB13_9
# BB#8:                                 # %if.then.25
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	1228(%rax), %ecx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	gimp_drawable_get
	movl	$1, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	p_main_bend
	movq	-8(%rbp), %rsi
	movl	%eax, 1232(%rsi)
.LBB13_9:                               # %if.end.30
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	1232(%rax), %esi
	callq	p_render_preview
	movl	-12(%rbp), %esi
	andl	$16, %esi
	cmpl	$0, %esi
	je	.LBB13_11
# BB#10:                                # %if.then.34
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_queue_draw
.LBB13_11:                              # %if.end.36
	jmp	.LBB13_12
.LBB13_12:                              # %if.end.37
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB13_36
# BB#13:                                # %land.lhs.true
	movl	-12(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB13_36
# BB#14:                                # %land.lhs.true.42
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB13_36
# BB#15:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$84, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_paint
	movl	$0, -28(%rbp)
.LBB13_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -28(%rbp)
	jge	.LBB13_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB13_16 Depth=1
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %eax
	shll	$6, %eax
	addl	$3, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_move_to
	movsd	.LCPI13_6, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %eax
	shll	$6, %eax
	addl	$3, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %eax
	shll	$6, %eax
	addl	$3, %eax
	cvtsi2sdl	%eax, %xmm0
	callq	cairo_move_to
	movsd	.LCPI13_6, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %eax
	shll	$6, %eax
	addl	$3, %eax
	cvtsi2sdl	%eax, %xmm0
	callq	cairo_line_to
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB13_16 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_16
.LBB13_19:                              # %for.end
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$204, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	movl	$255, %ecx
	xorl	%edx, %edx
	movl	$1, %r8d
	movq	-8(%rbp), %rax
	cmpl	$0, 76(%rax)
	cmovel	%r8d, %edx
	movl	%edx, -32(%rbp)
	movq	-40(%rbp), %rdi
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rsi
	addq	$648, %rsi              # imm = 0x288
	shlq	$8, %rax
	addq	%rax, %rsi
	movzbl	(%rsi), %edx
	subl	%edx, %ecx
	addl	$3, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movl	$1, -28(%rbp)
.LBB13_20:                              # %for.cond.66
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB13_23
# BB#21:                                # %for.body.69
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	$255, %eax
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	addl	$3, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movslq	-28(%rbp), %rdx
	movslq	-32(%rbp), %rsi
	movq	-8(%rbp), %r8
	addq	$648, %r8               # imm = 0x288
	shlq	$8, %rsi
	addq	%rsi, %r8
	movzbl	(%r8,%rdx), %ecx
	subl	%ecx, %eax
	addl	$3, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
# BB#22:                                # %for.inc.81
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_20
.LBB13_23:                              # %for.end.83
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$204, %rax
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	movl	$255, %ecx
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	76(%rax), %rax
	movq	-8(%rbp), %rsi
	addq	$648, %rsi              # imm = 0x288
	shlq	$8, %rax
	addq	%rax, %rsi
	movzbl	(%rsi), %edx
	subl	%edx, %ecx
	addl	$3, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movl	$1, -28(%rbp)
.LBB13_24:                              # %for.cond.95
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB13_27
# BB#25:                                # %for.body.98
                                        #   in Loop: Header=BB13_24 Depth=1
	movl	$255, %eax
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	addl	$3, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movslq	-28(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movslq	76(%rsi), %rsi
	movq	-8(%rbp), %r8
	addq	$648, %r8               # imm = 0x288
	shlq	$8, %rsi
	addq	%rsi, %r8
	movzbl	(%r8,%rdx), %ecx
	subl	%ecx, %eax
	addl	$3, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
# BB#26:                                # %for.inc.111
                                        #   in Loop: Header=BB13_24 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_24
.LBB13_27:                              # %for.end.113
	movq	-8(%rbp), %rax
	cmpl	$0, 100(%rax)
	jne	.LBB13_35
# BB#28:                                # %if.then.116
	movl	$0, -28(%rbp)
.LBB13_29:                              # %for.cond.117
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -28(%rbp)
	jge	.LBB13_34
# BB#30:                                # %for.body.120
                                        #   in Loop: Header=BB13_29 Depth=1
	movsd	.LCPI13_3, %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB13_31
	jp	.LBB13_31
	jmp	.LBB13_32
.LBB13_31:                              # %if.then.129
                                        #   in Loop: Header=BB13_29 Depth=1
	movq	-40(%rbp), %rdi
	callq	cairo_new_sub_path
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI13_4, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI13_5, %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movaps	%xmm1, %xmm2
	mulsd	(%rdx), %xmm2
	addsd	%xmm0, %xmm2
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movaps	%xmm1, %xmm5
	mulsd	8(%rdx), %xmm5
	subsd	%xmm5, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_arc
.LBB13_32:                              # %if.end.149
                                        #   in Loop: Header=BB13_29 Depth=1
	jmp	.LBB13_33
.LBB13_33:                              # %for.inc.150
                                        #   in Loop: Header=BB13_29 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_29
.LBB13_34:                              # %for.end.152
	jmp	.LBB13_35
.LBB13_35:                              # %if.end.153
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$504, %rax              # imm = 0x1F8
	movq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
.LBB13_36:                              # %if.end.154
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	bender_update, .Lfunc_end13-bender_update
	.cfi_endproc

	.align	16, 0x90
	.type	bender_response,@function
bender_response:                        # @bender_response
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$1, 1264(%rax)
.LBB14_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	callq	gtk_main_quit
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	bender_response, .Lfunc_end14-bender_response
	.cfi_endproc

	.align	16, 0x90
	.type	bender_preview_update_once,@function
bender_preview_update_once:             # @bender_preview_update_once
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
	movl	$24, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	callq	bender_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	bender_preview_update_once, .Lfunc_end15-bender_preview_update_once
	.cfi_endproc

	.align	16, 0x90
	.type	bender_preview_update,@function
bender_preview_update:                  # @bender_preview_update
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 80(%rsi)
	movq	-24(%rbp), %rsi
	cmpl	$0, 80(%rsi)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB16_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	bender_preview_update, .Lfunc_end16-bender_preview_update
	.cfi_endproc

	.align	16, 0x90
	.type	bender_rotate_adj_callback,@function
bender_rotate_adj_callback:             # @bender_rotate_adj_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movq	-24(%rbp), %rsi
	ucomisd	1216(%rsi), %xmm0
	jne	.LBB17_1
	jp	.LBB17_1
	jmp	.LBB17_4
.LBB17_1:                               # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movq	-24(%rbp), %rdi
	movsd	%xmm0, 1216(%rdi)
	movq	-24(%rbp), %rdi
	cmpl	$0, 80(%rdi)
	je	.LBB17_3
# BB#2:                                 # %if.then.3
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB17_3:                               # %if.end
	jmp	.LBB17_4
.LBB17_4:                               # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	bender_rotate_adj_callback, .Lfunc_end17-bender_rotate_adj_callback
	.cfi_endproc

	.align	16, 0x90
	.type	bender_smoothing_callback,@function
bender_smoothing_callback:              # @bender_smoothing_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 1204(%rsi)
	movq	-24(%rbp), %rsi
	cmpl	$0, 80(%rsi)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB18_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	bender_smoothing_callback, .Lfunc_end18-bender_smoothing_callback
	.cfi_endproc

	.align	16, 0x90
	.type	bender_antialias_callback,@function
bender_antialias_callback:              # @bender_antialias_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 1208(%rsi)
	movq	-24(%rbp), %rsi
	cmpl	$0, 80(%rsi)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB19_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	bender_antialias_callback, .Lfunc_end19-bender_antialias_callback
	.cfi_endproc

	.align	16, 0x90
	.type	bender_work_on_copy_callback,@function
bender_work_on_copy_callback:           # @bender_work_on_copy_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-24(%rbp), %rsi
	movl	%eax, 1212(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	bender_work_on_copy_callback, .Lfunc_end20-bender_work_on_copy_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	-4616189618054758400    # double -1
.LCPI21_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	bender_graph_events,@function
bender_graph_events:                    # @bender_graph_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -64(%rbp)
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rdi
	callq	gtk_widget_get_window
	leaq	-48(%rbp), %rsi
	leaq	-52(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	callq	gdk_window_get_pointer
	movl	-48(%rbp), %r8d
	subl	$3, %r8d
	cmpl	$255, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jle	.LBB21_2
# BB#1:                                 # %cond.true
	movl	$255, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB21_6
.LBB21_2:                               # %cond.false
	movl	-48(%rbp), %eax
	subl	$3, %eax
	cmpl	$0, %eax
	jge	.LBB21_4
# BB#3:                                 # %cond.true.4
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB21_5
.LBB21_4:                               # %cond.false.5
	movl	-48(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB21_5:                               # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB21_6:                               # %cond.end.7
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	subl	$3, %eax
	cmpl	$255, %eax
	jle	.LBB21_8
# BB#7:                                 # %cond.true.11
	movl	$255, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB21_12
.LBB21_8:                               # %cond.false.12
	movl	-52(%rbp), %eax
	subl	$3, %eax
	cmpl	$0, %eax
	jge	.LBB21_10
# BB#9:                                 # %cond.true.15
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB21_11
.LBB21_10:                              # %cond.false.16
	movl	-52(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB21_11:                              # %cond.end.18
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB21_12:                              # %cond.end.20
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	$2147483647, -68(%rbp)  # imm = 0x7FFFFFFF
	movl	$0, -44(%rbp)
.LBB21_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -44(%rbp)
	jge	.LBB21_20
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB21_13 Depth=1
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_15
	jp	.LBB21_15
	jmp	.LBB21_18
.LBB21_15:                              # %if.then
                                        #   in Loop: Header=BB21_13 Depth=1
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	mulsd	(%rdx), %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edi
	callq	abs
	cmpl	-68(%rbp), %eax
	jge	.LBB21_17
# BB#16:                                # %if.then.39
                                        #   in Loop: Header=BB21_13 Depth=1
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-56(%rbp), %xmm1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	mulsd	(%rdx), %xmm0
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edi
	callq	abs
	movl	%eax, -68(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB21_17:                              # %if.end
                                        #   in Loop: Header=BB21_13 Depth=1
	jmp	.LBB21_18
.LBB21_18:                              # %if.end.52
                                        #   in Loop: Header=BB21_13 Depth=1
	jmp	.LBB21_19
.LBB21_19:                              # %for.inc
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB21_13
.LBB21_20:                              # %for.end
	cmpl	$8, -68(%rbp)
	jle	.LBB21_22
# BB#21:                                # %if.then.55
	movl	$16, %eax
	movl	-56(%rbp), %ecx
	addl	$8, %ecx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-116(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -64(%rbp)
.LBB21_22:                              # %if.end.56
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$5, %ecx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	ja	.LBB21_79
# BB#81:                                # %if.end.56
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI21_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB21_23:                              # %sw.bb
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB21_25
# BB#24:                                # %if.then.59
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_get_window
	movl	$262, %ecx              # imm = 0x106
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-136(%rbp), %ecx        # 4-byte Reload
	callq	gdk_pixmap_new
	movq	-24(%rbp), %rdi
	movq	%rax, 40(%rdi)
.LBB21_25:                              # %if.end.64
	movl	$17, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
	jmp	.LBB21_80
.LBB21_26:                              # %sw.bb.65
	movl	$130, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	100(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	je	.LBB21_27
	jmp	.LBB21_83
.LBB21_83:                              # %sw.bb.65
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB21_40
	jmp	.LBB21_41
.LBB21_27:                              # %sw.bb.66
	movq	-24(%rbp), %rax
	movl	$-1, 92(%rax)
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -44(%rbp)
.LBB21_28:                              # %for.cond.68
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB21_33
# BB#29:                                # %for.body.71
                                        #   in Loop: Header=BB21_28 Depth=1
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_30
	jp	.LBB21_30
	jmp	.LBB21_31
.LBB21_30:                              # %if.then.81
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	mulsd	(%rdx), %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-24(%rbp), %rax
	movl	%esi, 92(%rax)
	jmp	.LBB21_33
.LBB21_31:                              # %if.end.92
                                        #   in Loop: Header=BB21_28 Depth=1
	jmp	.LBB21_32
.LBB21_32:                              # %for.inc.93
                                        #   in Loop: Header=BB21_28 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB21_28
.LBB21_33:                              # %for.end.94
	movq	-24(%rbp), %rax
	movl	$256, 96(%rax)          # imm = 0x100
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
.LBB21_34:                              # %for.cond.96
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -44(%rbp)
	jge	.LBB21_39
# BB#35:                                # %for.body.99
                                        #   in Loop: Header=BB21_34 Depth=1
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_36
	jp	.LBB21_36
	jmp	.LBB21_37
.LBB21_36:                              # %if.then.109
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	mulsd	(%rdx), %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-24(%rbp), %rax
	movl	%esi, 96(%rax)
	jmp	.LBB21_39
.LBB21_37:                              # %if.end.120
                                        #   in Loop: Header=BB21_34 Depth=1
	jmp	.LBB21_38
.LBB21_38:                              # %for.inc.121
                                        #   in Loop: Header=BB21_34 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB21_34
.LBB21_39:                              # %for.end.123
	movl	$255, %eax
	movl	$1, %ecx
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movl	-64(%rbp), %edx
	movq	-24(%rbp), %rsi
	movl	%edx, 84(%rsi)
	cvtsi2sdl	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rsi
	movslq	84(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movslq	76(%rdi), %rdi
	movq	-24(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rdi, %rdi        # imm = 0x110
	addq	%rdi, %r8
	shlq	$4, %rsi
	addq	%rsi, %r8
	movsd	%xmm1, (%r8)
	movl	%eax, %edx
	subl	-60(%rbp), %edx
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rsi
	movslq	84(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movslq	76(%rdi), %rdi
	movq	-24(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rdi, %rdi        # imm = 0x110
	addq	%rdi, %r8
	shlq	$4, %rsi
	addq	%rsi, %r8
	movsd	%xmm1, 8(%r8)
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	bender_calculate_curve
	jmp	.LBB21_41
.LBB21_40:                              # %sw.bb.145
	movl	$255, %eax
	subl	-60(%rbp), %eax
	movb	%al, %cl
	movslq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movslq	76(%rsi), %rsi
	movq	-24(%rbp), %rdi
	addq	$648, %rdi              # imm = 0x288
	shlq	$8, %rsi
	addq	%rsi, %rdi
	movb	%cl, (%rdi,%rdx)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, 84(%rdx)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, 88(%rdx)
.LBB21_41:                              # %sw.epilog
	movl	$17, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
	jmp	.LBB21_80
.LBB21_42:                              # %sw.bb.154
	movl	$52, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$-1, 84(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 80(%rax)
	je	.LBB21_44
# BB#43:                                # %if.then.156
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB21_44:                              # %if.end.157
	jmp	.LBB21_80
.LBB21_45:                              # %sw.bb.158
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpw	$0, 52(%rax)
	je	.LBB21_47
# BB#46:                                # %if.then.160
	cvtsi2sdl	-48(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	cvtsi2sdl	-52(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, 32(%rax)
.LBB21_47:                              # %if.end.165
	movq	-24(%rbp), %rax
	movl	100(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	je	.LBB21_48
	jmp	.LBB21_82
.LBB21_82:                              # %if.end.165
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB21_60
	jmp	.LBB21_76
.LBB21_48:                              # %sw.bb.167
	movq	-24(%rbp), %rax
	cmpl	$-1, 84(%rax)
	jne	.LBB21_53
# BB#49:                                # %if.then.171
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_50
	jp	.LBB21_50
	jmp	.LBB21_51
.LBB21_50:                              # %if.then.181
	movl	$52, -28(%rbp)
	jmp	.LBB21_52
.LBB21_51:                              # %if.else
	movl	$130, -28(%rbp)
.LBB21_52:                              # %if.end.182
	jmp	.LBB21_59
.LBB21_53:                              # %if.else.183
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movl	$130, -28(%rbp)
	movq	-24(%rbp), %rax
	movslq	84(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, (%rdx)
	movl	-56(%rbp), %esi
	movq	-24(%rbp), %rax
	cmpl	92(%rax), %esi
	jle	.LBB21_58
# BB#54:                                # %land.lhs.true
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB21_58
# BB#55:                                # %if.then.198
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movl	$16, %eax
	movl	-56(%rbp), %ecx
	addl	$8, %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-156(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -64(%rbp)
	movslq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movslq	76(%rdi), %rdi
	movq	-24(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rdi, %rdi        # imm = 0x110
	addq	%rdi, %r8
	shlq	$4, %rsi
	addq	%rsi, %r8
	movsd	(%r8), %xmm1            # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_57
	jp	.LBB21_57
# BB#56:                                # %if.then.210
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 84(%rcx)
.LBB21_57:                              # %if.end.212
	movsd	.LCPI21_1, %xmm0        # xmm0 = mem[0],zero
	movl	$255, %eax
	cvtsi2sdl	-56(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movslq	84(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-24(%rbp), %rsi
	addq	$104, %rsi
	imulq	$272, %rdx, %rdx        # imm = 0x110
	addq	%rdx, %rsi
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movsd	%xmm1, (%rsi)
	subl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movslq	84(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-24(%rbp), %rsi
	addq	$104, %rsi
	imulq	$272, %rdx, %rdx        # imm = 0x110
	addq	%rdx, %rsi
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movsd	%xmm1, 8(%rsi)
.LBB21_58:                              # %if.end.234
	movl	$255, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	bender_calculate_curve
	movl	$17, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB21_59:                              # %if.end.235
	jmp	.LBB21_76
.LBB21_60:                              # %sw.bb.236
	movq	-24(%rbp), %rax
	cmpl	$-1, 84(%rax)
	je	.LBB21_72
# BB#61:                                # %if.then.240
	movq	-24(%rbp), %rax
	movl	84(%rax), %ecx
	cmpl	-56(%rbp), %ecx
	jle	.LBB21_63
# BB#62:                                # %if.then.244
	movl	-56(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	84(%rcx), %eax
	movl	%eax, -76(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB21_64
.LBB21_63:                              # %if.else.247
	movq	-24(%rbp), %rax
	movl	84(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	-56(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movl	-60(%rbp), %ecx
	movl	%ecx, -84(%rbp)
.LBB21_64:                              # %if.end.250
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	je	.LBB21_70
# BB#65:                                # %if.then.253
	movl	-72(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB21_66:                              # %for.cond.254
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.LBB21_69
# BB#67:                                # %for.body.257
                                        #   in Loop: Header=BB21_66 Depth=1
	movl	$255, %eax
	movl	-80(%rbp), %ecx
	movl	-84(%rbp), %edx
	subl	-80(%rbp), %edx
	movl	-44(%rbp), %esi
	subl	-72(%rbp), %esi
	imull	%esi, %edx
	movl	-76(%rbp), %esi
	subl	-72(%rbp), %esi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movl	-160(%rbp), %eax        # 4-byte Reload
	subl	%ecx, %eax
	movb	%al, %dil
	movslq	-44(%rbp), %r8
	movq	-24(%rbp), %r9
	movslq	76(%r9), %r9
	movq	-24(%rbp), %r10
	addq	$648, %r10              # imm = 0x288
	shlq	$8, %r9
	addq	%r9, %r10
	movb	%dil, (%r10,%r8)
# BB#68:                                # %for.inc.272
                                        #   in Loop: Header=BB21_66 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB21_66
.LBB21_69:                              # %for.end.274
	jmp	.LBB21_71
.LBB21_70:                              # %if.else.275
	movl	$255, %eax
	subl	-60(%rbp), %eax
	movb	%al, %cl
	movslq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movslq	76(%rsi), %rsi
	movq	-24(%rbp), %rdi
	addq	$648, %rdi              # imm = 0x288
	shlq	$8, %rsi
	addq	%rsi, %rdi
	movb	%cl, (%rdi,%rdx)
.LBB21_71:                              # %if.end.284
	movl	$17, %esi
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 84(%rcx)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB21_72:                              # %if.end.287
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB21_74
# BB#73:                                # %if.then.289
	movl	$130, -28(%rbp)
	jmp	.LBB21_75
.LBB21_74:                              # %if.else.290
	movl	$86, -28(%rbp)
.LBB21_75:                              # %if.end.291
	jmp	.LBB21_76
.LBB21_76:                              # %sw.epilog.292
	movl	-28(%rbp), %eax
	cmpl	bender_graph_events.cursor_type, %eax
	je	.LBB21_78
# BB#77:                                # %if.then.295
	movl	-28(%rbp), %eax
	movl	%eax, bender_graph_events.cursor_type
.LBB21_78:                              # %if.end.296
	jmp	.LBB21_80
.LBB21_79:                              # %sw.default
	jmp	.LBB21_80
.LBB21_80:                              # %sw.epilog.297
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	bender_graph_events, .Lfunc_end21-bender_graph_events
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI21_0:
	.quad	.LBB21_23
	.quad	.LBB21_45
	.quad	.LBB21_26
	.quad	.LBB21_79
	.quad	.LBB21_79
	.quad	.LBB21_42

	.text
	.align	16, 0x90
	.type	bender_border_callback,@function
bender_border_callback:                 # @bender_border_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.86, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$17, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	bender_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	bender_border_callback, .Lfunc_end22-bender_border_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	bender_type_callback,@function
bender_type_callback:                   # @bender_type_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.86, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	jmp	.LBB23_17
.LBB23_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 100(%rax)
	jne	.LBB23_16
# BB#3:                                 # %if.then.2
	movl	$0, -28(%rbp)
.LBB23_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -28(%rbp)
	jg	.LBB23_13
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-28(%rbp), %eax
	shll	$5, %eax
	cmpl	$255, %eax
	jle	.LBB23_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	$255, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB23_11
.LBB23_7:                               # %cond.false
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-28(%rbp), %eax
	shll	$5, %eax
	cmpl	$0, %eax
	jge	.LBB23_9
# BB#8:                                 # %cond.true.7
                                        #   in Loop: Header=BB23_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB23_10
.LBB23_9:                               # %cond.false.8
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-28(%rbp), %eax
	shll	$5, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB23_10:                              # %cond.end
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB23_11:                              # %cond.end.10
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -32(%rbp)
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI23_0(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movl	-28(%rbp), %eax
	addl	%eax, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movslq	76(%rdx), %rsi
	imulq	$272, %rsi, %rsi        # imm = 0x110
	addq	%rsi, %rdx
	shlq	$4, %rcx
	movsd	%xmm1, 104(%rcx,%rdx)
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movslq	76(%rdx), %rsi
	shlq	$8, %rsi
	addq	%rsi, %rdx
	movzbl	648(%rcx,%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movl	-28(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-24(%rbp), %rsi
	addq	$104, %rsi
	imulq	$272, %rdx, %rdx        # imm = 0x110
	addq	%rdx, %rsi
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movsd	%xmm1, 8(%rsi)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB23_4
.LBB23_13:                              # %for.end
	movl	$255, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	bender_calculate_curve
	movl	$17, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
	movq	-24(%rbp), %rdi
	cmpl	$0, 80(%rdi)
	je	.LBB23_15
# BB#14:                                # %if.then.32
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB23_15:                              # %if.end.33
	jmp	.LBB23_17
.LBB23_16:                              # %if.else
	movl	$17, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB23_17:                              # %if.end.34
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	bender_type_callback, .Lfunc_end23-bender_type_callback
	.cfi_endproc

	.align	16, 0x90
	.type	bender_copy_callback,@function
bender_copy_callback:                   # @bender_copy_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 76(%rsi)
	cmovnel	%ecx, %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -28(%rbp)
	jge	.LBB24_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, (%rdx)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, 8(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB24_1
.LBB24_4:                               # %for.end
	movl	$0, -28(%rbp)
.LBB24_5:                               # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB24_8
# BB#6:                                 # %for.body.26
                                        #   in Loop: Header=BB24_5 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	(%rdx,%rax), %sil
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	%sil, (%rdx,%rax)
# BB#7:                                 # %for.inc.37
                                        #   in Loop: Header=BB24_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB24_5
.LBB24_8:                               # %for.end.39
	movl	$17, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
	movq	-24(%rbp), %rdi
	cmpl	$0, 80(%rdi)
	je	.LBB24_10
# BB#9:                                 # %if.then
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB24_10:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	bender_copy_callback, .Lfunc_end24-bender_copy_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	bender_copy_inv_callback,@function
bender_copy_inv_callback:               # @bender_copy_inv_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 76(%rsi)
	cmovnel	%ecx, %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -28(%rbp)
	jge	.LBB25_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm1, (%rdx)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	subsd	8(%rdx), %xmm0
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, 8(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB25_1
.LBB25_4:                               # %for.end
	movl	$0, -28(%rbp)
.LBB25_5:                               # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB25_8
# BB#6:                                 # %for.body.26
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	$255, %eax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-24(%rbp), %rsi
	addq	$648, %rsi              # imm = 0x288
	shlq	$8, %rdx
	addq	%rdx, %rsi
	movzbl	(%rsi,%rcx), %edi
	subl	%edi, %eax
	movb	%al, %r8b
	movslq	-28(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	addq	$648, %rsi              # imm = 0x288
	shlq	$8, %rdx
	addq	%rdx, %rsi
	movb	%r8b, (%rsi,%rcx)
# BB#7:                                 # %for.inc.39
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB25_5
.LBB25_8:                               # %for.end.41
	movl	$17, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
	movq	-24(%rbp), %rdi
	cmpl	$0, 80(%rdi)
	je	.LBB25_10
# BB#9:                                 # %if.then
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB25_10:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	bender_copy_inv_callback, .Lfunc_end25-bender_copy_inv_callback
	.cfi_endproc

	.align	16, 0x90
	.type	bender_swap_callback,@function
bender_swap_callback:                   # @bender_swap_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 76(%rsi)
	cmovnel	%ecx, %eax
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -28(%rbp)
	jge	.LBB26_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, (%rdx)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, (%rdx)
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, 8(%rdx)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, 8(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB26_1
.LBB26_4:                               # %for.end
	movl	$0, -28(%rbp)
.LBB26_5:                               # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB26_8
# BB#6:                                 # %for.body.52
                                        #   in Loop: Header=BB26_5 Depth=1
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	(%rdx,%rax), %sil
	movb	%sil, -41(%rbp)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	(%rdx,%rax), %sil
	movslq	-28(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	%sil, (%rdx,%rax)
	movb	-41(%rbp), %sil
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	%sil, (%rdx,%rax)
# BB#7:                                 # %for.inc.74
                                        #   in Loop: Header=BB26_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB26_5
.LBB26_8:                               # %for.end.76
	movl	$17, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
	movq	-24(%rbp), %rdi
	cmpl	$0, 80(%rdi)
	je	.LBB26_10
# BB#9:                                 # %if.then
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB26_10:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	bender_swap_callback, .Lfunc_end26-bender_swap_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4602678819172646912     # double 0.5
.LCPI27_1:
	.quad	4607182418800017408     # double 1
.LCPI27_2:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	bender_reset_callback,@function
bender_reset_callback:                  # @bender_reset_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB27_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	$127, (%rdx,%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB27_1
.LBB27_4:                               # %for.end
	movq	-24(%rbp), %rax
	movl	$-1, 84(%rax)
	movl	$0, -28(%rbp)
.LBB27_5:                               # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -28(%rbp)
	jge	.LBB27_8
# BB#6:                                 # %for.body.5
                                        #   in Loop: Header=BB27_5 Depth=1
	movsd	.LCPI27_2, %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, (%rdx)
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-24(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, 8(%rdx)
# BB#7:                                 # %for.inc.19
                                        #   in Loop: Header=BB27_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB27_5
.LBB27_8:                               # %for.end.21
	movl	$17, %esi
	movsd	.LCPI27_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI27_1, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movq	-24(%rbp), %rax
	movslq	76(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$104, %rcx
	imulq	$272, %rax, %rax        # imm = 0x110
	addq	%rax, %rcx
	movsd	%xmm2, (%rcx)
	movq	-24(%rbp), %rax
	movslq	76(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$104, %rcx
	imulq	$272, %rax, %rax        # imm = 0x110
	addq	%rax, %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-24(%rbp), %rax
	movslq	76(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$104, %rcx
	imulq	$272, %rax, %rax        # imm = 0x110
	addq	%rax, %rcx
	movsd	%xmm1, 256(%rcx)
	movq	-24(%rbp), %rax
	movslq	76(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	$104, %rcx
	imulq	$272, %rax, %rax        # imm = 0x110
	addq	%rax, %rcx
	movsd	%xmm0, 264(%rcx)
	movq	-24(%rbp), %rdi
	callq	bender_update
	movq	-24(%rbp), %rax
	cmpl	$0, 80(%rax)
	je	.LBB27_10
# BB#9:                                 # %if.then
	movl	$24, %esi
	movq	-24(%rbp), %rdi
	callq	bender_update
.LBB27_10:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	bender_reset_callback, .Lfunc_end27-bender_reset_callback
	.cfi_endproc

	.align	16, 0x90
	.type	bender_load_callback,@function
bender_load_callback:                   # @bender_load_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp96:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 48(%rsi)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.104, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.67, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.98, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -52(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.69, %rsi
	movabsq	$p_points_load_from_file_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	-24(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.105, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-24(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB28_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	bender_load_callback, .Lfunc_end28-bender_load_callback
	.cfi_endproc

	.align	16, 0x90
	.type	bender_save_callback,@function
bender_save_callback:                   # @bender_save_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 48(%rsi)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.116, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.67, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.100, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movabsq	$.L.str.69, %rsi
	movabsq	$p_points_save_to_file_response, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.105, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-16(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.117, %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_name
.LBB29_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	bender_save_callback, .Lfunc_end29-bender_save_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4643176031446892544     # double 255
.LCPI30_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	bender_calculate_curve,@function
bender_calculate_curve:                 # @bender_calculate_curve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	100(%rdi), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	je	.LBB30_2
	jmp	.LBB30_41
.LBB30_41:                              # %entry
	movl	-132(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jne	.LBB30_40
	jmp	.LBB30_1
.LBB30_1:                               # %sw.bb
	jmp	.LBB30_40
.LBB30_2:                               # %sw.bb.1
	movl	$0, -100(%rbp)
	movl	$0, -24(%rbp)
.LBB30_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -24(%rbp)
	jge	.LBB30_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB30_3 Depth=1
	movsd	.LCPI30_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB30_5
	jp	.LBB30_5
	jmp	.LBB30_6
.LBB30_5:                               # %if.then
                                        #   in Loop: Header=BB30_3 Depth=1
	movl	-24(%rbp), %eax
	movl	-100(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -100(%rbp)
	movslq	%ecx, %rsi
	movl	%eax, -96(%rbp,%rsi,4)
.LBB30_6:                               # %if.end
                                        #   in Loop: Header=BB30_3 Depth=1
	jmp	.LBB30_7
.LBB30_7:                               # %for.inc
                                        #   in Loop: Header=BB30_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB30_3
.LBB30_8:                               # %for.end
	movl	$2, %eax
	movl	-12(%rbp), %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -120(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB30_29
# BB#9:                                 # %if.then.11
	cmpl	$0, -20(%rbp)
	je	.LBB30_19
# BB#10:                                # %if.then.12
	movl	$0, -24(%rbp)
.LBB30_11:                              # %for.cond.13
                                        # =>This Inner Loop Header: Depth=1
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-24(%rbp), %xmm1
	movslq	-96(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	mulsd	(%rdx), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB30_14
# BB#12:                                # %for.body.24
                                        #   in Loop: Header=BB30_11 Depth=1
	movslq	-96(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rdx
	imulq	$272, %rdx, %rdx        # imm = 0x110
	addq	%rdx, %rcx
	shlq	$4, %rax
	movsd	112(%rax,%rcx), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI30_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %dil
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	%dil, (%rdx,%rax)
# BB#13:                                # %for.inc.40
                                        #   in Loop: Header=BB30_11 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB30_11
.LBB30_14:                              # %for.end.42
	movsd	.LCPI30_0, %xmm0        # xmm0 = mem[0],zero
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movslq	-96(%rbp,%rcx,4), %rcx
	movq	-8(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-8(%rbp), %rsi
	addq	$104, %rsi
	imulq	$272, %rdx, %rdx        # imm = 0x110
	addq	%rdx, %rsi
	shlq	$4, %rcx
	addq	%rcx, %rsi
	mulsd	(%rsi), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
.LBB30_15:                              # %for.cond.54
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB30_18
# BB#16:                                # %for.body.57
                                        #   in Loop: Header=BB30_15 Depth=1
	movl	-100(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	movslq	-96(%rbp,%rcx,4), %rcx
	movq	-8(%rbp), %rdx
	movslq	76(%rdx), %rsi
	imulq	$272, %rsi, %rsi        # imm = 0x110
	addq	%rsi, %rdx
	shlq	$4, %rcx
	movsd	112(%rcx,%rdx), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI30_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dil
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-8(%rbp), %rsi
	addq	$648, %rsi              # imm = 0x288
	shlq	$8, %rdx
	addq	%rdx, %rsi
	movb	%dil, (%rsi,%rcx)
# BB#17:                                # %for.inc.76
                                        #   in Loop: Header=BB30_15 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB30_15
.LBB30_18:                              # %for.end.78
	jmp	.LBB30_28
.LBB30_19:                              # %if.else
	movslq	-96(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -124(%rbp)
	movl	-100(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rax
	movslq	-96(%rbp,%rax,4), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%esi, -128(%rbp)
	movl	$0, -24(%rbp)
.LBB30_20:                              # %for.cond.103
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB30_23
# BB#21:                                # %for.body.106
                                        #   in Loop: Header=BB30_20 Depth=1
	movl	-124(%rbp), %eax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	1160(%rsi,%rdx,8), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#22:                                # %for.inc.112
                                        #   in Loop: Header=BB30_20 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB30_20
.LBB30_23:                              # %for.end.114
	movl	-120(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB30_24:                              # %for.cond.115
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB30_27
# BB#25:                                # %for.body.118
                                        #   in Loop: Header=BB30_24 Depth=1
	movl	-128(%rbp), %eax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	1160(%rsi,%rdx,8), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#26:                                # %for.inc.125
                                        #   in Loop: Header=BB30_24 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB30_24
.LBB30_27:                              # %for.end.127
	jmp	.LBB30_28
.LBB30_28:                              # %if.end.128
	jmp	.LBB30_29
.LBB30_29:                              # %if.end.129
	movl	$0, -24(%rbp)
.LBB30_30:                              # %for.cond.130
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	-100(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB30_39
# BB#31:                                # %for.body.134
                                        #   in Loop: Header=BB30_30 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB30_33
# BB#32:                                # %cond.true
                                        #   in Loop: Header=BB30_30 Depth=1
	movslq	-24(%rbp), %rax
	movl	-96(%rbp,%rax,4), %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	jmp	.LBB30_34
.LBB30_33:                              # %cond.false
                                        #   in Loop: Header=BB30_30 Depth=1
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movl	-96(%rbp,%rcx,4), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB30_34:                              # %cond.end
                                        #   in Loop: Header=BB30_30 Depth=1
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	movslq	-24(%rbp), %rcx
	movl	-96(%rbp,%rcx,4), %eax
	movl	%eax, -108(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movl	-96(%rbp,%rcx,4), %eax
	movl	%eax, -112(%rbp)
	movl	-24(%rbp), %eax
	movl	-100(%rbp), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jne	.LBB30_36
# BB#35:                                # %cond.true.149
                                        #   in Loop: Header=BB30_30 Depth=1
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movl	-96(%rbp,%rcx,4), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB30_37
.LBB30_36:                              # %cond.false.153
                                        #   in Loop: Header=BB30_30 Depth=1
	movl	-24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movl	-96(%rbp,%rcx,4), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB30_37:                              # %cond.end.157
                                        #   in Loop: Header=BB30_30 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)
	movq	-8(%rbp), %rdi
	movl	-104(%rbp), %esi
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movl	-12(%rbp), %r9d
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	bender_plot_curve
# BB#38:                                # %for.inc.159
                                        #   in Loop: Header=BB30_30 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB30_30
.LBB30_39:                              # %for.end.161
	jmp	.LBB30_40
.LBB30_40:                              # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	bender_calculate_curve, .Lfunc_end30-bender_calculate_curve
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4618441417868443648     # double 6
.LCPI31_1:
	.quad	4611686018427387904     # double 2
.LCPI31_2:
	.quad	4607182418800017408     # double 1
.LCPI31_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	bender_plot_curve,@function
bender_plot_curve:                      # @bender_plot_curve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$736, %rsp              # imm = 0x2E0
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r10d, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	$0, -672(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -672(%rbp)
	jge	.LBB31_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	xorps	%xmm0, %xmm0
	leaq	-176(%rbp), %rax
	movslq	-672(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	%xmm0, 16(%rdx)
	movslq	-672(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movsd	%xmm0, 24(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-672(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -672(%rbp)
	jmp	.LBB31_1
.LBB31_4:                               # %for.end
	movabsq	$CR_basis, %rdi
	leaq	-304(%rbp), %rdx
	leaq	-176(%rbp), %rsi
	xorps	%xmm0, %xmm0
	movsd	.LCPI31_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI31_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI31_2, %xmm3        # xmm3 = mem[0],zero
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %r8
	shlq	$4, %rax
	addq	%rax, %r8
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	movsd	%xmm4, -176(%rbp)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %r8
	shlq	$4, %rax
	addq	%rax, %r8
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	movsd	%xmm4, -144(%rbp)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %r8
	shlq	$4, %rax
	addq	%rax, %r8
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	movsd	%xmm4, -112(%rbp)
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %r8
	shlq	$4, %rax
	addq	%rax, %r8
	movsd	(%r8), %xmm4            # xmm4 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	movsd	%xmm4, -80(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %r8
	shlq	$4, %rax
	addq	%rax, %r8
	movsd	8(%r8), %xmm4           # xmm4 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	movsd	%xmm4, -168(%rbp)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %r8
	shlq	$4, %rax
	addq	%rax, %r8
	movsd	8(%r8), %xmm4           # xmm4 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	movsd	%xmm4, -136(%rbp)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %r8
	shlq	$4, %rax
	addq	%rax, %r8
	movsd	8(%r8), %xmm4           # xmm4 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	movsd	%xmm4, -104(%rbp)
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	76(%rcx), %rcx
	movq	-8(%rbp), %r8
	addq	$104, %r8
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %r8
	shlq	$4, %rax
	addq	%rax, %r8
	movsd	8(%r8), %xmm4           # xmm4 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm5
	mulsd	%xmm5, %xmm4
	movsd	%xmm4, -72(%rbp)
	movl	-28(%rbp), %r9d
	shll	$2, %r9d
	movl	%r9d, -668(%rbp)
	cvtsi2sdl	-668(%rbp), %xmm4
	movaps	%xmm3, %xmm5
	divsd	%xmm4, %xmm5
	movsd	%xmm5, -632(%rbp)
	movsd	-632(%rbp), %xmm4       # xmm4 = mem[0],zero
	mulsd	-632(%rbp), %xmm4
	movsd	%xmm4, -640(%rbp)
	movsd	-632(%rbp), %xmm4       # xmm4 = mem[0],zero
	mulsd	-632(%rbp), %xmm4
	mulsd	-632(%rbp), %xmm4
	movsd	%xmm4, -648(%rbp)
	movsd	%xmm0, -432(%rbp)
	movsd	%xmm0, -424(%rbp)
	movsd	%xmm0, -416(%rbp)
	movsd	%xmm3, -408(%rbp)
	movsd	-648(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm3, -400(%rbp)
	movsd	-640(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm3, -392(%rbp)
	movsd	-632(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	%xmm3, -384(%rbp)
	movsd	%xmm0, -376(%rbp)
	movaps	%xmm1, %xmm3
	mulsd	-648(%rbp), %xmm3
	movsd	%xmm3, -368(%rbp)
	mulsd	-640(%rbp), %xmm2
	movsd	%xmm2, -360(%rbp)
	movsd	%xmm0, -352(%rbp)
	movsd	%xmm0, -344(%rbp)
	mulsd	-648(%rbp), %xmm1
	movsd	%xmm1, -336(%rbp)
	movsd	%xmm0, -328(%rbp)
	movsd	%xmm0, -320(%rbp)
	movsd	%xmm0, -312(%rbp)
	callq	bender_CR_compose
	leaq	-560(%rbp), %rdx
	leaq	-304(%rbp), %rsi
	leaq	-432(%rbp), %rdi
	callq	bender_CR_compose
	movsd	-560(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -568(%rbp)
	movsd	-528(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -576(%rbp)
	movsd	-496(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -584(%rbp)
	movsd	-464(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -592(%rbp)
	movsd	-552(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -600(%rbp)
	movsd	-520(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -608(%rbp)
	movsd	-488(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -616(%rbp)
	movsd	-456(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -624(%rbp)
	movsd	-568(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB31_6
# BB#5:                                 # %cond.true
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
	jmp	.LBB31_10
.LBB31_6:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-568(%rbp), %xmm0
	jbe	.LBB31_8
# BB#7:                                 # %cond.true.155
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	jmp	.LBB31_9
.LBB31_8:                               # %cond.false.156
	movsd	-568(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
.LBB31_9:                               # %cond.end
	movsd	-688(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
.LBB31_10:                              # %cond.end.157
	movsd	-680(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -652(%rbp)
	movsd	-600(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB31_12
# BB#11:                                # %cond.true.163
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	%xmm0, -696(%rbp)       # 8-byte Spill
	jmp	.LBB31_16
.LBB31_12:                              # %cond.false.165
	xorps	%xmm0, %xmm0
	ucomisd	-600(%rbp), %xmm0
	jbe	.LBB31_14
# BB#13:                                # %cond.true.168
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
	jmp	.LBB31_15
.LBB31_14:                              # %cond.false.169
	movsd	-600(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -704(%rbp)       # 8-byte Spill
.LBB31_15:                              # %cond.end.170
	movsd	-704(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -696(%rbp)       # 8-byte Spill
.LBB31_16:                              # %cond.end.172
	movsd	-696(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -656(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB31_18
# BB#17:                                # %if.then
	movl	-656(%rbp), %eax
	movb	%al, %cl
	movslq	-652(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movslq	76(%rsi), %rsi
	movq	-8(%rbp), %rdi
	addq	$648, %rdi              # imm = 0x288
	shlq	$8, %rsi
	addq	%rsi, %rdi
	movb	%cl, (%rdi,%rdx)
	jmp	.LBB31_21
.LBB31_18:                              # %if.else
	movl	-656(%rbp), %eax
	movslq	-652(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	1160(%rsi,%rdx,8), %rdx
	movl	%eax, (%rdx,%rcx,4)
	cmpl	$0, gb_debug
	je	.LBB31_20
# BB#19:                                # %if.then.187
	movabsq	$.L.str.102, %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movb	$0, %al
	callq	printf
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB31_20:                              # %if.end
	jmp	.LBB31_21
.LBB31_21:                              # %if.end.188
	movl	$0, -672(%rbp)
.LBB31_22:                              # %for.cond.189
                                        # =>This Inner Loop Header: Depth=1
	movl	-672(%rbp), %eax
	cmpl	-668(%rbp), %eax
	jge	.LBB31_45
# BB#23:                                # %for.body.192
                                        #   in Loop: Header=BB31_22 Depth=1
	movsd	.LCPI31_3, %xmm0        # xmm0 = mem[0],zero
	movsd	-576(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-568(%rbp), %xmm1
	movsd	%xmm1, -568(%rbp)
	movsd	-584(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-576(%rbp), %xmm1
	movsd	%xmm1, -576(%rbp)
	movsd	-592(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-584(%rbp), %xmm1
	movsd	%xmm1, -584(%rbp)
	movsd	-608(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-600(%rbp), %xmm1
	movsd	%xmm1, -600(%rbp)
	movsd	-616(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-608(%rbp), %xmm1
	movsd	%xmm1, -608(%rbp)
	movsd	-624(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-616(%rbp), %xmm1
	movsd	%xmm1, -616(%rbp)
	addsd	-568(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	-28(%rbp), %eax
	jle	.LBB31_25
# BB#24:                                # %cond.true.202
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB31_29
.LBB31_25:                              # %cond.false.203
                                        #   in Loop: Header=BB31_22 Depth=1
	movsd	.LCPI31_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-568(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	$0, %eax
	jge	.LBB31_27
# BB#26:                                # %cond.true.208
                                        #   in Loop: Header=BB31_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
	jmp	.LBB31_28
.LBB31_27:                              # %cond.false.209
                                        #   in Loop: Header=BB31_22 Depth=1
	movsd	.LCPI31_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-568(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB31_28:                              # %cond.end.212
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-716(%rbp), %eax        # 4-byte Reload
	movl	%eax, -712(%rbp)        # 4-byte Spill
.LBB31_29:                              # %cond.end.214
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-712(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI31_3, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -660(%rbp)
	addsd	-600(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	-32(%rbp), %eax
	jle	.LBB31_31
# BB#30:                                # %cond.true.220
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB31_35
.LBB31_31:                              # %cond.false.221
                                        #   in Loop: Header=BB31_22 Depth=1
	movsd	.LCPI31_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-600(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	$0, %eax
	jge	.LBB31_33
# BB#32:                                # %cond.true.226
                                        #   in Loop: Header=BB31_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jmp	.LBB31_34
.LBB31_33:                              # %cond.false.227
                                        #   in Loop: Header=BB31_22 Depth=1
	movsd	.LCPI31_3, %xmm0        # xmm0 = mem[0],zero
	addsd	-600(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB31_34:                              # %cond.end.230
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-724(%rbp), %eax        # 4-byte Reload
	movl	%eax, -720(%rbp)        # 4-byte Spill
.LBB31_35:                              # %cond.end.232
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-720(%rbp), %eax        # 4-byte Reload
	movl	%eax, -664(%rbp)
	movl	-652(%rbp), %eax
	cmpl	-660(%rbp), %eax
	jne	.LBB31_37
# BB#36:                                # %lor.lhs.false
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-656(%rbp), %eax
	cmpl	-664(%rbp), %eax
	je	.LBB31_43
.LBB31_37:                              # %if.then.238
                                        #   in Loop: Header=BB31_22 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB31_39
# BB#38:                                # %if.then.240
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-664(%rbp), %eax
	movb	%al, %cl
	movslq	-660(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movslq	76(%rsi), %rsi
	movq	-8(%rbp), %rdi
	addq	$648, %rdi              # imm = 0x288
	shlq	$8, %rsi
	addq	%rsi, %rdi
	movb	%cl, (%rdi,%rdx)
	jmp	.LBB31_42
.LBB31_39:                              # %if.else.248
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-664(%rbp), %eax
	movslq	-660(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	76(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	1160(%rsi,%rdx,8), %rdx
	movl	%eax, (%rdx,%rcx,4)
	cmpl	$0, gb_debug
	je	.LBB31_41
# BB#40:                                # %if.then.256
                                        #   in Loop: Header=BB31_22 Depth=1
	movabsq	$.L.str.103, %rdi
	movq	-8(%rbp), %rax
	movl	76(%rax), %esi
	movl	-660(%rbp), %edx
	movl	-664(%rbp), %ecx
	movb	$0, %al
	callq	printf
	movl	%eax, -728(%rbp)        # 4-byte Spill
.LBB31_41:                              # %if.end.259
                                        #   in Loop: Header=BB31_22 Depth=1
	jmp	.LBB31_42
.LBB31_42:                              # %if.end.260
                                        #   in Loop: Header=BB31_22 Depth=1
	jmp	.LBB31_43
.LBB31_43:                              # %if.end.261
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-660(%rbp), %eax
	movl	%eax, -652(%rbp)
	movl	-664(%rbp), %eax
	movl	%eax, -656(%rbp)
# BB#44:                                # %for.inc.262
                                        #   in Loop: Header=BB31_22 Depth=1
	movl	-672(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -672(%rbp)
	jmp	.LBB31_22
.LBB31_45:                              # %for.end.264
	addq	$736, %rsp              # imm = 0x2E0
	popq	%rbp
	retq
.Lfunc_end31:
	.size	bender_plot_curve, .Lfunc_end31-bender_plot_curve
	.cfi_endproc

	.align	16, 0x90
	.type	bender_CR_compose,@function
bender_CR_compose:                      # @bender_CR_compose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB32_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_3 Depth 2
	cmpl	$4, -28(%rbp)
	jge	.LBB32_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$0, -32(%rbp)
.LBB32_3:                               # %for.cond.1
                                        #   Parent Loop BB32_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -32(%rbp)
	jge	.LBB32_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB32_3 Depth=2
	movslq	-28(%rbp), %rax
	shlq	$5, %rax
	addq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	movslq	-28(%rbp), %rax
	shlq	$5, %rax
	addq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	mulsd	32(%rcx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-28(%rbp), %rax
	shlq	$5, %rax
	addq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	mulsd	64(%rcx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-28(%rbp), %rax
	shlq	$5, %rax
	addq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	mulsd	96(%rcx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$5, %rcx
	addq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB32_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB32_3
.LBB32_6:                               # %for.end
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_7
.LBB32_7:                               # %for.inc.35
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB32_1
.LBB32_8:                               # %for.end.37
	popq	%rbp
	retq
.Lfunc_end32:
	.size	bender_CR_compose, .Lfunc_end32-bender_CR_compose
	.cfi_endproc

	.align	16, 0x90
	.type	p_points_load_from_file_response,@function
p_points_load_from_file_response:       # @p_points_load_from_file_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	p_load_pointfile
	movl	$255, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	bender_update
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB33_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	p_points_load_from_file_response, .Lfunc_end33-p_points_load_from_file_response
	.cfi_endproc

	.align	16, 0x90
	.type	p_load_pointfile,@function
p_load_pointfile:                       # @p_load_pointfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$2128, %rsp             # imm = 0x850
	movabsq	$.L.str.106, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.107, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -2080(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-2080(%rbp), %rdi       # 8-byte Reload
	movq	-2088(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB34_22
.LBB34_2:                               # %if.end
	movl	$1999, %esi             # imm = 0x7CF
	leaq	-2048(%rbp), %rdi
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-48(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	jne	.LBB34_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.108, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -2104(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-2096(%rbp), %rdi       # 8-byte Reload
	movq	-2104(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -2108(%rbp)       # 4-byte Spill
	jmp	.LBB34_22
.LBB34_4:                               # %if.end.13
	movabsq	$.L.str.109, %rsi
	movl	$20, %eax
	movl	%eax, %edx
	leaq	-2048(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB34_21
# BB#5:                                 # %if.then.16
	jmp	.LBB34_6
.LBB34_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1999, %esi             # imm = 0x7CF
	leaq	-2048(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	fgets
	xorl	%esi, %esi
	movl	%esi, %edx
	cmpq	%rax, %rdx
	je	.LBB34_20
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB34_6 Depth=1
	movabsq	$.L.str.110, %rsi
	leaq	-2048(%rbp), %rdi
	movl	$6, -40(%rbp)
	movslq	-40(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB34_13
# BB#8:                                 # %if.then.24
                                        #   in Loop: Header=BB34_6 Depth=1
	movabsq	$.L.str.111, %rsi
	leaq	-2052(%rbp), %rdx
	leaq	-2056(%rbp), %rcx
	leaq	-2060(%rbp), %r8
	leaq	-2064(%rbp), %r9
	leaq	-2048(%rbp), %rax
	movslq	-40(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	%eax, -36(%rbp)
	cmpl	$4, -36(%rbp)
	jne	.LBB34_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB34_6 Depth=1
	cmpl	$17, -28(%rbp)
	jge	.LBB34_11
# BB#10:                                # %if.then.30
                                        #   in Loop: Header=BB34_6 Depth=1
	cvtss2sd	-2052(%rbp), %xmm0
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$104, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, (%rcx)
	cvtss2sd	-2056(%rbp), %xmm0
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$104, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, 8(%rcx)
	cvtss2sd	-2060(%rbp), %xmm0
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$104, %rcx
	addq	$272, %rcx              # imm = 0x110
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, (%rcx)
	cvtss2sd	-2064(%rbp), %xmm0
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$104, %rcx
	addq	$272, %rcx              # imm = 0x110
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	%xmm0, 8(%rcx)
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	jmp	.LBB34_12
.LBB34_11:                              # %if.else
                                        #   in Loop: Header=BB34_6 Depth=1
	movabsq	$.L.str.112, %rdi
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	printf
	movl	%eax, -2112(%rbp)       # 4-byte Spill
.LBB34_12:                              # %if.end.55
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_13
.LBB34_13:                              # %if.end.56
                                        #   in Loop: Header=BB34_6 Depth=1
	movabsq	$.L.str.113, %rsi
	leaq	-2048(%rbp), %rdi
	movl	$5, -40(%rbp)
	movslq	-40(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB34_19
# BB#14:                                # %if.then.62
                                        #   in Loop: Header=BB34_6 Depth=1
	movabsq	$.L.str.114, %rsi
	leaq	-2068(%rbp), %rdx
	leaq	-2072(%rbp), %rcx
	leaq	-2048(%rbp), %rax
	movslq	-40(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	%eax, -36(%rbp)
	cmpl	$2, -36(%rbp)
	jne	.LBB34_17
# BB#15:                                # %land.lhs.true.68
                                        #   in Loop: Header=BB34_6 Depth=1
	cmpl	$256, -32(%rbp)         # imm = 0x100
	jge	.LBB34_17
# BB#16:                                # %if.then.71
                                        #   in Loop: Header=BB34_6 Depth=1
	movl	-2068(%rbp), %eax
	movb	%al, %cl
	movslq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%cl, 648(%rsi,%rdx)
	movl	-2072(%rbp), %eax
	movb	%al, %cl
	movslq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%cl, 904(%rsi,%rdx)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB34_18
.LBB34_17:                              # %if.else.82
                                        #   in Loop: Header=BB34_6 Depth=1
	movabsq	$.L.str.115, %rdi
	movl	-32(%rbp), %esi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	printf
	movl	%eax, -2116(%rbp)       # 4-byte Spill
.LBB34_18:                              # %if.end.84
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_19
.LBB34_19:                              # %if.end.85
                                        #   in Loop: Header=BB34_6 Depth=1
	jmp	.LBB34_6
.LBB34_20:                              # %while.end
	jmp	.LBB34_21
.LBB34_21:                              # %if.end.86
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -2120(%rbp)       # 4-byte Spill
.LBB34_22:                              # %return
	movl	-4(%rbp), %eax
	addq	$2128, %rsp             # imm = 0x850
	popq	%rbp
	retq
.Lfunc_end34:
	.size	p_load_pointfile, .Lfunc_end34-p_load_pointfile
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
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
	je	.LBB35_2
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
.LBB35_2:                               # %entry
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
.Lfunc_end35:
	.size	g_message, .Lfunc_end35-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	p_points_save_to_file_response,@function
p_points_save_to_file_response:         # @p_points_save_to_file_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB36_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	p_save_pointfile
	movq	-32(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_free
.LBB36_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	p_points_save_to_file_response, .Lfunc_end36-p_points_save_to_file_response
	.cfi_endproc

	.align	16, 0x90
	.type	p_save_pointfile,@function
p_save_pointfile:                       # @p_save_pointfile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movabsq	$.L.str.118, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.119, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB37_11
.LBB37_2:                               # %if.end
	movabsq	$.L.str.120, %rsi
	movabsq	$.L.str.109, %rdx
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.121, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.122, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.123, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.124, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.125, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -28(%rbp)
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB37_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$17, -28(%rbp)
	jge	.LBB37_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB37_3 Depth=1
	movabsq	$.L.str.126, %rsi
	movabsq	$.L.str.110, %rdx
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$104, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	cvtsd2ss	(%rcx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$104, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	cvtsd2ss	8(%rcx), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$104, %rcx
	addq	$272, %rcx              # imm = 0x110
	shlq	$4, %rax
	addq	%rax, %rcx
	cvtsd2ss	(%rcx), %xmm2
	cvtss2sd	%xmm2, %xmm2
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$104, %rcx
	addq	$272, %rcx              # imm = 0x110
	shlq	$4, %rax
	addq	%rax, %rcx
	cvtsd2ss	8(%rcx), %xmm3
	cvtss2sd	%xmm3, %xmm3
	movb	$4, %al
	callq	fprintf
	movl	%eax, -84(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB37_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB37_3
.LBB37_6:                               # %for.end
	movabsq	$.L.str.125, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.127, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.128, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.129, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.125, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	$0, -28(%rbp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB37_7:                               # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jge	.LBB37_10
# BB#8:                                 # %for.body.44
                                        #   in Loop: Header=BB37_7 Depth=1
	movabsq	$.L.str.130, %rsi
	movabsq	$.L.str.113, %rdx
	movq	-40(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	648(%rcx,%rax), %ecx
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %r8
	movzbl	904(%r8,%rax), %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -108(%rbp)        # 4-byte Spill
# BB#9:                                 # %for.inc.55
                                        #   in Loop: Header=BB37_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB37_7
.LBB37_10:                              # %for.end.57
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB37_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	p_save_pointfile, .Lfunc_end37-p_save_pointfile
	.cfi_endproc

	.align	16, 0x90
	.type	p_init_gdrw,@function
p_init_gdrw:                            # @p_init_gdrw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_new
	movl	$3, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	callq	gimp_tile_width
	movq	-8(%rbp), %rdi
	movl	%eax, 40(%rdi)
	callq	gimp_tile_height
	movq	-8(%rbp), %rdi
	movl	%eax, 44(%rdi)
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	movq	-8(%rbp), %r8
	addq	$8, %r8
	movq	-8(%rbp), %r9
	addq	$12, %r9
	movq	-8(%rbp), %r10
	addq	$16, %r10
	movq	-8(%rbp), %r11
	addq	$20, %r11
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%r10, %rcx
	movq	%r11, %r8
	callq	gimp_drawable_mask_bounds
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edi
	movq	-8(%rbp), %rcx
	movl	%edi, 28(%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB38_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	jmp	.LBB38_3
.LBB38_2:                               # %if.else
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
.LBB38_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	p_init_gdrw, .Lfunc_end38-p_init_gdrw
	.cfi_endproc

	.align	16, 0x90
	.type	p_get_pixel,@function
p_get_pixel:                            # @p_get_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movb	$-1, 1(%rcx)
	movq	-24(%rbp), %rcx
	movb	$-1, 3(%rcx)
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	p_get_pixel, .Lfunc_end39-p_get_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	p_put_pixel,@function
p_put_pixel:                            # @p_put_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	gimp_pixel_fetcher_put_pixel
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	p_put_pixel, .Lfunc_end40-p_put_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	p_end_gdrw,@function
p_end_gdrw:                             # @p_end_gdrw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_pixel_fetcher_destroy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	p_end_gdrw, .Lfunc_end41-p_end_gdrw
	.cfi_endproc

	.align	16, 0x90
	.type	p_render_preview,@function
p_render_preview:                       # @p_render_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_get
	movl	$262144, %esi           # imm = 0x40000
	movl	%esi, %edi
	movl	$1, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -40(%rbp)
	callq	g_malloc_n
	xorl	%ecx, %ecx
	leaq	-104(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	%rsi, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%ecx, %edx
	callq	p_init_gdrw
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	shrl	$1, %ecx
	subl	$128, %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$1, %ecx
	subl	$128, %ecx
	movl	%ecx, -56(%rbp)
	movl	$0, -48(%rbp)
.LBB42_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_3 Depth 2
	cmpl	$256, -48(%rbp)         # imm = 0x100
	jge	.LBB42_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	$0, -44(%rbp)
.LBB42_3:                               # %for.cond.4
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jge	.LBB42_9
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB42_3 Depth=2
	leaq	-16(%rbp), %rcx
	movq	-112(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	-48(%rbp), %edx
	addl	-56(%rbp), %edx
	movl	%eax, %esi
	callq	p_get_pixel
	movq	-8(%rbp), %rcx
	cmpl	$0, 72(%rcx)
	je	.LBB42_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB42_3 Depth=2
	movb	-16(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-15(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-14(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, 2(%rcx)
	jmp	.LBB42_7
.LBB42_6:                               # %if.else
                                        #   in Loop: Header=BB42_3 Depth=2
	movb	-16(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, (%rcx)
	movb	-16(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, 1(%rcx)
	movb	-16(%rbp), %al
	movq	-32(%rbp), %rcx
	movb	%al, 2(%rcx)
.LBB42_7:                               # %if.end
                                        #   in Loop: Header=BB42_3 Depth=2
	movq	-112(%rbp), %rax
	movslq	24(%rax), %rax
	movb	-16(%rbp,%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, 3(%rax)
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB42_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB42_3
.LBB42_9:                               # %for.end
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_10
.LBB42_10:                              # %for.inc.22
                                        #   in Loop: Header=BB42_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB42_1
.LBB42_11:                              # %for.end.24
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
	movl	$1, %r9d
	movl	$1024, %r8d             # imm = 0x400
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	-132(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1024, 8(%rsp)          # imm = 0x400
	callq	gimp_preview_area_draw
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	p_end_gdrw
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	p_render_preview, .Lfunc_end42-p_render_preview
	.cfi_endproc

	.align	16, 0x90
	.type	p_cd_from_bval,@function
p_cd_from_bval:                         # @p_cd_from_bval
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB43_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_3 Depth 2
                                        #     Child Loop BB43_7 Depth 2
	cmpl	$2, -20(%rbp)
	jge	.LBB43_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	$0, -24(%rbp)
.LBB43_3:                               # %for.cond.1
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB43_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB43_3 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	(%rdx,%rax), %sil
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	%sil, (%rdx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB43_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB43_3
.LBB43_6:                               # %for.end
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	$0, -24(%rbp)
.LBB43_7:                               # %for.cond.11
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$17, -24(%rbp)
	jge	.LBB43_10
# BB#8:                                 # %for.body.13
                                        #   in Loop: Header=BB43_7 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$512, %rdx              # imm = 0x200
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, (%rdx)
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$512, %rdx              # imm = 0x200
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, 8(%rdx)
# BB#9:                                 # %for.inc.37
                                        #   in Loop: Header=BB43_7 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB43_7
.LBB43_10:                              # %for.end.39
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_11
.LBB43_11:                              # %for.inc.40
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB43_1
.LBB43_12:                              # %for.end.42
	movq	-16(%rbp), %rax
	movl	1056(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 100(%rax)
	movq	-16(%rbp), %rax
	movl	1060(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 1204(%rax)
	movq	-16(%rbp), %rax
	movl	1064(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 1208(%rax)
	movq	-16(%rbp), %rax
	movl	1068(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 1212(%rax)
	movq	-16(%rbp), %rax
	movsd	1072(%rax), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 1216(%rax)
	popq	%rbp
	retq
.Lfunc_end43:
	.size	p_cd_from_bval, .Lfunc_end43-p_cd_from_bval
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	4640537203540230144     # double 180
.LCPI44_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI44_2:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	p_gimp_rotate,@function
p_gimp_rotate:                          # @p_gimp_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movsd	.LCPI44_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI44_1, %xmm2        # xmm2 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	mulsd	-24(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -32(%rbp)
	callq	gimp_context_push
	cmpl	$0, -12(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jne	.LBB44_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	gimp_context_set_interpolation
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB44_2:                               # %if.end
	xorl	%edi, %edi
	callq	gimp_context_set_transform_resize
	movl	$1, %esi
	movsd	.LCPI44_2, %xmm0        # xmm0 = mem[0],zero
	movl	-8(%rbp), %edi
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_item_transform_rotate
	movl	%eax, -36(%rbp)
	callq	gimp_context_pop
	cmpl	$-1, -36(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jne	.LBB44_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.140, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB44_4:                               # %if.end.6
	movl	-36(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	p_gimp_rotate, .Lfunc_end44-p_gimp_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	p_bender_calculate_iter_curve,@function
p_bender_calculate_iter_curve:          # @p_bender_calculate_iter_curve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	76(%rdi), %edx
	movl	%edx, -24(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 1240(%rdi)
	je	.LBB45_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 1248(%rax)
	je	.LBB45_3
# BB#2:                                 # %lor.lhs.false.2
	movq	-8(%rbp), %rax
	cmpq	$0, 1256(%rax)
	jne	.LBB45_9
.LBB45_3:                               # %if.then
	cmpl	$0, gb_debug
	je	.LBB45_5
# BB#4:                                 # %if.then.4
	movabsq	$.L.str.141, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB45_5:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 100(%rax)
	jne	.LBB45_7
# BB#6:                                 # %if.then.6
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	bender_calculate_curve
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rax
	movl	$1, 76(%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	bender_calculate_curve
	jmp	.LBB45_8
.LBB45_7:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	p_stretch_curves
.LBB45_8:                               # %if.end.9
	jmp	.LBB45_22
.LBB45_9:                               # %if.else.10
	cmpl	$0, gb_debug
	je	.LBB45_11
# BB#10:                                # %if.then.12
	movabsq	$.L.str.142, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB45_11:                              # %if.end.14
	movl	$1, %eax
	movl	%eax, %edi
	movl	$1272, %eax             # imm = 0x4F8
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	1240(%rax), %rsi
	callq	p_cd_from_bval
	movl	$4, %ecx
	movl	%ecx, %esi
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, 1160(%rdi)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$1272, %ecx             # imm = 0x4F8
	movl	%ecx, %esi
	movq	-32(%rbp), %rdx
	movq	%rax, 1168(%rdx)
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	1248(%rax), %rsi
	callq	p_cd_from_bval
	movl	$4, %ecx
	movl	%ecx, %esi
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdx
	movq	%rax, 1160(%rdx)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	-40(%rbp), %rdx
	movq	%rax, 1168(%rdx)
	movq	-32(%rbp), %rax
	cmpl	$0, 100(%rax)
	jne	.LBB45_13
# BB#12:                                # %if.then.38
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	bender_calculate_curve
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rax
	movl	$1, 76(%rax)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	bender_calculate_curve
	jmp	.LBB45_14
.LBB45_13:                              # %if.else.41
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	p_stretch_curves
.LBB45_14:                              # %if.end.42
	movq	-40(%rbp), %rax
	cmpl	$0, 100(%rax)
	jne	.LBB45_16
# BB#15:                                # %if.then.46
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	bender_calculate_curve
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rax
	movl	$1, 76(%rax)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	bender_calculate_curve
	jmp	.LBB45_17
.LBB45_16:                              # %if.else.49
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	p_stretch_curves
.LBB45_17:                              # %if.end.50
	movl	$0, -20(%rbp)
.LBB45_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB45_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB45_18 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	shlq	$2, %rax
	addq	1160(%rcx), %rax
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	1160(%rdx), %rdx
	movl	(%rdx,%rcx,4), %esi
	movslq	-20(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	1160(%rdx), %rdx
	movl	(%rdx,%rcx,4), %edx
	movq	-8(%rbp), %rcx
	movq	1256(%rcx), %rcx
	movl	1080(%rcx), %ecx
	movq	-8(%rbp), %rdi
	movq	1256(%rdi), %rdi
	movsd	1088(%rdi), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	p_delta_gint32
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rdi
	shlq	$2, %rax
	addq	1168(%rdi), %rax
	movslq	-20(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	1168(%r8), %r8
	movl	(%r8,%rdi,4), %esi
	movslq	-20(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	1168(%r8), %r8
	movl	(%r8,%rdi,4), %edx
	movq	-8(%rbp), %rdi
	movq	1256(%rdi), %rdi
	movl	1080(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movq	1256(%rdi), %rdi
	movsd	1088(%rdi), %xmm0       # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	p_delta_gint32
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB45_18 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB45_18
.LBB45_21:                              # %for.end
	movq	-32(%rbp), %rax
	movq	1160(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	1168(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB45_22:                              # %if.end.86
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 76(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	p_bender_calculate_iter_curve, .Lfunc_end45-p_bender_calculate_iter_curve
	.cfi_endproc

	.align	16, 0x90
	.type	bender_init_min_max,@function
bender_init_min_max:                    # @bender_init_min_max
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB46_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_3 Depth 2
	cmpl	$2, -16(%rbp)
	jge	.LBB46_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB46_1 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$65000, 1176(%rcx,%rax,4) # imm = 0xFDE8
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$0, 1184(%rcx,%rax,4)
	movl	$0, -20(%rbp)
.LBB46_3:                               # %for.cond.3
                                        #   Parent Loop BB46_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB46_10
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB46_3 Depth=2
	movslq	-20(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	1160(%rdx,%rcx,8), %rcx
	movl	(%rcx,%rax,4), %esi
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	1184(%rcx,%rax,4), %esi
	jle	.LBB46_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB46_3 Depth=2
	movslq	-20(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	1160(%rdx,%rcx,8), %rcx
	movl	(%rcx,%rax,4), %esi
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%esi, 1184(%rcx,%rax,4)
.LBB46_6:                               # %if.end
                                        #   in Loop: Header=BB46_3 Depth=2
	movslq	-20(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	1160(%rdx,%rcx,8), %rcx
	movl	(%rcx,%rax,4), %esi
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	1176(%rcx,%rax,4), %esi
	jge	.LBB46_8
# BB#7:                                 # %if.then.31
                                        #   in Loop: Header=BB46_3 Depth=2
	movslq	-20(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	1160(%rdx,%rcx,8), %rcx
	movl	(%rcx,%rax,4), %esi
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%esi, 1176(%rcx,%rax,4)
.LBB46_8:                               # %if.end.40
                                        #   in Loop: Header=BB46_3 Depth=2
	jmp	.LBB46_9
.LBB46_9:                               # %for.inc
                                        #   in Loop: Header=BB46_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB46_3
.LBB46_10:                              # %for.end
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_11
.LBB46_11:                              # %for.inc.41
                                        #   in Loop: Header=BB46_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB46_1
.LBB46_12:                              # %for.end.43
	movq	-8(%rbp), %rax
	movq	1160(%rax), %rax
	movl	(%rax), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	1160(%rdx), %rdx
	cmpl	(%rdx,%rax,4), %ecx
	jge	.LBB46_14
# BB#13:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	1160(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	jmp	.LBB46_15
.LBB46_14:                              # %cond.false
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	1160(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -24(%rbp)         # 4-byte Spill
.LBB46_15:                              # %cond.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 1192(%rcx)
	movq	-8(%rbp), %rcx
	movq	1168(%rcx), %rcx
	movl	(%rcx), %eax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	1168(%rdx), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jle	.LBB46_17
# BB#16:                                # %cond.true.68
	movq	-8(%rbp), %rax
	movq	1168(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	jmp	.LBB46_18
.LBB46_17:                              # %cond.false.72
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	1168(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -28(%rbp)         # 4-byte Spill
.LBB46_18:                              # %cond.end.77
	movl	-28(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movl	%eax, 1196(%rcx)
	popq	%rbp
	retq
.Lfunc_end46:
	.size	bender_init_min_max, .Lfunc_end46-bender_init_min_max
	.cfi_endproc

	.align	16, 0x90
	.type	p_upper_curve_extend,@function
p_upper_curve_extend:                   # @p_upper_curve_extend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	1184(%rdi), %edx
	movq	-8(%rbp), %rdi
	subl	1192(%rdi), %edx
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	1188(%rdi), %edx
	movq	-8(%rbp), %rdi
	subl	1196(%rdi), %edx
	subl	-16(%rbp), %edx
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edx
	cmpl	-24(%rbp), %edx
	jle	.LBB47_2
# BB#1:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB47_3
.LBB47_2:                               # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB47_3:                               # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end47:
	.size	p_upper_curve_extend, .Lfunc_end47-p_upper_curve_extend
	.cfi_endproc

	.align	16, 0x90
	.type	p_lower_curve_extend,@function
p_lower_curve_extend:                   # @p_lower_curve_extend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	1196(%rdi), %edx
	movq	-8(%rbp), %rdi
	subl	1180(%rdi), %edx
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	1192(%rdi), %edx
	movq	-8(%rbp), %rdi
	subl	1176(%rdi), %edx
	subl	-16(%rbp), %edx
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edx
	cmpl	-24(%rbp), %edx
	jle	.LBB48_2
# BB#1:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB48_3
.LBB48_2:                               # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB48_3:                               # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end48:
	.size	p_lower_curve_extend, .Lfunc_end48-p_lower_curve_extend
	.cfi_endproc

	.align	16, 0x90
	.type	p_add_layer,@function
p_add_layer:                            # @p_add_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_item_get_image
	movl	%eax, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_drawable_type
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_item_get_visible
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_item_get_name
	movabsq	$.L.str.143, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_layer_get_mode
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_layer_get_opacity
	movsd	%xmm0, -56(%rbp)
	movl	-68(%rbp), %edi
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %r9d
	callq	gimp_layer_new
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	-32(%rbp), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movl	-32(%rbp), %edi
	callq	gimp_layer_add_alpha
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB49_2:                               # %if.end
	movl	-32(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, p_add_layer.l_new_drawable
	cmpq	$0, p_add_layer.l_new_drawable
	jne	.LBB49_4
# BB#3:                                 # %if.then.17
	movabsq	$.L.str.144, %rdi
	movb	$0, %al
	callq	g_printerr
	movq	$0, -8(%rbp)
	jmp	.LBB49_5
.LBB49_4:                               # %if.end.18
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-68(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-72(%rbp), %ecx
	callq	gimp_image_insert_layer
	movl	-32(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_item_set_visible
	movq	p_add_layer.l_new_drawable, %r8
	movq	%r8, -8(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB49_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	p_add_layer, .Lfunc_end49-p_add_layer
	.cfi_endproc

	.align	16, 0x90
	.type	p_clear_drawable,@function
p_clear_drawable:                       # @p_clear_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-56(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %r8d
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %r9d
	movq	%rax, %rdi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-56(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -64(%rbp)
.LBB50_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_3 Depth 2
	cmpq	$0, -64(%rbp)
	je	.LBB50_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -68(%rbp)
.LBB50_3:                               # %for.cond.1
                                        #   Parent Loop BB50_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB50_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB50_3 Depth=2
	xorl	%esi, %esi
	movq	-80(%rbp), %rdi
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memset
	movl	-36(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB50_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB50_3
.LBB50_6:                               # %for.end
                                        #   in Loop: Header=BB50_1 Depth=1
	jmp	.LBB50_7
.LBB50_7:                               # %for.inc.4
                                        #   in Loop: Header=BB50_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -64(%rbp)
	jmp	.LBB50_1
.LBB50_8:                               # %for.end.6
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	p_clear_drawable, .Lfunc_end50-p_clear_drawable
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI51_0:
	.quad	4607182418800017408     # double 1
.LCPI51_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	p_vertical_bend,@function
p_vertical_bend:                        # @p_vertical_bend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	4(%rdx), %esi
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	8(%rdx), %edx
	callq	p_upper_curve_extend
	movl	$8, %edx
	movl	%edx, %esi
	movl	%eax, -108(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -104(%rbp)
	movq	-16(%rbp), %rdi
	movslq	16(%rdi), %rdi
	callq	g_malloc_n
	movl	$8, %edx
	movl	%edx, %esi
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rdi
	callq	g_malloc_n
	xorps	%xmm0, %xmm0
	movsd	.LCPI51_0, %xmm1        # xmm1 = mem[0],zero
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movq	-16(%rbp), %rsi
	cltd
	idivl	44(%rsi)
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rsi
	movl	20(%rsi), %eax
	movq	-16(%rbp), %rsi
	cltd
	idivl	44(%rsi)
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %eax
	movq	-16(%rbp), %rsi
	cltd
	idivl	40(%rsi)
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rsi
	movl	16(%rsi), %eax
	movq	-16(%rbp), %rsi
	cltd
	idivl	40(%rsi)
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	subl	-36(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	$1, %ecx
	subl	-40(%rbp), %ecx
	imull	%ecx, %eax
	cvtsi2ssl	%eax, %xmm2
	movss	%xmm2, -116(%rbp)
	cvtss2sd	-116(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -112(%rbp)
	movss	%xmm0, -120(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 1200(%rsi)
	je	.LBB51_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.65, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB51_2:                               # %if.end
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB51_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_5 Depth 2
                                        #       Child Loop BB51_15 Depth 3
                                        #         Child Loop BB51_23 Depth 4
                                        #           Child Loop BB51_66 Depth 5
                                        #           Child Loop BB51_81 Depth 5
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.LBB51_103
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB51_3 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB51_5:                               # %for.cond.21
                                        #   Parent Loop BB51_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB51_15 Depth 3
                                        #         Child Loop BB51_23 Depth 4
                                        #           Child Loop BB51_66 Depth 5
                                        #           Child Loop BB51_81 Depth 5
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB51_101
# BB#6:                                 # %for.body.24
                                        #   in Loop: Header=BB51_5 Depth=2
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB51_8
# BB#7:                                 # %if.then.27
                                        #   in Loop: Header=BB51_5 Depth=2
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB51_9
.LBB51_8:                               # %if.else
                                        #   in Loop: Header=BB51_5 Depth=2
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	40(%rcx), %eax
	movl	%eax, -52(%rbp)
.LBB51_9:                               # %if.end.31
                                        #   in Loop: Header=BB51_5 Depth=2
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB51_11
# BB#10:                                # %if.then.34
                                        #   in Loop: Header=BB51_5 Depth=2
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB51_12
.LBB51_11:                              # %if.else.36
                                        #   in Loop: Header=BB51_5 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	imull	40(%rcx), %eax
	movl	%eax, -60(%rbp)
.LBB51_12:                              # %if.end.40
                                        #   in Loop: Header=BB51_5 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$0, 1200(%rax)
	je	.LBB51_14
# BB#13:                                # %if.then.43
                                        #   in Loop: Header=BB51_5 Depth=2
	movss	-112(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-120(%rbp), %xmm0
	movss	%xmm0, -120(%rbp)
	cvtss2sd	%xmm0, %xmm0
	callq	gimp_progress_update
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB51_14:                              # %if.end.47
                                        #   in Loop: Header=BB51_5 Depth=2
	jmp	.LBB51_15
.LBB51_15:                              # %for.cond.48
                                        #   Parent Loop BB51_3 Depth=1
                                        #     Parent Loop BB51_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB51_23 Depth 4
                                        #           Child Loop BB51_66 Depth 5
                                        #           Child Loop BB51_81 Depth 5
	movl	-52(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB51_99
# BB#16:                                # %for.body.51
                                        #   in Loop: Header=BB51_15 Depth=3
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB51_18
# BB#17:                                # %if.then.54
                                        #   in Loop: Header=BB51_15 Depth=3
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB51_19
.LBB51_18:                              # %if.else.56
                                        #   in Loop: Header=BB51_15 Depth=3
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	44(%rcx), %eax
	movl	%eax, -56(%rbp)
.LBB51_19:                              # %if.end.59
                                        #   in Loop: Header=BB51_15 Depth=3
	movl	-28(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB51_21
# BB#20:                                # %if.then.62
                                        #   in Loop: Header=BB51_15 Depth=3
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB51_22
.LBB51_21:                              # %if.else.64
                                        #   in Loop: Header=BB51_15 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	imull	44(%rcx), %eax
	movl	%eax, -64(%rbp)
.LBB51_22:                              # %if.end.68
                                        #   in Loop: Header=BB51_15 Depth=3
	jmp	.LBB51_23
.LBB51_23:                              # %for.cond.69
                                        #   Parent Loop BB51_3 Depth=1
                                        #     Parent Loop BB51_5 Depth=2
                                        #       Parent Loop BB51_15 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB51_66 Depth 5
                                        #           Child Loop BB51_81 Depth 5
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB51_97
# BB#24:                                # %for.body.72
                                        #   in Loop: Header=BB51_23 Depth=4
	leaq	-140(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	p_get_pixel
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx), %edx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	8(%rcx), %ecx
	cvtsi2sdl	-56(%rbp), %xmm0
	callq	p_curve_get_dy
	movl	%eax, -68(%rbp)
	movl	-56(%rbp), %eax
	addl	-108(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 1204(%rdi)
	je	.LBB51_31
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB51_23 Depth=4
	cmpl	$0, -52(%rbp)
	jle	.LBB51_31
# BB#26:                                # %if.then.84
                                        #   in Loop: Header=BB51_23 Depth=4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx), %edx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	8(%rcx), %ecx
	cvtsi2sdl	-56(%rbp), %xmm0
	movl	%eax, %esi
	callq	p_curve_get_dy
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB51_29
# BB#27:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB51_23 Depth=4
	cmpl	$1, -52(%rbp)
	jle	.LBB51_29
# BB#28:                                # %if.then.97
                                        #   in Loop: Header=BB51_23 Depth=4
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %eax
	subl	$2, %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx), %edx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	8(%rcx), %ecx
	cvtsi2sdl	-56(%rbp), %xmm0
	movl	%eax, %esi
	callq	p_curve_get_dy
	movl	%eax, -76(%rbp)
	jmp	.LBB51_30
.LBB51_29:                              # %if.else.105
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB51_30:                              # %if.end.106
                                        #   in Loop: Header=BB51_23 Depth=4
	leaq	-140(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-80(%rbp), %edx
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	-68(%rbp), %eax
	movl	%eax, (%rsp)
	callq	p_put_mix_pixel
	jmp	.LBB51_32
.LBB51_31:                              # %if.else.108
                                        #   in Loop: Header=BB51_23 Depth=4
	leaq	-140(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-80(%rbp), %edx
	callq	p_put_pixel
.LBB51_32:                              # %if.end.110
                                        #   in Loop: Header=BB51_23 Depth=4
	movq	-8(%rbp), %rax
	cmpl	$0, 1208(%rax)
	je	.LBB51_74
# BB#33:                                # %if.then.112
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-80(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB51_43
# BB#34:                                # %if.then.116
                                        #   in Loop: Header=BB51_23 Depth=4
	leaq	-140(%rbp), %rax
	movl	-68(%rbp), %ecx
	movslq	-52(%rbp), %rdx
	movq	-136(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,8)
	movslq	-52(%rbp), %rdx
	shlq	$3, %rdx
	addq	-136(%rbp), %rdx
	addq	$4, %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	12(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	cmpl	$0, -52(%rbp)
	jle	.LBB51_42
# BB#35:                                # %if.then.124
                                        #   in Loop: Header=BB51_23 Depth=4
	leaq	-144(%rbp), %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	-136(%rbp), %rdx
	addq	$4, %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	12(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-136(%rbp), %rdx
	movl	(%rdx,%rax,8), %ecx
	subl	-68(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-136(%rbp), %rsi
	movl	(%rsi,%rdx,8), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB51_37
# BB#36:                                # %cond.true
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movl	(%rdx,%rcx,8), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB51_38
.LBB51_37:                              # %cond.false
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-68(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB51_38:                              # %cond.end
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movl	(%rdx,%rcx,8), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB51_40
# BB#39:                                # %cond.true.156
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movl	(%rdx,%rcx,8), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB51_41
.LBB51_40:                              # %cond.false.161
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-68(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB51_41:                              # %cond.end.162
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-208(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %eax
	subl	$1, %eax
	addl	-108(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	4(%rcx), %edx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	8(%rcx), %ecx
	movq	-16(%rbp), %r8
	movl	20(%r8), %r9d
	subl	$1, %r9d
	cvtsi2sdl	%r9d, %xmm0
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	p_curve_get_dy
	movl	-212(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -84(%rbp)
.LBB51_42:                              # %if.end.177
                                        #   in Loop: Header=BB51_23 Depth=4
	jmp	.LBB51_43
.LBB51_43:                              # %if.end.178
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB51_53
# BB#44:                                # %if.then.183
                                        #   in Loop: Header=BB51_23 Depth=4
	cmpl	$0, -52(%rbp)
	jle	.LBB51_52
# BB#45:                                # %if.then.186
                                        #   in Loop: Header=BB51_23 Depth=4
	leaq	-144(%rbp), %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	addq	-128(%rbp), %rdx
	addq	$4, %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	12(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-128(%rbp), %rdx
	movl	(%rdx,%rax,8), %ecx
	subl	-68(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-128(%rbp), %rsi
	movl	(%rsi,%rdx,8), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB51_47
# BB#46:                                # %cond.true.207
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movl	(%rdx,%rcx,8), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB51_48
.LBB51_47:                              # %cond.false.212
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-68(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB51_48:                              # %cond.end.213
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-228(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movl	(%rdx,%rcx,8), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB51_50
# BB#49:                                # %cond.true.222
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movl	(%rdx,%rcx,8), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB51_51
.LBB51_50:                              # %cond.false.227
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-68(%rbp), %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB51_51:                              # %cond.end.228
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-232(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)
.LBB51_52:                              # %if.end.231
                                        #   in Loop: Header=BB51_23 Depth=4
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	addl	-108(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %r8d
	movq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm0
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	callq	p_curve_get_dy
	movl	-236(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -84(%rbp)
.LBB51_53:                              # %if.end.242
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB51_55
# BB#54:                                # %if.then.245
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	$1, -148(%rbp)
	jmp	.LBB51_59
.LBB51_55:                              # %if.else.246
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-80(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.LBB51_57
# BB#56:                                # %if.then.249
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	$-1, -148(%rbp)
	jmp	.LBB51_58
.LBB51_57:                              # %if.else.250
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	$0, -148(%rbp)
.LBB51_58:                              # %if.end.251
                                        #   in Loop: Header=BB51_23 Depth=4
	jmp	.LBB51_59
.LBB51_59:                              # %if.end.252
                                        #   in Loop: Header=BB51_23 Depth=4
	cmpl	$0, -148(%rbp)
	je	.LBB51_73
# BB#60:                                # %if.then.255
                                        #   in Loop: Header=BB51_23 Depth=4
	movb	$20, -150(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB51_65
# BB#61:                                # %if.then.259
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	$20, %eax
	movq	-16(%rbp), %rcx
	movslq	24(%rcx), %rcx
	movzbl	-144(%rbp,%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB51_63
# BB#62:                                # %cond.true.265
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	$20, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB51_64
.LBB51_63:                              # %cond.false.266
                                        #   in Loop: Header=BB51_23 Depth=4
	movq	-16(%rbp), %rax
	movslq	24(%rax), %rax
	movzbl	-144(%rbp,%rax), %ecx
	movl	%ecx, -240(%rbp)        # 4-byte Spill
.LBB51_64:                              # %cond.end.271
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-240(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -150(%rbp)
.LBB51_65:                              # %if.end.274
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	$0, -100(%rbp)
.LBB51_66:                              # %for.cond.275
                                        #   Parent Loop BB51_3 Depth=1
                                        #     Parent Loop BB51_5 Depth=2
                                        #       Parent Loop BB51_15 Depth=3
                                        #         Parent Loop BB51_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB51_72
# BB#67:                                # %for.body.278
                                        #   in Loop: Header=BB51_66 Depth=5
	movl	$255, %eax
	movl	-100(%rbp), %ecx
	incl	%ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-104(%rbp), %ecx
	incl	%ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI51_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -149(%rbp)
	movq	-24(%rbp), %rsi
	movslq	24(%rsi), %rsi
	movzbl	-140(%rbp,%rsi), %ecx
	movzbl	-149(%rbp), %edi
	imull	%edi, %ecx
	movzbl	-150(%rbp), %edi
	movzbl	-149(%rbp), %r8d
	movl	%eax, %r9d
	subl	%r8d, %r9d
	imull	%r9d, %edi
	addl	%edi, %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-244(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r10b
	movq	-24(%rbp), %rsi
	movslq	24(%rsi), %rsi
	movb	%r10b, -144(%rbp,%rsi)
	cmpl	$0, -148(%rbp)
	jle	.LBB51_69
# BB#68:                                # %if.then.304
                                        #   in Loop: Header=BB51_66 Depth=5
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	-56(%rbp), %edx
	addl	-108(%rbp), %edx
	addl	-88(%rbp), %edx
	addl	-100(%rbp), %edx
	movl	%eax, %esi
	callq	p_put_pixel
	jmp	.LBB51_70
.LBB51_69:                              # %if.else.310
                                        #   in Loop: Header=BB51_66 Depth=5
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	-56(%rbp), %edx
	addl	-108(%rbp), %edx
	movl	-92(%rbp), %esi
	subl	-100(%rbp), %esi
	addl	%esi, %edx
	movl	%eax, %esi
	callq	p_put_pixel
.LBB51_70:                              # %if.end.316
                                        #   in Loop: Header=BB51_66 Depth=5
	jmp	.LBB51_71
.LBB51_71:                              # %for.inc
                                        #   in Loop: Header=BB51_66 Depth=5
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB51_66
.LBB51_72:                              # %for.end
                                        #   in Loop: Header=BB51_23 Depth=4
	jmp	.LBB51_73
.LBB51_73:                              # %if.end.317
                                        #   in Loop: Header=BB51_23 Depth=4
	jmp	.LBB51_74
.LBB51_74:                              # %if.end.318
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB51_76
# BB#75:                                # %if.then.322
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	$0, -104(%rbp)
	movl	$1, -96(%rbp)
	jmp	.LBB51_80
.LBB51_76:                              # %if.else.323
                                        #   in Loop: Header=BB51_23 Depth=4
	movslq	-52(%rbp), %rax
	movq	-128(%rbp), %rcx
	movl	(%rcx,%rax,8), %edx
	subl	-68(%rbp), %edx
	movl	%edx, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jge	.LBB51_78
# BB#77:                                # %if.then.330
                                        #   in Loop: Header=BB51_23 Depth=4
	xorl	%eax, %eax
	subl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	$-1, -96(%rbp)
	jmp	.LBB51_79
.LBB51_78:                              # %if.else.332
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	$1, -96(%rbp)
.LBB51_79:                              # %if.end.333
                                        #   in Loop: Header=BB51_23 Depth=4
	leaq	-140(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	12(%rdx), %esi
	movl	%esi, %edx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
.LBB51_80:                              # %if.end.337
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	$1, -100(%rbp)
.LBB51_81:                              # %for.cond.338
                                        #   Parent Loop BB51_3 Depth=1
                                        #     Parent Loop BB51_5 Depth=2
                                        #       Parent Loop BB51_15 Depth=3
                                        #         Parent Loop BB51_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jg	.LBB51_95
# BB#82:                                # %for.body.341
                                        #   in Loop: Header=BB51_81 Depth=5
	movq	-8(%rbp), %rax
	cmpl	$0, 1204(%rax)
	je	.LBB51_86
# BB#83:                                # %if.then.344
                                        #   in Loop: Header=BB51_81 Depth=5
	movl	$255, %eax
	movl	%eax, %ecx
	movl	$255, %eax
	movslq	-52(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movzbl	7(%rsi,%rdx,8), %edi
	movl	%edi, %edx
	movq	%rdx, -160(%rbp)
	movzbl	-137(%rbp), %edi
	movl	%edi, %edx
	movq	%rdx, -168(%rbp)
	cvtsi2sdl	-100(%rbp), %xmm0
	movl	-104(%rbp), %edi
	incl	%edi
	cvtsi2sdl	%edi, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LCPI51_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	movb	%dil, %r8b
	movb	%r8b, -149(%rbp)
	movq	-160(%rbp), %rdx
	movzbl	-149(%rbp), %edi
	movl	%edi, %esi
	imulq	%rsi, %rdx
	movq	-168(%rbp), %rsi
	movzbl	-149(%rbp), %edi
	subl	%edi, %eax
	movslq	%eax, %r9
	imulq	%r9, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -176(%rbp)
	movq	-176(%rbp), %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	%rcx
	movb	%al, %r8b
	movb	%r8b, -141(%rbp)
	cmpb	$0, -141(%rbp)
	je	.LBB51_85
# BB#84:                                # %if.then.370
                                        #   in Loop: Header=BB51_81 Depth=5
	movl	$255, %eax
	movq	-160(%rbp), %rcx
	movzbl	-149(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	movslq	-52(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movzbl	4(%rdi,%rsi,8), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	movq	-168(%rbp), %rsi
	movzbl	-149(%rbp), %edx
	movl	%eax, %r8d
	subl	%edx, %r8d
	movslq	%r8d, %rdi
	imulq	%rdi, %rsi
	movzbl	-140(%rbp), %edx
	movl	%edx, %edi
	imulq	%rdi, %rsi
	addq	%rsi, %rcx
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	-176(%rbp)
	movb	%al, %r9b
	movb	%r9b, -144(%rbp)
	movq	-160(%rbp), %rax
	movzbl	-149(%rbp), %r8d
	movl	%r8d, %ecx
	imulq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movq	-128(%rbp), %rsi
	movzbl	5(%rsi,%rcx,8), %r8d
	movl	%r8d, %ecx
	imulq	%rcx, %rax
	movq	-168(%rbp), %rcx
	movzbl	-149(%rbp), %r8d
	movl	-248(%rbp), %r10d       # 4-byte Reload
	subl	%r8d, %r10d
	movslq	%r10d, %rsi
	imulq	%rsi, %rcx
	movzbl	-139(%rbp), %r8d
	movl	%r8d, %esi
	imulq	%rsi, %rcx
	addq	%rcx, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divq	-176(%rbp)
	movb	%al, %r9b
	movb	%r9b, -143(%rbp)
	movq	-160(%rbp), %rax
	movzbl	-149(%rbp), %r8d
	movl	%r8d, %ecx
	imulq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movq	-128(%rbp), %rsi
	movzbl	6(%rsi,%rcx,8), %r8d
	movl	%r8d, %ecx
	imulq	%rcx, %rax
	movq	-168(%rbp), %rcx
	movzbl	-149(%rbp), %r8d
	movl	-248(%rbp), %r10d       # 4-byte Reload
	subl	%r8d, %r10d
	movslq	%r10d, %rsi
	imulq	%rsi, %rcx
	movzbl	-138(%rbp), %r8d
	movl	%r8d, %esi
	imulq	%rsi, %rcx
	addq	%rcx, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divq	-176(%rbp)
	movb	%al, %r9b
	movb	%r9b, -142(%rbp)
.LBB51_85:                              # %if.end.428
                                        #   in Loop: Header=BB51_81 Depth=5
	jmp	.LBB51_90
.LBB51_86:                              # %if.else.429
                                        #   in Loop: Header=BB51_81 Depth=5
	movl	$2, %eax
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %edx
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-252(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB51_88
# BB#87:                                # %if.then.433
                                        #   in Loop: Header=BB51_81 Depth=5
	leaq	-140(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	12(%rdx), %esi
	movl	%esi, %edx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB51_89
.LBB51_88:                              # %if.else.437
                                        #   in Loop: Header=BB51_81 Depth=5
	leaq	-144(%rbp), %rax
	movslq	-52(%rbp), %rcx
	shlq	$3, %rcx
	addq	-128(%rbp), %rcx
	addq	$4, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	12(%rdx), %esi
	movl	%esi, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB51_89:                              # %if.end.444
                                        #   in Loop: Header=BB51_81 Depth=5
	jmp	.LBB51_90
.LBB51_90:                              # %if.end.445
                                        #   in Loop: Header=BB51_81 Depth=5
	movq	-8(%rbp), %rax
	cmpl	$0, 1204(%rax)
	je	.LBB51_92
# BB#91:                                # %if.then.448
                                        #   in Loop: Header=BB51_81 Depth=5
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-80(%rbp), %eax
	movl	-100(%rbp), %edx
	imull	-96(%rbp), %edx
	addl	%edx, %eax
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	-68(%rbp), %edx
	movl	%edx, -256(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	p_put_mix_pixel
	jmp	.LBB51_93
.LBB51_92:                              # %if.else.452
                                        #   in Loop: Header=BB51_81 Depth=5
	leaq	-144(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-80(%rbp), %eax
	movl	-100(%rbp), %edx
	imull	-96(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, %edx
	callq	p_put_pixel
.LBB51_93:                              # %if.end.456
                                        #   in Loop: Header=BB51_81 Depth=5
	jmp	.LBB51_94
.LBB51_94:                              # %for.inc.457
                                        #   in Loop: Header=BB51_81 Depth=5
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB51_81
.LBB51_95:                              # %for.end.459
                                        #   in Loop: Header=BB51_23 Depth=4
	leaq	-140(%rbp), %rax
	movl	-68(%rbp), %ecx
	movslq	-52(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,8)
	movslq	-52(%rbp), %rdx
	shlq	$3, %rdx
	addq	-128(%rbp), %rdx
	addq	$4, %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	12(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#96:                                # %for.inc.469
                                        #   in Loop: Header=BB51_23 Depth=4
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB51_23
.LBB51_97:                              # %for.end.471
                                        #   in Loop: Header=BB51_15 Depth=3
	jmp	.LBB51_98
.LBB51_98:                              # %for.inc.472
                                        #   in Loop: Header=BB51_15 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB51_15
.LBB51_99:                              # %for.end.474
                                        #   in Loop: Header=BB51_5 Depth=2
	jmp	.LBB51_100
.LBB51_100:                             # %for.inc.475
                                        #   in Loop: Header=BB51_5 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB51_5
.LBB51_101:                             # %for.end.477
                                        #   in Loop: Header=BB51_3 Depth=1
	jmp	.LBB51_102
.LBB51_102:                             # %for.inc.478
                                        #   in Loop: Header=BB51_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB51_3
.LBB51_103:                             # %for.end.480
	movsd	.LCPI51_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-128(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end51:
	.size	p_vertical_bend, .Lfunc_end51-p_vertical_bend
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI52_0:
	.quad	4602678819172646912     # double 0.5
.LCPI52_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	p_stretch_curves,@function
p_stretch_curves:                       # @p_stretch_curves
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -52(%rbp)
.LBB52_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_3 Depth 2
	cmpl	$2, -52(%rbp)
	jge	.LBB52_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	$0, -20(%rbp)
.LBB52_3:                               # %for.cond.1
                                        #   Parent Loop BB52_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB52_10
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB52_3 Depth=2
	imull	$255, -20(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%eax, -24(%rbp)
	cmpl	$255, -12(%rbp)
	jg	.LBB52_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB52_3 Depth=2
	cmpl	$255, -24(%rbp)
	jge	.LBB52_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB52_3 Depth=2
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movl	$255, %eax
	movslq	-24(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$648, %rsi              # imm = 0x288
	shlq	$8, %rdx
	addq	%rdx, %rsi
	movzbl	(%rsi,%rcx), %edi
	imull	-16(%rbp), %edi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-56(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movslq	-20(%rbp), %rcx
	movslq	-52(%rbp), %rsi
	movq	-8(%rbp), %r8
	movq	1160(%r8,%rsi,8), %rsi
	movl	%eax, (%rsi,%rcx,4)
	jmp	.LBB52_8
.LBB52_7:                               # %if.else
                                        #   in Loop: Header=BB52_3 Depth=2
	movsd	.LCPI52_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI52_1, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm2
	movsd	.LCPI52_1(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	cvtsi2sdl	-12(%rbp), %xmm3
	divsd	%xmm3, %xmm2
	cvtsi2sdl	-24(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm2, -48(%rbp)
	movslq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movzbl	648(%rax,%rdx), %esi
	cvtsi2sdl	%esi, %xmm2
	movsd	%xmm2, -32(%rbp)
	movl	-24(%rbp), %esi
	incl	%esi
	movslq	%esi, %rax
	movslq	-52(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movzbl	648(%rax,%rdx), %esi
	cvtsi2sdl	%esi, %xmm2
	movsd	%xmm2, -40(%rbp)
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	-32(%rbp), %xmm3
	mulsd	-48(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	cvtsi2sdl	-16(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %esi
	movslq	-20(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	1160(%rdx,%rcx,8), %rcx
	movl	%esi, (%rcx,%rax,4)
.LBB52_8:                               # %if.end
                                        #   in Loop: Header=BB52_3 Depth=2
	jmp	.LBB52_9
.LBB52_9:                               # %for.inc
                                        #   in Loop: Header=BB52_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB52_3
.LBB52_10:                              # %for.end
                                        #   in Loop: Header=BB52_1 Depth=1
	jmp	.LBB52_11
.LBB52_11:                              # %for.inc.47
                                        #   in Loop: Header=BB52_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB52_1
.LBB52_12:                              # %for.end.49
	popq	%rbp
	retq
.Lfunc_end52:
	.size	p_stretch_curves, .Lfunc_end52-p_stretch_curves
	.cfi_endproc

	.align	16, 0x90
	.type	p_delta_gint32,@function
p_delta_gint32:                         # @p_delta_gint32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	cmpl	$1, -20(%rbp)
	jge	.LBB53_2
# BB#1:                                 # %if.then
	jmp	.LBB53_3
.LBB53_2:                               # %if.end
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	subsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB53_3:                               # %return
	popq	%rbp
	retq
.Lfunc_end53:
	.size	p_delta_gint32, .Lfunc_end53-p_delta_gint32
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI54_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	p_curve_get_dy,@function
p_curve_get_dy:                         # @p_curve_get_dy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	1192(%rdi), %ecx
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	1160(%rax), %rax
	subl	(%rax,%rdi,4), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	1196(%rax), %ecx
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	1168(%rdi), %rdi
	subl	(%rdi,%rax,4), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm0
	mulsd	-32(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	ucomisd	%xmm0, %xmm1
	jbe	.LBB54_2
# BB#1:                                 # %cond.true
	movsd	.LCPI54_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	jmp	.LBB54_3
.LBB54_2:                               # %cond.false
	movsd	.LCPI54_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
.LBB54_3:                               # %cond.end
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	popq	%rbp
	retq
.Lfunc_end54:
	.size	p_curve_get_dy, .Lfunc_end54-p_curve_get_dy
	.cfi_endproc

	.align	16, 0x90
	.type	p_put_mix_pixel,@function
p_put_mix_pixel:                        # @p_put_mix_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	movb	$-97, -41(%rbp)
	movl	-28(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB55_4
# BB#1:                                 # %if.then
	movb	$-49, -41(%rbp)
	movl	-32(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB55_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	p_put_pixel
	jmp	.LBB55_11
.LBB55_3:                               # %if.end
	jmp	.LBB55_4
.LBB55_4:                               # %if.end.5
	leaq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %edx
	movl	%eax, %esi
	callq	p_get_pixel
	movq	-8(%rbp), %rcx
	movslq	24(%rcx), %rcx
	movzbl	-40(%rbp,%rcx), %eax
	cmpl	$10, %eax
	jge	.LBB55_6
# BB#5:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	p_put_pixel
	jmp	.LBB55_11
.LBB55_6:                               # %if.end.11
	movl	$0, -48(%rbp)
.LBB55_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB55_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB55_7 Depth=1
	movl	$255, %eax
	movslq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movzbl	-41(%rbp), %edi
	imull	%edi, %esi
	movslq	-48(%rbp), %rcx
	movzbl	-40(%rbp,%rcx), %edi
	movzbl	-41(%rbp), %r8d
	movl	%eax, %r9d
	subl	%r8d, %r9d
	imull	%r9d, %edi
	addl	%edi, %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-56(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %r10b
	movslq	-48(%rbp), %rcx
	movb	%r10b, -40(%rbp,%rcx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB55_7 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB55_7
.LBB55_10:                              # %for.end
	leaq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movslq	24(%rax), %rax
	movq	-24(%rbp), %rdx
	movb	(%rdx,%rax), %sil
	movq	-8(%rbp), %rax
	movslq	24(%rax), %rax
	movb	%sil, -40(%rbp,%rax)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	p_put_pixel
.LBB55_11:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	p_put_mix_pixel, .Lfunc_end55-p_put_mix_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	p_cd_to_bval,@function
p_cd_to_bval:                           # @p_cd_to_bval
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB56_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_3 Depth 2
                                        #     Child Loop BB56_7 Depth 2
	cmpl	$2, -20(%rbp)
	jge	.LBB56_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	$0, -24(%rbp)
.LBB56_3:                               # %for.cond.1
                                        #   Parent Loop BB56_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -24(%rbp)         # imm = 0x100
	jge	.LBB56_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB56_3 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$648, %rdx              # imm = 0x288
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	(%rdx,%rax), %sil
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	shlq	$8, %rcx
	addq	%rcx, %rdx
	movb	%sil, (%rdx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB56_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB56_3
.LBB56_6:                               # %for.end
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	$0, -24(%rbp)
.LBB56_7:                               # %for.cond.11
                                        #   Parent Loop BB56_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$17, -24(%rbp)
	jge	.LBB56_10
# BB#8:                                 # %for.body.13
                                        #   in Loop: Header=BB56_7 Depth=2
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$512, %rdx              # imm = 0x200
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, (%rdx)
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$104, %rdx
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$512, %rdx              # imm = 0x200
	imulq	$272, %rcx, %rcx        # imm = 0x110
	addq	%rcx, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, 8(%rdx)
# BB#9:                                 # %for.inc.37
                                        #   in Loop: Header=BB56_7 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB56_7
.LBB56_10:                              # %for.end.39
                                        #   in Loop: Header=BB56_1 Depth=1
	jmp	.LBB56_11
.LBB56_11:                              # %for.inc.40
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB56_1
.LBB56_12:                              # %for.end.42
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	100(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 1056(%rax)
	movq	-8(%rbp), %rax
	movl	1204(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 1060(%rax)
	movq	-8(%rbp), %rax
	movl	1208(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 1064(%rax)
	movq	-8(%rbp), %rax
	movl	1212(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 1068(%rax)
	movq	-8(%rbp), %rax
	movsd	1216(%rax), %xmm1       # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm1, 1072(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 1080(%rax)
	movq	-16(%rbp), %rax
	movsd	%xmm0, 1088(%rax)
	popq	%rbp
	retq
.Lfunc_end56:
	.size	p_cd_to_bval, .Lfunc_end56-p_cd_to_bval
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

	.type	query.args,@object      # @query.args
	.align	16
query.args:
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.17
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.17
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.17
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.29
	.quad	.L.str.30
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.31
	.quad	.L.str.28
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.32
	.quad	.L.str.30
	.size	query.args, 480

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
	.asciz	"Input drawable (must be a layer without layermask)"
	.size	.L.str.5, 51

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"rotation"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Direction {angle 0 to 360 degree } of the bend effect"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"smoothing"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Smoothing { TRUE, FALSE }"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"antialias"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Antialias { TRUE, FALSE }"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"work-on-copy"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"{ TRUE, FALSE } TRUE: copy the drawable and bend the copy"
	.size	.L.str.13, 58

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"curve-type"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" { 0, 1 } 0 == smooth (use 17 points), 1 == freehand (use 256 val_y) "
	.size	.L.str.15, 70

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"argc-upper-point-x"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"{2 <= argc <= 17} "
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"upper-point-x"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"array of 17 x point_koords { 0.0 <= x <= 1.0 or -1 for unused point }"
	.size	.L.str.19, 70

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"argc-upper-point-y"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"upper-point-y"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"array of 17 y point_koords { 0.0 <= y <= 1.0 or -1 for unused point }"
	.size	.L.str.22, 70

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"argc-lower_point-x"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"lower-point-x"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"argc-lower-point-y"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"lower_point_y"
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"argc-upper-val-y"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"{ 256 } "
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"upper-val-y"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"array of 256 y freehand koord { 0 <= y <= 255 }"
	.size	.L.str.30, 48

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"argc-lower-val-y"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"lower-val-y"
	.size	.L.str.32, 12

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.33
	.quad	.L.str.34
	.size	query.return_vals, 24

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"bent-layer"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"the handled layer"
	.size	.L.str.34, 18

	.type	query.args_iter,@object # @query.args_iter
	.section	.rodata,"a",@progbits
	.align	16
query.args_iter:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.35
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.37
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.40
	.quad	.L.str.41
	.size	query.args_iter, 96

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"The run mode { RUN-NONINTERACTIVE (1) }"
	.size	.L.str.35, 40

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"total-steps"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"total number of steps (# of layers-1 to apply the related plug-in)"
	.size	.L.str.37, 67

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"current-step"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"current (for linear iterations this is the layerstack position, otherwise some value inbetween)"
	.size	.L.str.39, 96

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"len-struct"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"length of stored data structure with id is equal to the plug_in  proc_name"
	.size	.L.str.41, 75

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"plug-in-curve-bend"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Bend the image using two control curves"
	.size	.L.str.43, 40

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"This plug-in does bend the active layer If there is a current selection it is copied to floating selection and the curve_bend distortion is done on the floating selection. If work_on_copy parameter is TRUE, the curve_bend distortion is done on a copy of the active layer (or floating selection). The upper and lower edges are bent in shape of 2 spline curves. both (upper and lower) curves are determined by upto 17 points or by 256 Y-Values if curve_type == 1 (freehand mode) If rotation is not 0, the layer is rotated before and rotated back after the bend operation. This enables bending in other directions than vertical. bending usually changes the size of the handled layer. this plugin sets the offsets of the handled layer to keep its center at the same position"
	.size	.L.str.44, 771

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Wolfgang Hofer (hof@hotbot.com)"
	.size	.L.str.45, 32

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Wolfgang Hofer"
	.size	.L.str.46, 15

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"v1.3.18 (2003/08/26)"
	.size	.L.str.47, 21

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Curve Bend..."
	.size	.L.str.48, 15

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.50, 25

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"plug_in_curve_bend_Iterator"
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"This procedure calculates the modified values for one iterationstep for the call of plug_in_curve_bend"
	.size	.L.str.52, 103

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.zero	1
	.size	.L.str.53, 1

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.54, 20

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"UTF-8"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"BEND_DEBUG"
	.size	.L.str.56, 11

	.type	gb_debug,@object        # @gb_debug
	.local	gb_debug
	.comm	gb_debug,4,4
	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"\n\nDEBUG: run %s\n"
	.size	.L.str.57, 17

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"plug_in_curve_bend_ITER_FROM"
	.size	.L.str.58, 29

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"plug_in_curve_bend_ITER_TO"
	.size	.L.str.59, 27

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%s"
	.size	.L.str.60, 3

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Can operate on layers only (but was called on channel or mask)."
	.size	.L.str.61, 64

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Cannot operate on layers with masks."
	.size	.L.str.62, 37

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Cannot operate on empty selections."
	.size	.L.str.63, 36

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"curve-bend"
	.size	.L.str.64, 11

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Curve Bend"
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-curve-bend"
	.size	.L.str.66, 16

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gtk-cancel"
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gtk-ok"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"response"
	.size	.L.str.69, 9

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Preview"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"_Preview Once"
	.size	.L.str.71, 14

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"clicked"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Automatic pre_view"
	.size	.L.str.73, 19

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"toggled"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Options"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Rotat_e:"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"value-changed"
	.size	.L.str.77, 14

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Smoo_thing"
	.size	.L.str.78, 11

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"_Antialiasing"
	.size	.L.str.79, 14

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Work on cop_y"
	.size	.L.str.80, 14

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Modify Curves"
	.size	.L.str.81, 14

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"event"
	.size	.L.str.82, 6

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Curve for Border"
	.size	.L.str.83, 17

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"_Upper"
	.size	.L.str.84, 7

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"_Lower"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"cd"
	.size	.L.str.86, 3

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Curve Type"
	.size	.L.str.87, 11

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Smoot_h"
	.size	.L.str.88, 8

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"_Free"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"_Copy"
	.size	.L.str.90, 6

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Copy the active curve to the other border"
	.size	.L.str.91, 42

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"_Mirror"
	.size	.L.str.92, 8

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Mirror the active curve to the other border"
	.size	.L.str.93, 44

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"S_wap"
	.size	.L.str.94, 6

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Swap the two curves"
	.size	.L.str.95, 20

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gimp-reset"
	.size	.L.str.96, 11

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Reset the active curve"
	.size	.L.str.97, 23

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"gtk-open"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Load the curves from a file"
	.size	.L.str.99, 28

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gtk-save"
	.size	.L.str.100, 9

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Save the curves to a file"
	.size	.L.str.101, 26

	.type	bender_graph_events.cursor_type,@object # @bender_graph_events.cursor_type
	.data
	.align	4
bender_graph_events.cursor_type:
	.long	132                     # 0x84
	.size	bender_graph_events.cursor_type, 4

	.type	CR_basis,@object        # @CR_basis
	.align	16
CR_basis:
	.quad	-4620693217682128896    # double -5.000000e-01
	.quad	4609434218613702656     # double 1.500000e+00
	.quad	-4613937818241073152    # double -1.500000e+00
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	-4610560118520545280    # double -2.500000e+00
	.quad	4611686018427387904     # double 2.000000e+00
	.quad	-4620693217682128896    # double -5.000000e-01
	.quad	-4620693217682128896    # double -5.000000e-01
	.quad	0                       # double 0.000000e+00
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.size	CR_basis, 128

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"bender_plot_curve xmax:%d ymax:%d\n"
	.size	.L.str.102, 35

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"outline: %d  cX: %d cY: %d\n"
	.size	.L.str.103, 28

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Load Curve Points from File"
	.size	.L.str.104, 28

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"destroy"
	.size	.L.str.105, 8

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"rb"
	.size	.L.str.106, 3

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.107, 36

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Error while reading '%s': %s"
	.size	.L.str.108, 29

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"POINTFILE_CURVE_BEND"
	.size	.L.str.109, 21

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"POINTS"
	.size	.L.str.110, 7

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"%f %f %f %f"
	.size	.L.str.111, 12

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"warnig: BAD points[%d] in file %s are ignored\n"
	.size	.L.str.112, 47

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"VAL_Y"
	.size	.L.str.113, 6

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"%d %d"
	.size	.L.str.114, 6

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"warnig: BAD y_vals[%d] in file %s are ignored\n"
	.size	.L.str.115, 47

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Save Curve Points to File"
	.size	.L.str.116, 26

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"curve_bend.points"
	.size	.L.str.117, 18

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"wb+"
	.size	.L.str.118, 4

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.119, 36

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"%s\n"
	.size	.L.str.120, 4

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"VERSION 1.0\n\n"
	.size	.L.str.121, 14

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"# points for upper and lower smooth curve (0.0 <= pt <= 1.0)\n"
	.size	.L.str.122, 62

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"# there are upto 17 points where unused points are set to -1\n"
	.size	.L.str.123, 62

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"#       UPPERX     UPPERY      LOWERX    LOWERY\n"
	.size	.L.str.124, 49

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"\n"
	.size	.L.str.125, 2

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"%s %+.6f  %+.6f   %+.6f  %+.6f\n"
	.size	.L.str.126, 32

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"# y values for upper/lower freehand curve (0 <= y <= 255) \n"
	.size	.L.str.127, 60

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"# there must be exactly 256 y values \n"
	.size	.L.str.128, 39

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"#     UPPER_Y  LOWER_Y\n"
	.size	.L.str.129, 24

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"%s %3d  %3d\n"
	.size	.L.str.130, 13

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"preview_original"
	.size	.L.str.131, 17

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"curve_bend_dummylayer"
	.size	.L.str.132, 22

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"p_main_bend  l_tmp_layer_id %d\n"
	.size	.L.str.133, 32

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"p_main_bend rotate: %f\n"
	.size	.L.str.134, 24

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"p_main_bend: l_dst_height:%d\n"
	.size	.L.str.135, 30

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"p_main_bend: DONE add layer\n"
	.size	.L.str.136, 29

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"p_main_bend: DONE layer resize\n"
	.size	.L.str.137, 32

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"p_main_bend: DONE vertical bend\n"
	.size	.L.str.138, 33

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"p_main_bend: DONE bend main\n"
	.size	.L.str.139, 29

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Error: gimp_drawable_transform_rotate_default call failed\n"
	.size	.L.str.140, 59

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"p_bender_calculate_iter_curve NORMAL1\n"
	.size	.L.str.141, 39

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"p_bender_calculate_iter_curve ITERmode 1\n"
	.size	.L.str.142, 42

	.type	p_add_layer.l_new_drawable,@object # @p_add_layer.l_new_drawable
	.local	p_add_layer.l_new_drawable
	.comm	p_add_layer.l_new_drawable,8,8
	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"%s_b"
	.size	.L.str.143, 5

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"p_add_layer: cant get new_drawable\n"
	.size	.L.str.144, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
