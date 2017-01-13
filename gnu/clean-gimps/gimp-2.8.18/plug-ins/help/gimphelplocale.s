	.text
	.file	"gimphelplocale.bc"
	.globl	gimp_help_locale_new
	.align	16, 0x90
	.type	gimp_help_locale_new,@function
gimp_help_locale_new:                   # @gimp_help_locale_new
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
	movl	$32, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_help_locale_new, .Lfunc_end0-gimp_help_locale_new
	.cfi_endproc

	.globl	gimp_help_locale_free
	.align	16, 0x90
	.type	gimp_help_locale_free,@function
gimp_help_locale_free:                  # @gimp_help_locale_free
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
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_locale_free, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_9
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_hash_table_destroy
.LBB1_7:                                # %if.end.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_list_free
# BB#8:                                 # %do.body.4
	movl	$32, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_9:                                # %do.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_help_locale_free, .Lfunc_end1-gimp_help_locale_free
	.cfi_endproc

	.globl	gimp_help_locale_map
	.align	16, 0x90
	.type	gimp_help_locale_map,@function
gimp_help_locale_map:                   # @gimp_help_locale_map
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_locale_map, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_15
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.3
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_locale_map, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_15
.LBB2_9:                                # %if.end.5
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.6
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_14
# BB#11:                                # %if.then.7
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_13
# BB#12:                                # %if.then.10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_15
.LBB2_13:                               # %if.end.11
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.12
	movq	$0, -8(%rbp)
.LBB2_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_help_locale_map, .Lfunc_end2-gimp_help_locale_map
	.cfi_endproc

	.globl	gimp_help_locale_parse
	.align	16, 0x90
	.type	gimp_help_locale_parse,@function
