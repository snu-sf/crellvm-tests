	.text
	.file	"gxclimag.bc"
	.globl	clist_fill_mask
	.align	16, 0x90
	.type	clist_fill_mask,@function
clist_fill_mask:                        # @clist_fill_mask
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
	subq	$264, %rsp              # imm = 0x108
.Ltmp6:
	.cfi_def_cfa_offset 320
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
	movl	%r9d, %ebp
	movq	%r8, %r12
	movl	%ecx, %r14d
	movl	%edx, 172(%rsp)         # 4-byte Spill
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	movq	%rdi, %r13
	movl	360(%rsp), %ecx
	movq	344(%rsp), %rdx
	movl	%ecx, %eax
	andl	$51, %eax
	shll	$2, %eax
	movl	%ecx, %esi
	andl	$-461, %esi             # imm = 0xFFFFFFFFFFFFFE33
	orl	%eax, %esi
	callq	cmd_slow_rop
	movb	$1, %r15b
	testl	%eax, %eax
	jne	.LBB0_4
# BB#1:                                 # %lor.rhs
	movl	$170, %esi
	movl	360(%rsp), %eax
	testb	$1, %ah
	jne	.LBB0_3
# BB#2:                                 # %cond.false
	movl	360(%rsp), %eax
	movl	%eax, %ecx
	shrl	$2, %eax
	andl	$51, %eax
	movl	%ecx, %esi
	andl	$-52, %esi
	orl	%eax, %esi
.LBB0_3:                                # %cond.end
	movq	%r13, %rdi
	movq	344(%rsp), %rdx
	callq	cmd_slow_rop
	testl	%eax, %eax
	setne	%r15b
.LBB0_4:                                # %lor.end
	cmpl	$2, 352(%rsp)
	jl	.LBB0_6
# BB#5:                                 # %land.lhs.true
	movl	$-1, %eax
	testb	$64, 12168(%r13)
	jne	.LBB0_94
.LBB0_6:                                # %do.body
	movl	336(%rsp), %r9d
	movl	328(%rsp), %eax
	movl	320(%rsp), %edx
	movl	%ebp, %ebx
	sarl	$31, %ebx
	andl	%ebp, %ebx
	leal	(%rbx,%rax), %ecx
	xorl	%eax, %eax
	testl	%ebp, %ebp
	movl	%ebp, %r8d
	cmovsl	%eax, %r8d
	movl	832(%r13), %edi
	subl	%r8d, %edi
	cmpl	%edi, %ecx
	cmovlel	%ecx, %edi
	movl	12184(%r13), %ecx
	movl	%ecx, %esi
	subl	%edx, %esi
	jle	.LBB0_7
# BB#8:                                 # %if.then.31
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	leal	(%rdx,%r9), %ebp
	subl	%ecx, %ebp
	imull	%r14d, %esi
	movslq	%esi, %rdx
	movq	160(%rsp), %rsi         # 8-byte Reload
	leaq	(%rdx,%rsi), %r9
	xorl	%r12d, %r12d
	jmp	.LBB0_9
.LBB0_7:
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	movl	%r9d, %ebp
	movl	%edx, %ecx
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %r9
.LBB0_9:                                # %if.end.38
	leal	(%rcx,%rbp), %r10d
	movl	12188(%r13), %esi
	movl	%esi, %edx
	subl	%ecx, %edx
	cmpl	%esi, %r10d
	cmovlel	%ebp, %edx
	testl	%edi, %edi
	jle	.LBB0_94
# BB#10:                                # %if.end.38
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	%r8, 136(%rsp)          # 8-byte Spill
	testl	%edx, %edx
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	jle	.LBB0_94
# BB#11:                                # %if.end.55
	movq	368(%rsp), %rbx
	testb	$8, 12168(%r13)
	je	.LBB0_20
# BB#12:                                # %land.lhs.true.59
	movb	%r15b, 100(%rsp)        # 1-byte Spill
	movq	%r12, 88(%rsp)          # 8-byte Spill
	movl	%r14d, 84(%rsp)         # 4-byte Spill
	testq	%rbx, %rbx
	je	.LBB0_19
# BB#13:                                # %if.end.i
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	144(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rdx), %r12d
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	128(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax), %r14d
	movl	%eax, %r15d
	shll	$8, %r15d
	movl	%edx, %ebp
	shll	$8, %ebp
	shll	$8, %r14d
	shll	$8, %r12d
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%ebp, %edx
	movl	%r14d, %ecx
	movl	%r12d, %r8d
	callq	gx_cpath_includes_rectangle
	testl	%eax, %eax
	je	.LBB0_14
.LBB0_19:                               # %check_rect_for_trivial_clip.exit.thread
	movl	84(%rsp), %r14d         # 4-byte Reload
	movq	88(%rsp), %r12          # 8-byte Reload
	movb	100(%rsp), %r15b        # 1-byte Reload
.LBB0_20:                               # %lor.lhs.false.64
	movl	$96, %edi
	callq	gs_debug_c
	cmpl	$252, 360(%rsp)
	jne	.LBB0_39
# BB#21:                                # %lor.lhs.false.64
	testq	%r12, %r12
	je	.LBB0_39
# BB#22:                                # %lor.lhs.false.64
	testl	%eax, %eax
	jne	.LBB0_39
# BB#23:                                # %lor.lhs.false.73
	cmpl	$2, 352(%rsp)
	jl	.LBB0_25
# BB#24:                                # %land.lhs.true.76
	movl	$gx_dc_type_data_pure, %eax
	movq	344(%rsp), %rcx
	cmpq	%rax, (%rcx)
	jne	.LBB0_39
.LBB0_25:                               # %if.end.85
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	cmd_check_clip_path
	testl	%eax, %eax
	je	.LBB0_27
# BB#26:                                # %if.then.88
	movl	$8192, %esi             # imm = 0x2000
	movq	%r13, %rdi
	callq	cmd_clear_known
.LBB0_27:                               # %if.end.89
	movl	12148(%r13), %eax
	testl	%eax, %eax
	js	.LBB0_94
# BB#28:                                # %if.end.94
	movb	%r15b, 100(%rsp)        # 1-byte Spill
	cmpl	$0, 11952(%r13)
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	144(%rsp), %rbp         # 8-byte Reload
	je	.LBB0_30
# BB#29:                                # %if.then.96
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	%eax, 176(%rsp)
	movq	128(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rax,%rcx), %eax
	movl	%eax, 184(%rsp)
	movl	%ebx, 180(%rsp)
	leal	-1(%rbx,%rbp), %eax
	movl	%eax, 188(%rsp)
	leaq	176(%rsp), %rsi
	movq	%r13, %rdi
	callq	clist_update_trans_bbox
