	.text
	.file	"warp.bc"
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
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.35, %rsi
	movabsq	$.L.str.36, %rdx
	movabsq	$.L.str.37, %rax
	movabsq	$.L.str.38, %r9
	movabsq	$.L.str.39, %rcx
	movabsq	$.L.str.40, %r8
	movl	$1, %r10d
	movl	$17, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
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
	movl	$17, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.41, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -80(%rbp)         # 4-byte Spill
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, run_mode
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.42, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.42, %rdi
	movabsq	$.L.str.43, %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.42, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	callq	gimp_tile_width
	movl	%eax, tile_width(%rip)
	callq	gimp_tile_height
	movl	%eax, tile_height(%rip)
	leaq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_context_get_foreground
	movl	$color_pixel, %edx
	movl	%edx, %esi
	movl	$color_pixel+1, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$color_pixel+2, %r8d
	movl	%r8d, %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-44(%rbp), %edi
	movl	%edi, run.values+8(%rip)
	movl	run_mode(%rip), %edi
	testl	%edi, %edi
	movl	%edi, -136(%rbp)        # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_42
.LBB1_42:                               # %do.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_43
.LBB1_43:                               # %do.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB1_32
	jmp	.LBB1_33
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.34, %rdi
	movabsq	$dvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	warp_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_41
.LBB1_5:                                # %if.end
	jmp	.LBB1_34
.LBB1_6:                                # %sw.bb.12
	cmpl	$6, -12(%rbp)
	jge	.LBB1_8
# BB#7:                                 # %if.then.13
	movl	$1, -44(%rbp)
	jmp	.LBB1_31
