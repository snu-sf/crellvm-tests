	.text
	.file	"pclgen.bc"
	.globl	pcl3_levels_to_planes
	.align	16, 0x90
	.type	pcl3_levels_to_planes,@function
pcl3_levels_to_planes:                  # @pcl3_levels_to_planes
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %ecx
	xorl	%eax, %eax
	movl	$1, %edx
	cmpl	$2, %edi
	jb	.LBB0_2
	.align	16, 0x90
.LBB0_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addq	%rdx, %rdx
	incl	%eax
	cmpq	%rcx, %rdx
	jb	.LBB0_1
.LBB0_2:                                # %while.end
	retq
.Lfunc_end0:
	.size	pcl3_levels_to_planes, .Lfunc_end0-pcl3_levels_to_planes
	.cfi_endproc

	.globl	pcl3_init_file
	.align	16, 0x90
	.type	pcl3_init_file,@function
pcl3_init_file:                         # @pcl3_init_file
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
	subq	$40, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 96
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
	movq	%rsi, %r13
	cmpl	$4, (%r13)
	sete	%al
	testq	%rdi, %rdi
	je	.LBB1_2
# BB#1:                                 # %entry
	testq	%r13, %r13
	je	.LBB1_2
# BB#4:                                 # %if.else
	movl	96(%r13), %ecx
	cmpq	$4, %rcx
	jbe	.LBB1_5
# BB#10:                                # %sw.default
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	100(%r13), %ecx
	testl	%ecx, %ecx
	sete	%dl
	jmp	.LBB1_11
.LBB1_2:                                # %if.then
	movq	stderr(%rip), %rsi
	movl	$.L.str, %edi
	jmp	.LBB1_3
.LBB1_5:                                # %if.else
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_6:                                # %sw.bb
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	100(%r13), %ecx
	cmpl	$1, %ecx
	setne	%dl
	jmp	.LBB1_11
.LBB1_8:                                # %sw.bb.11
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	100(%r13), %ecx
	cmpl	$3, %ecx
	setne	%dl
	jmp	.LBB1_11
.LBB1_9:                                # %sw.bb.15
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	100(%r13), %ecx
	cmpl	$4, %ecx
	setne	%dl
.LBB1_11:                               # %sw.epilog
	movzbl	%dl, %r14d
	movzbl	%al, %r15d
	testl	%r14d, %r14d
	je	.LBB1_13
# BB#12:                                # %if.then.23
	movq	stderr(%rip), %rsi
	movl	$.L.str.1, %edi
	callq	fputs
	xorl	%r12d, %r12d
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
	xorl	%ebx, %ebx
	jmp	.LBB1_42
.LBB1_13:                               # %if.else.25
	movq	104(%r13), %rax
	leaq	112(%r13), %r12
	testq	%rax, %rax
	cmovneq	%rax, %r12
	movl	4(%r12), %eax
	movl	%eax, 176(%r13)
	testl	%ecx, %ecx
	je	.LBB1_14
# BB#15:                                # %for.body.preheader
	movl	%r15d, 32(%rsp)         # 4-byte Spill
	leaq	8(%r12), %rbx
	movq	%r12, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB1_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbx), %ecx
	movl	-4(%rbx), %eax
	testl	%ecx, %ecx
	je	.LBB1_17
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_16 Depth=1
	xorl	%r8d, %r8d
	testl	%eax, %eax
	je	.LBB1_19
# BB#20:                                # %if.else.51
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpl	176(%r13), %eax
	jae	.LBB1_22
# BB#21:                                # %if.then.58
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	%eax, 176(%r13)
.LBB1_22:                               # %if.end.63
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpl	%r15d, %ecx
	cmoval	%ecx, %r15d
	cmpl	%r12d, %eax
	cmoval	%eax, %r12d
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_16 Depth=1
	movl	%eax, %r8d
.LBB1_19:                               # %if.then.43
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	fprintf
	movl	$1, %r14d
.LBB1_23:                               # %if.end.84
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	(%rbx), %ecx
	leal	-2(%rcx), %eax
	cmpl	$65534, %eax            # imm = 0xFFFE
	jb	.LBB1_25
# BB#24:                                # %if.then.95
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	fprintf
	movl	$1, %r14d
.LBB1_25:                               # %for.inc
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	100(%r13), %eax
	addq	$12, %rbx
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB1_16
# BB#26:                                # %for.end
	movl	%r15d, 36(%rsp)         # 4-byte Spill
	testl	%r14d, %r14d
	movl	32(%rsp), %r15d         # 4-byte Reload
	jne	.LBB1_27
# BB#28:                                # %for.cond.103.preheader
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB1_27
# BB#29:                                # %for.body.107.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	8(%rax), %r15
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	movl	%r12d, %ebx
	.align	16, 0x90
.LBB1_30:                               # %for.body.107
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %r12d
	movl	-8(%r15), %r8d
	cmpl	%r8d, 36(%rsp)          # 4-byte Folded Reload
	jne	.LBB1_33
# BB#31:                                # %lor.lhs.false.113
                                        #   in Loop: Header=BB1_30 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
	cmpl	-4(%r15), %eax
	jne	.LBB1_33
# BB#32:                                # %lor.lhs.false.119
                                        #   in Loop: Header=BB1_30 Depth=1
	cmpl	$3, (%r15)
	jb	.LBB1_34
	.align	16, 0x90
.LBB1_33:                               # %if.then.125
                                        #   in Loop: Header=BB1_30 Depth=1
	movl	$1, 32(%rsp)            # 4-byte Folded Spill
.LBB1_34:                               # %if.end.126
                                        #   in Loop: Header=BB1_30 Depth=1
	movl	-4(%r15), %ecx
	movl	176(%r13), %ebx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%ebx
	testl	%edx, %edx
	je	.LBB1_36
# BB#35:                                # %if.then.133
                                        #   in Loop: Header=BB1_30 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	movl	%ebx, %r8d
	callq	fprintf
	movl	-8(%r15), %r8d
	movl	$1, %r14d
