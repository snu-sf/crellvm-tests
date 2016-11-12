	.text
	.file	"gimpsessioninfo-book.bc"
	.globl	gimp_session_info_book_new
	.align	16, 0x90
	.type	gimp_session_info_book_new,@function
gimp_session_info_book_new:             # @gimp_session_info_book_new
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
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_session_info_book_new, .Lfunc_end0-gimp_session_info_book_new
	.cfi_endproc

	.globl	gimp_session_info_book_free
	.align	16, 0x90
	.type	gimp_session_info_book_free,@function
gimp_session_info_book_free:            # @gimp_session_info_book_free
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
	movabsq	$.L__func__.gimp_session_info_book_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_9
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	movabsq	$gimp_session_info_dockable_free, %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.LBB1_7:                                # %if.end.4
	jmp	.LBB1_8
.LBB1_8:                                # %do.body.5
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_9:                                # %do.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_session_info_book_free, .Lfunc_end1-gimp_session_info_book_free
	.cfi_endproc

	.globl	gimp_session_info_book_serialize
	.align	16, 0x90
	.type	gimp_session_info_book_serialize,@function
gimp_session_info_book_serialize:       # @gimp_session_info_book_serialize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_book_serialize, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_20
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
	movabsq	$.L__func__.gimp_session_info_book_serialize, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_20
.LBB2_9:                                # %if.end.5
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.6
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rsi
	cmpl	$0, (%rsi)
	je	.LBB2_12
# BB#11:                                # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_session_write_position
.LBB2_12:                               # %if.end.10
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_open
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB2_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_session_info_dockable_serialize
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %cond.false
                                        #   in Loop: Header=BB2_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB2_18
.LBB2_18:                               # %cond.end
                                        #   in Loop: Header=BB2_13 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB2_13
.LBB2_19:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_20:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_session_info_book_serialize, .Lfunc_end2-gimp_session_info_book_serialize
	.cfi_endproc

	.globl	gimp_session_info_book_deserialize
	.align	16, 0x90
	.type	gimp_session_info_book_deserialize,@function
gimp_session_info_book_deserialize:     # @gimp_session_info_book_deserialize
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
	subq	$96, %rsp
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
	movabsq	$.L__func__.gimp_session_info_book_deserialize, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$40, -4(%rbp)
	jmp	.LBB3_32
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
	movabsq	$.L__func__.gimp_session_info_book_deserialize, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$40, -4(%rbp)
	jmp	.LBB3_32
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	movabsq	$.L.str.8, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.4, %rdx
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.9, %rdx
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	callq	gimp_session_info_book_new
	movq	%rax, -40(%rbp)
	movl	$40, -44(%rbp)
