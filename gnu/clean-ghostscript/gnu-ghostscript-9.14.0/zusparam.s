	.text
	.file	"zusparam.bc"
	.globl	set_user_params
	.align	16, 0x90
	.type	set_user_params,@function
set_user_params:                        # @set_user_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$104, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 128
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movzbl	1(%rsi), %eax
	cmpl	$2, %eax
	jne	.LBB0_1
# BB#2:                                 # %if.end
	movq	8(%rbx), %r8
	leaq	(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	dict_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_4
# BB#3:                                 # %if.end.6
	leaq	(%rsp), %rsi
	movl	$user_param_set, %edx
	movq	%rbx, %rdi
	callq	setparams
	movl	%eax, %ebp
	movq	8(%rsp), %rdi
	movq	72(%rsp), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	jmp	.LBB0_4
.LBB0_1:                                # %if.then
	movq	%rsi, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB0_4:                                # %cleanup
	movl	%ebp, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	set_user_params, .Lfunc_end0-set_user_params
	.cfi_endproc

	.align	16, 0x90
	.type	setparams,@function
setparams:                              # @setparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp11:
	.cfi_def_cfa_offset 80
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, (%rsp)            # 8-byte Spill
	cmpl	$0, 8(%r13)
	je	.LBB1_9
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r12
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	(%r13), %rbp
	leaq	(%rbx,%rbx,4), %r15
	cmpq	$0, 32(%rbp,%r15,8)
	je	.LBB1_8
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rbp,%r15,8), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	param_read_long
	cmpl	$1, %eax
	je	.LBB1_8
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_24
# BB#5:                                 # %sw.bb
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rsp), %rsi
	movl	$-15, %eax
	cmpq	8(%rbp,%r15,8), %rsi
	jl	.LBB1_24
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	16(%rbp,%r15,8), %rsi
	jg	.LBB1_24
# BB#7:                                 # %if.end.5
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	32(%rbp,%r15,8), %rax
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	*(%rax)
	testl	%eax, %eax
	js	.LBB1_24
.LBB1_8:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	incl	%ebx
	cmpl	8(%r13), %ebx
	jb	.LBB1_2
.LBB1_9:                                # %for.cond.12.preheader
	movl	24(%r13), %eax
	testl	%eax, %eax
	je	.LBB1_17
# BB#10:                                # %for.body.14.lr.ph
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r12
	.align	16, 0x90
.LBB1_11:                               # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	16(%r13), %r15
	leaq	(%rbx,%rbx,2), %rbp
	cmpq	$0, 16(%r15,%rbp,8)
	je	.LBB1_16
# BB#12:                                # %if.end.22
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	(%r15,%rbp,8), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	param_read_bool
	testl	%eax, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.26
                                        #   in Loop: Header=BB1_11 Depth=1
	leaq	16(%r15,%rbp,8), %rax
	movl	8(%rsp), %esi
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	*(%rax)
.LBB1_14:                               # %cleanup.33
                                        #   in Loop: Header=BB1_11 Depth=1
	testl	%eax, %eax
	js	.LBB1_24
# BB#15:                                # %cleanup.33.for.inc.37_crit_edge
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	24(%r13), %eax
.LBB1_16:                               # %for.inc.37
                                        #   in Loop: Header=BB1_11 Depth=1
	incl	%ebx
	cmpl	%eax, %ebx
	jb	.LBB1_11
.LBB1_17:                               # %for.cond.40.preheader
	xorl	%eax, %eax
	cmpl	$0, 40(%r13)
	je	.LBB1_24
# BB#18:                                # %for.body.42.lr.ph
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r12
	.align	16, 0x90
.LBB1_19:                               # %for.body.42
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	32(%r13), %r15
	leaq	(%rbx,%rbx,2), %rbp
	cmpq	$0, 16(%r15,%rbp,8)
	je	.LBB1_23
# BB#20:                                # %if.end.50
                                        #   in Loop: Header=BB1_19 Depth=1
	movq	(%r15,%rbp,8), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	param_read_string
	cmpl	$1, %eax
	je	.LBB1_23
# BB#21:                                # %if.end.50
                                        #   in Loop: Header=BB1_19 Depth=1
	testl	%eax, %eax
	jne	.LBB1_24
# BB#22:                                # %sw.bb.54
                                        #   in Loop: Header=BB1_19 Depth=1
	leaq	16(%r15,%rbp,8), %rax
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%r12, %rsi
	callq	*(%rax)
	testl	%eax, %eax
	js	.LBB1_24
.LBB1_23:                               # %for.inc.65
                                        #   in Loop: Header=BB1_19 Depth=1
	incl	%ebx
	xorl	%eax, %eax
	cmpl	40(%r13), %ebx
	jb	.LBB1_19
.LBB1_24:                               # %cleanup.68
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	setparams, .Lfunc_end1-setparams
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentsystemparams,@function
zcurrentsystemparams:                   # @zcurrentsystemparams
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$system_param_set, %esi
	xorl	%edx, %edx
	jmp	current_param_list      # TAILCALL
.Lfunc_end2:
	.size	zcurrentsystemparams, .Lfunc_end2-zcurrentsystemparams
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentuserparams,@function
zcurrentuserparams:                     # @zcurrentuserparams
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$user_param_set, %esi
	xorl	%edx, %edx
	jmp	current_param_list      # TAILCALL
.Lfunc_end3:
	.size	zcurrentuserparams, .Lfunc_end3-zcurrentuserparams
	.cfi_endproc

	.align	16, 0x90
	.type	zgetsystemparam,@function
zgetsystemparam:                        # @zgetsystemparam
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
.Ltmp24:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$13, %eax
	jne	.LBB4_1
# BB#2:                                 # %if.end.i
	movq	640(%r14), %rax
	subq	%rbx, %rax
	cmpq	$31, %rax
	jg	.LBB4_4
# BB#3:                                 # %if.then.9.i
	movl	$2, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB4_8
.LBB4_1:                                # %if.then.i
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB4_8
.LBB4_4:                                # %if.end.12.i
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %r15
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	names_string_ref
	movl	$system_param_set, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	current_param_list
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB4_7
# BB#5:                                 # %if.end.17.i
	movl	$-21, %eax
	cmpq	%rbx, 624(%r14)
	je	.LBB4_8