.LBB1_36:                               # %if.end.139
                                        #   in Loop: Header=BB1_30 Depth=1
	xorl	%edx, %edx
	movl	36(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	divl	%r8d
	testl	%edx, %edx
	je	.LBB1_38
# BB#37:                                # %if.then.146
                                        #   in Loop: Header=BB1_30 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	movl	%ebp, %ecx
	callq	fprintf
	movl	$1, %r14d
.LBB1_38:                               # %if.end.151
                                        #   in Loop: Header=BB1_30 Depth=1
	movl	-4(%r15), %r8d
	xorl	%edx, %edx
	movl	%r12d, %ebx
	movl	%ebx, %eax
	divl	%r8d
	testl	%edx, %edx
	je	.LBB1_40
# BB#39:                                # %if.then.158
                                        #   in Loop: Header=BB1_30 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	movl	%ebp, %ecx
	callq	fprintf
	movl	$1, %r14d
.LBB1_40:                               # %for.inc.164
                                        #   in Loop: Header=BB1_30 Depth=1
	addq	$12, %r15
	incl	%ebp
	cmpl	100(%r13), %ebp
	jb	.LBB1_30
# BB#41:
	movq	16(%rsp), %r12          # 8-byte Reload
	movl	32(%rsp), %r15d         # 4-byte Reload
	jmp	.LBB1_42
.LBB1_27:
	movl	%r12d, %ebx
	movq	16(%rsp), %r12          # 8-byte Reload
	jmp	.LBB1_42
.LBB1_14:
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
.LBB1_42:                               # %if.end.168
	testl	%r15d, %r15d
	je	.LBB1_50
# BB#43:                                # %land.lhs.true
	cmpl	$4, 96(%r13)
	jne	.LBB1_48
# BB#44:                                # %if.then.173
	movq	stderr(%rip), %rsi
	cmpl	$4, (%r13)
	jne	.LBB1_46
# BB#45:                                # %if.then.177
	movl	$.L.str.7, %edi
	jmp	.LBB1_47
.LBB1_46:                               # %if.else.179
	movl	$.L.str.8, %edi
.LBB1_47:                               # %land.lhs.true.184
	callq	fputs
	movl	$1, %r14d
.LBB1_48:                               # %land.lhs.true.184
	cmpl	$2, (%r13)
	ja	.LBB1_50
# BB#49:                                # %if.then.188
	movq	stderr(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movl	$1, %r14d
.LBB1_50:                               # %if.end.190
	cmpl	$5, 96(%r13)
	jne	.LBB1_53
# BB#51:                                # %if.then.194
	movl	$1, %r15d
	cmpl	$2, (%r13)
	ja	.LBB1_53
# BB#52:                                # %if.then.198
	movq	stderr(%rip), %rsi
	movl	$.L.str.10, %edi
	callq	fputs
	movl	$1, %r15d
	movl	$1, %r14d
.LBB1_53:                               # %if.end.201
	movl	%ebx, %eax
	orl	36(%rsp), %eax          # 4-byte Folded Reload
	cmpl	$65536, %eax            # imm = 0x10000
	jb	.LBB1_56
# BB#54:                                # %if.end.201
	testl	%r15d, %r15d
	je	.LBB1_56
# BB#55:                                # %if.then.209
	movq	stderr(%rip), %rsi
	movl	$.L.str.11, %edi
	callq	fputs
	movl	$1, %r14d
.LBB1_56:                               # %if.end.211
	cmpl	$0, 160(%r13)
	je	.LBB1_59
# BB#57:                                # %land.lhs.true.213
	cmpl	$3, 96(%r13)
	je	.LBB1_59
# BB#58:                                # %if.then.217
	movq	stderr(%rip), %rsi
	movl	$.L.str.12, %edi
	callq	fputs
	movl	$1, %r14d
.LBB1_59:                               # %if.end.219
	movq	8(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB1_70
# BB#60:
	movq	%rdi, %rax
	jmp	.LBB1_61
	.align	16, 0x90
.LBB1_65:                               # %while.body
                                        #   in Loop: Header=BB1_61 Depth=1
	incq	%rax
.LBB1_61:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	cmpl	$9, %edx
	je	.LBB1_65
# BB#62:                                # %while.cond
                                        #   in Loop: Header=BB1_61 Depth=1
	testb	%dl, %dl
	je	.LBB1_68
# BB#63:                                # %lor.rhs.230
                                        #   in Loop: Header=BB1_61 Depth=1
	cmpl	$32, %edx
	jb	.LBB1_66
# BB#64:                                # %lor.rhs.230
                                        #   in Loop: Header=BB1_61 Depth=1
	movzbl	%dl, %ecx
	cmpl	$34, %ecx
	jne	.LBB1_65
.LBB1_66:                               # %while.end
	testb	%dl, %dl
	je	.LBB1_68
# BB#67:                                # %if.then.244
	movq	stderr(%rip), %rdi
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	8(%r13), %rdi
	movl	$1, %r14d
.LBB1_68:                               # %if.end.247
	callq	strlen
	cmpq	$81, %rax
	jb	.LBB1_70
# BB#69:                                # %if.then.252
	movq	stderr(%rip), %rsi
	movl	$.L.str.14, %edi
	callq	fputs
	movl	$1, %r14d
.LBB1_70:                               # %if.end.255
	movq	16(%r13), %rax
	testq	%rax, %rax
	je	.LBB1_79
# BB#71:                                # %if.then.258
	movl	%ebx, %ebp
	movb	(%rax), %sil
	movb	%sil, %dl
	andb	$-33, %dl
	addb	$-65, %dl
	movzbl	%dl, %edx
	cmpl	$25, %edx
	movb	%sil, %cl
	ja	.LBB1_75
# BB#72:                                # %do.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB1_73:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rax), %cl
	movb	%cl, %dl
	andb	$-33, %dl
	addb	$-65, %dl
	movb	%cl, %bl
	addb	$-48, %bl
	movzbl	%bl, %edi
	incq	%rax
	cmpl	$10, %edi
	jb	.LBB1_73
# BB#74:                                # %do.body
                                        #   in Loop: Header=BB1_73 Depth=1
	movzbl	%dl, %edx
	cmpl	$26, %edx
	jb	.LBB1_73
.LBB1_75:                               # %if.end.304
	testb	%sil, %sil
	je	.LBB1_76
# BB#77:                                # %if.else.311
	testb	%cl, %cl
	movl	%ebp, %ebx
	je	.LBB1_79
# BB#78:                                # %if.then.315
	movsbl	%cl, %edx
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %eax
	jmp	.LBB1_143
.LBB1_79:                               # %if.end.321
	movl	$1, %eax
	testl	%r14d, %r14d
	jne	.LBB1_143
# BB#80:                                # %for.cond.325.preheader
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	cmpl	$0, 4(%r13)
	movq	24(%rsp), %r14          # 8-byte Reload
	jle	.LBB1_83
# BB#81:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_82:                               # %for.body.328
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	fputc
	incl	%ebx
	cmpl	4(%r13), %ebx
	jl	.LBB1_82
.LBB1_83:                               # %for.end.332
	cmpq	$0, 8(%r13)
	jne	.LBB1_85
# BB#84:                                # %lor.lhs.false.336
	cmpq	$0, 16(%r13)
	je	.LBB1_91
.LBB1_85:                               # %if.then.340
	movl	$.L.str.17, %edi
	movq	%r14, %rsi
	callq	fputs
	cmpq	$0, 8(%r13)
	je	.LBB1_89
# BB#86:                                # %if.then.345
	movl	$.L.str.18, %edi
	movq	%r14, %rsi
	callq	fputs
	movq	8(%r13), %rdx
	cmpb	$0, (%rdx)
	je	.LBB1_88
# BB#87:                                # %if.then.351
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_88:                               # %if.end.354
	movl	$10, %edi
	movq	%r14, %rsi
	callq	fputc
.LBB1_89:                               # %if.end.356
	movq	16(%r13), %rdx
	testq	%rdx, %rdx
	je	.LBB1_91
# BB#90:                                # %if.then.360
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_91:                               # %if.end.364
	movl	$.L.str.21, %edi
	movq	%r14, %rsi
	callq	fputs
	movslq	32(%r13), %rdx
	testq	%rdx, %rdx
	jle	.LBB1_93
# BB#92:                                # %if.then.368
	movq	24(%r13), %rdi
	movl	$1, %esi
	movq	%r14, %rcx
	callq	fwrite
.LBB1_93:                               # %if.end.374
	movl	56(%r13), %edx
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	64(%r13), %edx
	testl	%edx, %edx
	je	.LBB1_95
# BB#94:                                # %if.end.381
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cmpl	$2, 64(%r13)
	je	.LBB1_97
.LBB1_95:                               # %land.lhs.true.385
	cmpl	$0, 76(%r13)
	je	.LBB1_97
# BB#96:                                # %if.then.387
	movl	$.L.str.24, %edi
	movq	%r14, %rsi
	callq	fputs
.LBB1_97:                               # %if.end.389
	movl	68(%r13), %edx
	testl	%edx, %edx
	je	.LBB1_99
# BB#98:                                # %if.then.392
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_99:                               # %if.end.395
	movl	72(%r13), %edx
	cmpl	$-1, %edx
	je	.LBB1_101
# BB#100:                               # %if.then.398
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_101:                              # %if.end.401
	cmpl	$2, (%r13)
	ja	.LBB1_106
# BB#102:                               # %if.then.405
	movl	92(%r13), %edx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cmpl	$0, (%r13)
	je	.LBB1_104
# BB#103:                               # %if.then.410
	movl	88(%r13), %edx
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_104:                              # %if.end.412
	movl	84(%r13), %edx
	testl	%edx, %edx
	je	.LBB1_107
# BB#105:                               # %if.then.415
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	jmp	.LBB1_107
.LBB1_76:                               # %if.then.309
	movq	stderr(%rip), %rsi
	movl	$.L.str.15, %edi
.LBB1_3:                                # %cleanup.567
	callq	fputs
	movl	$1, %eax
.LBB1_143:                              # %cleanup.567
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_106:                              # %if.else.419
	movl	60(%r13), %edx
	movl	80(%r13), %ecx
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_107:                              # %if.end.421
	movl	164(%r13), %edx
	testl	%edx, %edx
	js	.LBB1_109
# BB#108:                               # %if.then.424
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_109:                              # %if.end.427
	movl	(%r13), %ebx
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
	callq	fputs
	cmpl	$1, %ebx
	jne	.LBB1_110
# BB#112:                               # %if.then.3.i
	movl	$.L.str.50, %edi
	movq	%r14, %rsi
	callq	fputs
	jmp	.LBB1_115
.LBB1_110:                              # %if.end.427
	testl	%ebx, %ebx
	jne	.LBB1_113
# BB#111:                               # %if.then.i
	movl	$66, %edi
	jmp	.LBB1_114
.LBB1_113:                              # %if.else.5.i
	movl	$67, %edi
.LBB1_114:                              # %send_ERG.exit
	movq	%r14, %rsi
	callq	fputc
.LBB1_115:                              # %send_ERG.exit
	movl	32(%rsp), %ebx          # 4-byte Reload
	cmpl	$4, (%r13)
	je	.LBB1_117
# BB#116:                               # %if.end.436
	movl	36(%rsp), %eax          # 4-byte Reload
	cmpl	%ebx, %eax
	movl	%eax, %edx
	cmovbl	%ebx, %edx
	movl	$.L.str.32, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cmpl	$3, (%r13)
	jb	.LBB1_118
.LBB1_117:                              # %if.end.448
	movl	36(%rsp), %edx          # 4-byte Reload
	cmpl	%ebx, %edx
	cmovbl	%ebx, %edx
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cmpl	$4, (%r13)
	je	.LBB1_123
.LBB1_118:                              # %land.lhs.true.452
	movl	96(%r13), %eax
	testl	%eax, %eax
	je	.LBB1_123
# BB#119:                               # %land.lhs.true.452
	movl	$3, %edx
	cmpl	$4, %eax
	je	.LBB1_122
# BB#120:                               # %land.lhs.true.452
	cmpl	$5, %eax
	je	.LBB1_123
# BB#121:                               # %cond.false.465
	xorl	%edx, %edx
	subl	100(%r13), %edx
.LBB1_122:                              # %cond.end.467
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB1_123:                              # %if.end.470
	testl	%r15d, %r15d
	je	.LBB1_127
# BB#124:                               # %if.then.472
	movl	100(%r13), %ecx
	leal	(%rcx,%rcx,2), %eax
	leal	2(%rax,%rax), %edx
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cmpl	$0, 100(%r13)
	je	.LBB1_127
# BB#125:                               # %for.body.480.preheader
	leaq	8(%r12), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_126:                              # %for.body.480
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rbx), %edx
	movl	-4(%rbx), %r8d
	movzbl	%dl, %ecx
	shrl	$8, %edx
	movzbl	%r8b, %r9d
	shrl	$8, %r8d
	movl	(%rbx), %eax
	movzbl	%al, %esi
	shrl	$8, %eax
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	addq	$12, %rbx
	incl	%ebp
	cmpl	100(%r13), %ebp
	jb	.LBB1_126
.LBB1_127:                              # %if.end.508
	movq	%r14, %rdi
	callq	ferror
	testl	%eax, %eax
	je	.LBB1_129
# BB#128:                               # %if.then.511
	movq	stderr(%rip), %rsi
	movl	$.L.str.37, %edi
	callq	fputs
	movl	$-1, %eax
	jmp	.LBB1_143
.LBB1_129:                              # %if.end.513
	movslq	48(%r13), %rdx
	testq	%rdx, %rdx
	jle	.LBB1_131
# BB#130:                               # %if.then.517
	movq	40(%r13), %rdi
	movl	$1, %esi
	movq	%r14, %rcx
	callq	fwrite
.LBB1_131:                              # %if.end.524
	movl	96(%r13), %eax
	cmpl	$4, %eax
	je	.LBB1_133
# BB#132:                               # %if.end.524
	cmpl	$2, %eax
	jne	.LBB1_134
.LBB1_133:                              # %if.then.532
	movw	$0, 174(%r13)
	jmp	.LBB1_137
.LBB1_134:                              # %if.else.533
	movl	8(%r12), %eax
	xorl	%ecx, %ecx
	cmpq	$2, %rax
	movl	$1, %edx
	jb	.LBB1_136
.LBB1_135:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addq	%rdx, %rdx
	incl	%ecx
	cmpq	%rax, %rdx
	jb	.LBB1_135
.LBB1_136:                              # %pcl3_levels_to_planes.exit
	movl	4(%r12), %eax
	xorl	%edx, %edx
	divl	176(%r13)
	imull	%ecx, %eax
	movw	%ax, 174(%r13)
.LBB1_137:                              # %if.end.544
	movw	$0, 172(%r13)
	movl	100(%r13), %r8d
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.LBB1_143
# BB#138:                               # %for.body.549.lr.ph
	movl	176(%r13), %esi
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_139:                              # %for.body.549
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_140 Depth 2
	leaq	(%rdi,%rdi,2), %rax
	movl	8(%r12,%rax,4), %edx
	cmpq	$2, %rdx
	movl	$0, %ebx
	movl	$1, %ecx
	jb	.LBB1_141
	.align	16, 0x90
.LBB1_140:                              # %while.body.i.246
                                        #   Parent Loop BB1_139 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	%rcx, %rcx
	incl	%ebx
	cmpq	%rdx, %rcx
	jb	.LBB1_140
.LBB1_141:                              # %pcl3_levels_to_planes.exit248
                                        #   in Loop: Header=BB1_139 Depth=1
	movl	4(%r12,%rax,4), %eax
	xorl	%edx, %edx
	divl	%esi
	imull	%ebx, %eax
	movzwl	%bp, %ebp
	addl	%eax, %ebp
	incq	%rdi
	cmpl	%r8d, %edi
	jb	.LBB1_139
# BB#142:                               # %for.cond.545.cleanup.567.loopexit_crit_edge
	movw	%bp, 172(%r13)
	xorl	%eax, %eax
	jmp	.LBB1_143
.Lfunc_end1:
	.size	pcl3_init_file, .Lfunc_end1-pcl3_init_file
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_6
	.quad	.LBB1_6
	.quad	.LBB1_8
	.quad	.LBB1_9
	.quad	.LBB1_8

	.text
	.globl	pcl3_begin_page
	.align	16, 0x90
	.type	pcl3_begin_page,@function
pcl3_begin_page:                        # @pcl3_begin_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movl	$.L.str.38, %edi
	movq	%rax, %rsi
	callq	fputs
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end2:
	.size	pcl3_begin_page, .Lfunc_end2-pcl3_begin_page
	.cfi_endproc

	.globl	pcl3_begin_raster
	.align	16, 0x90
	.type	pcl3_begin_raster,@function
pcl3_begin_raster:                      # @pcl3_begin_raster
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 96
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB3_25
# BB#1:                                 # %lor.lhs.false
	movq	8(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB3_25
# BB#2:                                 # %lor.lhs.false.3
	movq	24(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_25
# BB#3:                                 # %lor.lhs.false.5
	cmpq	$0, 32(%rbx)
	je	.LBB3_25
# BB#4:                                 # %lor.end
	xorl	%edx, %edx
	cmpq	$0, 48(%rbx)
	sete	%al
	je	.LBB3_5
# BB#6:                                 # %if.then
	movzwl	172(%rbp), %eax
	testq	%rax, %rax
	je	.LBB3_11
# BB#7:                                 # %land.rhs.preheader
	addq	$8, %rcx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB3_8:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rcx)
	je	.LBB3_10
# BB#9:                                 # %lor.rhs.15
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpq	$0, -8(%rcx)
	je	.LBB3_11
.LBB3_10:                               # %for.inc
                                        #   in Loop: Header=BB3_8 Depth=1
	incq	%rdx
	addq	$16, %rcx
	cmpq	%rax, %rdx
	jl	.LBB3_8
.LBB3_11:                               # %for.end
	cmpl	%eax, %edx
	setl	%cl
	movzbl	%cl, %ecx
	jl	.LBB3_24
# BB#12:                                # %land.lhs.true
	movl	168(%rbp), %edx
	cmpl	$9, %edx
	ja	.LBB3_24
# BB#13:                                # %land.lhs.true
	movl	$552, %esi              # imm = 0x228
	btl	%edx, %esi
	jae	.LBB3_24
# BB#14:                                # %if.then.38
	movq	16(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB3_25
# BB#15:                                # %lor.rhs.41
	cmpl	$3, %edx
	jne	.LBB3_18
# BB#16:                                # %lor.end.51
	cmpq	$0, 40(%rbx)
	sete	%dl
	je	.LBB3_17
.LBB3_18:                               # %for.cond.55.preheader
	xorl	%edx, %edx
	testw	%ax, %ax
	je	.LBB3_23
# BB#19:                                # %land.rhs.60.preheader
	addq	$8, %rcx
	xorl	%edx, %edx
.LBB3_20:                               # %land.rhs.60
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rcx)
	je	.LBB3_22
# BB#21:                                # %lor.rhs.67
                                        #   in Loop: Header=BB3_20 Depth=1
	cmpq	$0, -8(%rcx)
	je	.LBB3_23
.LBB3_22:                               # %for.inc.78
                                        #   in Loop: Header=BB3_20 Depth=1
	incq	%rdx
	addq	$16, %rcx
	cmpq	%rax, %rdx
	jl	.LBB3_20
.LBB3_23:                               # %for.end.80
	cmpl	%eax, %edx
	setl	%al
	movzbl	%al, %ecx
	jmp	.LBB3_24
.LBB3_5:
	movzbl	%al, %ecx
	xorl	%ebp, %ebp
.LBB3_24:                               # %if.end.86
	testl	%ecx, %ecx
	je	.LBB3_26
.LBB3_25:                               # %if.then.88
	movq	stderr(%rip), %rsi
	movl	$.L.str.39, %edi
	callq	fputs
	movl	$1, %ebp
.LBB3_68:                               # %cleanup.216
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_26:                               # %cleanup.cont
	movzwl	172(%rbp), %edi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, 64(%rbx)
	testq	%rax, %rax
	je	.LBB3_27
# BB#28:                                # %if.end.98
	movq	%r14, (%rsp)            # 8-byte Spill
	movzwl	172(%rbp), %edx
	shlq	$3, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	168(%rbp), %eax
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	cmpl	$9, %eax
	ja	.LBB3_54
# BB#29:                                # %if.end.98
	movl	$552, %ecx              # imm = 0x228
	btl	%eax, %ecx
	jae	.LBB3_54
# BB#30:                                # %if.then.115
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	104(%rcx), %rax
	leaq	112(%rcx), %rdx
	testq	%rax, %rax
	cmovneq	%rax, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	100(%rcx), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	je	.LBB3_54
# BB#31:                                # %for.body.125.lr.ph
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	176(%rax), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB3_32:                               # %for.body.125
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_34 Depth 2
                                        #     Child Loop BB3_41 Depth 2
                                        #     Child Loop BB3_45 Depth 2
                                        #       Child Loop BB3_50 Depth 3
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,2), %rcx
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	4(%rsi,%rcx,4), %eax
	xorl	%edx, %edx
	divl	16(%rsp)                # 4-byte Folded Reload
	movl	8(%rsi,%rcx,4), %esi
	cmpq	$2, %rsi
	movl	$-1, %ecx
	movl	$1, %ebp
	jb	.LBB3_33
	.align	16, 0x90
.LBB3_34:                               # %while.body.i
                                        #   Parent Loop BB3_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %r12d
	addq	%rbp, %rbp
	leal	1(%r12), %ecx
	cmpq	%rsi, %rbp
	jb	.LBB3_34
# BB#35:                                # %pcl3_levels_to_planes.exit
                                        #   in Loop: Header=BB3_32 Depth=1
	addl	$2, %r12d
	xorl	%edx, %edx
	testl	%r12d, %r12d
	setg	%r15b
	jle	.LBB3_36
# BB#37:                                # %for.body.134.lr.ph
                                        #   in Loop: Header=BB3_32 Depth=1
	leal	-1(%rax), %ebp
	imull	%r12d, %ebp
	movslq	%ebp, %r8
	movslq	%r11d, %r14
	testb	$1, %r12b
	je	.LBB3_39
# BB#38:                                # %for.body.134.prol
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	%r14, %r9
	shlq	$4, %r9
	addq	16(%rbx), %r9
	movq	%r8, %r10
	shlq	$4, %r10
	addq	%r9, %r10
	movq	64(%rbx), %rsi
	movq	%r10, (%rsi,%r14,8)
	incq	%r14
	movl	$1, %edx
.LBB3_39:                               # %for.body.134.lr.ph.split
                                        #   in Loop: Header=BB3_32 Depth=1
	testl	%ecx, %ecx
	je	.LBB3_42
# BB#40:                                # %for.body.134.lr.ph.split.split
                                        #   in Loop: Header=BB3_32 Depth=1
	movl	%r12d, %ecx
	subl	%edx, %ecx
	.align	16, 0x90
.LBB3_41:                               # %for.body.134
                                        #   Parent Loop BB3_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rsi
	shlq	$4, %rsi
	movq	16(%rbx), %rdi
	addq	%rsi, %rdi
	movq	%r8, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rdi
	movq	64(%rbx), %rbp
	movq	%rdi, (%rbp,%r14,8)
	addq	16(%rbx), %rsi
	leaq	16(%rdx,%rsi), %rdx
	movq	64(%rbx), %rsi
	movq	%rdx, 8(%rsi,%r14,8)
	addq	$2, %r14
	addl	$-2, %ecx
	jne	.LBB3_41
.LBB3_42:                               # %for.cond.131.for.cond.146.preheader_crit_edge
                                        #   in Loop: Header=BB3_32 Depth=1
	leal	(%r11,%r12), %r11d
	jmp	.LBB3_43
.LBB3_33:                               #   in Loop: Header=BB3_32 Depth=1
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	jmp	.LBB3_43
.LBB3_36:                               #   in Loop: Header=BB3_32 Depth=1
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB3_43:                               # %for.cond.146.preheader
                                        #   in Loop: Header=BB3_32 Depth=1
	cmpl	$2, %eax
	jl	.LBB3_53
# BB#44:                                # %for.cond.150.preheader.lr.ph
                                        #   in Loop: Header=BB3_32 Depth=1
	movslq	%r12d, %r13
	movq	%r13, %rdx
	negq	%rdx
	movl	%r13d, %ebp
	andl	$1, %ebp
	shlq	$4, %r13
	negq	%r13
	movl	$1, %ecx
	.align	16, 0x90
.LBB3_45:                               # %for.cond.150.preheader
                                        #   Parent Loop BB3_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_50 Depth 3
	testb	%r15b, %r15b
	je	.LBB3_52
# BB#46:                                # %for.body.153.lr.ph
                                        #   in Loop: Header=BB3_45 Depth=2
	xorl	%r10d, %r10d
	testl	%ebp, %ebp
	movslq	%r11d, %r8
	je	.LBB3_48
# BB#47:                                # %for.body.153.prol
                                        #   in Loop: Header=BB3_45 Depth=2
	movq	%r8, %rsi
	shlq	$4, %rsi
	addq	24(%rbx), %rsi
	movq	%rdx, %rdi
	shlq	$4, %rdi
	addq	%rsi, %rdi
	movq	64(%rbx), %rsi
	movq	%rdi, (%rsi,%r8,8)
	incq	%r8
	movl	$1, %r10d
.LBB3_48:                               # %for.body.153.lr.ph.split
                                        #   in Loop: Header=BB3_45 Depth=2
	cmpl	$1, %r12d
	je	.LBB3_51
# BB#49:                                # %for.body.153.lr.ph.split.split
                                        #   in Loop: Header=BB3_45 Depth=2
	movq	%r8, %rsi
	shlq	$4, %rsi
	leaq	(%rsi,%r13), %r9
	movl	%r12d, %r14d
	subl	%r10d, %r14d
	.align	16, 0x90
.LBB3_50:                               # %for.body.153
                                        #   Parent Loop BB3_32 Depth=1
                                        #     Parent Loop BB3_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	64(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	%r9, %rdi
	movq	%rdi, (%rsi,%r8,8)
	movq	24(%rbx), %rsi
	movq	64(%rbx), %rdi
	leaq	16(%rsi,%r9), %rsi
	movq	%rsi, 8(%rdi,%r8,8)
	addq	$2, %r8
	addq	$32, %r9
	addl	$-2, %r14d
	jne	.LBB3_50
.LBB3_51:                               # %for.cond.150.for.inc.166_crit_edge
                                        #   in Loop: Header=BB3_45 Depth=2
	leal	(%r11,%r12), %r11d
.LBB3_52:                               # %for.inc.166
                                        #   in Loop: Header=BB3_45 Depth=2
	incl	%ecx
	cmpl	%eax, %ecx
	jl	.LBB3_45
.LBB3_53:                               # %for.end.168
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	incq	%rax
	cmpl	20(%rsp), %eax          # 4-byte Folded Reload
	jb	.LBB3_32
.LBB3_54:                               # %if.end.172
	movl	(%rbx), %edx
	testl	%edx, %edx
	movq	(%rsp), %r14            # 8-byte Reload
	je	.LBB3_56
# BB#55:                                # %if.then.175
	movl	$.L.str.41, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB3_56:                               # %if.end.178
	movl	$.L.str.42, %edi
	movq	%r14, %rsi
	callq	fputs
	movq	8(%rsp), %r15           # 8-byte Reload
	movl	168(%r15), %eax
	cmpl	$9, %eax
	ja	.LBB3_65
# BB#57:                                # %if.end.178
	movl	$552, %ecx              # imm = 0x228
	btl	%eax, %ecx
	jae	.LBB3_65
# BB#58:                                # %for.cond.192.preheader
	movzwl	172(%r15), %ebp
	testq	%rbp, %rbp
	je	.LBB3_65
# BB#59:                                # %for.body.197.lr.ph
	movq	16(%rbx), %rdx
	leaq	-1(%rbp), %rsi
	xorl	%ecx, %ecx
	testb	$7, %bpl
	je	.LBB3_62
# BB#60:                                # %for.body.197.prol.preheader
	leaq	8(%rdx), %rdi
	movl	%ebp, %eax
	andl	$7, %eax
	xorl	%ecx, %ecx
.LBB3_61:                               # %for.body.197.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	incq	%rcx
	addq	$16, %rdi
	cmpq	%rcx, %rax
	jne	.LBB3_61
.LBB3_62:                               # %for.body.197.lr.ph.split
	cmpq	$7, %rsi
	jb	.LBB3_65
# BB#63:                                # %for.body.197.lr.ph.split.split
	movq	%rcx, %rax
	shlq	$4, %rax
	leaq	120(%rax,%rdx), %rdx
.LBB3_64:                               # %for.body.197
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -112(%rdx)
	movl	$0, -96(%rdx)
	movl	$0, -80(%rdx)
	movl	$0, -64(%rdx)
	movl	$0, -48(%rdx)
	movl	$0, -32(%rdx)
	movl	$0, -16(%rdx)
	movl	$0, (%rdx)
	addq	$8, %rcx
	subq	$-128, %rdx
	cmpq	%rbp, %rcx
	jl	.LBB3_64
.LBB3_65:                               # %if.end.205
	movl	$.L.str.43, %edi
	movq	%r14, %rsi
	callq	fputs
	cmpl	$0, (%r15)
	je	.LBB3_66
# BB#67:                                # %if.else.213
	movl	$0, 56(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB3_68
.LBB3_27:                               # %if.then.96
	movq	stderr(%rip), %rsi
	movl	$.L.str.40, %edi
	callq	fputs
	movl	$-1, %ebp
	jmp	.LBB3_68
.LBB3_66:                               # %if.then.209
	movl	168(%r15), %edx
	xorl	%ebp, %ebp
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	168(%r15), %eax
	movl	%eax, 56(%rbx)
	jmp	.LBB3_68
.LBB3_17:
	movzbl	%dl, %ecx
	jmp	.LBB3_24
.Lfunc_end3:
	.size	pcl3_begin_raster, .Lfunc_end3-pcl3_begin_raster
	.cfi_endproc

	.globl	pcl3_skip_groups
	.align	16, 0x90
	.type	pcl3_skip_groups,@function
pcl3_skip_groups:                       # @pcl3_skip_groups
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testl	%edx, %edx
	je	.LBB4_10
# BB#1:                                 # %if.end
	movl	$.L.str.45, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	8(%rbx), %rax
	movl	168(%rax), %ecx
	cmpl	$9, %ecx
	ja	.LBB4_10
# BB#2:                                 # %if.end
	movl	$552, %edx              # imm = 0x228
	btl	%ecx, %edx
	jae	.LBB4_10
# BB#3:                                 # %for.cond.preheader
	movzwl	172(%rax), %esi
	testq	%rsi, %rsi
	je	.LBB4_10
# BB#4:                                 # %for.body.lr.ph
	movq	16(%rbx), %rdx
	leaq	-1(%rsi), %rbx
	xorl	%ecx, %ecx
	testb	$7, %sil
	je	.LBB4_7
# BB#5:                                 # %for.body.prol.preheader
	leaq	8(%rdx), %rdi
	movl	%esi, %eax
	andl	$7, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_6:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	incq	%rcx
	addq	$16, %rdi
	cmpq	%rcx, %rax
	jne	.LBB4_6
.LBB4_7:                                # %for.body.lr.ph.split
	cmpq	$7, %rbx
	jb	.LBB4_10
# BB#8:                                 # %for.body.lr.ph.split.split
	movq	%rcx, %rax
	shlq	$4, %rax
	leaq	120(%rax,%rdx), %rdx
	.align	16, 0x90
.LBB4_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -112(%rdx)
	movl	$0, -96(%rdx)
	movl	$0, -80(%rdx)
	movl	$0, -64(%rdx)
	movl	$0, -48(%rdx)
	movl	$0, -32(%rdx)
	movl	$0, -16(%rdx)
	movl	$0, (%rdx)
	addq	$8, %rcx
	subq	$-128, %rdx
	cmpq	%rsi, %rcx
	jl	.LBB4_9
.LBB4_10:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	pcl3_skip_groups, .Lfunc_end4-pcl3_skip_groups
	.cfi_endproc

	.globl	pcl3_transfer_group
	.align	16, 0x90
	.type	pcl3_transfer_group,@function
pcl3_transfer_group:                    # @pcl3_transfer_group
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 112
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	8(%r12), %rbx
	cmpl	$3, 96(%rbx)
	jne	.LBB5_11
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 160(%rbx)
	je	.LBB5_11
# BB#2:                                 # %if.then
	movzwl	174(%rbx), %r13d
	movzwl	172(%rbx), %eax
	cmpl	%eax, %r13d
	jae	.LBB5_7
# BB#3:                                 # %for.body.lr.ph
	leaq	56(%r12), %r15
	movq	%r13, %rbp
	shlq	$4, %rbp
	.align	16, 0x90
.LBB5_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	168(%rbx), %esi
	movq	64(%r12), %rax
	movq	(%rax,%r13,8), %r8
	movq	32(%r12), %rax
	movq	40(%r12), %rdx
	movq	48(%r12), %rdi
	movq	24(%r12), %rcx
	addq	%rbp, %rcx
	movq	%rdi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, %edi
	movq	%r15, %rdx
	movq	24(%rsp), %r9           # 8-byte Reload
	callq	send_plane
	testl	%eax, %eax
	movl	$-1, %eax
	jne	.LBB5_20
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB5_5 Depth=1
	incq	%r13
	movzwl	172(%rbx), %eax
	addq	$16, %rbp
	cmpq	%rax, %r13
	jl	.LBB5_5
# BB#6:                                 # %for.cond.for.end_crit_edge
	movzwl	174(%rbx), %r13d
.LBB5_7:                                # %for.end
	testw	%r13w, %r13w
	je	.LBB5_15
# BB#8:                                 # %for.body.18.lr.ph
	leaq	56(%r12), %r14
	movzwl	%r13w, %r13d
	decl	%r13d
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB5_10:                               # %for.body.18
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r15d, %r13d
	sete	%al
	movzbl	%al, %edi
	movl	168(%rbx), %esi
	movq	64(%r12), %rax
	movq	(%rax,%r15,8), %r8
	movq	32(%r12), %r9
	movq	40(%r12), %rdx
	movq	48(%r12), %rax
	movq	24(%r12), %rcx
	addq	%rbp, %rcx
	movq	%rax, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%r14, %rdx
	movq	24(%rsp), %r9           # 8-byte Reload
	callq	send_plane
	testl	%eax, %eax
	movl	$-1, %eax
	jne	.LBB5_20
# BB#9:                                 # %for.cond.13
                                        #   in Loop: Header=BB5_10 Depth=1
	incq	%r15
	movzwl	174(%rbx), %eax
	addq	$16, %rbp
	cmpq	%rax, %r15
	jl	.LBB5_10
	jmp	.LBB5_15
.LBB5_11:                               # %if.else
	movzwl	172(%rbx), %r13d
	testl	%r13d, %r13d
	je	.LBB5_15
# BB#12:                                # %for.body.50.lr.ph
	leaq	56(%r12), %r15
	decl	%r13d
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB5_14:                               # %for.body.50
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r14d, %r13d
	sete	%al
	movzbl	%al, %edi
	movl	168(%rbx), %esi
	movq	64(%r12), %rax
	movq	(%rax,%r14,8), %r8
	movq	32(%r12), %r9
	movq	40(%r12), %rdx
	movq	%rbx, %rax
	movq	48(%r12), %rbx
	movq	24(%r12), %rcx
	addq	%rbp, %rcx
	movq	%rbx, 16(%rsp)
	movq	%rax, %rbx
	movq	%rdx, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%r15, %rdx
	movq	24(%rsp), %r9           # 8-byte Reload
	callq	send_plane
	testl	%eax, %eax
	movl	$-1, %eax
	jne	.LBB5_20
# BB#13:                                # %for.cond.45
                                        #   in Loop: Header=BB5_14 Depth=1
	incq	%r14
	movzwl	172(%rbx), %eax
	addq	$16, %rbp
	cmpq	%rax, %r14
	jl	.LBB5_14
.LBB5_15:                               # %if.end.74
	movq	8(%r12), %rax
	movl	168(%rax), %ecx
	xorl	%eax, %eax
	cmpl	$9, %ecx
	ja	.LBB5_20
# BB#16:                                # %if.end.74
	movl	$552, %edx              # imm = 0x228
	btl	%ecx, %edx
	jae	.LBB5_20
# BB#17:                                # %for.cond.89.preheader
	cmpw	$0, 172(%rbx)
	je	.LBB5_20
# BB#18:                                # %for.body.94.lr.ph
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB5_19:                               # %for.body.94
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %rsi
	movups	(%rsi,%rcx), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	24(%r12), %rdi
	movups	(%rdi,%rcx), %xmm0
	movups	%xmm0, (%rsi,%rcx)
	movq	24(%r12), %rsi
	movaps	32(%rsp), %xmm0
	movups	%xmm0, (%rsi,%rcx)
	incq	%rdx
	movzwl	172(%rbx), %esi
	addq	$16, %rcx
	cmpq	%rsi, %rdx
	jl	.LBB5_19
.LBB5_20:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pcl3_transfer_group, .Lfunc_end5-pcl3_transfer_group
	.cfi_endproc

	.align	16, 0x90
	.type	send_plane,@function
send_plane:                             # @send_plane
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 96
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%rcx, %r13
	movq	%rdx, %r12
	movl	%esi, %ebx
	movl	%edi, 4(%rsp)           # 4-byte Spill
	movq	112(%rsp), %rax
	movq	96(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movl	8(%r13), %ebp
	xorl	%ecx, %ecx
	cmpl	$0, (%r12)
	je	.LBB6_2
# BB#1:                                 # %select.mid
	movl	$2, %ecx
.LBB6_2:                                # %select.end
	addl	%ebp, %ecx
	movslq	%ecx, %rcx
	cmpq	%rax, %rcx
	cmoval	%eax, %ecx
	movl	%ecx, 32(%rsp)
	testl	%ebx, %ebx
	je	.LBB6_19
# BB#3:                                 # %select.end
	cmpl	$3, %ebx
	jne	.LBB6_17
# BB#4:                                 # %if.then.9
	movl	$3, %ebx
	leaq	24(%rsp), %rcx
	movl	$3, %edi
	movq	%r13, %rsi
	movq	%r8, %rdx
	callq	pcl_compress
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	32(%rsp), %ecx
	movl	(%r12), %eax
	leal	2(%rcx), %r14d
	testl	%ecx, %ecx
	cmovsl	%ecx, %r14d
	cmpl	$3, %eax
	cmovel	%ecx, %r14d
	testl	%r14d, %r14d
	je	.LBB6_5
# BB#6:                                 # %if.else.25
	movq	104(%rsp), %rcx
	testl	%eax, %eax
	setne	%dl
	movzbl	%dl, %edx
	addl	%edx, %edx
	addl	8(%r13), %edx
	testl	%r14d, %r14d
	js	.LBB6_9
# BB#7:                                 # %if.else.25
	cmpl	%edx, %r14d
	jge	.LBB6_9
# BB#8:                                 # %if.then.36
	leal	-2(%r14), %edx
	cmpl	$1, %r14d
	cmovlel	%r14d, %edx
	cmpl	$2, %eax
	cmovel	%r14d, %edx
.LBB6_9:                                # %if.end.62
	movq	%rcx, 8(%rsp)
	movl	%edx, 16(%rsp)
	leaq	8(%rsp), %rcx
	movl	$2, %edi
	xorl	%edx, %edx
	movq	%r13, %rsi
	callq	pcl_compress
	movl	16(%rsp), %ebp
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ebp, %ecx
	leal	2(%rcx), %eax
	testl	%ecx, %ecx
	cmovsl	%ecx, %eax
	cmpl	$2, (%r12)
	cmovel	%ecx, %eax
	testl	%r14d, %r14d
	js	.LBB6_35
# BB#10:
	movl	%eax, %ecx
	shrl	$31, %ecx
	jmp	.LBB6_11
.LBB6_17:                               # %land.lhs.true.84
	leaq	24(%rsp), %rcx
	movl	%ebx, %edi
	movq	%r13, %rsi
	movq	%r8, %rdx
	callq	pcl_compress
	testl	%eax, %eax
	je	.LBB6_36
# BB#18:                                # %land.lhs.true.84.if.else.89_crit_edge
	movl	8(%r13), %ebp
.LBB6_19:                               # %if.else.89
	movq	(%r13), %r14
	xorl	%ebx, %ebx
	jmp	.LBB6_20
.LBB6_5:
	movl	$-1, %eax
	movb	$1, %cl
                                        # implicit-def: EBP
.LBB6_11:                               # %if.else.71
	movzbl	%cl, %ecx
	orl	$2, %ecx
	cmpl	%eax, %r14d
	cmovgl	%ecx, %ebx
	jmp	.LBB6_12
.LBB6_36:                               # %if.then.88
	movq	24(%rsp), %r14
	movl	32(%rsp), %ebp
	jmp	.LBB6_20
.LBB6_35:                               # %if.then.65
	sarl	$31, %eax
	addl	$2, %eax
	andl	$-2, %eax
	movl	%eax, %ebx
.LBB6_12:                               # %if.end.79
	cmpl	$3, %ebx
	jne	.LBB6_13
# BB#15:                                # %sw.bb.80
	movq	24(%rsp), %r14
	movl	$3, %ebx
	movl	32(%rsp), %ebp
	jmp	.LBB6_20
.LBB6_13:                               # %if.end.79
	cmpl	$2, %ebx
	jne	.LBB6_16
# BB#14:                                # %sw.bb
	movl	$2, %ebx
	movq	8(%rsp), %r14
	jmp	.LBB6_20
.LBB6_16:                               # %sw.default
	movq	(%r13), %r14
	movl	8(%r13), %ebp
.LBB6_20:                               # %if.end.91
	cmpl	%ebx, (%r12)
	je	.LBB6_24
# BB#21:                                # %if.then.94
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	fprintf
	testl	%eax, %eax
	js	.LBB6_22
# BB#23:                                # %if.end.102
	movl	%ebx, (%r12)
.LBB6_24:                               # %if.end.103
	testl	%ebp, %ebp
	je	.LBB6_25
# BB#30:                                # %if.else.122
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	setne	%al
	movzbl	%al, %ecx
	orl	$118, %ecx
	xorl	%ebx, %ebx
	movl	$.L.str.53, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	fprintf
	testl	%eax, %eax
	js	.LBB6_22
# BB#31:                                # %if.end.133
	movslq	%ebp, %rbp
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	fwrite
	cmpq	%rbp, %rax
	je	.LBB6_34
# BB#32:                                # %if.then.142
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.54, %esi
	jmp	.LBB6_33
.LBB6_22:                               # %if.then.98
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.51, %esi
	jmp	.LBB6_33
.LBB6_25:                               # %if.then.107
	callq	__errno_location
	movq	%rax, %rbx
	movl	$0, (%rbx)
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	je	.LBB6_27
# BB#26:                                # %if.then.109
	movl	$119, %edi
	jmp	.LBB6_28
.LBB6_27:                               # %if.else.111
	movl	$118, %edi
.LBB6_28:                               # %if.end.113
	movq	%r15, %rsi
	callq	fputc
	movl	(%rbx), %edi
	xorl	%ebx, %ebx
	testl	%edi, %edi
	je	.LBB6_34
# BB#29:                                # %if.then.117
	movq	stderr(%rip), %rbx
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.52, %esi
.LBB6_33:                               # %cleanup
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movl	$-1, %ebx
.LBB6_34:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	send_plane, .Lfunc_end6-send_plane
	.cfi_endproc

	.globl	pcl3_end_raster
	.align	16, 0x90
	.type	pcl3_end_raster,@function
pcl3_end_raster:                        # @pcl3_end_raster
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 32
.Ltmp58:
	.cfi_offset %rbx, -32
.Ltmp59:
	.cfi_offset %r14, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.46, %edi
	movq	%r14, %rsi
	callq	fputs
	movq	8(%rbx), %rax
	movl	(%rax), %ebp
	movl	$.L.str.49, %edi
	movq	%r14, %rsi
	callq	fputs
	cmpl	$1, %ebp
	jne	.LBB7_1
# BB#3:                                 # %if.then.3.i
	movl	$.L.str.50, %edi
	movq	%r14, %rsi
	callq	fputs
	jmp	.LBB7_6
.LBB7_1:                                # %entry
	testl	%ebp, %ebp
	jne	.LBB7_4
# BB#2:                                 # %if.then.i
	movl	$66, %edi
	jmp	.LBB7_5
.LBB7_4:                                # %if.else.5.i
	movl	$67, %edi
.LBB7_5:                                # %send_ERG.exit
	movq	%r14, %rsi
	callq	fputc
.LBB7_6:                                # %send_ERG.exit
	movq	8(%rbx), %rax
	cmpl	$0, (%rax)
	je	.LBB7_8
# BB#7:                                 # %if.then
	movl	$0, 56(%rbx)
.LBB7_8:                                # %if.end
	movq	64(%rbx), %rdi
	callq	free
	movq	$0, 64(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pcl3_end_raster, .Lfunc_end7-pcl3_end_raster
	.cfi_endproc

	.globl	pcl3_end_page
	.align	16, 0x90
	.type	pcl3_end_page,@function
pcl3_end_page:                          # @pcl3_end_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$12, %edi
	movq	%rbx, %rsi
	callq	fputc
	movq	%rbx, %rdi
	callq	ferror
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	stderr(%rip), %rsi
	movl	$.L.str.37, %edi
	callq	fputs
	movl	$-1, %eax
.LBB8_2:                                # %return
	popq	%rbx
	retq
.Lfunc_end8:
	.size	pcl3_end_page, .Lfunc_end8-pcl3_end_page
	.cfi_endproc

	.globl	pcl3_end_file
	.align	16, 0x90
	.type	pcl3_end_file,@function
pcl3_end_file:                          # @pcl3_end_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp65:
	.cfi_def_cfa_offset 32
.Ltmp66:
	.cfi_offset %rbx, -24
.Ltmp67:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpl	$-1, 64(%rbx)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$.L.str.47, %edi
	movq	%r14, %rsi
	callq	fputs
.LBB9_2:                                # %if.end
	movl	$.L.str.21, %edi
	movq	%r14, %rsi
	callq	fputs
	cmpq	$0, 8(%rbx)
	jne	.LBB9_4
# BB#3:                                 # %lor.lhs.false
	cmpq	$0, 16(%rbx)
	je	.LBB9_6
.LBB9_4:                                # %if.then.4
	movl	$.L.str.17, %edi
	movq	%r14, %rsi
	callq	fputs
	cmpq	$0, 8(%rbx)
	je	.LBB9_6
# BB#5:                                 # %if.then.8
	movl	$.L.str.48, %edi
	movq	%r14, %rsi
	callq	fputs
	movl	$.L.str.17, %edi
	movq	%r14, %rsi
	callq	fputs
.LBB9_6:                                # %if.end.12
	movq	%r14, %rdi
	callq	ferror
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB9_8
# BB#7:                                 # %if.then.14
	movq	stderr(%rip), %rsi
	movl	$.L.str.37, %edi
	callq	fputs
	movl	$-1, %eax
.LBB9_8:                                # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	pcl3_end_file, .Lfunc_end9-pcl3_end_file
	.cfi_endproc

	.globl	pcl3_set_oldquality
	.align	16, 0x90
	.type	pcl3_set_oldquality,@function
pcl3_set_oldquality:                    # @pcl3_set_oldquality
	.cfi_startproc
# BB#0:                                 # %entry
	movl	80(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB10_1
# BB#5:                                 # %sw.bb.2
	movl	60(%rdi), %ecx
	leal	-3(%rcx), %edx
	cmpl	$1, %edx
	ja	.LBB10_7
# BB#6:                                 # %if.then.7
	movl	$1, 84(%rdi)
	jmp	.LBB10_11
.LBB10_1:                               # %entry
	cmpl	$-1, %eax
	jne	.LBB10_12
# BB#2:                                 # %sw.bb
	movl	$3, 84(%rdi)
	movl	$1, 92(%rdi)
	movl	60(%rdi), %ecx
	cmpl	$4, %ecx
	jne	.LBB10_4
# BB#3:                                 # %if.then
	movl	$1, 88(%rdi)
	movl	$4, %ecx
	jmp	.LBB10_18
.LBB10_7:                               # %if.else.9
	movl	96(%rdi), %edx
	cmpl	$4, %edx
	je	.LBB10_9
# BB#8:                                 # %if.else.9
	cmpl	$2, %edx
	jne	.LBB10_10
.LBB10_9:                               # %if.then.13
	movl	$2, 84(%rdi)
	jmp	.LBB10_11
.LBB10_12:                              # %sw.default
	movl	$2, 84(%rdi)
	movl	$0, 92(%rdi)
	movl	60(%rdi), %ecx
	cmpl	$3, %ecx
	je	.LBB10_16
# BB#13:                                # %sw.default
	cmpl	$4, %ecx
	jne	.LBB10_17
# BB#14:                                # %land.lhs.true.28
	movl	96(%rdi), %edx
	cmpl	$2, %edx
	je	.LBB10_17
# BB#15:                                # %land.lhs.true.28
	cmpl	$4, %edx
	jne	.LBB10_16
.LBB10_17:                              # %if.else.36
	movl	$1, 88(%rdi)
	jmp	.LBB10_18
.LBB10_16:                              # %if.then.34
	movl	$2, 88(%rdi)
	jmp	.LBB10_18
.LBB10_4:                               # %if.else
	movl	$0, 88(%rdi)
	jmp	.LBB10_18
.LBB10_10:                              # %if.else.15
	movl	$3, 84(%rdi)
.LBB10_11:                              # %if.end.18
	movabsq	$8589934594, %rdx       # imm = 0x200000002
	movq	%rdx, 88(%rdi)
.LBB10_18:                              # %sw.epilog
	cmpl	$1, 96(%rdi)
	ja	.LBB10_20
# BB#19:                                # %if.then.41
	movl	$0, 84(%rdi)
.LBB10_20:                              # %if.end.43
	incl	%eax
	cmpl	$3, %eax
	sbbb	%al, %al
	cmpl	$5, %ecx
	sbbb	%cl, %cl
	andb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
	retq
.Lfunc_end10:
	.size	pcl3_set_oldquality, .Lfunc_end10-pcl3_set_oldquality
	.cfi_endproc

	.globl	pcl3_set_printquality
	.align	16, 0x90
	.type	pcl3_set_printquality,@function
pcl3_set_printquality:                  # @pcl3_set_printquality
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 80(%rdi)
	xorl	%eax, %eax
	cmpl	$2, (%rdi)
	ja	.LBB11_22
# BB#1:                                 # %if.then
	cmpl	$1, %esi
	jne	.LBB11_2
# BB#6:                                 # %sw.bb.2.i
	movl	60(%rdi), %eax
	leal	-3(%rax), %ecx
	cmpl	$1, %ecx
	ja	.LBB11_8
# BB#7:                                 # %if.then.7.i
	movl	$1, 84(%rdi)
	jmp	.LBB11_12
.LBB11_2:                               # %if.then
	cmpl	$-1, %esi
	jne	.LBB11_13
# BB#3:                                 # %sw.bb.i
	movl	$3, 84(%rdi)
	movl	$1, 92(%rdi)
	movl	60(%rdi), %eax
	cmpl	$4, %eax
	jne	.LBB11_5
# BB#4:                                 # %if.then.i
	movl	$1, 88(%rdi)
	movl	$4, %eax
	jmp	.LBB11_19
.LBB11_8:                               # %if.else.9.i
	movl	96(%rdi), %ecx
	cmpl	$4, %ecx
	je	.LBB11_10
# BB#9:                                 # %if.else.9.i
	cmpl	$2, %ecx
	jne	.LBB11_11
.LBB11_10:                              # %if.then.13.i
	movl	$2, 84(%rdi)
	jmp	.LBB11_12
.LBB11_13:                              # %sw.default.i
	movl	$2, 84(%rdi)
	movl	$0, 92(%rdi)
	movl	60(%rdi), %eax
	cmpl	$3, %eax
	je	.LBB11_17
# BB#14:                                # %sw.default.i
	cmpl	$4, %eax
	jne	.LBB11_18
# BB#15:                                # %land.lhs.true.28.i
	movl	96(%rdi), %ecx
	cmpl	$2, %ecx
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.28.i
	cmpl	$4, %ecx
	jne	.LBB11_17
.LBB11_18:                              # %if.else.36.i
	movl	$1, 88(%rdi)
	jmp	.LBB11_19
.LBB11_17:                              # %if.then.34.i
	movl	$2, 88(%rdi)
	jmp	.LBB11_19
.LBB11_5:                               # %if.else.i
	movl	$0, 88(%rdi)
	jmp	.LBB11_19
.LBB11_11:                              # %if.else.15.i
	movl	$3, 84(%rdi)
.LBB11_12:                              # %if.end.18.i
	movabsq	$8589934594, %rcx       # imm = 0x200000002
	movq	%rcx, 88(%rdi)
.LBB11_19:                              # %sw.epilog.i
	cmpl	$1, 96(%rdi)
	ja	.LBB11_21
# BB#20:                                # %if.then.41.i
	movl	$0, 84(%rdi)
.LBB11_21:                              # %pcl3_set_oldquality.exit
	incl	%esi
	cmpl	$3, %esi
	sbbb	%cl, %cl
	cmpl	$5, %eax
	sbbb	%al, %al
	andb	%cl, %al
	andb	$1, %al
	movzbl	%al, %eax
	xorl	$1, %eax
.LBB11_22:                              # %return
	retq
.Lfunc_end11:
	.size	pcl3_set_printquality, .Lfunc_end11-pcl3_set_printquality
	.cfi_endproc

	.globl	pcl3_set_mediatype
	.align	16, 0x90
	.type	pcl3_set_mediatype,@function
pcl3_set_mediatype:                     # @pcl3_set_mediatype
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 60(%rdi)
	xorl	%eax, %eax
	cmpl	$2, (%rdi)
	ja	.LBB12_22
# BB#1:                                 # %if.then
	movl	80(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB12_2
# BB#6:                                 # %sw.bb.2.i
	leal	-3(%rsi), %ecx
	cmpl	$1, %ecx
	ja	.LBB12_8
# BB#7:                                 # %if.then.7.i
	movl	$1, 84(%rdi)
	jmp	.LBB12_12
.LBB12_2:                               # %if.then
	cmpl	$-1, %eax
	jne	.LBB12_13
# BB#3:                                 # %sw.bb.i
	movl	$3, 84(%rdi)
	movl	$1, 92(%rdi)
	cmpl	$4, %esi
	jne	.LBB12_5
# BB#4:                                 # %if.then.i
	movl	$1, 88(%rdi)
	movl	$4, %esi
	jmp	.LBB12_19
.LBB12_8:                               # %if.else.9.i
	movl	96(%rdi), %ecx
	cmpl	$4, %ecx
	je	.LBB12_10
# BB#9:                                 # %if.else.9.i
	cmpl	$2, %ecx
	jne	.LBB12_11
.LBB12_10:                              # %if.then.13.i
	movl	$2, 84(%rdi)
	jmp	.LBB12_12
.LBB12_13:                              # %sw.default.i
	movl	$2, 84(%rdi)
	movl	$0, 92(%rdi)
	cmpl	$3, %esi
	je	.LBB12_17
# BB#14:                                # %sw.default.i
	cmpl	$4, %esi
	jne	.LBB12_18
# BB#15:                                # %land.lhs.true.28.i
	movl	96(%rdi), %ecx
	cmpl	$2, %ecx
	je	.LBB12_18
# BB#16:                                # %land.lhs.true.28.i
	cmpl	$4, %ecx
	jne	.LBB12_17
.LBB12_18:                              # %if.else.36.i
	movl	$1, 88(%rdi)
	jmp	.LBB12_19
.LBB12_17:                              # %if.then.34.i
	movl	$2, 88(%rdi)
	jmp	.LBB12_19
.LBB12_5:                               # %if.else.i
	movl	$0, 88(%rdi)
	jmp	.LBB12_19
.LBB12_11:                              # %if.else.15.i
	movl	$3, 84(%rdi)
.LBB12_12:                              # %if.end.18.i
	movabsq	$8589934594, %rcx       # imm = 0x200000002
	movq	%rcx, 88(%rdi)
.LBB12_19:                              # %sw.epilog.i
	cmpl	$1, 96(%rdi)
	ja	.LBB12_21
# BB#20:                                # %if.then.41.i
	movl	$0, 84(%rdi)
.LBB12_21:                              # %pcl3_set_oldquality.exit
	incl	%eax
	cmpl	$3, %eax
	sbbb	%al, %al
	cmpl	$5, %esi
	sbbb	%cl, %cl
	andb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
.LBB12_22:                              # %return
	retq
.Lfunc_end12:
	.size	pcl3_set_mediatype, .Lfunc_end12-pcl3_set_mediatype
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"? pclgen: Null pointer passed to pcl3_init_file().\n"
	.size	.L.str, 52

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"? pclgen: Palette specification and number of colorants are inconsistent.\n"
	.size	.L.str.1, 75

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"? pclgen: The resolution for colorant %d is not positive: %u x %u ppi.\n"
	.size	.L.str.2, 72

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"? pclgen: The number of intensity levels for colorant %d is %u instead of at least 2 and at most 65535.\n"
	.size	.L.str.3, 105

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"? pclgen: The vertical resolution for colorant %d (%u ppi) is not a multiple of the lowest vertical resolution (%u ppi).\n"
	.size	.L.str.4, 122

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"? pclgen: The highest horizontal resolution (%u ppi) is not a multiple of the horizontal resolution for colorant %d (%u ppi).\n"
	.size	.L.str.5, 127

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"? pclgen: The highest vertical resolution (%u ppi) is not a multiple of the vertical resolution for colorant %d (%u ppi).\n"
	.size	.L.str.6, 123

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"? pclgen: You can't use an RGB palette at the requested PCL level.\n"
	.size	.L.str.7, 68

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"? pclgen: The specified structure of resolutions and intensity levels is not possible with an RGB palette.\n"
	.size	.L.str.8, 108

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"? pclgen: The specified structure of resolutions and intensity levels is not possible at the requested PCL level.\n"
	.size	.L.str.9, 115

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"? pclgen: The specified palette is not possible at the requested PCL level.\n"
	.size	.L.str.10, 77

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"? pclgen: Resolutions may be at most 65535 ppi when more than one resolution or more than two intensity levels are requested.\n"
	.size	.L.str.11, 127

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"? pclgen: Ordering bit planes as CMYK instead of KCMY is only meaningful\n  for a CMYK palette.\n"
	.size	.L.str.12, 96

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"? pclgen: Illegal character in PJL job name (code 0x%02X).\n"
	.size	.L.str.13, 60

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"? pclgen: PJL job name is too long (more than 80 characters).\n"
	.size	.L.str.14, 63

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"? pclgen: Empty PJL language name.\n"
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"? pclgen: Illegal character in PJL language name (code 0x%02X).\n"
	.size	.L.str.16, 65

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\033%-12345X"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"@PJL JOB"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" NAME=\"%s\""
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"@PJL ENTER LANGUAGE=%s\n"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\033E"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\033&l%da0o0L"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\033&l%dH"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\033&l2H"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\033&l%dG"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\033&l%dS"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\033*r%dQ"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\033*o%dQ"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\033*o%dD"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\033&l%dM\033*o%dM"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\033&b%dT"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\033*t%uR"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\033&u%uD"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\033*r%dU"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"\033*g%uW\002%c"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%c%c%c%c%c%c"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"? pclgen: Unidentified system error while writing the output file.\n"
	.size	.L.str.37, 68

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"\033*p0Y"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"? pclgen: Invalid data structure passed to pcl3_begin_raster().\n"
	.size	.L.str.39, 65

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"? pclgen: Memory allocation failure in pcl3_begin_raster().\n"
	.size	.L.str.40, 61

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"\033*r%uS"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"\033*p0X\033*r1A"
	.size	.L.str.42, 11

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\033*b"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%dm"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%uy"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"0Y"
	.size	.L.str.46, 3

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"\033&l0H"
	.size	.L.str.47, 6

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"@PJL EOJ\n"
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"\033*r"
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"bC"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"? pclgen: Error from fprintf(): %s.\n"
	.size	.L.str.51, 37

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"? pclgen: Error from fputc(): %s.\n"
	.size	.L.str.52, 35

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%d%c"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"? pclgen: Error in fwrite(): %s.\n"
	.size	.L.str.54, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
