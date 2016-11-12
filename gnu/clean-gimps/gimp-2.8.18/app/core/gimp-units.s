	.text
	.file	"gimp-units.bc"
	.globl	gimp_units_init
	.align	16, 0x90
	.type	gimp_units_init,@function
gimp_units_init:                        # @gimp_units_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_units_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 328(%rax)
.LBB0_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_units_init, .Lfunc_end0-gimp_units_init
	.cfi_endproc

	.globl	gimp_units_exit
	.align	16, 0x90
	.type	gimp_units_exit,@function
gimp_units_exit:                        # @gimp_units_exit
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_units_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_13
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_user_units_free
.LBB1_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_units_exit, .Lfunc_end1-gimp_units_exit
	.cfi_endproc

	.globl	gimp_unitrc_load
	.align	16, 0x90
	.type	gimp_unitrc_load,@function
gimp_unitrc_load:                       # @gimp_unitrc_load
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_unitrc_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_34
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movabsq	$.L.str.2, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.3, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB2_14:                               # %if.end.15
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_new_file
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_17
# BB#15:                                # %land.lhs.true.18
	movq	-40(%rbp), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB2_17
# BB#16:                                # %if.then.20
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-16(%rbp), %rdi
	callq	g_free
	callq	gimp_sysconf_directory
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_new_file
	movq	%rax, -24(%rbp)
.LBB2_17:                               # %if.end.24
	cmpq	$0, -24(%rbp)
	jne	.LBB2_19
# BB#18:                                # %if.then.26
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-16(%rbp), %rdi
	callq	g_free
	jmp	.LBB2_34
.LBB2_19:                               # %if.end.27
	xorl	%esi, %esi
	movabsq	$.L.str.4, %rdx
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$1, %esi
	movabsq	$.L.str.5, %rdx
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$1, %esi
	movabsq	$.L.str.6, %rdx
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$1, %esi
	movabsq	$.L.str.7, %rdx
	movl	$4, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$1, %esi
	movabsq	$.L.str.8, %rdx
	movl	$5, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$1, %esi
	movabsq	$.L.str.9, %rdx
	movl	$6, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$1, %esi
	movabsq	$.L.str.10, %rdx
	movl	$7, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$40, -28(%rbp)
.LBB2_20:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-28(%rbp), %eax
	jne	.LBB2_31
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB2_20 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB2_22
	jmp	.LBB2_35
.LBB2_35:                               # %while.body
                                        #   in Loop: Header=BB2_20 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB2_28
	jmp	.LBB2_36
.LBB2_36:                               # %while.body
                                        #   in Loop: Header=BB2_20 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB2_23
	jmp	.LBB2_29
.LBB2_22:                               # %sw.bb
                                        #   in Loop: Header=BB2_20 Depth=1
	movl	$265, -28(%rbp)         # imm = 0x109
	jmp	.LBB2_30
.LBB2_23:                               # %sw.bb.31
                                        #   in Loop: Header=BB2_20 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	cmpq	%rcx, 48(%rdx)
	jne	.LBB2_27
# BB#24:                                # %if.then.33
                                        #   in Loop: Header=BB2_20 Depth=1
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	g_scanner_set_scope
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_unitrc_unit_info_deserialize
	movl	%eax, -28(%rbp)
	cmpl	$41, -28(%rbp)
	jne	.LBB2_26
# BB#25:                                # %if.then.37
                                        #   in Loop: Header=BB2_20 Depth=1
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	g_scanner_set_scope
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB2_26:                               # %if.end.39
                                        #   in Loop: Header=BB2_20 Depth=1
	jmp	.LBB2_27
.LBB2_27:                               # %if.end.40
                                        #   in Loop: Header=BB2_20 Depth=1
	jmp	.LBB2_30
.LBB2_28:                               # %sw.bb.41
                                        #   in Loop: Header=BB2_20 Depth=1
	movl	$40, -28(%rbp)
	jmp	.LBB2_30
.LBB2_29:                               # %sw.default
                                        #   in Loop: Header=BB2_20 Depth=1
	jmp	.LBB2_30
