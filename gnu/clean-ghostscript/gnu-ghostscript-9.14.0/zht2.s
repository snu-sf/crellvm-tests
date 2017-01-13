	.text
	.file	"zht2.bc"
	.globl	gs_get_colorname_string
	.align	16, 0x90
	.type	gs_get_colorname_string,@function
gs_get_colorname_string:                # @gs_get_colorname_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 64
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	leaq	8(%rsp), %r12
	movq	%r12, %rdx
	callq	names_index_ref
	movq	192(%rbx), %rax
	movq	120(%rax), %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	callq	names_string_ref
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	obj_string_data
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gs_get_colorname_string, .Lfunc_end0-gs_get_colorname_string
	.cfi_endproc

	.align	16, 0x90
	.type	zsethalftone5,@function
zsethalftone5:                          # @zsethalftone5
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$2360, %rsp             # imm = 0x938
.Ltmp15:
	.cfi_def_cfa_offset 2416
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	624(%r12), %r13
	leaq	520(%r12), %rbp
	movq	%rbp, %rdi
	callq	ref_stack_count
	movl	%eax, %r15d
	movq	%r13, %rdi
	callq	dict_first
	movl	%eax, %ebx
	movl	$0, 208(%rsp)
	movzwl	-16(%r13), %r14d
	shrl	$2, %r14d
	andl	$3, %r14d
	movzbl	1(%r13), %eax
	cmpl	$2, %eax
	jne	.LBB1_1
# BB#2:                                 # %do.body
	movq	8(%r13), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB1_141
# BB#3:                                 # %do.end
	leaq	-16(%r13), %rdi
	movzbl	1(%rdi), %ecx
	cmpl	$2, %ecx
	jne	.LBB1_4
# BB#5:                                 # %do.body.27
	movq	-8(%r13), %rcx
	testb	$32, (%rcx)
	je	.LBB1_141
# BB#6:                                 # %do.end.40
	movq	(%r12), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	24(%r12,%r14,8), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	$0, 136(%rsp)           # 4-byte Folded Spill
	leaq	208(%rsp), %r9
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movl	$100, %ecx
	xorl	%r8d, %r8d
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB1_141
# BB#7:                                 # %if.end.46
	movl	%eax, 152(%rsp)         # 4-byte Spill
	movl	%r15d, 92(%rsp)         # 4-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	leaq	624(%r12), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	208(%rsp), %ecx
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	cmpl	$4, %ecx
	sete	%al
	movzbl	%al, %eax
	orl	$6, %eax
	cmpl	$2, %ecx
	movl	$7, %ecx
	cmovnel	%eax, %ecx
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	leaq	224(%rsp), %r15
	xorl	%ecx, %ecx
