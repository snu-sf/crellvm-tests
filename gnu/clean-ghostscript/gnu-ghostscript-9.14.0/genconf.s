	.text
	.file	"genconf.bc"
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
	subq	$872, %rsp              # imm = 0x368
.Ltmp6:
	.cfi_def_cfa_offset 928
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
	movq	%r12, 88(%rsp)          # 8-byte Spill
	movl	%edi, %r14d
	movq	%r14, 72(%rsp)          # 8-byte Spill
	leaq	176(%rsp), %rdi
	movl	$init_config, %esi
	movl	$624, %edx              # imm = 0x270
	callq	memcpy
	leaq	296(%rsp), %rdi
	movl	$init_config_lists, %esi
	movl	$288, %edx              # imm = 0x120
	callq	memcpy
	movl	$0, 216(%rsp)
	movslq	208(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 224(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#1:                                 # %alloc_list.exit
	movl	$0, 248(%rsp)
	movslq	240(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 256(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#2:                                 # %alloc_list.exit95
	movl	$0, 280(%rsp)
	movslq	272(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 288(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#3:                                 # %for.cond.preheader
	movl	$0, 312(%rsp)
	movslq	304(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 320(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#4:                                 # %for.cond
	movl	$0, 344(%rsp)
	movslq	336(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 352(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#5:                                 # %for.cond.1
	movl	$0, 376(%rsp)
	movslq	368(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 384(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#6:                                 # %for.cond.2
	movl	$0, 408(%rsp)
	movslq	400(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 416(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#7:                                 # %for.cond.3
	movl	$0, 440(%rsp)
	movslq	432(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 448(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#8:                                 # %for.cond.4
	movl	$0, 472(%rsp)
	movslq	464(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 480(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#9:                                 # %for.cond.5
	movl	$0, 504(%rsp)
	movslq	496(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 512(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#10:                                # %for.cond.6
	movl	$0, 536(%rsp)
	movslq	528(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 544(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#11:                                # %for.cond.7
	movl	$0, 568(%rsp)
	movslq	560(%rsp), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 576(%rsp)
	testq	%rax, %rax
	je	.LBB0_91
# BB#12:                                # %for.cond.8
	movq	$0, 584(%rsp)
	leaq	592(%rsp), %rdi
	movl	$.L.str, %esi
	callq	strcpy
	movq	648(%rsp), %rax
	movq	%rax, 720(%rsp)
	movups	584(%rsp), %xmm0
	movups	600(%rsp), %xmm1
	movups	616(%rsp), %xmm2
	movups	632(%rsp), %xmm3
	movups	%xmm3, 704(%rsp)
	movups	%xmm2, 688(%rsp)
	movups	%xmm1, 672(%rsp)
	movups	%xmm0, 656(%rsp)
	movq	648(%rsp), %rax
	movq	%rax, 792(%rsp)
	movups	584(%rsp), %xmm0
	movups	600(%rsp), %xmm1
	movups	616(%rsp), %xmm2
	movups	632(%rsp), %xmm3
	movups	%xmm3, 776(%rsp)
	movups	%xmm2, 760(%rsp)
	movups	%xmm1, 744(%rsp)
	movups	%xmm0, 728(%rsp)
	cmpl	$1, %r14d
	jle	.LBB0_90
# BB#13:                                # %for.body.15.lr.ph
	leal	-1(%r14), %ebp
	movl	%ebp, 84(%rsp)          # 4-byte Spill
	movb	$38, 71(%rsp)           # 1-byte Folded Spill
	movl	$1, %r15d
	.align	16, 0x90
.LBB0_14:                               # %for.body.15
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_71 Depth 2
	movslq	%r15d, %rax
	movq	(%r12,%rax,8), %r13
	movzbl	(%r13), %eax
	cmpl	$45, %eax
	jne	.LBB0_15
# BB#16:                                # %if.end
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	%ebp, %r15d
	je	.LBB0_17
# BB#19:                                # %if.end.25
                                        #   in Loop: Header=BB0_14 Depth=1
	leaq	1(%r13), %rbx
	movsbl	1(%r13), %eax
	cmpl	$100, %eax
	jle	.LBB0_20
# BB#23:                                # %if.end.25
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$101, %eax
	je	.LBB0_31
# BB#24:                                # %if.end.25
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$110, %eax
	jne	.LBB0_25
# BB#32:                                # %sw.bb.44
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	%r15d
	movslq	%r15d, %rax
	movq	(%r12,%rax,8), %rax
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	movl	$.L.str.2, %ecx
	je	.LBB0_34
# BB#33:                                # %select.mid255
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	%rax, %rcx
.LBB0_34:                               # %select.end254
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	%rcx, 184(%rsp)
	jmp	.LBB0_89
	.align	16, 0x90
.LBB0_15:                               # %if.then
                                        #   in Loop: Header=BB0_14 Depth=1
	leaq	176(%rsp), %rdi
	movq	%r13, %rsi
	callq	read_dev
	jmp	.LBB0_89
.LBB0_20:                               # %if.end.25
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$67, %eax
	jne	.LBB0_21
# BB#28:                                # %sw.bb
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	%r15d
	movslq	%r15d, %rax
	movq	(%r12,%rax,8), %rax
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	movl	$.L.str.2, %ecx
	je	.LBB0_30
# BB#29:                                # %select.mid
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	%rax, %rcx
.LBB0_30:                               # %select.end
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	%rcx, 192(%rsp)
	jmp	.LBB0_89
.LBB0_31:                               # %sw.bb.38
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	%r15d
	movslq	%r15d, %rax
	movq	(%r12,%rax,8), %rax
	movb	(%rax), %al
	movb	%al, 71(%rsp)           # 1-byte Spill
	jmp	.LBB0_89
.LBB0_25:                               # %if.end.25
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$112, %eax
	jne	.LBB0_61
# BB#26:                                # %sw.bb.60
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	%r12, 88(%rsp)          # 8-byte Spill
	movsbl	2(%r13), %eax
	addq	$2, %r13
	cmpl	$108, %eax
	jne	.LBB0_35
# BB#27:                                #   in Loop: Header=BB0_14 Depth=1
	leaq	584(%rsp), %r12
	jmp	.LBB0_37
.LBB0_21:                               # %if.end.25
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$90, %eax
	jne	.LBB0_61
# BB#22:                                # %sw.bb.144
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	$1, 176(%rsp)
	jmp	.LBB0_89
.LBB0_61:                               # %sw.epilog.145
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	%r15d
	movslq	%r15d, %rbp
	movq	(%r12,%rbp,8), %rdi
	movl	$.L.str.5, %esi
	callq	fopen64
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB0_62
# BB#65:                                # %if.end.156
                                        #   in Loop: Header=BB0_14 Depth=1
	movsbl	(%rbx), %eax
	addl	$-102, %eax
	cmpl	$9, %eax
	ja	.LBB0_84
# BB#66:                                # %if.end.156
                                        #   in Loop: Header=BB0_14 Depth=1
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_85:                               # %sw.bb.159
                                        #   in Loop: Header=BB0_14 Depth=1
	leaq	176(%rsp), %rdi
	callq	process_replaces
	movl	$.L.str.7, %edi
	movq	%r12, %rsi
	callq	fputs
	movl	$.L.str.8, %edi
	movq	%r12, %rsi
	callq	fputs
	movq	184(%rsp), %rdx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	leaq	96(%rsp), %rbx
	movq	%rbx, %rdi
	callq	sprintf
	movq	$0, 800(%rsp)
	leaq	808(%rsp), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movq	%r12, %rdi
	leaq	424(%rsp), %rsi
	leaq	800(%rsp), %rdx
	jmp	.LBB0_86
.LBB0_35:                               # %sw.bb.60
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpl	$76, %eax
	leaq	656(%rsp), %r12
	je	.LBB0_37
# BB#36:                                # %sw.default
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	%rbx, %r13
	leaq	728(%rsp), %r12
.LBB0_37:                               # %sw.epilog
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	$0, (%r12)
	leal	1(%r15), %r9d
	movslq	%r9d, %rcx
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rcx,8), %rbx
	movzbl	(%rbx), %esi
	leaq	8(%r12), %rdi
	cmpl	$45, %esi
	jne	.LBB0_38
# BB#92:                                # %if.then.76
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	$.L.str, %esi
	callq	strcpy
	movl	%r15d, %r9d
	leaq	728(%rsp), %rax
	movq	%rax, %rbp
	jmp	.LBB0_47
.LBB0_38:                               # %for.cond.85.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	leaq	9(%r12), %rcx
	movb	%sil, 8(%r12)
	testb	%sil, %sil
	leaq	728(%rsp), %rax
	movq	%rax, %rbp
	movb	71(%rsp), %al           # 1-byte Reload
	je	.LBB0_46
	.align	16, 0x90
.LBB0_39:                               # %for.body.91
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%rbx), %rdx
	movzbl	%al, %edi
	movzbl	%sil, %esi
	cmpl	%edi, %esi
	jne	.LBB0_45
# BB#40:                                # %if.then.97
                                        #   in Loop: Header=BB0_39 Depth=2
	movsbl	(%rdx), %r8d
	cmpl	$45, %r8d
	je	.LBB0_52
# BB#41:                                # %if.then.97
                                        #   in Loop: Header=BB0_39 Depth=2
	cmpl	$115, %r8d
	jne	.LBB0_42
# BB#51:                                # %sw.bb.102
                                        #   in Loop: Header=BB0_39 Depth=2
	movb	$32, -1(%rcx)
	jmp	.LBB0_44
.LBB0_52:                               # %sw.bb.105
                                        #   in Loop: Header=BB0_39 Depth=2
	movb	$45, -1(%rcx)
	jmp	.LBB0_44
.LBB0_42:                               # %if.then.97
                                        #   in Loop: Header=BB0_39 Depth=2
	cmpl	$112, %r8d
	jne	.LBB0_53
# BB#43:                                # %sw.bb.99
                                        #   in Loop: Header=BB0_39 Depth=2
	movb	$37, -1(%rcx)
	jmp	.LBB0_44
.LBB0_53:                               # %sw.default.108
                                        #   in Loop: Header=BB0_39 Depth=2
	movzbl	%r8b, %edx
	cmpl	%edi, %edx
	jne	.LBB0_55
# BB#54:                                # %if.then.113
                                        #   in Loop: Header=BB0_39 Depth=2
	movb	$92, -1(%rcx)
	.align	16, 0x90
.LBB0_44:                               # %for.cond.85.backedge
                                        #   in Loop: Header=BB0_39 Depth=2
	addq	$2, %rbx
	movq	%rbx, %rdx
.LBB0_45:                               # %for.cond.85.backedge
                                        #   in Loop: Header=BB0_39 Depth=2
	movb	(%rdx), %sil
	movb	%sil, (%rcx)
	testb	%sil, %sil
	movq	%rcx, %rdi
	leaq	1(%rcx), %rcx
	movq	%rdx, %rbx
	jne	.LBB0_39
.LBB0_46:                               # %for.end.123
                                        #   in Loop: Header=BB0_14 Depth=1
	movb	$10, (%rdi)
	movb	$0, (%rcx)
	jmp	.LBB0_47
	.align	16, 0x90
.LBB0_56:                               # %sw.bb.131
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$1, 4(%r12)
.LBB0_47:                               # %for.cond.126.preheader
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incq	%r13
	movsbl	(%r13), %ecx
	testl	%ecx, %ecx
	je	.LBB0_58
# BB#48:                                # %for.cond.126
                                        #   in Loop: Header=BB0_47 Depth=2
	cmpl	$101, %ecx
	je	.LBB0_56
# BB#49:                                # %for.cond.126
                                        #   in Loop: Header=BB0_47 Depth=2
	cmpl	$117, %ecx
	jne	.LBB0_57
# BB#50:                                # %sw.bb.129
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$1, (%r12)
	jmp	.LBB0_47
.LBB0_58:                               # %pbreak
                                        #   in Loop: Header=BB0_14 Depth=1
	cmpq	%rbp, %r12
	je	.LBB0_60
# BB#59:                                #   in Loop: Header=BB0_14 Depth=1
	movl	%r9d, %r15d
	jmp	.LBB0_88
.LBB0_67:                               # %sw.bb.168
                                        #   in Loop: Header=BB0_14 Depth=1
	leaq	176(%rsp), %rdi
	callq	process_replaces
	movl	$.L.str.7, %edi
	movq	%r12, %rsi
	callq	fputs
	movq	$0, 96(%rsp)
	movl	$.L.str, %esi
	leaq	104(%rsp), %rdi
	callq	strcpy
	movq	%r12, %rdi
	leaq	392(%rsp), %rsi
	leaq	96(%rsp), %rbp
	movq	%rbp, %rdx
	callq	write_list_pattern
	movq	$0, 96(%rsp)
	movl	$.L.str, %esi
	leaq	104(%rsp), %rdi
	callq	strcpy
	movq	%r12, %rdi
	leaq	360(%rsp), %rsi
	movq	%rbp, %rdx
	callq	write_list_pattern
	movl	$1, %esi
	leaq	328(%rsp), %rbx
	movq	%rbx, %rdi
	callq	sort_uniq
	movq	$0, 96(%rsp)
	movl	$.L.str, %esi
	leaq	104(%rsp), %rdi
	callq	strcpy
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	write_list_pattern
	movslq	312(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB0_79
# BB#68:                                # %if.end.i
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	320(%rsp), %rbx
	movl	308(%rsp), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	$16, %edx
	movl	$cmp_str, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	qsort
	leaq	16(%rbx), %r13
	cmpl	$2, %ebp
	jl	.LBB0_69
# BB#70:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	decl	%ebp
	movq	%r13, %r14
	.align	16, 0x90
.LBB0_71:                               # %for.body.i
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13), %rdi
	movq	-16(%r14), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_73
# BB#72:                                # %if.then.8.i
                                        #   in Loop: Header=BB0_71 Depth=2
	movups	(%r13), %xmm0
	movups	%xmm0, (%r14)
	addq	$16, %r14
	jmp	.LBB0_77
	.align	16, 0x90
.LBB0_73:                               # %if.else.i
                                        #   in Loop: Header=BB0_71 Depth=2
	movl	12(%r13), %eax
	movl	-4(%r14), %ecx
	cmpl	$4, 56(%rsp)            # 4-byte Folded Reload
	jne	.LBB0_75
# BB#74:                                # %cond.true.i
                                        #   in Loop: Header=BB0_71 Depth=2
	cmpl	%ecx, %eax
	jg	.LBB0_76
	jmp	.LBB0_77
.LBB0_75:                               # %cond.false.i.131
                                        #   in Loop: Header=BB0_71 Depth=2
	cmpl	%ecx, %eax
	jge	.LBB0_77
.LBB0_76:                               # %if.then.19.i
                                        #   in Loop: Header=BB0_71 Depth=2
	leaq	-16(%r14), %rax
	movups	(%r13), %xmm0
	movups	%xmm0, (%rax)
	.align	16, 0x90
.LBB0_77:                               # %for.inc.i
                                        #   in Loop: Header=BB0_71 Depth=2
	addq	$16, %r13
	decl	%ebp
	jne	.LBB0_71
	jmp	.LBB0_78
.LBB0_81:                               # %lo
                                        #   in Loop: Header=BB0_14 Depth=1
	movzbl	2(%r13), %ebp
	leaq	176(%rsp), %rdi
	callq	process_replaces
	movl	$1, %ebx
	cmpl	$111, %ebp
	jne	.LBB0_83
	jmp	.LBB0_82
.LBB0_80:                               # %lo.thread
                                        #   in Loop: Header=BB0_14 Depth=1
	movzbl	2(%r13), %eax
	cmpl	$108, %eax
	sete	%al
	movzbl	%al, %ebx
	leaq	176(%rsp), %rdi
	callq	process_replaces
.LBB0_82:                               # %if.end.203
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	$1, %esi
	leaq	552(%rsp), %rbp
	movq	%rbp, %rdi
	callq	sort_uniq
	movq	%r12, %rdi
	movq	%rbp, %rsi
	leaq	728(%rsp), %rdx
	callq	write_list_pattern
	testl	%ebx, %ebx
	je	.LBB0_87
.LBB0_83:                               # %if.then.205
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	$1, %esi
	leaq	456(%rsp), %rbx
	movq	%rbx, %rdi
	callq	sort_uniq
	movl	$1, %esi
	leaq	520(%rsp), %rbp
	movq	%rbp, %rdi
	callq	sort_uniq
	movq	%r12, %rdi
	leaq	488(%rsp), %rsi
	leaq	656(%rsp), %rdx
	callq	write_list_pattern
	movq	%r12, %rdi
	movq	%rbp, %rsi
	leaq	728(%rsp), %rdx
	callq	write_list_pattern
	movq	%r12, %rdi
	movq	%rbx, %rsi
	leaq	584(%rsp), %rdx
	jmp	.LBB0_86
.LBB0_60:                               # %if.then.140
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	64(%rbp), %rcx
	leaq	584(%rsp), %rdx
	movq	%rcx, 64(%rdx)
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movups	48(%rbp), %xmm3
	movups	%xmm3, 48(%rdx)
	movups	%xmm2, 32(%rdx)
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	movq	64(%rbp), %rcx
	leaq	656(%rsp), %rdx
	movq	%rcx, 64(%rdx)
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movups	48(%rbp), %xmm3
	movups	%xmm3, 48(%rdx)
	movups	%xmm2, 32(%rdx)
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	movl	%r9d, %r15d
	jmp	.LBB0_88
.LBB0_69:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%r13, %r14
.LBB0_78:                               # %for.end.i
                                        #   in Loop: Header=BB0_14 Depth=1
	subq	%rbx, %r14
	shrq	$4, %r14
	movl	%r14d, 312(%rsp)
.LBB0_79:                               # %sort_uniq.exit
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	$0, 96(%rsp)
	movl	$.L.str, %esi
	leaq	104(%rsp), %rdi
	callq	strcpy
	movq	%r12, %rdi
	leaq	296(%rsp), %rsi
	leaq	96(%rsp), %rdx
.LBB0_86:                               # %sw.epilog.227
                                        #   in Loop: Header=BB0_14 Depth=1
	callq	write_list_pattern
.LBB0_87:                               # %sw.epilog.227
                                        #   in Loop: Header=BB0_14 Depth=1
	movq	%r12, %rdi
	callq	fclose
	movq	72(%rsp), %r14          # 8-byte Reload
.LBB0_88:                               # %cleanup
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	84(%rsp), %ebp          # 4-byte Reload
	movq	88(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB0_89:                               # %cleanup
                                        #   in Loop: Header=BB0_14 Depth=1
	incl	%r15d
	cmpl	%r14d, %r15d
	jl	.LBB0_14
.LBB0_90:                               # %for.end.234
	xorl	%eax, %eax
	addq	$872, %rsp              # imm = 0x368
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_84:                               # %sw.default.222
	movq	%r12, %rdi
	callq	fclose
	movq	stderr(%rip), %rdi
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbp,8), %rdx
	movl	$.L.str.4, %esi
.LBB0_63:                               # %if.then.152
	xorl	%eax, %eax
.LBB0_64:                               # %if.then.152
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB0_91:                               # %cond.false.i
	movl	$.L.str.10, %edi
	movl	$.L.str.11, %esi
	movl	$552, %edx              # imm = 0x228
	movl	$.L__PRETTY_FUNCTION__.alloc_list, %ecx
	callq	__assert_fail
.LBB0_17:                               # %if.then.23
	movq	stderr(%rip), %rdi
	movl	$.L.str.1, %esi
	jmp	.LBB0_18
.LBB0_57:                               # %sw.default.134
	movq	stderr(%rip), %rdi
	movl	$.L.str.4, %esi
.LBB0_18:                               # %if.then.23
	xorl	%eax, %eax
	movq	%r13, %rdx
	jmp	.LBB0_64
.LBB0_62:                               # %if.then.152
	movq	stderr(%rip), %rdi
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbp,8), %rdx
	movl	$.L.str.6, %esi
	jmp	.LBB0_63
.LBB0_55:                               # %if.end.116
	movsbl	%al, %edx
	movq	stderr(%rip), %rdi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	movl	%edx, %ecx
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_85
	.quad	.LBB0_84
	.quad	.LBB0_67
	.quad	.LBB0_84
	.quad	.LBB0_84
	.quad	.LBB0_84
	.quad	.LBB0_81
	.quad	.LBB0_84
	.quad	.LBB0_84
	.quad	.LBB0_80

	.text
	.globl	alloc_list
	.align	16, 0x90
	.type	alloc_list,@function
alloc_list:                             # @alloc_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$0, 16(%rbx)
	movslq	8(%rbx), %rdi
	movl	$16, %esi
	callq	calloc
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %cond.end
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB1_2:                                # %cond.false
	movl	$.L.str.10, %edi
	movl	$.L.str.11, %esi
	movl	$552, %edx              # imm = 0x228
	movl	$.L__PRETTY_FUNCTION__.alloc_list, %ecx
	callq	__assert_fail
.Lfunc_end1:
	.size	alloc_list, .Lfunc_end1-alloc_list
	.cfi_endproc

	.globl	read_dev
	.align	16, 0x90
	.type	read_dev,@function
read_dev:                               # @read_dev
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 96
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	cmpl	$0, (%r12)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	printf
.LBB2_2:                                # %if.end
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	16(%r12), %rdi
	callq	strlen
	leaq	1(%rbx,%rax), %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB2_34
# BB#3:                                 # %if.end.i.25
	movq	16(%r12), %rsi
	movq	%r15, %rdi
	callq	strcpy
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	strcat
	cmpl	$0, 40(%r12)
	jle	.LBB2_9
# BB#4:                                 # %for.body.lr.ph.i
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%r12), %rax
	movq	(%rax,%rbp), %rdi
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_7
# BB#5:                                 # %for.cond.i
                                        #   in Loop: Header=BB2_6 Depth=1
	incq	%rbx
	movslq	40(%r12), %rax
	addq	$16, %rbp
	cmpq	%rax, %rbx
	jl	.LBB2_6
.LBB2_9:                                # %for.end.i
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.74, %esi
	movq	%r15, %rdi
	callq	fopen64
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB2_13
# BB#10:                                # %if.then.19.i
	movl	$.L.str.75, %esi
	movq	%r15, %rdi
	callq	fopen64
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB2_11
.LBB2_13:                               # %if.end.25.i
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	fseek
	movq	%rbx, %rdi
	callq	ftell
	movq	%rax, %r13
	leal	1(%r13), %r14d
	movslq	%r14d, %rdi
	callq	malloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB2_35
# BB#14:                                # %if.end.36.i
	leaq	24(%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	rewind
	movslq	%r13d, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rcx
	callq	fread
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	fclose
	movslq	%r14d, %rax
	movb	$0, (%rbp,%rax)
	cmpl	$0, (%r12)
	je	.LBB2_16
# BB#15:                                # %if.then.44.i
	movl	$.L.str.78, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	printf
.LBB2_16:                               # %read_file.exit.thread
	movl	$-1, %edx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rsi
	callq	add_item
	leaq	56(%r12), %rdi
	movl	$-1, %edx
	movq	%rbp, %rsi
	callq	add_item
	movq	%rax, %rbx
	movl	$0, 12(%rbx)
	jmp	.LBB2_17
.LBB2_7:                                # %read_file.exit
	movq	%r15, %rdi
	callq	free
	movq	80(%r12), %rax
	shlq	$4, %rbx
	cmpl	$2, 12(%rax,%rbx)
	jne	.LBB2_8
# BB#23:                                # %if.then.2
	movl	$2, %ebx
	cmpl	$0, (%r12)
	je	.LBB2_33
# BB#24:                                # %if.then.5
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB2_33
.LBB2_8:
	movq	%r14, 8(%rsp)           # 8-byte Spill
	addq	%rbx, %rax
	movq	%rax, %rbx
.LBB2_17:                               # %if.end.8
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	(%rbx), %rbp
	movl	$4097, %edi             # imm = 0x1001
	callq	malloc
	movq	%rax, %r13
	movl	$4097, %edi             # imm = 0x1001
	callq	malloc
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rbx, %r14
	subq	80(%r12), %r14
	movq	%r12, 32(%rsp)          # 8-byte Spill
	shrq	$4, %r14
	movl	$.L.str.17, %esi
	movq	%rax, %rdi
	callq	strcpy
	jmp	.LBB2_18
	.align	16, 0x90
.LBB2_27:                               # %while.body
                                        #   in Loop: Header=BB2_18 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rdx
	movl	%r14d, %ecx
	callq	add_entry
	movq	16(%rsp), %rcx          # 8-byte Reload
	orl	%eax, 12(%rcx)
.LBB2_18:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
	xorl	%r12d, %r12d
	jmp	.LBB2_19
.LBB2_22:                               # %cleanup.thread15.i
                                        #   in Loop: Header=BB2_19 Depth=2
	movb	%r15b, (%r13,%r12)
	incq	%r12
	.align	16, 0x90
.LBB2_19:                               # %while.cond.i
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$4095, %r12             # imm = 0xFFF
	jg	.LBB2_26
# BB#20:                                # %while.body.i
                                        #   in Loop: Header=BB2_19 Depth=2
	movsbq	(%rbp), %r15
	testq	%r15, %r15
	je	.LBB2_26
# BB#21:                                # %if.end.i
                                        #   in Loop: Header=BB2_19 Depth=2
	incq	%rbp
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$32, 1(%rax,%r15,2)
	je	.LBB2_22
# BB#25:                                # %cleanup.i
                                        #   in Loop: Header=BB2_19 Depth=2
	testq	%r12, %r12
	jle	.LBB2_19
.LBB2_26:                               # %read_token.exit
                                        #   in Loop: Header=BB2_18 Depth=1
	movslq	%r12d, %rbx
	movb	$0, (%r13,%rbx)
	cmpl	$4095, %ebx             # imm = 0xFFF
	movl	$-1, %eax
	cmovgl	%eax, %ebx
	testl	%ebx, %ebx
	jg	.LBB2_27
# BB#28:                                # %while.end
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	free
	testl	%ebx, %ebx
	movq	32(%rsp), %rax          # 8-byte Reload
	js	.LBB2_29
# BB#30:                                # %if.end.21
	cmpl	$0, (%rax)
	movq	16(%rsp), %rbx          # 8-byte Reload
	je	.LBB2_32
# BB#31:                                # %if.then.24
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	printf
.LBB2_32:                               # %if.end.26
	movq	%r13, %rdi
	callq	free
	movl	12(%rbx), %ebx
.LBB2_33:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_34:                               # %if.then.i
	movq	stderr(%rip), %rdi
	movq	16(%r12), %rdx
	movl	$.L.str.73, %esi
	xorl	%eax, %eax
	movq	%r14, %rcx
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB2_29:                               # %if.then.19
	movq	stderr(%rip), %rdi
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%r13, %rdx
	jmp	.LBB2_12
.LBB2_35:                               # %if.then.33.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.77, %esi
	xorl	%eax, %eax
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB2_11:                               # %if.then.22.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.76, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
.LBB2_12:                               # %if.then.22.i
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end2:
	.size	read_dev, .Lfunc_end2-read_dev
	.cfi_endproc

	.globl	process_replaces
	.align	16, 0x90
	.type	process_replaces,@function
process_replaces:                       # @process_replaces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 224
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	cmpl	$0, 104(%r14)
	jle	.LBB3_17
# BB#1:                                 # %for.body.lr.ph
	leaq	120(%r14), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	48(%rsp), %r12
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #     Child Loop BB3_6 Depth 2
                                        #       Child Loop BB3_8 Depth 3
	movq	112(%r14), %rax
	movq	%r13, %rcx
	shlq	$4, %rcx
	movq	(%rax,%rcx), %rsi
	movq	%r12, %rdi
	callq	strcpy
	movq	%r12, %rdi
	callq	dev_file_name
	cmpl	$0, 40(%r14)
	movl	$0, %ebx
	movl	$0, %ebp
	jle	.LBB3_16
	.align	16, 0x90
.LBB3_3:                                # %for.body.6
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	48(%r14), %rax
	movq	(%rax,%rbx), %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_4
# BB#15:                                # %for.inc.73
                                        #   in Loop: Header=BB3_3 Depth=2
	incq	%rbp
	movslq	40(%r14), %rax
	addq	$16, %rbx
	cmpq	%rax, %rbp
	jl	.LBB3_3
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_4:                                # %if.then
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	%r13, 8(%rsp)           # 8-byte Spill
	cmpl	$0, (%r14)
	movq	%r14, %rbx
	movl	$0, %eax
	je	.LBB3_6
# BB#5:                                 # %if.then.15
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	printf
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_6:                                # %for.body.20
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_8 Depth 3
	movq	%rax, 32(%rsp)          # 8-byte Spill
	shlq	$5, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	16(%rcx,%rax), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	16(%rcx,%rax), %r13d
	testl	%r13d, %r13d
	jle	.LBB3_13
# BB#7:                                 # %for.body.36.lr.ph
                                        #   in Loop: Header=BB3_6 Depth=2
	movq	24(%rcx,%rax), %r12
	leaq	(%rax,%rcx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB3_8:                                # %for.body.36
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%r15d, %rax
	shlq	$4, %rax
	cmpl	%ebp, 8(%r12,%rax)
	jne	.LBB3_12
# BB#9:                                 # %if.then.40
                                        #   in Loop: Header=BB3_8 Depth=3
	leaq	(%rax,%r12), %r14
	cmpl	$0, (%rbx)
	je	.LBB3_11
# BB#10:                                # %if.then.43
                                        #   in Loop: Header=BB3_8 Depth=3
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movq	(%r14), %rdx
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	printf
.LBB3_11:                               # %if.end.52
                                        #   in Loop: Header=BB3_8 Depth=3
	decl	%r15d
	decl	%r13d
	movslq	%r13d, %rax
	shlq	$4, %rax
	movups	(%r12,%rax), %xmm0
	movups	%xmm0, (%r14)
.LBB3_12:                               # %for.inc
                                        #   in Loop: Header=BB3_8 Depth=3
	incl	%r15d
	cmpl	%r13d, %r15d
	jl	.LBB3_8
.LBB3_13:                               # %for.end
                                        #   in Loop: Header=BB3_6 Depth=2
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	%r13d, (%rax)
	movq	32(%rsp), %rax          # 8-byte Reload
	incq	%rax
	cmpq	$9, %rax
	jne	.LBB3_6
# BB#14:                                # %for.end.66
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	%rbx, %r14
	movq	48(%r14), %rax
	shlq	$4, %rbp
	movq	$.L.str.2, (%rax,%rbp)
	leaq	48(%rsp), %r12
	movq	8(%rsp), %r13           # 8-byte Reload
.LBB3_16:                               # %for.end.75
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%r13
	movslq	104(%r14), %rax
	cmpq	%rax, %r13
	jl	.LBB3_2
.LBB3_17:                               # %for.end.78
	movl	$0, 104(%r14)
	xorl	%eax, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	process_replaces, .Lfunc_end3-process_replaces
	.cfi_endproc

	.globl	write_list
	.align	16, 0x90
	.type	write_list,@function
write_list:                             # @write_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 96
.Ltmp44:
	.cfi_offset %rbx, -24
.Ltmp45:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, (%rsp)
	leaq	8(%rsp), %rdi
	movq	%rdx, %rsi
	callq	strcpy
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	write_list_pattern
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	write_list, .Lfunc_end4-write_list
	.cfi_endproc

	.globl	sort_uniq
	.align	16, 0x90
	.type	sort_uniq,@function
sort_uniq:                              # @sort_uniq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 64
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movslq	16(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB5_12
# BB#1:                                 # %if.end
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	24(%r12), %r15
	movl	12(%r12), %r13d
	movl	$16, %edx
	movl	$cmp_str, %ecx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	qsort
	leaq	16(%r15), %rbp
	cmpl	$2, %ebx
	jl	.LBB5_2
# BB#3:                                 # %for.body.preheader
	decl	%ebx
	movq	%rbp, %r14
	.align	16, 0x90
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rdi
	movq	-16(%r14), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB5_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB5_4 Depth=1
	movups	(%rbp), %xmm0
	movups	%xmm0, (%r14)
	addq	$16, %r14
	jmp	.LBB5_10
	.align	16, 0x90
.LBB5_6:                                # %if.else
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	12(%rbp), %eax
	movl	-4(%r14), %ecx
	cmpl	$4, %r13d
	jne	.LBB5_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB5_4 Depth=1
	cmpl	%ecx, %eax
	jg	.LBB5_9
	jmp	.LBB5_10
.LBB5_8:                                # %cond.false
                                        #   in Loop: Header=BB5_4 Depth=1
	cmpl	%ecx, %eax
	jge	.LBB5_10
.LBB5_9:                                # %if.then.19
                                        #   in Loop: Header=BB5_4 Depth=1
	leaq	-16(%r14), %rax
	movups	(%rbp), %xmm0
	movups	%xmm0, (%rax)
	.align	16, 0x90
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_4 Depth=1
	addq	$16, %rbp
	decl	%ebx
	jne	.LBB5_4
	jmp	.LBB5_11
.LBB5_2:
	movq	%rbp, %r14
.LBB5_11:                               # %for.end
	subq	%r15, %r14
	shrq	$4, %r14
	movl	%r14d, 16(%r12)
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	je	.LBB5_12
# BB#13:                                # %if.then.27
	movslq	%r14d, %rsi
	movl	$16, %edx
	movl	$cmp_index, %ecx
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	qsort                   # TAILCALL
.LBB5_12:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sort_uniq, .Lfunc_end5-sort_uniq
	.cfi_endproc

	.globl	write_list_pattern
	.align	16, 0x90
	.type	write_list_pattern,@function
write_list_pattern:                     # @write_list_pattern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 144
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	leaq	8(%rbx), %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	callq	strlen
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movb	$0, 48(%rsp)
	cmpl	$0, 16(%rbp)
	jle	.LBB6_27
# BB#1:                                 # %for.body.lr.ph
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #     Child Loop BB6_11 Depth 2
	movq	24(%rbp), %rax
	movq	%r15, %rcx
	shlq	$4, %rcx
	movq	(%rax,%rcx), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	%r13, %rbx
	shlq	$32, %rbx
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, %rbp
	leaq	(%rbx,%rbp), %rdi
	sarq	$32, %rdi
	callq	malloc
	movq	%rax, %r14
	leal	(%r13,%r13,2), %edi
	movq	16(%rsp), %rax          # 8-byte Reload
	addl	%eax, %edi
	shlq	$32, %rdi
	addq	%rbp, %rdi
	sarq	$32, %rdi
	callq	malloc
	movq	%rax, %r13
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	strcpy
	movq	8(%rsp), %rdx           # 8-byte Reload
	cmpl	$0, 4(%rdx)
	je	.LBB6_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	testq	%rbx, %rbx
	jle	.LBB6_8
# BB#4:                                 # %land.rhs.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	sarq	$32, %rbx
	leaq	(%rbx,%r14), %rax
	.align	16, 0x90
.LBB6_5:                                # %land.rhs
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB6_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB6_5 Depth=2
	decq	%rax
	cmpq	%r14, %rax
	ja	.LBB6_5
	jmp	.LBB6_8
	.align	16, 0x90
.LBB6_7:                                # %if.then.20
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$0, (%rax)
.LBB6_8:                                # %if.end.22
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$0, (%rdx)
	je	.LBB6_14
# BB#9:                                 # %for.cond.25.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	(%r14), %bl
	testb	%bl, %bl
	je	.LBB6_14
# BB#10:                                # %for.body.27.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	callq	__ctype_b_loc
	movq	%rax, %r12
	movq	%r14, %rbp
	incq	%rbp
	.align	16, 0x90
.LBB6_11:                               # %for.body.27
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	%bl, %rbx
	movq	(%r12), %rax
	testb	$2, 1(%rax,%rbx,2)
	je	.LBB6_13
# BB#12:                                # %if.then.34
                                        #   in Loop: Header=BB6_11 Depth=2
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movb	(%rax,%rbx,4), %al
	movb	%al, -1(%rbp)
.LBB6_13:                               # %for.inc
                                        #   in Loop: Header=BB6_11 Depth=2
	movb	(%rbp), %bl
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB6_11
.LBB6_14:                               # %if.end.42
                                        #   in Loop: Header=BB6_2 Depth=1
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdx
	movq	%r14, %rcx
	movq	%r14, %r8
	callq	sprintf
	movl	$40, %esi
	movq	%r13, %rdi
	callq	strchr
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB6_22
# BB#15:                                # %if.end.42
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r13, %r12
	je	.LBB6_22
# BB#16:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	-1(%r12), %eax
	cmpl	$95, %eax
	jne	.LBB6_22
# BB#17:                                # %if.then.56
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$0, (%r12)
	movq	%r13, %rdi
	leaq	48(%rsp), %rsi
	callq	strcmp
	testl	%eax, %eax
	movq	40(%rsp), %rbx          # 8-byte Reload
	je	.LBB6_21
# BB#18:                                # %if.then.63
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpb	$0, 48(%rsp)
	je	.LBB6_20
# BB#19:                                # %if.then.66
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$.L.str.58, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB6_20:                               # %if.end.68
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$.L.str.59, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r13, %rdx
	callq	fprintf
	leaq	48(%rsp), %rdi
	movq	%r13, %rsi
	callq	strcpy
.LBB6_21:                               # %if.end.72
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	$40, (%r12)
	jmp	.LBB6_24
	.align	16, 0x90
.LBB6_22:                               # %if.else
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpb	$0, 48(%rsp)
	movq	40(%rsp), %rbx          # 8-byte Reload
	je	.LBB6_24
# BB#23:                                # %if.then.75
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$.L.str.58, %edi
	movq	%rbx, %rsi
	callq	fputs
	movb	$0, 48(%rsp)
.LBB6_24:                               # %if.end.79
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	fputs
	movq	%r13, %rdi
	callq	free
	movq	%r14, %rdi
	callq	free
	incq	%r15
	movq	32(%rsp), %rbp          # 8-byte Reload
	movslq	16(%rbp), %rax
	cmpq	%rax, %r15
	jl	.LBB6_2
# BB#25:                                # %for.end.82
	cmpb	$0, 48(%rsp)
	je	.LBB6_27
# BB#26:                                # %if.then.85
	movl	$.L.str.58, %edi
	movq	%rbx, %rsi
	callq	fputs
.LBB6_27:                               # %if.end.87
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	write_list_pattern, .Lfunc_end6-write_list_pattern
	.cfi_endproc

	.globl	dev_file_name
	.align	16, 0x90
	.type	dev_file_name,@function
dev_file_name:                          # @dev_file_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp74:
	.cfi_def_cfa_offset 32
.Ltmp75:
	.cfi_offset %rbx, -24
.Ltmp76:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	callq	strlen
	movq	%rax, %rbx
	cmpl	$5, %ebx
	jl	.LBB7_12
# BB#1:                                 # %land.lhs.true
	movl	$.L.str.12, %edi
	callq	strlen
	movq	%rax, %rcx
	movslq	%ebx, %rax
	leaq	-4(%r14,%rax), %rsi
	cmpq	$3, %rcx
	ja	.LBB7_9
# BB#2:                                 # %cond.true
	movzbl	(%rsi), %edx
	movl	$46, %eax
	subl	%edx, %eax
	testq	%rcx, %rcx
	je	.LBB7_10
# BB#3:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB7_10
# BB#4:                                 # %if.then
	movzbl	1(%rsi), %edx
	movl	$100, %eax
	subl	%edx, %eax
	cmpq	$2, %rcx
	jb	.LBB7_10
# BB#5:                                 # %if.then
	testl	%eax, %eax
	jne	.LBB7_10
# BB#6:                                 # %if.then.24
	movzbl	2(%rsi), %edx
	movl	$101, %eax
	subl	%edx, %eax
	cmpq	$3, %rcx
	jb	.LBB7_10
# BB#7:                                 # %if.then.24
	testl	%eax, %eax
	jne	.LBB7_10
# BB#8:                                 # %if.then.34
	movzbl	3(%rsi), %ecx
	movl	$118, %eax
	subl	%ecx, %eax
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false
	movl	$.L.str.12, %edi
	callq	strcmp
.LBB7_10:                               # %cond.end
	testl	%eax, %eax
	je	.LBB7_11
.LBB7_12:                               # %if.then.46
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	strcat                  # TAILCALL
.LBB7_11:                               # %if.end.48
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	dev_file_name, .Lfunc_end7-dev_file_name
	.cfi_endproc

	.globl	read_token
	.align	16, 0x90
	.type	read_token,@function
read_token:                             # @read_token
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp83:
	.cfi_def_cfa_offset 64
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movl	%esi, %r15d
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	(%r12), %rbp
	movslq	%r15d, %r13
	xorl	%ebx, %ebx
	jmp	.LBB8_1
.LBB8_4:                                # %cleanup.thread15
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	movb	%r14b, (%rax,%rbx)
	incq	%rbx
	.align	16, 0x90
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r13, %rbx
	jge	.LBB8_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movsbq	(%rbp), %r14
	testq	%r14, %r14
	je	.LBB8_6
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	incq	%rbp
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$32, 1(%rax,%r14,2)
	je	.LBB8_4
# BB#5:                                 # %cleanup
                                        #   in Loop: Header=BB8_1 Depth=1
	testq	%rbx, %rbx
	jle	.LBB8_1
.LBB8_6:                                # %while.end
	movslq	%ebx, %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	movb	$0, (%rcx,%rax)
	movq	%rbp, (%r12)
	cmpl	%r15d, %eax
	movl	$-1, %ecx
	cmovgel	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	read_token, .Lfunc_end8-read_token
	.cfi_endproc

	.globl	add_entry
	.align	16, 0x90
	.type	add_entry,@function
add_entry:                              # @add_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp93:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp94:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp96:
	.cfi_def_cfa_offset 272
.Ltmp97:
	.cfi_offset %rbx, -56
.Ltmp98:
	.cfi_offset %r12, -48
.Ltmp99:
	.cfi_offset %r13, -40
.Ltmp100:
	.cfi_offset %r14, -32
.Ltmp101:
	.cfi_offset %r15, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movzbl	(%r14), %eax
	cmpl	$45, %eax
	jne	.LBB9_3
# BB#1:                                 # %land.lhs.true
	movsbq	1(%r14), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$2, 1(%rax,%rbx,2)
	jne	.LBB9_2
.LBB9_3:                                # %if.else
	movl	%ebp, 12(%rsp)          # 4-byte Spill
	cmpl	$0, (%r13)
	je	.LBB9_5
# BB#4:                                 # %if.then.8
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	printf
.LBB9_5:                                # %if.end
	movsbl	(%r15), %eax
	leal	-99(%rax), %ecx
	cmpl	$15, %ecx
	ja	.LBB9_202
# BB#6:                                 # %if.end
	leaq	152(%r13), %r12
	movzbl	%al, %ebp
	jmpq	*.LJTI9_0(,%rcx,8)
.LBB9_7:                                # %land.lhs.true.12
	movl	$.L.str.21, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_15
# BB#8:                                 # %cond.true
	addl	$-99, %ebp
	jne	.LBB9_16
# BB#9:                                 # %cond.true
	testq	%rax, %rax
	je	.LBB9_16
# BB#10:                                # %if.then.26
	movzbl	1(%r15), %ebp
	addl	$-111, %ebp
	cmpq	$2, %rax
	jb	.LBB9_16
# BB#11:                                # %if.then.26
	testl	%ebp, %ebp
	jne	.LBB9_16
# BB#12:                                # %if.then.36
	movzbl	2(%r15), %ebp
	addl	$-109, %ebp
	cmpq	$3, %rax
	jb	.LBB9_16
# BB#13:                                # %if.then.36
	testl	%ebp, %ebp
	jne	.LBB9_16
# BB#14:                                # %if.then.46
	movzbl	3(%r15), %ebp
	addl	$-112, %ebp
	jmp	.LBB9_16
.LBB9_2:                                # %if.then
	incq	%r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	strcpy
	xorl	%eax, %eax
	jmp	.LBB9_238
.LBB9_18:                               # %land.lhs.true.67
	movl	$.L.str.23, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_26
# BB#19:                                # %cond.true.71
	addl	$-100, %ebp
	jne	.LBB9_27
# BB#20:                                # %cond.true.71
	testq	%rax, %rax
	je	.LBB9_27
# BB#21:                                # %if.then.85
	movzbl	1(%r15), %ebp
	addl	$-101, %ebp
	cmpq	$2, %rax
	jb	.LBB9_27
# BB#22:                                # %if.then.85
	testl	%ebp, %ebp
	jne	.LBB9_27
# BB#23:                                # %if.then.95
	movzbl	2(%r15), %ebp
	addl	$-118, %ebp
	cmpq	$3, %rax
	jb	.LBB9_27
# BB#24:                                # %if.then.95
	testl	%ebp, %ebp
	jne	.LBB9_27
# BB#25:                                # %if.then.105
	movzbl	3(%r15), %ebp
	jmp	.LBB9_27
.LBB9_40:                               # %land.lhs.true.192
	movl	$.L.str.27, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_48
# BB#41:                                # %cond.true.196
	addl	$-101, %ebp
	jne	.LBB9_49
# BB#42:                                # %cond.true.196
	testq	%rax, %rax
	je	.LBB9_49
# BB#43:                                # %if.then.210
	movzbl	1(%r15), %ebp
	addl	$-109, %ebp
	cmpq	$2, %rax
	jb	.LBB9_49
# BB#44:                                # %if.then.210
	testl	%ebp, %ebp
	jne	.LBB9_49
# BB#45:                                # %if.then.220
	movzbl	2(%r15), %ebp
	addl	$-117, %ebp
	cmpq	$3, %rax
	jb	.LBB9_49
# BB#46:                                # %if.then.220
	testl	%ebp, %ebp
	jne	.LBB9_49
# BB#47:                                # %if.then.230
	movzbl	3(%r15), %ebp
	addl	$-108, %ebp
	jmp	.LBB9_49
.LBB9_52:                               # %land.lhs.true.257
	movl	$.L.str.29, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_60
# BB#53:                                # %cond.true.261
	addl	$-102, %ebp
	jne	.LBB9_61
# BB#54:                                # %cond.true.261
	testq	%rax, %rax
	je	.LBB9_61
# BB#55:                                # %if.then.275
	movzbl	1(%r15), %ebp
	addl	$-111, %ebp
	cmpq	$2, %rax
	jb	.LBB9_61
# BB#56:                                # %if.then.275
	testl	%ebp, %ebp
	jne	.LBB9_61
# BB#57:                                # %if.then.285
	movzbl	2(%r15), %ebp
	addl	$-110, %ebp
	cmpq	$3, %rax
	jb	.LBB9_61
# BB#58:                                # %if.then.285
	testl	%ebp, %ebp
	jne	.LBB9_61
# BB#59:                                # %if.then.295
	movzbl	3(%r15), %ebp
	addl	$-116, %ebp
	jmp	.LBB9_61
.LBB9_84:                               # %land.lhs.true.440
	movl	$.L.str.34, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_92
# BB#85:                                # %cond.true.444
	addl	$-104, %ebp
	jne	.LBB9_93
# BB#86:                                # %cond.true.444
	testq	%rax, %rax
	je	.LBB9_93
# BB#87:                                # %if.then.458
	movzbl	1(%r15), %ebp
	addl	$-97, %ebp
	cmpq	$2, %rax
	jb	.LBB9_93
# BB#88:                                # %if.then.458
	testl	%ebp, %ebp
	jne	.LBB9_93
# BB#89:                                # %if.then.468
	movzbl	2(%r15), %ebp
	addl	$-108, %ebp
	cmpq	$3, %rax
	jb	.LBB9_93
# BB#90:                                # %if.then.468
	testl	%ebp, %ebp
	jne	.LBB9_93
# BB#91:                                # %if.then.478
	movzbl	3(%r15), %ebp
	addl	$-102, %ebp
	jmp	.LBB9_93
.LBB9_94:                               # %land.lhs.true.501
	movl	$.L.str.36, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_102
# BB#95:                                # %cond.true.505
	addl	$-105, %ebp
	jne	.LBB9_103
# BB#96:                                # %cond.true.505
	testq	%rax, %rax
	je	.LBB9_103
# BB#97:                                # %if.then.519
	movzbl	1(%r15), %ebp
	addl	$-109, %ebp
	cmpq	$2, %rax
	jb	.LBB9_103
# BB#98:                                # %if.then.519
	testl	%ebp, %ebp
	jne	.LBB9_103
# BB#99:                                # %if.then.529
	movzbl	2(%r15), %ebp
	addl	$-97, %ebp
	cmpq	$3, %rax
	jb	.LBB9_103
# BB#100:                               # %if.then.529
	testl	%ebp, %ebp
	jne	.LBB9_103
# BB#101:                               # %if.then.539
	movzbl	3(%r15), %ebp
	addl	$-103, %ebp
	jmp	.LBB9_103
.LBB9_146:                              # %land.lhs.true.809
	movl	$.L.str.45, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_154
# BB#147:                               # %cond.true.813
	addl	$-108, %ebp
	jne	.LBB9_155
# BB#148:                               # %cond.true.813
	testq	%rax, %rax
	je	.LBB9_155
# BB#149:                               # %if.then.827
	movzbl	1(%r15), %ebp
	addl	$-105, %ebp
	cmpq	$2, %rax
	jb	.LBB9_155
# BB#150:                               # %if.then.827
	testl	%ebp, %ebp
	jne	.LBB9_155
# BB#151:                               # %if.then.837
	movzbl	2(%r15), %ebp
	addl	$-98, %ebp
	cmpq	$3, %rax
	jb	.LBB9_155
# BB#152:                               # %if.then.837
	testl	%ebp, %ebp
	jne	.LBB9_155
# BB#153:                               # %if.then.847
	movzbl	3(%r15), %ebp
	jmp	.LBB9_155
.LBB9_179:                              # %land.lhs.true.995
	movl	$.L.str.17, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_187
# BB#180:                               # %cond.true.999
	addl	$-111, %ebp
	jne	.LBB9_188
# BB#181:                               # %cond.true.999
	testq	%rax, %rax
	je	.LBB9_188
# BB#182:                               # %if.then.1013
	movzbl	1(%r15), %ebp
	addl	$-98, %ebp
	cmpq	$2, %rax
	jb	.LBB9_188
# BB#183:                               # %if.then.1013
	testl	%ebp, %ebp
	jne	.LBB9_188
# BB#184:                               # %if.then.1023
	movzbl	2(%r15), %ebp
	addl	$-106, %ebp
	cmpq	$3, %rax
	jb	.LBB9_188
# BB#185:                               # %if.then.1023
	testl	%ebp, %ebp
	jne	.LBB9_188
# BB#186:                               # %if.then.1033
	movzbl	3(%r15), %ebp
	jmp	.LBB9_188
.LBB9_203:                              # %land.lhs.true.1121
	movl	$.L.str.51, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_211
# BB#204:                               # %cond.true.1125
	addl	$-112, %ebp
	jne	.LBB9_212
# BB#205:                               # %cond.true.1125
	testq	%rax, %rax
	je	.LBB9_212
# BB#206:                               # %if.then.1139
	movzbl	1(%r15), %ebp
	addl	$-115, %ebp
	cmpq	$2, %rax
	jb	.LBB9_212
# BB#207:                               # %if.then.1139
	testl	%ebp, %ebp
	jne	.LBB9_212
# BB#208:                               # %if.then.1149
	movb	2(%r15), %cl
	movzbl	%cl, %ebp
	cmpq	$3, %rax
	jb	.LBB9_212
# BB#209:                               # %if.then.1149
	testb	%cl, %cl
	jne	.LBB9_212
# BB#210:                               # %if.then.1159
	movzbl	3(%r15), %ebp
	jmp	.LBB9_212
.LBB9_224:                              # %land.lhs.true.1246
	movl	$.L.str.55, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB9_232
# BB#225:                               # %cond.true.1250
	addl	$-114, %ebp
	jne	.LBB9_233
# BB#226:                               # %cond.true.1250
	testq	%rax, %rax
	je	.LBB9_233
# BB#227:                               # %if.then.1264
	movzbl	1(%r15), %ebp
	addl	$-101, %ebp
	cmpq	$2, %rax
	jb	.LBB9_233
# BB#228:                               # %if.then.1264
	testl	%ebp, %ebp
	jne	.LBB9_233
# BB#229:                               # %if.then.1274
	movzbl	2(%r15), %ebp
	addl	$-112, %ebp
	cmpq	$3, %rax
	jb	.LBB9_233
# BB#230:                               # %if.then.1274
	testl	%ebp, %ebp
	jne	.LBB9_233
# BB#231:                               # %if.then.1284
	movzbl	3(%r15), %ebp
	addl	$-108, %ebp
	jmp	.LBB9_233
.LBB9_15:                               # %cond.false
	movl	$.L.str.21, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_16:                               # %cond.end
	testl	%ebp, %ebp
	jne	.LBB9_202
# BB#17:                                # %if.end.58
	movl	$.L.str.22, %esi
	leaq	216(%r13), %r12
	jmp	.LBB9_39
.LBB9_26:                               # %cond.false.114
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_27:                               # %cond.end.116
	movl	$.L.str.24, %esi
	testl	%ebp, %ebp
	je	.LBB9_38
# BB#28:                                # %land.lhs.true.126
	movl	$.L.str.25, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_36
# BB#29:                                # %cond.true.130
	movzbl	(%r15), %eax
	addl	$-100, %eax
	testq	%rcx, %rcx
	je	.LBB9_37
# BB#30:                                # %cond.true.130
	testl	%eax, %eax
	jne	.LBB9_37
# BB#31:                                # %if.then.144
	movzbl	1(%r15), %eax
	addl	$-101, %eax
	cmpq	$2, %rcx
	jb	.LBB9_37
# BB#32:                                # %if.then.144
	testl	%eax, %eax
	jne	.LBB9_37
# BB#33:                                # %if.then.154
	movzbl	2(%r15), %eax
	addl	$-118, %eax
	cmpq	$3, %rcx
	jb	.LBB9_37
# BB#34:                                # %if.then.154
	testl	%eax, %eax
	jne	.LBB9_37
# BB#35:                                # %if.then.164
	movzbl	3(%r15), %eax
	addl	$-50, %eax
	jmp	.LBB9_37
.LBB9_48:                               # %cond.false.239
	movl	$.L.str.27, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_49:                               # %cond.end.241
	testl	%ebp, %ebp
	jne	.LBB9_202
# BB#50:                                # %if.then.244
	leaq	96(%rsp), %rbp
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rcx
	movl	$.L.str.28, %esi
	jmp	.LBB9_51
.LBB9_60:                               # %cond.false.304
	movl	$.L.str.29, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_61:                               # %cond.end.306
	testl	%ebp, %ebp
	je	.LBB9_62
# BB#63:                                # %land.lhs.true.318
	movl	$.L.str.30, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_71
# BB#64:                                # %cond.true.322
	movzbl	(%r15), %eax
	addl	$-102, %eax
	testq	%rcx, %rcx
	je	.LBB9_72
# BB#65:                                # %cond.true.322
	testl	%eax, %eax
	jne	.LBB9_72
# BB#66:                                # %if.then.336
	movzbl	1(%r15), %eax
	addl	$-117, %eax
	cmpq	$2, %rcx
	jb	.LBB9_72
# BB#67:                                # %if.then.336
	testl	%eax, %eax
	jne	.LBB9_72
# BB#68:                                # %if.then.346
	movzbl	2(%r15), %eax
	addl	$-110, %eax
	cmpq	$3, %rcx
	jb	.LBB9_72
# BB#69:                                # %if.then.346
	testl	%eax, %eax
	jne	.LBB9_72
# BB#70:                                # %if.then.356
	movzbl	3(%r15), %eax
	addl	$-99, %eax
	jmp	.LBB9_72
.LBB9_92:                               # %cond.false.487
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_93:                               # %cond.end.489
	movl	$.L.str.35, %esi
	testl	%ebp, %ebp
	je	.LBB9_39
	jmp	.LBB9_202
.LBB9_102:                              # %cond.false.548
	movl	$.L.str.36, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_103:                              # %cond.end.550
	testl	%ebp, %ebp
	je	.LBB9_104
# BB#105:                               # %land.lhs.true.562
	movl	$.L.str.38, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_113
# BB#106:                               # %cond.true.566
	movzbl	(%r15), %eax
	addl	$-105, %eax
	testq	%rcx, %rcx
	je	.LBB9_114
# BB#107:                               # %cond.true.566
	testl	%eax, %eax
	jne	.LBB9_114
# BB#108:                               # %if.then.580
	movzbl	1(%r15), %eax
	addl	$-109, %eax
	cmpq	$2, %rcx
	jb	.LBB9_114
# BB#109:                               # %if.then.580
	testl	%eax, %eax
	jne	.LBB9_114
# BB#110:                               # %if.then.590
	movzbl	2(%r15), %eax
	addl	$-97, %eax
	cmpq	$3, %rcx
	jb	.LBB9_114
# BB#111:                               # %if.then.590
	testl	%eax, %eax
	jne	.LBB9_114
# BB#112:                               # %if.then.600
	movzbl	3(%r15), %eax
	addl	$-103, %eax
	jmp	.LBB9_114
.LBB9_154:                              # %cond.false.856
	movl	$.L.str.45, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_155:                              # %cond.end.858
	testl	%ebp, %ebp
	je	.LBB9_156
# BB#157:                               # %land.lhs.true.870
	movl	$.L.str.46, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_165
# BB#158:                               # %cond.true.874
	movzbl	(%r15), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB9_166
# BB#159:                               # %cond.true.874
	testl	%eax, %eax
	jne	.LBB9_166
# BB#160:                               # %if.then.888
	movzbl	1(%r15), %eax
	addl	$-105, %eax
	cmpq	$2, %rcx
	jb	.LBB9_166
# BB#161:                               # %if.then.888
	testl	%eax, %eax
	jne	.LBB9_166
# BB#162:                               # %if.then.898
	movzbl	2(%r15), %eax
	addl	$-98, %eax
	cmpq	$3, %rcx
	jb	.LBB9_166
# BB#163:                               # %if.then.898
	testl	%eax, %eax
	jne	.LBB9_166
# BB#164:                               # %if.then.908
	movzbl	3(%r15), %eax
	addl	$-112, %eax
	jmp	.LBB9_166
.LBB9_187:                              # %cond.false.1042
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_188:                              # %cond.end.1044
	testl	%ebp, %ebp
	je	.LBB9_189
# BB#192:                               # %land.lhs.true.1061
	movl	$.L.str.49, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_200
# BB#193:                               # %cond.true.1065
	movzbl	(%r15), %eax
	addl	$-111, %eax
	testq	%rcx, %rcx
	je	.LBB9_201
# BB#194:                               # %cond.true.1065
	testl	%eax, %eax
	jne	.LBB9_201
# BB#195:                               # %if.then.1079
	movzbl	1(%r15), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB9_201
# BB#196:                               # %if.then.1079
	testl	%eax, %eax
	jne	.LBB9_201
# BB#197:                               # %if.then.1089
	movzbl	2(%r15), %eax
	addl	$-101, %eax
	cmpq	$3, %rcx
	jb	.LBB9_201
# BB#198:                               # %if.then.1089
	testl	%eax, %eax
	jne	.LBB9_201
# BB#199:                               # %if.then.1099
	movzbl	3(%r15), %eax
	addl	$-114, %eax
	jmp	.LBB9_201
.LBB9_211:                              # %cond.false.1168
	movl	$.L.str.51, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_212:                              # %cond.end.1170
	testl	%ebp, %ebp
	je	.LBB9_213
# BB#214:                               # %land.lhs.true.1185
	movl	$.L.str.53, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_222
# BB#215:                               # %cond.true.1189
	movzbl	(%r15), %eax
	addl	$-112, %eax
	testq	%rcx, %rcx
	je	.LBB9_223
# BB#216:                               # %cond.true.1189
	testl	%eax, %eax
	jne	.LBB9_223
# BB#217:                               # %if.then.1203
	movzbl	1(%r15), %eax
	addl	$-108, %eax
	cmpq	$2, %rcx
	jb	.LBB9_223
# BB#218:                               # %if.then.1203
	testl	%eax, %eax
	jne	.LBB9_223
# BB#219:                               # %if.then.1213
	movzbl	2(%r15), %eax
	addl	$-117, %eax
	cmpq	$3, %rcx
	jb	.LBB9_223
# BB#220:                               # %if.then.1213
	testl	%eax, %eax
	jne	.LBB9_223
# BB#221:                               # %if.then.1223
	movzbl	3(%r15), %eax
	addl	$-103, %eax
	movl	$.L.str.54, %esi
	jmp	.LBB9_83
.LBB9_232:                              # %cond.false.1293
	movl	$.L.str.55, %esi
	movq	%r15, %rdi
	callq	strcmp
	movl	%eax, %ebp
.LBB9_233:                              # %cond.end.1295
	testl	%ebp, %ebp
	jne	.LBB9_202
# BB#234:                               # %if.then.1298
	addq	$88, %r13
	jmp	.LBB9_235
.LBB9_62:                               # %if.then.309
	addq	$248, %r13
	jmp	.LBB9_235
.LBB9_104:                              # %if.then.553
	movl	$.L.str.37, %esi
	leaq	120(%r13), %r12
	jmp	.LBB9_39
.LBB9_156:                              # %if.then.861
	addq	$280, %r13              # imm = 0x118
	jmp	.LBB9_235
.LBB9_189:                              # %if.then.1047
	leaq	16(%rsp), %rbp
	movq	16(%r13), %rsi
	addq	$376, %r13              # imm = 0x178
	movq	%rbp, %rdi
	callq	strcpy
	movl	$.L.str.48, %esi
	movq	%rbp, %rdi
	callq	strcat
	movq	%r13, %r12
	jmp	.LBB9_190
.LBB9_213:                              # %if.then.1173
	leaq	96(%rsp), %rbp
	movq	%r14, %rdi
	callq	strlen
	leal	3(%rax), %ecx
	movl	$.L.str.52, %esi
.LBB9_51:                               # %if.else.1314
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	sprintf
	movq	%rbp, %r14
	jmp	.LBB9_236
.LBB9_36:                               # %cond.false.173
	movl	$.L.str.25, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_37:                               # %cond.end.175
	movl	$.L.str.26, %esi
	testl	%eax, %eax
	jne	.LBB9_202
.LBB9_38:                               # %if.end.181
	leaq	184(%r13), %r12
	jmp	.LBB9_39
.LBB9_71:                               # %cond.false.365
	movl	$.L.str.30, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_72:                               # %cond.end.367
	movl	$.L.str.31, %esi
	testl	%eax, %eax
	je	.LBB9_39
# BB#73:                                # %land.lhs.true.377
	movl	$.L.str.32, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_81
# BB#74:                                # %cond.true.381
	movzbl	(%r15), %eax
	addl	$-102, %eax
	testq	%rcx, %rcx
	je	.LBB9_82
# BB#75:                                # %cond.true.381
	testl	%eax, %eax
	jne	.LBB9_82
# BB#76:                                # %if.then.395
	movzbl	1(%r15), %eax
	addl	$-97, %eax
	cmpq	$2, %rcx
	jb	.LBB9_82
# BB#77:                                # %if.then.395
	testl	%eax, %eax
	jne	.LBB9_82
# BB#78:                                # %if.then.405
	movzbl	2(%r15), %eax
	addl	$-112, %eax
	cmpq	$3, %rcx
	jb	.LBB9_82
# BB#79:                                # %if.then.405
	testl	%eax, %eax
	jne	.LBB9_82
# BB#80:                                # %if.then.415
	movzbl	3(%r15), %eax
	addl	$-105, %eax
	jmp	.LBB9_82
.LBB9_113:                              # %cond.false.609
	movl	$.L.str.38, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_114:                              # %cond.end.611
	movl	$.L.str.39, %esi
	testl	%eax, %eax
	je	.LBB9_39
# BB#115:                               # %land.lhs.true.621
	movl	$.L.str.40, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_123
# BB#116:                               # %cond.true.625
	movzbl	(%r15), %eax
	addl	$-105, %eax
	testq	%rcx, %rcx
	je	.LBB9_124
# BB#117:                               # %cond.true.625
	testl	%eax, %eax
	jne	.LBB9_124
# BB#118:                               # %if.then.639
	movzbl	1(%r15), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB9_124
# BB#119:                               # %if.then.639
	testl	%eax, %eax
	jne	.LBB9_124
# BB#120:                               # %if.then.649
	movzbl	2(%r15), %eax
	addl	$-99, %eax
	cmpq	$3, %rcx
	jb	.LBB9_124
# BB#121:                               # %if.then.649
	testl	%eax, %eax
	jne	.LBB9_124
# BB#122:                               # %if.then.659
	movzbl	3(%r15), %eax
	addl	$-108, %eax
	jmp	.LBB9_124
.LBB9_165:                              # %cond.false.917
	movl	$.L.str.46, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_166:                              # %cond.end.919
	testl	%eax, %eax
	je	.LBB9_167
# BB#168:                               # %land.lhs.true.931
	movl	$.L.str.47, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_176
# BB#169:                               # %cond.true.935
	movzbl	(%r15), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB9_177
# BB#170:                               # %cond.true.935
	testl	%eax, %eax
	jne	.LBB9_177
# BB#171:                               # %if.then.949
	movzbl	1(%r15), %eax
	addl	$-105, %eax
	cmpq	$2, %rcx
	jb	.LBB9_177
# BB#172:                               # %if.then.949
	testl	%eax, %eax
	jne	.LBB9_177
# BB#173:                               # %if.then.959
	movzbl	2(%r15), %eax
	addl	$-110, %eax
	cmpq	$3, %rcx
	jb	.LBB9_177
# BB#174:                               # %if.then.959
	testl	%eax, %eax
	jne	.LBB9_177
# BB#175:                               # %if.then.969
	movzbl	3(%r15), %eax
	addl	$-107, %eax
	jmp	.LBB9_177
.LBB9_200:                              # %cond.false.1108
	movl	$.L.str.49, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_201:                              # %cond.end.1110
	movl	$.L.str.50, %ebp
	testl	%eax, %eax
	je	.LBB9_190
	jmp	.LBB9_202
.LBB9_222:                              # %cond.false.1232
	movl	$.L.str.53, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_223:                              # %cond.end.1234
	movl	$.L.str.54, %esi
	jmp	.LBB9_83
.LBB9_167:                              # %if.then.922
	addq	$312, %r13              # imm = 0x138
	jmp	.LBB9_235
.LBB9_81:                               # %cond.false.424
	movl	$.L.str.32, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_82:                               # %cond.end.426
	movl	$.L.str.33, %esi
	jmp	.LBB9_83
.LBB9_123:                              # %cond.false.668
	movl	$.L.str.40, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_124:                              # %cond.end.670
	testl	%eax, %eax
	je	.LBB9_125
# BB#126:                               # %land.lhs.true.685
	movl	$.L.str.41, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_134
# BB#127:                               # %cond.true.689
	movzbl	(%r15), %eax
	addl	$-105, %eax
	testq	%rcx, %rcx
	je	.LBB9_135
# BB#128:                               # %cond.true.689
	testl	%eax, %eax
	jne	.LBB9_135
# BB#129:                               # %if.then.703
	movzbl	1(%r15), %eax
	addl	$-110, %eax
	cmpq	$2, %rcx
	jb	.LBB9_135
# BB#130:                               # %if.then.703
	testl	%eax, %eax
	jne	.LBB9_135
# BB#131:                               # %if.then.713
	movzbl	2(%r15), %eax
	addl	$-105, %eax
	cmpq	$3, %rcx
	jb	.LBB9_135
# BB#132:                               # %if.then.713
	testl	%eax, %eax
	jne	.LBB9_135
# BB#133:                               # %if.then.723
	movzbl	3(%r15), %eax
	addl	$-116, %eax
	jmp	.LBB9_135
.LBB9_176:                              # %cond.false.978
	movl	$.L.str.47, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_177:                              # %cond.end.980
	testl	%eax, %eax
	jne	.LBB9_202
# BB#178:                               # %if.then.983
	addq	$344, %r13              # imm = 0x158
.LBB9_235:                              # %if.else.1314
	movq	%r13, %r12
.LBB9_236:                              # %if.else.1314
	movq	%r12, %rdi
	movq	%r14, %rsi
	jmp	.LBB9_237
.LBB9_125:                              # %if.then.673
	leaq	96(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	%rbp, %rdi
	callq	dev_file_name
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	read_dev
	jmp	.LBB9_238
.LBB9_134:                              # %cond.false.732
	movl	$.L.str.41, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_135:                              # %cond.end.734
	movl	$.L.str.42, %esi
	testl	%eax, %eax
	je	.LBB9_39
# BB#136:                               # %land.lhs.true.744
	movl	$.L.str.43, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$3, %rcx
	ja	.LBB9_144
# BB#137:                               # %cond.true.748
	movzbl	(%r15), %eax
	addl	$-105, %eax
	testq	%rcx, %rcx
	je	.LBB9_145
# BB#138:                               # %cond.true.748
	testl	%eax, %eax
	jne	.LBB9_145
# BB#139:                               # %if.then.762
	movzbl	1(%r15), %eax
	addl	$-111, %eax
	cmpq	$2, %rcx
	jb	.LBB9_145
# BB#140:                               # %if.then.762
	testl	%eax, %eax
	jne	.LBB9_145
# BB#141:                               # %if.then.772
	movzbl	2(%r15), %eax
	addl	$-100, %eax
	cmpq	$3, %rcx
	jb	.LBB9_145
# BB#142:                               # %if.then.772
	testl	%eax, %eax
	jne	.LBB9_145
# BB#143:                               # %if.then.782
	movzbl	3(%r15), %eax
	addl	$-101, %eax
	movl	$.L.str.44, %esi
	jmp	.LBB9_83
.LBB9_144:                              # %cond.false.791
	movl	$.L.str.43, %esi
	movq	%r15, %rdi
	callq	strcmp
.LBB9_145:                              # %cond.end.793
	movl	$.L.str.44, %esi
.LBB9_83:                               # %cond.end.426
	testl	%eax, %eax
	jne	.LBB9_202
.LBB9_39:                               # %pre
	leaq	16(%rsp), %rbp
	movq	8(%r13), %rdx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	sprintf
.LBB9_190:                              # %if.then.1302
	leaq	96(%rsp), %rbx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	%r14, %rcx
	callq	sprintf
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$120, %rax
	jae	.LBB9_191
# BB#239:                               # %cond.end.1311
	leaq	96(%rsp), %rsi
	movq	%r12, %rdi
.LBB9_237:                              # %if.end.1316
	movl	12(%rsp), %edx          # 4-byte Reload
	callq	add_item
	movl	12(%r12), %eax
.LBB9_238:                              # %return
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_202:                              # %err
	movq	stderr(%rip), %rdi
	movl	$.L.str.56, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB9_191:                              # %cond.false.1310
	movl	$.L.str.57, %edi
	movl	$.L.str.11, %esi
	movl	$872, %edx              # imm = 0x368
	movl	$.L__PRETTY_FUNCTION__.add_entry, %ecx
	callq	__assert_fail
.Lfunc_end9:
	.size	add_entry, .Lfunc_end9-add_entry
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_7
	.quad	.LBB9_18
	.quad	.LBB9_40
	.quad	.LBB9_52
	.quad	.LBB9_202
	.quad	.LBB9_84
	.quad	.LBB9_94
	.quad	.LBB9_202
	.quad	.LBB9_202
	.quad	.LBB9_146
	.quad	.LBB9_202
	.quad	.LBB9_202
	.quad	.LBB9_179
	.quad	.LBB9_203
	.quad	.LBB9_202
	.quad	.LBB9_224

	.text
	.globl	add_item
	.align	16, 0x90
	.type	add_item,@function
add_item:                               # @add_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp106:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp107:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 80
.Ltmp110:
	.cfi_offset %rbx, -56
.Ltmp111:
	.cfi_offset %r12, -48
.Ltmp112:
	.cfi_offset %r13, -40
.Ltmp113:
	.cfi_offset %r14, -32
.Ltmp114:
	.cfi_offset %r15, -24
.Ltmp115:
	.cfi_offset %rbp, -16
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	%rbx, %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, %r12
	movl	8(%r13), %eax
	movl	16(%r13), %r14d
	cmpl	%eax, %r14d
	jge	.LBB10_2
# BB#1:                                 # %entry.if.end.17_crit_edge
	movq	24(%r13), %rbp
	jmp	.LBB10_6
.LBB10_2:                               # %if.then
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	addl	%eax, %eax
	cmpl	$20, %eax
	movl	$20, %ebx
	cmovgel	%eax, %ebx
	movl	%ebx, 8(%r13)
	movq	24(%r13), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movslq	%ebx, %r15
	shlq	$4, %r15
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB10_7
# BB#3:                                 # %if.end.i
	movq	(%rsp), %rsi            # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB10_5
# BB#4:                                 # %if.then.1.i
	sarl	%ebx
	movslq	%ebx, %rdx
	shlq	$4, %rdx
	cmpq	%r15, %rdx
	cmovaeq	%r15, %rdx
	movq	%rbp, %rdi
	callq	memcpy
.LBB10_5:                               # %mrealloc.exit.thread
	movq	%rbp, 24(%r13)
	movq	8(%rsp), %rbx           # 8-byte Reload
.LBB10_6:                               # %if.end.17
	movslq	%r14d, %rax
	shlq	$4, %rax
	leaq	(%rbp,%rax), %r15
	movq	%r12, (%rbp,%rax)
	movl	%r14d, 12(%rbp,%rax)
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rbp,%rax)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	incl	16(%r13)
	movq	%r15, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_7:                               # %cond.false
	movq	$0, 24(%r13)
	movl	$.L.str.10, %edi
	movl	$.L.str.11, %esi
	movl	$898, %edx              # imm = 0x382
	movl	$.L__PRETTY_FUNCTION__.add_item, %ecx
	callq	__assert_fail
.Lfunc_end10:
	.size	add_item, .Lfunc_end10-add_item
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_str,@function
cmp_str:                                # @cmp_str
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	jmp	strcmp                  # TAILCALL
.Lfunc_end11:
	.size	cmp_str, .Lfunc_end11-cmp_str
	.cfi_endproc

	.align	16, 0x90
	.type	cmp_index,@function
cmp_index:                              # @cmp_index
	.cfi_startproc
# BB#0:                                 # %entry
	movl	12(%rdi), %eax
	movl	12(%rsi), %ecx
	movl	%eax, %edx
	subl	%ecx, %edx
	testl	%edx, %edx
	setg	%dl
	cmpl	%ecx, %eax
	movzbl	%dl, %ecx
	movl	$-1, %eax
	cmovnsl	%ecx, %eax
	retq
.Lfunc_end12:
	.size	cmp_index, .Lfunc_end12-cmp_index
	.cfi_endproc

	.type	init_config,@object     # @init_config
	.section	.rodata,"a",@progbits
	.align	8
init_config:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.60
	.quad	.L.str.2
	.quad	.L.str.61
	.long	200                     # 0xc8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.62
	.long	200                     # 0xc8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.63
	.long	50                      # 0x32
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	288
	.zero	72
	.zero	72
	.zero	72
	.size	init_config, 624

	.type	init_config_lists,@object # @init_config_lists
	.align	16
init_config_lists:
	.quad	.L.str.64
	.long	100                     # 0x64
	.long	2                       # 0x2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.65
	.long	20                      # 0x14
	.long	2                       # 0x2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.66
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.67
	.long	100                     # 0x64
	.long	2                       # 0x2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.68
	.long	50                      # 0x32
	.long	2                       # 0x2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.69
	.long	20                      # 0x14
	.long	4                       # 0x4
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.70
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.71
	.long	10                      # 0xa
	.long	2                       # 0x2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.72
	.long	500                     # 0x1f4
	.long	2                       # 0x2
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.size	init_config_lists, 288

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Missing argument after %s.\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%c not followed by p|s|%c|-: &%c\n"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unknown switch %s.\n"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"w"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Can't open %s for output.\n"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/* This file was generated automatically by genconf.c. */\n"
	.size	.L.str.7, 59

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/* For documentation, see gsconfig.c. */\n"
	.size	.L.str.8, 42

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"font_(\"0.font_%%s\",%sf_%%s,zf_%%s)\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"list->items != ((void*)0)"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"./base/genconf.c"
	.size	.L.str.11, 17

	.type	.L__PRETTY_FUNCTION__.alloc_list,@object # @__PRETTY_FUNCTION__.alloc_list
.L__PRETTY_FUNCTION__.alloc_list:
	.asciz	"int alloc_list(string_list_t *)"
	.size	.L__PRETTY_FUNCTION__.alloc_list, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	".dev"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Replacing file %s.\n"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Replacing %s %s.\n"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Reading %s;\n"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Skipping duplicate file.\n"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"obj"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Token too long: %s.\n"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Finished %s.\n"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Adding %s %s;\n"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"comp"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"compositor_(%scomposite_%%s_type)"
	.size	.L.str.22, 34

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"dev"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"device_(%s%%s_device)"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"dev2"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"device2_(%s%%s_device)"
	.size	.L.str.26, 23

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"emulator"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"emulator_(\"%s\",%u)"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"font"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"functiontype"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"function_type_(%%s,%sbuild_function_%%s)"
	.size	.L.str.31, 41

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"fapi"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"fapi_(%s%%s_init)"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"halftone"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"halftone_(%sdht_%%s)"
	.size	.L.str.35, 21

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"imageclass"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"image_class_(%simage_class_%%s)"
	.size	.L.str.37, 32

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"imagetype"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"image_type_(%%s,%simage_type_%%s)"
	.size	.L.str.39, 34

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"include"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"init"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"init_(%s%%s_init)"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"iodev"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"io_device_(%siodev_%%s)"
	.size	.L.str.44, 24

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"lib"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"libpath"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"link"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%s"
	.size	.L.str.48, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"oper"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"oper_(%s_op_defs)"
	.size	.L.str.50, 18

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"ps"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"psfile_(\"%s.ps\",%u)"
	.size	.L.str.52, 20

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"plugin"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"plugin_(%s%%s_instantiate)"
	.size	.L.str.54, 27

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"replace"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Definition not recognized: %s %s.\n"
	.size	.L.str.56, 35

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"strlen(str) < 120"
	.size	.L.str.57, 18

	.type	.L__PRETTY_FUNCTION__.add_entry,@object # @__PRETTY_FUNCTION__.add_entry
.L__PRETTY_FUNCTION__.add_entry:
	.asciz	"int add_entry(config_t *, char *, const char *, int)"
	.size	.L__PRETTY_FUNCTION__.add_entry, 53

	.type	.L__PRETTY_FUNCTION__.add_item,@object # @__PRETTY_FUNCTION__.add_item
.L__PRETTY_FUNCTION__.add_item:
	.asciz	"string_item_t *add_item(string_list_t *, const char *, int)"
	.size	.L__PRETTY_FUNCTION__.add_item, 60

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"#endif\n"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"#ifdef %s\n"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gs_"
	.size	.L.str.60, 4

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"file name"
	.size	.L.str.61, 10

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"file contents"
	.size	.L.str.62, 14

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"-replace"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"resource"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"sorted_resource"
	.size	.L.str.65, 16

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"-comp"
	.size	.L.str.66, 6

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"-dev"
	.size	.L.str.67, 5

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"-font"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"-lib"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"-libpath"
	.size	.L.str.70, 9

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"-link"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"-obj"
	.size	.L.str.72, 5

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Can't allocate space for file name %s%s.\n"
	.size	.L.str.73, 42

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"rb"
	.size	.L.str.74, 3

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"r"
	.size	.L.str.75, 2

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Can't read %s.\n"
	.size	.L.str.76, 16

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Can't allocate %d bytes to read %s.\n"
	.size	.L.str.77, 37

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"File %s = %d bytes.\n"
	.size	.L.str.78, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