.LBB1_8:                                # %if.else
	movl	$6, -92(%rbp)
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, dvals+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, dvals+12
	movl	-12(%rbp), %ecx
	movl	-92(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -92(%rbp)
	cmpl	%edx, %ecx
	jle	.LBB1_10
# BB#9:                                 # %if.then.23
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+16
.LBB1_10:                               # %if.end.27
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_12
# BB#11:                                # %if.then.30
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+24
.LBB1_12:                               # %if.end.34
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_14
# BB#13:                                # %if.then.37
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, dvals+32
.LBB1_14:                               # %if.end.41
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_16
# BB#15:                                # %if.then.44
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, dvals+36
.LBB1_16:                               # %if.end.48
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_18
# BB#17:                                # %if.then.51
	movq	-24(%rbp), %rax
	movl	408(%rax), %ecx
	movl	%ecx, dvals+40
.LBB1_18:                               # %if.end.55
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_20
# BB#19:                                # %if.then.58
	movq	-24(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, dvals+44
.LBB1_20:                               # %if.end.62
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_22
# BB#21:                                # %if.then.65
	movq	-24(%rbp), %rax
	movl	488(%rax), %ecx
	movl	%ecx, dvals+48
.LBB1_22:                               # %if.end.69
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_24
# BB#23:                                # %if.then.72
	movq	-24(%rbp), %rax
	movsd	528(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+56
.LBB1_24:                               # %if.end.76
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_26
# BB#25:                                # %if.then.79
	movq	-24(%rbp), %rax
	movl	568(%rax), %ecx
	movl	%ecx, dvals+64
.LBB1_26:                               # %if.end.83
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_28
# BB#27:                                # %if.then.86
	movq	-24(%rbp), %rax
	movsd	608(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+72
.LBB1_28:                               # %if.end.90
	movl	-12(%rbp), %eax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	cmpl	%ecx, %eax
	jle	.LBB1_30
# BB#29:                                # %if.then.93
	movq	-24(%rbp), %rax
	movsd	648(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, dvals+80
.LBB1_30:                               # %if.end.97
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.98
	jmp	.LBB1_34
.LBB1_32:                               # %sw.bb.99
	movabsq	$.L.str.34, %rdi
	movabsq	$dvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB1_34
.LBB1_33:                               # %sw.default
	jmp	.LBB1_34
.LBB1_34:                               # %sw.epilog
	cmpl	$3, -44(%rbp)
	jne	.LBB1_38
# BB#35:                                # %if.then.102
	movl	$30, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-56(%rbp), %rdi
	callq	warp
	cmpl	$0, run_mode
	jne	.LBB1_37
# BB#36:                                # %if.then.104
	movabsq	$.L.str.34, %rdi
	movabsq	$dvals, %rax
	movl	$88, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB1_37:                               # %if.end.106
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.107
	cmpl	$1, run_mode
	je	.LBB1_40
# BB#39:                                # %if.then.109
	callq	gimp_displays_flush
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB1_40:                               # %if.end.111
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_41:                               # %return
	addq	$160, %rsp
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
.LCPI3_8:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4645040803167600640     # double 360
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4624633867356078080     # double 15
.LCPI3_4:
	.quad	-4571364728013586432    # double -1000
.LCPI3_5:
	.quad	4652007308841189376     # double 1000
.LCPI3_6:
	.quad	4576918229304087675     # double 0.01
.LCPI3_7:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_9:
	.quad	4636737291354636288     # double 100
.LCPI3_10:
	.quad	4617315517961601024     # double 5
.LCPI3_11:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	warp_dialog,@function
warp_dialog:                            # @warp_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$1232, %rsp             # imm = 0x4D0
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.44, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	$0, -128(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movabsq	$.L.str.46, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.34, %r9
	movabsq	$.L.str.47, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.48, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	movl	%r10d, -152(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movl	$1, %edi
	movq	%rax, -120(%rbp)
	callq	gtk_size_group_new
	leaq	-96(%rbp), %rdi
	movsd	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_11, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movq	%rax, -112(%rbp)
	movsd	dvals, %xmm3            # xmm3 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-248(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-248(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-80(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$dvals, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	leaq	-96(%rbp), %rdi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_10, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	dvals+12, %xmm1
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-272(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %r8
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$dvals, %rcx
	addq	$12, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_8, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$4, %r10d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -324(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$warp_map_constrain, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movabsq	$dvals, %rdi
	addq	$8, %rdi
	movl	dvals+8, %ecx
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-80(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r8d
	movl	$3, %ecx
	movl	$1, %r9d
	movl	$5, %r10d
	xorl	%ebx, %ebx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, -372(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-372(%rbp), %r9d        # 4-byte Reload
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -376(%rbp)        # 4-byte Spill
	movl	%r10d, -380(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -396(%rbp)       # 4-byte Spill
	movss	-396(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$4, %r10d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -412(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$3, %ecx
	movl	$2, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	movl	-428(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -432(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -436(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.55, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	movl	-468(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_radio_button_update, %rax
	movabsq	$dvals, %rdx
	addq	$32, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, dvals+32
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.58, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_radio_button_update, %rax
	movabsq	$dvals, %rdx
	addq	$32, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$1, dvals+32
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.59, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_radio_button_update, %rax
	movabsq	$dvals, %rdx
	addq	$32, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$2, dvals+32
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.60, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -128(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rsi
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_radio_button_update, %rax
	movabsq	$dvals, %rdx
	addq	$32, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$3, dvals+32
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_11, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	dvals+16, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-688(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -696(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-696(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-688(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-696(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-80(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$dvals, %rcx
	addq	$16, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %esi
	movsd	dvals+24, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-720(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -728(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-728(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-720(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-728(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-80(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.63, %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %r8
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$dvals, %rcx
	addq	$24, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	leaq	-96(%rbp), %rdi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_10, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	dvals+44, %xmm1
	movsd	%xmm0, -760(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-760(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-760(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-760(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-80(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$dvals, %rcx
	addq	$44, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.65, %rdi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_8, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$4, %r10d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -812(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$warp_map_constrain, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movabsq	$dvals, %rdi
	addq	$36, %rdi
	movl	dvals+36, %ecx
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -840(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-840(%rbp), %rdx        # 8-byte Reload
	movq	-832(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-80(%rbp), %rcx
	movq	%rax, -848(%rbp)        # 8-byte Spill
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r8d
	movl	$3, %ecx
	movl	$1, %r9d
	movl	$5, %r10d
	xorl	%ebx, %ebx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, -860(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-860(%rbp), %r9d        # 4-byte Reload
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -864(%rbp)        # 4-byte Spill
	movl	%r10d, -868(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-80(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %ecx
	movl	$3, %edx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -892(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-892(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -896(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-896(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -900(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -904(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.66, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -916(%rbp)        # 4-byte Spill
	movl	-916(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	dvals+40, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$dvals, %rdi
	addq	$40, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-936(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.67, %rdi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-72(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-96(%rbp), %rdi
	movsd	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_7, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	.LCPI3_2, %xmm6         # xmm6 = mem[0],zero
	movl	$3, %esi
	movsd	dvals+56, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-80(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.68, %rdi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$dvals, %rcx
	addq	$56, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$warp_map_constrain, %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gimp_drawable_combo_box_new
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$5, %r10d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -1020(%rbp)      # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movabsq	$dvals, %rdi
	addq	$48, %rdi
	movl	dvals+48, %ecx
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1048(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movq	-1048(%rbp), %rdx       # 8-byte Reload
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.69, %rdi
	movq	-104(%rbp), %rcx
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	leaq	-96(%rbp), %rdi
	movsd	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_7, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	.LCPI3_2, %xmm6         # xmm6 = mem[0],zero
	movl	$3, %esi
	movsd	dvals+72, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-80(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.70, %rdi
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r8d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rcx
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movl	%r8d, %edx
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movl	%r8d, -1092(%rbp)       # 4-byte Spill
	movq	%rax, %r8
	movl	-1092(%rbp), %r9d       # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$dvals, %rcx
	addq	$72, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %esi
	movsd	dvals+80, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -1104(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-1104(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -1112(%rbp)      # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-1112(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-1104(%rbp), %xmm5      # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-1112(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-80(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.71, %rdi
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$dvals, %rcx
	addq	$80, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$warp_map_constrain, %rdi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gimp_drawable_combo_box_new
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r9d
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$5, %r10d
	xorl	%ebx, %ebx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -1156(%rbp)       # 4-byte Spill
	movl	%r10d, -1160(%rbp)      # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movabsq	$dvals, %rdi
	addq	$64, %rdi
	movl	dvals+64, %ecx
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1184(%rbp)       # 8-byte Spill
	movl	%ecx, %esi
	movq	-1184(%rbp), %rdx       # 8-byte Reload
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.72, %rdi
	movq	-104(%rbp), %rcx
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -132(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-132(%rbp), %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	warp_dialog, .Lfunc_end3-warp_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	warp,@function
warp:                                   # @warp
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, -44(%rbp)
	movl	$-1, -72(%rbp)
	movl	$-1, -76(%rbp)
	movl	dvals+8, %edi
	callq	gimp_drawable_get
	movq	%rax, -16(%rbp)
	movl	dvals+36, %edi
	callq	gimp_drawable_get
	movabsq	$.L.str.73, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-56(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-52(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_9
.LBB4_2:                                # %if.end
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	diff
	movl	-72(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -32(%rbp)
	movl	-76(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -40(%rbp)
	movl	$0, -84(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	dvals+12, %eax
	jge	.LBB4_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movabsq	$.L.str.74, %rdi
	callq	gettext
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$0, progress
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %r8
	movl	-44(%rbp), %r9d
	movl	-84(%rbp), %r10d
	movl	%r10d, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	warp_one
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	-68(%rbp), %r9d
	subl	-60(%rbp), %r9d
	movl	%eax, %ecx
	movl	%r9d, %r8d
	callq	gimp_drawable_update
	cmpl	$1, run_mode
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB4_6
# BB#5:                                 # %if.then.17
                                        #   in Loop: Header=BB4_3 Depth=1
	callq	gimp_displays_flush
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB4_6:                                # %if.end.19
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$0, -44(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB4_3
.LBB4_8:                                # %for.end
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image
	movl	%eax, -80(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-80(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB4_9:                                # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	warp, .Lfunc_end4-warp
	.cfi_endproc

	.align	16, 0x90
	.type	warp_map_constrain,@function
warp_map_constrain:                     # @warp_map_constrain
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_drawable_width
	xorl	%esi, %esi
	movb	%sil, %cl
	movq	-24(%rbp), %rdx
	cmpl	4(%rdx), %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB5_2
# BB#1:                                 # %land.rhs
	movl	-8(%rbp), %edi
	callq	gimp_drawable_height
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	sete	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB5_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	warp_map_constrain, .Lfunc_end5-warp_map_constrain
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4621819117588971520     # double 10
.LCPI6_1:
	.quad	4643211215818981376     # double 256
.LCPI6_2:
	.quad	4640537203540230144     # double 180
.LCPI6_3:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI6_4:
	.quad	4636033603912859648     # double 90
.LCPI6_5:
	.quad	4636737291354636288     # double 100
.LCPI6_6:
	.quad	4607182418800017408     # double 1
.LCPI6_7:
	.quad	4643176031446892544     # double 255
.LCPI6_8:
	.quad	4674736413210574848     # double 32768
	.text
	.align	16, 0x90
	.type	diff,@function
diff:                                   # @diff
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
	subq	$928, %rsp              # imm = 0x3A0
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -392(%rbp)
	movl	$0, -396(%rbp)
	movl	$0, -400(%rbp)
	movl	$0, -412(%rbp)
	movl	$0, -416(%rbp)
	movl	$0, -420(%rbp)
	movq	$0, -528(%rbp)
	movq	$0, -544(%rbp)
	movq	$0, -560(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -592(%rbp)
	movsd	dvals+56, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_1
	jp	.LBB6_1
	jmp	.LBB6_2
.LBB6_1:                                # %if.then
	movl	$1, -412(%rbp)
.LBB6_2:                                # %if.end
	xorps	%xmm0, %xmm0
	movsd	dvals+72, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_3
	jp	.LBB6_3
	jmp	.LBB6_4
.LBB6_3:                                # %if.then.40
	movl	$1, -416(%rbp)
.LBB6_4:                                # %if.end.41
	leaq	-616(%rbp), %rsi
	leaq	-620(%rbp), %rdx
	leaq	-380(%rbp), %rcx
	leaq	-384(%rbp), %r8
	cmpl	$1, dvals+40
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	%edi, -420(%rbp)
	movq	-8(%rbp), %r9
	movl	(%r9), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB6_6
# BB#5:                                 # %if.then.43
	jmp	.LBB6_53
.LBB6_6:                                # %if.end.44
	movl	-616(%rbp), %eax
	addl	-380(%rbp), %eax
	movl	%eax, -624(%rbp)
	movl	-620(%rbp), %eax
	addl	-384(%rbp), %eax
	movl	%eax, -628(%rbp)
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -380(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -384(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -388(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_item_get_image
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %edi
	callq	gimp_image_get_active_layer
	xorl	%edx, %edx
	movl	%eax, -76(%rbp)
	movl	-380(%rbp), %edi
	movl	-384(%rbp), %esi
	callq	gimp_image_new
	movabsq	$.L.str.75, %rsi
	xorl	%edx, %edx
	movsd	.LCPI6_5, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %edi
	movl	-380(%rbp), %eax
	movl	-384(%rbp), %ecx
	movl	%edx, -732(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-732(%rbp), %r8d        # 4-byte Reload
	movl	-732(%rbp), %r9d        # 4-byte Reload
	callq	gimp_layer_new
	movabsq	$.L.str.76, %rsi
	xorl	%ecx, %ecx
	movsd	.LCPI6_5, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -80(%rbp)
	movl	-72(%rbp), %edi
	movl	-380(%rbp), %edx
	movl	-384(%rbp), %eax
	movl	%ecx, -736(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-736(%rbp), %r8d        # 4-byte Reload
	movl	-736(%rbp), %r9d        # 4-byte Reload
	callq	gimp_layer_new
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -40(%rbp)
	movl	-80(%rbp), %edi
	callq	gimp_drawable_get
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	%rax, -32(%rbp)
	movl	-72(%rbp), %edi
	movl	-80(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movl	-72(%rbp), %edi
	movl	-84(%rbp), %esi
	movl	%eax, -740(%rbp)        # 4-byte Spill
	callq	gimp_image_insert_layer
	movl	$1, %esi
	movl	-80(%rbp), %edi
	movl	%eax, -744(%rbp)        # 4-byte Spill
	callq	gimp_drawable_fill
	movl	$1, %esi
	movl	-84(%rbp), %edi
	movl	%eax, -748(%rbp)        # 4-byte Spill
	callq	gimp_drawable_fill
	movl	-68(%rbp), %edi
	movl	-76(%rbp), %esi
	movl	%eax, -752(%rbp)        # 4-byte Spill
	callq	gimp_image_set_active_layer
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %r10
	movl	12(%r10), %ecx
	movl	%ecx, -404(%rbp)
	movl	-404(%rbp), %ecx
	subl	$2, %ecx
	movl	%ecx, -408(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	addl	$2, %ecx
	imull	-388(%rbp), %ecx
	movslq	%ecx, %rdi
	movl	%eax, -756(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -472(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	addl	$2, %ecx
	imull	-388(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -488(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	addl	$2, %ecx
	imull	-388(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -504(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	addl	$2, %ecx
	imull	-388(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -520(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	addl	$2, %ecx
	imull	-388(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -536(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	addl	$2, %ecx
	imull	-388(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -552(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	addl	$2, %ecx
	imull	-388(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -568(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	addl	$2, %ecx
	imull	-388(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -584(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	imull	-404(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -432(%rbp)
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	imull	-404(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -448(%rbp)
	movq	-8(%rbp), %rsi
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-184(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %r9d
	movl	%edx, -760(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-232(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-40(%rbp), %rsi
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %r9d
	movl	%edx, -764(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-136(%rbp), %rdi
	movq	-472(%rbp), %rax
	movslq	-388(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -480(%rbp)
	movq	-488(%rbp), %rax
	movslq	-388(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -496(%rbp)
	movq	-504(%rbp), %rax
	movslq	-388(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -512(%rbp)
	movq	-480(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-620(%rbp), %ecx
	movl	-624(%rbp), %r8d
	subl	-616(%rbp), %r8d
	callq	diff_prepare_row
	leaq	-136(%rbp), %rdi
	movq	-496(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-620(%rbp), %ecx
	addl	$1, %ecx
	movl	-624(%rbp), %r8d
	subl	-616(%rbp), %r8d
	callq	diff_prepare_row
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_4, %xmm4         # xmm4 = mem[0],zero
	movsd	dvals+72, %xmm5         # xmm5 = mem[0],zero
	movaps	%xmm4, %xmm6
	subsd	dvals+80, %xmm6
	mulsd	%xmm3, %xmm6
	divsd	%xmm2, %xmm6
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	movaps	%xmm6, %xmm0
	movsd	%xmm5, -784(%rbp)       # 8-byte Spill
	movsd	%xmm1, -792(%rbp)       # 8-byte Spill
	movsd	%xmm2, -800(%rbp)       # 8-byte Spill
	movsd	%xmm3, -808(%rbp)       # 8-byte Spill
	movsd	%xmm4, -816(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-784(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-792(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-776(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -720(%rbp)
	movsd	dvals+72, %xmm1         # xmm1 = mem[0],zero
	movsd	-816(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	dvals+80, %xmm3
	movsd	-808(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm3
	movsd	-800(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm3
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -824(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-824(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-792(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-776(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -728(%rbp)
	cmpl	$0, -416(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.130
	movl	dvals+64, %edi
	callq	gimp_drawable_get
	leaq	-280(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %edx
	movl	%edx, -396(%rbp)
	movq	-56(%rbp), %rsi
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-280(%rbp), %rdi
	movq	-568(%rbp), %rax
	movslq	-396(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-620(%rbp), %ecx
	movl	-624(%rbp), %r8d
	subl	-616(%rbp), %r8d
	callq	diff_prepare_row
.LBB6_8:                                # %if.end.136
	cmpl	$0, -412(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.138
	movl	dvals+48, %edi
	callq	gimp_drawable_get
	leaq	-376(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	12(%rax), %edx
	movl	%edx, -400(%rbp)
	movq	-64(%rbp), %rsi
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-376(%rbp), %rdi
	movq	-520(%rbp), %rax
	movslq	-400(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -528(%rbp)
	movq	-536(%rbp), %rax
	movslq	-400(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -544(%rbp)
	movq	-552(%rbp), %rax
	movslq	-400(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -560(%rbp)
	movq	-528(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-620(%rbp), %ecx
	subl	$1, %ecx
	movl	-624(%rbp), %r8d
	subl	-616(%rbp), %r8d
	callq	diff_prepare_row
	leaq	-376(%rbp), %rdi
	movq	-544(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-620(%rbp), %ecx
	movl	-624(%rbp), %r8d
	subl	-616(%rbp), %r8d
	callq	diff_prepare_row
.LBB6_10:                               # %if.end.150
	cmpl	$0, -420(%rbp)
	je	.LBB6_12
# BB#11:                                # %if.then.152
	movl	dvals+36, %edi
	callq	gimp_drawable_get
	leaq	-328(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	12(%rax), %edx
	movl	%edx, -392(%rbp)
	movq	-48(%rbp), %rsi
	movl	-380(%rbp), %r8d
	movl	-384(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-328(%rbp), %rdi
	movq	-584(%rbp), %rax
	movslq	-392(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-620(%rbp), %ecx
	movl	-624(%rbp), %r8d
	subl	-616(%rbp), %r8d
	callq	diff_prepare_row
.LBB6_12:                               # %if.end.158
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_3, %xmm2         # xmm2 = mem[0],zero
	mulsd	dvals+24, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -712(%rbp)
	imull	$3, -388(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movaps	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -680(%rbp)
	mulsd	dvals+56, %xmm0
	imull	$3, -400(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -688(%rbp)
	movl	-620(%rbp), %eax
	movl	%eax, -596(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_21 Depth 2
                                        #       Child Loop BB6_23 Depth 3
                                        #       Child Loop BB6_28 Depth 3
	movl	-596(%rbp), %eax
	cmpl	-628(%rbp), %eax
	jge	.LBB6_52
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-136(%rbp), %rdi
	movq	-512(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-596(%rbp), %eax
	addl	$1, %eax
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	movl	%ecx, -828(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-828(%rbp), %r8d        # 4-byte Reload
	callq	diff_prepare_row
	cmpl	$0, -420(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.173
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-328(%rbp), %rdi
	movq	-592(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-596(%rbp), %eax
	addl	$1, %eax
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	movl	%ecx, -832(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-832(%rbp), %r8d        # 4-byte Reload
	callq	diff_prepare_row
.LBB6_16:                               # %if.end.176
                                        #   in Loop: Header=BB6_13 Depth=1
	cmpl	$0, -416(%rbp)
	je	.LBB6_18
# BB#17:                                # %if.then.178
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-280(%rbp), %rdi
	movq	-576(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-596(%rbp), %eax
	addl	$1, %eax
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	movl	%ecx, -836(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-836(%rbp), %r8d        # 4-byte Reload
	callq	diff_prepare_row
.LBB6_18:                               # %if.end.181
                                        #   in Loop: Header=BB6_13 Depth=1
	cmpl	$0, -412(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.183
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-376(%rbp), %rdi
	movq	-544(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-596(%rbp), %eax
	addl	$1, %eax
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	movl	%ecx, -840(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-840(%rbp), %r8d        # 4-byte Reload
	callq	diff_prepare_row
.LBB6_20:                               # %if.end.186
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-432(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -456(%rbp)
	movl	$0, -600(%rbp)
.LBB6_21:                               # %for.cond.187
                                        #   Parent Loop BB6_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_23 Depth 3
                                        #       Child Loop BB6_28 Depth 3
	movl	-600(%rbp), %eax
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_46
# BB#22:                                # %for.body.191
                                        #   in Loop: Header=BB6_21 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -664(%rbp)
	movsd	%xmm0, -672(%rbp)
	movsd	%xmm0, -656(%rbp)
	movsd	%xmm0, -648(%rbp)
	movl	-600(%rbp), %eax
	imull	-388(%rbp), %eax
	movl	%eax, -604(%rbp)
	movl	$0, -612(%rbp)
.LBB6_23:                               # %for.cond.193
                                        #   Parent Loop BB6_13 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-612(%rbp), %eax
	cmpl	-388(%rbp), %eax
	jge	.LBB6_26
# BB#24:                                # %for.body.196
                                        #   in Loop: Header=BB6_23 Depth=3
	xorl	%eax, %eax
	movl	-604(%rbp), %ecx
	addl	-612(%rbp), %ecx
	movl	%ecx, -608(%rbp)
	movl	-608(%rbp), %ecx
	subl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-480(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	-608(%rbp), %ecx
	addl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-480(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	addl	%ecx, %edi
	movl	-608(%rbp), %ecx
	subl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-496(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	$4294967294, %ecx, %ecx # imm = 0xFFFFFFFE
	addl	%ecx, %edi
	movl	-608(%rbp), %ecx
	addl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-496(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	addl	%ecx, %edi
	movl	-608(%rbp), %ecx
	subl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-512(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	addl	%r8d, %edi
	movl	-608(%rbp), %ecx
	addl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-512(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	addl	%ecx, %edi
	cvtsi2sdl	%edi, %xmm0
	addsd	-664(%rbp), %xmm0
	movsd	%xmm0, -664(%rbp)
	movl	-608(%rbp), %ecx
	subl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-480(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%ecx, %eax
	movslq	-608(%rbp), %rdx
	movq	-480(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	-608(%rbp), %ecx
	addl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-480(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%ecx, %eax
	movl	-608(%rbp), %ecx
	subl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-512(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	addl	%ecx, %eax
	movslq	-608(%rbp), %rdx
	movq	-512(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	-608(%rbp), %ecx
	addl	-388(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-512(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-672(%rbp), %xmm0
	movsd	%xmm0, -672(%rbp)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB6_23 Depth=3
	movl	-612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -612(%rbp)
	jmp	.LBB6_23
.LBB6_26:                               # %for.end
                                        #   in Loop: Header=BB6_21 Depth=2
	movsd	-680(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-664(%rbp), %xmm0
	movsd	%xmm0, -664(%rbp)
	movsd	-680(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-672(%rbp), %xmm0
	movsd	%xmm0, -672(%rbp)
	movsd	-672(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-664(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -704(%rbp)
	movsd	-672(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-672(%rbp), %xmm0
	movsd	-664(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-664(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -696(%rbp)
	movsd	-712(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-704(%rbp), %xmm0
	movsd	%xmm0, -704(%rbp)
	movsd	-696(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-704(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -848(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-848(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -664(%rbp)
	movsd	-696(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-704(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm0, -856(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-856(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -672(%rbp)
	cmpl	$0, -412(%rbp)
	je	.LBB6_32
# BB#27:                                # %if.then.276
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	-600(%rbp), %eax
	imull	-400(%rbp), %eax
	movl	%eax, -604(%rbp)
	movl	$0, -612(%rbp)
.LBB6_28:                               # %for.cond.278
                                        #   Parent Loop BB6_13 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-612(%rbp), %eax
	cmpl	-388(%rbp), %eax
	jge	.LBB6_31
# BB#29:                                # %for.body.281
                                        #   in Loop: Header=BB6_28 Depth=3
	xorl	%eax, %eax
	movl	-604(%rbp), %ecx
	addl	-612(%rbp), %ecx
	movl	%ecx, -608(%rbp)
	movl	-608(%rbp), %ecx
	subl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-528(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %edi
	subl	%ecx, %edi
	movl	-608(%rbp), %ecx
	addl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-528(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	addl	%ecx, %edi
	movl	-608(%rbp), %ecx
	subl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-544(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	imull	$4294967294, %ecx, %ecx # imm = 0xFFFFFFFE
	addl	%ecx, %edi
	movl	-608(%rbp), %ecx
	addl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-544(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	addl	%ecx, %edi
	movl	-608(%rbp), %ecx
	subl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-560(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	addl	%r8d, %edi
	movl	-608(%rbp), %ecx
	addl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-560(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	addl	%ecx, %edi
	cvtsi2sdl	%edi, %xmm0
	addsd	-648(%rbp), %xmm0
	movsd	%xmm0, -648(%rbp)
	movl	-608(%rbp), %ecx
	subl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-528(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%ecx, %eax
	movslq	-608(%rbp), %rdx
	movq	-528(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	-608(%rbp), %ecx
	addl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-528(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	subl	%ecx, %eax
	movl	-608(%rbp), %ecx
	subl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-560(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	addl	%ecx, %eax
	movslq	-608(%rbp), %rdx
	movq	-560(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movl	-608(%rbp), %ecx
	addl	-400(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-560(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	addsd	-656(%rbp), %xmm0
	movsd	%xmm0, -656(%rbp)
# BB#30:                                # %for.inc.350
                                        #   in Loop: Header=BB6_28 Depth=3
	movl	-612(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -612(%rbp)
	jmp	.LBB6_28
.LBB6_31:                               # %for.end.352
                                        #   in Loop: Header=BB6_21 Depth=2
	movsd	-688(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-648(%rbp), %xmm0
	movsd	%xmm0, -648(%rbp)
	movsd	-688(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-656(%rbp), %xmm0
	movsd	%xmm0, -656(%rbp)
	movsd	-648(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-664(%rbp), %xmm0
	movsd	%xmm0, -664(%rbp)
	movsd	-656(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-672(%rbp), %xmm0
	movsd	%xmm0, -672(%rbp)
.LBB6_32:                               # %if.end.357
                                        #   in Loop: Header=BB6_21 Depth=2
	cmpl	$0, -416(%rbp)
	je	.LBB6_34
# BB#33:                                # %if.then.359
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	-600(%rbp), %eax
	movl	-396(%rbp), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	-576(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -648(%rbp)
	movsd	-720(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-648(%rbp), %xmm0
	addsd	-664(%rbp), %xmm0
	movsd	%xmm0, -664(%rbp)
	movsd	-728(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-648(%rbp), %xmm0
	addsd	-672(%rbp), %xmm0
	movsd	%xmm0, -672(%rbp)
.LBB6_34:                               # %if.end.368
                                        #   in Loop: Header=BB6_21 Depth=2
	cmpl	$0, -420(%rbp)
	je	.LBB6_36
# BB#35:                                # %if.then.370
                                        #   in Loop: Header=BB6_21 Depth=2
	movsd	.LCPI6_7, %xmm0         # xmm0 = mem[0],zero
	movl	-600(%rbp), %eax
	movl	-392(%rbp), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	-592(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -648(%rbp)
	movsd	-664(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-648(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -664(%rbp)
	movsd	-672(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-648(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -672(%rbp)
.LBB6_36:                               # %if.end.379
                                        #   in Loop: Header=BB6_21 Depth=2
	movsd	.LCPI6_8, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-664(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -632(%rbp)
	addsd	-672(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -636(%rbp)
	cmpl	$0, -632(%rbp)
	jge	.LBB6_38
# BB#37:                                # %if.then.386
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	$0, -632(%rbp)
.LBB6_38:                               # %if.end.387
                                        #   in Loop: Header=BB6_21 Depth=2
	cmpl	$65535, -632(%rbp)      # imm = 0xFFFF
	jle	.LBB6_40
# BB#39:                                # %if.then.390
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	$65535, -632(%rbp)      # imm = 0xFFFF
.LBB6_40:                               # %if.end.391
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	$256, %eax              # imm = 0x100
	movl	-632(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movq	-440(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -440(%rbp)
	movb	%dl, (%rsi)
	movl	-632(%rbp), %ecx
	movl	%eax, -860(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-860(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%dl, %r8b
	movq	-440(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -440(%rbp)
	movb	%r8b, (%rsi)
	movl	-408(%rbp), %edx
	movq	-440(%rbp), %rsi
	movslq	%edx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -440(%rbp)
	cmpl	$0, -636(%rbp)
	jge	.LBB6_42
# BB#41:                                # %if.then.399
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	$0, -636(%rbp)
.LBB6_42:                               # %if.end.400
                                        #   in Loop: Header=BB6_21 Depth=2
	cmpl	$65535, -636(%rbp)      # imm = 0xFFFF
	jle	.LBB6_44
# BB#43:                                # %if.then.403
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	$65535, -636(%rbp)      # imm = 0xFFFF
.LBB6_44:                               # %if.end.404
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	$256, %eax              # imm = 0x100
	movl	-636(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movq	-456(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -456(%rbp)
	movb	%dl, (%rsi)
	movl	-636(%rbp), %ecx
	movl	%eax, -864(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-864(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%dl, %r8b
	movq	-456(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -456(%rbp)
	movb	%r8b, (%rsi)
	movl	-408(%rbp), %edx
	movq	-456(%rbp), %rsi
	movslq	%edx, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -456(%rbp)
# BB#45:                                # %for.inc.413
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	-600(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -600(%rbp)
	jmp	.LBB6_21
.LBB6_46:                               # %for.end.415
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-184(%rbp), %rdi
	movq	-432(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-596(%rbp), %ecx
	movl	-624(%rbp), %eax
	subl	-616(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	leaq	-232(%rbp), %rdi
	movq	-448(%rbp), %rsi
	movl	-616(%rbp), %edx
	movl	-596(%rbp), %ecx
	movl	-624(%rbp), %eax
	subl	-616(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	movq	-480(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	-496(%rbp), %rsi
	movq	%rsi, -480(%rbp)
	movq	-512(%rbp), %rsi
	movq	%rsi, -496(%rbp)
	movq	-464(%rbp), %rsi
	movq	%rsi, -512(%rbp)
	cmpl	$0, -412(%rbp)
	je	.LBB6_48
# BB#47:                                # %if.then.419
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-528(%rbp), %rax
	movq	%rax, -464(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	-464(%rbp), %rax
	movq	%rax, -560(%rbp)
.LBB6_48:                               # %if.end.420
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$8, %eax
	movl	-596(%rbp), %ecx
	movl	%eax, -868(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-868(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_50
# BB#49:                                # %if.then.424
                                        #   in Loop: Header=BB6_13 Depth=1
	cvtsi2sdl	-596(%rbp), %xmm0
	movl	-628(%rbp), %eax
	subl	-620(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -872(%rbp)        # 4-byte Spill
.LBB6_50:                               # %if.end.430
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_51
.LBB6_51:                               # %for.inc.431
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-596(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -596(%rbp)
	jmp	.LBB6_13
.LBB6_52:                               # %for.end.433
	movsd	.LCPI6_6, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-32(%rbp), %rdi
	movl	%eax, -876(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-32(%rbp), %rdi
	movl	(%rdi), %edi
	movl	-616(%rbp), %esi
	movl	-620(%rbp), %edx
	movl	-624(%rbp), %eax
	subl	-616(%rbp), %eax
	movl	-628(%rbp), %ecx
	subl	-620(%rbp), %ecx
	movl	%ecx, -880(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-880(%rbp), %r8d        # 4-byte Reload
	callq	gimp_drawable_update
	movq	-40(%rbp), %r9
	movl	(%r9), %edi
	movl	-616(%rbp), %esi
	movl	-620(%rbp), %edx
	movl	-624(%rbp), %ecx
	subl	-616(%rbp), %ecx
	movl	-628(%rbp), %r8d
	subl	-620(%rbp), %r8d
	movl	%eax, -884(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -888(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movabsq	$.L.str.77, %rdi
	movl	%eax, -892(%rbp)        # 4-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-32(%rbp), %rdi
	movl	%eax, -896(%rbp)        # 4-byte Spill
	callq	blur16
	movabsq	$.L.str.78, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-40(%rbp), %rdi
	movl	%eax, -900(%rbp)        # 4-byte Spill
	callq	blur16
	movq	-472(%rbp), %rdi
	callq	g_free
	movq	-488(%rbp), %rdi
	callq	g_free
	movq	-504(%rbp), %rdi
	callq	g_free
	movq	-520(%rbp), %rdi
	callq	g_free
	movq	-536(%rbp), %rdi
	callq	g_free
	movq	-552(%rbp), %rdi
	callq	g_free
	movq	-568(%rbp), %rdi
	callq	g_free
	movq	-584(%rbp), %rdi
	callq	g_free
	movq	-432(%rbp), %rdi
	callq	g_free
	movq	-448(%rbp), %rdi
	callq	g_free
	movl	-80(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, (%rdi)
	movl	-84(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB6_53:                               # %return
	addq	$928, %rsp              # imm = 0x3A0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	diff, .Lfunc_end6-diff
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4674701228838486016     # double 32640
.LCPI7_1:
	.quad	4607182418800017408     # double 1
.LCPI7_2:
	.quad	4674736413210574848     # double 32768
.LCPI7_3:
	.quad	4643211215818981376     # double 256
.LCPI7_4:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	warp_one,@function
warp_one:                               # @warp_one
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$856, %rsp              # imm = 0x358
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
	movl	16(%rbp), %eax
	xorps	%xmm0, %xmm0
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movl	%eax, -88(%rbp)
	movq	$0, -336(%rbp)
	movq	$0, -344(%rbp)
	movq	$0, -352(%rbp)
	movl	$-1, -356(%rbp)
	movl	$-1, -360(%rbp)
	movl	$-1, -364(%rbp)
	movl	$-1, -368(%rbp)
	movl	$-1, -372(%rbp)
	movl	$-1, -376(%rbp)
	movl	$-1, -388(%rbp)
	movl	$-1, -392(%rbp)
	movl	$-1, -396(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -472(%rbp)
	movsd	%xmm0, -552(%rbp)
	movsd	%xmm0, -560(%rbp)
	movl	$0, -636(%rbp)
	movl	$1, -640(%rbp)
	movl	$1, -644(%rbp)
	movl	$1, -648(%rbp)
	callq	g_rand_new
	leaq	-500(%rbp), %rsi
	leaq	-504(%rbp), %rdx
	leaq	-388(%rbp), %rcx
	leaq	-392(%rbp), %r8
	movq	%rax, -656(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_63
.LBB7_2:                                # %if.end
	leaq	-136(%rbp), %rdi
	xorl	%eax, %eax
	movl	-500(%rbp), %ecx
	addl	-388(%rbp), %ecx
	movl	%ecx, -508(%rbp)
	movl	-504(%rbp), %ecx
	addl	-392(%rbp), %ecx
	movl	%ecx, -512(%rbp)
	movq	-48(%rbp), %rdx
	movl	4(%rdx), %ecx
	movl	%ecx, -388(%rbp)
	movq	-48(%rbp), %rdx
	movl	8(%rdx), %ecx
	movl	%ecx, -392(%rbp)
	movq	-48(%rbp), %rdx
	movl	12(%rdx), %ecx
	movl	%ecx, -396(%rbp)
	movl	-508(%rbp), %ecx
	subl	-500(%rbp), %ecx
	movl	-512(%rbp), %esi
	subl	-504(%rbp), %esi
	imull	%esi, %ecx
	movl	%ecx, -524(%rbp)
	movq	-48(%rbp), %rsi
	movl	-500(%rbp), %edx
	movl	-504(%rbp), %ecx
	movl	-508(%rbp), %r8d
	subl	-500(%rbp), %r8d
	movl	-512(%rbp), %r9d
	subl	-504(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -660(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	cmpl	$0, -84(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.9
	leaq	-184(%rbp), %rdi
	movl	$1, %eax
	movq	-56(%rbp), %rsi
	movl	-500(%rbp), %edx
	movl	-504(%rbp), %ecx
	movl	-508(%rbp), %r8d
	subl	-500(%rbp), %r8d
	movl	-512(%rbp), %r9d
	subl	-504(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -664(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	leaq	-184(%rbp), %rdi
	movl	$1, %eax
	movq	-56(%rbp), %rsi
	movl	-500(%rbp), %edx
	movl	-504(%rbp), %ecx
	movl	-508(%rbp), %r8d
	subl	-500(%rbp), %r8d
	movl	-512(%rbp), %r9d
	subl	-504(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -668(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
.LBB7_5:                                # %if.end.14
	leaq	-232(%rbp), %rdi
	xorl	%eax, %eax
	movq	-64(%rbp), %rsi
	movl	-500(%rbp), %edx
	movl	-504(%rbp), %ecx
	movl	-508(%rbp), %r8d
	subl	-500(%rbp), %r8d
	movl	-512(%rbp), %r9d
	subl	-504(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -672(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movq	-64(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_bpp
	leaq	-280(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -640(%rbp)
	movq	-72(%rbp), %rsi
	movl	-500(%rbp), %edx
	movl	-504(%rbp), %eax
	movl	-508(%rbp), %r8d
	subl	-500(%rbp), %r8d
	movl	-512(%rbp), %r9d
	subl	-504(%rbp), %r9d
	movl	%ecx, -676(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-72(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -644(%rbp)
	cmpl	$0, dvals+40
	je	.LBB7_9
# BB#6:                                 # %if.then.24
	leaq	-328(%rbp), %rdi
	xorl	%eax, %eax
	movq	-80(%rbp), %rsi
	movl	-500(%rbp), %edx
	movl	-504(%rbp), %ecx
	movl	-508(%rbp), %r8d
	subl	-500(%rbp), %r8d
	movl	-512(%rbp), %r9d
	subl	-504(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -680(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movq	-80(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB7_8
# BB#7:                                 # %if.then.30
	movl	$1, -636(%rbp)
.LBB7_8:                                # %if.end.31
	movq	-80(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	movl	$5, %edi
	leaq	-136(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	leaq	-232(%rbp), %rcx
	leaq	-280(%rbp), %r8
	leaq	-328(%rbp), %r9
	movl	%eax, -648(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -384(%rbp)
	jmp	.LBB7_10
.LBB7_9:                                # %if.else.35
	movl	$4, %edi
	leaq	-136(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	leaq	-232(%rbp), %rcx
	leaq	-280(%rbp), %r8
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -384(%rbp)
.LBB7_10:                               # %if.end.37
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	dvals, %xmm1            # xmm1 = mem[0],zero
	cvtsi2sdl	dvals+44, %xmm2
	mulsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -576(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -384(%rbp)
.LBB7_11:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
                                        #       Child Loop BB7_19 Depth 3
                                        #         Child Loop BB7_26 Depth 4
                                        #         Child Loop BB7_45 Depth 4
	cmpq	$0, -384(%rbp)
	je	.LBB7_56
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -448(%rbp)
	cmpl	$0, dvals+40
	je	.LBB7_14
# BB#13:                                # %if.then.44
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-328(%rbp), %rax
	movq	%rax, -464(%rbp)
.LBB7_14:                               # %if.end.46
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -520(%rbp)
.LBB7_15:                               # %for.cond.48
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_19 Depth 3
                                        #         Child Loop BB7_26 Depth 4
                                        #         Child Loop BB7_45 Depth 4
	movl	-520(%rbp), %eax
	movl	-156(%rbp), %ecx
	addl	-148(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_54
# BB#16:                                # %for.body.53
                                        #   in Loop: Header=BB7_15 Depth=2
	movq	-408(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -456(%rbp)
	cmpl	$1, dvals+40
	jne	.LBB7_18
# BB#17:                                # %if.then.56
                                        #   in Loop: Header=BB7_15 Depth=2
	movq	-464(%rbp), %rax
	movq	%rax, -472(%rbp)
.LBB7_18:                               # %if.end.57
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	-160(%rbp), %eax
	movl	%eax, -516(%rbp)
.LBB7_19:                               # %for.cond.59
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_26 Depth 4
                                        #         Child Loop BB7_45 Depth 4
	movl	-516(%rbp), %eax
	movl	-160(%rbp), %ecx
	addl	-152(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_50
# BB#20:                                # %for.body.64
                                        #   in Loop: Header=BB7_19 Depth=3
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_3, %xmm1         # xmm1 = mem[0],zero
	movsd	-576(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-440(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	movaps	%xmm1, %xmm4
	mulsd	%xmm3, %xmm4
	movq	-440(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	addsd	%xmm3, %xmm4
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm2
	movsd	%xmm2, -624(%rbp)
	movsd	-576(%rbp), %xmm2       # xmm2 = mem[0],zero
	movq	-456(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	mulsd	%xmm3, %xmm1
	movq	-456(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm3
	addsd	%xmm3, %xmm1
	subsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -632(%rbp)
	cmpl	$0, dvals+40
	je	.LBB7_22
# BB#21:                                # %if.then.85
                                        #   in Loop: Header=BB7_19 Depth=3
	movq	-472(%rbp), %rdi
	movl	-636(%rbp), %esi
	movl	-648(%rbp), %edx
	callq	warp_map_mag_give_value
	movsd	.LCPI7_4, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -568(%rbp)
	movsd	-568(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-624(%rbp), %xmm0
	movsd	%xmm0, -624(%rbp)
	movsd	-568(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-632(%rbp), %xmm0
	movsd	%xmm0, -632(%rbp)
.LBB7_22:                               # %if.end.90
                                        #   in Loop: Header=BB7_19 Depth=3
	xorps	%xmm0, %xmm0
	movsd	dvals+16, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_23
	jp	.LBB7_23
	jmp	.LBB7_24
.LBB7_23:                               # %if.then.93
                                        #   in Loop: Header=BB7_19 Depth=3
	movq	-656(%rbp), %rdi
	movsd	dvals+16, %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	dvals+16, %xmm1         # xmm1 = mem[0],zero
	callq	g_rand_double_range
	addsd	-624(%rbp), %xmm0
	movsd	%xmm0, -624(%rbp)
	movq	-656(%rbp), %rdi
	movsd	dvals+16, %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	dvals+16, %xmm1         # xmm1 = mem[0],zero
	callq	g_rand_double_range
	addsd	-632(%rbp), %xmm0
	movsd	%xmm0, -632(%rbp)
.LBB7_24:                               # %if.end.100
                                        #   in Loop: Header=BB7_19 Depth=3
	cmpl	$1, dvals+44
	je	.LBB7_36
# BB#25:                                # %if.then.103
                                        #   in Loop: Header=BB7_19 Depth=3
	movl	$1, -588(%rbp)
.LBB7_26:                               # %for.cond.104
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        #       Parent Loop BB7_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-588(%rbp), %eax
	cmpl	dvals+44, %eax
	jge	.LBB7_35
# BB#27:                                # %for.body.107
                                        #   in Loop: Header=BB7_26 Depth=4
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-516(%rbp), %xmm1
	addsd	-624(%rbp), %xmm1
	movsd	%xmm1, -536(%rbp)
	cvtsi2sdl	-520(%rbp), %xmm1
	addsd	-632(%rbp), %xmm1
	movsd	%xmm1, -544(%rbp)
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_29
# BB#28:                                # %if.then.114
                                        #   in Loop: Header=BB7_26 Depth=4
	cvttsd2si	-536(%rbp), %eax
	movl	%eax, -580(%rbp)
	jmp	.LBB7_30
.LBB7_29:                               # %if.else.116
                                        #   in Loop: Header=BB7_26 Depth=4
	xorl	%eax, %eax
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -580(%rbp)
.LBB7_30:                               # %if.end.121
                                        #   in Loop: Header=BB7_26 Depth=4
	xorps	%xmm0, %xmm0
	movsd	-544(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_32
# BB#31:                                # %if.then.124
                                        #   in Loop: Header=BB7_26 Depth=4
	cvttsd2si	-544(%rbp), %eax
	movl	%eax, -584(%rbp)
	jmp	.LBB7_33
.LBB7_32:                               # %if.else.126
                                        #   in Loop: Header=BB7_26 Depth=4
	xorl	%eax, %eax
	movsd	-544(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -584(%rbp)
.LBB7_33:                               # %if.end.131
                                        #   in Loop: Header=BB7_26 Depth=4
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movq	-344(%rbp), %rsi
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r8d
	movl	-504(%rbp), %r9d
	movl	-508(%rbp), %eax
	movl	-512(%rbp), %r10d
	movl	-580(%rbp), %r11d
	movl	-584(%rbp), %ebx
	movq	%rsp, %r14
	leaq	-496(%rbp), %r15
	movq	%r15, 48(%r14)
	leaq	-372(%rbp), %r12
	movq	%r12, 40(%r14)
	leaq	-360(%rbp), %r13
	movq	%r13, 32(%r14)
	movl	%ebx, 24(%r14)
	movl	%r11d, 16(%r14)
	movl	%r10d, 8(%r14)
	movl	%eax, (%r14)
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	movq	%r12, -696(%rbp)        # 8-byte Spill
	movq	%r15, -704(%rbp)        # 8-byte Spill
	movq	%r13, -712(%rbp)        # 8-byte Spill
	callq	warp_pixel
	movq	%rax, -344(%rbp)
	movq	-64(%rbp), %rdi
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r8d
	movl	-504(%rbp), %r9d
	movl	-508(%rbp), %r10d
	movl	-512(%rbp), %r11d
	movl	-580(%rbp), %ebx
	incl	%ebx
	movl	-584(%rbp), %esi
	leaq	-492(%rbp), %r14
	movq	%rsp, %r15
	movq	%r14, 48(%r15)
	movq	-696(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%r15)
	movq	-712(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%r15)
	movl	%esi, 24(%r15)
	movl	%ebx, 16(%r15)
	movl	%r11d, 8(%r15)
	movl	%r10d, (%r15)
	movq	%rax, %rsi
	movq	%r14, -720(%rbp)        # 8-byte Spill
	callq	warp_pixel
	movq	%rax, -344(%rbp)
	movq	-64(%rbp), %rdi
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r8d
	movl	-504(%rbp), %r9d
	movl	-508(%rbp), %r10d
	movl	-512(%rbp), %r11d
	movl	-580(%rbp), %ebx
	movl	-584(%rbp), %esi
	incl	%esi
	leaq	-488(%rbp), %r14
	movq	%rsp, %r15
	movq	%r14, 48(%r15)
	movq	-696(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%r15)
	movq	-712(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%r15)
	movl	%esi, 24(%r15)
	movl	%ebx, 16(%r15)
	movl	%r11d, 8(%r15)
	movl	%r10d, (%r15)
	movq	%rax, %rsi
	movq	%r14, -728(%rbp)        # 8-byte Spill
	callq	warp_pixel
	movq	%rax, -344(%rbp)
	movq	-64(%rbp), %rdi
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r8d
	movl	-504(%rbp), %r9d
	movl	-508(%rbp), %r10d
	movl	-512(%rbp), %r11d
	movl	-580(%rbp), %ebx
	incl	%ebx
	movl	-584(%rbp), %esi
	incl	%esi
	leaq	-484(%rbp), %r14
	movq	%rsp, %r15
	movq	%r14, 48(%r15)
	movq	-696(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%r15)
	movq	-712(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%r15)
	movl	%esi, 24(%r15)
	movl	%ebx, 16(%r15)
	movl	%r11d, 8(%r15)
	movl	%r10d, (%r15)
	movq	%rax, %rsi
	movq	%r14, -736(%rbp)        # 8-byte Spill
	callq	warp_pixel
	movq	%rax, -344(%rbp)
	movzbl	-496(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-495(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, -608(%rbp)
	movzbl	-492(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-491(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, -604(%rbp)
	movzbl	-488(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-487(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, -600(%rbp)
	movzbl	-484(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-483(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, -596(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-544(%rbp), %xmm1       # xmm1 = mem[0],zero
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_bilinear_32
	movl	%eax, %eax
	movl	%eax, %esi
	cvtsi2sdq	%rsi, %xmm0
	movsd	%xmm0, -552(%rbp)
	movq	-72(%rbp), %rdi
	movq	-352(%rbp), %rsi
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r8d
	movl	-504(%rbp), %r9d
	movl	-508(%rbp), %eax
	movl	-512(%rbp), %r10d
	movl	-580(%rbp), %r11d
	movl	-584(%rbp), %ebx
	movq	%rsp, %r14
	movq	-704(%rbp), %r15        # 8-byte Reload
	movq	%r15, 48(%r14)
	leaq	-376(%rbp), %r12
	movq	%r12, 40(%r14)
	leaq	-364(%rbp), %r13
	movq	%r13, 32(%r14)
	movl	%ebx, 24(%r14)
	movl	%r11d, 16(%r14)
	movl	%r10d, 8(%r14)
	movl	%eax, (%r14)
	movq	%r12, -752(%rbp)        # 8-byte Spill
	movq	%r13, -760(%rbp)        # 8-byte Spill
	callq	warp_pixel
	movq	%rax, -352(%rbp)
	movq	-72(%rbp), %rdi
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r8d
	movl	-504(%rbp), %r9d
	movl	-508(%rbp), %r10d
	movl	-512(%rbp), %r11d
	movl	-580(%rbp), %ebx
	incl	%ebx
	movl	-584(%rbp), %esi
	movq	%rsp, %r14
	movq	-720(%rbp), %r15        # 8-byte Reload
	movq	%r15, 48(%r14)
	movq	-752(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%r14)
	movq	-760(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%r14)
	movl	%esi, 24(%r14)
	movl	%ebx, 16(%r14)
	movl	%r11d, 8(%r14)
	movl	%r10d, (%r14)
	movq	%rax, %rsi
	callq	warp_pixel
	movq	%rax, -352(%rbp)
	movq	-72(%rbp), %rdi
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r8d
	movl	-504(%rbp), %r9d
	movl	-508(%rbp), %r10d
	movl	-512(%rbp), %r11d
	movl	-580(%rbp), %ebx
	movl	-584(%rbp), %esi
	incl	%esi
	movq	%rsp, %r14
	movq	-728(%rbp), %r15        # 8-byte Reload
	movq	%r15, 48(%r14)
	movq	-752(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%r14)
	movq	-760(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%r14)
	movl	%esi, 24(%r14)
	movl	%ebx, 16(%r14)
	movl	%r11d, 8(%r14)
	movl	%r10d, (%r14)
	movq	%rax, %rsi
	callq	warp_pixel
	movq	%rax, -352(%rbp)
	movq	-72(%rbp), %rdi
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r8d
	movl	-504(%rbp), %r9d
	movl	-508(%rbp), %r10d
	movl	-512(%rbp), %r11d
	movl	-580(%rbp), %ebx
	incl	%ebx
	movl	-584(%rbp), %esi
	incl	%esi
	movq	%rsp, %r14
	movq	-736(%rbp), %r15        # 8-byte Reload
	movq	%r15, 48(%r14)
	movq	-752(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%r14)
	movq	-760(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%r14)
	movl	%esi, 24(%r14)
	movl	%ebx, 16(%r14)
	movl	%r11d, 8(%r14)
	movl	%r10d, (%r14)
	movq	%rax, %rsi
	callq	warp_pixel
	movq	%rax, -352(%rbp)
	movzbl	-496(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-495(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, -608(%rbp)
	movzbl	-492(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-491(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, -604(%rbp)
	movzbl	-488(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-487(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, -600(%rbp)
	movzbl	-484(%rbp), %ecx
	shll	$8, %ecx
	movzbl	-483(%rbp), %edx
	orl	%edx, %ecx
	movl	%ecx, -596(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-544(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-744(%rbp), %rdi        # 8-byte Reload
	callq	gimp_bilinear_32
	movl	%eax, %eax
	movl	%eax, %esi
	cvtsi2sdq	%rsi, %xmm0
	movsd	%xmm0, -560(%rbp)
	movsd	-576(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-552(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-688(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-624(%rbp), %xmm0
	movsd	%xmm0, -624(%rbp)
	movsd	-576(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-560(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-632(%rbp), %xmm0
	movsd	%xmm0, -632(%rbp)
# BB#34:                                # %for.inc
                                        #   in Loop: Header=BB7_26 Depth=4
	movl	-588(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -588(%rbp)
	jmp	.LBB7_26
.LBB7_35:                               # %for.end
                                        #   in Loop: Header=BB7_19 Depth=3
	jmp	.LBB7_36
.LBB7_36:                               # %if.end.247
                                        #   in Loop: Header=BB7_19 Depth=3
	cvtsi2sdl	-516(%rbp), %xmm0
	addsd	-624(%rbp), %xmm0
	movsd	%xmm0, -536(%rbp)
	cvtsi2sdl	-520(%rbp), %xmm0
	addsd	-632(%rbp), %xmm0
	movsd	%xmm0, -544(%rbp)
	movl	-640(%rbp), %eax
	movq	-440(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -440(%rbp)
	movl	-644(%rbp), %eax
	movq	-456(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -456(%rbp)
	cmpl	$1, dvals+40
	jne	.LBB7_38
# BB#37:                                # %if.then.256
                                        #   in Loop: Header=BB7_19 Depth=3
	movl	-648(%rbp), %eax
	movq	-472(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -472(%rbp)
.LBB7_38:                               # %if.end.259
                                        #   in Loop: Header=BB7_19 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-536(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_40
# BB#39:                                # %if.then.262
                                        #   in Loop: Header=BB7_19 Depth=3
	cvttsd2si	-536(%rbp), %eax
	movl	%eax, -580(%rbp)
	jmp	.LBB7_41
.LBB7_40:                               # %if.else.264
                                        #   in Loop: Header=BB7_19 Depth=3
	xorl	%eax, %eax
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -580(%rbp)
.LBB7_41:                               # %if.end.269
                                        #   in Loop: Header=BB7_19 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-544(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_43
# BB#42:                                # %if.then.272
                                        #   in Loop: Header=BB7_19 Depth=3
	cvttsd2si	-544(%rbp), %eax
	movl	%eax, -584(%rbp)
	jmp	.LBB7_44
.LBB7_43:                               # %if.else.274
                                        #   in Loop: Header=BB7_19 Depth=3
	xorl	%eax, %eax
	movsd	-544(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	cvttsd2si	%xmm0, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -584(%rbp)
.LBB7_44:                               # %if.end.279
                                        #   in Loop: Header=BB7_19 Depth=3
	leaq	-356(%rbp), %rax
	leaq	-368(%rbp), %rcx
	leaq	-496(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-336(%rbp), %rsi
	movl	-388(%rbp), %r8d
	movl	-392(%rbp), %r9d
	movl	-500(%rbp), %r10d
	movl	-504(%rbp), %r11d
	movl	-508(%rbp), %ebx
	movl	-512(%rbp), %r14d
	movl	-580(%rbp), %r15d
	movl	-584(%rbp), %r12d
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	%ebx, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%r12d, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	-776(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	-768(%rbp), %r13        # 8-byte Reload
	movq	%r13, 48(%rsp)
	callq	warp_pixel
	leaq	-356(%rbp), %rsi
	leaq	-368(%rbp), %rdi
	leaq	-496(%rbp), %r13
	movq	%rax, -336(%rbp)
	movq	-48(%rbp), %rax
	movq	-336(%rbp), %r8
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r9d
	movl	-504(%rbp), %r10d
	movl	-508(%rbp), %r11d
	movl	-512(%rbp), %ebx
	movl	-580(%rbp), %r14d
	addl	$1, %r14d
	movl	-584(%rbp), %r15d
	addq	$4, %r13
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -792(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	-784(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	%r13, 48(%rsp)
	callq	warp_pixel
	leaq	-356(%rbp), %rsi
	leaq	-368(%rbp), %rdi
	leaq	-496(%rbp), %r13
	movq	%rax, -336(%rbp)
	movq	-48(%rbp), %rax
	movq	-336(%rbp), %r8
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r9d
	movl	-504(%rbp), %r10d
	movl	-508(%rbp), %r11d
	movl	-512(%rbp), %ebx
	movl	-580(%rbp), %r14d
	movl	-584(%rbp), %r15d
	addl	$1, %r15d
	addq	$8, %r13
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -808(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	-808(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	-800(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	%r13, 48(%rsp)
	callq	warp_pixel
	leaq	-356(%rbp), %rsi
	leaq	-368(%rbp), %rdi
	leaq	-496(%rbp), %r13
	movq	%rax, -336(%rbp)
	movq	-48(%rbp), %rax
	movq	-336(%rbp), %r8
	movl	-388(%rbp), %edx
	movl	-392(%rbp), %ecx
	movl	-500(%rbp), %r9d
	movl	-504(%rbp), %r10d
	movl	-508(%rbp), %r11d
	movl	-512(%rbp), %ebx
	movl	-580(%rbp), %r14d
	addl	$1, %r14d
	movl	-584(%rbp), %r15d
	addl	$1, %r15d
	addq	$12, %r13
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -824(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	-824(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	-816(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	%r13, 48(%rsp)
	callq	warp_pixel
	movq	%rax, -336(%rbp)
	movl	$0, -616(%rbp)
.LBB7_45:                               # %for.cond.296
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_15 Depth=2
                                        #       Parent Loop BB7_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-616(%rbp), %eax
	cmpl	-396(%rbp), %eax
	jge	.LBB7_48
# BB#46:                                # %for.body.299
                                        #   in Loop: Header=BB7_45 Depth=4
	leaq	-592(%rbp), %rdi
	movslq	-616(%rbp), %rax
	movb	-496(%rbp,%rax), %cl
	movb	%cl, -592(%rbp)
	movslq	-616(%rbp), %rax
	movb	-492(%rbp,%rax), %cl
	movb	%cl, -591(%rbp)
	movslq	-616(%rbp), %rax
	movb	-488(%rbp,%rax), %cl
	movb	%cl, -590(%rbp)
	movslq	-616(%rbp), %rax
	movb	-484(%rbp,%rax), %cl
	movb	%cl, -589(%rbp)
	movsd	-536(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-544(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_bilinear_8
	movb	%al, -609(%rbp)
	movb	-609(%rbp), %al
	movq	-416(%rbp), %rdi
	movq	%rdi, %rdx
	addq	$1, %rdx
	movq	%rdx, -416(%rbp)
	movb	%al, (%rdi)
# BB#47:                                # %for.inc.317
                                        #   in Loop: Header=BB7_45 Depth=4
	movl	-616(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -616(%rbp)
	jmp	.LBB7_45
.LBB7_48:                               # %for.end.319
                                        #   in Loop: Header=BB7_19 Depth=3
	jmp	.LBB7_49
.LBB7_49:                               # %for.inc.320
                                        #   in Loop: Header=BB7_19 Depth=3
	movl	-516(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -516(%rbp)
	jmp	.LBB7_19
.LBB7_50:                               # %for.end.322
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	-116(%rbp), %eax
	movq	-424(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -424(%rbp)
	movl	-164(%rbp), %eax
	movq	-408(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -408(%rbp)
	movl	-212(%rbp), %eax
	movq	-432(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -432(%rbp)
	movl	-260(%rbp), %eax
	movq	-448(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -448(%rbp)
	cmpl	$1, dvals+40
	jne	.LBB7_52
# BB#51:                                # %if.then.336
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	-308(%rbp), %eax
	movq	-464(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -464(%rbp)
.LBB7_52:                               # %if.end.340
                                        #   in Loop: Header=BB7_15 Depth=2
	jmp	.LBB7_53
.LBB7_53:                               # %for.inc.341
                                        #   in Loop: Header=BB7_15 Depth=2
	movl	-520(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -520(%rbp)
	jmp	.LBB7_15
.LBB7_54:                               # %for.end.343
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	-152(%rbp), %eax
	imull	-148(%rbp), %eax
	addl	progress, %eax
	movl	%eax, progress
	cvtsi2sdl	progress, %xmm0
	cvtsi2sdl	-524(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -828(%rbp)        # 4-byte Spill
# BB#55:                                # %for.inc.352
                                        #   in Loop: Header=BB7_11 Depth=1
	movq	-384(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -384(%rbp)
	jmp	.LBB7_11
.LBB7_56:                               # %for.end.354
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	cmpq	$0, -336(%rbp)
	movl	%eax, -832(%rbp)        # 4-byte Spill
	je	.LBB7_58
# BB#57:                                # %if.then.358
	xorl	%esi, %esi
	movq	-336(%rbp), %rdi
	callq	gimp_tile_unref
.LBB7_58:                               # %if.end.359
	cmpq	$0, -344(%rbp)
	je	.LBB7_60
# BB#59:                                # %if.then.362
	xorl	%esi, %esi
	movq	-344(%rbp), %rdi
	callq	gimp_tile_unref
.LBB7_60:                               # %if.end.363
	cmpq	$0, -352(%rbp)
	je	.LBB7_62
# BB#61:                                # %if.then.366
	xorl	%esi, %esi
	movq	-352(%rbp), %rdi
	callq	gimp_tile_unref
.LBB7_62:                               # %if.end.367
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-48(%rbp), %rdi
	movl	(%rdi), %edi
	movl	-84(%rbp), %esi
	callq	gimp_drawable_merge_shadow
	movq	-656(%rbp), %rdi
	movl	%eax, -836(%rbp)        # 4-byte Spill
	callq	g_rand_free
.LBB7_63:                               # %return
	addq	$856, %rsp              # imm = 0x358
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	warp_one, .Lfunc_end7-warp_one
	.cfi_endproc

	.align	16, 0x90
	.type	diff_prepare_row,@function
diff_prepare_row:                       # @diff_prepare_row
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rsi
	movl	36(%rsi), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jle	.LBB8_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB8_6
.LBB8_2:                                # %cond.false
	cmpl	$0, -24(%rbp)
	jge	.LBB8_4
# BB#3:                                 # %cond.true.4
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false.5
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB8_5:                                # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB8_6:                                # %cond.end.6
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -32(%rbp)
.LBB8_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB8_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB8_7 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-32(%rbp), %esi
	movq	-8(%rbp), %rax
	subl	16(%rax), %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movl	-28(%rbp), %esi
	subl	$1, %esi
	movq	-8(%rbp), %rax
	imull	16(%rax), %esi
	addl	-32(%rbp), %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	imull	16(%rax), %esi
	addl	-32(%rbp), %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_7
.LBB8_10:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	diff_prepare_row, .Lfunc_end8-diff_prepare_row
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4621256167635550208     # double 9
.LCPI9_2:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	blur16,@function
blur16:                                 # @blur16
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
	subq	$304, %rsp              # imm = 0x130
	leaq	-220(%rbp), %rsi
	leaq	-224(%rbp), %rdx
	leaq	-108(%rbp), %rcx
	leaq	-112(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_13
.LBB9_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movl	-220(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -228(%rbp)
	movl	-224(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -108(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -112(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -116(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -120(%rbp)
	movl	-120(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -124(%rbp)
	movl	-228(%rbp), %eax
	subl	-220(%rbp), %eax
	addl	$2, %eax
	imull	-116(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -160(%rbp)
	movl	-228(%rbp), %edx
	subl	-220(%rbp), %edx
	addl	$2, %edx
	imull	-116(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -176(%rbp)
	movl	-228(%rbp), %edx
	subl	-220(%rbp), %edx
	addl	$2, %edx
	imull	-116(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -192(%rbp)
	movl	-228(%rbp), %edx
	subl	-220(%rbp), %edx
	imull	-116(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	leaq	-56(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	%edx, -248(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-56(%rbp), %rdi
	movq	-160(%rbp), %rax
	movslq	-116(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -168(%rbp)
	movq	-176(%rbp), %rax
	movslq	-116(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movslq	-116(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, -200(%rbp)
	movq	-168(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %ecx
	movl	-228(%rbp), %r8d
	subl	-220(%rbp), %r8d
	callq	diff_prepare_row
	leaq	-56(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %ecx
	addl	$1, %ecx
	movl	-228(%rbp), %r8d
	subl	-220(%rbp), %r8d
	callq	diff_prepare_row
	movl	-224(%rbp), %ecx
	movl	%ecx, -212(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	movl	-212(%rbp), %eax
	cmpl	-232(%rbp), %eax
	jge	.LBB9_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	-228(%rbp), %ecx
	subl	-220(%rbp), %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	diff_prepare_row
	movq	-144(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movl	$0, -216(%rbp)
.LBB9_5:                                # %for.cond.39
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-216(%rbp), %eax
	movl	-228(%rbp), %ecx
	subl	-220(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_8
# BB#6:                                 # %for.body.43
                                        #   in Loop: Header=BB9_5 Depth=2
	movl	$256, %eax              # imm = 0x100
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_2, %xmm1         # xmm1 = mem[0],zero
	movl	-216(%rbp), %ecx
	imull	-116(%rbp), %ecx
	movl	%ecx, -128(%rbp)
	movl	-128(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -132(%rbp)
	movl	-128(%rbp), %ecx
	subl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movaps	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	movl	-132(%rbp), %ecx
	subl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm3
	movslq	-128(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movaps	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm3
	movslq	-132(%rbp), %rdx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm3
	movl	-128(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movaps	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm3
	movl	-132(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-168(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm3
	movl	-128(%rbp), %ecx
	subl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movaps	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm3
	movl	-132(%rbp), %ecx
	subl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm3
	movslq	-128(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movaps	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm3
	movslq	-132(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm3
	movl	-128(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movaps	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm3
	movl	-132(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm3
	movl	-128(%rbp), %ecx
	subl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-200(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movaps	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm3
	movl	-132(%rbp), %ecx
	subl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-200(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm3
	movslq	-128(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	movaps	%xmm1, %xmm4
	mulsd	%xmm2, %xmm4
	addsd	%xmm4, %xmm3
	movslq	-132(%rbp), %rdx
	movq	-200(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm3
	movl	-128(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-200(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm3
	movl	-132(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-200(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	cvtsi2sdl	%ecx, %xmm1
	addsd	%xmm1, %xmm3
	movsd	%xmm3, -240(%rbp)
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -240(%rbp)
	cvttsd2si	-240(%rbp), %ecx
	sarl	$8, %ecx
	movb	%cl, %dil
	movq	-152(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -152(%rbp)
	movb	%dil, (%rdx)
	cvttsd2si	-240(%rbp), %ecx
	movl	%eax, -256(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-256(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%dl, %dil
	movq	-152(%rbp), %rsi
	movq	%rsi, %r8
	addq	$1, %r8
	movq	%r8, -152(%rbp)
	movb	%dil, (%rsi)
	movl	-124(%rbp), %edx
	movq	-152(%rbp), %rsi
	movslq	%edx, %r8
	addq	%r8, %rsi
	movq	%rsi, -152(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=2
	movl	-216(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB9_5
.LBB9_8:                                # %for.end
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-104(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-212(%rbp), %ecx
	movl	-228(%rbp), %eax
	subl	-220(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$8, %eax
	movq	-168(%rbp), %rsi
	movq	%rsi, -208(%rbp)
	movq	-184(%rbp), %rsi
	movq	%rsi, -168(%rbp)
	movq	-200(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	movl	-212(%rbp), %ecx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-260(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB9_10
# BB#9:                                 # %if.then.165
                                        #   in Loop: Header=BB9_3 Depth=1
	cvtsi2sdl	-212(%rbp), %xmm0
	movl	-232(%rbp), %eax
	subl	-224(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB9_10:                               # %if.end.171
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_11
.LBB9_11:                               # %for.inc.172
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB9_3
.LBB9_12:                               # %for.end.174
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-220(%rbp), %esi
	movl	-224(%rbp), %edx
	movl	-228(%rbp), %r8d
	subl	-220(%rbp), %r8d
	movl	-232(%rbp), %r9d
	subl	-224(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-160(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
.LBB9_13:                               # %return
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end9:
	.size	blur16, .Lfunc_end9-blur16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4613937818241073152     # double 3
.LCPI10_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	warp_map_mag_give_value,@function
warp_map_mag_give_value:                # @warp_map_mag_give_value
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$3, -16(%rbp)
	jl	.LBB10_2
# BB#1:                                 # %if.then
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	addl	%edx, %ecx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB10_3:                               # %if.end
	cmpl	$0, -12(%rbp)
	je	.LBB10_5
# BB#4:                                 # %if.then.8
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movl	-16(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -32(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
.LBB10_5:                               # %if.end.12
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end10:
	.size	warp_map_mag_give_value, .Lfunc_end10-warp_map_mag_give_value
	.cfi_endproc

	.align	16, 0x90
	.type	warp_pixel,@function
warp_pixel:                             # @warp_pixel
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
.Ltmp48:
	.cfi_offset %rbx, -48
.Ltmp49:
	.cfi_offset %r12, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
	movq	64(%rbp), %rax
	movq	56(%rbp), %r10
	movq	48(%rbp), %r11
	movl	40(%rbp), %ebx
	movl	32(%rbp), %r14d
	movl	24(%rbp), %r15d
	movl	16(%rbp), %r12d
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	%r12d, -68(%rbp)
	movl	%r15d, -72(%rbp)
	movl	%r14d, -76(%rbp)
	movl	%ebx, -80(%rbp)
	movq	%r11, -88(%rbp)
	movq	%r10, -96(%rbp)
	movq	%rax, -104(%rbp)
	cmpl	$0, dvals+32
	jne	.LBB11_8
# BB#1:                                 # %if.then
	cmpl	$0, -76(%rbp)
	jge	.LBB11_3
# BB#2:                                 # %if.then.2
	xorl	%eax, %eax
	movl	-52(%rbp), %ecx
	subl	-76(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	subl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movl	-52(%rbp), %eax
	movl	-76(%rbp), %ecx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-120(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -76(%rbp)
.LBB11_4:                               # %if.end
	cmpl	$0, -80(%rbp)
	jge	.LBB11_6
# BB#5:                                 # %if.then.6
	xorl	%eax, %eax
	movl	-56(%rbp), %ecx
	subl	-80(%rbp), %eax
	cltd
	idivl	-56(%rbp)
	subl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.10
	movl	-56(%rbp), %eax
	movl	-80(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-124(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -80(%rbp)
.LBB11_7:                               # %if.end.12
	jmp	.LBB11_21
.LBB11_8:                               # %if.else.13
	cmpl	$1, dvals+32
	jne	.LBB11_20
# BB#9:                                 # %if.then.15
	cmpl	$0, -76(%rbp)
	jge	.LBB11_11
# BB#10:                                # %if.then.17
	movl	$0, -76(%rbp)
	jmp	.LBB11_14
.LBB11_11:                              # %if.else.18
	movl	-76(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB11_13
# BB#12:                                # %if.then.21
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB11_13:                              # %if.end.23
	jmp	.LBB11_14
.LBB11_14:                              # %if.end.24
	cmpl	$0, -80(%rbp)
	jge	.LBB11_16
# BB#15:                                # %if.then.26
	movl	$0, -80(%rbp)
	jmp	.LBB11_19
.LBB11_16:                              # %if.else.27
	movl	-80(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB11_18
# BB#17:                                # %if.then.30
	movl	-56(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
.LBB11_18:                              # %if.end.32
	jmp	.LBB11_19
.LBB11_19:                              # %if.end.33
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.34
	jmp	.LBB11_21
.LBB11_21:                              # %if.end.35
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.LBB11_31
# BB#22:                                # %land.lhs.true
	movl	-80(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.LBB11_31
# BB#23:                                # %land.lhs.true.38
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB11_31
# BB#24:                                # %land.lhs.true.40
	movl	-80(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB11_31
# BB#25:                                # %if.then.42
	movl	-76(%rbp), %eax
	xorl	%edx, %edx
	divl	tile_width
	movq	-96(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB11_27
# BB#26:                                # %lor.lhs.false
	movl	-80(%rbp), %eax
	xorl	%edx, %edx
	divl	tile_height
	movq	-88(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	.LBB11_30
.LBB11_27:                              # %if.then.46
	movl	-76(%rbp), %eax
	xorl	%edx, %edx
	divl	tile_width
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-80(%rbp), %eax
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	tile_height
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB11_29
# BB#28:                                # %if.then.49
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_tile_unref
.LBB11_29:                              # %if.end.50
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	callq	gimp_drawable_get_tile
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_tile_ref
.LBB11_30:                              # %if.end.51
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-48(%rbp), %rcx
	movl	(%rcx), %esi
	movl	-80(%rbp), %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%edi, %eax
	xorl	%edi, %edi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%edi, %edx
	divl	tile_height
	imull	%edx, %esi
	movl	-76(%rbp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	tile_width
	addl	%edx, %esi
	movl	-140(%rbp), %edx        # 4-byte Reload
	imull	%esi, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-136(%rbp), %r8         # 8-byte Reload
	addq	%rcx, %r8
	movq	%r8, -112(%rbp)
	jmp	.LBB11_35
.LBB11_31:                              # %if.else.56
	cmpl	$2, dvals+32
	jne	.LBB11_33
# BB#32:                                # %if.then.58
	movabsq	$warp_pixel.empty_pixel, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB11_34
.LBB11_33:                              # %if.else.59
	movabsq	$color_pixel, %rax
	movq	%rax, -112(%rbp)
.LBB11_34:                              # %if.end.60
	jmp	.LBB11_35
.LBB11_35:                              # %if.end.61
	movl	$0, -116(%rbp)
.LBB11_36:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jae	.LBB11_39
# BB#37:                                # %for.body
                                        #   in Loop: Header=BB11_36 Depth=1
	movslq	-116(%rbp), %rax
	movq	-112(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-116(%rbp), %rax
	movq	-104(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#38:                                # %for.inc
                                        #   in Loop: Header=BB11_36 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB11_36
.LBB11_39:                              # %for.end
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	warp_pixel, .Lfunc_end11-warp_pixel
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
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.31
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.32
	.quad	.L.str.33
	.size	query.args, 408

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
	.asciz	"Input image (unused)"
	.size	.L.str.3, 21

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
	.asciz	"amount"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Pixel displacement multiplier"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"warp-map"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Displacement control map"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"iter"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Iteration count (last required argument)"
	.size	.L.str.11, 41

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"dither"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Random dither amount (first optional argument)"
	.size	.L.str.13, 47

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"angle"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Angle of gradient vector rotation"
	.size	.L.str.15, 34

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"wrap-type"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Edge behavior: { WRAP (0), SMEAR (1), BLACK (2), COLOR (3) }"
	.size	.L.str.17, 61

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"mag-map"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Magnitude control map"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"mag-use"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Use magnitude map: { FALSE (0), TRUE (1) }"
	.size	.L.str.21, 43

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"substeps"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Substeps between image updates"
	.size	.L.str.23, 31

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"grad-map"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Gradient control map"
	.size	.L.str.25, 21

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"grad-scale"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Scaling factor for gradient map (0=don't use)"
	.size	.L.str.27, 46

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"vector-map"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Fixed vector control map"
	.size	.L.str.29, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"vector-scale"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Scaling factor for fixed vector map (0=don't use)"
	.size	.L.str.31, 50

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"vector-angle"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Angle for fixed vector map"
	.size	.L.str.33, 27

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"plug-in-warp"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Twist or smear image in many different ways"
	.size	.L.str.35, 44

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Smears an image along vector paths calculated as the gradient of a separate control matrix. The effect can look like brushstrokes of acrylic or watercolor paint, in some cases."
	.size	.L.str.36, 177

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"John P. Beale"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"1997"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Warp..."
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.41, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	run_mode,@object        # @run_mode
	.local	run_mode
	.comm	run_mode,4,4
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.42, 20

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"UTF-8"
	.size	.L.str.43, 6

	.type	tile_width,@object      # @tile_width
	.local	tile_width
	.comm	tile_width,4,4
	.type	tile_height,@object     # @tile_height
	.local	tile_height
	.comm	tile_height,4,4
	.type	color_pixel,@object     # @color_pixel
	.data
color_pixel:
	.ascii	"\000\000\000\377"
	.size	color_pixel, 4

	.type	dvals,@object           # @dvals
	.align	8
dvals:
	.quad	4621819117588971520     # double 10
	.long	4294967295              # 0xffffffff
	.long	5                       # 0x5
	.quad	0                       # double 0
	.quad	4636033603912859648     # double 90
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # double 0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # double 0
	.quad	0                       # double 0
	.size	dvals, 88

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"warp"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Warp"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-warp"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gtk-cancel"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gtk-ok"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Basic Options"
	.size	.L.str.49, 14

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Step size:"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"value-changed"
	.size	.L.str.51, 14

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Iterations:"
	.size	.L.str.52, 12

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Displacement map:"
	.size	.L.str.53, 18

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"On edges:"
	.size	.L.str.54, 10

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Wrap"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-item-data"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"toggled"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Smear"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Black"
	.size	.L.str.59, 6

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Foreground color"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Advanced Options"
	.size	.L.str.61, 17

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Dither size:"
	.size	.L.str.62, 13

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Rotation angle:"
	.size	.L.str.63, 16

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Substeps:"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Magnitude map:"
	.size	.L.str.65, 15

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Use magnitude map"
	.size	.L.str.66, 18

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"More Advanced Options"
	.size	.L.str.67, 22

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Gradient scale:"
	.size	.L.str.68, 16

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Gradient map selection menu"
	.size	.L.str.69, 28

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Vector mag:"
	.size	.L.str.70, 12

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Angle:"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Fixed-direction-vector map selection menu"
	.size	.L.str.72, 42

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Finding XY gradient"
	.size	.L.str.73, 20

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Flow step %d"
	.size	.L.str.74, 13

	.type	progress,@object        # @progress
	.local	progress
	.comm	progress,4,4
	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Warp_X_Vectors"
	.size	.L.str.75, 15

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Warp_Y_Vectors"
	.size	.L.str.76, 15

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Smoothing X gradient"
	.size	.L.str.77, 21

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Smoothing Y gradient"
	.size	.L.str.78, 21

	.type	warp_pixel.empty_pixel,@object # @warp_pixel.empty_pixel
	.local	warp_pixel.empty_pixel
	.comm	warp_pixel.empty_pixel,4,1

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
