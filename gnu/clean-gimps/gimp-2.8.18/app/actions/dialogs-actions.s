	.text
	.file	"dialogs-actions.bc"
	.globl	dialogs_actions_setup
	.align	16, 0x90
	.type	dialogs_actions_setup,@function
dialogs_actions_setup:                  # @dialogs_actions_setup
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
	subq	$16, %rsp
	movabsq	$.L.str.176, %rsi
	movabsq	$dialogs_dockable_actions, %rdx
	movl	$30, %ecx
	movabsq	$dialogs_create_dockable_cmd_callback, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_string_actions
	movabsq	$.L.str.176, %rsi
	movabsq	$dialogs_toplevel_actions, %rdx
	movl	$6, %ecx
	movabsq	$dialogs_create_toplevel_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_string_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dialogs_actions_setup, .Lfunc_end0-dialogs_actions_setup
	.cfi_endproc

	.globl	dialogs_actions_update
	.align	16, 0x90
	.type	dialogs_actions_update,@function
dialogs_actions_update:                 # @dialogs_actions_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	dialogs_actions_toolbox_exists
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.177, %rdi
	callq	gettext
	movabsq	$.L.str.178, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movq	%rax, -40(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movabsq	$.L.str.179, %rdi
	callq	gettext
	movabsq	$.L.str.180, %rdi
	movq	%rax, -32(%rbp)
	callq	gettext
	movq	%rax, -40(%rbp)
.LBB1_3:                                # %if.end
	movabsq	$.L.str, %rsi
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_action_group_set_action_label
	movabsq	$.L.str, %rsi
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gimp_action_group_set_action_tooltip
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dialogs_actions_update, .Lfunc_end1-dialogs_actions_update
	.cfi_endproc

	.align	16, 0x90
	.type	dialogs_actions_toolbox_exists,@function
dialogs_actions_toolbox_exists:         # @dialogs_actions_toolbox_exists
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
	movq	%rdi, -8(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.214, %rsi
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dialog_factory_find_widget
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB2_14
# BB#1:                                 # %if.then
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	gimp_get_image_windows
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_4
.LBB2_3:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_4
.LBB2_4:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB2_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB2_13
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_window_has_toolbox
	cmpl	$0, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then.9
	movl	$1, -20(%rbp)
	jmp	.LBB2_13
.LBB2_8:                                # %if.end
                                        #   in Loop: Header=BB2_5 Depth=1
	jmp	.LBB2_9
.LBB2_9:                                # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB2_11
# BB#10:                                # %cond.true.11
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_12
.LBB2_11:                               # %cond.false.12
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_12
.LBB2_12:                               # %cond.end.13
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB2_5
.LBB2_13:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB2_14:                               # %if.end.15
	movl	-20(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dialogs_actions_toolbox_exists, .Lfunc_end2-dialogs_actions_toolbox_exists
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dialogs-toolbox"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Tool_box"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"<primary>B"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-toolbox"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dialogs-tool-options"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-options"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Tool _Options"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Open the tool options dialog"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-tool-options-dialog"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dialogs-device-status"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-device-status"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Device Status"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Open the device status dialog"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-device-status-dialog"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dialogs-layers"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-layers"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Layers"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<primary>L"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Open the layers dialog"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-layer-list"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-layer-dialog"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"dialogs-channels"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-channels"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_Channels"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Open the channels dialog"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-channel-list"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-channel-dialog"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"dialogs-vectors"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-paths"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Paths"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Open the paths dialog"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-vectors-list"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-path-dialog"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"dialogs-indexed-palette"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-colormap"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Color_map"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Open the colormap dialog"
	.size	.L.str.36, 25

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-indexed-palette"
	.size	.L.str.37, 21

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-indexed-palette-dialog"
	.size	.L.str.38, 28

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"dialogs-histogram"
	.size	.L.str.39, 18

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-histogram"
	.size	.L.str.40, 15

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Histogra_m"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Open the histogram dialog"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-histogram-editor"
	.size	.L.str.43, 22

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-histogram-dialog"
	.size	.L.str.44, 22

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"dialogs-selection-editor"
	.size	.L.str.45, 25

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-tool-rect-select"
	.size	.L.str.46, 22

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_Selection Editor"
	.size	.L.str.47, 18

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Open the selection editor"
	.size	.L.str.48, 26

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-selection-editor"
	.size	.L.str.49, 22

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-selection-dialog"
	.size	.L.str.50, 22

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"dialogs-navigation"
	.size	.L.str.51, 19

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-navigation"
	.size	.L.str.52, 16

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Na_vigation"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Open the display navigation dialog"
	.size	.L.str.54, 35

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-navigation-view"
	.size	.L.str.55, 21

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-navigation-dialog"
	.size	.L.str.56, 23

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"dialogs-undo-history"
	.size	.L.str.57, 21

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-undo-history"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Undo _History"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Open the undo history dialog"
	.size	.L.str.60, 29

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-undo-dialog"
	.size	.L.str.61, 17

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"dialogs-cursor"
	.size	.L.str.62, 15

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-cursor"
	.size	.L.str.63, 12

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Pointer"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Open the pointer information dialog"
	.size	.L.str.65, 36

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-cursor-view"
	.size	.L.str.66, 17

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-pointer-info-dialog"
	.size	.L.str.67, 25

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"dialogs-sample-points"
	.size	.L.str.68, 22

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-sample-point"
	.size	.L.str.69, 18

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"_Sample Points"
	.size	.L.str.70, 15

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Open the sample points dialog"
	.size	.L.str.71, 30

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-sample-point-editor"
	.size	.L.str.72, 25

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-sample-point-dialog"
	.size	.L.str.73, 25

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"dialogs-colors"
	.size	.L.str.74, 15

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-default-colors"
	.size	.L.str.75, 20

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Colo_rs"
	.size	.L.str.76, 8

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Open the FG/BG color dialog"
	.size	.L.str.77, 28

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-color-editor"
	.size	.L.str.78, 18

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-color-dialog"
	.size	.L.str.79, 18

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"dialogs-brushes"
	.size	.L.str.80, 16

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.81, 21

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"_Brushes"
	.size	.L.str.82, 9

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"<primary><shift>B"
	.size	.L.str.83, 18

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Open the brushes dialog"
	.size	.L.str.84, 24

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"gimp-brush-grid|gimp-brush-list"
	.size	.L.str.85, 32

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-brush-dialog"
	.size	.L.str.86, 18

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"dialogs-brush-editor"
	.size	.L.str.87, 21

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Brush Editor"
	.size	.L.str.88, 13

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Open the brush editor"
	.size	.L.str.89, 22

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"gimp-brush-editor"
	.size	.L.str.90, 18

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gimp-brush-edit"
	.size	.L.str.91, 16

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"dialogs-dynamics"
	.size	.L.str.92, 17

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-dynamics"
	.size	.L.str.93, 14

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Paint Dynamics"
	.size	.L.str.94, 15

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Open paint dynamics dialog"
	.size	.L.str.95, 27

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gimp-dynamics-list"
	.size	.L.str.96, 19

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-dynamics-dialog"
	.size	.L.str.97, 21

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"dialogs-dynamics-editor"
	.size	.L.str.98, 24

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Paint Dynamics Editor"
	.size	.L.str.99, 22

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Open the paint dynamics editor"
	.size	.L.str.100, 31

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"gimp-dynamics-editor"
	.size	.L.str.101, 21

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gimp-dynamics-editor-dialog"
	.size	.L.str.102, 28

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"dialogs-patterns"
	.size	.L.str.103, 17

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.104, 22

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"P_atterns"
	.size	.L.str.105, 10

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"<primary><shift>P"
	.size	.L.str.106, 18

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Open the patterns dialog"
	.size	.L.str.107, 25

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-pattern-grid|gimp-pattern-list"
	.size	.L.str.108, 36

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gimp-pattern-dialog"
	.size	.L.str.109, 20

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"dialogs-gradients"
	.size	.L.str.110, 18

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gimp-tool-blend"
	.size	.L.str.111, 16

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"_Gradients"
	.size	.L.str.112, 11

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"<primary>G"
	.size	.L.str.113, 11

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Open the gradients dialog"
	.size	.L.str.114, 26

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"gimp-gradient-list|gimp-gradient-grid"
	.size	.L.str.115, 38

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-gradient-dialog"
	.size	.L.str.116, 21

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"dialogs-gradient-editor"
	.size	.L.str.117, 24

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Gradient Editor"
	.size	.L.str.118, 16

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Open the gradient editor"
	.size	.L.str.119, 25

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"gimp-gradient-editor"
	.size	.L.str.120, 21

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"gimp-gradient-edit"
	.size	.L.str.121, 19

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"dialogs-palettes"
	.size	.L.str.122, 17

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"gtk-select-color"
	.size	.L.str.123, 17

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Pal_ettes"
	.size	.L.str.124, 10

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Open the palettes dialog"
	.size	.L.str.125, 25

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"gimp-palette-list|gimp-palette-grid"
	.size	.L.str.126, 36

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"gimp-palette-dialog"
	.size	.L.str.127, 20

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"dialogs-palette-editor"
	.size	.L.str.128, 23

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"Palette Editor"
	.size	.L.str.129, 15

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Open the palette editor"
	.size	.L.str.130, 24

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"gimp-palette-editor"
	.size	.L.str.131, 20

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"gimp-palette-edit"
	.size	.L.str.132, 18

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"dialogs-tool-presets"
	.size	.L.str.133, 21

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"gimp-tool-preset"
	.size	.L.str.134, 17

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Tool presets"
	.size	.L.str.135, 13

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Open tool presets dialog"
	.size	.L.str.136, 25

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"gimp-tool-preset-list"
	.size	.L.str.137, 22

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"gimp-tool-preset-dialog"
	.size	.L.str.138, 24

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"dialogs-fonts"
	.size	.L.str.139, 14

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gtk-select-font"
	.size	.L.str.140, 16

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"_Fonts"
	.size	.L.str.141, 7

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Open the fonts dialog"
	.size	.L.str.142, 22

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"gimp-font-list|gimp-font-grid"
	.size	.L.str.143, 30

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gimp-font-dialog"
	.size	.L.str.144, 17

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"dialogs-buffers"
	.size	.L.str.145, 16

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"gtk-paste"
	.size	.L.str.146, 10

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"B_uffers"
	.size	.L.str.147, 9

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.zero	1
	.size	.L.str.148, 1

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Open the named buffers dialog"
	.size	.L.str.149, 30

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"gimp-buffer-list|gimp-buffer-grid"
	.size	.L.str.150, 34

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"gimp-buffer-dialog"
	.size	.L.str.151, 19

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"dialogs-images"
	.size	.L.str.152, 15

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"gimp-images"
	.size	.L.str.153, 12

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"_Images"
	.size	.L.str.154, 8

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"Open the images dialog"
	.size	.L.str.155, 23

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"gimp-image-list|gimp-image-grid"
	.size	.L.str.156, 32

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"gimp-image-dialog"
	.size	.L.str.157, 18

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"dialogs-document-history"
	.size	.L.str.158, 25

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"document-open-recent"
	.size	.L.str.159, 21

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"Document Histor_y"
	.size	.L.str.160, 18

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Open the document history dialog"
	.size	.L.str.161, 33

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"gimp-document-list|gimp-document-grid"
	.size	.L.str.162, 38

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"gimp-document-dialog"
	.size	.L.str.163, 21

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"dialogs-templates"
	.size	.L.str.164, 18

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"gimp-template"
	.size	.L.str.165, 14

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"_Templates"
	.size	.L.str.166, 11

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"Open the image templates dialog"
	.size	.L.str.167, 32

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"gimp-template-list|gimp-template-grid"
	.size	.L.str.168, 38

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"gimp-template-dialog"
	.size	.L.str.169, 21

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"dialogs-error-console"
	.size	.L.str.170, 22

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"gimp-warning"
	.size	.L.str.171, 13

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"Error Co_nsole"
	.size	.L.str.172, 15

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"Open the error console"
	.size	.L.str.173, 23

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"gimp-error-console"
	.size	.L.str.174, 19

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"gimp-errors-dialog"
	.size	.L.str.175, 19

	.type	dialogs_dockable_actions,@object # @dialogs_dockable_actions
	.section	.rodata,"a",@progbits
	.globl	dialogs_dockable_actions
	.align	16
dialogs_dockable_actions:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.3
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	0
	.quad	.L.str.7
	.quad	.L.str.5
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	0
	.quad	.L.str.12
	.quad	.L.str.10
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	0
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	0
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	0
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	0
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	0
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	0
	.quad	.L.str.60
	.quad	.L.str.58
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	0
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	0
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	0
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.81
	.quad	.L.str.88
	.quad	0
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	0
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.93
	.quad	.L.str.99
	.quad	0
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.111
	.quad	.L.str.118
	.quad	0
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	0
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.123
	.quad	.L.str.129
	.quad	0
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	0
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	0
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	0
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.160
	.quad	.L.str.148
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	.L.str.148
	.quad	.L.str.167
	.quad	.L.str.168
	.quad	.L.str.169
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	0
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	.L.str.175
	.size	dialogs_dockable_actions, 1680

	.type	n_dialogs_dockable_actions,@object # @n_dialogs_dockable_actions
	.data
	.globl	n_dialogs_dockable_actions
	.align	4
n_dialogs_dockable_actions:
	.long	30                      # 0x1e
	.size	n_dialogs_dockable_actions, 4

	.type	.L.str.176,@object      # @.str.176
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.176:
	.asciz	"dialogs-action"
	.size	.L.str.176, 15

	.type	dialogs_toplevel_actions,@object # @dialogs_toplevel_actions
	.section	.rodata,"a",@progbits
	.align	16
dialogs_toplevel_actions:
	.quad	.L.str.181
	.quad	.L.str.182
	.quad	.L.str.183
	.quad	0
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	0
	.quad	.L.str.190
	.quad	.L.str.191
	.quad	.L.str.192
	.quad	.L.str.193
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	0
	.quad	.L.str.196
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	.L.str.200
	.quad	.L.str.201
	.quad	0
	.quad	.L.str.202
	.quad	.L.str.203
	.quad	.L.str.203
	.quad	.L.str.204
	.quad	.L.str.205
	.quad	.L.str.206
	.quad	0
	.quad	.L.str.207
	.quad	.L.str.208
	.quad	.L.str.208
	.quad	.L.str.209
	.quad	.L.str.210
	.quad	.L.str.211
	.quad	0
	.quad	.L.str.212
	.quad	.L.str.213
	.quad	.L.str.213
	.size	dialogs_toplevel_actions, 336

	.type	.L.str.177,@object      # @.str.177
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.177:
	.asciz	"Toolbox"
	.size	.L.str.177, 8

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"Raise the toolbox"
	.size	.L.str.178, 18

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"New Toolbox"
	.size	.L.str.179, 12

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"Create a new toolbox"
	.size	.L.str.180, 21

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"dialogs-preferences"
	.size	.L.str.181, 20

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"gtk-preferences"
	.size	.L.str.182, 16

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"_Preferences"
	.size	.L.str.183, 13

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"Open the preferences dialog"
	.size	.L.str.184, 28

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"gimp-preferences-dialog"
	.size	.L.str.185, 24

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"gimp-prefs-dialog"
	.size	.L.str.186, 18

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"dialogs-input-devices"
	.size	.L.str.187, 22

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"gimp-input-device"
	.size	.L.str.188, 18

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"_Input Devices"
	.size	.L.str.189, 15

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"Open the input devices editor"
	.size	.L.str.190, 30

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"gimp-input-devices-dialog"
	.size	.L.str.191, 26

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"gimp-help-input-devices"
	.size	.L.str.192, 24

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"dialogs-keyboard-shortcuts"
	.size	.L.str.193, 27

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"gimp-char-picker"
	.size	.L.str.194, 17

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"_Keyboard Shortcuts"
	.size	.L.str.195, 20

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"Open the keyboard shortcuts editor"
	.size	.L.str.196, 35

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"gimp-keyboard-shortcuts-dialog"
	.size	.L.str.197, 31

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"gimp-help-keyboard-shortcuts"
	.size	.L.str.198, 29

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"dialogs-module-dialog"
	.size	.L.str.199, 22

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"gtk-execute"
	.size	.L.str.200, 12

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"_Modules"
	.size	.L.str.201, 9

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"Open the module manager dialog"
	.size	.L.str.202, 31

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"gimp-module-dialog"
	.size	.L.str.203, 19

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"dialogs-tips"
	.size	.L.str.204, 13

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"gimp-info"
	.size	.L.str.205, 10

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"_Tip of the Day"
	.size	.L.str.206, 16

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"Show some helpful tips on using GIMP"
	.size	.L.str.207, 37

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"gimp-tips-dialog"
	.size	.L.str.208, 17

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"dialogs-about"
	.size	.L.str.209, 14

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"gtk-about"
	.size	.L.str.210, 10

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"_About"
	.size	.L.str.211, 7

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"About GIMP"
	.size	.L.str.212, 11

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"gimp-about-dialog"
	.size	.L.str.213, 18

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"gimp-toolbox-window"
	.size	.L.str.214, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
