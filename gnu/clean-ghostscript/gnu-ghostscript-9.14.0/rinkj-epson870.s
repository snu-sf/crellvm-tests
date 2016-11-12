	.text
	.file	"rinkj-epson870.bc"
	.globl	rinkj_epson870_new
	.align	16, 0x90
	.type	rinkj_epson870_new,@function
rinkj_epson870_new:                     # @rinkj_epson870_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$200, %edi
	callq	malloc
	movq	$rinkj_escp_set, (%rax)
	movq	$rinkj_escp_write, 16(%rax)
	movq	$rinkj_escp_init, 8(%rax)
	movl	$0, 24(%rax)
	movl	$0, 40(%rax)
	movq	%rbx, 32(%rax)
	movl	$4, 72(%rax)
	movl	$1, 76(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%rax)
	movl	$-1, 180(%rax)
	movl	$-1, 188(%rax)
	movl	$-1, 192(%rax)
	movl	$-1, 196(%rax)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	rinkj_epson870_new, .Lfunc_end0-rinkj_epson870_new
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_escp_set,@function
rinkj_escp_set:                         # @rinkj_escp_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 64
.Ltmp8:
	.cfi_offset %rbx, -48
.Ltmp9:
	.cfi_offset %r12, -40
.Ltmp10:
	.cfi_offset %r13, -32
.Ltmp11:
	.cfi_offset %r14, -24
.Ltmp12:
	.cfi_offset %r15, -16
	movq	%rdi, %r12
	leaq	(%rsp), %rax
	leaq	8(%rsp), %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	rinkj_config_keyval
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB1_121
# BB#1:                                 # %land.lhs.true.lr.ph
	leaq	(%rsp), %r14
	leaq	8(%rsp), %r15
	.align	16, 0x90
.LBB1_2:                                # %land.lhs.true
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_10
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-82, %eax
	testq	%rcx, %rcx
	je	.LBB1_11
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_11
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB1_11
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_11
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-115, %eax
	cmpq	$3, %rcx
	jb	.LBB1_11
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_11
# BB#9:                                 # %if.then.29
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-111, %eax
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_10:                               # %cond.false
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_11:                               # %cond.end
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_12
# BB#15:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_23
# BB#16:                                # %cond.true.61
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-77, %eax
	testq	%rcx, %rcx
	je	.LBB1_24
# BB#17:                                # %cond.true.61
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_24
# BB#18:                                # %if.then.75
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB1_24
# BB#19:                                # %if.then.75
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_24
# BB#20:                                # %if.then.85
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-110, %eax
	cmpq	$3, %rcx
	jb	.LBB1_24
# BB#21:                                # %if.then.85
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_24
# BB#22:                                # %if.then.95
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-117, %eax
	jmp	.LBB1_24
	.align	16, 0x90
.LBB1_12:                               # %if.then.39
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rbx
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	strtol
	movl	%eax, 80(%r12)
	movl	$120, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB1_14
# BB#13:                                # %if.then.46
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rax
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	strtol
	movl	%eax, 84(%r12)
	jmp	.LBB1_118
	.align	16, 0x90
.LBB1_23:                               # %cond.false.104
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_24:                               # %cond.end.106
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_25
# BB#28:                                # %land.lhs.true.121
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.2, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_36
# BB#29:                                # %cond.true.125
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-77, %eax
	testq	%rcx, %rcx
	je	.LBB1_37
# BB#30:                                # %cond.true.125
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_37
# BB#31:                                # %if.then.139
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-111, %eax
	cmpq	$2, %rcx
	jb	.LBB1_37
# BB#32:                                # %if.then.139
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_37
# BB#33:                                # %if.then.149
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-100, %eax
	cmpq	$3, %rcx
	jb	.LBB1_37