# BB#6:                                 # %if.end.24.i
	movups	32(%rbx), %xmm0
	movups	%xmm0, (%rbx)
	addq	$-32, 624(%r14)
.LBB4_7:                                # %currentparam1.exit
	movl	%ecx, %eax
.LBB4_8:                                # %currentparam1.exit
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	zgetsystemparam, .Lfunc_end4-zgetsystemparam
	.cfi_endproc

	.align	16, 0x90
	.type	zgetuserparam,@function
zgetuserparam:                          # @zgetuserparam
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 48
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
.Ltmp31:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$13, %eax
	jne	.LBB5_1
# BB#2:                                 # %if.end.i
	movq	640(%r14), %rax
	subq	%rbx, %rax
	cmpq	$31, %rax
	jg	.LBB5_4
# BB#3:                                 # %if.then.9.i
	movl	$2, 688(%r14)
	movl	$-16, %eax
	jmp	.LBB5_8
.LBB5_1:                                # %if.then.i
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB5_8
.LBB5_4:                                # %if.end.12.i
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %r15
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	names_string_ref
	movl	$user_param_set, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	current_param_list
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB5_7
# BB#5:                                 # %if.end.17.i
	movl	$-21, %eax
	cmpq	%rbx, 624(%r14)
	je	.LBB5_8
# BB#6:                                 # %if.end.24.i
	movups	32(%rbx), %xmm0
	movups	%xmm0, (%rbx)
	addq	$-32, 624(%r14)
.LBB5_7:                                # %currentparam1.exit
	movl	%ecx, %eax
.LBB5_8:                                # %currentparam1.exit
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	zgetuserparam, .Lfunc_end5-zgetuserparam
	.cfi_endproc

	.align	16, 0x90
	.type	zsetsystemparams,@function
zsetsystemparams:                       # @zsetsystemparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 32
	subq	$176, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 208
.Ltmp36:
	.cfi_offset %rbx, -32
.Ltmp37:
	.cfi_offset %r14, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB6_1
