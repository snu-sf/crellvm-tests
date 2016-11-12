	.text
	.file	"gimpsessioninfo-dockable.bc"
	.globl	gimp_session_info_dockable_new
	.align	16, 0x90
	.type	gimp_session_info_dockable_new,@function
gimp_session_info_dockable_new:         # @gimp_session_info_dockable_new
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
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_session_info_dockable_new, .Lfunc_end0-gimp_session_info_dockable_new
	.cfi_endproc

	.globl	gimp_session_info_dockable_free
	.align	16, 0x90
	.type	gimp_session_info_dockable_free,@function
gimp_session_info_dockable_free:        # @gimp_session_info_dockable_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dockable_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_11
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.LBB1_7:                                # %if.end.4
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB1_9
# BB#8:                                 # %if.then.6
	movabsq	$gimp_session_info_aux_free, %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
.LBB1_9:                                # %if.end.9
	jmp	.LBB1_10
.LBB1_10:                               # %do.body.10
	movl	$32, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_11:                               # %do.end.11
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_session_info_dockable_free, .Lfunc_end1-gimp_session_info_dockable_free
	.cfi_endproc

	.globl	gimp_session_info_dockable_serialize
	.align	16, 0x90
	.type	gimp_session_info_dockable_serialize,@function
gimp_session_info_dockable_serialize:   # @gimp_session_info_dockable_serialize
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
	subq	$48, %rsp
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dockable_serialize, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_19
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.3
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dockable_serialize, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_19
.LBB2_9:                                # %if.end.5
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.6
	callq	gimp_tab_style_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movabsq	$.L.str.4, %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_config_writer_string
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB2_12
# BB#11:                                # %if.then.8
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_12:                               # %if.end.9
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	12(%rax), %esi
	callq	g_enum_get_value
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.13
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB2_14:                               # %if.end.14
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_open
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_config_writer_print
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
	movq	-16(%rbp), %rsi
	cmpl	$0, 16(%rsi)
	jle	.LBB2_16
# BB#15:                                # %if.then.16
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_open
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_16:                               # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_18
# BB#17:                                # %if.then.20
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	gimp_session_info_aux_serialize
.LBB2_18:                               # %if.end.22
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
	movq	-24(%rbp), %rdi
	callq	g_type_class_unref
.LBB2_19:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_session_info_dockable_serialize, .Lfunc_end2-gimp_session_info_dockable_serialize
	.cfi_endproc

	.globl	gimp_session_info_dockable_deserialize
	.align	16, 0x90
	.type	gimp_session_info_dockable_deserialize,@function
gimp_session_info_dockable_deserialize: # @gimp_session_info_dockable_deserialize
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dockable_deserialize, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$40, -4(%rbp)
	jmp	.LBB3_38
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dockable_deserialize, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$40, -4(%rbp)
	jmp	.LBB3_38
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	movabsq	$.L.str.5, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.6, %rdx
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.7, %rdx
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.11, %rdx
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	callq	gimp_session_info_dockable_new
	movq	%rax, -40(%rbp)
	callq	gimp_tab_style_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -48(%rbp)
	movl	$264, -60(%rbp)         # imm = 0x108
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_12
# BB#11:                                # %if.then.10
	jmp	.LBB3_37
.LBB3_12:                               # %if.end.11
	movl	$40, -60(%rbp)