.LBB0_30:                               # %if.end.105
	movl	%ebx, 224(%rsp)
	movl	%ebp, 228(%rsp)
	leal	(%rbp,%rbx), %ebp
	movl	%ebp, 232(%rsp)
	movl	10132(%r13), %edi
	leal	-1(%rdi,%rbp), %eax
	subl	%ebx, %eax
	cltd
	idivl	%edi
	cmpq	$0, 368(%rsp)
	setne	%cl
	movzbl	%cl, %ecx
	movl	%ecx, %r15d
	movl	%ecx, %edx
	xorl	$1, %r15d
	movl	%ebx, %ecx
	orl	124(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	cmpl	$1, 352(%rsp)
	movl	%edi, 236(%rsp)
	movl	%eax, 260(%rsp)
	movb	$-88, %al
	jg	.LBB0_32
# BB#31:                                # %if.end.105
	movb	$-100, %al
.LBB0_32:                               # %if.end.105
	movb	%al, 63(%rsp)           # 1-byte Spill
	movzbl	100(%rsp), %eax         # 1-byte Folded Reload
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	328(%rsp), %eax
	movzwl	%ax, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	336(%rsp), %eax
	movzwl	%ax, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	sete	%al
	movzbl	%al, %eax
	incl	%eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	%ebx, %ecx
	movl	%edx, %ebx
	jmp	.LBB0_33
.LBB0_66:                               # %if.end.272
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	%ebx, 64(%rsp)          # 4-byte Spill
	movq	248(%rsp), %rsi
	movl	100(%rsp), %eax         # 4-byte Reload
	orl	%eax, 1784(%rsi)
	cmpq	%r12, 368(%rsi)
	movq	368(%rsp), %rbx
	jne	.LBB0_69
# BB#67:                                # %land.lhs.true.279
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	360(%rsi), %eax
	movq	1872(%r13), %rcx
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB0_69
# BB#68:                                # %land.lhs.true.284
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	1776(%r13), %rcx
	cmpq	%r12, 16(%rcx,%rax)
	je	.LBB0_76
.LBB0_69:                               # %if.then.290
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	%rax, 176(%rsp)
	movl	%r14d, 184(%rsp)
	movl	76(%rsp), %eax          # 4-byte Reload
	movw	%ax, 208(%rsp)
	movl	%eax, 188(%rsp)
	movl	72(%rsp), %eax          # 4-byte Reload
	movw	%ax, 210(%rsp)
	movl	%eax, 192(%rsp)
	movw	$0, 214(%rsp)
	movw	$0, 212(%rsp)
	movq	%r12, 200(%rsp)
	movl	$1, 216(%rsp)
	jmp	.LBB0_70
	.align	16, 0x90
.LBB0_72:                               # %land.rhs.307.do.body.301_crit_edge
                                        #   in Loop: Header=BB0_70 Depth=2
	movq	248(%rsp), %rsi
.LBB0_70:                               # %if.then.290
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	leaq	176(%rsp), %rdx
	movl	%ebp, %ecx
	callq	clist_change_bits
	testl	%eax, %eax
	jns	.LBB0_76
# BB#71:                                # %land.rhs.307
                                        #   in Loop: Header=BB0_70 Depth=2
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB0_72
# BB#73:                                # %do.end.312
                                        #   in Loop: Header=BB0_33 Depth=1
	cmpl	$-25, %eax
	jne	.LBB0_39
# BB#74:                                # %lor.lhs.false.318
                                        #   in Loop: Header=BB0_33 Depth=1
	cmpl	$0, 12144(%r13)
	je	.LBB0_39
# BB#75:                                # %cleanup.329.thread
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	$-25, 240(%rsp)
	movl	$-25, %eax
	movl	64(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB0_53
.LBB0_76:                               # %if.end.332
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	%r12, 88(%rsp)          # 8-byte Spill
	movl	232(%rsp), %ecx
	movl	$2, %r12d
	cmpl	$128, 80(%rsp)          # 4-byte Folded Reload
	movl	64(%rsp), %ebx          # 4-byte Reload
	jb	.LBB0_78
# BB#77:                                # %cond.false.348
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	124(%rsp), %edi         # 4-byte Reload
	movl	%ecx, %ebp
	callq	cmd_size_w
	movl	%r14d, 84(%rsp)         # 4-byte Spill
	movl	%eax, %r14d
	movq	152(%rsp), %rdi         # 8-byte Reload
	callq	cmd_size_w
	movl	%ebp, %ecx
	movl	%eax, %r12d
	addl	%r14d, %r12d
	movl	84(%rsp), %r14d         # 4-byte Reload
	movl	352(%rsp), %ebp
.LBB0_78:                               # %cond.end.354
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	subl	%eax, %ecx
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	addl	68(%rsp), %r12d         # 4-byte Folded Reload
	.align	16, 0x90
.LBB0_79:                               # %do.body.362
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 172(%rsp)           # 4-byte Folded Reload
	je	.LBB0_81
# BB#80:                                # %cond.end.368
                                        #   in Loop: Header=BB0_79 Depth=2
	movq	248(%rsp), %rsi
	movq	%r13, %rdi
	movl	172(%rsp), %edx         # 4-byte Reload
	callq	cmd_put_set_data_x
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB0_89
.LBB0_81:                               # %if.then.372
                                        #   in Loop: Header=BB0_79 Depth=2
	movq	248(%rsp), %rsi
	addq	$1760, %rsi             # imm = 0x6E0
	movq	%r13, %rdi
	movl	%r12d, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB0_82
# BB#83:                                # %cond.end.382
                                        #   in Loop: Header=BB0_79 Depth=2
	movl	10192(%r13), %esi
	testl	%esi, %esi
	movl	$0, %eax
	jns	.LBB0_84
.LBB0_89:                               # %land.rhs.417
                                        #   in Loop: Header=BB0_79 Depth=2
	movq	%r13, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB0_79
# BB#90:                                # %cleanup.432
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	%eax, 240(%rsp)
	movq	88(%rsp), %r12          # 8-byte Reload
	jmp	.LBB0_53
.LBB0_82:                               # %cond.end.382.thread
                                        #   in Loop: Header=BB0_33 Depth=1
	movb	63(%rsp), %cl           # 1-byte Reload
	movb	%cl, (%rax)
.LBB0_84:                               # %if.then.386
                                        #   in Loop: Header=BB0_33 Depth=1
	cmpl	$1, %ebp
	movq	88(%rsp), %r12          # 8-byte Reload
	jne	.LBB0_85
# BB#86:                                # %if.then.389
                                        #   in Loop: Header=BB0_33 Depth=1
	movb	$0, 1(%rax)
	leaq	2(%rax), %rsi
	movl	$2, %ecx
	jmp	.LBB0_87
.LBB0_85:                               #   in Loop: Header=BB0_33 Depth=1
	leaq	1(%rax), %rsi
	movl	$1, %ecx
.LBB0_87:                               # %if.end.391
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	124(%rsp), %ebp         # 4-byte Reload
	cmpl	$127, 80(%rsp)          # 4-byte Folded Reload
	jbe	.LBB0_88
# BB#91:                                # %cond.false.405
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	%ebp, %edi
	callq	cmd_put_w
	movq	152(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rbx, %rdx
	movl	64(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB0_92
.LBB0_88:                               # %cond.true.397
                                        #   in Loop: Header=BB0_33 Depth=1
	movb	%bpl, (%rsi)
	movq	152(%rsp), %rdx         # 8-byte Reload
	movb	%dl, 1(%rax,%rcx)
.LBB0_92:                               # %end
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	248(%rsp), %rax
	movl	%ebp, 1720(%rax)
	movl	%ebp, 124(%rsp)         # 4-byte Spill
	movl	%edx, 1724(%rax)
	movl	328(%rsp), %ecx
	movl	%ecx, 1728(%rax)
	movl	84(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 1732(%rax)
	movl	224(%rsp), %ecx
	addl	228(%rsp), %ecx
	movl	%ecx, 224(%rsp)
	jmp	.LBB0_93
	.align	16, 0x90
.LBB0_33:                               # %do.body.117
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_70 Depth 2
                                        #     Child Loop BB0_79 Depth 2
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, 244(%rsp)
	cltq
	imulq	$1808, %rax, %rsi       # imm = 0x710
	addq	10200(%r13), %rsi
	movq	%rsi, 248(%rsp)
	incl	%eax
	imull	%edi, %eax
	movl	%eax, 256(%rsp)
	cmpl	%ebp, %eax
	cmovgl	%ebp, %eax
	subl	%ecx, %eax
	movl	%eax, 228(%rsp)
	jmp	.LBB0_34
	.align	16, 0x90
.LBB0_36:                               # %land.rhs.do.body.141_crit_edge
                                        #   in Loop: Header=BB0_34 Depth=2
	movq	248(%rsp), %rsi
.LBB0_34:                               # %do.body.117
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$252, %edx
	movq	%r13, %rdi
	callq	cmd_update_lop
	testl	%eax, %eax
	jns	.LBB0_40
# BB#35:                                # %land.rhs
                                        #   in Loop: Header=BB0_34 Depth=2
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB0_36
	jmp	.LBB0_52
	.align	16, 0x90
.LBB0_40:                               # %if.end.156
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	352(%rsp), %ebp
	cmpl	$2, %ebp
	jl	.LBB0_45
# BB#41:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	248(%rsp), %rsi
	cmpl	$0, 1744(%rsi)
	jne	.LBB0_45
	jmp	.LBB0_42
.LBB0_59:                               # %land.rhs.175.do.body.163_crit_edge
                                        #   in Loop: Header=BB0_42 Depth=2
	movq	248(%rsp), %rsi
.LBB0_42:                               # %do.body.163.preheader
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$1760, %rsi             # imm = 0x6E0
	movl	$1, %edx
	movq	%r13, %rdi
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB0_43
# BB#57:                                # %cond.end.170
                                        #   in Loop: Header=BB0_42 Depth=2
	movl	10192(%r13), %esi
	testl	%esi, %esi
	jns	.LBB0_44
# BB#58:                                # %land.rhs.175
                                        #   in Loop: Header=BB0_42 Depth=2
	movq	%r13, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB0_59
	jmp	.LBB0_52
.LBB0_43:                               # %cond.end.170.thread
                                        #   in Loop: Header=BB0_33 Depth=1
	movb	$15, (%rax)
.LBB0_44:                               # %cleanup.thread
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	248(%rsp), %rax
	movl	$1, 1744(%rax)
	.align	16, 0x90
.LBB0_45:                               # %do.body.191
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	248(%rsp), %rsi
	testb	$32, 1753(%rsi)
	jne	.LBB0_48
# BB#46:                                # %cond.end.199
                                        #   in Loop: Header=BB0_45 Depth=2
	movl	$8192, %edx             # imm = 0x2000
	movq	%r13, %rdi
	callq	cmd_write_unknown
	movl	%eax, %esi
	testl	%esi, %esi
	js	.LBB0_51
# BB#47:                                # %cond.end.199.if.then.203_crit_edge
                                        #   in Loop: Header=BB0_45 Depth=2
	movq	248(%rsp), %rsi
.LBB0_48:                               # %if.then.203
                                        #   in Loop: Header=BB0_45 Depth=2
	movswl	1742(%rsi), %eax
	cmpl	%r15d, %eax
	jne	.LBB0_60
# BB#49:                                # %land.lhs.true.210
                                        #   in Loop: Header=BB0_45 Depth=2
	movq	%r13, %rdi
	movl	%ebx, %edx
	callq	cmd_put_enable_clip
	testl	%eax, %eax
	jns	.LBB0_60
# BB#50:                                # %do.cond.223
                                        #   in Loop: Header=BB0_45 Depth=2
	movl	10192(%r13), %esi
	testl	%esi, %esi
	jns	.LBB0_60
.LBB0_51:                               # %land.rhs.226
                                        #   in Loop: Header=BB0_45 Depth=2
	movq	%r13, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB0_45
	jmp	.LBB0_52
	.align	16, 0x90
.LBB0_60:                               # %do.body.239
                                        #   Parent Loop BB0_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	248(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	344(%rsp), %rdx
	leaq	224(%rsp), %rcx
	callq	cmd_put_drawing_color
	movl	%eax, %ecx
	movl	$-28, %eax
	cmpl	$-28, %ecx
	je	.LBB0_94
# BB#61:                                # %if.end.245
                                        #   in Loop: Header=BB0_60 Depth=2
	cmpl	$2, %ebp
	jl	.LBB0_64
# BB#62:                                # %if.end.245
                                        #   in Loop: Header=BB0_60 Depth=2
	testl	%ecx, %ecx
	js	.LBB0_64
# BB#63:                                # %if.then.251
                                        #   in Loop: Header=BB0_60 Depth=2
	movq	248(%rsp), %rsi
	movq	344(%rsp), %rax
	movq	8(%rax), %rcx
	leaq	8(%rsi), %r8
	movl	$clist_select_color1, %edx
	movq	%r13, %rdi
	callq	cmd_put_color
	movl	%eax, %ecx
.LBB0_64:                               # %do.cond.257
                                        #   in Loop: Header=BB0_60 Depth=2
	testl	%ecx, %ecx
	jns	.LBB0_66
# BB#65:                                # %land.rhs.260
                                        #   in Loop: Header=BB0_60 Depth=2
	movq	%r13, %rdi
	movl	%ecx, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB0_60
.LBB0_52:                               # %land.lhs.true.153
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	%eax, 240(%rsp)
.LBB0_53:                               # %error_in_rect
                                        #   in Loop: Header=BB0_33 Depth=1
	cmpl	$0, 12144(%r13)
	je	.LBB0_94
# BB#54:                                # %land.lhs.true.441
                                        #   in Loop: Header=BB0_33 Depth=1
	cmpl	$0, 12152(%r13)
	jne	.LBB0_94
# BB#55:                                # %land.lhs.true.444
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	%r13, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	movl	%eax, 240(%rsp)
	testl	%eax, %eax
	js	.LBB0_94
# BB#56:                                # %land.lhs.true.444.do.cond.457_crit_edge
                                        #   in Loop: Header=BB0_33 Depth=1
	movl	224(%rsp), %ecx
.LBB0_93:                               # %do.cond.457
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	232(%rsp), %rbp
	movq	%rbp, %rdi
	shrq	$32, %rdi
	xorl	%eax, %eax
	cmpl	%ebp, %ecx
	jl	.LBB0_33
	jmp	.LBB0_94
.LBB0_14:                               # %if.end.18.i
	leaq	176(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_cpath_outer_box
	testl	%eax, %eax
	je	.LBB0_37
# BB#15:                                # %land.lhs.true.i
	cmpl	%r14d, 176(%rsp)
	jle	.LBB0_16
.LBB0_37:                               # %copy.critedge240
	movl	84(%rsp), %r14d         # 4-byte Reload
	jmp	.LBB0_38
.LBB0_16:                               # %land.lhs.true.25.i
	cmpl	%r15d, 184(%rsp)
	movl	84(%rsp), %r14d         # 4-byte Reload
	jl	.LBB0_38
# BB#17:                                # %land.lhs.true.31.i
	cmpl	%r12d, 180(%rsp)
	jle	.LBB0_18
.LBB0_38:                               # %copy
	movq	88(%rsp), %r12          # 8-byte Reload
.LBB0_39:                               # %copy
	movl	172(%rsp), %edx         # 4-byte Reload
	movq	112(%rsp), %rax         # 8-byte Reload
	subl	%eax, %edx
	movq	%rbx, 48(%rsp)
	movl	360(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	352(%rsp), %eax
	movl	%eax, 32(%rsp)
	movq	344(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	%r13, %rdi
	movq	104(%rsp), %rsi         # 8-byte Reload
	movl	%r14d, %ecx
	movq	%r12, %r8
	movq	136(%rsp), %r9          # 8-byte Reload
	callq	gx_default_fill_mask
.LBB0_94:                               # %cleanup.463
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_18:                               # %land.rhs.i
	cmpl	%ebp, 188(%rsp)
	movq	88(%rsp), %r12          # 8-byte Reload
	movb	100(%rsp), %r15b        # 1-byte Reload
	jge	.LBB0_20
	jmp	.LBB0_39
.Lfunc_end0:
	.size	clist_fill_mask, .Lfunc_end0-clist_fill_mask
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_put_set_data_x,@function
cmd_put_set_data_x:                     # @cmd_put_set_data_x
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
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %rbp
	movq	%rdi, %r14
	cmpl	$32, %ebx
	jl	.LBB1_5
# BB#1:                                 # %if.then
	movl	%ebx, %r15d
	sarl	$5, %r15d
	addq	$1760, %rbp             # imm = 0x6E0
	movl	%r15d, %edi
	callq	cmd_size_w
	leal	2(%rax), %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB1_3
# BB#2:                                 # %cond.end.thread
	movb	$6, (%rax)
	xorl	%ebp, %ebp
	jmp	.LBB1_4
.LBB1_5:                                # %if.else
	addq	$1760, %rbp             # imm = 0x6E0
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB1_7
# BB#6:                                 # %cond.end.14.thread
	movb	$6, (%rax)
	xorl	%ebp, %ebp
	jmp	.LBB1_8
.LBB1_3:                                # %cond.end
	movl	10192(%r14), %ebp
	testl	%ebp, %ebp
	js	.LBB1_9
.LBB1_4:                                # %if.then.4
	andl	$31, %ebx
	orl	$96, %ebx
	movb	%bl, 1(%rax)
	addq	$2, %rax
	movl	%r15d, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	jmp	.LBB1_9
.LBB1_7:                                # %cond.end.14
	movl	10192(%r14), %ebp
	testl	%ebp, %ebp
	js	.LBB1_9
.LBB1_8:                                # %if.then.18
	addl	$64, %ebx
	movb	%bl, 1(%rax)
.LBB1_9:                                # %if.end.23
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cmd_put_set_data_x, .Lfunc_end1-cmd_put_set_data_x
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI2_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
.LCPI2_8:
	.quad	4674734214187319296     # double 3.276000e+04
	.quad	4643176031446892544     # double 2.550000e+02
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4562254508917369340     # double 0.001
.LCPI2_4:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI2_5:
	.quad	4617315517961601024     # double 5
.LCPI2_6:
	.quad	4607182328605704192     # double 0.99998998641967773
.LCPI2_9:
	.quad	4625478292286210048     # double 17
.LCPI2_10:
	.quad	4607182418800017408     # double 1
.LCPI2_11:
	.quad	-4620603145689581486    # double -0.51000000000000001
.LCPI2_12:
	.quad	4602768891165194322     # double 0.51000000000000001
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_2:
	.long	1065353048              # float 0.999989986
.LCPI2_7:
	.long	1065353216              # float 1
	.text
	.globl	clist_begin_typed_image
	.align	16, 0x90
	.type	clist_begin_typed_image,@function
clist_begin_typed_image:                # @clist_begin_typed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$1336, %rsp             # imm = 0x538
.Ltmp28:
	.cfi_def_cfa_offset 1392
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%r9, 232(%rsp)          # 8-byte Spill
	movq	%r8, 224(%rsp)          # 8-byte Spill
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	1400(%rsp), %rbx
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, 1216(%rsp)
	movq	$0, 1232(%rsp)
	movl	324(%rbp), %r14d
	movl	328(%rbp), %r12d
	movq	$0, 1184(%rsp)
	movl	848(%r15), %eax
	movl	%eax, 220(%rsp)         # 4-byte Spill
	movl	$96, %edi
	callq	gs_debug_c
	xorl	%r13d, %r13d
	testl	%eax, %eax
	movl	$0, %esi
	jne	.LBB2_39
# BB#1:                                 # %cond.end
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$4, %eax
	movl	$0, %ecx
	je	.LBB2_4
# BB#2:                                 # %cond.end
	cmpl	$1, %eax
	movl	$0, %esi
	jne	.LBB2_39
# BB#3:                                 # %sw.bb
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	584(%rax), %ecx
	cmpl	$0, 592(%rax)
	setne	%al
	movzbl	%al, %r13d
.LBB2_4:                                # %sw.bb.3
	xorl	%esi, %esi
	cmpq	$0, 240(%rsp)           # 8-byte Folded Reload
	jne	.LBB2_39
# BB#5:                                 # %sw.epilog
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	568(%rax), %eax
	movl	%eax, 212(%rsp)         # 4-byte Spill
	movl	$st_clist_image_enum, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*80(%rbx)
	movq	%rax, %rdi
	movl	$-25, %eax
	testq	%rdi, %rdi
	je	.LBB2_236
# BB#6:                                 # %if.end.11
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movl	%r14d, 172(%rsp)        # 4-byte Spill
	movl	%r12d, 176(%rsp)        # 4-byte Spill
	movq	%rbx, 24(%rdi)
	movq	$0, 2928(%rdi)
	movq	1408(%rsp), %rax
	movq	%rdi, (%rax)
	xorl	%r14d, %r14d
	movl	$1, %eax
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	movl	$1, %ebp
	movl	$0, %edx
	movl	$0, 192(%rsp)           # 4-byte Folded Spill
	jne	.LBB2_14
# BB#7:                                 # %if.else
	movq	%rdi, %rbx
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %r12
	movq	%r12, %rdi
	callq	gs_color_space_get_index
	cmpl	$10, %eax
	jne	.LBB2_9
# BB#8:                                 # %if.then.17
	movq	%r12, %rdi
	callq	gs_cspace_base_space
	movq	%rax, %rdi
	callq	gs_color_space_get_index
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	$1, %ebp
	movl	$1, %edx
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.20
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movq	%r12, %rdi
	callq	gs_color_space_num_components
	movl	%eax, %ebp
	xorl	%edx, %edx
.LBB2_10:                               # %if.end.22
	movq	248(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 572(%rax)
	movq	%rbx, %rdi
	je	.LBB2_11
# BB#12:                                # %land.rhs
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	212(%rax), %eax
	movl	%eax, %ecx
	shll	$4, %ecx
	xorl	%eax, %ecx
	testb	$-16, %cl
	setne	%al
	jmp	.LBB2_13
.LBB2_11:
	xorl	%eax, %eax
.LBB2_13:                               # %land.end
	movzbl	%al, %eax
.LBB2_14:                               # %if.end.27
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movl	%ebp, 180(%rsp)         # 4-byte Spill
	movl	%edx, 184(%rsp)         # 4-byte Spill
	movl	$clist_image_enum_procs, %edx
	movq	248(%rsp), %rsi         # 8-byte Reload
	movq	%r15, %rcx
	movl	%ebp, %r8d
	movl	212(%rsp), %r9d         # 4-byte Reload
	movq	%rdi, %rbx
	callq	gx_image_enum_common_init
	movq	%rbx, %rbp
	movslq	44(%rbp), %rcx
	cmpq	$2, %rcx
	jl	.LBB2_26
# BB#15:                                # %for.body.lr.ph
	movl	48(%rbp), %edx
	xorl	%r14d, %r14d
	movl	$1, %edi
	cmpl	$1, %ecx
	je	.LBB2_25
# BB#16:                                # %overflow.checked
	leaq	-1(%rcx), %rsi
	andq	$-8, %rsi
	leaq	1(%rsi), %r8
	pxor	%xmm0, %xmm0
	movl	$1, %edi
	cmpq	$1, %r8
	pxor	%xmm2, %xmm2
	je	.LBB2_24
# BB#17:                                # %vector.ph
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm1        # xmm1 = xmm0[0,0,0,0]
	leaq	-9(%rcx), %rdi
	movq	%rdi, %r10
	shrq	$3, %r10
	movl	$1, %r9d
	btq	$3, %rdi
	jb	.LBB2_18
# BB#19:                                # %vector.body.prol
	movdqu	52(%rbp), %xmm0
	movdqu	68(%rbp), %xmm2
	pcmpeqd	%xmm1, %xmm0
	movdqa	.LCPI2_0(%rip), %xmm3   # xmm3 = [1,1,1,1]
	pandn	%xmm3, %xmm0
	pcmpeqd	%xmm1, %xmm2
	pandn	%xmm3, %xmm2
	movl	$9, %r9d
	jmp	.LBB2_20
.LBB2_18:
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
.LBB2_20:                               # %vector.ph.split
	testq	%r10, %r10
	je	.LBB2_23
# BB#21:                                # %vector.ph.split.split
	orq	$1, %rsi
	subq	%r9, %rsi
	leaq	96(%rbp,%r9,4), %rdi
	movdqa	.LCPI2_0(%rip), %xmm3   # xmm3 = [1,1,1,1]
.LBB2_22:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdi), %xmm4
	movdqu	-32(%rdi), %xmm5
	pcmpeqd	%xmm1, %xmm4
	pandn	%xmm3, %xmm4
	por	%xmm0, %xmm4
	movdqu	-16(%rdi), %xmm0
	pcmpeqd	%xmm1, %xmm5
	pandn	%xmm3, %xmm5
	por	%xmm2, %xmm5
	movdqu	(%rdi), %xmm2
	pcmpeqd	%xmm1, %xmm0
	pandn	%xmm3, %xmm0
	pcmpeqd	%xmm1, %xmm2
	pandn	%xmm3, %xmm2
	por	%xmm4, %xmm0
	por	%xmm5, %xmm2
	addq	$64, %rdi
	addq	$-16, %rsi
	jne	.LBB2_22
.LBB2_23:
	movq	%r8, %rdi
.LBB2_24:                               # %middle.block
	por	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %r14d
	cmpq	%rdi, %rcx
	je	.LBB2_26
	.align	16, 0x90
.LBB2_25:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edx, 48(%rbp,%rdi,4)
	setne	%bl
	movzbl	%bl, %esi
	orl	%esi, %r14d
	incq	%rdi
	cmpq	%rcx, %rdi
	jl	.LBB2_25
.LBB2_26:                               # %for.end
	testl	%eax, %eax
	js	.LBB2_38
# BB#27:                                # %if.end.38
	testb	$4, 12168(%r15)
	jne	.LBB2_38
# BB#28:                                # %if.end.42
	cmpq	$0, 12136(%r15)
	jne	.LBB2_38
# BB#29:                                # %if.end.46
	movl	192(%rsp), %r12d        # 4-byte Reload
	cmpl	$2, %r12d
	setg	%al
	cmpl	$12, %r12d
	setne	%cl
	testb	%cl, %al
	jne	.LBB2_38
# BB#30:                                # %if.end.46
	orl	%r13d, %r14d
	jne	.LBB2_38
# BB#31:                                # %if.end.58
	movq	248(%rsp), %rax         # 8-byte Reload
	leaq	8(%rax), %rdi
	leaq	1312(%rsp), %rsi
	callq	gs_matrix_invert
	testl	%eax, %eax
	js	.LBB2_38
# BB#32:                                # %lor.lhs.false
	movq	200(%rsp), %rax         # 8-byte Reload
	leaq	132(%rax), %rsi
	leaq	1312(%rsp), %rdi
	movq	%rdi, %rdx
	callq	gs_matrix_multiply
	testl	%eax, %eax
	js	.LBB2_38
# BB#33:                                # %lor.lhs.false.65
	testb	$16, 12168(%r15)
	jne	.LBB2_34
# BB#41:                                # %cond.false.85
	movq	1312(%rsp), %xmm0       # xmm0 = mem[0],zero
	movdqa	%xmm0, 144(%rsp)        # 16-byte Spill
	movdqa	%xmm0, %xmm3
	shufps	$229, %xmm3, %xmm3      # xmm3 = xmm3[1,1,2,3]
	movaps	%xmm3, 112(%rsp)        # 16-byte Spill
	movq	1320(%rsp), %xmm2       # xmm2 = mem[0],zero
	movdqa	%xmm2, 128(%rsp)        # 16-byte Spill
	movdqa	%xmm2, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	movaps	%xmm1, 96(%rsp)         # 16-byte Spill
	mulss	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB2_38
# BB#42:                                # %if.end.i
	xorps	%xmm0, %xmm0
	movapd	112(%rsp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	movapd	%xmm1, %xmm2
	jne	.LBB2_48
	jp	.LBB2_48
# BB#43:                                # %if.end.i
	movapd	128(%rsp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_48
	jp	.LBB2_48
# BB#44:                                # %if.then.11.i
	movaps	144(%rsp), %xmm0        # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	ucomisd	.LCPI2_6(%rip), %xmm0
	jae	.LBB2_46
# BB#45:
	xorl	%eax, %eax
	movzbl	%al, %eax
	jmp	.LBB2_57
.LBB2_34:                               # %cond.true.69
	movss	1316(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_36
	jp	.LBB2_36
# BB#35:                                # %land.lhs.true.73
	movss	1320(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_36
	jnp	.LBB2_58
.LBB2_36:                               # %lor.lhs.false.77
	movss	1312(%rsp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_38
	jp	.LBB2_38
	jmp	.LBB2_37
.LBB2_48:                               # %if.end.24.i
	movapd	144(%rsp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_54
	jp	.LBB2_54
# BB#49:                                # %if.end.24.i
	xorps	%xmm0, %xmm0
	movapd	96(%rsp), %xmm1         # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	jne	.LBB2_54
	jp	.LBB2_54
# BB#50:                                # %if.then.34.i
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	callq	fabs
	ucomisd	.LCPI2_6(%rip), %xmm0
	jae	.LBB2_52
# BB#51:
	xorl	%eax, %eax
	movzbl	%al, %eax
	jmp	.LBB2_57
.LBB2_46:                               # %land.rhs.i
	movaps	96(%rsp), %xmm0         # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	ucomisd	.LCPI2_6(%rip), %xmm0
	setae	%al
	movzbl	%al, %eax
	jmp	.LBB2_57
.LBB2_54:                               # %if.end.50.i
	movaps	144(%rsp), %xmm0        # 16-byte Reload
	mulps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$229, %xmm1, %xmm1      # xmm1 = xmm1[1,1,2,3]
	addss	%xmm0, %xmm1
	movss	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB2_38
# BB#55:                                # %lor.lhs.false.i
	movaps	128(%rsp), %xmm1        # 16-byte Reload
	mulps	%xmm1, %xmm1
	movaps	%xmm1, %xmm2
	shufps	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	addss	%xmm1, %xmm2
	ucomiss	%xmm2, %xmm0
	ja	.LBB2_38
# BB#56:                                # %if.end.69.i
	cvtps2pd	144(%rsp), %xmm0 # 16-byte Folded Reload
	movapd	.LCPI2_3(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movaps	128(%rsp), %xmm2        # 16-byte Reload
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm2, %xmm2
	andpd	%xmm1, %xmm2
	addpd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	divsd	%xmm0, %xmm2
	movsd	.LCPI2_4(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	seta	%al
	ucomisd	.LCPI2_5(%rip), %xmm2
	seta	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	jmp	.LBB2_57
.LBB2_52:                               # %land.rhs.41.i
	movaps	128(%rsp), %xmm0        # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	ucomisd	.LCPI2_6(%rip), %xmm0
	setae	%al
	movzbl	%al, %eax
.LBB2_57:                               # %image_matrix_ok_to_band.exit
	testl	%eax, %eax
	jne	.LBB2_58
	jmp	.LBB2_38
.LBB2_37:                               # %land.lhs.true.81
	movss	1324(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB2_38
	jnp	.LBB2_58
.LBB2_38:                               # %if.then.724
	movq	2928(%rbp), %rsi
	movl	$.L.str, %edx
	movq	1400(%rsp), %rbx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	%rbp, %rsi
	movq	200(%rsp), %rbp         # 8-byte Reload
.LBB2_39:                               # %if.end.728
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	1408(%rsp), %rax
	movq	%rax, %rcx
	movq	$0, (%rcx)
	movl	$-1, %eax
	cmpl	$0, 256(%rbp)
	jne	.LBB2_236
# BB#40:                                # %if.else.733
	movq	%rcx, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movq	1392(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	240(%rsp), %rdx         # 8-byte Reload
	movq	248(%rsp), %rcx         # 8-byte Reload
	movq	224(%rsp), %r8          # 8-byte Reload
	movq	232(%rsp), %r9          # 8-byte Reload
	callq	gx_default_begin_typed_image
.LBB2_236:                              # %cleanup.735
	addq	$1336, %rsp             # imm = 0x538
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_58:                               # %if.end.89
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	je	.LBB2_59
# BB#60:                                # %land.rhs.91
	movq	232(%rsp), %rdi         # 8-byte Reload
	callq	gx_dc_is_pattern1_color
	testl	%eax, %eax
	je	.LBB2_62
# BB#61:                                # %land.end.97.thread
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	setne	%bl
	jmp	.LBB2_67
.LBB2_59:
	xorl	%eax, %eax
	jmp	.LBB2_63
.LBB2_62:                               # %lor.rhs
	movl	$gx_dc_type_data_pure, %eax
	movq	232(%rsp), %rcx         # 8-byte Reload
	cmpq	%rax, (%rcx)
	sete	%al
.LBB2_63:                               # %land.end.97
	movl	188(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 188(%rsp)         # 4-byte Spill
	testl	%ecx, %ecx
	setne	%bl
	je	.LBB2_67
# BB#64:                                # %land.end.97
	xorb	$1, %al
	je	.LBB2_67
# BB#65:                                # %land.lhs.true.102
	movl	$gx_dc_type_data_pure, %eax
	movb	$1, %bl
	movq	232(%rsp), %rcx         # 8-byte Reload
	cmpq	%rax, (%rcx)
	movq	%rcx, %rdi
	je	.LBB2_67
# BB#66:                                # %land.lhs.true.106
	callq	gx_dc_is_pattern1_color_clist_based
	testl	%eax, %eax
	je	.LBB2_38
.LBB2_67:                               # %if.end.110
	movb	%bl, 144(%rsp)          # 1-byte Spill
	movq	248(%rsp), %rsi         # 8-byte Reload
	movl	40(%rsi), %r13d
	movl	%r13d, 2912(%rbp)
	movl	180(%rsp), %eax         # 4-byte Reload
	imull	%eax, %r13d
	movl	%eax, 2916(%rbp)
	leaq	568(%rbp), %rdi
	movl	$584, %edx              # imm = 0x248
	callq	memcpy
	leaq	1152(%rbp), %rdi
	movl	$656, %edx              # imm = 0x290
	movq	232(%rsp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	224(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB2_69
# BB#68:                                # %if.then.112
	leaq	1808(%rbp), %rax
	movdqu	(%rcx), %xmm0
	movdqu	%xmm0, (%rax)
	jmp	.LBB2_70
.LBB2_69:                               # %if.else.113
	movq	$0, 1808(%rbp)
	movq	248(%rsp), %rcx         # 8-byte Reload
	movl	32(%rcx), %eax
	movl	%eax, 1816(%rbp)
	movl	36(%rcx), %eax
	movl	%eax, 1820(%rbp)
.LBB2_70:                               # %if.end.122
	movq	200(%rsp), %rbx         # 8-byte Reload
	movl	216(%rsp), %esi         # 4-byte Reload
	movl	184(%rsp), %r14d        # 4-byte Reload
	movl	188(%rsp), %edi         # 4-byte Reload
	movq	%rbx, 1824(%rbp)
	movq	1392(%rsp), %rax
	movq	%rax, 1832(%rbp)
	movq	$0, 2928(%rbp)
	movl	212(%rsp), %eax         # 4-byte Reload
	movl	%eax, 1840(%rbp)
	movl	44(%rbp), %ecx
	movl	%r13d, %eax
	cltd
	idivl	%ecx
	movl	%eax, 1852(%rbp)
	movq	1328(%rsp), %rdx
	movq	%rdx, 1872(%rbp)
	movdqu	1312(%rsp), %xmm0
	movdqu	%xmm0, 1856(%rbp)
	movl	%edi, 1880(%rbp)
	testl	%esi, %esi
	je	.LBB2_72
# BB#71:                                # %if.then.131
	movl	%r14d, 184(%rsp)        # 4-byte Spill
	movl	%esi, 216(%rsp)         # 4-byte Spill
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movb	$0, 1888(%rbp)
	movq	1232(%rsp), %rdx
	movq	%rdx, 1920(%rbp)
	movdqa	1216(%rsp), %xmm0
	movdqu	%xmm0, 1904(%rbp)
	movq	$0, 1928(%rbp)
	movq	$0, 1896(%rbp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	movb	144(%rsp), %r13b        # 1-byte Reload
	jmp	.LBB2_105
.LBB2_72:                               # %if.else.135
	movq	248(%rsp), %rdx         # 8-byte Reload
	movq	576(%rdx), %rdx
	xorl	%r8d, %r8d
	testl	%r14d, %r14d
	movq	%rdx, %rdi
	je	.LBB2_75
# BB#73:                                # %cond.true.151
	movq	40(%rdx), %rdi
	movl	$12, %r8d
	cmpl	$0, 96(%rdx)
	jne	.LBB2_75
# BB#74:                                # %select.mid
	movl	$8, %r8d
.LBB2_75:                               # %cond.end.157
	cmpq	$0, 64(%rdi)
	je	.LBB2_77
# BB#76:                                # %select.mid588
	movl	$12, %r12d
.LBB2_77:                               # %select.end587
	movl	%esi, 216(%rsp)         # 4-byte Spill
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movl	%r12d, %edi
	shll	$4, %edi
	orl	%r8d, %edi
	movb	%dil, 1888(%rbp)
	movq	%rdx, 1928(%rbp)
	movq	32(%rdx), %rdx
	movq	%rdx, 1896(%rbp)
	cmpl	$12, %r12d
	movb	144(%rsp), %r13b        # 1-byte Reload
	jne	.LBB2_104
# BB#78:                                # %if.then.171
	movq	%rbp, %r13
	leaq	1184(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	movl	1112(%r15), %edi
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	1184(%rsp), %rsi
	leaq	1176(%rsp), %rdx
	leaq	1192(%rsp), %rcx
	callq	gsicc_extract_profile
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rax
	testl	%r14d, %r14d
	movl	%r14d, 184(%rsp)        # 4-byte Spill
	je	.LBB2_80
# BB#79:                                # %if.else.178
	movq	40(%rax), %rax
.LBB2_80:                               # %if.end.182
	movq	64(%rax), %r15
	movl	1200(%rsp), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movl	1212(%rsp), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movq	200(%rsp), %rcx         # 8-byte Reload
	movq	336(%rcx), %rax
	movq	72(%rax), %rbp
	movl	$0, 192(%rsp)           # 4-byte Folded Spill
	testq	%rbp, %rbp
	je	.LBB2_95
# BB#81:                                # %if.then.189
	movq	%rcx, %rbx
	movl	16(%r15), %eax
	cmpl	$3, %eax
	jne	.LBB2_82
# BB#88:                                # %if.then.228
	cmpq	$0, 104(%rbp)
	je	.LBB2_92
# BB#89:                                # %if.then.232
	movq	%r15, %rdi
	callq	gsicc_get_default_type
	cmpl	$2, %eax
	movq	%rbx, %rcx
	je	.LBB2_91
# BB#90:                                # %if.then.232
	movl	68(%rbp), %eax
	testl	%eax, %eax
	je	.LBB2_95
.LBB2_91:                               # %if.then.241
	movq	104(%rbp), %r15
	movl	144(%rbp), %eax
	movl	%eax, 324(%rcx)
	movl	148(%rbp), %eax
	movl	%eax, 328(%rcx)
	movl	152(%rbp), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movl	160(%rbp), %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	164(%rbp), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	jmp	.LBB2_95
.LBB2_104:                              # %if.else.325
	movl	%r14d, 184(%rsp)        # 4-byte Spill
	movq	1232(%rsp), %rdx
	movq	%rdx, 1920(%rbp)
	movdqa	1216(%rsp), %xmm0
	movdqu	%xmm0, 1904(%rbp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	jmp	.LBB2_105
.LBB2_82:                               # %if.then.189
	cmpl	$2, %eax
	jne	.LBB2_94
# BB#83:                                # %if.then.194
	cmpq	$0, 8(%rbp)
	je	.LBB2_87
# BB#84:                                # %if.then.198
	movq	%r15, %rdi
	callq	gsicc_get_default_type
	cmpl	$1, %eax
	movq	%rbx, %rcx
	je	.LBB2_86
# BB#85:                                # %if.then.198
	movl	68(%rbp), %eax
	testl	%eax, %eax
	je	.LBB2_95
.LBB2_86:                               # %if.then.206
	movq	8(%rbp), %r15
	movl	48(%rbp), %eax
	movl	%eax, 324(%rcx)
	movl	52(%rbp), %eax
	movl	%eax, 328(%rcx)
	movl	56(%rbp), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movl	64(%rbp), %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	68(%rbp), %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	jmp	.LBB2_95
.LBB2_92:                               # %if.else.254
	movl	160(%rbp), %eax
	jmp	.LBB2_93
.LBB2_87:                               # %if.else.218
	movl	64(%rbp), %eax
.LBB2_93:                               # %if.end.262
	movl	%eax, 192(%rsp)         # 4-byte Spill
.LBB2_94:                               # %if.end.262
	movq	%rbx, %rcx
.LBB2_95:                               # %if.end.262
	movl	324(%rcx), %ebp
	testb	$4, %bpl
	jne	.LBB2_98
# BB#96:                                # %if.then.266
	movl	1192(%rsp), %eax
	cmpl	$8, %eax
	je	.LBB2_98
# BB#97:                                # %if.then.270
	movl	%eax, 324(%rcx)
	movl	%eax, %ebp
.LBB2_98:                               # %if.end.274
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movl	328(%rcx), %r14d
	testb	$4, %r14b
	jne	.LBB2_101
# BB#99:                                # %if.then.278
	movl	1196(%rsp), %eax
	cmpl	$8, %eax
	je	.LBB2_101
# BB#100:                               # %if.then.282
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 328(%rcx)
	movl	%eax, %r14d
.LBB2_101:                              # %if.end.286
	cmpl	%ebp, 172(%rsp)         # 4-byte Folded Reload
	setne	%bl
	cmpl	%r14d, 176(%rsp)        # 4-byte Folded Reload
	setne	%r12b
	cmpl	$0, 152(%r15)
	jne	.LBB2_103
# BB#102:                               # %if.then.303
	movq	256(%r15), %rdi
	movl	220(%r15), %edx
	leaq	256(%rsp), %rsi
	callq	gsicc_get_icc_buff_hash
	movq	256(%rsp), %rax
	movq	%rax, 144(%r15)
	movl	$1, 152(%r15)
.LBB2_103:                              # %if.end.306
	movzbl	%bl, %eax
	movl	%eax, 212(%rsp)         # 4-byte Spill
	movzbl	%r12b, %r12d
	movq	144(%r15), %rsi
	movq	%rsi, 1904(%r13)
	movb	(%r15), %al
	movb	%al, 1912(%r13)
	movl	4(%r15), %eax
	movl	%eax, 1916(%r13)
	movl	12(%r15), %eax
	movl	%eax, 1920(%r13)
	movl	16(%r15), %eax
	movl	%eax, 1924(%r13)
	movl	%ebp, 228(%r15)
	movl	%r14d, 232(%r15)
	movl	188(%rsp), %eax         # 4-byte Reload
	movl	%eax, 236(%r15)
	movl	$2, 240(%r15)
	movl	192(%rsp), %eax         # 4-byte Reload
	movl	%eax, 244(%r15)
	movl	128(%rsp), %eax         # 4-byte Reload
	movl	%eax, 248(%r15)
	movl	224(%r15), %r14d
	movl	$1, 224(%r15)
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	clist_icc_addentry
	movq	%r13, %rbp
	movl	%r14d, 224(%r15)
	movl	212(%rsp), %r14d        # 4-byte Reload
	movq	%rbx, %r15
	movl	1852(%rbp), %eax
	movl	44(%rbp), %ecx
	movb	144(%rsp), %r13b        # 1-byte Reload
.LBB2_105:                              # %if.end.329
	movl	1812(%rbp), %edx
	movl	%edx, 2900(%rbp)
	movq	248(%rsp), %rsi         # 8-byte Reload
	imull	32(%rsi), %eax
	addl	$7, %eax
	sarl	$3, %eax
	imull	%ecx, %eax
	testl	%eax, %eax
	movl	$1, %ecx
	cmovgl	%eax, %ecx
	movslq	%ecx, %rax
	addq	$54, %rax
	movq	10224(%r15), %rcx
	subq	10208(%r15), %rcx
	cmpq	%rcx, %rax
	ja	.LBB2_38
# BB#106:                               # %cleanup.cont
	movq	248(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 564(%rax)
	je	.LBB2_109
# BB#107:                               # %if.then.353
	movq	%r15, %rdi
	callq	gx_device_is_pattern_clist
	testl	%eax, %eax
	jne	.LBB2_38
# BB#108:                               # %if.end.357
	movabsq	$38654705673, %rax      # imm = 0x900000009
	movq	%rax, 1844(%rbp)
	movl	1812(%rbp), %edx
	movl	$9, %eax
	jmp	.LBB2_110
.LBB2_109:                              # %if.else.361
	movq	$0, 1844(%rbp)
	xorl	%eax, %eax
.LBB2_110:                              # %if.end.366
	movl	1808(%rbp), %ecx
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 1280(%rsp)
	subl	%eax, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, 1288(%rsp)
	movl	1816(%rbp), %ecx
	addl	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 1296(%rsp)
	addl	1820(%rbp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 1304(%rsp)
	leaq	1280(%rsp), %rdi
	leaq	1312(%rsp), %rsi
	leaq	1248(%rsp), %rdx
	callq	gs_bbox_transform
	testb	$8, 12168(%r15)
	je	.LBB2_119
# BB#111:                               # %if.then.406
	movl	%r12d, 188(%rsp)        # 4-byte Spill
	movl	%r14d, 212(%rsp)        # 4-byte Spill
	cmpq	$0, 1392(%rsp)
	je	.LBB2_118
# BB#112:                               # %if.end.i.369
	movsd	1248(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 192(%rsp)        # 8-byte Spill
	movsd	1256(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movsd	1264(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movsd	1272(%rsp), %xmm0       # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %ebx
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %r12d
	movsd	128(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r14d
	movsd	192(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %esi
	shll	$8, %esi
	movl	%esi, 192(%rsp)         # 4-byte Spill
	shll	$8, %r14d
	shll	$8, %r12d
	shll	$8, %ebx
	movq	1392(%rsp), %rdi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	movl	%ebx, %r8d
	callq	gx_cpath_includes_rectangle
	testl	%eax, %eax
	je	.LBB2_113
.LBB2_118:                              # %check_rect_for_trivial_clip.exit.thread
	movl	212(%rsp), %r14d        # 4-byte Reload
	movl	188(%rsp), %r12d        # 4-byte Reload
.LBB2_119:                              # %if.end.427
	cmpq	$0, 1184(%rsp)
	jne	.LBB2_121
# BB#120:                               # %if.then.430
	leaq	1184(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	movl	1112(%r15), %edi
	movq	1184(%rsp), %rsi
	leaq	1176(%rsp), %rdx
	leaq	256(%rsp), %rcx
	callq	gsicc_extract_profile
.LBB2_121:                              # %if.end.435
	movq	$0, 2920(%rbp)
	movq	1184(%rsp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB2_194
# BB#122:                               # %land.lhs.true.437
	cmpl	$1, 1924(%rbp)
	jne	.LBB2_123
.LBB2_194:                              # %if.else.490
	movl	$0, 2908(%rbp)
	jmp	.LBB2_195
.LBB2_123:                              # %if.then.443
	movl	%r12d, 188(%rsp)        # 4-byte Spill
	movl	%r14d, 212(%rsp)        # 4-byte Spill
	movb	%r13b, 144(%rsp)        # 1-byte Spill
	movq	%rbp, %r13
	movq	%r15, 56(%rsp)          # 8-byte Spill
	cmpl	$0, 184(%rsp)           # 4-byte Folded Reload
	je	.LBB2_124
# BB#178:                               # %if.else.480
	movl	$0, 2908(%r13)
	movq	248(%rsp), %rbp         # 8-byte Reload
	movq	576(%rbp), %r15
	movq	40(%r15), %rbx
	movq	%rbx, %rdi
	callq	gs_color_space_get_index
	movl	40(%rbp), %ecx
	movl	$1, %r12d
	shll	%cl, %r12d
	movl	$gsicc_mcm_monitor_rgb, %r14d
	movl	%eax, %edx
	cmpl	$12, %eax
	ja	.LBB2_190
# BB#179:                               # %if.else.480
	jmpq	*.LJTI2_0(,%rdx,8)
.LBB2_180:                              # %sw.bb.2.i
	movl	$gsicc_mcm_monitor_cmyk, %r14d
.LBB2_186:                              # %sw.epilog.9.i
	cmpl	$31, %ecx
	je	.LBB2_191
# BB#187:
	xorl	%ebp, %ebp
	leaq	256(%rsp), %rbx
.LBB2_189:                              # %for.body.i.415
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ebp, %xmm0
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	gs_cspace_indexed_lookup_bytes
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	*%r14
	testl	%eax, %eax
	je	.LBB2_190
# BB#188:                               # %for.cond.i
                                        #   in Loop: Header=BB2_189 Depth=1
	incl	%ebp
	cmpl	%r12d, %ebp
	jl	.LBB2_189
.LBB2_191:                              # %palette_has_color.exit.thread448
	movq	56(%rsp), %r15          # 8-byte Reload
	jmp	.LBB2_192
.LBB2_113:                              # %if.end.18.i
	leaq	256(%rsp), %rsi
	movq	1392(%rsp), %rdi
	callq	gx_cpath_outer_box
	testl	%eax, %eax
	je	.LBB2_38
# BB#114:                               # %land.lhs.true.i
	cmpl	%r12d, 256(%rsp)
	jg	.LBB2_38
# BB#115:                               # %land.lhs.true.25.i
	movl	192(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, 264(%rsp)
	jl	.LBB2_38
# BB#116:                               # %land.lhs.true.31.i
	cmpl	%ebx, 260(%rsp)
	jg	.LBB2_38
# BB#117:                               # %land.rhs.i.371
	cmpl	%r14d, 268(%rsp)
	movl	212(%rsp), %r14d        # 4-byte Reload
	movl	188(%rsp), %r12d        # 4-byte Reload
	jl	.LBB2_38
	jmp	.LBB2_119
.LBB2_124:                              # %if.then.445
	movl	$1, 2908(%r13)
	cmpl	$1, 44(%r13)
	jne	.LBB2_125
# BB#126:                               # %land.rhs.i.376
	movq	%r13, %rsi
	movl	2912(%rsi), %ecx
	cmpl	%ecx, 48(%rsi)
	setne	%al
	jmp	.LBB2_127
.LBB2_125:                              # %entry.land.end_crit_edge.i
	movl	2912(%r13), %ecx
	xorl	%eax, %eax
.LBB2_127:                              # %land.end.i.379
	movzbl	%al, %r8d
	movl	%ecx, %eax
	sarl	%eax
	movl	%ecx, %edi
	sarl	$2, %edi
	incl	%edi
	cmpl	$8, %ecx
	movl	%ecx, %r9d
	cmovll	%eax, %edi
	movl	1840(%r13), %eax
	setg	%cl
	cmpl	$2, %eax
	je	.LBB2_131
# BB#128:                               # %land.end.i.379
	cmpl	$1, %eax
	jne	.LBB2_129
.LBB2_131:                              # %sw.bb.15.i
	movq	%r13, %rsi
	movl	2916(%rsi), %eax
	shll	%cl, %eax
	movl	%eax, 2936(%rsi)
	jmp	.LBB2_133
.LBB2_129:                              # %land.end.i.379
	testl	%eax, %eax
	jne	.LBB2_132
# BB#130:                               # %sw.bb.i
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 2936(%r13)
	jmp	.LBB2_133
.LBB2_132:                              # %sw.default.i
	movl	$0, 2936(%r13)
.LBB2_133:                              # %sw.epilog.i
	movq	248(%rsp), %rax         # 8-byte Reload
	leaq	44(%rax), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	sample_unpack_12_proc(%rip), %rax
	movq	%rax, get_unpack_proc.procs+80(%rip)
	movq	%rax, get_unpack_proc.procs+32(%rip)
	movq	sample_unpackicc_16_proc(%rip), %rax
	movq	%rax, get_unpack_proc.procs+88(%rip)
	movq	%rax, get_unpack_proc.procs+40(%rip)
	testl	%r8d, %r8d
	je	.LBB2_140
# BB#134:                               # %if.then.i
	movl	48(%r13), %eax
	cltd
	idivl	%r9d
	movl	$1, %ecx
	cmpl	$2, %eax
	jl	.LBB2_139
# BB#135:                               # %for.body.lr.ph.i
	movq	128(%rsp), %rcx         # 8-byte Reload
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movslq	%eax, %rdx
	movl	$3, %ebp
	movl	$1, %ecx
.LBB2_136:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rbp), %ebx
	movslq	%ebx, %rbx
	movq	128(%rsp), %rsi         # 8-byte Reload
	ucomiss	(%rsi,%rbx,4), %xmm0
	jne	.LBB2_139
	jp	.LBB2_139
# BB#137:                               # %lor.lhs.false.i.384
                                        #   in Loop: Header=BB2_136 Depth=1
	movq	128(%rsp), %rsi         # 8-byte Reload
	movss	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movslq	%ebp, %rbx
	ucomiss	(%rsi,%rbx,4), %xmm1
	jne	.LBB2_139
	jp	.LBB2_139
# BB#138:                               # %for.inc.i
                                        #   in Loop: Header=BB2_136 Depth=1
	incq	%rcx
	addl	$2, %ebp
	cmpq	%rdx, %rcx
	jl	.LBB2_136
.LBB2_139:                              # %for.end.i
	xorl	%edx, %edx
	cmpl	%eax, %ecx
	cmovel	%edx, %r8d
.LBB2_140:                              # %get_unpack_proc.exit
	movslq	%edi, %rax
	movslq	%r8d, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	movq	get_unpack_proc.procs(%rcx,%rax,8), %rax
	movq	%r13, %rsi
	movq	%rax, 2920(%rsi)
	movslq	2916(%rsi), %rdx
	movq	%rsi, %rbp
	testq	%rdx, %rdx
	jle	.LBB2_174
# BB#141:                               # %for.body.lr.ph.i.385
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	568(%rax), %r8d
	movl	$3, %ebx
	xorl	%ecx, %ecx
	xorpd	%xmm0, %xmm0
	movss	.LCPI2_7(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rdx, %r10
	movq	%r10, 40(%rsp)          # 8-byte Spill
.LBB2_142:                              # %for.body.i.391
                                        # =>This Inner Loop Header: Depth=1
	movq	248(%rsp), %rdx         # 8-byte Reload
	movss	44(%rdx,%rcx,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	xorl	%edx, %edx
	ucomiss	%xmm0, %xmm2
	jne	.LBB2_144
	jp	.LBB2_144
# BB#143:                               # %land.rhs.i.392
                                        #   in Loop: Header=BB2_142 Depth=1
	movq	248(%rsp), %rdx         # 8-byte Reload
	movss	48(%rdx,%rcx,4), %xmm3  # xmm3 = mem[0],zero,zero,zero
	cmpeqss	%xmm1, %xmm3
	movd	%xmm3, %edx
	andl	$1, %edx
.LBB2_144:                              # %land.end.i.394
                                        #   in Loop: Header=BB2_142 Depth=1
	movzbl	%dl, %edx
	xorl	%esi, %esi
	ucomiss	.LCPI2_7(%rip), %xmm2
	jne	.LBB2_146
	jp	.LBB2_146
# BB#145:                               # %land.rhs.15.i
                                        #   in Loop: Header=BB2_142 Depth=1
	xorps	%xmm2, %xmm2
	movq	248(%rsp), %rsi         # 8-byte Reload
	cmpeqss	48(%rsi,%rcx,4), %xmm2
	movd	%xmm2, %esi
	andl	$1, %esi
.LBB2_146:                              # %land.end.22.i
                                        #   in Loop: Header=BB2_142 Depth=1
	movzbl	%sil, %esi
	addl	%esi, %esi
	orl	%edx, %esi
	andl	%esi, %ebx
	addq	$2, %rcx
	cmpq	%r10, %rcx
	jl	.LBB2_142
# BB#147:                               # %for.body.28.lr.ph.i
	movl	%ebx, %r13d
	andl	$1, %r13d
	movl	%r13d, 36(%rsp)         # 4-byte Spill
	sete	%dl
	movl	%ebx, %edi
	andl	$2, %edi
	shrl	%edi
	movl	%r9d, %ecx
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	cmpl	$9, %ecx
	setl	%r9b
	andb	%r9b, %dil
	movl	%edi, 96(%rsp)          # 4-byte Spill
	cmpl	$2, %ecx
	setg	%sil
	testl	%r8d, %r8d
	setne	%al
	orb	%sil, %al
	movb	%al, 95(%rsp)           # 1-byte Spill
	movl	$1, %esi
	shll	%cl, %esi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movzbl	%r9b, %eax
	movsd	.LCPI2_8(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	leal	-1(%rsi), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	andb	%dil, %dl
	movb	%dl, 112(%rsp)          # 1-byte Spill
	xorl	%r14d, %r14d
	movsd	.LCPI2_9(%rip), %xmm3   # xmm3 = mem[0],zero
.LBB2_148:                              # %for.body.28.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_160 Depth 2
                                        #     Child Loop BB2_162 Depth 2
                                        #     Child Loop BB2_170 Depth 2
	imulq	$332, %r14, %r15        # imm = 0x14C
	leal	(%r14,%r14), %eax
	cltq
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,4), %r12
	movl	96(%rsp), %eax          # 4-byte Reload
	testb	%al, %al
	movl	$get_map.default_decode, %edx
	cmovneq	%r12, %rdx
	testl	%r13d, %r13d
	leaq	2940(%rbp,%r15), %rdi
	cmovneq	%r12, %rdx
	cmpb	$0, 112(%rsp)           # 1-byte Folded Reload
	movl	$get_map.default_decode, %eax
	cmovneq	%rax, %r12
	cmpb	$0, 95(%rsp)            # 1-byte Folded Reload
	je	.LBB2_151
# BB#149:                               # %if.then.44.i
                                        #   in Loop: Header=BB2_148 Depth=1
	cmpl	$8, 192(%rsp)           # 4-byte Folded Reload
	jg	.LBB2_164
# BB#150:                               # %if.then.47.i
                                        #   in Loop: Header=BB2_148 Depth=1
	movq	%r15, 72(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, %r15
	callq	image_init_map
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	%r15, %rdx
	movq	72(%rsp), %r15          # 8-byte Reload
	movsd	.LCPI2_9(%rip), %xmm3   # xmm3 = mem[0],zero
	jmp	.LBB2_164
.LBB2_151:                              # %if.else.51.i
                                        #   in Loop: Header=BB2_148 Depth=1
	movq	%rdi, %r13
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	leaq	256(%rsp), %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	callq	image_init_map
	cmpl	$2, 192(%rsp)           # 4-byte Folded Reload
	jne	.LBB2_152
# BB#161:                               # %sw.bb.105.i
                                        #   in Loop: Header=BB2_148 Depth=1
	xorl	%eax, %eax
	movsd	.LCPI2_9(%rip), %xmm3   # xmm3 = mem[0],zero
.LBB2_162:                              # %for.body.112.i
                                        #   Parent Loop BB2_148 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	movb	256(%rsp,%rcx), %dl
	movb	%dl, (%r13)
	movl	%eax, %edx
	andl	$2, %edx
	movb	256(%rsp,%rdx), %bl
	movb	%bl, 1(%r13)
	movb	256(%rsp,%rcx), %cl
	movb	%cl, 2(%r13)
	orl	$1, %edx
	movb	256(%rsp,%rdx), %cl
	movb	%cl, 3(%r13)
	addl	$2, %eax
	addq	$4, %r13
	cmpl	$16, %eax
	jne	.LBB2_162
	jmp	.LBB2_163
.LBB2_152:                              # %if.else.51.i
                                        #   in Loop: Header=BB2_148 Depth=1
	cmpl	$1, 192(%rsp)           # 4-byte Folded Reload
	movsd	.LCPI2_9(%rip), %xmm3   # xmm3 = mem[0],zero
	jne	.LBB2_163
# BB#153:                               # %sw.bb.i.401
                                        #   in Loop: Header=BB2_148 Depth=1
	movzbl	256(%rsp), %eax
	cmpl	$255, %eax
	jne	.LBB2_154
# BB#158:                               # %land.lhs.true.72.i
                                        #   in Loop: Header=BB2_148 Depth=1
	cmpb	$0, 257(%rsp)
	movl	$0, %eax
	jne	.LBB2_160
# BB#159:                               # %if.then.77.i
                                        #   in Loop: Header=BB2_148 Depth=1
	movl	$lookup4x1to32_inverted, %esi
	jmp	.LBB2_157
.LBB2_154:                              # %sw.bb.i.401
                                        #   in Loop: Header=BB2_148 Depth=1
	testb	%al, %al
	movl	$0, %eax
	jne	.LBB2_160
# BB#155:                               # %land.lhs.true.61.i
                                        #   in Loop: Header=BB2_148 Depth=1
	movzbl	257(%rsp), %eax
	cmpl	$255, %eax
	movl	$0, %eax
	je	.LBB2_156
.LBB2_160:                              # %for.body.83.i
                                        #   Parent Loop BB2_148 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movb	256(%rsp,%rcx), %cl
	movb	%cl, (%r13)
	movl	%eax, %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	movb	256(%rsp,%rcx), %cl
	movb	%cl, 1(%r13)
	movl	%eax, %ecx
	shrl	%ecx
	andl	$1, %ecx
	movb	256(%rsp,%rcx), %cl
	movb	%cl, 2(%r13)
	movl	%eax, %ecx
	andl	$1, %ecx
	movb	256(%rsp,%rcx), %cl
	movb	%cl, 3(%r13)
	incq	%rax
	addq	$4, %r13
	cmpl	$16, %eax
	jne	.LBB2_160
	jmp	.LBB2_163
.LBB2_156:                              # %if.then.66.i
                                        #   in Loop: Header=BB2_148 Depth=1
	movl	$lookup4x1to32_identity, %esi
.LBB2_157:                              # %sw.epilog.i.404
                                        #   in Loop: Header=BB2_148 Depth=1
	movl	$64, %edx
	movq	%r13, %rdi
	callq	memcpy
	movsd	.LCPI2_9(%rip), %xmm3   # xmm3 = mem[0],zero
.LBB2_163:                              # %sw.epilog.i.404
                                        #   in Loop: Header=BB2_148 Depth=1
	movq	40(%rsp), %r10          # 8-byte Reload
	movl	72(%rsp), %ebx          # 4-byte Reload
	movl	36(%rsp), %r13d         # 4-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
.LBB2_164:                              # %if.end.125.i
                                        #   in Loop: Header=BB2_148 Depth=1
	testl	%ebx, %ebx
	movl	(%r12), %ecx
	movl	%ecx, 3196(%rbp,%r15)
	movss	4(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	subss	(%r12), %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 3260(%rbp,%r15)
	movl	4(%r12), %eax
	movl	%eax, 3256(%rbp,%r15)
	je	.LBB2_166
# BB#165:                               # %if.then.138.i
                                        #   in Loop: Header=BB2_148 Depth=1
	movl	$0, 3264(%rbp,%r15)
	xorps	%xmm0, %xmm0
	cmpneqss	(%rdx), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	movl	%eax, 3268(%rbp,%r15)
	jmp	.LBB2_172
.LBB2_166:                              # %if.else.142.i
                                        #   in Loop: Header=BB2_148 Depth=1
	cmpl	$4, 192(%rsp)           # 4-byte Folded Reload
	jg	.LBB2_171
# BB#167:                               # %if.then.145.i
                                        #   in Loop: Header=BB2_148 Depth=1
	movl	$15, %eax
	xorl	%edx, %edx
	idivl	32(%rsp)                # 4-byte Folded Reload
	movl	$1, 3264(%rbp,%r15)
	movl	$15, %edx
	subl	%eax, %edx
	jle	.LBB2_172
# BB#168:                               # %for.body.155.i.preheader
                                        #   in Loop: Header=BB2_148 Depth=1
	movd	%ecx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm3, %xmm2
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	%edx, %rcx
	leaq	(%rbp,%r15), %rdx
	movss	%xmm0, 3196(%rdx,%rcx,4)
	subl	%eax, %ecx
	jle	.LBB2_172
# BB#169:                               #   in Loop: Header=BB2_148 Depth=1
	leaq	3196(%rbp,%r15), %rsi
	leaq	3260(%rbp,%r15), %rdi
.LBB2_170:                              # %for.body.155.for.body.155_crit_edge.i
                                        #   Parent Loop BB2_148 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm3, %xmm1
	movss	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movslq	%ecx, %rcx
	movss	%xmm0, 3196(%rdx,%rcx,4)
	subl	%eax, %ecx
	jg	.LBB2_170
	jmp	.LBB2_172
.LBB2_171:                              # %if.else.172.i
                                        #   in Loop: Header=BB2_148 Depth=1
	movl	$2, 3264(%rbp,%r15)
.LBB2_172:                              # %if.end.175.i
                                        #   in Loop: Header=BB2_148 Depth=1
	incq	%r14
	cmpl	%r10d, %r14d
	jne	.LBB2_148
# BB#173:                               # %get_map.exit.loopexit
	movq	2920(%rbp), %rax
.LBB2_174:                              # %get_map.exit
	testq	%rax, %rax
	je	.LBB2_175
# BB#176:                               # %if.else.454
	cmpl	$8, 2912(%rbp)
	setg	%cl
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	32(%rax), %esi
	shll	%cl, %esi
	addl	$15, %esi
	imull	180(%rsp), %esi         # 4-byte Folded Reload
	movl	$.L.str.1, %edx
	movq	1400(%rsp), %rdi
	callq	*64(%rdi)
	movq	%rax, 2928(%rbp)
	testq	%rax, %rax
	movq	56(%rsp), %r15          # 8-byte Reload
	movb	144(%rsp), %r13b        # 1-byte Reload
	movl	212(%rsp), %r14d        # 4-byte Reload
	movl	188(%rsp), %r12d        # 4-byte Reload
	jne	.LBB2_195
# BB#177:                               # %if.then.473
	movl	$.L.str, %edx
	movq	1400(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	1408(%rsp), %rax
	movq	$0, (%rax)
	movl	$-25, %eax
	jmp	.LBB2_236
.LBB2_175:                              # %if.then.452
	movq	1184(%rsp), %rax
	movl	$0, 160(%rax)
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	344(%rax), %rdi
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rsi
	callq	gsicc_mcm_end_monitor
	jmp	.LBB2_193
.LBB2_181:                              # %sw.bb.4.i
	movq	64(%rbx), %rax
	movl	$gsicc_mcm_monitor_rgb, %r14d
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.LBB2_186
# BB#182:                               # %sw.bb.4.i
	cmpl	$6, %eax
	jne	.LBB2_183
# BB#185:                               # %sw.bb.7.i
	movl	$gsicc_mcm_monitor_lab, %r14d
	jmp	.LBB2_186
.LBB2_183:                              # %sw.bb.4.i
	cmpl	$3, %eax
	jne	.LBB2_190
# BB#184:                               # %sw.bb.6.i
	movl	$gsicc_mcm_monitor_cmyk, %r14d
	jmp	.LBB2_186
.LBB2_190:                              # %if.then.485
	movq	1184(%rsp), %rax
	movl	$0, 160(%rax)
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	344(%rax), %rdi
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rsi
	callq	gsicc_mcm_end_monitor
.LBB2_192:                              # %if.end.492
	movq	%r13, %rbp
.LBB2_193:                              # %if.end.492
	movb	144(%rsp), %r13b        # 1-byte Reload
	movl	212(%rsp), %r14d        # 4-byte Reload
	movl	188(%rsp), %r12d        # 4-byte Reload
.LBB2_195:                              # %if.end.492
	movl	100(%r15), %eax
	cmpl	$1, %eax
	jg	.LBB2_197
# BB#196:                               # %lor.lhs.false.496
	movzbl	110(%r15), %ecx
	cmpl	$255, %ecx
	je	.LBB2_197
# BB#198:                               # %cond.false.503
	leaq	112(%r15), %rcx
	jmp	.LBB2_199
.LBB2_197:                              # %cond.true.501
	leaq	116(%r15), %rcx
.LBB2_199:                              # %cond.end.505
	cmpl	$30, (%rcx)
	ja	.LBB2_206
# BB#200:                               # %land.lhs.true.509
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	jne	.LBB2_206
# BB#201:                               # %land.lhs.true.509
	movq	248(%rsp), %rcx         # 8-byte Reload
	cmpl	$8, 40(%rcx)
	jne	.LBB2_206
# BB#202:                               # %land.lhs.true.515
	cmpl	$0, 220(%rsp)           # 4-byte Folded Reload
	jne	.LBB2_204
# BB#203:                               # %land.lhs.true.515
	cmpl	$1, %eax
	jne	.LBB2_206
.LBB2_204:                              # %land.lhs.true.522
	movq	1184(%rsp), %rax
	cmpl	$0, 184(%rax)
	je	.LBB2_206
# BB#205:                               # %if.then.524
	movsd	1264(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	1272(%rsp), %xmm1       # xmm1 = mem[0],zero
	subsd	1248(%rsp), %xmm0
	cvttsd2si	%xmm0, %eax
	subsd	1256(%rsp), %xmm1
	cvttsd2si	%xmm1, %ecx
	movq	248(%rsp), %rsi         # 8-byte Reload
	movl	32(%rsi), %edx
	imull	180(%rsp), %edx         # 4-byte Folded Reload
	leal	63(,%rdx,8), %edx
	sarl	$6, %edx
	imull	36(%rsi), %edx
	shll	$3, %edx
	movzwl	108(%r15), %esi
	imull	%eax, %esi
	addl	$63, %esi
	sarl	$6, %esi
	imull	%ecx, %esi
	shll	$3, %esi
	cmpl	%esi, %edx
	jg	.LBB2_38
.LBB2_206:                              # %if.end.563
	movl	gx_image_type_table_count(%rip), %ecx
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	je	.LBB2_210
# BB#207:                               # %for.body.lr.ph.i.417
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	xorl	%ebx, %ebx
.LBB2_208:                              # %for.body.i.420
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rax, gx_image_type_table(,%rbx,8)
	je	.LBB2_210
# BB#209:                               # %for.inc.i.423
                                        #   in Loop: Header=BB2_208 Depth=1
	incq	%rbx
	cmpl	%ecx, %ebx
	jb	.LBB2_208
.LBB2_210:                              # %for.end.i.426
	movl	$-15, %eax
	cmpl	%ecx, %ebx
	jae	.LBB2_218
# BB#211:                               # %if.end.4.i
	movl	%r12d, 188(%rsp)        # 4-byte Spill
	movl	%r14d, 212(%rsp)        # 4-byte Spill
	movq	%r15, %r14
	movq	%rbp, %r15
	addq	$1976, %r15             # imm = 0x7B8
	leaq	256(%rsp), %r12
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	s_init
	movl	$920, %edx              # imm = 0x398
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	swrite_string
	movq	376(%rsp), %rax
	cmpq	384(%rsp), %rax
	jae	.LBB2_213
# BB#212:                               # %cond.true.i
	leaq	1(%rax), %rcx
	movq	%rcx, 376(%rsp)
	movb	%bl, 1(%rax)
	jmp	.LBB2_214
.LBB2_213:                              # %cond.false.i
	movzbl	%bl, %esi
	leaq	256(%rsp), %rdi
	callq	spputc
.LBB2_214:                              # %cond.end.i
	movq	248(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rax
	leaq	256(%rsp), %rsi
	leaq	912(%rsp), %rdx
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB2_215
# BB#216:                               # %cond.false.21.i
	leaq	256(%rsp), %rdi
	callq	stell
	jmp	.LBB2_217
.LBB2_215:                              # %cond.true.19.i
	cltq
.LBB2_217:                              # %cond.end.23.i
	movq	%r14, %r15
	movl	212(%rsp), %r14d        # 4-byte Reload
	movl	188(%rsp), %r12d        # 4-byte Reload
.LBB2_218:                              # %begin_image_command.exit
	movl	%eax, 2896(%rbp)
	testl	%eax, %eax
	js	.LBB2_38
# BB#219:                               # %if.end.569
	movl	%r12d, 188(%rsp)        # 4-byte Spill
	movl	%r14d, 212(%rsp)        # 4-byte Spill
	xorl	%ebx, %ebx
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	jne	.LBB2_228
# BB#220:                               # %if.then.571
	movb	%r13b, 144(%rsp)        # 1-byte Spill
	movq	%rbp, 224(%rsp)         # 8-byte Spill
	cmpl	$2, 180(%rsp)           # 4-byte Folded Reload
	jl	.LBB2_222
# BB#221:                               # %if.then.578
	movb	100(%r15), %cl
	movl	$1, %ebx
	shlq	%cl, %rbx
	decq	%rbx
	jmp	.LBB2_227
.LBB2_222:                              # %if.else.579
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	576(%rax), %rbp
	movq	(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movl	$1, %r12d
	cmpl	$0, 184(%rsp)           # 4-byte Folded Reload
	movq	%r15, %r13
	movq	200(%rsp), %r15         # 8-byte Reload
	je	.LBB2_224
# BB#223:                               # %cond.end.591
	movl	72(%rbp), %r12d
	xorl	%ebx, %ebx
	testl	%r12d, %r12d
	js	.LBB2_226
.LBB2_224:                              # %for.body.596.lr.ph
	incl	%r12d
	xorpd	%xmm0, %xmm0
	xorl	%ebx, %ebx
	leaq	256(%rsp), %r14
.LBB2_225:                              # %for.body.596
                                        # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, 248(%rsp)        # 8-byte Spill
	movsd	248(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 920(%rsp)
	movl	$1, %r9d
	leaq	912(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	callq	*240(%rsp)              # 8-byte Folded Reload
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	cmd_drawing_color_usage
	movsd	248(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	orq	%rax, %rbx
	addsd	.LCPI2_10(%rip), %xmm0
	decl	%r12d
	jne	.LBB2_225
.LBB2_226:                              # %for.end.605
	movq	%r13, %r15
.LBB2_227:                              # %if.end.607
	movq	224(%rsp), %rbp         # 8-byte Reload
	movb	144(%rsp), %r13b        # 1-byte Reload
.LBB2_228:                              # %if.end.607
	movq	%rbx, 1944(%rbp)
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	212(%rax), %esi
	xorl	%r14d, %r14d
	testb	%r13b, %r13b
	movq	232(%rsp), %rdx         # 8-byte Reload
	cmoveq	%r14, %rdx
	movq	%r15, %rdi
	movq	%rbp, %rbx
	callq	cmd_slow_rop
	movl	%eax, 1952(%rbx)
	movl	$0, 2904(%rbx)
	movsd	1256(%rsp), %xmm0       # xmm0 = mem[0],zero
	addsd	.LCPI2_11(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ebp
	movsd	1272(%rsp), %xmm0       # xmm0 = mem[0],zero
	addsd	.LCPI2_12(%rip), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %r12d
	movq	1392(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_230
# BB#229:                               # %if.then.629
	leaq	256(%rsp), %rsi
	callq	gx_cpath_outer_box
	movl	260(%rsp), %eax
	sarl	$8, %eax
	cmpl	%eax, %ebp
	cmovgel	%ebp, %eax
	testl	%eax, %eax
	cmovsl	%r14d, %eax
	movl	%eax, 1936(%rbx)
	movl	268(%rsp), %eax
	sarl	$8, %eax
	cmpl	%eax, %r12d
	cmovlel	%r12d, %eax
	movl	836(%r15), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	jmp	.LBB2_231
.LBB2_230:                              # %if.else.692
	testl	%ebp, %ebp
	cmovnsl	%ebp, %r14d
	movl	%r14d, 1936(%rbx)
	movl	836(%r15), %eax
	cmpl	%eax, %r12d
	cmovlel	%r12d, %eax
.LBB2_231:                              # %if.end.709
	movl	%eax, 1940(%rbx)
	movq	%rbx, %rsi
	movq	%r15, %rdi
	movq	%rsi, %rbp
	callq	clist_image_unknowns
	orl	$16384, %eax            # imm = 0x4000
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	cmd_clear_known
	cmpl	$0, 212(%rsp)           # 4-byte Folded Reload
	je	.LBB2_233
# BB#232:                               # %if.then.713
	movl	172(%rsp), %eax         # 4-byte Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 324(%rcx)
.LBB2_233:                              # %if.end.715
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	je	.LBB2_235
# BB#234:                               # %if.then.717
	movl	176(%rsp), %eax         # 4-byte Reload
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 328(%rcx)
.LBB2_235:                              # %if.end.719
	movq	32(%rbp), %rax
	movq	%rax, 12136(%r15)
	xorl	%eax, %eax
	jmp	.LBB2_236
.Lfunc_end2:
	.size	clist_begin_typed_image, .Lfunc_end2-clist_begin_typed_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_191
	.quad	.LBB2_186
	.quad	.LBB2_180
	.quad	.LBB2_190
	.quad	.LBB2_190
	.quad	.LBB2_180
	.quad	.LBB2_186
	.quad	.LBB2_186
	.quad	.LBB2_191
	.quad	.LBB2_190
	.quad	.LBB2_190
	.quad	.LBB2_190
	.quad	.LBB2_181

	.text
	.align	16, 0x90
	.type	clist_image_unknowns,@function
clist_image_unknowns:                   # @clist_image_unknowns
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	1824(%rsi), %r15
	leaq	10336(%rbx), %r14
	movss	10468(%rbx), %xmm0      # xmm0 = mem[0],zero,zero,zero
	ucomiss	132(%r15), %xmm0
	jne	.LBB3_6
	jp	.LBB3_6
# BB#1:                                 # %lor.lhs.false
	movss	136(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	136(%r15), %xmm0
	jne	.LBB3_6
	jp	.LBB3_6
# BB#2:                                 # %lor.lhs.false.9
	movss	140(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	140(%r15), %xmm0
	jne	.LBB3_6
	jp	.LBB3_6
# BB#3:                                 # %lor.lhs.false.15
	movss	144(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	144(%r15), %xmm0
	jne	.LBB3_6
	jp	.LBB3_6
# BB#4:                                 # %lor.lhs.false.21
	movss	148(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	148(%r15), %xmm0
	jne	.LBB3_6
	jp	.LBB3_6
# BB#5:                                 # %lor.lhs.false.27
	movss	152(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%ebp, %ebp
	ucomiss	152(%r15), %xmm0
	jne	.LBB3_6
	jnp	.LBB3_7
.LBB3_6:                                # %if.then
	leaq	10468(%rbx), %rax
	leaq	132(%r15), %rcx
	movl	32(%rcx), %edx
	movl	%edx, 32(%rax)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movl	$2048, %ebp             # imm = 0x800
.LBB3_7:                                # %if.end
	movq	1896(%rsi), %rcx
	leaq	12032(%rbx), %rax
	testq	%rcx, %rcx
	je	.LBB3_8
# BB#9:                                 # %if.else
	cmpq	%rcx, 8(%rax)
	jne	.LBB3_11
# BB#10:                                # %if.then.44
	movq	1928(%rsi), %rcx
	movq	%rcx, 40(%rax)
	jmp	.LBB3_12
.LBB3_8:                                # %if.then.37
	movq	$0, 40(%rax)
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.49
	orl	$16384, %ebp            # imm = 0x4000
	movups	1888(%rsi), %xmm0
	movups	1904(%rsi), %xmm1
	movups	1920(%rsi), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
.LBB3_12:                               # %if.end.54
	movq	1832(%rsi), %rsi
	movq	%rbx, %rdi
	callq	cmd_check_clip_path
	movl	%eax, %ecx
	movl	%ebp, %eax
	orl	$8192, %eax             # imm = 0x2000
	testl	%ecx, %ecx
	cmovel	%ebp, %eax
	movl	272(%r15), %ecx
	cmpl	%ecx, 10608(%rbx)
	jne	.LBB3_13
# BB#14:                                # %lor.lhs.false.61
	leaq	276(%r14), %rdx
	movl	276(%r14), %esi
	movl	276(%r15), %edi
	cmpl	%edi, %esi
	jne	.LBB3_15
# BB#16:                                # %lor.lhs.false.65
	movl	220(%r14), %edi
	cmpl	220(%r15), %edi
	jne	.LBB3_19
# BB#17:                                # %lor.lhs.false.69
	movl	248(%r14), %edi
	cmpl	248(%r15), %edi
	jne	.LBB3_19
# BB#18:                                # %lor.lhs.false.73
	movl	324(%r14), %edi
	cmpl	324(%r15), %edi
	je	.LBB3_20
	jmp	.LBB3_19
.LBB3_13:                               # %if.end.54.if.then.77_crit_edge
	movl	276(%r15), %esi
	leaq	276(%r14), %rdx
	jmp	.LBB3_19
.LBB3_15:
	movl	%edi, %esi
.LBB3_19:                               # %if.then.77
	orl	$32, %eax
	movl	%ecx, 272(%r14)
	movl	%esi, (%rdx)
	movl	220(%r15), %ecx
	movl	%ecx, 220(%r14)
	movl	248(%r15), %ecx
	movl	%ecx, 248(%r14)
	movl	324(%r15), %ecx
	movl	%ecx, 324(%r14)
.LBB3_20:                               # %if.end.94
	movss	224(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	224(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_21
	jnp	.LBB3_22
.LBB3_21:                               # %if.then.99
	orl	$128, %eax
	movss	%xmm0, 224(%r14)
.LBB3_22:                               # %if.end.106
	movss	228(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	228(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB3_23
	jnp	.LBB3_24
.LBB3_23:                               # %if.then.112
	orl	$256, %eax              # imm = 0x100
	movss	%xmm0, 228(%r14)
.LBB3_24:                               # %if.end.119
	movzwl	216(%r15), %ecx
	movzwl	216(%r14), %edx
	cmpl	%ecx, %edx
	je	.LBB3_26
# BB#25:                                # %if.then.126
	orl	$512, %eax              # imm = 0x200
	movw	%cx, 216(%r14)
.LBB3_26:                               # %if.end.131
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	clist_image_unknowns, .Lfunc_end3-clist_image_unknowns
	.cfi_endproc

	.globl	clist_create_compositor
	.align	16, 0x90
	.type	clist_create_compositor,@function
clist_create_compositor:                # @clist_create_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 96
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	$0, 36(%rsp)
	movl	10132(%rbx), %r15d
	movl	836(%rbx), %eax
	leal	-1(%r15,%rax), %eax
	cltd
	idivl	%r15d
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	(%r14), %rax
	leaq	36(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	*24(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jns	.LBB4_2
# BB#1:                                 # %entry
	cmpl	$-15, %ecx
	jne	.LBB4_38
.LBB4_2:                                # %if.end
	addl	$3, 36(%rsp)
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	movq	%r12, %r8
	callq	*64(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB4_38
# BB#3:                                 # %if.end.9
	movq	(%r14), %rax
	movl	12184(%rbx), %ecx
	movl	12188(%rbx), %r8d
	leaq	28(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	%r14, %rdi
	callq	*80(%rax)
	movl	%eax, %ebp
	movl	%ebp, %ecx
	testl	%ebp, %ebp
	js	.LBB4_38
# BB#4:                                 # %if.end.15
	leal	-1(%r15), %esi
	cmpl	$4, %ebp
	je	.LBB4_6
# BB#5:                                 # %if.end.15
	cmpl	$1, %ebp
	jne	.LBB4_7
.LBB4_6:                                # %if.then.18
	movl	28(%rsp), %edi
	movl	%edi, %eax
	cltd
	idivl	%r15d
	movl	%eax, %r8d
	addl	%edi, %esi
	addl	24(%rsp), %esi
	movl	%esi, %eax
	cltd
	idivl	%r15d
	movq	16(%rsp), %rdi          # 8-byte Reload
.LBB4_9:                                # %if.end.35
	subl	%r8d, %eax
	leal	2(%rdi,%rdi), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	xorl	%esi, %esi
	cmpl	%edx, %eax
	cmovgl	%esi, %ebp
	cmpl	$1, %ebp
	jne	.LBB4_10
# BB#16:                                # %if.then.60
	movl	28(%rsp), %esi
	movl	24(%rsp), %edx
	movq	%rbx, %rdi
	callq	clist_writer_push_cropping
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB4_38
# BB#17:                                # %if.end.65.thread
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movl	12184(%rbx), %eax
	jmp	.LBB4_20
.LBB4_10:                               # %if.end.35
	testl	%ebp, %ebp
	jne	.LBB4_18
# BB#11:                                # %if.then.42
	movl	36(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movl	10144(%rbx), %edx
	decl	%edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	cmd_put_range_op
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB4_13
# BB#12:                                # %cond.end.thread
	movb	$-33, (%rbp)
	jmp	.LBB4_14
.LBB4_7:                                # %if.else
	movl	%ebp, %eax
	andl	$-2, %eax
	xorl	%r8d, %r8d
	cmpl	$2, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	movl	%edi, %eax
	jne	.LBB4_9
# BB#8:                                 # %if.then.27
	movl	12184(%rbx), %eax
	cltd
	idivl	%r15d
	movl	%eax, %r8d
	addl	12188(%rbx), %esi
	movl	%esi, %eax
	cltd
	idivl	%r15d
	jmp	.LBB4_9
.LBB4_18:                               # %if.end.65
	movl	12184(%rbx), %eax
	cmpl	$4, %ebp
	jne	.LBB4_19
# BB#39:                                # %if.then.67
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movl	28(%rsp), %esi
	cmpl	%esi, %eax
	cmovll	%esi, %eax
	movl	12188(%rbx), %edx
	addl	24(%rsp), %esi
	cmpl	%esi, %edx
	cmovlel	%edx, %esi
	jmp	.LBB4_21
.LBB4_19:
	movl	%ebp, 4(%rsp)           # 4-byte Spill
.LBB4_20:                               # %if.else.84
	movl	12188(%rbx), %esi
.LBB4_21:                               # %if.end.87
	movl	%esi, 12(%rsp)          # 4-byte Spill
	cmpl	%eax, %esi
	movl	%ecx, %ebp
	jle	.LBB4_36
# BB#22:                                # %if.then.89
	movl	10132(%rbx), %ecx
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	leaq	32(%rsp), %r13
	.align	16, 0x90
.LBB4_23:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
	movl	%eax, 16(%rsp)          # 4-byte Spill
	cltd
	movl	8(%rsp), %edi           # 4-byte Reload
	idivl	%edi
	movq	10200(%rbx), %rcx
	cltq
	leal	1(%rax), %r12d
	imull	%edi, %r12d
	cmpl	%esi, %r12d
	cmovgl	%esi, %r12d
	imulq	$1808, %rax, %rax       # imm = 0x710
	leaq	1760(%rcx,%rax), %r15
	.align	16, 0x90
.LBB4_24:                               # %do.body.128
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	36(%rsp), %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	je	.LBB4_26
# BB#25:                                # %cond.end.135.thread
                                        #   in Loop: Header=BB4_24 Depth=2
	movb	$-33, (%rax)
	jmp	.LBB4_27
	.align	16, 0x90
.LBB4_26:                               # %cond.end.135
                                        #   in Loop: Header=BB4_24 Depth=2
	movl	10192(%rbx), %ebp
	testl	%ebp, %ebp
	js	.LBB4_29
.LBB4_27:                               # %do.cond
                                        #   in Loop: Header=BB4_24 Depth=2
	movl	36(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movb	$1, 1(%rax)
	movq	(%r14), %rcx
	movb	(%rcx), %cl
	movb	%cl, 2(%rax)
	movq	(%r14), %rbp
	addq	$3, %rax
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	callq	*24(%rbp)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB4_28
.LBB4_29:                               # %land.rhs
                                        #   in Loop: Header=BB4_24 Depth=2
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	clist_VMerror_recover
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB4_24
# BB#30:                                # %error_in_rect
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$0, 12144(%rbx)
	je	.LBB4_31
# BB#32:                                # %land.lhs.true.160
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$0, 12152(%rbx)
	jne	.LBB4_33
# BB#34:                                # %land.lhs.true.162
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	clist_VMerror_recover_flush
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	16(%rsp), %eax          # 4-byte Reload
	jns	.LBB4_35
	jmp	.LBB4_38
	.align	16, 0x90
.LBB4_28:                               #   in Loop: Header=BB4_23 Depth=1
	movl	%r12d, %eax
.LBB4_35:                               # %do.cond.170
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	12(%rsp), %esi          # 4-byte Reload
	cmpl	%esi, %eax
	jl	.LBB4_23
.LBB4_36:                               # %if.end.175
	cmpl	$2, 4(%rsp)             # 4-byte Folded Reload
	movl	%ebp, %ecx
	jne	.LBB4_38
# BB#37:                                # %if.then.177
	movq	%rbx, %rdi
	callq	clist_writer_pop_cropping
	movl	%eax, %ecx
	jmp	.LBB4_38
.LBB4_13:                               # %cond.end
	movl	10192(%rbx), %ecx
	testl	%ecx, %ecx
	js	.LBB4_38
.LBB4_14:                               # %if.end.48
	movb	$1, 1(%rbp)
	movq	(%r14), %rax
	movb	(%rax), %al
	movb	%al, 2(%rbp)
	movq	(%r14), %rax
	movq	%rbp, %rsi
	addq	$3, %rsi
	leaq	32(%rsp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	*24(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jns	.LBB4_38
# BB#15:                                # %if.then.56
	movq	%rbp, 10216(%rbx)
	jmp	.LBB4_38
.LBB4_31:
	movl	%ebp, %ecx
	jmp	.LBB4_38
.LBB4_33:
	movl	%ebp, %ecx
.LBB4_38:                               # %cleanup.183
	movl	%ecx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	clist_create_compositor, .Lfunc_end4-clist_create_compositor
	.cfi_endproc

	.globl	cmd_put_halftone
	.align	16, 0x90
	.type	cmd_put_halftone,@function
cmd_put_halftone:                       # @cmd_put_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 80
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$0, 20(%rsp)
	leaq	20(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	gx_ht_write
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB5_2
# BB#1:                                 # %entry
	cmpl	$-15, %ebp
	jne	.LBB5_46
.LBB5_2:                                # %if.end
	movl	20(%rsp), %edi
	movl	$3, %ebx
	cmpl	$128, %edi
	jb	.LBB5_5
# BB#3:                                 # %cond.false
	movl	$4, %ebx
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB5_5
# BB#4:                                 # %cond.false.5
	callq	enc_u_size_uint
	movl	%eax, %ebx
	addl	$2, %ebx
.LBB5_5:                                # %cond.end.7
	movl	10144(%r13), %edx
	decl	%edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	movl	%ebx, %ecx
	callq	cmd_put_range_op
	testq	%rax, %rax
	je	.LBB5_7
# BB#6:                                 # %cond.end.13.thread
	movb	$-33, (%rax)
	jmp	.LBB5_8
.LBB5_7:                                # %cond.end.13
	movl	10192(%r13), %ebp
	testl	%ebp, %ebp
	js	.LBB5_46
.LBB5_8:                                # %if.end.17
	movb	$2, 1(%rax)
	movq	%rax, %rsi
	addq	$2, %rsi
	movl	20(%rsp), %edi
	cmpl	$127, %edi
	ja	.LBB5_10
# BB#9:                                 # %if.then.19
	movb	%dil, (%rsi)
	jmp	.LBB5_13
.LBB5_10:                               # %if.else
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB5_12
# BB#11:                                # %if.then.22
	orl	$128, %edi
	movb	%dil, 2(%rax)
	movl	20(%rsp), %ecx
	shrl	$7, %ecx
	movb	%cl, 3(%rax)
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.27
	callq	enc_u_put_uint
.LBB5_13:                               # %do.end
	movl	20(%rsp), %ecx
	cmpl	$4065, %ecx             # imm = 0xFE1
	jb	.LBB5_15
# BB#14:                                # %if.then.33
	movq	1768(%r13), %rdi
	movl	$.L.str.2, %edx
	movl	%ecx, %esi
	callq	*64(%rdi)
	movq	%rax, %r15
	movl	$-25, %ebp
	xorl	%ebx, %ebx
	testq	%r15, %r15
	jne	.LBB5_23
	jmp	.LBB5_46
.LBB5_15:                               # %if.else.40
	addl	%ebx, %ecx
	movl	10144(%r13), %edx
	decl	%edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	cmd_put_range_op
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB5_17
# BB#16:                                # %cond.end.50.thread
	movb	$-33, (%rbx)
	jmp	.LBB5_18
.LBB5_17:                               # %cond.end.50
	movl	10192(%r13), %ebp
	testl	%ebp, %ebp
	js	.LBB5_46
.LBB5_18:                               # %if.end.55
	movb	$3, 1(%rbx)
	movl	20(%rsp), %edi
	cmpl	$127, %edi
	ja	.LBB5_20
# BB#19:                                # %if.then.61
	movq	%rbx, %r15
	addq	$3, %r15
	movb	%dil, 2(%rbx)
	jmp	.LBB5_23
.LBB5_20:                               # %if.else.64
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB5_22
# BB#21:                                # %if.then.67
	orl	$128, %edi
	movb	%dil, 2(%rbx)
	movl	20(%rsp), %eax
	shrl	$7, %eax
	movq	%rbx, %r15
	addq	$4, %r15
	movb	%al, 3(%rbx)
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.75
	movq	%rbx, %rsi
	addq	$2, %rsi
	callq	enc_u_put_uint
	movq	%rax, %r15
.LBB5_23:                               # %if.end.81
	leaq	20(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	gx_ht_write
	movl	%eax, %ebp
	movl	20(%rsp), %eax
	testl	%ebp, %ebp
	js	.LBB5_24
# BB#27:                                # %if.end.94
	cmpl	$4065, %eax             # imm = 0xFE1
	jb	.LBB5_45
# BB#28:                                # %while.cond.preheader
	testl	%ebp, %ebp
	setns	%r12b
	js	.LBB5_44
# BB#29:                                # %while.cond.preheader
	testl	%eax, %eax
	je	.LBB5_44
# BB#30:
	movq	%r15, 8(%rsp)           # 8-byte Spill
.LBB5_31:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_32 Depth 2
	movl	%eax, %ebx
	.align	16, 0x90
.LBB5_32:                               # %while.body
                                        #   Parent Loop BB5_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4064, %ebx             # imm = 0xFE0
	movl	$4064, %eax             # imm = 0xFE0
	cmoval	%eax, %ebx
	movl	$1, %eax
	cmpl	$128, %ebx
	jb	.LBB5_35
# BB#33:                                # %cond.false.111
                                        #   in Loop: Header=BB5_32 Depth=2
	movl	$2, %eax
	cmpl	$16384, %ebx            # imm = 0x4000
	jb	.LBB5_35
# BB#34:                                # %cond.false.115
                                        #   in Loop: Header=BB5_32 Depth=2
	movl	%ebx, %edi
	callq	enc_u_size_uint
.LBB5_35:                               # %cond.end.119
                                        #   in Loop: Header=BB5_32 Depth=2
	leal	2(%rbx,%rax), %ecx
	movl	10144(%r13), %edx
	decl	%edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	cmd_put_range_op
	testq	%rax, %rax
	jne	.LBB5_36
# BB#38:                                # %cond.end.131
                                        #   in Loop: Header=BB5_32 Depth=2
	movl	10192(%r13), %ebp
	testl	%ebp, %ebp
	setns	%r12b
	js	.LBB5_44
# BB#39:                                # %cond.end.131
                                        #   in Loop: Header=BB5_32 Depth=2
	movl	20(%rsp), %ebx
	testl	%ebx, %ebx
	jne	.LBB5_32
	jmp	.LBB5_44
.LBB5_36:                               # %cond.end.131.thread
                                        #   in Loop: Header=BB5_31 Depth=1
	cmpl	$128, %ebx
	movw	$991, (%rax)            # imm = 0x3DF
	jae	.LBB5_40
# BB#37:                                # %if.then.141
                                        #   in Loop: Header=BB5_31 Depth=1
	movq	%rax, %rdi
	addq	$3, %rdi
	movb	%bl, 2(%rax)
	jmp	.LBB5_43
.LBB5_40:                               # %if.else.144
                                        #   in Loop: Header=BB5_31 Depth=1
	cmpl	$16383, %ebx            # imm = 0x3FFF
	ja	.LBB5_42
# BB#41:                                # %if.then.147
                                        #   in Loop: Header=BB5_31 Depth=1
	movl	%ebx, %ecx
	orl	$128, %ecx
	movb	%cl, 2(%rax)
	movl	%ebx, %ecx
	shrl	$7, %ecx
	movq	%rax, %rdi
	addq	$4, %rdi
	movb	%cl, 3(%rax)
	jmp	.LBB5_43
.LBB5_42:                               # %if.else.155
                                        #   in Loop: Header=BB5_31 Depth=1
	addq	$2, %rax
	movl	%ebx, %edi
	movq	%rax, %rsi
	callq	enc_u_put_uint
	movq	%rax, %rdi
.LBB5_43:                               # %do.end.160
                                        #   in Loop: Header=BB5_31 Depth=1
	movslq	%ebx, %r12
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movl	20(%rsp), %eax
	addq	%r12, %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorl	%ebp, %ebp
	subl	%ebx, %eax
	movl	%eax, 20(%rsp)
	movb	$1, %r12b
	jne	.LBB5_31
.LBB5_44:                               # %if.end.170
	movq	1768(%r13), %rdi
	movl	$.L.str.2, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	testb	%r12b, %r12b
	je	.LBB5_46
.LBB5_45:                               # %if.then.173
	movq	184(%r14), %rax
	movq	%rax, 12128(%r13)
	jmp	.LBB5_46
.LBB5_24:                               # %if.then.85
	cmpl	$4065, %eax             # imm = 0xFE1
	jb	.LBB5_26
# BB#25:                                # %if.then.88
	movq	1768(%r13), %rdi
	movl	$.L.str.2, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	jmp	.LBB5_46
.LBB5_26:                               # %if.else.92
	movq	%rbx, 10216(%r13)
.LBB5_46:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	cmd_put_halftone, .Lfunc_end5-cmd_put_halftone
	.cfi_endproc

	.globl	cmd_put_color_mapping
	.align	16, 0x90
	.type	cmd_put_color_mapping,@function
cmd_put_color_mapping:                  # @cmd_put_color_mapping
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 80
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	392(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB6_4
# BB#1:                                 # %land.lhs.true
	movq	184(%rbx), %rax
	cmpq	12128(%r12), %rax
	je	.LBB6_4
# BB#2:                                 # %if.then
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	cmd_put_halftone
	testl	%eax, %eax
	js	.LBB6_30
# BB#3:                                 # %if.end
	movq	184(%rbx), %rax
	movq	%rax, 12128(%r12)
.LBB6_4:                                # %if.end.5
	movq	416(%r14), %rcx
	leaq	12112(%r12), %r8
	movl	$5, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	cmd_put_color_map
	testl	%eax, %eax
	js	.LBB6_30
# BB#5:                                 # %if.end.9
	movq	424(%r14), %rcx
	leaq	12120(%r12), %r8
	movl	$6, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	cmd_put_color_map
	testl	%eax, %eax
	js	.LBB6_30
# BB#6:                                 # %if.end.13
	movq	440(%r14), %rax
	testq	%rax, %rax
	je	.LBB6_8
# BB#7:                                 # %land.lhs.true.15
	cmpl	$0, 432(%r14)
	jns	.LBB6_9
.LBB6_8:                                # %cond.false
	movq	488(%r14), %rax
.LBB6_9:                                # %cond.end
	movq	48(%rax), %r13
	movq	456(%r14), %rax
	testq	%rax, %rax
	je	.LBB6_11
# BB#10:                                # %land.lhs.true.25
	cmpl	$0, 448(%r14)
	jns	.LBB6_12
.LBB6_11:                               # %cond.false.32
	movq	488(%r14), %rax
.LBB6_12:                               # %cond.end.36
	movq	48(%rax), %rdx
	movq	472(%r14), %rax
	testq	%rax, %rax
	je	.LBB6_15
# BB#13:                                # %land.lhs.true.41
	cmpl	$0, 464(%r14)
	js	.LBB6_15
# BB#14:                                # %land.lhs.true.41.cond.end.52_crit_edge
	movq	488(%r14), %rcx
	jmp	.LBB6_16
.LBB6_15:                               # %cond.false.48
	movq	488(%r14), %rcx
	movq	%rcx, %rax
.LBB6_16:                               # %cond.end.52
	movq	48(%rax), %r11
	movq	48(%rcx), %r15
	movq	12080(%r12), %r9
	movq	12088(%r12), %r8
	cmpq	%r9, %r13
	setne	%al
	movzbl	%al, %edi
	cmpq	%r15, %r9
	setne	%bl
	xorl	%eax, %eax
	cmpq	%r15, %r13
	movzbl	%bl, %ebp
	cmovnel	%eax, %ebp
	cmpq	%r8, %rdx
	setne	%bl
	movzbl	%bl, %esi
	addl	%esi, %esi
	orl	%edi, %esi
	cmpq	%r15, %r8
	movl	$1, %edi
	movl	$1, %ebx
	cmovel	%ebp, %ebx
	cmpq	%r15, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	cmovnel	%ebp, %ebx
	movq	12096(%r12), %r10
	cmpq	%r10, %r11
	setne	%dl
	movzbl	%dl, %ebp
	shll	$2, %ebp
	orl	%esi, %ebp
	movq	12104(%r12), %rsi
	cmpq	%rsi, %r15
	setne	%dl
	movzbl	%dl, %edx
	shll	$3, %edx
	orl	%ebp, %edx
	je	.LBB6_30
# BB#17:                                # %if.end.83
	cmpq	%r15, %r10
	cmovel	%ebx, %edi
	cmpq	%r15, %r11
	cmovnel	%ebx, %edi
	cmpq	%rsi, %r15
	jne	.LBB6_20
# BB#18:                                # %if.end.83
	testl	%edi, %edi
	jne	.LBB6_20
# BB#19:                                # %if.end.83
	cmpq	%r15, %r9
	je	.LBB6_22
.LBB6_20:                               # %if.then.89
	movq	%r11, %rbx
	movq	$0, 16(%rsp)
	leaq	16(%rsp), %r8
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	cmd_put_color_map
	testl	%eax, %eax
	js	.LBB6_30
# BB#21:                                # %for.cond.97.preheader
	movq	%r15, 12080(%r12)
	movq	%r15, 12088(%r12)
	movq	%r15, 12096(%r12)
	movq	%r15, 12104(%r12)
	movq	%r15, %r8
	movq	%rbx, %r11
.LBB6_22:                               # %if.end.108
	movq	%r11, %rbx
	leaq	12088(%r12), %rbp
	cmpq	%r15, %r13
	je	.LBB6_25
# BB#23:                                # %if.then.114
	leaq	12080(%r12), %r8
	movl	432(%r14), %edx
	movq	440(%r14), %rcx
	movl	$1, %esi
	movq	%r12, %rdi
	callq	cmd_put_color_map
	testl	%eax, %eax
	js	.LBB6_30
# BB#24:                                # %if.then.114.if.end.126_crit_edge
	movq	(%rbp), %r8
.LBB6_25:                               # %if.end.126
	cmpq	8(%rsp), %r8            # 8-byte Folded Reload
	je	.LBB6_27
# BB#26:                                # %if.then.132
	movl	448(%r14), %edx
	movq	456(%r14), %rcx
	movl	$2, %esi
	movq	%r12, %rdi
	movq	%rbp, %r8
	callq	cmd_put_color_map
	testl	%eax, %eax
	js	.LBB6_30
.LBB6_27:                               # %if.end.144
	leaq	12096(%r12), %r8
	cmpq	%rbx, (%r8)
	je	.LBB6_29
# BB#28:                                # %if.then.150
	movl	464(%r14), %edx
	movq	472(%r14), %rcx
	movl	$3, %esi
	movq	%r12, %rdi
	callq	cmd_put_color_map
	testl	%eax, %eax
	js	.LBB6_30
.LBB6_29:                               # %if.end.162
	xorl	%eax, %eax
.LBB6_30:                               # %cleanup.163
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	cmd_put_color_mapping, .Lfunc_end6-cmd_put_color_mapping
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
	.text
	.align	16, 0x90
	.type	clist_image_plane_data,@function
clist_image_plane_data:                 # @clist_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	subq	$712, %rsp              # imm = 0x2C8
.Ltmp89:
	.cfi_def_cfa_offset 768
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movq	%rdi, %r13
	movq	%r13, 160(%rsp)         # 8-byte Spill
	movq	16(%r13), %rbx
	movl	2900(%r13), %ebp
	movl	1820(%r13), %r8d
	subl	%ebp, %r8d
	cmpl	%edx, %r8d
	cmovgl	%edx, %r8d
	movslq	44(%r13), %rax
	cmpq	$2, %rax
	jl	.LBB7_5
# BB#1:                                 # %for.body.lr.ph
	movq	216(%rsp), %rdx         # 8-byte Reload
	movl	8(%rdx), %edi
	leaq	24(%rdx), %rdx
	movl	$1, %esi
	.align	16, 0x90
.LBB7_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edi, (%rdx)
	jne	.LBB7_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB7_3 Depth=1
	incq	%rsi
	addq	$16, %rdx
	cmpq	%rax, %rsi
	jl	.LBB7_3
.LBB7_5:                                # %cleanup.cont
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	1808(%r13), %eax
	movl	1844(%r13), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 680(%rsp)
	movl	1848(%r13), %eax
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	%ebp, %edx
	subl	%eax, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	movsd	%xmm0, 688(%rsp)
	addl	1816(%r13), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 696(%rsp)
	leal	(%rbp,%r8), %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movl	%ecx, 2900(%r13)
	leal	(%rax,%rcx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 704(%rsp)
	leaq	1856(%r13), %rsi
	leaq	680(%rsp), %rdi
	leaq	648(%rsp), %rdx
	callq	gs_bbox_transform
	movsd	656(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ebp
	addl	$-2, %ebp
	movsd	672(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %esi
	addl	$2, %esi
	movl	1936(%r13), %r14d
	movl	1940(%r13), %r15d
	cmpl	%r14d, %ebp
	cmovll	%r14d, %ebp
	cmpl	%r15d, %esi
	cmovgl	%r15d, %esi
	cmpl	%esi, %ebp
	jge	.LBB7_145
# BB#6:                                 # %if.end.61
	movq	%rbx, %r12
	movl	10132(%r12), %edi
	movl	%ebp, %eax
	cltd
	idivl	%edi
	movl	%edx, %r8d
	leal	-1(%rdi), %ecx
	andl	%edi, %ecx
	leal	-1(%rsi,%rdi), %esi
	je	.LBB7_8
# BB#7:                                 # %cond.true.63
	movl	%esi, %eax
	cltd
	idivl	%edi
	movl	%esi, %eax
	subl	%edx, %eax
	jmp	.LBB7_9
.LBB7_4:                                # %if.then
	movl	$0, (%rcx)
	movl	$-15, %eax
	jmp	.LBB7_146
.LBB7_8:                                # %cond.false.68
	movl	%edi, %eax
	negl	%eax
	andl	%esi, %eax
.LBB7_9:                                # %cond.end.73
	movl	836(%r12), %ebx
	cmpl	%ebx, %eax
	jge	.LBB7_14
# BB#10:                                # %cond.true.77
	testl	%ecx, %ecx
	je	.LBB7_12
# BB#11:                                # %cond.true.81
	movl	%esi, %eax
	cltd
	idivl	%edi
	subl	%edx, %esi
	jmp	.LBB7_13
.LBB7_12:                               # %cond.false.86
	movl	%edi, %eax
	negl	%eax
	andl	%eax, %esi
.LBB7_13:                               # %cleanup.cont.102
	movl	%esi, %ebx
.LBB7_14:                               # %cleanup.cont.102
	movl	12148(%r12), %eax
	testl	%eax, %eax
	js	.LBB7_146
# BB#15:                                # %if.end.107
	subl	%r8d, %ebp
	movl	%ebx, %eax
	subl	%ebp, %eax
	cmpl	$0, 11952(%r12)
	je	.LBB7_17
# BB#16:                                # %if.then.109
	movsd	648(%rsp), %xmm0        # xmm0 = mem[0],zero
	movl	%eax, 288(%rsp)         # 4-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 304(%rsp)
	movsd	664(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, 312(%rsp)
	movl	%r14d, 308(%rsp)
	movl	%r15d, 316(%rsp)
	leaq	304(%rsp), %rsi
	movq	%r12, %rdi
	callq	clist_update_trans_bbox
	movl	288(%rsp), %eax         # 4-byte Reload
	movl	10132(%r12), %edi
.LBB7_17:                               # %if.end.128
	movq	%r12, %rsi
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movl	%ebp, 608(%rsp)
	movl	%eax, 612(%rsp)
	movl	%ebx, 616(%rsp)
	movl	%edi, 620(%rsp)
	leal	-1(%rbx,%rdi), %eax
	subl	%ebp, %eax
	cltd
	idivl	%edi
	movl	%eax, 644(%rsp)
	leaq	1976(%r13), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	1152(%r13), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	2940(%r13), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	leaq	12(%rax), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	16(%rax), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 288(%rsp)         # 8-byte Spill
	leaq	592(%rsp), %r14
	movl	$1, %eax
	movd	%rax, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	%xmm0, 48(%rsp)         # 16-byte Spill
	leaq	296(%rsp), %r15
	.align	16, 0x90
.LBB7_18:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_37 Depth 2
                                        #     Child Loop BB7_51 Depth 2
                                        #     Child Loop BB7_57 Depth 2
                                        #     Child Loop BB7_61 Depth 2
                                        #     Child Loop BB7_71 Depth 2
                                        #       Child Loop BB7_74 Depth 3
                                        #         Child Loop BB7_99 Depth 4
                                        #           Child Loop BB7_101 Depth 5
                                        #           Child Loop BB7_108 Depth 5
                                        #           Child Loop BB7_112 Depth 5
                                        #       Child Loop BB7_91 Depth 3
                                        #       Child Loop BB7_95 Depth 3
                                        #     Child Loop BB7_120 Depth 2
                                        #       Child Loop BB7_121 Depth 3
                                        #       Child Loop BB7_125 Depth 3
                                        #       Child Loop BB7_129 Depth 3
	movl	%ebp, %eax
	cltd
	idivl	%edi
	movl	%eax, 628(%rsp)
	movslq	%eax, %rcx
	imulq	$1808, %rcx, %rax       # imm = 0x710
	addq	10200(%rsi), %rax
	movq	%rax, 632(%rsp)
	incl	%ecx
	imull	%edi, %ecx
	movl	%ecx, 640(%rsp)
	cmpl	%ebx, %ecx
	cmovgl	%ebx, %ecx
	movq	%rsi, %rbx
	subl	%ebp, %ecx
	movl	%ecx, 612(%rsp)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	movq	%r14, %r8
	callq	image_band_box
	testl	%eax, %eax
	je	.LBB7_143
# BB#19:                                # %if.end.171
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	640(%rsp), %edx
	movl	1936(%r13), %eax
	movl	1940(%r13), %ecx
	cmpl	%ecx, %edx
	cmovlel	%edx, %ecx
	subl	620(%rsp), %edx
	cmpl	%eax, %edx
	cmovll	%eax, %edx
	subl	%edx, %ecx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	leaq	576(%rsp), %r8
	callq	image_band_box
	testl	%eax, %eax
	je	.LBB7_143
# BB#20:                                # %cleanup.cont.204
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	1944(%r13), %rax
	movq	632(%rsp), %rcx
	orq	%rax, 1776(%rcx)
	movl	1952(%r13), %eax
	orl	%eax, 1784(%rcx)
	testb	$64, 1753(%rcx)
	jne	.LBB7_54
# BB#21:                                # %if.then.217
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	1824(%r13), %rax
	movl	212(%rax), %ebp
	movslq	2896(%r13), %rax
	movq	80(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	.align	16, 0x90
.LBB7_22:                               # %do.body.220
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 2904(%r13)
	je	.LBB7_24
# BB#23:                                # %cond.end.226.thread
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	$1, 2904(%r13)
	jmp	.LBB7_25
	.align	16, 0x90
.LBB7_24:                               # %cond.end.226
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	1824(%r13), %rsi
	movq	%rbx, %rdi
	callq	cmd_put_color_mapping
	movl	$1, 2904(%r13)
	testl	%eax, %eax
	js	.LBB7_34
.LBB7_25:                               # %if.then.231
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	$11168, %edx            # imm = 0x2BA0
	cmpq	$0, 1896(%r13)
	je	.LBB7_27
# BB#26:                                # %select.mid
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	$27552, %edx            # imm = 0x6BA0
.LBB7_27:                               # %select.end
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	632(%rsp), %rsi
	movl	1752(%rsi), %eax
	notl	%eax
	testl	%eax, %edx
	je	.LBB7_30
# BB#28:                                # %if.end.246
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	%rbx, %rdi
	callq	cmd_write_unknown
	testl	%eax, %eax
	js	.LBB7_34
# BB#29:                                # %if.end.246.if.then.249_crit_edge
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	632(%rsp), %rsi
.LBB7_30:                               # %if.then.249
                                        #   in Loop: Header=BB7_22 Depth=2
	movswl	1742(%rsi), %eax
	cmpq	$0, 1832(%r13)
	setne	%cl
	movzbl	%cl, %edx
	movl	%edx, %ecx
	xorl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB7_33
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	%rbx, %rdi
	callq	cmd_put_enable_clip
	testl	%eax, %eax
	jns	.LBB7_33
# BB#32:                                # %if.end.267
                                        #   in Loop: Header=BB7_22 Depth=2
	movl	10192(%rbx), %eax
	testl	%eax, %eax
	js	.LBB7_34
	.align	16, 0x90
.LBB7_33:                               # %do.cond
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	632(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	cmd_update_lop
	testl	%eax, %eax
	jns	.LBB7_36
.LBB7_34:                               # %land.rhs
                                        #   in Loop: Header=BB7_22 Depth=2
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB7_22
# BB#35:                                # %land.lhs.true.281
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	%eax, 624(%rsp)
	movq	128(%rsp), %rbp         # 8-byte Reload
	leaq	592(%rsp), %r14
	jmp	.LBB7_135
	.align	16, 0x90
.LBB7_143:                              # %cleanup.687
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	%rbx, %rsi
	jmp	.LBB7_144
.LBB7_36:                               # %if.end.284
                                        #   in Loop: Header=BB7_18 Depth=1
	cmpl	$0, 1880(%r13)
	movq	128(%rsp), %rbp         # 8-byte Reload
	je	.LBB7_40
	.align	16, 0x90
.LBB7_37:                               # %do.body.287
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	1936(%r13), %ecx
	movl	1940(%r13), %eax
	movl	620(%rsp), %edi
	leal	-1(%rax,%rdi), %eax
	cltd
	idivl	%edi
	movl	%eax, %esi
	movl	%ecx, %eax
	cltd
	idivl	%edi
	subl	%eax, %esi
	movl	%esi, 644(%rsp)
	movq	632(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	leaq	608(%rsp), %rcx
	callq	cmd_put_drawing_color
	testl	%eax, %eax
	jns	.LBB7_40
# BB#38:                                # %land.rhs.304
                                        #   in Loop: Header=BB7_37 Depth=2
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB7_37
# BB#39:                                # %land.lhs.true.312
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	%eax, 624(%rsp)
	leaq	592(%rsp), %r14
	jmp	.LBB7_135
.LBB7_40:                               # %if.end.317
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	%r15, %r12
	movl	576(%rsp), %edi
	movl	580(%rsp), %ebp
	movl	%edi, %eax
	orl	%ebp, %eax
	jne	.LBB7_43
# BB#41:                                # %lor.lhs.false.326
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	584(%rsp), %eax
	xorl	%ebp, %ebp
	cmpl	600(%r13), %eax
	jne	.LBB7_43
# BB#42:                                # %lor.lhs.false.331
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	588(%rsp), %eax
	movb	$-36, %r15b
	cmpl	604(%r13), %eax
	je	.LBB7_50
.LBB7_43:                               # %if.then.337
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	%ebp, %eax
	orl	%edi, %eax
	cmpl	$127, %eax
	jbe	.LBB7_44
# BB#45:                                # %cond.false.355
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	%r14, %rsi
	callq	cmd_put_w
	movl	%ebp, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rax, %r14
	jmp	.LBB7_46
.LBB7_44:                               # %cond.true.345
                                        #   in Loop: Header=BB7_18 Depth=1
	movb	%dil, (%r14)
	movb	%bpl, 1(%r14)
	addq	$2, %r14
.LBB7_46:                               # %cond.end.362
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	600(%r13), %xmm0        # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	584(%rsp), %xmm1        # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movd	%xmm0, %edi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %ebp
	movl	%ebp, %eax
	orl	%edi, %eax
	cmpl	$127, %eax
	jbe	.LBB7_47
# BB#48:                                # %cond.false.393
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	%r14, %rsi
	callq	cmd_put_w
	movl	%ebp, %edi
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rax, %r14
	jmp	.LBB7_49
.LBB7_47:                               # %cond.true.377
                                        #   in Loop: Header=BB7_18 Depth=1
	movb	%dil, (%r14)
	movl	604(%r13), %eax
	subl	588(%rsp), %eax
	movb	%al, 1(%r14)
	addq	$2, %r14
.LBB7_49:                               # %if.end.408
                                        #   in Loop: Header=BB7_18 Depth=1
	movb	$-37, %r15b
.LBB7_50:                               # %if.end.408
                                        #   in Loop: Header=BB7_18 Depth=1
	subq	80(%rsp), %r14          # 8-byte Folded Reload
	leal	1(%r14), %ebp
	.align	16, 0x90
.LBB7_51:                               # %do.body.412
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	632(%rsp), %rsi
	addq	$1760, %rsi             # imm = 0x6E0
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB7_52
# BB#65:                                # %cond.end.421
                                        #   in Loop: Header=BB7_51 Depth=2
	movl	10192(%rbx), %esi
	testl	%esi, %esi
	movl	$0, %eax
	jns	.LBB7_53
# BB#66:                                # %land.rhs.426
                                        #   in Loop: Header=BB7_51 Depth=2
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB7_51
# BB#67:                                # %land.lhs.true.434
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	%eax, 624(%rsp)
	movq	128(%rsp), %rbp         # 8-byte Reload
	leaq	592(%rsp), %r14
	movq	%r12, %r15
	jmp	.LBB7_135
.LBB7_52:                               # %cond.end.421.thread
                                        #   in Loop: Header=BB7_18 Depth=1
	movb	%r15b, (%rax)
.LBB7_53:                               # %cleanup.447
                                        #   in Loop: Header=BB7_18 Depth=1
	incq	%rax
	movl	%r14d, %edx
	movq	%rax, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movq	632(%rsp), %rax
	orl	$16384, 1752(%rax)      # imm = 0x4000
	.align	16, 0x90
.LBB7_54:                               # %if.end.454
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	576(%rsp), %ecx
	movl	584(%rsp), %eax
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movl	596(%rsp), %r14d
	movl	604(%rsp), %ebp
	movl	1852(%r13), %r10d
	movl	44(%r13), %r11d
	movq	%r11, 112(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r14d
	cmovll	%eax, %r14d
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ebp
	cmovgl	%eax, %ebp
	movl	1808(%r13), %r8d
	subl	%r8d, %ecx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movl	%r10d, %eax
	andl	$7, %eax
	movsbl	.L.str.4(%rax), %r15d
	negl	%r15d
	andl	%ecx, %r15d
	testl	%r11d, %r11d
	movdqa	48(%rsp), %xmm5         # 16-byte Reload
	movdqa	.LCPI7_0(%rip), %xmm6   # xmm6 = [2,3]
	jle	.LBB7_62
# BB#55:                                # %for.body.487.lr.ph
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	%r14d, %r12d
	movq	136(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r12d
	movl	%r15d, %esi
	imull	%r10d, %esi
	sarl	$3, %esi
	leal	-1(%r11), %edx
	movq	%r11, 112(%rsp)         # 8-byte Spill
	leaq	1(%rdx), %r9
	movq	%r9, %r11
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %r11
	movl	$0, %ecx
	je	.LBB7_59
# BB#56:                                # %vector.ph435
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	%r8d, 272(%rsp)         # 4-byte Spill
	movl	%ebp, 104(%rsp)         # 4-byte Spill
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	incq	%rdx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rdx
	movq	88(%rsp), %rax          # 8-byte Reload
	xorl	%ebx, %ebx
	movq	216(%rsp), %r8          # 8-byte Reload
	.align	16, 0x90
.LBB7_57:                               # %vector.body425
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	%rbx, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movdqa	%xmm2, %xmm3
	paddq	%xmm5, %xmm3
	paddq	%xmm6, %xmm2
	pshufd	$78, %xmm3, %xmm3       # xmm3 = xmm3[2,3,0,1]
	movd	%xmm3, %rcx
	shlq	$4, %rcx
	movd	%xmm2, %rbp
	shlq	$4, %rbp
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	movd	%xmm2, %rdi
	shlq	$4, %rdi
	movd	12(%r8,%rdi), %xmm2     # xmm2 = mem[0],zero,zero,zero
	movd	12(%r8,%rcx), %xmm3     # xmm3 = mem[0],zero,zero,zero
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	movd	12(%r8,%rbp), %xmm2     # xmm2 = mem[0],zero,zero,zero
	movd	(%rax), %xmm4           # xmm4 = mem[0],zero,zero,zero
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	punpckldq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	pshufd	$245, %xmm4, %xmm2      # xmm2 = xmm4[1,1,3,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm2      # xmm2 = xmm4[0,2,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	paddd	%xmm1, %xmm3
	movdqa	%xmm3, 304(%rsp,%rbx,4)
	addq	$4, %rbx
	addq	$64, %rax
	cmpq	%rbx, %rdx
	jne	.LBB7_57
# BB#58:                                #   in Loop: Header=BB7_18 Depth=1
	movq	%r11, %rcx
	movl	104(%rsp), %ebp         # 4-byte Reload
	movl	272(%rsp), %r8d         # 4-byte Reload
.LBB7_59:                               # %middle.block426
                                        #   in Loop: Header=BB7_18 Depth=1
	cmpq	%rcx, %r9
	movq	112(%rsp), %r11         # 8-byte Reload
	je	.LBB7_62
# BB#60:                                # %for.body.487.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	leaq	304(%rsp,%rcx,4), %rax
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movq	88(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdx,%rdi), %rdx
	movl	%r11d, %ebx
	subl	%ecx, %ebx
	.align	16, 0x90
.LBB7_61:                               # %for.body.487
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ecx
	imull	%r12d, %ecx
	addl	%esi, %ecx
	movl	%ecx, (%rax)
	addq	$4, %rax
	addq	$16, %rdx
	decl	%ebx
	jne	.LBB7_61
.LBB7_62:                               # %for.end.498
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	180(%rsp), %eax         # 4-byte Reload
	subl	%r15d, %eax
	subl	%r8d, %eax
	imull	%r10d, %eax
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	imull	%r11d, %ecx
	cmpl	$1, %ecx
	movl	$1, %esi
	cmovbel	%esi, %ecx
	movl	$4042, %eax             # imm = 0xFCA
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ecx
	testl	%ecx, %ecx
	cmovel	%esi, %ecx
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	subl	%r14d, %ebp
	cmpl	$0, 2908(%r13)
	je	.LBB7_68
# BB#63:                                # %for.cond.525.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	testl	%ebp, %ebp
	jle	.LBB7_64
# BB#70:                                # %for.body.528.lr.ph
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	168(%rsp), %rax         # 8-byte Reload
	subl	%r15d, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	180(%rsp), %eax         # 4-byte Reload
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leal	-1(%r11), %edx
	incq	%rdx
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, %rsi
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	andq	%rax, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	288(%rsp), %rbx         # 8-byte Reload
.LBB7_71:                               # %for.body.528
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_74 Depth 3
                                        #         Child Loop BB7_99 Depth 4
                                        #           Child Loop BB7_101 Depth 5
                                        #           Child Loop BB7_108 Depth 5
                                        #           Child Loop BB7_112 Depth 5
                                        #       Child Loop BB7_91 Depth 3
                                        #       Child Loop BB7_95 Depth 3
	movl	%ebp, 104(%rsp)         # 4-byte Spill
	cmpl	%ecx, %ebp
	movl	%ecx, %edx
	cmovbl	%ebp, %edx
	movb	%bpl, %al
	movb	%al, 127(%rsp)          # 1-byte Spill
	jb	.LBB7_73
# BB#72:                                # %for.body.528
                                        #   in Loop: Header=BB7_71 Depth=2
	movb	%cl, %al
	movb	%al, 127(%rsp)          # 1-byte Spill
.LBB7_73:                               # %for.body.528
                                        #   in Loop: Header=BB7_71 Depth=2
	movl	%edx, %ecx
	movl	180(%rsp), %eax         # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	movl	%edx, %ecx
	movl	%edx, 212(%rsp)         # 4-byte Spill
	orl	%eax, %ecx
	movl	%ecx, 148(%rsp)         # 4-byte Spill
	movl	%ebx, %ecx
	movq	152(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB7_74
.LBB7_79:                               #   in Loop: Header=BB7_74 Depth=3
	xorl	%ebp, %ebp
	jmp	.LBB7_118
	.align	16, 0x90
.LBB7_74:                               # %do.body.535
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_71 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_99 Depth 4
                                        #           Child Loop BB7_101 Depth 5
                                        #           Child Loop BB7_108 Depth 5
                                        #           Child Loop BB7_112 Depth 5
	movq	632(%rsp), %r14
	testl	%ecx, %ecx
	je	.LBB7_75
# BB#116:                               # %if.else
                                        #   in Loop: Header=BB7_74 Depth=3
	movl	%ecx, %ebp
	movl	212(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	216(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rcx
	movl	180(%rsp), %r8d         # 4-byte Reload
	leaq	304(%rsp), %r9
	callq	cmd_image_plane_data
	movl	%eax, %r13d
	jmp	.LBB7_117
	.align	16, 0x90
.LBB7_75:                               # %if.then.537
                                        #   in Loop: Header=BB7_74 Depth=3
	movq	216(%rsp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	movq	168(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx), %r8d
	movl	44(%r13), %r12d
	movl	$3, %ebp
	cmpl	$128, 148(%rsp)         # 4-byte Folded Reload
	movl	%r12d, %ecx
	jb	.LBB7_77
# BB#76:                                # %cond.false.i
                                        #   in Loop: Header=BB7_74 Depth=3
	movl	212(%rsp), %edi         # 4-byte Reload
	movl	%r8d, %ebp
	callq	cmd_size_w
	movl	%eax, %r15d
	movl	180(%rsp), %edi         # 4-byte Reload
	callq	cmd_size_w
	movl	%ebp, %r8d
	leal	1(%r15,%rax), %ebp
	movq	216(%rsp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	movl	44(%r13), %ecx
.LBB7_77:                               # %cond.end.i
                                        #   in Loop: Header=BB7_74 Depth=3
	movl	1816(%r13), %edx
	subl	1808(%r13), %edx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	leal	(%rax,%rdx), %eax
	imull	2916(%r13), %eax
	imull	2912(%r13), %eax
	cltd
	idivl	%ecx
	movl	%eax, %r15d
	movl	2936(%r13), %eax
	cltd
	idivl	%ecx
	movl	%eax, 236(%rsp)         # 4-byte Spill
	testl	%r8d, %r8d
	movl	$0, %eax
	je	.LBB7_81
# BB#78:                                # %if.then.i
                                        #   in Loop: Header=BB7_74 Depth=3
	movl	%ebp, 288(%rsp)         # 4-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r8d, %edx
	movl	%r8d, %ebp
	callq	cmd_put_set_data_x
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB7_79
# BB#80:                                # %if.end.i
                                        #   in Loop: Header=BB7_74 Depth=3
	andl	$-8, %ebp
	movzwl	12252(%rbx), %eax
	imull	%ebp, %eax
	sarl	$3, %eax
	movl	288(%rsp), %ebp         # 4-byte Reload
.LBB7_81:                               # %if.end.24.i
                                        #   in Loop: Header=BB7_74 Depth=3
	movq	%rax, 288(%rsp)         # 8-byte Spill
	movl	%r15d, 256(%rsp)        # 4-byte Spill
	imull	144(%rsp), %r12d        # 4-byte Folded Reload
	addl	%r12d, %ebp
	addq	$1760, %r14             # imm = 0x6E0
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	cmd_put_list_op
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB7_83
# BB#82:                                # %cond.end.30.thread.i
                                        #   in Loop: Header=BB7_74 Depth=3
	movb	$-35, (%r15)
	jmp	.LBB7_84
.LBB7_83:                               # %cond.end.30.i
                                        #   in Loop: Header=BB7_74 Depth=3
	movl	10192(%rbx), %r13d
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	js	.LBB7_118
.LBB7_84:                               # %if.end.35.i
                                        #   in Loop: Header=BB7_74 Depth=3
	cmpl	$127, 148(%rsp)         # 4-byte Folded Reload
	jbe	.LBB7_85
# BB#86:                                # %cond.false.44.i
                                        #   in Loop: Header=BB7_74 Depth=3
	incq	%r15
	movl	212(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %edi
	movq	%r15, %rsi
	callq	cmd_put_w
	movl	180(%rsp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rax, %r15
	jmp	.LBB7_87
.LBB7_85:                               # %cond.true.39.i
                                        #   in Loop: Header=BB7_74 Depth=3
	movb	127(%rsp), %al          # 1-byte Reload
	movb	%al, 1(%r15)
	movl	180(%rsp), %eax         # 4-byte Reload
	movb	%al, 2(%r15)
	addq	$3, %r15
	movl	212(%rsp), %ebp         # 4-byte Reload
.LBB7_87:                               # %for.cond.preheader.i
                                        #   in Loop: Header=BB7_74 Depth=3
	movl	%ebp, 212(%rsp)         # 4-byte Spill
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	jle	.LBB7_88
# BB#98:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB7_74 Depth=3
	movl	256(%rsp), %eax         # 4-byte Reload
	addl	$7, %eax
	sarl	$3, %eax
	movl	%eax, 256(%rsp)         # 4-byte Spill
	movl	304(%rsp), %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movslq	236(%rsp), %r12         # 4-byte Folded Reload
	movq	%r12, 272(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	160(%rsp), %r14         # 8-byte Reload
	.align	16, 0x90
.LBB7_99:                               # %for.body.i
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_71 Depth=2
                                        #       Parent Loop BB7_74 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_101 Depth 5
                                        #           Child Loop BB7_108 Depth 5
                                        #           Child Loop BB7_112 Depth 5
	testl	%edx, %edx
	jne	.LBB7_111
# BB#100:                               # %if.then.52.i
                                        #   in Loop: Header=BB7_99 Depth=4
	movq	216(%rsp), %rax         # 8-byte Reload
	movl	12(%rax), %edx
	imull	%ecx, %edx
	addq	(%rax), %rdx
	addq	192(%rsp), %rdx         # 8-byte Folded Reload
	addq	288(%rsp), %rdx         # 8-byte Folded Reload
	movq	2928(%r14), %rdi
	movl	2936(%r14), %eax
	movl	%ecx, 264(%rsp)         # 4-byte Spill
	movl	2916(%r14), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%ecx, %ecx
	leaq	296(%rsp), %rax
	movq	%rax, %rsi
	movl	256(%rsp), %r8d         # 4-byte Reload
	movq	248(%rsp), %r9          # 8-byte Reload
	callq	*2920(%r14)
	movq	%r14, %rbp
	movq	%rax, %r13
	cmpl	$2, 44(%rbp)
	movq	184(%rsp), %rbx         # 8-byte Reload
	movq	%r12, %r14
	movl	$1, %r12d
	jl	.LBB7_102
	.align	16, 0x90
.LBB7_101:                              # %for.body.70.i
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_71 Depth=2
                                        #       Parent Loop BB7_74 Depth=3
                                        #         Parent Loop BB7_99 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	12(%rbx), %eax
	imull	264(%rsp), %eax         # 4-byte Folded Reload
	addq	(%rbx), %rax
	movl	304(%rsp,%r12,4), %edx
	addq	%rax, %rdx
	addq	288(%rsp), %rdx         # 8-byte Folded Reload
	movl	2916(%rbp), %eax
	movl	2936(%rbp), %ecx
	movq	2928(%rbp), %rdi
	addq	%r14, %rdi
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	xorl	%ecx, %ecx
	leaq	296(%rsp), %rsi
	movl	256(%rsp), %r8d         # 4-byte Reload
	movq	248(%rsp), %r9          # 8-byte Reload
	callq	*2920(%rbp)
	incq	%r12
	movslq	44(%rbp), %rax
	addq	272(%rsp), %r14         # 8-byte Folded Reload
	addq	$16, %rbx
	cmpq	%rax, %r12
	jl	.LBB7_101
.LBB7_102:                              # %for.end.i
                                        #   in Loop: Header=BB7_99 Depth=4
	movl	264(%rsp), %r12d        # 4-byte Reload
	movslq	2916(%rbp), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	cmpl	$0, 1916(%rbp)
	movl	$gsicc_mcm_monitor_lab, %r14d
	jne	.LBB7_106
# BB#103:                               # %if.else.i.i
                                        #   in Loop: Header=BB7_99 Depth=4
	movzbl	1912(%rbp), %eax
	cmpl	$3, %eax
	movl	$gsicc_mcm_monitor_rgb, %r14d
	je	.LBB7_106
# BB#104:                               # %if.else.i.i
                                        #   in Loop: Header=BB7_99 Depth=4
	movl	$1, %edx
	cmpl	$4, %eax
	jne	.LBB7_110
# BB#105:                               # %sw.bb.2.i.i
                                        #   in Loop: Header=BB7_99 Depth=4
	movl	$gsicc_mcm_monitor_cmyk, %r14d
	.align	16, 0x90
.LBB7_106:                              # %if.end.i.i
                                        #   in Loop: Header=BB7_99 Depth=4
	xorl	%edx, %edx
	movq	224(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB7_110
# BB#107:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB7_99 Depth=4
	movslq	236(%rsp), %rax         # 4-byte Folded Reload
	movq	240(%rsp), %rcx         # 8-byte Reload
	imulq	%rax, %rcx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_108:                              # %for.body.i.i
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_71 Depth=2
                                        #       Parent Loop BB7_74 Depth=3
                                        #         Parent Loop BB7_99 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r13, %rdi
	movl	236(%rsp), %esi         # 4-byte Reload
	callq	*%r14
	movl	$1, %edx
	testl	%eax, %eax
	je	.LBB7_110
# BB#109:                               # %if.end.6.i.i
                                        #   in Loop: Header=BB7_108 Depth=5
	addq	240(%rsp), %r13         # 8-byte Folded Reload
	incl	%ebx
	xorl	%edx, %edx
	movq	224(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	jl	.LBB7_108
.LBB7_110:                              # %if.end.98.i
                                        #   in Loop: Header=BB7_99 Depth=4
	movq	%rbp, %r14
	movl	%r12d, %ecx
.LBB7_111:                              # %for.cond.100.preheader.i
                                        #   in Loop: Header=BB7_99 Depth=4
	movl	%edx, 264(%rsp)         # 4-byte Spill
	cmpl	$0, 44(%r14)
	movq	216(%rsp), %rbx         # 8-byte Reload
	movl	$0, %ebp
	movq	200(%rsp), %r13         # 8-byte Reload
	jle	.LBB7_113
	.align	16, 0x90
.LBB7_112:                              # %for.body.104.i
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_71 Depth=2
                                        #       Parent Loop BB7_74 Depth=3
                                        #         Parent Loop BB7_99 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	12(%rbx), %eax
	imull	%ecx, %eax
	addq	(%rbx), %rax
	movl	304(%rsp,%rbp,4), %esi
	addq	%rax, %rsi
	addq	288(%rsp), %rsi         # 8-byte Folded Reload
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r14, %r12
	movl	%ecx, %r14d
	callq	memcpy
	movl	%r14d, %ecx
	movq	%r12, %r14
	addq	%r13, %r15
	incq	%rbp
	movslq	44(%r14), %rax
	addq	$16, %rbx
	cmpq	%rax, %rbp
	jl	.LBB7_112
.LBB7_113:                              # %for.inc.127.i
                                        #   in Loop: Header=BB7_99 Depth=4
	incl	%ecx
	cmpl	212(%rsp), %ecx         # 4-byte Folded Reload
	movq	272(%rsp), %r12         # 8-byte Reload
	movl	264(%rsp), %edx         # 4-byte Reload
	jne	.LBB7_99
# BB#114:                               # %cmd_image_plane_data_mon.exit
                                        #   in Loop: Header=BB7_74 Depth=3
	xorl	%ebx, %ebx
	testl	%edx, %edx
	je	.LBB7_88
# BB#115:                               # %if.then.543
                                        #   in Loop: Header=BB7_74 Depth=3
	movl	%edx, %ebp
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	296(%rsp), %rsi
	callq	*1680(%rbx)
	movl	%eax, %r13d
	movq	296(%rsp), %rax
	movl	$0, 160(%rax)
	movq	160(%rsp), %r14         # 8-byte Reload
	movq	1824(%r14), %rax
	movq	344(%rax), %rdi
	movq	%rbx, %rsi
	callq	gsicc_mcm_end_monitor
	movl	$0, 2908(%r14)
.LBB7_117:                              # %do.cond.553
                                        #   in Loop: Header=BB7_74 Depth=3
	testl	%r13d, %r13d
	movl	%ebp, %ebx
	jns	.LBB7_88
.LBB7_118:                              # %land.rhs.556
                                        #   in Loop: Header=BB7_74 Depth=3
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	clist_VMerror_recover
	movl	%ebp, %ecx
	testl	%eax, %eax
	movq	160(%rsp), %r13         # 8-byte Reload
	jns	.LBB7_74
	jmp	.LBB7_134
	.align	16, 0x90
.LBB7_88:                               # %for.cond.569.preheader
                                        #   in Loop: Header=BB7_71 Depth=2
	movq	112(%rsp), %r9          # 8-byte Reload
	testl	%r9d, %r9d
	movl	$1, %r8d
	movdqa	.LCPI7_0(%rip), %xmm4   # xmm4 = [2,3]
	movl	212(%rsp), %r11d        # 4-byte Reload
	jle	.LBB7_96
# BB#89:                                # %overflow.checked403
                                        #   in Loop: Header=BB7_71 Depth=2
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	movl	$0, %esi
	je	.LBB7_93
# BB#90:                                # %vector.ph409
                                        #   in Loop: Header=BB7_71 Depth=2
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movq	88(%rsp), %rax          # 8-byte Reload
	xorl	%ecx, %ecx
	movq	216(%rsp), %rbp         # 8-byte Reload
	movq	24(%rsp), %r10          # 8-byte Reload
	.align	16, 0x90
.LBB7_91:                               # %vector.body399
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movd	%r8, %xmm2
	pslldq	$8, %xmm2               # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
	paddq	%xmm1, %xmm2
	paddq	%xmm4, %xmm1
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	movd	%xmm2, %rdx
	shlq	$4, %rdx
	movd	%xmm1, %rsi
	shlq	$4, %rsi
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %rdi
	shlq	$4, %rdi
	movd	12(%rbp,%rdi), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movd	12(%rbp,%rdx), %xmm2    # xmm2 = mem[0],zero,zero,zero
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	12(%rbp,%rsi), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movd	(%rax), %xmm3           # xmm3 = mem[0],zero,zero,zero
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm1      # xmm1 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm1      # xmm1 = xmm3[0,2,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	304(%rsp,%rcx,4), %xmm2
	movdqa	%xmm2, 304(%rsp,%rcx,4)
	addq	$4, %rcx
	addq	$64, %rax
	cmpq	%rcx, %r10
	jne	.LBB7_91
# BB#92:                                #   in Loop: Header=BB7_71 Depth=2
	movq	40(%rsp), %rsi          # 8-byte Reload
.LBB7_93:                               # %middle.block400
                                        #   in Loop: Header=BB7_71 Depth=2
	cmpq	%rsi, 32(%rsp)          # 8-byte Folded Reload
	je	.LBB7_96
# BB#94:                                # %for.body.572.preheader
                                        #   in Loop: Header=BB7_71 Depth=2
	leaq	304(%rsp,%rsi,4), %rax
	movq	%rsi, %rcx
	shlq	$4, %rcx
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movl	%r9d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB7_95:                               # %for.body.572
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %esi
	imull	%r11d, %esi
	addl	%esi, (%rax)
	addq	$4, %rax
	addq	$16, %rcx
	decl	%edx
	jne	.LBB7_95
.LBB7_96:                               # %for.inc.583
                                        #   in Loop: Header=BB7_71 Depth=2
	movl	104(%rsp), %ebp         # 4-byte Reload
	subl	%r11d, %ebp
	movq	160(%rsp), %r13         # 8-byte Reload
	movl	108(%rsp), %ecx         # 4-byte Reload
	jg	.LBB7_71
	jmp	.LBB7_97
.LBB7_68:                               # %for.cond.589.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	testl	%ebp, %ebp
	jle	.LBB7_69
# BB#119:                               # %for.body.592.lr.ph
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	168(%rsp), %rax         # 8-byte Reload
	subl	%r15d, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leal	-1(%r11), %edx
	incq	%rdx
	movq	%rdx, 264(%rsp)         # 8-byte Spill
	movq	%rdx, %rsi
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rsi
	movq	%rsi, 272(%rsp)         # 8-byte Spill
	movq	%rdx, %r12
	andq	%rax, %r12
.LBB7_120:                              # %for.body.592
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_121 Depth 3
                                        #       Child Loop BB7_125 Depth 3
                                        #       Child Loop BB7_129 Depth 3
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%r11, %r15
	cmpl	%ecx, %ebp
	movl	%ecx, %r14d
	cmovbl	%ebp, %r14d
	movq	152(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB7_121:                              # %do.body.599
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_120 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	632(%rsp), %rsi
	movl	%r14d, 8(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movq	216(%rsp), %rdx         # 8-byte Reload
	movq	%r13, %rcx
	movl	180(%rsp), %r8d         # 4-byte Reload
	leaq	304(%rsp), %r9
	callq	cmd_image_plane_data
	testl	%eax, %eax
	jns	.LBB7_122
# BB#132:                               # %land.rhs.607
                                        #   in Loop: Header=BB7_121 Depth=3
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB7_121
	jmp	.LBB7_133
.LBB7_122:                              # %for.cond.620.preheader
                                        #   in Loop: Header=BB7_120 Depth=2
	movq	%r15, %r11
	testl	%r11d, %r11d
	movdqa	.LCPI7_0(%rip), %xmm4   # xmm4 = [2,3]
	jle	.LBB7_130
# BB#123:                               # %overflow.checked
                                        #   in Loop: Header=BB7_120 Depth=2
	cmpq	$0, 272(%rsp)           # 8-byte Folded Reload
	movl	$0, %esi
	je	.LBB7_127
# BB#124:                               # %vector.ph
                                        #   in Loop: Header=BB7_120 Depth=2
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movq	88(%rsp), %rax          # 8-byte Reload
	xorl	%ecx, %ecx
	movq	216(%rsp), %rbx         # 8-byte Reload
	movl	$1, %r9d
	.align	16, 0x90
.LBB7_125:                              # %vector.body
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_120 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movd	%r9, %xmm2
	pslldq	$8, %xmm2               # xmm2 = zero,zero,zero,zero,zero,zero,zero,zero,xmm2[0,1,2,3,4,5,6,7]
	paddq	%xmm1, %xmm2
	paddq	%xmm4, %xmm1
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	movd	%xmm2, %rdx
	shlq	$4, %rdx
	movd	%xmm1, %rsi
	shlq	$4, %rsi
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	movd	%xmm1, %rdi
	shlq	$4, %rdi
	movd	12(%rbx,%rdi), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movd	12(%rbx,%rdx), %xmm2    # xmm2 = mem[0],zero,zero,zero
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	12(%rbx,%rsi), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movd	(%rax), %xmm3           # xmm3 = mem[0],zero,zero,zero
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm1      # xmm1 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	pshufd	$245, %xmm0, %xmm3      # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm1      # xmm1 = xmm3[0,2,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	paddd	304(%rsp,%rcx,4), %xmm2
	movdqa	%xmm2, 304(%rsp,%rcx,4)
	addq	$4, %rcx
	addq	$64, %rax
	cmpq	%rcx, %r12
	jne	.LBB7_125
# BB#126:                               #   in Loop: Header=BB7_120 Depth=2
	movq	272(%rsp), %rsi         # 8-byte Reload
.LBB7_127:                              # %middle.block
                                        #   in Loop: Header=BB7_120 Depth=2
	cmpq	%rsi, 264(%rsp)         # 8-byte Folded Reload
	je	.LBB7_130
# BB#128:                               # %for.body.623.preheader
                                        #   in Loop: Header=BB7_120 Depth=2
	leaq	304(%rsp,%rsi,4), %rax
	movq	%rsi, %rcx
	shlq	$4, %rcx
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movl	%r11d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB7_129:                              # %for.body.623
                                        #   Parent Loop BB7_18 Depth=1
                                        #     Parent Loop BB7_120 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %esi
	imull	%r14d, %esi
	addl	%esi, (%rax)
	addq	$4, %rax
	addq	$16, %rcx
	decl	%edx
	jne	.LBB7_129
.LBB7_130:                              # %for.inc.634
                                        #   in Loop: Header=BB7_120 Depth=2
	subl	%r14d, %ebp
	movl	108(%rsp), %ecx         # 4-byte Reload
	jg	.LBB7_120
# BB#131:                               #   in Loop: Header=BB7_18 Depth=1
	movq	288(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB7_97
.LBB7_64:                               #   in Loop: Header=BB7_18 Depth=1
	movq	288(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB7_97
.LBB7_133:                              #   in Loop: Header=BB7_18 Depth=1
	movq	288(%rsp), %rcx         # 8-byte Reload
.LBB7_134:                              # %cleanup.639
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	%eax, 624(%rsp)
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rbp         # 8-byte Reload
	leaq	592(%rsp), %r14
	leaq	296(%rsp), %r15
.LBB7_135:                              # %error_in_rect
                                        #   in Loop: Header=BB7_18 Depth=1
	cmpl	$0, 12144(%rbx)
	je	.LBB7_146
# BB#136:                               # %if.then.658
                                        #   in Loop: Header=BB7_18 Depth=1
	incl	12156(%rbx)
	incl	12152(%rbx)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	write_image_end_all
	movl	12152(%rbx), %ecx
	decl	%ecx
	movl	%ecx, 12152(%rbx)
	decl	12156(%rbx)
	cmpl	$0, 1132(%r13)
	jne	.LBB7_138
# BB#137:                               # %if.then.i.267
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	64(%rsp), %rdx          # 8-byte Reload
	addl	%edx, 1812(%r13)
.LBB7_138:                              # %clist_image_plane_data_retry_cleanup.exit
                                        #   in Loop: Header=BB7_18 Depth=1
	testl	%eax, %eax
	js	.LBB7_139
# BB#140:                               # %if.else.664
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	624(%rsp), %eax
	testl	%ecx, %ecx
	jne	.LBB7_146
# BB#141:                               # %if.then.667
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	movl	%eax, 624(%rsp)
	testl	%eax, %eax
	js	.LBB7_146
# BB#142:                               # %if.then.674
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	clist_image_unknowns
	orl	$16384, %eax            # imm = 0x4000
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	cmd_clear_known
	movl	$0, 2904(%r13)
	movq	32(%r13), %rax
	movq	%rax, 12136(%rbx)
	movq	%rbx, %rsi
	movl	612(%rsp), %eax
	subl	%eax, 608(%rsp)
	jmp	.LBB7_144
.LBB7_69:                               #   in Loop: Header=BB7_18 Depth=1
	movq	288(%rsp), %rbx         # 8-byte Reload
.LBB7_97:                               # %cleanup.cont.656
                                        #   in Loop: Header=BB7_18 Depth=1
	movq	%rbx, 288(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rsi         # 8-byte Reload
	leaq	592(%rsp), %r14
	leaq	296(%rsp), %r15
	.align	16, 0x90
.LBB7_144:                              # %do.cond.690
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	608(%rsp), %ebp
	addl	612(%rsp), %ebp
	movl	%ebp, 608(%rsp)
	movq	616(%rsp), %rbx
	movq	%rbx, %rdi
	shrq	$32, %rdi
	cmpl	%ebx, %ebp
	jl	.LBB7_18
.LBB7_145:                              # %done
	movl	2900(%r13), %eax
	movq	136(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
	movl	2900(%r13), %eax
	cmpl	1820(%r13), %eax
	setge	%al
	movzbl	%al, %eax
.LBB7_146:                              # %cleanup.706
	addq	$712, %rsp              # imm = 0x2C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_139:                              # %if.then.662
	movl	%eax, 624(%rsp)
	jmp	.LBB7_146
.Lfunc_end7:
	.size	clist_image_plane_data, .Lfunc_end7-clist_image_plane_data
	.cfi_endproc

	.align	16, 0x90
	.type	clist_image_end_image,@function
clist_image_end_image:                  # @clist_image_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp99:
	.cfi_def_cfa_offset 48
.Ltmp100:
	.cfi_offset %rbx, -32
.Ltmp101:
	.cfi_offset %r14, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	%r14, 8(%rsp)
	movq	16(%r14), %rbx
	incl	12152(%rbx)
	.align	16, 0x90
.LBB8_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	write_image_end_all
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_8
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_1 Depth=1
	cmpl	$0, 12144(%rbx)
	je	.LBB8_8
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	clist_VMerror_recover
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_1
# BB#4:                                 # %land.lhs.true.5
	cmpl	$0, 12144(%rbx)
	je	.LBB8_8
# BB#5:                                 # %if.then
	incl	12156(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	write_image_end_all
	decl	12156(%rbx)
	testl	%eax, %eax
	js	.LBB8_8
# BB#6:                                 # %land.lhs.true.12
	cmpl	$0, 12152(%rbx)
	jne	.LBB8_8
# BB#7:                                 # %if.then.15
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	clist_VMerror_recover_flush
	movl	%eax, %ebp
.LBB8_8:                                # %if.end.17
	decl	12152(%rbx)
	movq	$0, 12136(%rbx)
	leaq	8(%rsp), %rdi
	callq	gx_image_free_enum
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	clist_image_end_image, .Lfunc_end8-clist_image_end_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI9_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	image_band_box,@function
image_band_box:                         # @image_band_box
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
	subq	$312, %rsp              # imm = 0x138
.Ltmp109:
	.cfi_def_cfa_offset 368
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
	movq	%r8, %r14
	movl	%ecx, %ebp
	movl	%edx, %ebx
	movq	%rsi, %r13
	addl	%ebx, %ebp
	shll	$8, %ebx
	shll	$8, %ebp
	movl	1808(%r13), %r12d
	movl	1812(%r13), %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	1816(%r13), %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	1820(%r13), %r15d
	leaq	296(%rsp), %rsi
	callq	*1432(%rdi)
	movslq	296(%rsp), %rax
	addq	$-128, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI9_0(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movsd	%xmm0, 264(%rsp)
	movslq	304(%rsp), %rax
	subq	$-128, %rax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, 280(%rsp)
	movl	300(%rsp), %eax
	cmpl	%ebx, %eax
	cmovgel	%eax, %ebx
	movslq	%ebx, %rax
	addq	$-128, %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm3, %xmm1
	movsd	%xmm1, 272(%rsp)
	movl	308(%rsp), %eax
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	movslq	%ebp, %rax
	subq	$-128, %rax
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm3, %xmm2
	movsd	%xmm2, 288(%rsp)
	cvtsi2sdl	1936(%r13), %xmm3
	ucomisd	%xmm1, %xmm3
	jbe	.LBB9_2
# BB#1:                                 # %if.then
	movsd	%xmm3, 272(%rsp)
	movapd	%xmm3, %xmm1
.LBB9_2:                                # %if.end
	movl	%r15d, 80(%rsp)         # 4-byte Spill
	xorps	%xmm3, %xmm3
	cvtsi2sdl	1940(%r13), %xmm3
	ucomisd	%xmm3, %xmm2
	jbe	.LBB9_4
# BB#3:                                 # %if.then.64
	movsd	%xmm3, 288(%rsp)
.LBB9_4:                                # %if.end.69
	leaq	1856(%r13), %rsi
	movss	1860(%r13), %xmm3       # xmm3 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm3
	jne	.LBB9_6
	jp	.LBB9_6
# BB#5:                                 # %land.lhs.true
	movss	1864(%r13), %xmm3       # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jne	.LBB9_6
	jnp	.LBB9_8
.LBB9_6:                                # %lor.lhs.false
	movss	(%rsi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm3
	jne	.LBB9_10
	jp	.LBB9_10
# BB#7:                                 # %land.lhs.true.81
	movss	1868(%r13), %xmm2       # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm3, %xmm2
	jne	.LBB9_10
	jp	.LBB9_10
.LBB9_8:                                # %if.then.86
	movq	%r13, 72(%rsp)          # 8-byte Spill
	leaq	264(%rsp), %rdi
	leaq	112(%rsp), %rdx
	callq	gs_bbox_transform_inverse
	testl	%eax, %eax
	js	.LBB9_93
# BB#9:                                 # %if.end.91
	movsd	112(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %r15d
	cmpl	%r15d, %r12d
	cmovgel	%r12d, %r15d
	movl	%r15d, (%r14)
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movq	%r14, %r12
	cvttsd2si	%xmm0, %r14d
	movl	88(%rsp), %eax          # 4-byte Reload
	cmpl	%r14d, %eax
	cmovlel	%eax, %r14d
	leaq	8(%r12), %r13
	movl	%r14d, 8(%r12)
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ebx
	movl	32(%rsp), %eax          # 4-byte Reload
	cmpl	%ebx, %eax
	cmovgel	%eax, %ebx
	leaq	4(%r12), %rbp
	movl	%ebx, 4(%r12)
	movsd	136(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movq	%r13, %r8
	cvttsd2si	%xmm0, %eax
	movl	80(%rsp), %ecx          # 4-byte Reload
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movl	%eax, 12(%r12)
	movq	%r12, %rdi
	addq	$12, %rdi
	movq	72(%rsp), %r13          # 8-byte Reload
.LBB9_92:                               # %do.end.418
	movl	1844(%r13), %ecx
	subl	%ecx, %r15d
	movl	%r15d, (%r12)
	movl	1808(%r13), %edx
	cmpl	%edx, %r15d
	cmovll	%edx, %r15d
	movl	%r15d, (%r12)
	movl	1848(%r13), %edx
	subl	%edx, %ebx
	movl	%ebx, (%rbp)
	movl	1812(%r13), %esi
	cmpl	%esi, %ebx
	cmovll	%esi, %ebx
	movl	%ebx, (%rbp)
	addl	%ecx, %r14d
	movl	%r14d, (%r8)
	movl	1816(%r13), %ecx
	cmpl	%ecx, %r14d
	cmovgl	%ecx, %r14d
	movl	%r14d, (%r8)
	addl	%edx, %eax
	movl	%eax, (%rdi)
	movl	1820(%r13), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	movl	%eax, (%rdi)
	cmpl	%r14d, %r15d
	setl	%cl
	cmpl	%eax, %ebx
	setl	%al
	andb	%cl, %al
	movzbl	%al, %eax
	jmp	.LBB9_94
.LBB9_10:                               # %if.else
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%r12d, %xmm2
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	movsd	%xmm2, 240(%rsp)
	movsd	%xmm2, 192(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm2, 48(%rsp)         # 8-byte Spill
	movsd	%xmm2, 224(%rsp)
	movsd	%xmm2, 208(%rsp)
	movl	32(%rsp), %r15d         # 4-byte Reload
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%r15d, %xmm2
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movsd	%xmm2, 216(%rsp)
	movsd	%xmm2, 200(%rsp)
	movq	%rsi, %rbp
	movl	80(%rsp), %ebx          # 4-byte Reload
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%ebx, %xmm2
	movsd	%xmm2, 72(%rsp)         # 8-byte Spill
	movsd	%xmm2, 248(%rsp)
	movsd	%xmm2, 232(%rsp)
	leaq	112(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB9_93
# BB#11:                                # %lor.lhs.false.185
	movsd	272(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	280(%rsp), %xmm0        # xmm0 = mem[0],zero
	leaq	128(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB9_93
# BB#12:                                # %lor.lhs.false.195
	movsd	280(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	288(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	144(%rsp), %rsi
	movq	%rbp, %rdi
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB9_93
# BB#13:                                # %lor.lhs.false.205
	movsd	264(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	288(%rsp), %xmm1        # xmm1 = mem[0],zero
	leaq	160(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	callq	gs_point_transform_inverse
	testl	%eax, %eax
	js	.LBB9_93
# BB#14:                                # %if.end.216
	movaps	112(%rsp), %xmm0
	movaps	%xmm0, 176(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%r14)
	leaq	4(%r14), %rbp
	movl	%ebx, 4(%r14)
	leaq	8(%r14), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%r12d, 8(%r14)
	leaq	12(%r14), %r12
	movl	%r15d, 12(%r14)
	xorl	%r15d, %r15d
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	8(%rsp), %rbx           # 8-byte Reload
	jmp	.LBB9_15
	.align	16, 0x90
.LBB9_90:                               # %if.end.409.for.body_crit_edge
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	208(%rsp,%r15), %xmm0   # xmm0 = mem[0],zero
	movsd	216(%rsp,%r15), %xmm1   # xmm1 = mem[0],zero
	movq	%rax, %r15
.LBB9_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	leaq	96(%rsp), %rsi
	callq	gs_point_transform
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	264(%rsp), %xmm0
	jb	.LBB9_27
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	280(%rsp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_27
# BB#17:                                # %land.lhs.true.245
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	272(%rsp), %xmm0
	jb	.LBB9_27
# BB#18:                                # %land.lhs.true.245
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	288(%rsp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_27
# BB#19:                                # %if.then.257
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%r14), %eax
	jge	.LBB9_21
# BB#20:                                # %if.then.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r14)
.LBB9_21:                               # %if.end.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jle	.LBB9_23
# BB#22:                                # %if.then.10.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
.LBB9_23:                               # %if.end.13.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%rbp), %eax
	jge	.LBB9_25
# BB#24:                                # %if.then.20.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%rbp)
.LBB9_25:                               # %if.end.23.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	cmpl	(%r12), %eax
	jle	.LBB9_27
# BB#26:                                # %if.then.30.i
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r12)
	.align	16, 0x90
.LBB9_27:                               # %if.end.260
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	112(%rsp,%r15), %xmm2   # xmm2 = mem[0],zero
	movsd	120(%rsp,%r15), %xmm3   # xmm3 = mem[0],zero
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jb	.LBB9_39
# BB#28:                                # %if.end.260
                                        #   in Loop: Header=BB9_15 Depth=1
	ucomisd	64(%rsp), %xmm2         # 8-byte Folded Reload
	jb	.LBB9_39
# BB#29:                                # %if.end.260
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jb	.LBB9_39
# BB#30:                                # %if.end.260
                                        #   in Loop: Header=BB9_15 Depth=1
	ucomisd	56(%rsp), %xmm3         # 8-byte Folded Reload
	jb	.LBB9_39
# BB#31:                                # %if.then.282
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	%xmm3, 88(%rsp)         # 8-byte Spill
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%r14), %eax
	jge	.LBB9_33
# BB#32:                                # %if.then.i.180
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r14)
.LBB9_33:                               # %if.end.i.185
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jle	.LBB9_35
# BB#34:                                # %if.then.10.i.186
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
.LBB9_35:                               # %if.end.13.i.191
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%rbp), %eax
	jge	.LBB9_37
# BB#36:                                # %if.then.20.i.192
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%rbp)
.LBB9_37:                               # %if.end.23.i.197
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	cmpl	(%r12), %eax
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	88(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jle	.LBB9_39
# BB#38:                                # %if.then.30.i.198
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r12)
.LBB9_39:                               # %if.end.285
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	128(%rsp,%r15), %xmm4   # xmm4 = mem[0],zero
	movsd	136(%rsp,%r15), %xmm5   # xmm5 = mem[0],zero
	subsd	%xmm2, %xmm4
	subsd	%xmm3, %xmm5
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm4
	jne	.LBB9_40
	jnp	.LBB9_64
.LBB9_40:                               # %if.then.300
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	64(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	subsd	%xmm2, %xmm6
	divsd	%xmm4, %xmm6
	ucomisd	%xmm1, %xmm6
	jb	.LBB9_52
# BB#41:                                # %if.then.300
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm6, %xmm0
	jb	.LBB9_52
# BB#42:                                # %land.lhs.true.312
                                        #   in Loop: Header=BB9_15 Depth=1
	mulsd	%xmm5, %xmm6
	addsd	%xmm3, %xmm6
	ucomisd	56(%rsp), %xmm6         # 8-byte Folded Reload
	jb	.LBB9_52
# BB#43:                                # %land.lhs.true.312
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm6, %xmm0
	jb	.LBB9_52
# BB#44:                                # %if.then.323
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	%xmm6, 16(%rsp)         # 8-byte Spill
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm3, 88(%rsp)         # 8-byte Spill
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%r14), %eax
	jge	.LBB9_46
# BB#45:                                # %if.then.i.204
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r14)
.LBB9_46:                               # %if.end.i.209
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jle	.LBB9_48
# BB#47:                                # %if.then.10.i.210
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
.LBB9_48:                               # %if.end.13.i.215
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%rbp), %eax
	jge	.LBB9_50
# BB#49:                                # %if.then.20.i.216
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%rbp)
.LBB9_50:                               # %if.end.23.i.221
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	cmpl	(%r12), %eax
	xorpd	%xmm1, %xmm1
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	88(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	24(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jle	.LBB9_52
# BB#51:                                # %if.then.30.i.222
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r12)
	.align	16, 0x90
.LBB9_52:                               # %if.end.325
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	48(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	subsd	%xmm2, %xmm6
	divsd	%xmm4, %xmm6
	ucomisd	%xmm1, %xmm6
	jb	.LBB9_64
# BB#53:                                # %if.end.325
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm6, %xmm0
	jb	.LBB9_64
# BB#54:                                # %land.lhs.true.338
                                        #   in Loop: Header=BB9_15 Depth=1
	mulsd	%xmm5, %xmm6
	addsd	%xmm3, %xmm6
	ucomisd	56(%rsp), %xmm6         # 8-byte Folded Reload
	jb	.LBB9_64
# BB#55:                                # %land.lhs.true.338
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm6, %xmm0
	jb	.LBB9_64
# BB#56:                                # %if.then.349
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	%xmm6, 16(%rsp)         # 8-byte Spill
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm3, 88(%rsp)         # 8-byte Spill
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%r14), %eax
	jge	.LBB9_58
# BB#57:                                # %if.then.i.228
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r14)
.LBB9_58:                               # %if.end.i.233
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jle	.LBB9_60
# BB#59:                                # %if.then.10.i.234
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
.LBB9_60:                               # %if.end.13.i.239
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%rbp), %eax
	jge	.LBB9_62
# BB#61:                                # %if.then.20.i.240
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%rbp)
.LBB9_62:                               # %if.end.23.i.245
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	cmpl	(%r12), %eax
	xorpd	%xmm1, %xmm1
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	88(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	24(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jle	.LBB9_64
# BB#63:                                # %if.then.30.i.246
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r12)
	.align	16, 0x90
.LBB9_64:                               # %if.end.352
                                        #   in Loop: Header=BB9_15 Depth=1
	ucomisd	%xmm1, %xmm5
	jne	.LBB9_65
	jnp	.LBB9_89
.LBB9_65:                               # %if.then.355
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	56(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	subsd	%xmm3, %xmm6
	divsd	%xmm5, %xmm6
	ucomisd	%xmm1, %xmm6
	jb	.LBB9_77
# BB#66:                                # %if.then.355
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm6, %xmm0
	jb	.LBB9_77
# BB#67:                                # %land.lhs.true.369
                                        #   in Loop: Header=BB9_15 Depth=1
	mulsd	%xmm4, %xmm6
	addsd	%xmm2, %xmm6
	ucomisd	64(%rsp), %xmm6         # 8-byte Folded Reload
	jb	.LBB9_77
# BB#68:                                # %land.lhs.true.369
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm6, %xmm0
	jb	.LBB9_77
# BB#69:                                # %if.then.380
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	%xmm5, 24(%rsp)         # 8-byte Spill
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm3, 88(%rsp)         # 8-byte Spill
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	movapd	%xmm6, %xmm0
	movsd	%xmm6, 16(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%r14), %eax
	jge	.LBB9_71
# BB#70:                                # %if.then.i.252
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r14)
.LBB9_71:                               # %if.end.i.257
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jle	.LBB9_73
# BB#72:                                # %if.then.10.i.258
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
.LBB9_73:                               # %if.end.13.i.263
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%rbp), %eax
	jge	.LBB9_75
# BB#74:                                # %if.then.20.i.264
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%rbp)
.LBB9_75:                               # %if.end.23.i.269
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	cmpl	(%r12), %eax
	xorpd	%xmm1, %xmm1
	movsd	80(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	88(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	24(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jle	.LBB9_77
# BB#76:                                # %if.then.30.i.270
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r12)
	.align	16, 0x90
.LBB9_77:                               # %if.end.382
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm3, %xmm0
	divsd	%xmm5, %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.LBB9_89
# BB#78:                                # %if.end.382
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_89
# BB#79:                                # %land.lhs.true.395
                                        #   in Loop: Header=BB9_15 Depth=1
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm2
	ucomisd	64(%rsp), %xmm2         # 8-byte Folded Reload
	jb	.LBB9_89
# BB#80:                                # %land.lhs.true.395
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jb	.LBB9_89
# BB#81:                                # %if.then.406
                                        #   in Loop: Header=BB9_15 Depth=1
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 80(%rsp)         # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%r14), %eax
	jge	.LBB9_83
# BB#82:                                # %if.then.i.276
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r14)
.LBB9_83:                               # %if.end.i.281
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jle	.LBB9_85
# BB#84:                                # %if.then.10.i.282
                                        #   in Loop: Header=BB9_15 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
.LBB9_85:                               # %if.end.13.i.287
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %eax
	cmpl	(%rbp), %eax
	jge	.LBB9_87
# BB#86:                                # %if.then.20.i.288
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%rbp)
.LBB9_87:                               # %if.end.23.i.293
                                        #   in Loop: Header=BB9_15 Depth=1
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	ceil
	cvttsd2si	%xmm0, %eax
	cmpl	(%r12), %eax
	jle	.LBB9_89
# BB#88:                                # %if.then.30.i.294
                                        #   in Loop: Header=BB9_15 Depth=1
	movl	%eax, (%r12)
	.align	16, 0x90
.LBB9_89:                               # %if.end.409
                                        #   in Loop: Header=BB9_15 Depth=1
	leaq	16(%r15), %rax
	cmpq	$64, %rax
	jne	.LBB9_90
# BB#91:                                # %cleanup.410
	movl	(%r14), %r15d
	movl	4(%r14), %ebx
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	%r12, %rdi
	movq	%r14, %r12
	movl	8(%r12), %r14d
	movl	12(%r12), %eax
	jmp	.LBB9_92
.LBB9_93:                               # %cleanup.498.critedge175
	xorl	%eax, %eax
.LBB9_94:                               # %cleanup.498
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	image_band_box, .Lfunc_end9-image_band_box
	.cfi_endproc

	.align	16, 0x90
	.type	cmd_image_plane_data,@function
cmd_image_plane_data:                   # @cmd_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp119:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp120:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 112
.Ltmp123:
	.cfi_offset %rbx, -56
.Ltmp124:
	.cfi_offset %r12, -48
.Ltmp125:
	.cfi_offset %r13, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movl	%r8d, 48(%rsp)          # 4-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movl	120(%rsp), %eax
	movl	8(%rdx), %ebp
	addl	112(%rsp), %ebp
	movl	%eax, %r14d
	imull	%r8d, %r14d
	imull	44(%rcx), %r14d
	orl	%r8d, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	$3, %r15d
	cmpl	$128, %eax
	jb	.LBB10_2
# BB#1:                                 # %cond.false
	movq	%rbx, %r13
	movl	120(%rsp), %edi
	movq	%rsi, %rbx
	callq	cmd_size_w
	movl	%eax, %r15d
	movl	48(%rsp), %edi          # 4-byte Reload
	callq	cmd_size_w
	movq	%rbx, %rsi
	movq	%r13, %rbx
	leal	1(%r15,%rax), %r15d
.LBB10_2:                               # %cond.end
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	je	.LBB10_5
# BB#3:                                 # %if.then
	movq	%rbx, %rdi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%ebp, %edx
	callq	cmd_put_set_data_x
	testl	%eax, %eax
	js	.LBB10_18
# BB#4:                                 # %if.end
	andl	$-8, %ebp
	movzwl	12252(%rbx), %r12d
	imull	%ebp, %r12d
	sarl	$3, %r12d
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB10_5:                               # %if.end.12
	addl	%r14d, %r15d
	addq	$1760, %rsi             # imm = 0x6E0
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	cmd_put_list_op
	movq	%rax, %rsi
	testq	%rsi, %rsi
	je	.LBB10_7
# BB#6:                                 # %cond.end.18.thread
	movb	$-35, (%rsi)
	movl	120(%rsp), %edi
	jmp	.LBB10_8
.LBB10_7:                               # %cond.end.18
	movl	10192(%rbx), %eax
	testl	%eax, %eax
	movl	120(%rsp), %edi
	js	.LBB10_18
.LBB10_8:                               # %if.end.23
	cmpl	$127, 40(%rsp)          # 4-byte Folded Reload
	jbe	.LBB10_9
# BB#10:                                # %cond.false.32
	incq	%rsi
	movq	%rdi, %rbp
	callq	cmd_put_w
	movl	48(%rsp), %edi          # 4-byte Reload
	movq	%rax, %rsi
	callq	cmd_put_w
	movq	%rbp, %rdi
	movq	%rax, %rsi
	jmp	.LBB10_11
.LBB10_9:                               # %cond.true.27
	movb	%dil, 1(%rsi)
	movl	48(%rsp), %eax          # 4-byte Reload
	movb	%al, 2(%rsi)
	addq	$3, %rsi
.LBB10_11:                              # %for.cond.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	44(%rax), %ebx
	xorl	%eax, %eax
	testl	%ebx, %ebx
	jle	.LBB10_18
# BB#12:                                # %for.cond.40.preheader.lr.ph
	movl	48(%rsp), %ebp          # 4-byte Reload
	leal	-1(%rdi), %eax
	incq	%rax
	imulq	%rbp, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB10_13:                              # %for.cond.40.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
	testl	%edi, %edi
	jle	.LBB10_17
# BB#14:                                # %for.body.43.lr.ph
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	%rcx, %rax
	shlq	$4, %rax
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	(%rdx,%rax), %rbx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	leaq	12(%rdx,%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%rsi, %r14
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB10_15:                              # %for.body.43
                                        #   Parent Loop BB10_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	imull	%r15d, %eax
	movq	48(%rsp), %rdx          # 8-byte Reload
	addq	(%rdx), %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	addq	%rax, %rsi
	addq	%r12, %rsi
	movq	%rdi, %r13
	movq	%r14, %rdi
	movq	%rbp, %rdx
	movq	%rcx, %rbx
	callq	memcpy
	movq	%rbx, %rcx
	movq	%r13, %rdi
	addq	%rbp, %r14
	incl	%r15d
	cmpl	%r15d, %edi
	jne	.LBB10_15
# BB#16:                                # %for.cond.40.for.inc.59_crit_edge
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	24(%rsp), %rsi          # 8-byte Reload
	addq	(%rsp), %rsi            # 8-byte Folded Reload
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	44(%rax), %ebx
.LBB10_17:                              # %for.inc.59
                                        #   in Loop: Header=BB10_13 Depth=1
	incq	%rcx
	movslq	%ebx, %rdx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	jl	.LBB10_13
.LBB10_18:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	cmd_image_plane_data, .Lfunc_end10-cmd_image_plane_data
	.cfi_endproc

	.align	16, 0x90
	.type	write_image_end_all,@function
write_image_end_all:                    # @write_image_end_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp131:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp132:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp135:
	.cfi_def_cfa_offset 80
.Ltmp136:
	.cfi_offset %rbx, -56
.Ltmp137:
	.cfi_offset %r12, -48
.Ltmp138:
	.cfi_offset %r13, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	1940(%rsi), %r12d
	testl	%r12d, %r12d
	js	.LBB11_16
# BB#1:                                 # %lor.lhs.false
	movl	1936(%rsi), %r14d
	cmpl	836(%rbx), %r14d
	jge	.LBB11_16
# BB#2:                                 # %if.end
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	12148(%rbx), %eax
	testl	%eax, %eax
	js	.LBB11_17
# BB#3:                                 # %if.end.6
	movl	10132(%rbx), %r13d
	.align	16, 0x90
.LBB11_4:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_7 Depth 2
	movl	%r14d, %eax
	cltd
	idivl	%r13d
	movq	10200(%rbx), %rcx
	cltq
	leal	1(%rax), %r15d
	imull	%r13d, %r15d
	cmpl	%r12d, %r15d
	cmovgl	%r12d, %r15d
	imulq	$1808, %rax, %rax       # imm = 0x710
	testb	$64, 1753(%rcx,%rax)
	jne	.LBB11_6
# BB#5:                                 #   in Loop: Header=BB11_4 Depth=1
	movl	%r15d, %r14d
	jmp	.LBB11_13
	.align	16, 0x90
.LBB11_6:                               # %do.end.preheader
                                        #   in Loop: Header=BB11_4 Depth=1
	leaq	1752(%rcx,%rax), %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	leaq	1760(%rcx,%rax), %rbp
	.align	16, 0x90
.LBB11_7:                               # %do.end
                                        #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	cmd_put_list_op
	testq	%rax, %rax
	jne	.LBB11_8
# BB#9:                                 # %cond.end.40
                                        #   in Loop: Header=BB11_7 Depth=2
	movl	10192(%rbx), %esi
	movq	%rbx, %rdi
	callq	clist_VMerror_recover
	testl	%eax, %eax
	jns	.LBB11_7
# BB#10:                                # %error_in_rect
                                        #   in Loop: Header=BB11_4 Depth=1
	cmpl	$0, 12144(%rbx)
	je	.LBB11_17
# BB#11:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB11_4 Depth=1
	cmpl	$0, 12152(%rbx)
	jne	.LBB11_17
# BB#12:                                # %cleanup
                                        #   in Loop: Header=BB11_4 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	clist_VMerror_recover_flush
	testl	%eax, %eax
	jns	.LBB11_13
	jmp	.LBB11_17
	.align	16, 0x90
.LBB11_8:                               # %cond.end.40.thread
                                        #   in Loop: Header=BB11_4 Depth=1
	movw	$221, (%rax)
	movq	16(%rsp), %rax          # 8-byte Reload
	xorb	$64, 1(%rax)
	movl	%r15d, %r14d
.LBB11_13:                              # %do.cond.68
                                        #   in Loop: Header=BB11_4 Depth=1
	cmpl	%r12d, %r14d
	jl	.LBB11_4
# BB#14:                                # %do.end.72
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	2928(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB11_16
# BB#15:                                # %if.then.74
	movq	24(%rax), %rdi
	movl	$.L.str.5, %edx
	callq	*24(%rdi)
.LBB11_16:                              # %cleanup.78
	xorl	%eax, %eax
.LBB11_17:                              # %cleanup.78
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	write_image_end_all, .Lfunc_end11-write_image_end_all
	.cfi_endproc

	.type	st_clist_image_enum,@object # @st_clist_image_enum
	.section	.rodata,"a",@progbits
	.align	8
st_clist_image_enum:
	.long	24520                   # 0x5fc8
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	clist_image_enum_reloc_ptrs
	.size	st_clist_image_enum, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"clist_begin_typed_image"
	.size	.L.str, 24

	.type	clist_image_enum_procs,@object # @clist_image_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
clist_image_enum_procs:
	.quad	clist_image_plane_data
	.quad	clist_image_end_image
	.quad	0
	.quad	0
	.size	clist_image_enum_procs, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"image buffer"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cmd_put_halftone"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"clist_image_enum"
	.size	.L.str.3, 17

	.type	clist_image_enum_reloc_ptrs,@object # @clist_image_enum_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
clist_image_enum_reloc_ptrs:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	st_gx_image_enum_common
	.quad	clist_image_enum_enum_ptrs
	.size	clist_image_enum_reloc_ptrs, 24

	.type	clist_image_enum_enum_ptrs,@object # @clist_image_enum_enum_ptrs
	.align	16
clist_image_enum_enum_ptrs:
	.short	0                       # 0x0
	.short	1824                    # 0x720
	.short	0                       # 0x0
	.short	1832                    # 0x728
	.short	0                       # 0x0
	.short	1928                    # 0x788
	.short	0                       # 0x0
	.short	2928                    # 0xb70
	.size	clist_image_enum_enum_ptrs, 16

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"\001\b\004\b\002\b\004\b"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"write_image_end_all"
	.size	.L.str.5, 20

	.type	get_unpack_proc.procs,@object # @get_unpack_proc.procs
	.data
	.align	16
get_unpack_proc.procs:
	.quad	sample_unpack_1
	.quad	sample_unpack_2
	.quad	sample_unpack_4
	.quad	sample_unpack_8
	.quad	0
	.quad	0
	.quad	sample_unpack_1_interleaved
	.quad	sample_unpack_2_interleaved
	.quad	sample_unpack_4_interleaved
	.quad	sample_unpack_8_interleaved
	.quad	0
	.quad	0
	.size	get_unpack_proc.procs, 96

	.type	get_map.default_decode,@object # @get_map.default_decode
	.section	.rodata,"a",@progbits
	.align	16
get_map.default_decode:
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1065353216              # float 1.000000e+00
	.size	get_map.default_decode, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
