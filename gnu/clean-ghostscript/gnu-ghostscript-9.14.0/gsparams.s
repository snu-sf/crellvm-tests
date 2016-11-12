	.text
	.file	"gsparams.bc"
	.globl	gs_param_list_serialize
	.align	16, 0x90
	.type	gs_param_list_serialize,@function
gs_param_list_serialize:                # @gs_param_list_serialize
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp6:
	.cfi_def_cfa_offset 400
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	movslq	%edx, %rax
	cmoveq	%r12, %rax
	leaq	(%rax,%r12), %r14
	leaq	336(%rsp), %rbx
	movq	%rbx, %rdi
	callq	param_init_enumerator
	movq	(%rbp), %rax
	leaq	320(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*24(%rax)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB0_2
# BB#1:
	movq	%r12, %r15
.LBB0_113:                              # %while.end
	testl	%eax, %eax
	js	.LBB0_118
# BB#114:                               # %do.body.i.269.preheader
	testq	%r15, %r15
	je	.LBB0_117
# BB#115:                               # %do.body.i.269.preheader
	cmpq	%r14, %r15
	jae	.LBB0_117
# BB#116:                               # %if.then.7.i.273
	movb	$0, (%r15)
.LBB0_117:                              # %if.end.9.i.275
	incl	%r13d
	movl	%r13d, %eax
	jmp	.LBB0_118
.LBB0_2:
	leaq	32(%rsp), %rbx
.LBB0_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_98 Depth 2
                                        #     Child Loop BB0_66 Depth 2
                                        #     Child Loop BB0_81 Depth 2
                                        #     Child Loop BB0_46 Depth 2
	movl	328(%rsp), %edx
	leal	1(%rdx), %ecx
	movl	$-15, %eax
	cmpl	$256, %ecx              # imm = 0x100
	ja	.LBB0_6
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	320(%rsp), %rsi
	movq	%rbx, %rdi
	callq	memcpy
	movl	328(%rsp), %eax
	movb	$0, 32(%rsp,%rax)
	movl	$-1, 312(%rsp)
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	leaq	296(%rsp), %rdx
	callq	param_read_requested_typed
	testl	%eax, %eax
	jne	.LBB0_5
# BB#7:                                 # %if.end.19
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	328(%rsp), %eax
	incl	%eax
	movq	%r14, %rbp
	.align	16, 0x90
.LBB0_8:                                # %do.body.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rcx
	movb	%al, %dl
	cmpl	$127, %eax
	ja	.LBB0_9
# BB#10:                                # %do.body.i
                                        #   in Loop: Header=BB0_8 Depth=2
	andb	$127, %dl
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=2
	orb	$-128, %dl
.LBB0_11:                               # %do.body.i
                                        #   in Loop: Header=BB0_8 Depth=2
	shrl	$7, %eax
	testq	%rcx, %rcx
	movl	$0, %r12d
	je	.LBB0_15
# BB#12:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpq	%rbp, %rcx
	jae	.LBB0_14
# BB#13:                                # %if.then.7.i
                                        #   in Loop: Header=BB0_8 Depth=2
	movb	%dl, (%rcx)
	incq	%rcx
.LBB0_14:                               # %if.end.9.i
                                        #   in Loop: Header=BB0_8 Depth=2
	movq	%rcx, %r12
.LBB0_15:                               # %if.end.9.i
                                        #   in Loop: Header=BB0_8 Depth=2
	incl	%r13d
	testl	%eax, %eax
	jne	.LBB0_8
# BB#16:                                # %wb_put_word.exit
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	312(%rsp), %eax
	.align	16, 0x90
.LBB0_17:                               # %do.body.i.41
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rcx
	movb	%al, %dl
	cmpl	$127, %eax
	ja	.LBB0_18
# BB#19:                                # %do.body.i.41
                                        #   in Loop: Header=BB0_17 Depth=2
	andb	$127, %dl
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_17 Depth=2
	orb	$-128, %dl
.LBB0_20:                               # %do.body.i.41
                                        #   in Loop: Header=BB0_17 Depth=2
	shrl	$7, %eax
	testq	%rcx, %rcx
	movl	$0, %r12d
	je	.LBB0_24
# BB#21:                                # %land.lhs.true.i.43
                                        #   in Loop: Header=BB0_17 Depth=2
	cmpq	%rbp, %rcx
	jae	.LBB0_23
# BB#22:                                # %if.then.7.i.45
                                        #   in Loop: Header=BB0_17 Depth=2
	movb	%dl, (%rcx)
	incq	%rcx
.LBB0_23:                               # %if.end.9.i.47
                                        #   in Loop: Header=BB0_17 Depth=2
	movq	%rcx, %r12
.LBB0_24:                               # %if.end.9.i.47
                                        #   in Loop: Header=BB0_17 Depth=2
	incl	%r13d
	testl	%eax, %eax
	jne	.LBB0_17
# BB#25:                                # %wb_put_word.exit48
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	328(%rsp), %r14d
	testq	%r12, %r12
	movl	$0, %r15d
	je	.LBB0_31
# BB#26:                                # %land.lhs.true.i.64
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%r14d, %eax
	incl	%eax
	movl	%eax, %ebx
	leaq	(%r12,%rbx), %rax
	cmpq	%rbp, %rax
	jbe	.LBB0_28
# BB#27:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r12, %r15
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_28:                               # %if.then.i.66
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	32(%rsp), %rsi
	cmpq	%rsi, %r12
	movq	%rsi, %r15
	je	.LBB0_30
# BB#29:                                # %if.then.4.i.69
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	%r12, %r15
.LBB0_30:                               # %if.end.i.71
                                        #   in Loop: Header=BB0_3 Depth=1
	addq	%rbx, %r15
.LBB0_31:                               # %wb_put_bytes.exit73
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rbp, %rcx
	movl	312(%rsp), %eax
	cmpq	$12, %rax
	movzbl	gs_param_type_sizes(%rax), %r12d
	movl	$-1, %ebp
	ja	.LBB0_109
# BB#32:                                # %wb_put_bytes.exit73
                                        #   in Loop: Header=BB0_3 Depth=1
	leal	1(%r14,%r13), %ebx
	movzbl	gs_param_type_base_sizes(%rax), %r13d
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_33:                               # %sw.bb
                                        #   in Loop: Header=BB0_3 Depth=1
	leal	(%rbx,%r12), %r13d
	testq	%r15, %r15
	je	.LBB0_34
# BB#35:                                # %land.lhs.true.i.82
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	(%r15,%r12), %rax
	cmpq	%rcx, %rax
	ja	.LBB0_87
# BB#36:                                # %if.then.i.84
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	296(%rsp), %rsi
	cmpq	%rsi, %r15
	movq	%rsi, %rax
	je	.LBB0_38
# BB#37:                                # %if.then.4.i.87
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%rcx, %rbx
	callq	memcpy
	movq	%rbx, %rcx
	movq	%r15, %rax
.LBB0_38:                               # %if.end.i.89
                                        #   in Loop: Header=BB0_3 Depth=1
	addq	%r12, %rax
	movq	%rax, %r15
	jmp	.LBB0_87
	.align	16, 0x90
.LBB0_39:                               # %sw.bb.36
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%r12d, %ebp
	addl	%ebx, %ebp
	testq	%r15, %r15
	movl	$0, %r14d
	je	.LBB0_45
# BB#40:                                # %land.lhs.true.i.100
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	(%r15,%r12), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_42
# BB#41:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %r14
	jmp	.LBB0_45
.LBB0_59:                               # %sw.bb.43
                                        #   in Loop: Header=BB0_3 Depth=1
	imull	304(%rsp), %r13d
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movl	%r12d, %r13d
	addl	%ebx, %r13d
	testq	%r15, %r15
	movl	$0, %ebp
	je	.LBB0_65
# BB#60:                                # %land.lhs.true.i.139
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	(%r15,%r12), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_62
# BB#61:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rbp
	jmp	.LBB0_65
.LBB0_88:                               # %sw.bb.62
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	304(%rsp), %eax
	movq	%rcx, %rbp
	movl	$wb_put_alignment.zero, %r14d
	.align	16, 0x90
.LBB0_89:                               # %do.body.i.223
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rcx
	movb	%al, %dl
	cmpl	$127, %eax
	ja	.LBB0_90
# BB#91:                                # %do.body.i.223
                                        #   in Loop: Header=BB0_89 Depth=2
	andb	$127, %dl
	jmp	.LBB0_92
	.align	16, 0x90
.LBB0_90:                               #   in Loop: Header=BB0_89 Depth=2
	orb	$-128, %dl
.LBB0_92:                               # %do.body.i.223
                                        #   in Loop: Header=BB0_89 Depth=2
	shrl	$7, %eax
	testq	%rcx, %rcx
	movl	$0, %r15d
	je	.LBB0_96
# BB#93:                                # %land.lhs.true.i.225
                                        #   in Loop: Header=BB0_89 Depth=2
	cmpq	%rbp, %rcx
	jae	.LBB0_95
# BB#94:                                # %if.then.7.i.227
                                        #   in Loop: Header=BB0_89 Depth=2
	movb	%dl, (%rcx)
	incq	%rcx
.LBB0_95:                               # %if.end.9.i.229
                                        #   in Loop: Header=BB0_89 Depth=2
	movq	%rcx, %r15
.LBB0_96:                               # %if.end.9.i.229
                                        #   in Loop: Header=BB0_89 Depth=2
	incl	%ebx
	testl	%eax, %eax
	jne	.LBB0_89
# BB#97:                                # %wb_put_word.exit230
                                        #   in Loop: Header=BB0_3 Depth=1
	testb	$7, %bl
	movq	%r15, %rdi
	je	.LBB0_101
	.align	16, 0x90
.LBB0_98:                               # %while.body.i.240
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%ebx
	testq	%rdi, %rdi
	je	.LBB0_99
# BB#105:                               # %land.lhs.true.i.i.246
                                        #   in Loop: Header=BB0_98 Depth=2
	leaq	1(%rdi), %rax
	cmpq	%rbp, %rax
	ja	.LBB0_100
# BB#106:                               # %if.then.i.i.248
                                        #   in Loop: Header=BB0_98 Depth=2
	cmpq	%r14, %rdi
	movl	$wb_put_alignment.zero, %eax
	je	.LBB0_108
# BB#107:                               # %if.then.4.i.i.252
                                        #   in Loop: Header=BB0_98 Depth=2
	movl	$wb_put_alignment.zero, %esi
	movl	$1, %edx
	callq	memcpy
	movq	%r15, %rax
.LBB0_108:                              # %if.end.i.i.255
                                        #   in Loop: Header=BB0_98 Depth=2
	incq	%rax
	movq	%rax, %r15
	movq	%rax, %rdi
	jmp	.LBB0_100
	.align	16, 0x90
.LBB0_99:                               #   in Loop: Header=BB0_98 Depth=2
	xorl	%edi, %edi
.LBB0_100:                              # %while.cond.backedge.i.243
                                        #   in Loop: Header=BB0_98 Depth=2
	testb	$7, %bl
	jne	.LBB0_98
.LBB0_101:                              # %wb_put_alignment.exit256
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	296(%rsp), %rdi
	movl	%ebp, %edx
	movq	%rbp, %r14
	subl	%r15d, %edx
	testq	%r15, %r15
	movl	$0, %eax
	cmovel	%eax, %edx
	movq	%r15, %rsi
	callq	gs_param_list_serialize
	movl	%eax, %ebp
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movq	320(%rsp), %rsi
	movq	%rdi, %r12
	leaq	296(%rsp), %rdx
	callq	*16(%rax)
	testl	%ebp, %ebp
	js	.LBB0_109
# BB#102:                               # %if.else
                                        #   in Loop: Header=BB0_3 Depth=1
	je	.LBB0_111
# BB#103:                               # %if.then.88
                                        #   in Loop: Header=BB0_3 Depth=1
	leal	(%rbx,%rbp), %ebx
	testq	%r15, %r15
	je	.LBB0_104
# BB#110:                               # %land.lhs.true.i.54
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%ebp, %ecx
	leaq	(%rcx,%r15), %rcx
	cmpq	%r14, %rcx
	cmovbeq	%rcx, %r15
	jmp	.LBB0_111
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB0_87
.LBB0_42:                               # %if.then.i.102
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	296(%rsp), %rsi
	cmpq	%rsi, %r15
	movq	%rsi, %r14
	je	.LBB0_44
# BB#43:                                # %if.then.4.i.105
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%rcx, %rbx
	callq	memcpy
	movq	%rbx, %rcx
	movq	%r15, %r14
.LBB0_44:                               # %if.end.i.107
                                        #   in Loop: Header=BB0_3 Depth=1
	addq	%r12, %r14
.LBB0_45:                               # %wb_put_bytes.exit109
                                        #   in Loop: Header=BB0_3 Depth=1
	leal	-1(%r13), %r15d
	testl	%ebp, %r15d
	movq	%r14, %rdi
	movl	$wb_put_alignment.zero, %r12d
	je	.LBB0_49
	.align	16, 0x90
.LBB0_46:                               # %while.body.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%ebp
	testq	%rdi, %rdi
	je	.LBB0_47
# BB#51:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB0_46 Depth=2
	leaq	1(%rdi), %rax
	cmpq	%rcx, %rax
	ja	.LBB0_48
# BB#52:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_46 Depth=2
	cmpq	%r12, %rdi
	movl	$wb_put_alignment.zero, %eax
	je	.LBB0_54
# BB#53:                                # %if.then.4.i.i
                                        #   in Loop: Header=BB0_46 Depth=2
	movl	$wb_put_alignment.zero, %esi
	movl	$1, %edx
	movq	%rcx, %rbx
	callq	memcpy
	movq	%rbx, %rcx
	movq	%r14, %rax
.LBB0_54:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_46 Depth=2
	incq	%rax
	movq	%rax, %r14
	movq	%rax, %rdi
	jmp	.LBB0_48
	.align	16, 0x90
.LBB0_47:                               #   in Loop: Header=BB0_46 Depth=2
	xorl	%edi, %edi
.LBB0_48:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB0_46 Depth=2
	testl	%r15d, %ebp
	jne	.LBB0_46
.LBB0_49:                               # %wb_put_alignment.exit
                                        #   in Loop: Header=BB0_3 Depth=1
	imull	304(%rsp), %r13d
	movq	%r13, %rax
	leal	(%rbp,%rax), %r13d
	testq	%r14, %r14
	je	.LBB0_50
# BB#55:                                # %land.lhs.true.i.121
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, %edx
	leaq	(%r14,%rdx), %r15
	cmpq	%rcx, %r15
	jbe	.LBB0_57
# BB#56:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r14, %r15
	jmp	.LBB0_87
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB0_87
.LBB0_57:                               # %if.then.i.123
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	296(%rsp), %rsi
	cmpq	%rsi, %r14
	je	.LBB0_87
# BB#58:                                # %if.then.4.i.126
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%r14, %rdi
	movq	%rcx, %rbx
	callq	memcpy
	movq	%rbx, %rcx
	jmp	.LBB0_87
.LBB0_62:                               # %if.then.i.141
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	296(%rsp), %rsi
	cmpq	%rsi, %r15
	movq	%rsi, %rbp
	je	.LBB0_64
# BB#63:                                # %if.then.4.i.144
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%rcx, %rbx
	callq	memcpy
	movq	%rbx, %rcx
	movq	%r15, %rbp
.LBB0_64:                               # %if.end.i.146
                                        #   in Loop: Header=BB0_3 Depth=1
	addq	%r12, %rbp
.LBB0_65:                               # %wb_put_bytes.exit148
                                        #   in Loop: Header=BB0_3 Depth=1
	testb	$7, %r13b
	movq	%rbp, %rdi
	movl	$wb_put_alignment.zero, %r14d
	je	.LBB0_69
	.align	16, 0x90
.LBB0_66:                               # %while.body.i.158
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%r13d
	testq	%rdi, %rdi
	je	.LBB0_67
# BB#72:                                # %land.lhs.true.i.i.164
                                        #   in Loop: Header=BB0_66 Depth=2
	leaq	1(%rdi), %rax
	cmpq	%rcx, %rax
	ja	.LBB0_68
# BB#73:                                # %if.then.i.i.166
                                        #   in Loop: Header=BB0_66 Depth=2
	cmpq	%r14, %rdi
	movl	$wb_put_alignment.zero, %eax
	je	.LBB0_75
# BB#74:                                # %if.then.4.i.i.170
                                        #   in Loop: Header=BB0_66 Depth=2
	movl	$wb_put_alignment.zero, %esi
	movl	$1, %edx
	movq	%rcx, %rbx
	callq	memcpy
	movq	%rbx, %rcx
	movq	%rbp, %rax
.LBB0_75:                               # %if.end.i.i.173
                                        #   in Loop: Header=BB0_66 Depth=2
	incq	%rax
	movq	%rax, %rbp
	movq	%rax, %rdi
	jmp	.LBB0_68
	.align	16, 0x90
.LBB0_67:                               #   in Loop: Header=BB0_66 Depth=2
	xorl	%edi, %edi
.LBB0_68:                               # %while.cond.backedge.i.161
                                        #   in Loop: Header=BB0_66 Depth=2
	testb	$7, %r13b
	jne	.LBB0_66
.LBB0_69:                               # %wb_put_alignment.exit174
                                        #   in Loop: Header=BB0_3 Depth=1
	testq	%rbp, %rbp
	movl	$0, %ebx
	je	.LBB0_78
# BB#70:                                # %land.lhs.true.i.183
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %edx
	leaq	(%rbp,%rdx), %rbx
	cmpq	%rcx, %rbx
	jbe	.LBB0_76
# BB#71:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rbp, %rbx
	jmp	.LBB0_78
.LBB0_76:                               # %if.then.i.185
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	296(%rsp), %rsi
	cmpq	%rsi, %rbp
	je	.LBB0_78
# BB#77:                                # %if.then.4.i.188
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rbp, %rdi
	movq	%rcx, %rbp
	callq	memcpy
	movq	%rbp, %rcx
.LBB0_78:                               # %wb_put_bytes.exit192
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	addl	%eax, %r13d
	movl	304(%rsp), %ebp
	testl	%ebp, %ebp
	jle	.LBB0_79
# BB#80:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	296(%rsp), %r14
	incl	%ebp
	.align	16, 0x90
.LBB0_81:                               # %for.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r14), %r12d
	testq	%rbx, %rbx
	movl	$0, %r15d
	je	.LBB0_86
# BB#82:                                # %land.lhs.true.i.201
                                        #   in Loop: Header=BB0_81 Depth=2
	leaq	(%rbx,%r12), %r15
	cmpq	%rcx, %r15
	jbe	.LBB0_84
# BB#83:                                #   in Loop: Header=BB0_81 Depth=2
	movq	%rbx, %r15
	jmp	.LBB0_86
	.align	16, 0x90
.LBB0_84:                               # %if.then.i.203
                                        #   in Loop: Header=BB0_81 Depth=2
	movq	(%r14), %rsi
	cmpq	%rsi, %rbx
	je	.LBB0_86
# BB#85:                                # %if.then.4.i.206
                                        #   in Loop: Header=BB0_81 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%rcx, %rbx
	callq	memcpy
	movq	%rbx, %rcx
	.align	16, 0x90
.LBB0_86:                               # %wb_put_bytes.exit210
                                        #   in Loop: Header=BB0_81 Depth=2
	leal	(%r13,%r12), %r13d
	decl	%ebp
	addq	$16, %r14
	cmpl	$1, %ebp
	movq	%r15, %rbx
	jg	.LBB0_81
	jmp	.LBB0_87
.LBB0_79:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rbx, %r15
	.align	16, 0x90
.LBB0_87:                               # %cleanup.thread401
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rcx, %r14
	movq	24(%rsp), %rbp          # 8-byte Reload
.LBB0_112:                              # %while.cond.backedge
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	(%rbp), %rax
	movq	%rbp, %rdi
	leaq	336(%rsp), %rsi
	leaq	320(%rsp), %rdx
	callq	*24(%rax)
	testl	%eax, %eax
	movq	%r15, %r12
	leaq	32(%rsp), %rbx
	je	.LBB0_3
	jmp	.LBB0_113
.LBB0_104:                              #   in Loop: Header=BB0_3 Depth=1
	xorl	%r15d, %r15d
.LBB0_111:                              # %cleanup
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%r12, %rbp
	testl	%eax, %eax
	movl	%ebx, %r13d
	jns	.LBB0_112
	jmp	.LBB0_118
.LBB0_109:                              # %while.end.thread
	movl	%ebp, %eax
.LBB0_118:                              # %if.end.103
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:                                # %if.then.12
	movl	$-1, %ecx
	cmovgl	%ecx, %eax
.LBB0_6:                                # %cleanup.thread
	movq	%r12, %r15
	jmp	.LBB0_113
.Lfunc_end0:
	.size	gs_param_list_serialize, .Lfunc_end0-gs_param_list_serialize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_33
	.quad	.LBB0_33
	.quad	.LBB0_33
	.quad	.LBB0_33
	.quad	.LBB0_33
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_59
	.quad	.LBB0_59
	.quad	.LBB0_88
	.quad	.LBB0_88

	.text
	.globl	gs_param_list_unserialize
	.align	16, 0x90
	.type	gs_param_list_unserialize,@function
gs_param_list_unserialize:              # @gs_param_list_unserialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 112
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	leaq	32(%rsp), %r15
	movq	%rsi, %rbp
.LBB1_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #     Child Loop BB1_5 Depth 2
                                        #     Child Loop BB1_14 Depth 2
                                        #     Child Loop BB1_13 Depth 2
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movq	%rbp, %rbx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_2:                                # %do.body.i
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %edx
	incq	%rbx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %eax
	addl	$7, %ecx
	testb	$-128, %dl
	jne	.LBB1_2
# BB#3:                                 # %buf_get_word.exit
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%r12d, %r12d
	testl	%eax, %eax
	movl	$0, %ecx
	je	.LBB1_4
	.align	16, 0x90
.LBB1_5:                                # %do.body.i.49
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %edx
	incq	%rbx
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %r12d
	addl	$7, %ecx
	testb	$-128, %dl
	jne	.LBB1_5
# BB#6:                                 # %buf_get_word.exit50
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, %eax
	leaq	(%rax,%rbx), %rbp
	movl	%r12d, %r13d
	movzbl	gs_param_type_sizes(%r13), %r14d
	movl	%r12d, 48(%rsp)
	leal	-11(%r12), %eax
	cmpl	$2, %eax
	jb	.LBB1_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %rbp
.LBB1_8:                                # %if.end.15
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$-1, %r15d
	cmpl	$12, %r12d
	ja	.LBB1_16
# BB#9:                                 # %if.end.15
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	gs_param_type_base_sizes(%r13), %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	leaq	32(%rsp), %r15
	jmpq	*.LJTI1_0(,%r13,8)
.LBB1_10:                               # %sw.bb.16
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	-1(%rdx), %eax
	movl	%ebp, %ecx
	andl	%eax, %ecx
	negl	%ecx
	andl	%eax, %ecx
	addq	%rbp, %rcx
	movq	%rcx, 32(%rsp)
	movl	$0, 44(%rsp)
	imull	40(%rsp), %edx
	addq	%rcx, %rdx
	movq	%rdx, %rbp
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_14:                               # %do.body.i.78
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %edx
	incq	%rbp
	movl	%edx, %esi
	andl	$127, %esi
	shll	%cl, %esi
	orl	%esi, %eax
	addl	$7, %ecx
	testb	$-128, %dl
	jne	.LBB1_14
# BB#15:                                # %buf_get_word.exit79
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, 40(%rsp)
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	(%r13), %rax
	cmpl	$12, %r12d
	sete	%cl
	movzbl	%cl, %ecx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*8(%rax)
	movq	%r15, %r12
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_16
# BB#17:                                # %if.end.62
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ebp, %r14d
	negl	%r14d
	andl	$7, %r14d
	addq	%rbp, %r14
	movq	32(%rsp), %rdi
	movq	%r14, %rsi
	callq	gs_param_list_unserialize
	movl	%eax, %r15d
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*16(%rax)
	testl	%r15d, %r15d
	js	.LBB1_18
# BB#19:                                # %if.then.73
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movslq	%r15d, %rax
	addq	%rax, %r14
	movq	%r14, %rbp
	movq	%r12, %r15
	jmp	.LBB1_20
.LBB1_11:                               # %sw.bb.24
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%ebp, %eax
	negl	%eax
	andl	$7, %eax
	addq	%rbp, %rax
	movq	%rax, 32(%rsp)
	movl	$0, 44(%rsp)
	movl	40(%rsp), %ecx
	imull	%ecx, %edx
	leaq	(%rdx,%rax), %rbp
	testl	%ecx, %ecx
	jle	.LBB1_20
# BB#12:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	incl	%ecx
	.align	16, 0x90
.LBB1_13:                               # %for.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, (%rax)
	movl	$0, 12(%rax)
	movl	8(%rax), %edx
	addq	%rdx, %rbp
	decl	%ecx
	addq	$16, %rax
	cmpl	$1, %ecx
	jg	.LBB1_13
	.align	16, 0x90
.LBB1_20:                               # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	js	.LBB1_21
# BB#22:                                # %if.end.80
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	48(%rsp), %ecx
	addl	$-11, %ecx
	cmpl	$1, %ecx
	jbe	.LBB1_1
# BB#23:                                # %cleanup
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jns	.LBB1_1
# BB#24:
	xorl	%edx, %edx
	movq	8(%rsp), %rcx           # 8-byte Reload
	jmp	.LBB1_25
.LBB1_4:
	movq	%rbx, %rbp
	movl	28(%rsp), %r15d         # 4-byte Reload
	jmp	.LBB1_16
.LBB1_21:
	movl	%eax, %r15d
.LBB1_16:
	movq	8(%rsp), %rcx           # 8-byte Reload
	testl	%r15d, %r15d
	setns	%dl
	movl	%r15d, %eax
.LBB1_25:                               # %do.end
	subl	%ecx, %ebp
	testb	%dl, %dl
	cmovel	%eax, %ebp
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_18:
	movq	%r14, %rbp
	jmp	.LBB1_16
.Lfunc_end1:
	.size	gs_param_list_unserialize, .Lfunc_end1-gs_param_list_unserialize
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_20
	.quad	.LBB1_20
	.quad	.LBB1_20
	.quad	.LBB1_20
	.quad	.LBB1_20
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_10
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_14
	.quad	.LBB1_14

	.type	wb_put_alignment.zero,@object # @wb_put_alignment.zero
wb_put_alignment.zero:
	.byte	0                       # 0x0
	.size	wb_put_alignment.zero, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
