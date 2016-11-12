	.text
	.file	"gimpsessioninfo-dock.bc"
	.globl	gimp_session_info_dock_new
	.align	16, 0x90
	.type	gimp_session_info_dock_new,@function
gimp_session_info_dock_new:             # @gimp_session_info_dock_new
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
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movl	$-1, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_session_info_dock_new, .Lfunc_end0-gimp_session_info_dock_new
	.cfi_endproc

	.globl	gimp_session_info_dock_free
	.align	16, 0x90
	.type	gimp_session_info_dock_free,@function
gimp_session_info_dock_free:            # @gimp_session_info_dock_free
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
	movabsq	$.L__func__.gimp_session_info_dock_free, %rsi
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
	cmpq	$0, 16(%rax)
	je	.LBB1_9
# BB#8:                                 # %if.then.6
	movabsq	$gimp_session_info_book_free, %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
.LBB1_9:                                # %if.end.9
	jmp	.LBB1_10
.LBB1_10:                               # %do.body.10
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_11:                               # %do.end.11
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_session_info_dock_free, .Lfunc_end1-gimp_session_info_dock_free
	.cfi_endproc

	.globl	gimp_session_info_dock_serialize
	.align	16, 0x90
	.type	gimp_session_info_dock_serialize,@function
gimp_session_info_dock_serialize:       # @gimp_session_info_dock_serialize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dock_serialize, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_22
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
	movabsq	$.L__func__.gimp_session_info_dock_serialize, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_22
.LBB2_9:                                # %if.end.5
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.6
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rax
	cmpl	$-1, 8(%rax)
	je	.LBB2_12
