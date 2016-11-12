	.text
	.file	"ztrans.bc"
	.align	16, 0x90
	.type	zsetblendmode,@function
zsetblendmode:                          # @zsetblendmode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
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
	.cfi_offset %r13, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rax
	movzbl	1(%rax), %ecx
	cmpl	$13, %ecx
	jne	.LBB0_10
# BB#1:                                 # %if.end
	movq	8(%r14), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	leaq	(%rsp), %rdx
	movq	%rax, %rsi
	callq	names_string_ref
	movl	4(%rsp), %r15d
	movl	$blend_mode_names, %r13d
	movl	$.L.str.19, %ebx
	movq	8(%rsp), %r12
	.align	16, 0x90
.LBB0_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	strlen
	cmpq	%rax, %r15
	jne	.LBB0_4
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_6
.LBB0_4:                                # %for.inc.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	8(%r13), %rbx
	addq	$8, %r13
	testq	%rbx, %rbx
	jne	.LBB0_2
# BB#5:                                 # %enum_param.exit.thread
	movl	$-15, %r13d
	jmp	.LBB0_9
.LBB0_10:                               # %if.then
	movq	%rax, %rdi
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	check_type_failed       # TAILCALL
.LBB0_6:                                # %enum_param.exit
	movl	$blend_mode_names, %eax
	subq	%rax, %r13
	shrq	$3, %r13
	testl	%r13d, %r13d
	js	.LBB0_9
# BB#7:                                 # %lor.lhs.false
	movq	(%r14), %rdi
	movl	%r13d, %esi
	callq	gs_setblendmode
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB0_9
# BB#8:                                 # %if.end.9
	addq	$-16, 624(%r14)
	xorl	%r13d, %r13d
.LBB0_9:                                # %cleanup
	movl	%r13d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	zsetblendmode, .Lfunc_end0-zsetblendmode
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentblendmode,@function
zcurrentblendmode:                      # @zcurrentblendmode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 48
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	(%rbx), %rdi
	callq	gs_currentblendmode
	movl	%eax, %eax
	movq	blend_mode_names(,%rax,8), %rsi
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %rdx
	callq	names_enter_string
	testl	%eax, %eax
	js	.LBB1_4
# BB#1:                                 # %do.body
	addq	$16, %r14
	cmpq	640(%rbx), %r14
	jbe	.LBB1_3
# BB#2:                                 # %if.then.5
	movl	$1, 688(%rbx)
	movl	$-16, %eax
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movq	%r14, 624(%rbx)
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB1_4:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	zcurrentblendmode, .Lfunc_end1-zcurrentblendmode
	.cfi_endproc

	.align	16, 0x90
	.type	zsetopacityalpha,@function
zsetopacityalpha:                       # @zsetopacityalpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB2_1
# BB#2:                                 # %if.end.i
	movq	(%r14), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	callq	gs_setopacityalpha
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:                                 # %if.end.5.i
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB2_4
.LBB2_1:                                # %if.then.i
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB2_4:                                # %set_float_value.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	zsetopacityalpha, .Lfunc_end2-zsetopacityalpha
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentopacityalpha,@function
zcurrentopacityalpha:                   # @zcurrentopacityalpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB3_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB3_2:                                # %if.else.i
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentopacityalpha
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end3:
	.size	zcurrentopacityalpha, .Lfunc_end3-zcurrentopacityalpha
	.cfi_endproc

	.align	16, 0x90
	.type	zsetshapealpha,@function
zsetshapealpha:                         # @zsetshapealpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	real_param
	testl	%eax, %eax
	js	.LBB4_1
# BB#2:                                 # %if.end.i
	movq	(%r14), %rdi
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	callq	gs_setshapealpha
	testl	%eax, %eax
	js	.LBB4_4
# BB#3:                                 # %if.end.5.i
	addq	$-16, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB4_4
