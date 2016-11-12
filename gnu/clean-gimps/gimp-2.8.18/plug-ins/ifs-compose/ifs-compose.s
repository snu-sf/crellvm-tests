	.text
	.file	"ifs-compose.bc"
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
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rax
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movl	$1, %r10d
	movl	$3, %r11d
	movabsq	$query.args, %rbx
	movl	query.nreturn_vals, %r14d
	movq	query.return_vals, %r15
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.13, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -60(%rbp)         # 4-byte Spill
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
	subq	$240, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
	movl	$21, run.values
	movl	-56(%rbp), %esi
	movl	%esi, run.values+8
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.14, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -144(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_35
.LBB1_35:                               # %do.end
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB1_12
	jmp	.LBB1_36
.LBB1_36:                               # %do.end
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_17
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.16, %rsi
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_parasite
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then
	movq	-64(%rbp), %rdi
	callq	gimp_parasite_data
	movabsq	$ifsvals, %rsi
	movabsq	$elements, %rdx
	movq	%rax, %rdi
	callq	ifsvals_parse_string
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_parasite_free
.LBB1_5:                                # %if.end
	cmpl	$0, -72(%rbp)
	jne	.LBB1_9
# BB#6:                                 # %if.then.13
	movabsq	$.L.str.6, %rdi
	callq	gimp_procedural_db_get_data_size
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jle	.LBB1_8
# BB#7:                                 # %if.then.15
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movabsq	$.L.str.6, %rdi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$ifsvals, %rsi
	movabsq	$elements, %rdx
	movq	-88(%rbp), %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	ifsvals_parse_string
	movq	-88(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_free
.LBB1_8:                                # %if.end.20
	jmp	.LBB1_9
.LBB1_9:                                # %if.end.21
	movl	ifsvals, %eax
	movl	%eax, count_for_naming
	movq	-48(%rbp), %rdi
	callq	ifs_compose_dialog
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#10:                                # %if.then.24
	jmp	.LBB1_34
.LBB1_11:                               # %if.end.25
	jmp	.LBB1_18
.LBB1_12:                               # %sw.bb.26
	movl	$1, -56(%rbp)
	jmp	.LBB1_18
.LBB1_13:                               # %sw.bb.27
	movabsq	$.L.str.6, %rdi
	callq	gimp_procedural_db_get_data_size
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jle	.LBB1_15
# BB#14:                                # %if.then.32
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-92(%rbp), %rdi
	callq	g_malloc_n
	movabsq	$.L.str.6, %rdi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$ifsvals, %rsi
	movabsq	$elements, %rdx
	movq	-104(%rbp), %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	ifsvals_parse_string
	movq	-104(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	g_free
	jmp	.LBB1_16
.LBB1_15:                               # %if.else
	callq	ifs_compose_set_defaults
.LBB1_16:                               # %if.end.38
	jmp	.LBB1_18
.LBB1_17:                               # %sw.default
	jmp	.LBB1_18
.LBB1_18:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_30
# BB#19:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_21
# BB#20:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_30
.LBB1_21:                               # %if.then.47
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	8(%rax), %ecx
	jbe	.LBB1_23
# BB#22:                                # %cond.true
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB1_24
.LBB1_23:                               # %cond.false
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB1_24:                               # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-184(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	cmpl	$0, -52(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.56
	movl	-68(%rbp), %edi
	callq	gimp_image_undo_group_start
	movq	-48(%rbp), %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	ifs_compose
	movabsq	$ifsvals, %rdi
	movq	elements, %rsi
	callq	ifsvals_stringify
	movabsq	$.L.str.6, %rdi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	callq	gimp_procedural_db_set_data
	movabsq	$.L.str.16, %rdi
	movl	$3, %esi
	movq	-112(%rbp), %r8
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%esi, -224(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-112(%rbp), %rax
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-224(%rbp), %esi        # 4-byte Reload
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	gimp_parasite_new
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	movq	-120(%rbp), %rsi
	callq	gimp_item_attach_parasite
	movq	-120(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	movq	-112(%rbp), %rdi
	callq	g_free
	movl	-68(%rbp), %edi
	callq	gimp_image_undo_group_end
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.71
	movq	-48(%rbp), %rdi
	callq	ifs_compose
.LBB1_27:                               # %if.end.72
	cmpl	$1, -52(%rbp)
	je	.LBB1_29
# BB#28:                                # %if.then.75
	callq	gimp_displays_flush
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB1_29:                               # %if.end.77
	jmp	.LBB1_33
.LBB1_30:                               # %if.else.78
	cmpl	$3, -56(%rbp)
	jne	.LBB1_32
# BB#31:                                # %if.then.81
	movl	$0, -56(%rbp)
.LBB1_32:                               # %if.end.82
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.83
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_34:                               # %return
	addq	$240, %rsp
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4617315517961601024     # double 5
.LCPI3_2:
	.quad	4611686018427387904     # double 2
.LCPI3_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	ifs_compose_dialog,@function
ifs_compose_dialog:                     # @ifs_compose_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$792, %rsp              # imm = 0x318
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	4(%rdi), %eax
	movl	%eax, -124(%rbp)
	movq	-48(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -128(%rbp)
	movl	-124(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jle	.LBB3_4
# BB#1:                                 # %if.then
	cmpl	$300, -124(%rbp)        # imm = 0x12C
	jle	.LBB3_3
# BB#2:                                 # %if.then.2
	imull	$300, -128(%rbp), %eax  # imm = 0x12C
	cltd
	idivl	-124(%rbp)
	movl	%eax, -128(%rbp)
	movl	$300, -124(%rbp)        # imm = 0x12C
.LBB3_3:                                # %if.end
	jmp	.LBB3_7
.LBB3_4:                                # %if.else
	cmpl	$300, -128(%rbp)        # imm = 0x12C
	jle	.LBB3_6
# BB#5:                                 # %if.then.4
	imull	$300, -124(%rbp), %eax  # imm = 0x12C
	cltd
	idivl	-128(%rbp)
	movl	%eax, -124(%rbp)
	movl	$300, -128(%rbp)        # imm = 0x12C
.LBB3_6:                                # %if.end.7
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.8
	movl	$1, %eax
	movl	%eax, %edi
	movl	$456, %eax              # imm = 0x1C8
	movl	%eax, %esi
	callq	g_malloc0_n
	movabsq	$.L.str.17, %rdi
	movl	$1, %esi
	movq	%rax, ifsD
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movq	ifsD, %rax
	movl	%ecx, 164(%rax)
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movq	ifsD, %rax
	movl	%ecx, 168(%rax)
	movl	-124(%rbp), %ecx
	movq	ifsD, %rax
	movl	%ecx, 172(%rax)
	movl	-128(%rbp), %ecx
	movq	ifsD, %rax
	movl	%ecx, 176(%rax)
	callq	gimp_ui_init
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movabsq	$.L.str.19, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.20, %rdi
	movl	$2, %r10d
	movabsq	$.L.str.21, %r11
	movl	$3, %ebx
	movabsq	$.L.str.22, %r14
	movl	$1, %r15d
	movabsq	$.L.str.23, %r12
	movl	$4294967290, %r13d      # imm = 0xFFFFFFFA
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movabsq	$.L.str.24, %rax
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	$4294967291, %ecx       # imm = 0xFFFFFFFB
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$2, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$3, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$1, 40(%rsp)
	movq	%r12, 48(%rsp)
	movl	$-6, 56(%rsp)
	movq	-352(%rbp), %r11        # 8-byte Reload
	movq	%r11, 64(%rsp)
	movl	$-5, 72(%rsp)
	movq	$0, 80(%rsp)
	movb	$0, %al
	movl	%r10d, -368(%rbp)       # 4-byte Spill
	movl	%r15d, -372(%rbp)       # 4-byte Spill
	movl	%r13d, -376(%rbp)       # 4-byte Spill
	movl	%ebx, -380(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$3, %edx
	movl	$1, %ecx
	movl	$4294967291, %r8d       # imm = 0xFFFFFFFB
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movb	$0, %al
	movl	%r10d, -396(%rbp)       # 4-byte Spill
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.25, %rsi
	movabsq	$ifs_compose_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	-416(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movl	-124(%rbp), %esi
	movl	-128(%rbp), %edx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	design_area_create
	movabsq	$.L.str.27, %rsi
	movq	ifsDesign, %rax
	movq	8(%rax), %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -460(%rbp)        # 4-byte Spill
	movl	-460(%rbp), %ecx        # 4-byte Reload
	movl	-460(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movss	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%esi, %esi
	cvtsi2sdl	-124(%rbp), %xmm1
	cvtsi2sdl	-128(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm2
	movss	%xmm0, -504(%rbp)       # 4-byte Spill
	movss	-504(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_aspect_frame_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-80(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
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
	movq	-104(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	ifsDesign, %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movss	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorl	%esi, %esi
	cvtsi2sdl	-124(%rbp), %xmm1
	cvtsi2sdl	-128(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm2
	movss	%xmm0, -532(%rbp)       # 4-byte Spill
	movss	-532(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_aspect_frame_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-80(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	callq	gimp_preview_area_new
	movq	ifsD, %rsi
	movq	%rax, 144(%rsi)
	movq	ifsD, %rax
	movq	144(%rax), %rdi
	movq	ifsD, %rax
	movl	172(%rax), %esi
	movq	ifsD, %rax
	movl	176(%rax), %edx
	callq	gtk_widget_set_size_request
	movq	-104(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	ifsD, %rsi
	movq	144(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	ifsD, %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_frame_new
	movq	ifsD, %rsi
	movq	%rax, 136(%rsi)
	movq	-88(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	ifsD, %rsi
	movq	136(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	movl	-572(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	ifsD, %rax
	movq	136(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	callq	gtk_notebook_new
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_tab_pos
	movq	-72(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -604(%rbp)        # 4-byte Spill
	movl	-604(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	callq	ifs_compose_trans_page
	movabsq	$.L.str.28, %rdi
	movq	%rax, -120(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	movss	%xmm0, -620(%rbp)       # 4-byte Spill
	movss	-620(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-112(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-120(%rbp), %rdi
	movl	%eax, -636(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	callq	ifs_compose_color_page
	movabsq	$.L.str.29, %rdi
	movq	%rax, -120(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	movss	%xmm0, -652(%rbp)       # 4-byte Spill
	movss	-652(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-112(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-120(%rbp), %rdi
	movl	%eax, -668(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	movl	-684(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	movl	-708(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %ecx
	movq	ifsD, %rax
	addq	$200, %rax
	addq	$240, %rax
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	value_pair_create
	movq	ifsD, %rdi
	movq	%rax, (%rdi)
	movq	-80(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	ifsD, %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	ifsD, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	ifsD, %rsi
	movq	(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -732(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-732(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -736(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-736(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	ifsD, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	ifsD, %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$0, ifsvals
	jne	.LBB3_9
# BB#8:                                 # %if.then.117
	callq	ifs_compose_set_defaults
	jmp	.LBB3_27
.LBB3_9:                                # %if.else.118
	movl	$4, %eax
	movl	%eax, %esi
	movq	ifsD, %rcx
	cvtsi2sdl	168(%rcx), %xmm0
	movq	ifsD, %rcx
	cvtsi2sdl	164(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movslq	ifsvals, %rdi
	callq	g_malloc_n
	movq	%rax, element_selected
	movq	element_selected, %rax
	movl	$1, (%rax)
	movl	$1, -132(%rbp)
.LBB3_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB3_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB3_10 Depth=1
	movslq	-132(%rbp), %rax
	movq	element_selected, %rcx
	movl	$0, (%rcx,%rax,4)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB3_10 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB3_10
.LBB3_13:                               # %for.end
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	ifsvals+24, %xmm0
	jne	.LBB3_14
	jp	.LBB3_14
	jmp	.LBB3_22
.LBB3_14:                               # %if.then.131
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	ifsvals+24, %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_16
# BB#15:                                # %if.then.135
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	-144(%rbp), %xmm3       # xmm3 = mem[0],zero
	divsd	ifsvals+24, %xmm3
	movsd	%xmm3, -328(%rbp)
	subsd	-328(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -296(%rbp)
	movsd	%xmm0, -304(%rbp)
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.138
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, -328(%rbp)
	movsd	%xmm1, -296(%rbp)
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	ifsvals+24, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -304(%rbp)
.LBB3_17:                               # %if.end.141
	leaq	-192(%rbp), %rdi
	xorl	%esi, %esi
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	aff2_scale
	leaq	-240(%rbp), %rdi
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	aff2_translate
	leaq	-288(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	callq	aff2_compose
	leaq	-192(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	callq	aff2_invert
	leaq	-288(%rbp), %rdi
	leaq	-312(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	movsd	ifsvals+32, %xmm0       # xmm0 = mem[0],zero
	movsd	ifsvals+40, %xmm1       # xmm1 = mem[0],zero
	callq	aff2_apply
	movl	$0, -132(%rbp)
.LBB3_18:                               # %for.cond.142
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB3_21
# BB#19:                                # %for.body.145
                                        #   in Loop: Header=BB3_18 Depth=1
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movslq	-132(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	movsd	ifsvals+24, %xmm1       # xmm1 = mem[0],zero
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
	leaq	-240(%rbp), %rdi
	leaq	-192(%rbp), %rdx
	movslq	-132(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$248, %rax
	movq	%rax, %rsi
	callq	aff2_compose
	leaq	-288(%rbp), %rsi
	leaq	-240(%rbp), %rdx
	movslq	-132(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$248, %rax
	movq	%rax, %rdi
	callq	aff2_compose
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movslq	-132(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-132(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$248, %rax
	movsd	ifsvals+24, %xmm1       # xmm1 = mem[0],zero
	movsd	-312(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-320(%rbp), %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %rsi
	callq	aff_element_decompose_trans
# BB#20:                                # %for.inc.158
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB3_18
.LBB3_21:                               # %for.end.160
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, ifsvals+32
	movsd	-320(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, ifsvals+40
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, ifsvals+24
.LBB3_22:                               # %if.end.161
	movl	$0, -132(%rbp)
.LBB3_23:                               # %for.cond.162
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB3_26
# BB#24:                                # %for.body.165
                                        #   in Loop: Header=BB3_23 Depth=1
	movslq	-132(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	aff_element_compute_color_trans
# BB#25:                                # %for.inc.168
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB3_23
.LBB3_26:                               # %for.end.170
	xorl	%edi, %edi
	callq	set_current_element
	movl	$416, %edi              # imm = 0x1A0
	movl	%edi, %esi
	movslq	ifsvals, %rdi
	callq	g_malloc_n
	movq	ifsD, %rsi
	movq	%rax, 184(%rsi)
.LBB3_27:                               # %if.end.173
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	ifs_compose_preview
	callq	gtk_main
	movq	ifsDesign, %rdi
	movq	8(%rdi), %rdi
	callq	g_object_unref
	cmpq	$0, -56(%rbp)
	je	.LBB3_29
# BB#28:                                # %if.then.175
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB3_29:                               # %if.end.176
	cmpq	$0, ifsOptD
	je	.LBB3_31
# BB#30:                                # %if.then.178
	movq	ifsOptD, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
.LBB3_31:                               # %if.end.180
	callq	gdk_flush
	movq	ifsD, %rax
	movq	%rax, %rdi
	callq	g_free
	movl	ifscint, %eax
	addq	$792, %rsp              # imm = 0x318
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ifs_compose_dialog, .Lfunc_end3-ifs_compose_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4602678819172646912     # double 0.5
.LCPI4_1:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI4_2:
	.quad	4600336947366414254     # double 0.37
.LCPI4_3:
	.quad	4599075939470750515     # double 0.29999999999999999
	.text
	.align	16, 0x90
	.type	ifs_compose_set_defaults,@function
ifs_compose_set_defaults:               # @ifs_compose_set_defaults
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
	leaq	-40(%rbp), %rdi
	callq	gimp_context_get_foreground
	movq	ifsD, %rdi
	cvtsi2sdl	168(%rdi), %xmm0
	movq	ifsD, %rdi
	cvtsi2sdl	164(%rdi), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, ifsvals+24
	movl	$0, -4(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	aff_element_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movl	$0, count_for_naming
	movl	$3, ifsvals
	movq	elements, %rax
	movslq	ifsvals, %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_realloc
	movq	%rax, elements
	movq	element_selected, %rax
	movslq	ifsvals, %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_realloc
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	leaq	-40(%rbp), %rdi
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, element_selected
	mulsd	ifsvals+24, %xmm1
	movl	count_for_naming, %edx
	addl	$1, %edx
	movl	%edx, count_for_naming
	movl	%edx, %esi
	callq	aff_element_new
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	leaq	-40(%rbp), %rdi
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movq	elements, %rcx
	movq	%rax, (%rcx)
	movq	element_selected, %rax
	movl	$0, (%rax)
	mulsd	ifsvals+24, %xmm1
	movl	count_for_naming, %edx
	addl	$1, %edx
	movl	%edx, count_for_naming
	movl	%edx, %esi
	callq	aff_element_new
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-40(%rbp), %rdi
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movq	elements, %rcx
	movq	%rax, 8(%rcx)
	movq	element_selected, %rax
	movl	$0, 4(%rax)
	mulsd	ifsvals+24, %xmm1
	movl	count_for_naming, %edx
	addl	$1, %edx
	movl	%edx, count_for_naming
	movl	%edx, %esi
	callq	aff_element_new
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	elements, %rcx
	movq	%rax, 16(%rcx)
	movq	element_selected, %rax
	movl	$0, 8(%rax)
	movsd	%xmm0, ifsvals+32
	mulsd	ifsvals+24, %xmm0
	movsd	%xmm0, ifsvals+40
	movq	ifsD, %rax
	movl	168(%rax), %edx
	movq	ifsD, %rax
	imull	164(%rax), %edx
	movl	%edx, ifsvals+4
	movl	$3, ifsvals+12
	movl	$4096, ifsvals+8        # imm = 0x1000
	cmpq	$0, ifsOptD
	je	.LBB4_6
# BB#5:                                 # %if.then
	movq	ifsOptD, %rax
	movq	8(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	16(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	24(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	32(%rax), %rdi
	callq	value_pair_update
.LBB4_6:                                # %if.end
	xorl	%edi, %edi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, ifsvals+16
	callq	set_current_element
	xorl	%edi, %edi
	movq	element_selected, %rax
	movl	$1, (%rax)
	callq	recompute_center
	movq	ifsD, %rax
	cmpq	$0, 184(%rax)
	je	.LBB4_8
# BB#7:                                 # %if.then.29
	movq	ifsD, %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB4_8:                                # %if.end.31
	movl	$416, %eax              # imm = 0x1A0
	movl	%eax, %esi
	movslq	ifsvals, %rdi
	callq	g_malloc_n
	movq	ifsD, %rsi
	movq	%rax, 184(%rsi)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ifs_compose_set_defaults, .Lfunc_end4-ifs_compose_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	ifs_compose,@function
ifs_compose:                            # @ifs_compose
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_type
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -44(%rbp)
	movq	$0, -88(%rbp)
	movl	-40(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	ifsvals+12, %edi
	imull	ifsvals+12, %edi
	imull	%edi, %eax
	imull	$5, %eax, %eax
	cvtsi2sdl	%eax, %xmm0
	movl	ifsvals+8, %eax
	shll	$10, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB5_2
# BB#1:                                 # %if.then
	movl	-44(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB5_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	ifsvals+12, %ecx
	imull	ifsvals+12, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movl	-40(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movl	ifsvals+12, %edx
	imull	ifsvals+12, %edx
	imull	%edx, %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movl	-40(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movl	ifsvals+12, %edx
	imull	ifsvals+12, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-136(%rbp), %rdi
	movq	%rax, -96(%rbp)
	callq	gimp_context_get_background
	leaq	-136(%rbp), %rdi
	leaq	-97(%rbp), %rsi
	leaq	-98(%rbp), %rdx
	leaq	-99(%rbp), %rcx
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_11 Depth 4
                                        #           Child Loop BB5_13 Depth 5
                                        #             Child Loop BB5_15 Depth 6
	movl	-60(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB5_36
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movabsq	$.L.str.122, %rdi
	callq	gettext
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	-48(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	-56(%rbp), %ecx
	addl	-52(%rbp), %ecx
	cmpl	-44(%rbp), %ecx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jle	.LBB5_6
# BB#5:                                 # %if.then.37
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-44(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB5_6:                                # %if.end.39
                                        #   in Loop: Header=BB5_3 Depth=1
	movabsq	$ifsvals, %r9
	xorl	%eax, %eax
	movq	-88(%rbp), %rdi
	movl	-40(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movl	ifsvals+12, %edx
	imull	ifsvals+12, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdx
	movl	%eax, %esi
	movq	%r9, -272(%rbp)         # 8-byte Spill
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	memset
	movq	-96(%rbp), %rdi
	movl	-40(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	ifsvals+12, %ecx
	imull	ifsvals+12, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movl	-276(%rbp), %esi        # 4-byte Reload
	callq	memset
	movq	elements, %rdi
	movl	ifsvals, %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	ifsvals+4, %r8d
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %r10d
	movq	-80(%rbp), %r9
	movq	-88(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	-272(%rbp), %r14        # 8-byte Reload
	movq	%r9, -288(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	-288(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movl	$0, 40(%rsp)
	callq	ifs_render
	leaq	-184(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %eax
	movq	-32(%rbp), %rsi
	movl	-56(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-184(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -192(%rbp)
.LBB5_7:                                # %for.cond.49
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_9 Depth 3
                                        #         Child Loop BB5_11 Depth 4
                                        #           Child Loop BB5_13 Depth 5
                                        #             Child Loop BB5_15 Depth 6
	cmpq	$0, -192(%rbp)
	je	.LBB5_34
# BB#8:                                 # %for.body.52
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-156(%rbp), %ecx
	movl	%ecx, -68(%rbp)
.LBB5_9:                                # %for.cond.54
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_11 Depth 4
                                        #           Child Loop BB5_13 Depth 5
                                        #             Child Loop BB5_15 Depth 6
	movl	-68(%rbp), %eax
	movl	-156(%rbp), %ecx
	addl	-148(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_32
# BB#10:                                # %for.body.59
                                        #   in Loop: Header=BB5_9 Depth=3
	movq	-200(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	-160(%rbp), %ecx
	movl	%ecx, -64(%rbp)
.LBB5_11:                               # %for.cond.60
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB5_13 Depth 5
                                        #             Child Loop BB5_15 Depth 6
	movl	-64(%rbp), %eax
	movl	-160(%rbp), %ecx
	addl	-152(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_30
# BB#12:                                # %for.body.65
                                        #   in Loop: Header=BB5_11 Depth=4
	movl	$0, -212(%rbp)
	movl	$0, -216(%rbp)
	movl	$0, -220(%rbp)
	movl	$0, -224(%rbp)
	movl	$0, -232(%rbp)
.LBB5_13:                               # %for.cond.66
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        #         Parent Loop BB5_11 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB5_15 Depth 6
	movl	-232(%rbp), %eax
	cmpl	ifsvals+12, %eax
	jge	.LBB5_20
# BB#14:                                # %for.body.69
                                        #   in Loop: Header=BB5_13 Depth=5
	movq	-80(%rbp), %rax
	movl	-68(%rbp), %ecx
	subl	-56(%rbp), %ecx
	imull	ifsvals+12, %ecx
	addl	-232(%rbp), %ecx
	imull	ifsvals+12, %ecx
	imull	-40(%rbp), %ecx
	movl	-64(%rbp), %edx
	imull	ifsvals+12, %edx
	addl	%edx, %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -240(%rbp)
	movq	-88(%rbp), %rax
	movl	-68(%rbp), %ecx
	subl	-56(%rbp), %ecx
	imull	ifsvals+12, %ecx
	addl	-232(%rbp), %ecx
	imull	ifsvals+12, %ecx
	imull	-40(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movl	-64(%rbp), %ecx
	imull	ifsvals+12, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -248(%rbp)
	movl	$0, -228(%rbp)
.LBB5_15:                               # %for.cond.88
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        #       Parent Loop BB5_9 Depth=3
                                        #         Parent Loop BB5_11 Depth=4
                                        #           Parent Loop BB5_13 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-228(%rbp), %eax
	cmpl	ifsvals+12, %eax
	jge	.LBB5_18
# BB#16:                                # %for.body.91
                                        #   in Loop: Header=BB5_15 Depth=6
	movq	-248(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -248(%rbp)
	movb	(%rax), %dl
	movb	%dl, -249(%rbp)
	movzbl	-249(%rbp), %esi
	addl	-224(%rbp), %esi
	movl	%esi, -224(%rbp)
	movzbl	-249(%rbp), %esi
	movq	-240(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -240(%rbp)
	movzbl	(%rax), %edi
	imull	%edi, %esi
	addl	-212(%rbp), %esi
	movl	%esi, -212(%rbp)
	movzbl	-249(%rbp), %esi
	movq	-240(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -240(%rbp)
	movzbl	(%rax), %edi
	imull	%edi, %esi
	addl	-220(%rbp), %esi
	movl	%esi, -220(%rbp)
	movzbl	-249(%rbp), %esi
	movq	-240(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -240(%rbp)
	movzbl	(%rax), %edi
	imull	%edi, %esi
	addl	-216(%rbp), %esi
	movl	%esi, -216(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB5_15 Depth=6
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB5_15
.LBB5_18:                               # %for.end
                                        #   in Loop: Header=BB5_13 Depth=5
	jmp	.LBB5_19
.LBB5_19:                               # %for.inc.109
                                        #   in Loop: Header=BB5_13 Depth=5
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB5_13
.LBB5_20:                               # %for.end.111
                                        #   in Loop: Header=BB5_11 Depth=4
	cmpl	$0, -224(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.112
                                        #   in Loop: Header=BB5_11 Depth=4
	movl	-224(%rbp), %eax
	movl	-212(%rbp), %ecx
	movl	%eax, -296(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-296(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -212(%rbp)
	movl	-224(%rbp), %eax
	movl	-220(%rbp), %esi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-300(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -220(%rbp)
	movl	-224(%rbp), %eax
	movl	-216(%rbp), %edi
	movl	%eax, -304(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-304(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%eax, -216(%rbp)
	movl	ifsvals+12, %eax
	imull	ifsvals+12, %eax
	movl	-224(%rbp), %r8d
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-308(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movl	%eax, -224(%rbp)
.LBB5_22:                               # %if.end.118
                                        #   in Loop: Header=BB5_11 Depth=4
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	ja	.LBB5_28
# BB#37:                                # %if.end.118
                                        #   in Loop: Header=BB5_11 Depth=4
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_23:                               # %sw.bb
                                        #   in Loop: Header=BB5_11 Depth=4
	movl	$765, %eax              # imm = 0x2FD
	movl	$255, %ecx
	movl	-224(%rbp), %edx
	movl	-212(%rbp), %esi
	addl	-216(%rbp), %esi
	addl	-220(%rbp), %esi
	imull	%esi, %edx
	subl	-224(%rbp), %ecx
	movzbl	-97(%rbp), %esi
	movzbl	-98(%rbp), %edi
	addl	%edi, %esi
	movzbl	-99(%rbp), %edi
	addl	%edi, %esi
	imull	%esi, %ecx
	addl	%ecx, %edx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-332(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movq	-208(%rbp), %r9
	movq	%r9, %r10
	addq	$1, %r10
	movq	%r10, -208(%rbp)
	movb	%r8b, (%r9)
	jmp	.LBB5_28
.LBB5_24:                               # %sw.bb.133
                                        #   in Loop: Header=BB5_11 Depth=4
	movl	$3, %eax
	movl	-212(%rbp), %ecx
	addl	-216(%rbp), %ecx
	addl	-220(%rbp), %ecx
	movl	%eax, -336(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-336(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %sil
	movq	-208(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -208(%rbp)
	movb	%sil, (%rdi)
	movl	-224(%rbp), %eax
	movb	%al, %sil
	movq	-208(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -208(%rbp)
	movb	%sil, (%rdi)
	jmp	.LBB5_28
.LBB5_25:                               # %sw.bb.141
                                        #   in Loop: Header=BB5_11 Depth=4
	movl	$255, %eax
	movl	-224(%rbp), %ecx
	imull	-212(%rbp), %ecx
	movl	%eax, %edx
	subl	-224(%rbp), %edx
	movzbl	-97(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-340(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %dil
	movq	-208(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -208(%rbp)
	movb	%dil, (%r8)
	movl	-224(%rbp), %eax
	imull	-220(%rbp), %eax
	subl	-224(%rbp), %ecx
	movzbl	-98(%rbp), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	cltd
	movl	-340(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %dil
	movq	-208(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -208(%rbp)
	movb	%dil, (%r8)
	movl	-224(%rbp), %eax
	imull	-216(%rbp), %eax
	subl	-224(%rbp), %ecx
	movzbl	-99(%rbp), %esi
	imull	%esi, %ecx
	addl	%ecx, %eax
	cltd
	movl	-340(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %dil
	movq	-208(%rbp), %r8
	movq	%r8, %r9
	addq	$1, %r9
	movq	%r9, -208(%rbp)
	movb	%dil, (%r8)
	jmp	.LBB5_28
.LBB5_26:                               # %sw.bb.166
                                        #   in Loop: Header=BB5_11 Depth=4
	movl	-212(%rbp), %eax
	movb	%al, %cl
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -208(%rbp)
	movb	%cl, (%rdx)
	movl	-220(%rbp), %eax
	movb	%al, %cl
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -208(%rbp)
	movb	%cl, (%rdx)
	movl	-216(%rbp), %eax
	movb	%al, %cl
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -208(%rbp)
	movb	%cl, (%rdx)
	movl	-224(%rbp), %eax
	movb	%al, %cl
	movq	-208(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -208(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB5_28
.LBB5_27:                               # %sw.bb.175
                                        #   in Loop: Header=BB5_11 Depth=4
	movabsq	$.L.str.123, %rdi
	movb	$0, %al
	callq	g_error
.LBB5_28:                               # %sw.epilog
                                        #   in Loop: Header=BB5_11 Depth=4
	jmp	.LBB5_29
.LBB5_29:                               # %for.inc.176
                                        #   in Loop: Header=BB5_11 Depth=4
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB5_11
.LBB5_30:                               # %for.end.178
                                        #   in Loop: Header=BB5_9 Depth=3
	movl	-164(%rbp), %eax
	movq	-200(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
# BB#31:                                # %for.inc.181
                                        #   in Loop: Header=BB5_9 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB5_9
.LBB5_32:                               # %for.end.183
                                        #   in Loop: Header=BB5_7 Depth=2
	jmp	.LBB5_33
.LBB5_33:                               # %for.inc.184
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	-192(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -192(%rbp)
	jmp	.LBB5_7
.LBB5_34:                               # %for.end.186
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
# BB#35:                                # %for.inc.188
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB5_3
.LBB5_36:                               # %for.end.190
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%esi, %esi
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	%esi, -344(%rbp)        # 4-byte Spill
	movl	-344(%rbp), %edx        # 4-byte Reload
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -352(%rbp)        # 4-byte Spill
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ifs_compose, .Lfunc_end5-ifs_compose
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_25
	.quad	.LBB5_26
	.quad	.LBB5_23
	.quad	.LBB5_24
	.quad	.LBB5_27
	.quad	.LBB5_27

	.text
	.align	16, 0x90
	.type	ifs_compose_response,@function
ifs_compose_response:                   # @ifs_compose_response
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	addl	$5, %esi
	movl	%esi, %edx
	subl	$8, %esi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	ja	.LBB6_13
# BB#15:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-8(%rbp), %rdi
	callq	ifs_compose_load
	jmp	.LBB6_14
.LBB6_2:                                # %sw.bb.1
	movq	-8(%rbp), %rdi
	callq	ifs_compose_save
	jmp	.LBB6_14
.LBB6_3:                                # %sw.bb.2
	leaq	-40(%rbp), %rsi
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	callq	undo_begin
	movl	$0, -44(%rbp)
.LBB6_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB6_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB6_4 Depth=1
	movl	-44(%rbp), %edi
	callq	undo_update
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB6_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_4
.LBB6_7:                                # %for.end
	callq	ifs_compose_set_defaults
	callq	ifs_compose_preview
	movl	$0, -44(%rbp)
.LBB6_8:                                # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB6_11
# BB#9:                                 # %for.body.5
                                        #   in Loop: Header=BB6_8 Depth=1
	movslq	-44(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
# BB#10:                                # %for.inc.7
                                        #   in Loop: Header=BB6_8 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_8
.LBB6_11:                               # %for.end.9
	callq	design_area_redraw
	callq	design_op_actions_update
	jmp	.LBB6_14
.LBB6_12:                               # %sw.bb.10
	movl	$1, ifscint
.LBB6_13:                               # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB6_14:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ifs_compose_response, .Lfunc_end6-ifs_compose_response
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_12
	.quad	.LBB6_13
	.quad	.LBB6_13
	.quad	.LBB6_13
	.quad	.LBB6_13
	.quad	.LBB6_13
	.quad	.LBB6_3
	.quad	.LBB6_1
	.quad	.LBB6_2

	.text
	.align	16, 0x90
	.type	design_area_create,@function
design_area_create:                     # @design_area_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$88, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_malloc0_n
	movq	%rax, ifsDesign
	movq	ifsDesign, %rax
	movl	$0, 24(%rax)
	callq	gtk_drawing_area_new
	movq	ifsDesign, %rcx
	movq	%rax, (%rcx)
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gtk_widget_set_size_request
	movabsq	$.L.str.43, %rsi
	movabsq	$design_area_realize, %rax
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r9d, %r9d
	movq	ifsDesign, %rdi
	movq	(%rdi), %rdi
	movq	%rax, %rdx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.44, %rsi
	movabsq	$design_area_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	ifsDesign, %rdi
	movq	(%rdi), %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %r8          # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.45, %rsi
	movabsq	$design_area_button_press, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	ifsDesign, %rdi
	movq	(%rdi), %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rsi
	movabsq	$design_area_button_release, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	ifsDesign, %rdi
	movq	(%rdi), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.47, %rsi
	movabsq	$design_area_motion, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	ifsDesign, %rdi
	movq	(%rdi), %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rsi
	movabsq	$design_area_configure, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	ifsDesign, %rdi
	movq	(%rdi), %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$782, %esi              # imm = 0x30E
	movq	ifsDesign, %rcx
	movq	(%rcx), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_set_events
	movq	-8(%rbp), %rdi
	callq	design_op_menu_create
	movq	ifsDesign, %rcx
	movq	%rax, 8(%rcx)
	callq	design_op_actions_update
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	design_area_create, .Lfunc_end7-design_area_create
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	-4601552919265804288    # double -10
.LCPI8_1:
	.quad	4621819117588971520     # double 10
.LCPI8_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI8_4:
	.quad	-4582834833314545664    # double -180
.LCPI8_5:
	.quad	4640537203540230144     # double 180
.LCPI8_7:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_2:
	.long	1056964608              # float 0.5
.LCPI8_6:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	ifs_compose_trans_page,@function
ifs_compose_trans_page:                 # @ifs_compose_trans_page
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
	pushq	%r14
	pushq	%rbx
	subq	$416, %rsp              # imm = 0x1A0
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movl	$3, %edi
	movl	$6, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.98, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-124(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-128(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_7, %xmm1         # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$1, %edx
	movq	ifsD, %rax
	addq	$200, %rax
	movq	%rax, %rdi
	callq	value_pair_create
	movq	ifsD, %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	ifsD, %rsi
	movq	8(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-148(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-152(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.99, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$4, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -184(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_7, %xmm1         # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$1, %edx
	movq	ifsD, %rax
	addq	$200, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	value_pair_create
	movq	ifsD, %rdi
	movq	%rax, 16(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movq	ifsD, %rsi
	movq	16(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-196(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-200(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -204(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r9d, -208(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.100, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$4, %r10d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -228(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_7, %xmm1         # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$1, %edx
	movq	ifsD, %rax
	addq	$200, %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	value_pair_create
	movq	ifsD, %rdi
	movq	%rax, 24(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	ifsD, %rsi
	movq	24(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.101, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_6, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$3, %edx
	movl	$1, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-260(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-264(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -268(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -272(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_5, %xmm1         # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$1, %edx
	movq	ifsD, %rax
	addq	$200, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	value_pair_create
	movq	ifsD, %rdi
	movq	%rax, 32(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	xorl	%r10d, %r10d
	movq	ifsD, %rsi
	movq	32(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -284(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.102, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$1, %edx
	movq	ifsD, %rax
	addq	$200, %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	value_pair_create
	movq	ifsD, %rdi
	movq	%rax, 40(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %edx
	movl	$6, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$4, %r10d
	movq	ifsD, %rsi
	movq	40(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -316(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	40(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.103, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	xorl	%r10d, %r10d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -340(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	xorl	%esi, %esi
	movl	$1, %edx
	movq	ifsD, %rax
	addq	$200, %rax
	addq	$40, %rax
	movq	%rax, %rdi
	callq	value_pair_create
	movq	ifsD, %rdi
	movq	%rax, 48(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %edx
	movl	$6, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movq	ifsD, %rsi
	movq	48(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -356(%rbp)       # 4-byte Spill
	movl	%r10d, -360(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	48(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.104, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	ifsD, %rsi
	movq	%rax, 56(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$6, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$4, %r10d
	movq	ifsD, %rsi
	movq	56(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -372(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movabsq	$.L.str.105, %rsi
	movabsq	$flip_check_button_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	ifsD, %r14
	movq	56(%r14), %r14
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	-384(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	ifsD, %rcx
	movq	56(%rcx), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ifs_compose_trans_page, .Lfunc_end8-ifs_compose_trans_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	ifs_compose_color_page,@function
ifs_compose_color_page:                 # @ifs_compose_color_page
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
	pushq	%r14
	pushq	%rbx
	subq	$480, %rsp              # imm = 0x1E0
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
	movl	$1, %edi
	movl	$12, %esi
	movq	$0, -48(%rbp)
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movl	$3, %edi
	movl	$5, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.106, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	ifsD, %rsi
	movq	%rax, 120(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$2, %r9d
	movl	$4, %r8d
	movq	ifsD, %rsi
	movq	120(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-140(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-144(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	120(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movabsq	$.L.str.105, %rsi
	movabsq	$simple_color_toggled, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %ebx
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	ifsD, %rax
	movq	120(%rax), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rbx, %rcx
	movq	%rbx, %r8
	callq	g_signal_connect_data
	movq	ifsD, %rcx
	movq	120(%rcx), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.107, %rdi
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movl	$1, %ecx
	movq	ifsD, %rdx
	addq	$200, %rdx
	addq	$184, %rdx
	movq	%rax, %rdi
	callq	color_map_create
	movq	ifsD, %rdx
	movq	%rax, 96(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	ifsD, %rsi
	movq	96(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -192(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	96(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.108, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$4, %r10d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -212(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %ecx
	movq	ifsD, %rax
	addq	$200, %rax
	addq	$216, %rax
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	value_pair_create
	movq	ifsD, %rdi
	movq	%rax, 104(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	ifsD, %rsi
	movq	104(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	ifsD, %rsi
	movq	104(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.109, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$3, %edx
	movl	$1, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-252(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -256(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-256(%rbp), %r14d       # 4-byte Reload
	movl	%r9d, -260(%rbp)        # 4-byte Spill
	movl	%r14d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -264(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %ecx
	movq	ifsD, %rax
	addq	$200, %rax
	addq	$224, %rax
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	value_pair_create
	movq	ifsD, %rdi
	movq	%rax, 112(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	xorl	%r10d, %r10d
	movq	ifsD, %rsi
	movq	112(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -276(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	112(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	xorl	%r10d, %r10d
	movq	ifsD, %rsi
	movq	112(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -292(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	112(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.110, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	ifsD, %rsi
	movq	%rax, 128(%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$4, %r10d
	movq	ifsD, %rsi
	movq	128(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -316(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	128(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -48(%rbp)
	movq	ifsD, %rax
	movq	128(%rax), %rdi
	callq	gtk_widget_show
	leaq	-80(%rbp), %rdi
	movabsq	$.L.str.111, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	gimp_rgb_parse_name
	leaq	-80(%rbp), %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	movabsq	$.L.str.112, %rdi
	callq	gettext
	leaq	-80(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	ifsD, %rdi
	addq	$200, %rdi
	addq	$56, %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-344(%rbp), %rdx        # 8-byte Reload
	callq	color_map_create
	movq	ifsD, %rdx
	movq	%rax, 64(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r9d
	movl	$4, %r8d
	xorl	%r10d, %r10d
	movq	ifsD, %rsi
	movq	64(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -360(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -364(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	leaq	-80(%rbp), %rdi
	movabsq	$.L.str.113, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	gimp_rgb_parse_name
	leaq	-80(%rbp), %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	movabsq	$.L.str.114, %rdi
	callq	gettext
	leaq	-80(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	ifsD, %rdi
	addq	$200, %rdi
	addq	$88, %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-376(%rbp), %rdx        # 8-byte Reload
	callq	color_map_create
	movq	ifsD, %rdx
	movq	%rax, 72(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	ifsD, %rdx
	movq	72(%rdx), %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-388(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -392(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	-392(%rbp), %r14d       # 4-byte Reload
	movl	%r9d, -396(%rbp)        # 4-byte Spill
	movl	%r14d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -400(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	72(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	leaq	-80(%rbp), %rdi
	movabsq	$.L.str.115, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	gimp_rgb_parse_name
	leaq	-80(%rbp), %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	movabsq	$.L.str.116, %rdi
	callq	gettext
	leaq	-80(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	ifsD, %rdi
	addq	$200, %rdi
	addq	$120, %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-416(%rbp), %rdx        # 8-byte Reload
	callq	color_map_create
	movq	ifsD, %rdx
	movq	%rax, 80(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %ecx
	movl	$4, %r8d
	movl	$2, %r9d
	xorl	%r10d, %r10d
	movq	ifsD, %rdx
	movq	80(%rdx), %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	-428(%rbp), %r9d        # 4-byte Reload
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -432(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	80(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	leaq	-80(%rbp), %rdi
	movabsq	$.L.str.117, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	callq	gimp_rgb_parse_name
	leaq	-80(%rbp), %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -436(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	movabsq	$.L.str.118, %rdi
	callq	gettext
	leaq	-80(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	ifsD, %rdi
	addq	$200, %rdi
	addq	$152, %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-448(%rbp), %rdx        # 8-byte Reload
	callq	color_map_create
	movq	ifsD, %rdx
	movq	%rax, 88(%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movq	ifsD, %rsi
	movq	88(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -460(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsD, %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ifs_compose_color_page, .Lfunc_end9-ifs_compose_color_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4621819117588971520     # double 10
.LCPI10_2:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	value_pair_create,@function
value_pair_create:                      # @value_pair_create
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
	subq	$96, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$40, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_malloc_n
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$3, %esi
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI10_2, %xmm2        # xmm2 = mem[0],zero
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	-32(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-40(%rbp), %rax
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-24(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-24(%rbp), %xmm6        # xmm6 = mem[0],zero
	subsd	-16(%rbp), %xmm6
	divsd	%xmm2, %xmm6
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-16(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movq	%rax, %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	%xmm2, -56(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm2
	movaps	%xmm6, %xmm3
	movsd	-56(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-48(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movl	$72, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_set_size_request
	movabsq	$.L.str.120, %rsi
	movabsq	$value_pair_scale_callback, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	cmpl	$0, -28(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB10_5
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	gtk_scale_new
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
	cmpl	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_digits
.LBB10_4:                               # %if.end
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_draw_value
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.21
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
.LBB10_6:                               # %if.end.23
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	value_pair_create, .Lfunc_end10-value_pair_create
	.cfi_endproc

	.align	16, 0x90
	.type	set_current_element,@function
set_current_element:                    # @set_current_element
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
	subq	$32, %rsp
	movabsq	$.L.str.121, %rax
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movslq	-4(%rbp), %rdi
	movq	elements, %rcx
	movq	(%rcx,%rdi,8), %rcx
	movq	392(%rcx), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edx
	movq	ifsD, %rax
	movl	%edx, 192(%rax)
	movq	ifsD, %rax
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label
	movq	-16(%rbp), %rdi
	callq	g_free
	callq	update_values
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	set_current_element, .Lfunc_end11-set_current_element
	.cfi_endproc

	.align	16, 0x90
	.type	ifs_compose_preview,@function
ifs_compose_preview:                    # @ifs_compose_preview
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
	subq	$64, %rsp
	movq	ifsD, %rax
	movl	172(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movq	ifsD, %rax
	movl	176(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	ifsD, %rax
	cmpq	$0, 152(%rax)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	imull	$3, -8(%rbp), %eax
	imull	-12(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	ifsD, %rsi
	movq	%rax, 152(%rsi)
.LBB12_2:                               # %if.end
	leaq	-56(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-56(%rbp), %rdi
	leaq	-13(%rbp), %rsi
	leaq	-14(%rbp), %rdx
	leaq	-15(%rbp), %rcx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movq	ifsD, %rcx
	movq	152(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movl	$0, -4(%rbp)
.LBB12_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	imull	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movb	-13(%rbp), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movb	-14(%rbp), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	movb	-15(%rbp), %al
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB12_3
.LBB12_6:                               # %for.end
	movq	ifsD, %rax
	cmpl	$0, 160(%rax)
	jne	.LBB12_8
# BB#7:                                 # %if.then.11
	movabsq	$preview_idle_render, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	g_idle_add
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB12_8:                               # %if.end.13
	cvtsi2sdl	ifsvals+4, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	cvtsi2sdl	-12(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	ifsD, %rax
	movl	164(%rax), %ecx
	movq	ifsD, %rax
	imull	168(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	ifsD, %rax
	movl	%ecx, 160(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	ifs_compose_preview, .Lfunc_end12-ifs_compose_preview
	.cfi_endproc

	.align	16, 0x90
	.type	ifs_compose_load,@function
ifs_compose_load:                       # @ifs_compose_load
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp58:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	cmpq	$0, ifs_compose_load.dialog
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.23, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.20, %r9
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
	movq	%rax, ifs_compose_load.dialog
	movq	ifs_compose_load.dialog, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	ifs_compose_load.dialog, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.26, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	movabsq	$ifs_compose_load.dialog, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	ifs_compose_load.dialog, %rbx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$ifsfile_load_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	ifs_compose_load.dialog, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB13_2:                               # %if.end
	movq	ifs_compose_load.dialog, %rax
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
.Lfunc_end13:
	.size	ifs_compose_load, .Lfunc_end13-ifs_compose_load
	.cfi_endproc

	.align	16, 0x90
	.type	ifs_compose_save,@function
ifs_compose_save:                       # @ifs_compose_save
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp62:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	cmpq	$0, ifs_compose_save.dialog
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.23, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.21, %r9
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
	movq	%rax, ifs_compose_save.dialog
	movq	ifs_compose_save.dialog, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	ifs_compose_save.dialog, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	ifs_compose_save.dialog, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movabsq	$.L.str.26, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	movabsq	$ifs_compose_save.dialog, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	ifs_compose_save.dialog, %rbx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$ifsfile_save_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	ifs_compose_save.dialog, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB14_2:                               # %if.end
	movq	ifs_compose_save.dialog, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ifs_compose_save, .Lfunc_end14-ifs_compose_save
	.cfi_endproc

	.align	16, 0x90
	.type	undo_begin,@function
undo_begin:                             # @undo_begin
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
	subq	$48, %rsp
	cmpl	$23, undo_cur
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	$1, -12(%rbp)
	movl	undo_start, %ecx
	addl	$1, %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-20(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, undo_start
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movl	undo_cur, %eax
	addl	$1, %eax
	movl	%eax, undo_cur
	movl	undo_num, %eax
	subl	undo_cur, %eax
	movl	%eax, -12(%rbp)
.LBB15_3:                               # %if.end
	movl	$24, %eax
	movl	undo_num, %ecx
	subl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, undo_num
	movl	undo_start, %ecx
	addl	undo_cur, %ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-24(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -8(%rbp)
.LBB15_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_6 Depth 2
	cmpl	$0, -12(%rbp)
	jle	.LBB15_13
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB15_4 Depth=1
	movl	$0, -4(%rbp)
.LBB15_6:                               # %for.cond.6
                                        #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$undo_ring, %rax
	movl	-4(%rbp), %ecx
	movslq	-8(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	(%rax), %ecx
	jge	.LBB15_11
# BB#7:                                 # %for.body.8
                                        #   in Loop: Header=BB15_6 Depth=2
	movabsq	$undo_ring, %rax
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movq	48(%rax), %rax
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB15_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB15_6 Depth=2
	movabsq	$undo_ring, %rax
	movslq	-4(%rbp), %rcx
	movslq	-8(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movq	48(%rax), %rax
	movq	(%rax,%rcx,8), %rdi
	callq	aff_element_free
.LBB15_9:                               # %if.end.19
                                        #   in Loop: Header=BB15_6 Depth=2
	jmp	.LBB15_10
.LBB15_10:                              # %for.inc
                                        #   in Loop: Header=BB15_6 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB15_6
.LBB15_11:                              # %for.end
                                        #   in Loop: Header=BB15_4 Depth=1
	movabsq	$undo_ring, %rax
	movslq	-8(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movabsq	$undo_ring, %rax
	movslq	-8(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#12:                                # %for.inc.26
                                        #   in Loop: Header=BB15_4 Depth=1
	movl	$24, %eax
	movl	-8(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-28(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%edx, -8(%rbp)
	movl	-12(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -12(%rbp)
	jmp	.LBB15_4
.LBB15_13:                              # %for.end.29
	movl	$8, %eax
	movl	%eax, %esi
	movabsq	$ifsvals, %rcx
	movl	$48, %eax
	movl	%eax, %edx
	movabsq	$undo_ring, %rdi
	movslq	-16(%rbp), %r8
	imulq	$72, %r8, %r8
	addq	%r8, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	callq	memcpy
	movslq	ifsvals, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	g_malloc_n
	movl	$4, %r9d
	movl	%r9d, %esi
	movabsq	$undo_ring, %rcx
	movslq	-16(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rax, 48(%rcx)
	movslq	ifsvals, %rdi
	callq	g_malloc_n
	movabsq	$undo_ring, %rcx
	movslq	-16(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rax, 56(%rsi)
	movq	ifsD, %rax
	movl	192(%rax), %r9d
	movslq	-16(%rbp), %rax
	imulq	$72, %rax, %rax
	addq	%rax, %rcx
	movl	%r9d, 64(%rcx)
	movl	$0, -4(%rbp)
.LBB15_14:                              # %for.cond.44
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB15_17
# BB#15:                                # %for.body.47
                                        #   in Loop: Header=BB15_14 Depth=1
	movabsq	$undo_ring, %rax
	movslq	-4(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	48(%rsi), %rdx
	movq	$0, (%rdx,%rcx,8)
	movslq	-4(%rbp), %rcx
	movq	element_selected, %rdx
	movl	(%rdx,%rcx,4), %edi
	movslq	-4(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movq	56(%rax), %rax
	movl	%edi, (%rax,%rcx,4)
# BB#16:                                # %for.inc.60
                                        #   in Loop: Header=BB15_14 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB15_14
.LBB15_17:                              # %for.end.62
	callq	design_op_actions_update
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	undo_begin, .Lfunc_end15-undo_begin
	.cfi_endproc

	.align	16, 0x90
	.type	undo_update,@function
undo_update:                            # @undo_update
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
	subq	$48, %rsp
	movabsq	$undo_ring, %rax
	movl	$24, %ecx
	movl	%edi, -4(%rbp)
	movq	$0, -16(%rbp)
	movslq	-4(%rbp), %rdx
	movl	undo_start, %edi
	addl	undo_cur, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%edi, %eax
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	cltd
	idivl	%ecx
	movslq	%edx, %rsi
	imulq	$72, %rsi, %rsi
	movq	-24(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	movq	48(%r8), %rsi
	movq	-32(%rbp), %r8          # 8-byte Reload
	cmpq	$0, (%rsi,%r8,8)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$416, %eax              # imm = 0x1A0
	movl	%eax, %esi
	callq	g_malloc_n
	movabsq	$undo_ring, %rsi
	movl	$24, %ecx
	movq	%rax, -16(%rbp)
	movslq	-4(%rbp), %rdi
	movl	undo_start, %edx
	addl	undo_cur, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%edx, %r8
	imulq	$72, %r8, %r8
	addq	%r8, %rsi
	movq	48(%rsi), %rsi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movq	%r8, (%rsi,%rdi,8)
.LBB16_2:                               # %if.end
	movl	$416, %eax              # imm = 0x1A0
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rsi
	movq	elements, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	-16(%rbp), %rcx
	movq	$0, 408(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 400(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	undo_update, .Lfunc_end16-undo_update
	.cfi_endproc

	.align	16, 0x90
	.type	design_area_redraw,@function
design_area_redraw:                     # @design_area_redraw
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
	leaq	-16(%rbp), %rsi
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	movl	$0, -20(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB17_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movq	elements, %rcx
	movl	ifsvals, %r8d
	callq	aff_element_compute_boundary
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB17_1
.LBB17_4:                               # %for.end
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_queue_draw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	design_area_redraw, .Lfunc_end17-design_area_redraw
	.cfi_endproc

	.align	16, 0x90
	.type	design_op_actions_update,@function
design_op_actions_update:               # @design_op_actions_update
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
	subq	$16, %rsp
	movabsq	$.L.str.40, %rsi
	movq	ifsDesign, %rax
	movq	8(%rax), %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, undo_cur
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.41, %rsi
	movq	ifsDesign, %rax
	movq	8(%rax), %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	undo_cur, %edx
	movl	undo_num, %r8d
	subl	$1, %r8d
	cmpl	%r8d, %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_sensitive
	movabsq	$.L.str.42, %rsi
	movq	ifsDesign, %rax
	movq	8(%rax), %rdi
	callq	gtk_ui_manager_get_action
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$2, ifsvals
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_sensitive
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	design_op_actions_update, .Lfunc_end18-design_op_actions_update
	.cfi_endproc

	.align	16, 0x90
	.type	ifsfile_load_response,@function
ifsfile_load_response:                  # @ifsfile_load_response
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB19_10
# BB#1:                                 # %if.then
	movq	$0, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	leaq	-40(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-104(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_file_get_contents
	cmpl	$0, %eax
	jne	.LBB19_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %edi
	movq	-104(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ifscompose_message_dialog
	movq	-104(%rbp), %rdi
	callq	g_error_free
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB19_11
.LBB19_3:                               # %if.end
	leaq	-96(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	ifsvals_parse_string
	cmpl	$0, %eax
	jne	.LBB19_5
# BB#4:                                 # %if.then.10
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %edi
	movq	-120(%rbp), %rcx
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ifscompose_message_dialog
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	jmp	.LBB19_11
.LBB19_5:                               # %if.end.18
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	callq	undo_begin
	movl	$0, -108(%rbp)
.LBB19_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	ifsvals, %eax
	jae	.LBB19_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-108(%rbp), %edi
	callq	undo_update
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB19_6 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB19_6
.LBB19_9:                               # %for.end
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	ifsfile_replace_ifsvals
	callq	design_op_actions_update
	callq	ifs_compose_preview
	callq	design_area_redraw
.LBB19_10:                              # %if.end.20
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB19_11:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	ifsfile_load_response, .Lfunc_end19-ifsfile_load_response
	.cfi_endproc

	.align	16, 0x90
	.type	ifscompose_message_dialog,@function
ifscompose_message_dialog:              # @ifscompose_message_dialog
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	$1, %r8d
	movabsq	$.L.str.34, %r9
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	%eax, %esi
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	%r9, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	movb	$0, %al
	callq	gtk_message_dialog_new
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
.LBB20_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	movq	-40(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gtk_widget_destroy
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ifscompose_message_dialog, .Lfunc_end20-ifscompose_message_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	ifsfile_replace_ifsvals,@function
ifsfile_replace_ifsvals:                # @ifsfile_replace_ifsvals
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
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ifsDesign, %rsi
	movq	(%rsi), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation
	movl	$0, -36(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	ifsvals, %eax
	jae	.LBB21_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	elements, %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	aff_element_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB21_1
.LBB21_4:                               # %for.end
	movq	elements, %rax
	movq	%rax, %rdi
	callq	g_free
	movabsq	$ifsvals, %rax
	movl	$48, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	-16(%rbp), %rax
	movq	%rax, elements
	movl	$0, -36(%rbp)
.LBB21_5:                               # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	ifsvals, %eax
	jae	.LBB21_8
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB21_5 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	elements, %rdx
	movq	(%rdx,%rcx,8), %rdi
	cvtsi2sdl	-24(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	elements, %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	aff_element_compute_color_trans
# BB#7:                                 # %for.inc.9
                                        #   in Loop: Header=BB21_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB21_5
.LBB21_8:                               # %for.end.11
	movq	element_selected, %rax
	movslq	ifsvals, %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_realloc
	movq	%rax, element_selected
	movl	$0, -36(%rbp)
.LBB21_9:                               # %for.cond.13
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	ifsvals, %eax
	jae	.LBB21_12
# BB#10:                                # %for.body.16
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	element_selected, %rdx
	movl	$0, (%rdx,%rcx,4)
# BB#11:                                # %for.inc.19
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB21_9
.LBB21_12:                              # %for.end.21
	cmpq	$0, ifsOptD
	je	.LBB21_14
# BB#13:                                # %if.then
	movq	ifsOptD, %rax
	movq	8(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	16(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	24(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	32(%rax), %rdi
	callq	value_pair_update
.LBB21_14:                              # %if.end
	xorl	%edi, %edi
	callq	set_current_element
	xorl	%edi, %edi
	movq	element_selected, %rax
	movl	$1, (%rax)
	callq	recompute_center
	movq	ifsD, %rax
	cmpq	$0, 184(%rax)
	je	.LBB21_16
# BB#15:                                # %if.then.24
	movq	ifsD, %rax
	movq	184(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB21_16:                              # %if.end.26
	movl	$416, %eax              # imm = 0x1A0
	movl	%eax, %esi
	movslq	ifsvals, %rdi
	callq	g_malloc_n
	movq	ifsD, %rsi
	movq	%rax, 184(%rsi)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	ifsfile_replace_ifsvals, .Lfunc_end21-ifsfile_replace_ifsvals
	.cfi_endproc

	.align	16, 0x90
	.type	value_pair_update,@function
value_pair_update:                      # @value_pair_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 24(%rdi)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cvtsi2sdl	(%rax), %xmm0
	callq	gtk_adjustment_set_value
	jmp	.LBB22_3
.LBB22_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
.LBB22_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	value_pair_update, .Lfunc_end22-value_pair_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	recompute_center,@function
recompute_center:                       # @recompute_center
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
	subq	$64, %rsp
	leaq	-24(%rbp), %rsi
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	cmpl	$0, -4(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	callq	undo_begin
.LBB23_2:                               # %if.end
	movl	$0, -28(%rbp)
.LBB23_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB23_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB23_3 Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB23_6
# BB#5:                                 # %if.then.2
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	-28(%rbp), %edi
	callq	undo_update
.LBB23_6:                               # %if.end.3
                                        #   in Loop: Header=BB23_3 Depth=1
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	movsd	ifsvals+24, %xmm1       # xmm1 = mem[0],zero
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
	leaq	-40(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movslq	-28(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$248, %rax
	movq	%rax, %rdi
	callq	aff2_fixed_point
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB23_3
.LBB23_8:                               # %for.end
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	ifsvals, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, ifsvals+32
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	ifsvals, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, ifsvals+40
	movl	$0, -28(%rbp)
.LBB23_9:                               # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB23_12
# BB#10:                                # %for.body.12
                                        #   in Loop: Header=BB23_9 Depth=1
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movslq	-28(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-28(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$248, %rax
	movsd	ifsvals+24, %xmm1       # xmm1 = mem[0],zero
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %rsi
	callq	aff_element_decompose_trans
# BB#11:                                # %for.inc.18
                                        #   in Loop: Header=BB23_9 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB23_9
.LBB23_12:                              # %for.end.20
	cmpl	$1, -16(%rbp)
	jle	.LBB23_19
# BB#13:                                # %land.lhs.true
	cmpl	$1, -12(%rbp)
	jle	.LBB23_19
# BB#14:                                # %if.then.25
	movl	$0, -28(%rbp)
.LBB23_15:                              # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB23_18
# BB#16:                                # %for.body.29
                                        #   in Loop: Header=BB23_15 Depth=1
	movslq	-28(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
# BB#17:                                # %for.inc.36
                                        #   in Loop: Header=BB23_15 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB23_15
.LBB23_18:                              # %for.end.38
	callq	design_area_redraw
	callq	update_values
.LBB23_19:                              # %if.end.39
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	recompute_center, .Lfunc_end23-recompute_center
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4633260481411531256     # double 57.295779513082323
	.text
	.align	16, 0x90
	.type	update_values,@function
update_values:                          # @update_values
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
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	movl	$248, %eax
	movl	%eax, %edx
	movq	ifsD, %rcx
	movl	$1, 448(%rcx)
	movq	ifsD, %rcx
	addq	$200, %rcx
	movq	ifsD, %rsi
	movslq	192(%rsi), %rsi
	movq	elements, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rcx, %rdi
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	ifsD, %rcx
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	216(%rcx), %xmm0
	movsd	%xmm0, 216(%rcx)
	movq	ifsD, %rcx
	movq	(%rcx), %rdi
	callq	value_pair_update
	movq	ifsD, %rcx
	movq	8(%rcx), %rdi
	callq	value_pair_update
	movq	ifsD, %rcx
	movq	16(%rcx), %rdi
	callq	value_pair_update
	movq	ifsD, %rcx
	movq	24(%rcx), %rdi
	callq	value_pair_update
	movq	ifsD, %rcx
	movq	32(%rcx), %rdi
	callq	value_pair_update
	movq	ifsD, %rcx
	movq	40(%rcx), %rdi
	callq	value_pair_update
	movq	ifsD, %rcx
	movq	48(%rcx), %rdi
	callq	value_pair_update
	movq	ifsD, %rcx
	movq	64(%rcx), %rdi
	callq	color_map_update
	movq	ifsD, %rcx
	movq	72(%rcx), %rdi
	callq	color_map_update
	movq	ifsD, %rcx
	movq	80(%rcx), %rdi
	callq	color_map_update
	movq	ifsD, %rcx
	movq	88(%rcx), %rdi
	callq	color_map_update
	movq	ifsD, %rcx
	movq	96(%rcx), %rdi
	callq	color_map_update
	movq	ifsD, %rcx
	movq	104(%rcx), %rdi
	callq	value_pair_update
	movq	ifsD, %rcx
	movq	112(%rcx), %rdi
	callq	value_pair_update
	movq	ifsD, %rcx
	movslq	192(%rcx), %rcx
	movq	elements, %rdx
	movq	(%rdx,%rcx,8), %rcx
	cmpl	$0, 232(%rcx)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	ifsD, %rax
	movq	120(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	jmp	.LBB24_3
.LBB24_2:                               # %if.else
	movq	ifsD, %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB24_3:                               # %if.end
	movq	ifsD, %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	ifsD, %rsi
	movslq	192(%rsi), %rsi
	movq	elements, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movl	48(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	ifsD, %rax
	movl	$0, 448(%rax)
	callq	simple_color_set_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	update_values, .Lfunc_end24-update_values
	.cfi_endproc

	.align	16, 0x90
	.type	color_map_update,@function
color_map_update:                       # @color_map_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color
.LBB25_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	color_map_update, .Lfunc_end25-color_map_update
	.cfi_endproc

	.align	16, 0x90
	.type	simple_color_set_sensitive,@function
simple_color_set_sensitive:             # @simple_color_set_sensitive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	ifsD, %rax
	movslq	192(%rax), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	movl	232(%rax), %edx
	movl	%edx, -4(%rbp)
	movq	ifsD, %rax
	movq	96(%rax), %rax
	movq	8(%rax), %rdi
	movl	-4(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	ifsD, %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rdi
	movl	-4(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	ifsD, %rax
	movq	104(%rax), %rax
	movq	16(%rax), %rdi
	movl	-4(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	ifsD, %rax
	movq	112(%rax), %rax
	movq	8(%rax), %rdi
	movl	-4(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	ifsD, %rax
	movq	112(%rax), %rax
	movq	16(%rax), %rdi
	movl	-4(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	ifsD, %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rdi
	cmpl	$0, -4(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gtk_widget_set_sensitive
	movq	ifsD, %rax
	movq	72(%rax), %rax
	movq	8(%rax), %rdi
	cmpl	$0, -4(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gtk_widget_set_sensitive
	movq	ifsD, %rax
	movq	80(%rax), %rax
	movq	8(%rax), %rdi
	cmpl	$0, -4(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gtk_widget_set_sensitive
	movq	ifsD, %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	cmpl	$0, -4(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gtk_widget_set_sensitive
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	simple_color_set_sensitive, .Lfunc_end26-simple_color_set_sensitive
	.cfi_endproc

	.align	16, 0x90
	.type	ifsfile_save_response,@function
ifsfile_save_response:                  # @ifsfile_save_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB27_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movabsq	$ifsvals, %rdi
	movq	%rax, -32(%rbp)
	movq	elements, %rsi
	callq	ifsvals_stringify
	movabsq	$.L.str.37, %rsi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$3, %edi
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ifscompose_message_dialog
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB27_5
.LBB27_3:                               # %if.end
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fputs
	movq	-48(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	fclose
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB27_4:                               # %if.end.16
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB27_5:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	ifsfile_save_response, .Lfunc_end27-ifsfile_save_response
	.cfi_endproc

	.align	16, 0x90
	.type	design_area_realize,@function
design_area_realize:                    # @design_area_realize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	ifsDesign, %rax
	movl	24(%rax), %ecx
	movl	%ecx, %eax
	movl	design_area_realize.cursors(,%rax,4), %esi
	callq	gdk_cursor_new_for_display
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	design_area_realize, .Lfunc_end28-design_area_realize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4607182418800017408     # double 1
.LCPI29_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	design_area_expose,@function
design_area_expose:                     # @design_area_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_state
	leaq	-56(%rbp), %rsi
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	ifsDesign, %rsi
	movq	16(%rsi), %rdi
	callq	gdk_cairo_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rsi
	addq	$84, %rsi
	imulq	$12, %rax, %rax
	addq	%rax, %rsi
	callq	gdk_cairo_set_source_color
	movq	-40(%rbp), %rdi
	callq	cairo_paint
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	cairo_set_line_join
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	cairo_set_line_cap
	movsd	.LCPI29_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movsd	ifsvals+32, %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -72(%rbp)
	movsd	ifsvals+40, %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -76(%rbp)
	movq	-40(%rbp), %rdi
	movl	-72(%rbp), %ecx
	subl	$10, %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	callq	cairo_move_to
	movq	-40(%rbp), %rdi
	movl	-72(%rbp), %ecx
	addl	$10, %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	callq	cairo_line_to
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	movl	-76(%rbp), %ecx
	subl	$10, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_move_to
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	movl	-76(%rbp), %ecx
	addl	$10, %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_line_to
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	addq	$24, %rdx
	imulq	$12, %rax, %rax
	addq	%rax, %rdx
	movq	%rdx, %rsi
	callq	gdk_cairo_set_source_color
	movsd	.LCPI29_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-40(%rbp), %rdi
	callq	cairo_stroke
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_create_pango_layout
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB29_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB29_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movslq	-68(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-68(%rbp), %rax
	movq	element_selected, %rcx
	movl	(%rcx,%rax,4), %esi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %r8
	movl	-28(%rbp), %r9d
	movl	%r9d, %eax
	movq	-24(%rbp), %r10
	addq	$24, %r10
	imulq	$12, %rax, %rax
	addq	%rax, %r10
	movq	-64(%rbp), %rax
	movq	%r10, %r9
	movq	%rax, (%rsp)
	callq	aff_element_draw
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB29_1
.LBB29_4:                               # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rdi
	movq	ifsDesign, %rax
	movq	16(%rax), %rsi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gdk_cairo_set_source_pixmap
	movq	-40(%rbp), %rdi
	callq	cairo_paint
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	design_area_expose, .Lfunc_end29-design_area_expose
	.cfi_endproc

	.align	16, 0x90
	.type	design_area_button_press,@function
design_area_button_press:               # @design_area_button_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-40(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	ifsDesign, %rsi
	movq	(%rsi), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB30_11
# BB#1:                                 # %if.then
	movabsq	$.L.str.49, %rsi
	movq	ifsDesign, %rax
	movq	8(%rax), %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_menu_item_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then.4
	movl	$0, -76(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.7
	movl	$1, -76(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.8
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.10
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.12
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_menu_item_get_submenu
	movq	%rax, -56(%rbp)
.LBB30_10:                              # %if.end.16
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_menu_set_screen
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movl	52(%rdi), %r9d
	movq	-24(%rbp), %rdi
	movl	20(%rdi), %ecx
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movl	-124(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gtk_menu_popup
	movl	$0, -4(%rbp)
	jmp	.LBB30_37
.LBB30_11:                              # %if.end.22
	movq	ifsD, %rax
	movl	192(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	ifsD, %rax
	movl	$-1, 192(%rax)
	movl	$0, -44(%rbp)
.LBB30_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB30_17
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB30_12 Depth=1
	movslq	-44(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	400(%rax), %rdi
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %esi
	movq	-24(%rbp), %rax
	cvttsd2si	32(%rax), %edx
	callq	ipolygon_contains
	cmpl	$0, %eax
	je	.LBB30_15
# BB#14:                                # %if.then.28
	movl	-44(%rbp), %edi
	callq	set_current_element
	jmp	.LBB30_17
.LBB30_15:                              # %if.end.29
                                        #   in Loop: Header=BB30_12 Depth=1
	jmp	.LBB30_16
.LBB30_16:                              # %for.inc
                                        #   in Loop: Header=BB30_12 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB30_12
.LBB30_17:                              # %for.end
	movq	ifsD, %rax
	cmpl	$0, 192(%rax)
	jl	.LBB30_19
# BB#18:                                # %if.then.33
	callq	undo_begin
.LBB30_19:                              # %if.end.34
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB30_27
# BB#20:                                # %land.lhs.true.36
	movq	ifsD, %rax
	cmpl	$0, 192(%rax)
	jl	.LBB30_22
# BB#21:                                # %lor.lhs.false
	movq	ifsD, %rax
	movslq	192(%rax), %rax
	movq	element_selected, %rcx
	cmpl	$0, (%rcx,%rax,4)
	jne	.LBB30_27
.LBB30_22:                              # %if.then.44
	movl	$0, -44(%rbp)
.LBB30_23:                              # %for.cond.45
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB30_26
# BB#24:                                # %for.body.48
                                        #   in Loop: Header=BB30_23 Depth=1
	movslq	-44(%rbp), %rax
	movq	element_selected, %rcx
	movl	$0, (%rcx,%rax,4)
# BB#25:                                # %for.inc.51
                                        #   in Loop: Header=BB30_23 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB30_23
.LBB30_26:                              # %for.end.53
	jmp	.LBB30_27
.LBB30_27:                              # %if.end.54
	movq	ifsD, %rax
	cmpl	$0, 192(%rax)
	jl	.LBB30_35
# BB#28:                                # %if.then.58
	xorps	%xmm0, %xmm0
	movq	ifsDesign, %rax
	movl	80(%rax), %ecx
	orl	$256, %ecx              # imm = 0x100
	movl	%ecx, 80(%rax)
	movq	ifsD, %rax
	movslq	192(%rax), %rax
	movq	element_selected, %rdx
	movl	$1, (%rdx,%rax,4)
	movq	ifsDesign, %rax
	movl	$0, 84(%rax)
	movq	ifsDesign, %rax
	movsd	%xmm0, 48(%rax)
	movq	ifsDesign, %rax
	movsd	%xmm0, 56(%rax)
	movl	$0, -44(%rbp)
.LBB30_29:                              # %for.cond.62
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB30_34
# BB#30:                                # %for.body.65
                                        #   in Loop: Header=BB30_29 Depth=1
	movslq	-44(%rbp), %rax
	movq	element_selected, %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB30_32
# BB#31:                                # %if.then.69
                                        #   in Loop: Header=BB30_29 Depth=1
	movl	$416, %eax              # imm = 0x1A0
	movl	%eax, %edx
	movslq	-44(%rbp), %rcx
	movq	ifsD, %rsi
	imulq	$416, %rcx, %rcx        # imm = 0x1A0
	addq	184(%rsi), %rcx
	movslq	-44(%rbp), %rsi
	movq	elements, %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movslq	-44(%rbp), %rcx
	movq	elements, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	ifsDesign, %rcx
	addsd	48(%rcx), %xmm0
	movsd	%xmm0, 48(%rcx)
	movslq	-44(%rbp), %rcx
	movq	elements, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	ifsDesign, %rcx
	addsd	56(%rcx), %xmm0
	movsd	%xmm0, 56(%rcx)
	movq	ifsDesign, %rcx
	movl	84(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 84(%rcx)
	movl	-44(%rbp), %edi
	callq	undo_update
.LBB30_32:                              # %if.end.86
                                        #   in Loop: Header=BB30_29 Depth=1
	jmp	.LBB30_33
.LBB30_33:                              # %for.inc.87
                                        #   in Loop: Header=BB30_29 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB30_29
.LBB30_34:                              # %for.end.89
	movq	ifsDesign, %rax
	cvtsi2sdl	84(%rax), %xmm0
	movq	ifsDesign, %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rax)
	movq	ifsDesign, %rax
	cvtsi2sdl	84(%rax), %xmm0
	movq	ifsDesign, %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rax)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	ifsDesign, %rax
	movsd	%xmm0, 32(%rax)
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	ifsDesign, %rax
	movsd	%xmm0, 40(%rax)
	movsd	ifsvals+32, %xmm0       # xmm0 = mem[0],zero
	movq	ifsDesign, %rax
	movsd	%xmm0, 64(%rax)
	movsd	ifsvals+40, %xmm0       # xmm0 = mem[0],zero
	movq	ifsDesign, %rax
	movsd	%xmm0, 72(%rax)
	jmp	.LBB30_36
.LBB30_35:                              # %if.else.104
	movl	-48(%rbp), %eax
	movq	ifsD, %rcx
	movl	%eax, 192(%rcx)
	movslq	-48(%rbp), %rcx
	movq	element_selected, %rdx
	movl	$1, (%rdx,%rcx,4)
.LBB30_36:                              # %if.end.108
	callq	design_area_redraw
	movl	$0, -4(%rbp)
.LBB30_37:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	design_area_button_press, .Lfunc_end30-design_area_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	design_area_button_release,@function
design_area_button_release:             # @design_area_button_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$1, 52(%rsi)
	jne	.LBB31_3
# BB#1:                                 # %land.lhs.true
	movq	ifsDesign, %rax
	movl	80(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB31_3
# BB#2:                                 # %if.then
	movq	ifsDesign, %rax
	movl	80(%rax), %ecx
	andl	$-257, %ecx             # imm = 0xFFFFFFFFFFFFFEFF
	movl	%ecx, 80(%rax)
	callq	ifs_compose_preview
.LBB31_3:                               # %if.end
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	design_area_button_release, .Lfunc_end31-design_area_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	design_area_motion,@function
design_area_motion:                     # @design_area_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	ifsDesign, %rsi
	movl	80(%rsi), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB32_16
.LBB32_2:                               # %if.end
	movq	ifsDesign(%rip), %rax
	movq	(%rax), %rdi
	leaq	-40(%rbp), %rsi
	callq	gtk_widget_get_allocation
	movq	ifsDesign(%rip), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	ifsDesign(%rip), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	ifsDesign(%rip), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	ifsDesign(%rip), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	ifsDesign(%rip), %rax
	movl	24(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	je	.LBB32_5
	jmp	.LBB32_17
.LBB32_17:                              # %if.end
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB32_3
	jmp	.LBB32_18
.LBB32_18:                              # %if.end
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB32_4
	jmp	.LBB32_6
.LBB32_3:                               # %sw.bb
	leaq	-176(%rbp), %rdi
	movq	ifsDesign, %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	ifsDesign, %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	callq	aff2_translate
	leaq	-224(%rbp), %rdi
	xorl	%esi, %esi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-72(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-80(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-64(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movl	%esi, -316(%rbp)        # 4-byte Spill
	callq	sqrt
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	-316(%rbp), %esi        # 4-byte Reload
	callq	aff2_scale
	leaq	-272(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	callq	aff2_compose
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	atan2
	leaq	-176(%rbp), %rdi
	movsd	-328(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	aff2_rotate
	leaq	-224(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	callq	aff2_compose
	leaq	-272(%rbp), %rdi
	movq	ifsDesign, %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	ifsDesign, %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	callq	aff2_translate
	leaq	-128(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	callq	aff2_compose
	jmp	.LBB32_6
.LBB32_4:                               # %sw.bb.36
	leaq	-176(%rbp), %rdi
	movq	ifsDesign, %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	ifsDesign, %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	callq	aff2_translate
	leaq	-224(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-80(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	aff2_compute_stretch
	leaq	-272(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	callq	aff2_compose
	leaq	-176(%rbp), %rdi
	movq	ifsDesign, %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	ifsDesign, %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	callq	aff2_translate
	leaq	-128(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	leaq	-272(%rbp), %rdx
	callq	aff2_compose
	jmp	.LBB32_6
.LBB32_5:                               # %sw.bb.55
	leaq	-128(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-64(%rbp), %xmm1
	cvtsi2sdl	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	callq	aff2_translate
.LBB32_6:                               # %sw.epilog
	movl	$0, -44(%rbp)
.LBB32_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB32_15
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB32_7 Depth=1
	movslq	-44(%rbp), %rax
	movq	element_selected, %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB32_13
# BB#9:                                 # %if.then.66
                                        #   in Loop: Header=BB32_7 Depth=1
	movq	ifsDesign, %rax
	movl	84(%rax), %ecx
	cmpl	ifsvals, %ecx
	jne	.LBB32_11
# BB#10:                                # %if.then.69
                                        #   in Loop: Header=BB32_7 Depth=1
	leaq	-176(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	aff2_invert
	leaq	-224(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movslq	-44(%rbp), %rax
	movq	ifsD, %rcx
	imulq	$416, %rax, %rax        # imm = 0x1A0
	addq	184(%rcx), %rax
	addq	$248, %rax
	movq	%rax, %rdx
	callq	aff2_compose
	leaq	-224(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movslq	-44(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$248, %rax
	movq	%rax, %rdi
	callq	aff2_compose
	leaq	-128(%rbp), %rdi
	leaq	-280(%rbp), %rsi
	leaq	-288(%rbp), %rdx
	movq	ifsDesign, %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movq	ifsDesign, %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -288(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	aff2_apply
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, ifsvals+32
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, ifsvals+40
	jmp	.LBB32_12
.LBB32_11:                              # %if.else
                                        #   in Loop: Header=BB32_7 Depth=1
	leaq	-128(%rbp), %rsi
	movslq	-44(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$248, %rax
	movslq	-44(%rbp), %rcx
	movq	ifsD, %rdx
	imulq	$416, %rcx, %rcx        # imm = 0x1A0
	addq	184(%rdx), %rcx
	addq	$248, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	aff2_compose
.LBB32_12:                              # %if.end.95
                                        #   in Loop: Header=BB32_7 Depth=1
	movslq	-44(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-44(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$248, %rax
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	movq	%rax, %rsi
	callq	aff_element_decompose_trans
	movslq	-44(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
.LBB32_13:                              # %if.end.110
                                        #   in Loop: Header=BB32_7 Depth=1
	jmp	.LBB32_14
.LBB32_14:                              # %for.inc
                                        #   in Loop: Header=BB32_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB32_7
.LBB32_15:                              # %for.end
	callq	update_values
	callq	design_area_redraw
	movq	-24(%rbp), %rdi
	callq	gdk_event_request_motions
	movl	$0, -4(%rbp)
.LBB32_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end32:
	.size	design_area_motion, .Lfunc_end32-design_area_motion
	.cfi_endproc

	.align	16, 0x90
	.type	design_area_configure,@function
design_area_configure:                  # @design_area_configure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation
	movl	$0, -36(%rbp)
.LBB33_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB33_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	cvtsi2sdl	-24(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB33_1
.LBB33_4:                               # %for.end
	movl	$0, -36(%rbp)
.LBB33_5:                               # %for.cond.2
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB33_8
# BB#6:                                 # %for.body.5
                                        #   in Loop: Header=BB33_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	movq	elements, %rcx
	movl	ifsvals, %r8d
	callq	aff_element_compute_boundary
# BB#7:                                 # %for.inc.10
                                        #   in Loop: Header=BB33_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB33_5
.LBB33_8:                               # %for.end.12
	movq	ifsDesign, %rax
	cmpq	$0, 16(%rax)
	je	.LBB33_10
# BB#9:                                 # %if.then
	movq	ifsDesign, %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB33_10:                              # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gdk_pixmap_new
	xorl	%ecx, %ecx
	movq	ifsDesign, %rdi
	movq	%rax, 16(%rdi)
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	design_area_configure, .Lfunc_end33-design_area_configure
	.cfi_endproc

	.align	16, 0x90
	.type	design_op_menu_create,@function
design_op_menu_create:                  # @design_op_menu_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_ui_manager_new
	movabsq	$.L.str.89, %rdi
	movq	%rax, -16(%rbp)
	callq	gtk_action_group_new
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_action_group_set_translation_domain
	movabsq	$design_op_menu_create.actions, %rsi
	movl	$8, %edx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_action_group_add_actions
	movabsq	$design_op_menu_create.radio_actions, %rsi
	movl	$3, %edx
	movabsq	$design_op_update_callback, %rax
	movq	-24(%rbp), %rdi
	movq	ifsDesign, %rcx
	movl	24(%rcx), %ecx
	movq	-8(%rbp), %r8
	movq	%r8, -32(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-32(%rbp), %r9          # 8-byte Reload
	callq	gtk_action_group_add_radio_actions
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_accel_group
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_add_accel_group
	movq	-16(%rbp), %rdi
	callq	gtk_ui_manager_get_accel_group
	movq	%rax, %rdi
	callq	gtk_accel_group_lock
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_ui_manager_insert_action_group
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.90, %rsi
	movq	$-1, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdi
	callq	gtk_ui_manager_add_ui_from_string
	movabsq	$.L.str.91, %rsi
	movq	$-1, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gtk_ui_manager_add_ui_from_string
	movq	-16(%rbp), %rcx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	design_op_menu_create, .Lfunc_end34-design_op_menu_create
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	ifs_compose_new_callback,@function
ifs_compose_new_callback:               # @ifs_compose_new_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ifsDesign, %rsi
	movq	(%rsi), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_get_allocation
	callq	undo_begin
	leaq	-64(%rbp), %rdi
	callq	gimp_context_get_foreground
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-64(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm2
	movl	count_for_naming, %ecx
	addl	$1, %ecx
	movl	%ecx, count_for_naming
	movaps	%xmm2, %xmm1
	movl	%ecx, %esi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	aff_element_new
	movq	%rax, -80(%rbp)
	movl	ifsvals, %ecx
	addl	$1, %ecx
	movl	%ecx, ifsvals
	movq	elements, %rax
	movslq	ifsvals, %rdi
	shlq	$3, %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	g_realloc
	movq	%rax, elements
	movq	element_selected, %rax
	movslq	ifsvals, %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	callq	g_realloc
	movq	%rax, element_selected
	movl	$0, -68(%rbp)
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movl	ifsvals, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB35_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movslq	-68(%rbp), %rax
	movq	element_selected, %rcx
	movl	$0, (%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB35_1
.LBB35_4:                               # %for.end
	movl	ifsvals, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	element_selected, %rdx
	movl	$1, (%rdx,%rcx,4)
	movq	-80(%rbp), %rcx
	movl	ifsvals, %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	elements, %rsi
	movq	%rcx, (%rsi,%rdx,8)
	movl	ifsvals, %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	set_current_element
	movq	ifsD, %rcx
	movq	184(%rcx), %rcx
	movslq	ifsvals, %rdx
	imulq	$416, %rdx, %rsi        # imm = 0x1A0
	movq	%rcx, %rdi
	callq	g_realloc
	movq	ifsD, %rcx
	movq	%rax, 184(%rcx)
	movq	-80(%rbp), %rdi
	cvtsi2sdl	-24(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
	callq	design_area_redraw
	callq	ifs_compose_preview
	callq	design_op_actions_update
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	ifs_compose_new_callback, .Lfunc_end35-ifs_compose_new_callback
	.cfi_endproc

	.align	16, 0x90
	.type	ifs_compose_delete_callback,@function
ifs_compose_delete_callback:            # @ifs_compose_delete_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	undo_begin
	movq	ifsD, %rsi
	movl	192(%rsi), %edi
	callq	undo_update
	movq	ifsD, %rsi
	movslq	192(%rsi), %rsi
	movq	elements, %rax
	movq	(%rax,%rsi,8), %rdi
	callq	aff_element_free
	movq	ifsD, %rax
	movl	192(%rax), %ecx
	movl	ifsvals, %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jge	.LBB36_2
# BB#1:                                 # %if.then
	movl	ifsvals, %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	undo_update
	movl	ifsvals, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	elements, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	ifsD, %rdx
	movslq	192(%rdx), %rdx
	movq	elements, %rsi
	movq	%rcx, (%rsi,%rdx,8)
	movq	ifsD, %rcx
	movl	192(%rcx), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB36_3
.LBB36_2:                               # %if.else
	movl	ifsvals, %eax
	subl	$2, %eax
	movl	%eax, -24(%rbp)
.LBB36_3:                               # %if.end
	movl	ifsvals, %eax
	addl	$-1, %eax
	movl	%eax, ifsvals
	movl	$0, -20(%rbp)
.LBB36_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB36_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB36_4 Depth=1
	movslq	-20(%rbp), %rax
	movq	element_selected, %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB36_7
# BB#6:                                 # %if.then.15
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB36_9
.LBB36_7:                               # %if.end.16
                                        #   in Loop: Header=BB36_4 Depth=1
	jmp	.LBB36_8
.LBB36_8:                               # %for.inc
                                        #   in Loop: Header=BB36_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB36_4
.LBB36_9:                               # %for.end
	movslq	-24(%rbp), %rax
	movq	element_selected, %rcx
	movl	$1, (%rcx,%rax,4)
	movl	-24(%rbp), %edi
	callq	set_current_element
	callq	design_area_redraw
	callq	ifs_compose_preview
	callq	design_op_actions_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	ifs_compose_delete_callback, .Lfunc_end36-ifs_compose_delete_callback
	.cfi_endproc

	.align	16, 0x90
	.type	undo,@function
undo:                                   # @undo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpl	$0, undo_cur
	jl	.LBB37_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	undo_start, %ecx
	addl	undo_cur, %ecx
	movl	%eax, -4(%rbp)          # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-4(%rbp), %ecx          # 4-byte Reload
	idivl	%ecx
	movl	%edx, %edi
	callq	undo_exchange
	movl	undo_cur, %ecx
	addl	$-1, %ecx
	movl	%ecx, undo_cur
.LBB37_2:                               # %if.end
	callq	design_op_actions_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	undo, .Lfunc_end37-undo
	.cfi_endproc

	.align	16, 0x90
	.type	redo,@function
redo:                                   # @redo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	undo_cur, %eax
	movl	undo_num, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB38_2
# BB#1:                                 # %if.then
	movl	$24, %eax
	movl	undo_cur, %ecx
	addl	$1, %ecx
	movl	%ecx, undo_cur
	movl	undo_start, %ecx
	addl	undo_cur, %ecx
	movl	%eax, -4(%rbp)          # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-4(%rbp), %ecx          # 4-byte Reload
	idivl	%ecx
	movl	%edx, %edi
	callq	undo_exchange
.LBB38_2:                               # %if.end
	callq	design_op_actions_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	redo, .Lfunc_end38-redo
	.cfi_endproc

	.align	16, 0x90
	.type	design_area_select_all_callback,@function
design_area_select_all_callback:        # @design_area_select_all_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB39_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB39_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	element_selected, %rcx
	movl	$1, (%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB39_1
.LBB39_4:                               # %for.end
	callq	design_area_redraw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	design_area_select_all_callback, .Lfunc_end39-design_area_select_all_callback
	.cfi_endproc

	.align	16, 0x90
	.type	recompute_center_cb,@function
recompute_center_cb:                    # @recompute_center_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	recompute_center
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	recompute_center_cb, .Lfunc_end40-recompute_center_cb
	.cfi_endproc

	.align	16, 0x90
	.type	ifs_compose_options_callback,@function
ifs_compose_options_callback:           # @ifs_compose_options_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	ifs_options_dialog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	ifs_compose_options_callback, .Lfunc_end41-ifs_compose_options_callback
	.cfi_endproc

	.align	16, 0x90
	.type	design_op_update_callback,@function
design_op_update_callback:              # @design_op_update_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_radio_action_get_current_value
	movq	ifsDesign, %rdx
	movl	%eax, 24(%rdx)
	movq	ifsDesign, %rdx
	movq	(%rdx), %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB42_2
# BB#1:                                 # %if.then
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	callq	design_area_realize
.LBB42_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	design_op_update_callback, .Lfunc_end42-design_op_update_callback
	.cfi_endproc

	.align	16, 0x90
	.type	undo_exchange,@function
undo_exchange:                          # @undo_exchange
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-24(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	movabsq	$undo_ring, %rax
	movl	$48, %ecx
	movl	%ecx, %esi
	leaq	-96(%rbp), %rdi
	movabsq	$ifsvals, %rdx
	movq	elements, %r8
	movq	%r8, -40(%rbp)
	movslq	-4(%rbp), %r8
	imulq	$72, %r8, %r8
	movq	%rax, %r9
	addq	%r8, %r9
	movq	48(%r9), %r8
	movq	%r8, elements
	movq	-40(%rbp), %r8
	movslq	-4(%rbp), %r9
	imulq	$72, %r9, %r9
	movq	%rax, %r10
	addq	%r9, %r10
	movq	%r8, 48(%r10)
	movq	%rdi, %r8
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	memcpy
	movslq	-4(%rbp), %rax
	imulq	$72, %rax, %rax
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rdx, %rsi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movslq	-4(%rbp), %rax
	imulq	$72, %rax, %rax
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	element_selected, %rax
	movq	%rax, -48(%rbp)
	movslq	-4(%rbp), %rax
	imulq	$72, %rax, %rax
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movq	56(%rdx), %rax
	movq	%rax, element_selected
	movq	-48(%rbp), %rax
	movslq	-4(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	movq	%rax, 56(%rsi)
	movq	ifsD, %rax
	movl	192(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movslq	-4(%rbp), %rax
	imulq	$72, %rax, %rax
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movl	64(%rdx), %ecx
	movq	ifsD, %rax
	movl	%ecx, 192(%rax)
	movl	-100(%rbp), %ecx
	movslq	-4(%rbp), %rax
	imulq	$72, %rax, %rax
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	movl	%ecx, 64(%rdx)
	movl	$0, -28(%rbp)
.LBB43_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB43_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB43_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	elements, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB43_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB43_1 Depth=1
	movabsq	$undo_ring, %rax
	movslq	-28(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	48(%rsi), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movslq	-28(%rbp), %rdx
	movq	elements, %rsi
	movq	%rcx, (%rsi,%rdx,8)
	movslq	-28(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movq	48(%rax), %rax
	movq	$0, (%rax,%rcx,8)
	jmp	.LBB43_5
.LBB43_4:                               # %if.else
                                        #   in Loop: Header=BB43_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
.LBB43_5:                               # %if.end
                                        #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_6
.LBB43_6:                               # %for.inc
                                        #   in Loop: Header=BB43_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB43_1
.LBB43_7:                               # %for.end
	movq	ifsD, %rax
	movl	192(%rax), %edi
	callq	set_current_element
	callq	design_area_redraw
	callq	ifs_compose_preview
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	undo_exchange, .Lfunc_end43-undo_exchange
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	4617315517961601024     # double 5
.LCPI44_2:
	.quad	4607182418800017408     # double 1
.LCPI44_3:
	.quad	4621819117588971520     # double 10
.LCPI44_4:
	.quad	4711630319722168320     # double 1.0E+7
.LCPI44_5:
	.quad	4696837146684686336     # double 1.0E+6
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI44_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	ifs_options_dialog,@function
ifs_options_dialog:                     # @ifs_options_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$352, %rsp              # imm = 0x160
.Ltmp153:
	.cfi_offset %rbx, -32
.Ltmp154:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	cmpq	$0, ifsOptD
	jne	.LBB44_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$40, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movabsq	$.L.str.92, %rdi
	movq	%rax, ifsOptD
	callq	gettext
	movabsq	$.L.str.19, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.93, %rdi
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-24(%rbp), %rbx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%rbx, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-7, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movq	%r11, -64(%rbp)         # 8-byte Spill
	callq	gimp_dialog_new
	movabsq	$.L.str.25, %rsi
	movabsq	$gtk_widget_hide, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	ifsOptD, %r8
	movq	%rax, (%r8)
	movq	ifsOptD, %rax
	movq	(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	ifsOptD, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.94, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI44_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-148(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-152(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$ifsvals, %rax
	addq	$8, %rax
	movsd	.LCPI44_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI44_5, %xmm1        # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	value_pair_create
	movq	ifsOptD, %rdi
	movq	%rax, 32(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	ifsOptD, %rsi
	movq	32(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-172(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-176(%rbp), %r14d       # 4-byte Reload
	movl	%r9d, -180(%rbp)        # 4-byte Spill
	movl	%r14d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsOptD, %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.95, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI44_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$4, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -208(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$ifsvals, %rax
	addq	$4, %rax
	movsd	.LCPI44_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI44_4, %xmm1        # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	value_pair_create
	movq	ifsOptD, %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movq	ifsOptD, %rsi
	movq	8(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-220(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-224(%rbp), %r14d       # 4-byte Reload
	movl	%r8d, -228(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	%r9d, -232(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsOptD, %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.96, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI44_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$4, %r10d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -252(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$ifsvals, %rax
	addq	$12, %rax
	movsd	.LCPI44_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI44_3, %xmm1        # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	value_pair_create
	movq	ifsOptD, %rdi
	movq	%rax, 16(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r9d
	movl	$4, %r8d
	xorl	%r10d, %r10d
	movq	ifsOptD, %rsi
	movq	16(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r14d       # 4-byte Reload
	movl	%r8d, -272(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -276(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsOptD, %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.97, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI44_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$ifsvals, %rax
	addq	$16, %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI44_0, %xmm1        # xmm1 = mem[0],zero
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	value_pair_create
	movq	ifsOptD, %rdi
	movq	%rax, 24(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	ifsOptD, %rsi
	movq	24(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -308(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	ifsOptD, %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	movl	$4, %r9d
	xorl	%r8d, %r8d
	movq	ifsOptD, %rsi
	movq	24(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -328(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	ifsOptD, %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	ifsOptD, %rax
	movq	8(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	16(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	32(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	24(%rax), %rdi
	callq	value_pair_update
	movq	ifsOptD, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	jmp	.LBB44_3
.LBB44_2:                               # %if.else
	movq	ifsOptD, %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB44_3:                               # %if.end
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end44:
	.size	ifs_options_dialog, .Lfunc_end44-ifs_options_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	flip_check_button_callback,@function
flip_check_button_callback:             # @flip_check_button_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ifsD, %rsi
	cmpl	$0, 448(%rsi)
	je	.LBB45_2
# BB#1:                                 # %if.then
	jmp	.LBB45_9
.LBB45_2:                               # %if.end
	leaq	-32(%rbp), %rsi
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -40(%rbp)
	callq	undo_begin
	movl	$0, -36(%rbp)
.LBB45_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	ifsvals, %eax
	jae	.LBB45_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB45_3 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	element_selected, %rdx
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB45_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB45_3 Depth=1
	movl	-36(%rbp), %edi
	callq	undo_update
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	elements, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	%edi, 48(%rcx)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	elements, %rdx
	movq	(%rdx,%rcx,8), %rdi
	cvtsi2sdl	-24(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
.LBB45_6:                               # %if.end.10
                                        #   in Loop: Header=BB45_3 Depth=1
	jmp	.LBB45_7
.LBB45_7:                               # %for.inc
                                        #   in Loop: Header=BB45_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB45_3
.LBB45_8:                               # %for.end
	callq	update_values
	callq	design_area_redraw
	callq	ifs_compose_preview
.LBB45_9:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	flip_check_button_callback, .Lfunc_end45-flip_check_button_callback
	.cfi_endproc

	.align	16, 0x90
	.type	simple_color_toggled,@function
simple_color_toggled:                   # @simple_color_toggled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ifsD, %rsi
	movslq	192(%rsi), %rsi
	movq	elements, %rdi
	movq	(%rdi,%rsi,8), %rsi
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
	movl	%eax, 232(%rsi)
	movq	-24(%rbp), %rsi
	movl	232(%rsi), %eax
	movq	ifsD, %rsi
	movl	%eax, 432(%rsi)
	movq	-24(%rbp), %rsi
	cmpl	$0, 232(%rsi)
	je	.LBB46_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	aff_element_compute_color_trans
.LBB46_2:                               # %if.end
	callq	val_changed_update
	callq	simple_color_set_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	simple_color_toggled, .Lfunc_end46-simple_color_toggled
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI47_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	color_map_create,@function
color_map_create:                       # @color_map_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	$1, %eax
	movl	%eax, %r8d
	movl	$40, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, %rdi
	movq	%r9, %rsi
	callq	g_malloc_n
	movsd	.LCPI47_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_rgb_set_alpha
	xorl	%edi, %edi
	movl	$2, %esi
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	-28(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 32(%rax)
	callq	gtk_box_new
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	callq	gtk_frame_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$0, -28(%rbp)
	je	.LBB47_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB47_3
.LBB47_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB47_3:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_color_area_new
	movq	-56(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_drag_dest_unset
	movl	$30, %ecx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$1, %esi
	callq	gtk_arrow_new
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$30, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	gimp_color_button_new
	movq	-56(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.119, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.119, %rsi
	movabsq	$color_map_color_changed_cb, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	color_map_create, .Lfunc_end47-color_map_create
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_0:
	.quad	4580687790476533049     # double 0.017453292519943295
	.text
	.align	16, 0x90
	.type	val_changed_update,@function
val_changed_update:                     # @val_changed_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	ifsD, %rax
	cmpl	$0, 448(%rax)
	je	.LBB48_2
# BB#1:                                 # %if.then
	jmp	.LBB48_3
.LBB48_2:                               # %if.end
	leaq	-16(%rbp), %rsi
	movq	ifsDesign, %rax
	movq	(%rax), %rdi
	callq	gtk_widget_get_allocation
	movq	ifsD, %rax
	movslq	192(%rax), %rax
	movq	elements, %rsi
	movq	(%rsi,%rax,8), %rax
	movq	%rax, -24(%rbp)
	callq	undo_begin
	movq	ifsD, %rax
	movl	192(%rax), %edi
	callq	undo_update
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movl	$248, %edi
	movl	%edi, %edx
	movq	-24(%rbp), %rax
	movq	ifsD, %rsi
	addq	$200, %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rax
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	-24(%rbp), %rdi
	cvtsi2sdl	-8(%rbp), %xmm0
	cvtsi2sdl	-4(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
	movq	-24(%rbp), %rdi
	callq	aff_element_compute_color_trans
	callq	design_area_redraw
	callq	ifs_compose_preview
.LBB48_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	val_changed_update, .Lfunc_end48-val_changed_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI49_0:
	.quad	4580687790476533049     # double 0.017453292519943295
	.text
	.align	16, 0x90
	.type	color_map_color_changed_cb,@function
color_map_color_changed_cb:             # @color_map_color_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	ifsD, %rsi
	cmpl	$0, 448(%rsi)
	je	.LBB49_2
# BB#1:                                 # %if.then
	jmp	.LBB49_3
.LBB49_2:                               # %if.end
	callq	undo_begin
	movq	ifsD, %rax
	movl	192(%rax), %edi
	callq	undo_update
	movsd	.LCPI49_0, %xmm0        # xmm0 = mem[0],zero
	movl	$248, %edi
	movl	%edi, %edx
	movq	ifsD, %rax
	movslq	192(%rax), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	ifsD, %rcx
	addq	$200, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	ifsD, %rax
	movslq	192(%rax), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rax
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	ifsD, %rax
	movslq	192(%rax), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	aff_element_compute_color_trans
	callq	update_values
	callq	ifs_compose_preview
.LBB49_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	color_map_color_changed_cb, .Lfunc_end49-color_map_color_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	value_pair_scale_callback,@function
value_pair_scale_callback:              # @value_pair_scale_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 28(%rsi)
	je	.LBB50_2
# BB#1:                                 # %if.then
	jmp	.LBB50_3
.LBB50_2:                               # %if.end
	movl	$500, %edi              # imm = 0x1F4
	movabsq	$value_pair_scale_callback_real, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-16(%rbp), %rdx
	movl	%eax, 28(%rdx)
.LBB50_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	value_pair_scale_callback, .Lfunc_end50-value_pair_scale_callback
	.cfi_endproc

	.align	16, 0x90
	.type	value_pair_scale_callback_real,@function
value_pair_scale_callback_real:         # @value_pair_scale_callback_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$1, 24(%rdi)
	jne	.LBB51_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB51_2
	jp	.LBB51_2
	jmp	.LBB51_3
.LBB51_2:                               # %if.then.3
	movl	$1, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_adjustment_get_value
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movsd	%xmm0, (%rax)
.LBB51_3:                               # %if.end
	jmp	.LBB51_7
.LBB51_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %ecx
	movl	-36(%rbp), %edx         # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB51_6
# BB#5:                                 # %if.then.13
	movl	$1, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %ecx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	%ecx, (%rax)
.LBB51_6:                               # %if.end.19
	jmp	.LBB51_7
.LBB51_7:                               # %if.end.20
	cmpl	$0, -20(%rbp)
	je	.LBB51_9
# BB#8:                                 # %if.then.21
	callq	val_changed_update
.LBB51_9:                               # %if.end.22
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	$0, 28(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	value_pair_scale_callback_real, .Lfunc_end51-value_pair_scale_callback_real
	.cfi_endproc

	.align	16, 0x90
	.type	preview_idle_render,@function
preview_idle_render:                    # @preview_idle_render
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp179:
	.cfi_offset %rbx, -32
.Ltmp180:
	.cfi_offset %r14, -24
	leaq	-40(%rbp), %rsi
	movq	%rdi, -24(%rbp)
	movl	$10000, -44(%rbp)       # imm = 0x2710
	movq	ifsDesign, %rdi
	movq	(%rdi), %rdi
	callq	gtk_widget_get_allocation
	movl	-44(%rbp), %eax
	movq	ifsD, %rsi
	cmpl	160(%rsi), %eax
	jle	.LBB52_2
# BB#1:                                 # %if.then
	movq	ifsD, %rax
	movl	160(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB52_2:                               # %if.end
	movl	$0, -48(%rbp)
.LBB52_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB52_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB52_3 Depth=1
	movslq	-48(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB52_3
.LBB52_6:                               # %for.end
	movabsq	$ifsvals, %r9
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$1, %ecx
	movq	elements, %rdi
	movl	ifsvals, %esi
	movl	-32(%rbp), %r8d
	movl	-28(%rbp), %r10d
	movl	-44(%rbp), %r11d
	movl	-28(%rbp), %ebx
	movq	ifsD, %r14
	movq	152(%r14), %r14
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movl	$0, (%rsp)
	movl	%ebx, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movl	$1, 40(%rsp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	ifs_render
	movl	$0, -48(%rbp)
.LBB52_7:                               # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	ifsvals, %eax
	jge	.LBB52_10
# BB#8:                                 # %for.body.10
                                        #   in Loop: Header=BB52_7 Depth=1
	movslq	-48(%rbp), %rax
	movq	elements, %rcx
	movq	(%rcx,%rax,8), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	movsd	ifsvals+32, %xmm2       # xmm2 = mem[0],zero
	movsd	ifsvals+40, %xmm3       # xmm3 = mem[0],zero
	callq	aff_element_compute_trans
# BB#9:                                 # %for.inc.17
                                        #   in Loop: Header=BB52_7 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB52_7
.LBB52_10:                              # %for.end.19
	movl	-44(%rbp), %eax
	movq	ifsD, %rcx
	movl	160(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 160(%rcx)
	movq	ifsD, %rcx
	movq	144(%rcx), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	-32(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	ifsD, %rsi
	movq	152(%rsi), %rsi
	imull	$3, -32(%rbp), %r9d
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-88(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	callq	gimp_preview_area_draw
	movq	ifsD, %rax
	cmpl	$0, 160(%rax)
	setne	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end52:
	.size	preview_idle_render, .Lfunc_end52-preview_idle_render
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB53_3
# BB#2:                                 # %entry
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
.LBB53_3:                               # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$4, %esi
	leaq	-32(%rbp), %r10
	movq	%r8, -8(%rbp)
	movq	%r10, %r8
	leaq	-208(%rbp), %r11
	movq	%r11, 16(%r8)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r10, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB53_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB53_1
.Lfunc_end53:
	.size	g_error, .Lfunc_end53-g_error
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
	.size	query.args, 72

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

	.type	query.return_vals,@object # @query.return_vals
	.local	query.return_vals
	.comm	query.return_vals,8,8
	.type	query.nreturn_vals,@object # @query.nreturn_vals
	.local	query.nreturn_vals
	.comm	query.nreturn_vals,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"plug-in-ifscompose"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Create an Iterated Function System (IFS) fractal"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Interactively create an Iterated Function System fractal. Use the window on the upper left to adjust the component transformations of the fractal. The operation that is performed is selected by the buttons underneath the window, or from a menu popped up by the right mouse button. The fractal will be rendered with a transparent background if the current image has an alpha channel."
	.size	.L.str.8, 383

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Owen Taylor"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"1997"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_IFS Fractal..."
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/Filters/Render/Nature"
	.size	.L.str.13, 30

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"UTF-8"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ifscompose-parasite"
	.size	.L.str.16, 20

	.type	ifsvals,@object         # @ifsvals
	.data
	.align	8
ifsvals:
	.long	0                       # 0x0
	.long	50000                   # 0xc350
	.long	4096                    # 0x1000
	.long	4                       # 0x4
	.quad	4604930618986332160     # double 0.75
	.quad	4607182418800017408     # double 1
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.size	ifsvals, 48

	.type	elements,@object        # @elements
	.local	elements
	.comm	elements,8,8
	.type	count_for_naming,@object # @count_for_naming
	.local	count_for_naming
	.comm	count_for_naming,4,4
	.type	ifsD,@object            # @ifsD
	.local	ifsD
	.comm	ifsD,8,8
	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"ifs-compose"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"IFS Fractal"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-ifs-compose"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gtk-open"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-save"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-reset"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-cancel"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-ok"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"response"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"destroy"
	.size	.L.str.26, 8

	.type	ifsDesign,@object       # @ifsDesign
	.local	ifsDesign
	.comm	ifsDesign,8,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/ifs-compose-toolbar"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Spatial Transformation"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Color Transformation"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Relative probability:"
	.size	.L.str.30, 22

	.type	element_selected,@object # @element_selected
	.local	element_selected
	.comm	element_selected,8,8
	.type	ifsOptD,@object         # @ifsOptD
	.local	ifsOptD
	.comm	ifsOptD,8,8
	.type	ifscint,@object         # @ifscint
	.local	ifscint
	.comm	ifscint,4,4
	.type	ifs_compose_load.dialog,@object # @ifs_compose_load.dialog
	.local	ifs_compose_load.dialog
	.comm	ifs_compose_load.dialog,8,8
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Open IFS Fractal file"
	.size	.L.str.31, 22

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Open failed"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"File '%s' doesn't seem to be an IFS Fractal file."
	.size	.L.str.33, 50

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%s"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"ifscompose-message"
	.size	.L.str.35, 19

	.type	ifs_compose_save.dialog,@object # @ifs_compose_save.dialog
	.local	ifs_compose_save.dialog
	.comm	ifs_compose_save.dialog,8,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Save as IFS Fractal file"
	.size	.L.str.36, 25

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"wb"
	.size	.L.str.37, 3

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.38, 36

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Save failed"
	.size	.L.str.39, 12

	.type	undo_cur,@object        # @undo_cur
	.data
	.align	4
undo_cur:
	.long	4294967295              # 0xffffffff
	.size	undo_cur, 4

	.type	undo_start,@object      # @undo_start
	.local	undo_start
	.comm	undo_start,4,4
	.type	undo_num,@object        # @undo_num
	.local	undo_num
	.comm	undo_num,4,4
	.type	undo_ring,@object       # @undo_ring
	.local	undo_ring
	.comm	undo_ring,1728,16
	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"/ui/dummy-menubar/ifs-compose-menu/undo"
	.size	.L.str.40, 40

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"/ui/dummy-menubar/ifs-compose-menu/redo"
	.size	.L.str.41, 40

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"/ui/dummy-menubar/ifs-compose-menu/delete"
	.size	.L.str.42, 42

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"realize"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"expose-event"
	.size	.L.str.44, 13

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"button-press-event"
	.size	.L.str.45, 19

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"button-release-event"
	.size	.L.str.46, 21

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"motion-notify-event"
	.size	.L.str.47, 20

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"configure-event"
	.size	.L.str.48, 16

	.type	design_area_realize.cursors,@object # @design_area_realize.cursors
	.section	.rodata,"a",@progbits
	.align	4
design_area_realize.cursors:
	.long	52                      # 0x34
	.long	50                      # 0x32
	.long	34                      # 0x22
	.size	design_area_realize.cursors, 12

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"/dummy-menubar/ifs-compose-menu"
	.size	.L.str.49, 32

	.type	design_op_menu_create.actions,@object # @design_op_menu_create.actions
	.data
	.align	16
design_op_menu_create.actions:
	.quad	.L.str.50
	.quad	0
	.quad	.L.str.51
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.54
	.quad	0
	.quad	ifs_compose_new_callback
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	0
	.quad	.L.str.57
	.quad	0
	.quad	ifs_compose_delete_callback
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	0
	.quad	.L.str.60
	.quad	0
	.quad	undo
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	0
	.quad	.L.str.63
	.quad	0
	.quad	redo
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	0
	.quad	design_area_select_all_callback
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	recompute_center_cb
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	0
	.quad	0
	.quad	ifs_compose_options_callback
	.size	design_op_menu_create.actions, 384

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"ifs-compose-menu"
	.size	.L.str.50, 17

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"IFS Fractal Menu"
	.size	.L.str.51, 17

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"new"
	.size	.L.str.52, 4

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gtk-new"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"<control>N"
	.size	.L.str.54, 11

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"delete"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gtk-delete"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"<control>D"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"undo"
	.size	.L.str.58, 5

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gtk-undo"
	.size	.L.str.59, 9

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"<control>Z"
	.size	.L.str.60, 11

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"redo"
	.size	.L.str.61, 5

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gtk-redo"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"<control>Y"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"select-all"
	.size	.L.str.64, 11

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp-selection-all"
	.size	.L.str.65, 19

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Select _All"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"<control>A"
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"center"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-center"
	.size	.L.str.69, 12

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Re_center"
	.size	.L.str.70, 10

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"<control>C"
	.size	.L.str.71, 11

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Recompute Center"
	.size	.L.str.72, 17

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"options"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gtk-preferences"
	.size	.L.str.74, 16

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Render Options"
	.size	.L.str.75, 15

	.type	design_op_menu_create.radio_actions,@object # @design_op_menu_create.radio_actions
	.data
	.align	16
design_op_menu_create.radio_actions:
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	0
	.long	2                       # 0x2
	.zero	4
	.size	design_op_menu_create.radio_actions, 144

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"move"
	.size	.L.str.76, 5

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimp-tool-move"
	.size	.L.str.77, 15

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Move"
	.size	.L.str.78, 5

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"M"
	.size	.L.str.79, 2

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"rotate"
	.size	.L.str.80, 7

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-tool-rotate"
	.size	.L.str.81, 17

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Rotate"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"R"
	.size	.L.str.83, 2

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Rotate / Scale"
	.size	.L.str.84, 15

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"stretch"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-tool-perspective"
	.size	.L.str.86, 22

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Stretch"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"S"
	.size	.L.str.88, 2

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Actions"
	.size	.L.str.89, 8

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"<ui>  <menubar name=\"dummy-menubar\">    <menu action=\"ifs-compose-menu\">      <menuitem action=\"move\" />      <menuitem action=\"rotate\" />      <menuitem action=\"stretch\" />      <separator />      <menuitem action=\"new\" />      <menuitem action=\"delete\" />      <menuitem action=\"undo\" />      <menuitem action=\"redo\" />      <menuitem action=\"select-all\" />      <menuitem action=\"center\" />      <separator />      <menuitem action=\"options\" />    </menu>  </menubar></ui>"
	.size	.L.str.90, 476

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"<ui>  <toolbar name=\"ifs-compose-toolbar\">    <toolitem action=\"move\" />    <toolitem action=\"rotate\" />    <toolitem action=\"stretch\" />    <separator />    <toolitem action=\"new\" />    <toolitem action=\"delete\" />    <toolitem action=\"undo\" />    <toolitem action=\"redo\" />    <toolitem action=\"select-all\" />    <toolitem action=\"center\" />    <separator />    <toolitem action=\"options\" />  </toolbar></ui>"
	.size	.L.str.91, 411

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"IFS Fractal Render Options"
	.size	.L.str.92, 27

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gtk-close"
	.size	.L.str.93, 10

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Max. memory:"
	.size	.L.str.94, 13

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Iterations:"
	.size	.L.str.95, 12

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Subdivide:"
	.size	.L.str.96, 11

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Spot radius:"
	.size	.L.str.97, 13

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"X:"
	.size	.L.str.98, 3

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Y:"
	.size	.L.str.99, 3

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Scale:"
	.size	.L.str.100, 7

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Angle:"
	.size	.L.str.101, 7

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Asymmetry:"
	.size	.L.str.102, 11

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Shear:"
	.size	.L.str.103, 7

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Flip"
	.size	.L.str.104, 5

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"toggled"
	.size	.L.str.105, 8

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Simple"
	.size	.L.str.106, 7

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"IFS Fractal: Target"
	.size	.L.str.107, 20

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Scale hue by:"
	.size	.L.str.108, 14

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Scale value by:"
	.size	.L.str.109, 16

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Full"
	.size	.L.str.110, 5

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"red"
	.size	.L.str.111, 4

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"IFS Fractal: Red"
	.size	.L.str.112, 17

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"green"
	.size	.L.str.113, 6

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"IFS Fractal: Green"
	.size	.L.str.114, 19

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"blue"
	.size	.L.str.115, 5

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"IFS Fractal: Blue"
	.size	.L.str.116, 18

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"black"
	.size	.L.str.117, 6

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"IFS Fractal: Black"
	.size	.L.str.118, 19

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"color-changed"
	.size	.L.str.119, 14

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"value-changed"
	.size	.L.str.120, 14

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Transformation %s"
	.size	.L.str.121, 18

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Rendering IFS (%d/%d)"
	.size	.L.str.122, 22

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Indexed images not supported by IFS Fractal"
	.size	.L.str.123, 44


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
