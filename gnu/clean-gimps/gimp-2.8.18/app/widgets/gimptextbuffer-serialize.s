	.text
	.file	"gimptextbuffer-serialize.bc"
	.globl	gimp_text_buffer_serialize
	.align	16, 0x90
	.type	gimp_text_buffer_serialize,@function
gimp_text_buffer_serialize:             # @gimp_text_buffer_serialize
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
	subq	$352, %rsp              # imm = 0x160
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, %rdi
	callq	g_string_new
	movl	$80, %r10d
	movl	%r10d, %edx
	leaq	-136(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
.LBB0_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	leaq	-136(%rbp), %rdi
	movq	$0, -232(%rbp)
	callq	gtk_text_iter_get_tags
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB0_2:                                # %for.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -240(%rbp)
	je	.LBB0_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=2
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	-264(%rbp), %rdx
	movq	%rax, %rdi
	callq	open_tag
	movq	-232(%rbp), %rdi
	movq	-264(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	g_slist_prepend
	movq	%rax, -232(%rbp)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=2
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	jmp	.LBB0_2
.LBB0_5:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-224(%rbp), %rdi
	callq	g_slist_free
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-136(%rbp), %rdi
	leaq	-216(%rbp), %rcx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-296(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
.LBB0_6:                                # %while.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-136(%rbp), %rdi
	callq	gtk_text_iter_get_char
	movl	%eax, -268(%rbp)
	cmpl	$65532, -268(%rbp)      # imm = 0xFFFC
	jne	.LBB0_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_12
.LBB0_8:                                # %if.else
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$0, -268(%rbp)
	jne	.LBB0_10
# BB#9:                                 # %if.then.12
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_10:                               # %if.else.13
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	-136(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	movl	%eax, -300(%rbp)        # 4-byte Spill
# BB#11:                                # %if.end
                                        #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_12
.LBB0_12:                               # %if.end.15
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	-136(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gtk_text_iter_toggles_tag
	cmpl	$0, %eax
	je	.LBB0_14
# BB#13:                                # %if.then.18
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_14:                               # %if.end.19
                                        #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_6
.LBB0_15:                               # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
	leaq	-136(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_text_iter_compare
	cmpl	$0, %eax
	jle	.LBB0_17
# BB#16:                                # %if.then.22
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-136(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB0_17:                               # %if.end.23
                                        #   in Loop: Header=BB0_1 Depth=1
	leaq	-216(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	callq	gtk_text_iter_get_slice
	movq	$-1, %rsi
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	g_markup_escape_text
	movq	%rax, -256(%rbp)
	movq	-248(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_string_append
	movq	-256(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_free
	movq	-232(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB0_18:                               # %for.cond.27
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -240(%rbp)
	je	.LBB0_21
# BB#19:                                # %for.body.29
                                        #   in Loop: Header=BB0_18 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	-240(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-328(%rbp), %rdx        # 8-byte Reload
	callq	close_tag
	movl	%eax, -332(%rbp)        # 4-byte Spill
# BB#20:                                # %for.inc.34
                                        #   in Loop: Header=BB0_18 Depth=2
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	jmp	.LBB0_18
.LBB0_21:                               # %for.end.36
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-232(%rbp), %rdi
	callq	g_slist_free
# BB#22:                                # %do.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	leaq	-136(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_text_iter_equal
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB0_1
# BB#23:                                # %do.end
	movabsq	$.L.str.1, %rsi
	movq	-56(%rbp), %rdi
	callq	g_string_append
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, (%rcx)
	movq	-56(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_string_free
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_buffer_serialize, .Lfunc_end0-gimp_text_buffer_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	open_tag,@function
open_tag:                               # @open_tag
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
	subq	$64, %rsp
	leaq	-48(%rbp), %rax
	leaq	-56(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, %rdx
	callq	gimp_text_buffer_tag_to_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	cmpq	$0, -48(%rbp)
	je	.LBB1_4
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.3
	movq	$-1, %rsi
	movq	-56(%rbp), %rdi
	callq	g_markup_escape_text
	movabsq	$.L.str.6, %rsi
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %r8
	movb	$0, %al
	callq	g_string_append_printf
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movabsq	$.L.str.7, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf
.LBB1_5:                                # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.end.5
	movl	$0, -4(%rbp)
.LBB1_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	open_tag, .Lfunc_end1-open_tag
	.cfi_endproc

	.align	16, 0x90
	.type	close_tag,@function
close_tag:                              # @close_tag
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdx
	callq	gimp_text_buffer_tag_to_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.8, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movl	$1, -4(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB2_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	close_tag, .Lfunc_end2-close_tag
	.cfi_endproc

	.globl	gimp_text_buffer_deserialize
	.align	16, 0x90
	.type	gimp_text_buffer_deserialize,@function
gimp_text_buffer_deserialize:           # @gimp_text_buffer_deserialize
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
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	leaq	-112(%rbp), %r11
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -116(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%r11, %rdi
	callq	parse_info_init
	movabsq	$gimp_text_buffer_deserialize.markup_parser, %rdi
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	callq	g_markup_parse_context_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	g_markup_parse_context_parse
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_5
.LBB3_2:                                # %if.end
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_markup_parse_context_end_parse
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.5
	jmp	.LBB3_5
.LBB3_4:                                # %if.end.6
	leaq	-112(%rbp), %rdi
	movl	$1, -116(%rbp)
	movq	-24(%rbp), %rsi
	callq	insert_text
.LBB3_5:                                # %out
	leaq	-112(%rbp), %rdi
	callq	parse_info_free
	movq	-72(%rbp), %rdi
	callq	g_markup_parse_context_free
	movl	-116(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_buffer_deserialize, .Lfunc_end3-gimp_text_buffer_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	start_element_handler,@function
start_element_handler:                  # @start_element_handler
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	%rcx, %rdi
	callq	peek_state
	movl	%eax, %r10d
	testl	%eax, %eax
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	je	.LBB4_1
	jmp	.LBB4_11
.LBB4_11:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	decl	%eax
	subl	$3, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jb	.LBB4_7
	jmp	.LBB4_8
.LBB4_1:                                # %sw.bb
	movq	-16(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_5
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	check_no_attributes
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.4
	jmp	.LBB4_10
.LBB4_4:                                # %if.end
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	push_state
	jmp	.LBB4_10
.LBB4_5:                                # %if.else
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	g_markup_error_quark
	movabsq	$.L.str.10, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$2, %ecx
	movq	-16(%rbp), %r9
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	-84(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	set_error
# BB#6:                                 # %if.end.7
	jmp	.LBB4_10
.LBB4_7:                                # %sw.bb.8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	parse_tag_element
	jmp	.LBB4_10
.LBB4_8:                                # %sw.default
	jmp	.LBB4_9
.LBB4_9:                                # %do.body
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$355, %edx              # imm = 0x163
	movabsq	$.L__func__.start_element_handler, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB4_10:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	start_element_handler, .Lfunc_end4-start_element_handler
	.cfi_endproc

	.align	16, 0x90
	.type	end_element_handler,@function
end_element_handler:                    # @end_element_handler
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rcx, %rdi
	callq	peek_state
	movl	%eax, %r8d
	subl	$1, %eax
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB5_17
	jmp	.LBB5_26
.LBB5_26:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB5_9
	jmp	.LBB5_27
.LBB5_27:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jne	.LBB5_23
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-40(%rbp), %rdi
	callq	pop_state
# BB#2:                                 # %do.body
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$3, %eax
	je	.LBB5_5
# BB#3:                                 # %lor.lhs.false
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$2, %eax
	je	.LBB5_5
# BB#4:                                 # %lor.lhs.false.4
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$1, %eax
	jne	.LBB5_6
.LBB5_5:                                # %if.then
	jmp	.LBB5_7
.LBB5_6:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$374, %edx              # imm = 0x176
	movabsq	$.L__func__.end_element_handler, %rcx
	movabsq	$.L.str.16, %r8
	callq	g_assertion_message_expr
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %do.end
	jmp	.LBB5_25
.LBB5_9:                                # %sw.bb.7
	movq	-40(%rbp), %rdi
	callq	pop_state
# BB#10:                                # %do.body.8
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$3, %eax
	je	.LBB5_13
# BB#11:                                # %lor.lhs.false.11
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$2, %eax
	je	.LBB5_13
# BB#12:                                # %lor.lhs.false.14
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$1, %eax
	jne	.LBB5_14
.LBB5_13:                               # %if.then.17
	jmp	.LBB5_15
.LBB5_14:                               # %if.else.18
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$381, %edx              # imm = 0x17D
	movabsq	$.L__func__.end_element_handler, %rcx
	movabsq	$.L.str.16, %r8
	callq	g_assertion_message_expr
.LBB5_15:                               # %if.end.19
	jmp	.LBB5_16
.LBB5_16:                               # %do.end.20
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_slist_delete_link
	movq	-40(%rbp), %rsi
	movq	%rax, 24(%rsi)
	jmp	.LBB5_25
.LBB5_17:                               # %sw.bb.24
	movq	-40(%rbp), %rdi
	callq	pop_state
# BB#18:                                # %do.body.25
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$0, %eax
	jne	.LBB5_20
# BB#19:                                # %if.then.28
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.29
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$390, %edx              # imm = 0x186
	movabsq	$.L__func__.end_element_handler, %rcx
	movabsq	$.L.str.17, %r8
	callq	g_assertion_message_expr
.LBB5_21:                               # %if.end.30
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.31
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_list_reverse
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB5_25
.LBB5_23:                               # %sw.default
	jmp	.LBB5_24
.LBB5_24:                               # %do.body.34
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$396, %edx              # imm = 0x18C
	movabsq	$.L__func__.end_element_handler, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB5_25:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	end_element_handler, .Lfunc_end5-end_element_handler
	.cfi_endproc

	.align	16, 0x90
	.type	text_handler,@function
text_handler:                           # @text_handler
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	%ecx, %eax
	movl	%eax, %esi
	callq	all_whitespace
	cmpl	$0, %eax
	je	.LBB6_5
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	peek_state
	cmpl	$1, %eax
	je	.LBB6_5
# BB#2:                                 # %land.lhs.true.3
	movq	-48(%rbp), %rdi
	callq	peek_state
	cmpl	$2, %eax
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true.7
	movq	-48(%rbp), %rdi
	callq	peek_state
	cmpl	$3, %eax
	je	.LBB6_5
# BB#4:                                 # %if.then
	jmp	.LBB6_13
.LBB6_5:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	peek_state
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB6_6
	jmp	.LBB6_14
.LBB6_14:                               # %if.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	decl	%eax
	subl	$3, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jb	.LBB6_8
	jmp	.LBB6_11
.LBB6_6:                                # %sw.bb
	jmp	.LBB6_7
.LBB6_7:                                # %do.body
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$438, %edx              # imm = 0x1B6
	movabsq	$.L__func__.text_handler, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB6_8:                                # %sw.bb.12
	cmpq	$0, -24(%rbp)
	jne	.LBB6_10
# BB#9:                                 # %if.then.15
	jmp	.LBB6_13
.LBB6_10:                               # %if.end.16
	movl	$1, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_strndup
	movq	-56(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_slist_copy
	movq	-56(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-48(%rbp), %rsi
	movq	%rax, 32(%rsi)
	jmp	.LBB6_13
.LBB6_11:                               # %sw.default
	jmp	.LBB6_12
.LBB6_12:                               # %do.body.23
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$455, %edx              # imm = 0x1C7
	movabsq	$.L__func__.text_handler, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB6_13:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	text_handler, .Lfunc_end6-text_handler
	.cfi_endproc

	.align	16, 0x90
	.type	parse_info_init,@function
parse_info_init:                        # @parse_info_init
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	parse_info_init, .Lfunc_end7-parse_info_init
	.cfi_endproc

	.align	16, 0x90
	.type	insert_text,@function
insert_text:                            # @insert_text
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
	subq	$160, %rsp
	movabsq	$.L.str.18, %rax
	leaq	-96(%rbp), %rcx
	movl	$1, %edx
	movl	$80, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movl	-140(%rbp), %ecx        # 4-byte Reload
	callq	gtk_text_buffer_create_mark
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	cmpq	$0, -112(%rbp)
	je	.LBB8_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-128(%rbp), %rax
	movq	(%rax), %rdx
	callq	gtk_text_buffer_insert
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-96(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-104(%rbp), %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
.LBB8_5:                                # %for.cond.8
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -120(%rbp)
	je	.LBB8_8
# BB#6:                                 # %for.body.10
                                        #   in Loop: Header=BB8_5 Depth=2
	leaq	-96(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-136(%rbp), %rsi
	movq	-16(%rbp), %rcx
	callq	gtk_text_buffer_apply_tag
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB8_5 Depth=2
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB8_5
.LBB8_8:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-104(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	gtk_text_buffer_move_mark
# BB#9:                                 # %for.inc.15
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB8_1
.LBB8_10:                               # %for.end.17
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_text_buffer_delete_mark
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	insert_text, .Lfunc_end8-insert_text
	.cfi_endproc

	.align	16, 0x90
	.type	parse_info_free,@function
parse_info_free:                        # @parse_info_free
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	g_slist_free
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_slist_free
	movabsq	$text_span_free, %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	g_list_free_full
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	parse_info_free, .Lfunc_end9-parse_info_free
	.cfi_endproc

	.globl	gimp_text_buffer_pre_serialize
	.align	16, 0x90
	.type	gimp_text_buffer_pre_serialize,@function
gimp_text_buffer_pre_serialize:         # @gimp_text_buffer_pre_serialize
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_text_buffer_pre_serialize, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_36
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gtk_text_buffer_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB10_19:                              # %if.end.31
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_text_buffer_pre_serialize, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_36
.LBB10_23:                              # %if.end.37
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.38
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_text_buffer_get_start_iter
.LBB10_25:                              # %do.body.39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_26 Depth 2
	leaq	-96(%rbp), %rdi
	callq	gtk_text_iter_get_tags
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
.LBB10_26:                              # %for.cond
                                        #   Parent Loop BB10_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -160(%rbp)
	je	.LBB10_34
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB10_26 Depth=2
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB10_29
# BB#28:                                # %if.then.47
                                        #   in Loop: Header=BB10_25 Depth=1
	leaq	-96(%rbp), %rsi
	movabsq	$.L.str.5, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %r8
	movb	$0, %al
	callq	gtk_text_buffer_insert_with_tags
	leaq	-248(%rbp), %rdx
	movl	$80, %ecx
	movl	%ecx, %esi
	leaq	-96(%rbp), %rdi
	movq	%rdx, %r8
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-256(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-264(%rbp), %r9         # 8-byte Reload
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	callq	memcpy
	movq	-272(%rbp), %rdi        # 8-byte Reload
	callq	gtk_text_iter_forward_char
	leaq	-96(%rbp), %rdx
	leaq	-248(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gtk_text_buffer_remove_tag
	jmp	.LBB10_34
.LBB10_29:                              # %if.end.50
                                        #   in Loop: Header=BB10_26 Depth=2
	jmp	.LBB10_30
.LBB10_30:                              # %for.inc
                                        #   in Loop: Header=BB10_26 Depth=2
	cmpq	$0, -160(%rbp)
	je	.LBB10_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB10_26 Depth=2
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB10_33
.LBB10_32:                              # %cond.false
                                        #   in Loop: Header=BB10_26 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB10_33
.LBB10_33:                              # %cond.end
                                        #   in Loop: Header=BB10_26 Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	jmp	.LBB10_26
.LBB10_34:                              # %for.end
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	-152(%rbp), %rdi
	callq	g_slist_free
# BB#35:                                # %do.cond
                                        #   in Loop: Header=BB10_25 Depth=1
	leaq	-96(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	cmpl	$0, %eax
	jne	.LBB10_25
.LBB10_36:                              # %do.end.54
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_buffer_pre_serialize, .Lfunc_end10-gimp_text_buffer_pre_serialize
	.cfi_endproc

	.globl	gimp_text_buffer_post_deserialize
	.align	16, 0x90
	.type	gimp_text_buffer_post_deserialize,@function
gimp_text_buffer_post_deserialize:      # @gimp_text_buffer_post_deserialize
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_text_buffer_post_deserialize, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_36
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gtk_text_buffer_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_text_buffer_post_deserialize, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_36
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_text_buffer_get_start_iter
.LBB11_25:                              # %do.body.39
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_26 Depth 2
	leaq	-96(%rbp), %rdi
	callq	gtk_text_iter_get_tags
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
.LBB11_26:                              # %for.cond
                                        #   Parent Loop BB11_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -160(%rbp)
	je	.LBB11_34
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB11_29
# BB#28:                                # %if.then.47
                                        #   in Loop: Header=BB11_25 Depth=1
	leaq	-96(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gtk_text_buffer_backspace
	leaq	-248(%rbp), %rsi
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rdi
	movq	%rsi, %r8
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-272(%rbp), %rdi        # 8-byte Reload
	callq	gtk_text_iter_forward_char
	leaq	-96(%rbp), %rdx
	leaq	-248(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	callq	gtk_text_buffer_apply_tag
	jmp	.LBB11_34
.LBB11_29:                              # %if.end.52
                                        #   in Loop: Header=BB11_26 Depth=2
	jmp	.LBB11_30
.LBB11_30:                              # %for.inc
                                        #   in Loop: Header=BB11_26 Depth=2
	cmpq	$0, -160(%rbp)
	je	.LBB11_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB11_33
.LBB11_32:                              # %cond.false
                                        #   in Loop: Header=BB11_26 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB11_33
.LBB11_33:                              # %cond.end
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
	jmp	.LBB11_26
.LBB11_34:                              # %for.end
                                        #   in Loop: Header=BB11_25 Depth=1
	movq	-152(%rbp), %rdi
	callq	g_slist_free
# BB#35:                                # %do.cond
                                        #   in Loop: Header=BB11_25 Depth=1
	leaq	-96(%rbp), %rdi
	callq	gtk_text_iter_forward_char
	cmpl	$0, %eax
	jne	.LBB11_25
.LBB11_36:                              # %do.end.56
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_buffer_post_deserialize, .Lfunc_end11-gimp_text_buffer_post_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	peek_state,@function
peek_state:                             # @peek_state
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.peek_state, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_6
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
.LBB12_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	peek_state, .Lfunc_end12-peek_state
	.cfi_endproc

	.align	16, 0x90
	.type	check_no_attributes,@function
check_no_attributes:                    # @check_no_attributes
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	g_markup_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$2, %ecx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %r9
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movl	-68(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r8
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	set_error
	movl	$0, -4(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movl	$1, -4(%rbp)
.LBB13_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	check_no_attributes, .Lfunc_end13-check_no_attributes
	.cfi_endproc

	.align	16, 0x90
	.type	push_state,@function
push_state:                             # @push_state
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	-12(%rbp), %esi
                                        # kill: RSI<def> ESI<kill>
	callq	g_slist_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	push_state, .Lfunc_end14-push_state
	.cfi_endproc

	.align	16, 0x90
	.type	set_error,@function
set_error:                              # @set_error
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
	subq	$432, %rsp              # imm = 0x1B0
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       # 16-byte Spill
	movaps	%xmm6, -288(%rbp)       # 16-byte Spill
	movaps	%xmm5, -304(%rbp)       # 16-byte Spill
	movaps	%xmm4, -320(%rbp)       # 16-byte Spill
	movaps	%xmm3, -336(%rbp)       # 16-byte Spill
	movaps	%xmm2, -352(%rbp)       # 16-byte Spill
	movaps	%xmm1, -368(%rbp)       # 16-byte Spill
	movaps	%xmm0, -384(%rbp)       # 16-byte Spill
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r9, -400(%rbp)         # 8-byte Spill
	movq	%r8, -408(%rbp)         # 8-byte Spill
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	movl	%edx, -416(%rbp)        # 4-byte Spill
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	je	.LBB15_2
# BB#1:                                 # %entry
	movaps	-384(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -208(%rbp)
	movaps	-368(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -192(%rbp)
	movaps	-352(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -176(%rbp)
	movaps	-336(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -160(%rbp)
	movaps	-320(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -144(%rbp)
	movaps	-304(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -128(%rbp)
	movaps	-288(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -112(%rbp)
	movaps	-272(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -96(%rbp)
.LBB15_2:                               # %entry
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movl	-412(%rbp), %edx        # 4-byte Reload
	movl	-416(%rbp), %esi        # 4-byte Reload
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	g_markup_parse_context_get_position
	leaq	-256(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$40, -64(%rbp)
	movq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	g_strdup_vprintf
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movq	%rsp, %rcx
	movq	%rax, (%rcx)
	movl	$.L.str.14, %r10d
	movl	%r10d, %ecx
	xorl	%r10d, %r10d
	movb	%r10b, %r11b
	movb	%r11b, %al
	callq	g_set_error
	movq	-72(%rbp), %rdi
	callq	g_free
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end15:
	.size	set_error, .Lfunc_end15-set_error
	.cfi_endproc

	.align	16, 0x90
	.type	parse_tag_element,@function
parse_tag_element:                      # @parse_tag_element
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$1, %eax
	je	.LBB16_4
# BB#2:                                 # %lor.lhs.false
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$2, %eax
	je	.LBB16_4
# BB#3:                                 # %lor.lhs.false.3
	movq	-40(%rbp), %rdi
	callq	peek_state
	cmpl	$3, %eax
	jne	.LBB16_5
.LBB16_4:                               # %if.then
	jmp	.LBB16_6
.LBB16_5:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$291, %edx              # imm = 0x123
	movabsq	$.L__func__.parse_tag_element, %rcx
	movabsq	$.L.str.15, %r8
	callq	g_assertion_message_expr
.LBB16_6:                               # %if.end
	jmp	.LBB16_7
.LBB16_7:                               # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB16_9
# BB#8:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB16_9:                               # %if.end.7
	cmpq	$0, -32(%rbp)
	je	.LBB16_11
# BB#10:                                # %if.then.9
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB16_11:                              # %if.end.11
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_text_buffer_name_to_tag
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB16_13
# BB#12:                                # %if.then.16
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movl	$2, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-40(%rbp), %rdi
	callq	push_state
	jmp	.LBB16_14
.LBB16_13:                              # %if.else.19
	movl	$3, %esi
	movq	-40(%rbp), %rdi
	callq	push_state
.LBB16_14:                              # %if.end.20
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	parse_tag_element, .Lfunc_end16-parse_tag_element
	.cfi_endproc

	.align	16, 0x90
	.type	pop_state,@function
pop_state:                              # @pop_state
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.pop_state, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_6
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB17_6:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pop_state, .Lfunc_end17-pop_state
	.cfi_endproc

	.align	16, 0x90
	.type	all_whitespace,@function
all_whitespace:                         # @all_whitespace
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	addq	%rax, %rdi
	movq	%rdi, -40(%rbp)
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB18_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	jne	.LBB18_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB18_6
.LBB18_4:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB18_1
.LBB18_5:                               # %while.end
	movl	$1, -4(%rbp)
.LBB18_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	all_whitespace, .Lfunc_end18-all_whitespace
	.cfi_endproc

	.align	16, 0x90
	.type	text_span_free,@function
text_span_free:                         # @text_span_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	g_slist_free
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	text_span_free, .Lfunc_end19-text_span_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<markup>"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"</markup>"
	.size	.L.str.1, 10

	.type	gimp_text_buffer_deserialize.markup_parser,@object # @gimp_text_buffer_deserialize.markup_parser
	.section	.rodata,"a",@progbits
	.align	8
gimp_text_buffer_deserialize.markup_parser:
	.quad	start_element_handler
	.quad	end_element_handler
	.quad	text_handler
	.quad	0
	.quad	0
	.size	gimp_text_buffer_deserialize.markup_parser, 40

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Gimp-Widgets"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_text_buffer_pre_serialize,@object # @__func__.gimp_text_buffer_pre_serialize
.L__func__.gimp_text_buffer_pre_serialize:
	.asciz	"gimp_text_buffer_pre_serialize"
	.size	.L__func__.gimp_text_buffer_pre_serialize, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_TEXT_BUFFER (buffer)"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GTK_IS_TEXT_BUFFER (content)"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\342\201\240"
	.size	.L.str.5, 4

	.type	.L__func__.gimp_text_buffer_post_deserialize,@object # @__func__.gimp_text_buffer_post_deserialize
.L__func__.gimp_text_buffer_post_deserialize:
	.asciz	"gimp_text_buffer_post_deserialize"
	.size	.L__func__.gimp_text_buffer_post_deserialize, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"<%s %s=\"%s\">"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"<%s>"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"</%s>"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"markup"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Outermost element in text must be <markup> not <%s>"
	.size	.L.str.10, 52

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimptextbuffer-serialize.c"
	.size	.L.str.11, 27

	.type	.L__func__.start_element_handler,@object # @__func__.start_element_handler
.L__func__.start_element_handler:
	.asciz	"start_element_handler"
	.size	.L__func__.start_element_handler, 22

	.type	.L__func__.peek_state,@object # @__func__.peek_state
.L__func__.peek_state:
	.asciz	"peek_state"
	.size	.L__func__.peek_state, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"info->states != NULL"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Attribute \"%s\" is invalid on <%s> element in this context"
	.size	.L.str.13, 58

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Line %d character %d: %s"
	.size	.L.str.14, 25

	.type	.L__func__.parse_tag_element,@object # @__func__.parse_tag_element
.L__func__.parse_tag_element:
	.asciz	"parse_tag_element"
	.size	.L__func__.parse_tag_element, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"peek_state (info) == STATE_MARKUP || peek_state (info) == STATE_TAG || peek_state (info) == STATE_UNKNOWN"
	.size	.L.str.15, 106

	.type	.L__func__.end_element_handler,@object # @__func__.end_element_handler
.L__func__.end_element_handler:
	.asciz	"end_element_handler"
	.size	.L__func__.end_element_handler, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"peek_state (info) == STATE_UNKNOWN || peek_state (info) == STATE_TAG || peek_state (info) == STATE_MARKUP"
	.size	.L.str.16, 106

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"peek_state (info) == STATE_START"
	.size	.L.str.17, 33

	.type	.L__func__.pop_state,@object # @__func__.pop_state
.L__func__.pop_state:
	.asciz	"pop_state"
	.size	.L__func__.pop_state, 10

	.type	.L__func__.text_handler,@object # @__func__.text_handler
.L__func__.text_handler:
	.asciz	"text_handler"
	.size	.L__func__.text_handler, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"deserialize-insert-point"
	.size	.L.str.18, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