.LBB4_1:                                # %if.then.i
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB4_4:                                # %set_float_value.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	zsetshapealpha, .Lfunc_end4-zsetshapealpha
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrentshapealpha,@function
zcurrentshapealpha:                     # @zcurrentshapealpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB5_2
# BB#1:                                 # %if.then.i
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB5_2:                                # %if.else.i
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currentshapealpha
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	zcurrentshapealpha, .Lfunc_end5-zcurrentshapealpha
	.cfi_endproc

	.align	16, 0x90
	.type	zsettextknockout,@function
zsettextknockout:                       # @zsettextknockout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB6_2
# BB#1:                                 # %cleanup
	movq	(%rbx), %rax
	movzwl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	gs_settextknockout
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB6_2:                                # %if.then
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end6:
	.size	zsettextknockout, .Lfunc_end6-zsettextknockout
	.cfi_endproc

	.align	16, 0x90
	.type	zcurrenttextknockout,@function
zcurrenttextknockout:                   # @zcurrenttextknockout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbx, -16
	movq	624(%rdi), %rbx
	leaq	16(%rbx), %rax
	cmpq	640(%rdi), %rax
	jbe	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, 688(%rdi)
	movl	$-16, %eax
	popq	%rbx
	retq
.LBB7_2:                                # %if.else
	movq	%rax, 624(%rdi)
	movq	(%rdi), %rdi
	callq	gs_currenttextknockout
	movw	%ax, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	zcurrenttextknockout, .Lfunc_end7-zcurrenttextknockout
	.cfi_endproc

	.align	16, 0x90
	.type	zpushextendedgstate,@function
zpushextendedgstate:                    # @zpushextendedgstate
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_push_transparency_state # TAILCALL
.Lfunc_end8:
	.size	zpushextendedgstate, .Lfunc_end8-zpushextendedgstate
	.cfi_endproc

	.align	16, 0x90
	.type	zpopextendedgstate,@function
zpopextendedgstate:                     # @zpopextendedgstate
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	xorl	%esi, %esi
	jmp	gs_pop_transparency_state # TAILCALL
.Lfunc_end9:
	.size	zpopextendedgstate, .Lfunc_end9-zpopextendedgstate
	.cfi_endproc

	.align	16, 0x90
	.type	zbegintransparencygroup,@function
