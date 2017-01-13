	.text
	.file	"zdscpars.bc"
	.align	16, 0x90
	.type	zinitialize_dsc_parser,@function
zinitialize_dsc_parser:                 # @zinitialize_dsc_parser
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 64
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %r15
	movq	8(%r15), %rax
	movq	72(%rax), %rbp
	movl	$st_dsc_data_t, %esi
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	%rax, %rbx
	movl	$-25, %r12d
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#1:                                 # %if.end
	movl	$0, 8(%rbx)
	movq	200(%rbp), %rcx
	movl	$.L.str.3, %edi
	movl	$zDSC_memalloc, %esi
	movl	$zDSC_memfree, %edx
	callq	dsc_init_with_alloc
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB0_4
# BB#2:                                 # %if.end.7
	movl	$dsc_error_handler, %esi
	movq	%rax, %rdi
	callq	dsc_set_error_function
	movq	%rbx, 8(%rsp)
	movzwl	(%r15), %eax
	andl	$12, %eax
	orl	$2400, %eax             # imm = 0x960
	movw	%ax, (%rsp)
	leaq	368(%r14), %rcx
	leaq	(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	callq	dict_put_string
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_4
# BB#3:                                 # %if.then.16
	addq	$-16, 624(%r14)
.LBB0_4:                                # %cleanup
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zinitialize_dsc_parser, .Lfunc_end0-zinitialize_dsc_parser
	.cfi_endproc

	.align	16, 0x90
	.type	zparse_dsc_comments,@function
zparse_dsc_comments:                    # @zparse_dsc_comments
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp14:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp15:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 56
	subq	$392, %rsp              # imm = 0x188
.Ltmp17:
	.cfi_def_cfa_offset 448
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %r15
	movzbl	1(%r15), %eax
	cmpl	$18, %eax
	jne	.LBB1_1
# BB#2:                                 # %do.body
	movq	-8(%r15), %rax
	movl	$-7, %ebp
	testb	$16, (%rax)
	je	.LBB1_21
# BB#3:                                 # %do.end
	leaq	-16(%r15), %rbx
	movl	4(%r15), %eax
	cmpl	$259, %eax              # imm = 0x103
	movl	$259, %r12d             # imm = 0x103
	cmovbel	%eax, %r12d
	leaq	120(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_21
# BB#4:                                 # %if.end.16
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	120(%rsp), %rax
	movq	8(%rax), %rbx
	movq	8(%r15), %rsi
	movl	%r12d, %ebp
	leaq	128(%rsp), %r13
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$13, 128(%rsp,%rbp)
	incl	%r12d
	movb	$0, 128(%rsp,%r12)
	movl	$.L.str.29, %edi
	callq	strlen
	movl	$.L.str.29, %edi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	strncmp
	movl	$BadCmdlist, %ecx
	testl	%eax, %eax
	je	.LBB1_6
# BB#5:                                 # %while.body
	movl	$.L.str.30, %edi
	callq	strlen
	leaq	128(%rsp), %rsi
	movl	$.L.str.30, %edi
	movq	%rax, %rdx
	callq	strncmp
	movl	$BadCmdlist+8, %ecx
	testl	%eax, %eax
	je	.LBB1_6
# BB#22:                                # %while.body.1
	movl	$.L.str.31, %edi
	callq	strlen
	leaq	128(%rsp), %rsi
	movl	$.L.str.31, %edi
	movq	%rax, %rdx
	callq	strncmp
	movl	$BadCmdlist+16, %ecx
	testl	%eax, %eax
	je	.LBB1_6
# BB#23:                                # %while.body.2
	movl	$.L.str.32, %edi
	callq	strlen
	leaq	128(%rsp), %rsi
	movl	$.L.str.32, %edi
	movq	%rax, %rdx
	callq	strncmp
	movl	$BadCmdlist+24, %ecx
	testl	%eax, %eax
	jne	.LBB1_11
.LBB1_6:                                # %while.end
	cmpq	$0, (%rcx)
	je	.LBB1_11
# BB#7:                                 # %if.then.30
	movq	%rbx, %r13
	movl	8(%r13), %eax
	movzbl	130(%rsp), %ecx
	cmpl	$66, %ecx
	movq	8(%rsp), %rbp           # 8-byte Reload
	jne	.LBB1_9
# BB#8:                                 # %if.then.35
	incl	%eax
	movl	%eax, 8(%r13)
	xorl	%ecx, %ecx
	jmp	.LBB1_13
.LBB1_1:                                # %if.then
	movq	%r15, %rdi
	callq	check_type_failed
.LBB1_20:                               # %cleanup
	movl	%eax, %ebp
.LBB1_21:                               # %cleanup
	movl	%ebp, %eax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_11:                               # %if.else.43
	xorl	%ecx, %ecx
	movq	%rbx, %r13
	cmpl	$0, 8(%r13)
	movq	8(%rsp), %rbp           # 8-byte Reload
	jg	.LBB1_13
# BB#12:                                # %if.else.48
	movq	(%r13), %rdi
	leaq	128(%rsp), %rsi
	movl	%r12d, %edx
	callq	dsc_scan_data
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	jmp	.LBB1_13
.LBB1_9:                                # %if.else
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB1_13
# BB#10:                                # %if.then.39
	decl	%eax
	movl	%eax, 8(%r13)
.LBB1_13:                               # %while.cond.61.preheader
	movl	$DSCcmdlist-24, %ebx
	.align	16, 0x90
.LBB1_14:                               # %while.cond.61
                                        # =>This Inner Loop Header: Depth=1
	movl	24(%rbx), %eax
	addq	$24, %rbx
	cmpl	%ecx, %eax
	je	.LBB1_16
# BB#15:                                # %while.cond.61
                                        #   in Loop: Header=BB1_14 Depth=1
	testl	%eax, %eax
	jne	.LBB1_14
.LBB1_16:                               # %while.end.71
	cmpq	$0, 16(%rbx)
	je	.LBB1_19
# BB#17:                                # %if.then.73
	movq	8(%r14), %rcx
	leaq	16(%rsp), %rdi
	xorl	%edx, %edx
	movq	%rbp, %rsi
	callq	dict_param_list_write
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_21
# BB#18:                                # %if.end.78
	movq	(%r13), %rsi
	leaq	16(%rsp), %rdi
	callq	*16(%rbx)
	movl	%eax, %ebp
	movq	24(%rsp), %rdi
	movq	88(%rsp), %rsi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
	testl	%ebp, %ebp
	js	.LBB1_21
.LBB1_19:                               # %if.end.88
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	8(%rbx), %rsi
	movq	%r15, %rdx
	callq	names_enter_string
	jmp	.LBB1_20
.Lfunc_end1:
	.size	zparse_dsc_comments, .Lfunc_end1-zparse_dsc_comments
	.cfi_endproc

	.align	16, 0x90
	.type	zDSC_memalloc,@function
zDSC_memalloc:                          # @zDSC_memalloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	64(%rsi), %rcx
	movl	$.L.str.5, %edx
	movq	%rsi, %rdi
	movl	%eax, %esi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end2:
	.size	zDSC_memalloc, .Lfunc_end2-zDSC_memalloc
	.cfi_endproc

	.align	16, 0x90
	.type	zDSC_memfree,@function
zDSC_memfree:                           # @zDSC_memfree
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	24(%rsi), %rcx
	movl	$.L.str.6, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end3:
	.size	zDSC_memfree, .Lfunc_end3-zDSC_memfree
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_error_handler,@function
dsc_error_handler:                      # @dsc_error_handler
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	dsc_error_handler, .Lfunc_end4-dsc_error_handler
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_finalize,@function
dsc_finalize:                           # @dsc_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB5_2
# BB#1:                                 # %if.then
	callq	dsc_free
.LBB5_2:                                # %if.end
	movq	$0, (%rbx)
	popq	%rbx
	retq
.Lfunc_end5:
	.size	dsc_finalize, .Lfunc_end5-dsc_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_adobe_header,@function
dsc_adobe_header:                       # @dsc_adobe_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 16
	cmpl	$0, 1036(%rsi)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.25, %esi
	callq	param_write_int
	popq	%rdx
	retq
.Lfunc_end6:
	.size	dsc_adobe_header, .Lfunc_end6-dsc_adobe_header
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_creator,@function
dsc_creator:                            # @dsc_creator
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1248(%rsi), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end7:
	.size	dsc_creator, .Lfunc_end7-dsc_creator
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_creation_date,@function
dsc_creation_date:                      # @dsc_creation_date
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 32
.Ltmp32:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1256(%rsi), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end8:
	.size	dsc_creation_date, .Lfunc_end8-dsc_creation_date
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_title,@function
dsc_title:                              # @dsc_title
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 32
.Ltmp35:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1240(%rsi), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	dsc_title, .Lfunc_end9-dsc_title
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_for,@function
dsc_for:                                # @dsc_for
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1264(%rsi), %rdi
	movq	%rdi, (%rsp)
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end10:
	.size	dsc_for, .Lfunc_end10-dsc_for
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_bounding_box,@function
dsc_bounding_box:                       # @dsc_bounding_box
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 48
	movq	1216(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB11_2
# BB#1:                                 # %if.end.i
	movl	(%rcx), %eax
	movl	%eax, 16(%rsp)
	movl	4(%rcx), %eax
	movl	%eax, 20(%rsp)
	movl	8(%rcx), %eax
	movl	%eax, 24(%rsp)
	movl	12(%rcx), %eax
	movl	%eax, 28(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$4, 8(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.14, %esi
	callq	param_write_int_array
.LBB11_2:                               # %dsc_put_bounding_box.exit
	addq	$40, %rsp
	retq
.Lfunc_end11:
	.size	dsc_bounding_box, .Lfunc_end11-dsc_bounding_box
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_orientation,@function
dsc_orientation:                        # @dsc_orientation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 16
	movl	1180(%rsi), %eax
	decl	%eax
	cmpl	$4, %eax
	movl	$-1, %ecx
	cmovbl	%eax, %ecx
	movl	%ecx, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.15, %esi
	callq	param_write_int
	popq	%rdx
	retq
.Lfunc_end12:
	.size	dsc_orientation, .Lfunc_end12-dsc_orientation
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_page,@function
dsc_page:                               # @dsc_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 16
	movslq	1168(%rsi), %rax
	testq	%rax, %rax
	je	.LBB13_2
# BB#1:                                 # %if.then
	leaq	(%rax,%rax,8), %rax
	movq	1160(%rsi), %rcx
	movl	-72(%rcx,%rax,8), %eax
	movl	%eax, (%rsp)
	leaq	(%rsp), %rdx
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movl	$0, 4(%rsp)
	leaq	4(%rsp), %rdx
.LBB13_3:                               # %cleanup
	movl	$.L.str.26, %esi
	callq	param_write_int
	popq	%rdx
	retq
.Lfunc_end13:
	.size	dsc_page, .Lfunc_end13-dsc_page
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_pages,@function
dsc_pages:                              # @dsc_pages
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp42:
	.cfi_def_cfa_offset 16
	movl	1172(%rsi), %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.27, %esi
	callq	param_write_int
	popq	%rdx
	retq
.Lfunc_end14:
	.size	dsc_pages, .Lfunc_end14-dsc_pages
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_page_orientation,@function
dsc_page_orientation:                   # @dsc_page_orientation
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 16
	movslq	1168(%rsi), %rax
	testq	%rax, %rax
	je	.LBB15_3
# BB#1:                                 # %land.lhs.true
	leaq	(%rax,%rax,8), %rax
	movq	1160(%rsi), %rcx
	movl	-40(%rcx,%rax,8), %eax
	testl	%eax, %eax
	je	.LBB15_3
# BB#2:                                 # %if.then
	decl	%eax
	cmpl	$4, %eax
	movl	$-1, %ecx
	cmovbl	%eax, %ecx
	movl	%ecx, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.20, %esi
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movl	1180(%rsi), %eax
	decl	%eax
	cmpl	$4, %eax
	movl	$-1, %ecx
	cmovbl	%eax, %ecx
	movl	%ecx, (%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.15, %esi
.LBB15_4:                               # %cleanup
	callq	param_write_int
	popq	%rdx
	retq
.Lfunc_end15:
	.size	dsc_page_orientation, .Lfunc_end15-dsc_page_orientation
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_page_bounding_box,@function
dsc_page_bounding_box:                  # @dsc_page_bounding_box
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 48
	movq	1224(%rsi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB16_2
# BB#1:                                 # %if.end.i
	movl	(%rcx), %eax
	movl	%eax, 16(%rsp)
	movl	4(%rcx), %eax
	movl	%eax, 20(%rsp)
	movl	8(%rcx), %eax
	movl	%eax, 24(%rsp)
	movl	12(%rcx), %eax
	movl	%eax, 28(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$4, 8(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.21, %esi
	callq	param_write_int_array
.LBB16_2:                               # %dsc_put_bounding_box.exit
	addq	$40, %rsp
	retq
.Lfunc_end16:
	.size	dsc_page_bounding_box, .Lfunc_end16-dsc_page_bounding_box
	.cfi_endproc

	.align	16, 0x90
	.type	dsc_viewing_orientation,@function
dsc_viewing_orientation:                # @dsc_viewing_orientation
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 48
	movq	%rsi, %rax
	movslq	1168(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB17_2
# BB#1:                                 # %land.lhs.true
	leaq	(%rcx,%rcx,8), %rcx
	movq	1160(%rax), %rdx
	movq	-16(%rdx,%rcx,8), %rcx
	movl	$.L.str.28, %esi
	testq	%rcx, %rcx
	jne	.LBB17_3
.LBB17_2:                               # %if.else
	movq	1184(%rax), %rcx
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB17_4
.LBB17_3:                               # %if.end.11
	movl	(%rcx), %eax
	movl	%eax, 16(%rsp)
	movl	4(%rcx), %eax
	movl	%eax, 20(%rsp)
	movl	8(%rcx), %eax
	movl	%eax, 24(%rsp)
	movl	12(%rcx), %eax
	movl	%eax, 28(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$4, 8(%rsp)
	leaq	(%rsp), %rdx
	callq	param_write_float_array
.LBB17_4:                               # %cleanup
	addq	$40, %rsp
	retq
.Lfunc_end17:
	.size	dsc_viewing_orientation, .Lfunc_end17-dsc_viewing_orientation
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.initialize_dsc_parser"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2.parse_dsc_comments"
	.size	.L.str.1, 21

	.type	zdscpars_op_defs,@object # @zdscpars_op_defs
	.section	.rodata,"a",@progbits
	.globl	zdscpars_op_defs
	.align	16
zdscpars_op_defs:
	.quad	.L.str
	.quad	zinitialize_dsc_parser
	.quad	.L.str.1
	.quad	zparse_dsc_comments
	.zero	16
	.size	zdscpars_op_defs, 48

	.type	st_dsc_data_t,@object   # @st_dsc_data_t
	.align	8
st_dsc_data_t:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	dsc_finalize
	.quad	0
	.size	st_dsc_data_t, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"DSC parser init"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Ghostscript DSC parsing"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dsc_data_struct"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"zDSC_memalloc: DSC parsing memory alloc"
	.size	.L.str.5, 40

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"zDSC_memfree: DSC parsing memory free"
	.size	.L.str.6, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"DSC_struct"
	.size	.L.str.7, 11

	.type	DSCcmdlist,@object      # @DSCcmdlist
	.section	.rodata,"a",@progbits
	.align	16
DSCcmdlist:
	.long	200                     # 0xc8
	.zero	4
	.quad	.L.str.9
	.quad	dsc_adobe_header
	.long	204                     # 0xcc
	.zero	4
	.quad	.L.str.10
	.quad	dsc_creator
	.long	205                     # 0xcd
	.zero	4
	.quad	.L.str.11
	.quad	dsc_creation_date
	.long	206                     # 0xce
	.zero	4
	.quad	.L.str.12
	.quad	dsc_title
	.long	207                     # 0xcf
	.zero	4
	.quad	.L.str.13
	.quad	dsc_for
	.long	209                     # 0xd1
	.zero	4
	.quad	.L.str.14
	.quad	dsc_bounding_box
	.long	210                     # 0xd2
	.zero	4
	.quad	.L.str.15
	.quad	dsc_orientation
	.long	401                     # 0x191
	.zero	4
	.quad	.L.str.16
	.quad	0
	.long	402                     # 0x192
	.zero	4
	.quad	.L.str.17
	.quad	0
	.long	700                     # 0x2bc
	.zero	4
	.quad	.L.str.18
	.quad	dsc_page
	.long	203                     # 0xcb
	.zero	4
	.quad	.L.str.19
	.quad	dsc_pages
	.long	705                     # 0x2c1
	.zero	4
	.quad	.L.str.20
	.quad	dsc_page_orientation
	.long	706                     # 0x2c2
	.zero	4
	.quad	.L.str.21
	.quad	dsc_page_bounding_box
	.long	708                     # 0x2c4
	.zero	4
	.quad	.L.str.22
	.quad	dsc_viewing_orientation
	.long	900                     # 0x384
	.zero	4
	.quad	.L.str.23
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.quad	0
	.size	DSCcmdlist, 384

	.type	BadCmdlist,@object      # @BadCmdlist
	.align	16
BadCmdlist:
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	0
	.size	BadCmdlist, 40

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"iparam_list_release"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Header"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Creator"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"CreationDate"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Title"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"For"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"BoundingBox"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Orientation"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"BeginDefaults"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"EndDefaults"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Page"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Pages"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"PageOrientation"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"PageBoundingBox"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"ViewingOrientation"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"EOF"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"NOP"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"EPSF"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"PageNum"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"NumPages"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"PageViewingOrientation"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%%BeginData:"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%%EndData"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%%BeginBinary:"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%%EndBinary"
	.size	.L.str.32, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