gimp_help_locale_parse:                 # @gimp_help_locale_parse
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
	subq	$240, %rsp
	xorl	%eax, %eax
	movl	$56, %r9d
	movl	%r9d, %r10d
	leaq	-136(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	%r11, %rdi
	movl	%eax, %esi
	movq	%r10, %rdx
	callq	memset
	movq	$0, -144(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_locale_parse, %rsi
	movabsq	$.L.str, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_33
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_locale_parse, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_33
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.7
	cmpq	$0, -48(%rbp)
	je	.LBB3_13
# BB#12:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_14
.LBB3_13:                               # %if.then.10
	jmp	.LBB3_15
.LBB3_14:                               # %if.else.11
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_locale_parse, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_33
.LBB3_15:                               # %if.end.12
	jmp	.LBB3_16
.LBB3_16:                               # %do.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_18
# BB#17:                                # %if.then.14
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_hash_table_destroy
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB3_18:                               # %if.end.17
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB3_20:                               # %if.end.22
	movq	-24(%rbp), %rdi
	callq	g_file_new_for_uri
	movq	%rax, -64(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.24
	movq	-64(%rbp), %rdi
	callq	g_file_get_parse_name
	movq	%rax, -160(%rbp)
	callq	g_cancellable_new
	movabsq	$.L.str.4, %rdi
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	_gimp_help_progress_start
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-160(%rbp), %rdi
	callq	g_free
.LBB3_22:                               # %if.end.28
	cmpq	$0, -40(%rbp)
	je	.LBB3_26
# BB#23:                                # %if.then.30
	movabsq	$.L.str.5, %rsi
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	g_file_query_info
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB3_25
# BB#24:                                # %if.then.33
	movabsq	$.L.str.6, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	locale_set_error
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$0, -4(%rbp)
	jmp	.LBB3_33
.LBB3_25:                               # %if.end.35
	movq	-168(%rbp), %rdi
	callq	g_file_info_get_size
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB3_26:                               # %if.end.37
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	g_file_read
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_28
# BB#27:                                # %if.then.40
	movabsq	$.L.str.6, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	locale_set_error
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$0, -4(%rbp)
	jmp	.LBB3_33
.LBB3_28:                               # %if.end.42
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	callq	g_string_new
	movabsq	$.L.str.7, %rdi
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	g_strdup
	movabsq	$markup_parser, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%edx, %ecx
	leaq	-136(%rbp), %r8
	movq	%rax, -88(%rbp)
	movq	%r8, %rdx
	callq	g_markup_parse_context_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_input_stream_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	locale_parser_parse
	movl	%eax, -148(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_30
# BB#29:                                # %if.then.53
	movq	-40(%rbp), %rdi
	callq	_gimp_help_progress_finish
.LBB3_30:                               # %if.end.54
	movq	-56(%rbp), %rdi
	callq	g_markup_parse_context_free
	movq	-72(%rbp), %rdi
	callq	g_object_unref
	movl	$1, %esi
	movq	-112(%rbp), %rdi
	callq	g_string_free
	movq	-88(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_free
	cmpl	$0, -148(%rbp)
	jne	.LBB3_32
# BB#31:                                # %if.then.59
	movabsq	$.L.str.8, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	locale_set_error
.LBB3_32:                               # %if.end.61
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	-148(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB3_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_help_locale_parse, .Lfunc_end3-gimp_help_locale_parse
	.cfi_endproc

	.align	16, 0x90
	.type	locale_set_error,@function
locale_set_error:                       # @locale_set_error
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_file_get_parse_name
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx)
.LBB4_3:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	locale_set_error, .Lfunc_end4-locale_set_error
	.cfi_endproc

	.align	16, 0x90
	.type	locale_parser_parse,@function
locale_parser_parse:                    # @locale_parser_parse
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
	subq	$4176, %rsp             # imm = 0x1050
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -72(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %edx
	leaq	-4176(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	callq	g_input_stream_read
	movq	%rax, -64(%rbp)
	cmpq	$-1, %rax
	je	.LBB5_13
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB5_4
	jmp	.LBB5_3
.LBB5_3:                                # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_markup_parse_context_end_parse
	movl	%eax, -4(%rbp)
	jmp	.LBB5_14
.LBB5_4:                                # %sw.default
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-64(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_9
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -40(%rbp)
	jle	.LBB5_7
# BB#6:                                 # %if.then.3
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rdi
	cvtsi2sdq	-72(%rbp), %xmm0
	cvtsi2sdq	-40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	_gimp_help_progress_update
	jmp	.LBB5_8
.LBB5_7:                                # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	_gimp_help_progress_pulse
.LBB5_8:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.5
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-4176(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	g_markup_parse_context_parse
	cmpl	$0, %eax
	jne	.LBB5_11
# BB#10:                                # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_12
.LBB5_12:                               # %sw.epilog
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_13:                               # %while.end
	movl	$0, -4(%rbp)
.LBB5_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$4176, %rsp             # imm = 0x1050
	popq	%rbp
	retq
.Lfunc_end5:
	.size	locale_parser_parse, .Lfunc_end5-locale_parser_parse
	.cfi_endproc

	.align	16, 0x90
	.type	locale_parser_start_element,@function
locale_parser_start_element:            # @locale_parser_start_element
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movl	8(%rcx), %eax
	testl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_14
.LBB6_14:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB6_5
	jmp	.LBB6_15
.LBB6_15:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$3, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jb	.LBB6_12
	jmp	.LBB6_13
.LBB6_1:                                # %sw.bb
	movq	-16(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movq	-56(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	locale_parser_parse_namespace
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movq	-56(%rbp), %rdi
	callq	locale_parser_start_unknown
.LBB6_4:                                # %if.end
	jmp	.LBB6_13
.LBB6_5:                                # %sw.bb.2
	movq	-16(%rbp), %rdi
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_7
# BB#6:                                 # %if.then.5
	movq	-56(%rbp), %rax
	movl	$2, 8(%rax)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	locale_parser_parse_item
	jmp	.LBB6_11
.LBB6_7:                                # %if.else.7
	movq	-16(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_9
# BB#8:                                 # %if.then.10
	movq	-56(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	locale_parser_parse_missing
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.12
	movq	-56(%rbp), %rdi
	callq	locale_parser_start_unknown
.LBB6_10:                               # %if.end.13
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.14
	jmp	.LBB6_13
.LBB6_12:                               # %sw.bb.15
	movq	-56(%rbp), %rdi
	callq	locale_parser_start_unknown
.LBB6_13:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	locale_parser_start_element, .Lfunc_end6-locale_parser_start_element
	.cfi_endproc

	.align	16, 0x90
	.type	locale_parser_end_element,@function
locale_parser_end_element:              # @locale_parser_end_element
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	8(%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB7_5
# BB#6:                                 # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB7_5
.LBB7_2:                                # %sw.bb.1
	movq	-40(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.LBB7_5
.LBB7_3:                                # %sw.bb.3
	movq	-40(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.LBB7_5
.LBB7_4:                                # %sw.bb.5
	movq	-40(%rbp), %rdi
	callq	locale_parser_end_unknown
.LBB7_5:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	locale_parser_end_element, .Lfunc_end7-locale_parser_end_element
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_3
	.quad	.LBB7_4

	.text
	.align	16, 0x90
	.type	locale_parser_error,@function
locale_parser_error:                    # @locale_parser_error
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	g_file_get_parse_name
	movabsq	$.L.str.21, %rdi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_printerr
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	locale_parser_error, .Lfunc_end8-locale_parser_error
	.cfi_endproc

	.align	16, 0x90
	.type	locale_parser_parse_namespace,@function
locale_parser_parse_namespace:          # @locale_parser_parse_namespace
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB9_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB9_3:                                # %land.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_4
	jmp	.LBB9_9
.LBB9_4:                                # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$.L.str.12, %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB9_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movabsq	$.L.str.13, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$6, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
.LBB9_7:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_8:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_1
.LBB9_9:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	locale_parser_parse_namespace, .Lfunc_end9-locale_parser_parse_namespace
	.cfi_endproc

	.align	16, 0x90
	.type	locale_parser_start_unknown,@function
locale_parser_start_unknown:            # @locale_parser_start_unknown
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 20(%rdi)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	$4, 8(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 20(%rax)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	locale_parser_start_unknown, .Lfunc_end10-locale_parser_start_unknown
	.cfi_endproc

	.align	16, 0x90
	.type	locale_parser_parse_item,@function
locale_parser_parse_item:               # @locale_parser_parse_item
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB11_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB11_3:                               # %land.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB11_4
	jmp	.LBB11_16
.LBB11_4:                               # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB11_6:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_8
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB11_8:                               # %if.end.6
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_10
# BB#9:                                 # %if.then.9
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB11_10:                              # %if.end.10
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_12
# BB#11:                                # %if.then.13
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB11_12:                              # %if.end.14
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_14
# BB#13:                                # %if.then.17
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB11_14:                              # %if.end.18
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_15
.LBB11_15:                              # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_1
.LBB11_16:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB11_21
# BB#17:                                # %land.lhs.true
	cmpq	$0, -40(%rbp)
	je	.LBB11_21
# BB#18:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB11_20
# BB#19:                                # %if.then.24
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	movabsq	$gimp_help_item_free, %rax
	movq	%rax, %rcx
	callq	g_hash_table_new_full
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 8(%rcx)
.LBB11_20:                              # %if.end.28
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_help_item_new
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_hash_table_insert
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB11_21:                              # %if.end.34
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	locale_parser_parse_item, .Lfunc_end11-locale_parser_parse_item
	.cfi_endproc

	.align	16, 0x90
	.type	locale_parser_parse_missing,@function
locale_parser_parse_missing:            # @locale_parser_parse_missing
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
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB12_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB12_3:                               # %land.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_4
	jmp	.LBB12_8
.LBB12_4:                               # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB12_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB12_6:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB12_1
.LBB12_8:                               # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB12_11
# BB#9:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB12_11
# BB#10:                                # %if.then.5
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, 16(%rdi)
.LBB12_11:                              # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	locale_parser_parse_missing, .Lfunc_end12-locale_parser_parse_missing
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
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
	je	.LBB13_2
# BB#1:                                 # %entry
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
.LBB13_2:                               # %entry
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
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	locale_parser_end_unknown,@function
locale_parser_end_unknown:              # @locale_parser_end_unknown
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$0, 20(%rax)
	jle	.LBB14_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$4, 8(%rax)
	jne	.LBB14_4
# BB#3:                                 # %if.then
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.19, %rsi
	movl	$476, %edx              # imm = 0x1DC
	movabsq	$.L__func__.locale_parser_end_unknown, %rcx
	movabsq	$.L.str.20, %r8
	callq	g_assertion_message_expr
.LBB14_5:                               # %if.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.end
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 20(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 20(%rax)
	jne	.LBB14_8
# BB#7:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
.LBB14_8:                               # %if.end.7
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	locale_parser_end_unknown, .Lfunc_end14-locale_parser_end_unknown
	.cfi_endproc

	.type	.L__func__.gimp_help_locale_free,@object # @__func__.gimp_help_locale_free
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_help_locale_free:
	.asciz	"gimp_help_locale_free"
	.size	.L__func__.gimp_help_locale_free, 22

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"locale != NULL"
	.size	.L.str, 15

	.type	.L__func__.gimp_help_locale_map,@object # @__func__.gimp_help_locale_map
.L__func__.gimp_help_locale_map:
	.asciz	"gimp_help_locale_map"
	.size	.L__func__.gimp_help_locale_map, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"help_id != NULL"
	.size	.L.str.1, 16

	.type	.L__func__.gimp_help_locale_parse,@object # @__func__.gimp_help_locale_parse
.L__func__.gimp_help_locale_parse:
	.asciz	"gimp_help_locale_parse"
	.size	.L__func__.gimp_help_locale_parse, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"uri != NULL"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Loading index from '%s'"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"standard::size"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.6, 36

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"id"
	.size	.L.str.7, 3

	.type	markup_parser,@object   # @markup_parser
	.section	.rodata,"a",@progbits
	.align	8
markup_parser:
	.quad	locale_parser_start_element
	.quad	locale_parser_end_element
	.quad	0
	.quad	0
	.quad	locale_parser_error
	.size	markup_parser, 40

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Parse error in '%s':\n%s"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-help"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"help-item"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"help-missing"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"xmlns:"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s:id"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ref"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"title"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"sort"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"parent"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"locale_parser: This shouldn't happen."
	.size	.L.str.18, 38

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimphelplocale.c"
	.size	.L.str.19, 17

	.type	.L__func__.locale_parser_end_unknown,@object # @__func__.locale_parser_end_unknown
.L__func__.locale_parser_end_unknown:
	.asciz	"locale_parser_end_unknown"
	.size	.L__func__.locale_parser_end_unknown, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"parser->unknown_depth > 0 && parser->state == LOCALE_IN_UNKNOWN"
	.size	.L.str.20, 64

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"help (parsing %s): %s"
	.size	.L.str.21, 22

	.hidden	_gimp_help_progress_start
	.hidden	_gimp_help_progress_finish
	.hidden	_gimp_help_progress_update
	.hidden	_gimp_help_progress_pulse

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