zbegintransparencygroup:                # @zbegintransparencygroup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 32
	subq	$144, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 176
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-64(%rbx), %r15
	movzbl	-63(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB10_1
# BB#2:                                 # %do.body
	movq	-56(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB10_16
# BB#3:                                 # %do.end
	leaq	56(%rsp), %rdi
	callq	gs_trans_group_params_init
	leaq	64(%rsp), %rcx
	movl	$.L.str.36, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB10_16
# BB#4:                                 # %lor.lhs.false
	leaq	68(%rsp), %rcx
	movl	$.L.str.37, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB10_16
# BB#5:                                 # %lor.lhs.false.13
	leaq	72(%rsp), %rcx
	movl	$.L.str.38, %esi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB10_16
# BB#6:                                 # %if.end.18
	leaq	112(%rsp), %rdx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB10_16
# BB#7:                                 # %if.end.23
	movaps	112(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	128(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.39, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB10_13
# BB#8:                                 # %if.else
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	%rax, 56(%rsp)
	movq	%rax, %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	jne	.LBB10_13
# BB#9:                                 # %if.else.35
	movq	56(%rsp), %rdi
	callq	gs_color_space_is_ICC
	testl	%eax, %eax
	je	.LBB10_14
# BB#10:                                # %land.lhs.true
	movq	56(%rsp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_14
# BB#11:                                # %land.lhs.true.42
	movq	280(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB10_14
# BB#12:                                # %if.then.47
	callq	gscms_is_input
	testl	%eax, %eax
	je	.LBB10_14
.LBB10_13:                              # %if.then.53
	movq	$0, 56(%rsp)
.LBB10_14:                              # %if.end.58
	movq	(%r14), %rdi
	leaq	56(%rsp), %rsi
	leaq	16(%rsp), %rdx
	callq	gs_begin_transparency_group
	testl	%eax, %eax
	js	.LBB10_16
# BB#15:                                # %if.end.64
	addq	$-80, 624(%r14)
	jmp	.LBB10_16
.LBB10_1:                               # %if.then
	movq	%r15, %rdi
	callq	check_type_failed
.LBB10_16:                              # %cleanup
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	zbegintransparencygroup, .Lfunc_end10-zbegintransparencygroup
	.cfi_endproc

	.align	16, 0x90
	.type	zendtransparencygroup,@function
zendtransparencygroup:                  # @zendtransparencygroup
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_end_transparency_group # TAILCALL
.Lfunc_end11:
	.size	zendtransparencygroup, .Lfunc_end11-zendtransparencygroup
	.cfi_endproc

	.align	16, 0x90
	.type	zbegintransparencymaskgroup,@function
zbegintransparencymaskgroup:            # @zbegintransparencymaskgroup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 48
	subq	$400, %rsp              # imm = 0x190
.Ltmp46:
	.cfi_def_cfa_offset 448
.Ltmp47:
	.cfi_offset %rbx, -48
.Ltmp48:
	.cfi_offset %r12, -40
.Ltmp49:
	.cfi_offset %r13, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-64(%rbx), %r15
	movzbl	-63(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB12_1
# BB#2:                                 # %do.body
	movq	-56(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB12_31
# BB#3:                                 # %do.end
	leaq	40(%rsp), %rdx
	movl	$.L.str.41, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_4
# BB#5:                                 # %if.end.11
	movq	8(%r14), %rax
	movq	40(%rsp), %rsi
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	368(%rsp), %rdx
	callq	names_string_ref
	movl	372(%rsp), %r12d
	movq	376(%rsp), %r13
	movl	$.L.str.40, %edi
	callq	strlen
	cmpq	%rax, %r12
	jne	.LBB12_7
# BB#6:                                 # %land.lhs.true.i
	movl	$.L.str.40, %edi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memcmp
	movl	%eax, %ecx
	movl	$zbegintransparencymaskgroup.subtype_names, %eax
	testl	%ecx, %ecx
	je	.LBB12_9
.LBB12_7:                               # %for.inc.i
	movl	$.L.str.31, %edi
	callq	strlen
	cmpq	%rax, %r12
	jne	.LBB12_32
# BB#8:                                 # %land.lhs.true.i.1
	movl	$.L.str.31, %edi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	memcmp
	movl	%eax, %ecx
	movl	$zbegintransparencymaskgroup.subtype_names+8, %eax
	testl	%ecx, %ecx
	je	.LBB12_9
.LBB12_32:                              # %for.inc.i.1
	movl	$-15, %eax
	jmp	.LBB12_31
.LBB12_1:                               # %if.then
	movq	%r15, %rdi
	callq	check_type_failed
.LBB12_31:                              # %cleanup.108
	addq	$400, %rsp              # imm = 0x190
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB12_4:
	movl	$-15, %eax
	jmp	.LBB12_31
.LBB12_9:                               # %enum_param.exit
	movl	$zbegintransparencymaskgroup.subtype_names, %ecx
	subq	%rcx, %rax
	shrq	$3, %rax
	testl	%eax, %eax
	js	.LBB12_31
# BB#10:                                # %if.end.16
	leaq	48(%rsp), %rdi
	movl	%eax, %esi
	callq	gs_trans_mask_params_init
	movl	$1, 344(%rsp)
	movq	(%r14), %rdi
	movq	8(%r14), %r12
	callq	gs_currentcolorspace
	movq	(%rax), %rax
	movq	24(%rax), %r13
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %rdi
	callq	*%r13
	leaq	64(%rsp), %r8
	movl	$.L.str.42, %edx
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%eax, %ecx
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB12_31
# BB#11:                                # %if.else
	jle	.LBB12_13
# BB#12:                                # %if.then.29
	movl	%eax, 60(%rsp)
.LBB12_13:                              # %if.end.31
	movq	8(%r14), %rdi
	leaq	320(%rsp), %r8
	movl	$.L.str.43, %edx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	callq	dict_floats_param
	testl	%eax, %eax
	js	.LBB12_31
# BB#14:                                # %if.end.38
	leaq	40(%rsp), %rdx
	movl	$.L.str.44, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_21
# BB#15:                                # %if.then.42
	movq	40(%rsp), %rdi
	callq	ref_function
	movq	%rax, %rcx
	testq	%rcx, %rcx
	je	.LBB12_16
# BB#17:                                # %lor.lhs.false
	cmpl	$1, 72(%rcx)
	jne	.LBB12_18
# BB#19:                                # %lor.lhs.false.49
	cmpl	$1, 88(%rcx)
	movl	$-15, %eax
	jne	.LBB12_31
# BB#20:                                # %if.end.54
	movq	$tf_using_function, 328(%rsp)
	movq	%rcx, 336(%rsp)
.LBB12_21:                              # %if.end.55
	leaq	368(%rsp), %rdx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB12_31
# BB#22:                                # %if.end.60
	movaps	368(%rsp), %xmm0
	movaps	%xmm0, (%rsp)
	movaps	384(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	cmpw	$0, -72(%rbx)
	je	.LBB12_28
# BB#23:                                # %if.then.64
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	%rax, 48(%rsp)
	movq	%rax, %rdi
	callq	gs_color_space_is_PSCIE
	testl	%eax, %eax
	jne	.LBB12_28
# BB#24:                                # %if.else.72
	movq	48(%rsp), %rdi
	callq	gs_color_space_is_ICC
	testl	%eax, %eax
	je	.LBB12_29
# BB#25:                                # %land.lhs.true
	movq	48(%rsp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.LBB12_29
# BB#26:                                # %land.lhs.true.79
	movq	280(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB12_29
# BB#27:                                # %if.then.84
	callq	gscms_is_input
	testl	%eax, %eax
	je	.LBB12_29
.LBB12_28:                              # %if.else.95
	movq	$0, 48(%rsp)
.LBB12_29:                              # %if.end.97
	movq	(%r14), %rdi
	leaq	48(%rsp), %rsi
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	gs_begin_transparency_mask
	testl	%eax, %eax
	js	.LBB12_31
# BB#30:                                # %if.end.103
	addq	$-96, 624(%r14)
	jmp	.LBB12_31
.LBB12_16:
	movl	$-15, %eax
	jmp	.LBB12_31
.LBB12_18:
	movl	$-15, %eax
	jmp	.LBB12_31
.Lfunc_end12:
	.size	zbegintransparencymaskgroup, .Lfunc_end12-zbegintransparencymaskgroup
	.cfi_endproc

	.align	16, 0x90
	.type	zbegintransparencymaskimage,@function
zbegintransparencymaskimage:            # @zbegintransparencymaskimage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 32
	subq	$352, %rsp              # imm = 0x160
.Ltmp55:
	.cfi_def_cfa_offset 384
.Ltmp56:
	.cfi_offset %rbx, -32
.Ltmp57:
	.cfi_offset %r14, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movups	.Lzbegintransparencymaskimage.bbox+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	.Lzbegintransparencymaskimage.bbox(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movq	8(%rbx), %rdi
	callq	gs_cspace_new_DeviceGray
	movq	%rax, %r14
	movl	$-25, %ebp
	testq	%r14, %r14
	je	.LBB13_3
# BB#1:                                 # %if.end
	leaq	32(%rsp), %rbp
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	gs_trans_mask_params_init
	movq	(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$1, %ecx
	movq	%rbp, %rsi
	callq	gs_begin_transparency_mask
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB13_3
# BB#2:                                 # %if.end.3
	movl	$.L.str.45, %esi
	movq	%r14, %rdi
	callq	rc_decrement_cs
.LBB13_3:                               # %cleanup
	movl	%ebp, %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	zbegintransparencymaskimage, .Lfunc_end13-zbegintransparencymaskimage
	.cfi_endproc

	.align	16, 0x90
	.type	zendtransparencymask,@function
zendtransparencymask:                   # @zendtransparencymask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 32
.Ltmp61:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	leaq	12(%rsp), %rdx
	movl	$1, %esi
	callq	int_param
	testl	%eax, %eax
	js	.LBB14_3
# BB#1:                                 # %if.end.i
	movq	(%rbx), %rdi
	movl	12(%rsp), %esi
	callq	gs_end_transparency_mask
	testl	%eax, %eax
	js	.LBB14_3
# BB#2:                                 # %if.then.3.i
	addq	$-16, 624(%rbx)
.LBB14_3:                               # %mask_op.exit
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end14:
	.size	zendtransparencymask, .Lfunc_end14-zendtransparencymask
	.cfi_endproc

	.align	16, 0x90
	.type	zimage3x,@function
zimage3x:                               # @zimage3x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 40
	subq	$3336, %rsp             # imm = 0xD08
.Ltmp66:
	.cfi_def_cfa_offset 3376
.Ltmp67:
	.cfi_offset %rbx, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	%rax, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %r15d
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB15_1
# BB#2:                                 # %do.body
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB15_9
# BB#3:                                 # %do.end
	leaq	1088(%rsp), %rbp
	xorl	%esi, %esi
	movl	$2248, %edx             # imm = 0x8C8
	movq	%rbp, %rdi
	callq	memset
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gs_image3x_t_init
	leaq	1080(%rsp), %rdx
	movl	$.L.str.46, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-15, %eax
	testl	%ecx, %ecx
	jle	.LBB15_9
# BB#4:                                 # %if.end.14
	movq	1080(%rsp), %rbp
	movq	(%r14), %rdi
	callq	gs_currentcolorspace
	movq	%rax, (%rsp)
	leaq	1088(%rsp), %rdx
	leaq	24(%rsp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rsi
	movq	%r14, %rdi
	callq	pixel_image_params
	testl	%eax, %eax
	js	.LBB15_9
# BB#5:                                 # %lor.lhs.false
	movq	1080(%rsp), %rdi
	leaq	20(%rsp), %r9
	movl	$.L.str.47, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB15_9
# BB#6:                                 # %if.end.24
	movq	8(%r14), %rdi
	leaq	2504(%rsp), %r9
	leaq	24(%rsp), %rdx
	movl	$.L.str.48, %ecx
	movq	%rbx, %rsi
	movl	%r15d, %r8d
	callq	mask_dict_param
	testl	%eax, %eax
	js	.LBB15_9
# BB#7:                                 # %lor.lhs.false.28
	movq	8(%r14), %rdi
	leaq	1672(%rsp), %r9
	leaq	24(%rsp), %rdx
	movl	$.L.str.49, %ecx
	movq	%rbx, %rsi
	movl	%r15d, %r8d
	callq	mask_dict_param
	testl	%eax, %eax
	js	.LBB15_9
# BB#8:                                 # %if.end.35
	leaq	32(%rsp), %rdx
	movl	1660(%rsp), %ecx
	leaq	1088(%rsp), %rsi
	movl	$1, %r8d
	movq	%r14, %rdi
	callq	zimage_setup
	jmp	.LBB15_9
.LBB15_1:                               # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB15_9:                               # %cleanup
	addq	$3336, %rsp             # imm = 0xD08
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	zimage3x, .Lfunc_end15-zimage3x
	.cfi_endproc

	.align	16, 0x90
	.type	zpushpdf14devicefilter,@function
zpushpdf14devicefilter:                 # @zpushpdf14devicefilter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$11, %eax
	jne	.LBB16_4
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	callq	gs_push_pdf14trans_device
	testl	%eax, %eax
	js	.LBB16_3
# BB#2:                                 # %if.end.6
	addq	$-16, 624(%rbx)
	xorl	%eax, %eax
.LBB16_3:                               # %cleanup
	popq	%rbx
	retq
.LBB16_4:                               # %if.then
	popq	%rbx
	jmp	check_type_failed       # TAILCALL
.Lfunc_end16:
	.size	zpushpdf14devicefilter, .Lfunc_end16-zpushpdf14devicefilter
	.cfi_endproc

	.align	16, 0x90
	.type	zpoppdf14devicefilter,@function
zpoppdf14devicefilter:                  # @zpoppdf14devicefilter
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	xorl	%esi, %esi
	jmp	gs_pop_pdf14trans_device # TAILCALL
.Lfunc_end17:
	.size	zpoppdf14devicefilter, .Lfunc_end17-zpoppdf14devicefilter
	.cfi_endproc

	.align	16, 0x90
	.type	zabortpdf14devicefilter,@function
zabortpdf14devicefilter:                # @zabortpdf14devicefilter
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	jmp	gs_abort_pdf14trans_device # TAILCALL
.Lfunc_end18:
	.size	zabortpdf14devicefilter, .Lfunc_end18-zabortpdf14devicefilter
	.cfi_endproc

	.align	16, 0x90
	.type	tf_using_function,@function
tf_using_function:                      # @tf_using_function
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp73:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rax
	movq	%rdi, %rcx
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 4(%rsp)
	leaq	4(%rsp), %rsi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	*8(%rax)
	popq	%rdx
	retq
.Lfunc_end19:
	.size	tf_using_function, .Lfunc_end19-tf_using_function
	.cfi_endproc

	.align	16, 0x90
	.type	mask_dict_param,@function
mask_dict_param:                        # @mask_dict_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	subq	$1112, %rsp             # imm = 0x458
.Ltmp80:
	.cfi_def_cfa_offset 1168
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movl	%r8d, %r15d
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r13
	leaq	1104(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%rcx, %rsi
	callq	dict_find_string
	movl	$1, %r14d
	testl	%eax, %eax
	jle	.LBB20_11
# BB#1:                                 # %if.end
	movq	1104(%rsp), %rsi
	leaq	264(%r12), %rdx
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$16, (%rsp)
	leaq	48(%rsp), %rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%r13, %rdi
	callq	data_image_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	movl	%ebx, %r14d
	js	.LBB20_11
# BB#2:                                 # %lor.lhs.false
	movq	1104(%rsp), %rdi
	leaq	44(%rsp), %r9
	movl	$.L.str.47, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	dict_int_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB20_11
# BB#3:                                 # %lor.lhs.false.5
	movq	1104(%rsp), %rdi
	movl	$.L.str.50, %esi
	movl	$1, %edx
	movl	$3, %ecx
	movl	$-1, %r8d
	movq	%r12, %r9
	callq	dict_int_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB20_11
# BB#4:                                 # %lor.lhs.false.8
	leaq	4(%r12), %r8
	movl	$.L.str.51, %edx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movl	%r15d, %ecx
	callq	dict_floats_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB20_11
# BB#5:                                 # %if.end.12
	setg	%al
	movzbl	%al, %eax
	movl	%eax, 260(%r12)
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB20_7
# BB#6:                                 # %land.lhs.true
	movl	$-15, %r14d
	cmpl	$3, (%r12)
	jne	.LBB20_11
.LBB20_7:                               # %lor.lhs.false.17
	movl	$-15, %r14d
	cmpl	$0, 48(%rsp)
	jne	.LBB20_11
# BB#8:                                 # %lor.lhs.false.20
	movl	(%r12), %eax
	cmpl	$3, %eax
	setne	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %ebx
	jne	.LBB20_11
# BB#9:                                 # %if.end.27
	xorl	%r14d, %r14d
	cmpl	$3, %eax
	jne	.LBB20_11
# BB#10:                                # %if.then.31
	movq	32(%rsp), %rbx          # 8-byte Reload
	leaq	24(%rbx), %rdi
	leaq	8(%rbx), %rsi
	movl	$1024, %edx             # imm = 0x400
	callq	memmove
	movups	56(%rsp), %xmm0
	movups	%xmm0, 8(%rbx)
.LBB20_11:                              # %cleanup
	movl	%r14d, %eax
	addq	$1112, %rsp             # imm = 0x458
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	mask_dict_param, .Lfunc_end20-mask_dict_param
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.setblendmode"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0.currentblendmode"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"1.setopacityalpha"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0.currentopacityalpha"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1.setshapealpha"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"0.currentshapealpha"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"1.settextknockout"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0.currenttextknockout"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"0.pushextendedgstate"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"0.popextendedgstate"
	.size	.L.str.9, 20

	.type	ztrans1_op_defs,@object # @ztrans1_op_defs
	.section	.rodata,"a",@progbits
	.globl	ztrans1_op_defs
	.align	16
ztrans1_op_defs:
	.quad	.L.str
	.quad	zsetblendmode
	.quad	.L.str.1
	.quad	zcurrentblendmode
	.quad	.L.str.2
	.quad	zsetopacityalpha
	.quad	.L.str.3
	.quad	zcurrentopacityalpha
	.quad	.L.str.4
	.quad	zsetshapealpha
	.quad	.L.str.5
	.quad	zcurrentshapealpha
	.quad	.L.str.6
	.quad	zsettextknockout
	.quad	.L.str.7
	.quad	zcurrenttextknockout
	.quad	.L.str.8
	.quad	zpushextendedgstate
	.quad	.L.str.9
	.quad	zpopextendedgstate
	.zero	16
	.size	ztrans1_op_defs, 176

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"5.begintransparencygroup"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0.endtransparencygroup"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"5.begintransparencymaskgroup"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"5.begintransparencymaskimage"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1.endtransparencymask"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1.image3x"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1.pushpdf14devicefilter"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0.poppdf14devicefilter"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"0.abortpdf14devicefilter"
	.size	.L.str.18, 25

	.type	ztrans2_op_defs,@object # @ztrans2_op_defs
	.section	.rodata,"a",@progbits
	.globl	ztrans2_op_defs
	.align	16
ztrans2_op_defs:
	.quad	.L.str.10
	.quad	zbegintransparencygroup
	.quad	.L.str.11
	.quad	zendtransparencygroup
	.quad	.L.str.12
	.quad	zbegintransparencymaskgroup
	.quad	.L.str.13
	.quad	zbegintransparencymaskimage
	.quad	.L.str.14
	.quad	zendtransparencymask
	.quad	.L.str.15
	.quad	zimage3x
	.quad	.L.str.16
	.quad	zpushpdf14devicefilter
	.quad	.L.str.17
	.quad	zpoppdf14devicefilter
	.quad	.L.str.18
	.quad	zabortpdf14devicefilter
	.zero	16
	.size	ztrans2_op_defs, 160

	.type	blend_mode_names,@object # @blend_mode_names
	.align	16
blend_mode_names:
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	0
	.size	blend_mode_names, 144

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"Normal"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Multiply"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Screen"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Difference"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Darken"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Lighten"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ColorDodge"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ColorBurn"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Exclusion"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"HardLight"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Overlay"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"SoftLight"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Luminosity"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Hue"
	.size	.L.str.32, 4

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Saturation"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Color"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Compatible"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Isolated"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Knockout"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	".image_with_SMask"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"CS"
	.size	.L.str.39, 3

	.type	zbegintransparencymaskgroup.subtype_names,@object # @zbegintransparencymaskgroup.subtype_names
	.section	.rodata,"a",@progbits
	.align	16
zbegintransparencymaskgroup.subtype_names:
	.quad	.L.str.40
	.quad	.L.str.31
	.quad	0
	.size	zbegintransparencymaskgroup.subtype_names, 24

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"Alpha"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Subtype"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Background"
	.size	.L.str.42, 11

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"GrayBackground"
	.size	.L.str.43, 15

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"TransferFunction"
	.size	.L.str.44, 17

	.type	.Lzbegintransparencymaskimage.bbox,@object # @zbegintransparencymaskimage.bbox
	.section	.rodata,"a",@progbits
	.align	8
.Lzbegintransparencymaskimage.bbox:
	.zero	16
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	.Lzbegintransparencymaskimage.bbox, 32

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"zbegintransparencymaskimage"
	.size	.L.str.45, 28

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"DataDict"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"ImageType"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"ShapeMaskDict"
	.size	.L.str.48, 14

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"OpacityMaskDict"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"InterleaveType"
	.size	.L.str.50, 15

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Matte"
	.size	.L.str.51, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
