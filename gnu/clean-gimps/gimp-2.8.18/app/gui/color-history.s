	.text
	.file	"color-history.bc"
	.globl	color_history_save
	.align	16, 0x90
	.type	color_history_save,@function
color_history_save:                     # @color_history_save
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_history_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movabsq	$.L.str.2, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB0_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.3, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB0_14:                               # %if.end.15
	movl	$1, %esi
	movabsq	$.L.str.4, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	gimp_config_writer_new_file
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.18
	jmp	.LBB0_23
.LBB0_16:                               # %if.end.19
	cmpl	$0, color_history_initialized
	jne	.LBB0_18
# BB#17:                                # %if.then.21
	callq	color_history_init
.LBB0_18:                               # %if.end.22
	movabsq	$.L.str.5, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_open
	movl	$0, -28(%rbp)
.LBB0_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -28(%rbp)
	jge	.LBB0_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	$39, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$color_history, %rax
	leaq	-224(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$color_history, %rcx
	leaq	-224(%rbp), %rdi
	addq	$39, %rdi
	movslq	-28(%rbp), %r8
	shlq	$5, %r8
	addq	%r8, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$color_history, %rcx
	leaq	-224(%rbp), %rdi
	addq	$78, %rdi
	movslq	-28(%rbp), %r8
	shlq	$5, %r8
	addq	%r8, %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movl	$39, %esi
	movabsq	$.L.str.6, %rdx
	movabsq	$color_history, %rcx
	leaq	-224(%rbp), %rdi
	addq	$117, %rdi
	movslq	-28(%rbp), %r8
	shlq	$5, %r8
	addq	%r8, %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_ascii_formatd
	movabsq	$.L.str.7, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_config_writer_open
	movabsq	$.L.str.8, %rsi
	leaq	-224(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rcx
	addq	$39, %rcx
	movq	%rax, %rdx
	addq	$78, %rdx
	movq	%rax, %r8
	addq	$117, %r8
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%r8, -272(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-272(%rbp), %r9         # 8-byte Reload
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_19
.LBB0_22:                               # %for.end
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.9, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_finish
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB0_23:                               # %return
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
	.size	color_history_save, .Lfunc_end0-color_history_save
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	color_history_init,@function
color_history_init:                     # @color_history_init
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
	movl	$0, -4(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -4(%rbp)
	jge	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$color_history, %rax
	movslq	-4(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-16(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movl	$1, color_history_initialized
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	color_history_init, .Lfunc_end1-color_history_init
	.cfi_endproc

	.globl	color_history_restore
	.align	16, 0x90
	.type	color_history_restore,@function
color_history_restore:                  # @color_history_restore
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_history_restore, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_33
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
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB2_14:                               # %if.end.15
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_new_file
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	cmpq	$0, -24(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then.18
	jmp	.LBB2_33
.LBB2_16:                               # %if.end.19
	xorl	%esi, %esi
	movabsq	$.L.str.5, %rdx
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$40, -28(%rbp)
.LBB2_17:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_22 Depth 2
	movq	-24(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-28(%rbp), %eax
	jne	.LBB2_31
# BB#18:                                # %while.body
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -28(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB2_19
	jmp	.LBB2_34
.LBB2_34:                               # %while.body
                                        #   in Loop: Header=BB2_17 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB2_28
	jmp	.LBB2_35
.LBB2_35:                               # %while.body
                                        #   in Loop: Header=BB2_17 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB2_20
	jmp	.LBB2_29
.LBB2_19:                               # %sw.bb
                                        #   in Loop: Header=BB2_17 Depth=1
	movl	$265, -28(%rbp)         # imm = 0x109
	jmp	.LBB2_30
.LBB2_20:                               # %sw.bb.23
                                        #   in Loop: Header=BB2_17 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	cmpq	%rcx, 48(%rdx)
	jne	.LBB2_27
# BB#21:                                # %if.then.25
                                        #   in Loop: Header=BB2_17 Depth=1
	jmp	.LBB2_22
.LBB2_22:                               # %while.cond.26
                                        #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	$40, %eax
	jne	.LBB2_26
# BB#23:                                # %while.body.29
                                        #   in Loop: Header=BB2_22 Depth=2
	leaq	-88(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_parse_color
	cmpl	$0, %eax
	jne	.LBB2_25
# BB#24:                                # %if.then.33
	jmp	.LBB2_32
.LBB2_25:                               # %if.end.34
                                        #   in Loop: Header=BB2_22 Depth=2
	leaq	-88(%rbp), %rdi
	callq	color_history_add_from_rc
	jmp	.LBB2_22
.LBB2_26:                               # %while.end
                                        #   in Loop: Header=BB2_17 Depth=1
	jmp	.LBB2_27
.LBB2_27:                               # %if.end.35
                                        #   in Loop: Header=BB2_17 Depth=1
	movl	$41, -28(%rbp)
	jmp	.LBB2_30
.LBB2_28:                               # %sw.bb.36
                                        #   in Loop: Header=BB2_17 Depth=1
	movl	$40, -28(%rbp)
	jmp	.LBB2_30
.LBB2_29:                               # %sw.default
                                        #   in Loop: Header=BB2_17 Depth=1
	jmp	.LBB2_30
.LBB2_30:                               # %sw.epilog
                                        #   in Loop: Header=BB2_17 Depth=1
	jmp	.LBB2_17
.LBB2_31:                               # %while.end.37
	jmp	.LBB2_32
.LBB2_32:                               # %error
	movq	-24(%rbp), %rdi
	callq	gimp_scanner_destroy
.LBB2_33:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	color_history_restore, .Lfunc_end2-color_history_restore
	.cfi_endproc

	.align	16, 0x90
	.type	color_history_add_from_rc,@function
color_history_add_from_rc:              # @color_history_add_from_rc
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
	cmpl	$0, color_history_initialized
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	color_history_init
.LBB3_2:                                # %if.end
	cmpq	$0, -8(%rbp)
	je	.LBB3_5
# BB#3:                                 # %land.lhs.true
	cmpl	$12, color_history_add_from_rc.index
	jge	.LBB3_5
# BB#4:                                 # %if.then.2
	movabsq	$color_history, %rax
	movl	color_history_add_from_rc.index, %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, color_history_add_from_rc.index
	movslq	%ecx, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rax)
	movq	8(%rsi), %rdi
	movq	%rdi, 8(%rax)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%rax)
	movq	24(%rsi), %rsi
	movq	%rsi, 24(%rax)
.LBB3_5:                                # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	color_history_add_from_rc, .Lfunc_end3-color_history_add_from_rc
	.cfi_endproc

	.globl	color_history_set
	.align	16, 0x90
	.type	color_history_set,@function
color_history_set:                      # @color_history_set
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -4(%rbp)
	jl	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_history_set, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpl	$12, -4(%rbp)
	jge	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_history_set, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.7
	cmpq	$0, -16(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.9
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_history_set, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_14:                               # %if.end.11
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.12
	cmpl	$0, color_history_initialized
	jne	.LBB4_17
# BB#16:                                # %if.then.13
	callq	color_history_init
.LBB4_17:                               # %if.end.14
	movabsq	$color_history, %rax
	movslq	-4(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB4_18:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	color_history_set, .Lfunc_end4-color_history_set
	.cfi_endproc

	.globl	color_history_get
	.align	16, 0x90
	.type	color_history_get,@function
color_history_get:                      # @color_history_get
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -4(%rbp)
	jl	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_history_get, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpl	$12, -4(%rbp)
	jge	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_history_get, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_9:                                # %if.end.5
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.6
	jmp	.LBB5_11
.LBB5_11:                               # %do.body.7
	cmpq	$0, -16(%rbp)
	je	.LBB5_13
# BB#12:                                # %if.then.9
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_history_get, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_14:                               # %if.end.11
	jmp	.LBB5_15
.LBB5_15:                               # %do.end.12
	cmpl	$0, color_history_initialized
	jne	.LBB5_17
# BB#16:                                # %if.then.13
	callq	color_history_init
.LBB5_17:                               # %if.end.14
	movabsq	$color_history, %rax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rcx)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rcx)
	movq	24(%rax), %rax
	movq	%rax, 24(%rcx)
.LBB5_18:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	color_history_get, .Lfunc_end5-color_history_get
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	color_history_add
	.align	16, 0x90
	.type	color_history_add,@function
color_history_add:                      # @color_history_add
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$-1, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.color_history_add, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_33
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	cmpl	$0, color_history_initialized
	jne	.LBB6_7
# BB#6:                                 # %if.then.1
	callq	color_history_init
.LBB6_7:                                # %if.end.2
	movl	$0, -24(%rbp)
.LBB6_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$12, -24(%rbp)
	jge	.LBB6_13
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB6_8 Depth=1
	movabsq	$color_history, %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rgba_distance
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_11
# BB#10:                                # %if.then.5
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_28
.LBB6_11:                               # %if.end.6
                                        #   in Loop: Header=BB6_8 Depth=1
	jmp	.LBB6_12
.LBB6_12:                               # %for.inc
                                        #   in Loop: Header=BB6_8 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_8
.LBB6_13:                               # %for.end
	cmpl	$-1, -20(%rbp)
	jne	.LBB6_25
# BB#14:                                # %if.then.8
	movl	$0, -24(%rbp)
.LBB6_15:                               # %for.cond.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_17 Depth 2
	cmpl	$12, -24(%rbp)
	jge	.LBB6_24
# BB#16:                                # %for.body.11
                                        #   in Loop: Header=BB6_15 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB6_17:                               # %for.cond.12
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$12, -28(%rbp)
	jge	.LBB6_22
# BB#18:                                # %for.body.14
                                        #   in Loop: Header=BB6_17 Depth=2
	movabsq	$color_history, %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	callq	gimp_rgba_distance
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_20
# BB#19:                                # %if.then.21
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_28
.LBB6_20:                               # %if.end.22
                                        #   in Loop: Header=BB6_17 Depth=2
	jmp	.LBB6_21
.LBB6_21:                               # %for.inc.23
                                        #   in Loop: Header=BB6_17 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_17
.LBB6_22:                               # %for.end.25
                                        #   in Loop: Header=BB6_15 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc.26
                                        #   in Loop: Header=BB6_15 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_15
.LBB6_24:                               # %for.end.28
	jmp	.LBB6_25
.LBB6_25:                               # %if.end.29
	cmpl	$-1, -20(%rbp)
	jne	.LBB6_27
# BB#26:                                # %if.then.31
	movl	$11, -20(%rbp)
.LBB6_27:                               # %if.end.32
	jmp	.LBB6_28
.LBB6_28:                               # %doit
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB6_29:                               # %for.cond.33
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB6_32
# BB#30:                                # %for.body.35
                                        #   in Loop: Header=BB6_29 Depth=1
	movabsq	$color_history, %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rax
	movq	%rax, 24(%rdx)
# BB#31:                                # %for.inc.40
                                        #   in Loop: Header=BB6_29 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_29
.LBB6_32:                               # %for.end.41
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, color_history
	movq	8(%rax), %rcx
	movq	%rcx, color_history+8
	movq	16(%rax), %rcx
	movq	%rcx, color_history+16
	movq	24(%rax), %rax
	movq	%rax, color_history+24
	movl	-20(%rbp), %edx
	movl	%edx, -4(%rbp)
.LBB6_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	color_history_add, .Lfunc_end6-color_history_add
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-GUI"
	.size	.L.str, 9

	.type	.L__func__.color_history_save,@object # @__func__.color_history_save
.L__func__.color_history_save:
	.asciz	"color_history_save"
	.size	.L__func__.color_history_save, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"colorrc"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Writing '%s'\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP colorrc\n\nThis file holds a list of recently used colors."
	.size	.L.str.4, 62

	.type	color_history_initialized,@object # @color_history_initialized
	.local	color_history_initialized
	.comm	color_history_initialized,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"color-history"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%f"
	.size	.L.str.6, 3

	.type	color_history,@object   # @color_history
	.local	color_history
	.comm	color_history,384,16
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color-rgba"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s %s %s %s"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"end of colorrc"
	.size	.L.str.9, 15

	.type	.L__func__.color_history_restore,@object # @__func__.color_history_restore
.L__func__.color_history_restore:
	.asciz	"color_history_restore"
	.size	.L__func__.color_history_restore, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.10, 14

	.type	.L__func__.color_history_set,@object # @__func__.color_history_set
.L__func__.color_history_set:
	.asciz	"color_history_set"
	.size	.L__func__.color_history_set, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"index >= 0"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"index < COLOR_HISTORY_SIZE"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"rgb != NULL"
	.size	.L.str.13, 12

	.type	.L__func__.color_history_get,@object # @__func__.color_history_get
.L__func__.color_history_get:
	.asciz	"color_history_get"
	.size	.L__func__.color_history_get, 18

	.type	.L__func__.color_history_add,@object # @__func__.color_history_add
.L__func__.color_history_add:
	.asciz	"color_history_add"
	.size	.L__func__.color_history_add, 18

	.type	color_history_add_from_rc.index,@object # @color_history_add_from_rc.index
	.local	color_history_add_from_rc.index
	.comm	color_history_add_from_rc.index,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