.LBB1_8:                                # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	movl	%ecx, 164(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB1_9:                                # %for.cond.outer329
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	dict_next
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	.LBB1_10
# BB#15:                                # %if.end.55
                                        #   in Loop: Header=BB1_9 Depth=2
	movzbl	225(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB1_9
# BB#16:                                # %if.end.64
                                        #   in Loop: Header=BB1_9 Depth=2
	movzbl	241(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB1_9
# BB#17:                                # %if.end.73
                                        #   in Loop: Header=BB1_9 Depth=2
	movq	168(%rsp), %rbp         # 8-byte Reload
	movq	192(%rbp), %rax
	movq	120(%rax), %rdi
	movq	%r15, %rsi
	callq	names_index
	movq	192(%rbp), %rcx
	movq	120(%rcx), %rdi
	movl	%eax, %esi
	leaq	2336(%rsp), %rbp
	movq	%rbp, %rdx
	callq	names_index_ref
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	names_string_ref
	movq	168(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	leaq	216(%rsp), %rdx
	leaq	212(%rsp), %rcx
	callq	obj_string_data
	testl	%eax, %eax
	js	.LBB1_11
# BB#18:                                # %if.end.81
                                        #   in Loop: Header=BB1_9 Depth=2
	movl	%eax, 152(%rsp)         # 4-byte Spill
	movq	216(%rsp), %rsi
	movl	212(%rsp), %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	128(%rsp), %ecx         # 4-byte Reload
	callq	gs_cname_to_colorant_number
	testl	%eax, %eax
	js	.LBB1_9
# BB#19:                                # %if.else
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$64, %eax
	jne	.LBB1_20
# BB#21:                                # %if.then.88
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	$-15, %eax
	cmpl	$0, 136(%rsp)           # 4-byte Folded Reload
	movl	$1, 136(%rsp)           # 4-byte Folded Spill
	je	.LBB1_22
	jmp	.LBB1_141
.LBB1_20:                               #   in Loop: Header=BB1_8 Depth=1
	movq	168(%rsp), %rcx         # 8-byte Reload
.LBB1_22:                               # %if.end.93
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movl	164(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movl	$-15, %eax
	cmpl	$65, %ecx
	jbe	.LBB1_8
	jmp	.LBB1_23
.LBB1_1:                                # %if.then
	movq	%r13, %rdi
	callq	check_type_failed
	jmp	.LBB1_141
.LBB1_4:                                # %if.then.23
	callq	check_type_failed
	jmp	.LBB1_141
.LBB1_10:
	movl	152(%rsp), %eax         # 4-byte Reload
.LBB1_11:                               # %for.end
	xorl	%ebx, %ebx
	movl	164(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB1_12
.LBB1_23:                               # %lor.lhs.false
	cmpl	$0, 136(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_26
# BB#24:                                # %switch.early.test
	xorl	%ebx, %ebx
	cmpl	$4, 104(%rsp)           # 4-byte Folded Reload
	je	.LBB1_26
# BB#25:                                # %switch.early.test
	cmpl	$2, 104(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_12
.LBB1_26:                               # %if.end.104
	xorl	%ebx, %ebx
	testl	%eax, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	js	.LBB1_27
# BB#28:                                # %if.then.107
	movl	%ecx, %ebp
	movq	168(%rsp), %r15         # 8-byte Reload
	movq	520(%r12), %rax
	movq	536(%r12), %rcx
	addq	$-80, %rcx
	cmpq	%rcx, %rax
                                        # implicit-def: EAX
	jbe	.LBB1_30
# BB#29:                                # %if.then.116
	movl	$5, %esi
	movq	96(%rsp), %rdi          # 8-byte Reload
	callq	ref_stack_extend
	testl	%eax, %eax
	js	.LBB1_141
.LBB1_30:                               # %if.end.124
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	76(%r12), %edx
	leaq	1296(%rsp), %rdi
	movl	%ebp, 164(%rsp)         # 4-byte Spill
	movl	%ebp, %esi
	callq	refset_null_new
	movl	76(%r12), %edx
	leaq	256(%rsp), %rdi
	movl	%ebp, %esi
	callq	refset_null_new
	movq	8(%r12), %rdi
	movl	$st_halftone, %esi
	movl	$.L.str.4, %edx
	callq	*72(%rdi)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB1_32
# BB#31:                                # %do.body.139
	movq	$0, 8(%rax)
	movq	8(%r12), %rcx
	movq	%rcx, 16(%rax)
	movq	$rc_free_struct_only, 24(%rax)
	movq	%rax, %rbx
.LBB1_32:                               # %do.end.152
	movl	$st_ht_component_element, %edx
	movl	$.L.str.4, %ecx
	movq	%r15, %rdi
	movl	164(%rsp), %esi         # 4-byte Reload
	callq	*104(%rdi)
	movq	%rax, %r15
	movq	8(%r12), %rdi
	movl	$st_device_halftone, %esi
	movl	$.L.str.4, %edx
	callq	*72(%rdi)
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.LBB1_33
# BB#34:                                # %do.end.183
	movq	$0, 160(%rax)
	movq	8(%r12), %rcx
	movq	%rcx, 168(%rax)
	movq	$rc_free_struct_only, 176(%rax)
	testq	%rbx, %rbx
	je	.LBB1_35
# BB#36:                                # %do.end.183
	testq	%r15, %r15
	je	.LBB1_35
# BB#37:                                # %if.then.197
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	callq	dict_first
	leaq	224(%rsp), %rdx
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	dict_next
	cmpl	$-1, %eax
	je	.LBB1_38
# BB#39:                                # %if.end.206.lr.ph
	leaq	224(%rsp), %rbx
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	%r15, 64(%rsp)          # 8-byte Spill
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movq	112(%rsp), %rbp         # 8-byte Reload
.LBB1_40:                               # %if.end.206
                                        # =>This Inner Loop Header: Depth=1
	movzbl	225(%rsp), %ecx
	cmpl	$13, %ecx
	jne	.LBB1_87
# BB#41:                                # %if.end.215
                                        #   in Loop: Header=BB1_40 Depth=1
	movzbl	241(%rsp), %ecx
	cmpl	$2, %ecx
	jne	.LBB1_87
# BB#42:                                # %if.end.224
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	%eax, 136(%rsp)         # 4-byte Spill
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	movq	168(%rsp), %r15         # 8-byte Reload
	movq	192(%r15), %rax
	movq	120(%rax), %rdi
	movq	%rbx, %rsi
	callq	names_index
	movl	%eax, %ebx
	movq	192(%r15), %rax
	movq	120(%rax), %rdi
	movl	%ebx, %esi
	leaq	2336(%rsp), %rbp
	movq	%rbp, %rdx
	callq	names_index_ref
	movq	192(%r15), %rax
	movq	120(%rax), %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	names_string_ref
	movq	%r15, %rdi
	movq	%rbp, %rsi
	leaq	216(%rsp), %rdx
	leaq	212(%rsp), %rcx
	callq	obj_string_data
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB1_91
# BB#43:                                # %if.end.234
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movq	216(%rsp), %rsi
	movl	212(%rsp), %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	128(%rsp), %ecx         # 4-byte Reload
	callq	gs_cname_to_colorant_number
	testl	%eax, %eax
	js	.LBB1_44
# BB#45:                                # %if.end.239
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	80(%rsp), %r15          # 8-byte Reload
	movl	%ebx, 4(%r15)
	movl	%eax, (%r15)
	movq	248(%rsp), %rax
	testb	$32, (%rax)
	je	.LBB1_90
# BB#46:                                # %do.end.254
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movl	$7, %ecx
	xorl	%r8d, %r8d
	leaq	240(%rsp), %rbx
	movq	%rbx, %rdi
	leaq	204(%rsp), %r9
	callq	dict_int_param
	movl	$-20, %esi
	testl	%eax, %eax
	movq	112(%rsp), %rbp         # 8-byte Reload
	js	.LBB1_91
# BB#47:                                # %if.end.260
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	204(%rsp), %eax
	cmpl	$7, %eax
	je	.LBB1_66
# BB#48:                                # %if.end.260
                                        #   in Loop: Header=BB1_40 Depth=1
	cmpl	$3, %eax
	jne	.LBB1_49
# BB#59:                                # %sw.bb.271
                                        #   in Loop: Header=BB1_40 Depth=1
	leaq	16(%r15), %rsi
	movslq	104(%rsp), %rax         # 4-byte Folded Reload
	shlq	$4, %rax
	leaq	256(%rsp,%rax), %rcx
	movq	%rbx, %rdi
	leaq	2336(%rsp), %rdx
	callq	dict_threshold_common_params
	testl	%eax, %eax
	movl	%eax, %esi
	js	.LBB1_65
# BB#60:                                # %do.body.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	2336(%rsp), %rcx
	movzwl	(%rcx), %edx
	andl	$16160, %edx            # imm = 0x3F20
	cmpl	$4640, %edx             # imm = 0x1220
	jne	.LBB1_61
# BB#63:                                # %do.end.i.229
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	4(%rcx), %edx
	movslq	16(%r15), %rsi
	movslq	20(%r15), %rdi
	imulq	%rsi, %rdi
	movl	$-15, %esi
	cmpq	%rdi, %rdx
	jne	.LBB1_65
# BB#64:                                # %if.end.17.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	8(%rcx), %rcx
	movq	%rcx, 40(%r15)
	movl	%edx, 48(%r15)
	xorl	%esi, %esi
	testl	%eax, %eax
	movl	$gs_mapped_transfer, %eax
	cmovgq	%rsi, %rax
	movq	%rax, 56(%r15)
	jmp	.LBB1_65
.LBB1_44:                               #   in Loop: Header=BB1_40 Depth=1
	movq	112(%rsp), %rbp         # 8-byte Reload
	movl	136(%rsp), %eax         # 4-byte Reload
	leaq	224(%rsp), %rbx
	jmp	.LBB1_87
.LBB1_66:                               # %sw.bb.279
                                        #   in Loop: Header=BB1_40 Depth=1
	leaq	16(%r15), %rsi
	movslq	104(%rsp), %rax         # 4-byte Folded Reload
	shlq	$4, %rax
	leaq	256(%rsp,%rax), %rcx
	movq	8(%r12), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	leaq	2336(%rsp), %rdx
	callq	dict_threshold_common_params
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB1_84
# BB#67:                                # %lor.lhs.false.i.236
                                        #   in Loop: Header=BB1_40 Depth=1
	leaq	40(%r15), %r9
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movl	$.L.str.13, %esi
	xorl	%edx, %edx
	movl	$32767, %ecx            # imm = 0x7FFF
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, 40(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movl	%eax, %esi
	js	.LBB1_84
# BB#68:                                # %lor.lhs.false.3.i
                                        #   in Loop: Header=BB1_40 Depth=1
	leaq	44(%r15), %r9
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	$.L.str.14, %esi
	xorl	%edx, %edx
	movl	$32767, %ecx            # imm = 0x7FFF
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, 28(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movl	%eax, %esi
	js	.LBB1_84
# BB#69:                                # %lor.lhs.false.6.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	$.L.str.15, %esi
	movl	$8, %edx
	movl	$16, %ecx
	movl	$-1, %r8d
	movq	%rbx, %rdi
	leaq	176(%rsp), %r9
	callq	dict_int_param
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB1_84
# BB#70:                                # %if.end.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	$-15, %esi
	movl	176(%rsp), %eax
	cmpl	$16, %eax
	je	.LBB1_72
# BB#71:                                # %if.end.i
                                        #   in Loop: Header=BB1_40 Depth=1
	cmpl	$8, %eax
	jne	.LBB1_84
.LBB1_72:                               # %lor.lhs.false.11.i.239
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	40(%rsp), %ecx          # 4-byte Reload
	cmpl	28(%rsp), %ecx          # 4-byte Folded Reload
	jne	.LBB1_84
# BB#73:                                # %lor.lhs.false.13.i
                                        #   in Loop: Header=BB1_40 Depth=1
	testl	%ecx, %ecx
	jne	.LBB1_77
# BB#74:                                # %land.lhs.true.14.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	32(%rsp), %rdx          # 8-byte Reload
	cmpl	$0, (%rdx)
	je	.LBB1_75
# BB#76:                                # %lor.lhs.false.17.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmpl	$0, (%rdx)
	movl	$-15, %esi
	je	.LBB1_84
.LBB1_77:                               # %if.end.21.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%eax, %ecx
	sarl	$3, %ecx
	movl	%ecx, 48(%r15)
	movq	2336(%rsp), %rcx
	movzbl	1(%rcx), %eax
	cmpl	$9, %eax
	jne	.LBB1_78
# BB#80:                                # %sw.bb.26.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	8(%rcx), %rsi
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	*128(%rbx)
	movl	$st_bytes, %ecx
	cmpq	%rcx, %rax
	movl	$-20, %esi
	jne	.LBB1_84
# BB#81:                                # %if.end.32.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	2336(%rsp), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	callq	*120(%rdi)
	movq	2336(%rsp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 72(%r15)
	movq	%rdx, 56(%r15)
	movl	%eax, 64(%r15)
	jmp	.LBB1_82
.LBB1_49:                               # %if.end.260
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	$-15, %esi
	cmpl	$1, %eax
	jne	.LBB1_91
# BB#50:                                # %sw.bb
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	248(%rsp), %rax
	movl	$-7, %esi
	testb	$32, (%rax)
	je	.LBB1_58
# BB#51:                                # %do.end.i
                                        #   in Loop: Header=BB1_40 Depth=1
	leaq	16(%r15), %rdx
	movl	$.L.str.5, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	movl	%eax, %esi
	testl	%esi, %esi
	jne	.LBB1_56
# BB#52:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_40 Depth=1
	leaq	20(%r15), %rdx
	movl	$.L.str.6, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	movl	%eax, %esi
	testl	%esi, %esi
	jne	.LBB1_56
# BB#53:                                # %lor.lhs.false.7.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movslq	104(%rsp), %rax         # 4-byte Folded Reload
	shlq	$4, %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leaq	1296(%rsp,%rax), %rdx
	movl	$.L.str.7, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	dict_proc_param
	movl	%eax, %esi
	testl	%esi, %esi
	jne	.LBB1_56
# BB#54:                                # %lor.lhs.false.11.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	168(%rsp), %rdi         # 8-byte Reload
	callq	gs_currentaccuratescreens
	leaq	40(%r15), %rcx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	dict_bool_param
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB1_56
# BB#55:                                # %lor.lhs.false.16.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	256(%rsp,%rax), %rdx
	movl	$.L.str.9, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	dict_proc_param
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB1_56
# BB#57:                                # %if.end.23.i
                                        #   in Loop: Header=BB1_40 Depth=1
	testl	%esi, %esi
	movl	$0, %eax
	movl	$gs_mapped_transfer, %ecx
	cmovleq	%rcx, %rax
	movq	%rax, 48(%r15)
	movq	$0, 56(%r15)
	movq	$0, 64(%r15)
	xorl	%esi, %esi
	jmp	.LBB1_58
.LBB1_56:                               # %if.then.20.i
                                        #   in Loop: Header=BB1_40 Depth=1
	testl	%esi, %esi
	movl	$-21, %eax
	cmovnsl	%eax, %esi
.LBB1_58:                               # %dict_spot_params.exit
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	$spot1_dummy, 24(%r15)
	movl	$3, 8(%r15)
	jmp	.LBB1_85
.LBB1_61:                               # %if.then.3.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movzbl	1(%rcx), %eax
	movl	$-20, %esi
	cmpl	$18, %eax
	je	.LBB1_62
.LBB1_65:                               # %dict_threshold_params.exit
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	$4, 8(%r15)
	jmp	.LBB1_85
.LBB1_62:                               # %select.mid
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	$-7, %esi
	movl	$4, 8(%r15)
	jmp	.LBB1_85
.LBB1_78:                               # %if.end.21.i
                                        #   in Loop: Header=BB1_40 Depth=1
	cmpl	$18, %eax
	movl	$-20, %esi
	jne	.LBB1_84
# BB#79:                                # %sw.bb.i
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	4(%rcx), %eax
	movq	8(%rcx), %rdx
	movq	%rdx, 56(%r15)
	movl	%eax, 64(%r15)
	movq	$0, 72(%r15)
.LBB1_82:                               # %do.body.i.246
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	$-7, %esi
	testb	$32, (%rcx)
	je	.LBB1_84
# BB#83:                                # %do.end.i.250
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	20(%r15), %ecx
	movl	44(%r15), %edx
	imull	16(%r15), %ecx
	imull	40(%r15), %edx
	addl	%ecx, %edx
	imull	48(%r15), %edx
	cmpl	%edx, %eax
	movl	$-15, %esi
	movl	$0, %eax
	cmovel	%eax, %esi
	jmp	.LBB1_84
.LBB1_75:                               #   in Loop: Header=BB1_40 Depth=1
	movl	$-15, %esi
.LBB1_84:                               # %dict_threshold2_params.exit
                                        #   in Loop: Header=BB1_40 Depth=1
	movl	$5, 8(%r15)
.LBB1_85:                               # %sw.epilog
                                        #   in Loop: Header=BB1_40 Depth=1
	leaq	224(%rsp), %rbx
	testl	%esi, %esi
	js	.LBB1_91
# BB#86:                                # %if.end.292
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	addq	$80, %r15
	movq	%r15, 80(%rsp)          # 8-byte Spill
	incl	104(%rsp)               # 4-byte Folded Spill
	movl	136(%rsp), %eax         # 4-byte Reload
.LBB1_87:                               # %cleanup.294.thread282
                                        #   in Loop: Header=BB1_40 Depth=1
	movq	%r13, %rdi
	movl	%eax, %esi
	movq	%rbx, %rdx
	callq	dict_next
	cmpl	$-1, %eax
	jne	.LBB1_40
	jmp	.LBB1_88
.LBB1_12:
	movl	$-15, %r12d
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	jmp	.LBB1_13
.LBB1_27:
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	movq	152(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_13
.LBB1_33:
	movl	$-25, %r12d
	jmp	.LBB1_13
.LBB1_35:
	movl	$-25, %r12d
	movq	%rax, %rsi
.LBB1_13:                               # %if.then.591
	movq	168(%rsp), %rbp         # 8-byte Reload
.LBB1_14:                               # %if.then.591
	movl	$.L.str.4, %edx
	movq	%rbp, %rdi
	callq	*24(%rbp)
	movl	$.L.str.4, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*24(%rbp)
	movl	$.L.str.4, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rbp)
	movl	%r12d, %eax
.LBB1_141:                              # %cleanup.610
	addq	$2360, %rsp             # imm = 0x938
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_38:
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movq	%r15, 64(%rsp)          # 8-byte Spill
.LBB1_88:                               # %if.end.298
	movq	152(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB1_89
# BB#93:                                # %if.end.310
	movq	48(%rsp), %rsi          # 8-byte Reload
	movl	128(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsi)
	movq	64(%rsp), %r15          # 8-byte Reload
	movq	%r15, 32(%rsi)
	movl	104(%rsp), %eax         # 4-byte Reload
	movl	%eax, 40(%rsi)
	movq	$gs_get_colorname_string, 48(%rsi)
	movq	(%r12), %rdi
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	callq	gs_sethalftone_prepare
	movq	%rax, 152(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	js	.LBB1_94
# BB#95:                                # %if.then.313
	movq	%r13, %rdi
	callq	dict_first
	movl	%eax, %ebx
	leaq	368(%r12), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%r15, 136(%rsp)         # 8-byte Spill
	jmp	.LBB1_96
.LBB1_89:
	movq	%rax, %r12
	jmp	.LBB1_92
.LBB1_91:                               # %if.end.298.thread290
	movq	%rsi, %r12
.LBB1_92:                               # %if.then.591
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	168(%rsp), %rbp         # 8-byte Reload
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	64(%rsp), %r15          # 8-byte Reload
	jmp	.LBB1_14
.LBB1_94:
	movq	%rbx, %rsi
	movq	168(%rsp), %rbp         # 8-byte Reload
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	152(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_14
.LBB1_90:                               # %cleanup.294
	movl	$-7, %eax
	jmp	.LBB1_141
.LBB1_113:                              # %if.end.367
                                        #   in Loop: Header=BB1_96 Depth=1
	addq	$80, 136(%rsp)          # 8-byte Folded Spill
.LBB1_96:                               # %for.cond.315.outer.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_97 Depth 2
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	96(%rsp), %r15          # 8-byte Reload
.LBB1_97:                               # %for.cond.315.outer
                                        #   Parent Loop BB1_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movl	%ebx, %esi
	leaq	224(%rsp), %rdx
	callq	dict_next
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	.LBB1_114
# BB#98:                                # %if.end.321
                                        #   in Loop: Header=BB1_97 Depth=2
	movzbl	225(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB1_97
# BB#99:                                # %if.end.330
                                        #   in Loop: Header=BB1_97 Depth=2
	movzbl	241(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB1_97
# BB#100:                               # %if.end.339
                                        #   in Loop: Header=BB1_97 Depth=2
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	movq	168(%rsp), %r15         # 8-byte Reload
	movq	192(%r15), %rax
	movq	120(%rax), %rdi
	leaq	224(%rsp), %rsi
	callq	names_index
	movq	192(%r15), %rcx
	movq	120(%rcx), %rdi
	movl	%eax, %esi
	leaq	2336(%rsp), %rbp
	movq	%rbp, %rdx
	callq	names_index_ref
	movq	192(%r15), %rax
	movq	120(%rax), %rdi
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	names_string_ref
	movq	%r15, %rdi
	movq	%rbp, %rsi
	leaq	216(%rsp), %rdx
	leaq	212(%rsp), %rcx
	callq	obj_string_data
	movq	%rax, 152(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	js	.LBB1_101
# BB#102:                               # %if.end.349
                                        #   in Loop: Header=BB1_97 Depth=2
	movq	216(%rsp), %rsi
	movl	212(%rsp), %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	128(%rsp), %ecx         # 4-byte Reload
	callq	gs_cname_to_colorant_number
	testl	%eax, %eax
	movq	96(%rsp), %r15          # 8-byte Reload
	movq	112(%rsp), %rbp         # 8-byte Reload
	js	.LBB1_97
# BB#103:                               # %if.end.354
                                        #   in Loop: Header=BB1_96 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	$3, 8(%rax)
	jne	.LBB1_113
# BB#104:                               # %if.then.358
                                        #   in Loop: Header=BB1_96 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	32(%rax), %ebp
	movl	$.L.str.16, %esi
	leaq	240(%rsp), %rdi
	leaq	176(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_109
# BB#105:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_96 Depth=1
	movq	248(%rsp), %rax
	testb	$16, (%rax)
	je	.LBB1_106
# BB#107:                               # %dict_real_result.exit.i
                                        #   in Loop: Header=BB1_96 Depth=1
	movl	%ebp, 2344(%rsp)
	movw	$4096, 2336(%rsp)       # imm = 0x1000
	movl	$.L.str.16, %esi
	leaq	240(%rsp), %rdi
	leaq	2336(%rsp), %rdx
	movq	104(%rsp), %rcx         # 8-byte Reload
	callq	dict_put_string
	testl	%eax, %eax
	js	.LBB1_108
.LBB1_109:                              # %if.end.i.259
                                        #   in Loop: Header=BB1_96 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	36(%rax), %ebp
	movl	$.L.str.17, %esi
	leaq	240(%rsp), %rdi
	leaq	176(%rsp), %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB1_110
# BB#111:                               # %if.then.i.15.i
                                        #   in Loop: Header=BB1_96 Depth=1
	movq	248(%rsp), %rax
	testb	$16, (%rax)
	je	.LBB1_106
# BB#112:                               # %dict_spot_results.exit
                                        #   in Loop: Header=BB1_96 Depth=1
	movl	%ebp, 2344(%rsp)
	movw	$4096, 2336(%rsp)       # imm = 0x1000
	movl	$.L.str.17, %esi
	leaq	240(%rsp), %rdi
	leaq	2336(%rsp), %rdx
	movq	104(%rsp), %rcx         # 8-byte Reload
	callq	dict_put_string
	movq	%rax, 152(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	jns	.LBB1_113
	jmp	.LBB1_101
.LBB1_110:                              # %dict_spot_results.exit.thread301
                                        #   in Loop: Header=BB1_96 Depth=1
	xorl	%eax, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	addq	$80, 136(%rsp)          # 8-byte Folded Spill
	jmp	.LBB1_96
.LBB1_114:                              # %if.end.370
	movq	152(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB1_101
# BB#115:                               # %if.then.373
	movq	%rbp, %rdi
	callq	ref_stack_count
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	movups	(%rax), %xmm0
	movaps	%xmm0, 2336(%rsp)
	movups	(%r13), %xmm0
	movaps	%xmm0, 176(%rsp)
	addq	$-32, 624(%r12)
	movq	520(%r12), %rax
	leaq	80(%rax), %rcx
	movq	%rcx, 520(%r12)
	movq	$sethalftone_cleanup, 24(%rax)
	movq	520(%r12), %rax
	movw	$3712, -64(%rax)        # imm = 0xE80
	movl	$0, -60(%rax)
	movaps	2336(%rsp), %xmm0
	movups	%xmm0, -48(%rax)
	movq	520(%r12), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, -24(%rax)
	movl	$2048, %eax             # imm = 0x800
	addl	56(%r12), %eax
	movq	520(%r12), %rcx
	movw	%ax, -32(%rcx)
	movq	56(%rsp), %r8           # 8-byte Reload
	movq	%r8, -8(%rcx)
	movq	520(%r12), %rcx
	movw	%ax, -16(%rcx)
	movq	$sethalftone_finish, 8(%rcx)
	movq	520(%r12), %rax
	movw	$3968, (%rax)           # imm = 0xF80
	movl	$0, 4(%rax)
	movl	$2, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	164(%rsp), %edi         # 4-byte Reload
	testl	%edi, %edi
	je	.LBB1_140
# BB#116:                               # %for.body.lr.ph
	movl	zcolor_remap_one_ostack(%rip), %eax
	cltq
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movslq	zcolor_remap_one_estack(%rip), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%rax, %rcx
	negq	%rcx
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	shlq	$4, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
.LBB1_118:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_121 Depth 2
	movq	200(%r8), %rax
	testq	%rax, %rax
	movq	%r8, %rbx
	movq	64(%rsp), %rbp          # 8-byte Reload
	je	.LBB1_123
# BB#119:                               # %for.body.469.lr.ph
                                        #   in Loop: Header=BB1_118 Depth=1
	leaq	(%r13,%r13,4), %rcx
	shlq	$4, %rcx
	movl	(%rbp,%rcx), %ecx
	leaq	160(%rax), %rdx
	xorl	%esi, %esi
.LBB1_121:                              # %for.body.469
                                        #   Parent Loop BB1_118 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, (%rdx)
	je	.LBB1_122
# BB#120:                               # %for.cond.466
                                        #   in Loop: Header=BB1_121 Depth=2
	incq	%rsi
	addq	$168, %rdx
	cmpl	%edi, %esi
	movl	$0, %ebx
	jb	.LBB1_121
	jmp	.LBB1_123
.LBB1_122:                              # %if.then.476
                                        #   in Loop: Header=BB1_118 Depth=1
	imulq	$168, %rsi, %rcx
	addq	%rcx, %rax
	movq	%rax, %rbx
.LBB1_123:                              # %if.end.483
                                        #   in Loop: Header=BB1_118 Depth=1
	leaq	(%r13,%r13,4), %rdx
	shlq	$4, %rdx
	movl	8(%rbp,%rdx), %ecx
	cmpl	$4, %ecx
	jne	.LBB1_125
# BB#124:                               #   in Loop: Header=BB1_118 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	jmp	.LBB1_128
.LBB1_125:                              # %if.end.483
                                        #   in Loop: Header=BB1_118 Depth=1
	cmpl	$3, %ecx
	movq	152(%rsp), %rax         # 8-byte Reload
	jne	.LBB1_126
# BB#127:                               # %sw.bb.487
                                        #   in Loop: Header=BB1_118 Depth=1
	leaq	16(%rbp,%rdx), %rdx
	movq	%r13, %rax
	shlq	$4, %rax
	leaq	1296(%rsp,%rax), %rcx
	movl	%r14d, (%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%edi, %ebp
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	zscreen_enum_init
	movl	%ebp, %edi
	testl	%eax, %eax
	js	.LBB1_139
.LBB1_128:                              # %sw.bb.500
                                        #   in Loop: Header=BB1_118 Depth=1
	movq	%r13, %r15
	shlq	$4, %r15
	cmpb	$0, 257(%rsp,%r15)
	je	.LBB1_129
# BB#130:                               # %if.then.510
                                        #   in Loop: Header=BB1_118 Depth=1
	movq	640(%r12), %rax
	subq	624(%r12), %rax
	sarq	$4, %rax
	cmpq	144(%rsp), %rax         # 8-byte Folded Reload
	jl	.LBB1_131
# BB#133:                               # %if.end.523
                                        #   in Loop: Header=BB1_118 Depth=1
	movq	536(%r12), %rax
	addq	136(%rsp), %rax         # 8-byte Folded Reload
	cmpq	%rax, 520(%r12)
	jbe	.LBB1_134
# BB#135:                               # %if.then.534
                                        #   in Loop: Header=BB1_118 Depth=1
	movl	%edi, %ebp
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	ref_stack_extend
	testl	%eax, %eax
	movl	76(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	jns	.LBB1_136
	jmp	.LBB1_132
.LBB1_129:                              #   in Loop: Header=BB1_118 Depth=1
	movq	96(%rsp), %r15          # 8-byte Reload
	jmp	.LBB1_137
.LBB1_126:                              #   in Loop: Header=BB1_118 Depth=1
	movq	96(%rsp), %r15          # 8-byte Reload
	jmp	.LBB1_138
.LBB1_134:                              #   in Loop: Header=BB1_118 Depth=1
	movl	%edi, %ebp
.LBB1_136:                              # %if.end.546
                                        #   in Loop: Header=BB1_118 Depth=1
	leaq	256(%rsp,%r15), %rsi
	movq	104(%rbx), %rdx
	movq	(%r12), %rcx
	movl	$zcolor_remap_one_finish, %r8d
	movq	%r12, %rdi
	callq	zcolor_remap_one
	movq	96(%rsp), %r15          # 8-byte Reload
	movl	%ebp, %edi
.LBB1_137:                              # %sw.epilog.557
                                        #   in Loop: Header=BB1_118 Depth=1
	movq	56(%rsp), %r8           # 8-byte Reload
.LBB1_138:                              # %sw.epilog.557
                                        #   in Loop: Header=BB1_118 Depth=1
	testl	%eax, %eax
	js	.LBB1_139
# BB#117:                               # %for.cond.454
                                        #   in Loop: Header=BB1_118 Depth=1
	movq	%rax, 152(%rsp)         # 8-byte Spill
	incq	%r13
	cmpl	%edi, %r13d
	jb	.LBB1_118
.LBB1_140:                              # %if.end.597
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	112(%rsp), %rax         # 8-byte Reload
	subq	%rcx, (%rax)
	movq	%r15, %rdi
	callq	ref_stack_count
	cmpl	%eax, 92(%rsp)          # 4-byte Folded Reload
	sbbl	%eax, %eax
	andl	$1, %eax
	leal	(%rax,%rax,4), %eax
	jmp	.LBB1_141
.LBB1_101:
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	168(%rsp), %rbp         # 8-byte Reload
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	64(%rsp), %r15          # 8-byte Reload
	movq	152(%rsp), %r12         # 8-byte Reload
	jmp	.LBB1_14
.LBB1_139:                              # %if.end.588.thread320
	movq	112(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	%rax, %r12
	callq	ref_stack_count
	subl	104(%rsp), %eax         # 4-byte Folded Reload
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	ref_stack_count
	subl	92(%rsp), %eax          # 4-byte Folded Reload
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	ref_stack_pop
	movq	(%r14), %rax
	movaps	2336(%rsp), %xmm0
	movups	%xmm0, -16(%rax)
	movaps	176(%rsp), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB1_92
.LBB1_131:                              # %cleanup.577.thread
	movl	zcolor_remap_one_ostack(%rip), %eax
	movl	%eax, 688(%r12)
	movl	$-16, 76(%rsp)          # 4-byte Folded Spill
.LBB1_132:                              # %cleanup.583.thread
	movl	76(%rsp), %eax          # 4-byte Reload
	jmp	.LBB1_141
.LBB1_106:                              # %dict_real_result.exit.thread.i
	movl	$-7, %r12d
	jmp	.LBB1_92
.LBB1_108:
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	168(%rsp), %rbp         # 8-byte Reload
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	64(%rsp), %r15          # 8-byte Reload
	movq	%rax, %r12
	jmp	.LBB1_14
.Lfunc_end1:
	.size	zsethalftone5, .Lfunc_end1-zsethalftone5
	.cfi_endproc

	.align	16, 0x90
	.type	sethalftone_finish,@function
sethalftone_finish:                     # @sethalftone_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 32
.Ltmp25:
	.cfi_offset %rbx, -24
.Ltmp26:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	520(%rbx), %rax
	movq	8(%rax), %r14
	movq	200(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	$160, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	520(%rbx), %rax
.LBB2_2:                                # %if.end
	movq	(%rbx), %rdi
	movq	-8(%rax), %rsi
	movq	%r14, %rdx
	callq	gx_ht_install
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:                                 # %if.end.8
	movq	(%rbx), %rdi
	callq	gs_state_client_data
	movq	520(%rbx), %rcx
	movups	-32(%rcx), %xmm0
	movups	%xmm0, 496(%rax)
	movq	520(%rbx), %rax
	leaq	-64(%rax), %rcx
	movq	%rcx, 520(%rbx)
	movq	-8(%rax), %rbx
	movq	8(%rax), %rsi
	movq	168(%rsi), %rdi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	movq	16(%rbx), %rdi
	movl	$.L.str.19, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$14, %eax
.LBB2_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	sethalftone_finish, .Lfunc_end2-sethalftone_finish
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	spot1_dummy,@function
spot1_dummy:                            # @spot1_dummy
	.cfi_startproc
# BB#0:                                 # %entry
	addsd	%xmm1, %xmm0
	mulsd	.LCPI3_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end3:
	.size	spot1_dummy, .Lfunc_end3-spot1_dummy
	.cfi_endproc

	.align	16, 0x90
	.type	sethalftone_cleanup,@function
sethalftone_cleanup:                    # @sethalftone_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	520(%rdi), %rax
	movq	56(%rax), %rbx
	movq	72(%rax), %rsi
	movq	168(%rsi), %rdi
	movl	$.L.str.18, %edx
	callq	*24(%rdi)
	movq	16(%rbx), %rdi
	movl	$.L.str.19, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	sethalftone_cleanup, .Lfunc_end4-sethalftone_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	dict_threshold_common_params,@function
dict_threshold_common_params:           # @dict_threshold_common_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 48
.Ltmp34:
	.cfi_offset %rbx, -40
.Ltmp35:
	.cfi_offset %r12, -32
.Ltmp36:
	.cfi_offset %r14, -24
.Ltmp37:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	8(%rbx), %rcx
	movl	$-7, %eax
	testb	$32, (%rcx)
	je	.LBB5_7
# BB#1:                                 # %do.end
	movl	$.L.str.10, %esi
	movl	$1, %edx
	movl	$32767, %ecx            # imm = 0x7FFF
	movl	$-1, %r8d
	movq	%rbx, %rdi
	movq	%r15, %r9
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB5_5
# BB#2:                                 # %lor.lhs.false
	leaq	4(%r15), %r9
	movl	$.L.str.11, %esi
	movl	$1, %edx
	movl	$32767, %ecx            # imm = 0x7FFF
	movl	$-1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB5_5
# BB#3:                                 # %lor.lhs.false.6
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB5_5
# BB#4:                                 # %lor.lhs.false.10
	movl	$.L.str.9, %esi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	dict_proc_param
	testl	%eax, %eax
	js	.LBB5_5
# BB#6:                                 # %if.end.17
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r15)
	jmp	.LBB5_7
.LBB5_5:                                # %if.then.14
	testl	%eax, %eax
	movl	$-21, %ecx
	cmovnsl	%ecx, %eax
.LBB5_7:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	dict_threshold_common_params, .Lfunc_end5-dict_threshold_common_params
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"level2dict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2.sethalftone5"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0%sethalftone_finish"
	.size	.L.str.2, 21

	.type	zht2_l2_op_defs,@object # @zht2_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zht2_l2_op_defs
	.align	16
zht2_l2_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zsethalftone5
	.quad	.L.str.2
	.quad	sethalftone_finish
	.zero	16
	.size	zht2_l2_op_defs, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"HalftoneType"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	".sethalftone5"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Frequency"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Angle"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"SpotFunction"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"AccurateScreens"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"TransferFunction"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Width"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Height"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Thresholds"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Width2"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Height2"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"BitsPerSample"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ActualFrequency"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"ActualAngle"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"sethalftone_cleanup(device halftone)"
	.size	.L.str.18, 37

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"sethalftone_cleanup(halftone)"
	.size	.L.str.19, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