# BB#2:                                 # %if.end
	movq	8(%rbx), %r8
	leaq	72(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	callq	dict_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_15
# BB#3:                                 # %if.end.6
	leaq	504(%rbx), %r14
	leaq	(%rsp), %rdi
	movl	$.L.str.43, %edx
	movq	%r14, %rsi
	callq	dict_read_password
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_15
# BB#4:                                 # %if.end.11
	leaq	72(%rsp), %rdi
	leaq	(%rsp), %rsi
	callq	param_check_password
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB6_6
# BB#5:                                 # %if.then.15
	movl	$-7, %eax
	cmovgl	%eax, %ebp
	jmp	.LBB6_13
.LBB6_1:                                # %if.then
	movq	%rax, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB6_15
.LBB6_6:                                # %if.end.20
	leaq	72(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.44, %esi
	callq	param_read_password
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB6_9
# BB#7:                                 # %if.end.20
	testl	%ebp, %ebp
	jne	.LBB6_13
# BB#8:                                 # %sw.bb
	cmpl	$0, 188(%rbx)
	sete	%al
	movzbl	%al, %ecx
	leaq	(%rsp), %rdi
	movl	$.L.str.44, %edx
	movq	%r14, %rsi
	callq	dict_write_password
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_13
.LBB6_9:                                # %sw.epilog
	leaq	72(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.43, %esi
	callq	param_read_password
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB6_12
# BB#10:                                # %sw.epilog
	testl	%ebp, %ebp
	jne	.LBB6_13
# BB#11:                                # %sw.bb.31
	cmpl	$0, 188(%rbx)
	sete	%al
	movzbl	%al, %ecx
	leaq	(%rsp), %rdi
	movl	$.L.str.43, %edx
	movq	%r14, %rsi
	callq	dict_write_password
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_13
.LBB6_12:                               # %sw.epilog.43
	leaq	72(%rsp), %rsi
	movl	$system_param_set, %edx
	movq	%rbx, %rdi
	callq	setparams
	movl	%eax, %ebp
.LBB6_13:                               # %out
	movq	80(%rsp), %rdi
	movq	144(%rsp), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	testl	%ebp, %ebp
	js	.LBB6_15
# BB#14:                                # %if.end.50
	addq	$-16, 624(%rbx)
	xorl	%ebp, %ebp
.LBB6_15:                               # %cleanup
	movl	%ebp, %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	zsetsystemparams, .Lfunc_end6-zsetsystemparams
	.cfi_endproc

	.align	16, 0x90
	.type	zsetuserparams,@function
zsetuserparams:                         # @zsetuserparams
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
	subq	$112, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 144
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movzbl	1(%r14), %eax
	cmpl	$2, %eax
	jne	.LBB7_1
# BB#2:                                 # %if.end.i
	movq	8(%rbx), %r8
	leaq	8(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	callq	dict_param_list_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB7_6
# BB#3:                                 # %if.end.6.i
	leaq	8(%rsp), %rsi
	movl	$user_param_set, %edx
	movq	%rbx, %rdi
	callq	setparams
	movl	%eax, %ebp
	movq	16(%rsp), %rdi
	movq	80(%rsp), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	jmp	.LBB7_4
.LBB7_1:                                # %if.then.i
	movq	%r14, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB7_4:                                # %set_user_params.exit
	testl	%ebp, %ebp
	js	.LBB7_6
# BB#5:                                 # %if.then
	movl	184(%rbx), %esi
	movq	%r14, %rdi
	callq	ztoken_scanner_options
	movl	%eax, 184(%rbx)
	addq	$-16, 624(%rbx)
.LBB7_6:                                # %if.end
	movl	%ebp, %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zsetuserparams, .Lfunc_end7-zsetuserparams
	.cfi_endproc

	.align	16, 0x90
	.type	zcheckpassword,@function
zcheckpassword:                         # @zcheckpassword
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 32
	subq	$208, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 240
.Ltmp50:
	.cfi_offset %rbx, -32
.Ltmp51:
	.cfi_offset %r14, -24
.Ltmp52:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	176(%rsp), %rcx
	xorl	%r15d, %r15d
	movl	$.L.str.45, %esi
	movl	$8, %edx
	xorl	%r8d, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB8_6
# BB#1:                                 # %if.end
	movups	(%r14), %xmm0
	movaps	%xmm0, 192(%rsp)
	movq	8(%rbx), %r9
	leaq	72(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	array_param_list_read
	addq	$504, %rbx              # imm = 0x1F8
	leaq	(%rsp), %rdi
	movl	$.L.str.44, %edx
	movq	%rbx, %rsi
	callq	dict_read_password
	testl	%eax, %eax
	js	.LBB8_3
# BB#2:                                 # %land.lhs.true
	leaq	72(%rsp), %rdi
	leaq	(%rsp), %rsi
	callq	param_check_password
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %r15d
.LBB8_3:                                # %if.end.10
	leaq	(%rsp), %rdi
	movl	$.L.str.43, %edx
	movq	%rbx, %rsi
	callq	dict_read_password
	testl	%eax, %eax
	js	.LBB8_5
# BB#4:                                 # %land.lhs.true.15
	leaq	72(%rsp), %rdi
	leaq	(%rsp), %rsi
	callq	param_check_password
	testl	%eax, %eax
	movl	$2, %eax
	cmovel	%eax, %r15d
.LBB8_5:                                # %if.end.19
	movq	80(%rsp), %rdi
	movq	144(%rsp), %rsi
	movl	$.L.str, %edx
	callq	*24(%rdi)
	movslq	%r15d, %rax
	movq	%rax, 8(%r14)
	movw	$2816, (%r14)           # imm = 0xB00
	xorl	%eax, %eax
.LBB8_6:                                # %cleanup
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	zcheckpassword, .Lfunc_end8-zcheckpassword
	.cfi_endproc

	.align	16, 0x90
	.type	current_JobTimeout,@function
current_JobTimeout:                     # @current_JobTimeout
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	current_JobTimeout, .Lfunc_end9-current_JobTimeout
	.cfi_endproc

	.align	16, 0x90
	.type	set_JobTimeout,@function
set_JobTimeout:                         # @set_JobTimeout
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	set_JobTimeout, .Lfunc_end10-set_JobTimeout
	.cfi_endproc

	.align	16, 0x90
	.type	current_MaxFontItem,@function
current_MaxFontItem:                    # @current_MaxFontItem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp53:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	callq	gs_currentcacheupper
	movl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end11:
	.size	current_MaxFontItem, .Lfunc_end11-current_MaxFontItem
	.cfi_endproc

	.align	16, 0x90
	.type	set_MaxFontItem,@function
set_MaxFontItem:                        # @set_MaxFontItem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	movl	%ebx, %esi
	popq	%rbx
	jmp	gs_setcacheupper        # TAILCALL
.Lfunc_end12:
	.size	set_MaxFontItem, .Lfunc_end12-set_MaxFontItem
	.cfi_endproc

	.align	16, 0x90
	.type	current_MinFontCompress,@function
current_MinFontCompress:                # @current_MinFontCompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	callq	gs_currentcachelower
	movl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end13:
	.size	current_MinFontCompress, .Lfunc_end13-current_MinFontCompress
	.cfi_endproc

	.align	16, 0x90
	.type	set_MinFontCompress,@function
set_MinFontCompress:                    # @set_MinFontCompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	movl	%ebx, %esi
	popq	%rbx
	jmp	gs_setcachelower        # TAILCALL
.Lfunc_end14:
	.size	set_MinFontCompress, .Lfunc_end14-set_MinFontCompress
	.cfi_endproc

	.align	16, 0x90
	.type	current_MaxOpStack,@function
current_MaxOpStack:                     # @current_MaxOpStack
	.cfi_startproc
# BB#0:                                 # %entry
	movl	680(%rdi), %eax
	retq
.Lfunc_end15:
	.size	current_MaxOpStack, .Lfunc_end15-current_MaxOpStack
	.cfi_endproc

	.align	16, 0x90
	.type	set_MaxOpStack,@function
set_MaxOpStack:                         # @set_MaxOpStack
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$624, %rdi              # imm = 0x270
	jmp	ref_stack_set_max_count # TAILCALL
.Lfunc_end16:
	.size	set_MaxOpStack, .Lfunc_end16-set_MaxOpStack
	.cfi_endproc

	.align	16, 0x90
	.type	current_MaxDictStack,@function
current_MaxDictStack:                   # @current_MaxDictStack
	.cfi_startproc
# BB#0:                                 # %entry
	movl	424(%rdi), %eax
	retq
.Lfunc_end17:
	.size	current_MaxDictStack, .Lfunc_end17-current_MaxDictStack
	.cfi_endproc

	.align	16, 0x90
	.type	set_MaxDictStack,@function
set_MaxDictStack:                       # @set_MaxDictStack
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$368, %rdi              # imm = 0x170
	jmp	ref_stack_set_max_count # TAILCALL
.Lfunc_end18:
	.size	set_MaxDictStack, .Lfunc_end18-set_MaxDictStack
	.cfi_endproc

	.align	16, 0x90
	.type	current_MaxExecStack,@function
current_MaxExecStack:                   # @current_MaxExecStack
	.cfi_startproc
# BB#0:                                 # %entry
	movl	576(%rdi), %eax
	retq
.Lfunc_end19:
	.size	current_MaxExecStack, .Lfunc_end19-current_MaxExecStack
	.cfi_endproc

	.align	16, 0x90
	.type	set_MaxExecStack,@function
set_MaxExecStack:                       # @set_MaxExecStack
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$520, %rdi              # imm = 0x208
	jmp	ref_stack_set_max_count # TAILCALL
.Lfunc_end20:
	.size	set_MaxExecStack, .Lfunc_end20-set_MaxExecStack
	.cfi_endproc

	.align	16, 0x90
	.type	current_MaxLocalVM,@function
current_MaxLocalVM:                     # @current_MaxLocalVM
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 48
	movq	48(%rdi), %rdi
	leaq	(%rsp), %rsi
	callq	gs_memory_gc_status
	movq	8(%rsp), %rax
	addq	$40, %rsp
	retq
.Lfunc_end21:
	.size	current_MaxLocalVM, .Lfunc_end21-current_MaxLocalVM
	.cfi_endproc

	.align	16, 0x90
	.type	set_MaxLocalVM,@function
set_MaxLocalVM:                         # @set_MaxLocalVM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 80
.Ltmp64:
	.cfi_offset %rbx, -32
.Ltmp65:
	.cfi_offset %r14, -24
.Ltmp66:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	48(%r14), %rdi
	leaq	8(%rsp), %r15
	movq	%r15, %rsi
	callq	gs_memory_gc_status
	xorl	%eax, %eax
	testq	%rbx, %rbx
	cmovsq	%rax, %rbx
	movq	%rbx, 16(%rsp)
	movq	48(%r14), %rdi
	movq	%r15, %rsi
	callq	gs_memory_set_gc_status
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	set_MaxLocalVM, .Lfunc_end22-set_MaxLocalVM
	.cfi_endproc

	.align	16, 0x90
	.type	current_VMReclaim,@function
current_VMReclaim:                      # @current_VMReclaim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 96
.Ltmp69:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	40(%rbx), %rdi
	leaq	40(%rsp), %rsi
	callq	gs_memory_gc_status
	movq	48(%rbx), %rdi
	leaq	(%rsp), %rsi
	callq	gs_memory_gc_status
	cmpl	$1, 28(%rsp)
	sbbq	%rcx, %rcx
	cmpl	$0, 68(%rsp)
	movq	$-2, %rax
	je	.LBB23_2
# BB#1:                                 # %select.mid
	movq	%rcx, %rax
.LBB23_2:                               # %select.end
	addq	$80, %rsp
	popq	%rbx
	retq
.Lfunc_end23:
	.size	current_VMReclaim, .Lfunc_end23-current_VMReclaim
	.cfi_endproc

	.align	16, 0x90
	.type	current_VMThreshold,@function
current_VMThreshold:                    # @current_VMThreshold
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 48
	movq	48(%rdi), %rdi
	leaq	(%rsp), %rsi
	callq	gs_memory_gc_status
	movq	(%rsp), %rax
	addq	$40, %rsp
	retq
.Lfunc_end24:
	.size	current_VMThreshold, .Lfunc_end24-current_VMThreshold
	.cfi_endproc

	.align	16, 0x90
	.type	current_WaitTimeout,@function
current_WaitTimeout:                    # @current_WaitTimeout
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end25:
	.size	current_WaitTimeout, .Lfunc_end25-current_WaitTimeout
	.cfi_endproc

	.align	16, 0x90
	.type	set_WaitTimeout,@function
set_WaitTimeout:                        # @set_WaitTimeout
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end26:
	.size	set_WaitTimeout, .Lfunc_end26-set_WaitTimeout
	.cfi_endproc

	.align	16, 0x90
	.type	current_MinScreenLevels,@function
current_MinScreenLevels:                # @current_MinScreenLevels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rdi
	callq	gs_currentminscreenlevels
	movl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end27:
	.size	current_MinScreenLevels, .Lfunc_end27-current_MinScreenLevels
	.cfi_endproc

	.align	16, 0x90
	.type	set_MinScreenLevels,@function
set_MinScreenLevels:                    # @set_MinScreenLevels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp72:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rdi
	callq	gs_setminscreenlevels
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end28:
	.size	set_MinScreenLevels, .Lfunc_end28-set_MinScreenLevels
	.cfi_endproc

	.align	16, 0x90
	.type	current_AlignToPixels,@function
current_AlignToPixels:                  # @current_AlignToPixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp73:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	callq	gs_currentaligntopixels
	movl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end29:
	.size	current_AlignToPixels, .Lfunc_end29-current_AlignToPixels
	.cfi_endproc

	.align	16, 0x90
	.type	set_AlignToPixels,@function
set_AlignToPixels:                      # @set_AlignToPixels
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	movl	%ebx, %esi
	callq	gs_setaligntopixels
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end30:
	.size	set_AlignToPixels, .Lfunc_end30-set_AlignToPixels
	.cfi_endproc

	.align	16, 0x90
	.type	current_GridFitTT,@function
current_GridFitTT:                      # @current_GridFitTT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	callq	gs_currentgridfittt
	movl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end31:
	.size	current_GridFitTT, .Lfunc_end31-current_GridFitTT
	.cfi_endproc

	.align	16, 0x90
	.type	set_GridFitTT,@function
set_GridFitTT:                          # @set_GridFitTT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	movl	%ebx, %esi
	callq	gs_setgridfittt
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end32:
	.size	set_GridFitTT, .Lfunc_end32-set_GridFitTT
	.cfi_endproc

	.align	16, 0x90
	.type	current_AccurateScreens,@function
current_AccurateScreens:                # @current_AccurateScreens
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rdi
	jmp	gs_currentaccuratescreens # TAILCALL
.Lfunc_end33:
	.size	current_AccurateScreens, .Lfunc_end33-current_AccurateScreens
	.cfi_endproc

	.align	16, 0x90
	.type	set_AccurateScreens,@function
set_AccurateScreens:                    # @set_AccurateScreens
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp79:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rdi
	callq	gs_setaccuratescreens
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end34:
	.size	set_AccurateScreens, .Lfunc_end34-set_AccurateScreens
	.cfi_endproc

	.align	16, 0x90
	.type	current_LockFilePermissions,@function
current_LockFilePermissions:            # @current_LockFilePermissions
	.cfi_startproc
# BB#0:                                 # %entry
	movl	188(%rdi), %eax
	retq
.Lfunc_end35:
	.size	current_LockFilePermissions, .Lfunc_end35-current_LockFilePermissions
	.cfi_endproc

	.align	16, 0x90
	.type	set_LockFilePermissions,@function
set_LockFilePermissions:                # @set_LockFilePermissions
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	jne	.LBB36_2
# BB#1:                                 # %entry
	movl	188(%rdi), %ecx
	movl	$-7, %eax
	testl	%ecx, %ecx
	jne	.LBB36_3
.LBB36_2:                               # %if.end
	movl	%esi, 188(%rdi)
	xorl	%eax, %eax
.LBB36_3:                               # %return
	retq
.Lfunc_end36:
	.size	set_LockFilePermissions, .Lfunc_end36-set_LockFilePermissions
	.cfi_endproc

	.align	16, 0x90
	.type	current_RenderTTNotdef,@function
current_RenderTTNotdef:                 # @current_RenderTTNotdef
	.cfi_startproc
# BB#0:                                 # %entry
	movl	196(%rdi), %eax
	retq
.Lfunc_end37:
	.size	current_RenderTTNotdef, .Lfunc_end37-current_RenderTTNotdef
	.cfi_endproc

	.align	16, 0x90
	.type	set_RenderTTNotdef,@function
set_RenderTTNotdef:                     # @set_RenderTTNotdef
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 196(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end38:
	.size	set_RenderTTNotdef, .Lfunc_end38-set_RenderTTNotdef
	.cfi_endproc

	.align	16, 0x90
	.type	current_OverrideICC,@function
current_OverrideICC:                    # @current_OverrideICC
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_currentoverrideicc   # TAILCALL
.Lfunc_end39:
	.size	current_OverrideICC, .Lfunc_end39-current_OverrideICC
	.cfi_endproc

	.align	16, 0x90
	.type	set_OverrideICC,@function
set_OverrideICC:                        # @set_OverrideICC
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp80:
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	gs_setoverrideicc
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end40:
	.size	set_OverrideICC, .Lfunc_end40-set_OverrideICC
	.cfi_endproc

	.align	16, 0x90
	.type	current_default_gray_icc,@function
current_default_gray_icc:               # @current_default_gray_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_currentdefaultgrayicc # TAILCALL
.Lfunc_end41:
	.size	current_default_gray_icc, .Lfunc_end41-current_default_gray_icc
	.cfi_endproc

	.align	16, 0x90
	.type	set_default_gray_icc,@function
set_default_gray_icc:                   # @set_default_gray_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_setdefaultgrayicc    # TAILCALL
.Lfunc_end42:
	.size	set_default_gray_icc, .Lfunc_end42-set_default_gray_icc
	.cfi_endproc

	.align	16, 0x90
	.type	current_default_rgb_icc,@function
current_default_rgb_icc:                # @current_default_rgb_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_currentdefaultrgbicc # TAILCALL
.Lfunc_end43:
	.size	current_default_rgb_icc, .Lfunc_end43-current_default_rgb_icc
	.cfi_endproc

	.align	16, 0x90
	.type	set_default_rgb_icc,@function
set_default_rgb_icc:                    # @set_default_rgb_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_setdefaultrgbicc     # TAILCALL
.Lfunc_end44:
	.size	set_default_rgb_icc, .Lfunc_end44-set_default_rgb_icc
	.cfi_endproc

	.align	16, 0x90
	.type	current_default_cmyk_icc,@function
current_default_cmyk_icc:               # @current_default_cmyk_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_currentdefaultcmykicc # TAILCALL
.Lfunc_end45:
	.size	current_default_cmyk_icc, .Lfunc_end45-current_default_cmyk_icc
	.cfi_endproc

	.align	16, 0x90
	.type	set_default_cmyk_icc,@function
set_default_cmyk_icc:                   # @set_default_cmyk_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_setdefaultcmykicc    # TAILCALL
.Lfunc_end46:
	.size	set_default_cmyk_icc, .Lfunc_end46-set_default_cmyk_icc
	.cfi_endproc

	.align	16, 0x90
	.type	current_named_icc,@function
current_named_icc:                      # @current_named_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_currentnamedicc      # TAILCALL
.Lfunc_end47:
	.size	current_named_icc, .Lfunc_end47-current_named_icc
	.cfi_endproc

	.align	16, 0x90
	.type	set_named_profile_icc,@function
set_named_profile_icc:                  # @set_named_profile_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_setnamedprofileicc   # TAILCALL
.Lfunc_end48:
	.size	set_named_profile_icc, .Lfunc_end48-set_named_profile_icc
	.cfi_endproc

	.align	16, 0x90
	.type	current_icc_directory,@function
current_icc_directory:                  # @current_icc_directory
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_currenticcdirectory  # TAILCALL
.Lfunc_end49:
	.size	current_icc_directory, .Lfunc_end49-current_icc_directory
	.cfi_endproc

	.align	16, 0x90
	.type	set_icc_directory,@function
set_icc_directory:                      # @set_icc_directory
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_seticcdirectory      # TAILCALL
.Lfunc_end50:
	.size	set_icc_directory, .Lfunc_end50-set_icc_directory
	.cfi_endproc

	.align	16, 0x90
	.type	current_lab_icc,@function
current_lab_icc:                        # @current_lab_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_currentlabicc        # TAILCALL
.Lfunc_end51:
	.size	current_lab_icc, .Lfunc_end51-current_lab_icc
	.cfi_endproc

	.align	16, 0x90
	.type	set_lab_icc,@function
set_lab_icc:                            # @set_lab_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_setlabicc            # TAILCALL
.Lfunc_end52:
	.size	set_lab_icc, .Lfunc_end52-set_lab_icc
	.cfi_endproc

	.align	16, 0x90
	.type	current_devicen_icc,@function
current_devicen_icc:                    # @current_devicen_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_currentdevicenicc    # TAILCALL
.Lfunc_end53:
	.size	current_devicen_icc, .Lfunc_end53-current_devicen_icc
	.cfi_endproc

	.align	16, 0x90
	.type	set_devicen_profile_icc,@function
set_devicen_profile_icc:                # @set_devicen_profile_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_setdevicenprofileicc # TAILCALL
.Lfunc_end54:
	.size	set_devicen_profile_icc, .Lfunc_end54-set_devicen_profile_icc
	.cfi_endproc

	.align	16, 0x90
	.type	current_srcgtag_icc,@function
current_srcgtag_icc:                    # @current_srcgtag_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_currentsrcgtagicc    # TAILCALL
.Lfunc_end55:
	.size	current_srcgtag_icc, .Lfunc_end55-current_srcgtag_icc
	.cfi_endproc

	.align	16, 0x90
	.type	set_srcgtag_icc,@function
set_srcgtag_icc:                        # @set_srcgtag_icc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_setsrcgtagicc        # TAILCALL
.Lfunc_end56:
	.size	set_srcgtag_icc, .Lfunc_end56-set_srcgtag_icc
	.cfi_endproc

	.align	16, 0x90
	.type	current_param_list,@function
current_param_list:                     # @current_param_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp85:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp87:
	.cfi_def_cfa_offset 208
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
	.cfi_offset %r15, -24
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rdi, (%rsp)            # 8-byte Spill
	leaq	624(%rdi), %rsi
	movq	8(%rdi), %rcx
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	48(%rsp), %rdi
	xorl	%edx, %edx
	callq	stack_param_list_write
	cmpl	$0, 8(%rbp)
                                        # implicit-def: R12D
	je	.LBB57_7
# BB#1:                                 # %for.body.lr.ph
	xorl	%eax, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
                                        # implicit-def: R12D
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB57_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	movl	%ebx, %ebx
	movq	(%rbp), %rcx
	leaq	(%rbx,%rbx,4), %rbp
	movq	(%rcx,%rbp,8), %r13
	je	.LBB57_5
# BB#3:                                 # %lor.rhs.i
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	%r13, %rdi
	callq	strlen
	movq	8(%r15), %rdx
	movl	4(%r15), %ecx
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	bytes_compare
	testl	%eax, %eax
	jne	.LBB57_6
# BB#4:                                 # %lor.rhs.i.if.then_crit_edge
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
.LBB57_5:                               # %if.then
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	*24(%rcx,%rbp,8)
	movq	%rax, 32(%rsp)
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	leaq	32(%rsp), %rdx
	callq	param_write_long
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	js	.LBB57_27
.LBB57_6:                               # %for.inc
                                        #   in Loop: Header=BB57_2 Depth=1
	incl	%ebx
	movq	16(%rsp), %rbp          # 8-byte Reload
	cmpl	8(%rbp), %ebx
	jb	.LBB57_2
.LBB57_7:                               # %for.cond.15.preheader
	cmpl	$0, 24(%rbp)
	je	.LBB57_14
# BB#8:                                 # %for.body.17.lr.ph
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB57_9:                               # %for.body.17
                                        # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	movl	%r14d, %r14d
	movq	16(%rbp), %rcx
	leaq	(%r14,%r14,2), %rbx
	movq	(%rcx,%rbx,8), %r13
	je	.LBB57_12
# BB#10:                                # %lor.rhs.i.73
                                        #   in Loop: Header=BB57_9 Depth=1
	movq	%r13, %rdi
	callq	strlen
	movq	8(%r15), %rdx
	movl	4(%r15), %ecx
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	bytes_compare
	testl	%eax, %eax
	jne	.LBB57_13
# BB#11:                                # %lor.rhs.i.73.if.then.24_crit_edge
                                        #   in Loop: Header=BB57_9 Depth=1
	movq	16(%rbp), %rcx
.LBB57_12:                              # %if.then.24
                                        #   in Loop: Header=BB57_9 Depth=1
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	*8(%rcx,%rbx,8)
	movl	%eax, 32(%rsp)
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	leaq	32(%rsp), %rdx
	callq	param_write_bool
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	js	.LBB57_27
.LBB57_13:                              # %for.inc.42
                                        #   in Loop: Header=BB57_9 Depth=1
	incl	%r14d
	cmpl	24(%rbp), %r14d
	jb	.LBB57_9
.LBB57_14:                              # %for.cond.45.preheader
	cmpl	$0, 40(%rbp)
	je	.LBB57_21
# BB#15:                                # %for.body.47.lr.ph
	xorl	%ebx, %ebx
	leaq	32(%rsp), %r14
	.align	16, 0x90
.LBB57_16:                              # %for.body.47
                                        # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	movl	%ebx, %ebx
	movq	32(%rbp), %rax
	leaq	(%rbx,%rbx,2), %rbp
	movq	(%rax,%rbp,8), %r13
	je	.LBB57_19
# BB#17:                                # %lor.rhs.i.84
                                        #   in Loop: Header=BB57_16 Depth=1
	movq	%r13, %rdi
	callq	strlen
	movq	8(%r15), %rdx
	movl	4(%r15), %ecx
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	bytes_compare
	testl	%eax, %eax
	jne	.LBB57_20
# BB#18:                                # %lor.rhs.i.84.if.then.54_crit_edge
                                        #   in Loop: Header=BB57_16 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	32(%rax), %rax
.LBB57_19:                              # %if.then.54
                                        #   in Loop: Header=BB57_16 Depth=1
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%r14, %rsi
	callq	*8(%rax,%rbp,8)
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	param_write_string
	movq	%rax, 8(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	js	.LBB57_27
.LBB57_20:                              # %for.inc.71
                                        #   in Loop: Header=BB57_16 Depth=1
	incl	%ebx
	movq	16(%rsp), %rbp          # 8-byte Reload
	cmpl	40(%rbp), %ebx
	jb	.LBB57_16
.LBB57_21:                              # %for.end.73
	testq	%r15, %r15
	je	.LBB57_26
# BB#22:                                # %if.then.75
	movq	(%rsp), %rax            # 8-byte Reload
	movl	184(%rax), %esi
	leaq	32(%rsp), %rdx
	movq	%r15, %rdi
	callq	ztoken_get_scanner_option
	testl	%eax, %eax
	jne	.LBB57_23
# BB#28:                                # %sw.bb
	movq	32(%rsp), %rsi
	leaq	48(%rsp), %rdi
	callq	param_write_null
	jmp	.LBB57_25
.LBB57_23:                              # %if.then.75
	cmpl	$1, %eax
	jne	.LBB57_26
# BB#24:                                # %sw.bb.81
	movl	$1, 28(%rsp)
	movq	32(%rsp), %rsi
	leaq	48(%rsp), %rdi
	leaq	28(%rsp), %rdx
	callq	param_write_bool
.LBB57_25:                              # %sw.epilog
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB57_27
.LBB57_26:                              # %if.end.91
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%eax, %r12d
.LBB57_27:                              # %cleanup.92
	movl	%r12d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	current_param_list, .Lfunc_end57-current_param_list
	.cfi_endproc

	.align	16, 0x90
	.type	current_BuildTime,@function
current_BuildTime:                      # @current_BuildTime
	.cfi_startproc
# BB#0:                                 # %entry
	movq	gs_buildtime(%rip), %rax
	retq
.Lfunc_end58:
	.size	current_BuildTime, .Lfunc_end58-current_BuildTime
	.cfi_endproc

	.align	16, 0x90
	.type	current_MaxFontCache,@function
current_MaxFontCache:                   # @current_MaxFontCache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp94:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	callq	gs_currentcachesize
	movl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end59:
	.size	current_MaxFontCache, .Lfunc_end59-current_MaxFontCache
	.cfi_endproc

	.align	16, 0x90
	.type	set_MaxFontCache,@function
set_MaxFontCache:                       # @set_MaxFontCache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp95:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp97:
	.cfi_def_cfa_offset 32
.Ltmp98:
	.cfi_offset %rbx, -24
.Ltmp99:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	(%rdi), %r14
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	cmpq	%rax, %rbx
	movl	$-1, %eax
	cmovlel	%ebx, %eax
	xorl	%edx, %edx
	testq	%rbx, %rbx
	cmovnsl	%eax, %edx
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gs_setcachesize         # TAILCALL
.Lfunc_end60:
	.size	set_MaxFontCache, .Lfunc_end60-set_MaxFontCache
	.cfi_endproc

	.align	16, 0x90
	.type	current_CurFontCache,@function
current_CurFontCache:                   # @current_CurFontCache
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp100:
	.cfi_def_cfa_offset 48
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	leaq	(%rsp), %rsi
	callq	gs_cachestatus
	movl	(%rsp), %eax
	addq	$40, %rsp
	retq
.Lfunc_end61:
	.size	current_CurFontCache, .Lfunc_end61-current_CurFontCache
	.cfi_endproc

	.align	16, 0x90
	.type	current_Revision,@function
current_Revision:                       # @current_Revision
	.cfi_startproc
# BB#0:                                 # %entry
	movq	gs_revision(%rip), %rax
	retq
.Lfunc_end62:
	.size	current_Revision, .Lfunc_end62-current_Revision
	.cfi_endproc

	.align	16, 0x90
	.type	current_PageCount,@function
current_PageCount:                      # @current_PageCount
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp103:
	.cfi_def_cfa_offset 32
.Ltmp104:
	.cfi_offset %rbx, -24
.Ltmp105:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	(%r14), %rdi
	callq	gs_currentdevice
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	*1296(%rbx)
	testq	%rax, %rax
	je	.LBB63_1
# BB#2:                                 # %if.then
	movq	936(%rbx), %rcx
	movq	120(%r14), %rax
	cmpq	%rax, %rcx
	jle	.LBB63_4
# BB#3:                                 # %if.then.3
	movq	%rcx, 120(%r14)
	movq	%rcx, %rax
	jmp	.LBB63_4
.LBB63_1:                               # %entry.if.end.6_crit_edge
	movq	120(%r14), %rax
.LBB63_4:                               # %if.end.6
	addq	$1000, %rax             # imm = 0x3E8
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end63:
	.size	current_PageCount, .Lfunc_end63-current_PageCount
	.cfi_endproc

	.align	16, 0x90
	.type	current_MaxGlobalVM,@function
current_MaxGlobalVM:                    # @current_MaxGlobalVM
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 48
	movq	40(%rdi), %rdi
	leaq	(%rsp), %rsi
	callq	gs_memory_gc_status
	movq	8(%rsp), %rax
	addq	$40, %rsp
	retq
.Lfunc_end64:
	.size	current_MaxGlobalVM, .Lfunc_end64-current_MaxGlobalVM
	.cfi_endproc

	.align	16, 0x90
	.type	set_MaxGlobalVM,@function
set_MaxGlobalVM:                        # @set_MaxGlobalVM
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp107:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp108:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp110:
	.cfi_def_cfa_offset 80
.Ltmp111:
	.cfi_offset %rbx, -32
.Ltmp112:
	.cfi_offset %r14, -24
.Ltmp113:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	40(%r14), %rdi
	leaq	8(%rsp), %r15
	movq	%r15, %rsi
	callq	gs_memory_gc_status
	xorl	%eax, %eax
	testq	%rbx, %rbx
	cmovsq	%rax, %rbx
	movq	%rbx, 16(%rsp)
	movq	40(%r14), %rdi
	movq	%r15, %rsi
	callq	gs_memory_set_gc_status
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end65:
	.size	set_MaxGlobalVM, .Lfunc_end65-set_MaxGlobalVM
	.cfi_endproc

	.align	16, 0x90
	.type	current_ByteOrder,@function
current_ByteOrder:                      # @current_ByteOrder
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end66:
	.size	current_ByteOrder, .Lfunc_end66-current_ByteOrder
	.cfi_endproc

	.align	16, 0x90
	.type	current_RealFormat,@function
current_RealFormat:                     # @current_RealFormat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	$.L.str.42, (%rbx)
	movl	$.L.str.42, %edi
	callq	strlen
	movl	%eax, 8(%rbx)
	movl	$1, 12(%rbx)
	popq	%rbx
	retq
.Lfunc_end67:
	.size	current_RealFormat, .Lfunc_end67-current_RealFormat
	.cfi_endproc

	.type	user_param_set,@object  # @user_param_set
	.section	.rodata,"a",@progbits
	.align	8
user_param_set:
	.quad	user_long_params
	.long	13                      # 0xd
	.zero	4
	.quad	user_bool_params
	.long	4                       # 0x4
	.zero	4
	.quad	user_string_params
	.long	8                       # 0x8
	.zero	4
	.size	user_param_set, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"iparam_list_release"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0.currentsystemparams"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0.currentuserparams"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"1.getsystemparam"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.getuserparam"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.setsystemparams"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1.setuserparams"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"level2dict"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"1.checkpassword"
	.size	.L.str.8, 16

	.type	zusparam_op_defs,@object # @zusparam_op_defs
	.section	.rodata,"a",@progbits
	.globl	zusparam_op_defs
	.align	16
zusparam_op_defs:
	.quad	.L.str.1
	.quad	zcurrentsystemparams
	.quad	.L.str.2
	.quad	zcurrentuserparams
	.quad	.L.str.3
	.quad	zgetsystemparam
	.quad	.L.str.4
	.quad	zgetuserparam
	.quad	.L.str.5
	.quad	zsetsystemparams
	.quad	.L.str.6
	.quad	zsetuserparams
	.quad	.L.str.7
	.quad	0
	.quad	.L.str.8
	.quad	zcheckpassword
	.zero	16
	.size	zusparam_op_defs, 144

	.type	user_long_params,@object # @user_long_params
	.align	16
user_long_params:
	.quad	.L.str.9
	.quad	0                       # 0x0
	.quad	4294967295              # 0xffffffff
	.quad	current_JobTimeout
	.quad	set_JobTimeout
	.quad	.L.str.10
	.quad	-2147483648             # 0xffffffff80000000
	.quad	4294967295              # 0xffffffff
	.quad	current_MaxFontItem
	.quad	set_MaxFontItem
	.quad	.L.str.11
	.quad	-2147483648             # 0xffffffff80000000
	.quad	4294967295              # 0xffffffff
	.quad	current_MinFontCompress
	.quad	set_MinFontCompress
	.quad	.L.str.12
	.quad	0                       # 0x0
	.quad	4294967295              # 0xffffffff
	.quad	current_MaxOpStack
	.quad	set_MaxOpStack
	.quad	.L.str.13
	.quad	0                       # 0x0
	.quad	4294967295              # 0xffffffff
	.quad	current_MaxDictStack
	.quad	set_MaxDictStack
	.quad	.L.str.14
	.quad	0                       # 0x0
	.quad	4294967295              # 0xffffffff
	.quad	current_MaxExecStack
	.quad	set_MaxExecStack
	.quad	.L.str.15
	.quad	0                       # 0x0
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	current_MaxLocalVM
	.quad	set_MaxLocalVM
	.quad	.L.str.16
	.quad	-2                      # 0xfffffffffffffffe
	.quad	0                       # 0x0
	.quad	current_VMReclaim
	.quad	set_vm_reclaim
	.quad	.L.str.17
	.quad	-1                      # 0xffffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	current_VMThreshold
	.quad	set_vm_threshold
	.quad	.L.str.18
	.quad	0                       # 0x0
	.quad	4294967295              # 0xffffffff
	.quad	current_WaitTimeout
	.quad	set_WaitTimeout
	.quad	.L.str.19
	.quad	0                       # 0x0
	.quad	4294967295              # 0xffffffff
	.quad	current_MinScreenLevels
	.quad	set_MinScreenLevels
	.quad	.L.str.20
	.quad	0                       # 0x0
	.quad	1                       # 0x1
	.quad	current_AlignToPixels
	.quad	set_AlignToPixels
	.quad	.L.str.21
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	current_GridFitTT
	.quad	set_GridFitTT
	.size	user_long_params, 520

	.type	user_bool_params,@object # @user_bool_params
	.align	16
user_bool_params:
	.quad	.L.str.22
	.quad	current_AccurateScreens
	.quad	set_AccurateScreens
	.quad	.L.str.23
	.quad	current_LockFilePermissions
	.quad	set_LockFilePermissions
	.quad	.L.str.24
	.quad	current_RenderTTNotdef
	.quad	set_RenderTTNotdef
	.quad	.L.str.25
	.quad	current_OverrideICC
	.quad	set_OverrideICC
	.size	user_bool_params, 96

	.type	user_string_params,@object # @user_string_params
	.align	16
user_string_params:
	.quad	.L.str.26
	.quad	current_default_gray_icc
	.quad	set_default_gray_icc
	.quad	.L.str.27
	.quad	current_default_rgb_icc
	.quad	set_default_rgb_icc
	.quad	.L.str.28
	.quad	current_default_cmyk_icc
	.quad	set_default_cmyk_icc
	.quad	.L.str.29
	.quad	current_named_icc
	.quad	set_named_profile_icc
	.quad	.L.str.30
	.quad	current_icc_directory
	.quad	set_icc_directory
	.quad	.L.str.31
	.quad	current_lab_icc
	.quad	set_lab_icc
	.quad	.L.str.32
	.quad	current_devicen_icc
	.quad	set_devicen_profile_icc
	.quad	.L.str.33
	.quad	current_srcgtag_icc
	.quad	set_srcgtag_icc
	.size	user_string_params, 192

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"JobTimeout"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"MaxFontItem"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"MinFontCompress"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"MaxOpStack"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"MaxDictStack"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"MaxExecStack"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"MaxLocalVM"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"VMReclaim"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"VMThreshold"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"WaitTimeout"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"MinScreenLevels"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"AlignToPixels"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GridFitTT"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"AccurateScreens"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"LockFilePermissions"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RenderTTNotdef"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"OverrideICC"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"DefaultGrayProfile"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"DefaultRGBProfile"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"DefaultCMYKProfile"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"NamedProfile"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"ICCProfilesDir"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"LabProfile"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"DeviceNProfile"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"SourceObjectICC"
	.size	.L.str.33, 16

	.type	system_param_set,@object # @system_param_set
	.section	.rodata,"a",@progbits
	.align	8
system_param_set:
	.quad	system_long_params
	.long	6                       # 0x6
	.zero	4
	.quad	system_bool_params
	.long	1                       # 0x1
	.zero	4
	.quad	system_string_params
	.long	1                       # 0x1
	.zero	4
	.size	system_param_set, 48

	.type	system_long_params,@object # @system_long_params
	.align	16
system_long_params:
	.quad	.L.str.34
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	current_BuildTime
	.quad	0
	.quad	.L.str.35
	.quad	0                       # 0x0
	.quad	4294967295              # 0xffffffff
	.quad	current_MaxFontCache
	.quad	set_MaxFontCache
	.quad	.L.str.36
	.quad	0                       # 0x0
	.quad	4294967295              # 0xffffffff
	.quad	current_CurFontCache
	.quad	0
	.quad	.L.str.37
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	current_Revision
	.quad	0
	.quad	.L.str.38
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	current_PageCount
	.quad	0
	.quad	.L.str.39
	.quad	0                       # 0x0
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	current_MaxGlobalVM
	.quad	set_MaxGlobalVM
	.size	system_long_params, 240

	.type	system_bool_params,@object # @system_bool_params
	.align	16
system_bool_params:
	.quad	.L.str.40
	.quad	current_ByteOrder
	.quad	0
	.size	system_bool_params, 24

	.type	system_string_params,@object # @system_string_params
	.align	16
system_string_params:
	.quad	.L.str.41
	.quad	current_RealFormat
	.quad	0
	.size	system_string_params, 24

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"BuildTime"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"MaxFontCache"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"CurFontCache"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Revision"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"PageCount"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"MaxGlobalVM"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"ByteOrder"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"RealFormat"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"IEEE"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"SystemParamsPassword"
	.size	.L.str.43, 21

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"StartJobPassword"
	.size	.L.str.44, 17

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Password"
	.size	.L.str.45, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