# BB#11:                                # %if.then.8
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.4, %rax
	movabsq	$.L.str.3, %rcx
	movq	-16(%rbp), %rdx
	cmpl	$0, 8(%rdx)
	cmoveq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %r8d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%r8d, %edx
	callq	gimp_config_writer_print
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_12:                               # %if.end.11
	movq	-16(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.14
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	12(%rax), %esi
	callq	gimp_session_write_position
.LBB2_14:                               # %if.end.16
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB2_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_21
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_session_info_book_serialize
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB2_15 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB2_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_20
.LBB2_19:                               # %cond.false
                                        #   in Loop: Header=BB2_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_20
.LBB2_20:                               # %cond.end
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB2_15
.LBB2_21:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB2_22:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_session_info_dock_serialize, .Lfunc_end2-gimp_session_info_dock_serialize
	.cfi_endproc

	.globl	gimp_session_info_dock_deserialize
	.align	16, 0x90
	.type	gimp_session_info_dock_deserialize,@function
gimp_session_info_dock_deserialize:     # @gimp_session_info_dock_deserialize
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
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dock_deserialize, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$40, -4(%rbp)
	jmp	.LBB3_34
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
	movabsq	$.L__func__.gimp_session_info_dock_deserialize, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$40, -4(%rbp)
	jmp	.LBB3_34
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	movabsq	$.L.str.5, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.7, %rdx
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movabsq	$.L.str.8, %rdx
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_add_symbol
	movq	-40(%rbp), %rdi
	callq	gimp_session_info_dock_new
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$40, -44(%rbp)
.LBB3_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-44(%rbp), %eax
	jne	.LBB3_33
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
	jmp	.LBB3_35
.LBB3_35:                               # %while.body
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB3_30
	jmp	.LBB3_36
.LBB3_36:                               # %while.body
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB3_14
	jmp	.LBB3_31
.LBB3_13:                               # %sw.bb
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$265, -44(%rbp)         # imm = 0x109
	jmp	.LBB3_32
.LBB3_14:                               # %sw.bb.10
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	je	.LBB3_15
	jmp	.LBB3_37
.LBB3_37:                               # %sw.bb.10
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB3_21
	jmp	.LBB3_38
.LBB3_38:                               # %sw.bb.10
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB3_24
	jmp	.LBB3_28
.LBB3_15:                               # %sw.bb.11
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$266, -44(%rbp)         # imm = 0x10A
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-44(%rbp), %eax
	je	.LBB3_17
# BB#16:                                # %if.then.15
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_29
.LBB3_17:                               # %if.end.16
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rsi
	movl	$.L.str.3, %ecx
	movl	%ecx, %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_19
# BB#18:                                # %if.then.22
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 8(%rax)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.23
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, 8(%rax)
.LBB3_20:                               # %if.end.25
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_29
.LBB3_21:                               # %sw.bb.26
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$261, -44(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$12, %rax
	movq	%rax, %rsi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB3_23
# BB#22:                                # %if.then.28
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 12(%rax)
.LBB3_23:                               # %if.end.30
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_29
.LBB3_24:                               # %sw.bb.31
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
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_session_info_book_deserialize
	movl	%eax, -44(%rbp)
	cmpl	$40, -44(%rbp)
	jne	.LBB3_26
# BB#25:                                # %if.then.37
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, 16(%rsi)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_set_scope
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB3_27
.LBB3_26:                               # %if.else.41
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_34
.LBB3_27:                               # %if.end.42
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_29
.LBB3_28:                               # %sw.default
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_34
.LBB3_29:                               # %sw.epilog
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$41, -44(%rbp)
	jmp	.LBB3_32
.LBB3_30:                               # %sw.bb.43
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$40, -44(%rbp)
	jmp	.LBB3_32
.LBB3_31:                               # %sw.default.44
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_32
.LBB3_32:                               # %sw.epilog.45
                                        #   in Loop: Header=BB3_11 Depth=1
	jmp	.LBB3_11
.LBB3_33:                               # %while.end
	movabsq	$.L.str.8, %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.7, %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movabsq	$.L.str.5, %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_scanner_scope_remove_symbol
	movl	-44(%rbp), %esi
	movl	%esi, -4(%rbp)
.LBB3_34:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_session_info_dock_deserialize, .Lfunc_end3-gimp_session_info_dock_deserialize
	.cfi_endproc

	.globl	gimp_session_info_dock_from_widget
	.align	16, 0x90
	.type	gimp_session_info_dock_from_widget,@function
gimp_session_info_dock_from_widget:     # @gimp_session_info_dock_from_widget
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
	movq	%rax, -48(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dock_from_widget, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_38
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.19
	movl	$0, -84(%rbp)
	jmp	.LBB4_19
.LBB4_14:                               # %if.else.20
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_17
# BB#15:                                # %land.lhs.true.23
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_17
# BB#16:                                # %if.then.27
	movl	$1, -84(%rbp)
	jmp	.LBB4_18
.LBB4_17:                               # %if.else.28
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_18:                               # %if.end.30
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.31
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.10, %rcx
	movl	-84(%rbp), %edx
	movl	%edx, -88(%rbp)
	cmpl	$0, -88(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rdi
	callq	gimp_session_info_dock_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dock_get_dockbooks
	movq	%rax, -32(%rbp)
.LBB4_20:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_26
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB4_20 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_session_info_book_from_widget
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB4_20 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB4_20 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB4_25
.LBB4_24:                               # %cond.false
                                        #   in Loop: Header=BB4_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB4_25
.LBB4_25:                               # %cond.end
                                        #   in Loop: Header=BB4_20 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB4_20
.LBB4_26:                               # %for.end
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_reverse
	movq	-24(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	callq	gimp_session_info_dock_get_side
	movq	-24(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_paned_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB4_28
# BB#27:                                # %if.then.58
	movl	$0, -116(%rbp)
	jmp	.LBB4_33
.LBB4_28:                               # %if.else.59
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_31
# BB#29:                                # %land.lhs.true.62
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB4_31
# BB#30:                                # %if.then.66
	movl	$1, -116(%rbp)
	jmp	.LBB4_32
.LBB4_31:                               # %if.else.67
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB4_32:                               # %if.end.69
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.70
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB4_37
# BB#34:                                # %if.then.73
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_child2
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_36
# BB#35:                                # %if.then.81
	movq	-128(%rbp), %rdi
	callq	gtk_paned_get_position
	movq	-24(%rbp), %rdi
	movl	%eax, 12(%rdi)
.LBB4_36:                               # %if.end.83
	jmp	.LBB4_37
.LBB4_37:                               # %if.end.84
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_38:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_session_info_dock_from_widget, .Lfunc_end4-gimp_session_info_dock_from_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_session_info_dock_get_side,@function
gimp_session_info_dock_get_side:        # @gimp_session_info_dock_get_side
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	$-1, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_dock_container_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_5
# BB#4:                                 # %if.then.6
	movl	$1, -44(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.else.7
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_6:                                # %if.end
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.9
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_9
# BB#8:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_dock_container_get_dock_side
	movl	%eax, -12(%rbp)
.LBB5_9:                                # %if.end.16
	movl	-12(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_session_info_dock_get_side, .Lfunc_end5-gimp_session_info_dock_get_side
	.cfi_endproc

	.globl	gimp_session_info_dock_restore
	.align	16, 0x90
	.type	gimp_session_info_dock_restore,@function
gimp_session_info_dock_restore:         # @gimp_session_info_dock_restore
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dock_restore, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_73
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gdk_screen_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dock_restore, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_73
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movq	-40(%rbp), %rdi
	callq	gimp_dock_container_get_ui_manager
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -56(%rbp)
# BB#25:                                # %do.body.41
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_dock_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB6_27
# BB#26:                                # %if.then.50
	movl	$0, -140(%rbp)
	jmp	.LBB6_32
.LBB6_27:                               # %if.else.51
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_30
# BB#28:                                # %land.lhs.true.54
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB6_30
# BB#29:                                # %if.then.58
	movl	$1, -140(%rbp)
	jmp	.LBB6_31
.LBB6_30:                               # %if.else.59
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB6_31:                               # %if.end.61
	jmp	.LBB6_32
.LBB6_32:                               # %if.end.62
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB6_34
# BB#33:                                # %if.then.65
	jmp	.LBB6_35
.LBB6_34:                               # %if.else.66
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_session_info_dock_restore, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_73
.LBB6_35:                               # %if.end.67
	jmp	.LBB6_36
.LBB6_36:                               # %do.end.68
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_container_add_dock
	cmpq	$0, -16(%rbp)
	je	.LBB6_38
# BB#37:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB6_39
.LBB6_38:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB6_39
.LBB6_39:                               # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
.LBB6_40:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB6_59
# BB#41:                                # %for.body
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_session_info_book_restore
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	je	.LBB6_54
# BB#42:                                # %if.then.81
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-160(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -168(%rbp)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gtk_paned_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB6_44
# BB#43:                                # %if.then.92
                                        #   in Loop: Header=BB6_40 Depth=1
	movl	$0, -188(%rbp)
	jmp	.LBB6_49
.LBB6_44:                               # %if.else.93
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_47
# BB#45:                                # %land.lhs.true.96
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB6_47
# BB#46:                                # %if.then.100
                                        #   in Loop: Header=BB6_40 Depth=1
	movl	$1, -188(%rbp)
	jmp	.LBB6_48
.LBB6_47:                               # %if.else.101
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB6_48:                               # %if.end.103
                                        #   in Loop: Header=BB6_40 Depth=1
	jmp	.LBB6_49
.LBB6_49:                               # %if.end.104
                                        #   in Loop: Header=BB6_40 Depth=1
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB6_53
# BB#50:                                # %if.then.107
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -200(%rbp)
	movq	-160(%rbp), %rax
	movq	-200(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_child2
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_52
# BB#51:                                # %if.then.113
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-200(%rbp), %rdi
	movq	-152(%rbp), %rax
	movl	(%rax), %esi
	callq	gtk_paned_set_position
.LBB6_52:                               # %if.end.114
                                        #   in Loop: Header=BB6_40 Depth=1
	jmp	.LBB6_53
.LBB6_53:                               # %if.end.115
                                        #   in Loop: Header=BB6_40 Depth=1
	jmp	.LBB6_54
.LBB6_54:                               # %if.end.116
                                        #   in Loop: Header=BB6_40 Depth=1
	jmp	.LBB6_55
.LBB6_55:                               # %for.inc
                                        #   in Loop: Header=BB6_40 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB6_57
# BB#56:                                # %cond.true.118
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB6_58
.LBB6_57:                               # %cond.false.119
                                        #   in Loop: Header=BB6_40 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB6_58
.LBB6_58:                               # %cond.end.120
                                        #   in Loop: Header=BB6_40 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB6_40
.LBB6_59:                               # %for.end
	cmpq	$0, -16(%rbp)
	je	.LBB6_68
# BB#60:                                # %land.lhs.true.123
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_68
# BB#61:                                # %if.then.126
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_get_dockbooks
	movq	%rax, %rdi
	callq	g_list_copy
	movq	%rax, -208(%rbp)
.LBB6_62:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -208(%rbp)
	je	.LBB6_67
# BB#63:                                # %while.body
                                        #   in Loop: Header=BB6_62 Depth=1
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	gtk_container_get_children
	movq	%rax, -224(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB6_65
# BB#64:                                # %if.then.140
                                        #   in Loop: Header=BB6_62 Depth=1
	movq	-224(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB6_66
.LBB6_65:                               # %if.else.141
                                        #   in Loop: Header=BB6_62 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-56(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-216(%rbp), %rsi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	callq	gimp_dockbook_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_remove_book
	movq	-216(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	-44(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
.LBB6_66:                               # %if.end.149
                                        #   in Loop: Header=BB6_62 Depth=1
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	%rax, -208(%rbp)
	jmp	.LBB6_62
.LBB6_67:                               # %while.end
	jmp	.LBB6_68
.LBB6_68:                               # %if.end.151
	cmpq	$0, -16(%rbp)
	je	.LBB6_72
# BB#69:                                # %land.lhs.true.153
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_72
# BB#70:                                # %land.lhs.true.156
	cmpl	$0, -44(%rbp)
	jne	.LBB6_72
# BB#71:                                # %if.then.158
	movq	$0, -8(%rbp)
	jmp	.LBB6_73
.LBB6_72:                               # %if.end.159
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB6_73:                               # %return
	movq	-8(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_session_info_dock_restore, .Lfunc_end6-gimp_session_info_dock_restore
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_session_info_dock_free,@object # @__func__.gimp_session_info_dock_free
.L__func__.gimp_session_info_dock_free:
	.asciz	"gimp_session_info_dock_free"
	.size	.L__func__.gimp_session_info_dock_free, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"dock_info != NULL"
	.size	.L.str.1, 18

	.type	.L__func__.gimp_session_info_dock_serialize,@object # @__func__.gimp_session_info_dock_serialize
.L__func__.gimp_session_info_dock_serialize:
	.asciz	"gimp_session_info_dock_serialize"
	.size	.L__func__.gimp_session_info_dock_serialize, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"writer != NULL"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"left"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"right"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"side"
	.size	.L.str.5, 5

	.type	.L__func__.gimp_session_info_dock_deserialize,@object # @__func__.gimp_session_info_dock_deserialize
.L__func__.gimp_session_info_dock_deserialize:
	.asciz	"gimp_session_info_dock_deserialize"
	.size	.L__func__.gimp_session_info_dock_deserialize, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"scanner != NULL"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"position"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"book"
	.size	.L.str.8, 5

	.type	.L__func__.gimp_session_info_dock_from_widget,@object # @__func__.gimp_session_info_dock_from_widget
.L__func__.gimp_session_info_dock_from_widget:
	.asciz	"gimp_session_info_dock_from_widget"
	.size	.L__func__.gimp_session_info_dock_from_widget, 35

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_DOCK (dock)"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-toolbox"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-dock"
	.size	.L.str.11, 10

	.type	.L__func__.gimp_session_info_dock_restore,@object # @__func__.gimp_session_info_dock_restore
.L__func__.gimp_session_info_dock_restore:
	.asciz	"gimp_session_info_dock_restore"
	.size	.L__func__.gimp_session_info_dock_restore, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_DIALOG_FACTORY (factory)"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GDK_IS_SCREEN (screen)"
	.size	.L.str.13, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