.LBB3_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-44(%rbp), %eax
	jne	.LBB3_30
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -44(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB3_13
	jmp	.LBB3_33
.LBB3_33:                               # %while.body
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB3_27
	jmp	.LBB3_34
.LBB3_34:                               # %while.body
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB3_14
	jmp	.LBB3_28
.LBB3_13:                               # %sw.bb
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$265, -44(%rbp)         # imm = 0x109
	jmp	.LBB3_29
.LBB3_14:                               # %sw.bb.10
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	je	.LBB3_15
	jmp	.LBB3_35
.LBB3_35:                               # %sw.bb.10
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB3_18
	jmp	.LBB3_36
.LBB3_36:                               # %sw.bb.10
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB3_21
	jmp	.LBB3_25
.LBB3_15:                               # %sw.bb.11
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$261, -44(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB3_17
# BB#16:                                # %if.then.13
	jmp	.LBB3_31
.LBB3_17:                               # %if.end.14
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_26
.LBB3_18:                               # %sw.bb.15
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$261, -44(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB3_20
# BB#19:                                # %if.then.18
	jmp	.LBB3_31
.LBB3_20:                               # %if.end.19
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_26
.LBB3_21:                               # %sw.bb.20
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	g_scanner_set_scope
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_session_info_dockable_deserialize
	movl	%eax, -44(%rbp)
	cmpl	$40, -44(%rbp)
	jne	.LBB3_23
# BB#22:                                # %if.then.26
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_set_scope
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.30
	jmp	.LBB3_31
.LBB3_24:                               # %if.end.31
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_26
.LBB3_25:                               # %sw.default
	jmp	.LBB3_31
.LBB3_26:                               # %sw.epilog
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$41, -44(%rbp)
	jmp	.LBB3_29
.LBB3_27:                               # %sw.bb.32
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$40, -44(%rbp)
	jmp	.LBB3_29
.LBB3_28:                               # %sw.default.33
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_29
.LBB3_29:                               # %sw.epilog.34
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_11
.LBB3_30:                               # %while.end
	movabsq	$.L.str.8, %rdx
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.4, %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.9, %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movl	-44(%rbp), %esi
	movl	%esi, -4(%rbp)
	jmp	.LBB3_32
.LBB3_31:                               # %error
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_session_info_book_free
	movl	-44(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB3_32:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_session_info_book_deserialize, .Lfunc_end3-gimp_session_info_book_deserialize
	.cfi_endproc

	.globl	gimp_session_info_book_from_widget
	.align	16, 0x90
	.type	gimp_session_info_book_from_widget,@function
gimp_session_info_book_from_widget:     # @gimp_session_info_book_from_widget
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dockbook_get_type
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
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_book_from_widget, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_31
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_session_info_book_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_paned_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.23
	movl	$0, -92(%rbp)
	jmp	.LBB4_19
.LBB4_14:                               # %if.else.24
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_17
# BB#15:                                # %land.lhs.true.27
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_17
# BB#16:                                # %if.then.31
	movl	$1, -92(%rbp)
	jmp	.LBB4_18
.LBB4_17:                               # %if.else.32
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_18:                               # %if.end.34
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.35
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_23
# BB#20:                                # %if.then.38
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_child2
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_22
# BB#21:                                # %if.then.46
	movq	-104(%rbp), %rdi
	callq	gtk_paned_get_position
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB4_22:                               # %if.end.48
	jmp	.LBB4_23
.LBB4_23:                               # %if.end.49
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_current_page
	movq	-24(%rbp), %rsi
	movl	%eax, 4(%rsi)
	movq	-16(%rbp), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB4_24:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB4_30
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_session_info_dockable_from_widget
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB4_24 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB4_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB4_29
.LBB4_28:                               # %cond.false
                                        #   in Loop: Header=BB4_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB4_29
.LBB4_29:                               # %cond.end
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB4_24
.LBB4_30:                               # %for.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_list_reverse
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-40(%rbp), %rdi
	callq	g_list_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_31:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_session_info_book_from_widget, .Lfunc_end4-gimp_session_info_book_from_widget
	.cfi_endproc

	.globl	gimp_session_info_book_restore
	.align	16, 0x90
	.type	gimp_session_info_book_restore,@function
gimp_session_info_book_restore:         # @gimp_session_info_book_restore
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -44(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_book_restore, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_32
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.2
	movl	$0, -68(%rbp)
	jmp	.LBB5_13
.LBB5_8:                                # %if.else.3
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_11
# BB#9:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB5_11
# BB#10:                                # %if.then.7
	movl	$1, -68(%rbp)
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.8
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB5_12:                               # %if.end.10
	jmp	.LBB5_13
.LBB5_13:                               # %if.end.11
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_book_restore, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_32
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	global_menu_factory, %rdi
	callq	gimp_dockbook_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_add_book
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB5_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB5_26
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_session_info_dockable_restore
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB5_21
# BB#20:                                # %if.then.25
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dockbook_add
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
.LBB5_21:                               # %if.end.28
                                        #   in Loop: Header=BB5_18 Depth=1
	jmp	.LBB5_22
.LBB5_22:                               # %for.inc
                                        #   in Loop: Header=BB5_18 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB5_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB5_25
.LBB5_24:                               # %cond.false
                                        #   in Loop: Header=BB5_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB5_25
.LBB5_25:                               # %cond.end
                                        #   in Loop: Header=BB5_18 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB5_18
.LBB5_26:                               # %for.end
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_notebook_get_n_pages
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_28
# BB#27:                                # %if.then.34
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
	jmp	.LBB5_31
.LBB5_28:                               # %if.else.38
	cmpl	$1, -44(%rbp)
	jle	.LBB5_30
# BB#29:                                # %if.then.40
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
.LBB5_30:                               # %if.end.43
	jmp	.LBB5_31
.LBB5_31:                               # %if.end.44
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB5_32:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_session_info_book_restore, .Lfunc_end5-gimp_session_info_book_restore
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_session_info_book_free,@object # @__func__.gimp_session_info_book_free
.L__func__.gimp_session_info_book_free:
	.asciz	"gimp_session_info_book_free"
	.size	.L__func__.gimp_session_info_book_free, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"info != NULL"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_session_info_book_serialize,@object # @__func__.gimp_session_info_book_serialize
.L__func__.gimp_session_info_book_serialize:
	.asciz	"gimp_session_info_book_serialize"
	.size	.L__func__.gimp_session_info_book_serialize, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"writer != NULL"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"book"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"current-page"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%d"
	.size	.L.str.5, 3

	.type	.L__func__.gimp_session_info_book_deserialize,@object # @__func__.gimp_session_info_book_deserialize
.L__func__.gimp_session_info_book_deserialize:
	.asciz	"gimp_session_info_book_deserialize"
	.size	.L__func__.gimp_session_info_book_deserialize, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"scanner != NULL"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"book != NULL"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"position"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dockable"
	.size	.L.str.9, 9

	.type	.L__func__.gimp_session_info_book_from_widget,@object # @__func__.gimp_session_info_book_from_widget
.L__func__.gimp_session_info_book_from_widget:
	.asciz	"gimp_session_info_book_from_widget"
	.size	.L__func__.gimp_session_info_book_from_widget, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_DOCKBOOK (dockbook)"
	.size	.L.str.10, 28

	.type	.L__func__.gimp_session_info_book_restore,@object # @__func__.gimp_session_info_book_restore
.L__func__.gimp_session_info_book_restore:
	.asciz	"gimp_session_info_book_restore"
	.size	.L__func__.gimp_session_info_book_restore, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_DOCK (dock)"
	.size	.L.str.11, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
