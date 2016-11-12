	.text
	.file	"xsettings.bc"
	.globl	xft_settings_event
	.align	16, 0x90
	.type	xft_settings_event,@function
xft_settings_event:                     # @xft_settings_event
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
	movq	%rsi, -16(%rbp)
	movb	$0, -17(%rbp)
	movb	$0, -18(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, %ecx
	subl	$17, %ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB0_1
	jmp	.LBB0_21
.LBB0_21:                               # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$28, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB0_9
	jmp	.LBB0_22
.LBB0_22:                               # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	subl	$33, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB0_4
	jmp	.LBB0_14
.LBB0_1:                                # %sw.bb
	movq	-8(%rbp), %rax
	movq	960(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movb	$1, -17(%rbp)
.LBB0_3:                                # %if.end
	jmp	.LBB0_14
.LBB0_4:                                # %sw.bb.1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	952(%rcx), %rax
	jne	.LBB0_8
# BB#5:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	936(%rcx), %rax
	jne	.LBB0_8
# BB#6:                                 # %land.lhs.true.5
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jne	.LBB0_8
# BB#7:                                 # %if.then.9
	movb	$1, -17(%rbp)
.LBB0_8:                                # %if.end.10
	jmp	.LBB0_14
.LBB0_9:                                # %sw.bb.11
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	960(%rcx), %rax
	jne	.LBB0_13
# BB#10:                                # %land.lhs.true.15
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB0_13
# BB#11:                                # %land.lhs.true.18
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	944(%rcx), %rax
	jne	.LBB0_13
# BB#12:                                # %if.then.21
	movb	$1, -18(%rbp)
.LBB0_13:                               # %if.end.22
	jmp	.LBB0_14
.LBB0_14:                               # %sw.epilog
	testb	$1, -17(%rbp)
	je	.LBB0_18
# BB#15:                                # %if.then.23
	movq	-8(%rbp), %rax
	movq	$0, 960(%rax)
	movq	-8(%rbp), %rdi
	callq	get_prop_window
	movq	-8(%rbp), %rax
	cmpq	$0, 960(%rax)
	je	.LBB0_17
# BB#16:                                # %if.then.27
	movb	$1, -18(%rbp)
.LBB0_17:                               # %if.end.28
	jmp	.LBB0_18
.LBB0_18:                               # %if.end.29
	testb	$1, -18(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.31
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	read_and_apply_settings
.LBB0_20:                               # %if.end.32
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xft_settings_event, .Lfunc_end0-xft_settings_event
	.cfi_endproc

	.align	16, 0x90
	.type	get_prop_window,@function
get_prop_window:                        # @get_prop_window
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XGrabServer
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	936(%rcx), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	XGetSelectionOwner
	movq	-8(%rbp), %rcx
	movq	%rax, 960(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 960(%rax)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$4325376, %eax          # imm = 0x420000
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	960(%rcx), %rsi
	callq	XSelectInput
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	XUngrabServer
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	get_prop_window, .Lfunc_end1-get_prop_window
	.cfi_endproc

	.align	16, 0x90
	.type	read_and_apply_settings,@function
read_and_apply_settings:                # @read_and_apply_settings
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
	subq	$80, %rsp
	movb	%sil, %al
	leaq	-72(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	read_settings
	testb	$1, %al
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_12
.LBB2_2:                                # %if.end
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	apply_xft_settings
	movl	-24(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB2_7
# BB#3:                                 # %if.then.1
	testb	$1, -9(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.3
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	store_tool_bar_style_changed
	jmp	.LBB2_6
.LBB2_5:                                # %if.else
	movq	-32(%rbp), %rdi
	callq	map_tool_bar_style
	movq	%rax, current_tool_bar_style
.LBB2_6:                                # %if.end.6
	movq	-32(%rbp), %rdi
	callq	xfree
.LBB2_7:                                # %if.end.8
	movl	-24(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB2_12
# BB#8:                                 # %if.then.12
	testb	$1, -9(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.14
	movq	-40(%rbp), %rdi
	callq	store_font_name_changed
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.15
	movabsq	$current_font, %rdi
	movq	-40(%rbp), %rsi
	callq	dupstring
.LBB2_11:                               # %if.end.17
	movq	-40(%rbp), %rdi
	callq	xfree
.LBB2_12:                               # %if.end.19
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	read_and_apply_settings, .Lfunc_end2-read_and_apply_settings
	.cfi_endproc

	.globl	xsettings_initialize
	.align	16, 0x90
	.type	xsettings_initialize,@function
xsettings_initialize:                   # @xsettings_initialize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, first_dpyinfo
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, first_dpyinfo
.LBB3_2:                                # %if.end
	callq	init_gconf
	movq	-8(%rbp), %rdi
	callq	init_xsettings
	callq	init_gsettings
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xsettings_initialize, .Lfunc_end3-xsettings_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	init_gconf,@function
init_gconf:                             # @init_gconf
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
	popq	%rbp
	retq
.Lfunc_end4:
	.size	init_gconf, .Lfunc_end4-init_gconf
	.cfi_endproc

	.align	16, 0x90
	.type	init_xsettings,@function
init_xsettings:                         # @init_xsettings
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	callq	block_input
	movl	$131072, %eax           # imm = 0x20000
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rsi
	callq	XSelectInput
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	get_prop_window
	movq	-8(%rbp), %rcx
	cmpq	$0, 960(%rcx)
	je	.LBB5_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	read_and_apply_settings
.LBB5_2:                                # %if.end
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	init_xsettings, .Lfunc_end5-init_xsettings
	.cfi_endproc

	.align	16, 0x90
	.type	init_gsettings,@function
init_gsettings:                         # @init_gsettings
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
	subq	$96, %rsp
	movb	$0, -9(%rbp)
	callq	g_settings_schema_source_get_default
	movabsq	$.L.str.34, %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	g_settings_schema_source_lookup
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	setne	%cl
	andb	$1, %cl
	movb	%cl, -9(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_settings_schema_unref
.LBB6_2:                                # %if.end
	testb	$1, -9(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	jmp	.LBB6_18
.LBB6_4:                                # %if.end.4
	movabsq	$.L.str.34, %rdi
	callq	g_settings_new
	movq	%rax, gsettings_client
	cmpq	$0, gsettings_client
	jne	.LBB6_6
# BB#5:                                 # %if.then.7
	jmp	.LBB6_18
.LBB6_6:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gsettings_client, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movl	$80, %edx
	movl	%edx, %esi
	movq	gsettings_client, %rcx
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movabsq	$something_changed_gsettingsCB, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movq	gsettings_client, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_settings_get_value
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB6_10
# BB#7:                                 # %if.then.15
	movq	-8(%rbp), %rdi
	callq	g_variant_ref_sink
	movabsq	$.L.str.37, %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_variant_is_of_type
	cmpl	$0, %eax
	je	.LBB6_9
# BB#8:                                 # %if.then.19
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_variant_get_string
	movq	%rax, %rdi
	callq	map_tool_bar_style
	movq	%rax, current_tool_bar_style
.LBB6_9:                                # %if.end.22
	movq	-8(%rbp), %rdi
	callq	g_variant_unref
.LBB6_10:                               # %if.end.23
	movabsq	$.L.str.38, %rsi
	movq	gsettings_client, %rdi
	callq	g_settings_get_value
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB6_14
# BB#11:                                # %if.then.26
	movq	-8(%rbp), %rdi
	callq	g_variant_ref_sink
	movabsq	$.L.str.37, %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_variant_is_of_type
	cmpl	$0, %eax
	je	.LBB6_13
# BB#12:                                # %if.then.30
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_variant_get_string
	movabsq	$current_mono_font, %rdi
	movq	%rax, %rsi
	callq	dupstring
.LBB6_13:                               # %if.end.32
	movq	-8(%rbp), %rdi
	callq	g_variant_unref
.LBB6_14:                               # %if.end.33
	movabsq	$.L.str.39, %rsi
	movq	gsettings_client, %rdi
	callq	g_settings_get_value
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB6_18
# BB#15:                                # %if.then.36
	movq	-8(%rbp), %rdi
	callq	g_variant_ref_sink
	movabsq	$.L.str.37, %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_variant_is_of_type
	cmpl	$0, %eax
	je	.LBB6_17
# BB#16:                                # %if.then.40
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_variant_get_string
	movabsq	$current_font, %rdi
	movq	%rax, %rsi
	callq	dupstring
.LBB6_17:                               # %if.end.42
	movq	-8(%rbp), %rdi
	callq	g_variant_unref
.LBB6_18:                               # %if.end.43
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	init_gsettings, .Lfunc_end6-init_gsettings
	.cfi_endproc

	.globl	xsettings_get_system_font
	.align	16, 0x90
	.type	xsettings_get_system_font,@function
xsettings_get_system_font:              # @xsettings_get_system_font
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
	movq	current_mono_font, %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xsettings_get_system_font, .Lfunc_end7-xsettings_get_system_font
	.cfi_endproc

	.globl	Ffont_get_system_normal_font
	.align	16, 0x90
	.type	Ffont_get_system_normal_font,@function
Ffont_get_system_normal_font:           # @Ffont_get_system_normal_font
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
	subq	$16, %rsp
	cmpq	$0, current_font
	je	.LBB8_2
# BB#1:                                 # %cond.true
	movq	current_font, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB8_3:                                # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Ffont_get_system_normal_font, .Lfunc_end8-Ffont_get_system_normal_font
	.cfi_endproc

	.globl	Ffont_get_system_font
	.align	16, 0x90
	.type	Ffont_get_system_font,@function
Ffont_get_system_font:                  # @Ffont_get_system_font
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
	subq	$16, %rsp
	cmpq	$0, current_mono_font
	je	.LBB9_2
# BB#1:                                 # %cond.true
	movq	current_mono_font, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB9_3:                                # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Ffont_get_system_font, .Lfunc_end9-Ffont_get_system_font
	.cfi_endproc

	.globl	Ftool_bar_get_system_style
	.align	16, 0x90
	.type	Ftool_bar_get_system_style,@function
Ftool_bar_get_system_style:             # @Ftool_bar_get_system_style
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
	movl	$537, %edi              # imm = 0x219
	movq	globals+2424, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_5
# BB#1:                                 # %lor.lhs.false
	movl	$910, %edi              # imm = 0x38E
	movq	globals+2424, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_5
# BB#2:                                 # %lor.lhs.false.3
	movl	$211, %edi
	movq	globals+2424, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_5
# BB#3:                                 # %lor.lhs.false.6
	movl	$212, %edi
	movq	globals+2424, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_5
# BB#4:                                 # %lor.lhs.false.9
	movl	$911, %edi              # imm = 0x38F
	movq	globals+2424, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_6
.LBB10_5:                               # %if.then
	movq	globals+2424, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_9
.LBB10_6:                               # %if.end
	xorl	%edi, %edi
	movq	current_tool_bar_style, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_8
# BB#7:                                 # %if.then.14
	movq	current_tool_bar_style, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_9
.LBB10_8:                               # %if.end.15
	movl	$537, %edi              # imm = 0x219
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB10_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Ftool_bar_get_system_style, .Lfunc_end10-Ftool_bar_get_system_style
	.cfi_endproc

	.globl	syms_of_xsettings
	.align	16, 0x90
	.type	syms_of_xsettings,@function
syms_of_xsettings:                      # @syms_of_xsettings
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
	subq	$48, %rsp
	movabsq	$Sfont_get_system_font, %rdi
	movq	$0, current_mono_font
	movq	$0, current_font
	movq	$0, first_dpyinfo
	movq	$0, gsettings_client
	callq	defsubr
	movabsq	$Sfont_get_system_normal_font, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_xsettings.b_fwd, %rdi
	movabsq	$.L.str, %rsi
	movabsq	$globals, %rax
	addq	$3435, %rax             # imm = 0xD6B
	movq	%rax, %rdx
	callq	defvar_bool
# BB#2:                                 # %do.end
	movb	$0, globals+3435
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_xsettings.o_fwd, %rdi
	movabsq	$.L.str.1, %rsi
	movabsq	$globals, %rax
	addq	$2936, %rax             # imm = 0xB78
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	movabsq	$.L.str.2, %rdi
	movq	empty_unibyte_string, %rax
	movq	%rax, globals+2936
	callq	intern_c_string
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprovide
	movabsq	$.L.str.3, %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	intern_c_string
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprovide
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$Stool_bar_get_system_style, %rdi
	movq	%rax, current_tool_bar_style
	callq	defsubr
	movabsq	$.L.str.4, %rdi
	callq	intern_c_string
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprovide
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	syms_of_xsettings, .Lfunc_end11-syms_of_xsettings
	.cfi_endproc

	.align	16, 0x90
	.type	read_settings,@function
read_settings:                          # @read_settings
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
.Ltmp39:
	.cfi_offset %rbx, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	$0, -80(%rbp)
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -88(%rbp)
	movb	$0, -93(%rbp)
	movq	-88(%rbp), %rdi
	callq	x_catch_errors
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$9223372036854775807, %r8 # imm = 0x7FFFFFFFFFFFFFFF
	xorl	%r9d, %r9d
	leaq	-48(%rbp), %rsi
	leaq	-52(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	leaq	-72(%rbp), %r10
	leaq	-80(%rbp), %r11
	movq	-88(%rbp), %rbx
	movq	-32(%rbp), %r14
	movq	960(%r14), %r14
	movq	-32(%rbp), %r15
	movq	944(%r15), %r15
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movq	$0, (%rsp)
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	callq	XGetWindowProperty
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB12_6
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -80(%rbp)
	je	.LBB12_6
# BB#2:                                 # %land.lhs.true.2
	cmpl	$8, -52(%rbp)
	jne	.LBB12_6
# BB#3:                                 # %land.lhs.true.4
	cmpq	$0, -64(%rbp)
	jbe	.LBB12_6
# BB#4:                                 # %land.lhs.true.6
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	944(%rcx), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	parse_settings
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -93(%rbp)
.LBB12_6:                               # %if.end
	movq	-80(%rbp), %rdi
	callq	XFree
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	x_uncatch_errors
	movb	-93(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	read_settings, .Lfunc_end12-read_settings
	.cfi_endproc

	.align	16, 0x90
	.type	apply_xft_settings,@function
apply_xft_settings:                     # @apply_xft_settings
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
	subq	$624, %rsp              # imm = 0x270
	xorl	%eax, %eax
	movl	$56, %ecx
	movl	%ecx, %edx
	leaq	-80(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -81(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset
	callq	FcPatternCreate
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XScreenNumberOfScreen
	movq	-24(%rbp), %rdx
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	XftDefaultSubstitute
	movabsq	$.L.str.24, %rsi
	xorl	%edx, %edx
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdi
	callq	FcPatternGetBool
	movabsq	$.L.str.25, %rsi
	xorl	%edx, %edx
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdi
	addq	$4, %rcx
	movl	%eax, -540(%rbp)        # 4-byte Spill
	callq	FcPatternGetBool
	movabsq	$.L.str.26, %rsi
	xorl	%edx, %edx
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdi
	addq	$16, %rcx
	movl	%eax, -544(%rbp)        # 4-byte Spill
	callq	FcPatternGetInteger
	movabsq	$.L.str.27, %rsi
	xorl	%edx, %edx
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdi
	addq	$12, %rcx
	movl	%eax, -548(%rbp)        # 4-byte Spill
	callq	FcPatternGetInteger
	movabsq	$.L.str.28, %rsi
	xorl	%edx, %edx
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdi
	addq	$8, %rcx
	movl	%eax, -552(%rbp)        # 4-byte Spill
	callq	FcPatternGetInteger
	movabsq	$.L.str.29, %rsi
	xorl	%edx, %edx
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rdi
	addq	$24, %rcx
	movl	%eax, -556(%rbp)        # 4-byte Spill
	callq	FcPatternGetDouble
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -560(%rbp)        # 4-byte Spill
	je	.LBB13_3
# BB#1:                                 # %land.lhs.true
	movl	-80(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	je	.LBB13_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.24, %rsi
	movq	-24(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.24, %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -564(%rbp)        # 4-byte Spill
	callq	FcPatternAddBool
	movb	$1, -81(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, -80(%rbp)
	movl	%eax, -568(%rbp)        # 4-byte Spill
.LBB13_3:                               # %if.end
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true.19
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	je	.LBB13_6
# BB#5:                                 # %if.then.23
	movabsq	$.L.str.25, %rsi
	movq	-24(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.25, %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%eax, -572(%rbp)        # 4-byte Spill
	callq	FcPatternAddBool
	movb	$1, -81(%rbp)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -76(%rbp)
	movl	%eax, -576(%rbp)        # 4-byte Spill
.LBB13_6:                               # %if.end.29
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB13_9
# BB#7:                                 # %land.lhs.true.33
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB13_9
# BB#8:                                 # %if.then.37
	movabsq	$.L.str.28, %rsi
	movq	-24(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.28, %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%eax, -580(%rbp)        # 4-byte Spill
	callq	FcPatternAddInteger
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -72(%rbp)
	movb	$1, -81(%rbp)
	movl	%eax, -584(%rbp)        # 4-byte Spill
.LBB13_9:                               # %if.end.43
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB13_12
# BB#10:                                # %land.lhs.true.47
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	je	.LBB13_12
# BB#11:                                # %if.then.51
	movabsq	$.L.str.27, %rsi
	movq	-24(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.27, %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	movl	%eax, -588(%rbp)        # 4-byte Spill
	callq	FcPatternAddInteger
	movb	$1, -81(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	movl	%edx, -68(%rbp)
	movl	%eax, -592(%rbp)        # 4-byte Spill
.LBB13_12:                              # %if.end.57
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	je	.LBB13_15
# BB#13:                                # %land.lhs.true.61
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	je	.LBB13_15
# BB#14:                                # %if.then.65
	movabsq	$.L.str.26, %rsi
	movq	-24(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.26, %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %edx
	movl	%eax, -596(%rbp)        # 4-byte Spill
	callq	FcPatternAddInteger
	movb	$1, -81(%rbp)
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %edx
	movl	%edx, -64(%rbp)
	movl	%eax, -600(%rbp)        # 4-byte Spill
.LBB13_15:                              # %if.end.71
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	je	.LBB13_19
# BB#16:                                # %land.lhs.true.75
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jne	.LBB13_17
	jp	.LBB13_17
	jmp	.LBB13_19
.LBB13_17:                              # %land.lhs.true.79
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_19
# BB#18:                                # %if.then.82
	movabsq	$.L.str.29, %rsi
	movq	-24(%rbp), %rdi
	callq	FcPatternDel
	movabsq	$.L.str.29, %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -604(%rbp)        # 4-byte Spill
	callq	FcPatternAddDouble
	movb	$1, -81(%rbp)
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 56(%rcx)
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 64(%rcx)
	movl	%eax, -608(%rbp)        # 4-byte Spill
.LBB13_19:                              # %if.end.89
	testb	$1, -81(%rbp)
	je	.LBB13_21
# BB#20:                                # %if.then.90
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	XftDefaultSet
	movl	$445, %edi              # imm = 0x1BD
	movl	%eax, -612(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	subq	$3, %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	store_config_changed_event
	movabsq	$apply_xft_settings.format, %rsi
	leaq	-528(%rbp), %rdi
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	-64(%rbp), %r10d
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%r10d, (%rsp)
	movb	$1, %al
	callq	make_formatted_string
	movq	%rax, globals+2936
	jmp	.LBB13_22
.LBB13_21:                              # %if.else
	movq	-24(%rbp), %rdi
	callq	FcPatternDestroy
.LBB13_22:                              # %if.end.101
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end13:
	.size	apply_xft_settings, .Lfunc_end13-apply_xft_settings
	.cfi_endproc

	.align	16, 0x90
	.type	store_tool_bar_style_changed,@function
store_tool_bar_style_changed:           # @store_tool_bar_style_changed
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	map_tool_bar_style
	movq	%rax, -24(%rbp)
	movq	current_tool_bar_style, %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_4
.LBB14_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, current_tool_bar_style
	movq	-16(%rbp), %rdi
	callq	dpyinfo_valid
	testb	$1, %al
	jne	.LBB14_3
	jmp	.LBB14_4
.LBB14_3:                               # %if.then.2
	movl	$926, %edi              # imm = 0x39E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	store_config_changed_event
.LBB14_4:                               # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	store_tool_bar_style_changed, .Lfunc_end14-store_tool_bar_style_changed
	.cfi_endproc

	.align	16, 0x90
	.type	map_tool_bar_style,@function
map_tool_bar_style:                     # @map_tool_bar_style
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB15_13
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_3
# BB#2:                                 # %if.then.2
	movl	$211, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB15_12
.LBB15_3:                               # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.31, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_5
# BB#4:                                 # %if.then.6
	movl	$212, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB15_11
.LBB15_5:                               # %if.else.8
	movq	-8(%rbp), %rdi
	movl	$.L.str.32, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_7
# BB#6:                                 # %if.then.11
	movl	$537, %edi              # imm = 0x219
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB15_10
.LBB15_7:                               # %if.else.13
	movq	-8(%rbp), %rdi
	movl	$.L.str.33, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_9
# BB#8:                                 # %if.then.16
	movl	$910, %edi              # imm = 0x38E
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB15_9:                               # %if.end
	jmp	.LBB15_10
.LBB15_10:                              # %if.end.18
	jmp	.LBB15_11
.LBB15_11:                              # %if.end.19
	jmp	.LBB15_12
.LBB15_12:                              # %if.end.20
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.21
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	map_tool_bar_style, .Lfunc_end15-map_tool_bar_style
	.cfi_endproc

	.align	16, 0x90
	.type	store_font_name_changed,@function
store_font_name_changed:                # @store_font_name_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, current_font
	je	.LBB16_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	movq	current_font, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_5
.LBB16_3:                               # %if.end
	movabsq	$current_font, %rdi
	movq	-8(%rbp), %rsi
	callq	dupstring
	movq	first_dpyinfo, %rdi
	callq	dpyinfo_valid
	testb	$1, %al
	jne	.LBB16_4
	jmp	.LBB16_5
.LBB16_4:                               # %if.then.3
	movl	$442, %edi              # imm = 0x1BA
	callq	builtin_lisp_symbol
	movq	first_dpyinfo, %rcx
	movq	32(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	store_config_changed_event
.LBB16_5:                               # %if.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	store_font_name_changed, .Lfunc_end16-store_font_name_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	parse_settings,@function
parse_settings:                         # @parse_settings
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	Fbyteorder
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$66, %rax
	cmovel	%r8d, %ecx
	movl	%ecx, -44(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	cmpq	$12, -24(%rbp)
	jae	.LBB17_2
# BB#1:                                 # %if.then
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_106
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movl	-44(%rbp), %ecx
	cmpl	-48(%rbp), %ecx
	je	.LBB17_4
# BB#3:                                 # %if.then.5
	movl	-52(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	#APP
	bswapl	%eax
	#NO_APP
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB17_4:                               # %if.end.6
	xorl	%esi, %esi
	movl	$56, %eax
	movl	%eax, %edx
	movl	$12, -56(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
.LBB17_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-56(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rdx
	cmpq	-24(%rbp), %rdx
	movb	%cl, -393(%rbp)         # 1-byte Spill
	jae	.LBB17_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_5 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$7, -60(%rbp)
	movb	%cl, -393(%rbp)         # 1-byte Spill
	jge	.LBB17_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-52(%rbp), %eax
	setb	%cl
	movb	%cl, -393(%rbp)         # 1-byte Spill
.LBB17_8:                               # %land.end
                                        #   in Loop: Header=BB17_5 Depth=1
	movb	-393(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_9
	jmp	.LBB17_105
.LBB17_9:                               # %while.body
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, -80(%rbp)
	movl	$0, -92(%rbp)
	movb	$0, -352(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rdx
	movslq	-56(%rbp), %rsi
	movw	(%rdx,%rsi), %di
	movw	%di, -82(%rbp)
	movl	-56(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -56(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	.LBB17_11
# BB#10:                                # %if.then.31
                                        #   in Loop: Header=BB17_5 Depth=1
	movw	-82(%rbp), %ax
	movw	%ax, -364(%rbp)
	movw	-364(%rbp), %ax
	#APP
	rorw	$8, %ax
	#NO_APP
	movw	%ax, -362(%rbp)
	movw	-362(%rbp), %ax
	movw	%ax, -366(%rbp)
	movw	-366(%rbp), %ax
	movw	%ax, -82(%rbp)
.LBB17_11:                              # %if.end.37
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-56(%rbp), %eax
	movzwl	-82(%rbp), %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	cmpq	-24(%rbp), %rdx
	jbe	.LBB17_13
# BB#12:                                # %if.then.43
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_106
.LBB17_13:                              # %if.end.44
                                        #   in Loop: Header=BB17_5 Depth=1
	movzwl	-82(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$127, %rcx
	jae	.LBB17_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB17_5 Depth=1
	movzwl	-82(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB17_16
.LBB17_15:                              # %cond.false
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	$127, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB17_16
.LBB17_16:                              # %cond.end
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	leaq	-224(%rbp), %rcx
	movl	%eax, %edx
	movl	%edx, -360(%rbp)
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rsi
	addq	%rsi, %rax
	movslq	-360(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movslq	-360(%rbp), %rax
	movb	$0, -224(%rbp,%rax)
	movzwl	-82(%rbp), %r8d
	addl	-56(%rbp), %r8d
	movl	%r8d, -56(%rbp)
	movl	-56(%rbp), %r8d
	addl	$3, %r8d
	andl	$-4, %r8d
	movl	%r8d, -56(%rbp)
	movl	-56(%rbp), %r8d
	addl	$4, %r8d
	movl	%r8d, -56(%rbp)
	movslq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB17_18
# BB#17:                                # %if.then.63
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_106
.LBB17_18:                              # %if.end.64
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rsi
	movl	$.L.str.5, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -353(%rbp)
	movzwl	-82(%rbp), %eax
	cmpl	$6, %eax
	jle	.LBB17_20
# BB#19:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rax
	movl	(%rax), %ecx
	subl	$796157528, %ecx        # imm = 0x2F746658
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	je	.LBB17_21
.LBB17_20:                              # %lor.lhs.false
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rsi
	movl	$.L.str.7, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_22
.LBB17_21:                              # %if.then.80
                                        #   in Loop: Header=BB17_5 Depth=1
	movb	$1, -353(%rbp)
.LBB17_22:                              # %if.end.81
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-80(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -416(%rbp)        # 4-byte Spill
	je	.LBB17_23
	jmp	.LBB17_107
.LBB17_107:                             # %if.end.81
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-416(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
	je	.LBB17_30
	jmp	.LBB17_108
.LBB17_108:                             # %if.end.81
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-416(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	je	.LBB17_40
	jmp	.LBB17_43
.LBB17_23:                              # %sw.bb
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-56(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	cmpq	-24(%rbp), %rcx
	jbe	.LBB17_25
# BB#24:                                # %if.then.86
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_106
.LBB17_25:                              # %if.end.87
                                        #   in Loop: Header=BB17_5 Depth=1
	testb	$1, -353(%rbp)
	je	.LBB17_29
# BB#26:                                # %if.then.88
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movl	(%rax,%rcx), %edx
	movl	%edx, -92(%rbp)
	movl	-44(%rbp), %edx
	cmpl	-48(%rbp), %edx
	je	.LBB17_28
# BB#27:                                # %if.then.93
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -376(%rbp)
	movl	-376(%rbp), %eax
	#APP
	bswapl	%eax
	#NO_APP
	movl	%eax, -372(%rbp)
	movl	-372(%rbp), %eax
	movl	%eax, -380(%rbp)
	movl	-380(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB17_28:                              # %if.end.99
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_29
.LBB17_29:                              # %if.end.100
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-56(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB17_44
.LBB17_30:                              # %sw.bb.102
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-56(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	cmpq	-24(%rbp), %rcx
	jbe	.LBB17_32
# BB#31:                                # %if.then.107
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_106
.LBB17_32:                              # %if.end.108
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movl	(%rax,%rcx), %edx
	movl	%edx, -88(%rbp)
	movl	-56(%rbp), %edx
	addl	$4, %edx
	movl	%edx, -56(%rbp)
	movl	-44(%rbp), %edx
	cmpl	-48(%rbp), %edx
	je	.LBB17_34
# BB#33:                                # %if.then.114
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, -388(%rbp)
	movl	-388(%rbp), %eax
	#APP
	bswapl	%eax
	#NO_APP
	movl	%eax, -384(%rbp)
	movl	-384(%rbp), %eax
	movl	%eax, -392(%rbp)
	movl	-392(%rbp), %eax
	movl	%eax, -88(%rbp)
.LBB17_34:                              # %if.end.120
                                        #   in Loop: Header=BB17_5 Depth=1
	testb	$1, -353(%rbp)
	je	.LBB17_39
# BB#35:                                # %if.then.122
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$127, %rcx
	jae	.LBB17_37
# BB#36:                                # %cond.true.126
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB17_38
.LBB17_37:                              # %cond.false.128
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	$127, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB17_38
.LBB17_38:                              # %cond.end.129
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	leaq	-352(%rbp), %rcx
	movl	%eax, %edx
	movl	%edx, -360(%rbp)
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rsi
	addq	%rsi, %rax
	movslq	-360(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movslq	-360(%rbp), %rax
	movb	$0, -352(%rbp,%rax)
.LBB17_39:                              # %if.end.137
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-88(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	addl	$3, %eax
	andl	$-4, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB17_44
.LBB17_40:                              # %sw.bb.141
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-56(%rbp), %eax
	addl	$8, %eax
	movslq	%eax, %rcx
	cmpq	-24(%rbp), %rcx
	jbe	.LBB17_42
# BB#41:                                # %if.then.146
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_106
.LBB17_42:                              # %if.end.147
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-56(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB17_44
.LBB17_43:                              # %sw.default
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_106
.LBB17_44:                              # %sw.epilog
                                        #   in Loop: Header=BB17_5 Depth=1
	testb	$1, -353(%rbp)
	je	.LBB17_104
# BB#45:                                # %if.then.150
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_47
# BB#46:                                # %if.then.155
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	callq	dupstring
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	orl	$128, %ecx
	movl	%ecx, 48(%rax)
	jmp	.LBB17_103
.LBB17_47:                              # %if.else
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.7, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_49
# BB#48:                                # %if.then.161
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rsi
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	dupstring
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	orl	$64, %ecx
	movl	%ecx, 48(%rax)
	jmp	.LBB17_102
.LBB17_49:                              # %if.else.165
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_51
# BB#50:                                # %if.then.170
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 48(%rax)
	cmpl	$0, -92(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB17_101
.LBB17_51:                              # %if.else.175
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_53
# BB#52:                                # %if.then.180
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	orl	$2, %ecx
	movl	%ecx, 48(%rax)
	cmpl	$0, -92(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB17_100
.LBB17_53:                              # %if.else.185
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_67
# BB#54:                                # %if.then.190
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	orl	$16, %ecx
	movl	%ecx, 48(%rax)
	movl	$.L.str.11, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_56
# BB#55:                                # %if.then.197
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$0, 16(%rax)
	jmp	.LBB17_66
.LBB17_56:                              # %if.else.198
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movl	$.L.str.12, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_58
# BB#57:                                # %if.then.203
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	.LBB17_65
.LBB17_58:                              # %if.else.205
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_60
# BB#59:                                # %if.then.210
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$2, 16(%rax)
	jmp	.LBB17_64
.LBB17_60:                              # %if.else.212
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movl	$.L.str.14, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_62
# BB#61:                                # %if.then.217
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$3, 16(%rax)
	jmp	.LBB17_63
.LBB17_62:                              # %if.else.219
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$-17, %ecx
	movl	%ecx, 48(%rax)
.LBB17_63:                              # %if.end.222
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_64
.LBB17_64:                              # %if.end.223
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_65
.LBB17_65:                              # %if.end.224
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_66
.LBB17_66:                              # %if.end.225
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_99
.LBB17_67:                              # %if.else.226
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_84
# BB#68:                                # %if.then.231
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	orl	$4, %ecx
	movl	%ecx, 48(%rax)
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_70
# BB#69:                                # %if.then.238
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$5, 8(%rax)
	jmp	.LBB17_83
.LBB17_70:                              # %if.else.239
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movl	$.L.str.17, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_72
# BB#71:                                # %if.then.244
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.LBB17_82
.LBB17_72:                              # %if.else.246
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_74
# BB#73:                                # %if.then.251
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$2, 8(%rax)
	jmp	.LBB17_81
.LBB17_74:                              # %if.else.253
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movl	$.L.str.19, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_76
# BB#75:                                # %if.then.258
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$3, 8(%rax)
	jmp	.LBB17_80
.LBB17_76:                              # %if.else.260
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movl	$.L.str.20, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_78
# BB#77:                                # %if.then.265
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$4, 8(%rax)
	jmp	.LBB17_79
.LBB17_78:                              # %if.else.267
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$-5, %ecx
	movl	%ecx, 48(%rax)
.LBB17_79:                              # %if.end.270
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_80
.LBB17_80:                              # %if.end.271
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_81
.LBB17_81:                              # %if.end.272
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_82
.LBB17_82:                              # %if.end.273
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_83
.LBB17_83:                              # %if.end.274
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_98
.LBB17_84:                              # %if.else.275
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_87
# BB#85:                                # %land.lhs.true.280
                                        #   in Loop: Header=BB17_5 Depth=1
	cmpl	$-1, -92(%rbp)
	je	.LBB17_87
# BB#86:                                # %if.then.283
                                        #   in Loop: Header=BB17_5 Depth=1
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	orl	$32, %ecx
	movl	%ecx, 48(%rax)
	movl	-92(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	jmp	.LBB17_97
.LBB17_87:                              # %if.else.287
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_95
# BB#88:                                # %if.then.292
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	orl	$8, %ecx
	movl	%ecx, 48(%rax)
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_90
# BB#89:                                # %if.then.299
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$0, 12(%rax)
	jmp	.LBB17_94
.LBB17_90:                              # %if.else.300
                                        #   in Loop: Header=BB17_5 Depth=1
	leaq	-352(%rbp), %rdi
	movl	$.L.str.23, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_92
# BB#91:                                # %if.then.305
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	$1, 12(%rax)
	jmp	.LBB17_93
.LBB17_92:                              # %if.else.307
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$-9, %ecx
	movl	%ecx, 48(%rax)
.LBB17_93:                              # %if.end.310
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_94
.LBB17_94:                              # %if.end.311
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_96
.LBB17_95:                              # %if.else.312
                                        #   in Loop: Header=BB17_5 Depth=1
	movb	$0, -353(%rbp)
.LBB17_96:                              # %if.end.313
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_97
.LBB17_97:                              # %if.end.314
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_98
.LBB17_98:                              # %if.end.315
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_99
.LBB17_99:                              # %if.end.316
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_100
.LBB17_100:                             # %if.end.317
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_101
.LBB17_101:                             # %if.end.318
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_102
.LBB17_102:                             # %if.end.319
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_103
.LBB17_103:                             # %if.end.320
                                        #   in Loop: Header=BB17_5 Depth=1
	movb	-353(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -60(%rbp)
.LBB17_104:                             # %if.end.324
                                        #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_5
.LBB17_105:                             # %while.end
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_106:                             # %return
	movl	-4(%rbp), %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end17:
	.size	parse_settings, .Lfunc_end17-parse_settings
	.cfi_endproc

	.align	16, 0x90
	.type	store_config_changed_event,@function
store_config_changed_event:             # @store_config_changed_event
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
	subq	$80, %rsp
	leaq	-72(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$56, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rsi
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	memset
	movl	-72(%rbp), %ecx
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	$26, %ecx
	movl	%ecx, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	kbd_buffer_store_event
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	store_config_changed_event, .Lfunc_end18-store_config_changed_event
	.cfi_endproc

	.align	16, 0x90
	.type	dpyinfo_valid,@function
dpyinfo_valid:                          # @dpyinfo_valid
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
	movq	%rdi, -8(%rbp)
	movb	$0, -9(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB19_10
# BB#1:                                 # %if.then
	movq	x_display_list, %rax
	movq	%rax, -24(%rbp)
.LBB19_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -9(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB19_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB19_2 Depth=1
	cmpq	$0, -24(%rbp)
	setne	%al
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB19_4:                               # %land.end
                                        #   in Loop: Header=BB19_2 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_5
	jmp	.LBB19_9
.LBB19_5:                               # %for.body
                                        #   in Loop: Header=BB19_2 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	-8(%rbp), %rdx
	movb	%cl, -26(%rbp)          # 1-byte Spill
	jne	.LBB19_7
# BB#6:                                 # %land.rhs.3
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rax
	sete	%dl
	movb	%dl, -26(%rbp)          # 1-byte Spill
.LBB19_7:                               # %land.end.6
                                        #   in Loop: Header=BB19_2 Depth=1
	movb	-26(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -9(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB19_2
.LBB19_9:                               # %for.end
	jmp	.LBB19_10
.LBB19_10:                              # %if.end
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	dpyinfo_valid, .Lfunc_end19-dpyinfo_valid
	.cfi_endproc

	.align	16, 0x90
	.type	something_changed_gsettingsCB,@function
something_changed_gsettingsCB:          # @something_changed_gsettingsCB
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.36, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_6
# BB#1:                                 # %if.then
	movabsq	$.L.str.36, %rsi
	movq	-8(%rbp), %rdi
	callq	g_settings_get_value
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB20_5
# BB#2:                                 # %if.then.2
	movq	-32(%rbp), %rdi
	callq	g_variant_ref_sink
	movabsq	$.L.str.37, %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_variant_is_of_type
	cmpl	$0, %eax
	je	.LBB20_4
# BB#3:                                 # %if.then.6
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	g_variant_get_string
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	first_dpyinfo, %rsi
	callq	store_tool_bar_style_changed
.LBB20_4:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	g_variant_unref
.LBB20_5:                               # %if.end.8
	jmp	.LBB20_20
.LBB20_6:                               # %if.else
	movq	-16(%rbp), %rdi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_12
# BB#7:                                 # %if.then.11
	movabsq	$.L.str.38, %rsi
	movq	-8(%rbp), %rdi
	callq	g_settings_get_value
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB20_11
# BB#8:                                 # %if.then.14
	movq	-32(%rbp), %rdi
	callq	g_variant_ref_sink
	movabsq	$.L.str.37, %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_variant_is_of_type
	cmpl	$0, %eax
	je	.LBB20_10
# BB#9:                                 # %if.then.18
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	g_variant_get_string
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	store_monospaced_changed
.LBB20_10:                              # %if.end.20
	movq	-32(%rbp), %rdi
	callq	g_variant_unref
.LBB20_11:                              # %if.end.21
	jmp	.LBB20_19
.LBB20_12:                              # %if.else.22
	movq	-16(%rbp), %rdi
	movl	$.L.str.39, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_18
# BB#13:                                # %if.then.25
	movabsq	$.L.str.39, %rsi
	movq	-8(%rbp), %rdi
	callq	g_settings_get_value
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB20_17
# BB#14:                                # %if.then.28
	movq	-32(%rbp), %rdi
	callq	g_variant_ref_sink
	movabsq	$.L.str.37, %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_variant_is_of_type
	cmpl	$0, %eax
	je	.LBB20_16
# BB#15:                                # %if.then.32
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	g_variant_get_string
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	store_font_name_changed
.LBB20_16:                              # %if.end.35
	movq	-32(%rbp), %rdi
	callq	g_variant_unref
.LBB20_17:                              # %if.end.36
	jmp	.LBB20_18
.LBB20_18:                              # %if.end.37
	jmp	.LBB20_19
.LBB20_19:                              # %if.end.38
	jmp	.LBB20_20
.LBB20_20:                              # %if.end.39
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	something_changed_gsettingsCB, .Lfunc_end20-something_changed_gsettingsCB
	.cfi_endproc

	.align	16, 0x90
	.type	store_monospaced_changed,@function
store_monospaced_changed:               # @store_monospaced_changed
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, current_mono_font
	je	.LBB21_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	movq	current_mono_font, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_6
.LBB21_3:                               # %if.end
	movabsq	$current_mono_font, %rdi
	movq	-8(%rbp), %rsi
	callq	dupstring
	movq	first_dpyinfo, %rdi
	callq	dpyinfo_valid
	testb	$1, %al
	jne	.LBB21_4
	jmp	.LBB21_6
.LBB21_4:                               # %land.lhs.true.3
	testb	$1, globals+3435
	je	.LBB21_6
# BB#5:                                 # %if.then.4
	movl	$682, %edi              # imm = 0x2AA
	callq	builtin_lisp_symbol
	movq	first_dpyinfo, %rcx
	movq	32(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	store_config_changed_event
.LBB21_6:                               # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	store_monospaced_changed, .Lfunc_end21-store_monospaced_changed
	.cfi_endproc

	.type	first_dpyinfo,@object   # @first_dpyinfo
	.local	first_dpyinfo
	.comm	first_dpyinfo,8,8
	.type	current_mono_font,@object # @current_mono_font
	.local	current_mono_font
	.comm	current_mono_font,8,8
	.type	current_font,@object    # @current_font
	.local	current_font
	.comm	current_font,8,8
	.type	current_tool_bar_style,@object # @current_tool_bar_style
	.local	current_tool_bar_style
	.comm	current_tool_bar_style,8,8
	.type	gsettings_client,@object # @gsettings_client
	.local	gsettings_client
	.comm	gsettings_client,8,8
	.type	Sfont_get_system_font,@object # @Sfont_get_system_font
	.data
	.align	8
Sfont_get_system_font:
	.quad	167772160               # 0xa000000
	.quad	Ffont_get_system_font
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.40
	.quad	0
	.quad	0
	.size	Sfont_get_system_font, 48

	.type	Sfont_get_system_normal_font,@object # @Sfont_get_system_normal_font
	.align	8
Sfont_get_system_normal_font:
	.quad	167772160               # 0xa000000
	.quad	Ffont_get_system_normal_font
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.41
	.quad	0
	.quad	0
	.size	Sfont_get_system_normal_font, 48

	.type	syms_of_xsettings.b_fwd,@object # @syms_of_xsettings.b_fwd
	.local	syms_of_xsettings.b_fwd
	.comm	syms_of_xsettings.b_fwd,16,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"font-use-system-font"
	.size	.L.str, 21

	.type	syms_of_xsettings.o_fwd,@object # @syms_of_xsettings.o_fwd
	.local	syms_of_xsettings.o_fwd
	.comm	syms_of_xsettings.o_fwd,16,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"xft-settings"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"font-render-setting"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"system-font-setting"
	.size	.L.str.3, 20

	.type	Stool_bar_get_system_style,@object # @Stool_bar_get_system_style
	.data
	.align	8
Stool_bar_get_system_style:
	.quad	167772160               # 0xa000000
	.quad	Ftool_bar_get_system_style
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.42
	.quad	0
	.quad	0
	.size	Stool_bar_get_system_style, 48

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"dynamic-setting"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Gtk/ToolbarStyle"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Xft/"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gtk/FontName"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Xft/Antialias"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Xft/Hinting"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Xft/HintStyle"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"hintnone"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"hintslight"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"hintmedium"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"hintfull"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Xft/RGBA"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"none"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"rgb"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"bgr"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"vrgb"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"vbgr"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Xft/DPI"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Xft/lcdfilter"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"lcddefault"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"antialias"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"hinting"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"hintstyle"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"lcdfilter"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"rgba"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"dpi"
	.size	.L.str.29, 4

	.type	apply_xft_settings.format,@object # @apply_xft_settings.format
	.section	.rodata,"a",@progbits
	.align	16
apply_xft_settings.format:
	.asciz	"Antialias: %d, Hinting: %d, RGBA: %d, LCDFilter: %d, Hintstyle: %d, DPI: %f"
	.size	apply_xft_settings.format, 76

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"both"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"both-horiz"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"icons"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"text"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"org.gnome.desktop.interface"
	.size	.L.str.34, 28

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"changed"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"toolbar-style"
	.size	.L.str.36, 14

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"s"
	.size	.L.str.37, 2

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"monospace-font-name"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"font-name"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"font-get-system-font"
	.size	.L.str.40, 21

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"font-get-system-normal-font"
	.size	.L.str.41, 28

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"tool-bar-get-system-style"
	.size	.L.str.42, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
