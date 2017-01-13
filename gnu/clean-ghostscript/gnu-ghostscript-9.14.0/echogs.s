	.text
	.file	"echogs.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$9384, %rsp             # imm = 0x24A8
.Ltmp6:
	.cfi_def_cfa_offset 9440
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
	movq	%rsi, %r14
	movl	%edi, %r12d
	movq	stdout(%rip), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	8(%r14), %r15
	leal	-1(%r12), %ebp
	movl	$.L.str, %ecx
	movl	$1, %r13d
	cmpl	$2, %r12d
	jl	.LBB0_13
# BB#1:                                 # %land.lhs.true.1
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	(%r15), %rdi
	cmpq	$3, %rcx
	movq	%r15, %rbx
	ja	.LBB0_9
# BB#2:                                 # %cond.true
	movzbl	(%rdi), %eax
	addl	$-45, %eax
	movq	%rbx, %r15
	testq	%rcx, %rcx
	je	.LBB0_10
# BB#3:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB0_10
# BB#4:                                 # %if.then
	movzbl	1(%rdi), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB0_10
# BB#5:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB0_10
# BB#6:                                 # %if.then.21
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB0_10
# BB#7:                                 # %if.then.21
	testb	%dl, %dl
	jne	.LBB0_10
# BB#8:                                 # %if.then.31
	movzbl	3(%rdi), %eax
	jmp	.LBB0_10
.LBB0_9:                                # %cond.false
	movq	%rbx, %r15
	movl	$.L.str.1, %esi
	callq	strcmp
.LBB0_10:                               # %cond.end
	movl	$.L.str, %ecx
	movl	$1, %r13d
	testl	%eax, %eax
	jne	.LBB0_13
# BB#11:                                # %if.then.40
	movl	$1, %ecx
	cmpl	$3, %r12d
	jl	.LBB0_156
# BB#12:                                # %if.end.44
	movq	16(%r14), %rcx
	leaq	24(%r14), %r15
	addl	$-3, %r12d
	movl	$3, %r13d
	movl	%r12d, %ebp
.LBB0_13:                               # %if.end.48
	testl	%ebp, %ebp
	jle	.LBB0_35
# BB#14:                                # %land.lhs.true.51
	movq	(%r15), %r12
	movzbl	(%r12), %eax
	cmpl	$45, %eax
	jne	.LBB0_35
# BB#15:                                # %land.lhs.true.56
	movzbl	1(%r12), %eax
	cmpl	$119, %eax
	je	.LBB0_17
# BB#16:                                # %land.lhs.true.56
	movzbl	%al, %eax
	cmpl	$97, %eax
	jne	.LBB0_35
.LBB0_17:                               # %if.then.65
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	strlen
	movl	$1, %ecx
	cmpq	$4, %rax
	ja	.LBB0_156
# BB#18:                                # %for.cond.preheader
	leaq	(%r14,%r13,8), %r15
	movl	$1, %ecx
	cmpl	$2, %ebp
	movl	$1, %ebx
	jl	.LBB0_23
# BB#19:                                # %for.body.lr.ph
	movslq	%ebp, %rsi
	movl	%ebp, %edx
	movl	$1, %ebx
	.align	16, 0x90
.LBB0_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rcx
	movzbl	(%rcx), %ecx
	cmpl	$45, %ecx
	jne	.LBB0_22
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB0_20 Depth=1
	incq	%rbx
	cmpq	%rsi, %rbx
	jl	.LBB0_20
.LBB0_22:                               # %for.cond.for.end_crit_edge
	movl	%edx, %ebp
	movl	$1, %ecx
.LBB0_23:                               # %for.end
	movl	%ebp, 100(%rsp)         # 4-byte Spill
	cmpl	%ebp, %ebx
	je	.LBB0_156
