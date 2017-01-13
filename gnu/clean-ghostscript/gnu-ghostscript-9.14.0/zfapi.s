	.text
	.file	"zfapi.bc"
	.align	16, 0x90
	.type	zFAPIavailable,@function
zFAPIavailable:                         # @zFAPIavailable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 48
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %r15
	xorl	%ebx, %ebx
	movzbl	1(%r15), %eax
	cmpl	$13, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	(%rsp), %rbx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	names_string_ref
	movq	8(%r14), %rsi
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	callq	ref_to_string
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB0_5
.LBB0_2:                                # %if.end.5
	movq	8(%r14), %rdi
	movq	%rbx, %rsi
	callq	gs_fapi_available
	movw	%ax, 8(%r15)
	movw	$256, (%r15)            # imm = 0x100
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#3:                                 # %if.then.13
	movq	8(%r14), %r14
	movq	160(%r14), %r15
	movq	%rbx, %rdi
	callq	strlen
	leal	1(%rax), %edx
	movl	$.L.str.6, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*%r15
.LBB0_4:                                # %cleanup
	xorl	%eax, %eax
.LBB0_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	zFAPIavailable, .Lfunc_end0-zFAPIavailable
	.cfi_endproc

	.align	16, 0x90
	.type	zFAPIpassfont,@function
zFAPIpassfont:                          # @zFAPIpassfont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 128
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movq	$0, 48(%rsp)
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB1_1
# BB#2:                                 # %if.end
	leaq	64(%rsp), %rsi
	movq	%rbx, %rdi
	callq	font_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_25
