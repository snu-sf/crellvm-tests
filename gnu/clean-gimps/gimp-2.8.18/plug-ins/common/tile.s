	.text
	.file	"tile.bc"
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
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.21, %r8
	movl	$1, %r10d
	movl	$6, %r11d
	movl	$2, %ebx
	movabsq	$query.args, %r14
	movabsq	$query.return_vals, %r15
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$2, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.22, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -64(%rbp)         # 4-byte Spill
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$-1, -52(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.23, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$3, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	$13, run.values+40(%rip)
	movl	$14, run.values+80(%rip)
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_26
.LBB1_26:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_27
.LBB1_27:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_14
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.15, %rdi
	movabsq	$tvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-24(%rbp), %rsi
	movl	48(%rsi), %edi
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %esi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	tile_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_25
.LBB1_5:                                # %if.end
	jmp	.LBB1_15
.LBB1_6:                                # %sw.bb.10
	cmpl	$6, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.11
	movl	$1, -48(%rbp)
	jmp	.LBB1_12
.LBB1_8:                                # %if.else
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movl	128(%rdx), %esi
	movl	%esi, tvals
	movq	-24(%rbp), %rdx
	movl	168(%rdx), %esi
	movl	%esi, tvals+4
	movq	-24(%rbp), %rdx
	cmpl	$0, 208(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, tvals+12
	cmpl	$0, tvals
	jl	.LBB1_10
# BB#9:                                 # %lor.lhs.false
	cmpl	$0, tvals+4
	jge	.LBB1_11
.LBB1_10:                               # %if.then.24
	movl	$1, -48(%rbp)
.LBB1_11:                               # %if.end.25
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.26
	jmp	.LBB1_15
.LBB1_13:                               # %sw.bb.27
	movabsq	$.L.str.15, %rdi
	movabsq	$tvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %sw.default
	jmp	.LBB1_15
.LBB1_15:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_24
# BB#16:                                # %if.then.30
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-52(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	48(%rdi), %edi
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	tile
	movl	%eax, run.values+48
	movl	-52(%rbp), %eax
	movl	%eax, run.values+88
	cmpl	$0, -44(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.41
	movabsq	$.L.str.15, %rdi
	movabsq	$tvals, %rax
	movl	$16, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.43
	cmpl	$1, -44(%rbp)
	je	.LBB1_23
# BB#19:                                # %if.then.45
	cmpl	$0, tvals+12
	je	.LBB1_21
# BB#20:                                # %if.then.47
	movl	run.values+48, %edi
	callq	gimp_display_new
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.49
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_22:                               # %if.end.51
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.52
	jmp	.LBB1_24
.LBB1_24:                               # %if.end.53
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_25:                               # %return
	addq	$128, %rsp
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
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	tile_dialog,@function
tile_dialog:                            # @tile_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$416, %rsp              # imm = 0x1A0
.Ltmp16:
	.cfi_offset %rbx, -32
.Ltmp17:
	.cfi_offset %r14, -24
	movabsq	$.L.str.26, %rax
	xorl	%ecx, %ecx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movl	-24(%rbp), %edi
	callq	gimp_drawable_width
	movl	%eax, -76(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_height
	movl	%eax, -80(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_get_unit
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movl	%eax, -100(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_get_resolution
	movabsq	$.L.str.27, %rdi
	movl	-76(%rbp), %ecx
	movl	%ecx, tvals
	movl	-80(%rbp), %ecx
	movl	%ecx, tvals+4
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.28, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.29, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.30, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rdi
	movl	-100(%rbp), %ecx
	movl	tvals+8, %edx
	movl	%edx, -184(%rbp)        # 4-byte Spill
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.34, %rdi
	cvtsi2sdl	-76(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm5
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movsd	%xmm5, -208(%rbp)       # 8-byte Spill
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.32, %rsi
	movl	$1, %ecx
	movl	$8, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm5, %xmm5
	cvtsi2sdl	-80(%rbp), %xmm6
	movsd	-96(%rbp), %xmm7        # xmm7 = mem[0],zero
	cvtsi2sdl	-80(%rbp), %xmm2
	movl	-188(%rbp), %edi        # 4-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r9d        # 4-byte Reload
	movl	-184(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$1, 8(%rsp)
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movsd	-216(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-224(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movsd	-240(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm2, -256(%rbp)       # 8-byte Spill
	movaps	%xmm8, %xmm2
	movsd	-248(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movaps	%xmm5, %xmm4
	movsd	-208(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm5, -264(%rbp)       # 8-byte Spill
	movaps	%xmm9, %xmm5
	movq	%rax, 24(%rsp)
	movsd	%xmm8, 32(%rsp)
	movsd	-248(%rbp), %xmm10      # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	%xmm10, 40(%rsp)
	movsd	-264(%rbp), %xmm11      # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movsd	%xmm11, 48(%rsp)
	movsd	-256(%rbp), %xmm12      # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	%xmm12, 56(%rsp)
	callq	gimp_coordinates_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -64(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	tvals+12, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$tvals, %rdi
	addq	$12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %esi
	movl	%esi, tvals
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %esi
	movl	%esi, tvals+4
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	movl	%eax, tvals+8
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-104(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tile_dialog, .Lfunc_end3-tile_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
.LCPI4_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	tile,@function
tile:                                   # @tile
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
	subq	$336, %rsp              # imm = 0x150
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -144(%rbp)
	cmpl	$1, tvals
	jl	.LBB4_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, tvals+4
	jge	.LBB4_3
.LBB4_2:                                # %if.then
	movq	-24(%rbp), %rax
	movl	$-1, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB4_42
.LBB4_3:                                # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_drawable_width
	movl	%eax, -148(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_height
	movl	%eax, -152(%rbp)
	cmpl	$0, tvals+12
	je	.LBB4_11
# BB#4:                                 # %if.then.3
	movl	-12(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, %edi
	subl	$2, %eax
	movl	%edi, -208(%rbp)        # 4-byte Spill
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jb	.LBB4_5
	jmp	.LBB4_43
.LBB4_43:                               # %if.then.3
	movl	-208(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jb	.LBB4_6
	jmp	.LBB4_44
.LBB4_44:                               # %if.then.3
	movl	-208(%rbp), %eax        # 4-byte Reload
	addl	$-4, %eax
	subl	$2, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jb	.LBB4_7
	jmp	.LBB4_8
.LBB4_5:                                # %sw.bb
	movl	$0, -140(%rbp)
	jmp	.LBB4_8
.LBB4_6:                                # %sw.bb.5
	movl	$1, -140(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %sw.bb.6
	movl	$2, -140(%rbp)
.LBB4_8:                                # %sw.epilog
	movl	tvals, %edi
	movl	tvals+4, %esi
	movl	-140(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %edi
	callq	gimp_image_undo_disable
	movabsq	$.L.str.38, %rdi
	movl	-144(%rbp), %edx
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	%edx, -228(%rbp)        # 4-byte Spill
	callq	gettext
	movl	tvals, %edx
	movl	tvals+4, %ecx
	movl	-12(%rbp), %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movl	%edx, -244(%rbp)        # 4-byte Spill
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-228(%rbp), %edi        # 4-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movl	-244(%rbp), %edx        # 4-byte Reload
	movl	-248(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_layer_new
	movq	-24(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-24(%rbp), %rsi
	cmpl	$-1, (%rsi)
	jne	.LBB4_10
# BB#9:                                 # %if.then.13
	movl	$-1, -4(%rbp)
	jmp	.LBB4_42
.LBB4_10:                               # %if.end.14
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	-144(%rbp), %edi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_image_insert_layer
	movq	-24(%rbp), %r8
	movl	(%r8), %edi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -136(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -128(%rbp)
	jmp	.LBB4_14
.LBB4_11:                               # %if.else
	movl	-8(%rbp), %edi
	callq	gimp_image_undo_group_start
	xorl	%edi, %edi
	movl	-8(%rbp), %ecx
	movl	tvals, %esi
	movl	tvals+4, %edx
	movl	%edi, -256(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movl	-256(%rbp), %ecx        # 4-byte Reload
	movl	-256(%rbp), %r8d        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_image_resize
	movl	-12(%rbp), %edi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	je	.LBB4_13
# BB#12:                                # %if.then.22
	xorl	%eax, %eax
	movl	-12(%rbp), %edi
	movl	tvals, %esi
	movl	tvals+4, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_layer_resize
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB4_13:                               # %if.end.24
	movl	-12(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB4_14:                               # %if.end.26
	movl	$0, -164(%rbp)
	movl	tvals, %eax
	imull	tvals+4, %eax
	movl	%eax, -168(%rbp)
	movl	$0, -156(%rbp)
.LBB4_15:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_19 Depth 2
                                        #       Child Loop BB4_23 Depth 3
                                        #         Child Loop BB4_25 Depth 4
	movl	-156(%rbp), %eax
	cmpl	tvals+4, %eax
	jge	.LBB4_36
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	-152(%rbp), %eax
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	addl	-156(%rbp), %eax
	cmpl	tvals+4, %eax
	jle	.LBB4_18
# BB#17:                                # %if.then.29
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	tvals+4, %eax
	subl	-156(%rbp), %eax
	movl	%eax, -180(%rbp)
.LBB4_18:                               # %if.end.30
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	$0, -160(%rbp)
.LBB4_19:                               # %for.cond.31
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_23 Depth 3
                                        #         Child Loop BB4_25 Depth 4
	movl	-160(%rbp), %eax
	cmpl	tvals, %eax
	jge	.LBB4_34
# BB#20:                                # %for.body.33
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	-148(%rbp), %eax
	movl	%eax, -184(%rbp)
	movl	-184(%rbp), %eax
	addl	-160(%rbp), %eax
	cmpl	tvals, %eax
	jle	.LBB4_22
# BB#21:                                # %if.then.36
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	tvals, %eax
	subl	-160(%rbp), %eax
	movl	%eax, -184(%rbp)
.LBB4_22:                               # %if.end.38
                                        #   in Loop: Header=BB4_19 Depth=2
	leaq	-72(%rbp), %rdi
	xorl	%eax, %eax
	movq	-128(%rbp), %rsi
	movl	-184(%rbp), %r8d
	movl	-180(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	movl	$1, %eax
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movl	-160(%rbp), %edx
	movl	-156(%rbp), %r8d
	movl	-184(%rbp), %r9d
	movl	-180(%rbp), %r10d
	movl	%ecx, -272(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -176(%rbp)
	movl	$0, -188(%rbp)
.LBB4_23:                               # %for.cond.40
                                        #   Parent Loop BB4_15 Depth=1
                                        #     Parent Loop BB4_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_25 Depth 4
	cmpq	$0, -176(%rbp)
	je	.LBB4_32
# BB#24:                                # %for.body.42
                                        #   in Loop: Header=BB4_23 Depth=3
	movl	$0, -192(%rbp)
.LBB4_25:                               # %for.cond.43
                                        #   Parent Loop BB4_15 Depth=1
                                        #     Parent Loop BB4_19 Depth=2
                                        #       Parent Loop BB4_23 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-192(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB4_28
# BB#26:                                # %for.body.45
                                        #   in Loop: Header=BB4_25 Depth=4
	movq	-120(%rbp), %rax
	movl	-192(%rbp), %ecx
	imull	-100(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-72(%rbp), %rdx
	movl	-192(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-288(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB4_25 Depth=4
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB4_25
.LBB4_28:                               # %for.end
                                        #   in Loop: Header=BB4_23 Depth=3
	movl	$16, %eax
	movl	-40(%rbp), %ecx
	imull	-36(%rbp), %ecx
	addl	-164(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movl	-188(%rbp), %ecx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-292(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_30
# BB#29:                                # %if.then.59
                                        #   in Loop: Header=BB4_23 Depth=3
	cvtsi2sdl	-164(%rbp), %xmm0
	cvtsi2sdl	-168(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB4_30:                               # %if.end.63
                                        #   in Loop: Header=BB4_23 Depth=3
	jmp	.LBB4_31
.LBB4_31:                               # %for.inc.64
                                        #   in Loop: Header=BB4_23 Depth=3
	movq	-176(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -176(%rbp)
	movl	-188(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -188(%rbp)
	jmp	.LBB4_23
.LBB4_32:                               # %for.end.67
                                        #   in Loop: Header=BB4_19 Depth=2
	jmp	.LBB4_33
.LBB4_33:                               # %for.inc.68
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	-148(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB4_19
.LBB4_34:                               # %for.end.70
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_35
.LBB4_35:                               # %for.inc.71
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	-152(%rbp), %eax
	addl	-156(%rbp), %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB4_15
.LBB4_36:                               # %for.end.73
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rdx
	movl	(%rdx), %edi
	movq	-136(%rbp), %rdx
	movl	4(%rdx), %esi
	movq	-136(%rbp), %rdx
	movl	8(%rdx), %r8d
	movl	%esi, -300(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-300(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-128(%rbp), %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
	cmpl	$0, tvals+12
	je	.LBB4_40
# BB#37:                                # %if.then.80
	movq	-136(%rbp), %rdi
	callq	gimp_drawable_detach
	cmpl	$2, -140(%rbp)
	jne	.LBB4_39
# BB#38:                                # %if.then.83
	leaq	-204(%rbp), %rsi
	movl	-8(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -200(%rbp)
	movl	-144(%rbp), %edi
	movq	-200(%rbp), %rsi
	movl	-204(%rbp), %edx
	callq	gimp_image_set_colormap
	movq	-200(%rbp), %rdi
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	g_free
.LBB4_39:                               # %if.end.86
	movl	-144(%rbp), %edi
	callq	gimp_image_undo_enable
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB4_41
.LBB4_40:                               # %if.else.88
	movl	-8(%rbp), %edi
	callq	gimp_image_undo_group_end
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB4_41:                               # %if.end.90
	movl	-144(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tile, .Lfunc_end4-tile
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
	.long	0                       # 0x0
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
	.size	query.args, 144

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
	.asciz	"new-width"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"New (tiled) image width"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"new-height"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"New (tiled) image height"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"new-image"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Create a new image?"
	.size	.L.str.11, 20

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.12
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.size	query.return_vals, 48

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Output image (-1 if new-image == FALSE)"
	.size	.L.str.12, 40

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"new-layer"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Output layer (-1 if new-image == FALSE)"
	.size	.L.str.14, 40

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"plug-in-tile"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Create an array of copies of the image"
	.size	.L.str.16, 39

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"This function creates a new image with a single layer sized to the specified 'new_width' and 'new_height' parameters.  The specified drawable is tiled into this layer.  The new layer will have the same type as the specified drawable and the new image will have a corresponding base type."
	.size	.L.str.17, 288

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.18, 31

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1996-1997"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Tile..."
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.22, 20

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,120,16
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"UTF-8"
	.size	.L.str.24, 6

	.type	tvals,@object           # @tvals
	.data
	.align	4
tvals:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	tvals, 16

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"Tiling"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tile"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Tile"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-tile"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-cancel"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-ok"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Tile to New Size"
	.size	.L.str.31, 17

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%a"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Width:"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Height:"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"chainbutton"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"C_reate new image"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"toggled"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Background"
	.size	.L.str.38, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
