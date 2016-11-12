	.text
	.file	"file-csource.bc"
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
	subq	$104, %rsp
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rax
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movl	$1, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.save_args, %r14
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.16, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -84(%rbp)         # 4-byte Spill
	addq	$104, %rsp
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
	subq	$176, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.19, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$21, run.values
	movl	$0, run.values+8
	cmpl	$0, -44(%rbp)
	jne	.LBB1_31
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_31
# BB#4:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %edi
	callq	gimp_drawable_type
	movabsq	$.L.str.9, %rdi
	movabsq	$config, %rdx
	movl	%eax, -92(%rbp)
	movq	%rdx, %rsi
	callq	gimp_procedural_db_get_data
	movb	$1, %r8b
	movabsq	$.L.str.21, %rdx
	movq	%rdx, config+8
	movq	$0, config+16
	movq	-24(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, config
	cmpl	$1, -92(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	%r8b, -125(%rbp)        # 1-byte Spill
	je	.LBB1_7
# BB#5:                                 # %lor.lhs.false
	movb	$1, %al
	cmpl	$3, -92(%rbp)
	movb	%al, -125(%rbp)         # 1-byte Spill
	je	.LBB1_7
# BB#6:                                 # %lor.rhs
	cmpl	$5, -92(%rbp)
	sete	%al
	movb	%al, -125(%rbp)         # 1-byte Spill
.LBB1_7:                                # %lor.end
	movb	-125(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.22, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, config+32
	movl	-68(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.20
	movq	-80(%rbp), %rdi
	callq	gimp_parasite_data
	movq	-80(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_parasite_data_size
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, config+16
	movq	-80(%rbp), %rdi
	callq	gimp_parasite_free
.LBB1_9:                                # %if.end
	movabsq	$.L.str.23, %rdi
	xorl	%esi, %esi
	movq	config+16, %rax
	movq	%rax, -88(%rbp)
	callq	gimp_ui_init
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	movabsq	$.L.str.24, %rdx
	movl	$17, %ecx
	callq	gimp_export_image
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.26
	movl	$4, run.values+8
	jmp	.LBB1_33
.LBB1_11:                               # %if.end.27
	movabsq	$config, %rdi
	callq	run_save_dialog
	cmpl	$0, %eax
	je	.LBB1_27
# BB#12:                                # %if.then.30
	movq	-88(%rbp), %rax
	cmpq	config+16, %rax
	je	.LBB1_21
# BB#13:                                # %land.lhs.true.32
	cmpq	$0, -88(%rbp)
	je	.LBB1_16
# BB#14:                                # %land.lhs.true.34
	cmpq	$0, config+16
	je	.LBB1_16
# BB#15:                                # %land.lhs.true.36
	movq	-88(%rbp), %rdi
	movq	config+16, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_21
.LBB1_16:                               # %if.then.39
	cmpq	$0, config+16
	je	.LBB1_18
# BB#17:                                # %lor.lhs.false.41
	movq	config+16, %rax
	cmpb	$0, (%rax)
	jne	.LBB1_19
.LBB1_18:                               # %if.then.44
	movabsq	$.L.str.22, %rsi
	movl	-68(%rbp), %edi
	callq	gimp_image_detach_parasite
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB1_20
.LBB1_19:                               # %if.else
	movabsq	$.L.str.22, %rdi
	movl	$1, %esi
	movq	config+16, %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -156(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	config+16, %rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %edx        # 4-byte Reload
	movl	%esi, -160(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-160(%rbp), %edx        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -80(%rbp)
	movl	-68(%rbp), %edi
	movq	-80(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-80(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
.LBB1_20:                               # %if.end.49
	jmp	.LBB1_21
.LBB1_21:                               # %if.end.50
	movabsq	$config, %rdi
	leaq	-64(%rbp), %rcx
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	jne	.LBB1_25
# BB#22:                                # %if.then.53
	movl	$0, -48(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_24
# BB#23:                                # %if.then.55
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_24:                               # %if.end.56
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.57
	movabsq	$.L.str.9, %rdi
	movabsq	$config, %rax
	movl	$56, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB1_26:                               # %if.end.59
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.60
	movl	$4, -48(%rbp)
.LBB1_28:                               # %if.end.61
	cmpl	$2, -52(%rbp)
	jne	.LBB1_30
# BB#29:                                # %if.then.64
	movl	-68(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB1_30:                               # %if.end.66
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.67
	movl	$1, -48(%rbp)
.LBB1_32:                               # %if.end.68
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_33:                               # %return
	addq	$176, %rsp
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

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4636737291354636288     # double 100
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	run_save_dialog,@function
run_save_dialog:                        # @run_save_dialog
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
	subq	$544, %rsp              # imm = 0x220
	movabsq	$.L.str.25, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.9, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -16(%rbp)
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-40(%rbp), %r8
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-40(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movabsq	$.L.str.18, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	callq	gtk_entry_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-48(%rbp), %r8
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-204(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-48(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	je	.LBB3_5
# BB#4:                                 # %cond.true.32
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false.34
	movabsq	$.L.str.18, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB3_6
.LBB3_6:                                # %cond.end.35
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	24(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %r10
	addq	$24, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	28(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %r10
	addq	$28, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %r10
	addq	$40, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	44(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %r10
	addq	$44, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	32(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %r10
	addq	$32, %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	-64(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-384(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.29, %rsi
	movabsq	$rgb565_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	addq	$36, %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -428(%rbp)        # 4-byte Spill
	movl	-428(%rbp), %ecx        # 4-byte Reload
	movl	-428(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-8(%rbp), %rdi
	movsd	48(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -460(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -464(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-464(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-472(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-472(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rdi
	addq	$48, %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
.LBB3_8:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB3_10
# BB#9:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB3_11
.LBB3_10:                               # %if.then.116
	movabsq	$.L.str.39, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB3_11:                               # %if.end.118
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB3_14
# BB#12:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpb	$0, (%rax)
	jne	.LBB3_14
# BB#13:                                # %if.then.124
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBB3_14:                               # %if.end.126
	movl	-84(%rbp), %eax
	addq	$544, %rsp              # imm = 0x220
	popq	%rbp
	retq
.Lfunc_end3:
	.size	run_save_dialog, .Lfunc_end3-run_save_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4672738600582905856     # double 25500
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
.LCPI4_2:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$608, %rsp              # imm = 0x260
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	movabsq	$.L.str.40, %rsi
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	fopen
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.41, %rdi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movl	-296(%rbp), %edx        # 4-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	-312(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_135
.LBB4_2:                                # %if.end
	leaq	-96(%rbp), %rdi
	xorl	%eax, %eax
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-16(%rbp), %rsi
	cmpl	$0, 36(%rsi)
	je	.LBB4_4
# BB#3:                                 # %cond.true
	movl	$2, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false
	movl	$3, %eax
	movl	$4, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$0, 32(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB4_5:                                # %cond.end
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-40(%rbp), %rcx
	imull	8(%rcx), %eax
	imull	-212(%rbp), %eax
	movl	%eax, -208(%rbp)
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-40(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, -204(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, 44(%rcx)
	je	.LBB4_10
# BB#6:                                 # %if.then.21
	movl	$127, %eax
	movl	-204(%rbp), %ecx
	movl	-208(%rbp), %edx
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-320(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	$130, %eax
	cmpl	%eax, %ecx
	jle	.LBB4_8
# BB#7:                                 # %cond.true.22
	movl	-204(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                # %cond.false.23
	movl	$127, %eax
	movl	-208(%rbp), %ecx
	movl	%eax, -328(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-328(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	$130, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB4_9:                                # %cond.end.26
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)
.LBB4_10:                               # %if.end.28
	movl	$1, %eax
	movl	%eax, %esi
	movl	-204(%rbp), %eax
	addl	-208(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movslq	-204(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -192(%rbp)
	movl	$0, -200(%rbp)
.LBB4_11:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #     Child Loop BB4_23 Depth 2
                                        #     Child Loop BB4_31 Depth 2
	movl	-200(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB4_41
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB4_11 Depth=1
	leaq	-96(%rbp), %rdi
	xorl	%edx, %edx
	movq	-184(%rbp), %rsi
	movl	-200(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	4(%rax), %r8d
	callq	gimp_pixel_rgn_get_row
	cmpl	$2, -212(%rbp)
	jne	.LBB4_21
# BB#13:                                # %if.then.37
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	$0, -196(%rbp)
.LBB4_14:                               # %for.cond.38
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-196(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB4_20
# BB#15:                                # %for.body.42
                                        #   in Loop: Header=BB4_14 Depth=2
	movq	-184(%rbp), %rax
	movl	-196(%rbp), %ecx
	movq	-40(%rbp), %rdx
	imull	12(%rdx), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	cmpl	$1, -44(%rbp)
	jne	.LBB4_17
# BB#16:                                # %cond.true.50
                                        #   in Loop: Header=BB4_14 Depth=2
	movq	-224(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false.52
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	$255, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB4_18
.LBB4_18:                               # %cond.end.53
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	-332(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -240(%rbp)
	movq	-16(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -240(%rbp)
	movq	-224(%rbp), %rcx
	movzbl	(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movb	%dl, -225(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-224(%rbp), %rcx
	movzbl	1(%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movb	%dl, -226(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-224(%rbp), %rcx
	movzbl	2(%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movb	%dl, -227(%rbp)
	movzbl	-225(%rbp), %eax
	sarl	$3, %eax
	movb	%al, %dl
	movb	%dl, -225(%rbp)
	movzbl	-226(%rbp), %eax
	sarl	$2, %eax
	movb	%al, %dl
	movb	%dl, -226(%rbp)
	movzbl	-227(%rbp), %eax
	sarl	$3, %eax
	movb	%al, %dl
	movb	%dl, -227(%rbp)
	movzbl	-225(%rbp), %eax
	shll	$11, %eax
	movzbl	-226(%rbp), %esi
	shll	$5, %esi
	addl	%esi, %eax
	movzbl	-227(%rbp), %esi
	addl	%esi, %eax
	movw	%ax, %di
	movw	%di, -230(%rbp)
	movw	-230(%rbp), %di
	movb	%dil, %dl
	movq	-192(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -192(%rbp)
	movb	%dl, (%rcx)
	movzwl	-230(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %dl
	movq	-192(%rbp), %rcx
	movq	%rcx, %r8
	addq	$1, %r8
	movq	%r8, -192(%rbp)
	movb	%dl, (%rcx)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=2
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB4_14
.LBB4_20:                               # %for.end
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_39
.LBB4_21:                               # %if.else
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB4_30
# BB#22:                                # %if.then.95
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	$0, -196(%rbp)
.LBB4_23:                               # %for.cond.96
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-196(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB4_29
# BB#24:                                # %for.body.100
                                        #   in Loop: Header=BB4_23 Depth=2
	movq	-184(%rbp), %rax
	movl	-196(%rbp), %ecx
	movq	-40(%rbp), %rdx
	imull	12(%rdx), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
	cmpl	$1, -44(%rbp)
	jne	.LBB4_26
# BB#25:                                # %cond.true.109
                                        #   in Loop: Header=BB4_23 Depth=2
	movq	-248(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	jmp	.LBB4_27
.LBB4_26:                               # %cond.false.112
                                        #   in Loop: Header=BB4_23 Depth=2
	movl	$255, %eax
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB4_27
.LBB4_27:                               # %cond.end.113
                                        #   in Loop: Header=BB4_23 Depth=2
	movl	-336(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -256(%rbp)
	movq	-16(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
	movq	-248(%rbp), %rcx
	movb	(%rcx), %dl
	movq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	incq	%rsi
	movq	%rsi, -192(%rbp)
	movb	%dl, (%rcx)
	movq	-248(%rbp), %rcx
	movb	1(%rcx), %dl
	movq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	incq	%rsi
	movq	%rsi, -192(%rbp)
	movb	%dl, (%rcx)
	movq	-248(%rbp), %rcx
	movb	2(%rcx), %dl
	movq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	incq	%rsi
	movq	%rsi, -192(%rbp)
	movb	%dl, (%rcx)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -192(%rbp)
	movb	%dl, (%rcx)
# BB#28:                                # %for.inc.128
                                        #   in Loop: Header=BB4_23 Depth=2
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB4_23
.LBB4_29:                               # %for.end.130
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_38
.LBB4_30:                               # %if.else.131
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	$0, -196(%rbp)
.LBB4_31:                               # %for.cond.132
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-196(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB4_37
# BB#32:                                # %for.body.136
                                        #   in Loop: Header=BB4_31 Depth=2
	movq	-184(%rbp), %rax
	movl	-196(%rbp), %ecx
	movq	-40(%rbp), %rdx
	imull	12(%rdx), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	cmpl	$1, -44(%rbp)
	jne	.LBB4_34
# BB#33:                                # %cond.true.145
                                        #   in Loop: Header=BB4_31 Depth=2
	movq	-264(%rbp), %rax
	movzbl	3(%rax), %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB4_35
.LBB4_34:                               # %cond.false.148
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	$255, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB4_35
.LBB4_35:                               # %cond.end.149
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-340(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -272(%rbp)
	movq	-16(%rbp), %rcx
	movsd	48(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -272(%rbp)
	movq	-264(%rbp), %rcx
	movzbl	(%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	incq	%rsi
	movq	%rsi, -192(%rbp)
	movb	%dl, (%rcx)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-264(%rbp), %rcx
	movzbl	1(%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	incq	%rsi
	movq	%rsi, -192(%rbp)
	movb	%dl, (%rcx)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-264(%rbp), %rcx
	movzbl	2(%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movq	-192(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -192(%rbp)
	movb	%dl, (%rcx)
# BB#36:                                # %for.inc.173
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB4_31
.LBB4_37:                               # %for.end.175
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_38
.LBB4_38:                               # %if.end.176
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_39
.LBB4_39:                               # %if.end.177
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_40
.LBB4_40:                               # %for.inc.178
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB4_11
.LBB4_41:                               # %for.end.180
	movq	-184(%rbp), %rax
	movslq	-204(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB4_43
# BB#42:                                # %if.then.185
	movq	-184(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-160(%rbp), %rax
	movslq	-208(%rbp), %rcx
	addq	%rcx, %rax
	movl	-212(%rbp), %ecx
	movq	%rax, %rdx
	callq	rl_encode_rgbx
	movq	%rax, -168(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB4_44
.LBB4_43:                               # %if.else.189
	movq	-160(%rbp), %rax
	movslq	-208(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -168(%rbp)
.LBB4_44:                               # %if.end.192
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB4_47
# BB#45:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	je	.LBB4_47
# BB#46:                                # %if.then.195
	movabsq	$.L.str.45, %rax
	movabsq	$.L.str.44, %rcx
	movabsq	$.L.str.43, %rdx
	movabsq	$.L.str.42, %rsi
	movq	%rsi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%rax, -128(%rbp)
	jmp	.LBB4_55
.LBB4_47:                               # %if.else.196
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB4_49
# BB#48:                                # %if.then.199
	movabsq	$.L.str.49, %rax
	movabsq	$.L.str.48, %rcx
	movabsq	$.L.str.47, %rdx
	movabsq	$.L.str.46, %rsi
	movq	%rsi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%rax, -128(%rbp)
	jmp	.LBB4_54
.LBB4_49:                               # %if.else.200
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB4_52
# BB#50:                                # %land.lhs.true.203
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	je	.LBB4_52
# BB#51:                                # %if.then.206
	movabsq	$.L.str.45, %rax
	movabsq	$.L.str.52, %rcx
	movabsq	$.L.str.51, %rdx
	movabsq	$.L.str.50, %rsi
	movq	%rsi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%rax, -128(%rbp)
	jmp	.LBB4_53
.LBB4_52:                               # %if.else.207
	movabsq	$.L.str.49, %rax
	movabsq	$.L.str.54, %rcx
	movabsq	$.L.str.53, %rdx
	movabsq	$.L.str.46, %rsi
	movq	%rsi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%rax, -128(%rbp)
.LBB4_53:                               # %if.end.208
	jmp	.LBB4_54
.LBB4_54:                               # %if.end.209
	jmp	.LBB4_55
.LBB4_55:                               # %if.end.210
	movq	$-1, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_ascii_strup
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_path_get_basename
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.58, %rcx
	movabsq	$.L.str.57, %rdx
	movabsq	$.L.str.56, %r8
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	-16(%rbp), %r9
	cmpl	$0, 32(%r9)
	cmovneq	%r8, %rdx
	movq	-16(%rbp), %r8
	cmpl	$0, 44(%r8)
	cmovneq	%rcx, %rdi
	movq	-176(%rbp), %r8
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	fprintf
	movq	-176(%rbp), %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-16(%rbp), %rcx
	cmpl	$0, 44(%rcx)
	je	.LBB4_58
# BB#56:                                # %land.lhs.true.223
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB4_58
# BB#57:                                # %if.then.226
	movl	$3, %eax
	movl	$4, %ecx
	movabsq	$.L.str.46, %rdx
	movabsq	$.L.str.50, %rsi
	movabsq	$.L.str.53, %rdi
	movabsq	$.L.str.51, %r8
	movq	-136(%rbp), %r9
	movq	-152(%rbp), %r10
	movq	-16(%rbp), %r11
	cmpl	$0, 28(%r11)
	cmovneq	%r8, %rdi
	movq	-16(%rbp), %r8
	cmpl	$0, 28(%r8)
	cmovneq	%rsi, %rdx
	movq	-16(%rbp), %rsi
	cmpl	$0, 32(%rsi)
	cmovnel	%ecx, %eax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%r10, %rsi
	movq	-368(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	callq	save_rle_decoder
.LBB4_58:                               # %if.end.236
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB4_71
# BB#59:                                # %if.then.239
	movabsq	$.L.str.59, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.60, %rsi
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.61, %rsi
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movl	%eax, -384(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.62, %rsi
	movq	-136(%rbp), %rdi
	movq	-112(%rbp), %rdx
	movl	%eax, -388(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rdx
	cmpl	$0, 24(%rdx)
	movl	%eax, -392(%rbp)        # 4-byte Spill
	je	.LBB4_61
# BB#60:                                # %if.then.245
	movabsq	$.L.str.63, %rsi
	movq	-136(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB4_61:                               # %if.end.247
	movabsq	$.L.str.64, %rsi
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.65, %rcx
	movq	-136(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movq	-16(%rbp), %r8
	cmpl	$0, 44(%r8)
	cmovneq	%rcx, %rax
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	cmpl	$0, 44(%rcx)
	movl	%eax, -400(%rbp)        # 4-byte Spill
	je	.LBB4_63
# BB#62:                                # %if.then.254
	movabsq	$.L.str.66, %rsi
	movq	-136(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jmp	.LBB4_67
.LBB4_63:                               # %if.else.257
	movq	-136(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	$0, 36(%rax)
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movl	%ecx, -424(%rbp)        # 4-byte Spill
	je	.LBB4_65
# BB#64:                                # %cond.true.262
	movl	$2, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB4_66
.LBB4_65:                               # %cond.false.263
	movl	$3, %eax
	movl	$4, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$0, 32(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB4_66:                               # %cond.end.267
	movl	-428(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.67, %rsi
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	-420(%rbp), %edx        # 4-byte Reload
	movl	-424(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB4_67:                               # %if.end.270
	movabsq	$.L.str.68, %rsi
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-136(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	4(%rdx), %edx
	movq	-40(%rbp), %rsi
	movl	8(%rsi), %ecx
	movq	-16(%rbp), %rsi
	cmpl	$0, 36(%rsi)
	movl	%eax, -436(%rbp)        # 4-byte Spill
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movl	%edx, -452(%rbp)        # 4-byte Spill
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	je	.LBB4_69
# BB#68:                                # %cond.true.277
	movl	$2, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
	jmp	.LBB4_70
.LBB4_69:                               # %cond.false.278
	movl	$3, %eax
	movl	$4, %ecx
	movq	-16(%rbp), %rdx
	cmpl	$0, 32(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB4_70:                               # %cond.end.282
	movl	-460(%rbp), %eax        # 4-byte Reload
	movabsq	$.L.str.69, %rsi
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movl	-452(%rbp), %edx        # 4-byte Reload
	movl	-456(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -464(%rbp)        # 4-byte Spill
	jmp	.LBB4_72
.LBB4_71:                               # %if.else.285
	movabsq	$.L.str.70, %rsi
	movq	-136(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.71, %rsi
	movq	-136(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movq	-40(%rbp), %r8
	movl	8(%r8), %ecx
	movl	%eax, -468(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.72, %rsi
	movl	$3, %ecx
	movl	$4, %r9d
	movq	-136(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movq	-16(%rbp), %r8
	cmpl	$0, 32(%r8)
	cmovnel	%r9d, %ecx
	movl	%eax, -472(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB4_72:                               # %if.end.294
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB4_78
# BB#73:                                # %land.lhs.true.297
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB4_78
# BB#74:                                # %if.then.299
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB4_76
# BB#75:                                # %if.then.302
	movabsq	$.L.str.73, %rsi
	movq	-136(%rbp), %rdi
	movq	-128(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -480(%rbp)        # 4-byte Spill
	jmp	.LBB4_77
.LBB4_76:                               # %if.else.304
	movabsq	$.L.str.74, %rsi
	movq	-136(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB4_77:                               # %if.end.306
	jmp	.LBB4_117
.LBB4_78:                               # %if.else.307
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB4_116
# BB#79:                                # %if.then.310
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	$-1, %rax
	movq	%rax, -280(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB4_81
# BB#80:                                # %if.then.316
	movabsq	$.L.str.75, %rsi
	movq	-136(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB4_81:                               # %if.end.318
	movabsq	$.L.str.76, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -492(%rbp)        # 4-byte Spill
.LBB4_82:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-280(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -280(%rbp)
	cmpb	$0, 1(%rax)
	je	.LBB4_112
# BB#83:                                # %while.body
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB4_85
# BB#84:                                # %if.then.325
                                        #   in Loop: Header=BB4_82 Depth=1
	movabsq	$.L.str.77, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB4_111
.LBB4_85:                               # %if.else.327
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB4_87
# BB#86:                                # %if.then.331
                                        #   in Loop: Header=BB4_82 Depth=1
	movabsq	$.L.str.78, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -500(%rbp)        # 4-byte Spill
	jmp	.LBB4_110
.LBB4_87:                               # %if.else.333
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB4_90
# BB#88:                                # %land.lhs.true.337
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_90
# BB#89:                                # %if.then.341
                                        #   in Loop: Header=BB4_82 Depth=1
	movabsq	$.L.str.79, %rsi
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.80, %rcx
	movq	-136(%rbp), %rdi
	movq	-16(%rbp), %rdx
	cmpl	$0, 40(%rdx)
	cmovneq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jmp	.LBB4_109
.LBB4_90:                               # %if.else.346
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB4_92
# BB#91:                                # %if.then.350
                                        #   in Loop: Header=BB4_82 Depth=1
	movabsq	$.L.str.81, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -508(%rbp)        # 4-byte Spill
	jmp	.LBB4_108
.LBB4_92:                               # %if.else.352
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB4_94
# BB#93:                                # %if.then.356
                                        #   in Loop: Header=BB4_82 Depth=1
	movabsq	$.L.str.82, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -512(%rbp)        # 4-byte Spill
	jmp	.LBB4_107
.LBB4_94:                               # %if.else.358
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$8, %ecx
	jne	.LBB4_96
# BB#95:                                # %if.then.362
                                        #   in Loop: Header=BB4_82 Depth=1
	movabsq	$.L.str.83, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB4_106
.LBB4_96:                               # %if.else.364
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$12, %ecx
	jne	.LBB4_98
# BB#97:                                # %if.then.368
                                        #   in Loop: Header=BB4_82 Depth=1
	movabsq	$.L.str.84, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB4_105
.LBB4_98:                               # %if.else.370
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jl	.LBB4_100
# BB#99:                                # %land.lhs.true.374
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jle	.LBB4_102
.LBB4_100:                              # %lor.lhs.false
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$58, %ecx
	jl	.LBB4_103
# BB#101:                               # %land.lhs.true.381
                                        #   in Loop: Header=BB4_82 Depth=1
	movq	-280(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	jg	.LBB4_103
.LBB4_102:                              # %if.then.385
                                        #   in Loop: Header=BB4_82 Depth=1
	movabsq	$.L.str.85, %rsi
	movq	-136(%rbp), %rdi
	movq	-280(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB4_104
.LBB4_103:                              # %if.else.388
                                        #   in Loop: Header=BB4_82 Depth=1
	movabsq	$.L.str.86, %rsi
	movq	-136(%rbp), %rdi
	movq	-280(%rbp), %rax
	movsbl	(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -528(%rbp)        # 4-byte Spill
.LBB4_104:                              # %if.end.391
                                        #   in Loop: Header=BB4_82 Depth=1
	jmp	.LBB4_105
.LBB4_105:                              # %if.end.392
                                        #   in Loop: Header=BB4_82 Depth=1
	jmp	.LBB4_106
.LBB4_106:                              # %if.end.393
                                        #   in Loop: Header=BB4_82 Depth=1
	jmp	.LBB4_107
.LBB4_107:                              # %if.end.394
                                        #   in Loop: Header=BB4_82 Depth=1
	jmp	.LBB4_108
.LBB4_108:                              # %if.end.395
                                        #   in Loop: Header=BB4_82 Depth=1
	jmp	.LBB4_109
.LBB4_109:                              # %if.end.396
                                        #   in Loop: Header=BB4_82 Depth=1
	jmp	.LBB4_110
.LBB4_110:                              # %if.end.397
                                        #   in Loop: Header=BB4_82 Depth=1
	jmp	.LBB4_111
.LBB4_111:                              # %if.end.398
                                        #   in Loop: Header=BB4_82 Depth=1
	jmp	.LBB4_82
.LBB4_112:                              # %while.end
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB4_114
# BB#113:                               # %if.then.401
	movabsq	$.L.str.87, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -532(%rbp)        # 4-byte Spill
	jmp	.LBB4_115
.LBB4_114:                              # %if.else.403
	movabsq	$.L.str.88, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -536(%rbp)        # 4-byte Spill
.LBB4_115:                              # %if.end.405
	jmp	.LBB4_116
.LBB4_116:                              # %if.end.406
	jmp	.LBB4_117
.LBB4_117:                              # %if.end.407
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB4_124
# BB#118:                               # %if.then.410
	movabsq	$.L.str.89, %rsi
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.65, %rcx
	movabsq	$.L.str.90, %rdx
	movq	-136(%rbp), %rdi
	movq	-152(%rbp), %r8
	movq	-16(%rbp), %r9
	cmpl	$0, 44(%r9)
	movq	%rax, %r9
	cmovneq	%rdx, %r9
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %r10
	movq	-16(%rbp), %r11
	cmpl	$0, 44(%r11)
	cmovneq	%rcx, %rax
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	-544(%rbp), %r8         # 8-byte Reload
	movq	%r10, %r9
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	cmpl	$0, 44(%rcx)
	movl	%eax, -548(%rbp)        # 4-byte Spill
	je	.LBB4_120
# BB#119:                               # %if.then.420
	movl	$3, %eax
	movl	$4, %ecx
	movq	-136(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %r8
	movq	-16(%rbp), %r9
	cmpl	$0, 32(%r9)
	cmovnel	%ecx, %eax
	movq	%r8, %rcx
	movl	%eax, %r8d
	callq	save_rle_decoder
.LBB4_120:                              # %if.end.424
	movabsq	$.L.str.91, %rsi
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.65, %rcx
	movq	-136(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movq	-152(%rbp), %r8
	movq	-16(%rbp), %r9
	cmpl	$0, 44(%r9)
	cmovneq	%rcx, %rax
	movq	%r8, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	movq	-16(%rbp), %rcx
	cmpl	$0, 44(%rcx)
	movl	%eax, -552(%rbp)        # 4-byte Spill
	je	.LBB4_122
# BB#121:                               # %if.then.431
	movabsq	$.L.str.92, %rsi
	movq	-136(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	-160(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB4_123
.LBB4_122:                              # %if.else.437
	movabsq	$.L.str.93, %rsi
	movl	$3, %eax
	movl	$4, %ecx
	movq	-136(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	4(%rdx), %edx
	movq	-40(%rbp), %r8
	movl	8(%r8), %r9d
	movq	-16(%rbp), %r8
	cmpl	$0, 32(%r8)
	cmovnel	%ecx, %eax
	movl	%r9d, %ecx
	movl	%eax, %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -560(%rbp)        # 4-byte Spill
.LBB4_123:                              # %if.end.444
	movabsq	$.L.str.94, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$2, -140(%rbp)
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jmp	.LBB4_125
.LBB4_124:                              # %if.else.446
	movabsq	$.L.str.76, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$3, -140(%rbp)
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB4_125:                              # %if.end.448
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -572(%rbp)        # 4-byte Spill
	ja	.LBB4_130
	jmp	.LBB4_126
.LBB4_126:                              # %sw.bb
	jmp	.LBB4_127
.LBB4_127:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-136(%rbp), %rdi
	movl	-140(%rbp), %esi
	movq	-160(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -160(%rbp)
	movb	(%rax), %dl
	movq	-16(%rbp), %rcx
	movzbl	%dl, %edx
	callq	save_uchar
	movl	%eax, -140(%rbp)
# BB#128:                               # %do.cond
                                        #   in Loop: Header=BB4_127 Depth=1
	movq	-160(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.LBB4_127
# BB#129:                               # %do.end
	jmp	.LBB4_131
.LBB4_130:                              # %sw.default
	movabsq	$.L.str.95, %rdi
	movl	-44(%rbp), %esi
	movb	$0, %al
	callq	g_warning
	movq	-136(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jmp	.LBB4_135
.LBB4_131:                              # %sw.epilog
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB4_133
# BB#132:                               # %if.then.456
	movabsq	$.L.str.96, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -580(%rbp)        # 4-byte Spill
	jmp	.LBB4_134
.LBB4_133:                              # %if.else.458
	movabsq	$.L.str.97, %rsi
	movq	-136(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -584(%rbp)        # 4-byte Spill
.LBB4_134:                              # %if.end.460
	movq	-136(%rbp), %rdi
	callq	fclose
	movq	-40(%rbp), %rdi
	movl	%eax, -588(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
	movl	$1, -4(%rbp)
.LBB4_135:                              # %return
	movl	-4(%rbp), %eax
	addq	$608, %rsp              # imm = 0x260
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_image, .Lfunc_end4-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	rgb565_toggle_button_update,@function
rgb565_toggle_button_update:            # @rgb565_toggle_button_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	cmpl	$0, -28(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_widget_set_sensitive
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	cmpl	$0, -28(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_widget_set_sensitive
.LBB5_4:                                # %if.end.13
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	rgb565_toggle_button_update, .Lfunc_end5-rgb565_toggle_button_update
	.cfi_endproc

	.align	16, 0x90
	.type	rl_encode_rgbx,@function
rl_encode_rgbx:                         # @rl_encode_rgbx
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$diff2_rgb, %r9
	movabsq	$diff2_rgba, %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpl	$3, -28(%rbp)
	cmovaq	%r10, %r9
	movq	%r9, -40(%rbp)
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	subq	%rsi, %r8
	addq	%r8, %rdx
	movq	%rdx, -48(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
                                        #     Child Loop BB6_19 Depth 2
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB6_28
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB6_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.98, %rsi
	movl	$260, %edx              # imm = 0x104
	movabsq	$.L__func__.rl_encode_rgbx, %rcx
	movabsq	$.L.str.99, %r8
	callq	g_assertion_message_expr
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %do.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB6_18
# BB#8:                                 # %if.then.3
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$1, -60(%rbp)
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
.LBB6_9:                                # %while.cond.6
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$127, -60(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jae	.LBB6_12
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_9 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jae	.LBB6_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB6_9 Depth=2
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB6_12:                               # %land.end
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_13
	jmp	.LBB6_14
.LBB6_13:                               # %while.body.11
                                        #   in Loop: Header=BB6_9 Depth=2
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_9
.LBB6_14:                               # %while.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_17
# BB#15:                                # %land.lhs.true.15
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$127, -60(%rbp)
	jae	.LBB6_17
# BB#16:                                # %if.then.17
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB6_17:                               # %if.end.21
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%cl, (%rdx)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-60(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memcpy
	movl	-60(%rbp), %eax
	imull	-28(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB6_25
.LBB6_18:                               # %if.else.26
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$2, -64(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB6_19:                               # %while.cond.30
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$127, -64(%rbp)
	movb	%cl, -66(%rbp)          # 1-byte Spill
	jae	.LBB6_22
# BB#20:                                # %land.lhs.true.33
                                        #   in Loop: Header=BB6_19 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -66(%rbp)          # 1-byte Spill
	jae	.LBB6_22
# BB#21:                                # %land.rhs.36
                                        #   in Loop: Header=BB6_19 Depth=2
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -66(%rbp)          # 1-byte Spill
.LBB6_22:                               # %land.end.39
                                        #   in Loop: Header=BB6_19 Depth=2
	movb	-66(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_23
	jmp	.LBB6_24
.LBB6_23:                               # %while.body.40
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB6_19
.LBB6_24:                               # %while.end.44
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-64(%rbp), %eax
	orl	$128, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%cl, (%rdx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	callq	memcpy
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -16(%rbp)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, %eax
	movl	%eax, %esi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
.LBB6_25:                               # %if.end.52
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_27
# BB#26:                                # %if.then.55
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	$1, (%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
                                        # kill: RDX<def> EDX<kill>
	callq	memcpy
	movl	-28(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, %r8d
	movl	%r8d, %ecx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %r8d
	movq	-8(%rbp), %rax
	movl	%r8d, %r8d
	movl	%r8d, %ecx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB6_27:                               # %if.end.62
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_1
.LBB6_28:                               # %while.end.63
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rl_encode_rgbx, .Lfunc_end6-rl_encode_rgbx
	.cfi_endproc

	.align	16, 0x90
	.type	save_rle_decoder,@function
save_rle_decoder:                       # @save_rle_decoder
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
	subq	$112, %rsp
	movabsq	$.L.str.100, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.101, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %r8
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.102, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.103, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.104, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.105, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.106, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.107, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.108, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.109, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.104, %rsi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.105, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.110, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.111, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.108, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.112, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	save_rle_decoder, .Lfunc_end7-save_rle_decoder
	.cfi_endproc

	.align	16, 0x90
	.type	save_uchar,@function
save_uchar:                             # @save_uchar
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
	subq	$64, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movb	%al, -21(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$74, -20(%rbp)
	jbe	.LBB8_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB8_3
# BB#2:                                 # %if.then.1
	movabsq	$.L.str.113, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$3, -20(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str.114, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$2, -20(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %if.end.3
	movzbl	-21(%rbp), %eax
	cmpl	$33, %eax
	jl	.LBB8_9
# BB#6:                                 # %lor.lhs.false
	movzbl	-21(%rbp), %eax
	cmpl	$48, %eax
	jl	.LBB8_8
# BB#7:                                 # %land.lhs.true
	movzbl	-21(%rbp), %eax
	cmpl	$57, %eax
	jle	.LBB8_9
.LBB8_8:                                # %lor.lhs.false.12
	movzbl	-21(%rbp), %eax
	cmpl	$126, %eax
	jle	.LBB8_10
.LBB8_9:                                # %if.then.16
	movabsq	$.L.str.86, %rsi
	movq	-16(%rbp), %rdi
	movzbl	-21(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movzbl	-21(%rbp), %edx
	cmpl	$7, %edx
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	addl	$2, %edx
	movzbl	-21(%rbp), %r8d
	cmpl	$63, %r8d
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	addl	%r8d, %edx
	addl	-20(%rbp), %edx
	movl	%edx, -20(%rbp)
	movzbl	-21(%rbp), %edx
	cmpl	$64, %edx
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, save_uchar.pad
	movl	-20(%rbp), %edx
	movl	%edx, -4(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB8_22
.LBB8_10:                               # %if.end.31
	movzbl	-21(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB8_12
# BB#11:                                # %if.then.35
	movabsq	$.L.str.77, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -20(%rbp)
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB8_21
.LBB8_12:                               # %if.else.38
	movzbl	-21(%rbp), %eax
	cmpl	$34, %eax
	jne	.LBB8_14
# BB#13:                                # %if.then.42
	movabsq	$.L.str.78, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movl	%ecx, -20(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB8_20
.LBB8_14:                               # %if.else.45
	movzbl	save_uchar.pad, %eax
	cmpl	$0, %eax
	je	.LBB8_18
# BB#15:                                # %land.lhs.true.48
	movzbl	-21(%rbp), %eax
	cmpl	$48, %eax
	jl	.LBB8_18
# BB#16:                                # %land.lhs.true.52
	movzbl	-21(%rbp), %eax
	cmpl	$57, %eax
	jg	.LBB8_18
# BB#17:                                # %if.then.56
	movabsq	$.L.str.115, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movzbl	-21(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	fputc
	movl	-20(%rbp), %edi
	addl	$3, %edi
	movl	%edi, -20(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.61
	movzbl	-21(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	fputc
	movl	-20(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -20(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB8_19:                               # %if.end.65
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.66
	jmp	.LBB8_21
.LBB8_21:                               # %if.end.67
	movb	$0, save_uchar.pad
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	save_uchar, .Lfunc_end8-save_uchar
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	diff2_rgba,@function
diff2_rgba:                             # @diff2_rgba
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
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movzbl	4(%rdi), %edx
	cmpl	%edx, %ecx
	movb	%al, -9(%rbp)           # 1-byte Spill
	jne	.LBB10_4
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movq	-8(%rbp), %rcx
	movzbl	5(%rcx), %esi
	cmpl	%esi, %edx
	movb	%al, -9(%rbp)           # 1-byte Spill
	jne	.LBB10_4
# BB#2:                                 # %lor.lhs.false.10
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movzbl	2(%rcx), %edx
	movq	-8(%rbp), %rcx
	movzbl	6(%rcx), %esi
	cmpl	%esi, %edx
	movb	%al, -9(%rbp)           # 1-byte Spill
	jne	.LBB10_4
# BB#3:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	7(%rax), %edx
	cmpl	%edx, %ecx
	setne	%sil
	movb	%sil, -9(%rbp)          # 1-byte Spill
.LBB10_4:                               # %lor.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	diff2_rgba, .Lfunc_end10-diff2_rgba
	.cfi_endproc

	.align	16, 0x90
	.type	diff2_rgb,@function
diff2_rgb:                              # @diff2_rgb
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
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	(%rdi), %ecx
	movq	-8(%rbp), %rdi
	movzbl	3(%rdi), %edx
	cmpl	%edx, %ecx
	movb	%al, -9(%rbp)           # 1-byte Spill
	jne	.LBB11_3
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %edx
	movq	-8(%rbp), %rcx
	movzbl	4(%rcx), %esi
	cmpl	%esi, %edx
	movb	%al, -9(%rbp)           # 1-byte Spill
	jne	.LBB11_3
# BB#2:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	5(%rax), %edx
	cmpl	%edx, %ecx
	setne	%sil
	movb	%sil, -9(%rbp)          # 1-byte Spill
.LBB11_3:                               # %lor.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	diff2_rgb, .Lfunc_end11-diff2_rgb
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

	.type	query.save_args,@object # @query.save_args
	.align	16
query.save_args:
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.7
	.size	query.save_args, 120

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.1, 37

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
	.asciz	"Drawable to save"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"filename"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"raw-filename"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file-csource-save"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Dump image data in RGB(A) format for C source"
	.size	.L.str.10, 46

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"CSource cannot be run non-interactively."
	.size	.L.str.11, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Tim Janik"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"1999"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"C source code"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RGB*"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"text/x-csrc"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"c"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.zero	1
	.size	.L.str.18, 1

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UTF-8"
	.size	.L.str.20, 6

	.type	config,@object          # @config
	.data
	.align	8
config:
	.quad	0
	.quad	.L.str.21
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4636737291354636288     # double 100
	.size	config, 56

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"gimp_image"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-comment"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"file-csource"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"C Source"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"C-Source"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Prefixed name:"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Co_mment:"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Save comment to file"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"toggled"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Use GLib types (guint8*)"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Us_e macros instead of struct"
	.size	.L.str.31, 30

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Use _1 byte Run-Length-Encoding"
	.size	.L.str.32, 32

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Sa_ve alpha channel (RGBA/RGB)"
	.size	.L.str.33, 31

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Save as _RGB565 (16-bit)"
	.size	.L.str.34, 25

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"set-insensitive-1"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"set-insensitive-2"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Op_acity:"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"value-changed"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"tmp"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"w"
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.41, 36

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"guint8 "
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"guint  "
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gchar  "
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"NULL"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"unsigned char"
	.size	.L.str.46, 14

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"unsigned int "
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"char         "
	.size	.L.str.48, 14

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"(char*) 0"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"guint8"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"guint"
	.size	.L.str.51, 6

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gchar"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"unsigned int"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"char"
	.size	.L.str.54, 5

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"/* GIMP %s C-Source image dump %s(%s) */\n\n"
	.size	.L.str.55, 43

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"RGBA"
	.size	.L.str.56, 5

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"RGB"
	.size	.L.str.57, 4

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"1-byte-run-length-encoded "
	.size	.L.str.58, 27

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"static const struct {\n"
	.size	.L.str.59, 23

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"  %s\t width;\n"
	.size	.L.str.60, 14

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"  %s\t height;\n"
	.size	.L.str.61, 15

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"  %s\t bytes_per_pixel; /* 2:RGB16, 3:RGB, 4:RGBA */ \n"
	.size	.L.str.62, 54

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"  %s\t*comment;\n"
	.size	.L.str.63, 16

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"  %s\t %spixel_data["
	.size	.L.str.64, 20

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"rle_"
	.size	.L.str.65, 5

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"%u + 1];\n"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%u * %u * %u + 1];\n"
	.size	.L.str.67, 20

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"} %s = {\n"
	.size	.L.str.68, 10

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"  %u, %u, %u,\n"
	.size	.L.str.69, 15

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"#define %s_WIDTH (%u)\n"
	.size	.L.str.70, 23

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"#define %s_HEIGHT (%u)\n"
	.size	.L.str.71, 24

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"#define %s_BYTES_PER_PIXEL (%u) /* 3:RGB, 4:RGBA */\n"
	.size	.L.str.72, 53

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"  %s,\n"
	.size	.L.str.73, 7

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"#define %s_COMMENT (%s)\n"
	.size	.L.str.74, 25

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"#define %s_COMMENT \\\n"
	.size	.L.str.75, 22

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"  \""
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"\\\\"
	.size	.L.str.77, 3

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"\\\""
	.size	.L.str.78, 3

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"\\n\"%s\n  \""
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	" \\"
	.size	.L.str.80, 3

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"\\n"
	.size	.L.str.81, 3

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"\\r"
	.size	.L.str.82, 3

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"\\b"
	.size	.L.str.83, 3

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"\\f"
	.size	.L.str.84, 3

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%c"
	.size	.L.str.85, 3

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"\\%03o"
	.size	.L.str.86, 6

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"\",\n"
	.size	.L.str.87, 4

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"\"\n"
	.size	.L.str.88, 3

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"#define %s_%sPIXEL_DATA ((%s*) %s_%spixel_data)\n"
	.size	.L.str.89, 49

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"RLE_"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"static const %s %s_%spixel_data["
	.size	.L.str.91, 33

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"%u] =\n"
	.size	.L.str.92, 7

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"%u * %u * %u + 1] =\n"
	.size	.L.str.93, 21

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"(\""
	.size	.L.str.94, 3

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"unhandled drawable type (%d)"
	.size	.L.str.95, 29

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"\",\n};\n\n"
	.size	.L.str.96, 8

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"\");\n\n"
	.size	.L.str.97, 6

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"file-csource.c"
	.size	.L.str.98, 15

	.type	.L__func__.rl_encode_rgbx,@object # @__func__.rl_encode_rgbx
.L__func__.rl_encode_rgbx:
	.asciz	"rl_encode_rgbx"
	.size	.L__func__.rl_encode_rgbx, 15

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"ip < ilimit"
	.size	.L.str.99, 12

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"#define %s_RUN_LENGTH_DECODE(image_buf, rle_data, size, bpp) do \\\n"
	.size	.L.str.100, 67

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"{ %s __bpp; %s *__ip; const %s *__il, *__rd; \\\n"
	.size	.L.str.101, 48

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"  __bpp = (bpp); __ip = (image_buf); __il = __ip + (size) * __bpp; \\\n"
	.size	.L.str.102, 70

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"  __rd = (rle_data); if (__bpp > 3) { /* RGBA */ \\\n"
	.size	.L.str.103, 52

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"    while (__ip < __il) { %s __l = *(__rd++); \\\n"
	.size	.L.str.104, 49

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"      if (__l & 128) { __l = __l - 128; \\\n"
	.size	.L.str.105, 43

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"        do { memcpy (__ip, __rd, 4); __ip += 4; } while (--__l); __rd += 4; \\\n"
	.size	.L.str.106, 79

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"      } else { __l *= 4; memcpy (__ip, __rd, __l); \\\n"
	.size	.L.str.107, 54

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"               __ip += __l; __rd += __l; } } \\\n"
	.size	.L.str.108, 48

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"  } else { /* RGB */ \\\n"
	.size	.L.str.109, 24

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"        do { memcpy (__ip, __rd, 3); __ip += 3; } while (--__l); __rd += 3; \\\n"
	.size	.L.str.110, 79

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"      } else { __l *= 3; memcpy (__ip, __rd, __l); \\\n"
	.size	.L.str.111, 54

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"  } } while (0)\n"
	.size	.L.str.112, 17

	.type	save_uchar.pad,@object  # @save_uchar.pad
	.local	save_uchar.pad
	.comm	save_uchar.pad,1,1
	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"\"\n  \""
	.size	.L.str.113, 6

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"\"\n \""
	.size	.L.str.114, 5

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"\"\""
	.size	.L.str.115, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