# BB#24:                                # %if.end.85
	movq	%rax, 88(%rsp)          # 8-byte Spill
	incq	%r12
	movslq	%ebx, %rbp
	movq	(%r15,%rbp,8), %r14
	leaq	9380(%rsp), %rdi
	movl	$4, %edx
	movq	%r12, %rsi
	callq	strncpy
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	104(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	callq	strlen
	addq	%r12, %rax
	cmpq	$4096, %rax             # imm = 0x1000
	jb	.LBB0_27
# BB#25:                                # %if.then.94
	movq	stderr(%rip), %rsi
	movl	$.L.str.2, %edi
	jmp	.LBB0_26
.LBB0_35:                               # %if.else.127
	leaq	5280(%rsp), %rdi
	movl	$.L.str, %esi
	callq	strcpy
	xorl	%r13d, %r13d
	movl	%ebp, %r14d
.LBB0_36:                               # %if.end.130
	movl	$fputc, %ebx
	movl	$1, %r12d
	testl	%r14d, %r14d
	jle	.LBB0_37
# BB#38:                                # %land.lhs.true.139
	movl	$.L.str.3, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	(%r15), %rdi
	cmpq	$3, %rcx
	ja	.LBB0_46
# BB#39:                                # %cond.true.143
	movzbl	(%rdi), %eax
	addl	$-45, %eax
	testq	%rcx, %rcx
	je	.LBB0_47
# BB#40:                                # %cond.true.143
	testl	%eax, %eax
	jne	.LBB0_47
# BB#41:                                # %if.then.157
	movzbl	1(%rdi), %eax
	addl	$-104, %eax
	cmpq	$2, %rcx
	jb	.LBB0_47
# BB#42:                                # %if.then.157
	testl	%eax, %eax
	jne	.LBB0_47
# BB#43:                                # %if.then.167
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB0_47
# BB#44:                                # %if.then.167
	testb	%dl, %dl
	jne	.LBB0_47
# BB#45:                                # %if.then.177
	movzbl	3(%rdi), %eax
	jmp	.LBB0_47
.LBB0_37:
	movl	$fputs, %ebp
	jmp	.LBB0_61
.LBB0_46:                               # %cond.false.186
	movl	$.L.str.3, %esi
	callq	strcmp
.LBB0_47:                               # %cond.end.188
	movl	$fputc, %ebx
	movl	$fputs, %ebp
	testl	%eax, %eax
	jne	.LBB0_49
# BB#48:                                # %if.then.191
	addq	$8, %r15
	movl	$hputc, %ebx
	movl	$hputs, %ebp
	decl	%r14d
.LBB0_49:                               # %if.end.194
	testl	%r14d, %r14d
	jle	.LBB0_61
# BB#50:                                # %land.lhs.true.203
	movl	$.L.str.4, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	(%r15), %rdi
	cmpq	$3, %rcx
	ja	.LBB0_58
# BB#51:                                # %cond.true.207
	movzbl	(%rdi), %eax
	addl	$-45, %eax
	testq	%rcx, %rcx
	je	.LBB0_59
# BB#52:                                # %cond.true.207
	testl	%eax, %eax
	jne	.LBB0_59
# BB#53:                                # %if.then.221
	movzbl	1(%rdi), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB0_59
# BB#54:                                # %if.then.221
	testl	%eax, %eax
	jne	.LBB0_59
# BB#55:                                # %if.then.231
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB0_59
# BB#56:                                # %if.then.231
	testb	%dl, %dl
	jne	.LBB0_59
# BB#57:                                # %if.then.241
	movzbl	3(%rdi), %eax
	jmp	.LBB0_59
.LBB0_58:                               # %cond.false.250
	movl	$.L.str.4, %esi
	callq	strcmp
.LBB0_59:                               # %cond.end.252
	testl	%eax, %eax
	jne	.LBB0_61
# BB#60:                                # %if.then.255
	addq	$8, %r15
	decl	%r14d
	xorl	%r12d, %r12d
.LBB0_61:                               # %if.end.258
	leaq	5280(%rsp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB0_63
# BB#62:                                # %if.then.263
	leaq	5280(%rsp), %rdi
	leaq	9380(%rsp), %rsi
	callq	fopen64
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$1, %ecx
	testq	%rax, %rax
	je	.LBB0_156
.LBB0_63:                               # %while.body.preheader
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	56(%rsp), %r12          # 8-byte Reload
	movl	%r14d, 100(%rsp)        # 4-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	jmp	.LBB0_64
	.align	16, 0x90
.LBB0_68:                               # %if.then.284
                                        #   in Loop: Header=BB0_64 Depth=1
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	fclose
.LBB0_64:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_134 Depth 3
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	xorl	%ebp, %ebp
	jmp	.LBB0_65
.LBB0_151:                              #   in Loop: Header=BB0_65 Depth=2
	xorl	%r13d, %r13d
	movl	56(%rsp), %ebp          # 4-byte Reload
	.align	16, 0x90
.LBB0_65:                               # %while.body
                                        #   Parent Loop BB0_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_75 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_134 Depth 3
                                        #       Child Loop BB0_85 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	testl	%ebp, %ebp
	je	.LBB0_80
# BB#66:                                # %if.then.276
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	%ebp, %r14d
	movl	$5106, %esi             # imm = 0x13F2
	leaq	160(%rsp), %rbx
	movq	%rbx, %rdi
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_67
# BB#69:                                # %if.end.287
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$5097, %rax             # imm = 0x13E9
	jae	.LBB0_70
# BB#71:                                # %if.end.294
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$4294967295, %ebp       # imm = 0xFFFFFFFF
	leaq	(%rax,%rbp), %rcx
	cmpl	$5105, %ecx             # imm = 0x13F1
	jg	.LBB0_72
# BB#73:                                # %for.body.302.lr.ph
                                        #   in Loop: Header=BB0_65 Depth=2
	movslq	%ecx, %rcx
	movabsq	$-4294962190, %r9       # imm = 0xFFFFFFFF000013F2
	movq	%r9, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rdi
	andq	%rbp, %rdi
	leaq	1(%rdi), %rsi
	incl	%edx
	andl	$31, %edx
	subq	%rdx, %rsi
	leaq	1(%rdi,%rcx), %rdx
	xorps	%xmm0, %xmm0
	je	.LBB0_76
# BB#74:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	addq	%rsi, %rcx
	leal	(%rax,%rbp), %esi
	movslq	%esi, %rsi
	leaq	176(%rsp), %rdi
	leaq	(%rsi,%rdi), %rsi
	movl	%r9d, %edi
	subl	%eax, %edi
	incq	%rdi
	leal	1(%r9), %ebp
	subl	%eax, %ebp
	andl	$31, %ebp
	subq	%rbp, %rdi
	.align	16, 0x90
.LBB0_75:                               # %vector.body
                                        #   Parent Loop BB0_64 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	addq	$32, %rsi
	addq	$-32, %rdi
	jne	.LBB0_75
.LBB0_76:                               #   in Loop: Header=BB0_65 Depth=2
	movl	%r14d, %ebp
	cmpq	%rcx, %rdx
	jne	.LBB0_78
# BB#77:                                #   in Loop: Header=BB0_65 Depth=2
	movq	%rbx, %r15
	jmp	.LBB0_82
	.align	16, 0x90
.LBB0_78:                               # %for.body.302
                                        #   Parent Loop BB0_64 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$0, 160(%rsp,%rcx)
	incq	%rcx
	cmpl	$5106, %ecx             # imm = 0x13F2
	jne	.LBB0_78
# BB#79:                                #   in Loop: Header=BB0_65 Depth=2
	movq	%rbx, %r15
	jmp	.LBB0_82
	.align	16, 0x90
.LBB0_80:                               # %if.else.309
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	100(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB0_152
# BB#81:                                # %if.end.313
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r15
	addq	$8, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	decl	%ecx
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	jmp	.LBB0_82
	.align	16, 0x90
.LBB0_67:                               # %if.then.281
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpq	stdin(%rip), %rbp
	movl	$0, %ebp
	je	.LBB0_65
	jmp	.LBB0_68
.LBB0_72:                               #   in Loop: Header=BB0_65 Depth=2
	movq	%rbx, %r15
	movl	%r14d, %ebp
.LBB0_82:                               # %if.end.316
                                        #   in Loop: Header=BB0_65 Depth=2
	testb	%r13b, %r13b
	jne	.LBB0_116
# BB#83:                                # %land.lhs.true.320
                                        #   in Loop: Header=BB0_65 Depth=2
	movzbl	(%r15), %eax
	cmpl	$45, %eax
	jne	.LBB0_116
# BB#84:                                # %if.then.325
                                        #   in Loop: Header=BB0_65 Depth=2
	movb	1(%r15), %bl
	jmp	.LBB0_85
	.align	16, 0x90
.LBB0_115:                              # %if.then.384
                                        #   in Loop: Header=BB0_85 Depth=3
	movsbq	2(%r15), %rbx
	incq	%r15
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movb	(%rax,%rbx,4), %bl
.LBB0_85:                               # %swc
                                        #   Parent Loop BB0_64 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	%bl, %eax
	cmpl	$65, %eax
	jg	.LBB0_89
# BB#86:                                # %swc
                                        #   in Loop: Header=BB0_85 Depth=3
	cmpl	$43, %eax
	jne	.LBB0_87
# BB#114:                               # %sw.bb.381
                                        #   in Loop: Header=BB0_85 Depth=3
	cmpb	$0, 1(%r15)
	jne	.LBB0_115
	jmp	.LBB0_88
	.align	16, 0x90
.LBB0_116:                              # %if.else.396
                                        #   in Loop: Header=BB0_65 Depth=2
	movsbl	%r13b, %eax
	cmpl	$81, %eax
	jg	.LBB0_121
# BB#117:                               # %if.else.396
                                        #   in Loop: Header=BB0_65 Depth=2
	testl	%eax, %eax
	je	.LBB0_136
# BB#118:                               # %if.else.396
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$45, %eax
	jne	.LBB0_119
.LBB0_136:                              # %sw.bb.398
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	testb	%al, %al
	jne	.LBB0_132
# BB#137:                               # %if.end.401
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	76(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	je	.LBB0_139
# BB#138:                               # %if.then.403
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$32, %edi
	movq	%r12, %rsi
	callq	*80(%rsp)               # 8-byte Folded Reload
.LBB0_139:                              # %if.end.405
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*48(%rsp)               # 8-byte Folded Reload
	movb	$1, %al
	movl	%eax, 76(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB0_65
	.align	16, 0x90
.LBB0_121:                              # %if.else.396
                                        #   in Loop: Header=BB0_65 Depth=2
	leal	-113(%rax), %ecx
	cmpl	$7, %ecx
	jbe	.LBB0_127
# BB#122:                               # %if.else.396
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$82, %eax
	jne	.LBB0_65
# BB#123:                               # %sw.bb.418
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	fopen64
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB0_142
# BB#124:                               # %while.cond.424.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$1, %esi
	movl	$1, %edx
	leaq	160(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rcx
	callq	fread
	testq	%rax, %rax
	movq	80(%rsp), %rbx          # 8-byte Reload
	je	.LBB0_126
	.align	16, 0x90
.LBB0_125:                              # %while.body.429
                                        #   Parent Loop BB0_64 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	160(%rsp), %edi
	movq	%r12, %rsi
	callq	*%rbx
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r14, %rcx
	callq	fread
	testq	%rax, %rax
	jne	.LBB0_125
.LBB0_126:                              # %while.end.433
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	%r14, %rdi
	movq	%r14, 104(%rsp)         # 8-byte Spill
	callq	fclose
	jmp	.LBB0_151
.LBB0_127:                              # %if.else.396
                                        #   in Loop: Header=BB0_65 Depth=2
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_140:                              # %sw.bb.407
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*48(%rsp)               # 8-byte Folded Reload
	xorl	%r13d, %r13d
	jmp	.LBB0_65
.LBB0_132:                              # %for.cond.454.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	movb	(%r15), %r14b
	xorl	%r13d, %r13d
	testb	%r14b, %r14b
	je	.LBB0_65
# BB#133:                               # %for.body.456.lr.ph
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	callq	__ctype_b_loc
	movq	%rax, %r13
	incq	%r15
	movl	$1, %ebp
	.align	16, 0x90
.LBB0_134:                              # %for.body.456
                                        #   Parent Loop BB0_64 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbq	%r14b, %rbx
	movq	(%r13), %rax
	movzwl	(%rax,%rbx,2), %ecx
	testb	$16, %ch
	je	.LBB0_135
# BB#143:                               # %if.end.466
                                        #   in Loop: Header=BB0_134 Depth=3
	movsbl	%r14b, %eax
	shll	$4, %ebp
	testb	$8, %ch
	jne	.LBB0_144
# BB#145:                               # %cond.false.477
                                        #   in Loop: Header=BB0_134 Depth=3
	testb	$1, %ch
	je	.LBB0_147
# BB#146:                               # %cond.true.485
                                        #   in Loop: Header=BB0_134 Depth=3
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%rbx,4), %eax
.LBB0_147:                              # %cond.end.495
                                        #   in Loop: Header=BB0_134 Depth=3
	addl	$-87, %eax
	jmp	.LBB0_148
	.align	16, 0x90
.LBB0_144:                              # %cond.true.474
                                        #   in Loop: Header=BB0_134 Depth=3
	addl	$-48, %eax
.LBB0_148:                              # %cond.end.499
                                        #   in Loop: Header=BB0_134 Depth=3
	addl	%ebp, %eax
	cmpl	$256, %eax              # imm = 0x100
	jb	.LBB0_150
# BB#149:                               # %if.then.504
                                        #   in Loop: Header=BB0_134 Depth=3
	movzbl	%al, %edi
	movq	%r12, %rsi
	callq	*80(%rsp)               # 8-byte Folded Reload
	movl	$1, %eax
.LBB0_150:                              # %for.inc.511
                                        #   in Loop: Header=BB0_134 Depth=3
	movb	(%r15), %r14b
	incq	%r15
	testb	%r14b, %r14b
	movl	%eax, %ebp
	jne	.LBB0_134
	jmp	.LBB0_151
.LBB0_89:                               # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	cmpl	$81, %eax
	jle	.LBB0_90
# BB#96:                                # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	leal	-98(%rax), %ecx
	cmpl	$22, %ecx
	jbe	.LBB0_158
# BB#97:                                # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$82, %eax
	je	.LBB0_104
# BB#98:                                # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$88, %eax
	movl	$0, %r13d
	jne	.LBB0_65
# BB#99:                                # %sw.bb.380
                                        #   in Loop: Header=BB0_65 Depth=2
	movb	$1, %al
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB0_113
.LBB0_119:                              # %if.else.396
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$81, %eax
	jne	.LBB0_65
# BB#120:                               # %sw.bb.409
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*48(%rsp)               # 8-byte Folded Reload
	movl	$32, %edi
	movq	%r12, %rsi
	callq	*80(%rsp)               # 8-byte Folded Reload
	xorl	%r13d, %r13d
	jmp	.LBB0_65
.LBB0_90:                               # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$69, %eax
	jg	.LBB0_94
# BB#91:                                # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$66, %eax
	je	.LBB0_106
# BB#92:                                # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$68, %eax
	movl	$0, %r13d
	jne	.LBB0_65
	jmp	.LBB0_93
.LBB0_158:                              # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	xorl	%r13d, %r13d
	jmpq	*.LJTI0_1(,%rcx,8)
.LBB0_106:                              # %sw.bb.348
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	movq	40(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdi
	callq	strlen
	leaq	(%rax,%r13), %r14
	.align	16, 0x90
.LBB0_107:                              # %while.cond.351
                                        #   Parent Loop BB0_64 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r14, %rbx
	cmpq	%r13, %rbx
	jbe	.LBB0_110
# BB#108:                               # %land.rhs
                                        #   in Loop: Header=BB0_107 Depth=3
	leaq	-1(%rbx), %r14
	movsbq	-1(%rbx), %rbp
	callq	__ctype_b_loc
	cmpq	$95, %rbp
	je	.LBB0_107
# BB#109:                               # %land.rhs
                                        #   in Loop: Header=BB0_107 Depth=3
	movq	(%rax), %rax
	movzwl	(%rax,%rbp,2), %eax
	andl	$8, %eax
	testw	%ax, %ax
	jne	.LBB0_107
.LBB0_110:                              # %while.end
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*48(%rsp)               # 8-byte Folded Reload
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	jmp	.LBB0_151
.LBB0_94:                               # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$70, %eax
	jne	.LBB0_95
.LBB0_111:                              # %sw.bb.378
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	40(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB0_112
.LBB0_141:                              # %sw.bb.412
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	fopen64
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	$1, %ebp
	xorl	%r13d, %r13d
	testq	%rax, %rax
	jne	.LBB0_65
	jmp	.LBB0_142
.LBB0_128:                              # %for.cond.437.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	movb	(%r15), %bl
	xorl	%r13d, %r13d
	testb	%bl, %bl
	je	.LBB0_65
# BB#129:                               # %for.body.439.lr.ph
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	callq	__ctype_toupper_loc
	movq	%r12, %r14
	movq	%rax, %rbp
	incq	%r15
	movq	80(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB0_130:                              # %for.body.439
                                        #   Parent Loop BB0_64 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbq	%bl, %rax
	movq	(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	movq	%r14, %rsi
	callq	*%r12
	movb	(%r15), %bl
	incq	%r15
	xorl	%r13d, %r13d
	testb	%bl, %bl
	jne	.LBB0_130
# BB#131:                               #   in Loop: Header=BB0_65 Depth=2
	movq	%r14, %r12
	movl	56(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB0_65
.LBB0_95:                               # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$81, %eax
	movl	$0, %r13d
	jne	.LBB0_65
	jmp	.LBB0_101
.LBB0_93:                               # %sw.bb.368
                                        #   in Loop: Header=BB0_65 Depth=2
	leaq	152(%rsp), %rbx
	movq	%rbx, %rdi
	callq	time
	movq	%rbx, %rdi
	callq	ctime
	leaq	112(%rsp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movb	$0, 136(%rsp)
	movq	%rbx, %rdi
.LBB0_112:                              # %while.body
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	%r12, %rsi
	callq	*48(%rsp)               # 8-byte Folded Reload
	jmp	.LBB0_113
.LBB0_87:                               # %swc
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	testl	%eax, %eax
	movl	$0, %r13d
	jne	.LBB0_65
.LBB0_88:                               # %sw.bb.395
                                        #   in Loop: Header=BB0_65 Depth=2
	movb	$45, %r13b
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	jmp	.LBB0_65
.LBB0_105:                              # %sw.bb.347
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$1, %ebp
	movq	stdin(%rip), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	jmp	.LBB0_113
.LBB0_100:                              # %sw.bb.329.loopexit324
                                        #   in Loop: Header=BB0_65 Depth=2
	movb	$81, %bl
.LBB0_101:                              # %sw.bb.329
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpb	$0, 2(%r15)
	je	.LBB0_104
# BB#102:                               # %if.then.334
                                        #   in Loop: Header=BB0_65 Depth=2
	addq	$2, %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*48(%rsp)               # 8-byte Folded Reload
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	movzbl	%bl, %eax
	cmpl	$81, %eax
	movl	$0, %r13d
	jne	.LBB0_65
.LBB0_103:                              # %if.then.340
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$32, %edi
	movq	%r12, %rsi
	callq	*80(%rsp)               # 8-byte Folded Reload
.LBB0_113:                              # %while.body
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	xorl	%r13d, %r13d
	jmp	.LBB0_65
.LBB0_104:                              # %sw.bb.344
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	movb	%bl, %r13b
	jmp	.LBB0_65
.LBB0_135:
	movl	$1, %ecx
	jmp	.LBB0_156
.LBB0_70:                               # %if.then.292
	movq	stderr(%rip), %rsi
	movl	$.L.str.5, %edi
.LBB0_26:                               # %cleanup.534
	callq	fputs
	movl	$1, %ecx
	jmp	.LBB0_156
.LBB0_152:                              # %while.end.524
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB0_154
# BB#153:                               # %if.then.526
	movl	$10, %edi
	movq	%r12, %rsi
	callq	*80(%rsp)               # 8-byte Folded Reload
.LBB0_154:                              # %if.end.528
	xorl	%ecx, %ecx
	cmpq	stdout(%rip), %r12
	je	.LBB0_156
# BB#155:                               # %if.then.531
	movq	%r12, %rdi
	callq	fclose
	xorl	%ecx, %ecx
.LBB0_156:                              # %cleanup.534
	movl	%ecx, %eax
	addq	$9384, %rsp             # imm = 0x24A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_27:                               # %if.end.96
	leaq	5280(%rsp), %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r14, 40(%rsp)          # 8-byte Spill
	callq	strcpy
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcat
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	9380(%rsp), %rax
	movzbl	-2(%rcx,%rax), %eax
	cmpl	$45, %eax
	jne	.LBB0_28
# BB#157:                               # %if.then.106
	movb	$0, 9378(%rsp,%rcx)
	movq	$main.dash, (%r15,%rbp,8)
	addq	$8, %r15
	movl	100(%rsp), %r14d        # 4-byte Reload
	decl	%r14d
	movq	40(%rsp), %r13          # 8-byte Reload
	jmp	.LBB0_36
.LBB0_28:                               # %for.cond.111.preheader
	cmpl	$2, %ebx
	movl	100(%rsp), %r14d        # 4-byte Reload
	jl	.LBB0_34
# BB#29:                                # %for.body.114.preheader
	movslq	%ebx, %rax
	leal	3(%rbx), %ecx
	addq	$-2, %rax
	testb	$3, %cl
	je	.LBB0_32
# BB#30:                                # %for.body.114.prol.preheader
	addb	$3, %bl
	movzbl	%bl, %ecx
	andl	$3, %ecx
	negq	%rcx
.LBB0_31:                               # %for.body.114.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r15,%rbp,8), %rdx
	movq	%rdx, (%r15,%rbp,8)
	leaq	-1(%rbp), %rbp
	incq	%rcx
	jne	.LBB0_31
.LBB0_32:                               # %for.body.114.preheader.split
	cmpq	$3, %rax
	jb	.LBB0_34
.LBB0_33:                               # %for.body.114
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r15,%rbp,8), %rax
	movq	%rax, (%r15,%rbp,8)
	movq	-16(%r15,%rbp,8), %rax
	movq	%rax, -8(%r15,%rbp,8)
	movq	-24(%r15,%rbp,8), %rax
	movq	%rax, -16(%r15,%rbp,8)
	movq	-32(%r15,%rbp,8), %rax
	movq	%rax, -24(%r15,%rbp,8)
	leaq	-4(%rbp), %rbp
	cmpq	$1, %rbp
	jg	.LBB0_33
.LBB0_34:                               # %for.end.122
	addq	$16, %r15
	addl	$-2, %r14d
	movq	40(%rsp), %r13          # 8-byte Reload
	jmp	.LBB0_36
.LBB0_142:                              # %if.then.422
	movl	$1, %edi
	callq	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_140
	.quad	.LBB0_141
	.quad	.LBB0_65
	.quad	.LBB0_65
	.quad	.LBB0_128
	.quad	.LBB0_65
	.quad	.LBB0_65
	.quad	.LBB0_132
.LJTI0_1:
	.quad	.LBB0_106
	.quad	.LBB0_65
	.quad	.LBB0_93
	.quad	.LBB0_65
	.quad	.LBB0_111
	.quad	.LBB0_65
	.quad	.LBB0_65
	.quad	.LBB0_105
	.quad	.LBB0_65
	.quad	.LBB0_65
	.quad	.LBB0_100
	.quad	.LBB0_65
	.quad	.LBB0_65
	.quad	.LBB0_65
	.quad	.LBB0_65
	.quad	.LBB0_101
	.quad	.LBB0_104
	.quad	.LBB0_103
	.quad	.LBB0_65
	.quad	.LBB0_104
	.quad	.LBB0_65
	.quad	.LBB0_65
	.quad	.LBB0_104

	.text
	.align	16, 0x90
	.type	hputc,@function
hputc:                                  # @hputc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movl	%edi, %ebx
	movl	%ebx, %eax
	shrl	$4, %eax
	andl	$15, %eax
	movsbl	.L.str.7(%rax), %edi
	callq	_IO_putc
	andl	$15, %ebx
	movsbl	.L.str.7(%rbx), %edi
	movq	%r14, %rsi
	callq	_IO_putc
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	hputc, .Lfunc_end1-hputc
	.cfi_endproc

	.align	16, 0x90
	.type	hputs,@function
hputs:                                  # @hputs
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
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
.Ltmp23:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movb	(%r15), %al
	testb	%al, %al
	je	.LBB2_3
# BB#1:                                 # %while.body.preheader
	incq	%r15
	.align	16, 0x90
.LBB2_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%al, %ebx
	movq	%rbx, %rax
	shrq	$4, %rax
	movsbl	.L.str.7(%rax), %edi
	movq	%r14, %rsi
	callq	_IO_putc
	andl	$15, %ebx
	movsbl	.L.str.7(%rbx), %edi
	movq	%r14, %rsi
	callq	_IO_putc
	movb	(%r15), %al
	incq	%r15
	testb	%al, %al
	jne	.LBB2_2
.LBB2_3:                                # %while.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	hputs, .Lfunc_end2-hputs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"-e"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"File param size exceeded\n"
	.size	.L.str.2, 26

	.type	main.dash,@object       # @main.dash
	.data
main.dash:
	.asciz	"-"
	.size	main.dash, 2

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"-h"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-n"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Line limit exceeded\n"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"r"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"0123456789abcdef"
	.size	.L.str.7, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