.LBB3_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-60(%rbp), %eax
	jne	.LBB3_36
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -60(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB3_15
	jmp	.LBB3_39
.LBB3_39:                               # %while.body
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB3_33
	jmp	.LBB3_40
.LBB3_40:                               # %while.body
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB3_16
	jmp	.LBB3_34
.LBB3_15:                               # %sw.bb
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$265, -60(%rbp)         # imm = 0x109
	jmp	.LBB3_35
.LBB3_16:                               # %sw.bb.15
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	ja	.LBB3_31
# BB#41:                                # %sw.bb.15
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_17:                               # %sw.bb.16
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-40(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.LBB3_32
.LBB3_18:                               # %sw.bb.17
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$266, -60(%rbp)         # imm = 0x10A
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-60(%rbp), %eax
	je	.LBB3_20
# BB#19:                                # %if.then.21
	jmp	.LBB3_37
.LBB3_20:                               # %if.end.22
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rsi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_enum_get_value_by_nick
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_22
# BB#21:                                # %if.then.27
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_enum_get_value_by_name
	movq	%rax, -56(%rbp)
.LBB3_22:                               # %if.end.31
                                        #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB3_24
# BB#23:                                # %if.then.33
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 12(%rax)
.LBB3_24:                               # %if.end.35
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_32
.LBB3_25:                               # %sw.bb.36
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$261, -60(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB3_27
# BB#26:                                # %if.then.39
	jmp	.LBB3_37
.LBB3_27:                               # %if.end.40
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_32
.LBB3_28:                               # %sw.bb.41
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rsi
	callq	gimp_session_info_aux_deserialize
	movl	%eax, -60(%rbp)
	cmpl	$40, -60(%rbp)
	je	.LBB3_30
# BB#29:                                # %if.then.45
	jmp	.LBB3_37
.LBB3_30:                               # %if.end.46
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_32
.LBB3_31:                               # %sw.default
	jmp	.LBB3_37
.LBB3_32:                               # %sw.epilog
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$41, -60(%rbp)
	jmp	.LBB3_35
.LBB3_33:                               # %sw.bb.47
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$40, -60(%rbp)
	jmp	.LBB3_35
.LBB3_34:                               # %sw.default.48
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_35
.LBB3_35:                               # %sw.epilog.49
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_13
.LBB3_36:                               # %while.end
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movabsq	$.L.str.5, %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.6, %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.7, %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.11, %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movl	-60(%rbp), %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB3_38
.LBB3_37:                               # %error
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_session_info_dockable_free
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movl	-60(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB3_38:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_session_info_dockable_deserialize, .Lfunc_end3-gimp_session_info_dockable_deserialize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_17
	.quad	.LBB3_18
	.quad	.LBB3_25
	.quad	.LBB3_28

	.text
	.globl	gimp_session_info_dockable_from_widget
	.align	16, 0x90
	.type	gimp_session_info_dockable_from_widget,@function
gimp_session_info_dockable_from_widget: # @gimp_session_info_dockable_from_widget
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	$-1, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dockable_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.9
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dockable_from_widget, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_32
.LBB4_11:                               # %if.end.11
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dialog_factory_from_widget
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#13:                                # %do.body.15
	cmpq	$0, -32(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.17
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.18
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dockable_from_widget, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_32
.LBB4_16:                               # %if.end.19
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.20
	callq	gimp_session_info_dockable_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_get_locked
	movq	-24(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rdi
	callq	gimp_dockable_get_tab_style
	movq	-24(%rbp), %rdi
	movl	%eax, 12(%rdi)
	movq	-24(%rbp), %rdi
	movl	$-1, 16(%rdi)
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_by_dockable
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_19
# BB#18:                                # %if.then.29
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -44(%rbp)
.LBB4_19:                               # %if.end.31
	cmpl	$0, -44(%rbp)
	jle	.LBB4_22
# BB#20:                                # %land.lhs.true.33
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	56(%rcx), %eax
	je	.LBB4_22
# BB#21:                                # %if.then.36
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 16(%rcx)
.LBB4_22:                               # %if.end.38
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_session_managed_interface_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_24
# BB#23:                                # %if.then.47
	movl	$0, -92(%rbp)
	jmp	.LBB4_29
.LBB4_24:                               # %if.else.48
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_27
# BB#25:                                # %land.lhs.true.51
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_27
# BB#26:                                # %if.then.55
	movl	$1, -92(%rbp)
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.56
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_28:                               # %if.end.58
	jmp	.LBB4_29
.LBB4_29:                               # %if.end.59
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_31
# BB#30:                                # %if.then.62
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_session_managed_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_session_managed_get_aux_info
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
.LBB4_31:                               # %if.end.66
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_session_info_dockable_from_widget, .Lfunc_end4-gimp_session_info_dockable_from_widget
	.cfi_endproc

	.globl	gimp_session_info_dockable_restore
	.align	16, 0x90
	.type	gimp_session_info_dockable_restore,@function
gimp_session_info_dockable_restore:     # @gimp_session_info_dockable_restore
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dockable_restore, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_27
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.2
	movl	$0, -52(%rbp)
	jmp	.LBB5_13
.LBB5_8:                                # %if.else.3
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_11
# BB#9:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_11
# BB#10:                                # %if.then.7
	movl	$1, -52(%rbp)
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_12:                               # %if.end.10
	jmp	.LBB5_13
.LBB5_13:                               # %if.end.11
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dockable_restore, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_27
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	cmpl	$12, 16(%rax)
	jl	.LBB5_19
# BB#18:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$192, 16(%rax)
	jle	.LBB5_20
.LBB5_19:                               # %if.then.20
	movq	-16(%rbp), %rax
	movl	$-1, 16(%rax)
.LBB5_20:                               # %if.end.22
	movq	-24(%rbp), %rdi
	callq	gimp_dock_get_dialog_factory
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdx
	movq	-16(%rbp), %rdi
	movl	16(%rdi), %ecx
	movq	%rax, %rdi
	callq	gimp_dialog_factory_dockable_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB5_26
# BB#21:                                # %if.then.27
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dockable_get_dockbook
	cmpq	$0, %rax
	je	.LBB5_23
# BB#22:                                # %if.then.32
	movq	$0, -8(%rbp)
	jmp	.LBB5_27
.LBB5_23:                               # %if.end.33
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_dockable_set_locked
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	12(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_dockable_set_tab_style
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB5_25
# BB#24:                                # %if.then.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_session_managed_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_session_managed_set_aux_info
.LBB5_25:                               # %if.end.43
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.44
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dockable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB5_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_session_info_dockable_restore, .Lfunc_end5-gimp_session_info_dockable_restore
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_session_info_dockable_free,@object # @__func__.gimp_session_info_dockable_free
.L__func__.gimp_session_info_dockable_free:
	.asciz	"gimp_session_info_dockable_free"
	.size	.L__func__.gimp_session_info_dockable_free, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"info != NULL"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"icon"
	.size	.L.str.2, 5

	.type	.L__func__.gimp_session_info_dockable_serialize,@object # @__func__.gimp_session_info_dockable_serialize
.L__func__.gimp_session_info_dockable_serialize:
	.asciz	"gimp_session_info_dockable_serialize"
	.size	.L__func__.gimp_session_info_dockable_serialize, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"writer != NULL"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dockable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"locked"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tab-style"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"preview-size"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%d"
	.size	.L.str.8, 3

	.type	.L__func__.gimp_session_info_dockable_deserialize,@object # @__func__.gimp_session_info_dockable_deserialize
.L__func__.gimp_session_info_dockable_deserialize:
	.asciz	"gimp_session_info_dockable_deserialize"
	.size	.L__func__.gimp_session_info_dockable_deserialize, 39

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"scanner != NULL"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dockable != NULL"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"aux-info"
	.size	.L.str.11, 9

	.type	.L__func__.gimp_session_info_dockable_from_widget,@object # @__func__.gimp_session_info_dockable_from_widget
.L__func__.gimp_session_info_dockable_from_widget:
	.asciz	"gimp_session_info_dockable_from_widget"
	.size	.L__func__.gimp_session_info_dockable_from_widget, 39

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_DOCKABLE (dockable)"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"entry != NULL"
	.size	.L.str.13, 14

	.type	.L__func__.gimp_session_info_dockable_restore,@object # @__func__.gimp_session_info_dockable_restore
.L__func__.gimp_session_info_dockable_restore:
	.asciz	"gimp_session_info_dockable_restore"
	.size	.L__func__.gimp_session_info_dockable_restore, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_IS_DOCK (dock)"
	.size	.L.str.14, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