# BB#34:                                # %if.then.149
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_37
# BB#35:                                # %if.then.159
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-101, %eax
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_25:                               # %if.then.109
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	56(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB1_27
# BB#26:                                # %if.then.111
                                        #   in Loop: Header=BB1_2 Depth=1
	callq	free
.LBB1_27:                               # %if.end.113
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rax
	movq	%rax, 56(%r12)
	movq	$0, (%rsp)
	jmp	.LBB1_118
.LBB1_36:                               # %cond.false.168
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.2, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_37:                               # %cond.end.170
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_38
# BB#41:                                # %land.lhs.true.185
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.3, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_49
# BB#42:                                # %cond.true.189
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-66, %eax
	testq	%rcx, %rcx
	je	.LBB1_50
# BB#43:                                # %cond.true.189
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_50
# BB#44:                                # %if.then.203
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-105, %eax
	cmpq	$2, %rcx
	jb	.LBB1_50
# BB#45:                                # %if.then.203
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_50
# BB#46:                                # %if.then.213
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB1_50
# BB#47:                                # %if.then.213
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_50
# BB#48:                                # %if.then.223
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-115, %eax
	jmp	.LBB1_50
.LBB1_38:                               # %if.then.173
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	64(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB1_40
# BB#39:                                # %if.then.175
                                        #   in Loop: Header=BB1_2 Depth=1
	callq	free
.LBB1_40:                               # %if.end.177
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rax
	movq	%rax, 64(%r12)
	movq	$0, (%rsp)
	jmp	.LBB1_118
.LBB1_14:                               # %if.else
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	80(%r12), %eax
	movl	%eax, 84(%r12)
	jmp	.LBB1_118
.LBB1_49:                               # %cond.false.232
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_50:                               # %cond.end.234
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_51
# BB#52:                                # %land.lhs.true.245
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.4, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_60
# BB#53:                                # %cond.true.249
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-78, %eax
	testq	%rcx, %rcx
	je	.LBB1_61
# BB#54:                                # %cond.true.249
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_61
# BB#55:                                # %if.then.263
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-117, %eax
	cmpq	$2, %rcx
	jb	.LBB1_61
# BB#56:                                # %if.then.263
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_61
# BB#57:                                # %if.then.273
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-109, %eax
	cmpq	$3, %rcx
	jb	.LBB1_61
# BB#58:                                # %if.then.273
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_61
# BB#59:                                # %if.then.283
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-67, %eax
	jmp	.LBB1_61
.LBB1_51:                               # %if.then.237
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 76(%r12)
	jmp	.LBB1_118
.LBB1_60:                               # %cond.false.292
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.4, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_61:                               # %cond.end.294
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_62
# BB#63:                                # %land.lhs.true.305
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.5, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_71
# BB#64:                                # %cond.true.309
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-80, %eax
	testq	%rcx, %rcx
	je	.LBB1_72
# BB#65:                                # %cond.true.309
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_72
# BB#66:                                # %if.then.323
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-114, %eax
	cmpq	$2, %rcx
	jb	.LBB1_72
# BB#67:                                # %if.then.323
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_72
# BB#68:                                # %if.then.333
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-105, %eax
	cmpq	$3, %rcx
	jb	.LBB1_72
# BB#69:                                # %if.then.333
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_72
# BB#70:                                # %if.then.343
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-110, %eax
	jmp	.LBB1_72
.LBB1_62:                               # %if.then.297
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 72(%r12)
	jmp	.LBB1_118
.LBB1_71:                               # %cond.false.352
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.5, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_72:                               # %cond.end.354
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_73
# BB#74:                                # %land.lhs.true.365
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.6, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_82
# BB#75:                                # %cond.true.369
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-77, %eax
	testq	%rcx, %rcx
	je	.LBB1_83
# BB#76:                                # %cond.true.369
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_83
# BB#77:                                # %if.then.383
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-105, %eax
	cmpq	$2, %rcx
	jb	.LBB1_83
# BB#78:                                # %if.then.383
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_83
# BB#79:                                # %if.then.393
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-99, %eax
	cmpq	$3, %rcx
	jb	.LBB1_83
# BB#80:                                # %if.then.393
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_83
# BB#81:                                # %if.then.403
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-114, %eax
	jmp	.LBB1_83
.LBB1_73:                               # %if.then.357
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 196(%r12)
	jmp	.LBB1_118
.LBB1_82:                               # %cond.false.412
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.6, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_83:                               # %cond.end.414
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_84
# BB#85:                                # %land.lhs.true.425
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.7, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_93
# BB#86:                                # %cond.true.429
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-85, %eax
	testq	%rcx, %rcx
	je	.LBB1_94
# BB#87:                                # %cond.true.429
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_94
# BB#88:                                # %if.then.443
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB1_94
# BB#89:                                # %if.then.443
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_94
# BB#90:                                # %if.then.453
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-105, %eax
	cmpq	$3, %rcx
	jb	.LBB1_94
# BB#91:                                # %if.then.453
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_94
# BB#92:                                # %if.then.463
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-100, %eax
	jmp	.LBB1_94
.LBB1_84:                               # %if.then.417
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 188(%r12)
	jmp	.LBB1_118
.LBB1_93:                               # %cond.false.472
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.7, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_94:                               # %cond.end.474
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_95
# BB#96:                                # %land.lhs.true.485
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.8, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_104
# BB#97:                                # %cond.true.489
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-65, %eax
	testq	%rcx, %rcx
	je	.LBB1_105
# BB#98:                                # %cond.true.489
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_105
# BB#99:                                # %if.then.503
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-117, %eax
	cmpq	$2, %rcx
	jb	.LBB1_105
# BB#100:                               # %if.then.503
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_105
# BB#101:                               # %if.then.513
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-116, %eax
	cmpq	$3, %rcx
	jb	.LBB1_105
# BB#102:                               # %if.then.513
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_105
# BB#103:                               # %if.then.523
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-111, %eax
	jmp	.LBB1_105
.LBB1_95:                               # %if.then.477
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 192(%r12)
	jmp	.LBB1_118
.LBB1_104:                              # %cond.false.532
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.8, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_105:                              # %cond.end.534
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	je	.LBB1_106
# BB#107:                               # %land.lhs.true.545
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.9, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB1_115
# BB#108:                               # %cond.true.549
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	(%r13), %eax
	addl	$-66, %eax
	testq	%rcx, %rcx
	je	.LBB1_116
# BB#109:                               # %cond.true.549
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_116
# BB#110:                               # %if.then.563
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	1(%r13), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB1_116
# BB#111:                               # %if.then.563
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_116
# BB#112:                               # %if.then.573
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	2(%r13), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB1_116
# BB#113:                               # %if.then.573
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_116
# BB#114:                               # %if.then.583
                                        #   in Loop: Header=BB1_2 Depth=1
	movzbl	3(%r13), %eax
	addl	$-110, %eax
	jmp	.LBB1_116
.LBB1_106:                              # %if.then.537
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 180(%r12)
	jmp	.LBB1_118
.LBB1_115:                              # %cond.false.592
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.9, %esi
	movq	%r13, %rdi
	callq	strcmp
.LBB1_116:                              # %cond.end.594
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%eax, %eax
	jne	.LBB1_118
# BB#117:                               # %if.then.597
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, 184(%r12)
	.align	16, 0x90
.LBB1_118:                              # %if.end.608
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r13, %rdi
	callq	free
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_120
# BB#119:                               # %if.then.610
                                        #   in Loop: Header=BB1_2 Depth=1
	callq	free
.LBB1_120:                              # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	8(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	rinkj_config_keyval
	movq	%rax, %r13
	testq	%r13, %r13
	jne	.LBB1_2
.LBB1_121:                              # %for.end
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	rinkj_escp_set, .Lfunc_end1-rinkj_escp_set
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_escp_write,@function
rinkj_escp_write:                       # @rinkj_escp_write
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
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%r15, %r15
	je	.LBB2_1
# BB#14:                                # %if.end
	movl	48(%rbx), %r11d
	movl	%r11d, %eax
	cltd
	idivl	160(%rbx)
	movl	%edx, 4(%rsp)           # 4-byte Spill
	cmpl	$0, 72(%rbx)
	jle	.LBB2_18
# BB#15:                                # %for.body.lr.ph
	movl	76(%rbx), %eax
	imull	40(%rbx), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movslq	%eax, %r12
	xorl	%ebp, %ebp
	movslq	4(%rsp), %r13           # 4-byte Folded Reload
	.align	16, 0x90
.LBB2_16:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	164(%rbx), %rax
	imulq	%r13, %rax
	addq	144(%rbx), %rax
	movslq	168(%rbx), %rdi
	movslq	%ebp, %r14
	imulq	%r14, %rdi
	addq	%rax, %rdi
	movq	(%r15,%rbp,8), %rsi
	movq	%r12, %rdx
	callq	memcpy
	movl	72(%rbx), %eax
	imull	4(%rsp), %eax           # 4-byte Folded Reload
	addl	%eax, %r14d
	movslq	%r14d, %rax
	movq	152(%rbx), %rcx
	movb	$-1, (%rcx,%rax)
	incq	%rbp
	movslq	72(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB2_16
# BB#17:                                # %for.cond.for.end_crit_edge
	movl	48(%rbx), %r11d
.LBB2_18:                               # %for.end
	incl	%r11d
	movl	%r11d, 48(%rbx)
	movl	172(%rbx), %r8d
	movl	100(%rbx), %r10d
	movl	104(%rbx), %esi
	movl	%esi, %ecx
	imull	%r10d, %ecx
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	movl	108(%rbx), %edi
	movl	%ebp, %eax
	imull	%esi, %eax
	imull	%edi, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r9d
	movl	%ebp, %eax
	cltd
	idivl	%esi
	movl	%edx, %ebp
	cmpl	$8, %esi
	je	.LBB2_23
# BB#19:                                # %for.end
	cmpl	$6, %esi
	jne	.LBB2_20
# BB#22:                                # %sw.bb.9.i
	movslq	%ebp, %rax
	movl	rinkj_escp_ytop.six(,%rax,4), %ebp
	jmp	.LBB2_24
	.align	16, 0x90
.LBB2_1:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	172(%rbx), %r9d
	movl	100(%rbx), %r8d
	movl	104(%rbx), %ebp
	movl	%ebp, %esi
	imull	%r8d, %esi
	movl	%r9d, %eax
	cltd
	idivl	%esi
	movl	%edx, %edi
	movl	108(%rbx), %ecx
	movl	%edi, %eax
	imull	%ebp, %eax
	imull	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, %r10d
	movl	%edi, %eax
	cltd
	idivl	%ebp
	movl	%edx, %edi
	cmpl	$8, %ebp
	je	.LBB2_6
# BB#2:                                 # %for.cond.i
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$6, %ebp
	jne	.LBB2_3
# BB#5:                                 # %sw.bb.9.i.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	%edi, %rax
	movl	rinkj_escp_ytop.six(,%rax,4), %edi
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_6:                                # %sw.bb.12.i.i
                                        #   in Loop: Header=BB2_1 Depth=1
	leal	(%rdi,%rdi,2), %edi
	jmp	.LBB2_7
	.align	16, 0x90
.LBB2_3:                                # %for.cond.i
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$4, %ebp
	jne	.LBB2_7
# BB#4:                                 # %sw.bb.i.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	%edi, %rax
	movl	rinkj_escp_ytop.four(,%rax,4), %edi
	.align	16, 0x90
.LBB2_7:                                # %sw.epilog.i.i
                                        #   in Loop: Header=BB2_1 Depth=1
	addl	%ebp, %edi
	movl	%r10d, %eax
	cltd
	idivl	%ebp
	subl	%edx, %edi
	movl	%edi, %eax
	cltd
	idivl	%ebp
	movl	%edx, %edi
	addl	%r10d, %edi
	movl	%r9d, %eax
	cltd
	idivl	%esi
	movl	%ecx, %edx
	imull	%ebp, %edx
	imull	%eax, %edx
	addl	%edi, %edx
	imull	$23, %r9d, %eax
	cmpl	$96, %ecx
	cmovnel	%edx, %eax
	cmpl	$4, %ebp
	cmovnel	%edx, %eax
	cmpl	$4, %r8d
	cmovnel	%edx, %eax
	cmpl	48(%rbx), %eax
	jge	.LBB2_9
# BB#8:                                 # %if.end.i
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	%rbx, %rdi
	callq	rinkj_escp_flush
	testl	%eax, %eax
	je	.LBB2_1
.LBB2_9:                                # %rinkj_escp_flush_bottom.exit
	movq	32(%rbx), %rdi
	movl	$.L.str.10, %esi
	callq	rinkj_byte_stream_puts
	movq	32(%rbx), %rdi
	callq	rinkj_byte_stream_close
	movl	%eax, %ebp
	movq	56(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_11
# BB#10:                                # %if.then.i
	callq	free
.LBB2_11:                               # %if.end.i.32
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_13
# BB#12:                                # %if.then.3.i
	callq	free
.LBB2_13:                               # %rinkj_escp_free.exit
	movq	144(%rbx), %rdi
	callq	free
	movq	152(%rbx), %rdi
	callq	free
	movq	%rbx, %rdi
	callq	free
	jmp	.LBB2_25
.LBB2_23:                               # %sw.bb.12.i
	leal	(%rbp,%rbp,2), %ebp
	jmp	.LBB2_24
.LBB2_20:                               # %for.end
	cmpl	$4, %esi
	jne	.LBB2_24
# BB#21:                                # %sw.bb.i
	movslq	%ebp, %rax
	movl	rinkj_escp_ytop.four(,%rax,4), %ebp
.LBB2_24:                               # %sw.epilog.i
	addl	%esi, %ebp
	movl	%r9d, %eax
	cltd
	idivl	%esi
	subl	%edx, %ebp
	movl	%ebp, %eax
	cltd
	idivl	%esi
	movl	%edx, %ebp
	addl	%r9d, %ebp
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%edi, %ecx
	imull	%esi, %ecx
	imull	%eax, %ecx
	addl	%ebp, %ecx
	imull	$23, %r8d, %eax
	cmpl	$96, %edi
	cmovnel	%ecx, %eax
	cmpl	$4, %esi
	cmovnel	%ecx, %eax
	cmpl	$4, %r10d
	cmovnel	%ecx, %eax
	decl	%edi
	imull	%esi, %edi
	movl	136(%rbx), %ecx
	addl	%eax, %edi
	leal	1(%rcx,%rdi), %eax
	xorl	%ebp, %ebp
	cmpl	%eax, %r11d
	jge	.LBB2_26
.LBB2_25:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_26:                               # %if.end.26
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	rinkj_escp_flush        # TAILCALL
.Lfunc_end2:
	.size	rinkj_escp_write, .Lfunc_end2-rinkj_escp_write
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI3_0:
	.long	60                      # 0x3c
	.long	480                     # 0x1e0
	.long	240                     # 0xf0
	.long	480                     # 0x1e0
	.text
	.align	16, 0x90
	.type	rinkj_escp_init,@function
rinkj_escp_init:                        # @rinkj_escp_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 96
.Ltmp32:
	.cfi_offset %rbx, -48
.Ltmp33:
	.cfi_offset %r12, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	(%rsi), %eax
	movl	%eax, 40(%r14)
	movl	4(%rsi), %eax
	movl	%eax, 44(%r14)
	movl	8(%rsi), %eax
	movl	%eax, 72(%r14)
	movl	$0, 172(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 112(%r14)
	movq	$0, 128(%r14)
	movq	64(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB3_50
# BB#1:                                 # %land.lhs.true.13
	movl	$.L.str.15, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_9
# BB#2:                                 # %cond.true
	movzbl	(%rbx), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB3_10
# BB#3:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB3_10
# BB#4:                                 # %if.then
	movzbl	1(%rbx), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB3_10
# BB#5:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB3_10
# BB#6:                                 # %if.then.36
	movzbl	2(%rbx), %eax
	addl	$-121, %eax
	cmpq	$3, %rcx
	jb	.LBB3_10
# BB#7:                                 # %if.then.36
	testl	%eax, %eax
	jne	.LBB3_10
# BB#8:                                 # %if.then.46
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB3_10
.LBB3_9:                                # %cond.false
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_10:                               # %cond.end
	testl	%eax, %eax
	je	.LBB3_11
# BB#12:                                # %if.else
	movq	64(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB3_50
# BB#13:                                # %land.lhs.true.66
	movl	$.L.str.16, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_21
# BB#14:                                # %cond.true.70
	movzbl	(%rbx), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB3_22
# BB#15:                                # %cond.true.70
	testl	%eax, %eax
	jne	.LBB3_22
# BB#16:                                # %if.then.85
	movzbl	1(%rbx), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB3_22
# BB#17:                                # %if.then.85
	testl	%eax, %eax
	jne	.LBB3_22
# BB#18:                                # %if.then.95
	movzbl	2(%rbx), %eax
	addl	$-121, %eax
	cmpq	$3, %rcx
	jb	.LBB3_22
# BB#19:                                # %if.then.95
	testl	%eax, %eax
	jne	.LBB3_22
# BB#20:                                # %if.then.105
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB3_22
.LBB3_11:                               # %if.then.57
	movl	$360, 92(%r14)          # imm = 0x168
	movl	$120, 96(%r14)
	movl	$2, 88(%r14)
	movl	$48, 108(%r14)
	movl	$0, 196(%r14)
	movl	$120, %ecx
	movl	$360, %esi              # imm = 0x168
	movl	$48, %r9d
	jmp	.LBB3_52
.LBB3_21:                               # %cond.false.114
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_22:                               # %cond.end.117
	testl	%eax, %eax
	je	.LBB3_23
# BB#26:                                # %if.else.142
	movq	64(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB3_50
# BB#27:                                # %land.lhs.true.151
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_35
# BB#28:                                # %cond.true.155
	movzbl	(%rbx), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB3_36
# BB#29:                                # %cond.true.155
	testl	%eax, %eax
	jne	.LBB3_36
# BB#30:                                # %if.then.170
	movzbl	1(%rbx), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB3_36
# BB#31:                                # %if.then.170
	testl	%eax, %eax
	jne	.LBB3_36
# BB#32:                                # %if.then.180
	movzbl	2(%rbx), %eax
	addl	$-121, %eax
	cmpq	$3, %rcx
	jb	.LBB3_36
# BB#33:                                # %if.then.180
	testl	%eax, %eax
	jne	.LBB3_36
# BB#34:                                # %if.then.190
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB3_36
.LBB3_23:                               # %if.then.120
	movl	$180, 96(%r14)
	movabsq	$1546188226562, %rax    # imm = 0x16800000002
	movq	%rax, 88(%r14)
	movl	$360, %esi              # imm = 0x168
	cmpl	$2880, 80(%r14)         # imm = 0xB40
	jne	.LBB3_25
# BB#24:                                # %if.then.126
	movabsq	$3092376453121, %rax    # imm = 0x2D000000001
	movq	%rax, 88(%r14)
	movl	$720, %esi              # imm = 0x2D0
.LBB3_25:                               # %if.end.129
	movl	$96, 108(%r14)
	movl	$0, 196(%r14)
	movslq	84(%r14), %rax
	imulq	$-1240768329, %rax, %rcx # imm = 0xFFFFFFFFB60B60B7
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$8, %ecx
	addl	%eax, %ecx
	movl	%ecx, 124(%r14)
	movl	%ecx, 128(%r14)
	movl	%ecx, 132(%r14)
	movl	$180, %ecx
	movl	$96, %r9d
	jmp	.LBB3_52
.LBB3_35:                               # %cond.false.199
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_36:                               # %cond.end.202
	testl	%eax, %eax
	je	.LBB3_37
# BB#38:                                # %if.else.212
	movq	64(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB3_50
# BB#39:                                # %land.lhs.true.221
	movl	$.L.str.18, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_47
# BB#40:                                # %cond.true.225
	movzbl	(%rbx), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB3_48
# BB#41:                                # %cond.true.225
	testl	%eax, %eax
	jne	.LBB3_48
# BB#42:                                # %if.then.240
	movzbl	1(%rbx), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB3_48
# BB#43:                                # %if.then.240
	testl	%eax, %eax
	jne	.LBB3_48
# BB#44:                                # %if.then.250
	movzbl	2(%rbx), %eax
	addl	$-121, %eax
	cmpq	$3, %rcx
	jb	.LBB3_48
# BB#45:                                # %if.then.250
	testl	%eax, %eax
	jne	.LBB3_48
# BB#46:                                # %if.then.260
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB3_48
.LBB3_37:                               # %if.then.205
	movl	80(%r14), %esi
	movl	%esi, 92(%r14)
	movl	84(%r14), %ecx
	movl	%ecx, 96(%r14)
	movl	76(%r14), %eax
	movl	%eax, 88(%r14)
	movl	$1, 108(%r14)
	jmp	.LBB3_51
.LBB3_47:                               # %cond.false.269
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_48:                               # %cond.end.272
	testl	%eax, %eax
	je	.LBB3_49
.LBB3_50:                               # %if.else.287
	movl	$1, 104(%r14)
	movl	$1, 108(%r14)
	movl	92(%r14), %esi
	movl	96(%r14), %ecx
.LBB3_51:                               # %if.end.292
	movl	$1, %r9d
.LBB3_52:                               # %if.end.292
	movl	84(%r14), %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	%ecx, 104(%r14)
	movl	80(%r14), %eax
	cltd
	idivl	%esi
	movl	%eax, %r8d
	movl	%r8d, 100(%r14)
	movl	$0, 136(%r14)
	movl	112(%r14), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	cmovnsl	%eax, %ebx
	movl	%ebx, 136(%r14)
	movl	116(%r14), %eax
	cmpl	%ebx, %eax
	cmovgel	%eax, %ebx
	movl	%ebx, 136(%r14)
	movl	120(%r14), %eax
	cmpl	%ebx, %eax
	cmovgel	%eax, %ebx
	movl	%ebx, 136(%r14)
	movl	124(%r14), %eax
	cmpl	%ebx, %eax
	cmovgel	%eax, %ebx
	movl	%ebx, 136(%r14)
	movl	128(%r14), %eax
	cmpl	%ebx, %eax
	cmovgel	%eax, %ebx
	movl	%ebx, 136(%r14)
	movl	132(%r14), %eax
	cmpl	%ebx, %eax
	cmovgel	%eax, %ebx
	movl	%ebx, 136(%r14)
	movl	%r8d, %edi
	imull	%ecx, %edi
	leal	-1(%rdi), %r11d
	movl	%r11d, %eax
	cltd
	idivl	%edi
	movl	%edx, %esi
	movl	%esi, %eax
	imull	%ecx, %eax
	imull	%r9d, %eax
	cltd
	idivl	%edi
	movl	%eax, %r10d
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%edx, %esi
	cmpl	$8, %ecx
	je	.LBB3_57
# BB#53:                                # %if.end.292
	cmpl	$6, %ecx
	jne	.LBB3_54
# BB#56:                                # %sw.bb.9.i
	movslq	%esi, %rax
	movl	rinkj_escp_ytop.six(,%rax,4), %esi
	jmp	.LBB3_58
.LBB3_57:                               # %sw.bb.12.i
	leal	(%rsi,%rsi,2), %esi
	jmp	.LBB3_58
.LBB3_54:                               # %if.end.292
	cmpl	$4, %ecx
	jne	.LBB3_58
# BB#55:                                # %sw.bb.i
	movslq	%esi, %rax
	movl	rinkj_escp_ytop.four(,%rax,4), %esi
.LBB3_58:                               # %sw.epilog.i
	addl	%ecx, %esi
	movl	%r10d, %eax
	cltd
	idivl	%ecx
	subl	%edx, %esi
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%edx, %esi
	addl	%r10d, %esi
	movl	%r11d, %eax
	cltd
	idivl	%edi
	movl	%r9d, %edx
	imull	%ecx, %edx
	imull	%eax, %edx
	addl	%esi, %edx
	imull	$23, %r11d, %eax
	cmpl	$96, %r9d
	cmovnel	%edx, %eax
	cmpl	$4, %r8d
	cmovnel	%edx, %eax
	cmpl	$4, %ecx
	cmovnel	%edx, %eax
	movl	$1, %edx
	subl	%ecx, %edx
	addl	%ebx, %edx
	addl	%eax, %edx
	movl	%edx, 48(%r14)
	movl	76(%r14), %eax
	imull	40(%r14), %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, 168(%r14)
	movslq	72(%r14), %rcx
	movslq	%eax, %rdi
	imulq	%rcx, %rdi
	movl	%edi, 164(%r14)
	movl	$2048, 160(%r14)        # imm = 0x800
	movl	$2048, %esi             # imm = 0x800
	callq	calloc
	movq	%rax, 144(%r14)
	movslq	72(%r14), %rdi
	movslq	160(%r14), %rsi
	callq	calloc
	movq	%rax, 152(%r14)
	movl	$-1, 176(%r14)
	movq	64(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB3_112
# BB#59:                                # %land.lhs.true.358
	movl	$.L.str.15, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_67
# BB#60:                                # %cond.true.362
	movzbl	(%rbx), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB3_68
# BB#61:                                # %cond.true.362
	testl	%eax, %eax
	jne	.LBB3_68
# BB#62:                                # %if.then.377
	movzbl	1(%rbx), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB3_68
# BB#63:                                # %if.then.377
	testl	%eax, %eax
	jne	.LBB3_68
# BB#64:                                # %if.then.387
	movzbl	2(%rbx), %eax
	addl	$-121, %eax
	cmpq	$3, %rcx
	jb	.LBB3_68
# BB#65:                                # %if.then.387
	testl	%eax, %eax
	jne	.LBB3_68
# BB#66:                                # %if.then.397
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB3_68
.LBB3_67:                               # %cond.false.406
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_68:                               # %cond.end.409
	testl	%eax, %eax
	je	.LBB3_69
# BB#70:                                # %if.else.414
	movq	64(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB3_112
# BB#71:                                # %land.lhs.true.423
	movl	$.L.str.16, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_79
# BB#72:                                # %cond.true.427
	movzbl	(%rbx), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB3_80
# BB#73:                                # %cond.true.427
	testl	%eax, %eax
	jne	.LBB3_80
# BB#74:                                # %if.then.442
	movzbl	1(%rbx), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB3_80
# BB#75:                                # %if.then.442
	testl	%eax, %eax
	jne	.LBB3_80
# BB#76:                                # %if.then.452
	movzbl	2(%rbx), %eax
	addl	$-121, %eax
	cmpq	$3, %rcx
	jb	.LBB3_80
# BB#77:                                # %if.then.452
	testl	%eax, %eax
	jne	.LBB3_80
# BB#78:                                # %if.then.462
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB3_80
.LBB3_69:                               # %if.then.412
	movq	32(%r14), %rdi
	movl	$.L.str.19, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.21, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.22, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	%r14, %rdi
	callq	rinkj_epson_set_common
	movq	32(%r14), %rdi
	movl	$.L.str.23, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.24, %esi
.LBB3_111:                              # %if.end.612
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	jmp	.LBB3_112
.LBB3_79:                               # %cond.false.471
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_80:                               # %cond.end.474
	testl	%eax, %eax
	je	.LBB3_81
# BB#83:                                # %if.else.479
	movq	64(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB3_112
# BB#84:                                # %land.lhs.true.488
	movl	$.L.str.17, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_92
# BB#85:                                # %cond.true.492
	movzbl	(%rbx), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB3_93
# BB#86:                                # %cond.true.492
	testl	%eax, %eax
	jne	.LBB3_93
# BB#87:                                # %if.then.507
	movzbl	1(%rbx), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB3_93
# BB#88:                                # %if.then.507
	testl	%eax, %eax
	jne	.LBB3_93
# BB#89:                                # %if.then.517
	movzbl	2(%rbx), %eax
	addl	$-121, %eax
	cmpq	$3, %rcx
	jb	.LBB3_93
# BB#90:                                # %if.then.517
	testl	%eax, %eax
	jne	.LBB3_93
# BB#91:                                # %if.then.527
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB3_93
.LBB3_81:                               # %if.then.477
	movq	32(%r14), %rdi
	movl	$.L.str.19, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.28, %esi
	movl	$8, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.29, %esi
	movl	$0, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.30, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.21, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$2880, %eax             # imm = 0xB40
	xorl	%edx, %edx
	idivl	84(%r14)
	movl	%eax, %ecx
	movl	$2880, %eax             # imm = 0xB40
	xorl	%edx, %edx
	idivl	80(%r14)
	movl	%eax, %ebx
	movl	$11, 8(%rsp)
	movl	$64, (%rsp)
	movl	$.L.str.32, %esi
	movl	$0, %edx
	xorl	%eax, %eax
	movl	%ecx, %r8d
	movl	%ebx, %r9d
	callq	rinkj_byte_stream_printf
	movq	%r14, %rdi
	callq	rinkj_epson_set_common
	movq	32(%r14), %rdi
	movl	$.L.str.31, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	jmp	.LBB3_82
.LBB3_92:                               # %cond.false.536
	movl	$.L.str.17, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_93:                               # %cond.end.539
	testl	%eax, %eax
	je	.LBB3_94
# BB#99:                                # %if.else.544
	movq	64(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB3_112
# BB#100:                               # %land.lhs.true.553
	movl	$.L.str.18, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB3_108
# BB#101:                               # %cond.true.557
	movzbl	(%rbx), %eax
	addl	$-83, %eax
	testq	%rcx, %rcx
	je	.LBB3_109
# BB#102:                               # %cond.true.557
	testl	%eax, %eax
	jne	.LBB3_109
# BB#103:                               # %if.then.572
	movzbl	1(%rbx), %eax
	addl	$-116, %eax
	cmpq	$2, %rcx
	jb	.LBB3_109
# BB#104:                               # %if.then.572
	testl	%eax, %eax
	jne	.LBB3_109
# BB#105:                               # %if.then.582
	movzbl	2(%rbx), %eax
	addl	$-121, %eax
	cmpq	$3, %rcx
	jb	.LBB3_109
# BB#106:                               # %if.then.582
	testl	%eax, %eax
	jne	.LBB3_109
# BB#107:                               # %if.then.592
	movzbl	3(%rbx), %eax
	addl	$-108, %eax
	jmp	.LBB3_109
.LBB3_94:                               # %if.then.542
	movq	32(%r14), %rdi
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.28, %esi
	movl	$8, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$6, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$2, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$129, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$4, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$51, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$5, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$8, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$2, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$9, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$10, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$1, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$128, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$129, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movl	180(%r14), %r9d
	testl	%r9d, %r9d
	js	.LBB3_96
# BB#95:                                # %if.then.i.273
	movq	32(%r14), %rdi
	movl	$.L.str.36, %esi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
.LBB3_96:                               # %if.end.i.275
	movl	184(%r14), %r9d
	testl	%r9d, %r9d
	js	.LBB3_98
# BB#97:                                # %if.then.27.i.277
	movq	32(%r14), %rdi
	addl	$64, %r9d
	movl	$.L.str.36, %esi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
.LBB3_98:                               # %rinkj_epson7600_init.exit
	movq	32(%r14), %rdi
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.37, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.37, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.38, %esi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, (%rsp)
	movl	$.L.str.39, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.36, %esi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$64, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$1, (%rsp)
	movl	$.L.str.35, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$132, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, (%rsp)
	movl	$.L.str.40, %esi
	movl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.41, %esi
	movl	$2, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$0, 24(%rsp)
	movl	$20, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.42, %esi
	movl	$6, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.30, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.21, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.22, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	%r14, %rdi
	callq	rinkj_epson_set_common
	imull	$720, 44(%r14), %eax    # imm = 0x2D0
	cltd
	idivl	84(%r14)
	movl	%eax, %ebx
	addl	$180, %ebx
	movq	32(%r14), %rdi
	movzbl	%bl, %r15d
	movzbl	%bh, %ecx  # NOREX
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %ebp
	sarl	$24, %ebx
	movl	%ebx, 32(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%ecx, %r12d
	movl	$0, (%rsp)
	movl	$.L.str.43, %esi
	movl	$0, %edx
	movl	$128, %ecx
	movl	$67, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	%ebx, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.44, %esi
	movl	$0, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
.LBB3_82:                               # %if.end.612
	movq	32(%r14), %rdi
	movl	$2880, %eax             # imm = 0xB40
	xorl	%edx, %edx
	idivl	96(%r14)
	movl	%eax, %ebx
	movl	$2880, %eax             # imm = 0xB40
	xorl	%edx, %edx
	idivl	92(%r14)
	movl	%eax, (%rsp)
	movl	$.L.str.33, %esi
	movl	$0, %edx
	movl	$64, %ecx
	movl	$11, %r8d
	xorl	%eax, %eax
	movl	%ebx, %r9d
	callq	rinkj_byte_stream_printf
.LBB3_112:                              # %if.end.612
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_108:                              # %cond.false.601
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	strcmp
.LBB3_109:                              # %cond.end.604
	testl	%eax, %eax
	jne	.LBB3_112
# BB#110:                               # %if.then.607
	movq	32(%r14), %rdi
	movl	$.L.str.19, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.21, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.22, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	%r14, %rdi
	callq	rinkj_epson_set_common
	movq	32(%r14), %rdi
	movl	$.L.str.23, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.45, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	movq	32(%r14), %rdi
	movl	$.L.str.46, %esi
	jmp	.LBB3_111
.LBB3_49:                               # %if.then.275
	movl	$360, 92(%r14)          # imm = 0x168
	movl	$180, 96(%r14)
	movl	$2, 88(%r14)
	movl	$0, 196(%r14)
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [60,480,240,480]
	movups	%xmm0, 108(%r14)
	movl	$180, %ecx
	movl	$360, %esi              # imm = 0x168
	movl	$60, %r9d
	jmp	.LBB3_52
.Lfunc_end3:
	.size	rinkj_escp_init, .Lfunc_end3-rinkj_escp_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.long	85                      # 0x55
	.long	85                      # 0x55
	.long	85                      # 0x55
	.long	85                      # 0x55
.LCPI4_1:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
.LCPI4_2:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.align	16, 0x90
	.type	rinkj_escp_flush,@function
rinkj_escp_flush:                       # @rinkj_escp_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$360, %rsp              # imm = 0x168
.Ltmp43:
	.cfi_def_cfa_offset 416
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	%r13, 288(%rsp)         # 8-byte Spill
	movl	172(%r13), %r8d
	movl	100(%r13), %ebx
	movl	104(%r13), %ecx
	movl	%ecx, %esi
	imull	%ebx, %esi
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movl	%edx, %r11d
	movl	108(%r13), %r9d
	movl	%r11d, %eax
	imull	%ecx, %eax
	imull	%r9d, %eax
	cltd
	idivl	%esi
	movl	%eax, %r10d
	movl	%r11d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r15d
	movl	%edx, %ebp
	cmpl	$4, %ebx
	jne	.LBB4_2
# BB#1:                                 # %if.then.i
	movslq	%r15d, %rax
	movl	rinkj_escp_ytop.four(,%rax,4), %r15d
.LBB4_2:                                # %if.end.i
	cmpl	$8, %ecx
	je	.LBB4_7
# BB#3:                                 # %if.end.i
	cmpl	$6, %ecx
	jne	.LBB4_4
# BB#6:                                 # %sw.bb.9.i
	movslq	%ebp, %rax
	movl	rinkj_escp_ytop.six(,%rax,4), %ebp
	jmp	.LBB4_8
.LBB4_7:                                # %sw.bb.12.i
	leal	(%rbp,%rbp,2), %ebp
	jmp	.LBB4_8
.LBB4_4:                                # %if.end.i
	cmpl	$4, %ecx
	jne	.LBB4_8
# BB#5:                                 # %sw.bb.i
	movslq	%ebp, %rax
	movl	rinkj_escp_ytop.four(,%rax,4), %ebp
.LBB4_8:                                # %sw.epilog.i
	addl	%ecx, %ebp
	movl	%r10d, %eax
	cltd
	idivl	%ecx
	subl	%edx, %ebp
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ebp
	addl	%r10d, %ebp
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movl	%r9d, %r12d
	imull	%ecx, %r12d
	imull	%eax, %r12d
	addl	%ebp, %r12d
	cmpl	$4, %ebx
	jne	.LBB4_12
# BB#9:                                 # %sw.epilog.i
	cmpl	$4, %ecx
	jne	.LBB4_12
# BB#10:                                # %sw.epilog.i
	cmpl	$96, %r9d
	jne	.LBB4_12
# BB#11:                                # %if.then.27.i
	andl	$15, %r11d
	movl	rinkj_escp_ytop.sixteen(,%r11,4), %r15d
	imull	$23, %r8d, %r12d
.LBB4_12:                               # %rinkj_escp_ytop.exit
	movq	%r15, 240(%rsp)         # 8-byte Spill
	movl	40(%r13), %eax
	movl	76(%r13), %ecx
	imull	%eax, %ecx
	movl	%ecx, 252(%rsp)         # 4-byte Spill
	imull	88(%r13), %eax
	addl	$7, %eax
	sarl	$3, %eax
	leal	-1(%rbx,%rax), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ebx
	movl	%ebx, 356(%rsp)         # 4-byte Spill
	movslq	%ebx, %r14
	movq	%r14, %rdi
	callq	malloc
	movq	%rax, 328(%rsp)         # 8-byte Spill
	leal	127(%r14), %eax
	sarl	$7, %eax
	addl	%ebx, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movl	176(%r13), %ecx
	movq	32(%r13), %rdi
	cmpl	$-1, %ecx
	je	.LBB4_13
# BB#14:                                # %if.else
	movl	%r12d, %eax
	movl	%r12d, %ebp
	subl	%ecx, %eax
	movzbl	%al, %r8d
	movzbl	%ah, %ebx  # NOREX
	movl	%eax, %ecx
	shrl	$16, %ecx
	movzbl	%cl, %ecx
	shrl	$24, %eax
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	movl	$.L.str.12, %esi
	movl	$4, %edx
	jmp	.LBB4_15
.LBB4_13:                               # %if.then.21
	movl	%r12d, %eax
	movzbl	%al, %r8d
	movzbl	%ah, %ebx  # NOREX
	movl	%eax, %ebp
	movl	$.L.str.11, %esi
	movl	$2, %edx
.LBB4_15:                               # %if.end.36
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	%ebx, %r9d
	callq	rinkj_byte_stream_printf
	movl	%eax, %ebx
	movl	%ebp, 176(%r13)
	testl	%ebx, %ebx
	movl	%ebp, %eax
	movq	328(%rsp), %r10         # 8-byte Reload
	js	.LBB4_18
# BB#16:                                # %for.cond.preheader
	movl	72(%r13), %r8d
	testl	%r8d, %r8d
	jle	.LBB4_17
# BB#20:                                # %for.body.lr.ph
	movl	$16777216, %esi         # imm = 0x1000000
	movb	%r15b, %cl
	shll	%cl, %esi
	movl	252(%rsp), %r12d        # 4-byte Reload
	addl	$7, %r12d
	movl	%r12d, %ecx
	sarl	$3, %ecx
	movl	%ecx, 228(%rsp)         # 4-byte Spill
	movl	%eax, %edi
	movl	%eax, 164(%rsp)         # 4-byte Spill
	notl	%edi
	movl	%edi, 196(%rsp)         # 4-byte Spill
	movl	%r15d, %eax
	andl	$3, %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	sarl	$24, %esi
	movl	%esi, 284(%rsp)         # 4-byte Spill
	xorl	$255, %esi
	movl	%esi, 280(%rsp)         # 4-byte Spill
	movslq	%ecx, %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movl	%r12d, %esi
	sarl	$4, %esi
	movl	%esi, 272(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	andl	$1, %eax
	movl	%eax, 260(%rsp)         # 4-byte Spill
	sarl	$5, %r12d
	movl	%r12d, 252(%rsp)        # 4-byte Spill
	movl	%ecx, %eax
	andl	$3, %eax
	movl	%eax, 256(%rsp)         # 4-byte Spill
	movl	$1, %eax
	subl	%r15d, %eax
	movl	%eax, 264(%rsp)         # 4-byte Spill
	leal	-1(%rcx), %r9d
	movq	%r9, 152(%rsp)          # 8-byte Spill
	leaq	1(%r9), %rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rdx, %rdi
	movq	%rdi, 200(%rsp)         # 8-byte Spill
	leaq	-4(%rdi), %rdx
	shrq	$2, %rdx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movd	%eax, %xmm0
	movaps	%xmm0, 112(%rsp)        # 16-byte Spill
	andl	$1, %edx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	movslq	%r12d, %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	leal	(,%rax,4), %eax
	movslq	%eax, %rdx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movl	356(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %edi
	movl	%edi, 172(%rsp)         # 4-byte Spill
	movzbl	%ah, %eax  # NOREX
	movl	%eax, 168(%rsp)         # 4-byte Spill
	leal	(%r15,%r15), %eax
	movl	%eax, 268(%rsp)         # 4-byte Spill
	movslq	%esi, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leaq	(%r10,%r9), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leal	1(%rcx), %eax
	movl	%eax, 140(%rsp)         # 4-byte Spill
	leaq	4(%r10), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	1(%r10), %rax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	leaq	1(%rdx), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leaq	3(%r10), %rax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	304(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %r15
	.align	16, 0x90
.LBB4_21:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #       Child Loop BB4_85 Depth 3
                                        #       Child Loop BB4_90 Depth 3
                                        #       Child Loop BB4_93 Depth 3
                                        #       Child Loop BB4_56 Depth 3
                                        #       Child Loop BB4_65 Depth 3
                                        #       Child Loop BB4_72 Depth 3
                                        #       Child Loop BB4_75 Depth 3
                                        #       Child Loop BB4_35 Depth 3
                                        #       Child Loop BB4_41 Depth 3
                                        #       Child Loop BB4_47 Depth 3
                                        #       Child Loop BB4_97 Depth 3
                                        #         Child Loop BB4_98 Depth 4
                                        #         Child Loop BB4_105 Depth 4
	movq	%r12, 320(%rsp)         # 8-byte Spill
	movl	112(%r15,%r12,4), %ecx
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movl	196(%rsp), %eax         # 4-byte Reload
	subl	%ecx, %eax
	addl	48(%r15), %eax
	movl	104(%r15), %ecx
	movl	108(%r15), %esi
	addl	%ecx, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ebp
	cmpl	%esi, %ebp
	cmovgl	%esi, %ebp
	testl	%ebp, %ebp
	jle	.LBB4_118
# BB#22:                                # %if.end.61
                                        #   in Loop: Header=BB4_21 Depth=1
	movq	%r10, %r13
	movq	32(%r15), %rdi
	movl	$0, (%rsp)
	movl	$.L.str.13, %esi
	movl	$0, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	192(%rsp), %ecx         # 4-byte Reload
	callq	rinkj_byte_stream_printf
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB4_23
# BB#24:                                # %cleanup.cont
                                        #   in Loop: Header=BB4_21 Depth=1
	movq	32(%r15), %rdi
	movl	rinkj_escp_flush.color(,%r12,4), %edx
	movl	88(%r15), %r8d
	movl	%ebp, 300(%rsp)         # 4-byte Spill
	movzbl	%bpl, %eax
	sarl	$8, %ebp
	movl	%ebp, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	168(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$.L.str.14, %esi
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	172(%rsp), %r9d         # 4-byte Reload
	callq	rinkj_byte_stream_printf
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB4_23
# BB#25:                                # %for.body.99.lr.ph
                                        #   in Loop: Header=BB4_21 Depth=1
	movq	312(%rsp), %rax         # 8-byte Reload
	addl	164(%rsp), %eax         # 4-byte Folded Reload
	movq	%rax, 312(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	jmp	.LBB4_26
	.align	16, 0x90
.LBB4_49:                               # %if.else.13.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$1, %edx
	jne	.LBB4_78
# BB#50:                                # %if.else.13.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$2, %ecx
	jne	.LBB4_78
# BB#51:                                # %if.then.19.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$4, %eax
	je	.LBB4_73
# BB#52:                                # %if.then.19.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$2, %eax
	movq	%r13, %r11
	jne	.LBB4_53
# BB#57:                                # %if.then.26.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%edi, 328(%rsp)         # 4-byte Spill
	cmpl	$0, 228(%rsp)           # 4-byte Folded Reload
	jle	.LBB4_96
# BB#58:                                # %overflow.checked
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpq	$0, 200(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	je	.LBB4_67
# BB#59:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_26 Depth=2
	leaq	(%r10,%r8), %rax
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%r9,%rcx), %rcx
	addq	%rax, %rcx
	cmpq	%rcx, %r11
	ja	.LBB4_61
# BB#60:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_26 Depth=2
	leaq	(%rax,%r9), %rax
	cmpq	128(%rsp), %rax         # 8-byte Folded Reload
	movl	$0, %eax
	jbe	.LBB4_67
.LBB4_61:                               # %vector.ph
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB4_63
# BB#62:                                # %vector.body.prol
                                        #   in Loop: Header=BB4_26 Depth=2
	xorps	%xmm0, %xmm0
	movaps	112(%rsp), %xmm1        # 16-byte Reload
	movss	%xmm1, %xmm0            # xmm0 = xmm1[0],xmm0[1,2,3]
	movd	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	psrad	%xmm0, %xmm1
	pand	.LCPI4_0(%rip), %xmm1
	pshufd	$245, %xmm1, %xmm0      # xmm0 = xmm1[1,1,3,3]
	movdqa	.LCPI4_1(%rip), %xmm2   # xmm2 = [3,3,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pand	.LCPI4_2(%rip), %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%r11)
	movl	$4, %edx
.LBB4_63:                               # %vector.ph.split
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpq	$0, 104(%rsp)           # 8-byte Folded Reload
	movq	200(%rsp), %rax         # 8-byte Reload
	je	.LBB4_67
# BB#64:                                # %vector.ph.split.split
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	200(%rsp), %rax         # 8-byte Reload
	subq	%rdx, %rax
	leaq	(%rdx,%r10), %rcx
	addq	%r8, %rcx
	leaq	4(%r9,%rcx), %rcx
	movq	88(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdx,%rdi), %rbx
	movaps	112(%rsp), %xmm3        # 16-byte Reload
	movdqa	.LCPI4_0(%rip), %xmm4   # xmm4 = [85,85,85,85]
	movdqa	.LCPI4_1(%rip), %xmm5   # xmm5 = [3,3,3,3]
	movdqa	.LCPI4_2(%rip), %xmm6   # xmm6 = [255,255,255,255]
	.align	16, 0x90
.LBB4_65:                               # %vector.body
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorps	%xmm0, %xmm0
	movss	%xmm3, %xmm0            # xmm0 = xmm3[0],xmm0[1,2,3]
	movd	-4(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	psrad	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	pshufd	$245, %xmm1, %xmm2      # xmm2 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%rbx)
	movd	(%rcx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	psrad	%xmm0, %xmm1
	pand	%xmm4, %xmm1
	pshufd	$245, %xmm1, %xmm0      # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rbx)
	addq	$8, %rcx
	addq	$8, %rbx
	addq	$-8, %rax
	jne	.LBB4_65
# BB#66:                                #   in Loop: Header=BB4_26 Depth=2
	movq	200(%rsp), %rax         # 8-byte Reload
.LBB4_67:                               # %middle.block
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpq	%rax, 184(%rsp)         # 8-byte Folded Reload
	je	.LBB4_96
# BB#68:                                # %for.body.i.120.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%eax, %edx
	orl	$1, %edx
	movl	140(%rsp), %ecx         # 4-byte Reload
	subl	%edx, %ecx
	testb	$1, %cl
	je	.LBB4_70
# BB#69:                                # %for.body.i.120.i.prol
                                        #   in Loop: Header=BB4_26 Depth=2
	movsbl	(%rsi,%rax), %esi
	movl	264(%rsp), %ecx         # 4-byte Reload
	sarl	%cl, %esi
	andl	$85, %esi
	leal	(%rsi,%rsi,2), %ecx
	movb	%cl, (%r11,%rax)
	orq	$1, %rax
.LBB4_70:                               # %for.body.i.120.i.preheader.split
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	%edx, 228(%rsp)         # 4-byte Folded Reload
	je	.LBB4_96
# BB#71:                                # %for.body.i.120.i.preheader.split.split
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	228(%rsp), %esi         # 4-byte Reload
	subl	%eax, %esi
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	addq	%rax, %r10
	addq	%r8, %r10
	leaq	1(%r9,%r10), %rax
	.align	16, 0x90
.LBB4_72:                               # %for.body.i.120.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	-1(%rax), %edi
	movl	264(%rsp), %ecx         # 4-byte Reload
	sarl	%cl, %edi
	andl	$85, %edi
	leal	(%rdi,%rdi,2), %edi
	movb	%dil, -1(%rdx)
	movsbl	(%rax), %edi
	sarl	%cl, %edi
	andl	$85, %edi
	leal	(%rdi,%rdi,2), %ecx
	movb	%cl, (%rdx)
	addq	$2, %rdx
	addq	$2, %rax
	addl	$-2, %esi
	jne	.LBB4_72
	jmp	.LBB4_96
.LBB4_78:                               # %if.else.33.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%edi, 328(%rsp)         # 4-byte Spill
	cmpl	$1, %edx
	movq	%r13, %r11
	jne	.LBB4_96
# BB#79:                                # %if.else.33.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$1, %ecx
	jne	.LBB4_96
# BB#80:                                # %if.then.39.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$4, %eax
	je	.LBB4_88
# BB#81:                                # %if.then.39.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$2, %eax
	jne	.LBB4_82
# BB#83:                                # %if.then.48.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%ebp, %r13d
	cmpl	$0, 272(%rsp)           # 4-byte Folded Reload
	movq	240(%rsp), %rcx         # 8-byte Reload
	jle	.LBB4_86
# BB#84:                                # %for.body.i.76.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=2
	addq	%r8, %r10
	leaq	1(%r9,%r10), %rax
	movq	%r11, %r9
	movl	272(%rsp), %r8d         # 4-byte Reload
	.align	16, 0x90
.LBB4_85:                               # %for.body.i.76.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	-1(%rax), %ebx
	shll	%cl, %ebx
	movsbl	(%rax), %edx
	shll	%cl, %edx
	movl	%ebx, %ebp
	andl	$128, %ebp
	leal	(%rbx,%rbx), %edi
	andl	$64, %edi
	orl	%ebp, %edi
	leal	(,%rbx,4), %ebp
	andl	$32, %ebp
	orl	%edi, %ebp
	shll	$3, %ebx
	andl	$16, %ebx
	orl	%ebp, %ebx
	movl	%edx, %ebp
	shrl	$4, %ebp
	andl	$8, %ebp
	orl	%ebx, %ebp
	movl	%edx, %edi
	shrl	$3, %edi
	andl	$4, %edi
	orl	%ebp, %edi
	movl	%edx, %ebp
	shrl	$2, %ebp
	andl	$2, %ebp
	orl	%edi, %ebp
	shrl	%edx
	andl	$1, %edx
	orl	%ebp, %edx
	movb	%dl, (%r9)
	incq	%r9
	addq	$2, %rax
	decl	%r8d
	jne	.LBB4_85
.LBB4_86:                               # %for.end.i.79.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$0, 260(%rsp)           # 4-byte Folded Reload
	movl	%r13d, %ebp
	je	.LBB4_96
# BB#87:                                # %if.then.i.81.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	232(%rsp), %rax         # 8-byte Reload
	movsbl	-1(%rsi,%rax), %eax
	movq	240(%rsp), %rcx         # 8-byte Reload
	shll	%cl, %eax
	movl	%eax, %ecx
	andl	$128, %ecx
	leal	(%rax,%rax), %edx
	andl	$64, %edx
	orl	%ecx, %edx
	leal	(,%rax,4), %ecx
	andl	$32, %ecx
	orl	%edx, %ecx
	shll	$3, %eax
	andl	$16, %eax
	orl	%ecx, %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%r11,%rcx)
	jmp	.LBB4_96
.LBB4_39:                               # %if.then.10.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%ebp, 276(%rsp)         # 4-byte Spill
	movl	%edi, 328(%rsp)         # 4-byte Spill
	movq	%r15, %r12
	cmpl	$0, 252(%rsp)           # 4-byte Folded Reload
	movl	268(%rsp), %ecx         # 4-byte Reload
	jle	.LBB4_42
# BB#40:                                # %for.body.i.149.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=2
	leaq	(%r10,%r8), %rax
	leaq	3(%r9,%rax), %rax
	movq	%r13, %r15
	movl	252(%rsp), %r11d        # 4-byte Reload
	.align	16, 0x90
.LBB4_41:                               # %for.body.i.149.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	-3(%rax), %edx
	shll	%cl, %edx
	movsbl	-2(%rax), %edi
	shll	%cl, %edi
	movsbl	-1(%rax), %ebp
	shll	%cl, %ebp
	movsbl	(%rax), %ebx
	shll	%cl, %ebx
	andl	$192, %edx
	shrl	$2, %edi
	andl	$48, %edi
	orl	%edx, %edi
	shrl	$4, %ebp
	andl	$12, %ebp
	orl	%edi, %ebp
	shrl	$6, %ebx
	andl	$3, %ebx
	orl	%ebp, %ebx
	movb	%bl, (%r15)
	incq	%r15
	addq	$4, %rax
	decl	%r11d
	jne	.LBB4_41
.LBB4_42:                               # %for.end.i.151.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$0, 256(%rsp)           # 4-byte Folded Reload
	movq	%r13, %r11
	movq	%r12, %r15
	movq	320(%rsp), %r12         # 8-byte Reload
	movl	276(%rsp), %ebp         # 4-byte Reload
	je	.LBB4_96
# BB#43:                                # %for.body.43.i.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	%r15, %r12
	movq	%r11, %r15
	xorl	%r11d, %r11d
	cmpl	$0, 260(%rsp)           # 4-byte Folded Reload
	movl	$0, %ebx
	movl	268(%rsp), %r13d        # 4-byte Reload
	je	.LBB4_45
# BB#44:                                # %for.body.43.i.i.prol
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	movsbl	(%rsi,%rax,4), %ebx
	movb	%r13b, %cl
	shll	%cl, %ebx
	andl	$192, %ebx
	movl	$1, %r11d
.LBB4_45:                               # %for.body.43.i.i.preheader.split
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$1, 256(%rsp)           # 4-byte Folded Reload
	je	.LBB4_48
# BB#46:                                # %for.body.43.i.i.preheader.split.split
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	256(%rsp), %esi         # 4-byte Reload
	subl	%r11d, %esi
	addq	176(%rsp), %r9          # 8-byte Folded Reload
	leaq	(%r10,%r11), %rdi
	addq	%r8, %rdi
	addq	%r9, %rdi
	addq	%r11, %r11
	leal	2(%r11), %edx
	.align	16, 0x90
.LBB4_47:                               # %for.body.43.i.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	-1(%rdi), %ebp
	movb	%r13b, %cl
	shll	%cl, %ebp
	andl	$192, %ebp
	movb	%r11b, %cl
	shrl	%cl, %ebp
	orl	%ebx, %ebp
	movsbl	(%rdi), %eax
	movb	%r13b, %cl
	shll	%cl, %eax
	andl	$192, %eax
	movb	%dl, %cl
	shrl	%cl, %eax
	movzbl	%bpl, %ebx
	orl	%eax, %ebx
	addq	$2, %rdi
	addl	$4, %edx
	addl	$4, %r11d
	addl	$-2, %esi
	jne	.LBB4_47
.LBB4_48:                               # %for.end.58.i.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	%r15, %r11
	movq	216(%rsp), %rax         # 8-byte Reload
	movb	%bl, (%r11,%rax)
	movq	%r12, %r15
	movq	320(%rsp), %r12         # 8-byte Reload
	movl	276(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB4_96
.LBB4_31:                               # %if.then.i.130
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%edi, 328(%rsp)         # 4-byte Spill
	cmpl	$1, %eax
	movq	%r13, %r11
	jne	.LBB4_96
	jmp	.LBB4_32
.LBB4_73:                               # %if.then.30.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%ebp, 276(%rsp)         # 4-byte Spill
	movl	%edi, 328(%rsp)         # 4-byte Spill
	cmpl	$0, 272(%rsp)           # 4-byte Folded Reload
	movq	240(%rsp), %rcx         # 8-byte Reload
	movq	%r13, %r11
	jle	.LBB4_76
# BB#74:                                # %for.body.i.101.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=2
	addq	%r8, %r10
	leaq	1(%r9,%r10), %rax
	movq	%r11, %rdx
	movl	272(%rsp), %r8d         # 4-byte Reload
	.align	16, 0x90
.LBB4_75:                               # %for.body.i.101.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	-1(%rax), %ebp
	shll	%cl, %ebp
	movsbl	(%rax), %ebx
	shll	%cl, %ebx
	movl	%ebp, %edi
	shrl	%edi
	andl	$64, %edi
	addl	%ebp, %ebp
	andl	$16, %ebp
	orl	%edi, %ebp
	movl	%ebx, %edi
	shrl	$5, %edi
	andl	$4, %edi
	orl	%ebp, %edi
	shrl	$3, %ebx
	andl	$1, %ebx
	orl	%edi, %ebx
	leal	(%rbx,%rbx,2), %edi
	movb	%dil, (%rdx)
	incq	%rdx
	addq	$2, %rax
	decl	%r8d
	jne	.LBB4_75
.LBB4_76:                               # %for.end.i.104.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$0, 260(%rsp)           # 4-byte Folded Reload
	movl	276(%rsp), %ebp         # 4-byte Reload
	je	.LBB4_96
# BB#77:                                # %if.then.i.110.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	232(%rsp), %rax         # 8-byte Reload
	movsbl	-1(%rsi,%rax), %eax
	movq	240(%rsp), %rcx         # 8-byte Reload
	shll	%cl, %eax
	movl	%eax, %ecx
	shrl	%ecx
	andl	$64, %ecx
	addl	%eax, %eax
	andl	$16, %eax
	orl	%ecx, %eax
	leal	(%rax,%rax,2), %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%r11,%rcx)
	jmp	.LBB4_96
.LBB4_53:                               # %if.then.19.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%edi, 328(%rsp)         # 4-byte Spill
	cmpl	$1, %eax
	jne	.LBB4_96
# BB#54:                                # %if.then.22.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$0, 228(%rsp)           # 4-byte Folded Reload
	jle	.LBB4_96
# BB#55:                                # %for.body.i.134.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=2
	addq	%r8, %r10
	addq	%r10, %r9
	movl	$1, %esi
	movl	228(%rsp), %edi         # 4-byte Reload
	.align	16, 0x90
.LBB4_56:                               # %for.body.i.134.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%r9), %cl
	movb	%cl, %al
	shrb	%al
	andb	$64, %al
	movb	%cl, %dl
	shrb	$2, %dl
	andb	$16, %dl
	orb	%al, %dl
	movb	%cl, %bl
	shrb	$3, %bl
	andb	$4, %bl
	orb	%dl, %bl
	movb	%cl, %al
	shrb	$4, %al
	andb	$1, %al
	orb	%bl, %al
	movb	$3, %r8b
	mulb	%r8b
	leal	-1(%rsi), %edx
	movslq	%edx, %rdx
	movb	%al, (%r11,%rdx)
	movb	%cl, %al
	shlb	$3, %al
	andb	$64, %al
	movb	%cl, %dl
	shlb	$2, %dl
	andb	$16, %dl
	movb	%cl, %bl
	addb	%bl, %bl
	andb	$4, %bl
	andb	$1, %cl
	orb	%dl, %cl
	orb	%al, %cl
	orb	%bl, %cl
	movb	%cl, %al
	mulb	%r8b
	movslq	%esi, %rsi
	movb	%al, (%r11,%rsi)
	addl	$2, %esi
	incq	%r9
	decl	%edi
	jne	.LBB4_56
	jmp	.LBB4_96
.LBB4_88:                               # %if.then.52.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%ebp, 276(%rsp)         # 4-byte Spill
	movq	%r15, %r13
	movq	%r11, %r12
	cmpl	$0, 252(%rsp)           # 4-byte Folded Reload
	movq	240(%rsp), %rcx         # 8-byte Reload
	jle	.LBB4_91
# BB#89:                                # %for.body.i.52.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=2
	leaq	(%r10,%r8), %rax
	leaq	3(%r9,%rax), %rax
	movq	%r12, %r15
	movl	252(%rsp), %r11d        # 4-byte Reload
	.align	16, 0x90
.LBB4_90:                               # %for.body.i.52.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	-3(%rax), %ebx
	shll	%cl, %ebx
	movsbl	-2(%rax), %edi
	shll	%cl, %edi
	movsbl	-1(%rax), %edx
	shll	%cl, %edx
	movsbl	(%rax), %ebp
	shll	%cl, %ebp
	movl	%ebx, %esi
	andl	$128, %esi
	shll	$3, %ebx
	andl	$64, %ebx
	orl	%esi, %ebx
	movl	%edi, %esi
	shrl	$2, %esi
	andl	$32, %esi
	orl	%ebx, %esi
	addl	%edi, %edi
	andl	$16, %edi
	orl	%esi, %edi
	movl	%edx, %esi
	shrl	$4, %esi
	andl	$8, %esi
	orl	%edi, %esi
	shrl	%edx
	andl	$4, %edx
	orl	%esi, %edx
	movl	%ebp, %esi
	shrl	$6, %esi
	andl	$2, %esi
	orl	%edx, %esi
	shrl	$3, %ebp
	andl	$1, %ebp
	orl	%esi, %ebp
	movb	%bpl, (%r15)
	incq	%r15
	addq	$4, %rax
	decl	%r11d
	jne	.LBB4_90
.LBB4_91:                               # %for.end.i.54.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$0, 256(%rsp)           # 4-byte Folded Reload
	movq	%r12, %r11
	movq	%r13, %r15
	movq	320(%rsp), %r12         # 8-byte Reload
	movl	276(%rsp), %ebp         # 4-byte Reload
	je	.LBB4_96
# BB#92:                                # %for.body.58.i.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%ebp, %ebx
	addq	144(%rsp), %r9          # 8-byte Folded Reload
	addq	%r8, %r10
	addq	%r9, %r10
	xorl	%eax, %eax
	movl	256(%rsp), %esi         # 4-byte Reload
	xorl	%edx, %edx
	movq	240(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB4_93:                               # %for.body.58.i.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%r10), %edi
	movb	%bpl, %cl
	shll	%cl, %edi
	movl	%edi, %ecx
	andl	$128, %ecx
	shll	$3, %edi
	andl	$64, %edi
	orl	%ecx, %edi
	movb	%al, %cl
	shrl	%cl, %edi
	movzbl	%dl, %edx
	orl	%edi, %edx
	incq	%r10
	addl	$2, %eax
	decl	%esi
	jne	.LBB4_93
# BB#94:                                # %for.end.79.i.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	movb	%dl, (%r11,%rax)
	movl	%ebx, %ebp
	jmp	.LBB4_96
.LBB4_82:                               # %if.then.39.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$1, %eax
	jne	.LBB4_96
.LBB4_32:                               # %if.then.3.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	%r11, %rdi
	movq	232(%rsp), %rdx         # 8-byte Reload
	movq	%r11, %rbx
	callq	memcpy
	movq	%rbx, %r11
	jmp	.LBB4_96
	.align	16, 0x90
.LBB4_26:                               # %for.body.99
                                        #   Parent Loop BB4_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_85 Depth 3
                                        #       Child Loop BB4_90 Depth 3
                                        #       Child Loop BB4_93 Depth 3
                                        #       Child Loop BB4_56 Depth 3
                                        #       Child Loop BB4_65 Depth 3
                                        #       Child Loop BB4_72 Depth 3
                                        #       Child Loop BB4_75 Depth 3
                                        #       Child Loop BB4_35 Depth 3
                                        #       Child Loop BB4_41 Depth 3
                                        #       Child Loop BB4_47 Depth 3
                                        #       Child Loop BB4_97 Depth 3
                                        #         Child Loop BB4_98 Depth 4
                                        #         Child Loop BB4_105 Depth 4
	movl	104(%r15), %eax
	imull	%edi, %eax
	movq	312(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	cltd
	idivl	160(%r15)
	movl	%edx, %ebp
	movl	72(%r15), %eax
	imull	%ebp, %eax
	addl	%r12d, %eax
	cltq
	movq	152(%r15), %rcx
	movzbl	(%rcx,%rax), %eax
	testl	284(%rsp), %eax         # 4-byte Folded Reload
	je	.LBB4_95
# BB#27:                                # %if.then.119
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	144(%r15), %r9
	movl	%ebp, %eax
	imull	164(%r15), %eax
	movslq	%eax, %r8
	leaq	(%r9,%r8), %rsi
	movl	rinkj_escp_flush.plane(,%r12,4), %eax
	imull	168(%r15), %eax
	movslq	%eax, %r10
	addq	%r10, %rsi
	movl	100(%r15), %eax
	movl	76(%r15), %edx
	movl	88(%r15), %ecx
	cmpl	$2, %edx
	jne	.LBB4_49
# BB#28:                                # %if.then.119
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$2, %ecx
	jne	.LBB4_49
# BB#29:                                # %if.then.i.130
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$4, %eax
	je	.LBB4_39
# BB#30:                                # %if.then.i.130
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$2, %eax
	jne	.LBB4_31
# BB#33:                                # %if.then.6.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%edi, 328(%rsp)         # 4-byte Spill
	cmpl	$0, 272(%rsp)           # 4-byte Folded Reload
	movl	$0, %eax
	movq	%r13, %r11
	jle	.LBB4_37
# BB#34:                                # %for.body.i.i.preheader
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%ebp, %r13d
	addq	%r8, %r10
	leaq	1(%r9,%r10), %rax
	movq	%r11, %rdx
	movl	272(%rsp), %r8d         # 4-byte Reload
	movl	268(%rsp), %ecx         # 4-byte Reload
	.align	16, 0x90
.LBB4_35:                               # %for.body.i.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	-1(%rax), %ebp
	shll	%cl, %ebp
	movsbl	(%rax), %ebx
	shll	%cl, %ebx
	movl	%ebp, %edi
	andl	$192, %edi
	shll	$2, %ebp
	andl	$48, %ebp
	orl	%edi, %ebp
	movl	%ebx, %edi
	shrl	$4, %edi
	andl	$12, %edi
	orl	%ebp, %edi
	shrl	$2, %ebx
	andl	$3, %ebx
	orl	%edi, %ebx
	movb	%bl, (%rdx)
	incq	%rdx
	addq	$2, %rax
	decl	%r8d
	jne	.LBB4_35
# BB#36:                                #   in Loop: Header=BB4_26 Depth=2
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r13d, %ebp
.LBB4_37:                               # %for.end.i.i
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	$0, 260(%rsp)           # 4-byte Folded Reload
	je	.LBB4_96
# BB#38:                                # %if.then.i.i
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	232(%rsp), %rcx         # 8-byte Reload
	movsbl	-1(%rsi,%rcx), %edx
	movl	268(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %edx
	movl	%edx, %ecx
	andl	$192, %ecx
	shll	$2, %edx
	andl	$48, %edx
	orl	%ecx, %edx
	movb	%dl, (%r11,%rax)
	jmp	.LBB4_96
	.align	16, 0x90
.LBB4_95:                               # %if.else.123
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%edi, 328(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	memset
	movq	%r13, %r11
.LBB4_96:                               # %if.end.126
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	72(%r15), %eax
	imull	%ebp, %eax
	addl	%r12d, %eax
	cltq
	movq	152(%r15), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	280(%rsp), %edx         # 4-byte Folded Reload
	movb	%dl, (%rcx,%rax)
	xorl	%r12d, %r12d
	cmpl	$0, 356(%rsp)           # 4-byte Folded Reload
	movl	$0, %r13d
	movq	304(%rsp), %r8          # 8-byte Reload
	movq	344(%rsp), %r9          # 8-byte Reload
	jle	.LBB4_115
	.align	16, 0x90
.LBB4_97:                               # %for.body.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_98 Depth 4
                                        #         Child Loop BB4_105 Depth 4
	movslq	%r13d, %rax
	leaq	(%r11,%rax), %rsi
	movb	(%r11,%rax), %cl
	leaq	(%r9,%rax), %rdi
	movl	$1, %edx
	.align	16, 0x90
.LBB4_98:                               # %land.rhs.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        #       Parent Loop BB4_97 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	(%rax,%rdx), %rbp
	cmpq	%r14, %rbp
	jge	.LBB4_99
# BB#100:                               # %for.body.6.i
                                        #   in Loop: Header=BB4_98 Depth=4
	movzbl	-1(%rdi,%rdx), %ebx
	movzbl	%cl, %ebp
	cmpl	%ebx, %ebp
	jne	.LBB4_101
# BB#102:                               # %for.inc.i
                                        #   in Loop: Header=BB4_98 Depth=4
	leaq	1(%rdx), %r15
	leaq	1(%rax,%rdx), %rbx
	cmpq	%r14, %rbx
	jge	.LBB4_103
# BB#122:                               # %for.body.6.i.1
                                        #   in Loop: Header=BB4_98 Depth=4
	movzbl	(%rdi,%rdx), %ebx
	cmpl	%ebx, %ebp
	jne	.LBB4_103
# BB#123:                               # %for.inc.i.1
                                        #   in Loop: Header=BB4_98 Depth=4
	addq	$2, %rdx
	cmpq	$129, %rdx
	jl	.LBB4_98
# BB#110:                               # %if.then.15.loopexit.i
                                        #   in Loop: Header=BB4_97 Depth=3
	movl	%edx, %r15d
	jmp	.LBB4_111
	.align	16, 0x90
.LBB4_99:                               #   in Loop: Header=BB4_97 Depth=3
	movq	%rdx, %r15
	jmp	.LBB4_103
	.align	16, 0x90
.LBB4_101:                              #   in Loop: Header=BB4_97 Depth=3
	movq	%rdx, %r15
.LBB4_103:                              # %for.end.i
                                        #   in Loop: Header=BB4_97 Depth=3
	cmpl	$2, %r15d
	jle	.LBB4_104
.LBB4_111:                              # %if.then.15.i
                                        #   in Loop: Header=BB4_97 Depth=3
	movl	$257, %eax              # imm = 0x101
	subl	%r15d, %eax
	movslq	%r12d, %rdx
	movb	%al, (%r8,%rdx)
	addl	$2, %r12d
	movb	%cl, 1(%r8,%rdx)
	jmp	.LBB4_114
	.align	16, 0x90
.LBB4_104:                              # %land.rhs.27.i.preheader
                                        #   in Loop: Header=BB4_97 Depth=3
	movq	%r11, %rbx
	movq	336(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rdx
	xorl	%ecx, %ecx
	movl	$1, %r15d
	.align	16, 0x90
.LBB4_105:                              # %land.rhs.27.i
                                        #   Parent Loop BB4_21 Depth=1
                                        #     Parent Loop BB4_26 Depth=2
                                        #       Parent Loop BB4_97 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	1(%rax,%rcx), %rdi
	cmpq	%r14, %rdi
	jge	.LBB4_113
# BB#106:                               # %for.body.32.i
                                        #   in Loop: Header=BB4_105 Depth=4
	leaq	3(%rax,%rcx), %rdi
	cmpq	%r14, %rdi
	jge	.LBB4_109
# BB#107:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB4_105 Depth=4
	movzbl	-1(%rdx,%rcx), %ebp
	movzbl	-2(%rdx,%rcx), %edi
	cmpl	%ebp, %edi
	jne	.LBB4_109
# BB#108:                               # %land.lhs.true.48.i
                                        #   in Loop: Header=BB4_105 Depth=4
	movzbl	(%rdx,%rcx), %ebp
	cmpl	%ebp, %edi
	je	.LBB4_112
.LBB4_109:                              # %for.inc.58.i
                                        #   in Loop: Header=BB4_105 Depth=4
	incq	%r15
	leaq	1(%rcx), %rdi
	addq	$2, %rcx
	cmpq	$128, %rcx
	movq	%rdi, %rcx
	jl	.LBB4_105
	jmp	.LBB4_113
.LBB4_112:                              # %land.lhs.true.48.i.for.end.60.i_crit_edge
                                        #   in Loop: Header=BB4_97 Depth=3
	incl	%ecx
	movl	%ecx, %r15d
	.align	16, 0x90
.LBB4_113:                              # %for.end.60.i
                                        #   in Loop: Header=BB4_97 Depth=3
	leal	255(%r15), %eax
	leal	1(%r12), %ecx
	movslq	%r12d, %rdx
	movb	%al, (%r8,%rdx)
	movslq	%ecx, %rax
	leaq	(%rax,%r8), %rdi
	movslq	%r15d, %rdx
	movq	%r8, %rbp
	callq	memcpy
	movq	%rbp, %r8
	leal	1(%r15,%r12), %r12d
	movq	%rbx, %r11
	movq	344(%rsp), %r9          # 8-byte Reload
.LBB4_114:                              # %for.inc.71.i
                                        #   in Loop: Header=BB4_97 Depth=3
	addl	%r13d, %r15d
	cmpl	356(%rsp), %r15d        # 4-byte Folded Reload
	movl	%r15d, %r13d
	jl	.LBB4_97
.LBB4_115:                              # %rinkj_escp_compress_rle.exit
                                        #   in Loop: Header=BB4_26 Depth=2
	movq	%r11, %r13
	movq	288(%rsp), %r15         # 8-byte Reload
	movq	32(%r15), %rdi
	movq	%r8, %rsi
	movl	%r12d, %edx
	callq	rinkj_byte_stream_write
	movl	%eax, %ebx
	movl	328(%rsp), %edi         # 4-byte Reload
	incl	%edi
	cmpl	300(%rsp), %edi         # 4-byte Folded Reload
	movq	320(%rsp), %r12         # 8-byte Reload
	jl	.LBB4_26
# BB#116:                               # %cleanup.150
                                        #   in Loop: Header=BB4_21 Depth=1
	testl	%ebx, %ebx
	js	.LBB4_121
# BB#117:                               # %cleanup.150.for.inc.153_crit_edge
                                        #   in Loop: Header=BB4_21 Depth=1
	movl	72(%r15), %r8d
	movq	%r13, %r10
	movq	304(%rsp), %rdi         # 8-byte Reload
.LBB4_118:                              # %for.inc.153
                                        #   in Loop: Header=BB4_21 Depth=1
	incq	%r12
	movslq	%r8d, %rax
	cmpq	%rax, %r12
	jl	.LBB4_21
	jmp	.LBB4_119
.LBB4_18:                               # %if.then.40
	movq	%r10, %rdi
	jmp	.LBB4_19
.LBB4_17:
	movq	304(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %r15
.LBB4_119:                              # %for.end.155
	incl	172(%r15)
	movq	%r10, %rbp
	callq	free
	movq	%rbp, %rdi
	jmp	.LBB4_120
.LBB4_23:                               # %cleanup
	movq	%r13, %rdi
.LBB4_19:                               # %cleanup.161
	callq	free
	movq	304(%rsp), %rdi         # 8-byte Reload
.LBB4_120:                              # %cleanup.161
	callq	free
.LBB4_121:                              # %cleanup.161
	movl	%ebx, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rinkj_escp_flush, .Lfunc_end4-rinkj_escp_flush
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_epson_set_common,@function
rinkj_epson_set_common:                 # @rinkj_epson_set_common
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	196(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB5_2
# BB#1:                                 # %if.end
	movq	32(%rbx), %rdi
	movl	$.L.str.25, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	testl	%eax, %eax
	jne	.LBB5_5
.LBB5_2:                                # %land.lhs.true
	movl	192(%rbx), %edx
	testl	%edx, %edx
	js	.LBB5_4
# BB#3:                                 # %if.end.8
	movq	32(%rbx), %rdi
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	callq	rinkj_byte_stream_printf
	testl	%eax, %eax
	jne	.LBB5_5
.LBB5_4:                                # %land.lhs.true.10
	movl	188(%rbx), %r8d
	testl	%r8d, %r8d
	js	.LBB5_5
# BB#6:                                 # %if.then.12
	movq	32(%rbx), %rdi
	movl	$.L.str.27, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	popq	%rbx
	jmp	rinkj_byte_stream_printf # TAILCALL
.LBB5_5:                                # %if.end.16
	popq	%rbx
	retq
.Lfunc_end5:
	.size	rinkj_epson_set_common, .Lfunc_end5-rinkj_epson_set_common
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Resolution"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Manufacturer"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Model"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"BitsPerSample"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"NumChan"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"PrinterWeave"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Microdot"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unidirectional"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"AutoCut"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"BlankSkip"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\f\033@"
	.size	.L.str.10, 4

	.type	rinkj_escp_ytop.four,@object # @rinkj_escp_ytop.four
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
rinkj_escp_ytop.four:
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.size	rinkj_escp_ytop.four, 16

	.type	rinkj_escp_ytop.six,@object # @rinkj_escp_ytop.six
	.section	.rodata,"a",@progbits
	.align	16
rinkj_escp_ytop.six:
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	4                       # 0x4
	.size	rinkj_escp_ytop.six, 24

	.type	rinkj_escp_ytop.sixteen,@object # @rinkj_escp_ytop.sixteen
	.align	16
rinkj_escp_ytop.sixteen:
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	2                       # 0x2
	.size	rinkj_escp_ytop.sixteen, 64

	.type	rinkj_escp_flush.plane,@object # @rinkj_escp_flush.plane
	.align	16
rinkj_escp_flush.plane:
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	5                       # 0x5
	.long	4                       # 0x4
	.long	6                       # 0x6
	.size	rinkj_escp_flush.plane, 28

	.type	rinkj_escp_flush.color,@object # @rinkj_escp_flush.color
	.align	16
rinkj_escp_flush.color:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	16                      # 0x10
	.size	rinkj_escp_flush.color, 28

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"\033(V%c%c%c%c"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033(v%c%c%c%c%c%c"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033($\004%c%c%c%c%c"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033i%c%c%c%c%c%c%c"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Stylus Photo 870"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Stylus Photo 2200"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Stylus Photo 7600"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Stylus C80"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%c%c%c\033\001@EJL 1284.4\n"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"@EJL     \n\033@\033@"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\033(G\001%c\001"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"\033(U\005%c\002\002\002\240\005"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"\033(C\002%cx\037"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"\033(D\004%c@8x("
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"\033(i\001%c%c"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\033U%c"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\033(e\002%c%c%c"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\033(R%c%c%cREMOTE1"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"PP\003%c%c\002%cPH\002%c%c\001SN\003%c%c\004k"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\033%c%c%c"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"\033(C\002%c\200p"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"\033(U\005%c%c%c%c%c%c"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"\033(D\004%c%c%c%c%c"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\033@\033@"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"SN%c%c%c%c%c"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"AC%c%c%c%c"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"DR%c%c%c%c%c%c"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"PH%c%c%c%c"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"FP%c%c%c%c%c"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"PP%c%c%c%c%c"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"IK%c%c%c%c"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"EX%c%c%c%c%c%c%c%c"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\033(S\b%c%c%c%c%c%c%c%c%c"
	.size	.L.str.43, 23

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\033(c\b%c%c%c%c%c%c%c%c%c"
	.size	.L.str.44, 23

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\033(c\b%c \376\377\377\376\036%c%c"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"\033(D\004%c@8P("
	.size	.L.str.46, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