# BB#3:                                 # %if.end.9
	leaq	56(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	xorl	%r15d, %r15d
	testl	%eax, %eax
	js	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	56(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB1_6
# BB#5:                                 # %if.then.19
	movl	8(%rax), %r15d
.LBB1_6:                                # %if.end.21
	leaq	504(%r14), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.14, %esi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_25
# BB#7:                                 # %if.end.i
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	movl	$-20, %ebp
	cmpl	$18, %ecx
	jne	.LBB1_25
# BB#8:                                 # %if.end.26
	movq	8(%rax), %rbp
	leaq	56(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	xorl	%r13d, %r13d
	testl	%eax, %eax
	js	.LBB1_11
# BB#9:                                 # %land.lhs.true.30
	movq	56(%rsp), %rsi
	xorl	%r13d, %r13d
	movzbl	1(%rsi), %eax
	cmpl	$13, %eax
	jne	.LBB1_11
# BB#10:                                # %if.then.37
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	32(%rsp), %r12
	movq	%r12, %rdx
	callq	names_string_ref
	movq	8(%r14), %rsi
	movl	$.L.str.9, %edx
	movq	%r12, %rdi
	callq	ref_to_string
	movq	%rax, %r13
.LBB1_11:                               # %if.end.41
	leaq	56(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jle	.LBB1_14
# BB#12:                                # %land.lhs.true.45
	movq	56(%rsp), %rdi
	xorl	%r12d, %r12d
	movzbl	1(%rdi), %eax
	cmpl	$18, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.52
	movq	40(%r14), %rsi
	movl	$.L.str.11, %edx
	callq	ref_to_string
	movq	%rax, %r12
.LBB1_14:                               # %if.end.55
	movq	8(%r14), %rdi
	movl	$ps_ff_stub, %esi
	movq	%r14, %rdx
	callq	gs_fapi_set_servers_client_data
	movq	64(%rsp), %rdi
	leaq	48(%rsp), %rax
	movq	%rax, (%rsp)
	movq	$ps_get_server_param, 8(%rsp)
	xorl	%ecx, %ecx
	movl	%r15d, %esi
	movq	%r12, %rdx
	movq	%r13, %r8
	movq	%rbp, %r9
	callq	gs_fapi_passfont
	movl	%eax, %ebp
	testq	%r12, %r12
	je	.LBB1_16
# BB#15:                                # %if.then.61
	movq	40(%r14), %rdi
	movq	56(%rsp), %rax
	movl	4(%rax), %edx
	incl	%edx
	movl	$.L.str.11, %ecx
	movq	%r12, %rsi
	callq	*160(%rdi)
.LBB1_16:                               # %if.end.73
	testq	%r13, %r13
	je	.LBB1_18
# BB#17:                                # %if.then.76
	movq	8(%r14), %r15
	movq	160(%r15), %r12
	movq	%r13, %rdi
	callq	strlen
	leal	1(%rax), %edx
	movl	$.L.str.12, %ecx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*%r12
.LBB1_18:                               # %if.end.86
	testl	%ebp, %ebp
	jne	.LBB1_25
# BB#19:                                # %if.end.90
	movq	48(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB1_22
# BB#20:                                # %if.then.96
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r15
	movq	%rbp, %rdi
	callq	strlen
	leaq	16(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	names_ref
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_25
# BB#21:                                # %cleanup
	leaq	16(%rsp), %rdx
	movl	$.L.str.13, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	dict_put_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_25
.LBB1_22:                               # %do.body
	leaq	16(%rbx), %rax
	cmpq	640(%r14), %rax
	jbe	.LBB1_24
# BB#23:                                # %if.then.118
	movl	$1, 688(%r14)
	movl	$-16, %ebp
	jmp	.LBB1_25
.LBB1_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB1_25:                               # %cleanup.132
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_24:                               # %if.else.121
	movq	%rax, 624(%r14)
	cmpq	$0, 48(%rsp)
	setne	%al
	movzbl	%al, %eax
	movw	%ax, 24(%rbx)
	movw	$256, 16(%rbx)          # imm = 0x100
	xorl	%ebp, %ebp
	jmp	.LBB1_25
.Lfunc_end1:
	.size	zFAPIpassfont, .Lfunc_end1-zFAPIpassfont
	.cfi_endproc

	.align	16, 0x90
	.type	zFAPIrebuildfont,@function
zFAPIrebuildfont:                       # @zFAPIrebuildfont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp26:
	.cfi_def_cfa_offset 336
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	624(%r13), %rbx
	leaq	-16(%rbx), %rbp
	leaq	136(%rsp), %rsi
	movq	%rbp, %rdi
	callq	font_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_89
# BB#1:                                 # %if.end
	movzbl	1(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB2_2
# BB#3:                                 # %if.end.5
	movq	136(%rsp), %rbx
	movq	424(%rbx), %rcx
	testq	%rcx, %rcx
	movq	%rbx, %rax
	jne	.LBB2_9
# BB#4:                                 # %if.then.8
	leaq	128(%rsp), %rdx
	movl	$.L.str.13, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	movl	$-10, %r15d
	testl	%eax, %eax
	jle	.LBB2_89
# BB#5:                                 # %lor.lhs.false
	movq	128(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$13, %eax
	jne	.LBB2_89
# BB#6:                                 # %if.end.20
	leaq	424(%rbx), %r12
	movq	8(%r13), %rdi
	leaq	88(%rsp), %rdx
	leaq	84(%rsp), %rcx
	callq	obj_string_data
	movl	84(%rsp), %eax
	cmpq	$19, %rax
	movl	$19, %edx
	cmovbq	%rax, %rdx
	movl	$19, %ecx
	cmovbl	%eax, %ecx
	movl	%ecx, 84(%rsp)
	movq	88(%rsp), %rsi
	movq	%r13, %r14
	leaq	96(%rsp), %r13
	movq	%r13, %rdi
	callq	strncpy
	movl	84(%rsp), %eax
	movb	$0, 96(%rsp,%rax)
	movq	8(%r14), %rdi
	movl	$ps_ff_stub, %esi
	movq	%r14, %rdx
	callq	gs_fapi_set_servers_client_data
	movq	8(%r14), %rdi
	movl	$ps_get_server_param, %ecx
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	gs_fapi_find_server
	testl	%eax, %eax
	js	.LBB2_89
# BB#7:                                 # %if.end.20
	movq	(%r12), %rcx
	testq	%rcx, %rcx
	movq	%r14, %r13
	je	.LBB2_89
# BB#8:                                 # %if.end.20.if.end.43_crit_edge
	movq	136(%rsp), %rax
.LBB2_9:                                # %if.end.43
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	72(%rax), %r14
	leaq	128(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	xorl	%r12d, %r12d
	testl	%eax, %eax
	js	.LBB2_10
# BB#11:                                # %land.lhs.true
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB2_13
# BB#12:                                # %if.then.55
	movl	8(%rax), %r12d
	jmp	.LBB2_13
.LBB2_2:                                # %if.then.3
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %r15d
	jmp	.LBB2_89
.LBB2_10:
	movq	%rbx, 64(%rsp)          # 8-byte Spill
.LBB2_13:                               # %if.end.57
	movzbl	33(%r14), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	cmpl	$14, %eax
	setne	40(%rsp)                # 1-byte Folded Spill
	movzbl	17(%r14), %ebx
	cmpl	$14, %ebx
	setne	32(%rsp)                # 1-byte Folded Spill
	leaq	128(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB2_15
# BB#14:                                # %lor.lhs.false.87
	movq	128(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	je	.LBB2_16
.LBB2_15:                               # %if.then.94
	movq	$0, 128(%rsp)
	xorl	%eax, %eax
.LBB2_16:                               # %if.end.95
	movq	136(%rsp), %rcx
	movq	8(%r13), %rdi
	cmpl	$9, 128(%rcx)
	jne	.LBB2_19
# BB#17:                                # %if.end.95
	testq	%rax, %rax
	jne	.LBB2_19
# BB#18:                                # %if.then.101
	leaq	144(%rsp), %rsi
	movl	$.L.str.52, %edx
	movl	$.L.str.52, %ecx
	jmp	.LBB2_20
.LBB2_19:                               # %if.else.109
	leaq	144(%rsp), %rsi
	movl	$.L.str.53, %edx
	movl	$.L.str.54, %ecx
.LBB2_20:                               # %if.else.109
	callq	build_proc_name_refs
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_89
# BB#21:                                # %if.end.117
	movl	%r12d, 28(%rsp)         # 4-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	16(%r14), %r12
	leaq	8(%r13), %rbp
	movq	%r13, 72(%rsp)          # 8-byte Spill
	movzbl	1(%r12), %eax
	cmpl	$14, %eax
	je	.LBB2_25
# BB#22:                                # %land.lhs.true.125
	cmpq	$0, 24(%r14)
	je	.LBB2_25
# BB#23:                                # %land.lhs.true.129
	cmpq	$0, 152(%rsp)
	je	.LBB2_25
# BB#24:                                # %land.lhs.true.134
	movq	(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r12, %rsi
	callq	names_index
	movl	%eax, %r13d
	movq	(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	144(%rsp), %rsi
	callq	names_index
	cmpl	%eax, %r13d
	je	.LBB2_88
.LBB2_25:                               # %lor.lhs.false.147
	leaq	32(%r14), %r13
	movzbl	1(%r13), %eax
	cmpl	$14, %eax
	je	.LBB2_29
# BB#26:                                # %land.lhs.true.155
	cmpq	$0, 40(%r14)
	je	.LBB2_29
# BB#27:                                # %land.lhs.true.160
	cmpq	$0, 168(%rsp)
	je	.LBB2_29
# BB#28:                                # %land.lhs.true.165
	leaq	160(%rsp), %r14
	movq	(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r13, %rsi
	callq	names_index
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	(%rbp), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r14, %rsi
	callq	names_index
	cmpl	%eax, 8(%rsp)           # 4-byte Folded Reload
	je	.LBB2_88
.LBB2_29:                               # %if.then.180
	movw	$3584, %ax              # imm = 0xE00
	movzbl	%bl, %ecx
	cmpl	$14, %ecx
	movw	$3584, %cx              # imm = 0xE00
	je	.LBB2_31
# BB#30:                                # %if.then.183
	movups	144(%rsp), %xmm0
	movups	%xmm0, (%r12)
	movzwl	(%r12), %ecx
	movq	72(%rsp), %rdx          # 8-byte Reload
	orl	76(%rdx), %ecx
.LBB2_31:                               # %if.end.196
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	48(%rsp), %edx          # 4-byte Reload
	movzbl	%dl, %edx
	cmpl	$14, %edx
	movw	%cx, (%r12)
	movq	64(%rsp), %r14          # 8-byte Reload
	jne	.LBB2_33
# BB#32:                                # %if.end.196
	movb	32(%rsp), %cl           # 1-byte Reload
	orb	40(%rsp), %cl           # 1-byte Folded Reload
	movzbl	%cl, %ecx
	testl	%ecx, %ecx
	jne	.LBB2_34
.LBB2_33:                               # %if.then.199
	movups	160(%rsp), %xmm0
	movups	%xmm0, (%r13)
	movzwl	(%r13), %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	orl	76(%rcx), %eax
.LBB2_34:                               # %if.end.214
	movw	%ax, (%r13)
	movq	128(%rsp), %rdi
	xorl	%r13d, %r13d
	testq	%rdi, %rdi
	movq	72(%rsp), %rbx          # 8-byte Reload
	je	.LBB2_36
# BB#35:                                # %if.then.217
	movq	40(%rbx), %rsi
	movl	$.L.str.11, %edx
	callq	ref_to_string
	movq	%rax, %r13
.LBB2_36:                               # %if.end.220
	movq	136(%rsp), %rbp
	movq	$0, 272(%rsp)
	movq	424(%rbp), %r12
	xorl	%r15d, %r15d
	testq	%r13, %r13
	je	.LBB2_42
# BB#37:                                # %land.lhs.true.i
	xorl	%r15d, %r15d
	cmpq	$0, 432(%rbp)
	jne	.LBB2_42
# BB#38:                                # %if.then.i
	leaq	504(%rbx), %rdi
	leaq	176(%rsp), %rdx
	movl	$.L.str.14, %esi
	callq	dict_find_string
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_40
# BB#39:                                # %if.end.i.i
	movq	176(%rsp), %rax
	movzbl	1(%rax), %ecx
	movl	$-20, %r15d
	cmpl	$18, %ecx
	jne	.LBB2_40
# BB#41:                                # %FAPI_get_xlatmap.exit.i
	movq	8(%rax), %r15
.LBB2_42:                               # %if.end.4.i
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	gs_fapi_set_servers_client_data
	leaq	272(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%rbp, %rbx
	movq	%r12, %rsi
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	%r13, %rcx
	movq	%r13, %r12
	movq	%r15, %r9
	callq	gs_fapi_prepare_font
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB2_86
# BB#43:                                # %if.end.8.i
	jle	.LBB2_67
# BB#44:                                # %if.then.10.i
	leaq	240(%rsp), %rdx
	movl	$.L.str.55, %esi
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	dict_find_string
	movb	$1, %cl
	testl	%eax, %eax
	jle	.LBB2_66
# BB#45:                                # %if.then.13.i
	movq	240(%rsp), %rsi
	movb	1(%rsi), %al
	movb	%al, %cl
	addb	$-4, %cl
	movzbl	%cl, %ecx
	cmpl	$2, %ecx
	ja	.LBB2_46
# BB#47:                                # %if.end.31.i
	movsd	376(%rbx), %xmm0        # xmm0 = mem[0],zero
	movsd	384(%rbx), %xmm1        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm3
	cvtsd2ss	%xmm1, %xmm2
	movsd	392(%rbx), %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movsd	400(%rbx), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	addb	$-5, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	jb	.LBB2_49
# BB#48:                                # %lor.lhs.false.77.i
	cmpl	$3, 4(%rsi)
	ja	.LBB2_54
.LBB2_49:                               # %if.then.81.i
	movss	%xmm3, 28(%rsp)         # 4-byte Spill
	movss	%xmm2, 32(%rsp)         # 4-byte Spill
	movss	%xmm1, 40(%rsp)         # 4-byte Spill
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rdi
	leaq	176(%rsp), %r15
	movl	$112, %edx
	movl	$4, %ecx
	movl	$.L.str.56, %r8d
	movq	%r15, %rsi
	callq	gs_alloc_ref_array
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB2_50
# BB#51:                                # %if.end.88.i
	movq	%r15, 240(%rsp)
	movq	%r15, %rdx
	movq	72(%rsp), %r15          # 8-byte Reload
	leaq	368(%r15), %rcx
	movl	$.L.str.55, %esi
	movq	%rbp, %rdi
	callq	dict_put_string
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB2_52
# BB#53:                                # %if.end.93.i
	movq	240(%rsp), %rax
	movq	8(%rax), %rax
	movw	$4096, (%rax)           # imm = 0x1000
	movw	212(%rsp), %cx
	movw	%cx, 6(%rax)
	movl	208(%rsp), %ecx
	movl	%ecx, 2(%rax)
	movss	28(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rax)
	movq	240(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	(%rax), %ecx
	orl	76(%r15), %ecx
	movw	%cx, (%rax)
	movw	$4096, 16(%rax)         # imm = 0x1000
	movw	236(%rsp), %cx
	movw	%cx, 22(%rax)
	movl	232(%rsp), %ecx
	movl	%ecx, 18(%rax)
	movss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 24(%rax)
	movq	240(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %ecx
	orl	76(%r15), %ecx
	movw	%cx, 16(%rax)
	movw	$4096, 32(%rax)         # imm = 0x1000
	movw	228(%rsp), %cx
	movw	%cx, 38(%rax)
	movl	224(%rsp), %ecx
	movl	%ecx, 34(%rax)
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 40(%rax)
	movq	240(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	32(%rax), %ecx
	orl	76(%r15), %ecx
	movw	%cx, 32(%rax)
	movw	$4096, 48(%rax)         # imm = 0x1000
	movw	262(%rsp), %cx
	movw	%cx, 54(%rax)
	movl	258(%rsp), %ecx
	movl	%ecx, 50(%rax)
	movss	48(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 56(%rax)
	movq	240(%rsp), %rax
	movq	8(%rax), %rcx
	movzwl	48(%rcx), %edx
	orl	76(%r15), %edx
	jmp	.LBB2_65
.LBB2_40:                               # %FAPI_get_xlatmap.exit.thread.i
	movq	%r13, %r12
	jmp	.LBB2_86
.LBB2_46:
	movl	$-10, %r13d
	xorl	%ecx, %ecx
	jmp	.LBB2_66
.LBB2_50:
	xorl	%ecx, %ecx
	jmp	.LBB2_66
.LBB2_54:                               # %if.else.i
	movss	%xmm3, 28(%rsp)         # 4-byte Spill
	movq	8(%rsi), %rdx
	movzwl	(%rdx), %eax
	movq	72(%rsp), %rbp          # 8-byte Reload
	testl	72(%rbp), %eax
	je	.LBB2_56
# BB#55:
	movss	%xmm2, 32(%rsp)         # 4-byte Spill
	movss	%xmm1, 40(%rsp)         # 4-byte Spill
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	movq	8(%rsp), %r15           # 8-byte Reload
	jmp	.LBB2_57
.LBB2_52:
	xorl	%ecx, %ecx
	jmp	.LBB2_66
.LBB2_56:                               # %cond.true.i
	movss	%xmm2, 32(%rsp)         # 4-byte Spill
	movss	%xmm1, 40(%rsp)         # 4-byte Spill
	movss	%xmm0, 48(%rsp)         # 4-byte Spill
	movl	$.L.str.57, %ecx
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%r15, %rdi
	callq	alloc_save_change
	movq	240(%rsp), %rax
	movq	8(%rax), %rdx
.LBB2_57:                               # %cond.end.i
	movss	28(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movw	$4096, (%rdx)           # imm = 0x1000
	movw	212(%rsp), %ax
	movw	%ax, 6(%rdx)
	movl	208(%rsp), %eax
	movl	%eax, 2(%rdx)
	movss	%xmm0, 8(%rdx)
	movq	240(%rsp), %rsi
	movq	8(%rsi), %rdx
	movzwl	(%rdx), %eax
	orl	76(%rbp), %eax
	movw	%ax, (%rdx)
	movzwl	16(%rdx), %eax
	testl	72(%rbp), %eax
	jne	.LBB2_59
# BB#58:                                # %cond.true.185.i
	addq	$16, %rdx
	movl	$.L.str.57, %ecx
	movq	%r15, %rdi
	callq	alloc_save_change
	movq	240(%rsp), %rax
	movq	8(%rax), %rdx
.LBB2_59:                               # %cond.end.192.i
	movss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movw	$4096, 16(%rdx)         # imm = 0x1000
	movw	236(%rsp), %ax
	movw	%ax, 22(%rdx)
	movl	232(%rsp), %eax
	movl	%eax, 18(%rdx)
	movss	%xmm0, 24(%rdx)
	movq	240(%rsp), %rsi
	movq	8(%rsi), %rdx
	movzwl	16(%rdx), %eax
	orl	76(%rbp), %eax
	movw	%ax, 16(%rdx)
	movzwl	32(%rdx), %eax
	testl	72(%rbp), %eax
	jne	.LBB2_61
# BB#60:                                # %cond.true.219.i
	addq	$32, %rdx
	movl	$.L.str.57, %ecx
	movq	%r15, %rdi
	callq	alloc_save_change
	movq	240(%rsp), %rax
	movq	8(%rax), %rdx
.LBB2_61:                               # %cond.end.226.i
	movss	40(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movw	$4096, 32(%rdx)         # imm = 0x1000
	movw	228(%rsp), %ax
	movw	%ax, 38(%rdx)
	movl	224(%rsp), %eax
	movl	%eax, 34(%rdx)
	movss	%xmm0, 40(%rdx)
	movq	240(%rsp), %rsi
	movq	8(%rsi), %rdx
	movzwl	32(%rdx), %eax
	orl	76(%rbp), %eax
	movw	%ax, 32(%rdx)
	movzwl	48(%rdx), %eax
	testl	72(%rbp), %eax
	je	.LBB2_63
# BB#62:
	movq	%r15, 8(%rsp)           # 8-byte Spill
	jmp	.LBB2_64
.LBB2_63:                               # %cond.true.253.i
	addq	$48, %rdx
	movl	$.L.str.57, %ecx
	movq	%r15, %rdi
	movq	%r15, 8(%rsp)           # 8-byte Spill
	callq	alloc_save_change
	movq	240(%rsp), %rax
	movq	8(%rax), %rdx
.LBB2_64:                               # %cond.end.260.i
	movss	48(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movw	$4096, 48(%rdx)         # imm = 0x1000
	movw	262(%rsp), %ax
	movw	%ax, 54(%rdx)
	movl	258(%rsp), %eax
	movl	%eax, 50(%rdx)
	movss	%xmm0, 56(%rdx)
	movq	240(%rsp), %rax
	movq	8(%rax), %rcx
	movzwl	48(%rcx), %edx
	orl	76(%rbp), %edx
.LBB2_65:                               # %if.end.276.i
	movw	%dx, 48(%rcx)
	movb	$1, %cl
	orb	$64, (%rax)
                                        # implicit-def: R13D
.LBB2_66:                               # %cleanup.i
	testb	%cl, %cl
	movl	%r13d, %r15d
	je	.LBB2_86
.LBB2_67:                               # %if.end.295.i
	movq	272(%rsp), %rax
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB2_86
# BB#68:                                # %land.lhs.true.298.i
	cmpb	$0, (%rax)
	je	.LBB2_86
# BB#69:                                # %land.lhs.true.300.i
	leaq	264(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB2_86
# BB#70:                                # %if.then.304.i
	movl	128(%rbx), %eax
	addl	$-9, %eax
	cmpl	$2, %eax
	ja	.LBB2_83
# BB#71:                                # %if.then.315.i
	movq	272(%rsp), %rdi
	callq	strlen
	cmpq	$28, %rax
	movl	$28, %r15d
	cmovbq	%rax, %r15
	movl	$28, %ebp
	cmovbl	%eax, %ebp
	leaq	232(%rsp), %rdx
	movl	$.L.str.43, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	dict_find_string
	movl	$-10, %ebx
	testl	%eax, %eax
	jle	.LBB2_72
# BB#73:                                # %lor.lhs.false.328.i
	movq	232(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB2_74
# BB#75:                                # %if.end.336.i
	leaq	224(%rsp), %rdx
	movl	$.L.str.44, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB2_76
# BB#77:                                # %lor.lhs.false.340.i
	movq	224(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB2_78
# BB#79:                                # %if.end.348.i
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movl	4(%rax), %ecx
	movslq	%r15d, %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	$28, %ebp
	subq	%rdx, %rbp
	cmpq	%rbp, %rcx
	movq	%rcx, %rdx
	cmovaeq	%rbp, %rdx
	cmovbl	%ecx, %ebp
	movq	8(%rax), %rsi
	movslq	%edx, %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %rbx
	movq	%rbx, %rdi
	callq	memcpy
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	208(%rsp), %rcx
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	names_ref
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB2_82
# BB#80:                                # %if.end.375.i
	xorl	%r15d, %r15d
	leaq	208(%rsp), %rdx
	movl	$.L.str.41, %esi
	xorl	%ecx, %ecx
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	dict_put_string
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB2_82
# BB#81:                                # %if.end.380.i
	movq	32(%rsp), %rax          # 8-byte Reload
	movb	$46, 176(%rsp,%rax)
	leaq	177(%rsp,%rax), %rdi
	movq	272(%rsp), %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	memcpy
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	1(%rax,%rbp), %eax
	movslq	%eax, %rdx
	movb	$0, 176(%rsp,%rdx)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	176(%rsp), %rsi
	leaq	240(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	names_ref
	testl	%eax, %eax
	cmovsl	%eax, %r13d
	setns	%r15b
	movl	%r13d, %ebx
	jmp	.LBB2_82
.LBB2_83:                               # %if.else.410.i
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r15
	movq	272(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	leaq	240(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	names_ref
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB2_84
	jmp	.LBB2_85
.LBB2_72:
	xorl	%r15d, %r15d
	jmp	.LBB2_82
.LBB2_74:
	xorl	%r15d, %r15d
	jmp	.LBB2_82
.LBB2_76:
	xorl	%r15d, %r15d
	jmp	.LBB2_82
.LBB2_78:
	xorl	%r15d, %r15d
.LBB2_82:                               # %cleanup.402.i
	testb	%r15b, %r15b
	je	.LBB2_85
.LBB2_84:                               # %if.end.422.i
	xorl	%r15d, %r15d
	leaq	240(%rsp), %rdx
	movl	$.L.str.40, %esi
	xorl	%ecx, %ecx
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	dict_put_string
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB2_86
.LBB2_85:                               # %cleanup.428.thread.i
	movl	%ebx, %r15d
.LBB2_86:                               # %FAPI_refine_font.exit
	movq	56(%rsp), %rdi          # 8-byte Reload
	addq	$412, %rdi              # imm = 0x19C
	addq	$80, %r14
	movl	$24, %edx
	movq	%r14, %rsi
	callq	memcpy
	testq	%r12, %r12
	je	.LBB2_88
# BB#87:                                # %if.then.226
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rdi
	movq	128(%rsp), %rax
	movl	4(%rax), %edx
	incl	%edx
	movl	$.L.str.11, %ecx
	movq	%r12, %rsi
	callq	*160(%rdi)
.LBB2_88:                               # %if.end.239
	movq	72(%rsp), %rax          # 8-byte Reload
	addq	$-16, 624(%rax)
.LBB2_89:                               # %cleanup
	movl	%r15d, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zFAPIrebuildfont, .Lfunc_end2-zFAPIrebuildfont
	.cfi_endproc

	.align	16, 0x90
	.type	zFAPIBuildChar,@function
zFAPIBuildChar:                         # @zFAPIBuildChar
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	FAPI_char               # TAILCALL
.Lfunc_end3:
	.size	zFAPIBuildChar, .Lfunc_end3-zFAPIBuildChar
	.cfi_endproc

	.align	16, 0x90
	.type	zFAPIBuildGlyph,@function
zFAPIBuildGlyph:                        # @zFAPIBuildGlyph
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	FAPI_char               # TAILCALL
.Lfunc_end4:
	.size	zFAPIBuildGlyph, .Lfunc_end4-zFAPIBuildGlyph
	.cfi_endproc

	.align	16, 0x90
	.type	zFAPIBuildGlyph9,@function
zFAPIBuildGlyph9:                       # @zFAPIBuildGlyph9
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 112
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rbp
	movl	56(%rbx), %r15d
	movq	(%rbx), %rdi
	callq	gs_currentfont
	movq	72(%rax), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 32(%rsp)
	movzbl	1(%rbp), %eax
	cmpl	$11, %eax
	jne	.LBB5_1
# BB#2:                                 # %if.end
	movzbl	-15(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB5_3
# BB#4:                                 # %if.end.15
	leaq	32(%rbp), %r13
	cmpq	640(%rbx), %r13
	jbe	.LBB5_6
# BB#5:                                 # %if.then.22
	movl	$2, 688(%rbx)
	movl	$-16, %r12d
	jmp	.LBB5_18
.LBB5_3:                                # %if.then.12
	addq	$-16, %rbp
.LBB5_1:                                # %if.then
	movq	%rbp, %rdi
	callq	check_type_failed
	movl	%eax, %r12d
.LBB5_18:                               # %cleanup
	movl	%r12d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_6:                                # %if.else
	leaq	8(%rbx), %r14
	movq	%r13, 624(%rbx)
	movq	(%rbx), %rdi
	callq	gs_currentfont
	movq	72(%rax), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 16(%rbp)
	movups	(%rbp), %xmm0
	movups	%xmm0, (%r13)
	movzwl	-16(%rbp), %eax
	andl	$12, %eax
	cmpl	$12, %eax
	setne	%al
	movzbl	%al, %eax
	leal	8(,%rax,4), %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	%rbx, %rdi
	callq	ztype9mapcid
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB5_18
# BB#7:                                 # %if.end.47
	movq	%r14, (%rsp)            # 8-byte Spill
	movq	40(%rbp), %r14
	leaq	32(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.58, %esi
	callq	dict_find_string
	movl	$-10, %r12d
	testl	%eax, %eax
	jle	.LBB5_18
# BB#8:                                 # %lor.lhs.false
	movq	24(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$4, %eax
	jne	.LBB5_18
# BB#9:                                 # %if.end.62
	movq	(%rsp), %rax            # 8-byte Reload
	movq	(%rax), %rdi
	movslq	%r14d, %rdx
	leaq	8(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB5_18
# BB#10:                                # %lor.lhs.false.68
	movzbl	9(%rsp), %eax
	cmpl	$2, %eax
	movq	(%rsp), %r14            # 8-byte Reload
	jne	.LBB5_18
# BB#11:                                # %if.end.76
	leaq	16(%rbp), %rax
	movups	(%rbp), %xmm0
	movups	%xmm0, (%r13)
	movups	(%rax), %xmm0
	movups	%xmm0, (%rbp)
	movups	8(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	FAPI_char
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB5_18
# BB#12:                                # %if.end.87
	movq	624(%rbx), %rax
	cmpl	$5, %r12d
	jne	.LBB5_17
# BB#13:                                # %if.then.93
	movq	%rax, %rcx
	subq	%r13, %rcx
	shrq	$4, %rcx
	testl	%ecx, %ecx
	js	.LBB5_17
# BB#14:                                # %for.body.lr.ph
	movslq	%ecx, %rdi
	movq	%rdi, %rdx
	shlq	$32, %rdx
	movabsq	$-8589934592, %rbp      # imm = 0xFFFFFFFE00000000
	subq	%rdx, %rbp
	leaq	1(%rdi), %rdx
	shlq	$4, %rdi
	movq	%rax, %rsi
	subq	%rdi, %rsi
	movabsq	$4294967296, %rdi       # imm = 0x100000000
.LBB5_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rcx
	sarq	$28, %rcx
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rax,%rcx)
	addq	%rdi, %rbp
	decq	%rdx
	addq	$16, %rsi
	testq	%rdx, %rdx
	jg	.LBB5_15
# BB#16:                                # %for.cond.for.end_crit_edge
	movq	624(%rbx), %rax
.LBB5_17:                               # %if.end.134
	addq	$-32, %rax
	movq	%rax, 624(%rbx)
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	ialloc_set_space
	jmp	.LBB5_18
.Lfunc_end5:
	.size	zFAPIBuildGlyph9, .Lfunc_end5-zFAPIBuildGlyph9
	.cfi_endproc

	.align	16, 0x90
	.type	ps_get_server_param,@function
ps_get_server_param:                    # @ps_get_server_param
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
	subq	$32, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 64
.Ltmp50:
	.cfi_offset %rbx, -32
.Ltmp51:
	.cfi_offset %r14, -24
.Ltmp52:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movl	$504, %eax              # imm = 0x1F8
	addq	8(%rdi), %rax
	leaq	24(%rsp), %rdx
	movl	$.L.str.50, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB6_7
# BB#1:                                 # %land.lhs.true
	movq	24(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB6_7
# BB#2:                                 # %if.then
	leaq	16(%rsp), %rdx
	movl	$.L.str.51, %esi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB6_7
# BB#3:                                 # %land.lhs.true.6
	movq	16(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB6_7
# BB#4:                                 # %if.then.13
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB6_7
# BB#5:                                 # %land.lhs.true.17
	movq	8(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB6_7
# BB#6:                                 # %if.then.24
	movq	8(%rax), %rcx
	movq	%rcx, (%r15)
	movl	4(%rax), %eax
	movl	%eax, (%r14)
.LBB6_7:                                # %if.end.27
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	ps_get_server_param, .Lfunc_end6-ps_get_server_param
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1098907648              # float 16
	.text
	.align	16, 0x90
	.type	FAPI_FF_get_word,@function
FAPI_FF_get_word:                       # @FAPI_FF_get_word
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 128
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	addl	$-8, %esi
	cmpl	$38, %esi
	ja	.LBB7_98
# BB#1:                                 # %entry
	movq	160(%rbx), %rax
	movq	168(%rbx), %rcx
	movq	72(%rcx), %rdi
	jmpq	*.LJTI7_0(,%rsi,8)
.LBB7_19:                               # %sw.bb.63
	movss	552(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB7_20
.LBB7_2:                                # %sw.bb.5
	movw	$2, %r14w
	cmpl	$2, 128(%rax)
	je	.LBB7_98
# BB#3:                                 # %select.mid
	movw	$1, %r14w
	jmp	.LBB7_98
.LBB7_4:                                # %sw.bb.6
	movl	%ebp, %ecx
	cmpl	$3, %ebp
	jbe	.LBB7_6
# BB#5:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_11:                               # %sw.bb.22
	movzwl	556(%rax), %r14d
	jmp	.LBB7_98
.LBB7_12:                               # %sw.bb.24
	movslq	%ebp, %rcx
	movss	560(%rax,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB7_20
.LBB7_13:                               # %sw.bb.27
	movzwl	732(%rax), %r14d
	jmp	.LBB7_98
.LBB7_14:                               # %sw.bb.31
	movslq	%ebp, %rcx
	movss	736(%rax,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB7_20
.LBB7_15:                               # %sw.bb.38
	movzwl	624(%rax), %r14d
	jmp	.LBB7_98
.LBB7_16:                               # %sw.bb.42
	movslq	%ebp, %rcx
	movss	628(%rax,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB7_20
.LBB7_17:                               # %sw.bb.49
	movzwl	684(%rax), %r14d
	jmp	.LBB7_98
.LBB7_18:                               # %sw.bb.53
	movslq	%ebp, %rcx
	movss	688(%rax,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB7_20
.LBB7_21:                               # %sw.bb.67
	cmpl	$0, 780(%rax)
	je	.LBB7_22
# BB#23:                                # %cond.false
	movss	784(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB7_20
.LBB7_24:                               # %sw.bb.80
	cmpl	$0, 788(%rax)
	je	.LBB7_25
# BB#26:                                # %cond.false.86
	movss	792(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB7_20
.LBB7_27:                               # %sw.bb.96
	movzwl	796(%rax), %r14d
	jmp	.LBB7_98
.LBB7_28:                               # %sw.bb.100
	movslq	%ebp, %rcx
	movss	800(%rax,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB7_20
.LBB7_29:                               # %sw.bb.107
	movzwl	848(%rax), %r14d
	jmp	.LBB7_98
.LBB7_30:                               # %sw.bb.111
	movslq	%ebp, %rcx
	movss	852(%rax,%rcx,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
.LBB7_20:                               # %cleanup.377
	mulss	.LCPI7_0(%rip), %xmm0
	cvttss2si	%xmm0, %r14d
.LBB7_98:                               # %cleanup.377
	movzwl	%r14w, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_31:                               # %sw.bb.118
	movzwl	620(%rax), %r14d
	jmp	.LBB7_98
.LBB7_32:                               # %sw.bb.121
	movzwl	728(%rax), %r14d
	jmp	.LBB7_98
.LBB7_33:                               # %sw.bb.124
	cmpl	$0, 8(%rbx)
	je	.LBB7_35
# BB#34:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_36:                               # %sw.bb.131
	movw	$-1, %r14w
	cmpl	$2, 128(%rax)
	jne	.LBB7_98
# BB#37:                                # %if.then
	leaq	(%rsp), %rdx
	movl	$.L.str.15, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_38
# BB#39:                                # %if.end
	movq	(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.16, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB7_74
# BB#40:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_41:                               # %sw.bb.147
	leaq	(%rsp), %rdx
	movl	$.L.str.15, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_42
# BB#43:                                # %if.end.153
	movq	(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.17, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB7_74
# BB#44:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_49:                               # %sw.bb.173
	leaq	(%rsp), %rdx
	movl	$.L.str.19, %esi
	callq	dict_find_string
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %r14d
	jmp	.LBB7_98
.LBB7_82:                               # %sw.bb.300
	leaq	64(%rsp), %rdx
	movl	$.L.str.19, %esi
	callq	dict_find_string
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jle	.LBB7_98
# BB#83:                                # %for.cond.preheader
	movq	64(%rsp), %rsi
	cmpl	$0, 4(%rsi)
	je	.LBB7_98
# BB#84:                                # %for.body.lr.ph
	leaq	48(%rsp), %r15
	leaq	(%rsp), %r12
	leaq	32(%rsp), %r13
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	jmp	.LBB7_85
.LBB7_50:                               # %sw.bb.180
	leaq	(%rsp), %rdx
	movl	$.L.str.20, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_51
# BB#52:                                # %if.end.185
	movq	(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.21, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB7_74
# BB#53:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_58:                               # %sw.bb.212
	leaq	(%rsp), %rdx
	movl	$.L.str.22, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_59
# BB#60:                                # %if.end.219
	movq	(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.15, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB7_62
# BB#61:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_54:                               # %sw.bb.196
	leaq	(%rsp), %rdx
	movl	$.L.str.22, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_55
# BB#56:                                # %if.end.202
	movq	(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.20, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_57
.LBB7_62:                               # %if.end.207
	movq	48(%rsp), %rdi
	jmp	.LBB7_48
.LBB7_63:                               # %sw.bb.229
	leaq	(%rsp), %rdx
	movl	$.L.str.23, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_64
# BB#65:                                # %if.end.234
	movq	(%rsp), %rax
	movzwl	4(%rax), %r14d
	jmp	.LBB7_98
.LBB7_66:                               # %sw.bb.239
	leaq	(%rsp), %rdx
	movl	$.L.str.20, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_67
# BB#68:                                # %if.end.246
	movq	(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.24, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB7_74
# BB#69:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_70:                               # %sw.bb.257
	leaq	(%rsp), %rdx
	movl	$.L.str.20, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_71
# BB#72:                                # %if.end.264
	movq	(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.25, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_73
.LBB7_74:                               # %if.end.143
	movq	48(%rsp), %rax
	movzwl	4(%rax), %r14d
	jmp	.LBB7_98
.LBB7_75:                               # %sw.bb.275
	leaq	48(%rsp), %rdx
	movl	$.L.str.20, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_76
# BB#77:                                # %if.end.282
	movq	48(%rsp), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.25, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_78
# BB#79:                                # %if.end.287
	movq	16(%rbx), %rdi
	movq	32(%rsp), %rsi
	movslq	%ebp, %rdx
	leaq	(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB7_80
# BB#81:                                # %if.end.293
	movzwl	4(%rsp), %r14d
	jmp	.LBB7_98
.LBB7_45:                               # %sw.bb.164
	leaq	(%rsp), %rdx
	movl	$.L.str.18, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB7_46
# BB#47:                                # %if.end.169
	movq	(%rsp), %rdi
.LBB7_48:                               # %cleanup.377
	callq	dict_length
	movl	%eax, %r14d
	jmp	.LBB7_98
.LBB7_6:                                # %sw.bb.6
	jmpq	*.LJTI7_1(,%rcx,8)
.LBB7_7:                                # %sw.bb.7
	cvttsd2si	376(%rax), %r14d
	jmp	.LBB7_98
.LBB7_22:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_25:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_35:                               # %cond.false.126
	movzwl	512(%rax), %r14d
	jmp	.LBB7_98
.LBB7_42:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_51:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_59:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_55:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_64:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_67:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_71:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_76:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_46:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_90:                               # %sw.bb.330
                                        #   in Loop: Header=BB7_85 Depth=1
	movq	16(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	names_string_ref
	movl	36(%rsp), %eax
	jmp	.LBB7_96
.LBB7_91:                               # %sw.bb.335
                                        #   in Loop: Header=BB7_85 Depth=1
	movss	56(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.26, %esi
	movb	$1, %al
	movq	%r12, %rdi
	callq	gs_sprintf
	movq	%r12, %rdi
	jmp	.LBB7_95
.LBB7_85:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB7_86
# BB#87:                                # %if.end.317
                                        #   in Loop: Header=BB7_85 Depth=1
	movq	48(%rsp), %rax
	movzwl	%ax, %ecx
	cmpl	$5375, %ecx             # imm = 0x14FF
	ja	.LBB7_94
# BB#88:                                # %cond.end.328
                                        #   in Loop: Header=BB7_85 Depth=1
	movzbl	49(%rsp), %ecx
	addl	$-11, %ecx
	cmpl	$5, %ecx
	ja	.LBB7_97
# BB#89:                                # %cond.end.328
                                        #   in Loop: Header=BB7_85 Depth=1
	jmpq	*.LJTI7_2(,%rcx,8)
.LBB7_92:                               # %sw.bb.344
                                        #   in Loop: Header=BB7_85 Depth=1
	movq	56(%rsp), %rdx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gs_sprintf
	movq	%r12, %rdi
	jmp	.LBB7_95
.LBB7_94:                               # %sw.bb.354
                                        #   in Loop: Header=BB7_85 Depth=1
	movq	%rax, %rcx
	shrq	$32, %rcx
	andl	$15, %ecx
	shrq	$36, %rax
	movq	op_defs_all(,%rax,8), %rax
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rdi
	incq	%rdi
.LBB7_95:                               # %for.inc
                                        #   in Loop: Header=BB7_85 Depth=1
	callq	strlen
.LBB7_96:                               # %for.inc
                                        #   in Loop: Header=BB7_85 Depth=1
	leal	1(%r14,%rax), %r14d
.LBB7_97:                               # %for.inc
                                        #   in Loop: Header=BB7_85 Depth=1
	incq	%rbp
	movq	64(%rsp), %rsi
	cmpl	4(%rsi), %ebp
	jb	.LBB7_85
	jmp	.LBB7_98
.LBB7_57:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_73:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_78:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_86:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_38:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_80:
	xorl	%r14d, %r14d
	jmp	.LBB7_98
.LBB7_8:                                # %sw.bb.9
	cvttsd2si	384(%rax), %r14d
	jmp	.LBB7_98
.LBB7_9:                                # %sw.bb.13
	cvttsd2si	392(%rax), %r14d
	jmp	.LBB7_98
.LBB7_10:                               # %sw.bb.17
	cvttsd2si	400(%rax), %r14d
	jmp	.LBB7_98
.Lfunc_end7:
	.size	FAPI_FF_get_word, .Lfunc_end7-FAPI_FF_get_word
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_2
	.quad	.LBB7_4
	.quad	.LBB7_11
	.quad	.LBB7_12
	.quad	.LBB7_13
	.quad	.LBB7_14
	.quad	.LBB7_15
	.quad	.LBB7_16
	.quad	.LBB7_17
	.quad	.LBB7_18
	.quad	.LBB7_19
	.quad	.LBB7_19
	.quad	.LBB7_21
	.quad	.LBB7_24
	.quad	.LBB7_27
	.quad	.LBB7_28
	.quad	.LBB7_29
	.quad	.LBB7_30
	.quad	.LBB7_31
	.quad	.LBB7_32
	.quad	.LBB7_33
	.quad	.LBB7_36
	.quad	.LBB7_41
	.quad	.LBB7_98
	.quad	.LBB7_98
	.quad	.LBB7_49
	.quad	.LBB7_82
	.quad	.LBB7_50
	.quad	.LBB7_98
	.quad	.LBB7_58
	.quad	.LBB7_54
	.quad	.LBB7_63
	.quad	.LBB7_98
	.quad	.LBB7_66
	.quad	.LBB7_98
	.quad	.LBB7_70
	.quad	.LBB7_75
	.quad	.LBB7_98
	.quad	.LBB7_45
.LJTI7_1:
	.quad	.LBB7_7
	.quad	.LBB7_8
	.quad	.LBB7_9
	.quad	.LBB7_10
.LJTI7_2:
	.quad	.LBB7_92
	.quad	.LBB7_97
	.quad	.LBB7_90
	.quad	.LBB7_97
	.quad	.LBB7_94
	.quad	.LBB7_91

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1199570944              # float 65536
.LCPI8_1:
	.long	1593835520              # float 9.22337203E+18
	.text
	.align	16, 0x90
	.type	FAPI_FF_get_long,@function
FAPI_FF_get_long:                       # @FAPI_FF_get_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 176
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	160(%r14), %r13
	xorl	%r15d, %r15d
	cmpl	$30, %esi
	jg	.LBB8_4
# BB#1:                                 # %entry
	cmpl	$1, %esi
	jne	.LBB8_2
# BB#9:                                 # %sw.bb
	movq	408(%r13), %r15
	jmp	.LBB8_37
.LBB8_4:                                # %entry
	movq	168(%r14), %rax
	movq	72(%rax), %rdi
	cmpl	$31, %esi
	jne	.LBB8_5
# BB#10:                                # %sw.bb.2
	movl	512(%r13), %ebp
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	cmovsl	%r15d, %ebp
	leaq	104(%rsp), %rdx
	movl	$.L.str.15, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB8_37
# BB#11:                                # %for.cond.preheader
	movq	104(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.17, %esi
	callq	dict_find_string
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jle	.LBB8_19
# BB#12:                                # %if.then.15
	movq	8(%rsp), %rsi
	movl	4(%rsi), %ebx
	decl	%ebx
	incq	%rbx
	xorl	%r15d, %r15d
	leaq	16(%rsp), %r12
	jmp	.LBB8_13
	.align	16, 0x90
.LBB8_18:                               # %for.inc.for.body.20_crit_edge
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	8(%rsp), %rsi
.LBB8_13:                               # %for.body.20
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rdi
	decq	%rbx
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	array_get
	movzbl	17(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB8_17
# BB#14:                                # %if.then.27
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	20(%rsp), %eax
	xorl	%ecx, %ecx
	cmpl	$0, 8(%r14)
	jne	.LBB8_16
# BB#15:                                # %select.mid
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	%ebp, %ecx
.LBB8_16:                               # %select.end
                                        #   in Loop: Header=BB8_13 Depth=1
	subl	%ecx, %eax
	addq	%rax, %r15
.LBB8_17:                               # %for.inc
                                        #   in Loop: Header=BB8_13 Depth=1
	testq	%rbx, %rbx
	jg	.LBB8_18
.LBB8_19:                               # %for.inc.38
	movq	104(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.16, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB8_37
# BB#20:                                # %if.then.15.1
	movq	8(%rsp), %rsi
	movl	4(%rsi), %ebx
	decl	%ebx
	incq	%rbx
	leaq	16(%rsp), %r12
	jmp	.LBB8_21
	.align	16, 0x90
.LBB8_26:                               # %for.inc.1.for.body.20.1_crit_edge
                                        #   in Loop: Header=BB8_21 Depth=1
	movq	8(%rsp), %rsi
.LBB8_21:                               # %for.body.20.1
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rdi
	decq	%rbx
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	array_get
	movzbl	17(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB8_25
# BB#22:                                # %if.then.27.1
                                        #   in Loop: Header=BB8_21 Depth=1
	movl	20(%rsp), %eax
	xorl	%ecx, %ecx
	cmpl	$0, 8(%r14)
	jne	.LBB8_24
# BB#23:                                # %select.mid97
                                        #   in Loop: Header=BB8_21 Depth=1
	movl	%ebp, %ecx
.LBB8_24:                               # %select.end96
                                        #   in Loop: Header=BB8_21 Depth=1
	subl	%ecx, %eax
	addq	%rax, %r15
.LBB8_25:                               # %for.inc.1
                                        #   in Loop: Header=BB8_21 Depth=1
	testq	%rbx, %rbx
	jg	.LBB8_26
	jmp	.LBB8_37
.LBB8_2:                                # %entry
	cmpl	$2, %esi
	jne	.LBB8_37
# BB#3:                                 # %sw.bb.1
	movss	548(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI8_0(%rip), %xmm0
	movss	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm2
	subss	%xmm1, %xmm2
	cvttss2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttss2si	%xmm0, %r15
	ucomiss	%xmm1, %xmm0
	cmovaeq	%rcx, %r15
	jmp	.LBB8_37
.LBB8_5:                                # %entry
	cmpl	$32, %esi
	jne	.LBB8_37
# BB#6:                                 # %sw.bb.47
	movq	$sfnts_reader_rbyte, 64(%rsp)
	movq	$sfnts_reader_rword, 72(%rsp)
	movq	$sfnts_reader_rlong, 80(%rsp)
	movq	$sfnts_reader_rstring, 88(%rsp)
	movq	$sfnts_reader_seek, 96(%rsp)
	movq	$-1, 40(%rsp)
	movl	$0, 56(%rsp)
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB8_8
# BB#7:                                 # %lor.lhs.false.i.i
	leaq	16(%rsp), %rdx
	movl	$.L.str.28, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB8_8
# BB#27:                                # %sfnts_reader_init.exit.i
	cmpl	$0, 56(%rsp)
	jne	.LBB8_36
# BB#28:                                # %do.body.preheader.i.i
	leaq	104(%rsp), %rbx
.LBB8_29:                               # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rdx
	incq	%rdx
	movq	%rdx, 40(%rsp)
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdi
	movq	%rbx, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB8_30
# BB#31:                                # %if.else.i.i
                                        #   in Loop: Header=BB8_29 Depth=1
	movl	56(%rsp), %ecx
	testl	%eax, %eax
	js	.LBB8_32
# BB#33:                                # %if.end.9.i.i
                                        #   in Loop: Header=BB8_29 Depth=1
	testl	%ecx, %ecx
	jne	.LBB8_36
# BB#34:                                # %if.end.13.i.i
                                        #   in Loop: Header=BB8_29 Depth=1
	movq	112(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	108(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 52(%rsp)
	je	.LBB8_29
# BB#35:                                # %do.end.i.i
	movl	$0, 48(%rsp)
	jmp	.LBB8_36
.LBB8_8:                                # %sfnts_reader_init.exit.thread.i
	movl	$1, 56(%rsp)
.LBB8_36:                               # %true_type_size.exit
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	callq	sfnts_copy_except_glyf
	movq	%rax, %r15
.LBB8_37:                               # %cleanup.49
	movq	%r15, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_30:                               # %if.then.2.i.i
	orb	$2, 56(%rsp)
	jmp	.LBB8_36
.LBB8_32:                               # %if.then.5.i.i
	orl	$1, %ecx
	movl	%ecx, 56(%rsp)
	jmp	.LBB8_36
.Lfunc_end8:
	.size	FAPI_FF_get_long, .Lfunc_end8-FAPI_FF_get_long
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4652007308841189376     # double 1000
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.LCPI9_2:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4652007308841189376     # double 1.000000e+03
	.text
	.align	16, 0x90
	.type	FAPI_FF_get_float,@function
FAPI_FF_get_float:                      # @FAPI_FF_get_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 112
.Ltmp84:
	.cfi_offset %rbx, -40
.Ltmp85:
	.cfi_offset %r12, -32
.Ltmp86:
	.cfi_offset %r14, -24
.Ltmp87:
	.cfi_offset %r15, -16
	movl	%edx, %r14d
	movq	%rdi, %r15
	movq	168(%r15), %rax
	movq	72(%rax), %rbx
	xorpd	%xmm0, %xmm0
	cmpl	$41, %esi
	jg	.LBB9_6
# BB#1:                                 # %entry
	testl	%esi, %esi
	jne	.LBB9_2
# BB#11:                                # %sw.bb
	movq	424(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB9_14
# BB#12:                                # %land.lhs.true
	movq	504(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB9_14
# BB#13:                                # %if.then
	leaq	48(%rsp), %r12
	movq	%r12, %rsi
	callq	*%rcx
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB9_20
.LBB9_6:                                # %entry
	cmpl	$42, %esi
	jne	.LBB9_7
# BB#32:                                # %sw.bb.64
	leaq	(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	jle	.LBB9_53
# BB#33:                                # %if.end.72
	movq	(%rsp), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.24, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB9_34
# BB#35:                                # %if.end.77
	movl	%r14d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r14), %ebx
	movl	%ebx, %eax
	sarl	$3, %eax
	movq	16(%r15), %rdi
	movq	40(%rsp), %rsi
	movslq	%eax, %rdx
	leaq	48(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB9_36
# BB#37:                                # %if.end.84
	andl	$-8, %ebx
	subl	%ebx, %r14d
	movq	16(%r15), %rdi
	movslq	%r14d, %rdx
	leaq	48(%rsp), %rsi
	leaq	24(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB9_38
# BB#39:                                # %if.end.91
	movzbl	25(%rsp), %eax
	cmpl	$11, %eax
	xorpd	%xmm0, %xmm0
	jne	.LBB9_40
# BB#42:                                # %if.else.109
	xorps	%xmm0, %xmm0
	cvtsi2ssq	32(%rsp), %xmm0
	jmp	.LBB9_53
.LBB9_2:                                # %entry
	cmpl	$40, %esi
	jne	.LBB9_53
	jmp	.LBB9_3
.LBB9_7:                                # %entry
	cmpl	$45, %esi
	jne	.LBB9_53
# BB#8:                                 # %sw.bb.118
	leaq	40(%rsp), %rdx
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	jle	.LBB9_53
# BB#9:                                 # %if.end.130
	movq	40(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.25, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB9_10
# BB#43:                                # %if.end.135
	movl	%r14d, %ebx
	sarl	$31, %ebx
	movl	%ebx, %eax
	shrl	$26, %eax
	leal	(%rax,%r14), %eax
	sarl	$6, %eax
	movq	16(%r15), %rdi
	movq	16(%rsp), %rsi
	movslq	%eax, %rdx
	leaq	48(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB9_44
# BB#45:                                # %if.end.142
	shrl	$29, %ebx
	leal	(%rbx,%r14), %eax
	andl	$-8, %eax
	subl	%eax, %r14d
	movq	16(%r15), %rdi
	movslq	%r14d, %rbx
	leaq	48(%rsp), %rsi
	leaq	24(%rsp), %rcx
	movq	%rbx, %rdx
	callq	array_get
	testl	%eax, %eax
	js	.LBB9_46
# BB#47:                                # %if.end.149
	movq	16(%r15), %rdi
	leaq	24(%rsp), %rsi
	leaq	(%rsp), %rcx
	movq	%rbx, %rdx
	callq	array_get
	testl	%eax, %eax
	js	.LBB9_48
# BB#49:                                # %if.end.156
	movzbl	1(%rsp), %eax
	cmpl	$11, %eax
	xorpd	%xmm0, %xmm0
	jne	.LBB9_50
# BB#52:                                # %if.else.174
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rsp), %xmm0
	jmp	.LBB9_53
.LBB9_14:                               # %if.else
	cmpl	$0, 52(%r15)
	je	.LBB9_15
# BB#16:                                # %land.rhs
	movl	128(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB9_18
# BB#17:
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB9_19
.LBB9_34:
	xorpd	%xmm0, %xmm0
	jmp	.LBB9_53
.LBB9_15:
	movsd	.LCPI9_0(%rip), %xmm0   # xmm0 = mem[0],zero
	jmp	.LBB9_19
.LBB9_18:                               # %lor.rhs
	cmpl	$11, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	movsd	.LCPI9_2(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
.LBB9_19:                               # %land.end
	movq	64(%rax), %r12
	addq	$80, %r12
.LBB9_20:                               # %if.end
	movl	%r14d, %eax
	cmpl	$5, %r14d
	jbe	.LBB9_21
.LBB9_3:                                # %sw.bb.34
	leaq	24(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	jle	.LBB9_53
# BB#4:                                 # %if.end.39
	movq	16(%r15), %rdi
	movq	24(%rsp), %rsi
	movslq	%r14d, %rdx
	leaq	48(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB9_5
# BB#28:                                # %if.end.45
	movzbl	49(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB9_29
# BB#31:                                # %if.else.59
	xorps	%xmm0, %xmm0
	cvtsi2ssq	56(%rsp), %xmm0
	jmp	.LBB9_53
.LBB9_21:                               # %if.end
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_22:                               # %sw.bb.12
	addq	$4, %r12
	jmp	.LBB9_27
.LBB9_5:
	xorpd	%xmm0, %xmm0
	jmp	.LBB9_53
.LBB9_29:                               # %if.end.45
	movzbl	%al, %eax
	cmpl	$16, %eax
	xorpd	%xmm0, %xmm0
	jne	.LBB9_53
# BB#30:                                # %if.then.56
	movss	56(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB9_53
.LBB9_36:
	xorpd	%xmm0, %xmm0
	jmp	.LBB9_53
.LBB9_10:
	xorpd	%xmm0, %xmm0
	jmp	.LBB9_53
.LBB9_38:
	xorpd	%xmm0, %xmm0
	jmp	.LBB9_53
.LBB9_23:                               # %sw.bb.16
	addq	$8, %r12
	jmp	.LBB9_27
.LBB9_24:                               # %sw.bb.20
	addq	$12, %r12
	jmp	.LBB9_27
.LBB9_25:                               # %sw.bb.24
	addq	$16, %r12
	jmp	.LBB9_27
.LBB9_26:                               # %sw.bb.28
	addq	$20, %r12
.LBB9_27:                               # %cleanup.thread
	movss	(%r12), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
.LBB9_53:                               # %cleanup.185
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB9_40:                               # %if.end.91
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB9_53
# BB#41:                                # %if.then.105
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB9_53
.LBB9_44:
	xorpd	%xmm0, %xmm0
	jmp	.LBB9_53
.LBB9_46:
	xorpd	%xmm0, %xmm0
	jmp	.LBB9_53
.LBB9_48:
	xorpd	%xmm0, %xmm0
	jmp	.LBB9_53
.LBB9_50:                               # %if.end.156
	movzbl	%al, %eax
	cmpl	$16, %eax
	jne	.LBB9_53
# BB#51:                                # %if.then.170
	movss	8(%rsp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB9_53
.Lfunc_end9:
	.size	FAPI_FF_get_float, .Lfunc_end9-FAPI_FF_get_float
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_27
	.quad	.LBB9_22
	.quad	.LBB9_23
	.quad	.LBB9_24
	.quad	.LBB9_25
	.quad	.LBB9_26

	.text
	.align	16, 0x90
	.type	FAPI_FF_get_name,@function
FAPI_FF_get_name:                       # @FAPI_FF_get_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp92:
	.cfi_def_cfa_offset 96
.Ltmp93:
	.cfi_offset %rbx, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, %r14
	movl	%edx, %ebp
	movq	%rdi, %rbx
	cmpl	$36, %esi
	jne	.LBB10_5
# BB#1:                                 # %sw.bb
	movq	168(%rbx), %rax
	movq	72(%rax), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.20, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB10_7
# BB#2:                                 # %if.end
	movq	16(%rsp), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.21, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB10_7
# BB#3:                                 # %if.end.4
	movq	8(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$4, %eax
	jne	.LBB10_7
# BB#4:                                 # %if.end.8
	movq	16(%rbx), %rdi
	movslq	%ebp, %rdx
	leaq	40(%rsp), %rcx
	callq	array_get
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB10_8
.LBB10_5:
	addq	$16, %rbx
	movq	(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	40(%rsp), %rsi
	leaq	24(%rsp), %rdx
	callq	names_string_ref
	movl	28(%rsp), %edx
	xorl	%eax, %eax
	cmpl	%r15d, %edx
	jae	.LBB10_8
# BB#6:                                 # %if.end.21
	movq	32(%rsp), %rsi
	movq	%r14, %rdi
	callq	memcpy
	movl	28(%rsp), %eax
	movb	$0, (%r14,%rax)
	movl	$1, %eax
	jmp	.LBB10_8
.LBB10_7:                               # %cleanup.29.critedge7
	xorl	%eax, %eax
.LBB10_8:                               # %cleanup.29
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	FAPI_FF_get_name, .Lfunc_end10-FAPI_FF_get_name
	.cfi_endproc

	.align	16, 0x90
	.type	FAPI_FF_get_proc,@function
FAPI_FF_get_proc:                       # @FAPI_FF_get_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp103:
	.cfi_def_cfa_offset 144
.Ltmp104:
	.cfi_offset %rbx, -56
.Ltmp105:
	.cfi_offset %r12, -48
.Ltmp106:
	.cfi_offset %r13, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdi, %r15
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB11_20
# BB#1:                                 # %if.end
	cmpl	$33, %esi
	movq	%rbx, %rbp
	jne	.LBB11_19
# BB#2:                                 # %sw.bb
	movq	168(%r15), %rax
	movq	72(%rax), %rdi
	leaq	80(%rsp), %rdx
	movl	$.L.str.19, %esi
	callq	dict_find_string
	testl	%eax, %eax
	movq	%rbx, %rbp
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	$0, %eax
	jle	.LBB11_18
# BB#3:                                 # %for.cond.preheader
	movq	80(%rsp), %rcx
	movb	$1, %al
	cmpl	$0, 4(%rcx)
	movq	8(%rsp), %rbp           # 8-byte Reload
	je	.LBB11_18
# BB#4:                                 # %for.body.lr.ph
	leaq	64(%rsp), %rbx
	xorl	%r13d, %r13d
	movq	8(%rsp), %rbp           # 8-byte Reload
	jmp	.LBB11_5
.LBB11_10:                              # %sw.bb.16
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	16(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%rbx, %rsi
	leaq	48(%rsp), %rdx
	callq	names_string_ref
	movq	56(%rsp), %rsi
	movl	52(%rsp), %edx
	movq	%rbp, %rdi
	callq	strncpy
	movl	52(%rsp), %eax
	jmp	.LBB11_16
.LBB11_11:                              # %sw.bb.24
                                        #   in Loop: Header=BB11_5 Depth=1
	movss	72(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.26, %esi
	movb	$1, %al
	leaq	16(%rsp), %r14
	movq	%r14, %rdi
	callq	gs_sprintf
.LBB11_13:                              # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	%r14, %rdi
	jmp	.LBB11_15
	.align	16, 0x90
.LBB11_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$32, (%rbp)
	incq	%rbp
	movq	16(%r15), %rdi
	movq	80(%rsp), %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB11_6
# BB#7:                                 # %if.end.8
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	64(%rsp), %rax
	movzwl	%ax, %ecx
	cmpl	$5375, %ecx             # imm = 0x14FF
	ja	.LBB11_14
# BB#8:                                 # %cond.end
                                        #   in Loop: Header=BB11_5 Depth=1
	movzbl	65(%rsp), %ecx
	addl	$-11, %ecx
	cmpl	$5, %ecx
	ja	.LBB11_17
# BB#9:                                 # %cond.end
                                        #   in Loop: Header=BB11_5 Depth=1
	jmpq	*.LJTI11_0(,%rcx,8)
.LBB11_12:                              # %sw.bb.33
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	72(%rsp), %rdx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	leaq	16(%rsp), %r14
	movq	%r14, %rdi
	callq	gs_sprintf
	jmp	.LBB11_13
	.align	16, 0x90
.LBB11_14:                              # %sw.bb.42
                                        #   in Loop: Header=BB11_5 Depth=1
	movq	%rax, %r12
	shrq	$32, %r12
	andl	$15, %r12d
	shrq	$36, %rax
	movq	%r15, %r14
	movq	op_defs_all(,%rax,8), %r15
	shlq	$4, %r12
	movq	(%r15,%r12), %rsi
	incq	%rsi
	movq	%rbp, %rdi
	callq	strcpy
	movq	(%r15,%r12), %rdi
	movq	%r14, %r15
	incq	%rdi
.LBB11_15:                              # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=1
	callq	strlen
.LBB11_16:                              # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=1
	addq	%rax, %rbp
.LBB11_17:                              # %for.inc
                                        #   in Loop: Header=BB11_5 Depth=1
	incq	%r13
	movq	80(%rsp), %rcx
	movb	$1, %al
	cmpl	4(%rcx), %r13d
	jb	.LBB11_5
	jmp	.LBB11_18
.LBB11_6:
	xorl	%eax, %eax
.LBB11_18:                              # %cleanup
	testb	%al, %al
	movl	$0, %eax
	movq	8(%rsp), %rbx           # 8-byte Reload
	je	.LBB11_20
.LBB11_19:                              # %sw.epilog.60
	subl	%ebx, %ebp
	movl	%ebp, %eax
.LBB11_20:                              # %cleanup.62
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	FAPI_FF_get_proc, .Lfunc_end11-FAPI_FF_get_proc
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_12
	.quad	.LBB11_17
	.quad	.LBB11_10
	.quad	.LBB11_17
	.quad	.LBB11_14
	.quad	.LBB11_11

	.text
	.align	16, 0x90
	.type	FAPI_FF_get_gsubr,@function
FAPI_FF_get_gsubr:                      # @FAPI_FF_get_gsubr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp114:
	.cfi_def_cfa_offset 80
.Ltmp115:
	.cfi_offset %rbx, -40
.Ltmp116:
	.cfi_offset %r14, -32
.Ltmp117:
	.cfi_offset %r15, -24
.Ltmp118:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	168(%rbx), %rax
	movq	72(%rax), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.15, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_1
# BB#2:                                 # %if.end
	movq	32(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.16, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_3
# BB#4:                                 # %if.end.4
	movq	16(%rbx), %rdi
	movq	24(%rsp), %rsi
	movslq	%ebp, %rdx
	leaq	8(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB12_5
# BB#6:                                 # %lor.lhs.false
	xorl	%eax, %eax
	movzbl	9(%rsp), %ecx
	cmpl	$18, %ecx
	movl	$0, %ebp
	jne	.LBB12_17
# BB#7:                                 # %if.end.12
	movq	160(%rbx), %rcx
	movl	512(%rcx), %r9d
	testl	%r9d, %r9d
	cmovnsl	%r9d, %eax
	movl	12(%rsp), %r8d
	movl	8(%rbx), %ebx
	testl	%ebx, %ebx
	movl	%eax, %edi
	cmovel	%ebx, %edi
	movl	%r8d, %ebp
	subl	%edi, %ebp
	testq	%r14, %r14
	je	.LBB12_17
# BB#8:                                 # %if.then.i
	movzwl	%r15w, %ecx
	cmpl	%ecx, %ebp
	movl	%ecx, %edx
	cmovlel	%ebp, %edx
	movq	16(%rsp), %rsi
	testl	%r9d, %r9d
	js	.LBB12_16
# BB#9:                                 # %if.then.i
	testl	%ebx, %ebx
	je	.LBB12_16
# BB#10:                                # %if.then.22.i
	addl	%eax, %edx
	je	.LBB12_17
# BB#11:                                # %for.body.i.i.preheader
	decl	%edi
	subl	%r8d, %edi
	notl	%ecx
	cmpl	%ecx, %edi
	cmovgel	%edi, %ecx
	incl	%ecx
	xorl	%edx, %edx
	testl	%r9d, %r9d
	cmovnsl	%r9d, %edx
	subl	%edx, %ecx
	movl	$4330, %edi             # imm = 0x10EA
	.align	16, 0x90
.LBB12_12:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ebx
	movzwl	%di, %edx
	leal	(%rdx,%rbx), %edx
	imull	$52845, %edx, %edx      # imm = 0xCE6D
	testl	%eax, %eax
	jle	.LBB12_14
# BB#13:                                # %if.then.i.i
                                        #   in Loop: Header=BB12_12 Depth=1
	decl	%eax
	jmp	.LBB12_15
	.align	16, 0x90
.LBB12_14:                              # %if.else.i.i
                                        #   in Loop: Header=BB12_12 Depth=1
	shrl	$8, %edi
	xorl	%edi, %ebx
	movb	%bl, (%r14)
	incq	%r14
.LBB12_15:                              # %if.end.i.i
                                        #   in Loop: Header=BB12_12 Depth=1
	addl	$22719, %edx            # imm = 0x58BF
	incq	%rsi
	incl	%ecx
	movl	%edx, %edi
	jne	.LBB12_12
	jmp	.LBB12_17
.LBB12_1:
	xorl	%ebp, %ebp
	jmp	.LBB12_17
.LBB12_3:
	xorl	%ebp, %ebp
	jmp	.LBB12_17
.LBB12_5:
	xorl	%ebp, %ebp
	jmp	.LBB12_17
.LBB12_16:                              # %if.else.i
	movslq	%edx, %rdx
	movq	%r14, %rdi
	callq	memcpy
.LBB12_17:                              # %cleanup
	movzwl	%bp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	FAPI_FF_get_gsubr, .Lfunc_end12-FAPI_FF_get_gsubr
	.cfi_endproc

	.align	16, 0x90
	.type	FAPI_FF_get_subr,@function
FAPI_FF_get_subr:                       # @FAPI_FF_get_subr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp120:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp121:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp123:
	.cfi_def_cfa_offset 80
.Ltmp124:
	.cfi_offset %rbx, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	168(%rbx), %rax
	movq	72(%rax), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.15, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB13_1
# BB#2:                                 # %if.end
	movq	32(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.17, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB13_3
# BB#4:                                 # %if.end.4
	movq	16(%rbx), %rdi
	movq	24(%rsp), %rsi
	movslq	%ebp, %rdx
	leaq	8(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB13_5
# BB#6:                                 # %lor.lhs.false
	xorl	%eax, %eax
	movzbl	9(%rsp), %ecx
	cmpl	$18, %ecx
	movl	$0, %ebp
	jne	.LBB13_17
# BB#7:                                 # %if.end.12
	movq	160(%rbx), %rcx
	movl	512(%rcx), %r9d
	testl	%r9d, %r9d
	cmovnsl	%r9d, %eax
	movl	12(%rsp), %r8d
	movl	8(%rbx), %ebx
	testl	%ebx, %ebx
	movl	%eax, %edi
	cmovel	%ebx, %edi
	movl	%r8d, %ebp
	subl	%edi, %ebp
	testq	%r14, %r14
	je	.LBB13_17
# BB#8:                                 # %if.then.i
	movzwl	%r15w, %ecx
	cmpl	%ecx, %ebp
	movl	%ecx, %edx
	cmovlel	%ebp, %edx
	movq	16(%rsp), %rsi
	testl	%r9d, %r9d
	js	.LBB13_16
# BB#9:                                 # %if.then.i
	testl	%ebx, %ebx
	je	.LBB13_16
# BB#10:                                # %if.then.22.i
	addl	%eax, %edx
	je	.LBB13_17
# BB#11:                                # %for.body.i.i.preheader
	decl	%edi
	subl	%r8d, %edi
	notl	%ecx
	cmpl	%ecx, %edi
	cmovgel	%edi, %ecx
	incl	%ecx
	xorl	%edx, %edx
	testl	%r9d, %r9d
	cmovnsl	%r9d, %edx
	subl	%edx, %ecx
	movl	$4330, %edi             # imm = 0x10EA
	.align	16, 0x90
.LBB13_12:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ebx
	movzwl	%di, %edx
	leal	(%rdx,%rbx), %edx
	imull	$52845, %edx, %edx      # imm = 0xCE6D
	testl	%eax, %eax
	jle	.LBB13_14
# BB#13:                                # %if.then.i.i
                                        #   in Loop: Header=BB13_12 Depth=1
	decl	%eax
	jmp	.LBB13_15
	.align	16, 0x90
.LBB13_14:                              # %if.else.i.i
                                        #   in Loop: Header=BB13_12 Depth=1
	shrl	$8, %edi
	xorl	%edi, %ebx
	movb	%bl, (%r14)
	incq	%r14
.LBB13_15:                              # %if.end.i.i
                                        #   in Loop: Header=BB13_12 Depth=1
	addl	$22719, %edx            # imm = 0x58BF
	incq	%rsi
	incl	%ecx
	movl	%edx, %edi
	jne	.LBB13_12
	jmp	.LBB13_17
.LBB13_1:
	xorl	%ebp, %ebp
	jmp	.LBB13_17
.LBB13_3:
	xorl	%ebp, %ebp
	jmp	.LBB13_17
.LBB13_5:
	xorl	%ebp, %ebp
	jmp	.LBB13_17
.LBB13_16:                              # %if.else.i
	movslq	%edx, %rdx
	movq	%r14, %rdi
	callq	memcpy
.LBB13_17:                              # %cleanup
	movzwl	%bp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	FAPI_FF_get_subr, .Lfunc_end13-FAPI_FF_get_subr
	.cfi_endproc

	.align	16, 0x90
	.type	FAPI_FF_get_raw_subr,@function
FAPI_FF_get_raw_subr:                   # @FAPI_FF_get_raw_subr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 80
.Ltmp133:
	.cfi_offset %rbx, -40
.Ltmp134:
	.cfi_offset %r14, -32
.Ltmp135:
	.cfi_offset %r15, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movl	%esi, %ebx
	movq	%rdi, %rbp
	movq	168(%rbp), %rax
	movq	72(%rax), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.15, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_1
# BB#2:                                 # %if.end
	movq	32(%rsp), %rdi
	leaq	24(%rsp), %rdx
	movl	$.L.str.17, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB14_3
# BB#4:                                 # %if.end.4
	movq	16(%rbp), %rdi
	movq	24(%rsp), %rsi
	movslq	%ebx, %rdx
	leaq	8(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB14_5
# BB#6:                                 # %lor.lhs.false
	movzbl	9(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB14_7
# BB#8:                                 # %if.end.12
	testq	%r14, %r14
	je	.LBB14_10
# BB#9:                                 # %if.end.12
	testw	%r15w, %r15w
	je	.LBB14_10
# BB#11:                                # %land.lhs.true.15
	movzwl	%r15w, %eax
	leaq	12(%rsp), %rbx
	movl	12(%rsp), %edx
	cmpl	%edx, %eax
	jb	.LBB14_13
# BB#12:                                # %if.then.20
	movq	16(%rsp), %rsi
	movq	%r14, %rdi
	callq	memcpy
	jmp	.LBB14_13
.LBB14_1:
	xorl	%eax, %eax
	jmp	.LBB14_14
.LBB14_3:
	xorl	%eax, %eax
	jmp	.LBB14_14
.LBB14_5:
	xorl	%eax, %eax
	jmp	.LBB14_14
.LBB14_7:
	xorl	%eax, %eax
	jmp	.LBB14_14
.LBB14_10:                              # %if.end.12.if.end.25_crit_edge
	leaq	12(%rsp), %rbx
.LBB14_13:                              # %if.end.25
	movzwl	(%rbx), %eax
.LBB14_14:                              # %cleanup
	movzwl	%ax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	FAPI_FF_get_raw_subr, .Lfunc_end14-FAPI_FF_get_raw_subr
	.cfi_endproc

	.align	16, 0x90
	.type	FAPI_FF_get_glyph,@function
FAPI_FF_get_glyph:                      # @FAPI_FF_get_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp141:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp143:
	.cfi_def_cfa_offset 192
.Ltmp144:
	.cfi_offset %rbx, -56
.Ltmp145:
	.cfi_offset %r12, -48
.Ltmp146:
	.cfi_offset %r13, -40
.Ltmp147:
	.cfi_offset %r14, -32
.Ltmp148:
	.cfi_offset %r15, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movq	152(%rbx), %r14
	movq	168(%rbx), %rax
	movq	72(%rax), %rbp
	cmpl	$0, 48(%rbx)
	je	.LBB15_36
# BB#1:                                 # %if.then
	cmpl	$0, 52(%rbx)
	je	.LBB15_13
# BB#2:                                 # %if.then.2
	movq	176(%rbx), %rsi
	movl	8(%rsi), %r8d
	movq	160(%rbx), %rax
	movl	512(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovnsl	%edx, %eax
	movl	8(%rbx), %ebp
	testl	%ebp, %ebp
	movl	%eax, %ebx
	cmovel	%ebp, %ebx
	movl	%r8d, %r15d
	subl	%ebx, %r15d
	testq	%r12, %r12
	je	.LBB15_103
# BB#3:                                 # %if.then.i
	movq	(%rsi), %rsi
	movzwl	%cx, %ecx
	cmpl	%ecx, %r15d
	movl	%ecx, %edi
	cmovlel	%r15d, %edi
	testl	%edx, %edx
	js	.LBB15_11
# BB#4:                                 # %if.then.i
	testl	%ebp, %ebp
	je	.LBB15_11
# BB#5:                                 # %if.then.22.i
	addl	%eax, %edi
	je	.LBB15_103
# BB#6:                                 # %for.body.i.i.preheader
	decl	%ebx
	subl	%r8d, %ebx
	notl	%ecx
	cmpl	%ecx, %ebx
	cmovgel	%ebx, %ecx
	incl	%ecx
	xorl	%edi, %edi
	testl	%edx, %edx
	cmovnsl	%edx, %edi
	subl	%edi, %ecx
	movl	$4330, %edi             # imm = 0x10EA
	.align	16, 0x90
.LBB15_7:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ebp
	movzwl	%di, %edx
	leal	(%rdx,%rbp), %edx
	imull	$52845, %edx, %edx      # imm = 0xCE6D
	testl	%eax, %eax
	jle	.LBB15_9
# BB#8:                                 # %if.then.i.i
                                        #   in Loop: Header=BB15_7 Depth=1
	decl	%eax
	jmp	.LBB15_10
	.align	16, 0x90
.LBB15_9:                               # %if.else.i.i
                                        #   in Loop: Header=BB15_7 Depth=1
	shrl	$8, %edi
	xorl	%edi, %ebp
	movb	%bpl, (%r12)
	incq	%r12
.LBB15_10:                              # %if.end.i.i
                                        #   in Loop: Header=BB15_7 Depth=1
	addl	$22719, %edx            # imm = 0x58BF
	incq	%rsi
	incl	%ecx
	movl	%edx, %edi
	jne	.LBB15_7
	jmp	.LBB15_103
.LBB15_36:                              # %if.else.77
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	leaq	24(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	*288(%rbx)
	movl	%eax, %r15d
	leaq	16(%rsp), %rdx
	movl	$.L.str.36, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_39
# BB#37:                                # %land.lhs.true
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB15_39
# BB#38:                                # %if.then.88
	movzwl	8(%rax), %eax
	jmp	.LBB15_40
.LBB15_39:                              # %if.else.91
	movl	196(%r14), %eax
.LBB15_40:                              # %if.end.92
	testl	%eax, %eax
	jne	.LBB15_70
# BB#41:                                # %land.lhs.true.94
	movl	184(%rbx), %eax
	cmpl	$7, %eax
	jne	.LBB15_56
# BB#42:                                # %land.lhs.true.98
	movl	$.L.str.35, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$6, %rcx
	ja	.LBB15_52
# BB#43:                                # %land.lhs.true.102
	movq	176(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB15_51
# BB#44:                                # %cond.true.106
	movzbl	(%rdi), %eax
	addl	$-46, %eax
	testq	%rcx, %rcx
	je	.LBB15_53
# BB#45:                                # %cond.true.106
	testl	%eax, %eax
	jne	.LBB15_53
# BB#46:                                # %if.then.118
	movzbl	1(%rdi), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB15_53
# BB#47:                                # %if.then.118
	testl	%eax, %eax
	jne	.LBB15_53
# BB#48:                                # %if.then.128
	movzbl	2(%rdi), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB15_53
# BB#49:                                # %if.then.128
	testl	%eax, %eax
	jne	.LBB15_53
# BB#50:                                # %if.then.138
	movzbl	3(%rdi), %eax
	addl	$-116, %eax
	jmp	.LBB15_53
.LBB15_13:                              # %if.else
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	176(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB15_17
# BB#14:                                # %if.then.6
	movq	16(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	184(%rbx), %edx
	leaq	32(%rsp), %rcx
	movl	$-1, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB15_34
# BB#15:                                # %if.end
	testq	%r12, %r12
	je	.LBB15_20
# BB#16:                                # %if.then.12
	movq	$0, 176(%rbx)
	jmp	.LBB15_20
.LBB15_11:                              # %if.else.i
	movslq	%edi, %rdx
	jmp	.LBB15_12
.LBB15_17:                              # %if.else.15
	addq	$504, %r14              # imm = 0x1F8
	leaq	16(%rsp), %rdx
	movl	$.L.str.34, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_19
# BB#18:                                # %lor.lhs.false
	movq	16(%rbx), %rdi
	movq	16(%rsp), %rsi
	movslq	%r13d, %rdx
	leaq	32(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	jns	.LBB15_20
.LBB15_19:                              # %if.then.22
	movq	16(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	32(%rsp), %rcx
	movl	$.L.str.35, %esi
	movl	$7, %edx
	movl	$-1, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB15_34
.LBB15_20:                              # %if.end.32
	leaq	120(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_34
# BB#21:                                # %if.end.37
	movq	120(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jg	.LBB15_24
# BB#22:                                # %if.then.41
	movq	16(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	32(%rsp), %rcx
	movl	$.L.str.35, %esi
	movl	$7, %edx
	movl	$-1, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB15_34
# BB#23:                                # %if.end.49
	movq	120(%rsp), %rdi
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB15_34
.LBB15_24:                              # %if.end.55
	movq	24(%rsp), %rsi
	movb	1(%rsi), %al
	andb	$-2, %al
	movzbl	%al, %eax
	cmpl	$4, %eax
	jne	.LBB15_25
.LBB15_34:                              # %cleanup.71.thread
	movl	$-1, %eax
	jmp	.LBB15_104
.LBB15_25:                              # %if.end.69
	movq	160(%rbx), %rax
	movl	512(%rax), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	cmovnsl	%edx, %eax
	movl	4(%rsi), %r8d
	movl	8(%rbx), %ebp
	testl	%ebp, %ebp
	movl	%eax, %edi
	cmovel	%ebp, %edi
	movl	%r8d, %r15d
	subl	%edi, %r15d
	testq	%r12, %r12
	je	.LBB15_103
# BB#26:                                # %if.then.i.123
	movl	12(%rsp), %ecx          # 4-byte Reload
	movzwl	%cx, %ecx
	cmpl	%ecx, %r15d
	movl	%ecx, %ebx
	cmovlel	%r15d, %ebx
	movq	8(%rsi), %rsi
	testl	%edx, %edx
	js	.LBB15_35
# BB#27:                                # %if.then.i.123
	testl	%ebp, %ebp
	je	.LBB15_35
# BB#28:                                # %if.then.22.i.126
	addl	%eax, %ebx
	je	.LBB15_103
# BB#29:                                # %for.body.i.i.138.preheader
	decl	%edi
	subl	%r8d, %edi
	notl	%ecx
	cmpl	%ecx, %edi
	cmovgel	%edi, %ecx
	incl	%ecx
	xorl	%edi, %edi
	testl	%edx, %edx
	cmovnsl	%edx, %edi
	subl	%edi, %ecx
	movl	$4330, %edi             # imm = 0x10EA
	.align	16, 0x90
.LBB15_30:                              # %for.body.i.i.138
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ebp
	movzwl	%di, %edx
	leal	(%rdx,%rbp), %edx
	imull	$52845, %edx, %edx      # imm = 0xCE6D
	testl	%eax, %eax
	jle	.LBB15_32
# BB#31:                                # %if.then.i.i.140
                                        #   in Loop: Header=BB15_30 Depth=1
	decl	%eax
	jmp	.LBB15_33
.LBB15_32:                              # %if.else.i.i.145
                                        #   in Loop: Header=BB15_30 Depth=1
	shrl	$8, %edi
	xorl	%edi, %ebp
	movb	%bpl, (%r12)
	incq	%r12
.LBB15_33:                              # %if.end.i.i.151
                                        #   in Loop: Header=BB15_30 Depth=1
	addl	$22719, %edx            # imm = 0x58BF
	incq	%rsi
	incl	%ecx
	movl	%edx, %edi
	jne	.LBB15_30
	jmp	.LBB15_103
.LBB15_52:                              # %cond.false.149
	movq	176(%rbx), %rdi
	movl	$.L.str.35, %esi
	movl	$7, %edx
	callq	strncmp
	jmp	.LBB15_53
.LBB15_51:                              # %cond.false
	movl	$.L.str.35, %esi
	callq	strcmp
.LBB15_53:                              # %cond.end.152
	testl	%eax, %eax
	je	.LBB15_54
# BB#55:                                # %lor.lhs.false.156thread-pre-split
	movl	184(%rbx), %eax
.LBB15_56:                              # %lor.lhs.false.156
	cmpl	$10, %eax
	jl	.LBB15_70
# BB#57:                                # %land.lhs.true.160
	movl	$.L.str.37, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$9, %rcx
	ja	.LBB15_67
# BB#58:                                # %land.lhs.true.170
	movq	176(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB15_66
# BB#59:                                # %cond.true.174
	movzbl	(%rdi), %eax
	addl	$-46, %eax
	testq	%rcx, %rcx
	je	.LBB15_68
# BB#60:                                # %cond.true.174
	testl	%eax, %eax
	jne	.LBB15_68
# BB#61:                                # %if.then.189
	movzbl	1(%rdi), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB15_68
# BB#62:                                # %if.then.189
	testl	%eax, %eax
	jne	.LBB15_68
# BB#63:                                # %if.then.199
	movzbl	2(%rdi), %eax
	addl	$-111, %eax
	cmpq	$3, %rcx
	jb	.LBB15_68
# BB#64:                                # %if.then.199
	testl	%eax, %eax
	jne	.LBB15_68
# BB#65:                                # %if.then.209
	movzbl	3(%rdi), %eax
	addl	$-116, %eax
	jmp	.LBB15_68
.LBB15_67:                              # %cond.false.223
	movq	176(%rbx), %rdi
	movl	$.L.str.37, %esi
	movl	$10, %edx
	callq	strncmp
	jmp	.LBB15_68
.LBB15_54:
	xorl	%r15d, %r15d
	jmp	.LBB15_103
.LBB15_66:                              # %cond.false.218
	movl	$.L.str.37, %esi
	callq	strcmp
.LBB15_68:                              # %cond.end.226
	testl	%eax, %eax
	je	.LBB15_69
.LBB15_70:                              # %if.else.231
	testl	%r15d, %r15d
	js	.LBB15_74
# BB#71:                                # %if.then.234
	movq	%rbx, %rdi
	callq	gs_fapi_get_metrics_count
	addl	%eax, %eax
	subl	%eax, %r15d
	testw	%r15w, %r15w
	cmovew	%r15w, %r15w
	testq	%r12, %r12
	je	.LBB15_103
# BB#72:                                # %if.then.234
	testw	%r15w, %r15w
	je	.LBB15_103
# BB#73:                                # %if.then.257
	movslq	%eax, %rsi
	addq	24(%rsp), %rsi
	movl	12(%rsp), %edx          # 4-byte Reload
	movzwl	%dx, %eax
	movzwl	%r15w, %ecx
	cmpl	%eax, %ecx
	cmovbw	%r15w, %dx
	movzwl	%dx, %edx
.LBB15_12:                              # %if.end.317
	movq	%r12, %rdi
	callq	memcpy
	jmp	.LBB15_103
.LBB15_74:                              # %if.else.271
	movq	160(%rbx), %rbx
	movl	516(%rbx), %r15d
	testl	%r15d, %r15d
	setne	%al
	movzbl	%al, %eax
	leal	2(%rax,%rax), %r14d
	movq	$sfnts_reader_rbyte, 80(%rsp)
	movq	$sfnts_reader_rword, 88(%rsp)
	movq	$sfnts_reader_rlong, 96(%rsp)
	movq	$sfnts_reader_rstring, 104(%rsp)
	movq	$sfnts_reader_seek, 112(%rsp)
	movq	$-1, 56(%rsp)
	movl	$0, 72(%rsp)
	movzbl	1(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB15_76
# BB#75:                                # %lor.lhs.false.i.i
	leaq	32(%rsp), %rdx
	movl	$.L.str.28, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_76
# BB#77:                                # %sfnts_reader_init.exit.i
	cmpl	$0, 72(%rsp)
	jne	.LBB15_85
.LBB15_78:                              # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rdx
	incq	%rdx
	movq	%rdx, 56(%rsp)
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdi
	leaq	120(%rsp), %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB15_79
# BB#80:                                # %if.else.i.i.159
                                        #   in Loop: Header=BB15_78 Depth=1
	movl	72(%rsp), %ecx
	testl	%eax, %eax
	js	.LBB15_81
# BB#82:                                # %if.end.9.i.i
                                        #   in Loop: Header=BB15_78 Depth=1
	testl	%ecx, %ecx
	jne	.LBB15_85
# BB#83:                                # %if.end.13.i.i
                                        #   in Loop: Header=BB15_78 Depth=1
	movq	128(%rsp), %rax
	movq	%rax, 48(%rsp)
	movl	124(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 68(%rsp)
	je	.LBB15_78
# BB#84:                                # %do.end.i.i
	movl	$0, 64(%rsp)
	jmp	.LBB15_85
.LBB15_76:                              # %sfnts_reader_init.exit.thread.i
	movl	$1, 72(%rsp)
.LBB15_85:                              # %sfnts_next_elem.exit.i
	imull	%r13d, %r14d
	movslq	%r14d, %rsi
	addq	568(%rbx), %rsi
	leaq	32(%rsp), %rdi
	callq	*112(%rsp)
	testl	%r15d, %r15d
	movq	504(%rbx), %r14
	leaq	32(%rsp), %rdi
	je	.LBB15_86
# BB#87:                                # %cond.false.i
	callq	*96(%rsp)
	jmp	.LBB15_88
.LBB15_86:                              # %cond.true.i
	callq	*88(%rsp)
	movzwl	%ax, %eax
	addq	%rax, %rax
.LBB15_88:                              # %sfnt_get_glyph_offset.exit
	cmpl	$0, 72(%rsp)
	movw	$-1, %r15w
	jne	.LBB15_103
# BB#89:                                # %cond.end.282
	movslq	%r13d, %rdx
	movq	616(%rbx), %rcx
	movzwl	(%rcx,%rdx,4), %r15d
	testq	%r12, %r12
	je	.LBB15_103
# BB#90:                                # %if.then.289
	addq	%r14, %rax
	movq	%rax, %r14
	movq	$sfnts_reader_rbyte, 80(%rsp)
	movq	$sfnts_reader_rword, 88(%rsp)
	movq	$sfnts_reader_rlong, 96(%rsp)
	movq	$sfnts_reader_rstring, 104(%rsp)
	movq	$sfnts_reader_seek, 112(%rsp)
	movq	$-1, 56(%rsp)
	movl	$0, 72(%rsp)
	movzbl	1(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB15_92
# BB#91:                                # %lor.lhs.false.i
	leaq	32(%rsp), %rdx
	movl	$.L.str.28, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_92
# BB#93:                                # %sfnts_reader_init.exit
	cmpl	$0, 72(%rsp)
	jne	.LBB15_102
# BB#94:                                # %do.body.preheader.i
	leaq	120(%rsp), %rbx
.LBB15_95:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rdx
	incq	%rdx
	movq	%rdx, 56(%rsp)
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdi
	movq	%rbx, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB15_96
# BB#97:                                # %if.else.i.173
                                        #   in Loop: Header=BB15_95 Depth=1
	movl	72(%rsp), %ecx
	testl	%eax, %eax
	js	.LBB15_98
# BB#99:                                # %if.end.9.i
                                        #   in Loop: Header=BB15_95 Depth=1
	testl	%ecx, %ecx
	jne	.LBB15_102
# BB#100:                               # %if.end.13.i
                                        #   in Loop: Header=BB15_95 Depth=1
	movq	128(%rsp), %rax
	movq	%rax, 48(%rsp)
	movl	124(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 68(%rsp)
	je	.LBB15_95
# BB#101:                               # %do.end.i
	movl	$0, 64(%rsp)
	jmp	.LBB15_102
.LBB15_69:
	xorl	%r15d, %r15d
	jmp	.LBB15_103
.LBB15_92:                              # %sfnts_reader_init.exit.thread
	movl	$1, 72(%rsp)
.LBB15_102:                             # %sfnts_next_elem.exit
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*112(%rsp)
	movl	12(%rsp), %ecx          # 4-byte Reload
	movzwl	%cx, %eax
	movzwl	%r15w, %ebp
	cmpl	%eax, %ebp
	movw	%bp, %ax
	cmovaew	%cx, %ax
	movzwl	%ax, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*104(%rsp)
	movl	%eax, %r15d
	movl	72(%rsp), %eax
	cmpl	$1, %eax
	movw	$-1, %cx
	cmovew	%cx, %bp
	cmpl	$2, %eax
	cmovnew	%bp, %r15w
.LBB15_103:                             # %if.end.317
	movzwl	%r15w, %eax
.LBB15_104:                             # %cleanup.319
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_35:                              # %if.else.i.154
	movslq	%ebx, %rdx
	jmp	.LBB15_12
.LBB15_79:                              # %if.then.2.i.i
	orb	$2, 72(%rsp)
	jmp	.LBB15_85
.LBB15_81:                              # %if.then.5.i.i
	orl	$1, %ecx
	movl	%ecx, 72(%rsp)
	jmp	.LBB15_85
.LBB15_96:                              # %if.then.2.i
	orb	$2, 72(%rsp)
	jmp	.LBB15_102
.LBB15_98:                              # %if.then.5.i
	orl	$1, %ecx
	movl	%ecx, 72(%rsp)
	jmp	.LBB15_102
.Lfunc_end15:
	.size	FAPI_FF_get_glyph, .Lfunc_end15-FAPI_FF_get_glyph
	.cfi_endproc

	.align	16, 0x90
	.type	FAPI_FF_serialize_tt_font,@function
FAPI_FF_serialize_tt_font:              # @FAPI_FF_serialize_tt_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 16
	subq	$160, %rsp
.Ltmp151:
	.cfi_def_cfa_offset 176
.Ltmp152:
	.cfi_offset %rbx, -16
	movq	168(%rdi), %rax
	movq	72(%rax), %rdi
	movq	sfnts_writer_stub+48(%rip), %rax
	movq	%rax, 48(%rsp)
	movups	sfnts_writer_stub+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	sfnts_writer_stub+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	sfnts_writer_stub(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movl	%edx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	$sfnts_reader_rbyte, 104(%rsp)
	movq	$sfnts_reader_rword, 112(%rsp)
	movq	$sfnts_reader_rlong, 120(%rsp)
	movq	$sfnts_reader_rstring, 128(%rsp)
	movq	$sfnts_reader_seek, 136(%rsp)
	movq	$-1, 80(%rsp)
	movl	$0, 96(%rsp)
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB16_2
# BB#1:                                 # %lor.lhs.false.i
	leaq	56(%rsp), %rdx
	movl	$.L.str.28, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB16_2
# BB#3:                                 # %sfnts_reader_init.exit
	cmpl	$0, 96(%rsp)
	jne	.LBB16_12
# BB#4:                                 # %do.body.preheader.i
	leaq	144(%rsp), %rbx
	.align	16, 0x90
.LBB16_5:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%rsp), %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movq	56(%rsp), %rsi
	movq	64(%rsp), %rdi
	movq	%rbx, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB16_6
# BB#7:                                 # %if.else.i
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	96(%rsp), %ecx
	testl	%eax, %eax
	js	.LBB16_8
# BB#9:                                 # %if.end.9.i
                                        #   in Loop: Header=BB16_5 Depth=1
	testl	%ecx, %ecx
	jne	.LBB16_12
# BB#10:                                # %if.end.13.i
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	152(%rsp), %rax
	movq	%rax, 72(%rsp)
	movl	148(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 92(%rsp)
	je	.LBB16_5
# BB#11:                                # %do.end.i
	movl	$0, 88(%rsp)
	jmp	.LBB16_12
.LBB16_2:                               # %sfnts_reader_init.exit.thread
	movl	$1, 96(%rsp)
.LBB16_12:                              # %sfnts_next_elem.exit
	leaq	56(%rsp), %rdi
	leaq	(%rsp), %rsi
	callq	sfnts_copy_except_glyf
	testq	%rax, %rax
	movw	$1, %ax
	cmovnew	96(%rsp), %ax
	movzwl	%ax, %eax
	addq	$160, %rsp
	popq	%rbx
	retq
.LBB16_6:                               # %if.then.2.i
	orb	$2, 96(%rsp)
	jmp	.LBB16_12
.LBB16_8:                               # %if.then.5.i
	orl	$1, %ecx
	movl	%ecx, 96(%rsp)
	jmp	.LBB16_12
.Lfunc_end16:
	.size	FAPI_FF_serialize_tt_font, .Lfunc_end16-FAPI_FF_serialize_tt_font
	.cfi_endproc

	.align	16, 0x90
	.type	FAPI_FF_get_charstring,@function
FAPI_FF_get_charstring:                 # @FAPI_FF_get_charstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp155:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp156:
	.cfi_def_cfa_offset 80
.Ltmp157:
	.cfi_offset %rbx, -32
.Ltmp158:
	.cfi_offset %r14, -24
.Ltmp159:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movl	%esi, %ebx
	movq	168(%rdi), %rax
	movq	72(%rax), %rdi
	leaq	40(%rsp), %rdx
	movl	$.L.str.18, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB17_1
# BB#2:                                 # %if.end
	movq	40(%rsp), %rdi
	leaq	(%rsp), %rdx
	movl	%ebx, %esi
	callq	dict_index_entry
	testl	%eax, %eax
	js	.LBB17_3
# BB#4:                                 # %if.end.4
	testq	%r14, %r14
	je	.LBB17_6
# BB#5:                                 # %if.end.4
	testw	%bp, %bp
	je	.LBB17_6
# BB#7:                                 # %land.lhs.true.6
	movzwl	%bp, %eax
	leaq	20(%rsp), %rbx
	movl	20(%rsp), %edx
	cmpl	%edx, %eax
	jb	.LBB17_9
# BB#8:                                 # %if.then.10
	movq	24(%rsp), %rsi
	movq	%r14, %rdi
	callq	memcpy
	jmp	.LBB17_9
.LBB17_1:
	xorl	%eax, %eax
	jmp	.LBB17_10
.LBB17_3:
	xorl	%eax, %eax
	jmp	.LBB17_10
.LBB17_6:                               # %if.end.4.if.end.17_crit_edge
	leaq	20(%rsp), %rbx
.LBB17_9:                               # %if.end.17
	movzwl	(%rbx), %eax
.LBB17_10:                              # %cleanup
	movzwl	%ax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	FAPI_FF_get_charstring, .Lfunc_end17-FAPI_FF_get_charstring
	.cfi_endproc

	.align	16, 0x90
	.type	FAPI_FF_get_charstring_name,@function
FAPI_FF_get_charstring_name:            # @FAPI_FF_get_charstring_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp161:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp162:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp164:
	.cfi_def_cfa_offset 96
.Ltmp165:
	.cfi_offset %rbx, -40
.Ltmp166:
	.cfi_offset %r14, -32
.Ltmp167:
	.cfi_offset %r15, -24
.Ltmp168:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	168(%rbx), %rax
	movq	72(%rax), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.18, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB18_1
# BB#2:                                 # %if.end
	movq	48(%rsp), %rdi
	leaq	16(%rsp), %rdx
	movl	%ebp, %esi
	callq	dict_index_entry
	testl	%eax, %eax
	js	.LBB18_3
# BB#4:                                 # %if.end.4
	movq	16(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	callq	names_string_ref
	movl	4(%rsp), %edx
	movzwl	%r15w, %eax
	cmpl	%eax, %edx
	ja	.LBB18_6
# BB#5:                                 # %if.end.11
	movq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	memcpy
	movl	4(%rsp), %edx
	movb	$0, (%r14,%rdx)
	jmp	.LBB18_6
.LBB18_1:
	xorl	%edx, %edx
	jmp	.LBB18_6
.LBB18_3:
	xorl	%edx, %edx
.LBB18_6:                               # %cleanup
	movzwl	%dx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	FAPI_FF_get_charstring_name, .Lfunc_end18-FAPI_FF_get_charstring_name
	.cfi_endproc

	.align	16, 0x90
	.type	ps_get_GlyphDirectory_data_ptr,@function
ps_get_GlyphDirectory_data_ptr:         # @ps_get_GlyphDirectory_data_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp170:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp171:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp172:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp173:
	.cfi_def_cfa_offset 96
.Ltmp174:
	.cfi_offset %rbx, -40
.Ltmp175:
	.cfi_offset %r14, -32
.Ltmp176:
	.cfi_offset %r15, -24
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	168(%rbx), %rax
	movq	72(%rax), %rdi
	leaq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	48(%rsp), %rdx
	movl	$.L.str.38, %esi
	callq	dict_find_string
	movl	$-1, %ebp
	testl	%eax, %eax
	jle	.LBB19_8
# BB#1:                                 # %if.then
	movq	48(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB19_4
# BB#2:                                 # %land.lhs.true
	movslq	%r15d, %rcx
	movq	%rcx, 16(%rsp)
	movw	$2816, 8(%rsp)          # imm = 0xB00
	leaq	8(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	%rax, %rdi
	callq	dict_find
	testl	%eax, %eax
	jg	.LBB19_6
# BB#3:                                 # %land.lhs.true.lor.lhs.false_crit_edge
	movq	48(%rsp), %rax
.LBB19_4:                               # %lor.lhs.false
	xorl	%ebp, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$4, %ecx
	jne	.LBB19_8
# BB#5:                                 # %land.lhs.true.15
	movq	16(%rbx), %rdi
	movslq	%r15d, %rdx
	leaq	32(%rsp), %rcx
	movq	%rax, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB19_8
.LBB19_6:                               # %land.lhs.true.20
	movq	24(%rsp), %rax
	xorl	%ebp, %ebp
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB19_8
# BB#7:                                 # %if.then.27
	movq	8(%rax), %rcx
	movq	%rcx, (%r14)
	movl	4(%rax), %ebp
.LBB19_8:                               # %cleanup
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	ps_get_GlyphDirectory_data_ptr, .Lfunc_end19-ps_get_GlyphDirectory_data_ptr
	.cfi_endproc

	.align	16, 0x90
	.type	ps_get_glyphname_or_cid,@function
ps_get_glyphname_or_cid:                # @ps_get_glyphname_or_cid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp179:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp180:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp181:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp182:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp183:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp184:
	.cfi_def_cfa_offset 288
.Ltmp185:
	.cfi_offset %rbx, -56
.Ltmp186:
	.cfi_offset %r12, -48
.Ltmp187:
	.cfi_offset %r13, -40
.Ltmp188:
	.cfi_offset %r14, -32
.Ltmp189:
	.cfi_offset %r15, -24
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rdx, %rbp
	movq	%rdi, %r12
	movq	288(%rsp), %r8
	movq	72(%r12), %rdi
	movq	424(%r12), %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movl	128(%r12), %eax
	cmpl	$42, %eax
	sete	%r14b
	testq	%r9, %r9
	sete	%r15b
	decl	%eax
	cmpl	$2, %eax
	sbbb	%bl, %bl
	movq	8(%rdx), %rax
	cmpl	$0, 296(%rsp)
	je	.LBB20_1
# BB#16:                                # %if.then.72
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rcx, %r15
	movq	%rax, 56(%rsp)          # 8-byte Spill
	testq	%r9, %r9
	movw	$3584, 192(%rsp)        # imm = 0xE00
	movq	$0, (%r13)
	movl	$0, 8(%r13)
	movl	$1, 40(%r8)
	movq	%r8, %rbx
	je	.LBB20_69
# BB#17:                                # %if.then.75
	movl	$2147483648, %r14d      # imm = 0x80000000
	leaq	168(%rsp), %rdx
	movl	$.L.str.40, %esi
	movq	%rdi, %rbp
	callq	dict_find_string
	movl	$-10, %edx
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB20_18
# BB#19:                                # %lor.lhs.false.79
	movq	168(%rsp), %rax
	xorl	%ecx, %ecx
	movzbl	1(%rax), %eax
	cmpl	$2, %eax
	movq	64(%rsp), %r9           # 8-byte Reload
	jne	.LBB20_20
# BB#21:                                # %if.end.87
	leaq	152(%rsp), %rdx
	movl	$.L.str.41, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jle	.LBB20_22
# BB#23:                                # %lor.lhs.false.91
	movq	152(%rsp), %rax
	xorl	%ecx, %ecx
	movzbl	1(%rax), %eax
	cmpl	$4, %eax
	jne	.LBB20_22
# BB#24:                                # %if.end.99
	movq	%rbx, %r13
	leaq	160(%rsp), %rdx
	movl	$.L.str.42, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB20_26
# BB#25:                                # %lor.lhs.false.103
	movq	160(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB20_26
# BB#38:                                # %if.else.186
	leaq	104(%rsp), %rdx
	movl	$.L.str.43, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB20_58
# BB#39:                                # %land.lhs.true.190
	movq	104(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB20_58
# BB#40:                                # %land.lhs.true.197
	leaq	88(%rsp), %rdx
	movl	$.L.str.44, %esi
	callq	dict_find_string
	testl	%eax, %eax
	js	.LBB20_58
# BB#41:                                # %land.lhs.true.201
	movq	88(%rsp), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$18, %eax
	jne	.LBB20_58
# BB#42:                                # %land.lhs.true.208
	movl	$.L.str.45, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$7, %rcx
	ja	.LBB20_52
# BB#43:                                # %land.lhs.true.212
	movq	8(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB20_51
# BB#44:                                # %cond.true.216
	movzbl	(%rdi), %eax
	addl	$-73, %eax
	testq	%rcx, %rcx
	je	.LBB20_53
# BB#45:                                # %cond.true.216
	testl	%eax, %eax
	jne	.LBB20_53
# BB#46:                                # %if.then.229
	movzbl	1(%rdi), %eax
	addl	$-100, %eax
	cmpq	$2, %rcx
	jb	.LBB20_53
# BB#47:                                # %if.then.229
	testl	%eax, %eax
	jne	.LBB20_53
# BB#48:                                # %if.then.239
	movzbl	2(%rdi), %eax
	addl	$-101, %eax
	cmpq	$3, %rcx
	jb	.LBB20_53
# BB#49:                                # %if.then.239
	testl	%eax, %eax
	jne	.LBB20_53
# BB#50:                                # %if.then.249
	movzbl	3(%rdi), %eax
	addl	$-110, %eax
	jmp	.LBB20_53
.LBB20_1:                               # %if.else
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	js	.LBB20_7
# BB#2:                                 # %if.then.11
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	208(%rsp), %rdx
	movl	$.L.str.39, %esi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	callq	dict_find_string
	movl	$-10, %edx
	testl	%eax, %eax
	jle	.LBB20_148
# BB#3:                                 # %land.lhs.true
	movq	208(%rsp), %rsi
	movb	1(%rsi), %al
	addb	$-4, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	ja	.LBB20_148
# BB#4:                                 # %if.then.31
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movq	40(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rdx
	leaq	192(%rsp), %rcx
	callq	array_get
	xorl	%edx, %edx
	testl	%eax, %eax
	jns	.LBB20_6
# BB#5:                                 # %if.then.36
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	192(%rsp), %rcx
	movl	$.L.str.35, %esi
	movl	$7, %edx
	movl	$-1, %r8d
	callq	names_ref
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB20_148
.LBB20_6:                               # %cleanup
	movl	%edx, 24(%rsp)          # 4-byte Spill
	jmp	.LBB20_8
.LBB20_69:                              # %if.else.303
	movq	$0, 104(%rsp)
	leaq	104(%rsp), %rdx
	movl	$.L.str.46, %esi
	movq	%rdi, %r14
	callq	dict_find_string
	movl	$2, %ebp
	testl	%eax, %eax
	jle	.LBB20_70
# BB#71:                                # %land.lhs.true.314
	movq	104(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	movq	64(%rsp), %r13          # 8-byte Reload
	jne	.LBB20_73
# BB#72:                                # %if.then.321
	movl	8(%rax), %ebp
	jmp	.LBB20_73
.LBB20_18:
	xorl	%r12d, %r12d
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	%r15, %r8
	jmp	.LBB20_68
.LBB20_7:                               # %if.else.46
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	(%rbp), %rsi
	movl	8(%rbp), %edx
	leaq	192(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	names_ref
	movl	%eax, 24(%rsp)          # 4-byte Spill
.LBB20_8:                               # %if.end.54
	movl	$-10, %edx
	movzbl	193(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB20_148
# BB#9:                                 # %if.else.418
	andb	%r15b, %r14b
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	192(%rsp), %rsi
	leaq	176(%rsp), %rdx
	callq	names_string_ref
	movq	184(%rsp), %rax
	movq	%rax, (%r13)
	movl	180(%rsp), %eax
	movl	%eax, 8(%r13)
	movq	288(%rsp), %rax
	movl	$1, 40(%rax)
	testb	%r14b, %r14b
	je	.LBB20_105
# BB#10:                                # %if.then.420
	leaq	208(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	dict_find_string
	movl	$-10, %edx
	testl	%eax, %eax
	jle	.LBB20_148
# BB#11:                                # %lor.lhs.false.426
	movq	208(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	288(%rsp), %r15
	movl	24(%rsp), %r12d         # 4-byte Reload
	jne	.LBB20_148
# BB#12:                                # %if.end.434
	leaq	192(%rsp), %rsi
	leaq	136(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	js	.LBB20_15
# BB#13:                                # %lor.lhs.false.438
	movq	136(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	movq	%rbx, %r9
	jne	.LBB20_14
# BB#103:                               # %if.then.464
	movq	8(%rax), %rax
	movq	%r15, %rbp
	movq	%rax, 8(%rbp)
	jmp	.LBB20_104
.LBB20_20:
	xorl	%r12d, %r12d
	movq	%r15, %r8
	jmp	.LBB20_68
.LBB20_70:
	movq	64(%rsp), %r13          # 8-byte Reload
.LBB20_73:                              # %if.end.325
	leaq	208(%rsp), %rdx
	movl	$.L.str.47, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB20_95
# BB#74:                                # %land.lhs.true.329
	movq	208(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$18, %eax
	je	.LBB20_76
# BB#75:                                # %land.lhs.true.329
	movzbl	%al, %eax
	cmpl	$4, %eax
	jne	.LBB20_95
.LBB20_76:                              # %if.then.350
	movzbl	1(%rsi), %eax
	cmpl	$4, %eax
	movq	%r15, %r8
	jne	.LBB20_77
# BB#80:                                # %if.end.373
	movq	16(%r12), %rdi
	movl	%ebp, %eax
	imull	%r8d, %eax
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movslq	%eax, %rcx
	leaq	136(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, (%rsp)
	movl	$1, %edx
	xorl	%r9d, %r9d
	movl	%ebp, %r8d
	callq	string_array_access_proc
	movl	%eax, %r12d
	movq	%rbx, %rax
	leaq	8(%rax), %rbx
	movq	$0, 8(%rax)
	movq	%rax, %r15
	testl	%r12d, %r12d
	js	.LBB20_91
# BB#81:
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%r13, %r9
	jmp	.LBB20_82
.LBB20_95:                              # %if.else.412
	movq	%r15, %r8
	movslq	%r8d, %rax
	movq	%rax, 8(%rbx)
	xorl	%r12d, %r12d
	movq	%r13, %r9
	xorl	%r13d, %r13d
	jmp	.LBB20_142
.LBB20_22:
	xorl	%r12d, %r12d
	movq	%r15, %r8
.LBB20_67:                              # %cleanup.295
	movl	$-10, %edx
	movq	64(%rsp), %r9           # 8-byte Reload
	jmp	.LBB20_68
.LBB20_77:                              # %if.end.373.thread
	movl	%ebp, %eax
	imull	%r8d, %eax
	xorl	%r12d, %r12d
	cmpl	%eax, 4(%rsi)
	movl	$0, %eax
	movq	%r13, %r9
	jb	.LBB20_79
# BB#78:                                # %select.mid
	movl	%r8d, %eax
.LBB20_79:                              # %select.end
	imull	%ebp, %eax
	cltq
	addq	8(%rsi), %rax
	movq	%rax, 136(%rsp)
	movq	%rbx, %rax
	leaq	8(%rax), %rbx
	movq	$0, 8(%rax)
	movq	%rax, %r15
.LBB20_82:                              # %for.cond.379.preheader
	testl	%ebp, %ebp
	jle	.LBB20_83
# BB#84:                                # %for.body.382.lr.ph
	movq	136(%rsp), %rcx
	xorl	%eax, %eax
	testb	$1, %bpl
	movl	$0, %edx
	je	.LBB20_86
# BB#85:                                # %for.body.382.prol
	movzbl	(%rcx), %eax
	movq	%rax, (%rbx)
	movl	$1, %edx
.LBB20_86:                              # %for.body.382.lr.ph.split
	cmpl	$1, %ebp
	jne	.LBB20_88
# BB#87:
	movq	%r15, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB20_142
.LBB20_105:                             # %if.else.544
	andb	%r15b, %bl
	je	.LBB20_118
# BB#106:                               # %if.then.546
	movq	40(%rsp), %r8           # 8-byte Reload
	testl	%r8d, %r8d
	movq	288(%rsp), %r15
	movq	%r15, %rbx
	js	.LBB20_108
# BB#107:                               # %if.then.549
	movslq	%r8d, %rax
	movq	%rax, 8(%rbx)
	xorl	%r13d, %r13d
	movq	64(%rsp), %r9           # 8-byte Reload
	movl	24(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB20_142
.LBB20_83:
	movq	%r15, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB20_142
.LBB20_88:                              # %for.body.382.lr.ph.split.split
	subl	%edx, %ebp
	leaq	1(%rdx,%rcx), %rcx
	.align	16, 0x90
.LBB20_89:                              # %for.body.382
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rax
	movzbl	-1(%rcx), %edx
	orq	%rax, %rdx
	movq	%rdx, (%rbx)
	shlq	$8, %rdx
	movzbl	(%rcx), %eax
	orq	%rdx, %rax
	movq	%rax, (%rbx)
	addq	$2, %rcx
	addl	$-2, %ebp
	jne	.LBB20_89
# BB#90:
	movq	%r15, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB20_142
.LBB20_26:                              # %if.then.110
	movl	%r15d, %eax
	sarl	$31, %eax
	shrl	$24, %eax
	leal	(%rax,%r15), %ebp
	movq	%r15, %r12
	movl	%ebp, %eax
	sarl	$8, %eax
	cltq
	movq	%rax, 80(%rsp)
	movw	$2816, 72(%rsp)         # imm = 0xB00
	movq	168(%rsp), %rdi
	leaq	72(%rsp), %rsi
	leaq	120(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB20_64
# BB#27:                                # %lor.lhs.false.118
	movq	120(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$4, %eax
	jne	.LBB20_64
# BB#28:                                # %lor.lhs.false.125
	andl	$-256, %ebp
	movl	%r12d, %ebx
	subl	%ebp, %ebx
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movslq	%ebx, %rdx
	leaq	104(%rsp), %r14
	movq	%r14, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB20_64
# BB#29:                                # %if.end.133
	movzbl	105(%rsp), %eax
	movl	$1, %ebp
	cmpl	$11, %eax
	je	.LBB20_32
# BB#30:                                # %if.end.133
	movzbl	%al, %eax
	cmpl	$4, %eax
	jne	.LBB20_66
# BB#31:                                # %for.cond.preheader
	movq	%r14, 120(%rsp)
	movl	108(%rsp), %ebp
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.LBB20_37
.LBB20_32:                              # %for.body.lr.ph
	movslq	%ebx, %rbx
	leaq	88(%rsp), %r14
	leaq	132(%rsp), %r15
.LBB20_34:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movq	120(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB20_66
# BB#35:                                # %lor.lhs.false.161
                                        #   in Loop: Header=BB20_34 Depth=1
	movzbl	89(%rsp), %eax
	cmpl	$11, %eax
	movq	64(%rsp), %r9           # 8-byte Reload
	jne	.LBB20_65
# BB#36:                                # %if.end.169
                                        #   in Loop: Header=BB20_34 Depth=1
	movl	96(%rsp), %eax
	movl	%eax, 132(%rsp)
	movq	%r9, %rdi
	movq	%r15, %rsi
	callq	*568(%r9)
	cmpl	$0, 132(%rsp)
	jne	.LBB20_37
# BB#33:                                # %for.cond
                                        #   in Loop: Header=BB20_34 Depth=1
	decl	%ebp
	incq	%rbx
	testl	%ebp, %ebp
	jne	.LBB20_34
.LBB20_37:                              # %cleanup.178
	xorl	%esi, %esi
	movq	%r12, %r8
	movq	288(%rsp), %r15
	movq	%r15, %rbx
	movl	$-10, %edx
	movq	64(%rsp), %r9           # 8-byte Reload
	jmp	.LBB20_63
.LBB20_118:                             # %if.else.585
	movl	$0, 88(%rsp)
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movq	288(%rsp), %r14
	leaq	48(%r14), %rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leaq	56(%r14), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	192(%rsp), %rsi
	callq	obj_string_data
	movl	56(%r14), %r15d
	movl	$gx_extendeg_glyph_name_separator, %edi
	callq	strlen
	cmpl	%eax, %r15d
	js	.LBB20_124
# BB#119:                               # %for.body.i.199.preheader
	movslq	%eax, %rbx
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %r13
	incl	%r15d
	subl	%eax, %r15d
	movq	%r13, %rbp
	.align	16, 0x90
.LBB20_120:                             # %for.body.i.199
                                        # =>This Inner Loop Header: Depth=1
	movl	$gx_extendeg_glyph_name_separator, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB20_122
# BB#121:                               # %for.inc.i.201
                                        #   in Loop: Header=BB20_120 Depth=1
	incq	%rbp
	decl	%r15d
	testl	%r15d, %r15d
	jg	.LBB20_120
	jmp	.LBB20_124
.LBB20_64:                              # %cleanup.295.critedge
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r12d, %r12d
	movl	$-10, %edx
.LBB20_57:                              # %cleanup.295
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	%r13, %rbx
	jmp	.LBB20_68
.LBB20_91:                              # %if.else.394
	leaq	88(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jle	.LBB20_94
# BB#92:                                # %if.then.400
	movq	88(%rsp), %rdi
	leaq	72(%rsp), %rdx
	movl	$.L.str.35, %esi
	callq	dict_find_string
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jle	.LBB20_94
# BB#93:                                # %if.then.404
	movq	72(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rbx)
.LBB20_94:                              # %if.end.410
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%r13, %r9
	movq	%r15, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB20_142
.LBB20_108:                             # %if.else.553
	movq	16(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	(%rbp), %rsi
	movl	8(%rbp), %edx
	leaq	136(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	names_ref
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	624(%rax), %rdi
	addq	$-16, %rdi
	leaq	104(%rsp), %rdx
	movl	$.L.str.39, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB20_117
# BB#109:                               # %if.then.570
	movq	104(%rsp), %r14
	movl	4(%r14), %ebx
	xorl	%r13d, %r13d
	testq	%rbx, %rbx
	movl	$0, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	je	.LBB20_116
# BB#110:                               # %for.body.lr.ph.i
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r15
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	208(%rsp), %r12
	xorl	%ebp, %ebp
.LBB20_111:                             # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB20_116
# BB#112:                               # %if.else.i
                                        #   in Loop: Header=BB20_111 Depth=1
	movzbl	209(%rsp), %eax
	movzbl	137(%rsp), %ecx
	cmpl	%eax, %ecx
	jne	.LBB20_115
# BB#113:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB20_111 Depth=1
	movq	144(%rsp), %rax
	cmpq	216(%rsp), %rax
	je	.LBB20_114
.LBB20_115:                             # %for.inc.i
                                        #   in Loop: Header=BB20_111 Depth=1
	incq	%rbp
	cmpq	%rbx, %rbp
	jb	.LBB20_111
	jmp	.LBB20_116
.LBB20_122:                             # %find_substring.exit
	testq	%rbp, %rbp
	je	.LBB20_124
# BB#123:                               # %if.then.598
	subl	%r13d, %ebp
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%ebp, (%rax)
	movq	16(%r12), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	192(%rsp), %rcx
	movl	$1, %r8d
	movq	%r13, %rsi
	movl	%ebp, %edx
	callq	names_ref
.LBB20_124:                             # %if.end.608
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r12
	movq	64(%rsp), %rbp          # 8-byte Reload
	leaq	80(%rbp), %rsi
	leaq	88(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%r14, %rbx
	movq	%rbx, %rdx
	callq	*480(%rbp)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB20_126
# BB#125:                               # %if.end.i
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%rbp), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.49, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r15d, %ecx
	callq	errprintf
	testl	%r15d, %r15d
	movl	$-10, %edx
	cmovsl	%r15d, %edx
	jmp	.LBB20_148
.LBB20_126:                             # %if.end.617
	movq	%rbp, %r14
	xorl	%r13d, %r13d
	cmpl	$0, 88(%rsp)
	movl	$0, %r12d
	jne	.LBB20_141
# BB#127:                               # %if.then.619
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	624(%rax), %rdi
	addq	$-16, %rdi
	leaq	136(%rsp), %rdx
	movl	$.L.str.40, %esi
	callq	dict_find_string
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jle	.LBB20_141
# BB#128:                               # %land.lhs.true.631
	movq	136(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB20_141
# BB#129:                               # %if.then.638
	leaq	192(%rsp), %rsi
	leaq	104(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB20_141
# BB#130:                               # %if.then.642
	movq	104(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$4, %ecx
	je	.LBB20_134
# BB#131:                               # %if.then.642
	movzbl	%cl, %ecx
	cmpl	$6, %ecx
	jne	.LBB20_132
.LBB20_134:                             # %if.then.670
	movl	4(%rax), %ecx
	movl	%ecx, 40(%rbx)
	cmpl	$4, %ecx
	jg	.LBB20_149
# BB#135:                               # %for.cond.685.preheader
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jle	.LBB20_140
# BB#136:                               # %for.body.689.lr.ph
	xorl	%ebp, %ebp
	leaq	208(%rsp), %r12
.LBB20_137:                             # %for.body.689
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	8(%rcx), %rdi
	movq	%rax, %rsi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	callq	array_get
	testl	%eax, %eax
	movl	%eax, %edx
	js	.LBB20_149
# BB#138:                               # %if.end.697
                                        #   in Loop: Header=BB20_137 Depth=1
	movq	104(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB20_149
# BB#139:                               # %if.end.705
                                        #   in Loop: Header=BB20_137 Depth=1
	movq	216(%rsp), %rcx
	movq	%rcx, 8(%rbx,%rbp,8)
	incq	%rbp
	movslq	40(%rbx), %rcx
	cmpq	%rcx, %rbp
	jl	.LBB20_137
.LBB20_140:                             # %if.end.717.thread228
	movl	%edx, %r12d
	jmp	.LBB20_141
.LBB20_14:                              # %lor.lhs.false.438
	movq	%r9, %rbx
	movzbl	%cl, %eax
	cmpl	$14, %eax
	jne	.LBB20_97
.LBB20_15:                              # %if.then.445
	movq	%r15, %rbp
	movq	$0, 8(%rbp)
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	192(%rsp), %rcx
	movl	$.L.str.35, %esi
	movl	$7, %edx
	movl	$-1, %r8d
	callq	names_ref
	movl	%eax, %edx
	testl	%edx, %edx
	movl	%edx, %r12d
	movq	%rbx, %r9
	js	.LBB20_148
.LBB20_104:                             # %cleanup.540
	movl	$1, 44(%rbp)
	xorl	%r13d, %r13d
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%rbp, %rbx
	jmp	.LBB20_142
.LBB20_117:                             # %cleanup.580
	movl	$-10, %edx
	jmp	.LBB20_148
.LBB20_97:                              # %if.else.469
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	624(%rcx), %rbx
	movq	536(%rcx), %rax
	addq	$-32, %rax
	cmpq	%rax, 520(%rcx)
	movq	%rcx, %rbp
	jbe	.LBB20_99
# BB#98:                                # %if.then.477
	leaq	520(%rbp), %rdi
	movl	$2, %esi
	callq	ref_stack_extend
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB20_148
.LBB20_99:                              # %if.end.489
	movl	$-17, %edx
	cmpq	632(%rbp), %rbx
	jb	.LBB20_148
# BB#100:                               # %do.body
	leaq	16(%rbx), %rax
	cmpq	640(%rbp), %rax
	jbe	.LBB20_102
# BB#101:                               # %if.then.503
	movl	$1, 688(%rbp)
	movl	$-16, %edx
	jmp	.LBB20_148
.LBB20_66:                              # %cleanup.295.critedge241
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r12d, %r12d
	movq	288(%rsp), %r15
	movq	%r15, %rbx
	jmp	.LBB20_67
.LBB20_65:                              # %cleanup.295.critedge240
	xorl	%ecx, %ecx
	movq	%r12, %r8
	xorl	%r12d, %r12d
	movq	288(%rsp), %r15
	movq	%r15, %rbx
	movl	$-10, %edx
	jmp	.LBB20_68
.LBB20_114:
	movq	%rbp, 32(%rsp)          # 8-byte Spill
.LBB20_116:                             # %cleanup.580.thread
	movl	$2147483648, %eax       # imm = 0x80000000
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	andq	32(%rsp), %rax          # 8-byte Folded Reload
	movq	288(%rsp), %r15
	movq	%r15, %rbx
	movq	%rax, 8(%rbx)
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movl	24(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB20_142
.LBB20_52:                              # %cond.false.261
	movq	8(%rbx), %rdi
	movl	$.L.str.45, %esi
	movl	$8, %edx
	callq	strncmp
	jmp	.LBB20_53
.LBB20_102:                             # %if.else.506
	movq	%rax, 624(%rbp)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rax)
	movq	520(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbp)
	movq	$zfapi_finish_render, 24(%rax)
	movq	520(%rbp), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	leaq	16(%rax), %rcx
	movq	%rcx, 520(%rbp)
	movq	136(%rsp), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, 16(%rax)
	movl	$5, %edx
	jmp	.LBB20_148
.LBB20_51:                              # %cond.false
	movl	$.L.str.45, %esi
	callq	strcmp
.LBB20_53:                              # %cond.end.265
	testl	%eax, %eax
	je	.LBB20_58
# BB#54:                                # %if.then.269
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	movq	168(%rsp), %rsi
	movq	160(%rsp), %rdx
	movq	152(%rsp), %rcx
	leaq	136(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	132(%rsp), %r9
	movl	%r15d, %r8d
	callq	cid_to_TT_charcode
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB20_56
# BB#55:
	movl	%r12d, %esi
	movq	%r15, %r8
	jmp	.LBB20_62
.LBB20_58:                              # %if.else.277
	cmpl	$11, 128(%r12)
	jne	.LBB20_60
# BB#59:                                # %if.then.281
	movslq	%r15d, %rsi
	addq	%r14, %rsi
	movq	%r12, %rdi
	callq	*720(%r12)
	movq	%r15, %r8
	movl	%eax, 132(%rsp)
	jmp	.LBB20_61
.LBB20_60:                              # %if.else.284
	movq	%r15, %r8
	movl	%r8d, 132(%rsp)
.LBB20_61:                              # %cleanup.287.thread
	xorl	%esi, %esi
.LBB20_62:                              # %cleanup.287.thread
	movl	$-10, %edx
	movq	64(%rsp), %r9           # 8-byte Reload
	movq	%r13, %rbx
.LBB20_63:                              # %if.end.291
	movl	132(%rsp), %eax
	movq	%rax, 8(%rbx)
	movl	$1, 44(%rbx)
	movb	$1, %cl
	movl	%esi, %r12d
.LBB20_68:                              # %cleanup.295
	movl	$1, %r13d
	testb	%cl, %cl
	jne	.LBB20_142
	jmp	.LBB20_148
.LBB20_56:                              # %cleanup.287.thread210
	xorl	%ecx, %ecx
	movl	%r12d, %edx
	movq	%r15, %r8
	jmp	.LBB20_57
.LBB20_132:                             # %if.then.642
	cmpl	$11, %ecx
	jne	.LBB20_149
# BB#133:                               # %if.end.717.thread224
	leaq	208(%rsp), %rdx
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%rax, %rdi
	callq	int_param
	movslq	208(%rsp), %rax
	movq	%rax, 8(%rbx)
.LBB20_141:                             # %cleanup.752.thread
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%r14, %r9
.LBB20_142:                             # %if.end.758
	cmpl	$0, 132(%r9)
	jne	.LBB20_145
# BB#143:                               # %land.lhs.true.761
	movzbl	193(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB20_145
# BB#144:                               # %if.then.768
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	192(%rsp), %rsi
	leaq	208(%rsp), %rdx
	movq	%r8, %rbp
	movq	%rbx, %r14
	movq	%r9, %rbx
	callq	names_string_ref
	movq	%rbp, %r8
	movq	216(%rsp), %rax
	movq	%rax, 256(%rbx)
	movl	212(%rsp), %eax
	movl	%eax, 264(%rbx)
	movq	%r14, %rbx
	jmp	.LBB20_147
.LBB20_145:                             # %if.else.779
	cmpl	$0, 128(%r9)
	je	.LBB20_147
# BB#146:                               # %if.then.782
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 256(%r9)
.LBB20_147:                             # %if.end.786
	movl	%r13d, 44(%rbx)
	movslq	%r8d, %rax
	movq	%rax, (%rbx)
	movl	%r12d, %edx
.LBB20_148:                             # %cleanup.790
	movl	%edx, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_149:                             # %cleanup.747
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$15, %eax
	movl	$15, %ecx
	cmovbel	%eax, %ecx
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movslq	%ecx, %rbx
	leaq	208(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 208(%rsp,%rbx)
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	8(%rbx), %r15
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	8(%rbx), %rdi
	movl	$.L.str.48, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	errprintf
	movl	$-15, %edx
	jmp	.LBB20_148
.Lfunc_end20:
	.size	ps_get_glyphname_or_cid, .Lfunc_end20-ps_get_glyphname_or_cid
	.cfi_endproc

	.align	16, 0x90
	.type	ps_fapi_get_metrics,@function
ps_fapi_get_metrics:                    # @ps_fapi_get_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp191:
	.cfi_def_cfa_offset 32
	movq	168(%rdi), %rdi
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	%rax, 16(%rsp)
	movl	8(%rsi), %eax
	movl	%eax, 12(%rsp)
	movw	$4704, %ax              # imm = 0x1260
	jmp	.LBB21_3
.LBB21_2:                               # %if.else
	movslq	%edx, %rax
	movq	%rax, 16(%rsp)
	movw	$2816, %ax              # imm = 0xB00
.LBB21_3:                               # %if.end
	movw	%ax, 8(%rsp)
	leaq	8(%rsp), %rsi
	movq	%rcx, %rdx
	testl	%r8d, %r8d
	je	.LBB21_5
# BB#4:                                 # %if.then.6
	callq	zchar_get_metrics2
	addq	$24, %rsp
	retq
.LBB21_5:                               # %if.else.7
	callq	zchar_get_metrics
	addq	$24, %rsp
	retq
.Lfunc_end21:
	.size	ps_fapi_get_metrics, .Lfunc_end21-ps_fapi_get_metrics
	.cfi_endproc

	.align	16, 0x90
	.type	ps_fapi_set_cache,@function
ps_fapi_set_cache:                      # @ps_fapi_set_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp193:
	.cfi_def_cfa_offset 64
.Ltmp194:
	.cfi_offset %rbx, -16
	movq	72(%rsp), %rbx
	movq	64(%rsp), %rax
	movq	424(%rsi), %rdi
	movq	8(%rdi), %rdi
	movq	$0, 40(%rsp)
	testl	%ecx, %ecx
	js	.LBB22_1
# BB#2:                                 # %if.else
	movslq	%ecx, %rcx
	movq	%rcx, 32(%rsp)
	movw	$2816, 24(%rsp)         # imm = 0xB00
	jmp	.LBB22_3
.LBB22_1:                               # %if.then
	movq	(%rdx), %rcx
	movq	%rcx, 32(%rsp)
	movw	$4704, 24(%rsp)         # imm = 0x1260
	movl	8(%rdx), %ecx
	movl	%ecx, 28(%rsp)
.LBB22_3:                               # %if.end
	movq	%rax, 16(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	$zfapi_finish_render, (%rsp)
	leaq	24(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	zchar_set_cache
	testl	%eax, %eax
	setns	%cl
	cmpq	$0, 40(%rsp)
	setne	%dl
	andb	%cl, %dl
	movzbl	%dl, %ecx
	movl	%ecx, (%rbx)
	addq	$48, %rsp
	popq	%rbx
	retq
.Lfunc_end22:
	.size	ps_fapi_set_cache, .Lfunc_end22-ps_fapi_set_cache
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_copy_except_glyf,@function
sfnts_copy_except_glyf:                 # @sfnts_copy_except_glyf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp196:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp197:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp198:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp199:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp200:
	.cfi_def_cfa_offset 56
	subq	$2280, %rsp             # imm = 0x8E8
.Ltmp201:
	.cfi_def_cfa_offset 2336
.Ltmp202:
	.cfi_offset %rbx, -56
.Ltmp203:
	.cfi_offset %r12, -48
.Ltmp204:
	.cfi_offset %r13, -40
.Ltmp205:
	.cfi_offset %r14, -32
.Ltmp206:
	.cfi_offset %r15, -24
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	callq	*64(%r15)
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%r15, %rdi
	callq	*56(%r15)
	movw	%ax, %bx
	movq	%r15, %rdi
	callq	*56(%r15)
	movq	%r15, %rdi
	callq	*56(%r15)
	movq	%r15, %rdi
	callq	*56(%r15)
	movl	$12, %r13d
	testw	%bx, %bx
	je	.LBB23_1
# BB#2:                                 # %for.body.lr.ph
	movzwl	%bx, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movw	%bx, 8(%rsp)            # 2-byte Spill
	leaq	48(%rsp), %rbp
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$12, %r13d
	xorl	%r14d, %r14d
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB23_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 40(%r15)
	movq	%r15, %rbx
	jne	.LBB23_43
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*72(%rbx)
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, 8(%rbp)
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, 16(%rbp)
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, %r12
	movq	%r12, 32(%rbp)
	movq	%r13, 24(%rbp)
	movl	$.L.str.29, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	movq	%rbx, %r15
	je	.LBB23_10
# BB#5:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$.L.str.30, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_10
# BB#6:                                 # %land.lhs.true.3.i
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$.L.str.31, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_10
# BB#7:                                 # %land.lhs.true.6.i
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$.L.str.32, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_10
# BB#8:                                 # %land.rhs.i
                                        #   in Loop: Header=BB23_3 Depth=1
	movl	$.L.str.33, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_10
# BB#9:                                 # %if.then.31
                                        #   in Loop: Header=BB23_3 Depth=1
	incl	32(%rsp)                # 4-byte Folded Spill
	addq	$3, %r12
	andq	$-4, %r12
	addq	%r12, %r13
	.align	16, 0x90
.LBB23_10:                              # %for.inc
                                        #   in Loop: Header=BB23_3 Depth=1
	incq	%r14
	addq	$40, %rbp
	cmpq	40(%rsp), %r14          # 8-byte Folded Reload
	jb	.LBB23_3
	jmp	.LBB23_11
.LBB23_1:
	movw	%bx, 8(%rsp)            # 2-byte Spill
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
.LBB23_11:                              # %for.end
	movl	32(%rsp), %eax          # 4-byte Reload
	movzwl	%ax, %r12d
	movq	%r12, %rcx
	shlq	$4, %rcx
	leaq	(%r13,%rcx), %rax
	movq	%rcx, %rsi
	movq	16(%rsp), %r14          # 8-byte Reload
	testq	%r14, %r14
	je	.LBB23_42
# BB#12:                                # %if.end.45
	movq	%r14, %rdi
	xorl	%ebx, %ebx
	testw	%si, %si
	je	.LBB23_13
# BB#14:
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movw	%si, %cx
	movw	%si, %ax
	movq	(%rsp), %rdx            # 8-byte Reload
	.align	16, 0x90
.LBB23_15:                              # %for.body.51
                                        # =>This Inner Loop Header: Depth=1
	andl	$65534, %ecx            # imm = 0xFFFE
	shrl	%ecx
	orl	%ecx, %eax
	incl	%ebx
	testw	%cx, %cx
	jne	.LBB23_15
	jmp	.LBB23_16
.LBB23_13:
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	(%rsp), %rdx            # 8-byte Reload
.LBB23_16:                              # %for.end.60
	movl	%eax, %ecx
	andl	$65534, %ecx            # imm = 0xFFFE
	shrl	%ecx
	subl	%ecx, %eax
	movzwl	%ax, %r14d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	%esi, %r13d
	subl	%r14d, %r13d
	movq	%rdi, %rbp
	movq	%rdx, %rsi
	callq	*40(%rbp)
	movq	%rbp, %rdi
	movl	%r12d, %esi
	callq	*32(%rbp)
	movq	%rbp, %rdi
	movl	%r14d, %esi
	callq	*32(%rbp)
	movzwl	%bx, %esi
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movzwl	%r13w, %esi
	movq	%rbx, %rdi
	callq	*32(%rbx)
	movw	8(%rsp), %ax            # 2-byte Reload
	testw	%ax, %ax
	je	.LBB23_41
# BB#17:                                # %for.body.79.lr.ph
	movq	%rbx, %r14
	leaq	48(%rsp), %rbp
	movw	%ax, %bx
	movw	%ax, %r12w
	movq	40(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB23_18:                              # %for.body.79
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.29, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_24
# BB#19:                                # %land.lhs.true.i.109
                                        #   in Loop: Header=BB23_18 Depth=1
	movl	$.L.str.30, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_24
# BB#20:                                # %land.lhs.true.3.i.112
                                        #   in Loop: Header=BB23_18 Depth=1
	movl	$.L.str.31, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_24
# BB#21:                                # %land.lhs.true.6.i.115
                                        #   in Loop: Header=BB23_18 Depth=1
	movl	$.L.str.32, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_24
# BB#22:                                # %land.rhs.i.118
                                        #   in Loop: Header=BB23_18 Depth=1
	movl	$.L.str.33, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_24
# BB#23:                                # %if.then.86
                                        #   in Loop: Header=BB23_18 Depth=1
	movl	$4, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*48(%r14)
	movq	8(%rbp), %rsi
	movq	%r14, %rdi
	callq	*40(%r14)
	movq	24(%rbp), %rsi
	addq	%r13, %rsi
	movq	%r14, %rdi
	callq	*40(%r14)
	movq	32(%rbp), %rsi
	movq	%r14, %rdi
	callq	*40(%r14)
	.align	16, 0x90
.LBB23_24:                              # %for.inc.108
                                        #   in Loop: Header=BB23_18 Depth=1
	addq	$40, %rbp
	decw	%bx
	jne	.LBB23_18
# BB#25:                                # %for.cond.111.preheader
	testw	%r12w, %r12w
	je	.LBB23_41
# BB#26:                                # %for.body.116.lr.ph
	movq	%r15, (%rsp)            # 8-byte Spill
	movzwl	%r12w, %r12d
	movq	%r12, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	1248(%rsp), %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB23_27:                              # %for.body.116
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_35 Depth 2
                                        #     Child Loop BB23_39 Depth 2
	leaq	(%rbp,%rbp,4), %r13
	leaq	48(%rsp,%r13,8), %rbx
	movl	$.L.str.29, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_40
# BB#28:                                # %land.lhs.true.i.125
                                        #   in Loop: Header=BB23_27 Depth=1
	movl	$.L.str.30, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_40
# BB#29:                                # %land.lhs.true.3.i.128
                                        #   in Loop: Header=BB23_27 Depth=1
	movl	$.L.str.31, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_40
# BB#30:                                # %land.lhs.true.6.i.131
                                        #   in Loop: Header=BB23_27 Depth=1
	movl	$.L.str.32, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_40
# BB#31:                                # %land.rhs.i.134
                                        #   in Loop: Header=BB23_27 Depth=1
	movl	$.L.str.33, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_40
# BB#32:                                # %if.then.123
                                        #   in Loop: Header=BB23_27 Depth=1
	movq	%r13, %r12
	movq	80(%rsp,%r12,8), %r13
	movq	64(%rsp,%r12,8), %rsi
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbx, %rdi
	callq	*80(%rbx)
	movq	%r12, %rdx
	movq	%rbx, %rdi
	cmpl	$0, 40(%rdi)
	jne	.LBB23_43
# BB#33:                                # %if.end.134
                                        #   in Loop: Header=BB23_27 Depth=1
	movq	%r14, %r12
	movq	8(%r12), %rax
	subq	(%r12), %rax
	movq	72(%rsp,%rdx,8), %rcx
	addq	40(%rsp), %rcx          # 8-byte Folded Reload
	cmpq	%rcx, %rax
	jne	.LBB23_43
# BB#34:                                # %if.end.145
                                        #   in Loop: Header=BB23_27 Depth=1
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	80(%rsp,%rdx,8), %rax
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jle	.LBB23_37
	.align	16, 0x90
.LBB23_35:                              # %while.body.i
                                        #   Parent Loop BB23_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ebx, %rbx
	cmpq	$1024, %rbx             # imm = 0x400
	movl	$1024, %ebp             # imm = 0x400
	cmovbl	%ebx, %ebp
	movq	%r15, %rsi
	movl	%ebp, %edx
	movq	%rdi, %r14
	callq	*72(%r14)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	callq	*48(%r12)
	movq	%r14, %rdi
	subl	%ebp, %ebx
	jle	.LBB23_37
# BB#36:                                # %while.body.i.land.rhs.i.137_crit_edge
                                        #   in Loop: Header=BB23_35 Depth=2
	cmpl	$0, 40(%rdi)
	je	.LBB23_35
.LBB23_37:                              # %sfnt_copy_table.exit
                                        #   in Loop: Header=BB23_27 Depth=1
	testb	$3, %r13b
	movq	%r12, %r14
	movq	8(%rsp), %r12           # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	je	.LBB23_40
# BB#38:                                # %for.body.152.preheader
                                        #   in Loop: Header=BB23_27 Depth=1
	incl	%r13d
	.align	16, 0x90
.LBB23_39:                              # %for.body.152
                                        #   Parent Loop BB23_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	*24(%r14)
	testb	$3, %r13b
	leal	1(%r13), %eax
	movl	%eax, %r13d
	jne	.LBB23_39
	.align	16, 0x90
.LBB23_40:                              # %for.inc.157
                                        #   in Loop: Header=BB23_27 Depth=1
	incq	%rbp
	cmpq	%r12, %rbp
	jb	.LBB23_27
.LBB23_41:
	movq	32(%rsp), %rax          # 8-byte Reload
.LBB23_42:                              # %cleanup.160
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB23_43:                              # %cleanup.160
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	$2280, %rsp             # imm = 0x8E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	sfnts_copy_except_glyf, .Lfunc_end23-sfnts_copy_except_glyf
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_reader_rbyte,@function
sfnts_reader_rbyte:                     # @sfnts_reader_rbyte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp208:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp209:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp210:
	.cfi_def_cfa_offset 48
.Ltmp211:
	.cfi_offset %rbx, -24
.Ltmp212:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	32(%rbx), %eax
	cmpl	36(%rbx), %eax
	jae	.LBB24_2
# BB#1:                                 # %entry.if.end_crit_edge.i
	movl	40(%rbx), %ecx
	jmp	.LBB24_11
.LBB24_2:                               # %if.then.i
	movl	40(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.LBB24_11
# BB#3:                                 # %do.body.preheader.i.i
	leaq	8(%rsp), %r14
	.align	16, 0x90
.LBB24_4:                               # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r14, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB24_5
# BB#6:                                 # %if.else.i.i
                                        #   in Loop: Header=BB24_4 Depth=1
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB24_7
# BB#8:                                 # %if.end.9.i.i
                                        #   in Loop: Header=BB24_4 Depth=1
	testl	%ecx, %ecx
	jne	.LBB24_11
# BB#9:                                 # %if.end.13.i.i
                                        #   in Loop: Header=BB24_4 Depth=1
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	12(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 36(%rbx)
	je	.LBB24_4
# BB#10:                                # %do.end.i.i
	movl	$0, 32(%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB24_11
.LBB24_5:                               # %if.then.2.i.i
	movl	40(%rbx), %ecx
	orl	$2, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB24_11
.LBB24_7:                               # %if.then.5.i.i
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
.LBB24_11:                              # %if.end.i
	testl	%ecx, %ecx
	je	.LBB24_13
# BB#12:
	xorl	%eax, %eax
	jmp	.LBB24_14
.LBB24_13:                              # %cond.false.i
	movl	32(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 32(%rbx)
	movq	16(%rbx), %rcx
	movb	(%rcx,%rax), %al
.LBB24_14:                              # %sfnts_reader_rbyte_inline.exit
	movzbl	%al, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end24:
	.size	sfnts_reader_rbyte, .Lfunc_end24-sfnts_reader_rbyte
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_reader_rword,@function
sfnts_reader_rword:                     # @sfnts_reader_rword
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp214:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp215:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp216:
	.cfi_def_cfa_offset 48
.Ltmp217:
	.cfi_offset %rbx, -32
.Ltmp218:
	.cfi_offset %r14, -24
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	32(%rbx), %eax
	cmpl	36(%rbx), %eax
	jae	.LBB25_2
# BB#1:                                 # %entry.if.end_crit_edge.i
	movl	40(%rbx), %ecx
	jmp	.LBB25_11
.LBB25_2:                               # %if.then.i
	movl	40(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.LBB25_11
# BB#3:                                 # %do.body.preheader.i.i
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB25_4:                               # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r14, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB25_5
# BB#6:                                 # %if.else.i.i
                                        #   in Loop: Header=BB25_4 Depth=1
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB25_7
# BB#8:                                 # %if.end.9.i.i
                                        #   in Loop: Header=BB25_4 Depth=1
	testl	%ecx, %ecx
	jne	.LBB25_11
# BB#9:                                 # %if.end.13.i.i
                                        #   in Loop: Header=BB25_4 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	4(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 36(%rbx)
	je	.LBB25_4
# BB#10:                                # %do.end.i.i
	movl	$0, 32(%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB25_11
.LBB25_5:                               # %if.then.2.i.i
	movl	40(%rbx), %ecx
	orl	$2, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB25_11
.LBB25_7:                               # %if.then.5.i.i
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
.LBB25_11:                              # %if.end.i
	movl	32(%rbx), %eax
	testl	%ecx, %ecx
	je	.LBB25_13
# BB#12:
	xorl	%ebp, %ebp
	jmp	.LBB25_14
.LBB25_13:                              # %cond.false.i
	movl	%eax, %edx
	incl	%edx
	movl	%edx, 32(%rbx)
	movq	16(%rbx), %rsi
	movzbl	(%rsi,%rax), %ebp
	shll	$8, %ebp
	movl	%edx, %eax
.LBB25_14:                              # %sfnts_reader_rbyte_inline.exit
	cmpl	36(%rbx), %eax
	jb	.LBB25_24
# BB#15:                                # %if.then.i.11
	testl	%ecx, %ecx
	jne	.LBB25_24
# BB#16:                                # %do.body.preheader.i.i.17
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB25_17:                              # %do.body.i.i.21
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r14, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB25_18
# BB#19:                                # %if.else.i.i.25
                                        #   in Loop: Header=BB25_17 Depth=1
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB25_20
# BB#21:                                # %if.end.9.i.i.29
                                        #   in Loop: Header=BB25_17 Depth=1
	testl	%ecx, %ecx
	jne	.LBB25_24
# BB#22:                                # %if.end.13.i.i.32
                                        #   in Loop: Header=BB25_17 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	4(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 36(%rbx)
	je	.LBB25_17
# BB#23:                                # %do.end.i.i.33
	movl	$0, 32(%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB25_24
.LBB25_18:                              # %if.then.2.i.i.23
	movl	40(%rbx), %ecx
	orl	$2, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB25_24
.LBB25_20:                              # %if.then.5.i.i.27
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
.LBB25_24:                              # %if.end.i.36
	testl	%ecx, %ecx
	je	.LBB25_26
# BB#25:
	xorl	%eax, %eax
	jmp	.LBB25_27
.LBB25_26:                              # %cond.false.i.41
	movl	32(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 32(%rbx)
	movq	16(%rbx), %rcx
	movzbl	(%rcx,%rax), %eax
.LBB25_27:                              # %sfnts_reader_rbyte_inline.exit43
	movzwl	%ax, %eax
	orl	%ebp, %eax
	movzwl	%ax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	sfnts_reader_rword, .Lfunc_end25-sfnts_reader_rword
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_reader_rlong,@function
sfnts_reader_rlong:                     # @sfnts_reader_rlong
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp221:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp222:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp223:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp224:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp225:
	.cfi_def_cfa_offset 64
.Ltmp226:
	.cfi_offset %rbx, -48
.Ltmp227:
	.cfi_offset %r12, -40
.Ltmp228:
	.cfi_offset %r14, -32
.Ltmp229:
	.cfi_offset %r15, -24
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	32(%rbx), %eax
	cmpl	36(%rbx), %eax
	jae	.LBB26_2
# BB#1:                                 # %entry.if.end_crit_edge.i
	movl	40(%rbx), %ecx
	jmp	.LBB26_11
.LBB26_2:                               # %if.then.i
	movl	40(%rbx), %ecx
	testl	%ecx, %ecx
	jne	.LBB26_11
# BB#3:                                 # %do.body.preheader.i.i
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB26_4:                               # %do.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r14, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB26_5
# BB#6:                                 # %if.else.i.i
                                        #   in Loop: Header=BB26_4 Depth=1
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB26_7
# BB#8:                                 # %if.end.9.i.i
                                        #   in Loop: Header=BB26_4 Depth=1
	testl	%ecx, %ecx
	jne	.LBB26_11
# BB#9:                                 # %if.end.13.i.i
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	4(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 36(%rbx)
	je	.LBB26_4
# BB#10:                                # %do.end.i.i
	movl	$0, 32(%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB26_11
.LBB26_5:                               # %if.then.2.i.i
	movl	40(%rbx), %ecx
	orl	$2, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB26_11
.LBB26_7:                               # %if.then.5.i.i
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
.LBB26_11:                              # %if.end.i
	movl	32(%rbx), %eax
	testl	%ecx, %ecx
	je	.LBB26_13
# BB#12:
	xorl	%r15d, %r15d
	jmp	.LBB26_14
.LBB26_13:                              # %cond.false.i
	movl	%eax, %edx
	incl	%edx
	movl	%edx, 32(%rbx)
	movq	16(%rbx), %rsi
	movb	(%rsi,%rax), %r15b
	movl	%edx, %eax
.LBB26_14:                              # %sfnts_reader_rbyte_inline.exit
	cmpl	36(%rbx), %eax
	jb	.LBB26_24
# BB#15:                                # %if.then.i.13
	testl	%ecx, %ecx
	jne	.LBB26_24
# BB#16:                                # %do.body.preheader.i.i.19
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB26_17:                              # %do.body.i.i.23
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r14, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB26_18
# BB#19:                                # %if.else.i.i.27
                                        #   in Loop: Header=BB26_17 Depth=1
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB26_20
# BB#21:                                # %if.end.9.i.i.31
                                        #   in Loop: Header=BB26_17 Depth=1
	testl	%ecx, %ecx
	jne	.LBB26_24
# BB#22:                                # %if.end.13.i.i.34
                                        #   in Loop: Header=BB26_17 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	4(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 36(%rbx)
	je	.LBB26_17
# BB#23:                                # %do.end.i.i.35
	movl	$0, 32(%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB26_24
.LBB26_18:                              # %if.then.2.i.i.25
	movl	40(%rbx), %ecx
	orl	$2, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB26_24
.LBB26_20:                              # %if.then.5.i.i.29
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
.LBB26_24:                              # %if.end.i.38
	movl	32(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	jne	.LBB26_26
# BB#25:                                # %cond.false.i.43
	movl	%eax, %edx
	incl	%edx
	movl	%edx, 32(%rbx)
	movq	16(%rbx), %rsi
	movzbl	(%rsi,%rax), %ebp
	shll	$16, %ebp
	movl	%edx, %eax
.LBB26_26:                              # %sfnts_reader_rbyte_inline.exit45
	movzbl	%r15b, %r15d
	cmpl	36(%rbx), %eax
	jb	.LBB26_36
# BB#27:                                # %if.then.i.55
	testl	%ecx, %ecx
	jne	.LBB26_36
# BB#28:                                # %do.body.preheader.i.i.61
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB26_29:                              # %do.body.i.i.65
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r14, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB26_30
# BB#31:                                # %if.else.i.i.69
                                        #   in Loop: Header=BB26_29 Depth=1
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB26_32
# BB#33:                                # %if.end.9.i.i.73
                                        #   in Loop: Header=BB26_29 Depth=1
	testl	%ecx, %ecx
	jne	.LBB26_36
# BB#34:                                # %if.end.13.i.i.76
                                        #   in Loop: Header=BB26_29 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	4(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 36(%rbx)
	je	.LBB26_29
# BB#35:                                # %do.end.i.i.77
	movl	$0, 32(%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB26_36
.LBB26_30:                              # %if.then.2.i.i.67
	movl	40(%rbx), %ecx
	orl	$2, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB26_36
.LBB26_32:                              # %if.then.5.i.i.71
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
.LBB26_36:                              # %if.end.i.80
	shll	$24, %r15d
	movl	32(%rbx), %eax
	xorl	%r12d, %r12d
	testl	%ecx, %ecx
	jne	.LBB26_38
# BB#37:                                # %cond.false.i.85
	movl	%eax, %edx
	incl	%edx
	movl	%edx, 32(%rbx)
	movq	16(%rbx), %rsi
	movzbl	(%rsi,%rax), %r12d
	shll	$8, %r12d
	movl	%edx, %eax
.LBB26_38:                              # %sfnts_reader_rbyte_inline.exit87
	orl	%r15d, %ebp
	cmpl	36(%rbx), %eax
	jb	.LBB26_48
# BB#39:                                # %if.then.i.97
	testl	%ecx, %ecx
	jne	.LBB26_48
# BB#40:                                # %do.body.preheader.i.i.103
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB26_41:                              # %do.body.i.i.107
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r14, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB26_42
# BB#43:                                # %if.else.i.i.111
                                        #   in Loop: Header=BB26_41 Depth=1
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB26_44
# BB#45:                                # %if.end.9.i.i.115
                                        #   in Loop: Header=BB26_41 Depth=1
	testl	%ecx, %ecx
	jne	.LBB26_48
# BB#46:                                # %if.end.13.i.i.118
                                        #   in Loop: Header=BB26_41 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	4(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 36(%rbx)
	je	.LBB26_41
# BB#47:                                # %do.end.i.i.119
	movl	$0, 32(%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB26_48
.LBB26_42:                              # %if.then.2.i.i.109
	movl	40(%rbx), %ecx
	orl	$2, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB26_48
.LBB26_44:                              # %if.then.5.i.i.113
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
.LBB26_48:                              # %if.end.i.122
	orl	%r12d, %ebp
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB26_50
# BB#49:                                # %cond.false.i.127
	movl	32(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 32(%rbx)
	movq	16(%rbx), %rcx
	movzbl	(%rcx,%rax), %eax
.LBB26_50:                              # %sfnts_reader_rbyte_inline.exit129
	orl	%eax, %ebp
	movslq	%ebp, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	sfnts_reader_rlong, .Lfunc_end26-sfnts_reader_rlong
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_reader_rstring,@function
sfnts_reader_rstring:                   # @sfnts_reader_rstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp232:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp233:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp234:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp235:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp236:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp237:
	.cfi_def_cfa_offset 80
.Ltmp238:
	.cfi_offset %rbx, -56
.Ltmp239:
	.cfi_offset %r12, -48
.Ltmp240:
	.cfi_offset %r13, -40
.Ltmp241:
	.cfi_offset %r14, -32
.Ltmp242:
	.cfi_offset %r15, -24
.Ltmp243:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB27_10
# BB#1:                                 # %while.cond.preheader
	cmpl	$0, 40(%rbx)
	movl	%r12d, %r13d
	jne	.LBB27_8
# BB#2:                                 # %while.body.lr.ph
	leaq	8(%rsp), %r15
	movl	%r12d, %r13d
	jmp	.LBB27_3
.LBB27_15:                              # %cleanup.thread
                                        #   in Loop: Header=BB27_3 Depth=1
	movl	$0, 32(%rbx)
.LBB27_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_6 Depth 2
	movl	32(%rbx), %esi
	movl	36(%rbx), %eax
	subl	%esi, %eax
	cmpl	%eax, %r13d
	cmovbl	%r13d, %eax
	addq	16(%rbx), %rsi
	movslq	%eax, %rbp
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	addl	%ebp, 32(%rbx)
	subl	%ebp, %r13d
	jle	.LBB27_9
# BB#4:                                 # %if.end.12
                                        #   in Loop: Header=BB27_3 Depth=1
	cmpl	$0, 40(%rbx)
	jne	.LBB27_8
# BB#5:                                 #   in Loop: Header=BB27_3 Depth=1
	addq	%rbp, %r14
	.align	16, 0x90
.LBB27_6:                               # %do.body.i
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r15, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB27_7
# BB#11:                                # %if.else.i
                                        #   in Loop: Header=BB27_6 Depth=2
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB27_12
# BB#13:                                # %if.end.9.i
                                        #   in Loop: Header=BB27_6 Depth=2
	testl	%ecx, %ecx
	jne	.LBB27_8
# BB#14:                                # %if.end.13.i
                                        #   in Loop: Header=BB27_6 Depth=2
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	12(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 36(%rbx)
	je	.LBB27_6
	jmp	.LBB27_15
.LBB27_7:                               # %if.then.2.i
	orb	$2, 40(%rbx)
	jmp	.LBB27_8
.LBB27_12:                              # %if.then.5.i
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
.LBB27_8:                               # %while.end
	subl	%r13d, %r12d
.LBB27_9:                               # %cleanup.16
	movl	%r12d, %eax
.LBB27_10:                              # %cleanup.16
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	sfnts_reader_rstring, .Lfunc_end27-sfnts_reader_rstring
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_reader_seek,@function
sfnts_reader_seek:                      # @sfnts_reader_seek
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp245:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp246:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp247:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp248:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp249:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp250:
	.cfi_def_cfa_offset 80
.Ltmp251:
	.cfi_offset %rbx, -56
.Ltmp252:
	.cfi_offset %r12, -48
.Ltmp253:
	.cfi_offset %r13, -40
.Ltmp254:
	.cfi_offset %r14, -32
.Ltmp255:
	.cfi_offset %r15, -24
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$-1, 24(%rbx)
	movl	40(%rbx), %ecx
	leaq	36(%rbx), %r12
	testl	%ecx, %ecx
	jne	.LBB28_10
# BB#1:                                 # %do.body.preheader.i
	movq	$0, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	leaq	8(%rsp), %rcx
	xorl	%edx, %edx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB28_8
# BB#2:
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB28_3:                               # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB28_4
# BB#5:                                 # %if.end.9.i
                                        #   in Loop: Header=BB28_3 Depth=1
	testl	%ecx, %ecx
	jne	.LBB28_10
# BB#6:                                 # %if.end.13.i
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	12(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 36(%rbx)
	jne	.LBB28_9
# BB#7:                                 # %if.end.13.i.do.body.i_crit_edge
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r15, %rcx
	callq	array_get
	cmpl	$-15, %eax
	jne	.LBB28_3
.LBB28_8:                               # %if.then.2.i
	movl	40(%rbx), %ecx
	orl	$2, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB28_10
.LBB28_4:                               # %if.then.5.i
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB28_10
.LBB28_9:                               # %do.end.i
	movl	$0, 32(%rbx)
	xorl	%ecx, %ecx
.LBB28_10:                              # %sfnts_next_elem.exit
	movl	(%r12), %eax
	cmpq	%r14, %rax
	jae	.LBB28_11
# BB#12:                                # %land.rhs.lr.ph
	leaq	32(%rbx), %r13
	xorl	%ebp, %ebp
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB28_13:                              # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_14 Depth 2
	movq	%rbp, %rdx
	movq	%rax, %rbp
	testl	%ecx, %ecx
	jne	.LBB28_23
	.align	16, 0x90
.LBB28_14:                              # %do.body.i.24
                                        #   Parent Loop BB28_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rbx), %rdx
	incq	%rdx
	movq	%rdx, 24(%rbx)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	movq	%r15, %rcx
	callq	array_get
	cmpl	$-15, %eax
	je	.LBB28_15
# BB#16:                                # %if.else.i.28
                                        #   in Loop: Header=BB28_14 Depth=2
	movl	40(%rbx), %ecx
	testl	%eax, %eax
	js	.LBB28_17
# BB#18:                                # %if.end.9.i.32
                                        #   in Loop: Header=BB28_14 Depth=2
	testl	%ecx, %ecx
	jne	.LBB28_21
# BB#19:                                # %if.end.13.i.35
                                        #   in Loop: Header=BB28_14 Depth=2
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbx)
	movl	12(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, (%r12)
	je	.LBB28_14
# BB#20:                                # %do.end.i.37
                                        #   in Loop: Header=BB28_13 Depth=1
	movl	$0, (%r13)
	xorl	%ecx, %ecx
	jmp	.LBB28_21
	.align	16, 0x90
.LBB28_15:                              # %if.then.2.i.26
                                        #   in Loop: Header=BB28_13 Depth=1
	movl	40(%rbx), %ecx
	orl	$2, %ecx
	movl	%ecx, 40(%rbx)
	jmp	.LBB28_21
	.align	16, 0x90
.LBB28_17:                              # %if.then.5.i.30
                                        #   in Loop: Header=BB28_13 Depth=1
	orl	$1, %ecx
	movl	%ecx, 40(%rbx)
.LBB28_21:                              # %sfnts_next_elem.exit38
                                        #   in Loop: Header=BB28_13 Depth=1
	movl	(%r12), %eax
	addq	%rbp, %rax
	cmpq	%r14, %rax
	jb	.LBB28_13
# BB#22:
	movq	%rbp, %rdx
	jmp	.LBB28_23
.LBB28_11:                              # %sfnts_next_elem.exit.while.end_crit_edge
	addq	$32, %rbx
	xorl	%edx, %edx
	movq	%rbx, %r13
.LBB28_23:                              # %while.end
	subl	%edx, %r14d
	movl	%r14d, (%r13)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	sfnts_reader_seek, .Lfunc_end28-sfnts_reader_seek
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_writer_wbyte,@function
sfnts_writer_wbyte:                     # @sfnts_writer_wbyte
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	16(%rdi), %rcx
	addq	(%rdi), %rcx
	movq	8(%rdi), %rax
	leaq	1(%rax), %rdx
	cmpq	%rdx, %rcx
	jb	.LBB29_2
# BB#1:                                 # %if.end
	movb	%sil, (%rax)
	incq	8(%rdi)
.LBB29_2:                               # %return
	retq
.Lfunc_end29:
	.size	sfnts_writer_wbyte, .Lfunc_end29-sfnts_writer_wbyte
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_writer_wword,@function
sfnts_writer_wword:                     # @sfnts_writer_wword
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	movslq	16(%rdi), %rdx
	addq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	leaq	2(%rcx), %rsi
	cmpq	%rsi, %rdx
	jb	.LBB30_2
# BB#1:                                 # %if.end
	movb	%ah, (%rcx)  # NOREX
	movq	8(%rdi), %rcx
	movb	%al, 1(%rcx)
	addq	$2, 8(%rdi)
.LBB30_2:                               # %return
	retq
.Lfunc_end30:
	.size	sfnts_writer_wword, .Lfunc_end30-sfnts_writer_wword
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_writer_wlong,@function
sfnts_writer_wlong:                     # @sfnts_writer_wlong
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movslq	16(%rdi), %rdx
	addq	(%rdi), %rdx
	movq	8(%rdi), %rcx
	leaq	4(%rcx), %rsi
	cmpq	%rsi, %rdx
	jb	.LBB31_2
# BB#1:                                 # %if.end
	movq	%rax, %rdx
	shrq	$24, %rdx
	movb	%dl, (%rcx)
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	8(%rdi), %rdx
	movb	%cl, 1(%rdx)
	movq	8(%rdi), %rcx
	movb	%ah, 2(%rcx)  # NOREX
	movq	8(%rdi), %rcx
	movb	%al, 3(%rcx)
	addq	$4, 8(%rdi)
.LBB31_2:                               # %return
	retq
.Lfunc_end31:
	.size	sfnts_writer_wlong, .Lfunc_end31-sfnts_writer_wlong
	.cfi_endproc

	.align	16, 0x90
	.type	sfnts_writer_wstring,@function
sfnts_writer_wstring:                   # @sfnts_writer_wstring
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp257:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp258:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp259:
	.cfi_def_cfa_offset 32
.Ltmp260:
	.cfi_offset %rbx, -24
.Ltmp261:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movslq	16(%rbx), %rax
	addq	(%rbx), %rax
	movq	8(%rbx), %rdi
	movslq	%edx, %r14
	leaq	(%rdi,%r14), %rcx
	cmpq	%rcx, %rax
	jb	.LBB32_2
# BB#1:                                 # %if.end
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, 8(%rbx)
.LBB32_2:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end32:
	.size	sfnts_writer_wstring, .Lfunc_end32-sfnts_writer_wstring
	.cfi_endproc

	.align	16, 0x90
	.type	zfapi_finish_render,@function
zfapi_finish_render:                    # @zfapi_finish_render
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp263:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp264:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp265:
	.cfi_def_cfa_offset 48
.Ltmp266:
	.cfi_offset %rbx, -32
.Ltmp267:
	.cfi_offset %r14, -24
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rdi
	addq	$-16, %rdi
	leaq	8(%rsp), %rsi
	callq	font_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	8(%rsp), %rax
	movq	424(%rax), %r14
	movq	%rbx, %rdi
	callq	op_show_find
	movq	%rax, %rbp
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	gs_fapi_set_servers_client_data
	movq	8(%rsp), %rdi
	movq	(%rbx), %rsi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	callq	gs_fapi_finish_render
	movl	%eax, %ebp
	addq	$-32, 624(%rbx)
	movq	%r14, %rdi
	callq	*552(%r14)
.LBB33_2:                               # %if.end
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end33:
	.size	zfapi_finish_render, .Lfunc_end33-zfapi_finish_render
	.cfi_endproc

	.align	16, 0x90
	.type	FAPI_char,@function
FAPI_char:                              # @FAPI_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp269:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp270:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp271:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp272:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp273:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp274:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp275:
	.cfi_def_cfa_offset 240
.Ltmp276:
	.cfi_offset %rbx, -56
.Ltmp277:
	.cfi_offset %r12, -48
.Ltmp278:
	.cfi_offset %r13, -40
.Ltmp279:
	.cfi_offset %r14, -32
.Ltmp280:
	.cfi_offset %r15, -24
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %rbp
	movq	624(%rbp), %r15
	leaq	-16(%r15), %rbx
	leaq	152(%rsp), %rsi
	movq	%rbx, %rdi
	callq	font_param
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jne	.LBB34_49
# BB#1:                                 # %if.then
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movq	152(%rsp), %r13
	movl	128(%r13), %r14d
	movl	%r12d, %ebx
	movq	424(%r13), %r12
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	callq	op_show_find
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$-1, 116(%rsp)
	leaq	80(%r12), %rdi
	movl	$ps_ff_stub, %esi
	movl	$320, %edx              # imm = 0x140
	callq	memcpy
	movq	%rbp, 8(%r12)
	movl	%ebx, %r12d
	testl	%r12d, %r12d
	je	.LBB34_8
# BB#2:                                 # %if.then
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	jne	.LBB34_8
# BB#3:                                 # %if.then
	addl	$-9, %r14d
	cmpl	$3, %r14d
	jb	.LBB34_8
# BB#4:                                 # %if.then.14
	movzbl	1(%r15), %eax
	cmpl	$13, %eax
	movq	%rbp, %r14
	je	.LBB34_7
# BB#5:                                 # %if.end
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.35, %esi
	movq	%r15, %rdx
	callq	names_enter_string
	movzbl	1(%r15), %eax
	cmpl	$13, %eax
	jne	.LBB34_6
.LBB34_7:                               # %if.end.27
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	96(%rsp), %rdx
	movq	%r15, %rsi
	callq	names_string_ref
	movq	104(%rsp), %rax
	movq	%rax, 120(%rsp)
	movl	100(%rsp), %eax
	movl	%eax, 128(%rsp)
	leaq	120(%rsp), %r15
	jmp	.LBB34_18
.LBB34_8:                               # %if.else
	testl	%r12d, %r12d
	movq	%rbp, %r14
	je	.LBB34_16
# BB#9:                                 # %land.lhs.true.34
	cmpl	$11, 128(%r13)
	jne	.LBB34_16
# BB#10:                                # %land.lhs.true.38
	movzbl	1(%r15), %eax
	cmpl	$13, %eax
	jne	.LBB34_16
# BB#11:                                # %if.then.45
	leaq	72(%rsp), %rdx
	movl	$.L.str.18, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB34_13
# BB#12:                                # %if.end.51
	movq	72(%rsp), %rdi
	leaq	176(%rsp), %rdx
	movl	$.L.str.35, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB34_13
# BB#15:                                # %cleanup
	movq	176(%rsp), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, (%r15)
.LBB34_16:                              # %if.end.58
	movw	$3584, 96(%rsp)         # imm = 0xE00
	movzbl	1(%r15), %eax
	cmpl	$11, %eax
	jne	.LBB34_6
# BB#17:                                # %if.end.69
	leaq	116(%rsp), %rdx
	movl	$65535, %esi            # imm = 0xFFFF
	movq	%r15, %rdi
	callq	int_param
	xorl	%r15d, %r15d
.LBB34_18:                              # %if.end.71
	leaq	160(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	dict_find_string
	xorl	%r13d, %r13d
	testl	%eax, %eax
	movq	64(%rsp), %rbx          # 8-byte Reload
	jle	.LBB34_21
# BB#19:                                # %land.lhs.true.75
	movq	160(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB34_21
# BB#20:                                # %if.then.82
	movl	8(%rax), %r13d
.LBB34_21:                              # %if.end.86
	movq	624(%r14), %rdi
	addq	$-16, %rdi
	leaq	160(%rsp), %rdx
	movl	$.L.str.10, %esi
	callq	dict_find_string
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jle	.LBB34_24
# BB#22:                                # %land.lhs.true.94
	movq	160(%rsp), %rdi
	xorl	%ebp, %ebp
	movzbl	1(%rdi), %eax
	cmpl	$18, %eax
	jne	.LBB34_24
# BB#23:                                # %if.then.101
	movq	8(%r14), %rsi
	movl	$.L.str.11, %edx
	callq	ref_to_string
	movq	%rax, %rbp
.LBB34_24:                              # %if.end.105
	xorl	%r9d, %r9d
	testq	%rbx, %rbx
	je	.LBB34_26
# BB#25:                                # %if.then.107
	movq	8(%rbx), %rax
	movq	%rax, 136(%rsp)
	movl	4(%rbx), %eax
	movl	%eax, 144(%rsp)
	leaq	136(%rsp), %r9
.LBB34_26:                              # %if.end.114
	movq	152(%rsp), %rdi
	movq	(%r14), %rsi
	movslq	116(%rsp), %rax
	movl	%r13d, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%r15, (%rsp)
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
	movl	%r12d, %r8d
	callq	gs_fapi_do_char
	movl	%eax, %ebx
	testq	%rbp, %rbp
	je	.LBB34_28
# BB#27:                                # %if.then.120
	movq	8(%r14), %rdi
	movq	160(%rsp), %rax
	movl	4(%rax), %edx
	incl	%edx
	movl	$.L.str.11, %ecx
	movq	%rbp, %rsi
	callq	*160(%rdi)
.LBB34_28:                              # %if.end.127
	cmpl	$-28, %ebx
	movq	48(%rsp), %r15          # 8-byte Reload
	jne	.LBB34_29
# BB#30:                                # %if.then.130
	movl	$-10, %r13d
	cmpl	$0, 128(%r15)
	je	.LBB34_31
# BB#32:                                # %if.then.i
	movq	%r14, %rbp
	cmpl	$0, 132(%r15)
	jne	.LBB34_45
# BB#33:                                # %if.end.i
	movq	624(%rbp), %r14
	movslq	116(%rsp), %rbx
	movq	248(%r15), %rax
	movq	72(%rax), %rdi
	leaq	176(%rsp), %rdx
	movl	$.L.str.18, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB34_45
# BB#34:                                # %if.end.4.i
	movq	256(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB34_36
# BB#35:                                # %if.then.6.i
	movq	96(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	264(%r15), %edx
	leaq	72(%rsp), %rcx
	jmp	.LBB34_39
.LBB34_6:                               # %if.then.25
	movq	%r15, %rdi
	callq	check_type_failed
	movl	%eax, %r13d
.LBB34_14:                              # %cleanup.178
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	jmp	.LBB34_46
.LBB34_29:
	movb	$1, %al
	movl	$-21, %r13d
	jmp	.LBB34_46
.LBB34_31:
	movq	%r14, %rbp
.LBB34_45:                              # %cleanup.174
	movl	$-28, %ebx
	xorl	%eax, %eax
	movq	%rbp, %r14
.LBB34_46:                              # %cleanup.178
	testb	%al, %al
	je	.LBB34_49
# BB#47:                                # %if.end.191
	testl	%ebx, %ebx
	movl	%ebx, %r13d
	jne	.LBB34_49
# BB#48:                                # %if.then.194
	addq	$-32, 624(%r14)
	xorl	%r13d, %r13d
.LBB34_49:                              # %cleanup.200
	movl	%r13d, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_13:                              # %cleanup.thread
	movl	$-21, %r13d
	jmp	.LBB34_14
.LBB34_36:                              # %if.else.i
	movl	$504, %edi              # imm = 0x1F8
	addq	232(%r15), %rdi
	leaq	168(%rsp), %rdx
	movl	$.L.str.34, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB34_38
# BB#37:                                # %lor.lhs.false.i
	movq	96(%r15), %rdi
	movq	168(%rsp), %rsi
	leaq	72(%rsp), %rcx
	movq	%rbx, %rdx
	callq	array_get
	testl	%eax, %eax
	jns	.LBB34_40
.LBB34_38:                              # %if.then.18.i
	movq	96(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	72(%rsp), %rcx
	movl	$.L.str.35, %esi
	movl	$7, %edx
.LBB34_39:                              # %if.then.18.i
	movl	$-1, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB34_45
.LBB34_40:                              # %if.end.29.i
	movq	176(%rsp), %rdi
	leaq	72(%rsp), %rsi
	leaq	88(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB34_45
# BB#41:                                # %land.lhs.true.143
	movq	88(%rsp), %rax
	movb	1(%rax), %cl
	andb	$-2, %cl
	movzbl	%cl, %ecx
	cmpl	$4, %ecx
	jne	.LBB34_45
# BB#42:                                # %do.body
	leaq	32(%r14), %rcx
	movq	%rbp, %rdi
	cmpq	640(%rdi), %rcx
	jbe	.LBB34_44
# BB#43:                                # %if.then.163
	movl	$2, 688(%rdi)
	movq	%rdi, %rbp
	movl	$-16, %r13d
	jmp	.LBB34_45
.LBB34_44:                              # %if.else.166
	movq	%rcx, 624(%rdi)
	movups	72(%rsp), %xmm0
	movups	%xmm0, 16(%r14)
	movups	(%rax), %xmm0
	movups	%xmm0, (%rcx)
	movq	%rdi, %rbp
	callq	zchar_exec_char_proc
	movl	%eax, %r13d
	jmp	.LBB34_45
.Lfunc_end34:
	.size	FAPI_char, .Lfunc_end34-FAPI_char
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1.FAPIavailable"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2.FAPIpassfont"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2.FAPIrebuildfont"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2.FAPIBuildChar"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2.FAPIBuildGlyph"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2.FAPIBuildGlyph9"
	.size	.L.str.5, 18

	.type	zfapi_op_defs,@object   # @zfapi_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfapi_op_defs
	.align	16
zfapi_op_defs:
	.quad	.L.str
	.quad	zFAPIavailable
	.quad	.L.str.1
	.quad	zFAPIpassfont
	.quad	.L.str.2
	.quad	zFAPIrebuildfont
	.quad	.L.str.3
	.quad	zFAPIBuildChar
	.quad	.L.str.4
	.quad	zFAPIBuildGlyph
	.quad	.L.str.5
	.quad	zFAPIBuildGlyph9
	.zero	16
	.size	zfapi_op_defs, 112

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"zFAPIavailable"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"SubfontId"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"FAPIPlugInReq"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"zFAPIpassfont"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Path"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"font file path"
	.size	.L.str.11, 15

	.type	ps_ff_stub,@object      # @ps_ff_stub
	.section	.rodata,"a",@progbits
	.align	8
ps_ff_stub:
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.zero	8
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # float 0
	.quad	FAPI_FF_get_word
	.quad	FAPI_FF_get_long
	.quad	FAPI_FF_get_float
	.quad	FAPI_FF_get_name
	.quad	FAPI_FF_get_proc
	.quad	FAPI_FF_get_gsubr
	.quad	FAPI_FF_get_subr
	.quad	FAPI_FF_get_raw_subr
	.quad	FAPI_FF_get_glyph
	.quad	FAPI_FF_serialize_tt_font
	.quad	FAPI_FF_get_charstring
	.quad	FAPI_FF_get_charstring_name
	.quad	ps_get_GlyphDirectory_data_ptr
	.quad	ps_get_glyphname_or_cid
	.quad	ps_fapi_get_metrics
	.quad	ps_fapi_set_cache
	.size	ps_ff_stub, 320

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"do_FAPIpassfont"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"FAPI"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	".xlatmap"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Private"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GlobalSubrs"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Subrs"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"CharStrings"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"$Blend"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"FontInfo"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"BlendAxisTypes"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Blend"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"WeightVector"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"BlendDesignPositions"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"BlendDesignMap"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%f"
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%ld"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"sfnts"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"glyf"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"glyx"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"loca"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"locx"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"cmap"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"StandardEncoding"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	".notdef"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	".render_notdef"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	".notdef~GS"
	.size	.L.str.37, 11

	.type	sfnts_writer_stub,@object # @sfnts_writer_stub
	.section	.rodata,"a",@progbits
	.align	8
sfnts_writer_stub:
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	sfnts_writer_wbyte
	.quad	sfnts_writer_wword
	.quad	sfnts_writer_wlong
	.quad	sfnts_writer_wstring
	.size	sfnts_writer_stub, 56

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"GlyphDirectory"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Encoding"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Decoding"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"SubstNWP"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"TT_cmap"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"CIDSystemInfo"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Ordering"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Identity"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"GDBytes"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"CIDMap"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Wrong decoding entry for the character '%s'.\n"
	.size	.L.str.48, 46

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Error: Font Renderer Plugin ( %s ) return code = %d\n"
	.size	.L.str.49, 53

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	".FAPIconfig"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"ServerOptions"
	.size	.L.str.51, 14

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	".FAPIBuildGlyph9"
	.size	.L.str.52, 17

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	".FAPIBuildChar"
	.size	.L.str.53, 15

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	".FAPIBuildGlyph"
	.size	.L.str.54, 16

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"FontBBox"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"array"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"FAPI_refine_font_BBox"
	.size	.L.str.57, 22

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"FDArray"
	.size	.L.str.58, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