.LBB2_30:                               # %sw.epilog
                                        #   in Loop: Header=BB2_20 Depth=1
	jmp	.LBB2_20
.LBB2_31:                               # %while.end
	cmpl	$40, -28(%rbp)
	je	.LBB2_33
# BB#32:                                # %if.then.43
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %esi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$1, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-96(%rbp), %edx         # 4-byte Reload
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movq	%rcx, %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-16(%rbp), %rdi
	callq	gimp_config_file_backup_on_error
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB2_33:                               # %if.end.47
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_destroy
	movq	-16(%rbp), %rdi
	callq	g_free
.LBB2_34:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_unitrc_load, .Lfunc_end2-gimp_unitrc_load
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_unitrc_unit_info_deserialize,@function
gimp_unitrc_unit_info_deserialize:      # @gimp_unitrc_unit_info_deserialize
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
	subq	$128, %rsp
	leaq	-32(%rbp), %rax
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$2, -44(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_36
.LBB3_2:                                # %if.end
	movl	$40, -84(%rbp)
.LBB3_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-84(%rbp), %eax
	jne	.LBB3_30
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -84(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB3_5
	jmp	.LBB3_37
.LBB3_37:                               # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB3_27
	jmp	.LBB3_38
.LBB3_38:                               # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB3_6
	jmp	.LBB3_28
.LBB3_5:                                # %sw.bb
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$265, -84(%rbp)         # imm = 0x109
	jmp	.LBB3_29
.LBB3_6:                                # %sw.bb.3
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	addl	$-2, %ecx
	movl	%ecx, %eax
	subl	$5, %ecx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	ja	.LBB3_25
# BB#39:                                # %sw.bb.3
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_7:                                # %sw.bb.4
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-40(%rbp), %rsi
	movl	$263, -84(%rbp)         # imm = 0x107
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_float
	cmpl	$0, %eax
	jne	.LBB3_9
# BB#8:                                 # %if.then.7
	jmp	.LBB3_35
.LBB3_9:                                # %if.end.8
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_26
.LBB3_10:                               # %sw.bb.9
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-44(%rbp), %rsi
	movl	$261, -84(%rbp)         # imm = 0x105
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_int
	cmpl	$0, %eax
	jne	.LBB3_12
# BB#11:                                # %if.then.12
	jmp	.LBB3_35
.LBB3_12:                               # %if.end.13
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_26
.LBB3_13:                               # %sw.bb.14
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-56(%rbp), %rsi
	movl	$264, -84(%rbp)         # imm = 0x108
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_15
# BB#14:                                # %if.then.17
	jmp	.LBB3_35
.LBB3_15:                               # %if.end.18
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_26
.LBB3_16:                               # %sw.bb.19
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$264, -84(%rbp)         # imm = 0x108
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_18
# BB#17:                                # %if.then.22
	jmp	.LBB3_35
.LBB3_18:                               # %if.end.23
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_26
.LBB3_19:                               # %sw.bb.24
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-72(%rbp), %rsi
	movl	$264, -84(%rbp)         # imm = 0x108
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_21
# BB#20:                                # %if.then.27
	jmp	.LBB3_35
.LBB3_21:                               # %if.end.28
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_26
.LBB3_22:                               # %sw.bb.29
                                        #   in Loop: Header=BB3_3 Depth=1
	leaq	-80(%rbp), %rsi
	movl	$264, -84(%rbp)         # imm = 0x108
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_parse_string
	cmpl	$0, %eax
	jne	.LBB3_24
# BB#23:                                # %if.then.32
	jmp	.LBB3_35
.LBB3_24:                               # %if.end.33
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_26
.LBB3_25:                               # %sw.default
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_26
.LBB3_26:                               # %sw.epilog
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$41, -84(%rbp)
	jmp	.LBB3_29
.LBB3_27:                               # %sw.bb.34
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$40, -84(%rbp)
	jmp	.LBB3_29
.LBB3_28:                               # %sw.default.35
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_29
.LBB3_29:                               # %sw.epilog.36
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_3
.LBB3_30:                               # %while.end
	cmpl	$40, -84(%rbp)
	jne	.LBB3_34
# BB#31:                                # %if.then.39
	movl	$41, -84(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-84(%rbp), %eax
	jne	.LBB3_33
# BB#32:                                # %if.then.43
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	callq	_gimp_unit_new
	xorl	%edx, %edx
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rdi
	movl	-88(%rbp), %esi
	callq	_gimp_unit_set_deletion_flag
.LBB3_33:                               # %if.end.45
	jmp	.LBB3_34
.LBB3_34:                               # %if.end.46
	jmp	.LBB3_35
.LBB3_35:                               # %cleanup
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_36:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_unitrc_unit_info_deserialize, .Lfunc_end3-gimp_unitrc_unit_info_deserialize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_7
	.quad	.LBB3_10
	.quad	.LBB3_13
	.quad	.LBB3_16
	.quad	.LBB3_19
	.quad	.LBB3_22

	.text
	.globl	gimp_unitrc_save
	.align	16, 0x90
	.type	gimp_unitrc_save,@function
gimp_unitrc_save:                       # @gimp_unitrc_save
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_unitrc_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_24
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movabsq	$.L.str.2, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.12, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB4_14:                               # %if.end.15
	movl	$1, %esi
	movabsq	$.L.str.13, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_new_file
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.18
	jmp	.LBB4_24
.LBB4_16:                               # %if.end.19
	movq	-8(%rbp), %rdi
	callq	_gimp_unit_get_number_of_built_in_units
	movl	%eax, -28(%rbp)
.LBB4_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	_gimp_unit_get_number_of_units
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB4_22
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB4_17 Depth=1
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	_gimp_unit_get_deletion_flag
	cmpl	$0, %eax
	jne	.LBB4_20
# BB#19:                                # %if.then.25
                                        #   in Loop: Header=BB4_17 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-28(%rbp), %eax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	_gimp_unit_get_identifier
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	leaq	-112(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	_gimp_unit_get_factor
	movl	$39, %esi
	movabsq	$.L.str.14, %rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	g_ascii_formatd
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_print
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.6, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %esi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	_gimp_unit_get_digits
	movabsq	$.L.str.15, %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.7, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movl	%ecx, %esi
	callq	_gimp_unit_get_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.8, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %esi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	_gimp_unit_get_abbreviation
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %esi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	_gimp_unit_get_singular
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.10, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %esi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	_gimp_unit_get_plural
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_writer_string
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
.LBB4_20:                               # %if.end.35
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_21
.LBB4_21:                               # %for.inc
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_17
.LBB4_22:                               # %for.end
	movabsq	$.L.str.16, %rsi
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_finish
	cmpl	$0, %eax
	jne	.LBB4_24
# BB#23:                                # %if.then.38
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB4_24:                               # %if.end.39
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_unitrc_save, .Lfunc_end4-gimp_unitrc_save
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_units_init,@object # @__func__.gimp_units_init
.L__func__.gimp_units_init:
	.asciz	"gimp_units_init"
	.size	.L__func__.gimp_units_init, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L__func__.gimp_units_exit,@object # @__func__.gimp_units_exit
.L__func__.gimp_units_exit:
	.asciz	"gimp_units_exit"
	.size	.L__func__.gimp_units_exit, 16

	.type	.L__func__.gimp_unitrc_load,@object # @__func__.gimp_unitrc_load
.L__func__.gimp_unitrc_load:
	.asciz	"gimp_unitrc_load"
	.size	.L__func__.gimp_unitrc_load, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"unitrc"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"unit-info"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"factor"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"digits"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"symbol"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"abbreviation"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"singular"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plural"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fatal parse error"
	.size	.L.str.11, 18

	.type	.L__func__.gimp_unitrc_save,@object # @__func__.gimp_unitrc_save
.L__func__.gimp_unitrc_save:
	.asciz	"gimp_unitrc_save"
	.size	.L__func__.gimp_unitrc_save, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Writing '%s'\n"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP units\n\nThis file contains the user unit database. You can edit this list with the unit editor. You are not supposed to edit it manually, but of course you can do.\nThis file will be entirely rewritten each time you exit."
	.size	.L.str.13, 225

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%f"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%d"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"end of units"
	.size	.L.str.16, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
